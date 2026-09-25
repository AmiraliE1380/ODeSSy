; ModuleID = 'results/static/guard_competitors/Rust_lz77/irce.ll'
source_filename = "lz77.48f7f89015ceac96-cgu.0"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx11.0.0"

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsa9BKTri5B3M_3std2rt10lang_startuE0INtNtNtCsgtPOCBgevO_4core3ops8function6FnOnceuE9call_once6vtableCs6gprlvleZk8_4lz77, ptr @_RNCINvNtCsa9BKTri5B3M_3std2rt10lang_startuE0Cs6gprlvleZk8_4lz77, ptr @_RNCINvNtCsa9BKTri5B3M_3std2rt10lang_startuE0Cs6gprlvleZk8_4lz77 }>, align 8
@alloc_61247b90e1706a3f65e71312b599d3d1 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1

; Function Attrs: nounwind
define hidden noundef i64 @_RINvNtCsa9BKTri5B3M_3std2rt10lang_startuECs6gprlvleZk8_4lz77(ptr noundef nonnull %main, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe) unnamed_addr #0 {
start:
  %_7 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %_7)
  store ptr %main, ptr %_7, align 8
  %_0 = call noundef i64 @_RNvNtCsa9BKTri5B3M_3std2rt19lang_start_internal(ptr noundef nonnull %_7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @vtable.0, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %_7)
  ret i64 %_0
}

; Function Attrs: noinline nounwind
define internal fastcc void @_RINvNtNtCsa9BKTri5B3M_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs6gprlvleZk8_4lz77(ptr noundef nonnull readonly captures(none) %f) unnamed_addr #1 {
start:
  tail call void %f() #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !3
  ret void
}

; Function Attrs: inlinehint nounwind
define internal noundef i32 @_RNCINvNtCsa9BKTri5B3M_3std2rt10lang_startuE0Cs6gprlvleZk8_4lz77(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %_1) unnamed_addr #2 {
start:
  %_4 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtNtCsa9BKTri5B3M_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs6gprlvleZk8_4lz77(ptr noundef nonnull %_4) #9
  ret i32 0
}

; Function Attrs: inlinehint nounwind
define internal noundef i32 @_RNSNvYNCINvNtCsa9BKTri5B3M_3std2rt10lang_startuE0INtNtNtCsgtPOCBgevO_4core3ops8function6FnOnceuE9call_once6vtableCs6gprlvleZk8_4lz77(ptr noundef readonly captures(none) %_1) unnamed_addr #2 {
start:
  %0 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtNtCsa9BKTri5B3M_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs6gprlvleZk8_4lz77(ptr noundef nonnull readonly %0) #9, !noalias !5
  ret i32 0
}

; Function Attrs: nounwind
define hidden void @_RNvCs6gprlvleZk8_4lz774main() unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %args = alloca [16 x i8], align 8
  %m = alloca [8 x i8], align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #9, !noalias !8
  %1 = tail call noundef dereferenceable_or_null(65536) ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef 65536, i64 noundef 1) #9, !noalias !8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb6.i, label %bb2, !prof !13

bb6.i:                                            ; preds = %start
  tail call void @_RNvNtCslJsSqIQKwiA_5alloc7raw_vec12handle_error(i64 noundef 1, i64 65536) #10, !noalias !14
  unreachable

bb4:                                              ; preds = %bb2
  call void @llvm.lifetime.start.p0(ptr nonnull %m)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr %1, ptr %0, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 65536, ptr %3, align 8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %0) #9, !srcloc !3
  %_14.0 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %_14.1 = load i64, ptr %3, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  %_542.i = icmp samesign ugt i64 %_14.1, 1
  br i1 %_542.i, label %bb2.i, label %_RINvNtCsgtPOCBgevO_4core3ptr9drop_glueINtNtCslJsSqIQKwiA_5alloc3vec3VechEECs6gprlvleZk8_4lz77.exit

bb2.i:                                            ; preds = %bb4, %bb33.i
  %matches.sroa.0.044.i = phi i64 [ %matches.sroa.0.1.i, %bb33.i ], [ 0, %bb4 ]
  %i.sroa.0.043.i = phi i64 [ %i.sroa.0.1.i, %bb33.i ], [ 1, %bb4 ]
  %start1.sroa.0.0.i = call i64 @llvm.usub.sat.i64(i64 %i.sroa.0.043.i, i64 1024)
  %_1339.i = icmp ult i64 %start1.sroa.0.0.i, %i.sroa.0.043.i
  br i1 %_1339.i, label %bb9.preheader.preheader.i, label %bb32.i

bb9.preheader.preheader.i:                        ; preds = %bb2.i
  %4 = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %_14.1, i64 %i.sroa.0.043.i)
  %invariant.gep.i = getelementptr i8, ptr %_14.0, i64 %i.sroa.0.043.i
  br label %bb9.preheader.i

bb9.preheader.i:                                  ; preds = %bb22.i, %bb9.preheader.preheader.i
  %start1.sroa.0.141.i = phi i64 [ %_41.0.i, %bb22.i ], [ %start1.sroa.0.0.i, %bb9.preheader.preheader.i ]
  %best.sroa.0.040.i = phi i64 [ %spec.select.i, %bb22.i ], [ 0, %bb9.preheader.preheader.i ]
  %smin = call i64 @llvm.smin.i64(i64 %_14.1, i64 %start1.sroa.0.141.i)
  %5 = sub i64 %_14.1, %smin
  %umin20 = call i64 @llvm.umin.i64(i64 %5, i64 255)
  %smin19 = call i64 @llvm.smin.i64(i64 %start1.sroa.0.141.i, i64 0)
  %6 = sub i64 0, %smin19
  %7 = call i64 @llvm.umax.i64(i64 %6, i64 1)
  %umax = call i64 @llvm.umin.i64(i64 %7, i64 255)
  %.not = icmp sgt i64 %start1.sroa.0.141.i, -1
  br i1 %.not, label %preloop.pseudo.exit, label %bb10.i.preloop

bb27.i:                                           ; preds = %bb22.i
  %_42.i = icmp ugt i64 %spec.select.i, 2
  br i1 %_42.i, label %bb28.i, label %bb32.i

bb28.i:                                           ; preds = %bb27.i
  %_44.1.i = icmp eq i64 %matches.sroa.0.044.i, -1
  br i1 %_44.1.i, label %odessy.chk, label %bb30.i

bb32.i:                                           ; preds = %bb27.i, %bb2.i
  %_46.0.i = add nuw nsw i64 %i.sroa.0.043.i, 1
  br label %bb33.i

bb33.i:                                           ; preds = %bb30.i, %bb32.i
  %i.sroa.0.1.i = phi i64 [ %_46.0.i, %bb32.i ], [ %_45.0.i, %bb30.i ]
  %matches.sroa.0.1.i = phi i64 [ %matches.sroa.0.044.i, %bb32.i ], [ %_44.0.i, %bb30.i ]
  %_5.i = icmp ult i64 %i.sroa.0.1.i, %_14.1
  br i1 %_5.i, label %bb2.i, label %_RINvNtCsgtPOCBgevO_4core3ptr9drop_glueINtNtCslJsSqIQKwiA_5alloc3vec3VechEECs6gprlvleZk8_4lz77.exit

bb30.i:                                           ; preds = %bb28.i
  %_44.0.i = add nuw i64 %matches.sroa.0.044.i, 1
  %_45.0.i = add i64 %spec.select.i, %i.sroa.0.043.i
  %_45.1.i = icmp ult i64 %_45.0.i, %i.sroa.0.043.i
  br i1 %_45.1.i, label %odessy.chk1, label %bb33.i

bb10.i:                                           ; preds = %bb10.i.preheader, %bb17.i
  %len.sroa.0.0.i = phi i64 [ %_35.0.i, %bb17.i ], [ %len.sroa.0.0.i.preloop.copy, %bb10.i.preheader ]
  %exitcond.not.i.not = icmp eq i64 %len.sroa.0.0.i, %4
  br i1 %exitcond.not.i.not, label %bb22.i, label %bb12.i

bb22.i:                                           ; preds = %bb10.i.preloop, %bb13.i.preloop, %bb10.i, %bb12.i, %bb10.i.postloop, %bb13.i.postloop, %bb17.i.postloop, %preloop.exit.selector, %main.exit.selector
  %len.sroa.0.1.i = phi i64 [ 255, %main.exit.selector ], [ %len.sroa.0.0.i.postloop, %bb13.i.postloop ], [ %4, %bb10.i ], [ 255, %preloop.exit.selector ], [ 255, %bb17.i.postloop ], [ %4, %bb10.i.postloop ], [ %len.sroa.0.0.i, %bb12.i ], [ %len.sroa.0.0.i.preloop, %bb13.i.preloop ], [ %4, %bb10.i.preloop ]
  %spec.select.i = call i64 @llvm.umax.i64(i64 %len.sroa.0.1.i, i64 %best.sroa.0.040.i)
  %_41.0.i = add i64 %start1.sroa.0.141.i, 1
  %exitcond49.not.i = icmp eq i64 %_41.0.i, %i.sroa.0.043.i
  br i1 %exitcond49.not.i, label %bb27.i, label %bb9.preheader.i

bb12.i:                                           ; preds = %bb10.i
  %gep = getelementptr i8, ptr %invariant.gep, i64 %len.sroa.0.0.i
  %_23.i = load i8, ptr %gep, align 1, !alias.scope !15, !noundef !4
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %len.sroa.0.0.i
  %_29.i = load i8, ptr %gep.i, align 1, !alias.scope !15, !noundef !4
  %_22.i = icmp eq i8 %_23.i, %_29.i
  br i1 %_22.i, label %bb17.i, label %bb22.i

bb17.i:                                           ; preds = %bb12.i
  %_35.0.i = add nuw nsw i64 %len.sroa.0.0.i, 1
  %exitcond21.not = icmp eq i64 %_35.0.i, %umin20
  br i1 %exitcond21.not, label %main.exit.selector, label %bb10.i

main.exit.selector:                               ; preds = %bb17.i
  %.not25 = icmp ugt i64 %5, 254
  br i1 %.not25, label %bb22.i, label %bb10.i.postloop.preheader

bb10.i.postloop.preheader:                        ; preds = %preloop.pseudo.exit, %main.exit.selector
  %len.sroa.0.0.i.postloop.ph = phi i64 [ %umin20, %main.exit.selector ], [ %len.sroa.0.0.i.preloop.copy, %preloop.pseudo.exit ]
  br label %bb10.i.postloop

_RINvNtCsgtPOCBgevO_4core3ptr9drop_glueINtNtCslJsSqIQKwiA_5alloc3vec3VechEECs6gprlvleZk8_4lz77.exit: ; preds = %bb33.i, %bb4
  %matches.sroa.0.0.lcssa.i = phi i64 [ 0, %bb4 ], [ %matches.sroa.0.1.i, %bb33.i ]
  store i64 %matches.sroa.0.0.lcssa.i, ptr %m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %args)
  store ptr %m, ptr %args, align 8
  %_20.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 8
  store ptr @_RNvXsi_NtNtNtCsgtPOCBgevO_4core3fmt3num3impjNtB9_7Display3fmt, ptr %_20.sroa.4.0..sroa_idx, align 8
  call void @_RNvNtNtCsa9BKTri5B3M_3std2io5stdio6__print(ptr noundef nonnull @alloc_61247b90e1706a3f65e71312b599d3d1, ptr noundef nonnull %args) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(ptr nonnull %m)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 65536, i64 noundef range(i64 1, -9223372036854775807) 1) #9
  ret void

bb2:                                              ; preds = %start, %bb2
  %k.sroa.0.09 = phi i64 [ %_12.0, %bb2 ], [ 0, %start ]
  %x.sroa.0.08 = phi i32 [ %8, %bb2 ], [ 123456789, %start ]
  %_7 = mul i32 %x.sroa.0.08, 1664525
  %8 = add i32 %_7, 1013904223
  %_8 = lshr i32 %8, 24
  %_10 = getelementptr inbounds nuw i8, ptr %1, i64 %k.sroa.0.09
  %9 = trunc nuw i32 %_8 to i8
  store i8 %9, ptr %_10, align 1
  %_12.0 = add nuw nsw i64 %k.sroa.0.09, 1
  %exitcond.not = icmp eq i64 %_12.0, 65536
  br i1 %exitcond.not, label %bb4, label %bb2

odessy.chk:                                       ; preds = %bb28.i
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %bb30.i
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %bb12.i.preloop, %bb12.i.postloop
  call void @odessy.chk(i32 2)
  unreachable

bb10.i.preloop:                                   ; preds = %bb9.preheader.i, %bb17.i.preloop
  %len.sroa.0.0.i.preloop = phi i64 [ %_35.0.i.preloop, %bb17.i.preloop ], [ 0, %bb9.preheader.i ]
  %exitcond.not.i.preloop.not = icmp eq i64 %len.sroa.0.0.i.preloop, %4
  br i1 %exitcond.not.i.preloop.not, label %bb22.i, label %bb12.i.preloop

bb12.i.preloop:                                   ; preds = %bb10.i.preloop
  %_27.0.i.preloop = add nuw nsw i64 %len.sroa.0.0.i.preloop, %start1.sroa.0.141.i
  %_28.i.preloop = icmp ult i64 %_27.0.i.preloop, %_14.1
  br i1 %_28.i.preloop, label %bb13.i.preloop, label %odessy.chk2

bb13.i.preloop:                                   ; preds = %bb12.i.preloop
  %10 = getelementptr inbounds nuw i8, ptr %_14.0, i64 %_27.0.i.preloop
  %_23.i.preloop = load i8, ptr %10, align 1, !alias.scope !15, !noundef !4
  %gep.i.preloop = getelementptr i8, ptr %invariant.gep.i, i64 %len.sroa.0.0.i.preloop
  %_29.i.preloop = load i8, ptr %gep.i.preloop, align 1, !alias.scope !15, !noundef !4
  %_22.i.preloop = icmp eq i8 %_23.i.preloop, %_29.i.preloop
  br i1 %_22.i.preloop, label %bb17.i.preloop, label %bb22.i

bb17.i.preloop:                                   ; preds = %bb13.i.preloop
  %_35.0.i.preloop = add nuw nsw i64 %len.sroa.0.0.i.preloop, 1
  %exitcond.not23 = icmp eq i64 %_35.0.i.preloop, %umax
  br i1 %exitcond.not23, label %preloop.exit.selector, label %bb10.i.preloop, !llvm.loop !18, !loop_constrainer.loop.clone !4

preloop.exit.selector:                            ; preds = %bb17.i.preloop
  %.not24 = icmp ugt i64 %6, 254
  br i1 %.not24, label %bb22.i, label %preloop.pseudo.exit

preloop.pseudo.exit:                              ; preds = %preloop.exit.selector, %bb9.preheader.i
  %len.sroa.0.0.i.preloop.copy = phi i64 [ 0, %bb9.preheader.i ], [ %umax, %preloop.exit.selector ]
  %11 = icmp samesign ult i64 %len.sroa.0.0.i.preloop.copy, %umin20
  br i1 %11, label %bb10.i.preheader, label %bb10.i.postloop.preheader

bb10.i.preheader:                                 ; preds = %preloop.pseudo.exit
  %invariant.gep = getelementptr i8, ptr %_14.0, i64 %start1.sroa.0.141.i
  br label %bb10.i

bb10.i.postloop:                                  ; preds = %bb10.i.postloop.preheader, %bb17.i.postloop
  %len.sroa.0.0.i.postloop = phi i64 [ %_35.0.i.postloop, %bb17.i.postloop ], [ %len.sroa.0.0.i.postloop.ph, %bb10.i.postloop.preheader ]
  %exitcond.not.i.postloop.not = icmp eq i64 %len.sroa.0.0.i.postloop, %4
  br i1 %exitcond.not.i.postloop.not, label %bb22.i, label %bb12.i.postloop

bb12.i.postloop:                                  ; preds = %bb10.i.postloop
  %_27.0.i.postloop = add nuw nsw i64 %len.sroa.0.0.i.postloop, %start1.sroa.0.141.i
  %_28.i.postloop = icmp ult i64 %_27.0.i.postloop, %_14.1
  br i1 %_28.i.postloop, label %bb13.i.postloop, label %odessy.chk2

bb13.i.postloop:                                  ; preds = %bb12.i.postloop
  %12 = getelementptr inbounds nuw i8, ptr %_14.0, i64 %_27.0.i.postloop
  %_23.i.postloop = load i8, ptr %12, align 1, !alias.scope !15, !noundef !4
  %gep.i.postloop = getelementptr i8, ptr %invariant.gep.i, i64 %len.sroa.0.0.i.postloop
  %_29.i.postloop = load i8, ptr %gep.i.postloop, align 1, !alias.scope !15, !noundef !4
  %_22.i.postloop = icmp eq i8 %_23.i.postloop, %_29.i.postloop
  br i1 %_22.i.postloop, label %bb17.i.postloop, label %bb22.i

bb17.i.postloop:                                  ; preds = %bb13.i.postloop
  %_35.0.i.postloop = add nuw nsw i64 %len.sroa.0.0.i.postloop, 1
  %exitcond48.i.postloop = icmp eq i64 %_35.0.i.postloop, 255
  br i1 %exitcond48.i.postloop, label %bb22.i, label %bb10.i.postloop, !llvm.loop !23, !loop_constrainer.loop.clone !4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare noundef i64 @_RNvNtCsa9BKTri5B3M_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold minsize noreturn nounwind optsize
declare void @_RNvNtCslJsSqIQKwiA_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #4

; Function Attrs: nounwind
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsgtPOCBgevO_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_RNvNtNtCsa9BKTri5B3M_3std2io5stdio6__print(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind allockind("alloc,zeroed,aligned") allocsize(0)
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #5

; Function Attrs: nounwind
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind allockind("free")
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #6

; Function Attrs: nounwind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #0 {
top:
  %_7.i = alloca [8 x i8], align 8
  %2 = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %_7.i)
  store ptr @_RNvCs6gprlvleZk8_4lz774main, ptr %_7.i, align 8
  %_0.i = call noundef i64 @_RNvNtCsa9BKTri5B3M_3std2rt19lang_start_internal(ptr noundef nonnull %_7.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @vtable.0, i64 noundef %2, ptr noundef %1, i8 noundef 0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %_7.i)
  %3 = trunc i64 %_0.i to i32
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { nounwind "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #1 = { noinline nounwind "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #2 = { inlinehint nounwind "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold minsize noreturn nounwind optsize "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #5 = { nounwind allockind("alloc,zeroed,aligned") allocsize(0) "alloc-family"="__rust_alloc" "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #6 = { nounwind allockind("free") "alloc-family"="__rust_alloc" "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #7 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i64 1212864404934389}
!4 = !{}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RNCINvNtCsa9BKTri5B3M_3std2rt10lang_startuE0Cs6gprlvleZk8_4lz77: %_1"}
!7 = distinct !{!7, !"_RNCINvNtCsa9BKTri5B3M_3std2rt10lang_startuE0Cs6gprlvleZk8_4lz77"}
!8 = !{!9, !11}
!9 = distinct !{!9, !10, !"_RNvMs4_NtCslJsSqIQKwiA_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6gprlvleZk8_4lz77: %_0"}
!10 = distinct !{!10, !"_RNvMs4_NtCslJsSqIQKwiA_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6gprlvleZk8_4lz77"}
!11 = distinct !{!11, !12, !"_RINvXs1_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs6gprlvleZk8_4lz77: %v"}
!12 = distinct !{!12, !"_RINvXs1_NtNtCslJsSqIQKwiA_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs6gprlvleZk8_4lz77"}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!11}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_RNvCs6gprlvleZk8_4lz779lz77_scan: %data.0"}
!17 = distinct !{!17, !"_RNvCs6gprlvleZk8_4lz779lz77_scan"}
!18 = distinct !{!18, !19, !20, !21, !22}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"llvm.loop.vectorize.enable", i1 false}
!21 = !{!"llvm.loop.licm_versioning.disable"}
!22 = !{!"llvm.loop.distribute.enable", i1 false}
!23 = distinct !{!23, !19, !20, !21, !22}
