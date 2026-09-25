; ModuleID = 'results/static/guard_competitors/Rust_matmul/tag.ll'
source_filename = "matmul.fd492cd379e705d6-cgu.0"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx11.0.0"

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsa9BKTri5B3M_3std2rt10lang_startuE0INtNtNtCsgtPOCBgevO_4core3ops8function6FnOnceuE9call_once6vtableCslKexJZJvg6E_6matmul, ptr @_RNCINvNtCsa9BKTri5B3M_3std2rt10lang_startuE0CslKexJZJvg6E_6matmul, ptr @_RNCINvNtCsa9BKTri5B3M_3std2rt10lang_startuE0CslKexJZJvg6E_6matmul }>, align 8
@alloc_c6235d21a505cf6e1b7cb490615c4854 = private unnamed_addr constant [60 x i8] c"/Users/ebrah/Project/compiler/ODeSSy/native_bench/matmul.rs\00", align 1
@alloc_5fd314ef2bcd6939c8a525581924ced8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_c6235d21a505cf6e1b7cb490615c4854, [16 x i8] c";\00\00\00\00\00\00\00%\00\00\00\14\00\00\00" }>, align 8
@alloc_61247b90e1706a3f65e71312b599d3d1 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@alloc_9035f73269ad9d6a04233d91aa1930d9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_c6235d21a505cf6e1b7cb490615c4854, [16 x i8] c";\00\00\00\00\00\00\00\0F\00\00\00\18\00\00\00" }>, align 8
@alloc_082365f196abad5dc92e35811f7f83b4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_c6235d21a505cf6e1b7cb490615c4854, [16 x i8] c";\00\00\00\00\00\00\00\0F\00\00\00'\00\00\00" }>, align 8
@alloc_a4389962baf420946623ad87f953b8a3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_c6235d21a505cf6e1b7cb490615c4854, [16 x i8] c";\00\00\00\00\00\00\00\0F\00\00\00\11\00\00\00" }>, align 8

; Function Attrs: nounwind
define hidden noundef i64 @_RINvNtCsa9BKTri5B3M_3std2rt10lang_startuECslKexJZJvg6E_6matmul(ptr noundef nonnull %main, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe) unnamed_addr #0 {
start:
  %_7 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %_7)
  store ptr %main, ptr %_7, align 8
  %_0 = call noundef i64 @_RNvNtCsa9BKTri5B3M_3std2rt19lang_start_internal(ptr noundef nonnull %_7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @vtable.0, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %_7)
  ret i64 %_0
}

; Function Attrs: noinline nounwind
define internal fastcc void @_RINvNtNtCsa9BKTri5B3M_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECslKexJZJvg6E_6matmul(ptr noundef nonnull readonly captures(none) %f) unnamed_addr #1 {
start:
  tail call void %f() #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !3
  ret void
}

; Function Attrs: inlinehint nounwind
define internal noundef i32 @_RNCINvNtCsa9BKTri5B3M_3std2rt10lang_startuE0CslKexJZJvg6E_6matmul(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %_1) unnamed_addr #2 {
start:
  %_4 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtNtCsa9BKTri5B3M_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECslKexJZJvg6E_6matmul(ptr noundef nonnull %_4) #12
  ret i32 0
}

; Function Attrs: inlinehint nounwind
define internal noundef i32 @_RNSNvYNCINvNtCsa9BKTri5B3M_3std2rt10lang_startuE0INtNtNtCsgtPOCBgevO_4core3ops8function6FnOnceuE9call_once6vtableCslKexJZJvg6E_6matmul(ptr noundef readonly captures(none) %_1) unnamed_addr #2 {
start:
  %0 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtNtCsa9BKTri5B3M_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECslKexJZJvg6E_6matmul(ptr noundef nonnull readonly %0) #12, !noalias !5
  ret i32 0
}

; Function Attrs: nounwind
define hidden void @_RNvCslKexJZJvg6E_6matmul4main() unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %1 = alloca [16 x i8], align 8
  %args = alloca [16 x i8], align 8
  %_29 = alloca [8 x i8], align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !noalias !8
  %2 = tail call noundef align 8 dereferenceable_or_null(32768) ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef 32768, i64 noundef 8) #12, !noalias !8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb14.i, label %_RINvXs_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECslKexJZJvg6E_6matmul.exit, !prof !13

bb14.i:                                           ; preds = %start
  tail call void @_RNvNtCslJsSqIQKwiA_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32768) #13, !noalias !14
  unreachable

_RINvXs_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECslKexJZJvg6E_6matmul.exit: ; preds = %start
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !noalias !15
  %4 = tail call noundef align 8 dereferenceable_or_null(32768) ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef 32768, i64 noundef 8) #12, !noalias !15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb14.i16, label %_RINvXs_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECslKexJZJvg6E_6matmul.exit17, !prof !13

bb14.i16:                                         ; preds = %_RINvXs_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECslKexJZJvg6E_6matmul.exit
  tail call void @_RNvNtCslJsSqIQKwiA_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32768) #13, !noalias !20
  unreachable

_RINvXs_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECslKexJZJvg6E_6matmul.exit17: ; preds = %_RINvXs_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECslKexJZJvg6E_6matmul.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !noalias !21
  %6 = tail call noundef align 8 dereferenceable_or_null(32768) ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef 32768, i64 noundef 8) #12, !noalias !21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb14.i18, label %vector.body.preheader, !prof !13

vector.body.preheader:                            ; preds = %_RINvXs_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECslKexJZJvg6E_6matmul.exit17
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ]
  %vec.ind = phi <2 x i16> [ %vec.ind.next, %vector.body ], [ <i16 0, i16 1>, %vector.body.preheader ]
  %8 = urem <2 x i16> %vec.ind, splat (i16 7)
  %9 = zext nneg <2 x i16> %8 to <2 x i64>
  %10 = add nsw <2 x i64> %9, splat (i64 -3)
  %11 = getelementptr inbounds nuw i64, ptr %2, i64 %index
  store <2 x i64> %10, ptr %11, align 8
  %12 = urem <2 x i16> %vec.ind, splat (i16 5)
  %13 = zext nneg <2 x i16> %12 to <2 x i64>
  %14 = add nsw <2 x i64> %13, splat (i64 -2)
  %15 = getelementptr inbounds nuw i64, ptr %4, i64 %index
  store <2 x i64> %14, ptr %15, align 8
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i16> %vec.ind, splat (i16 2)
  %16 = icmp eq i64 %index.next, 4096
  br i1 %16, label %bb6, label %vector.body, !llvm.loop !26

bb14.i18:                                         ; preds = %_RINvXs_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECslKexJZJvg6E_6matmul.exit17
  tail call void @_RNvNtCslJsSqIQKwiA_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32768) #13, !noalias !29
  unreachable

bb6:                                              ; preds = %vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %2, ptr %1, align 8
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4096, ptr %17, align 8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %1) #12, !srcloc !3
  %_21.0 = load ptr, ptr %1, align 8, !nonnull !4, !align !30, !noundef !4
  %_21.1 = load i64, ptr %17, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr %4, ptr %0, align 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4096, ptr %18, align 8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %0) #12, !srcloc !3
  %_23.0 = load ptr, ptr %0, align 8, !nonnull !4, !align !30, !noundef !4
  %_23.1 = load i64, ptr %18, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %smin = call i64 @llvm.smin.i64(i64 %_21.1, i64 0)
  %smax = call i64 @llvm.smax.i64(i64 %smin, i64 -1)
  %19 = add nsw i64 %smax, 1
  br label %bb3.preheader.i

bb3.preheader.i:                                  ; preds = %bb22.i, %bb6
  %indvars.iv.i = phi i64 [ 0, %bb6 ], [ %indvars.iv.next.i, %bb22.i ]
  %i.sroa.0.036.i = phi i64 [ 0, %bb6 ], [ %_46.0.i, %bb22.i ]
  %20 = shl nuw nsw i64 %i.sroa.0.036.i, 6
  %smin1 = call i64 @llvm.smin.i64(i64 %_21.1, i64 %20)
  %21 = sub i64 %_21.1, %smin1
  %22 = mul i64 %19, %21
  %exit.mainloop.at = call i64 @llvm.umin.i64(i64 %22, i64 64)
  %23 = shl nuw nsw i64 %i.sroa.0.036.i, 6
  %invariant.gep = getelementptr inbounds nuw i64, ptr %6, i64 %23
  br label %bb5.preheader.i

bb5.preheader.i:                                  ; preds = %bb19.i, %bb3.preheader.i
  %j.sroa.0.035.i = phi i64 [ 0, %bb3.preheader.i ], [ %_45.0.i, %bb19.i ]
  %24 = icmp ult i64 0, %exit.mainloop.at
  br i1 %24, label %bb7.i.preheader, label %main.pseudo.exit

bb7.i.preheader:                                  ; preds = %bb5.preheader.i
  br label %bb7.i

bb22.i:                                           ; preds = %bb19.i
  %_46.0.i = add nuw nsw i64 %i.sroa.0.036.i, 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 64
  %exitcond46.not.i = icmp eq i64 %_46.0.i, 64
  br i1 %exitcond46.not.i, label %bb21, label %bb3.preheader.i

bb19.i.loopexit:                                  ; preds = %bb15.i.postloop
  %_35.0.i.lcssa.ph = phi i64 [ %_35.0.i.postloop, %bb15.i.postloop ]
  br label %bb19.i

bb19.i:                                           ; preds = %bb19.i.loopexit, %main.exit.selector
  %_35.0.i.lcssa = phi i64 [ %_35.0.i.lcssa2, %main.exit.selector ], [ %_35.0.i.lcssa.ph, %bb19.i.loopexit ]
  %gep = getelementptr inbounds nuw i64, ptr %invariant.gep, i64 %j.sroa.0.035.i
  store i64 %_35.0.i.lcssa, ptr %gep, align 8, !alias.scope !36, !noalias !38
  %_45.0.i = add nuw nsw i64 %j.sroa.0.035.i, 1
  %exitcond45.not.i = icmp eq i64 %_45.0.i, 64
  br i1 %exitcond45.not.i, label %bb22.i, label %bb5.preheader.i

bb7.i:                                            ; preds = %bb7.i.preheader, %bb15.i
  %acc.sroa.0.034.i = phi i64 [ %_35.0.i, %bb15.i ], [ 0, %bb7.i.preheader ]
  %k.sroa.0.033.i = phi i64 [ %_36.0.i, %bb15.i ], [ 0, %bb7.i.preheader ]
  %_22.0.i = add nuw nsw i64 %k.sroa.0.033.i, %23
  %_24.i = icmp samesign ult i64 %_22.0.i, %_21.1
  br i1 true, label %bb9.i, label %odessy.chk.loopexit3

bb9.i:                                            ; preds = %bb7.i
  %25 = shl nuw nsw i64 %k.sroa.0.033.i, 6
  %_31.0.i = add nuw nsw i64 %25, %j.sroa.0.035.i
  %_33.i = icmp samesign ult i64 %_31.0.i, %_23.1
  br i1 %_33.i, label %bb12.i, label %odessy.chk1.loopexit4

panic7.i:                                         ; No predecessors!
  %umax.i = call i64 @llvm.umax.i64(i64 range(i64 0, 1152921504606846976) %_21.1, i64 poison)
  call void @_RNvNtCsgtPOCBgevO_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, 1152921504606846976) %_21.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9035f73269ad9d6a04233d91aa1930d9) #13, !noalias !39
  unreachable

bb12.i:                                           ; preds = %bb9.i
  %26 = getelementptr inbounds nuw i64, ptr %_21.0, i64 %_22.0.i
  %_16.i = load i64, ptr %26, align 8, !alias.scope !31, !noalias !40, !noundef !4
  %27 = getelementptr inbounds nuw i64, ptr %_23.0, i64 %_31.0.i
  %_25.i = load i64, ptr %27, align 8, !alias.scope !34, !noalias !41, !noundef !4
  %28 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %_16.i, i64 %_25.i)
  %_34.1.i = extractvalue { i64, i1 } %28, 1
  %_34.1.i.not = xor i1 %_34.1.i, true
  br i1 %_34.1.i.not, label %bb13.i, label %odessy.chk2.loopexit5

panic10.i:                                        ; No predecessors!
  call void @_RNvNtCsgtPOCBgevO_4core9panicking18panic_bounds_check(i64 noundef poison, i64 noundef range(i64 0, 1152921504606846976) %_23.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_082365f196abad5dc92e35811f7f83b4) #13, !noalias !39
  unreachable

bb13.i:                                           ; preds = %bb12.i
  %_34.0.i = extractvalue { i64, i1 } %28, 0
  %29 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %acc.sroa.0.034.i, i64 %_34.0.i)
  %_35.1.i = extractvalue { i64, i1 } %29, 1
  %_35.1.i.not = xor i1 %_35.1.i, true
  br i1 %_35.1.i.not, label %bb15.i, label %odessy.chk3.loopexit6

panic11.i:                                        ; No predecessors!
  call void @_RNvNtNtCsgtPOCBgevO_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9035f73269ad9d6a04233d91aa1930d9) #13, !noalias !39
  unreachable

panic12.i:                                        ; No predecessors!
  call void @_RNvNtNtCsgtPOCBgevO_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a4389962baf420946623ad87f953b8a3) #13, !noalias !39
  unreachable

bb15.i:                                           ; preds = %bb13.i
  %_35.0.i = extractvalue { i64, i1 } %29, 0
  %_36.0.i = add nuw nsw i64 %k.sroa.0.033.i, 1
  %exitcond.not.i = icmp eq i64 %_36.0.i, 64
  %30 = icmp ult i64 %_36.0.i, %exit.mainloop.at
  %31 = xor i1 %30, true
  br i1 %31, label %main.exit.selector, label %bb7.i

main.exit.selector:                               ; preds = %bb15.i
  %_35.0.i.lcssa2 = phi i64 [ %_35.0.i, %bb15.i ]
  %_36.0.i.lcssa = phi i64 [ %_36.0.i, %bb15.i ]
  %32 = icmp ult i64 %_36.0.i.lcssa, 64
  br i1 %32, label %main.pseudo.exit, label %bb19.i

main.pseudo.exit:                                 ; preds = %main.exit.selector, %bb5.preheader.i
  %acc.sroa.0.034.i.copy = phi i64 [ 0, %bb5.preheader.i ], [ %_35.0.i.lcssa2, %main.exit.selector ]
  %k.sroa.0.033.i.copy = phi i64 [ 0, %bb5.preheader.i ], [ %_36.0.i.lcssa, %main.exit.selector ]
  %indvar.end = phi i64 [ 0, %bb5.preheader.i ], [ %_36.0.i.lcssa, %main.exit.selector ]
  br label %postloop

bb21:                                             ; preds = %bb22.i
  call void @llvm.lifetime.start.p0(ptr nonnull %_29)
  %_30 = load i64, ptr %6, align 8, !noundef !4
  %_33 = getelementptr inbounds nuw i8, ptr %6, i64 32760
  %_32 = load i64, ptr %_33, align 8, !noundef !4
  %33 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %_30, i64 %_32)
  %_34.1 = extractvalue { i64, i1 } %33, 1
  br i1 %_34.1, label %odessy.chk4, label %_RINvNtCsgtPOCBgevO_4core3ptr9drop_glueINtNtCslJsSqIQKwiA_5alloc3vec3VecxEECslKexJZJvg6E_6matmul.exit25

_RINvNtCsgtPOCBgevO_4core3ptr9drop_glueINtNtCslJsSqIQKwiA_5alloc3vec3VecxEECslKexJZJvg6E_6matmul.exit25: ; preds = %bb21
  %_34.0 = extractvalue { i64, i1 } %33, 0
  store i64 %_34.0, ptr %_29, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %args)
  store ptr %_29, ptr %args, align 8
  %_36.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 8
  store ptr @_RNvXse_NtNtNtCsgtPOCBgevO_4core3fmt3num3impxNtB9_7Display3fmt, ptr %_36.sroa.4.0..sroa_idx, align 8
  call void @_RNvNtNtCsa9BKTri5B3M_3std2io5stdio6__print(ptr noundef nonnull @alloc_61247b90e1706a3f65e71312b599d3d1, ptr noundef nonnull %args) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(ptr nonnull %_29)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef 32768, i64 noundef range(i64 1, -9223372036854775807) 8) #12
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef 32768, i64 noundef range(i64 1, -9223372036854775807) 8) #12
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef 32768, i64 noundef range(i64 1, -9223372036854775807) 8) #12
  ret void

panic2:                                           ; No predecessors!
  call void @_RNvNtNtCsgtPOCBgevO_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5fd314ef2bcd6939c8a525581924ced8) #13
  unreachable

odessy.chk.loopexit:                              ; preds = %bb7.i.postloop
  br label %odessy.chk

odessy.chk.loopexit3:                             ; preds = %bb7.i
  br label %odessy.chk

odessy.chk:                                       ; preds = %odessy.chk.loopexit3, %odessy.chk.loopexit
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1.loopexit:                             ; preds = %bb9.i.postloop
  br label %odessy.chk1

odessy.chk1.loopexit4:                            ; preds = %bb9.i
  br label %odessy.chk1

odessy.chk1:                                      ; preds = %odessy.chk1.loopexit4, %odessy.chk1.loopexit
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2.loopexit:                             ; preds = %bb12.i.postloop
  br label %odessy.chk2

odessy.chk2.loopexit5:                            ; preds = %bb12.i
  br label %odessy.chk2

odessy.chk2:                                      ; preds = %odessy.chk2.loopexit5, %odessy.chk2.loopexit
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3.loopexit:                             ; preds = %bb13.i.postloop
  br label %odessy.chk3

odessy.chk3.loopexit6:                            ; preds = %bb13.i
  br label %odessy.chk3

odessy.chk3:                                      ; preds = %odessy.chk3.loopexit6, %odessy.chk3.loopexit
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %bb21
  call void @odessy.chk(i32 4)
  unreachable

postloop:                                         ; preds = %main.pseudo.exit
  br label %bb7.i.postloop

bb7.i.postloop:                                   ; preds = %postloop, %bb15.i.postloop
  %acc.sroa.0.034.i.postloop = phi i64 [ %acc.sroa.0.034.i.copy, %postloop ], [ %_35.0.i.postloop, %bb15.i.postloop ]
  %k.sroa.0.033.i.postloop = phi i64 [ %k.sroa.0.033.i.copy, %postloop ], [ %_36.0.i.postloop, %bb15.i.postloop ]
  %_22.0.i.postloop = add nuw nsw i64 %k.sroa.0.033.i.postloop, %23
  %_24.i.postloop = icmp samesign ult i64 %_22.0.i.postloop, %_21.1
  br i1 %_24.i.postloop, label %bb9.i.postloop, label %odessy.chk.loopexit

bb9.i.postloop:                                   ; preds = %bb7.i.postloop
  %34 = shl nuw nsw i64 %k.sroa.0.033.i.postloop, 6
  %_31.0.i.postloop = add nuw nsw i64 %34, %j.sroa.0.035.i
  %_33.i.postloop = icmp samesign ult i64 %_31.0.i.postloop, %_23.1
  br i1 %_33.i.postloop, label %bb12.i.postloop, label %odessy.chk1.loopexit

bb12.i.postloop:                                  ; preds = %bb9.i.postloop
  %35 = getelementptr inbounds nuw i64, ptr %_21.0, i64 %_22.0.i.postloop
  %_16.i.postloop = load i64, ptr %35, align 8, !alias.scope !31, !noalias !40, !noundef !4
  %36 = getelementptr inbounds nuw i64, ptr %_23.0, i64 %_31.0.i.postloop
  %_25.i.postloop = load i64, ptr %36, align 8, !alias.scope !34, !noalias !41, !noundef !4
  %37 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %_16.i.postloop, i64 %_25.i.postloop)
  %_34.1.i.postloop = extractvalue { i64, i1 } %37, 1
  %_34.1.i.not.postloop = xor i1 %_34.1.i.postloop, true
  br i1 %_34.1.i.not.postloop, label %bb13.i.postloop, label %odessy.chk2.loopexit

bb13.i.postloop:                                  ; preds = %bb12.i.postloop
  %_34.0.i.postloop = extractvalue { i64, i1 } %37, 0
  %38 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %acc.sroa.0.034.i.postloop, i64 %_34.0.i.postloop)
  %_35.1.i.postloop = extractvalue { i64, i1 } %38, 1
  %_35.1.i.not.postloop = xor i1 %_35.1.i.postloop, true
  br i1 %_35.1.i.not.postloop, label %bb15.i.postloop, label %odessy.chk3.loopexit

bb15.i.postloop:                                  ; preds = %bb13.i.postloop
  %_35.0.i.postloop = extractvalue { i64, i1 } %38, 0
  %_36.0.i.postloop = add nuw nsw i64 %k.sroa.0.033.i.postloop, 1
  %exitcond.not.i.postloop = icmp eq i64 %_36.0.i.postloop, 64
  br i1 %exitcond.not.i.postloop, label %bb19.i.loopexit, label %bb7.i.postloop, !llvm.loop !42, !loop_constrainer.loop.clone !4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare noundef i64 @_RNvNtCsa9BKTri5B3M_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold minsize noreturn nounwind optsize
declare void @_RNvNtCslJsSqIQKwiA_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #4

; Function Attrs: nounwind
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind optsize
declare void @_RNvNtCsgtPOCBgevO_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #6

; Function Attrs: cold noinline noreturn nounwind
declare void @_RNvNtNtCsgtPOCBgevO_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind
declare noundef zeroext i1 @_RNvXse_NtNtNtCsgtPOCBgevO_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_RNvNtNtCsa9BKTri5B3M_3std2io5stdio6__print(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind
declare void @_RNvNtNtCsgtPOCBgevO_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #6

; Function Attrs: nounwind allockind("free")
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind allockind("alloc,zeroed,aligned") allocsize(0)
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #9

; Function Attrs: nounwind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #0 {
top:
  %_7.i = alloca [8 x i8], align 8
  %2 = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %_7.i)
  store ptr @_RNvCslKexJZJvg6E_6matmul4main, ptr %_7.i, align 8
  %_0.i = call noundef i64 @_RNvNtCsa9BKTri5B3M_3std2rt19lang_start_internal(ptr noundef nonnull %_7.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @vtable.0, i64 noundef %2, ptr noundef %1, i8 noundef 0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %_7.i)
  %3 = trunc i64 %_0.i to i32
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #1 = { noinline nounwind "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #2 = { inlinehint nounwind "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold minsize noreturn nounwind optsize "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #5 = { cold minsize noinline noreturn nounwind optsize "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold noinline noreturn nounwind "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #8 = { nounwind allockind("free") "alloc-family"="__rust_alloc" "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #9 = { nounwind allockind("alloc,zeroed,aligned") allocsize(0) "alloc-family"="__rust_alloc" "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i64 1211640339254744}
!4 = !{}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RNCINvNtCsa9BKTri5B3M_3std2rt10lang_startuE0CslKexJZJvg6E_6matmul: %_1"}
!7 = distinct !{!7, !"_RNCINvNtCsa9BKTri5B3M_3std2rt10lang_startuE0CslKexJZJvg6E_6matmul"}
!8 = !{!9, !11}
!9 = distinct !{!9, !10, !"_RNvMs4_NtCslJsSqIQKwiA_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKexJZJvg6E_6matmul: %_0"}
!10 = distinct !{!10, !"_RNvMs4_NtCslJsSqIQKwiA_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKexJZJvg6E_6matmul"}
!11 = distinct !{!11, !12, !"_RINvXs_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECslKexJZJvg6E_6matmul: %_0"}
!12 = distinct !{!12, !"_RINvXs_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECslKexJZJvg6E_6matmul"}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!11}
!15 = !{!16, !18}
!16 = distinct !{!16, !17, !"_RNvMs4_NtCslJsSqIQKwiA_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKexJZJvg6E_6matmul: %_0"}
!17 = distinct !{!17, !"_RNvMs4_NtCslJsSqIQKwiA_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKexJZJvg6E_6matmul"}
!18 = distinct !{!18, !19, !"_RINvXs_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECslKexJZJvg6E_6matmul: %_0"}
!19 = distinct !{!19, !"_RINvXs_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECslKexJZJvg6E_6matmul"}
!20 = !{!18}
!21 = !{!22, !24}
!22 = distinct !{!22, !23, !"_RNvMs4_NtCslJsSqIQKwiA_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKexJZJvg6E_6matmul: %_0"}
!23 = distinct !{!23, !"_RNvMs4_NtCslJsSqIQKwiA_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKexJZJvg6E_6matmul"}
!24 = distinct !{!24, !25, !"_RINvXs_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECslKexJZJvg6E_6matmul: %_0"}
!25 = distinct !{!25, !"_RINvXs_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECslKexJZJvg6E_6matmul"}
!26 = distinct !{!26, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!24}
!30 = !{i64 8}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_RNvCslKexJZJvg6E_6matmul6matmul: %a.0"}
!33 = distinct !{!33, !"_RNvCslKexJZJvg6E_6matmul6matmul"}
!34 = !{!35}
!35 = distinct !{!35, !33, !"_RNvCslKexJZJvg6E_6matmul6matmul: %b.0"}
!36 = !{!37}
!37 = distinct !{!37, !33, !"_RNvCslKexJZJvg6E_6matmul6matmul: %c.0"}
!38 = !{!32, !35}
!39 = !{!32, !35, !37}
!40 = !{!35, !37}
!41 = !{!32, !37}
!42 = distinct !{!42, !43, !44, !45, !46}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!"llvm.loop.vectorize.enable", i1 false}
!45 = !{!"llvm.loop.licm_versioning.disable"}
!46 = !{!"llvm.loop.distribute.enable", i1 false}
