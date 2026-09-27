; ModuleID = 'results/static/guard_ablation_0927/ir/rust/matmul.ll'
source_filename = "matmul_bench.5e18e8e9434cff86-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"std::ffi::os_str::OsString" = type { %"std::sys::os_str::bytes::Buf" }
%"std::sys::os_str::bytes::Buf" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { %"alloc::raw_vec::RawVec<u8>", i64 }
%"alloc::raw_vec::RawVec<u8>" = type { %"alloc::raw_vec::RawVecInner", %"core::marker::PhantomData<u8>" }
%"alloc::raw_vec::RawVecInner" = type { i64, ptr, %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"core::marker::PhantomData<u8>" = type {}

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_once6vtableCs84Sq2elILFG_12matmul_bench, ptr @_RNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0Cs84Sq2elILFG_12matmul_bench, ptr @_RNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0Cs84Sq2elILFG_12matmul_bench }>, align 8
@alloc_131d7f0f3f2d9d9926a4e24dd9c860d5 = private unnamed_addr constant [29 x i8] c"native_bench/matmul_bench.rs\00", align 1
@alloc_159d02549ff66f80b0a9b9c1c90e33e5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_131d7f0f3f2d9d9926a4e24dd9c860d5, [16 x i8] c"\1C\00\00\00\00\00\00\00\1B\00\00\00@\00\00\00" }>, align 8
@alloc_61247b90e1706a3f65e71312b599d3d1 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@alloc_c3ff7422618b08ef1957fa40c958694e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_131d7f0f3f2d9d9926a4e24dd9c860d5, [16 x i8] c"\1C\00\00\00\00\00\00\00\1B\00\00\00/\00\00\00" }>, align 8
@alloc_49c7a0ab2b36f3a3c68a327f7df683b7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_131d7f0f3f2d9d9926a4e24dd9c860d5, [16 x i8] c"\1C\00\00\00\00\00\00\00\10\00\00\00\18\00\00\00" }>, align 8
@alloc_d078b5ee605d9eeff2dd7973244749fe = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_131d7f0f3f2d9d9926a4e24dd9c860d5, [16 x i8] c"\1C\00\00\00\00\00\00\00\10\00\00\00'\00\00\00" }>, align 8
@alloc_55aed221616e17dc5b45885c40a99045 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_131d7f0f3f2d9d9926a4e24dd9c860d5, [16 x i8] c"\1C\00\00\00\00\00\00\00\10\00\00\00\11\00\00\00" }>, align 8
@vtable.1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsd_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@vtable.2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs84Sq2elILFG_12matmul_bench }>, align 8
@alloc_f62df14955f7d78bca139b0a7668683d = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@alloc_a5d866b1768ad3f826bccdb004a1a8ae = private unnamed_addr constant [4 x i8] c"kind", align 1
@alloc_59ba7b9f7211443cd55a366616eef46a = private unnamed_addr constant [5 x i8] c"Empty", align 1
@alloc_00315c78e51d29fe6b3102a4c1ecf6ef = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@alloc_bd3a3f3879e0d5f64554753e977f58d4 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@alloc_0964bb2a4870637395c77a018495bd5c = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@alloc_6566120a3a17f930e960a0863fcbd591 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@alloc_6c17bac0c71cba42380f8445f4dcbd16 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs84Sq2elILFG_12matmul_bench = private unnamed_addr constant [6 x i64] [i64 5, i64 12, i64 11, i64 11, i64 4, i64 14], align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs84Sq2elILFG_12matmul_bench.31.rel = private unnamed_addr constant [6 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_59ba7b9f7211443cd55a366616eef46a to i64), i64 ptrtoint (ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs84Sq2elILFG_12matmul_bench.31.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_00315c78e51d29fe6b3102a4c1ecf6ef to i64), i64 ptrtoint (ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs84Sq2elILFG_12matmul_bench.31.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_bd3a3f3879e0d5f64554753e977f58d4 to i64), i64 ptrtoint (ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs84Sq2elILFG_12matmul_bench.31.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_0964bb2a4870637395c77a018495bd5c to i64), i64 ptrtoint (ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs84Sq2elILFG_12matmul_bench.31.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_6566120a3a17f930e960a0863fcbd591 to i64), i64 ptrtoint (ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs84Sq2elILFG_12matmul_bench.31.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_6c17bac0c71cba42380f8445f4dcbd16 to i64), i64 ptrtoint (ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs84Sq2elILFG_12matmul_bench.31.rel to i64)) to i32)], align 4

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i64 @_RINvNtCs2AWtUsOyxgP_3std2rt10lang_startuECs84Sq2elILFG_12matmul_bench(ptr noundef nonnull %main, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe) unnamed_addr #0 {
start:
  %_7 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %_7)
  store ptr %main, ptr %_7, align 8
  %_0 = call noundef i64 @_RNvNtCs2AWtUsOyxgP_3std2rt19lang_start_internal(ptr noundef nonnull %_7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @vtable.0, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %_7)
  ret i64 %_0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs84Sq2elILFG_12matmul_bench(ptr noundef nonnull readonly captures(none) %f) unnamed_addr #1 {
start:
  tail call void %f() #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !4
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0Cs84Sq2elILFG_12matmul_bench(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %_1) unnamed_addr #2 {
start:
  %_4 = load ptr, ptr %_1, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs84Sq2elILFG_12matmul_bench(ptr noundef nonnull %_4) #14
  ret i32 0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_once6vtableCs84Sq2elILFG_12matmul_bench(ptr noundef readonly captures(none) %_1) unnamed_addr #2 {
start:
  %0 = load ptr, ptr %_1, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs84Sq2elILFG_12matmul_bench(ptr noundef nonnull readonly %0) #14, !noalias !6
  ret i32 0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvCs84Sq2elILFG_12matmul_bench4main() unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_5.i = alloca [24 x i8], align 8
  %e.i = alloca [1 x i8], align 1
  %0 = alloca [16 x i8], align 8
  %1 = alloca [16 x i8], align 8
  %args = alloca [16 x i8], align 8
  %sum = alloca [8 x i8], align 8
  %_7 = alloca [32 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %_5)
  call void @llvm.lifetime.start.p0(ptr nonnull %_7)
  call void @_RNvNtCs2AWtUsOyxgP_3std3env4args(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %_7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %_5.i), !noalias !9
  call void @_RNvXsa_NtCs2AWtUsOyxgP_3std3envNtB5_4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_5.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %_7) #14
  %2 = load i64, ptr %_5.i, align 8, !range !12, !noalias !9, !noundef !5
  switch i64 %2, label %bb2.i.i.i.i.i.i.i [
    i64 -1, label %_RINvYNtNtCs2AWtUsOyxgP_3std3env4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBG_3num7nonzero7NonZerojENCNvXs_NvBy_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtBG_6option6OptionB1C_EECs84Sq2elILFG_12matmul_bench.exit
    i64 0, label %bb21
  ]

bb2.i.i.i.i.i.i.i:                                ; preds = %start
  %x.sroa.5.0._5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_5.i, i64 8
  %x.sroa.5.0.copyload.i = load ptr, ptr %x.sroa.5.0._5.sroa_idx.i, align 8, !noalias !9, !nonnull !5, !noundef !5
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %x.sroa.5.0.copyload.i, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #14
  br label %bb21

_RINvYNtNtCs2AWtUsOyxgP_3std3env4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBG_3num7nonzero7NonZerojENCNvXs_NvBy_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtBG_6option6OptionB1C_EECs84Sq2elILFG_12matmul_bench.exit: ; preds = %start
  call void @llvm.lifetime.end.p0(ptr nonnull %_5.i), !noalias !9
  br label %bb22

bb21:                                             ; preds = %bb2.i.i.i.i.i.i.i, %start
  call void @llvm.lifetime.end.p0(ptr nonnull %_5.i), !noalias !9
  call void @_RNvXsa_NtCs2AWtUsOyxgP_3std3envNtB5_4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_5, ptr noalias noundef nonnull align 8 dereferenceable(32) %_7) #14
  %3 = load i64, ptr %_5, align 8, !range !12, !noundef !5
  %.not13 = icmp eq i64 %3, -1
  br i1 %.not13, label %bb22, label %bb23, !prof !13

bb23:                                             ; preds = %bb21
  %_4.sroa.4.0._5.sroa_idx = getelementptr inbounds nuw i8, ptr %_5, i64 8
  %_4.sroa.4.0.copyload = load ptr, ptr %_4.sroa.4.0._5.sroa_idx, align 8, !nonnull !5, !noundef !5
  %_4.sroa.6.0._5.sroa_idx = getelementptr inbounds nuw i8, ptr %_5, i64 16
  %_4.sroa.6.0.copyload = load i64, ptr %_4.sroa.6.0._5.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %_5)
  switch i64 %_4.sroa.6.0.copyload, label %bb9thread-pre-split.i [
    i64 0, label %bb2.i
    i64 1, label %bb7.i
  ]

bb7.i:                                            ; preds = %bb23
  %4 = load i8, ptr %_4.sroa.4.0.copyload, align 1, !alias.scope !14, !noalias !17, !noundef !5
  switch i8 %4, label %bb9.i [
    i8 43, label %bb2.i
    i8 45, label %bb2.i
  ]

bb9thread-pre-split.i:                            ; preds = %bb23
  %.pr.i = load i8, ptr %_4.sroa.4.0.copyload, align 1, !alias.scope !14, !noalias !17
  br label %bb9.i

bb9.i:                                            ; preds = %bb9thread-pre-split.i, %bb7.i
  %5 = phi i8 [ %.pr.i, %bb9thread-pre-split.i ], [ %4, %bb7.i ]
  %cond.i = icmp eq i8 %5, 43
  %rest.1.i = sext i1 %cond.i to i64
  %src.sroa.15.0.i = add nsw i64 %_4.sroa.6.0.copyload, %rest.1.i
  %src.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %src.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %_4.sroa.4.0.copyload, i64 %src.sroa.0.0.idx.i
  %_10.i = icmp samesign ult i64 %src.sroa.15.0.i, 17
  br i1 %_10.i, label %bb15.preheader.i, label %bb22.i

bb15.preheader.i:                                 ; preds = %bb9.i
  %_13.not56.i = icmp eq i64 %src.sroa.15.0.i, 0
  br i1 %_13.not56.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs84Sq2elILFG_12matmul_bench.exit, label %bb16.i

bb22.i:                                           ; preds = %bb41.i, %bb9.i
  %result.sroa.0.0.i = phi i64 [ %_66.0.i, %bb41.i ], [ 0, %bb9.i ]
  %src.sroa.15.1.i = phi i64 [ %rest.12.i, %bb41.i ], [ %src.sroa.15.0.i, %bb9.i ]
  %src.sroa.0.1.i = phi ptr [ %rest.01.i, %bb41.i ], [ %src.sroa.0.0.i, %bb9.i ]
  %_30.not.i = icmp eq i64 %src.sroa.15.1.i, 0
  br i1 %_30.not.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs84Sq2elILFG_12matmul_bench.exit, label %bb23.i

bb23.i:                                           ; preds = %bb22.i
  %rest.01.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.1.i, i64 1
  %rest.12.i = add nsw i64 %src.sroa.15.1.i, -1
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %result.sroa.0.0.i, i64 10)
  %_60.0.i = extractvalue { i64, i1 } %6, 0
  %_60.1.i = extractvalue { i64, i1 } %6, 1
  %7 = load i8, ptr %src.sroa.0.1.i, align 1, !alias.scope !14, !noalias !17, !noundef !5
  br i1 %_60.1.i, label %bb32.i, label %bb34.i, !prof !13

bb34.i:                                           ; preds = %bb23.i
  %8 = zext i8 %7 to i32
  %9 = add nsw i32 %8, -48
  %_14.i.i = icmp ult i32 %9, 10
  br i1 %_14.i.i, label %bb41.i, label %bb2.i

bb32.i:                                           ; preds = %bb23.i
  %10 = add i8 %7, -48
  %_14.i44.i = icmp ult i8 %10, 10
  %spec.select = select i1 %_14.i44.i, i8 2, i8 1
  br label %bb2.i

bb41.i:                                           ; preds = %bb34.i
  %11 = zext nneg i32 %9 to i64
  %_66.0.i = add i64 %_60.0.i, %11
  %_66.1.i = icmp ult i64 %_66.0.i, %_60.0.i
  br i1 %_66.1.i, label %bb2.i, label %bb22.i, !prof !13

bb16.i:                                           ; preds = %bb20.i, %bb15.preheader.i
  %src.sroa.0.259.i = phi ptr [ %rest.05.i, %bb20.i ], [ %src.sroa.0.0.i, %bb15.preheader.i ]
  %src.sroa.15.258.i = phi i64 [ %rest.16.i, %bb20.i ], [ %src.sroa.15.0.i, %bb15.preheader.i ]
  %result.sroa.0.257.i = phi i64 [ %14, %bb20.i ], [ 0, %bb15.preheader.i ]
  %_20.i = load i8, ptr %src.sroa.0.259.i, align 1, !alias.scope !14, !noalias !17, !noundef !5
  %_19.i = zext i8 %_20.i to i32
  %12 = add nsw i32 %_19.i, -48
  %_14.i46.i = icmp ult i32 %12, 10
  br i1 %_14.i46.i, label %bb20.i, label %bb2.i

bb20.i:                                           ; preds = %bb16.i
  %13 = mul i64 %result.sroa.0.257.i, 10
  %rest.16.i = add nsw i64 %src.sroa.15.258.i, -1
  %rest.05.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.259.i, i64 1
  %_24.i = zext nneg i32 %12 to i64
  %14 = add i64 %13, %_24.i
  %_13.not.i = icmp eq i64 %rest.16.i, 0
  br i1 %_13.not.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs84Sq2elILFG_12matmul_bench.exit, label %bb16.i

bb2.i:                                            ; preds = %bb16.i, %bb41.i, %bb32.i, %bb34.i, %bb7.i, %bb7.i, %bb23
  %_2.sroa.4.0.ph = phi i8 [ 1, %bb7.i ], [ %spec.select, %bb32.i ], [ 1, %bb7.i ], [ 0, %bb23 ], [ 1, %bb16.i ], [ 1, %bb34.i ], [ 2, %bb41.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %e.i), !noalias !19
  store i8 %_2.sroa.4.0.ph, ptr %e.i, align 1, !noalias !19
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull %e.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_159d02549ff66f80b0a9b9c1c90e33e5) #15, !noalias !19
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs84Sq2elILFG_12matmul_bench.exit: ; preds = %bb20.i, %bb22.i, %bb15.preheader.i
  %_2.sroa.1138.0 = phi i64 [ %14, %bb20.i ], [ 0, %bb15.preheader.i ], [ %result.sroa.0.0.i, %bb22.i ]
  %15 = icmp eq i64 %3, 0
  br i1 %15, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs84Sq2elILFG_12matmul_bench.exit, label %bb2.i.i.i.i.i

bb2.i.i.i.i.i:                                    ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs84Sq2elILFG_12matmul_bench.exit
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.4.0.copyload, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs84Sq2elILFG_12matmul_bench.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs84Sq2elILFG_12matmul_bench.exit: ; preds = %bb2.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs84Sq2elILFG_12matmul_bench.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %16 = getelementptr inbounds nuw i8, ptr %_7, i64 8
  %self.val.i.i.i.i.i = load ptr, ptr %16, align 8, !alias.scope !37, !nonnull !5, !noundef !5
  %17 = getelementptr inbounds nuw i8, ptr %_7, i64 24
  %self.val1.i.i.i.i.i = load ptr, ptr %17, align 8, !alias.scope !37, !nonnull !5, !noundef !5
  %18 = ptrtoint ptr %self.val1.i.i.i.i.i to i64
  %19 = ptrtoint ptr %self.val.i.i.i.i.i to i64
  %20 = sub nuw i64 %18, %19
  %21 = udiv exact i64 %20, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %_74.i.i.i.i.i.i = icmp eq ptr %self.val1.i.i.i.i.i, %self.val.i.i.i.i.i
  br i1 %_74.i.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs84Sq2elILFG_12matmul_bench.exit.i.i.i.i.i, label %bb2.i.i.i.i.i.i

bb2.i.i.i.i.i.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs84Sq2elILFG_12matmul_bench.exit.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs84Sq2elILFG_12matmul_bench.exit
  %_3.sroa.0.05.i.i.i.i.i.i = phi i64 [ %22, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs84Sq2elILFG_12matmul_bench.exit.i.i.i.i.i.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs84Sq2elILFG_12matmul_bench.exit ]
  %_6.i.i.i.i.i.i = getelementptr inbounds nuw %"std::ffi::os_str::OsString", ptr %self.val.i.i.i.i.i, i64 %_3.sroa.0.05.i.i.i.i.i.i
  %22 = add nuw nsw i64 %_3.sroa.0.05.i.i.i.i.i.i, 1
  %_6.val.i.i.i.i.i.i = load i64, ptr %_6.i.i.i.i.i.i, align 8, !range !41, !alias.scope !38, !noalias !37, !noundef !5
  %23 = icmp eq i64 %_6.val.i.i.i.i.i.i, 0
  br i1 %23, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs84Sq2elILFG_12matmul_bench.exit.i.i.i.i.i.i, label %bb2.i.i.i.i.i.i.i.i.i.i.i.i

bb2.i.i.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb2.i.i.i.i.i.i
  %24 = getelementptr i8, ptr %_6.i.i.i.i.i.i, i64 8
  %_6.val3.i.i.i.i.i.i = load ptr, ptr %24, align 8, !alias.scope !38, !noalias !37, !nonnull !5, !noundef !5
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %_6.val3.i.i.i.i.i.i, i64 noundef %_6.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #14, !noalias !42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs84Sq2elILFG_12matmul_bench.exit.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs84Sq2elILFG_12matmul_bench.exit.i.i.i.i.i.i: ; preds = %bb2.i.i.i.i.i.i.i.i.i.i.i.i, %bb2.i.i.i.i.i.i
  %_7.i.i.i.i.i.i = icmp eq i64 %22, %21
  br i1 %_7.i.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs84Sq2elILFG_12matmul_bench.exit.i.i.i.i.i, label %bb2.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs84Sq2elILFG_12matmul_bench.exit.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs84Sq2elILFG_12matmul_bench.exit.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs84Sq2elILFG_12matmul_bench.exit
  %25 = getelementptr inbounds nuw i8, ptr %_7, i64 16
  %capacity2.i.i.i.i.i.i.i = load i64, ptr %25, align 8, !alias.scope !37, !noundef !5
  %26 = icmp eq i64 %capacity2.i.i.i.i.i.i.i, 0
  br i1 %26, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECs84Sq2elILFG_12matmul_bench.exit, label %bb2.i.i.i.i.i.i.i.i.i.i

bb2.i.i.i.i.i.i.i.i.i.i:                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs84Sq2elILFG_12matmul_bench.exit.i.i.i.i.i
  %ptr.i.i.i.i.i.i.i = load ptr, ptr %_7, align 8, !alias.scope !37, !nonnull !5, !noundef !5
  %alloc_size.i.i.i.i.i.i.i.i.i.i.i = mul nuw i64 %capacity2.i.i.i.i.i.i.i, 24
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i.i.i, i64 noundef %alloc_size.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #14, !noalias !37
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECs84Sq2elILFG_12matmul_bench.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECs84Sq2elILFG_12matmul_bench.exit: ; preds = %bb2.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs84Sq2elILFG_12matmul_bench.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %_7)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !43
  %27 = call noundef align 8 dereferenceable_or_null(2097152) ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef 2097152, i64 noundef 8) #14, !noalias !43
  %28 = icmp eq ptr %27, null
  br i1 %28, label %bb14.i, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench.exit, !prof !13

bb14.i:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECs84Sq2elILFG_12matmul_bench.exit
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 2097152) #15, !noalias !48
  unreachable

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECs84Sq2elILFG_12matmul_bench.exit
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !49
  %29 = call noundef align 8 dereferenceable_or_null(2097152) ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef 2097152, i64 noundef 8) #14, !noalias !49
  %30 = icmp eq ptr %29, null
  br i1 %30, label %bb14.i20, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench.exit21, !prof !13

bb14.i20:                                         ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench.exit
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 2097152) #15, !noalias !54
  unreachable

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench.exit21: ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench.exit
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !55
  %31 = call noundef align 8 dereferenceable_or_null(2097152) ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef 2097152, i64 noundef 8) #14, !noalias !55
  %32 = icmp eq ptr %31, null
  br i1 %32, label %bb14.i23, label %vector.body, !prof !13

vector.body:                                      ; preds = %vector.body, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench.exit21
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench.exit21 ]
  %vec.ind = phi <2 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1>, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench.exit21 ]
  %33 = urem <2 x i32> %vec.ind, splat (i32 7)
  %34 = zext nneg <2 x i32> %33 to <2 x i64>
  %35 = add nsw <2 x i64> %34, splat (i64 -3)
  %36 = getelementptr inbounds nuw i64, ptr %27, i64 %index
  store <2 x i64> %35, ptr %36, align 8
  %37 = urem <2 x i32> %vec.ind, splat (i32 5)
  %38 = zext nneg <2 x i32> %37 to <2 x i64>
  %39 = add nsw <2 x i64> %38, splat (i64 -2)
  %40 = getelementptr inbounds nuw i64, ptr %29, i64 %index
  store <2 x i64> %39, ptr %40, align 8
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %41 = icmp eq i64 %index.next, 262144
  br i1 %41, label %bb10, label %vector.body, !llvm.loop !60

bb14.i23:                                         ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench.exit21
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 2097152) #15, !noalias !63
  unreachable

bb22:                                             ; preds = %bb21, %_RINvYNtNtCs2AWtUsOyxgP_3std3env4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBG_3num7nonzero7NonZerojENCNvXs_NvBy_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtBG_6option6OptionB1C_EECs84Sq2elILFG_12matmul_bench.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c3ff7422618b08ef1957fa40c958694e) #15
  unreachable

bb10:                                             ; preds = %vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %sum)
  store i64 0, ptr %sum, align 8
  %_7274.not = icmp eq i64 %_2.sroa.1138.0, 0
  br i1 %_7274.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecxEECs84Sq2elILFG_12matmul_bench.exit30, label %bb30.lr.ph

bb30.lr.ph:                                       ; preds = %bb10
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %_40 = getelementptr inbounds nuw i8, ptr %31, i64 2097144
  br label %bb30

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecxEECs84Sq2elILFG_12matmul_bench.exit30: ; preds = %bb35, %bb10
  call void @llvm.lifetime.start.p0(ptr nonnull %args)
  store ptr %sum, ptr %args, align 8
  %_45.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 8
  store ptr @_RNvXse_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impxNtB9_7Display3fmt, ptr %_45.sroa.4.0..sroa_idx, align 8
  call void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @alloc_61247b90e1706a3f65e71312b599d3d1, ptr noundef nonnull %args) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(ptr nonnull %sum)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %31, i64 noundef 2097152, i64 noundef range(i64 1, -9223372036854775807) 8) #14
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %29, i64 noundef 2097152, i64 noundef range(i64 1, -9223372036854775807) 8) #14
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %27, i64 noundef 2097152, i64 noundef range(i64 1, -9223372036854775807) 8) #14
  ret void

bb30:                                             ; preds = %bb35, %bb30.lr.ph
  %_36 = phi i64 [ 0, %bb30.lr.ph ], [ %_34, %bb35 ]
  %iter.sroa.0.075 = phi i64 [ 0, %bb30.lr.ph ], [ %_73, %bb35 ]
  %_73 = add nuw i64 %iter.sroa.0.075, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %27, ptr %1, align 8
  store i64 262144, ptr %42, align 8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %1) #14, !srcloc !4
  %_29.0 = load ptr, ptr %1, align 8, !nonnull !5, !align !64, !noundef !5
  %_29.1 = load i64, ptr %42, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr %29, ptr %0, align 8
  store i64 262144, ptr %43, align 8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %0) #14, !srcloc !4
  %_31.0 = load ptr, ptr %0, align 8, !nonnull !5, !align !64, !noundef !5
  %_31.1 = load i64, ptr %43, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  br label %bb3.preheader.i

bb3.preheader.i:                                  ; preds = %bb22.i36, %bb30
  %indvars.iv.i = phi i64 [ 0, %bb30 ], [ %indvars.iv.next.i, %bb22.i36 ]
  %i.sroa.0.036.i = phi i64 [ 0, %bb30 ], [ %_46.0.i, %bb22.i36 ]
  %44 = shl nuw nsw i64 %i.sroa.0.036.i, 9
  %invariant.gep = getelementptr inbounds nuw i64, ptr %31, i64 %44
  br label %bb5.preheader.i

bb5.preheader.i:                                  ; preds = %bb19.i35, %bb3.preheader.i
  %j.sroa.0.035.i = phi i64 [ 0, %bb3.preheader.i ], [ %_45.0.i, %bb19.i35 ]
  br label %bb7.i31

bb22.i36:                                         ; preds = %bb19.i35
  %_46.0.i = add nuw nsw i64 %i.sroa.0.036.i, 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 512
  %exitcond46.not.i = icmp eq i64 %_46.0.i, 512
  br i1 %exitcond46.not.i, label %bb35, label %bb3.preheader.i

bb19.i35:                                         ; preds = %bb15.i
  %gep = getelementptr inbounds nuw i64, ptr %invariant.gep, i64 %j.sroa.0.035.i
  store i64 %_35.0.i, ptr %gep, align 8, !alias.scope !70, !noalias !72
  %_45.0.i = add nuw nsw i64 %j.sroa.0.035.i, 1
  %exitcond45.not.i = icmp eq i64 %_45.0.i, 512
  br i1 %exitcond45.not.i, label %bb22.i36, label %bb5.preheader.i

bb7.i31:                                          ; preds = %bb15.i, %bb5.preheader.i
  %acc.sroa.0.034.i = phi i64 [ 0, %bb5.preheader.i ], [ %_35.0.i, %bb15.i ]
  %k.sroa.0.033.i = phi i64 [ 0, %bb5.preheader.i ], [ %_36.0.i, %bb15.i ]
  %_22.0.i = add nuw nsw i64 %k.sroa.0.033.i, %44
  %_24.i32 = icmp samesign ult i64 %_22.0.i, %_29.1
  br i1 %_24.i32, label %bb9.i33, label %odessy.chk

bb9.i33:                                          ; preds = %bb7.i31
  %45 = shl nuw nsw i64 %k.sroa.0.033.i, 9
  %_31.0.i = add nuw nsw i64 %45, %j.sroa.0.035.i
  %_33.i = icmp samesign ult i64 %_31.0.i, %_31.1
  br i1 %_33.i, label %bb12.i34, label %odessy.chk1

panic7.i:                                         ; No predecessors!
  %umax.i = call i64 @llvm.umax.i64(i64 range(i64 0, 1152921504606846976) %_29.1, i64 %indvars.iv.i)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, 1152921504606846976) %_29.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_49c7a0ab2b36f3a3c68a327f7df683b7) #15, !noalias !73
  unreachable

bb12.i34:                                         ; preds = %bb9.i33
  %46 = getelementptr inbounds nuw i64, ptr %_29.0, i64 %_22.0.i
  %_16.i = load i64, ptr %46, align 8, !alias.scope !65, !noalias !74, !noundef !5
  %47 = getelementptr inbounds nuw i64, ptr %_31.0, i64 %_31.0.i
  %_25.i = load i64, ptr %47, align 8, !alias.scope !68, !noalias !75, !noundef !5
  %48 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %_16.i, i64 %_25.i)
  %_34.1.i = extractvalue { i64, i1 } %48, 1
  br i1 %_34.1.i, label %odessy.chk2, label %bb13.i

panic10.i:                                        ; No predecessors!
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %_31.0.i, i64 noundef range(i64 0, 1152921504606846976) %_31.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d078b5ee605d9eeff2dd7973244749fe) #15, !noalias !73
  unreachable

bb13.i:                                           ; preds = %bb12.i34
  %_34.0.i = extractvalue { i64, i1 } %48, 0
  %49 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %acc.sroa.0.034.i, i64 %_34.0.i)
  %_35.1.i = extractvalue { i64, i1 } %49, 1
  br i1 %_35.1.i, label %odessy.chk3, label %bb15.i

panic11.i:                                        ; No predecessors!
  call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_49c7a0ab2b36f3a3c68a327f7df683b7) #15, !noalias !73
  unreachable

panic12.i:                                        ; No predecessors!
  call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_55aed221616e17dc5b45885c40a99045) #15, !noalias !73
  unreachable

bb15.i:                                           ; preds = %bb13.i
  %_35.0.i = extractvalue { i64, i1 } %49, 0
  %_36.0.i = add nuw nsw i64 %k.sroa.0.033.i, 1
  %exitcond.not.i = icmp eq i64 %_36.0.i, 512
  br i1 %exitcond.not.i, label %bb19.i35, label %bb7.i31

bb35:                                             ; preds = %bb22.i36
  %_37 = load i64, ptr %31, align 8, !noundef !5
  %_35 = add i64 %_37, %_36
  %_39 = load i64, ptr %_40, align 8, !noundef !5
  %_34 = add i64 %_35, %_39
  store i64 %_34, ptr %sum, align 8
  %exitcond101.not = icmp eq i64 %_73, %_2.sroa.1138.0
  br i1 %exitcond101.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecxEECs84Sq2elILFG_12matmul_bench.exit30, label %bb30

odessy.chk:                                       ; preds = %bb7.i31
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %bb9.i33
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %bb12.i34
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %bb13.i
  call void @odessy.chk(i32 3)
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs84Sq2elILFG_12matmul_bench(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !5, !noundef !5
  %_3.val = load i8, ptr %_3, align 1, !range !76, !noundef !5
  %0 = zext nneg i8 %_3.val to i64
  %switch.gep = getelementptr inbounds nuw i64, ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs84Sq2elILFG_12matmul_bench, i64 %0
  %switch.load = load i64, ptr %switch.gep, align 8
  %1 = zext nneg i8 %_3.val to i64
  %reltable.shift = shl i64 %1, 2
  %reltable.intrinsic = call ptr @llvm.load.relative.i64(ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs84Sq2elILFG_12matmul_bench.31.rel, i64 %reltable.shift)
  %_0.i = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %reltable.intrinsic, i64 noundef %switch.load) #14
  ret i1 %_0.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #2 {
start:
  %_5 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %_5)
  store ptr %self, ptr %_5, align 8
  %_0 = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @alloc_f62df14955f7d78bca139b0a7668683d, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @alloc_a5d866b1768ad3f826bccdb004a1a8ae, i64 noundef 4, ptr noundef nonnull %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %_5)
  ret i1 %_0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvNtCs2AWtUsOyxgP_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsa_NtCs2AWtUsOyxgP_3std3envNtB5_4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCs2AWtUsOyxgP_3std3env4args(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #7

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #10 {
top:
  %_7.i = alloca [8 x i8], align 8
  %2 = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %_7.i)
  store ptr @_RNvCs84Sq2elILFG_12matmul_bench4main, ptr %_7.i, align 8
  %_0.i = call noundef i64 @_RNvNtCs2AWtUsOyxgP_3std2rt19lang_start_internal(ptr noundef nonnull %_7.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @vtable.0, i64 noundef %2, ptr noundef %1, i8 noundef 0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %_7.i)
  %3 = trunc i64 %_0.i to i32
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #12

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #13

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!4 = !{i64 1212628181733054}
!5 = !{}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0Cs84Sq2elILFG_12matmul_bench: %_1"}
!8 = distinct !{!8, !"_RNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0Cs84Sq2elILFG_12matmul_bench"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RINvYNtNtCs2AWtUsOyxgP_3std3env4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBG_3num7nonzero7NonZerojENCNvXs_NvBy_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtBG_6option6OptionB1C_EECs84Sq2elILFG_12matmul_bench: %self"}
!11 = distinct !{!11, !"_RINvYNtNtCs2AWtUsOyxgP_3std3env4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBG_3num7nonzero7NonZerojENCNvXs_NvBy_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtBG_6option6OptionB1C_EECs84Sq2elILFG_12matmul_bench"}
!12 = !{i64 -1, i64 -9223372036854775808}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix: argument 1"}
!16 = distinct !{!16, !"_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix"}
!17 = !{!18}
!18 = distinct !{!18, !16, !"_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix: %_0"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs84Sq2elILFG_12matmul_bench: %self"}
!21 = distinct !{!21, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs84Sq2elILFG_12matmul_bench"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECs84Sq2elILFG_12matmul_bench: %_1"}
!24 = distinct !{!24, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECs84Sq2elILFG_12matmul_bench"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env6ArgsOsECs84Sq2elILFG_12matmul_bench: %_1"}
!27 = distinct !{!27, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env6ArgsOsECs84Sq2elILFG_12matmul_bench"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys4args6common4ArgsECs84Sq2elILFG_12matmul_bench: %_1"}
!30 = distinct !{!30, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys4args6common4ArgsECs84Sq2elILFG_12matmul_bench"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECs84Sq2elILFG_12matmul_bench: %_1"}
!33 = distinct !{!33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECs84Sq2elILFG_12matmul_bench"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs84Sq2elILFG_12matmul_bench: %self"}
!36 = distinct !{!36, !"_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs84Sq2elILFG_12matmul_bench"}
!37 = !{!35, !32, !29, !26, !23}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs84Sq2elILFG_12matmul_bench: %_1.0"}
!40 = distinct !{!40, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs84Sq2elILFG_12matmul_bench"}
!41 = !{i64 0, i64 -9223372036854775808}
!42 = !{!39, !35, !32, !29, !26, !23}
!43 = !{!44, !46}
!44 = distinct !{!44, !45, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84Sq2elILFG_12matmul_bench: %_0"}
!45 = distinct !{!45, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84Sq2elILFG_12matmul_bench"}
!46 = distinct !{!46, !47, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench: %_0"}
!47 = distinct !{!47, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench"}
!48 = !{!46}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84Sq2elILFG_12matmul_bench: %_0"}
!51 = distinct !{!51, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84Sq2elILFG_12matmul_bench"}
!52 = distinct !{!52, !53, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench: %_0"}
!53 = distinct !{!53, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench"}
!54 = !{!52}
!55 = !{!56, !58}
!56 = distinct !{!56, !57, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84Sq2elILFG_12matmul_bench: %_0"}
!57 = distinct !{!57, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs84Sq2elILFG_12matmul_bench"}
!58 = distinct !{!58, !59, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench: %_0"}
!59 = distinct !{!59, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs84Sq2elILFG_12matmul_bench"}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!58}
!64 = !{i64 8}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_RNvCs84Sq2elILFG_12matmul_bench6matmul: %a.0"}
!67 = distinct !{!67, !"_RNvCs84Sq2elILFG_12matmul_bench6matmul"}
!68 = !{!69}
!69 = distinct !{!69, !67, !"_RNvCs84Sq2elILFG_12matmul_bench6matmul: %b.0"}
!70 = !{!71}
!71 = distinct !{!71, !67, !"_RNvCs84Sq2elILFG_12matmul_bench6matmul: %c.0"}
!72 = !{!66, !69}
!73 = !{!66, !69, !71}
!74 = !{!69, !71}
!75 = !{!66, !71}
!76 = !{i8 0, i8 6}
