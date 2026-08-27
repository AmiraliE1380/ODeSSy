; ModuleID = '/mydata/ODeSSy/perf_zstd_work/obj.oracle/zstd_ldm.ll.mid'
source_filename = "/mydata/zstd/lib/compress/zstd_ldm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.ldmRollingHashState_t = type { i64, i64 }

@ZSTD_ldm_gearTab = internal unnamed_addr constant [256 x i64] [i64 -740570368750160036, i64 -8893660220509993966, i64 -5312086290702594868, i64 -5735972619299081762, i64 3771850993348288464, i64 5663242980927105797, i64 4180421565056919044, i64 -3545172778422107057, i64 8565414132019635614, i64 -7168278193325086006, i64 -8766759121928489687, i64 2955002781598341257, i64 -5786234267245351962, i64 -3591879250321086919, i64 152752410645948062, i64 980088017434152, i64 331732851626658549, i64 -8838640746785046208, i64 357946512872856607, i64 -9034488908246861280, i64 5763983574984628126, i64 -8902527927300804837, i64 5836814799640872626, i64 7626666828866112607, i64 -8314407865459583812, i64 -4338073698025259005, i64 -3427841724570307695, i64 -4735281124383641554, i64 3783546168938607943, i64 -5997679262622952944, i64 7335087386897913548, i64 -8164338418464644131, i64 -4068556904131095362, i64 -7831782995437506261, i64 6793784568496124290, i64 2174722154453825146, i64 2984138818416736892, i64 -7113741742226294226, i64 -2281435508835450325, i64 -7721633399858986080, i64 -3643393691544233469, i64 4998707500772197108, i64 -8746917044558380703, i64 4094234931541430821, i64 -5443419906114852421, i64 -6623610566688024079, i64 8857814660316604090, i64 -3400738594147523822, i64 -8919821665358523128, i64 -6282918144253290562, i64 2432827404989958913, i64 -7394112240096411410, i64 -6121261480113539237, i64 5984878076832140732, i64 3384046157297573234, i64 -4595246024994827002, i64 5291253059634137447, i64 8671685973221512352, i64 2826049182810801527, i64 7403797093788988755, i64 5165094797103512198, i64 3882952073790264921, i64 5144544719191608175, i64 7834774775704163346, i64 -2473432571472174399, i64 8174605543888266482, i64 -2355378437650417609, i64 -8592654940661990135, i64 6401049270349998237, i64 1690663705589720305, i64 -325991306605533225, i64 3162055811205276826, i64 7360403718927882347, i64 4149314189569060432, i64 242631106765699956, i64 4800188873694292702, i64 -4240136128533032951, i64 7695287510285100531, i64 -838191446823566789, i64 -8426618797363772681, i64 4318197351340892641, i64 1149634524221210890, i64 -7114863459094900121, i64 6598639596032476539, i64 -6839639621591231422, i64 -4468079783678231221, i64 7415306797865260392, i64 -8387907088140799907, i64 -1258625276876293193, i64 -8475030331983742166, i64 -4522295019934803305, i64 7907118757495767932, i64 -4069547487456468751, i64 -2916501145698388069, i64 -713064998698898503, i64 3241772581917522649, i64 -8751519476800664287, i64 2730958776012430807, i64 -5042858452473121693, i64 5670495071248203466, i64 -4753026106883975734, i64 8596907927398544058, i64 5161444109349651405, i64 5785732034315264735, i64 -2307004377459233095, i64 5101781436946662964, i64 -959555898603366205, i64 3854890476374695265, i64 2640596163920942051, i64 612531917322106041, i64 2943830675960290284, i64 5689027370104560298, i64 -8631226724040007757, i64 -4511209064617679402, i64 -4894469369141432134, i64 476493605933034202, i64 -4884230169516457813, i64 5170495216195818230, i64 5692683294927132859, i64 8144723081244076501, i64 -8597519866247633570, i64 -880939249453910632, i64 -4429072432866837671, i64 -9094346755688061955, i64 -8586012847855474869, i64 938274653391260135, i64 -1919596203828456659, i64 -4685062728154955610, i64 -7589917696820385588, i64 -4644676758005663535, i64 7411488509093422598, i64 -8990486576947324933, i64 -5153218641461172124, i64 -2632799881851607396, i64 -8546249320962975810, i64 -3973672932846999028, i64 8549157441122500270, i64 -6599514505156005102, i64 -6129339347647600276, i64 5601198583872550840, i64 448237196439497921, i64 4429298985553249414, i64 1710925370934130233, i64 649627535685727708, i64 7473286985276266860, i64 -6451688405355166991, i64 5916903098106068381, i64 4015692238528745986, i64 -8870599050489169071, i64 723755141375996997, i64 585701537146942606, i64 1762095187648923356, i64 -7499075263319252708, i64 -5534672106163518806, i64 2150778153372540978, i64 -6551385365357708843, i64 2851098796233701843, i64 8892087314106251931, i64 8629034505480888229, i64 -2056021433480337670, i64 -5504367576396503223, i64 -7836592892958478552, i64 -5799392812474758156, i64 1034405184557968969, i64 6802162732334632298, i64 2989737911373486958, i64 -8778167736429364826, i64 -1835460623793774935, i64 -7486017181440748174, i64 -429617951838635019, i64 3508842189232906005, i64 8135704789603646339, i64 6514020828226693353, i64 -3613195514473760017, i64 -2970174223312647786, i64 -1563248340095853661, i64 6024843996518658034, i64 718621336730405080, i64 -6679302967219244155, i64 3328034870986208117, i64 1672684744619306689, i64 -5162658619115609223, i64 -8970545856075756829, i64 -5111708603220227731, i64 8965210182149532773, i64 8555535473824159125, i64 4111651333356154152, i64 -4330767061174003086, i64 -4239562835870723191, i64 -2914198924640402128, i64 3999682325075695998, i64 8341500896009323972, i64 297956889220308695, i64 -7099292734868670191, i64 -8152361012580292778, i64 6806741856855634849, i64 5498675928299174173, i64 -5725270285902950948, i64 8841901128597221836, i64 8452800421686628345, i64 8170466794247151429, i64 3418145686321779422, i64 -7629649436654009993, i64 -885980405828750614, i64 -1279615140145250661, i64 -3645584372000451097, i64 -1959380958373714385, i64 -7401854505386743612, i64 2726709086420568843, i64 56600323866146812, i64 2432711764059673306, i64 6875692401370490017, i64 -2525618730407733492, i64 7150469517113480430, i64 -4524184818551573686, i64 6398633964089323354, i64 6824119869706748626, i64 7124491435314367896, i64 -5413128683141149161, i64 1648863654502257127, i64 -8159518228174467393, i64 7114119705011199411, i64 -3748695836744730090, i64 8708228644950752452, i64 -1200969192612019724, i64 -8253548825649809075, i64 -6218007400084108795, i64 4090442791415205777, i64 7208173716382451811, i64 -9156885958826744472, i64 4175721917217417792, i64 -1595983873127263617, i64 -7915925144243690988, i64 -4991676479780784319, i64 3502286560157455023, i64 -6532203062862126574, i64 4777171913562308143, i64 4711368926514029619, i64 -5148279762458990696, i64 -3276523506038921052, i64 -7330618301729952061, i64 8867750111338937128, i64 5817503254400830125, i64 7843308076737921667, i64 -8540058046490989581, i64 2422652698756804679, i64 4252262198383740502, i64 -2659446422212208921, i64 -8298729576016271950, i64 -382681700768530275, i64 4672201502568865753, i64 -5821590899938985698, i64 -1473505948212511144, i64 -4914601613263338112, i64 934305549654010667, i64 3120327478150945012], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_ldm_adjustParameters(ptr noundef captures(none) initializes((20, 24)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %4, align 4, !tbaa !10
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = icmp eq i32 %9, 0
  br i1 %7, label %11, label %21

11:                                               ; preds = %2
  br i1 %10, label %16, label %12

12:                                               ; preds = %11
  %13 = icmp ugt i32 %3, %9
  br i1 %13, label %14, label %30

14:                                               ; preds = %12
  %15 = sub nuw i32 %3, %9
  store i32 %15, ptr %5, align 4, !tbaa !12
  br label %30

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %18 = load i32, ptr %17, align 4, !tbaa !14
  %19 = udiv i32 %18, 3
  %20 = sub nsw i32 7, %19
  store i32 %20, ptr %5, align 4, !tbaa !12
  br label %22

21:                                               ; preds = %2
  br i1 %10, label %22, label %30

22:                                               ; preds = %21, %16
  %23 = phi i32 [ %20, %16 ], [ %6, %21 ]
  %24 = icmp ugt i32 %3, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 6, ptr %8, align 4, !tbaa !13
  br label %30

26:                                               ; preds = %22
  %27 = sub nuw i32 %3, %23
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 6)
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 30)
  store i32 %29, ptr %8, align 4, !tbaa !13
  br label %30

30:                                               ; preds = %26, %25, %21, %14, %12
  %31 = phi i32 [ 6, %25 ], [ %29, %26 ], [ %9, %21 ], [ %9, %14 ], [ %9, %12 ]
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %33 = load i32, ptr %32, align 4, !tbaa !15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %37 = load i32, ptr %36, align 4, !tbaa !14
  %38 = icmp ugt i32 %37, 7
  %39 = select i1 %38, i32 32, i32 64
  store i32 %39, ptr %32, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %42 = load i32, ptr %41, align 4, !tbaa !16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %46 = load i32, ptr %45, align 4, !tbaa !14
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 4)
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 8)
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i32 [ %48, %44 ], [ %42, %40 ]
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 %31)
  store i32 %51, ptr %41, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_ldm_getTableSize(ptr noundef readonly byval(%struct.ldmParams_t) align 8 captures(none) %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load i32, ptr %2, align 4, !tbaa !13
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !16
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %3)
  %8 = zext i32 %7 to i64
  %9 = sub nsw i64 %4, %8
  %10 = shl nuw i64 1, %9
  %11 = shl i64 8, %4
  %12 = add i64 %10, %11
  %13 = load i32, ptr %0, align 8, !tbaa !17
  %14 = icmp eq i32 %13, 1
  %15 = select i1 %14, i64 %12, i64 0
  ret i64 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef readonly byval(%struct.ldmParams_t) align 8 captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 8, !tbaa !17
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %7 = load i32, ptr %6, align 4, !tbaa !15
  %8 = zext i32 %7 to i64
  %9 = udiv i64 %1, %8
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i64 [ %9, %5 ], [ 0, %2 ]
  ret i64 %11
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define dso_local void @ZSTD_ldm_fillHashTable(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #2 {
  %5 = alloca %struct.ldmRollingHashState_t, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %8 = load i32, ptr %7, align 4, !tbaa !15
  %9 = freeze i32 %8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %11 = load i32, ptr %10, align 4, !tbaa !16
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %17 = getelementptr i8, ptr %3, i64 16
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %19 = tail call i32 @llvm.umin.i32(i32 %9, i32 64)
  store i64 4294967295, ptr %5, align 8, !tbaa !23
  %20 = add i32 %18, -1
  %21 = icmp ult i32 %20, %19
  %22 = zext nneg i32 %18 to i64
  %23 = shl nsw i64 -1, %22
  %24 = xor i64 %23, -1
  %25 = sub nuw nsw i32 %19, %18
  %26 = select i1 %21, i32 %25, i32 0
  %27 = zext nneg i32 %26 to i64
  %28 = shl i64 %24, %27
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %28, ptr %29, align 8, !tbaa !26
  %30 = icmp ult ptr %1, %2
  br i1 %30, label %31, label %.loopexit6

31:                                               ; preds = %4
  %32 = sub i32 %13, %11
  %33 = ptrtoint ptr %2 to i64
  %34 = zext i32 %9 to i64
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 %34
  %36 = sub nsw i64 0, %34
  %37 = shl nsw i32 -1, %32
  %38 = xor i32 %37, -1
  %39 = ptrtoint ptr %15 to i64
  %40 = getelementptr i8, ptr %0, i64 40
  %41 = getelementptr i8, ptr %0, i64 56
  br label %42

42:                                               ; preds = %.loopexit, %31
  %43 = phi ptr [ %1, %31 ], [ %87, %.loopexit ]
  store i32 0, ptr %6, align 4, !tbaa !27
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %33, %44
  %46 = call fastcc i64 @ZSTD_ldm_gear_feed(ptr noundef %5, ptr noundef %43, i64 noundef %45, ptr noundef nonnull %16, ptr noundef %6)
  %47 = load i32, ptr %6, align 4, !tbaa !27
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %.loopexit, label %49

49:                                               ; preds = %42
  %50 = zext i32 %47 to i64
  br label %51

51:                                               ; preds = %84, %49
  %52 = phi i64 [ 0, %49 ], [ %85, %84 ]
  %53 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !28
  %55 = getelementptr inbounds nuw i8, ptr %43, i64 %54
  %56 = icmp ult ptr %55, %35
  br i1 %56, label %84, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds i8, ptr %55, i64 %36
  %59 = tail call i64 @ZSTD_XXH64(ptr noundef captures(none) %58, i64 noundef %34, i64 noundef 0) #15
  %60 = trunc i64 %59 to i32
  %61 = and i32 %60, %38
  %62 = ptrtoint ptr %58 to i64
  %63 = sub i64 %62, %39
  %64 = and i64 %59, -4294967296
  %65 = zext nneg i32 %61 to i64
  %66 = load i32, ptr %10, align 4, !tbaa !16
  %67 = and i64 %63, 4294967295
  %68 = or disjoint i64 %64, %67
  %69 = load ptr, ptr %40, align 8, !tbaa !29
  %70 = load ptr, ptr %41, align 8, !tbaa !30
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 %65
  %72 = load i8, ptr %71, align 1, !tbaa !31
  %73 = zext i8 %72 to i32
  %74 = zext nneg i32 %66 to i64
  %75 = shl i64 %65, %74
  %76 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 %75
  %77 = zext i8 %72 to i64
  %78 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 %77
  store i64 %68, ptr %78, align 4
  %79 = add nuw nsw i32 %73, 1
  %80 = shl nsw i32 -1, %66
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = trunc i32 %82 to i8
  store i8 %83, ptr %71, align 1, !tbaa !31
  br label %84

84:                                               ; preds = %57, %51
  %85 = add nuw nsw i64 %52, 1
  %86 = icmp eq i64 %85, %50
  br i1 %86, label %.loopexit, label %51, !llvm.loop !32

.loopexit:                                        ; preds = %84, %42
  %87 = getelementptr inbounds nuw i8, ptr %43, i64 %46
  %88 = icmp ult ptr %87, %2
  br i1 %88, label %42, label %.loopexit6, !llvm.loop !34

.loopexit6:                                       ; preds = %.loopexit, %4
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @ZSTD_ldm_gear_feed(ptr noundef nonnull captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef writeonly captures(none) %3, ptr noundef nonnull captures(none) %4) unnamed_addr #3 {
  %6 = load i64, ptr %0, align 8, !tbaa !23
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !26
  %9 = icmp ugt i64 %2, 3
  br i1 %9, label %.preheader2, label %.loopexit5

.loopexit5:                                       ; preds = %82, %5
  %10 = phi i64 [ %6, %5 ], [ %72, %82 ]
  %11 = phi i64 [ 0, %5 ], [ %73, %82 ]
  %12 = icmp ult i64 %11, %2
  br i1 %12, label %.preheader, label %.loopexit

.preheader2:                                      ; preds = %5, %82
  %13 = phi i64 [ %73, %82 ], [ 0, %5 ]
  %14 = phi i64 [ %72, %82 ], [ %6, %5 ]
  %15 = shl i64 %14, 1
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 %13
  %17 = load i8, ptr %16, align 1, !tbaa !31
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !28
  %21 = add i64 %20, %15
  %22 = or disjoint i64 %13, 1
  %23 = and i64 %21, %8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %31, !prof !35

25:                                               ; preds = %.preheader2
  %26 = load i32, ptr %4, align 4, !tbaa !27
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %27
  store i64 %22, ptr %28, align 8, !tbaa !28
  %29 = add i32 %26, 1
  store i32 %29, ptr %4, align 4, !tbaa !27
  %30 = icmp eq i32 %29, 64
  br i1 %30, label %.loopexit, label %31

31:                                               ; preds = %25, %.preheader2
  %32 = shl i64 %21, 1
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 %22
  %34 = load i8, ptr %33, align 1, !tbaa !31
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !28
  %38 = add i64 %37, %32
  %39 = or disjoint i64 %13, 2
  %40 = and i64 %38, %8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48, !prof !35

42:                                               ; preds = %31
  %43 = load i32, ptr %4, align 4, !tbaa !27
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %44
  store i64 %39, ptr %45, align 8, !tbaa !28
  %46 = add i32 %43, 1
  store i32 %46, ptr %4, align 4, !tbaa !27
  %47 = icmp eq i32 %46, 64
  br i1 %47, label %.loopexit, label %48

48:                                               ; preds = %42, %31
  %49 = shl i64 %38, 1
  %50 = getelementptr inbounds nuw i8, ptr %1, i64 %39
  %51 = load i8, ptr %50, align 1, !tbaa !31
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !28
  %55 = add i64 %54, %49
  %56 = or disjoint i64 %13, 3
  %57 = and i64 %55, %8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65, !prof !35

59:                                               ; preds = %48
  %60 = load i32, ptr %4, align 4, !tbaa !27
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %61
  store i64 %56, ptr %62, align 8, !tbaa !28
  %63 = add i32 %60, 1
  store i32 %63, ptr %4, align 4, !tbaa !27
  %64 = icmp eq i32 %63, 64
  br i1 %64, label %.loopexit, label %65

65:                                               ; preds = %59, %48
  %66 = shl i64 %55, 1
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 %56
  %68 = load i8, ptr %67, align 1, !tbaa !31
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !28
  %72 = add i64 %71, %66
  %73 = add i64 %13, 4
  %74 = and i64 %72, %8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %82, !prof !35

76:                                               ; preds = %65
  %77 = load i32, ptr %4, align 4, !tbaa !27
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %78
  store i64 %73, ptr %79, align 8, !tbaa !28
  %80 = add i32 %77, 1
  store i32 %80, ptr %4, align 4, !tbaa !27
  %81 = icmp eq i32 %80, 64
  br i1 %81, label %.loopexit, label %82

82:                                               ; preds = %76, %65
  %83 = or disjoint i64 %73, 3
  %84 = icmp ult i64 %83, %2
  br i1 %84, label %.preheader2, label %.loopexit5, !llvm.loop !36

.preheader:                                       ; preds = %.loopexit5, %.preheader.backedge
  %85 = phi i64 [ %94, %.preheader.backedge ], [ %11, %.loopexit5 ]
  %86 = phi i64 [ %93, %.preheader.backedge ], [ %10, %.loopexit5 ]
  %87 = shl i64 %86, 1
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 %85
  %89 = load i8, ptr %88, align 1, !tbaa !31
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !28
  %93 = add i64 %92, %87
  %94 = add nuw i64 %85, 1
  %95 = and i64 %93, %8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %105, !prof !35

97:                                               ; preds = %.preheader
  %98 = load i32, ptr %4, align 4, !tbaa !27
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %99
  store i64 %94, ptr %100, align 8, !tbaa !28
  %101 = add i32 %98, 1
  store i32 %101, ptr %4, align 4, !tbaa !27
  %102 = icmp ne i32 %101, 64
  %103 = icmp ult i64 %94, %2
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %.preheader.backedge, label %.loopexit

105:                                              ; preds = %.preheader
  %106 = icmp ult i64 %94, %2
  br i1 %106, label %.preheader.backedge, label %.loopexit

.preheader.backedge:                              ; preds = %105, %97
  br label %.preheader, !llvm.loop !37

.loopexit:                                        ; preds = %76, %59, %42, %25, %105, %97, %.loopexit5
  %107 = phi i64 [ %10, %.loopexit5 ], [ %93, %105 ], [ %93, %97 ], [ %55, %59 ], [ %72, %76 ], [ %21, %25 ], [ %38, %42 ]
  %108 = phi i64 [ %11, %.loopexit5 ], [ %94, %105 ], [ %94, %97 ], [ %56, %59 ], [ %73, %76 ], [ %22, %25 ], [ %39, %42 ]
  store i64 %107, ptr %0, align 8, !tbaa !23
  ret i64 %108
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64(ptr noundef captures(none), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(readwrite, target_mem: read) uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_ldm_generateSequences(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #5 {
  %6 = alloca %struct.ldmRollingHashState_t, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %9 = load i32, ptr %8, align 4, !tbaa !10
  %10 = shl nuw i32 1, %9
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %12 = lshr i64 %4, 20
  %13 = and i64 %4, 1048575
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = add nuw nsw i64 %12, %15
  %17 = icmp eq i64 %4, 0
  br i1 %17, label %.loopexit106, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %22 = getelementptr i8, ptr %0, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = getelementptr i8, ptr %0, i64 28
  %26 = getelementptr i8, ptr %0, i64 24
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %28 = getelementptr i8, ptr %0, i64 40
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %33 = getelementptr i8, ptr %2, i64 16
  %34 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %35 = getelementptr i8, ptr %0, i64 56
  %36 = load i64, ptr %19, align 8, !tbaa !38
  br label %37

37:                                               ; preds = %654, %18
  %38 = phi i64 [ %36, %18 ], [ %643, %654 ]
  %39 = phi i64 [ 0, %18 ], [ %656, %654 ]
  %40 = phi i64 [ 0, %18 ], [ %655, %654 ]
  %41 = load i64, ptr %20, align 8, !tbaa !40
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %.loopexit106

43:                                               ; preds = %37
  %44 = shl nuw i64 %39, 20
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 %44
  %46 = ptrtoint ptr %45 to i64
  %47 = sub nsw i64 %4, %44
  %48 = icmp ult i64 %47, 1048576
  %49 = getelementptr inbounds nuw i8, ptr %45, i64 1048576
  %50 = select i1 %48, ptr %11, ptr %49
  %51 = ptrtoint ptr %50 to i64
  %52 = sub i64 %51, %46
  %53 = load ptr, ptr %22, align 8, !tbaa !41
  %54 = ptrtoint ptr %53 to i64
  %55 = sub i64 %51, %54
  %56 = trunc i64 %55 to i32
  %57 = icmp ult i32 %56, -624951295
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i32, ptr %21, align 4, !tbaa !27
  %.pre = load i32, ptr %25, align 4, !tbaa !42
  br label %108

60:                                               ; preds = %43
  %61 = load i32, ptr %23, align 4, !tbaa !13
  %62 = shl nuw i32 1, %61
  %63 = sub i64 %46, %54
  %64 = trunc i64 %63 to i32
  %65 = sub i32 %64, %10
  %66 = add i32 %65, -2
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds nuw i8, ptr %53, i64 %67
  store ptr %68, ptr %22, align 8, !tbaa !41
  %69 = load ptr, ptr %24, align 8, !tbaa !43
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 %67
  store ptr %70, ptr %24, align 8, !tbaa !43
  %71 = load i32, ptr %25, align 4, !tbaa !42
  %72 = icmp ult i32 %71, %65
  %73 = sub i32 %71, %66
  %74 = select i1 %72, i32 2, i32 %73
  store i32 %74, ptr %25, align 4, !tbaa !42
  %75 = load i32, ptr %26, align 8, !tbaa !44
  %76 = icmp ult i32 %75, %65
  %77 = sub i32 %75, %66
  %78 = select i1 %76, i32 2, i32 %77
  store i32 %78, ptr %26, align 8, !tbaa !44
  %79 = load i32, ptr %27, align 8, !tbaa !45
  %80 = add i32 %79, 1
  store i32 %80, ptr %27, align 8, !tbaa !45
  %81 = load ptr, ptr %28, align 8, !tbaa !29
  %82 = zext i32 %62 to i64
  %83 = and i64 %82, 1
  %84 = icmp eq i32 %61, 0
  br i1 %84, label %.loopexit105, label %85

85:                                               ; preds = %60
  %86 = and i64 %82, 4294967294
  %87 = getelementptr inbounds nuw i8, ptr %81, i64 8
  br label %88

88:                                               ; preds = %88, %85
  %89 = phi i64 [ 0, %85 ], [ %96, %88 ]
  %90 = getelementptr inbounds nuw [8 x i8], ptr %81, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !46
  %92 = tail call i32 @llvm.usub.sat.i32(i32 %91, i32 %66)
  store i32 %92, ptr %90, align 4, !tbaa !46
  %93 = getelementptr inbounds nuw [8 x i8], ptr %87, i64 %89
  %94 = load i32, ptr %93, align 4, !tbaa !46
  %95 = tail call i32 @llvm.usub.sat.i32(i32 %94, i32 %66)
  store i32 %95, ptr %93, align 4, !tbaa !46
  %96 = add nuw i64 %89, 2
  %97 = icmp eq i64 %96, %86
  br i1 %97, label %.loopexit105, label %88, !llvm.loop !48

.loopexit105:                                     ; preds = %88, %60
  %98 = phi i64 [ 0, %60 ], [ %86, %88 ]
  %99 = icmp eq i64 %83, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %.loopexit105
  %101 = getelementptr inbounds nuw [8 x i8], ptr %81, i64 %98
  %102 = load i32, ptr %101, align 4, !tbaa !46
  %103 = tail call i32 @llvm.usub.sat.i32(i32 %102, i32 %66)
  store i32 %103, ptr %101, align 4, !tbaa !46
  br label %104

104:                                              ; preds = %100, %.loopexit105
  store i32 0, ptr %21, align 8, !tbaa !49
  %105 = ptrtoint ptr %68 to i64
  %106 = sub i64 %51, %105
  %107 = trunc i64 %106 to i32
  br label %108

108:                                              ; preds = %104, %58
  %109 = phi i32 [ %.pre, %58 ], [ %74, %104 ]
  %110 = phi i32 [ %56, %58 ], [ %107, %104 ]
  %111 = phi i64 [ %54, %58 ], [ %105, %104 ]
  %112 = phi i32 [ %59, %58 ], [ 0, %104 ]
  %113 = phi ptr [ %53, %58 ], [ %68, %104 ]
  %114 = add i32 %112, %10
  %115 = icmp ult i32 %114, %110
  br i1 %115, label %118, label %116

116:                                              ; preds = %108
  %117 = load i32, ptr %26, align 8, !tbaa !44
  br label %129

118:                                              ; preds = %108
  %119 = sub i32 %110, %10
  %120 = icmp ult i32 %109, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 %119, ptr %25, align 4, !tbaa !42
  br label %122

122:                                              ; preds = %121, %118
  %123 = phi i32 [ %119, %121 ], [ %109, %118 ]
  %124 = load i32, ptr %26, align 8, !tbaa !44
  %125 = icmp ult i32 %124, %123
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 %123, ptr %26, align 8, !tbaa !44
  br label %127

127:                                              ; preds = %126, %122
  %128 = phi i32 [ %123, %126 ], [ %124, %122 ]
  store i32 0, ptr %21, align 4, !tbaa !27
  br label %129

129:                                              ; preds = %127, %116
  %130 = phi i32 [ %109, %116 ], [ %123, %127 ]
  %131 = phi i32 [ %117, %116 ], [ %128, %127 ]
  %132 = icmp ult i32 %130, %131
  %133 = load i32, ptr %29, align 4, !tbaa !15
  %134 = freeze i32 %133
  %135 = load i32, ptr %30, align 4, !tbaa !16
  %136 = shl nuw i32 1, %135
  %137 = load i32, ptr %23, align 4, !tbaa !13
  %138 = sub i32 %137, %135
  br i1 %132, label %139, label %141

139:                                              ; preds = %129
  %140 = load ptr, ptr %24, align 8, !tbaa !50
  br label %141

141:                                              ; preds = %139, %129
  %142 = phi i32 [ %130, %139 ], [ %131, %129 ]
  %143 = phi ptr [ %140, %139 ], [ null, %129 ]
  %144 = zext i32 %142 to i64
  %145 = getelementptr inbounds nuw i8, ptr %143, i64 %144
  %146 = select i1 %132, ptr %145, ptr null
  %147 = zext i32 %131 to i64
  %148 = getelementptr inbounds nuw i8, ptr %143, i64 %147
  %149 = select i1 %132, ptr %148, ptr null
  %150 = getelementptr inbounds nuw i8, ptr %113, i64 %147
  %151 = getelementptr inbounds nuw i8, ptr %45, i64 %52
  %152 = getelementptr inbounds i8, ptr %151, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %153 = zext i32 %134 to i64
  %154 = icmp ult i64 %52, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %141
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %642

156:                                              ; preds = %141
  %157 = load i32, ptr %33, align 4, !tbaa !12
  %158 = tail call i32 @llvm.umin.i32(i32 %134, i32 64)
  store i64 4294967295, ptr %6, align 8, !tbaa !23
  %159 = add i32 %157, -1
  %160 = icmp ult i32 %159, %158
  %161 = zext nneg i32 %157 to i64
  %162 = shl nsw i64 -1, %161
  %163 = xor i64 %162, -1
  %164 = sub nuw nsw i32 %158, %157
  %165 = select i1 %160, i32 %164, i32 0
  %166 = zext nneg i32 %165 to i64
  %167 = shl i64 %163, %166
  store i64 %167, ptr %34, align 8, !tbaa !26
  %168 = add nsw i64 %52, -8
  %169 = icmp sgt i64 %168, %153
  br i1 %169, label %170, label %637

170:                                              ; preds = %156
  %171 = getelementptr inbounds nuw i8, ptr %45, i64 %153
  %172 = ptrtoint ptr %152 to i64
  %173 = sub nsw i64 0, %153
  %174 = shl nsw i32 -1, %138
  %175 = xor i32 %174, -1
  %176 = zext i32 %136 to i64
  %177 = getelementptr inbounds i8, ptr %151, i64 -7
  %178 = getelementptr inbounds i8, ptr %151, i64 -3
  %179 = getelementptr inbounds i8, ptr %151, i64 -1
  %180 = icmp ugt ptr %149, %146
  %181 = shl nuw nsw i64 %176, 3
  br label %182

182:                                              ; preds = %.loopexit104, %170
  %183 = phi ptr [ %45, %170 ], [ %631, %.loopexit104 ]
  %184 = phi ptr [ %171, %170 ], [ %632, %.loopexit104 ]
  store i32 0, ptr %7, align 4, !tbaa !27
  %185 = ptrtoint ptr %184 to i64
  %186 = sub i64 %172, %185
  %187 = call fastcc i64 @ZSTD_ldm_gear_feed(ptr noundef %6, ptr noundef %184, i64 noundef %186, ptr noundef nonnull %31, ptr noundef %7)
  %188 = load i32, ptr %7, align 4, !tbaa !27
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %.loopexit104, label %190

190:                                              ; preds = %182
  %191 = getelementptr i8, ptr %184, i64 %173
  %192 = load i32, ptr %30, align 4, !tbaa !16
  %193 = load ptr, ptr %28, align 8, !tbaa !29
  %194 = zext nneg i32 %192 to i64
  %195 = zext i32 %188 to i64
  br label %198

196:                                              ; preds = %198
  %197 = getelementptr inbounds nuw i8, ptr %184, i64 %187
  br label %217

198:                                              ; preds = %198, %190
  %199 = phi i64 [ 0, %190 ], [ %215, %198 ]
  %200 = getelementptr inbounds nuw [8 x i8], ptr %31, i64 %199
  %201 = load i64, ptr %200, align 8, !tbaa !28
  %202 = getelementptr i8, ptr %191, i64 %201
  %203 = tail call i64 @ZSTD_XXH64(ptr noundef captures(none) %202, i64 noundef %153, i64 noundef 0) #15
  %204 = trunc i64 %203 to i32
  %205 = and i32 %204, %175
  %206 = getelementptr inbounds nuw [24 x i8], ptr %32, i64 %199
  store ptr %202, ptr %206, align 8, !tbaa !51
  %207 = getelementptr inbounds nuw i8, ptr %206, i64 8
  store i32 %205, ptr %207, align 8, !tbaa !53
  %208 = lshr i64 %203, 32
  %209 = trunc nuw i64 %208 to i32
  %210 = getelementptr inbounds nuw i8, ptr %206, i64 12
  store i32 %209, ptr %210, align 4, !tbaa !54
  %211 = zext nneg i32 %205 to i64
  %212 = shl i64 %211, %194
  %213 = getelementptr inbounds nuw [8 x i8], ptr %193, i64 %212
  %214 = getelementptr inbounds nuw i8, ptr %206, i64 16
  store ptr %213, ptr %214, align 8, !tbaa !55
  tail call void @llvm.prefetch.p0(ptr %213, i32 0, i32 3, i32 1)
  %215 = add nuw nsw i64 %199, 1
  %216 = icmp eq i64 %215, %195
  br i1 %216, label %196, label %198, !llvm.loop !56

217:                                              ; preds = %626, %196
  %218 = phi i64 [ 0, %196 ], [ %628, %626 ]
  %219 = phi ptr [ %183, %196 ], [ %627, %626 ]
  %220 = getelementptr inbounds nuw [24 x i8], ptr %32, i64 %218
  %221 = load ptr, ptr %220, align 8, !tbaa !51
  %222 = getelementptr inbounds nuw i8, ptr %220, i64 12
  %223 = load i32, ptr %222, align 4, !tbaa !54
  %224 = getelementptr inbounds nuw i8, ptr %220, i64 8
  %225 = load i32, ptr %224, align 8, !tbaa !53
  %226 = ptrtoint ptr %221 to i64
  %227 = sub i64 %226, %111
  %228 = trunc i64 %227 to i32
  %229 = icmp ult ptr %221, %219
  br i1 %229, label %604, label %230

230:                                              ; preds = %217
  %231 = getelementptr inbounds nuw i8, ptr %220, i64 16
  %232 = load ptr, ptr %231, align 8, !tbaa !55
  %233 = getelementptr inbounds nuw i8, ptr %232, i64 %181
  %234 = icmp ult ptr %221, %177
  %235 = icmp ugt ptr %221, %219
  br i1 %132, label %.preheader100, label %.preheader102

.preheader100:                                    ; preds = %230, %443
  %236 = phi i64 [ %447, %443 ], [ 0, %230 ]
  %237 = phi i64 [ %446, %443 ], [ 0, %230 ]
  %238 = phi i64 [ %445, %443 ], [ 0, %230 ]
  %239 = phi ptr [ %448, %443 ], [ %232, %230 ]
  %240 = phi ptr [ %444, %443 ], [ null, %230 ]
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 4
  %242 = load i32, ptr %241, align 4, !tbaa !57
  %243 = icmp eq i32 %242, %223
  br i1 %243, label %244, label %443

244:                                              ; preds = %.preheader100
  %245 = load i32, ptr %239, align 4, !tbaa !46
  %246 = icmp ugt i32 %245, %142
  br i1 %246, label %247, label %443

247:                                              ; preds = %244
  %248 = icmp ult i32 %245, %131
  %249 = select i1 %248, ptr %143, ptr %113
  %250 = zext i32 %245 to i64
  %251 = getelementptr inbounds nuw i8, ptr %249, i64 %250
  %252 = select i1 %248, ptr %148, ptr %151
  %253 = ptrtoint ptr %252 to i64
  %254 = ptrtoint ptr %251 to i64
  %255 = sub i64 %253, %254
  %256 = getelementptr inbounds i8, ptr %221, i64 %255
  %257 = icmp ult ptr %256, %50
  %258 = select i1 %257, ptr %256, ptr %151
  %259 = getelementptr inbounds i8, ptr %258, i64 -7
  %260 = icmp ult ptr %221, %259
  br i1 %260, label %261, label %.loopexit94

261:                                              ; preds = %247
  %262 = load i64, ptr %251, align 1, !tbaa !28
  %263 = load i64, ptr %221, align 1, !tbaa !28
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %.preheader93, label %265

265:                                              ; preds = %261
  %266 = xor i64 %263, %262
  %267 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %266, i1 true)
  %268 = lshr i64 %267, 3
  br label %322

.preheader93:                                     ; preds = %261, %311
  %269 = phi ptr [ %272, %311 ], [ %251, %261 ]
  %270 = phi ptr [ %271, %311 ], [ %221, %261 ]
  %271 = getelementptr inbounds nuw i8, ptr %270, i64 8
  %272 = getelementptr inbounds nuw i8, ptr %269, i64 8
  %273 = icmp ult ptr %271, %259
  br i1 %273, label %311, label %.loopexit94

.loopexit94:                                      ; preds = %.preheader93, %247
  %274 = phi ptr [ %251, %247 ], [ %272, %.preheader93 ]
  %275 = phi ptr [ %221, %247 ], [ %271, %.preheader93 ]
  %276 = getelementptr inbounds i8, ptr %258, i64 -3
  %277 = icmp ult ptr %275, %276
  br i1 %277, label %278, label %285

278:                                              ; preds = %.loopexit94
  %279 = load i32, ptr %274, align 1, !tbaa !27
  %280 = load i32, ptr %275, align 1, !tbaa !27
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  %283 = getelementptr inbounds nuw i8, ptr %275, i64 4
  %284 = getelementptr inbounds nuw i8, ptr %274, i64 4
  br label %285

285:                                              ; preds = %282, %278, %.loopexit94
  %286 = phi ptr [ %284, %282 ], [ %274, %278 ], [ %274, %.loopexit94 ]
  %287 = phi ptr [ %283, %282 ], [ %275, %278 ], [ %275, %.loopexit94 ]
  %288 = getelementptr inbounds i8, ptr %258, i64 -1
  %289 = icmp ult ptr %287, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %285
  %291 = load i16, ptr %286, align 1, !tbaa !58
  %292 = load i16, ptr %287, align 1, !tbaa !58
  %293 = icmp eq i16 %291, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %290
  %295 = getelementptr inbounds nuw i8, ptr %287, i64 2
  %296 = getelementptr inbounds nuw i8, ptr %286, i64 2
  br label %297

297:                                              ; preds = %294, %290, %285
  %298 = phi ptr [ %296, %294 ], [ %286, %290 ], [ %286, %285 ]
  %299 = phi ptr [ %295, %294 ], [ %287, %290 ], [ %287, %285 ]
  %300 = icmp ult ptr %299, %258
  br i1 %300, label %301, label %307

301:                                              ; preds = %297
  %302 = load i8, ptr %298, align 1, !tbaa !31
  %303 = load i8, ptr %299, align 1, !tbaa !31
  %304 = icmp eq i8 %302, %303
  %305 = zext i1 %304 to i64
  %306 = getelementptr inbounds nuw i8, ptr %299, i64 %305
  br label %307

307:                                              ; preds = %301, %297
  %308 = phi ptr [ %299, %297 ], [ %306, %301 ]
  %309 = ptrtoint ptr %308 to i64
  %310 = sub i64 %309, %226
  br label %322

311:                                              ; preds = %.preheader93
  %312 = load i64, ptr %272, align 1, !tbaa !28
  %313 = load i64, ptr %271, align 1, !tbaa !28
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %.preheader93, label %315

315:                                              ; preds = %311
  %316 = xor i64 %313, %312
  %317 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %316, i1 true)
  %318 = lshr i64 %317, 3
  %319 = getelementptr inbounds nuw i8, ptr %271, i64 %318
  %320 = ptrtoint ptr %319 to i64
  %321 = sub i64 %320, %226
  br label %322

322:                                              ; preds = %315, %307, %265
  %323 = phi i64 [ %310, %307 ], [ %268, %265 ], [ %321, %315 ]
  %324 = getelementptr inbounds nuw i8, ptr %251, i64 %323
  %325 = icmp eq ptr %324, %252
  br i1 %325, label %326, label %393

326:                                              ; preds = %322
  %327 = getelementptr inbounds nuw i8, ptr %221, i64 %323
  %328 = icmp ult ptr %327, %177
  br i1 %328, label %329, label %.loopexit92

329:                                              ; preds = %326
  %330 = load i64, ptr %150, align 1, !tbaa !28
  %331 = load i64, ptr %327, align 1, !tbaa !28
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %.preheader91, label %333

333:                                              ; preds = %329
  %334 = xor i64 %331, %330
  %335 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %334, i1 true)
  %336 = lshr i64 %335, 3
  br label %390

.preheader91:                                     ; preds = %329, %378
  %337 = phi ptr [ %340, %378 ], [ %150, %329 ]
  %338 = phi ptr [ %339, %378 ], [ %327, %329 ]
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 8
  %340 = getelementptr inbounds nuw i8, ptr %337, i64 8
  %341 = icmp ult ptr %339, %177
  br i1 %341, label %378, label %.loopexit92

.loopexit92:                                      ; preds = %.preheader91, %326
  %342 = phi ptr [ %150, %326 ], [ %340, %.preheader91 ]
  %343 = phi ptr [ %327, %326 ], [ %339, %.preheader91 ]
  %344 = icmp ult ptr %343, %178
  br i1 %344, label %345, label %352

345:                                              ; preds = %.loopexit92
  %346 = load i32, ptr %342, align 1, !tbaa !27
  %347 = load i32, ptr %343, align 1, !tbaa !27
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %352

349:                                              ; preds = %345
  %350 = getelementptr inbounds nuw i8, ptr %343, i64 4
  %351 = getelementptr inbounds nuw i8, ptr %342, i64 4
  br label %352

352:                                              ; preds = %349, %345, %.loopexit92
  %353 = phi ptr [ %351, %349 ], [ %342, %345 ], [ %342, %.loopexit92 ]
  %354 = phi ptr [ %350, %349 ], [ %343, %345 ], [ %343, %.loopexit92 ]
  %355 = icmp ult ptr %354, %179
  br i1 %355, label %356, label %363

356:                                              ; preds = %352
  %357 = load i16, ptr %353, align 1, !tbaa !58
  %358 = load i16, ptr %354, align 1, !tbaa !58
  %359 = icmp eq i16 %357, %358
  br i1 %359, label %360, label %363

360:                                              ; preds = %356
  %361 = getelementptr inbounds nuw i8, ptr %354, i64 2
  %362 = getelementptr inbounds nuw i8, ptr %353, i64 2
  br label %363

363:                                              ; preds = %360, %356, %352
  %364 = phi ptr [ %362, %360 ], [ %353, %356 ], [ %353, %352 ]
  %365 = phi ptr [ %361, %360 ], [ %354, %356 ], [ %354, %352 ]
  %366 = icmp ult ptr %365, %50
  br i1 %366, label %367, label %373

367:                                              ; preds = %363
  %368 = load i8, ptr %364, align 1, !tbaa !31
  %369 = load i8, ptr %365, align 1, !tbaa !31
  %370 = icmp eq i8 %368, %369
  %371 = zext i1 %370 to i64
  %372 = getelementptr inbounds nuw i8, ptr %365, i64 %371
  br label %373

373:                                              ; preds = %367, %363
  %374 = phi ptr [ %365, %363 ], [ %372, %367 ]
  %375 = ptrtoint ptr %374 to i64
  %376 = ptrtoint ptr %327 to i64
  %377 = sub i64 %375, %376
  br label %390

378:                                              ; preds = %.preheader91
  %379 = load i64, ptr %340, align 1, !tbaa !28
  %380 = load i64, ptr %339, align 1, !tbaa !28
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %.preheader91, label %382

382:                                              ; preds = %378
  %383 = xor i64 %380, %379
  %384 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %383, i1 true)
  %385 = lshr i64 %384, 3
  %386 = getelementptr inbounds nuw i8, ptr %339, i64 %385
  %387 = ptrtoint ptr %386 to i64
  %388 = ptrtoint ptr %327 to i64
  %389 = sub i64 %387, %388
  br label %390

390:                                              ; preds = %382, %373, %333
  %391 = phi i64 [ %377, %373 ], [ %336, %333 ], [ %389, %382 ]
  %392 = add i64 %391, %323
  br label %393

393:                                              ; preds = %390, %322
  %394 = phi i64 [ %392, %390 ], [ %323, %322 ]
  %395 = icmp ult i64 %394, %153
  br i1 %395, label %443, label %396

396:                                              ; preds = %393
  %397 = select i1 %248, ptr %146, ptr %150
  %398 = icmp ugt ptr %251, %397
  %399 = and i1 %235, %398
  br i1 %399, label %.preheader88, label %.loopexit89

.preheader88:                                     ; preds = %396, %408
  %400 = phi i64 [ %409, %408 ], [ 0, %396 ]
  %401 = phi ptr [ %403, %408 ], [ %221, %396 ]
  %402 = phi ptr [ %405, %408 ], [ %251, %396 ]
  %403 = getelementptr inbounds i8, ptr %401, i64 -1
  %404 = load i8, ptr %403, align 1, !tbaa !31
  %405 = getelementptr inbounds i8, ptr %402, i64 -1
  %406 = load i8, ptr %405, align 1, !tbaa !31
  %407 = icmp eq i8 %404, %406
  br i1 %407, label %408, label %.loopexit89

408:                                              ; preds = %.preheader88
  %409 = add i64 %400, 1
  %410 = icmp ugt ptr %403, %219
  %411 = icmp ugt ptr %405, %397
  %412 = and i1 %410, %411
  br i1 %412, label %.preheader88, label %.loopexit89, !llvm.loop !60

.loopexit89:                                      ; preds = %408, %.preheader88, %396
  %413 = phi i64 [ 0, %396 ], [ %409, %408 ], [ %400, %.preheader88 ]
  %414 = sub i64 0, %413
  %415 = getelementptr inbounds i8, ptr %251, i64 %414
  %416 = icmp ne ptr %415, %397
  %417 = icmp eq ptr %397, %146
  %418 = or i1 %417, %416
  br i1 %418, label %438, label %419

419:                                              ; preds = %.loopexit89
  %420 = getelementptr inbounds i8, ptr %221, i64 %414
  %421 = icmp ugt ptr %420, %219
  %422 = and i1 %180, %421
  br i1 %422, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %419, %431
  %423 = phi i64 [ %432, %431 ], [ 0, %419 ]
  %424 = phi ptr [ %426, %431 ], [ %420, %419 ]
  %425 = phi ptr [ %428, %431 ], [ %149, %419 ]
  %426 = getelementptr inbounds i8, ptr %424, i64 -1
  %427 = load i8, ptr %426, align 1, !tbaa !31
  %428 = getelementptr inbounds i8, ptr %425, i64 -1
  %429 = load i8, ptr %428, align 1, !tbaa !31
  %430 = icmp eq i8 %427, %429
  br i1 %430, label %431, label %.loopexit

431:                                              ; preds = %.preheader
  %432 = add i64 %423, 1
  %433 = icmp ugt ptr %426, %219
  %434 = icmp ugt ptr %428, %146
  %435 = and i1 %433, %434
  br i1 %435, label %.preheader, label %.loopexit, !llvm.loop !60

.loopexit:                                        ; preds = %431, %.preheader, %419
  %436 = phi i64 [ 0, %419 ], [ %432, %431 ], [ %423, %.preheader ]
  %437 = add i64 %436, %413
  br label %438

438:                                              ; preds = %.loopexit, %.loopexit89
  %439 = phi i64 [ %437, %.loopexit ], [ %413, %.loopexit89 ]
  %440 = add i64 %439, %394
  %441 = icmp ugt i64 %440, %238
  br i1 %441, label %442, label %443

442:                                              ; preds = %438
  br label %443

443:                                              ; preds = %442, %438, %393, %244, %.preheader100
  %444 = phi ptr [ %240, %244 ], [ %240, %.preheader100 ], [ %239, %442 ], [ %240, %438 ], [ %240, %393 ]
  %445 = phi i64 [ %238, %244 ], [ %238, %.preheader100 ], [ %440, %442 ], [ %238, %438 ], [ %238, %393 ]
  %446 = phi i64 [ %237, %244 ], [ %237, %.preheader100 ], [ %439, %442 ], [ %237, %438 ], [ %237, %393 ]
  %447 = phi i64 [ %236, %244 ], [ %236, %.preheader100 ], [ %394, %442 ], [ %236, %438 ], [ %236, %393 ]
  %448 = getelementptr inbounds nuw i8, ptr %239, i64 8
  %449 = icmp ult ptr %448, %233
  br i1 %449, label %.preheader100, label %.loopexit101, !llvm.loop !61

.preheader102:                                    ; preds = %230, %546
  %450 = phi i64 [ %550, %546 ], [ 0, %230 ]
  %451 = phi i64 [ %549, %546 ], [ 0, %230 ]
  %452 = phi i64 [ %548, %546 ], [ 0, %230 ]
  %453 = phi ptr [ %551, %546 ], [ %232, %230 ]
  %454 = phi ptr [ %547, %546 ], [ null, %230 ]
  %455 = getelementptr inbounds nuw i8, ptr %453, i64 4
  %456 = load i32, ptr %455, align 4, !tbaa !57
  %457 = icmp eq i32 %456, %223
  br i1 %457, label %458, label %546

458:                                              ; preds = %.preheader102
  %459 = load i32, ptr %453, align 4, !tbaa !46
  %460 = icmp ugt i32 %459, %142
  br i1 %460, label %461, label %546

461:                                              ; preds = %458
  %462 = zext i32 %459 to i64
  %463 = getelementptr inbounds nuw i8, ptr %113, i64 %462
  br i1 %234, label %464, label %.loopexit99

464:                                              ; preds = %461
  %465 = load i64, ptr %463, align 1, !tbaa !28
  %466 = load i64, ptr %221, align 1, !tbaa !28
  %467 = icmp eq i64 %465, %466
  br i1 %467, label %.preheader98, label %468

468:                                              ; preds = %464
  %469 = xor i64 %466, %465
  %470 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %469, i1 true)
  %471 = lshr i64 %470, 3
  br label %523

.preheader98:                                     ; preds = %464, %477
  %472 = phi ptr [ %475, %477 ], [ %463, %464 ]
  %473 = phi ptr [ %474, %477 ], [ %221, %464 ]
  %474 = getelementptr inbounds nuw i8, ptr %473, i64 8
  %475 = getelementptr inbounds nuw i8, ptr %472, i64 8
  %476 = icmp ult ptr %474, %177
  br i1 %476, label %477, label %.loopexit99

477:                                              ; preds = %.preheader98
  %478 = load i64, ptr %475, align 1, !tbaa !28
  %479 = load i64, ptr %474, align 1, !tbaa !28
  %480 = icmp eq i64 %478, %479
  br i1 %480, label %.preheader98, label %481

481:                                              ; preds = %477
  %482 = xor i64 %479, %478
  %483 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %482, i1 true)
  %484 = lshr i64 %483, 3
  %485 = getelementptr inbounds nuw i8, ptr %474, i64 %484
  %486 = ptrtoint ptr %485 to i64
  %487 = sub i64 %486, %226
  br label %523

.loopexit99:                                      ; preds = %.preheader98, %461
  %488 = phi ptr [ %463, %461 ], [ %475, %.preheader98 ]
  %489 = phi ptr [ %221, %461 ], [ %474, %.preheader98 ]
  %490 = icmp ult ptr %489, %178
  br i1 %490, label %491, label %498

491:                                              ; preds = %.loopexit99
  %492 = load i32, ptr %488, align 1, !tbaa !27
  %493 = load i32, ptr %489, align 1, !tbaa !27
  %494 = icmp eq i32 %492, %493
  br i1 %494, label %495, label %498

495:                                              ; preds = %491
  %496 = getelementptr inbounds nuw i8, ptr %489, i64 4
  %497 = getelementptr inbounds nuw i8, ptr %488, i64 4
  br label %498

498:                                              ; preds = %495, %491, %.loopexit99
  %499 = phi ptr [ %497, %495 ], [ %488, %491 ], [ %488, %.loopexit99 ]
  %500 = phi ptr [ %496, %495 ], [ %489, %491 ], [ %489, %.loopexit99 ]
  %501 = icmp ult ptr %500, %179
  br i1 %501, label %502, label %509

502:                                              ; preds = %498
  %503 = load i16, ptr %499, align 1, !tbaa !58
  %504 = load i16, ptr %500, align 1, !tbaa !58
  %505 = icmp eq i16 %503, %504
  br i1 %505, label %506, label %509

506:                                              ; preds = %502
  %507 = getelementptr inbounds nuw i8, ptr %500, i64 2
  %508 = getelementptr inbounds nuw i8, ptr %499, i64 2
  br label %509

509:                                              ; preds = %506, %502, %498
  %510 = phi ptr [ %508, %506 ], [ %499, %502 ], [ %499, %498 ]
  %511 = phi ptr [ %507, %506 ], [ %500, %502 ], [ %500, %498 ]
  %512 = icmp ult ptr %511, %50
  br i1 %512, label %513, label %519

513:                                              ; preds = %509
  %514 = load i8, ptr %510, align 1, !tbaa !31
  %515 = load i8, ptr %511, align 1, !tbaa !31
  %516 = icmp eq i8 %514, %515
  %517 = zext i1 %516 to i64
  %518 = getelementptr inbounds nuw i8, ptr %511, i64 %517
  br label %519

519:                                              ; preds = %513, %509
  %520 = phi ptr [ %511, %509 ], [ %518, %513 ]
  %521 = ptrtoint ptr %520 to i64
  %522 = sub i64 %521, %226
  br label %523

523:                                              ; preds = %519, %481, %468
  %524 = phi i64 [ %522, %519 ], [ %471, %468 ], [ %487, %481 ]
  %525 = icmp ult i64 %524, %153
  br i1 %525, label %546, label %526

526:                                              ; preds = %523
  %527 = icmp ugt i32 %459, %131
  %528 = and i1 %235, %527
  br i1 %528, label %.preheader95, label %.loopexit96

.preheader95:                                     ; preds = %526, %537
  %529 = phi i64 [ %538, %537 ], [ 0, %526 ]
  %530 = phi ptr [ %532, %537 ], [ %221, %526 ]
  %531 = phi ptr [ %534, %537 ], [ %463, %526 ]
  %532 = getelementptr inbounds i8, ptr %530, i64 -1
  %533 = load i8, ptr %532, align 1, !tbaa !31
  %534 = getelementptr inbounds i8, ptr %531, i64 -1
  %535 = load i8, ptr %534, align 1, !tbaa !31
  %536 = icmp eq i8 %533, %535
  br i1 %536, label %537, label %.loopexit96

537:                                              ; preds = %.preheader95
  %538 = add i64 %529, 1
  %539 = icmp ugt ptr %532, %219
  %540 = icmp ugt ptr %534, %150
  %541 = and i1 %539, %540
  br i1 %541, label %.preheader95, label %.loopexit96, !llvm.loop !60

.loopexit96:                                      ; preds = %537, %.preheader95, %526
  %542 = phi i64 [ 0, %526 ], [ %529, %.preheader95 ], [ %538, %537 ]
  %543 = add i64 %542, %524
  %544 = icmp ugt i64 %543, %452
  br i1 %544, label %545, label %546

545:                                              ; preds = %.loopexit96
  br label %546

546:                                              ; preds = %545, %.loopexit96, %523, %458, %.preheader102
  %547 = phi ptr [ %454, %458 ], [ %454, %.preheader102 ], [ %453, %545 ], [ %454, %.loopexit96 ], [ %454, %523 ]
  %548 = phi i64 [ %452, %458 ], [ %452, %.preheader102 ], [ %543, %545 ], [ %452, %.loopexit96 ], [ %452, %523 ]
  %549 = phi i64 [ %451, %458 ], [ %451, %.preheader102 ], [ %542, %545 ], [ %451, %.loopexit96 ], [ %451, %523 ]
  %550 = phi i64 [ %450, %458 ], [ %450, %.preheader102 ], [ %524, %545 ], [ %450, %.loopexit96 ], [ %450, %523 ]
  %551 = getelementptr inbounds nuw i8, ptr %453, i64 8
  %552 = icmp ult ptr %551, %233
  br i1 %552, label %.preheader102, label %.loopexit101, !llvm.loop !61

.loopexit101:                                     ; preds = %546, %443
  %553 = phi ptr [ %444, %443 ], [ %547, %546 ]
  %554 = phi i64 [ %446, %443 ], [ %549, %546 ]
  %555 = phi i64 [ %447, %443 ], [ %550, %546 ]
  %556 = icmp eq ptr %553, null
  br i1 %556, label %604, label %557

557:                                              ; preds = %.loopexit101
  %558 = load i64, ptr %19, align 8, !tbaa !38
  %559 = load i64, ptr %20, align 8, !tbaa !40
  %560 = icmp eq i64 %558, %559
  br i1 %560, label %561, label %562

561:                                              ; preds = %557
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit106

562:                                              ; preds = %557
  %563 = load ptr, ptr %1, align 8, !tbaa !62
  %564 = getelementptr inbounds nuw [12 x i8], ptr %563, i64 %558
  %565 = add i64 %555, %554
  %566 = load i32, ptr %553, align 4, !tbaa !46
  %567 = sub i32 %228, %566
  %568 = sub i64 0, %554
  %569 = getelementptr inbounds i8, ptr %221, i64 %568
  %570 = ptrtoint ptr %569 to i64
  %571 = ptrtoint ptr %219 to i64
  %572 = sub i64 %570, %571
  %573 = trunc i64 %572 to i32
  %574 = getelementptr inbounds nuw i8, ptr %564, i64 4
  store i32 %573, ptr %574, align 4, !tbaa !63
  %575 = trunc i64 %565 to i32
  %576 = getelementptr inbounds nuw i8, ptr %564, i64 8
  store i32 %575, ptr %576, align 4, !tbaa !65
  store i32 %567, ptr %564, align 4, !tbaa !66
  %577 = add i64 %558, 1
  store i64 %577, ptr %19, align 8, !tbaa !38
  %578 = zext i32 %225 to i64
  %579 = load i32, ptr %30, align 4, !tbaa !16
  %580 = zext i32 %223 to i64
  %581 = shl nuw i64 %580, 32
  %582 = and i64 %227, 4294967295
  %583 = or disjoint i64 %581, %582
  %584 = load ptr, ptr %28, align 8, !tbaa !29
  %585 = load ptr, ptr %35, align 8, !tbaa !30
  %586 = getelementptr inbounds nuw i8, ptr %585, i64 %578
  %587 = load i8, ptr %586, align 1, !tbaa !31
  %588 = zext i8 %587 to i32
  %589 = zext nneg i32 %579 to i64
  %590 = shl i64 %578, %589
  %591 = getelementptr inbounds nuw [8 x i8], ptr %584, i64 %590
  %592 = zext i8 %587 to i64
  %593 = getelementptr inbounds nuw [8 x i8], ptr %591, i64 %592
  store i64 %583, ptr %593, align 4
  %594 = add nuw nsw i32 %588, 1
  %595 = shl nsw i32 -1, %579
  %596 = xor i32 %595, -1
  %597 = and i32 %594, %596
  %598 = trunc i32 %597 to i8
  store i8 %598, ptr %586, align 1, !tbaa !31
  %599 = getelementptr inbounds nuw i8, ptr %221, i64 %555
  %600 = icmp ugt ptr %599, %197
  br i1 %600, label %601, label %626

601:                                              ; preds = %562
  %602 = sub i64 0, %187
  %603 = getelementptr inbounds i8, ptr %599, i64 %602
  br label %.loopexit104

604:                                              ; preds = %.loopexit101, %217
  %605 = zext i32 %225 to i64
  %606 = load i32, ptr %30, align 4, !tbaa !16
  %607 = zext i32 %223 to i64
  %608 = shl nuw i64 %607, 32
  %609 = and i64 %227, 4294967295
  %610 = or disjoint i64 %608, %609
  %611 = load ptr, ptr %28, align 8, !tbaa !29
  %612 = load ptr, ptr %35, align 8, !tbaa !30
  %613 = getelementptr inbounds nuw i8, ptr %612, i64 %605
  %614 = load i8, ptr %613, align 1, !tbaa !31
  %615 = zext i8 %614 to i32
  %616 = zext nneg i32 %606 to i64
  %617 = shl i64 %605, %616
  %618 = getelementptr inbounds nuw [8 x i8], ptr %611, i64 %617
  %619 = zext i8 %614 to i64
  %620 = getelementptr inbounds nuw [8 x i8], ptr %618, i64 %619
  store i64 %610, ptr %620, align 4
  %621 = add nuw nsw i32 %615, 1
  %622 = shl nsw i32 -1, %606
  %623 = xor i32 %622, -1
  %624 = and i32 %621, %623
  %625 = trunc i32 %624 to i8
  store i8 %625, ptr %613, align 1, !tbaa !31
  br label %626

626:                                              ; preds = %604, %562
  %627 = phi ptr [ %599, %562 ], [ %219, %604 ]
  %628 = add nuw nsw i64 %218, 1
  %629 = icmp eq i64 %628, %195
  br i1 %629, label %.loopexit104, label %217, !llvm.loop !67

.loopexit104:                                     ; preds = %626, %601, %182
  %630 = phi ptr [ %603, %601 ], [ %184, %182 ], [ %184, %626 ]
  %631 = phi ptr [ %599, %601 ], [ %183, %182 ], [ %627, %626 ]
  %632 = getelementptr inbounds nuw i8, ptr %630, i64 %187
  %633 = icmp ult ptr %632, %152
  br i1 %633, label %182, label %634, !llvm.loop !68

634:                                              ; preds = %.loopexit104
  %635 = ptrtoint ptr %631 to i64
  %636 = sub i64 %51, %635
  br label %637

637:                                              ; preds = %634, %156
  %638 = phi i64 [ %636, %634 ], [ %52, %156 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %639 = icmp ult i64 %638, -119
  br i1 %639, label %640, label %.loopexit106

640:                                              ; preds = %637
  %641 = load i64, ptr %19, align 8, !tbaa !38
  br label %642

642:                                              ; preds = %640, %155
  %643 = phi i64 [ %38, %155 ], [ %641, %640 ]
  %644 = phi i64 [ %52, %155 ], [ %638, %640 ]
  %645 = icmp ult i64 %38, %643
  br i1 %645, label %646, label %652

646:                                              ; preds = %642
  %647 = trunc i64 %40 to i32
  %648 = load ptr, ptr %1, align 8, !tbaa !62
  %.split = getelementptr inbounds nuw [12 x i8], ptr %648, i64 %38
  %649 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  %650 = load i32, ptr %649, align 4, !tbaa !63
  %651 = add i32 %650, %647
  store i32 %651, ptr %649, align 4, !tbaa !63
  br label %654

652:                                              ; preds = %642
  %653 = add i64 %52, %40
  br label %654

654:                                              ; preds = %652, %646
  %655 = phi i64 [ %644, %646 ], [ %653, %652 ]
  %656 = add nuw nsw i64 %39, 1
  %657 = icmp eq i64 %656, %16
  br i1 %657, label %.loopexit106, label %37, !llvm.loop !69

.loopexit106:                                     ; preds = %654, %637, %37, %561, %5
  %658 = phi i64 [ -70, %561 ], [ 0, %5 ], [ %638, %637 ], [ 0, %37 ], [ 0, %654 ]
  ret i64 %658
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ZSTD_ldm_skipSequences(ptr noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %.loopexit, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i64, ptr %7, align 8, !tbaa !38
  %9 = load i64, ptr %6, align 8, !tbaa !70
  %umax = tail call i64 @llvm.umax.i64(i64 %9, i64 %8)
  %exitcond.not74.not = icmp ult i64 %9, %8
  br i1 %exitcond.not74.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !62
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %39
  %11 = phi i64 [ %40, %39 ], [ %1, %.lr.ph.preheader ]
  %12 = phi i64 [ %41, %39 ], [ %9, %.lr.ph.preheader ]
  %13 = getelementptr inbounds nuw [12 x i8], ptr %10, i64 %12
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa !63
  %16 = zext i32 %15 to i64
  %17 = icmp ugt i64 %11, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %.lr.ph
  %19 = trunc nuw i64 %11 to i32
  %20 = sub i32 %15, %19
  store i32 %20, ptr %14, align 4, !tbaa !63
  br label %.loopexit

21:                                               ; preds = %.lr.ph
  %22 = sub nuw i64 %11, %16
  store i32 0, ptr %14, align 4, !tbaa !63
  %23 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %24 = load i32, ptr %23, align 4, !tbaa !65
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = trunc nuw i64 %22 to i32
  %29 = sub i32 %24, %28
  store i32 %29, ptr %23, align 4, !tbaa !65
  %30 = icmp ult i32 %29, %2
  br i1 %30, label %31, label %.loopexit

31:                                               ; preds = %27
  %32 = add nuw i64 %12, 1
  %33 = icmp ult i64 %32, %8
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %36 = load i32, ptr %35, align 4, !tbaa !63
  %37 = add i32 %36, %29
  store i32 %37, ptr %35, align 4, !tbaa !63
  br label %38

38:                                               ; preds = %34, %31
  store i64 %32, ptr %6, align 8, !tbaa !70
  br label %.loopexit

39:                                               ; preds = %21
  %40 = sub nuw i64 %22, %25
  store i32 0, ptr %23, align 4, !tbaa !65
  %41 = add i64 %12, 1
  store i64 %41, ptr %6, align 8, !tbaa !70
  %42 = icmp eq i64 %40, 0
  %exitcond.not = icmp eq i64 %41, %umax
  %or.cond = or i1 %42, %exitcond.not
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %39, %5, %38, %27, %18, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load i64, ptr %3, align 8, !tbaa !71
  %5 = add i64 %4, %1
  %6 = trunc i64 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %.loopexit5, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i64, ptr %10, align 8, !tbaa !38
  %12 = load i64, ptr %9, align 8, !tbaa !70
  %umax = tail call i64 @llvm.umax.i64(i64 %12, i64 %11)
  %exitcond.not30.not = icmp ult i64 %12, %11
  br i1 %exitcond.not30.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !62
  br label %.lr.ph

14:                                               ; preds = %26
  %exitcond.not = icmp eq i64 %28, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %14
  %15 = phi i32 [ %27, %14 ], [ %6, %.lr.ph.preheader ]
  %16 = phi i64 [ %28, %14 ], [ %12, %.lr.ph.preheader ]
  %17 = getelementptr inbounds nuw [12 x i8], ptr %13, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %19 = load i32, ptr %18, align 4, !tbaa !27
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %21 = load i32, ptr %20, align 4, !tbaa !27
  %22 = add i32 %21, %19
  %23 = icmp ult i32 %15, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %.lr.ph
  %25 = zext i32 %15 to i64
  store i64 %25, ptr %3, align 8, !tbaa !71
  br label %.loopexit

26:                                               ; preds = %.lr.ph
  %27 = sub nuw i32 %15, %22
  %28 = add i64 %16, 1
  store i64 %28, ptr %9, align 8, !tbaa !70
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %.loopexit5, label %14

.loopexit:                                        ; preds = %14, %8, %24
  %30 = phi i64 [ %16, %24 ], [ %umax, %8 ], [ %umax, %14 ]
  %31 = icmp eq i64 %30, %11
  br i1 %31, label %.loopexit5, label %32

.loopexit5:                                       ; preds = %26, %.loopexit, %2
  store i64 0, ptr %3, align 8, !tbaa !71
  br label %32

32:                                               ; preds = %.loopexit5, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_ldm_blockCompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #8 {
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 272
  %9 = load i32, ptr %8, align 4, !tbaa !72
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 280
  %11 = load i32, ptr %10, align 4, !tbaa !14
  %12 = getelementptr i8, ptr %1, i64 24
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = getelementptr i8, ptr %1, i64 28
  %15 = load i32, ptr %14, align 4, !tbaa !42
  %16 = icmp ult i32 %15, %13
  br i1 %16, label %26, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 248
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 140
  %23 = load i32, ptr %22, align 4, !tbaa !78
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 2, i32 3
  br label %26

26:                                               ; preds = %21, %17, %7
  %27 = phi i32 [ 1, %7 ], [ %25, %21 ], [ 0, %17 ]
  %28 = tail call ptr @ZSTD_selectBlockCompressor(i32 noundef %11, i32 noundef %4, i32 noundef %27) #16
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 %6
  %30 = load i32, ptr %10, align 4, !tbaa !14
  %31 = icmp ugt i32 %30, 6
  br i1 %31, label %51, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %35 = load i64, ptr %33, align 8, !tbaa !70
  %36 = load i64, ptr %34, align 8, !tbaa !38
  %37 = icmp ult i64 %35, %36
  %38 = icmp ne i64 %6, 0
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %.loopexit44

40:                                               ; preds = %32
  %41 = ptrtoint ptr %29 to i64
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %44 = getelementptr inbounds i8, ptr %29, i64 -32
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %46 = ptrtoint ptr %44 to i64
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 76
  %50 = getelementptr i8, ptr %3, i64 4
  br label %83

51:                                               ; preds = %26
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %0, ptr %52, align 8, !tbaa !79
  %53 = tail call i64 %28(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, i64 noundef %6) #16
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %55 = load i64, ptr %54, align 8, !tbaa !71
  %56 = add i64 %55, %6
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %.loopexit37, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %62 = load i64, ptr %61, align 8, !tbaa !38
  %63 = load i64, ptr %60, align 8, !tbaa !70
  %umax90 = tail call i64 @llvm.umax.i64(i64 %63, i64 %62)
  %exitcond91.not172.not = icmp ult i64 %63, %62
  br i1 %exitcond91.not172.not, label %.lr.ph173.preheader, label %.loopexit

.lr.ph173.preheader:                              ; preds = %59
  %64 = load ptr, ptr %0, align 8, !tbaa !62
  br label %.lr.ph173

65:                                               ; preds = %77
  %exitcond91.not = icmp eq i64 %79, %umax90
  br i1 %exitcond91.not, label %.loopexit, label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.preheader, %65
  %66 = phi i32 [ %78, %65 ], [ %57, %.lr.ph173.preheader ]
  %67 = phi i64 [ %79, %65 ], [ %63, %.lr.ph173.preheader ]
  %68 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %67
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %70 = load i32, ptr %69, align 4, !tbaa !27
  %71 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %72 = load i32, ptr %71, align 4, !tbaa !27
  %73 = add i32 %72, %70
  %74 = icmp ult i32 %66, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %.lr.ph173
  %76 = zext i32 %66 to i64
  store i64 %76, ptr %54, align 8, !tbaa !71
  br label %.loopexit

77:                                               ; preds = %.lr.ph173
  %78 = sub nuw i32 %66, %73
  %79 = add i64 %67, 1
  store i64 %79, ptr %60, align 8, !tbaa !70
  %80 = icmp eq i32 %78, 0
  br i1 %80, label %.loopexit37, label %65

.loopexit:                                        ; preds = %65, %59, %75
  %81 = phi i64 [ %67, %75 ], [ %umax90, %59 ], [ %umax90, %65 ]
  %82 = icmp eq i64 %81, %62
  br i1 %82, label %.loopexit37, label %370

.loopexit37:                                      ; preds = %77, %.loopexit, %51
  store i64 0, ptr %54, align 8, !tbaa !71
  br label %370

83:                                               ; preds = %337, %40
  %84 = phi i64 [ %36, %40 ], [ %343, %337 ]
  %85 = phi i64 [ %35, %40 ], [ %342, %337 ]
  %86 = phi ptr [ %5, %40 ], [ %341, %337 ]
  %87 = ptrtoint ptr %86 to i64
  %88 = sub i64 %41, %87
  %89 = trunc i64 %88 to i32
  %90 = load ptr, ptr %0, align 8, !tbaa !62
  %91 = getelementptr inbounds nuw [12 x i8], ptr %90, i64 %85
  %92 = load i64, ptr %91, align 4
  %93 = lshr i64 %92, 32
  %94 = trunc nuw i64 %93 to i32
  %95 = getelementptr inbounds nuw i8, ptr %91, i64 8
  %96 = load i32, ptr %95, align 4, !tbaa !27
  %97 = add i32 %96, %94
  %98 = icmp ugt i32 %97, %89
  br i1 %98, label %101, label %99

99:                                               ; preds = %83
  %100 = add nuw i64 %85, 1
  store i64 %100, ptr %33, align 8, !tbaa !70
  br label %.loopexit43

101:                                              ; preds = %83
  %102 = icmp ugt i32 %89, %94
  %103 = sub i32 %89, %94
  %104 = icmp uge i32 %103, %9
  %105 = select i1 %102, i32 %103, i32 %96
  %106 = select i1 %102, i1 %104, i1 false
  %107 = select i1 %106, i64 %92, i64 0
  %108 = icmp eq i32 %89, 0
  br i1 %108, label %.loopexit43, label %109

109:                                              ; preds = %101
  %umax = tail call i64 @llvm.umax.i64(i64 %85, i64 %84)
  %exitcond.not170.not = icmp ult i64 %85, %84
  br i1 %exitcond.not170.not, label %.lr.ph, label %.loopexit43

.lr.ph:                                           ; preds = %109
  %110 = and i64 %88, 4294967295
  br label %111

111:                                              ; preds = %140, %.lr.ph
  %112 = phi i64 [ %110, %.lr.ph ], [ %141, %140 ]
  %113 = phi i64 [ %85, %.lr.ph ], [ %142, %140 ]
  %114 = getelementptr inbounds nuw [12 x i8], ptr %90, i64 %113
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 4
  %116 = load i32, ptr %115, align 4, !tbaa !63
  %117 = zext i32 %116 to i64
  %118 = icmp ugt i64 %112, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %111
  %120 = trunc nuw i64 %112 to i32
  %121 = sub i32 %116, %120
  store i32 %121, ptr %115, align 4, !tbaa !63
  br label %.loopexit43

122:                                              ; preds = %111
  %123 = sub nuw nsw i64 %112, %117
  store i32 0, ptr %115, align 4, !tbaa !63
  %124 = getelementptr inbounds nuw i8, ptr %114, i64 8
  %125 = load i32, ptr %124, align 4, !tbaa !65
  %126 = zext i32 %125 to i64
  %127 = icmp ult i64 %123, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %122
  %129 = trunc nuw i64 %123 to i32
  %130 = sub i32 %125, %129
  store i32 %130, ptr %124, align 4, !tbaa !65
  %131 = icmp ult i32 %130, %9
  br i1 %131, label %132, label %.loopexit43

132:                                              ; preds = %128
  %133 = add nuw i64 %113, 1
  %134 = icmp ult i64 %133, %84
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = getelementptr inbounds nuw i8, ptr %114, i64 16
  %137 = load i32, ptr %136, align 4, !tbaa !63
  %138 = add i32 %137, %130
  store i32 %138, ptr %136, align 4, !tbaa !63
  br label %139

139:                                              ; preds = %135, %132
  store i64 %133, ptr %33, align 8, !tbaa !70
  br label %.loopexit43

140:                                              ; preds = %122
  %141 = sub nuw nsw i64 %123, %126
  store i32 0, ptr %124, align 4, !tbaa !65
  %142 = add i64 %113, 1
  store i64 %142, ptr %33, align 8, !tbaa !70
  %143 = icmp eq i64 %141, 0
  %exitcond.not = icmp eq i64 %142, %umax
  %or.cond = or i1 %143, %exitcond.not
  br i1 %or.cond, label %.loopexit43, label %111

.loopexit43:                                      ; preds = %140, %109, %139, %128, %119, %101, %99
  %144 = phi i32 [ %96, %99 ], [ %105, %101 ], [ %105, %119 ], [ %105, %128 ], [ %105, %139 ], [ %105, %109 ], [ %105, %140 ]
  %145 = phi i64 [ %92, %99 ], [ %107, %101 ], [ %107, %119 ], [ %107, %128 ], [ %107, %139 ], [ %107, %109 ], [ %107, %140 ]
  %146 = trunc i64 %145 to i32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %.loopexit44, label %148

148:                                              ; preds = %.loopexit43
  %149 = load ptr, ptr %42, align 8, !tbaa !80
  %150 = ptrtoint ptr %149 to i64
  %151 = sub i64 %87, %150
  %152 = trunc i64 %151 to i32
  %153 = load i32, ptr %43, align 4, !tbaa !81
  %154 = add i32 %153, 1024
  %155 = icmp ult i32 %154, %152
  br i1 %155, label %156, label %160

156:                                              ; preds = %148
  %reass.sub = sub i32 %152, %153
  %157 = add i32 %reass.sub, -1024
  %158 = tail call i32 @llvm.umin.i32(i32 %157, i32 512)
  %159 = sub i32 %152, %158
  store i32 %159, ptr %43, align 4, !tbaa !81
  br label %160

160:                                              ; preds = %156, %148
  %161 = load i32, ptr %10, align 8, !tbaa !82
  switch i32 %161, label %164 [
    i32 1, label %162
    i32 2, label %163
  ]

162:                                              ; preds = %160
  tail call void @ZSTD_fillHashTable(ptr noundef nonnull %1, ptr noundef %86, i32 noundef 0, i32 noundef 0) #16
  br label %164

163:                                              ; preds = %160
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef nonnull %1, ptr noundef %86, i32 noundef 0, i32 noundef 0) #16
  br label %164

164:                                              ; preds = %163, %162, %160
  %165 = tail call i64 %28(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %86, i64 noundef %93) #16
  %166 = load i64, ptr %3, align 4, !tbaa !27
  store i64 %166, ptr %50, align 4, !tbaa !27
  %167 = getelementptr inbounds nuw i8, ptr %86, i64 %93
  store i32 %146, ptr %3, align 4, !tbaa !27
  %168 = sub i64 0, %165
  %169 = getelementptr inbounds i8, ptr %167, i64 %168
  %170 = add i32 %146, 3
  %171 = zext i32 %144 to i64
  %172 = icmp ugt ptr %167, %44
  %173 = load ptr, ptr %45, align 8, !tbaa !83
  br i1 %172, label %196, label %174

174:                                              ; preds = %164
  %175 = load <2 x i64>, ptr %169, align 1, !tbaa !31
  store <2 x i64> %175, ptr %173, align 1, !tbaa !31
  %176 = icmp ugt i64 %165, 16
  br i1 %176, label %177, label %309

177:                                              ; preds = %174
  %178 = load ptr, ptr %45, align 8, !tbaa !83
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 16
  %180 = getelementptr inbounds nuw i8, ptr %169, i64 16
  %181 = getelementptr i8, ptr %178, i64 %165
  %182 = load <2 x i64>, ptr %180, align 1, !tbaa !31
  store <2 x i64> %182, ptr %179, align 1, !tbaa !31
  %183 = icmp ult i64 %165, 33
  br i1 %183, label %309, label %184

184:                                              ; preds = %177
  %185 = getelementptr inbounds nuw i8, ptr %178, i64 32
  br label %186

186:                                              ; preds = %186, %184
  %187 = phi ptr [ %185, %184 ], [ %194, %186 ]
  %188 = phi ptr [ %180, %184 ], [ %192, %186 ]
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 16
  %190 = load <2 x i64>, ptr %189, align 1, !tbaa !31
  store <2 x i64> %190, ptr %187, align 1, !tbaa !31
  %191 = getelementptr inbounds nuw i8, ptr %187, i64 16
  %192 = getelementptr inbounds nuw i8, ptr %188, i64 32
  %193 = load <2 x i64>, ptr %192, align 1, !tbaa !31
  store <2 x i64> %193, ptr %191, align 1, !tbaa !31
  %194 = getelementptr inbounds nuw i8, ptr %187, i64 32
  %195 = icmp ult ptr %194, %181
  br i1 %195, label %186, label %.loopexit38, !llvm.loop !86

196:                                              ; preds = %164
  %197 = icmp ugt ptr %169, %44
  br i1 %197, label %.loopexit41, label %198

198:                                              ; preds = %196
  %199 = ptrtoint ptr %169 to i64
  %200 = sub i64 %46, %199
  %201 = getelementptr inbounds i8, ptr %173, i64 %200
  %202 = load <2 x i64>, ptr %169, align 1, !tbaa !31
  store <2 x i64> %202, ptr %173, align 1, !tbaa !31
  %203 = icmp ult i64 %200, 17
  br i1 %203, label %.loopexit41, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds nuw i8, ptr %173, i64 16
  br label %206

206:                                              ; preds = %206, %204
  %207 = phi ptr [ %205, %204 ], [ %214, %206 ]
  %208 = phi ptr [ %169, %204 ], [ %212, %206 ]
  %209 = getelementptr inbounds nuw i8, ptr %208, i64 16
  %210 = load <2 x i64>, ptr %209, align 1, !tbaa !31
  store <2 x i64> %210, ptr %207, align 1, !tbaa !31
  %211 = getelementptr inbounds nuw i8, ptr %207, i64 16
  %212 = getelementptr inbounds nuw i8, ptr %208, i64 32
  %213 = load <2 x i64>, ptr %212, align 1, !tbaa !31
  store <2 x i64> %213, ptr %211, align 1, !tbaa !31
  %214 = getelementptr inbounds nuw i8, ptr %207, i64 32
  %215 = icmp ult ptr %214, %201
  br i1 %215, label %206, label %.loopexit41, !llvm.loop !86

.loopexit41:                                      ; preds = %206, %198, %196
  %216 = phi ptr [ %44, %198 ], [ %169, %196 ], [ %44, %206 ]
  %217 = phi ptr [ %201, %198 ], [ %173, %196 ], [ %201, %206 ]
  %218 = icmp ult ptr %216, %167
  br i1 %218, label %219, label %.loopexit38

219:                                              ; preds = %.loopexit41
  %220 = ptrtoint ptr %216 to i64
  %221 = ptrtoint ptr %217 to i64
  %222 = add i64 %93, %87
  %223 = sub i64 %222, %220
  %224 = icmp ult i64 %223, 4
  %225 = sub i64 %221, %220
  %226 = icmp ult i64 %225, 32
  %227 = select i1 %224, i1 true, i1 %226
  br i1 %227, label %263, label %228

228:                                              ; preds = %219
  %229 = icmp ult i64 %223, 32
  br i1 %229, label %249, label %230

230:                                              ; preds = %228
  %231 = and i64 %223, -32
  br label %232

232:                                              ; preds = %232, %230
  %233 = phi i64 [ 0, %230 ], [ %240, %232 ]
  %234 = getelementptr i8, ptr %217, i64 %233
  %235 = getelementptr i8, ptr %216, i64 %233
  %236 = getelementptr i8, ptr %235, i64 16
  %237 = load <16 x i8>, ptr %235, align 1, !tbaa !31
  %238 = load <16 x i8>, ptr %236, align 1, !tbaa !31
  %239 = getelementptr i8, ptr %234, i64 16
  store <16 x i8> %237, ptr %234, align 1, !tbaa !31
  store <16 x i8> %238, ptr %239, align 1, !tbaa !31
  %240 = add nuw i64 %233, 32
  %241 = icmp eq i64 %240, %231
  br i1 %241, label %242, label %232, !llvm.loop !87

242:                                              ; preds = %232
  %243 = icmp eq i64 %223, %231
  br i1 %243, label %.loopexit38, label %244

244:                                              ; preds = %242
  %245 = getelementptr i8, ptr %217, i64 %231
  %246 = getelementptr i8, ptr %216, i64 %231
  %247 = and i64 %223, 28
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %263, label %249

249:                                              ; preds = %244, %228
  %250 = phi i64 [ %231, %244 ], [ 0, %228 ]
  %251 = and i64 %223, -4
  br label %252

252:                                              ; preds = %252, %249
  %253 = phi i64 [ %250, %249 ], [ %257, %252 ]
  %254 = getelementptr i8, ptr %217, i64 %253
  %255 = getelementptr i8, ptr %216, i64 %253
  %256 = load <4 x i8>, ptr %255, align 1, !tbaa !31
  store <4 x i8> %256, ptr %254, align 1, !tbaa !31
  %257 = add nuw i64 %253, 4
  %258 = icmp eq i64 %257, %251
  br i1 %258, label %259, label %252, !llvm.loop !90

259:                                              ; preds = %252
  %260 = getelementptr i8, ptr %217, i64 %251
  %261 = getelementptr i8, ptr %216, i64 %251
  %262 = icmp eq i64 %223, %251
  br i1 %262, label %.loopexit38, label %263

263:                                              ; preds = %259, %244, %219
  %264 = phi ptr [ %217, %219 ], [ %245, %244 ], [ %260, %259 ]
  %265 = phi ptr [ %216, %219 ], [ %246, %244 ], [ %261, %259 ]
  %266 = ptrtoint ptr %265 to i64
  %267 = sub i64 %222, %266
  %268 = and i64 %267, 7
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %.loopexit40, label %.preheader39

.preheader39:                                     ; preds = %263, %.preheader39
  %270 = phi ptr [ %275, %.preheader39 ], [ %264, %263 ]
  %271 = phi ptr [ %273, %.preheader39 ], [ %265, %263 ]
  %272 = phi i64 [ %276, %.preheader39 ], [ 0, %263 ]
  %273 = getelementptr inbounds nuw i8, ptr %271, i64 1
  %274 = load i8, ptr %271, align 1, !tbaa !31
  %275 = getelementptr inbounds nuw i8, ptr %270, i64 1
  store i8 %274, ptr %270, align 1, !tbaa !31
  %276 = add nuw nsw i64 %272, 1
  %277 = icmp eq i64 %276, %268
  br i1 %277, label %.loopexit40, label %.preheader39, !llvm.loop !91

.loopexit40:                                      ; preds = %.preheader39, %263
  %278 = phi ptr [ %264, %263 ], [ %275, %.preheader39 ]
  %279 = phi ptr [ %265, %263 ], [ %273, %.preheader39 ]
  %280 = sub i64 %266, %222
  %281 = icmp ugt i64 %280, -8
  br i1 %281, label %.loopexit38, label %.preheader

.preheader:                                       ; preds = %.loopexit40, %.preheader
  %282 = phi ptr [ %307, %.preheader ], [ %278, %.loopexit40 ]
  %283 = phi ptr [ %305, %.preheader ], [ %279, %.loopexit40 ]
  %284 = getelementptr inbounds nuw i8, ptr %283, i64 1
  %285 = load i8, ptr %283, align 1, !tbaa !31
  %286 = getelementptr inbounds nuw i8, ptr %282, i64 1
  store i8 %285, ptr %282, align 1, !tbaa !31
  %287 = getelementptr inbounds nuw i8, ptr %283, i64 2
  %288 = load i8, ptr %284, align 1, !tbaa !31
  %289 = getelementptr inbounds nuw i8, ptr %282, i64 2
  store i8 %288, ptr %286, align 1, !tbaa !31
  %290 = getelementptr inbounds nuw i8, ptr %283, i64 3
  %291 = load i8, ptr %287, align 1, !tbaa !31
  %292 = getelementptr inbounds nuw i8, ptr %282, i64 3
  store i8 %291, ptr %289, align 1, !tbaa !31
  %293 = getelementptr inbounds nuw i8, ptr %283, i64 4
  %294 = load i8, ptr %290, align 1, !tbaa !31
  %295 = getelementptr inbounds nuw i8, ptr %282, i64 4
  store i8 %294, ptr %292, align 1, !tbaa !31
  %296 = getelementptr inbounds nuw i8, ptr %283, i64 5
  %297 = load i8, ptr %293, align 1, !tbaa !31
  %298 = getelementptr inbounds nuw i8, ptr %282, i64 5
  store i8 %297, ptr %295, align 1, !tbaa !31
  %299 = getelementptr inbounds nuw i8, ptr %283, i64 6
  %300 = load i8, ptr %296, align 1, !tbaa !31
  %301 = getelementptr inbounds nuw i8, ptr %282, i64 6
  store i8 %300, ptr %298, align 1, !tbaa !31
  %302 = getelementptr inbounds nuw i8, ptr %283, i64 7
  %303 = load i8, ptr %299, align 1, !tbaa !31
  %304 = getelementptr inbounds nuw i8, ptr %282, i64 7
  store i8 %303, ptr %301, align 1, !tbaa !31
  %305 = getelementptr inbounds nuw i8, ptr %283, i64 8
  %306 = load i8, ptr %302, align 1, !tbaa !31
  %307 = getelementptr inbounds nuw i8, ptr %282, i64 8
  store i8 %306, ptr %304, align 1, !tbaa !31
  %308 = icmp eq ptr %305, %167
  br i1 %308, label %.loopexit38, label %.preheader, !llvm.loop !93

309:                                              ; preds = %177, %174
  %310 = load ptr, ptr %45, align 8, !tbaa !83
  %311 = getelementptr inbounds nuw i8, ptr %310, i64 %165
  store ptr %311, ptr %45, align 8, !tbaa !83
  %312 = load ptr, ptr %48, align 8, !tbaa !94
  br label %324

.loopexit38:                                      ; preds = %186, %.preheader, %.loopexit40, %259, %242, %.loopexit41
  %313 = load ptr, ptr %45, align 8, !tbaa !83
  %314 = getelementptr inbounds nuw i8, ptr %313, i64 %165
  store ptr %314, ptr %45, align 8, !tbaa !83
  %315 = icmp ugt i64 %165, 65535
  %316 = load ptr, ptr %48, align 8, !tbaa !94
  br i1 %315, label %317, label %324, !prof !95

317:                                              ; preds = %.loopexit38
  store i32 1, ptr %47, align 8, !tbaa !96
  %318 = load ptr, ptr %2, align 8, !tbaa !97
  %319 = ptrtoint ptr %316 to i64
  %320 = ptrtoint ptr %318 to i64
  %321 = sub i64 %319, %320
  %322 = lshr exact i64 %321, 3
  %323 = trunc i64 %322 to i32
  store i32 %323, ptr %49, align 4, !tbaa !98
  br label %324

324:                                              ; preds = %317, %.loopexit38, %309
  %325 = phi ptr [ %312, %309 ], [ %316, %317 ], [ %316, %.loopexit38 ]
  %326 = trunc i64 %165 to i16
  %327 = getelementptr inbounds nuw i8, ptr %325, i64 4
  store i16 %326, ptr %327, align 4, !tbaa !99
  store i32 %170, ptr %325, align 4, !tbaa !101
  %328 = add nsw i64 %171, -3
  %329 = icmp ugt i64 %328, 65535
  br i1 %329, label %330, label %337, !prof !35

330:                                              ; preds = %324
  store i32 2, ptr %47, align 8, !tbaa !96
  %331 = load ptr, ptr %2, align 8, !tbaa !97
  %332 = ptrtoint ptr %325 to i64
  %333 = ptrtoint ptr %331 to i64
  %334 = sub i64 %332, %333
  %335 = lshr exact i64 %334, 3
  %336 = trunc i64 %335 to i32
  store i32 %336, ptr %49, align 4, !tbaa !98
  br label %337

337:                                              ; preds = %330, %324
  %338 = trunc i64 %328 to i16
  %339 = getelementptr inbounds nuw i8, ptr %325, i64 6
  store i16 %338, ptr %339, align 2, !tbaa !102
  %340 = getelementptr inbounds nuw i8, ptr %325, i64 8
  store ptr %340, ptr %48, align 8, !tbaa !94
  %341 = getelementptr inbounds nuw i8, ptr %167, i64 %171
  %342 = load i64, ptr %33, align 8, !tbaa !70
  %343 = load i64, ptr %34, align 8, !tbaa !38
  %344 = icmp ult i64 %342, %343
  %345 = icmp ult ptr %341, %29
  %346 = select i1 %344, i1 %345, i1 false
  br i1 %346, label %83, label %.loopexit44

.loopexit44:                                      ; preds = %337, %.loopexit43, %32
  %347 = phi ptr [ %5, %32 ], [ %341, %337 ], [ %86, %.loopexit43 ]
  %348 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %349 = load ptr, ptr %348, align 8, !tbaa !80
  %350 = ptrtoint ptr %347 to i64
  %351 = ptrtoint ptr %349 to i64
  %352 = sub i64 %350, %351
  %353 = trunc i64 %352 to i32
  %354 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %355 = load i32, ptr %354, align 4, !tbaa !81
  %356 = add i32 %355, 1024
  %357 = icmp ult i32 %356, %353
  br i1 %357, label %358, label %362

358:                                              ; preds = %.loopexit44
  %reass.sub66 = sub i32 %353, %355
  %359 = add i32 %reass.sub66, -1024
  %360 = tail call i32 @llvm.umin.i32(i32 %359, i32 512)
  %361 = sub i32 %353, %360
  store i32 %361, ptr %354, align 4, !tbaa !81
  br label %362

362:                                              ; preds = %358, %.loopexit44
  %363 = load i32, ptr %10, align 8, !tbaa !82
  switch i32 %363, label %366 [
    i32 1, label %364
    i32 2, label %365
  ]

364:                                              ; preds = %362
  tail call void @ZSTD_fillHashTable(ptr noundef nonnull %1, ptr noundef %347, i32 noundef 0, i32 noundef 0) #16
  br label %366

365:                                              ; preds = %362
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef nonnull %1, ptr noundef %347, i32 noundef 0, i32 noundef 0) #16
  br label %366

366:                                              ; preds = %365, %364, %362
  %367 = ptrtoint ptr %29 to i64
  %368 = sub i64 %367, %350
  %369 = tail call i64 %28(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %347, i64 noundef %368) #16
  br label %370

370:                                              ; preds = %366, %.loopexit37, %.loopexit
  %371 = phi i64 [ %369, %366 ], [ %53, %.loopexit ], [ %53, %.loopexit37 ]
  ret i64 %371
}

declare ptr @ZSTD_selectBlockCompressor(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

declare void @ZSTD_fillHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare void @ZSTD_fillDoubleHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(readwrite, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 20}
!11 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!12 = !{!11, !7, i64 16}
!13 = !{!11, !7, i64 4}
!14 = !{!6, !7, i64 24}
!15 = !{!11, !7, i64 12}
!16 = !{!11, !7, i64 8}
!17 = !{!11, !7, i64 0}
!18 = !{!19, !21, i64 8}
!19 = !{!"", !20, i64 0, !22, i64 40, !7, i64 48, !21, i64 56, !8, i64 64, !8, i64 576}
!20 = !{!"", !21, i64 0, !21, i64 8, !21, i64 16, !7, i64 24, !7, i64 28, !7, i64 32}
!21 = !{!"p1 omnipotent char", !22, i64 0}
!22 = !{!"any pointer", !8, i64 0}
!23 = !{!24, !25, i64 0}
!24 = !{!"", !25, i64 0, !25, i64 8}
!25 = !{!"long", !8, i64 0}
!26 = !{!24, !25, i64 8}
!27 = !{!7, !7, i64 0}
!28 = !{!25, !25, i64 0}
!29 = !{!19, !22, i64 40}
!30 = !{!19, !21, i64 56}
!31 = !{!8, !8, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = !{!39, !25, i64 24}
!39 = !{!"", !22, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32}
!40 = !{!39, !25, i64 32}
!41 = !{!20, !21, i64 8}
!42 = !{!20, !7, i64 28}
!43 = !{!20, !21, i64 16}
!44 = !{!20, !7, i64 24}
!45 = !{!20, !7, i64 32}
!46 = !{!47, !7, i64 0}
!47 = !{!"", !7, i64 0, !7, i64 4}
!48 = distinct !{!48, !33}
!49 = !{!19, !7, i64 48}
!50 = !{!19, !21, i64 16}
!51 = !{!52, !21, i64 0}
!52 = !{!"", !21, i64 0, !7, i64 8, !7, i64 12, !22, i64 16}
!53 = !{!52, !7, i64 8}
!54 = !{!52, !7, i64 12}
!55 = !{!52, !22, i64 16}
!56 = distinct !{!56, !33}
!57 = !{!47, !7, i64 4}
!58 = !{!59, !59, i64 0}
!59 = !{!"short", !8, i64 0}
!60 = distinct !{!60, !33}
!61 = distinct !{!61, !33}
!62 = !{!39, !22, i64 0}
!63 = !{!64, !7, i64 4}
!64 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!65 = !{!64, !7, i64 8}
!66 = !{!64, !7, i64 0}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33}
!70 = !{!39, !25, i64 8}
!71 = !{!39, !25, i64 16}
!72 = !{!6, !7, i64 16}
!73 = !{!74, !77, i64 248}
!74 = !{!"ZSTD_MatchState_t", !20, i64 0, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !21, i64 56, !8, i64 64, !25, i64 96, !7, i64 104, !75, i64 112, !75, i64 120, !75, i64 128, !7, i64 136, !7, i64 140, !76, i64 144, !77, i64 248, !6, i64 256, !22, i64 288, !7, i64 296, !7, i64 300}
!75 = !{!"p1 int", !22, i64 0}
!76 = !{!"", !75, i64 0, !75, i64 8, !75, i64 16, !75, i64 24, !22, i64 32, !22, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !22, i64 88, !7, i64 96}
!77 = !{!"p1 _ZTS17ZSTD_MatchState_t", !22, i64 0}
!78 = !{!74, !7, i64 140}
!79 = !{!74, !22, i64 288}
!80 = !{!74, !21, i64 8}
!81 = !{!74, !7, i64 44}
!82 = !{!74, !7, i64 280}
!83 = !{!84, !21, i64 24}
!84 = !{!"", !85, i64 0, !85, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !25, i64 56, !25, i64 64, !7, i64 72, !7, i64 76}
!85 = !{!"p1 _ZTS8SeqDef_s", !22, i64 0}
!86 = distinct !{!86, !33}
!87 = distinct !{!87, !33, !88, !89}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = distinct !{!90, !33, !88, !89}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = distinct !{!93, !33, !88}
!94 = !{!84, !85, i64 8}
!95 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!96 = !{!84, !7, i64 72}
!97 = !{!84, !85, i64 0}
!98 = !{!84, !7, i64 76}
!99 = !{!100, !59, i64 4}
!100 = !{!"SeqDef_s", !7, i64 0, !59, i64 4, !59, i64 6}
!101 = !{!100, !7, i64 0}
!102 = !{!100, !59, i64 6}
