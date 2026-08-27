; ModuleID = '/mydata/zstd/lib/compress/zstd_ldm.c'
source_filename = "/mydata/zstd/lib/compress/zstd_ldm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.ldmRollingHashState_t = type { i64, i64 }
%struct.ldmEntry_t = type { i32, i32 }
%struct.ldmMatchCandidate_t = type { ptr, i32, i32, ptr }
%struct.rawSeq = type { i32, i32, i32 }

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
  br i1 %13, label %14, label %31

14:                                               ; preds = %12
  %15 = sub nuw i32 %3, %9
  store i32 %15, ptr %5, align 4, !tbaa !12
  br label %31

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %18 = load i32, ptr %17, align 4, !tbaa !14
  %19 = udiv i32 %18, 3
  %20 = sub nsw i32 7, %19
  store i32 %20, ptr %5, align 4, !tbaa !12
  br label %22

21:                                               ; preds = %2
  br i1 %10, label %22, label %31

22:                                               ; preds = %16, %21
  %23 = phi i32 [ %20, %16 ], [ %6, %21 ]
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %25 = icmp ugt i32 %3, %23
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 6, ptr %24, align 4, !tbaa !13
  br label %31

27:                                               ; preds = %22
  %28 = sub nuw i32 %3, %23
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 6)
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 30)
  store i32 %30, ptr %24, align 4, !tbaa !13
  br label %31

31:                                               ; preds = %12, %14, %26, %27, %21
  %32 = phi i32 [ 6, %26 ], [ %30, %27 ], [ %9, %21 ], [ %9, %14 ], [ %9, %12 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %34 = load i32, ptr %33, align 4, !tbaa !15
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %38 = load i32, ptr %37, align 4, !tbaa !14
  %39 = icmp ugt i32 %38, 7
  %40 = select i1 %39, i32 32, i32 64
  store i32 %40, ptr %33, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %43 = load i32, ptr %42, align 4, !tbaa !16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %47 = load i32, ptr %46, align 4, !tbaa !14
  %48 = tail call i32 @llvm.umax.i32(i32 %47, i32 4)
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 8)
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i32 [ %49, %45 ], [ %43, %41 ]
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 %32)
  store i32 %52, ptr %42, align 4, !tbaa !16
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

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

10:                                               ; preds = %2, %5
  %11 = phi i64 [ %9, %5 ], [ 0, %2 ]
  ret i64 %11
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable
define dso_local void @ZSTD_ldm_fillHashTable(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #3 {
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
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
  br i1 %30, label %31, label %90

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

42:                                               ; preds = %31, %87
  %43 = phi ptr [ %1, %31 ], [ %88, %87 ]
  store i32 0, ptr %6, align 4, !tbaa !27
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %33, %44
  %46 = call fastcc i64 @ZSTD_ldm_gear_feed(ptr noundef %5, ptr noundef %43, i64 noundef %45, ptr noundef nonnull %16, ptr noundef %6)
  %47 = load i32, ptr %6, align 4, !tbaa !27
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %87, label %49

49:                                               ; preds = %42
  %50 = zext i32 %47 to i64
  br label %51

51:                                               ; preds = %49, %84
  %52 = phi i64 [ 0, %49 ], [ %85, %84 ]
  %53 = getelementptr inbounds nuw i64, ptr %16, i64 %52
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
  %76 = getelementptr inbounds nuw %struct.ldmEntry_t, ptr %69, i64 %75
  %77 = zext i8 %72 to i64
  %78 = getelementptr inbounds nuw %struct.ldmEntry_t, ptr %76, i64 %77
  store i64 %68, ptr %78, align 4
  %79 = add nuw nsw i32 %73, 1
  %80 = shl nsw i32 -1, %66
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = trunc i32 %82 to i8
  store i8 %83, ptr %71, align 1, !tbaa !31
  br label %84

84:                                               ; preds = %51, %57
  %85 = add nuw nsw i64 %52, 1
  %86 = icmp eq i64 %85, %50
  br i1 %86, label %87, label %51, !llvm.loop !32

87:                                               ; preds = %84, %42
  %88 = getelementptr inbounds nuw i8, ptr %43, i64 %46
  %89 = icmp ult ptr %88, %2
  br i1 %89, label %42, label %90, !llvm.loop !34

90:                                               ; preds = %87, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @ZSTD_ldm_gear_feed(ptr noundef nonnull captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef writeonly captures(none) %3, ptr noundef nonnull captures(none) %4) unnamed_addr #4 {
  %6 = load i64, ptr %0, align 8, !tbaa !23
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !26
  %9 = icmp ugt i64 %2, 3
  br i1 %9, label %14, label %10

10:                                               ; preds = %84, %5
  %11 = phi i64 [ %6, %5 ], [ %74, %84 ]
  %12 = phi i64 [ 0, %5 ], [ %75, %84 ]
  %13 = icmp ult i64 %12, %2
  br i1 %13, label %87, label %111

14:                                               ; preds = %5, %84
  %15 = phi i64 [ %75, %84 ], [ 0, %5 ]
  %16 = phi i64 [ %74, %84 ], [ %6, %5 ]
  %17 = shl i64 %16, 1
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 %15
  %19 = load i8, ptr %18, align 1, !tbaa !31
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds nuw [256 x i64], ptr @ZSTD_ldm_gearTab, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !28
  %23 = add i64 %22, %17
  %24 = or disjoint i64 %15, 1
  %25 = and i64 %23, %8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33, !prof !35

27:                                               ; preds = %14
  %28 = load i32, ptr %4, align 4, !tbaa !27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds nuw i64, ptr %3, i64 %29
  store i64 %24, ptr %30, align 8, !tbaa !28
  %31 = add i32 %28, 1
  store i32 %31, ptr %4, align 4, !tbaa !27
  %32 = icmp eq i32 %31, 64
  br i1 %32, label %111, label %33

33:                                               ; preds = %14, %27
  %34 = shl i64 %23, 1
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 %24
  %36 = load i8, ptr %35, align 1, !tbaa !31
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds nuw [256 x i64], ptr @ZSTD_ldm_gearTab, i64 0, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !28
  %40 = add i64 %39, %34
  %41 = or disjoint i64 %15, 2
  %42 = and i64 %40, %8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50, !prof !35

44:                                               ; preds = %33
  %45 = load i32, ptr %4, align 4, !tbaa !27
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds nuw i64, ptr %3, i64 %46
  store i64 %41, ptr %47, align 8, !tbaa !28
  %48 = add i32 %45, 1
  store i32 %48, ptr %4, align 4, !tbaa !27
  %49 = icmp eq i32 %48, 64
  br i1 %49, label %111, label %50

50:                                               ; preds = %33, %44
  %51 = shl i64 %40, 1
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 %41
  %53 = load i8, ptr %52, align 1, !tbaa !31
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds nuw [256 x i64], ptr @ZSTD_ldm_gearTab, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !28
  %57 = add i64 %56, %51
  %58 = or disjoint i64 %15, 3
  %59 = and i64 %57, %8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %67, !prof !35

61:                                               ; preds = %50
  %62 = load i32, ptr %4, align 4, !tbaa !27
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds nuw i64, ptr %3, i64 %63
  store i64 %58, ptr %64, align 8, !tbaa !28
  %65 = add i32 %62, 1
  store i32 %65, ptr %4, align 4, !tbaa !27
  %66 = icmp eq i32 %65, 64
  br i1 %66, label %111, label %67

67:                                               ; preds = %50, %61
  %68 = shl i64 %57, 1
  %69 = getelementptr inbounds nuw i8, ptr %1, i64 %58
  %70 = load i8, ptr %69, align 1, !tbaa !31
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds nuw [256 x i64], ptr @ZSTD_ldm_gearTab, i64 0, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !28
  %74 = add i64 %73, %68
  %75 = add i64 %15, 4
  %76 = and i64 %74, %8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %84, !prof !35

78:                                               ; preds = %67
  %79 = load i32, ptr %4, align 4, !tbaa !27
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds nuw i64, ptr %3, i64 %80
  store i64 %75, ptr %81, align 8, !tbaa !28
  %82 = add i32 %79, 1
  store i32 %82, ptr %4, align 4, !tbaa !27
  %83 = icmp eq i32 %82, 64
  br i1 %83, label %111, label %84

84:                                               ; preds = %78, %67
  %85 = or disjoint i64 %75, 3
  %86 = icmp ult i64 %85, %2
  br i1 %86, label %14, label %10, !llvm.loop !36

87:                                               ; preds = %10, %110
  %88 = phi i64 [ %97, %110 ], [ %12, %10 ]
  %89 = phi i64 [ %96, %110 ], [ %11, %10 ]
  %90 = shl i64 %89, 1
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 %88
  %92 = load i8, ptr %91, align 1, !tbaa !31
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds nuw [256 x i64], ptr @ZSTD_ldm_gearTab, i64 0, i64 %93
  %95 = load i64, ptr %94, align 8, !tbaa !28
  %96 = add i64 %95, %90
  %97 = add nuw i64 %88, 1
  %98 = and i64 %96, %8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %108, !prof !35

100:                                              ; preds = %87
  %101 = load i32, ptr %4, align 4, !tbaa !27
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds nuw i64, ptr %3, i64 %102
  store i64 %97, ptr %103, align 8, !tbaa !28
  %104 = add i32 %101, 1
  store i32 %104, ptr %4, align 4, !tbaa !27
  %105 = icmp ne i32 %104, 64
  %106 = icmp ult i64 %97, %2
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %110, label %111

108:                                              ; preds = %87
  %109 = icmp ult i64 %97, %2
  br i1 %109, label %110, label %111

110:                                              ; preds = %108, %100
  br label %87, !llvm.loop !37

111:                                              ; preds = %78, %61, %44, %27, %100, %108, %10
  %112 = phi i64 [ %11, %10 ], [ %96, %108 ], [ %96, %100 ], [ %74, %78 ], [ %57, %61 ], [ %40, %44 ], [ %23, %27 ]
  %113 = phi i64 [ %12, %10 ], [ %97, %108 ], [ %97, %100 ], [ %75, %78 ], [ %58, %61 ], [ %41, %44 ], [ %24, %27 ]
  store i64 %112, ptr %0, align 8, !tbaa !23
  ret i64 %113
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64(ptr noundef captures(none), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_ldm_generateSequences(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 {
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
  br i1 %17, label %676, label %18

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

37:                                               ; preds = %18, %672
  %38 = phi i64 [ %36, %18 ], [ %661, %672 ]
  %39 = phi i64 [ 0, %18 ], [ %674, %672 ]
  %40 = phi i64 [ 0, %18 ], [ %673, %672 ]
  %41 = load i64, ptr %20, align 8, !tbaa !40
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %676

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
  br label %111

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
  %69 = load ptr, ptr %24, align 8, !tbaa !42
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 %67
  store ptr %70, ptr %24, align 8, !tbaa !42
  %71 = load i32, ptr %25, align 4, !tbaa !43
  %72 = icmp ult i32 %71, %65
  %73 = sub i32 %71, %66
  %74 = select i1 %72, i32 2, i32 %73
  store i32 %74, ptr %25, align 4, !tbaa !43
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
  br i1 %84, label %100, label %85

85:                                               ; preds = %60
  %86 = and i64 %82, 4294967294
  %87 = getelementptr inbounds i8, ptr %81, i64 8
  br label %88

88:                                               ; preds = %88, %85
  %89 = phi i64 [ 0, %85 ], [ %97, %88 ]
  %90 = phi i64 [ 0, %85 ], [ %98, %88 ]
  %91 = getelementptr inbounds nuw %struct.ldmEntry_t, ptr %81, i64 %89
  %92 = load i32, ptr %91, align 4, !tbaa !46
  %93 = tail call i32 @llvm.usub.sat.i32(i32 %92, i32 %66)
  store i32 %93, ptr %91, align 4, !tbaa !46
  %94 = getelementptr inbounds %struct.ldmEntry_t, ptr %87, i64 %89
  %95 = load i32, ptr %94, align 4, !tbaa !46
  %96 = tail call i32 @llvm.usub.sat.i32(i32 %95, i32 %66)
  store i32 %96, ptr %94, align 4, !tbaa !46
  %97 = add nuw nsw i64 %89, 2
  %98 = add i64 %90, 2
  %99 = icmp eq i64 %98, %86
  br i1 %99, label %100, label %88, !llvm.loop !48

100:                                              ; preds = %88, %60
  %101 = phi i64 [ 0, %60 ], [ %97, %88 ]
  %102 = icmp eq i64 %83, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds nuw %struct.ldmEntry_t, ptr %81, i64 %101
  %105 = load i32, ptr %104, align 4, !tbaa !46
  %106 = tail call i32 @llvm.usub.sat.i32(i32 %105, i32 %66)
  store i32 %106, ptr %104, align 4, !tbaa !46
  br label %107

107:                                              ; preds = %100, %103
  store i32 0, ptr %21, align 8, !tbaa !49
  %108 = ptrtoint ptr %68 to i64
  %109 = sub i64 %51, %108
  %110 = trunc i64 %109 to i32
  br label %111

111:                                              ; preds = %58, %107
  %112 = phi i32 [ %56, %58 ], [ %110, %107 ]
  %113 = phi i64 [ %54, %58 ], [ %108, %107 ]
  %114 = phi i32 [ %59, %58 ], [ 0, %107 ]
  %115 = phi ptr [ %53, %58 ], [ %68, %107 ]
  %116 = add i32 %114, %10
  %117 = icmp ult i32 %116, %112
  %118 = load i32, ptr %25, align 4, !tbaa !43
  br i1 %117, label %121, label %119

119:                                              ; preds = %111
  %120 = load i32, ptr %26, align 8, !tbaa !44
  br label %132

121:                                              ; preds = %111
  %122 = sub i32 %112, %10
  %123 = icmp ult i32 %118, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 %122, ptr %25, align 4, !tbaa !43
  br label %125

125:                                              ; preds = %124, %121
  %126 = phi i32 [ %122, %124 ], [ %118, %121 ]
  %127 = load i32, ptr %26, align 8, !tbaa !44
  %128 = icmp ult i32 %127, %126
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 %126, ptr %26, align 8, !tbaa !44
  br label %130

130:                                              ; preds = %129, %125
  %131 = phi i32 [ %126, %129 ], [ %127, %125 ]
  store i32 0, ptr %21, align 4, !tbaa !27
  br label %132

132:                                              ; preds = %119, %130
  %133 = phi i32 [ %118, %119 ], [ %126, %130 ]
  %134 = phi i32 [ %120, %119 ], [ %131, %130 ]
  %135 = icmp ult i32 %133, %134
  %136 = load i32, ptr %29, align 4, !tbaa !15
  %137 = freeze i32 %136
  %138 = load i32, ptr %30, align 4, !tbaa !16
  %139 = shl nuw i32 1, %138
  %140 = load i32, ptr %23, align 4, !tbaa !13
  %141 = sub i32 %140, %138
  br i1 %135, label %142, label %144

142:                                              ; preds = %132
  %143 = load ptr, ptr %24, align 8, !tbaa !50
  br label %144

144:                                              ; preds = %142, %132
  %145 = phi i32 [ %133, %142 ], [ %134, %132 ]
  %146 = phi ptr [ %143, %142 ], [ null, %132 ]
  %147 = zext i32 %145 to i64
  %148 = getelementptr inbounds nuw i8, ptr %146, i64 %147
  %149 = select i1 %135, ptr %148, ptr null
  %150 = zext i32 %134 to i64
  %151 = getelementptr inbounds nuw i8, ptr %146, i64 %150
  %152 = select i1 %135, ptr %151, ptr null
  %153 = getelementptr inbounds nuw i8, ptr %115, i64 %150
  %154 = getelementptr inbounds nuw i8, ptr %45, i64 %52
  %155 = getelementptr inbounds i8, ptr %154, i64 -8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %156 = zext i32 %137 to i64
  %157 = icmp ult i64 %52, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %144
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %660

159:                                              ; preds = %144
  %160 = load i32, ptr %33, align 4, !tbaa !12
  %161 = tail call i32 @llvm.umin.i32(i32 %137, i32 64)
  store i64 4294967295, ptr %6, align 8, !tbaa !23
  %162 = add i32 %160, -1
  %163 = icmp ult i32 %162, %161
  %164 = zext nneg i32 %160 to i64
  %165 = shl nsw i64 -1, %164
  %166 = xor i64 %165, -1
  %167 = sub nuw nsw i32 %161, %160
  %168 = select i1 %163, i32 %167, i32 0
  %169 = zext nneg i32 %168 to i64
  %170 = shl i64 %166, %169
  store i64 %170, ptr %34, align 8, !tbaa !26
  %171 = getelementptr inbounds nuw i8, ptr %45, i64 %156
  %172 = icmp ult ptr %171, %155
  br i1 %172, label %173, label %655

173:                                              ; preds = %159
  %174 = ptrtoint ptr %155 to i64
  %175 = sub nsw i64 0, %156
  %176 = shl nsw i32 -1, %141
  %177 = xor i32 %176, -1
  %178 = zext i32 %139 to i64
  %179 = getelementptr inbounds i8, ptr %154, i64 -7
  %180 = getelementptr inbounds i8, ptr %154, i64 -3
  %181 = getelementptr inbounds i8, ptr %154, i64 -1
  %182 = icmp ugt ptr %152, %149
  %183 = shl nuw nsw i64 %178, 3
  br label %184

184:                                              ; preds = %647, %173
  %185 = phi ptr [ %45, %173 ], [ %649, %647 ]
  %186 = phi ptr [ %171, %173 ], [ %650, %647 ]
  store i32 0, ptr %7, align 4, !tbaa !27
  %187 = ptrtoint ptr %186 to i64
  %188 = sub i64 %174, %187
  %189 = call fastcc i64 @ZSTD_ldm_gear_feed(ptr noundef %6, ptr noundef %186, i64 noundef %188, ptr noundef nonnull %31, ptr noundef %7)
  %190 = load i32, ptr %7, align 4, !tbaa !27
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %647, label %192

192:                                              ; preds = %184
  %193 = getelementptr i8, ptr %186, i64 %175
  %194 = load i32, ptr %30, align 4, !tbaa !16
  %195 = load ptr, ptr %28, align 8, !tbaa !29
  %196 = zext nneg i32 %194 to i64
  %197 = zext i32 %190 to i64
  br label %200

198:                                              ; preds = %200
  %199 = getelementptr inbounds nuw i8, ptr %186, i64 %189
  br label %219

200:                                              ; preds = %200, %192
  %201 = phi i64 [ 0, %192 ], [ %217, %200 ]
  %202 = getelementptr inbounds nuw i64, ptr %31, i64 %201
  %203 = load i64, ptr %202, align 8, !tbaa !28
  %204 = getelementptr i8, ptr %193, i64 %203
  %205 = tail call i64 @ZSTD_XXH64(ptr noundef captures(none) %204, i64 noundef %156, i64 noundef 0) #15
  %206 = trunc i64 %205 to i32
  %207 = and i32 %206, %177
  %208 = getelementptr inbounds nuw %struct.ldmMatchCandidate_t, ptr %32, i64 %201
  store ptr %204, ptr %208, align 8, !tbaa !51
  %209 = getelementptr inbounds nuw i8, ptr %208, i64 8
  store i32 %207, ptr %209, align 8, !tbaa !53
  %210 = lshr i64 %205, 32
  %211 = trunc nuw i64 %210 to i32
  %212 = getelementptr inbounds nuw i8, ptr %208, i64 12
  store i32 %211, ptr %212, align 4, !tbaa !54
  %213 = zext nneg i32 %207 to i64
  %214 = shl i64 %213, %196
  %215 = getelementptr inbounds nuw %struct.ldmEntry_t, ptr %195, i64 %214
  %216 = getelementptr inbounds nuw i8, ptr %208, i64 16
  store ptr %215, ptr %216, align 8, !tbaa !55
  tail call void @llvm.prefetch.p0(ptr %215, i32 0, i32 3, i32 1)
  %217 = add nuw nsw i64 %201, 1
  %218 = icmp eq i64 %217, %197
  br i1 %218, label %198, label %200, !llvm.loop !56

219:                                              ; preds = %643, %198
  %220 = phi i64 [ 0, %198 ], [ %645, %643 ]
  %221 = phi ptr [ %185, %198 ], [ %644, %643 ]
  %222 = getelementptr inbounds nuw %struct.ldmMatchCandidate_t, ptr %32, i64 %220
  %223 = load ptr, ptr %222, align 8, !tbaa !51
  %224 = getelementptr inbounds nuw i8, ptr %222, i64 12
  %225 = load i32, ptr %224, align 4, !tbaa !54
  %226 = getelementptr inbounds nuw i8, ptr %222, i64 8
  %227 = load i32, ptr %226, align 8, !tbaa !53
  %228 = ptrtoint ptr %223 to i64
  %229 = sub i64 %228, %113
  %230 = trunc i64 %229 to i32
  %231 = icmp ult ptr %223, %221
  br i1 %231, label %621, label %232

232:                                              ; preds = %219
  %233 = getelementptr inbounds nuw i8, ptr %222, i64 16
  %234 = load ptr, ptr %233, align 8, !tbaa !55
  %235 = getelementptr inbounds nuw i8, ptr %234, i64 %183
  %236 = icmp ult ptr %223, %179
  %237 = icmp ugt ptr %223, %221
  br i1 %135, label %238, label %461

238:                                              ; preds = %232, %454
  %239 = phi i64 [ %458, %454 ], [ 0, %232 ]
  %240 = phi i64 [ %457, %454 ], [ 0, %232 ]
  %241 = phi i64 [ %456, %454 ], [ 0, %232 ]
  %242 = phi ptr [ %459, %454 ], [ %234, %232 ]
  %243 = phi ptr [ %455, %454 ], [ null, %232 ]
  %244 = getelementptr inbounds nuw i8, ptr %242, i64 4
  %245 = load i32, ptr %244, align 4, !tbaa !57
  %246 = icmp eq i32 %245, %225
  br i1 %246, label %247, label %454

247:                                              ; preds = %238
  %248 = load i32, ptr %242, align 4, !tbaa !46
  %249 = icmp ugt i32 %248, %145
  br i1 %249, label %250, label %454

250:                                              ; preds = %247
  %251 = icmp ult i32 %248, %134
  %252 = select i1 %251, ptr %146, ptr %115
  %253 = zext i32 %248 to i64
  %254 = getelementptr inbounds nuw i8, ptr %252, i64 %253
  %255 = select i1 %251, ptr %151, ptr %154
  %256 = ptrtoint ptr %255 to i64
  %257 = ptrtoint ptr %254 to i64
  %258 = sub i64 %256, %257
  %259 = getelementptr inbounds i8, ptr %223, i64 %258
  %260 = icmp ult ptr %259, %50
  %261 = select i1 %260, ptr %259, ptr %154
  %262 = getelementptr inbounds i8, ptr %261, i64 -7
  %263 = icmp ult ptr %223, %262
  br i1 %263, label %264, label %278

264:                                              ; preds = %250
  %265 = load i64, ptr %254, align 1, !tbaa !28
  %266 = load i64, ptr %223, align 1, !tbaa !28
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %272, label %268

268:                                              ; preds = %264
  %269 = xor i64 %266, %265
  %270 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %269, i1 true)
  %271 = lshr i64 %270, 3
  br label %327

272:                                              ; preds = %264, %316
  %273 = phi ptr [ %276, %316 ], [ %254, %264 ]
  %274 = phi ptr [ %275, %316 ], [ %223, %264 ]
  %275 = getelementptr inbounds nuw i8, ptr %274, i64 8
  %276 = getelementptr inbounds nuw i8, ptr %273, i64 8
  %277 = icmp ult ptr %275, %262
  br i1 %277, label %316, label %278

278:                                              ; preds = %272, %250
  %279 = phi ptr [ %254, %250 ], [ %276, %272 ]
  %280 = phi ptr [ %223, %250 ], [ %275, %272 ]
  %281 = getelementptr inbounds i8, ptr %261, i64 -3
  %282 = icmp ult ptr %280, %281
  br i1 %282, label %283, label %290

283:                                              ; preds = %278
  %284 = load i32, ptr %279, align 1, !tbaa !27
  %285 = load i32, ptr %280, align 1, !tbaa !27
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %283
  %288 = getelementptr inbounds nuw i8, ptr %280, i64 4
  %289 = getelementptr inbounds nuw i8, ptr %279, i64 4
  br label %290

290:                                              ; preds = %287, %283, %278
  %291 = phi ptr [ %289, %287 ], [ %279, %283 ], [ %279, %278 ]
  %292 = phi ptr [ %288, %287 ], [ %280, %283 ], [ %280, %278 ]
  %293 = getelementptr inbounds i8, ptr %261, i64 -1
  %294 = icmp ult ptr %292, %293
  br i1 %294, label %295, label %302

295:                                              ; preds = %290
  %296 = load i16, ptr %291, align 1, !tbaa !58
  %297 = load i16, ptr %292, align 1, !tbaa !58
  %298 = icmp eq i16 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = getelementptr inbounds nuw i8, ptr %292, i64 2
  %301 = getelementptr inbounds nuw i8, ptr %291, i64 2
  br label %302

302:                                              ; preds = %299, %295, %290
  %303 = phi ptr [ %301, %299 ], [ %291, %295 ], [ %291, %290 ]
  %304 = phi ptr [ %300, %299 ], [ %292, %295 ], [ %292, %290 ]
  %305 = icmp ult ptr %304, %261
  br i1 %305, label %306, label %312

306:                                              ; preds = %302
  %307 = load i8, ptr %303, align 1, !tbaa !31
  %308 = load i8, ptr %304, align 1, !tbaa !31
  %309 = icmp eq i8 %307, %308
  %310 = zext i1 %309 to i64
  %311 = getelementptr inbounds nuw i8, ptr %304, i64 %310
  br label %312

312:                                              ; preds = %306, %302
  %313 = phi ptr [ %304, %302 ], [ %311, %306 ]
  %314 = ptrtoint ptr %313 to i64
  %315 = sub i64 %314, %228
  br label %327

316:                                              ; preds = %272
  %317 = load i64, ptr %276, align 1, !tbaa !28
  %318 = load i64, ptr %275, align 1, !tbaa !28
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %272, label %320

320:                                              ; preds = %316
  %321 = xor i64 %318, %317
  %322 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %321, i1 true)
  %323 = lshr i64 %322, 3
  %324 = getelementptr inbounds nuw i8, ptr %275, i64 %323
  %325 = ptrtoint ptr %324 to i64
  %326 = sub i64 %325, %228
  br label %327

327:                                              ; preds = %320, %312, %268
  %328 = phi i64 [ %315, %312 ], [ %271, %268 ], [ %326, %320 ]
  %329 = getelementptr inbounds nuw i8, ptr %254, i64 %328
  %330 = icmp eq ptr %329, %255
  br i1 %330, label %331, label %400

331:                                              ; preds = %327
  %332 = getelementptr inbounds nuw i8, ptr %223, i64 %328
  %333 = icmp ult ptr %332, %179
  br i1 %333, label %334, label %348

334:                                              ; preds = %331
  %335 = load i64, ptr %153, align 1, !tbaa !28
  %336 = load i64, ptr %332, align 1, !tbaa !28
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %342, label %338

338:                                              ; preds = %334
  %339 = xor i64 %336, %335
  %340 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %339, i1 true)
  %341 = lshr i64 %340, 3
  br label %397

342:                                              ; preds = %334, %385
  %343 = phi ptr [ %346, %385 ], [ %153, %334 ]
  %344 = phi ptr [ %345, %385 ], [ %332, %334 ]
  %345 = getelementptr inbounds nuw i8, ptr %344, i64 8
  %346 = getelementptr inbounds nuw i8, ptr %343, i64 8
  %347 = icmp ult ptr %345, %179
  br i1 %347, label %385, label %348

348:                                              ; preds = %342, %331
  %349 = phi ptr [ %153, %331 ], [ %346, %342 ]
  %350 = phi ptr [ %332, %331 ], [ %345, %342 ]
  %351 = icmp ult ptr %350, %180
  br i1 %351, label %352, label %359

352:                                              ; preds = %348
  %353 = load i32, ptr %349, align 1, !tbaa !27
  %354 = load i32, ptr %350, align 1, !tbaa !27
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %359

356:                                              ; preds = %352
  %357 = getelementptr inbounds nuw i8, ptr %350, i64 4
  %358 = getelementptr inbounds nuw i8, ptr %349, i64 4
  br label %359

359:                                              ; preds = %356, %352, %348
  %360 = phi ptr [ %358, %356 ], [ %349, %352 ], [ %349, %348 ]
  %361 = phi ptr [ %357, %356 ], [ %350, %352 ], [ %350, %348 ]
  %362 = icmp ult ptr %361, %181
  br i1 %362, label %363, label %370

363:                                              ; preds = %359
  %364 = load i16, ptr %360, align 1, !tbaa !58
  %365 = load i16, ptr %361, align 1, !tbaa !58
  %366 = icmp eq i16 %364, %365
  br i1 %366, label %367, label %370

367:                                              ; preds = %363
  %368 = getelementptr inbounds nuw i8, ptr %361, i64 2
  %369 = getelementptr inbounds nuw i8, ptr %360, i64 2
  br label %370

370:                                              ; preds = %367, %363, %359
  %371 = phi ptr [ %369, %367 ], [ %360, %363 ], [ %360, %359 ]
  %372 = phi ptr [ %368, %367 ], [ %361, %363 ], [ %361, %359 ]
  %373 = icmp ult ptr %372, %50
  br i1 %373, label %374, label %380

374:                                              ; preds = %370
  %375 = load i8, ptr %371, align 1, !tbaa !31
  %376 = load i8, ptr %372, align 1, !tbaa !31
  %377 = icmp eq i8 %375, %376
  %378 = zext i1 %377 to i64
  %379 = getelementptr inbounds nuw i8, ptr %372, i64 %378
  br label %380

380:                                              ; preds = %374, %370
  %381 = phi ptr [ %372, %370 ], [ %379, %374 ]
  %382 = ptrtoint ptr %381 to i64
  %383 = ptrtoint ptr %332 to i64
  %384 = sub i64 %382, %383
  br label %397

385:                                              ; preds = %342
  %386 = load i64, ptr %346, align 1, !tbaa !28
  %387 = load i64, ptr %345, align 1, !tbaa !28
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %342, label %389

389:                                              ; preds = %385
  %390 = xor i64 %387, %386
  %391 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %390, i1 true)
  %392 = lshr i64 %391, 3
  %393 = getelementptr inbounds nuw i8, ptr %345, i64 %392
  %394 = ptrtoint ptr %393 to i64
  %395 = ptrtoint ptr %332 to i64
  %396 = sub i64 %394, %395
  br label %397

397:                                              ; preds = %389, %380, %338
  %398 = phi i64 [ %384, %380 ], [ %341, %338 ], [ %396, %389 ]
  %399 = add i64 %398, %328
  br label %400

400:                                              ; preds = %397, %327
  %401 = phi i64 [ %399, %397 ], [ %328, %327 ]
  %402 = icmp ult i64 %401, %156
  br i1 %402, label %454, label %403

403:                                              ; preds = %400
  %404 = select i1 %251, ptr %149, ptr %153
  %405 = icmp ugt ptr %254, %404
  %406 = and i1 %237, %405
  br i1 %406, label %407, label %421

407:                                              ; preds = %403, %416
  %408 = phi i64 [ %417, %416 ], [ 0, %403 ]
  %409 = phi ptr [ %411, %416 ], [ %223, %403 ]
  %410 = phi ptr [ %413, %416 ], [ %254, %403 ]
  %411 = getelementptr inbounds i8, ptr %409, i64 -1
  %412 = load i8, ptr %411, align 1, !tbaa !31
  %413 = getelementptr inbounds i8, ptr %410, i64 -1
  %414 = load i8, ptr %413, align 1, !tbaa !31
  %415 = icmp eq i8 %412, %414
  br i1 %415, label %416, label %421

416:                                              ; preds = %407
  %417 = add i64 %408, 1
  %418 = icmp ugt ptr %411, %221
  %419 = icmp ugt ptr %413, %404
  %420 = and i1 %418, %419
  br i1 %420, label %407, label %421, !llvm.loop !60

421:                                              ; preds = %416, %407, %403
  %422 = phi i64 [ 0, %403 ], [ %408, %407 ], [ %417, %416 ]
  %423 = sub i64 0, %422
  %424 = getelementptr inbounds i8, ptr %254, i64 %423
  %425 = icmp ne ptr %424, %404
  %426 = icmp eq ptr %404, %149
  %427 = or i1 %426, %425
  br i1 %427, label %449, label %428

428:                                              ; preds = %421
  %429 = getelementptr inbounds i8, ptr %223, i64 %423
  %430 = icmp ugt ptr %429, %221
  %431 = and i1 %182, %430
  br i1 %431, label %432, label %446

432:                                              ; preds = %428, %441
  %433 = phi i64 [ %442, %441 ], [ 0, %428 ]
  %434 = phi ptr [ %436, %441 ], [ %429, %428 ]
  %435 = phi ptr [ %438, %441 ], [ %152, %428 ]
  %436 = getelementptr inbounds i8, ptr %434, i64 -1
  %437 = load i8, ptr %436, align 1, !tbaa !31
  %438 = getelementptr inbounds i8, ptr %435, i64 -1
  %439 = load i8, ptr %438, align 1, !tbaa !31
  %440 = icmp eq i8 %437, %439
  br i1 %440, label %441, label %446

441:                                              ; preds = %432
  %442 = add i64 %433, 1
  %443 = icmp ugt ptr %436, %221
  %444 = icmp ugt ptr %438, %149
  %445 = and i1 %443, %444
  br i1 %445, label %432, label %446, !llvm.loop !60

446:                                              ; preds = %441, %432, %428
  %447 = phi i64 [ 0, %428 ], [ %433, %432 ], [ %442, %441 ]
  %448 = add i64 %447, %422
  br label %449

449:                                              ; preds = %446, %421
  %450 = phi i64 [ %448, %446 ], [ %422, %421 ]
  %451 = add i64 %450, %401
  %452 = icmp ugt i64 %451, %241
  br i1 %452, label %453, label %454

453:                                              ; preds = %449
  br label %454

454:                                              ; preds = %453, %449, %400, %247, %238
  %455 = phi ptr [ %243, %247 ], [ %243, %238 ], [ %242, %453 ], [ %243, %449 ], [ %243, %400 ]
  %456 = phi i64 [ %241, %247 ], [ %241, %238 ], [ %451, %453 ], [ %241, %449 ], [ %241, %400 ]
  %457 = phi i64 [ %240, %247 ], [ %240, %238 ], [ %450, %453 ], [ %240, %449 ], [ %240, %400 ]
  %458 = phi i64 [ %239, %247 ], [ %239, %238 ], [ %401, %453 ], [ %239, %449 ], [ %239, %400 ]
  %459 = getelementptr inbounds nuw i8, ptr %242, i64 8
  %460 = icmp ult ptr %459, %235
  br i1 %460, label %238, label %569, !llvm.loop !61

461:                                              ; preds = %232, %562
  %462 = phi i64 [ %566, %562 ], [ 0, %232 ]
  %463 = phi i64 [ %565, %562 ], [ 0, %232 ]
  %464 = phi i64 [ %564, %562 ], [ 0, %232 ]
  %465 = phi ptr [ %567, %562 ], [ %234, %232 ]
  %466 = phi ptr [ %563, %562 ], [ null, %232 ]
  %467 = getelementptr inbounds nuw i8, ptr %465, i64 4
  %468 = load i32, ptr %467, align 4, !tbaa !57
  %469 = icmp eq i32 %468, %225
  br i1 %469, label %470, label %562

470:                                              ; preds = %461
  %471 = load i32, ptr %465, align 4, !tbaa !46
  %472 = icmp ugt i32 %471, %145
  br i1 %472, label %473, label %562

473:                                              ; preds = %470
  %474 = zext i32 %471 to i64
  %475 = getelementptr inbounds nuw i8, ptr %115, i64 %474
  br i1 %236, label %476, label %501

476:                                              ; preds = %473
  %477 = load i64, ptr %475, align 1, !tbaa !28
  %478 = load i64, ptr %223, align 1, !tbaa !28
  %479 = icmp eq i64 %477, %478
  br i1 %479, label %484, label %480

480:                                              ; preds = %476
  %481 = xor i64 %478, %477
  %482 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %481, i1 true)
  %483 = lshr i64 %482, 3
  br label %537

484:                                              ; preds = %476, %490
  %485 = phi ptr [ %488, %490 ], [ %475, %476 ]
  %486 = phi ptr [ %487, %490 ], [ %223, %476 ]
  %487 = getelementptr inbounds nuw i8, ptr %486, i64 8
  %488 = getelementptr inbounds nuw i8, ptr %485, i64 8
  %489 = icmp ult ptr %487, %179
  br i1 %489, label %490, label %501

490:                                              ; preds = %484
  %491 = load i64, ptr %488, align 1, !tbaa !28
  %492 = load i64, ptr %487, align 1, !tbaa !28
  %493 = icmp eq i64 %491, %492
  br i1 %493, label %484, label %494

494:                                              ; preds = %490
  %495 = xor i64 %492, %491
  %496 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %495, i1 true)
  %497 = lshr i64 %496, 3
  %498 = getelementptr inbounds nuw i8, ptr %487, i64 %497
  %499 = ptrtoint ptr %498 to i64
  %500 = sub i64 %499, %228
  br label %537

501:                                              ; preds = %484, %473
  %502 = phi ptr [ %475, %473 ], [ %488, %484 ]
  %503 = phi ptr [ %223, %473 ], [ %487, %484 ]
  %504 = icmp ult ptr %503, %180
  br i1 %504, label %505, label %512

505:                                              ; preds = %501
  %506 = load i32, ptr %502, align 1, !tbaa !27
  %507 = load i32, ptr %503, align 1, !tbaa !27
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %512

509:                                              ; preds = %505
  %510 = getelementptr inbounds nuw i8, ptr %503, i64 4
  %511 = getelementptr inbounds nuw i8, ptr %502, i64 4
  br label %512

512:                                              ; preds = %509, %505, %501
  %513 = phi ptr [ %511, %509 ], [ %502, %505 ], [ %502, %501 ]
  %514 = phi ptr [ %510, %509 ], [ %503, %505 ], [ %503, %501 ]
  %515 = icmp ult ptr %514, %181
  br i1 %515, label %516, label %523

516:                                              ; preds = %512
  %517 = load i16, ptr %513, align 1, !tbaa !58
  %518 = load i16, ptr %514, align 1, !tbaa !58
  %519 = icmp eq i16 %517, %518
  br i1 %519, label %520, label %523

520:                                              ; preds = %516
  %521 = getelementptr inbounds nuw i8, ptr %514, i64 2
  %522 = getelementptr inbounds nuw i8, ptr %513, i64 2
  br label %523

523:                                              ; preds = %520, %516, %512
  %524 = phi ptr [ %522, %520 ], [ %513, %516 ], [ %513, %512 ]
  %525 = phi ptr [ %521, %520 ], [ %514, %516 ], [ %514, %512 ]
  %526 = icmp ult ptr %525, %50
  br i1 %526, label %527, label %533

527:                                              ; preds = %523
  %528 = load i8, ptr %524, align 1, !tbaa !31
  %529 = load i8, ptr %525, align 1, !tbaa !31
  %530 = icmp eq i8 %528, %529
  %531 = zext i1 %530 to i64
  %532 = getelementptr inbounds nuw i8, ptr %525, i64 %531
  br label %533

533:                                              ; preds = %527, %523
  %534 = phi ptr [ %525, %523 ], [ %532, %527 ]
  %535 = ptrtoint ptr %534 to i64
  %536 = sub i64 %535, %228
  br label %537

537:                                              ; preds = %533, %494, %480
  %538 = phi i64 [ %536, %533 ], [ %483, %480 ], [ %500, %494 ]
  %539 = icmp ult i64 %538, %156
  br i1 %539, label %562, label %540

540:                                              ; preds = %537
  %541 = icmp ugt i32 %471, %134
  %542 = and i1 %237, %541
  br i1 %542, label %543, label %557

543:                                              ; preds = %540, %552
  %544 = phi i64 [ %553, %552 ], [ 0, %540 ]
  %545 = phi ptr [ %547, %552 ], [ %223, %540 ]
  %546 = phi ptr [ %549, %552 ], [ %475, %540 ]
  %547 = getelementptr inbounds i8, ptr %545, i64 -1
  %548 = load i8, ptr %547, align 1, !tbaa !31
  %549 = getelementptr inbounds i8, ptr %546, i64 -1
  %550 = load i8, ptr %549, align 1, !tbaa !31
  %551 = icmp eq i8 %548, %550
  br i1 %551, label %552, label %557

552:                                              ; preds = %543
  %553 = add i64 %544, 1
  %554 = icmp ugt ptr %547, %221
  %555 = icmp ugt ptr %549, %153
  %556 = and i1 %554, %555
  br i1 %556, label %543, label %557, !llvm.loop !60

557:                                              ; preds = %552, %543, %540
  %558 = phi i64 [ 0, %540 ], [ %553, %552 ], [ %544, %543 ]
  %559 = add i64 %558, %538
  %560 = icmp ugt i64 %559, %464
  br i1 %560, label %561, label %562

561:                                              ; preds = %557
  br label %562

562:                                              ; preds = %561, %557, %537, %470, %461
  %563 = phi ptr [ %466, %470 ], [ %466, %461 ], [ %465, %561 ], [ %466, %557 ], [ %466, %537 ]
  %564 = phi i64 [ %464, %470 ], [ %464, %461 ], [ %559, %561 ], [ %464, %557 ], [ %464, %537 ]
  %565 = phi i64 [ %463, %470 ], [ %463, %461 ], [ %558, %561 ], [ %463, %557 ], [ %463, %537 ]
  %566 = phi i64 [ %462, %470 ], [ %462, %461 ], [ %538, %561 ], [ %462, %557 ], [ %462, %537 ]
  %567 = getelementptr inbounds nuw i8, ptr %465, i64 8
  %568 = icmp ult ptr %567, %235
  br i1 %568, label %461, label %569, !llvm.loop !61

569:                                              ; preds = %562, %454
  %570 = phi ptr [ %455, %454 ], [ %563, %562 ]
  %571 = phi i64 [ %457, %454 ], [ %565, %562 ]
  %572 = phi i64 [ %458, %454 ], [ %566, %562 ]
  %573 = icmp eq ptr %570, null
  br i1 %573, label %621, label %574

574:                                              ; preds = %569
  %575 = load i64, ptr %19, align 8, !tbaa !38
  %576 = load i64, ptr %20, align 8, !tbaa !40
  %577 = icmp eq i64 %575, %576
  br i1 %577, label %578, label %579

578:                                              ; preds = %574
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %676

579:                                              ; preds = %574
  %580 = load ptr, ptr %1, align 8, !tbaa !62
  %581 = getelementptr inbounds nuw %struct.rawSeq, ptr %580, i64 %575
  %582 = add i64 %572, %571
  %583 = load i32, ptr %570, align 4, !tbaa !46
  %584 = sub i32 %230, %583
  %585 = sub i64 0, %571
  %586 = getelementptr inbounds i8, ptr %223, i64 %585
  %587 = ptrtoint ptr %586 to i64
  %588 = ptrtoint ptr %221 to i64
  %589 = sub i64 %587, %588
  %590 = trunc i64 %589 to i32
  %591 = getelementptr inbounds nuw i8, ptr %581, i64 4
  store i32 %590, ptr %591, align 4, !tbaa !63
  %592 = trunc i64 %582 to i32
  %593 = getelementptr inbounds nuw i8, ptr %581, i64 8
  store i32 %592, ptr %593, align 4, !tbaa !65
  store i32 %584, ptr %581, align 4, !tbaa !66
  %594 = add i64 %575, 1
  store i64 %594, ptr %19, align 8, !tbaa !38
  %595 = zext i32 %227 to i64
  %596 = load i32, ptr %30, align 4, !tbaa !16
  %597 = zext i32 %225 to i64
  %598 = shl nuw i64 %597, 32
  %599 = and i64 %229, 4294967295
  %600 = or disjoint i64 %598, %599
  %601 = load ptr, ptr %28, align 8, !tbaa !29
  %602 = load ptr, ptr %35, align 8, !tbaa !30
  %603 = getelementptr inbounds nuw i8, ptr %602, i64 %595
  %604 = load i8, ptr %603, align 1, !tbaa !31
  %605 = zext i8 %604 to i32
  %606 = zext nneg i32 %596 to i64
  %607 = shl i64 %595, %606
  %608 = getelementptr inbounds nuw %struct.ldmEntry_t, ptr %601, i64 %607
  %609 = zext i8 %604 to i64
  %610 = getelementptr inbounds nuw %struct.ldmEntry_t, ptr %608, i64 %609
  store i64 %600, ptr %610, align 4
  %611 = add nuw nsw i32 %605, 1
  %612 = shl nsw i32 -1, %596
  %613 = xor i32 %612, -1
  %614 = and i32 %611, %613
  %615 = trunc i32 %614 to i8
  store i8 %615, ptr %603, align 1, !tbaa !31
  %616 = getelementptr inbounds nuw i8, ptr %223, i64 %572
  %617 = icmp ugt ptr %616, %199
  br i1 %617, label %618, label %643

618:                                              ; preds = %579
  %619 = sub i64 0, %189
  %620 = getelementptr inbounds i8, ptr %616, i64 %619
  br label %647

621:                                              ; preds = %569, %219
  %622 = zext i32 %227 to i64
  %623 = load i32, ptr %30, align 4, !tbaa !16
  %624 = zext i32 %225 to i64
  %625 = shl nuw i64 %624, 32
  %626 = and i64 %229, 4294967295
  %627 = or disjoint i64 %625, %626
  %628 = load ptr, ptr %28, align 8, !tbaa !29
  %629 = load ptr, ptr %35, align 8, !tbaa !30
  %630 = getelementptr inbounds nuw i8, ptr %629, i64 %622
  %631 = load i8, ptr %630, align 1, !tbaa !31
  %632 = zext i8 %631 to i32
  %633 = zext nneg i32 %623 to i64
  %634 = shl i64 %622, %633
  %635 = getelementptr inbounds nuw %struct.ldmEntry_t, ptr %628, i64 %634
  %636 = zext i8 %631 to i64
  %637 = getelementptr inbounds nuw %struct.ldmEntry_t, ptr %635, i64 %636
  store i64 %627, ptr %637, align 4
  %638 = add nuw nsw i32 %632, 1
  %639 = shl nsw i32 -1, %623
  %640 = xor i32 %639, -1
  %641 = and i32 %638, %640
  %642 = trunc i32 %641 to i8
  store i8 %642, ptr %630, align 1, !tbaa !31
  br label %643

643:                                              ; preds = %621, %579
  %644 = phi ptr [ %616, %579 ], [ %221, %621 ]
  %645 = add nuw nsw i64 %220, 1
  %646 = icmp eq i64 %645, %197
  br i1 %646, label %647, label %219, !llvm.loop !67

647:                                              ; preds = %643, %618, %184
  %648 = phi ptr [ %620, %618 ], [ %186, %184 ], [ %186, %643 ]
  %649 = phi ptr [ %616, %618 ], [ %185, %184 ], [ %644, %643 ]
  %650 = getelementptr inbounds nuw i8, ptr %648, i64 %189
  %651 = icmp ult ptr %650, %155
  br i1 %651, label %184, label %652, !llvm.loop !68

652:                                              ; preds = %647
  %653 = ptrtoint ptr %649 to i64
  %654 = sub i64 %51, %653
  br label %655

655:                                              ; preds = %652, %159
  %656 = phi i64 [ %654, %652 ], [ %52, %159 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  %657 = icmp ult i64 %656, -119
  br i1 %657, label %658, label %676

658:                                              ; preds = %655
  %659 = load i64, ptr %19, align 8, !tbaa !38
  br label %660

660:                                              ; preds = %658, %158
  %661 = phi i64 [ %38, %158 ], [ %659, %658 ]
  %662 = phi i64 [ %52, %158 ], [ %656, %658 ]
  %663 = icmp ult i64 %38, %661
  br i1 %663, label %664, label %670

664:                                              ; preds = %660
  %665 = trunc i64 %40 to i32
  %666 = load ptr, ptr %1, align 8, !tbaa !62
  %667 = getelementptr inbounds nuw %struct.rawSeq, ptr %666, i64 %38, i32 1
  %668 = load i32, ptr %667, align 4, !tbaa !63
  %669 = add i32 %668, %665
  store i32 %669, ptr %667, align 4, !tbaa !63
  br label %672

670:                                              ; preds = %660
  %671 = add i64 %52, %40
  br label %672

672:                                              ; preds = %664, %670
  %673 = phi i64 [ %662, %664 ], [ %671, %670 ]
  %674 = add nuw nsw i64 %39, 1
  %675 = icmp eq i64 %674, %16
  br i1 %675, label %676, label %37, !llvm.loop !69

676:                                              ; preds = %672, %37, %655, %5, %578
  %677 = phi i64 [ -70, %578 ], [ 0, %5 ], [ 0, %672 ], [ 0, %37 ], [ %656, %655 ]
  ret i64 %677
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ZSTD_ldm_skipSequences(ptr noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i64, ptr %7, align 8, !tbaa !38
  %9 = load i64, ptr %6, align 8, !tbaa !70
  br label %10

10:                                               ; preds = %5, %42
  %11 = phi i64 [ %9, %5 ], [ %44, %42 ]
  %12 = phi i64 [ %1, %5 ], [ %43, %42 ]
  %13 = icmp ult i64 %11, %8
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !62
  %16 = getelementptr inbounds nuw %struct.rawSeq, ptr %15, i64 %11
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !63
  %19 = zext i32 %18 to i64
  %20 = icmp ugt i64 %12, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = trunc nuw i64 %12 to i32
  %23 = sub i32 %18, %22
  store i32 %23, ptr %17, align 4, !tbaa !63
  br label %46

24:                                               ; preds = %14
  %25 = sub nuw i64 %12, %19
  store i32 0, ptr %17, align 4, !tbaa !63
  %26 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %27 = load i32, ptr %26, align 4, !tbaa !65
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = trunc nuw i64 %25 to i32
  %32 = sub i32 %27, %31
  store i32 %32, ptr %26, align 4, !tbaa !65
  %33 = icmp ult i32 %32, %2
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = add nuw i64 %11, 1
  %36 = icmp ult i64 %35, %8
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %39 = load i32, ptr %38, align 4, !tbaa !63
  %40 = add i32 %39, %32
  store i32 %40, ptr %38, align 4, !tbaa !63
  br label %41

41:                                               ; preds = %37, %34
  store i64 %35, ptr %6, align 8, !tbaa !70
  br label %46

42:                                               ; preds = %24
  %43 = sub nuw i64 %25, %28
  store i32 0, ptr %26, align 4, !tbaa !65
  %44 = add nuw i64 %11, 1
  store i64 %44, ptr %6, align 8, !tbaa !70
  %45 = icmp eq i64 %43, 0
  br i1 %45, label %46, label %10

46:                                               ; preds = %10, %42, %3, %30, %41, %21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load i64, ptr %3, align 8, !tbaa !71
  %5 = add i64 %4, %1
  %6 = trunc i64 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i64, ptr %10, align 8, !tbaa !38
  %12 = load i64, ptr %9, align 8, !tbaa !70
  br label %13

13:                                               ; preds = %8, %28
  %14 = phi i64 [ %12, %8 ], [ %30, %28 ]
  %15 = phi i32 [ %6, %8 ], [ %29, %28 ]
  %16 = icmp ult i64 %14, %11
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !62
  %19 = getelementptr inbounds nuw %struct.rawSeq, ptr %18, i64 %14
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %21 = load i32, ptr %20, align 4, !tbaa !27
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = load i32, ptr %22, align 4, !tbaa !27
  %24 = add i32 %23, %21
  %25 = icmp ult i32 %15, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = zext i32 %15 to i64
  store i64 %27, ptr %3, align 8, !tbaa !71
  br label %32

28:                                               ; preds = %17
  %29 = sub nuw i32 %15, %24
  %30 = add nuw i64 %14, 1
  store i64 %30, ptr %9, align 8, !tbaa !70
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %34, label %13

32:                                               ; preds = %13, %26
  %33 = icmp eq i64 %14, %11
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %2, %32
  store i64 0, ptr %3, align 8, !tbaa !71
  br label %35

35:                                               ; preds = %34, %32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_ldm_blockCompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #9 {
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 272
  %9 = load i32, ptr %8, align 4, !tbaa !72
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 280
  %11 = load i32, ptr %10, align 4, !tbaa !14
  %12 = getelementptr i8, ptr %1, i64 24
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = getelementptr i8, ptr %1, i64 28
  %15 = load i32, ptr %14, align 4, !tbaa !43
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

26:                                               ; preds = %7, %17, %21
  %27 = phi i32 [ 1, %7 ], [ %25, %21 ], [ 0, %17 ]
  %28 = tail call ptr @ZSTD_selectBlockCompressor(i32 noundef %11, i32 noundef %4, i32 noundef %27) #14
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
  %39 = and i1 %37, %38
  br i1 %39, label %40, label %364

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
  br label %86

51:                                               ; preds = %26
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %0, ptr %52, align 8, !tbaa !79
  %53 = tail call i64 %28(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, i64 noundef %6) #14
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %55 = load i64, ptr %54, align 8, !tbaa !71
  %56 = add i64 %55, %6
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %85, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %62 = load i64, ptr %61, align 8, !tbaa !38
  %63 = load i64, ptr %60, align 8, !tbaa !70
  br label %64

64:                                               ; preds = %79, %59
  %65 = phi i64 [ %63, %59 ], [ %81, %79 ]
  %66 = phi i32 [ %57, %59 ], [ %80, %79 ]
  %67 = icmp ult i64 %65, %62
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = load ptr, ptr %0, align 8, !tbaa !62
  %70 = getelementptr inbounds nuw %struct.rawSeq, ptr %69, i64 %65
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 4
  %72 = load i32, ptr %71, align 4, !tbaa !27
  %73 = getelementptr inbounds nuw i8, ptr %70, i64 8
  %74 = load i32, ptr %73, align 4, !tbaa !27
  %75 = add i32 %74, %72
  %76 = icmp ult i32 %66, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = zext i32 %66 to i64
  store i64 %78, ptr %54, align 8, !tbaa !71
  br label %83

79:                                               ; preds = %68
  %80 = sub nuw i32 %66, %75
  %81 = add nuw i64 %65, 1
  store i64 %81, ptr %60, align 8, !tbaa !70
  %82 = icmp eq i32 %80, 0
  br i1 %82, label %85, label %64

83:                                               ; preds = %64, %77
  %84 = icmp eq i64 %65, %62
  br i1 %84, label %85, label %389

85:                                               ; preds = %79, %83, %51
  store i64 0, ptr %54, align 8, !tbaa !71
  br label %389

86:                                               ; preds = %40, %354
  %87 = phi i64 [ %36, %40 ], [ %360, %354 ]
  %88 = phi i64 [ %35, %40 ], [ %359, %354 ]
  %89 = phi ptr [ %5, %40 ], [ %358, %354 ]
  %90 = ptrtoint ptr %89 to i64
  %91 = sub i64 %41, %90
  %92 = trunc i64 %91 to i32
  %93 = load ptr, ptr %0, align 8, !tbaa !62
  %94 = getelementptr inbounds nuw %struct.rawSeq, ptr %93, i64 %88
  %95 = load i64, ptr %94, align 4
  %96 = lshr i64 %95, 32
  %97 = trunc nuw i64 %96 to i32
  %98 = getelementptr inbounds nuw i8, ptr %94, i64 8
  %99 = load i32, ptr %98, align 4, !tbaa !27
  %100 = add i32 %99, %97
  %101 = icmp ugt i32 %100, %92
  br i1 %101, label %104, label %102

102:                                              ; preds = %86
  %103 = add nuw i64 %88, 1
  store i64 %103, ptr %33, align 8, !tbaa !70
  br label %149

104:                                              ; preds = %86
  %105 = icmp ugt i32 %92, %97
  %106 = sub i32 %92, %97
  %107 = icmp ult i32 %106, %9
  %108 = select i1 %107, i64 0, i64 %95
  %109 = select i1 %105, i32 %106, i32 %99
  %110 = select i1 %105, i64 %108, i64 0
  %111 = icmp eq i32 %92, 0
  br i1 %111, label %149, label %112

112:                                              ; preds = %104
  %113 = and i64 %91, 4294967295
  br label %114

114:                                              ; preds = %145, %112
  %115 = phi i64 [ %88, %112 ], [ %147, %145 ]
  %116 = phi i64 [ %113, %112 ], [ %146, %145 ]
  %117 = icmp ult i64 %115, %87
  br i1 %117, label %118, label %149

118:                                              ; preds = %114
  %119 = getelementptr inbounds nuw %struct.rawSeq, ptr %93, i64 %115
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 4
  %121 = load i32, ptr %120, align 4, !tbaa !63
  %122 = zext i32 %121 to i64
  %123 = icmp ugt i64 %116, %122
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = trunc nuw i64 %116 to i32
  %126 = sub i32 %121, %125
  store i32 %126, ptr %120, align 4, !tbaa !63
  br label %149

127:                                              ; preds = %118
  %128 = sub nuw nsw i64 %116, %122
  store i32 0, ptr %120, align 4, !tbaa !63
  %129 = getelementptr inbounds nuw i8, ptr %119, i64 8
  %130 = load i32, ptr %129, align 4, !tbaa !65
  %131 = zext i32 %130 to i64
  %132 = icmp ult i64 %128, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %127
  %134 = trunc nuw i64 %128 to i32
  %135 = sub i32 %130, %134
  store i32 %135, ptr %129, align 4, !tbaa !65
  %136 = icmp ult i32 %135, %9
  br i1 %136, label %137, label %149

137:                                              ; preds = %133
  %138 = add nuw i64 %115, 1
  %139 = icmp ult i64 %138, %87
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = getelementptr inbounds nuw i8, ptr %119, i64 16
  %142 = load i32, ptr %141, align 4, !tbaa !63
  %143 = add i32 %142, %135
  store i32 %143, ptr %141, align 4, !tbaa !63
  br label %144

144:                                              ; preds = %140, %137
  store i64 %138, ptr %33, align 8, !tbaa !70
  br label %149

145:                                              ; preds = %127
  %146 = sub nuw nsw i64 %128, %131
  store i32 0, ptr %129, align 4, !tbaa !65
  %147 = add nuw i64 %115, 1
  store i64 %147, ptr %33, align 8, !tbaa !70
  %148 = icmp eq i64 %146, 0
  br i1 %148, label %149, label %114

149:                                              ; preds = %114, %145, %102, %104, %124, %133, %144
  %150 = phi i32 [ %99, %102 ], [ %109, %104 ], [ %109, %124 ], [ %109, %133 ], [ %109, %144 ], [ %109, %145 ], [ %109, %114 ]
  %151 = phi i64 [ %95, %102 ], [ %110, %104 ], [ %110, %124 ], [ %110, %133 ], [ %110, %144 ], [ %110, %145 ], [ %110, %114 ]
  %152 = trunc i64 %151 to i32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %364, label %154

154:                                              ; preds = %149
  %155 = load ptr, ptr %42, align 8, !tbaa !80
  %156 = ptrtoint ptr %155 to i64
  %157 = sub i64 %90, %156
  %158 = trunc i64 %157 to i32
  %159 = load i32, ptr %43, align 4, !tbaa !81
  %160 = add i32 %159, 1024
  %161 = icmp ult i32 %160, %158
  br i1 %161, label %162, label %167

162:                                              ; preds = %154
  %163 = sub i32 %158, %159
  %164 = add i32 %163, -1024
  %165 = tail call i32 @llvm.umin.i32(i32 %164, i32 512)
  %166 = sub i32 %158, %165
  store i32 %166, ptr %43, align 4, !tbaa !81
  br label %167

167:                                              ; preds = %154, %162
  %168 = load i32, ptr %10, align 8, !tbaa !82
  switch i32 %168, label %171 [
    i32 1, label %169
    i32 2, label %170
  ]

169:                                              ; preds = %167
  tail call void @ZSTD_fillHashTable(ptr noundef nonnull %1, ptr noundef %89, i32 noundef 0, i32 noundef 0) #14
  br label %171

170:                                              ; preds = %167
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef nonnull %1, ptr noundef %89, i32 noundef 0, i32 noundef 0) #14
  br label %171

171:                                              ; preds = %167, %169, %170
  %172 = tail call i64 %28(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %89, i64 noundef %96) #14
  %173 = load i64, ptr %3, align 4, !tbaa !27
  store i64 %173, ptr %50, align 4, !tbaa !27
  %174 = getelementptr inbounds nuw i8, ptr %89, i64 %96
  store i32 %152, ptr %3, align 4, !tbaa !27
  %175 = sub i64 0, %172
  %176 = getelementptr inbounds i8, ptr %174, i64 %175
  %177 = add i32 %152, 3
  %178 = zext i32 %150 to i64
  %179 = icmp ugt ptr %174, %44
  %180 = load ptr, ptr %45, align 8, !tbaa !83
  br i1 %179, label %204, label %181

181:                                              ; preds = %171
  %182 = load <2 x i64>, ptr %176, align 1, !tbaa !31
  store <2 x i64> %182, ptr %180, align 1, !tbaa !31
  %183 = icmp ugt i64 %172, 16
  br i1 %183, label %184, label %325

184:                                              ; preds = %181
  %185 = load ptr, ptr %45, align 8, !tbaa !83
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %187 = getelementptr inbounds nuw i8, ptr %176, i64 16
  %188 = add i64 %172, -16
  %189 = getelementptr i8, ptr %185, i64 %172
  %190 = load <2 x i64>, ptr %187, align 1, !tbaa !31
  store <2 x i64> %190, ptr %186, align 1, !tbaa !31
  %191 = icmp ult i64 %188, 17
  br i1 %191, label %325, label %192

192:                                              ; preds = %184
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 32
  br label %194

194:                                              ; preds = %194, %192
  %195 = phi ptr [ %193, %192 ], [ %202, %194 ]
  %196 = phi ptr [ %187, %192 ], [ %200, %194 ]
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 16
  %198 = load <2 x i64>, ptr %197, align 1, !tbaa !31
  store <2 x i64> %198, ptr %195, align 1, !tbaa !31
  %199 = getelementptr inbounds nuw i8, ptr %195, i64 16
  %200 = getelementptr inbounds nuw i8, ptr %196, i64 32
  %201 = load <2 x i64>, ptr %200, align 1, !tbaa !31
  store <2 x i64> %201, ptr %199, align 1, !tbaa !31
  %202 = getelementptr inbounds nuw i8, ptr %195, i64 32
  %203 = icmp ult ptr %202, %189
  br i1 %203, label %194, label %329, !llvm.loop !86

204:                                              ; preds = %171
  %205 = icmp ugt ptr %176, %44
  br i1 %205, label %224, label %206

206:                                              ; preds = %204
  %207 = ptrtoint ptr %176 to i64
  %208 = sub i64 %46, %207
  %209 = getelementptr inbounds i8, ptr %180, i64 %208
  %210 = load <2 x i64>, ptr %176, align 1, !tbaa !31
  store <2 x i64> %210, ptr %180, align 1, !tbaa !31
  %211 = icmp ult i64 %208, 17
  br i1 %211, label %224, label %212

212:                                              ; preds = %206
  %213 = getelementptr inbounds nuw i8, ptr %180, i64 16
  br label %214

214:                                              ; preds = %214, %212
  %215 = phi ptr [ %213, %212 ], [ %222, %214 ]
  %216 = phi ptr [ %176, %212 ], [ %220, %214 ]
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 16
  %218 = load <2 x i64>, ptr %217, align 1, !tbaa !31
  store <2 x i64> %218, ptr %215, align 1, !tbaa !31
  %219 = getelementptr inbounds nuw i8, ptr %215, i64 16
  %220 = getelementptr inbounds nuw i8, ptr %216, i64 32
  %221 = load <2 x i64>, ptr %220, align 1, !tbaa !31
  store <2 x i64> %221, ptr %219, align 1, !tbaa !31
  %222 = getelementptr inbounds nuw i8, ptr %215, i64 32
  %223 = icmp ult ptr %222, %209
  br i1 %223, label %214, label %224, !llvm.loop !86

224:                                              ; preds = %214, %206, %204
  %225 = phi ptr [ %44, %206 ], [ %176, %204 ], [ %44, %214 ]
  %226 = phi ptr [ %209, %206 ], [ %180, %204 ], [ %209, %214 ]
  %227 = icmp ult ptr %225, %174
  br i1 %227, label %228, label %329

228:                                              ; preds = %224
  %229 = ptrtoint ptr %225 to i64
  %230 = ptrtoint ptr %226 to i64
  %231 = ptrtoint ptr %225 to i64
  %232 = add i64 %96, %90
  %233 = sub i64 %232, %231
  %234 = icmp ult i64 %233, 4
  %235 = sub i64 %230, %229
  %236 = icmp ult i64 %235, 32
  %237 = select i1 %234, i1 true, i1 %236
  br i1 %237, label %273, label %238

238:                                              ; preds = %228
  %239 = icmp ult i64 %233, 32
  br i1 %239, label %259, label %240

240:                                              ; preds = %238
  %241 = and i64 %233, -32
  br label %242

242:                                              ; preds = %242, %240
  %243 = phi i64 [ 0, %240 ], [ %250, %242 ]
  %244 = getelementptr i8, ptr %226, i64 %243
  %245 = getelementptr i8, ptr %225, i64 %243
  %246 = getelementptr i8, ptr %245, i64 16
  %247 = load <16 x i8>, ptr %245, align 1, !tbaa !31
  %248 = load <16 x i8>, ptr %246, align 1, !tbaa !31
  %249 = getelementptr i8, ptr %244, i64 16
  store <16 x i8> %247, ptr %244, align 1, !tbaa !31
  store <16 x i8> %248, ptr %249, align 1, !tbaa !31
  %250 = add nuw i64 %243, 32
  %251 = icmp eq i64 %250, %241
  br i1 %251, label %252, label %242, !llvm.loop !87

252:                                              ; preds = %242
  %253 = icmp eq i64 %233, %241
  br i1 %253, label %329, label %254

254:                                              ; preds = %252
  %255 = getelementptr i8, ptr %226, i64 %241
  %256 = getelementptr i8, ptr %225, i64 %241
  %257 = and i64 %233, 28
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %273, label %259

259:                                              ; preds = %254, %238
  %260 = phi i64 [ %241, %254 ], [ 0, %238 ]
  %261 = and i64 %233, -4
  %262 = getelementptr i8, ptr %226, i64 %261
  %263 = getelementptr i8, ptr %225, i64 %261
  br label %264

264:                                              ; preds = %264, %259
  %265 = phi i64 [ %260, %259 ], [ %269, %264 ]
  %266 = getelementptr i8, ptr %226, i64 %265
  %267 = getelementptr i8, ptr %225, i64 %265
  %268 = load <4 x i8>, ptr %267, align 1, !tbaa !31
  store <4 x i8> %268, ptr %266, align 1, !tbaa !31
  %269 = add nuw i64 %265, 4
  %270 = icmp eq i64 %269, %261
  br i1 %270, label %271, label %264, !llvm.loop !90

271:                                              ; preds = %264
  %272 = icmp eq i64 %233, %261
  br i1 %272, label %329, label %273

273:                                              ; preds = %254, %271, %228
  %274 = phi ptr [ %226, %228 ], [ %255, %254 ], [ %262, %271 ]
  %275 = phi ptr [ %225, %228 ], [ %256, %254 ], [ %263, %271 ]
  %276 = add i64 %96, %90
  %277 = ptrtoint ptr %275 to i64
  %278 = sub i64 %276, %277
  %279 = add i64 %90, -1
  %280 = add i64 %279, %96
  %281 = sub i64 %280, %277
  %282 = and i64 %278, 7
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %293, label %284

284:                                              ; preds = %273, %284
  %285 = phi ptr [ %290, %284 ], [ %274, %273 ]
  %286 = phi ptr [ %288, %284 ], [ %275, %273 ]
  %287 = phi i64 [ %291, %284 ], [ 0, %273 ]
  %288 = getelementptr inbounds nuw i8, ptr %286, i64 1
  %289 = load i8, ptr %286, align 1, !tbaa !31
  %290 = getelementptr inbounds nuw i8, ptr %285, i64 1
  store i8 %289, ptr %285, align 1, !tbaa !31
  %291 = add i64 %287, 1
  %292 = icmp eq i64 %291, %282
  br i1 %292, label %293, label %284, !llvm.loop !91

293:                                              ; preds = %284, %273
  %294 = phi ptr [ %274, %273 ], [ %290, %284 ]
  %295 = phi ptr [ %275, %273 ], [ %288, %284 ]
  %296 = icmp ult i64 %281, 7
  br i1 %296, label %329, label %297

297:                                              ; preds = %293, %297
  %298 = phi ptr [ %323, %297 ], [ %294, %293 ]
  %299 = phi ptr [ %321, %297 ], [ %295, %293 ]
  %300 = getelementptr inbounds nuw i8, ptr %299, i64 1
  %301 = load i8, ptr %299, align 1, !tbaa !31
  %302 = getelementptr inbounds nuw i8, ptr %298, i64 1
  store i8 %301, ptr %298, align 1, !tbaa !31
  %303 = getelementptr inbounds nuw i8, ptr %299, i64 2
  %304 = load i8, ptr %300, align 1, !tbaa !31
  %305 = getelementptr inbounds nuw i8, ptr %298, i64 2
  store i8 %304, ptr %302, align 1, !tbaa !31
  %306 = getelementptr inbounds nuw i8, ptr %299, i64 3
  %307 = load i8, ptr %303, align 1, !tbaa !31
  %308 = getelementptr inbounds nuw i8, ptr %298, i64 3
  store i8 %307, ptr %305, align 1, !tbaa !31
  %309 = getelementptr inbounds nuw i8, ptr %299, i64 4
  %310 = load i8, ptr %306, align 1, !tbaa !31
  %311 = getelementptr inbounds nuw i8, ptr %298, i64 4
  store i8 %310, ptr %308, align 1, !tbaa !31
  %312 = getelementptr inbounds nuw i8, ptr %299, i64 5
  %313 = load i8, ptr %309, align 1, !tbaa !31
  %314 = getelementptr inbounds nuw i8, ptr %298, i64 5
  store i8 %313, ptr %311, align 1, !tbaa !31
  %315 = getelementptr inbounds nuw i8, ptr %299, i64 6
  %316 = load i8, ptr %312, align 1, !tbaa !31
  %317 = getelementptr inbounds nuw i8, ptr %298, i64 6
  store i8 %316, ptr %314, align 1, !tbaa !31
  %318 = getelementptr inbounds nuw i8, ptr %299, i64 7
  %319 = load i8, ptr %315, align 1, !tbaa !31
  %320 = getelementptr inbounds nuw i8, ptr %298, i64 7
  store i8 %319, ptr %317, align 1, !tbaa !31
  %321 = getelementptr inbounds nuw i8, ptr %299, i64 8
  %322 = load i8, ptr %318, align 1, !tbaa !31
  %323 = getelementptr inbounds nuw i8, ptr %298, i64 8
  store i8 %322, ptr %320, align 1, !tbaa !31
  %324 = icmp eq ptr %321, %174
  br i1 %324, label %329, label %297, !llvm.loop !93

325:                                              ; preds = %184, %181
  %326 = load ptr, ptr %45, align 8, !tbaa !83
  %327 = getelementptr inbounds nuw i8, ptr %326, i64 %172
  store ptr %327, ptr %45, align 8, !tbaa !83
  %328 = load ptr, ptr %48, align 8, !tbaa !94
  br label %341

329:                                              ; preds = %194, %293, %297, %252, %271, %224
  %330 = load ptr, ptr %45, align 8, !tbaa !83
  %331 = getelementptr inbounds nuw i8, ptr %330, i64 %172
  store ptr %331, ptr %45, align 8, !tbaa !83
  %332 = icmp ugt i64 %172, 65535
  %333 = load ptr, ptr %48, align 8, !tbaa !94
  br i1 %332, label %334, label %341, !prof !95

334:                                              ; preds = %329
  store i32 1, ptr %47, align 8, !tbaa !96
  %335 = load ptr, ptr %2, align 8, !tbaa !97
  %336 = ptrtoint ptr %333 to i64
  %337 = ptrtoint ptr %335 to i64
  %338 = sub i64 %336, %337
  %339 = lshr exact i64 %338, 3
  %340 = trunc i64 %339 to i32
  store i32 %340, ptr %49, align 4, !tbaa !98
  br label %341

341:                                              ; preds = %325, %334, %329
  %342 = phi ptr [ %328, %325 ], [ %333, %334 ], [ %333, %329 ]
  %343 = trunc i64 %172 to i16
  %344 = getelementptr inbounds nuw i8, ptr %342, i64 4
  store i16 %343, ptr %344, align 4, !tbaa !99
  store i32 %177, ptr %342, align 4, !tbaa !101
  %345 = add nsw i64 %178, -3
  %346 = icmp ugt i64 %345, 65535
  br i1 %346, label %347, label %354, !prof !35

347:                                              ; preds = %341
  store i32 2, ptr %47, align 8, !tbaa !96
  %348 = load ptr, ptr %2, align 8, !tbaa !97
  %349 = ptrtoint ptr %342 to i64
  %350 = ptrtoint ptr %348 to i64
  %351 = sub i64 %349, %350
  %352 = lshr exact i64 %351, 3
  %353 = trunc i64 %352 to i32
  store i32 %353, ptr %49, align 4, !tbaa !98
  br label %354

354:                                              ; preds = %347, %341
  %355 = trunc i64 %345 to i16
  %356 = getelementptr inbounds nuw i8, ptr %342, i64 6
  store i16 %355, ptr %356, align 2, !tbaa !102
  %357 = getelementptr inbounds nuw i8, ptr %342, i64 8
  store ptr %357, ptr %48, align 8, !tbaa !94
  %358 = getelementptr inbounds nuw i8, ptr %174, i64 %178
  %359 = load i64, ptr %33, align 8, !tbaa !70
  %360 = load i64, ptr %34, align 8, !tbaa !38
  %361 = icmp ult i64 %359, %360
  %362 = icmp ult ptr %358, %29
  %363 = select i1 %361, i1 %362, i1 false
  br i1 %363, label %86, label %364

364:                                              ; preds = %354, %149, %32
  %365 = phi ptr [ %5, %32 ], [ %89, %149 ], [ %358, %354 ]
  %366 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %367 = load ptr, ptr %366, align 8, !tbaa !80
  %368 = ptrtoint ptr %365 to i64
  %369 = ptrtoint ptr %367 to i64
  %370 = sub i64 %368, %369
  %371 = trunc i64 %370 to i32
  %372 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %373 = load i32, ptr %372, align 4, !tbaa !81
  %374 = add i32 %373, 1024
  %375 = icmp ult i32 %374, %371
  br i1 %375, label %376, label %381

376:                                              ; preds = %364
  %377 = sub i32 %371, %373
  %378 = add i32 %377, -1024
  %379 = tail call i32 @llvm.umin.i32(i32 %378, i32 512)
  %380 = sub i32 %371, %379
  store i32 %380, ptr %372, align 4, !tbaa !81
  br label %381

381:                                              ; preds = %364, %376
  %382 = load i32, ptr %10, align 8, !tbaa !82
  switch i32 %382, label %385 [
    i32 1, label %383
    i32 2, label %384
  ]

383:                                              ; preds = %381
  tail call void @ZSTD_fillHashTable(ptr noundef nonnull %1, ptr noundef %365, i32 noundef 0, i32 noundef 0) #14
  br label %385

384:                                              ; preds = %381
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef nonnull %1, ptr noundef %365, i32 noundef 0, i32 noundef 0) #14
  br label %385

385:                                              ; preds = %381, %383, %384
  %386 = ptrtoint ptr %29 to i64
  %387 = sub i64 %386, %368
  %388 = tail call i64 %28(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %365, i64 noundef %387) #14
  br label %389

389:                                              ; preds = %85, %83, %385
  %390 = phi i64 [ %388, %385 ], [ %53, %83 ], [ %53, %85 ]
  ret i64 %390
}

declare ptr @ZSTD_selectBlockCompressor(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

declare void @ZSTD_fillHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @ZSTD_fillDoubleHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

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
!42 = !{!20, !21, i64 16}
!43 = !{!20, !7, i64 28}
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
