; ModuleID = 'results/static/guard_ablation_0927/Rust_lz77/irce.od.ll'
source_filename = "lz77_bench.f10358eeb27bed39-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_once6vtableCskGUeiPmMb4j_10lz77_bench, ptr @_RNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0CskGUeiPmMb4j_10lz77_bench, ptr @_RNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0CskGUeiPmMb4j_10lz77_bench }>, align 8
@alloc_5865911330e24b437526847dd98a2ffe = private unnamed_addr constant [27 x i8] c"native_bench/lz77_bench.rs\00", align 1
@alloc_1cb64d9314adf235c29443e53aae88ba = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5865911330e24b437526847dd98a2ffe, [16 x i8] c"\1A\00\00\00\00\00\00\00\1E\00\00\00@\00\00\00" }>, align 8
@alloc_61247b90e1706a3f65e71312b599d3d1 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@alloc_76ffc47bc25fb64470d53761960481e3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5865911330e24b437526847dd98a2ffe, [16 x i8] c"\1A\00\00\00\00\00\00\00\1E\00\00\00/\00\00\00" }>, align 8
@vtable.1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsd_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@vtable.2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskGUeiPmMb4j_10lz77_bench }>, align 8
@alloc_f62df14955f7d78bca139b0a7668683d = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@alloc_a5d866b1768ad3f826bccdb004a1a8ae = private unnamed_addr constant [4 x i8] c"kind", align 1
@alloc_59ba7b9f7211443cd55a366616eef46a = private unnamed_addr constant [5 x i8] c"Empty", align 1
@alloc_00315c78e51d29fe6b3102a4c1ecf6ef = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@alloc_bd3a3f3879e0d5f64554753e977f58d4 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@alloc_0964bb2a4870637395c77a018495bd5c = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@alloc_6566120a3a17f930e960a0863fcbd591 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@alloc_6c17bac0c71cba42380f8445f4dcbd16 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskGUeiPmMb4j_10lz77_bench = private unnamed_addr constant [6 x i64] [i64 5, i64 12, i64 11, i64 11, i64 4, i64 14], align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskGUeiPmMb4j_10lz77_bench.20.rel = private unnamed_addr constant [6 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_59ba7b9f7211443cd55a366616eef46a to i64), i64 ptrtoint (ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskGUeiPmMb4j_10lz77_bench.20.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_00315c78e51d29fe6b3102a4c1ecf6ef to i64), i64 ptrtoint (ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskGUeiPmMb4j_10lz77_bench.20.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_bd3a3f3879e0d5f64554753e977f58d4 to i64), i64 ptrtoint (ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskGUeiPmMb4j_10lz77_bench.20.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_0964bb2a4870637395c77a018495bd5c to i64), i64 ptrtoint (ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskGUeiPmMb4j_10lz77_bench.20.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_6566120a3a17f930e960a0863fcbd591 to i64), i64 ptrtoint (ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskGUeiPmMb4j_10lz77_bench.20.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_6c17bac0c71cba42380f8445f4dcbd16 to i64), i64 ptrtoint (ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskGUeiPmMb4j_10lz77_bench.20.rel to i64)) to i32)], align 4

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i64 @_RINvNtCs2AWtUsOyxgP_3std2rt10lang_startuECskGUeiPmMb4j_10lz77_bench(ptr noundef nonnull %main, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe) unnamed_addr #0 {
start:
  %_7 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %_7)
  store ptr %main, ptr %_7, align 8
  %_0 = call noundef i64 @_RNvNtCs2AWtUsOyxgP_3std2rt19lang_start_internal(ptr noundef nonnull %_7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @vtable.0, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %_7)
  ret i64 %_0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECskGUeiPmMb4j_10lz77_bench(ptr noundef nonnull readonly captures(none) %f) unnamed_addr #1 {
start:
  tail call void %f() #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !4
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0CskGUeiPmMb4j_10lz77_bench(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %_1) unnamed_addr #2 {
start:
  %_4 = load ptr, ptr %_1, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECskGUeiPmMb4j_10lz77_bench(ptr noundef nonnull %_4) #13
  ret i32 0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_once6vtableCskGUeiPmMb4j_10lz77_bench(ptr noundef readonly captures(none) %_1) unnamed_addr #2 {
start:
  %0 = load ptr, ptr %_1, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECskGUeiPmMb4j_10lz77_bench(ptr noundef nonnull readonly %0) #13, !noalias !6
  ret i32 0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvCskGUeiPmMb4j_10lz77_bench4main() unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_5.i = alloca [24 x i8], align 8
  %e.i = alloca [1 x i8], align 1
  %0 = alloca [16 x i8], align 8
  %args = alloca [16 x i8], align 8
  %m = alloca [8 x i8], align 8
  %_7 = alloca [32 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %_5)
  call void @llvm.lifetime.start.p0(ptr nonnull %_7)
  call void @_RNvNtCs2AWtUsOyxgP_3std3env4args(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %_7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %_5.i), !noalias !9
  call void @_RNvXsa_NtCs2AWtUsOyxgP_3std3envNtB5_4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_5.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %_7) #13
  %1 = load i64, ptr %_5.i, align 8, !range !12, !noalias !9, !noundef !5
  switch i64 %1, label %bb2.i.i.i.i.i.i.i [
    i64 -1, label %_RINvYNtNtCs2AWtUsOyxgP_3std3env4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBG_3num7nonzero7NonZerojENCNvXs_NvBy_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtBG_6option6OptionB1C_EECskGUeiPmMb4j_10lz77_bench.exit
    i64 0, label %bb17
  ]

bb2.i.i.i.i.i.i.i:                                ; preds = %start
  %x.sroa.5.0._5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_5.i, i64 8
  %x.sroa.5.0.copyload.i = load ptr, ptr %x.sroa.5.0._5.sroa_idx.i, align 8, !noalias !9, !nonnull !5, !noundef !5
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %x.sroa.5.0.copyload.i, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #13
  br label %bb17

_RINvYNtNtCs2AWtUsOyxgP_3std3env4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBG_3num7nonzero7NonZerojENCNvXs_NvBy_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtBG_6option6OptionB1C_EECskGUeiPmMb4j_10lz77_bench.exit: ; preds = %start
  call void @llvm.lifetime.end.p0(ptr nonnull %_5.i), !noalias !9
  br label %bb18

bb17:                                             ; preds = %bb2.i.i.i.i.i.i.i, %start
  call void @llvm.lifetime.end.p0(ptr nonnull %_5.i), !noalias !9
  call void @_RNvXsa_NtCs2AWtUsOyxgP_3std3envNtB5_4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_5, ptr noalias noundef nonnull align 8 dereferenceable(32) %_7) #13
  %2 = load i64, ptr %_5, align 8, !range !12, !noundef !5
  %.not6 = icmp eq i64 %2, -1
  br i1 %.not6, label %bb18, label %bb19, !prof !13

bb19:                                             ; preds = %bb17
  %_4.sroa.4.0._5.sroa_idx = getelementptr inbounds nuw i8, ptr %_5, i64 8
  %_4.sroa.4.0.copyload = load ptr, ptr %_4.sroa.4.0._5.sroa_idx, align 8, !nonnull !5, !noundef !5
  %_4.sroa.6.0._5.sroa_idx = getelementptr inbounds nuw i8, ptr %_5, i64 16
  %_4.sroa.6.0.copyload = load i64, ptr %_4.sroa.6.0._5.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %_5)
  switch i64 %_4.sroa.6.0.copyload, label %bb9thread-pre-split.i [
    i64 0, label %bb2.i
    i64 1, label %bb7.i
  ]

bb7.i:                                            ; preds = %bb19
  %3 = load i8, ptr %_4.sroa.4.0.copyload, align 1, !alias.scope !14, !noalias !17, !noundef !5
  switch i8 %3, label %bb9.i [
    i8 43, label %bb2.i
    i8 45, label %bb2.i
  ]

bb9thread-pre-split.i:                            ; preds = %bb19
  %.pr.i = load i8, ptr %_4.sroa.4.0.copyload, align 1, !alias.scope !14, !noalias !17
  br label %bb9.i

bb9.i:                                            ; preds = %bb9thread-pre-split.i, %bb7.i
  %4 = phi i8 [ %.pr.i, %bb9thread-pre-split.i ], [ %3, %bb7.i ]
  %cond.i = icmp eq i8 %4, 43
  %rest.1.i = sext i1 %cond.i to i64
  %src.sroa.15.0.i = add nsw i64 %_4.sroa.6.0.copyload, %rest.1.i
  %src.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %src.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %_4.sroa.4.0.copyload, i64 %src.sroa.0.0.idx.i
  %_10.i = icmp samesign ult i64 %src.sroa.15.0.i, 17
  br i1 %_10.i, label %bb15.preheader.i, label %bb23.i

bb15.preheader.i:                                 ; preds = %bb9.i
  %_13.not56.i = icmp eq i64 %src.sroa.15.0.i, 0
  br i1 %_13.not56.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCskGUeiPmMb4j_10lz77_bench.exit, label %bb16.i

bb22.i:                                           ; preds = %bb41.i
  %_30.not.i.not = icmp eq i64 %rest.12.i, 0
  br i1 %_30.not.i.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCskGUeiPmMb4j_10lz77_bench.exit, label %bb23.i

bb23.i:                                           ; preds = %bb9.i, %bb22.i
  %src.sroa.0.1.i47 = phi ptr [ %rest.01.i, %bb22.i ], [ %src.sroa.0.0.i, %bb9.i ]
  %src.sroa.15.1.i46 = phi i64 [ %rest.12.i, %bb22.i ], [ %src.sroa.15.0.i, %bb9.i ]
  %result.sroa.0.0.i45 = phi i64 [ %_66.0.i, %bb22.i ], [ 0, %bb9.i ]
  %rest.01.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.1.i47, i64 1
  %rest.12.i = add nsw i64 %src.sroa.15.1.i46, -1
  %5 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %result.sroa.0.0.i45, i64 10)
  %_60.0.i = extractvalue { i64, i1 } %5, 0
  %_60.1.i = extractvalue { i64, i1 } %5, 1
  %6 = load i8, ptr %src.sroa.0.1.i47, align 1, !alias.scope !14, !noalias !17, !noundef !5
  br i1 %_60.1.i, label %bb32.i, label %bb34.i, !prof !13

bb34.i:                                           ; preds = %bb23.i
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %7, -48
  %_14.i.i = icmp ult i32 %8, 10
  br i1 %_14.i.i, label %bb41.i, label %bb2.i

bb32.i:                                           ; preds = %bb23.i
  %9 = add i8 %6, -48
  %_14.i44.i = icmp ult i8 %9, 10
  %spec.select = select i1 %_14.i44.i, i8 2, i8 1
  br label %bb2.i

bb41.i:                                           ; preds = %bb34.i
  %10 = zext nneg i32 %8 to i64
  %_66.0.i = add i64 %_60.0.i, %10
  %_66.1.i = icmp ult i64 %_66.0.i, %_60.0.i
  br i1 %_66.1.i, label %bb2.i, label %bb22.i, !prof !13

bb16.i:                                           ; preds = %bb15.preheader.i, %bb20.i
  %src.sroa.0.259.i = phi ptr [ %rest.05.i, %bb20.i ], [ %src.sroa.0.0.i, %bb15.preheader.i ]
  %src.sroa.15.258.i = phi i64 [ %rest.16.i, %bb20.i ], [ %src.sroa.15.0.i, %bb15.preheader.i ]
  %result.sroa.0.257.i = phi i64 [ %13, %bb20.i ], [ 0, %bb15.preheader.i ]
  %_20.i = load i8, ptr %src.sroa.0.259.i, align 1, !alias.scope !14, !noalias !17, !noundef !5
  %_19.i = zext i8 %_20.i to i32
  %11 = add nsw i32 %_19.i, -48
  %_14.i46.i = icmp ult i32 %11, 10
  br i1 %_14.i46.i, label %bb20.i, label %bb2.i

bb20.i:                                           ; preds = %bb16.i
  %12 = mul i64 %result.sroa.0.257.i, 10
  %rest.16.i = add nsw i64 %src.sroa.15.258.i, -1
  %rest.05.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.259.i, i64 1
  %_24.i = zext nneg i32 %11 to i64
  %13 = add i64 %12, %_24.i
  %_13.not.i = icmp eq i64 %rest.16.i, 0
  br i1 %_13.not.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCskGUeiPmMb4j_10lz77_bench.exit, label %bb16.i

bb2.i:                                            ; preds = %bb41.i, %bb34.i, %bb16.i, %bb32.i, %bb7.i, %bb7.i, %bb19
  %_2.sroa.4.0.ph = phi i8 [ 1, %bb7.i ], [ %spec.select, %bb32.i ], [ 1, %bb7.i ], [ 0, %bb19 ], [ 1, %bb16.i ], [ 1, %bb34.i ], [ 2, %bb41.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %e.i), !noalias !19
  store i8 %_2.sroa.4.0.ph, ptr %e.i, align 1, !noalias !19
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull %e.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1cb64d9314adf235c29443e53aae88ba) #14, !noalias !19
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCskGUeiPmMb4j_10lz77_bench.exit: ; preds = %bb22.i, %bb20.i, %bb15.preheader.i
  %_2.sroa.1116.0 = phi i64 [ %13, %bb20.i ], [ 0, %bb15.preheader.i ], [ %_66.0.i, %bb22.i ]
  %14 = icmp eq i64 %2, 0
  br i1 %14, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskGUeiPmMb4j_10lz77_bench.exit, label %bb2.i.i.i.i.i

bb2.i.i.i.i.i:                                    ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCskGUeiPmMb4j_10lz77_bench.exit
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.4.0.copyload, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #13
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskGUeiPmMb4j_10lz77_bench.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskGUeiPmMb4j_10lz77_bench.exit: ; preds = %bb2.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCskGUeiPmMb4j_10lz77_bench.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %15 = getelementptr inbounds nuw i8, ptr %_7, i64 8
  %self.val.i.i.i.i.i = load ptr, ptr %15, align 8, !alias.scope !37, !nonnull !5, !noundef !5
  %16 = getelementptr inbounds nuw i8, ptr %_7, i64 24
  %self.val1.i.i.i.i.i = load ptr, ptr %16, align 8, !alias.scope !37, !nonnull !5, !noundef !5
  %17 = ptrtoint ptr %self.val1.i.i.i.i.i to i64
  %18 = ptrtoint ptr %self.val.i.i.i.i.i to i64
  %19 = sub nuw i64 %17, %18
  %20 = udiv exact i64 %19, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %_74.i.i.i.i.i.i = icmp eq ptr %self.val1.i.i.i.i.i, %self.val.i.i.i.i.i
  br i1 %_74.i.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskGUeiPmMb4j_10lz77_bench.exit.i.i.i.i.i, label %bb2.i.i.i.i.i.i

bb2.i.i.i.i.i.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskGUeiPmMb4j_10lz77_bench.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskGUeiPmMb4j_10lz77_bench.exit.i.i.i.i.i.i
  %_3.sroa.0.05.i.i.i.i.i.i = phi i64 [ %21, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskGUeiPmMb4j_10lz77_bench.exit.i.i.i.i.i.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskGUeiPmMb4j_10lz77_bench.exit ]
  %_6.i.i.i.i.i.i = getelementptr inbounds nuw [24 x i8], ptr %self.val.i.i.i.i.i, i64 %_3.sroa.0.05.i.i.i.i.i.i
  %21 = add nuw nsw i64 %_3.sroa.0.05.i.i.i.i.i.i, 1
  %_6.val.i.i.i.i.i.i = load i64, ptr %_6.i.i.i.i.i.i, align 8, !range !41, !alias.scope !38, !noalias !37, !noundef !5
  %22 = icmp eq i64 %_6.val.i.i.i.i.i.i, 0
  br i1 %22, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskGUeiPmMb4j_10lz77_bench.exit.i.i.i.i.i.i, label %bb2.i.i.i.i.i.i.i.i.i.i.i.i

bb2.i.i.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb2.i.i.i.i.i.i
  %23 = getelementptr i8, ptr %_6.i.i.i.i.i.i, i64 8
  %_6.val3.i.i.i.i.i.i = load ptr, ptr %23, align 8, !alias.scope !38, !noalias !37, !nonnull !5, !noundef !5
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %_6.val3.i.i.i.i.i.i, i64 noundef %_6.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #13, !noalias !42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskGUeiPmMb4j_10lz77_bench.exit.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskGUeiPmMb4j_10lz77_bench.exit.i.i.i.i.i.i: ; preds = %bb2.i.i.i.i.i.i.i.i.i.i.i.i, %bb2.i.i.i.i.i.i
  %_7.i.i.i.i.i.i = icmp eq i64 %21, %20
  br i1 %_7.i.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskGUeiPmMb4j_10lz77_bench.exit.i.i.i.i.i, label %bb2.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskGUeiPmMb4j_10lz77_bench.exit.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskGUeiPmMb4j_10lz77_bench.exit.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskGUeiPmMb4j_10lz77_bench.exit
  %24 = getelementptr inbounds nuw i8, ptr %_7, i64 16
  %capacity2.i.i.i.i.i.i.i = load i64, ptr %24, align 8, !alias.scope !37, !noundef !5
  %25 = icmp eq i64 %capacity2.i.i.i.i.i.i.i, 0
  br i1 %25, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECskGUeiPmMb4j_10lz77_bench.exit, label %bb2.i.i.i.i.i.i.i.i.i.i

bb2.i.i.i.i.i.i.i.i.i.i:                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskGUeiPmMb4j_10lz77_bench.exit.i.i.i.i.i
  %ptr.i.i.i.i.i.i.i = load ptr, ptr %_7, align 8, !alias.scope !37, !nonnull !5, !noundef !5
  %alloc_size.i.i.i.i.i.i.i.i.i.i.i = mul nuw i64 %capacity2.i.i.i.i.i.i.i, 24
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i.i.i, i64 noundef %alloc_size.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #13, !noalias !37
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECskGUeiPmMb4j_10lz77_bench.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECskGUeiPmMb4j_10lz77_bench.exit: ; preds = %bb2.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskGUeiPmMb4j_10lz77_bench.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %_7)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #13, !noalias !43
  %26 = call noundef dereferenceable_or_null(65536) ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef 65536, i64 noundef 1) #13, !noalias !43
  %27 = icmp eq ptr %26, null
  br i1 %27, label %bb6.i, label %bb6, !prof !13

bb6.i:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECskGUeiPmMb4j_10lz77_bench.exit
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 65536) #14, !noalias !48
  unreachable

bb18:                                             ; preds = %bb17, %_RINvYNtNtCs2AWtUsOyxgP_3std3env4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBG_3num7nonzero7NonZerojENCNvXs_NvBy_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtBG_6option6OptionB1C_EECskGUeiPmMb4j_10lz77_bench.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_76ffc47bc25fb64470d53761960481e3) #14
  unreachable

bb8:                                              ; preds = %bb6
  call void @llvm.lifetime.start.p0(ptr nonnull %m)
  store i64 0, ptr %m, align 8
  %_5235.not = icmp eq i64 %_2.sroa.1116.0, 0
  br i1 %_5235.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskGUeiPmMb4j_10lz77_bench.exit, label %bb23.lr.ph

bb23.lr.ph:                                       ; preds = %bb8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb23

bb6:                                              ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECskGUeiPmMb4j_10lz77_bench.exit, %bb6
  %k.sroa.0.034 = phi i64 [ %_19.0.3, %bb6 ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECskGUeiPmMb4j_10lz77_bench.exit ]
  %x.sroa.0.033 = phi i32 [ %35, %bb6 ], [ 123456789, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECskGUeiPmMb4j_10lz77_bench.exit ]
  %_14 = mul i32 %x.sroa.0.033, 1664525
  %29 = add i32 %_14, 1013904223
  %_15 = lshr i32 %29, 24
  %_17 = getelementptr inbounds nuw i8, ptr %26, i64 %k.sroa.0.034
  %30 = trunc nuw i32 %_15 to i8
  store i8 %30, ptr %_17, align 1
  %_14.1 = mul i32 %29, 1664525
  %31 = add i32 %_14.1, 1013904223
  %_15.1 = lshr i32 %31, 24
  %_17.1 = getelementptr inbounds nuw i8, ptr %_17, i64 1
  %32 = trunc nuw i32 %_15.1 to i8
  store i8 %32, ptr %_17.1, align 1
  %_14.2 = mul i32 %31, 1664525
  %33 = add i32 %_14.2, 1013904223
  %_15.2 = lshr i32 %33, 24
  %_17.2 = getelementptr inbounds nuw i8, ptr %_17, i64 2
  %34 = trunc nuw i32 %_15.2 to i8
  store i8 %34, ptr %_17.2, align 1
  %_14.3 = mul i32 %33, 1664525
  %35 = add i32 %_14.3, 1013904223
  %_15.3 = lshr i32 %35, 24
  %_17.3 = getelementptr inbounds nuw i8, ptr %_17, i64 3
  %36 = trunc nuw i32 %_15.3 to i8
  store i8 %36, ptr %_17.3, align 1
  %_19.0.3 = add nuw nsw i64 %k.sroa.0.034, 4
  %exitcond.not.3 = icmp eq i64 %_19.0.3, 65536
  br i1 %exitcond.not.3, label %bb8, label %bb6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskGUeiPmMb4j_10lz77_bench.exit: ; preds = %_RNvCskGUeiPmMb4j_10lz77_bench9lz77_scan.exit, %bb8
  call void @llvm.lifetime.start.p0(ptr nonnull %args)
  store ptr %m, ptr %args, align 8
  %_30.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %_30.sroa.4.0..sroa_idx, align 8
  call void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @alloc_61247b90e1706a3f65e71312b599d3d1, ptr noundef nonnull %args) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(ptr nonnull %m)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %26, i64 noundef 65536, i64 noundef range(i64 1, -9223372036854775807) 1) #13
  ret void

bb23:                                             ; preds = %_RNvCskGUeiPmMb4j_10lz77_bench9lz77_scan.exit, %bb23.lr.ph
  %iter.sroa.0.037 = phi i64 [ 0, %bb23.lr.ph ], [ %_53, %_RNvCskGUeiPmMb4j_10lz77_bench9lz77_scan.exit ]
  %storemerge36 = phi i64 [ 0, %bb23.lr.ph ], [ %_21, %_RNvCskGUeiPmMb4j_10lz77_bench9lz77_scan.exit ]
  %_53 = add nuw i64 %iter.sroa.0.037, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr %26, ptr %0, align 8
  store i64 65536, ptr %28, align 8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %0) #13, !srcloc !4
  %_24.0 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %_24.1 = load i64, ptr %28, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  %_542.i = icmp samesign ugt i64 %_24.1, 1
  br i1 %_542.i, label %bb2.i11, label %_RNvCskGUeiPmMb4j_10lz77_bench9lz77_scan.exit

bb2.i11:                                          ; preds = %bb23, %bb33.i
  %matches.sroa.0.044.i = phi i64 [ %matches.sroa.0.1.i, %bb33.i ], [ 0, %bb23 ]
  %i.sroa.0.043.i = phi i64 [ %i.sroa.0.1.i, %bb33.i ], [ 1, %bb23 ]
  %start1.sroa.0.0.i = call i64 @llvm.usub.sat.i64(i64 %i.sroa.0.043.i, i64 1024)
  %_1339.i = icmp ult i64 %start1.sroa.0.0.i, %i.sroa.0.043.i
  %_17.i12 = icmp ult i64 %i.sroa.0.043.i, %_24.1
  %or.cond = and i1 %_1339.i, %_17.i12
  br i1 %or.cond, label %bb9.preheader.i.us.preheader, label %bb32.i12

bb9.preheader.i.us.preheader:                     ; preds = %bb2.i11
  %invariant.gep = getelementptr i8, ptr %_24.0, i64 %i.sroa.0.043.i
  br label %bb9.preheader.i.us

bb9.preheader.i.us:                               ; preds = %bb9.preheader.i.us.preheader, %bb22.i14.us
  %start1.sroa.0.141.i.us = phi i64 [ %_41.0.i.us, %bb22.i14.us ], [ %start1.sroa.0.0.i, %bb9.preheader.i.us.preheader ]
  %best.sroa.0.040.i.us = phi i64 [ %spec.select.i.us, %bb22.i14.us ], [ 0, %bb9.preheader.i.us.preheader ]
  %invariant.gep.us = getelementptr i8, ptr %_24.0, i64 %start1.sroa.0.141.i.us
  br label %bb12.i15.us

bb12.i15.us:                                      ; preds = %bb9.preheader.i.us, %bb17.i.1.us
  %len.sroa.0.0.i13.us = phi i64 [ 0, %bb9.preheader.i.us ], [ %_35.0.i.1.us, %bb17.i.1.us ]
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %len.sroa.0.0.i13.us
  %_23.i.us = load i8, ptr %gep.us, align 1, !alias.scope !49, !noundef !5
  %gep = getelementptr i8, ptr %invariant.gep, i64 %len.sroa.0.0.i13.us
  %_29.i.us = load i8, ptr %gep, align 1, !alias.scope !49, !noundef !5
  %_22.i.us = icmp eq i8 %_23.i.us, %_29.i.us
  br i1 %_22.i.us, label %bb17.i.us, label %bb22.i14.us

bb17.i.us:                                        ; preds = %bb12.i15.us
  %_35.0.i.us = or disjoint i64 %len.sroa.0.0.i13.us, 1
  %exitcond.i.us = icmp eq i64 %len.sroa.0.0.i13.us, 254
  br i1 %exitcond.i.us, label %bb22.i14.us, label %bb10.i.1.us

bb10.i.1.us:                                      ; preds = %bb17.i.us
  %_21.0.i.1.us = add nuw nsw i64 %_35.0.i.us, %i.sroa.0.043.i
  %_17.i.1.us = icmp ult i64 %_21.0.i.1.us, %_24.1
  br i1 %_17.i.1.us, label %bb12.i15.1.us, label %bb22.i14.us

bb12.i15.1.us:                                    ; preds = %bb10.i.1.us
  %gep11.us = getelementptr i8, ptr %invariant.gep.us, i64 %_35.0.i.us
  %_23.i.1.us = load i8, ptr %gep11.us, align 1, !alias.scope !49, !noundef !5
  %37 = getelementptr inbounds nuw i8, ptr %_24.0, i64 %_21.0.i.1.us
  %_29.i.1.us = load i8, ptr %37, align 1, !alias.scope !49, !noundef !5
  %_22.i.1.us = icmp eq i8 %_23.i.1.us, %_29.i.1.us
  br i1 %_22.i.1.us, label %bb17.i.1.us, label %bb22.i14.us

bb17.i.1.us:                                      ; preds = %bb12.i15.1.us
  %_35.0.i.1.us = add nuw nsw i64 %len.sroa.0.0.i13.us, 2
  %_21.0.i.us = add nuw nsw i64 %_35.0.i.1.us, %i.sroa.0.043.i
  %_17.i.us = icmp ult i64 %_21.0.i.us, %_24.1
  br i1 %_17.i.us, label %bb12.i15.us, label %bb22.i14.us

bb22.i14.us:                                      ; preds = %bb17.i.1.us, %bb12.i15.us, %bb17.i.us, %bb10.i.1.us, %bb12.i15.1.us
  %len.sroa.0.1.i.us = phi i64 [ %_35.0.i.us, %bb10.i.1.us ], [ 255, %bb17.i.us ], [ %len.sroa.0.0.i13.us, %bb12.i15.us ], [ %_35.0.i.us, %bb12.i15.1.us ], [ %_35.0.i.1.us, %bb17.i.1.us ]
  %spec.select.i.us = call i64 @llvm.umax.i64(i64 %len.sroa.0.1.i.us, i64 %best.sroa.0.040.i.us)
  %_41.0.i.us = add i64 %start1.sroa.0.141.i.us, 1
  %exitcond47.not.i.us = icmp eq i64 %_41.0.i.us, %i.sroa.0.043.i
  br i1 %exitcond47.not.i.us, label %bb27.i, label %bb9.preheader.i.us

bb27.i:                                           ; preds = %bb22.i14.us
  %_42.i = icmp ugt i64 %spec.select.i.us, 2
  br i1 %_42.i, label %bb28.i, label %bb32.i12

bb28.i:                                           ; preds = %bb27.i
  %_44.1.i.not = icmp eq i64 %matches.sroa.0.044.i, -1
  br i1 %_44.1.i.not, label %odessy.chk, label %bb30.i

bb32.i12:                                         ; preds = %bb27.i, %bb2.i11
  %_46.0.i = add nuw nsw i64 %i.sroa.0.043.i, 1
  br label %bb33.i

bb33.i:                                           ; preds = %bb30.i, %bb32.i12
  %i.sroa.0.1.i = phi i64 [ %_46.0.i, %bb32.i12 ], [ %_45.0.i, %bb30.i ]
  %matches.sroa.0.1.i = phi i64 [ %matches.sroa.0.044.i, %bb32.i12 ], [ %_44.0.i, %bb30.i ]
  %_5.i13 = icmp ult i64 %i.sroa.0.1.i, %_24.1
  br i1 %_5.i13, label %bb2.i11, label %_RNvCskGUeiPmMb4j_10lz77_bench9lz77_scan.exit

bb30.i:                                           ; preds = %bb28.i
  %_44.0.i = add nuw i64 %matches.sroa.0.044.i, 1
  %_45.0.i = add i64 %spec.select.i.us, %i.sroa.0.043.i
  %_45.1.i.not = icmp ult i64 %_45.0.i, %i.sroa.0.043.i
  br i1 %_45.1.i.not, label %odessy.chk1, label %bb33.i

_RNvCskGUeiPmMb4j_10lz77_bench9lz77_scan.exit:    ; preds = %bb33.i, %bb23
  %matches.sroa.0.0.lcssa.i = phi i64 [ 0, %bb23 ], [ %matches.sroa.0.1.i, %bb33.i ]
  %_21 = add i64 %matches.sroa.0.0.lcssa.i, %storemerge36
  store i64 %_21, ptr %m, align 8
  %exitcond48.not = icmp eq i64 %_53, %_2.sroa.1116.0
  br i1 %exitcond48.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskGUeiPmMb4j_10lz77_bench.exit, label %bb23

odessy.chk:                                       ; preds = %bb28.i
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %bb30.i
  call void @odessy.chk(i32 1)
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskGUeiPmMb4j_10lz77_bench(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !5, !noundef !5
  %_3.val = load i8, ptr %_3, align 1, !range !52, !noundef !5
  %0 = zext nneg i8 %_3.val to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskGUeiPmMb4j_10lz77_bench, i64 %0
  %switch.load = load i64, ptr %switch.gep, align 8
  %reltable.shift = shl nuw nsw i64 %0, 2
  %reltable.intrinsic = tail call ptr @llvm.load.relative.i64(ptr nonnull @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskGUeiPmMb4j_10lz77_bench.20.rel, i64 %reltable.shift)
  %_0.i = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %reltable.intrinsic, i64 noundef %switch.load) #13
  ret i1 %_0.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #2 {
start:
  %_5 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %_5)
  store ptr %self, ptr %_5, align 8
  %_0 = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @alloc_f62df14955f7d78bca139b0a7668683d, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @alloc_a5d866b1768ad3f826bccdb004a1a8ae, i64 noundef 4, ptr noundef nonnull %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %_5)
  ret i1 %_0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvNtCs2AWtUsOyxgP_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #6

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #9 {
top:
  %_7.i = alloca [8 x i8], align 8
  %2 = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %_7.i)
  store ptr @_RNvCskGUeiPmMb4j_10lz77_bench4main, ptr %_7.i, align 8
  %_0.i = call noundef i64 @_RNvNtCs2AWtUsOyxgP_3std2rt19lang_start_internal(ptr noundef nonnull %_7.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @vtable.0, i64 noundef %2, ptr noundef %1, i8 noundef 0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %_7.i)
  %3 = trunc i64 %_0.i to i32
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #11

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #12

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!4 = !{i64 1212812865326825}
!5 = !{}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0CskGUeiPmMb4j_10lz77_bench: %_1"}
!8 = distinct !{!8, !"_RNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0CskGUeiPmMb4j_10lz77_bench"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RINvYNtNtCs2AWtUsOyxgP_3std3env4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBG_3num7nonzero7NonZerojENCNvXs_NvBy_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtBG_6option6OptionB1C_EECskGUeiPmMb4j_10lz77_bench: %self"}
!11 = distinct !{!11, !"_RINvYNtNtCs2AWtUsOyxgP_3std3env4ArgsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBG_3num7nonzero7NonZerojENCNvXs_NvBy_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtBG_6option6OptionB1C_EECskGUeiPmMb4j_10lz77_bench"}
!12 = !{i64 -1, i64 -9223372036854775808}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix: argument 1"}
!16 = distinct !{!16, !"_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix"}
!17 = !{!18}
!18 = distinct !{!18, !16, !"_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix: %_0"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCskGUeiPmMb4j_10lz77_bench: %self"}
!21 = distinct !{!21, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCskGUeiPmMb4j_10lz77_bench"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECskGUeiPmMb4j_10lz77_bench: %_1"}
!24 = distinct !{!24, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env4ArgsECskGUeiPmMb4j_10lz77_bench"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env6ArgsOsECskGUeiPmMb4j_10lz77_bench: %_1"}
!27 = distinct !{!27, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env6ArgsOsECskGUeiPmMb4j_10lz77_bench"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys4args6common4ArgsECskGUeiPmMb4j_10lz77_bench: %_1"}
!30 = distinct !{!30, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys4args6common4ArgsECskGUeiPmMb4j_10lz77_bench"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECskGUeiPmMb4j_10lz77_bench: %_1"}
!33 = distinct !{!33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECskGUeiPmMb4j_10lz77_bench"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskGUeiPmMb4j_10lz77_bench: %self"}
!36 = distinct !{!36, !"_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskGUeiPmMb4j_10lz77_bench"}
!37 = !{!35, !32, !29, !26, !23}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskGUeiPmMb4j_10lz77_bench: %_1.0"}
!40 = distinct !{!40, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskGUeiPmMb4j_10lz77_bench"}
!41 = !{i64 0, i64 -9223372036854775808}
!42 = !{!39, !35, !32, !29, !26, !23}
!43 = !{!44, !46}
!44 = distinct !{!44, !45, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskGUeiPmMb4j_10lz77_bench: %_0"}
!45 = distinct !{!45, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskGUeiPmMb4j_10lz77_bench"}
!46 = distinct !{!46, !47, !"_RINvXs1_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECskGUeiPmMb4j_10lz77_bench: %v"}
!47 = distinct !{!47, !"_RINvXs1_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECskGUeiPmMb4j_10lz77_bench"}
!48 = !{!46}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_RNvCskGUeiPmMb4j_10lz77_bench9lz77_scan: %data.0"}
!51 = distinct !{!51, !"_RNvCskGUeiPmMb4j_10lz77_bench9lz77_scan"}
!52 = !{i8 0, i8 6}
