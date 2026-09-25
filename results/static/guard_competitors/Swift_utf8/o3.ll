; ModuleID = 'results/static/guard_competitors/Swift_utf8/tag.ll'
source_filename = "/Users/ebrah/Project/compiler/ODeSSy/logs/swift_triage/utf8.ll"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx26.0.0"

%TSi = type <{ i64 }>
%TSa = type <{ %Ts12_ArrayBufferV }>
%Ts12_ArrayBufferV = type <{ %Ts14_BridgeStorageV }>
%Ts14_BridgeStorageV = type <{ ptr }>
%swift.type_descriptor = type opaque
%swift.type = type { i64 }
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

@"$s4utf85itersSivp" = hidden local_unnamed_addr global %TSi zeroinitializer, align 8
@"$s4utf84dataSays5UInt8VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$s4utf85finalSivp" = hidden global %TSi zeroinitializer, align 8
@".str.15.utf8/utf8.swift" = private unnamed_addr constant [16 x i8] c"utf8/utf8.swift\00"
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = private unnamed_addr constant ptr @"$ss23_ContiguousArrayStorageCMn"
@"symbolic _____yypG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____yypG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"yypG", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCyypGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCyypGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____yypG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCyypGMR" to i64)) to i32), i32 9 }, align 8
@"$sSiN" = external global %swift.type, align 8
@"\01l_entry_point" = private constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @main to i64), i64 ptrtoint (ptr @"\01l_entry_point" to i64)) to i32), i32 0 }, section "__TEXT, __swift5_entry, regular, no_dead_strip", align 4
@"_swift_FORCE_LOAD_$_swiftFoundation_$_utf8" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftFoundation"
@"_swift_FORCE_LOAD_$_swift_Builtin_float_$_utf8" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swift_Builtin_float"
@"_swift_FORCE_LOAD_$_swiftObjectiveC_$_utf8" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftObjectiveC"
@"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_utf8" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftCoreFoundation"
@"_swift_FORCE_LOAD_$_swiftDispatch_$_utf8" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftDispatch"
@"_swift_FORCE_LOAD_$_swiftXPC_$_utf8" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftXPC"
@"_swift_FORCE_LOAD_$_swiftIOKit_$_utf8" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftIOKit"
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
@llvm.used = appending global [10 x ptr] [ptr @"\01l_entry_point", ptr @__swift_reflection_version, ptr @"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_utf8", ptr @"_swift_FORCE_LOAD_$_swiftDispatch_$_utf8", ptr @"_swift_FORCE_LOAD_$_swiftFoundation_$_utf8", ptr @"_swift_FORCE_LOAD_$_swiftIOKit_$_utf8", ptr @"_swift_FORCE_LOAD_$_swiftObjectiveC_$_utf8", ptr @"_swift_FORCE_LOAD_$_swiftXPC_$_utf8", ptr @"_swift_FORCE_LOAD_$_swift_Builtin_float_$_utf8", ptr @main], section "llvm.metadata"

define noundef i32 @main(i32 %0, ptr readnone captures(none) %1) #0 {
entry:
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  %access-scratch = alloca [24 x i8], align 8
  %2 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %3 = tail call swiftcc %swift.metadata_response @"$s10Foundation3URLVMa"(i64 0) #14
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
  %.not48 = icmp eq i64 %26, 0
  br i1 %.not48, label %27, label %.thread, !prof !45

27:                                               ; preds = %25
  br i1 %.not, label %96, label %28

28:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.elt10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %29 = and i64 %17, 72057594037927935
  store i64 %14, ptr %2, align 8
  store i64 %29, ptr %.elt10, align 8
  %30 = trunc i64 %14 to i8
  switch i8 %30, label %55 [
    i8 45, label %31
    i8 43, label %54
  ]

31:                                               ; preds = %28
  switch i64 %21, label %34 [
    i64 0, label %230
    i64 1, label %.loopexit63
  ], !prof !46

.loopexit63:                                      ; preds = %73, %68, %65, %60, %50, %45, %42, %37, %92, %87, %84, %79, %55, %54, %31
  %32 = phi i64 [ 0, %55 ], [ 0, %31 ], [ 0, %54 ], [ 0, %37 ], [ 0, %79 ], [ 0, %84 ], [ 0, %87 ], [ %93, %92 ], [ 0, %42 ], [ 0, %45 ], [ %51, %50 ], [ 0, %65 ], [ 0, %68 ], [ %74, %73 ], [ 0, %60 ]
  %33 = phi i8 [ 1, %55 ], [ 1, %31 ], [ 1, %54 ], [ 1, %37 ], [ 1, %79 ], [ 1, %84 ], [ 1, %87 ], [ 0, %92 ], [ 1, %42 ], [ 1, %45 ], [ 0, %50 ], [ 1, %65 ], [ 1, %68 ], [ 0, %73 ], [ 1, %60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread52

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
  br i1 %or.cond, label %42, label %.loopexit63, !prof !47

42:                                               ; preds = %37
  %43 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 10)
  %44 = extractvalue { i64, i1 } %43, 1
  br i1 %44, label %.loopexit63, label %45

45:                                               ; preds = %42
  %46 = extractvalue { i64, i1 } %43, 0
  %47 = zext nneg i8 %41 to i64
  %48 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %46, i64 %47)
  %49 = extractvalue { i64, i1 } %48, 1
  br i1 %49, label %.loopexit63, label %50, !prof !44

50:                                               ; preds = %45
  %51 = extractvalue { i64, i1 } %48, 0
  %52 = getelementptr inbounds nuw i8, ptr %38, i64 1
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %.loopexit63, label %37

54:                                               ; preds = %28
  switch i64 %21, label %57 [
    i64 0, label %229
    i64 1, label %.loopexit63
  ], !prof !46

55:                                               ; preds = %28
  %56 = icmp eq i64 %21, 0
  br i1 %56, label %.loopexit63, label %77, !prof !44

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %59 = getelementptr i8, ptr %2, i64 %21
  br label %60

60:                                               ; preds = %73, %57
  %61 = phi ptr [ %58, %57 ], [ %75, %73 ]
  %62 = phi i64 [ 0, %57 ], [ %74, %73 ]
  %63 = load i8, ptr %61, align 1
  %64 = add i8 %63, -48
  %or.cond15 = icmp ult i8 %64, 10
  br i1 %or.cond15, label %65, label %.loopexit63, !prof !47

65:                                               ; preds = %60
  %66 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %62, i64 10)
  %67 = extractvalue { i64, i1 } %66, 1
  br i1 %67, label %.loopexit63, label %68

68:                                               ; preds = %65
  %69 = extractvalue { i64, i1 } %66, 0
  %70 = zext nneg i8 %64 to i64
  %71 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %69, i64 %70)
  %72 = extractvalue { i64, i1 } %71, 1
  br i1 %72, label %.loopexit63, label %73, !prof !44

73:                                               ; preds = %68
  %74 = extractvalue { i64, i1 } %71, 0
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 1
  %76 = icmp eq ptr %75, %59
  br i1 %76, label %.loopexit63, label %60

77:                                               ; preds = %55
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %21
  br label %79

79:                                               ; preds = %92, %77
  %80 = phi ptr [ %2, %77 ], [ %94, %92 ]
  %81 = phi i64 [ 0, %77 ], [ %93, %92 ]
  %82 = load i8, ptr %80, align 1
  %83 = add i8 %82, -48
  %or.cond16 = icmp ult i8 %83, 10
  br i1 %or.cond16, label %84, label %.loopexit63, !prof !47

84:                                               ; preds = %79
  %85 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %81, i64 10)
  %86 = extractvalue { i64, i1 } %85, 1
  br i1 %86, label %.loopexit63, label %87

87:                                               ; preds = %84
  %88 = extractvalue { i64, i1 } %85, 0
  %89 = zext nneg i8 %83 to i64
  %90 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %88, i64 %89)
  %91 = extractvalue { i64, i1 } %90, 1
  br i1 %91, label %.loopexit63, label %92, !prof !44

92:                                               ; preds = %87
  %93 = extractvalue { i64, i1 } %90, 0
  %94 = getelementptr inbounds nuw i8, ptr %80, i64 1
  %95 = icmp eq ptr %94, %78
  br i1 %95, label %.loopexit63, label %79

96:                                               ; preds = %27
  %97 = and i64 %14, 1152921504606846976
  %.not47 = icmp eq i64 %97, 0
  br i1 %.not47, label %108, label %105, !prof !44

.thread52:                                        ; preds = %163, %158, %155, %150, %137, %132, %129, %124, %184, %179, %176, %171, %167, %145, %143, %119, %.loopexit63
  %.sroa.0.156 = phi i64 [ 0, %119 ], [ 0, %143 ], [ 0, %145 ], [ 0, %167 ], [ %32, %.loopexit63 ], [ 0, %124 ], [ 0, %171 ], [ 0, %176 ], [ 0, %179 ], [ %185, %184 ], [ 0, %129 ], [ 0, %132 ], [ %138, %137 ], [ 0, %155 ], [ 0, %158 ], [ %164, %163 ], [ 0, %150 ]
  %.sroa.6.155 = phi i8 [ 1, %119 ], [ 1, %143 ], [ 1, %145 ], [ 0, %167 ], [ %33, %.loopexit63 ], [ 1, %124 ], [ 1, %171 ], [ 1, %176 ], [ 1, %179 ], [ 0, %184 ], [ 1, %129 ], [ 1, %132 ], [ 0, %137 ], [ 1, %155 ], [ 1, %158 ], [ 0, %163 ], [ 1, %150 ]
  call void @swift_bridgeObjectRelease(ptr %15) #2
  br label %101

.thread:                                          ; preds = %25
  %98 = tail call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSS_SiTg5"(i64 %14, ptr %15, i64 10)
  tail call void @swift_bridgeObjectRelease(ptr %15) #2
  %99 = extractvalue { i64, i8 } %98, 0
  %100 = extractvalue { i64, i8 } %98, 1
  br label %101

101:                                              ; preds = %.thread, %.thread52
  %102 = phi i64 [ %99, %.thread ], [ %.sroa.0.156, %.thread52 ]
  %103 = phi i8 [ %100, %.thread ], [ %.sroa.6.155, %.thread52 ]
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
  br i1 %118, label %odessy.chk5, label %119, !prof !44

119:                                              ; preds = %117
  %120 = icmp eq i64 %114, 1
  br i1 %120, label %.thread52, label %121, !prof !44

121:                                              ; preds = %119
  %122 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %123 = getelementptr i8, ptr %115, i64 %114
  br label %124

124:                                              ; preds = %137, %121
  %125 = phi ptr [ %122, %121 ], [ %139, %137 ]
  %126 = phi i64 [ 0, %121 ], [ %138, %137 ]
  %127 = load i8, ptr %125, align 1
  %128 = add i8 %127, -48
  %or.cond17 = icmp ult i8 %128, 10
  br i1 %or.cond17, label %129, label %.thread52, !prof !47

129:                                              ; preds = %124
  %130 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %126, i64 10)
  %131 = extractvalue { i64, i1 } %130, 1
  br i1 %131, label %.thread52, label %132

132:                                              ; preds = %129
  %133 = extractvalue { i64, i1 } %130, 0
  %134 = zext nneg i8 %128 to i64
  %135 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %133, i64 %134)
  %136 = extractvalue { i64, i1 } %135, 1
  br i1 %136, label %.thread52, label %137, !prof !44

137:                                              ; preds = %132
  %138 = extractvalue { i64, i1 } %135, 0
  %139 = getelementptr inbounds nuw i8, ptr %125, i64 1
  %140 = icmp eq ptr %139, %123
  br i1 %140, label %.thread52, label %124

141:                                              ; preds = %112
  %142 = icmp slt i64 %114, 1
  br i1 %142, label %odessy.chk4, label %143, !prof !44

143:                                              ; preds = %141
  %144 = icmp eq i64 %114, 1
  br i1 %144, label %.thread52, label %147, !prof !44

145:                                              ; preds = %112
  %146 = icmp eq i64 %114, 0
  br i1 %146, label %.thread52, label %167, !prof !44

147:                                              ; preds = %143
  %148 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %149 = getelementptr i8, ptr %115, i64 %114
  br label %150

150:                                              ; preds = %163, %147
  %151 = phi ptr [ %148, %147 ], [ %165, %163 ]
  %152 = phi i64 [ 0, %147 ], [ %164, %163 ]
  %153 = load i8, ptr %151, align 1
  %154 = add i8 %153, -48
  %or.cond18 = icmp ult i8 %154, 10
  br i1 %or.cond18, label %155, label %.thread52, !prof !47

155:                                              ; preds = %150
  %156 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %152, i64 10)
  %157 = extractvalue { i64, i1 } %156, 1
  br i1 %157, label %.thread52, label %158

158:                                              ; preds = %155
  %159 = extractvalue { i64, i1 } %156, 0
  %160 = zext nneg i8 %154 to i64
  %161 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %159, i64 %160)
  %162 = extractvalue { i64, i1 } %161, 1
  br i1 %162, label %.thread52, label %163, !prof !44

163:                                              ; preds = %158
  %164 = extractvalue { i64, i1 } %161, 0
  %165 = getelementptr inbounds nuw i8, ptr %151, i64 1
  %166 = icmp eq ptr %165, %149
  br i1 %166, label %.thread52, label %150

167:                                              ; preds = %145
  %168 = icmp eq i64 %113, 0
  br i1 %168, label %.thread52, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds i8, ptr %115, i64 %114
  br label %171

171:                                              ; preds = %184, %169
  %172 = phi ptr [ %115, %169 ], [ %186, %184 ]
  %173 = phi i64 [ 0, %169 ], [ %185, %184 ]
  %174 = load i8, ptr %172, align 1
  %175 = add i8 %174, -48
  %or.cond19 = icmp ult i8 %175, 10
  br i1 %or.cond19, label %176, label %.thread52, !prof !47

176:                                              ; preds = %171
  %177 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %173, i64 10)
  %178 = extractvalue { i64, i1 } %177, 1
  br i1 %178, label %.thread52, label %179

179:                                              ; preds = %176
  %180 = extractvalue { i64, i1 } %177, 0
  %181 = zext nneg i8 %175 to i64
  %182 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %180, i64 %181)
  %183 = extractvalue { i64, i1 } %182, 1
  br i1 %183, label %.thread52, label %184, !prof !44

184:                                              ; preds = %179
  %185 = extractvalue { i64, i1 } %182, 0
  %186 = getelementptr inbounds nuw i8, ptr %172, i64 1
  %187 = icmp eq ptr %186, %170
  br i1 %187, label %.thread52, label %171

188:                                              ; preds = %101
  store i64 %102, ptr @"$s4utf85itersSivp", align 8
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
  %.not49 = icmp eq ptr %199, null
  br i1 %.not49, label %200, label %227

200:                                              ; preds = %193
  %201 = extractvalue { i64, i64 } %198, 1
  %202 = extractvalue { i64, i64 } %198, 0
  %203 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy3 = load ptr, ptr %203, align 8, !invariant.load !41
  call void %Destroy3(ptr noalias nonnull %7, ptr %4) #2
  %204 = call swiftcc ptr @"$sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5"(i64 %202, i64 %201)
  store ptr %204, ptr @"$s4utf84dataSays5UInt8VGvp", align 8
  store i64 0, ptr @"$s4utf85finalSivp", align 8
  %205 = load i64, ptr @"$s4utf85itersSivp", align 8
  %206 = icmp slt i64 %205, 0
  br i1 %206, label %odessy.chk3, label %207, !prof !44

207:                                              ; preds = %200
  %208 = icmp eq i64 %205, 0
  br i1 %208, label %.loopexit, label %209

209:                                              ; preds = %207
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch)
  call void @swift_beginAccess(ptr nonnull @"$s4utf85finalSivp", ptr nonnull %access-scratch, i64 1, ptr null) #2
  br label %216

.loopexit:                                        ; preds = %216, %207
  %210 = phi i64 [ 0, %207 ], [ %225, %216 ]
  %211 = call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMR") #15
  %212 = call noalias ptr @swift_allocObject(ptr %211, i64 64, i64 7) #2
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 16
  store <2 x i64> <i64 1, i64 2>, ptr %213, align 8
  %214 = getelementptr inbounds nuw i8, ptr %212, i64 32
  %215 = getelementptr inbounds nuw i8, ptr %212, i64 56
  store ptr @"$sSiN", ptr %215, align 8
  store i64 %210, ptr %214, align 8
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %212, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %212) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i32 0

216:                                              ; preds = %216, %209
  %217 = phi i64 [ 0, %209 ], [ %219, %216 ]
  %218 = phi i64 [ 0, %209 ], [ %225, %216 ]
  %219 = add nuw nsw i64 %217, 1
  %220 = call swiftcc { i64, i64 } @"$s4utf88validateySi_SitSays5UInt8VGF"(ptr %204)
  %221 = extractvalue { i64, i64 } %220, 0
  %222 = extractvalue { i64, i64 } %220, 1
  %223 = mul i64 %222, 3
  %224 = add i64 %221, %218
  %225 = add i64 %224, %223
  store i64 %225, ptr @"$s4utf85finalSivp", align 8
  %226 = icmp eq i64 %219, %205
  br i1 %226, label %.loopexit, label %216

227:                                              ; preds = %193
  %228 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy = load ptr, ptr %228, align 8, !invariant.load !41
  call void %Destroy(ptr noalias nonnull %7, ptr %4) #2
  call swiftcc void @swift_unexpectedError(ptr nonnull %199, ptr nonnull @".str.15.utf8/utf8.swift", i64 15, i1 true, i64 12)
  unreachable

229:                                              ; preds = %54
  tail call void asm sideeffect "", "n"(i32 7) #2
  tail call void @llvm.trap()
  unreachable

230:                                              ; preds = %31
  tail call void asm sideeffect "", "n"(i32 8) #2
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

odessy.chk4:                                      ; preds = %141
  tail call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %117
  tail call void @odessy.chk(i32 5)
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
  %2 = tail call swiftcc %swift.metadata_response @"$s10Foundation4DataV8IteratorVMa"(i64 0) #14
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
  %37 = tail call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMR") #15
  %38 = add nuw i64 %..i, 32
  %39 = tail call noalias ptr @swift_allocObject(ptr %37, i64 %38, i64 7) #2
  %call.i.i = tail call i64 @malloc_size(ptr noundef %39) #16, !clang.arc.no_objc_arc_exceptions !41
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
  tail call void @odessy.chk(i32 6)
  unreachable

odessy.chk1:                                      ; preds = %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit"
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk2:                                      ; preds = %12
  tail call void @odessy.chk(i32 8)
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc { i64, i64 } @"$s4utf88validateySi_SitSays5UInt8VGF"(ptr readonly captures(none) %0) local_unnamed_addr #3 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = load i64, ptr %1, align 8, !range !43
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %3

3:                                                ; preds = %entry
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %5

5:                                                ; preds = %16, %3
  %6 = phi i64 [ 0, %3 ], [ %17, %16 ]
  %7 = phi i64 [ 0, %3 ], [ %18, %16 ]
  %8 = phi i64 [ 0, %3 ], [ %19, %16 ]
  %.not22 = icmp ult i64 %8, %2
  br i1 %.not22, label %9, label %odessy.chk, !prof !45

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 %8
  %11 = load i8, ptr %10, align 1
  %12 = icmp sgt i8 %11, -1
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = add i64 %7, 1
  %15 = add nuw nsw i64 %8, 1
  br label %16

16:                                               ; preds = %86, %84, %81, %58, %55, %39, %36, %23, %13
  %17 = phi i64 [ %87, %86 ], [ %85, %84 ], [ %6, %81 ], [ %59, %58 ], [ %6, %55 ], [ %40, %39 ], [ %6, %36 ], [ %24, %23 ], [ %6, %13 ]
  %18 = phi i64 [ %7, %86 ], [ %7, %84 ], [ %82, %81 ], [ %7, %58 ], [ %56, %55 ], [ %7, %39 ], [ %37, %36 ], [ %7, %23 ], [ %14, %13 ]
  %19 = phi i64 [ %88, %86 ], [ %67, %84 ], [ %83, %81 ], [ %48, %58 ], [ %57, %55 ], [ %29, %39 ], [ %38, %36 ], [ %25, %23 ], [ %15, %13 ]
  %20 = icmp slt i64 %19, %2
  br i1 %20, label %5, label %.loopexit

21:                                               ; preds = %9
  %22 = icmp samesign ult i8 %11, -62
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = add i64 %6, 1
  %25 = add nuw nsw i64 %8, 1
  br label %16

26:                                               ; preds = %21
  %27 = icmp samesign ult i8 %11, -32
  br i1 %27, label %28, label %41

28:                                               ; preds = %26
  %29 = add nuw nsw i64 %8, 1
  %.not30 = icmp slt i64 %29, %2
  br i1 %.not30, label %32, label %30

30:                                               ; preds = %28
  %31 = add i64 %6, 1
  br label %.loopexit

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 %29
  %34 = load i8, ptr %33, align 1
  %35 = icmp slt i8 %34, -64
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = add i64 %7, 1
  %38 = add nuw nsw i64 %8, 2
  br label %16

39:                                               ; preds = %32
  %40 = add i64 %6, 1
  br label %16

41:                                               ; preds = %26
  %42 = icmp samesign ult i8 %11, -16
  br i1 %42, label %43, label %60

43:                                               ; preds = %41
  %44 = add nuw nsw i64 %8, 2
  %.not27 = icmp slt i64 %44, %2
  br i1 %.not27, label %47, label %45

45:                                               ; preds = %43
  %46 = add i64 %6, 1
  br label %.loopexit

47:                                               ; preds = %43
  %48 = add nuw nsw i64 %8, 1
  %49 = getelementptr inbounds nuw i8, ptr %4, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 %44
  %52 = load i8, ptr %51, align 1
  %53 = icmp slt i8 %50, -64
  %54 = icmp slt i8 %52, -64
  %or.cond = select i1 %53, i1 %54, i1 false
  br i1 %or.cond, label %55, label %58

55:                                               ; preds = %47
  %56 = add i64 %7, 1
  %57 = add nuw i64 %8, 3
  br label %16

58:                                               ; preds = %47
  %59 = add i64 %6, 1
  br label %16

60:                                               ; preds = %41
  %61 = icmp samesign ult i8 %11, -11
  br i1 %61, label %62, label %86

62:                                               ; preds = %60
  %63 = add nuw i64 %8, 3
  %.not23 = icmp slt i64 %63, %2
  br i1 %.not23, label %66, label %64

64:                                               ; preds = %62
  %65 = add i64 %6, 1
  br label %.loopexit

66:                                               ; preds = %62
  %67 = add nuw nsw i64 %8, 1
  %.not24 = icmp slt i64 %67, %2
  br i1 %.not24, label %68, label %odessy.chk1, !prof !45

68:                                               ; preds = %66
  %69 = getelementptr inbounds nuw i8, ptr %4, i64 %67
  %70 = load i8, ptr %69, align 1
  %71 = add nuw nsw i64 %8, 2
  %.not25 = icmp slt i64 %71, %2
  br i1 %.not25, label %72, label %odessy.chk2, !prof !45

72:                                               ; preds = %68
  %.not26 = icmp ult i64 %63, %2
  br i1 %.not26, label %73, label %odessy.chk3, !prof !45

73:                                               ; preds = %72
  %74 = getelementptr inbounds nuw i8, ptr %4, i64 %71
  %75 = load i8, ptr %74, align 1
  %76 = getelementptr inbounds nuw i8, ptr %4, i64 %63
  %77 = load i8, ptr %76, align 1
  %78 = icmp slt i8 %70, -64
  %79 = icmp slt i8 %75, -64
  %or.cond9 = select i1 %78, i1 %79, i1 false
  %80 = icmp slt i8 %77, -64
  %or.cond11 = select i1 %or.cond9, i1 %80, i1 false
  br i1 %or.cond11, label %81, label %84

81:                                               ; preds = %73
  %82 = add i64 %7, 1
  %83 = add nuw i64 %8, 4
  br label %16

84:                                               ; preds = %73
  %85 = add i64 %6, 1
  br label %16

86:                                               ; preds = %60
  %87 = add i64 %6, 1
  %88 = add nuw nsw i64 %8, 1
  br label %16

.loopexit:                                        ; preds = %16, %64, %45, %30, %entry
  %89 = phi i64 [ %65, %64 ], [ %46, %45 ], [ %31, %30 ], [ 0, %entry ], [ %17, %16 ]
  %90 = phi i64 [ %7, %64 ], [ %7, %45 ], [ %7, %30 ], [ 0, %entry ], [ %18, %16 ]
  %91 = insertvalue { i64, i64 } undef, i64 %90, 0
  %92 = insertvalue { i64, i64 } %91, i64 %89, 1
  ret { i64, i64 } %92

odessy.chk:                                       ; preds = %5
  tail call void @odessy.chk(i32 9)
  unreachable

odessy.chk1:                                      ; preds = %66
  tail call void @odessy.chk(i32 10)
  unreachable

odessy.chk2:                                      ; preds = %68
  tail call void @odessy.chk(i32 11)
  unreachable

odessy.chk3:                                      ; preds = %72
  tail call void @odessy.chk(i32 12)
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

; Function Attrs: nounwind
declare void @swift_beginAccess(ptr, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #5

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

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @swift_release(ptr) local_unnamed_addr #2

; Function Attrs: noinline
declare swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

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

.loopexit:                                        ; preds = %127, %120, %114, %111, %44, %37, %31, %28, %87, %80, %74, %71, %92, %53, %51, %9
  %47 = phi i64 [ 0, %9 ], [ 0, %51 ], [ 0, %53 ], [ 0, %92 ], [ 0, %44 ], [ 0, %87 ], [ 0, %71 ], [ 0, %74 ], [ %81, %80 ], [ 0, %28 ], [ 0, %31 ], [ %38, %37 ], [ 0, %111 ], [ 0, %114 ], [ %121, %120 ], [ 0, %127 ]
  %48 = phi i8 [ 1, %9 ], [ 1, %51 ], [ 0, %53 ], [ 1, %92 ], [ 1, %44 ], [ 1, %87 ], [ 1, %71 ], [ 1, %74 ], [ 0, %80 ], [ 1, %28 ], [ 1, %31 ], [ 0, %37 ], [ 1, %111 ], [ 1, %114 ], [ 0, %120 ], [ 1, %127 ]
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
  tail call void @odessy.chk(i32 13)
  unreachable

odessy.chk1:                                      ; preds = %7
  tail call void @odessy.chk(i32 14)
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
  %25 = tail call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %22, i64 %24), !noalias !48
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
  tail call void @odessy.chk(i32 16)
  unreachable
}

declare swiftcc i64 @"$sSs8UTF8ViewV8distance4from2toSiSS5IndexV_AGtF"(i64, i64, i64, i64, i64, ptr) local_unnamed_addr #0

define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %. = tail call i64 @llvm.smax.i64(i64 %1, i64 %0)
  %2 = icmp eq i64 %., 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %entry
  %4 = tail call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMR") #15
  %5 = add i64 %., 32
  %6 = tail call noalias ptr @swift_allocObject(ptr %4, i64 %5, i64 7) #2
  %call.i = tail call i64 @malloc_size(ptr noundef %6) #16, !clang.arc.no_objc_arc_exceptions !41
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
  br i1 %13, label %odessy.chk, label %15, !prof !44

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
  br i1 %.not13, label %.split.us.split.split.us.split.us, label %.split.us.split.split.us.split, !prof !44

.split.us.split.split.us.split.us:                ; preds = %.split.us.split.split.us, %65
  %36 = phi ptr [ %67, %65 ], [ %10, %.split.us.split.split.us ]
  %37 = phi i64 [ %60, %65 ], [ %3, %.split.us.split.split.us ]
  %38 = phi i64 [ %66, %65 ], [ 1, %.split.us.split.split.us ]
  %39 = and i64 %37, 12
  %.not.us.us.us = icmp eq i64 %39, %26
  br i1 %.not.us.us.us, label %40, label %42, !prof !44

40:                                               ; preds = %.split.us.split.split.us.split.us
  %41 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %37, i64 %.fr12, ptr %.fr11)
  br label %42

42:                                               ; preds = %40, %.split.us.split.split.us.split.us
  %43 = phi i64 [ %41, %40 ], [ %37, %.split.us.split.split.us.split.us ]
  %44 = lshr i64 %43, 14
  %45 = icmp samesign ult i64 %44, %16
  %46 = icmp samesign uge i64 %44, %14
  %47 = or i1 %45, %46
  br i1 %47, label %odessy.chk1, label %48, !prof !44

48:                                               ; preds = %42
  %49 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %.fr12, ptr %.fr11)
  %50 = extractvalue { i64, i64 } %49, 0
  %51 = lshr i64 %43, 16
  %52 = inttoptr i64 %50 to ptr
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %51
  %54 = load i8, ptr %53, align 1
  br i1 %.not.us.us.us, label %55, label %57, !prof !44

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
  br i1 %.not.us.us, label %74, label %.thread, !prof !44

74:                                               ; preds = %69
  %75 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %71, i64 %.fr12, ptr %.fr11)
  %76 = lshr i64 %75, 14
  %77 = icmp samesign ult i64 %76, %16
  %78 = icmp samesign uge i64 %76, %14
  %79 = or i1 %77, %78
  br i1 %79, label %odessy.chk1, label %87, !prof !44

.thread:                                          ; preds = %69
  %80 = lshr i64 %71, 14
  %81 = icmp samesign ult i64 %80, %16
  %82 = icmp samesign uge i64 %80, %14
  %83 = or i1 %81, %82
  br i1 %83, label %odessy.chk1, label %.thread32, !prof !44

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
  br i1 %.not.us, label %108, label %110, !prof !44

108:                                              ; preds = %.split.us.split.split
  %109 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %105, i64 %.fr12, ptr %.fr11)
  br label %110

110:                                              ; preds = %108, %.split.us.split.split
  %111 = phi i64 [ %109, %108 ], [ %105, %.split.us.split.split ]
  %112 = lshr i64 %111, 14
  %113 = icmp samesign ult i64 %112, %16
  %114 = icmp samesign uge i64 %112, %14
  %115 = or i1 %113, %114
  br i1 %115, label %odessy.chk1, label %116, !prof !44

116:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.fr12, ptr %7, align 8
  store i64 %28, ptr %.elt6, align 8
  %117 = lshr i64 %111, 16
  %118 = getelementptr inbounds nuw i8, ptr %7, i64 %117
  %119 = load i8, ptr %118, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %.not.us, label %120, label %122, !prof !44

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
  br i1 %.not, label %137, label %139, !prof !44

137:                                              ; preds = %.split
  %138 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %134, i64 %.fr12, ptr %.fr11)
  br label %139

139:                                              ; preds = %137, %.split
  %140 = phi i64 [ %138, %137 ], [ %134, %.split ]
  %141 = lshr i64 %140, 14
  %142 = icmp samesign ult i64 %141, %16
  %143 = icmp samesign uge i64 %141, %14
  %144 = or i1 %142, %143
  br i1 %144, label %odessy.chk1, label %145, !prof !44

145:                                              ; preds = %139
  %146 = tail call swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64 %140, i64 %.fr12, ptr %.fr11)
  br i1 %.not, label %147, label %149, !prof !44

147:                                              ; preds = %145
  %148 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %134, i64 %.fr12, ptr %.fr11)
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i64 [ %148, %147 ], [ %134, %145 ]
  %151 = lshr i64 %150, 16
  %.not15 = icmp samesign ult i64 %151, %35
  br i1 %.not15, label %152, label %odessy.chk2, !prof !45

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
  tail call void @odessy.chk(i32 17)
  unreachable

odessy.chk1:                                      ; preds = %139, %110, %74, %.thread, %42
  tail call void @odessy.chk(i32 18)
  unreachable

odessy.chk2:                                      ; preds = %149
  tail call void @odessy.chk(i32 19)
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
declare i64 @malloc_size(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #13

attributes #0 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #4 = { noinline "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #5 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #7 = { nounwind memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { sspreq "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #10 = { noinline nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #11 = { optsize "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind memory(none) }
attributes #15 = { nounwind memory(read) }
attributes #16 = { optsize }
attributes #17 = { nounwind memory(argmem: read) }

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
!48 = !{!49}
!49 = distinct !{!49, !50, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_: argument 0"}
!50 = distinct !{!50, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_"}
