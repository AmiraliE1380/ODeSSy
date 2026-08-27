; ModuleID = '<stdin>'
source_filename = "/mydata/zstd/lib/dictBuilder/divsufsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.1 = type { ptr, ptr, ptr, i32, i32 }
%struct.anon = type { ptr, ptr, i32, i32 }
%struct.anon.0 = type { ptr, ptr, ptr, i32 }

@.src = private unnamed_addr constant [42 x i8] c"/mydata/zstd/lib/dictBuilder/divsufsort.c\00", align 1
@.str = private unnamed_addr constant [55 x i8] c"(last - first) <= INT_MAX && (last - first) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.sssort = private unnamed_addr constant [89 x i8] c"void sssort(const unsigned char *, const int *, int *, int *, int *, int, int, int, int)\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"(last - (a + (1024))) <= INT_MAX && (last - (a + (1024))) >= INT_MIN\00", align 1
@lg_table = internal unnamed_addr constant [256 x i32] [i32 -1, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], align 16
@sqq_table = internal unnamed_addr constant [256 x i32] [i32 0, i32 16, i32 22, i32 27, i32 32, i32 35, i32 39, i32 42, i32 45, i32 48, i32 50, i32 53, i32 55, i32 57, i32 59, i32 61, i32 64, i32 65, i32 67, i32 69, i32 71, i32 73, i32 75, i32 76, i32 78, i32 80, i32 81, i32 83, i32 84, i32 86, i32 87, i32 89, i32 90, i32 91, i32 93, i32 94, i32 96, i32 97, i32 98, i32 99, i32 101, i32 102, i32 103, i32 104, i32 106, i32 107, i32 108, i32 109, i32 110, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 128, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 155, i32 156, i32 157, i32 158, i32 159, i32 160, i32 160, i32 161, i32 162, i32 163, i32 163, i32 164, i32 165, i32 166, i32 167, i32 167, i32 168, i32 169, i32 170, i32 170, i32 171, i32 172, i32 173, i32 173, i32 174, i32 175, i32 176, i32 176, i32 177, i32 178, i32 178, i32 179, i32 180, i32 181, i32 181, i32 182, i32 183, i32 183, i32 184, i32 185, i32 185, i32 186, i32 187, i32 187, i32 188, i32 189, i32 189, i32 190, i32 191, i32 192, i32 192, i32 193, i32 193, i32 194, i32 195, i32 195, i32 196, i32 197, i32 197, i32 198, i32 199, i32 199, i32 200, i32 201, i32 201, i32 202, i32 203, i32 203, i32 204, i32 204, i32 205, i32 206, i32 206, i32 207, i32 208, i32 208, i32 209, i32 209, i32 210, i32 211, i32 211, i32 212, i32 212, i32 213, i32 214, i32 214, i32 215, i32 215, i32 216, i32 217, i32 217, i32 218, i32 218, i32 219, i32 219, i32 220, i32 221, i32 221, i32 222, i32 222, i32 223, i32 224, i32 224, i32 225, i32 225, i32 226, i32 226, i32 227, i32 227, i32 228, i32 229, i32 229, i32 230, i32 230, i32 231, i32 231, i32 232, i32 232, i32 233, i32 234, i32 234, i32 235, i32 235, i32 236, i32 236, i32 237, i32 237, i32 238, i32 238, i32 239, i32 240, i32 240, i32 241, i32 241, i32 242, i32 242, i32 243, i32 243, i32 244, i32 244, i32 245, i32 245, i32 246, i32 246, i32 247, i32 247, i32 248, i32 248, i32 249, i32 249, i32 250, i32 250, i32 251, i32 251, i32 252, i32 252, i32 253, i32 253, i32 254, i32 254, i32 255], align 16
@__PRETTY_FUNCTION__.ss_mintrosort = private unnamed_addr constant [74 x i8] c"void ss_mintrosort(const unsigned char *, const int *, int *, int *, int)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"0 <= ssize\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ssize < STACK_SIZE\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"(a - first) <= INT_MAX && (a - first) >= INT_MIN\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"(b - a) <= INT_MAX && (b - a) >= INT_MIN\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"(d - c) <= INT_MAX && (d - c) >= INT_MIN\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"(last - d - 1) <= INT_MAX && (last - d - 1) >= INT_MIN\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"(c - b) <= INT_MAX && (c - b) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.ss_pivot = private unnamed_addr constant [64 x i8] c"int *ss_pivot(const unsigned char *, const int *, int *, int *)\00", align 1
@__PRETTY_FUNCTION__.ss_swapmerge = private unnamed_addr constant [92 x i8] c"void ss_swapmerge(const unsigned char *, const int *, int *, int *, int *, int *, int, int)\00", align 1
@.str.9 = private unnamed_addr constant [181 x i8] c"((((middle - first) < (last - middle)) ? (middle - first) : (last - middle))) <= INT_MAX && ((((middle - first) < (last - middle)) ? (middle - first) : (last - middle))) >= INT_MIN\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"(last - middle) <= INT_MAX && (last - middle) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.ss_mergebackward = private unnamed_addr constant [91 x i8] c"void ss_mergebackward(const unsigned char *, const int *, int *, int *, int *, int *, int)\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"(middle - first) <= INT_MAX && (middle - first) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.ss_mergeforward = private unnamed_addr constant [90 x i8] c"void ss_mergeforward(const unsigned char *, const int *, int *, int *, int *, int *, int)\00", align 1
@__PRETTY_FUNCTION__.ss_inplacemerge = private unnamed_addr constant [83 x i8] c"void ss_inplacemerge(const unsigned char *, const int *, int *, int *, int *, int)\00", align 1
@__PRETTY_FUNCTION__.ss_rotate = private unnamed_addr constant [36 x i8] c"void ss_rotate(int *, int *, int *)\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"(first - last) <= INT_MAX && (first - last) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.trsort = private unnamed_addr constant [36 x i8] c"void trsort(int *, int *, int, int)\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"(ISAd - ISA) <= INT_MAX && (ISAd - ISA) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.tr_introsort = private unnamed_addr constant [73 x i8] c"void tr_introsort(int *, const int *, int *, int *, int *, trbudget_t *)\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"(last - SA - 1) <= INT_MAX && (last - SA - 1) >= INT_MIN\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"(a - SA - 1) <= INT_MAX && (a - SA - 1) >= INT_MIN\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"(b - SA - 1) <= INT_MAX && (b - SA - 1) >= INT_MIN\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"(last - b) <= INT_MAX && (last - b) >= INT_MIN\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"(a - SA) <= INT_MAX && (a - SA) >= INT_MIN\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"(a - first + 1) <= INT_MAX && (a - first + 1) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.tr_partition = private unnamed_addr constant [73 x i8] c"void tr_partition(const int *, int *, int *, int *, int **, int **, int)\00", align 1
@__PRETTY_FUNCTION__.tr_copy = private unnamed_addr constant [66 x i8] c"void tr_copy(int *, const int *, int *, int *, int *, int *, int)\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"(d - SA) <= INT_MAX && (d - SA) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.tr_partialcopy = private unnamed_addr constant [73 x i8] c"void tr_partialcopy(int *, const int *, int *, int *, int *, int *, int)\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"(e - SA) <= INT_MAX && (e - SA) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.tr_pivot = private unnamed_addr constant [41 x i8] c"int *tr_pivot(const int *, int *, int *)\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"T[s] == c1\00", align 1
@__PRETTY_FUNCTION__.construct_SA = private unnamed_addr constant [72 x i8] c"void construct_SA(const unsigned char *, int *, int *, int *, int, int)\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"((s + 1) < n) && (T[s] <= T[s + 1])\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"T[s - 1] <= T[s]\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"(k - SA) <= INT_MAX && (k - SA) >= INT_MIN\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"k < j\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"k != NULL\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"((s == 0) && (T[s] == c1)) || (s < 0)\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"T[s - 1] >= T[s]\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"i < k\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"s < 0\00", align 1
@__PRETTY_FUNCTION__.construct_BWT = private unnamed_addr constant [72 x i8] c"int construct_BWT(const unsigned char *, int *, int *, int *, int, int)\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"(orig - SA) <= INT_MAX && (orig - SA) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.construct_BWT_indexes = private unnamed_addr constant [104 x i8] c"int construct_BWT_indexes(const unsigned char *, int *, int *, int *, int, int, unsigned char *, int *)\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"(j - SA) <= INT_MAX && (j - SA) >= INT_MIN\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"(i - SA) <= INT_MAX && (i - SA) >= INT_MIN\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @divsufsort(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  %8 = icmp slt i32 %2, 0
  %9 = or i1 %7, %8
  br i1 %9, label %229, label %10

10:                                               ; preds = %4
  switch i32 %2, label %22 [
    i32 0, label %229
    i32 1, label %11
    i32 2, label %12
  ]

11:                                               ; preds = %10
  store i32 0, ptr %1, align 4, !tbaa !5
  br label %229

12:                                               ; preds = %10
  %13 = load i8, ptr %0, align 1, !tbaa !9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = icmp ult i8 %13, %15
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %18
  store i32 0, ptr %19, align 4, !tbaa !5
  %20 = zext i1 %16 to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %20
  store i32 1, ptr %21, align 4, !tbaa !5
  br label %229

22:                                               ; preds = %10
  %23 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #9
  %24 = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #9
  %25 = icmp ne ptr %23, null
  %26 = icmp ne ptr %24, null
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %.loopexit

28:                                               ; preds = %22
  %29 = tail call fastcc i32 @sort_typeBstar(ptr noundef %0, ptr noundef %1, ptr noundef %23, ptr noundef %24, i32 noundef %2)
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = ptrtoint ptr %1 to i64
  br label %.loopexit23

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %1, i64 -4
  %35 = ptrtoint ptr %1 to i64
  br label %36

36:                                               ; preds = %.loopexit22, %33
  %37 = phi i64 [ 254, %33 ], [ %144, %.loopexit22 ]
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 8
  %40 = add nuw nsw i64 %37, 1
  %41 = trunc nuw nsw i64 %40 to i32
  %42 = or i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i8], ptr %24, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !5
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i8], ptr %1, i64 %46
  %48 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %40
  %49 = load i32, ptr %48, align 4, !tbaa !5
  %50 = sext i32 %49 to i64
  %51 = getelementptr [4 x i8], ptr %34, i64 %50
  %52 = icmp ugt ptr %47, %51
  br i1 %52, label %.loopexit22, label %.preheader

53:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader:                                       ; preds = %36, %139
  %54 = phi ptr [ %142, %139 ], [ %51, %36 ]
  %55 = phi i32 [ %141, %139 ], [ -1, %36 ]
  %56 = phi ptr [ %140, %139 ], [ null, %36 ]
  %57 = load i32, ptr %54, align 4, !tbaa !5
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %130

59:                                               ; preds = %.preheader
  %60 = zext nneg i32 %57 to i64
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !9
  %63 = zext i8 %62 to i64
  %64 = icmp eq i64 %37, %63
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1630, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

66:                                               ; preds = %59
  %67 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %57, i32 1), !nosanitize !10
  %68 = extractvalue { i32, i1 } %67, 0, !nosanitize !10
  %69 = extractvalue { i32, i1 } %67, 1, !nosanitize !10
  br i1 %69, label %53, label %70, !prof !11, !nosanitize !10

70:                                               ; preds = %66
  %71 = icmp slt i32 %68, %2
  br i1 %71, label %72, label %77

72:                                               ; preds = %70
  %73 = sext i32 %68 to i64
  %74 = getelementptr inbounds i8, ptr %0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !9
  %76 = icmp ugt i8 %62, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %70
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.src, i32 noundef 1631, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

78:                                               ; preds = %72
  %79 = add nsw i32 %57, -1
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = icmp ugt i8 %82, %62
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.src, i32 noundef 1632, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

85:                                               ; preds = %78
  %86 = xor i32 %57, -1
  store i32 %86, ptr %54, align 4, !tbaa !5
  %87 = load i8, ptr %81, align 1, !tbaa !9
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %57, 1
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = getelementptr i8, ptr %61, i64 -2
  %92 = load i8, ptr %91, align 1, !tbaa !9
  %93 = icmp ugt i8 %92, %87
  %94 = sub nsw i32 0, %57
  %95 = select i1 %93, i32 %94, i32 %79
  br label %96

96:                                               ; preds = %90, %85
  %97 = phi i32 [ 0, %85 ], [ %95, %90 ]
  %98 = icmp eq i32 %55, %88
  br i1 %98, label %120, label %99

99:                                               ; preds = %96
  %100 = icmp sgt i32 %55, -1
  br i1 %100, label %101, label %113

101:                                              ; preds = %99
  %102 = ptrtoint ptr %56 to i64
  %103 = sub i64 %102, %35
  %104 = ashr exact i64 %103, 2
  %105 = add nsw i64 %104, 2147483648
  %106 = icmp ult i64 %105, 4294967296
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1637, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

108:                                              ; preds = %101
  %109 = trunc nsw i64 %104 to i32
  %110 = or i32 %55, %39
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x i8], ptr %24, i64 %111
  store i32 %109, ptr %112, align 4, !tbaa !5
  br label %113

113:                                              ; preds = %108, %99
  %114 = or disjoint i32 %39, %88
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i8], ptr %24, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !5
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x i8], ptr %1, i64 %118
  br label %120

120:                                              ; preds = %113, %96
  %121 = phi ptr [ %119, %113 ], [ %56, %96 ]
  %122 = phi i32 [ %88, %113 ], [ %55, %96 ]
  %123 = icmp ult ptr %121, %54
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.src, i32 noundef 1640, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

125:                                              ; preds = %120
  %126 = icmp eq ptr %121, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %125
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.src, i32 noundef 1640, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

128:                                              ; preds = %125
  %129 = getelementptr inbounds i8, ptr %121, i64 -4
  store i32 %97, ptr %121, align 4, !tbaa !5
  br label %139

130:                                              ; preds = %.preheader
  %131 = icmp eq i32 %57, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %130
  %133 = load i8, ptr %0, align 1, !tbaa !9
  %134 = zext i8 %133 to i64
  %135 = icmp eq i64 %37, %134
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  tail call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.src, i32 noundef 1643, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

137:                                              ; preds = %132, %130
  %138 = xor i32 %57, -1
  store i32 %138, ptr %54, align 4, !tbaa !5
  br label %139

139:                                              ; preds = %137, %128
  %140 = phi ptr [ %129, %128 ], [ %56, %137 ]
  %141 = phi i32 [ %122, %128 ], [ %55, %137 ]
  %142 = getelementptr inbounds i8, ptr %54, i64 -4
  %143 = icmp ugt ptr %47, %142
  br i1 %143, label %.loopexit22, label %.preheader, !llvm.loop !12

.loopexit22:                                      ; preds = %139, %36
  %144 = add nsw i64 %37, -1
  %145 = icmp eq i64 %37, 0
  br i1 %145, label %.loopexit23, label %36, !llvm.loop !14

.loopexit23:                                      ; preds = %.loopexit22, %31
  %146 = phi i64 [ %32, %31 ], [ %35, %.loopexit22 ]
  %147 = add nsw i32 %2, -1
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !9
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !5
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x i8], ptr %1, i64 %154
  %156 = zext nneg i32 %2 to i64
  %157 = getelementptr i8, ptr %0, i64 %156
  %158 = getelementptr i8, ptr %157, i64 -2
  %159 = load i8, ptr %158, align 1, !tbaa !9
  %160 = icmp ult i8 %159, %150
  %161 = sub nsw i32 0, %2
  %162 = select i1 %160, i32 %161, i32 %147
  store i32 %162, ptr %155, align 4, !tbaa !5
  %163 = shl nuw nsw i64 %156, 2
  %164 = getelementptr inbounds nuw i8, ptr %1, i64 %163
  %165 = getelementptr inbounds nuw i8, ptr %155, i64 4
  %166 = zext i8 %150 to i32
  br label %167

167:                                              ; preds = %223, %.loopexit23
  %168 = phi i32 [ %166, %.loopexit23 ], [ %225, %223 ]
  %169 = phi ptr [ %165, %.loopexit23 ], [ %224, %223 ]
  %170 = phi ptr [ %1, %.loopexit23 ], [ %226, %223 ]
  %171 = load i32, ptr %170, align 4, !tbaa !5
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %218

173:                                              ; preds = %167
  %174 = add nsw i32 %171, -1
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !9
  %178 = zext i8 %177 to i32
  %179 = zext nneg i32 %171 to i64
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !9
  %182 = icmp ult i8 %177, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.src, i32 noundef 1657, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

184:                                              ; preds = %173
  %185 = icmp eq i32 %174, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %184
  %187 = getelementptr i8, ptr %180, i64 -2
  %188 = load i8, ptr %187, align 1, !tbaa !9
  %189 = icmp ult i8 %188, %177
  br i1 %189, label %190, label %192

190:                                              ; preds = %186, %184
  %191 = sub nsw i32 0, %171
  br label %192

192:                                              ; preds = %190, %186
  %193 = phi i32 [ %191, %190 ], [ %174, %186 ]
  %194 = icmp eq i32 %168, %178
  br i1 %194, label %211, label %195

195:                                              ; preds = %192
  %196 = ptrtoint ptr %169 to i64
  %197 = sub i64 %196, %146
  %198 = ashr exact i64 %197, 2
  %199 = add nsw i64 %198, 2147483648
  %200 = icmp ult i64 %199, 4294967296
  br i1 %200, label %202, label %201

201:                                              ; preds = %195
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1661, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

202:                                              ; preds = %195
  %203 = trunc nsw i64 %198 to i32
  %204 = zext nneg i32 %168 to i64
  %205 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %204
  store i32 %203, ptr %205, align 4, !tbaa !5
  %206 = zext i8 %177 to i64
  %207 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !5
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [4 x i8], ptr %1, i64 %209
  br label %211

211:                                              ; preds = %202, %192
  %212 = phi ptr [ %210, %202 ], [ %169, %192 ]
  %213 = phi i32 [ %178, %202 ], [ %168, %192 ]
  %214 = icmp ult ptr %170, %212
  br i1 %214, label %216, label %215

215:                                              ; preds = %211
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.src, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

216:                                              ; preds = %211
  %217 = getelementptr inbounds nuw i8, ptr %212, i64 4
  store i32 %193, ptr %212, align 4, !tbaa !5
  br label %223

218:                                              ; preds = %167
  %219 = icmp slt i32 %171, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %218
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.src, i32 noundef 1667, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

221:                                              ; preds = %218
  %222 = xor i32 %171, -1
  store i32 %222, ptr %170, align 4, !tbaa !5
  br label %223

223:                                              ; preds = %221, %216
  %224 = phi ptr [ %217, %216 ], [ %169, %221 ]
  %225 = phi i32 [ %213, %216 ], [ %168, %221 ]
  %226 = getelementptr inbounds nuw i8, ptr %170, i64 4
  %227 = icmp ult ptr %226, %164
  br i1 %227, label %167, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %223, %22
  %228 = phi i32 [ -2, %22 ], [ 0, %223 ]
  tail call void @free(ptr noundef %24) #11
  tail call void @free(ptr noundef %23) #11
  br label %229

229:                                              ; preds = %.loopexit, %12, %11, %10, %4
  %230 = phi i32 [ 0, %11 ], [ 0, %12 ], [ %228, %.loopexit ], [ -1, %4 ], [ %2, %10 ]
  ret i32 %230
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sort_typeBstar(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull captures(none) initializes((0, 1024)) %2, ptr noundef nonnull captures(none) initializes((0, 262144)) %3, i32 noundef range(i32 2, -2147483648) %4) unnamed_addr #0 {
  %6 = alloca [64 x %struct.anon.1], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %2, i8 0, i64 1024, i1 false), !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(262144) %3, i8 0, i64 262144, i1 false), !tbaa !5
  %9 = add nsw i32 %4, -1
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  br label %.loopexit315

.loopexit225:                                     ; preds = %36, %18, %64, %96, %93, %.preheader313, %122, %113, %140, %2919, %.loopexit310
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

.loopexit:                                        ; preds = %45, %147, %723, %207, %775, %760, %.loopexit227, %2912, %2853, %2883, %2866, %2892, %175, %.loopexit317
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

.loopexit315:                                     ; preds = %56, %5
  %14 = phi i32 [ %13, %5 ], [ %62, %56 ]
  %15 = phi i32 [ %9, %5 ], [ %58, %56 ]
  %16 = phi i32 [ %4, %5 ], [ %48, %56 ]
  %17 = zext nneg i32 %15 to i64
  br label %18

18:                                               ; preds = %30, %.loopexit315
  %19 = phi i64 [ %17, %.loopexit315 ], [ %31, %30 ]
  %20 = phi i32 [ %14, %.loopexit315 ], [ %34, %30 ]
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !5
  %24 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %23, i32 1), !nosanitize !10
  %25 = extractvalue { i32, i1 } %24, 1, !nosanitize !10
  br i1 %25, label %.loopexit225, label %26, !prof !11, !nosanitize !10

26:                                               ; preds = %18
  %27 = extractvalue { i32, i1 } %24, 0, !nosanitize !10
  store i32 %27, ptr %22, align 4, !tbaa !5
  %28 = trunc nuw i64 %19 to i32
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %.loopexit317

30:                                               ; preds = %26
  %31 = add nsw i64 %19, -1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = zext i8 %33 to i32
  %35 = icmp samesign ugt i32 %20, %34
  br i1 %35, label %36, label %18, !llvm.loop !16

36:                                               ; preds = %30
  %37 = trunc i64 %31 to i32
  %38 = shl nuw nsw i32 %34, 8
  %39 = or i32 %38, %20
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !5
  %43 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %42, i32 1), !nosanitize !10
  %44 = extractvalue { i32, i1 } %43, 1, !nosanitize !10
  br i1 %44, label %.loopexit225, label %45, !prof !11, !nosanitize !10

45:                                               ; preds = %36
  %46 = extractvalue { i32, i1 } %43, 0, !nosanitize !10
  store i32 %46, ptr %41, align 4, !tbaa !5
  %47 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 -1)
  %48 = extractvalue { i32, i1 } %47, 0, !nosanitize !10
  %49 = extractvalue { i32, i1 } %47, 1, !nosanitize !10
  br i1 %49, label %.loopexit, label %50, !prof !11, !nosanitize !10

50:                                               ; preds = %45
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds [4 x i8], ptr %1, i64 %51
  store i32 %37, ptr %52, align 4, !tbaa !5
  %53 = icmp eq i64 %19, 1
  br i1 %53, label %.loopexit317, label %54

54:                                               ; preds = %50
  %55 = add nsw i32 %28, -2
  br label %56

56:                                               ; preds = %72, %54
  %57 = phi i32 [ %62, %72 ], [ %34, %54 ]
  %58 = phi i32 [ %74, %72 ], [ %55, %54 ]
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !9
  %62 = zext i8 %61 to i32
  %63 = icmp samesign ult i32 %57, %62
  br i1 %63, label %.loopexit315, label %64, !llvm.loop !17

64:                                               ; preds = %56
  %65 = shl nuw nsw i32 %57, 8
  %66 = or disjoint i32 %65, %62
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !5
  %70 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %69, i32 1), !nosanitize !10
  %71 = extractvalue { i32, i1 } %70, 1, !nosanitize !10
  br i1 %71, label %.loopexit225, label %72, !prof !11, !nosanitize !10

72:                                               ; preds = %64
  %73 = extractvalue { i32, i1 } %70, 0, !nosanitize !10
  store i32 %73, ptr %68, align 4, !tbaa !5
  %74 = add nsw i32 %58, -1
  %75 = icmp sgt i32 %58, 0
  br i1 %75, label %56, label %.loopexit317, !llvm.loop !18

.loopexit317:                                     ; preds = %50, %26, %72
  %76 = phi i32 [ %48, %72 ], [ %16, %26 ], [ %48, %50 ]
  %77 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4, i32 %76), !nosanitize !10
  %78 = extractvalue { i32, i1 } %77, 0, !nosanitize !10
  %79 = extractvalue { i32, i1 } %77, 1, !nosanitize !10
  br i1 %79, label %.loopexit, label %.preheader313, !prof !11, !nosanitize !10

.loopexit312:                                     ; preds = %109, %103
  %80 = phi i32 [ %87, %103 ], [ %120, %109 ]
  %81 = phi i32 [ %105, %103 ], [ %111, %109 ]
  %82 = add nuw nsw i64 %85, 1
  %83 = icmp eq i64 %104, 256
  br i1 %83, label %128, label %.preheader313, !llvm.loop !19

.preheader313:                                    ; preds = %.loopexit317, %.loopexit312
  %84 = phi i64 [ %104, %.loopexit312 ], [ 0, %.loopexit317 ]
  %85 = phi i64 [ %82, %.loopexit312 ], [ 1, %.loopexit317 ]
  %86 = phi i32 [ %81, %.loopexit312 ], [ 0, %.loopexit317 ]
  %87 = phi i32 [ %80, %.loopexit312 ], [ 0, %.loopexit317 ]
  %88 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %84
  %89 = load i32, ptr %88, align 4, !tbaa !5
  %90 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %86, i32 %89), !nosanitize !10
  %91 = extractvalue { i32, i1 } %90, 0, !nosanitize !10
  %92 = extractvalue { i32, i1 } %90, 1, !nosanitize !10
  br i1 %92, label %.loopexit225, label %93, !prof !11, !nosanitize !10

93:                                               ; preds = %.preheader313
  %94 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %86, i32 %87), !nosanitize !10
  %95 = extractvalue { i32, i1 } %94, 1, !nosanitize !10
  br i1 %95, label %.loopexit225, label %96, !prof !11, !nosanitize !10

96:                                               ; preds = %93
  %97 = extractvalue { i32, i1 } %94, 0, !nosanitize !10
  store i32 %97, ptr %88, align 4, !tbaa !5
  %.idx1312 = shl i64 %84, 10
  %98 = getelementptr inbounds nuw i8, ptr %3, i64 %.idx1312
  %99 = getelementptr inbounds nuw [4 x i8], ptr %98, i64 %84
  %100 = load i32, ptr %99, align 4, !tbaa !5
  %101 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %91, i32 %100), !nosanitize !10
  %102 = extractvalue { i32, i1 } %101, 1, !nosanitize !10
  br i1 %102, label %.loopexit225, label %103, !prof !11, !nosanitize !10

103:                                              ; preds = %96
  %104 = add nuw nsw i64 %84, 1
  %105 = extractvalue { i32, i1 } %101, 0
  %106 = icmp samesign ult i64 %84, 255
  br i1 %106, label %107, label %.loopexit312

107:                                              ; preds = %103
  %108 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %84
  br label %113

109:                                              ; preds = %122
  %110 = add nuw nsw i64 %114, 1
  %111 = extractvalue { i32, i1 } %126, 0
  %112 = icmp eq i64 %110, 256
  br i1 %112, label %.loopexit312, label %113, !llvm.loop !20

113:                                              ; preds = %109, %107
  %114 = phi i64 [ %85, %107 ], [ %110, %109 ]
  %115 = phi i32 [ %105, %107 ], [ %111, %109 ]
  %116 = phi i32 [ %87, %107 ], [ %120, %109 ]
  %117 = getelementptr inbounds nuw [4 x i8], ptr %98, i64 %114
  %118 = load i32, ptr %117, align 4, !tbaa !5
  %119 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %116, i32 %118), !nosanitize !10
  %120 = extractvalue { i32, i1 } %119, 0, !nosanitize !10
  %121 = extractvalue { i32, i1 } %119, 1, !nosanitize !10
  br i1 %121, label %.loopexit225, label %122, !prof !11, !nosanitize !10

122:                                              ; preds = %113
  store i32 %120, ptr %117, align 4, !tbaa !5
  %123 = shl nuw nsw i64 %114, 10
  %124 = getelementptr inbounds nuw i8, ptr %108, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !5
  %126 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %115, i32 %125), !nosanitize !10
  %127 = extractvalue { i32, i1 } %126, 1, !nosanitize !10
  br i1 %127, label %.loopexit225, label %109, !prof !11, !nosanitize !10

128:                                              ; preds = %.loopexit312
  %129 = icmp sgt i32 %78, 0
  br i1 %129, label %130, label %.loopexit226

130:                                              ; preds = %128
  %131 = zext nneg i32 %4 to i64
  %132 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %131
  %133 = zext nneg i32 %78 to i64
  %134 = sub nsw i64 0, %133
  %135 = getelementptr inbounds [4 x i8], ptr %132, i64 %134
  %136 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %133
  %137 = icmp eq i32 %78, 1
  br i1 %137, label %.loopexit310, label %138

138:                                              ; preds = %130
  %139 = add nsw i32 %78, -2
  br label %140

140:                                              ; preds = %163, %138
  %141 = phi i32 [ %167, %163 ], [ %139, %138 ]
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds nuw [4 x i8], ptr %135, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !5
  %145 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %144, i32 1), !nosanitize !10
  %146 = extractvalue { i32, i1 } %145, 1, !nosanitize !10
  br i1 %146, label %.loopexit225, label %147, !prof !11, !nosanitize !10

147:                                              ; preds = %140
  %148 = extractvalue { i32, i1 } %145, 0, !nosanitize !10
  %149 = sext i32 %144 to i64
  %150 = getelementptr inbounds i8, ptr %0, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !9
  %152 = zext i8 %151 to i64
  %153 = sext i32 %148 to i64
  %154 = getelementptr inbounds i8, ptr %0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !9
  %156 = zext i8 %155 to i64
  %157 = shl nuw nsw i64 %152, 10
  %158 = getelementptr inbounds nuw i8, ptr %3, i64 %157
  %159 = getelementptr inbounds nuw [4 x i8], ptr %158, i64 %156
  %160 = load i32, ptr %159, align 4, !tbaa !5
  %161 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %160, i32 -1)
  %162 = extractvalue { i32, i1 } %161, 1, !nosanitize !10
  br i1 %162, label %.loopexit, label %163, !prof !11, !nosanitize !10

163:                                              ; preds = %147
  %164 = extractvalue { i32, i1 } %161, 0, !nosanitize !10
  store i32 %164, ptr %159, align 4, !tbaa !5
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [4 x i8], ptr %1, i64 %165
  store i32 %141, ptr %166, align 4, !tbaa !5
  %167 = add nsw i32 %141, -1
  %168 = icmp sgt i32 %141, 0
  br i1 %168, label %140, label %.loopexit310, !llvm.loop !21

.loopexit310:                                     ; preds = %163, %130
  %169 = add nsw i32 %78, -1
  %170 = zext nneg i32 %169 to i64
  %171 = getelementptr inbounds nuw [4 x i8], ptr %135, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !5
  %173 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %172, i32 1), !nosanitize !10
  %174 = extractvalue { i32, i1 } %173, 1, !nosanitize !10
  br i1 %174, label %.loopexit225, label %175, !prof !11, !nosanitize !10

175:                                              ; preds = %.loopexit310
  %176 = sext i32 %172 to i64
  %177 = getelementptr inbounds i8, ptr %0, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !9
  %179 = zext i8 %178 to i64
  %180 = extractvalue { i32, i1 } %173, 0, !nosanitize !10
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, ptr %0, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !9
  %184 = zext i8 %183 to i64
  %185 = shl nuw nsw i64 %179, 10
  %186 = getelementptr inbounds nuw i8, ptr %3, i64 %185
  %187 = getelementptr inbounds nuw [4 x i8], ptr %186, i64 %184
  %188 = load i32, ptr %187, align 4, !tbaa !5
  %189 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %188, i32 -1)
  %190 = extractvalue { i32, i1 } %189, 1, !nosanitize !10
  br i1 %190, label %.loopexit, label %191, !prof !11, !nosanitize !10

191:                                              ; preds = %175
  %192 = extractvalue { i32, i1 } %189, 0, !nosanitize !10
  store i32 %192, ptr %187, align 4, !tbaa !5
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x i8], ptr %1, i64 %193
  store i32 %169, ptr %194, align 4, !tbaa !5
  %195 = icmp slt i32 %78, 1073741824
  br i1 %195, label %197, label %196, !prof !22, !nosanitize !10

196:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

197:                                              ; preds = %191
  %198 = shl nuw nsw i32 %78, 1
  %199 = sub nsw i32 %4, %198
  %200 = icmp slt i32 %199, 1024
  %201 = getelementptr i8, ptr %0, i64 2
  %202 = getelementptr i8, ptr %0, i64 %131
  br label %203

203:                                              ; preds = %726, %197
  %204 = phi i32 [ 254, %197 ], [ %727, %726 ]
  %205 = phi i32 [ %78, %197 ], [ %213, %726 ]
  %206 = shl i32 %204, 8
  br label %207

207:                                              ; preds = %720, %203
  %208 = phi i32 [ 255, %203 ], [ %721, %720 ]
  %209 = phi i32 [ %205, %203 ], [ %213, %720 ]
  %210 = or i32 %208, %206
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [4 x i8], ptr %3, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !5
  %214 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %209, i32 %213), !nosanitize !10
  %215 = extractvalue { i32, i1 } %214, 1, !nosanitize !10
  br i1 %215, label %.loopexit, label %216, !prof !11, !nosanitize !10

216:                                              ; preds = %207
  %217 = extractvalue { i32, i1 } %214, 0, !nosanitize !10
  %218 = icmp sgt i32 %217, 1
  br i1 %218, label %219, label %720

219:                                              ; preds = %216
  %220 = sext i32 %213 to i64
  %.idx = shl nsw i64 %220, 2
  %221 = getelementptr inbounds i8, ptr %1, i64 %.idx
  %222 = load i32, ptr %221, align 4, !tbaa !5
  %223 = sext i32 %209 to i64
  %.idx219 = shl nsw i64 %223, 2
  %224 = getelementptr inbounds i8, ptr %1, i64 %.idx219
  %225 = icmp eq i32 %222, %169
  %226 = getelementptr inbounds nuw i8, ptr %221, i64 4
  %227 = select i1 %225, ptr %226, ptr %221
  br i1 %200, label %230, label %228

228:                                              ; preds = %219
  %229 = ptrtoint ptr %227 to i64
  br label %354

230:                                              ; preds = %219
  %231 = ptrtoint ptr %224 to i64
  %232 = ptrtoint ptr %227 to i64
  %233 = sub i64 %231, %232
  %234 = ashr exact i64 %233, 2
  %235 = add nsw i64 %234, 2147483648
  %236 = icmp ult i64 %235, 4294967296
  br i1 %236, label %238, label %237

237:                                              ; preds = %230
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 853, ptr noundef nonnull @__PRETTY_FUNCTION__.sssort) #10
  unreachable

238:                                              ; preds = %230
  %239 = trunc nsw i64 %234 to i32
  %240 = icmp slt i32 %199, %239
  br i1 %240, label %241, label %354

241:                                              ; preds = %238
  %242 = icmp sgt i64 %234, 1048575
  br i1 %242, label %347, label %243

243:                                              ; preds = %241
  %244 = icmp ult i64 %234, 65536
  br i1 %244, label %263, label %245

245:                                              ; preds = %243
  %246 = icmp ult i64 %234, 16777216
  br i1 %246, label %256, label %247

247:                                              ; preds = %245
  %248 = lshr i64 %234, 24
  %249 = and i64 %248, 255
  %250 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !5
  %252 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %251, i32 24), !nosanitize !10
  %253 = extractvalue { i32, i1 } %252, 0, !nosanitize !10
  %254 = extractvalue { i32, i1 } %252, 1, !nosanitize !10
  br i1 %254, label %255, label %275, !prof !11, !nosanitize !10

255:                                              ; preds = %314, %304, %300, %292, %289, %265, %256, %247
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

256:                                              ; preds = %245
  %257 = lshr i64 %234, 16
  %258 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !5
  %260 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %259, i32 16), !nosanitize !10
  %261 = extractvalue { i32, i1 } %260, 0, !nosanitize !10
  %262 = extractvalue { i32, i1 } %260, 1, !nosanitize !10
  br i1 %262, label %255, label %275, !prof !11, !nosanitize !10

263:                                              ; preds = %243
  %264 = icmp samesign ult i64 %234, 256
  br i1 %264, label %272, label %265

265:                                              ; preds = %263
  %266 = lshr i64 %234, 8
  %267 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !5
  %269 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %268, i32 8), !nosanitize !10
  %270 = extractvalue { i32, i1 } %269, 0, !nosanitize !10
  %271 = extractvalue { i32, i1 } %269, 1, !nosanitize !10
  br i1 %271, label %255, label %275, !prof !11, !nosanitize !10

272:                                              ; preds = %263
  %273 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %233
  %274 = load i32, ptr %273, align 4, !tbaa !5
  br label %275

275:                                              ; preds = %272, %265, %256, %247
  %276 = phi i32 [ %253, %247 ], [ %261, %256 ], [ %270, %265 ], [ %274, %272 ]
  %277 = icmp sgt i32 %276, 15
  br i1 %277, label %278, label %312

278:                                              ; preds = %275
  %279 = lshr i32 %276, 1
  %280 = add nsw i32 %279, -7
  %281 = and i32 %276, 2147483646
  %282 = add nsw i32 %281, -6
  %283 = ashr i32 %239, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [4 x i8], ptr @sqq_table, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !5
  %287 = shl i32 %286, %280
  %288 = icmp samesign ugt i32 %276, 23
  br i1 %288, label %289, label %300

289:                                              ; preds = %278
  %290 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %287, i32 1), !nosanitize !10
  %291 = extractvalue { i32, i1 } %290, 1, !nosanitize !10
  br i1 %291, label %255, label %292, !prof !11, !nosanitize !10

292:                                              ; preds = %289
  %293 = extractvalue { i32, i1 } %290, 0, !nosanitize !10
  %294 = sdiv i32 %239, %287
  %295 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %293, i32 %294), !nosanitize !10
  %296 = extractvalue { i32, i1 } %295, 1, !nosanitize !10
  br i1 %296, label %255, label %297, !prof !11, !nosanitize !10

297:                                              ; preds = %292
  %298 = extractvalue { i32, i1 } %295, 0, !nosanitize !10
  %299 = ashr i32 %298, 1
  br label %300

300:                                              ; preds = %297, %278
  %301 = phi i32 [ %299, %297 ], [ %287, %278 ]
  %302 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %301, i32 1), !nosanitize !10
  %303 = extractvalue { i32, i1 } %302, 1, !nosanitize !10
  br i1 %303, label %255, label %304, !prof !11, !nosanitize !10

304:                                              ; preds = %300
  %305 = extractvalue { i32, i1 } %302, 0, !nosanitize !10
  %306 = sdiv i32 %239, %301
  %307 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %305, i32 %306), !nosanitize !10
  %308 = extractvalue { i32, i1 } %307, 1, !nosanitize !10
  br i1 %308, label %255, label %309, !prof !11, !nosanitize !10

309:                                              ; preds = %304
  %310 = extractvalue { i32, i1 } %307, 0, !nosanitize !10
  %311 = ashr i32 %310, 1
  br label %334

312:                                              ; preds = %275
  %313 = icmp sgt i32 %276, 7
  br i1 %313, label %314, label %328

314:                                              ; preds = %312
  %315 = lshr i32 %276, 1
  %316 = sub nuw nsw i32 7, %315
  %317 = and i32 %276, 2147483646
  %318 = add nsw i32 %317, -6
  %319 = ashr i32 %239, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [4 x i8], ptr @sqq_table, i64 %320
  %322 = load i32, ptr %321, align 4, !tbaa !5
  %323 = ashr i32 %322, %316
  %324 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %323, i32 1), !nosanitize !10
  %325 = extractvalue { i32, i1 } %324, 1, !nosanitize !10
  br i1 %325, label %255, label %326, !prof !11, !nosanitize !10

326:                                              ; preds = %314
  %327 = extractvalue { i32, i1 } %324, 0, !nosanitize !10
  br label %334

328:                                              ; preds = %312
  %329 = shl i64 %233, 30
  %330 = ashr i64 %329, 32
  %331 = getelementptr inbounds [4 x i8], ptr @sqq_table, i64 %330
  %332 = load i32, ptr %331, align 4, !tbaa !5
  %333 = ashr i32 %332, 4
  br label %344

334:                                              ; preds = %326, %309
  %335 = phi i32 [ %311, %309 ], [ %327, %326 ]
  %336 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %335, i32 %335), !nosanitize !10
  %337 = extractvalue { i32, i1 } %336, 1, !nosanitize !10
  br i1 %337, label %338, label %339, !prof !11, !nosanitize !10

338:                                              ; preds = %334
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

339:                                              ; preds = %334
  %340 = extractvalue { i32, i1 } %336, 0, !nosanitize !10
  %341 = icmp sgt i32 %340, %239
  %342 = sext i1 %341 to i32
  %343 = add nsw i32 %335, %342
  br label %344

344:                                              ; preds = %339, %328
  %345 = phi i32 [ %333, %328 ], [ %343, %339 ]
  %346 = icmp slt i32 %199, %345
  br i1 %346, label %347, label %354

347:                                              ; preds = %344, %241
  %348 = phi i32 [ %345, %344 ], [ 1024, %241 ]
  %349 = tail call i32 @llvm.smin.i32(i32 %348, i32 1024)
  %350 = sext i32 %349 to i64
  %351 = sub nsw i64 0, %350
  %352 = getelementptr inbounds [4 x i8], ptr %224, i64 %351
  %353 = icmp eq i32 %348, 0
  br label %354

354:                                              ; preds = %347, %344, %238, %228
  %355 = phi i64 [ %229, %228 ], [ %232, %238 ], [ %232, %344 ], [ %232, %347 ]
  %356 = phi i32 [ %199, %228 ], [ %199, %238 ], [ %199, %344 ], [ %349, %347 ]
  %357 = phi ptr [ %136, %228 ], [ %136, %238 ], [ %136, %344 ], [ %352, %347 ]
  %358 = phi ptr [ %224, %228 ], [ %224, %238 ], [ %224, %344 ], [ %352, %347 ]
  %359 = phi i1 [ true, %228 ], [ true, %238 ], [ true, %344 ], [ %353, %347 ]
  %360 = ptrtoint ptr %358 to i64
  %361 = sub i64 %360, %355
  %362 = icmp sgt i64 %361, 4096
  br i1 %362, label %364, label %363

363:                                              ; preds = %354
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %135, ptr noundef %227, ptr noundef %358)
  br label %.loopexit305

364:                                              ; preds = %354
  %365 = ptrtoint ptr %224 to i64
  br label %366

366:                                              ; preds = %397, %364
  %367 = phi i32 [ 0, %364 ], [ %398, %397 ]
  %368 = phi ptr [ %227, %364 ], [ %369, %397 ]
  %369 = getelementptr inbounds nuw i8, ptr %368, i64 4096
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %135, ptr noundef %368, ptr noundef %369)
  %370 = ptrtoint ptr %369 to i64
  %371 = sub i64 %365, %370
  %372 = ashr exact i64 %371, 2
  %373 = add nsw i64 %372, 2147483648
  %374 = icmp ult i64 %373, 4294967296
  br i1 %374, label %376, label %375

375:                                              ; preds = %366
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.src, i32 noundef 866, ptr noundef nonnull @__PRETTY_FUNCTION__.sssort) #10
  unreachable

376:                                              ; preds = %366
  %377 = trunc nsw i64 %372 to i32
  %378 = icmp slt i32 %356, %377
  %379 = select i1 %378, ptr %369, ptr %357
  %380 = tail call i32 @llvm.smax.i32(i32 %356, i32 %377)
  %381 = and i32 %367, 1
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %.loopexit296, label %.preheader295

.preheader295:                                    ; preds = %376, %.preheader295
  %383 = phi i32 [ %390, %.preheader295 ], [ 1024, %376 ]
  %384 = phi i32 [ %391, %.preheader295 ], [ %367, %376 ]
  %385 = phi ptr [ %388, %.preheader295 ], [ %368, %376 ]
  %386 = sext i32 %383 to i64
  %387 = sub nsw i64 0, %386
  %388 = getelementptr inbounds [4 x i8], ptr %385, i64 %387
  %389 = getelementptr inbounds [4 x i8], ptr %385, i64 %386
  tail call fastcc void @ss_swapmerge(ptr noundef nonnull %0, ptr noundef nonnull %135, ptr noundef %388, ptr noundef %385, ptr noundef %389, ptr noundef %379, i32 noundef %380)
  %390 = shl i32 %383, 1
  %391 = ashr i32 %384, 1
  %392 = and i32 %384, 2
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %.loopexit296, label %.preheader295, !llvm.loop !23

.loopexit296:                                     ; preds = %.preheader295, %376
  %394 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %367, i32 1), !nosanitize !10
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !10
  br i1 %395, label %396, label %397, !prof !11, !nosanitize !10

396:                                              ; preds = %.loopexit296
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

397:                                              ; preds = %.loopexit296
  %398 = extractvalue { i32, i1 } %394, 0, !nosanitize !10
  %399 = sub i64 %360, %370
  %400 = icmp sgt i64 %399, 4096
  br i1 %400, label %366, label %401, !llvm.loop !24

401:                                              ; preds = %397
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %135, ptr noundef %369, ptr noundef %358)
  %402 = icmp eq i32 %398, 0
  br i1 %402, label %.loopexit305, label %.preheader304

.preheader304:                                    ; preds = %401, %412
  %403 = phi i32 [ %415, %412 ], [ %398, %401 ]
  %404 = phi i32 [ %414, %412 ], [ 1024, %401 ]
  %405 = phi ptr [ %413, %412 ], [ %369, %401 ]
  %406 = and i32 %403, 1
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %412, label %408

408:                                              ; preds = %.preheader304
  %409 = sext i32 %404 to i64
  %410 = sub nsw i64 0, %409
  %411 = getelementptr inbounds [4 x i8], ptr %405, i64 %410
  tail call fastcc void @ss_swapmerge(ptr noundef nonnull %0, ptr noundef nonnull %135, ptr noundef %411, ptr noundef %405, ptr noundef %358, ptr noundef %357, i32 noundef %356)
  br label %412

412:                                              ; preds = %408, %.preheader304
  %413 = phi ptr [ %411, %408 ], [ %405, %.preheader304 ]
  %414 = shl i32 %404, 1
  %415 = ashr i32 %403, 1
  %416 = icmp ult i32 %403, 2
  br i1 %416, label %.loopexit305, label %.preheader304, !llvm.loop !25

.loopexit305:                                     ; preds = %412, %401, %363
  br i1 %359, label %.loopexit303, label %417

417:                                              ; preds = %.loopexit305
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %135, ptr noundef %358, ptr noundef nonnull %224)
  br label %418

418:                                              ; preds = %.loopexit292, %417
  %419 = phi ptr [ %224, %417 ], [ %660, %.loopexit292 ]
  %420 = phi ptr [ %358, %417 ], [ %654, %.loopexit292 ]
  %421 = getelementptr inbounds i8, ptr %419, i64 -4
  %422 = load i32, ptr %421, align 4, !tbaa !5
  %423 = icmp slt i32 %422, 0
  %424 = ashr i32 %422, 31
  %425 = xor i32 %424, %422
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds nuw [4 x i8], ptr %135, i64 %426
  %428 = ptrtoint ptr %420 to i64
  %429 = sub i64 %428, %355
  %430 = ashr exact i64 %429, 2
  %431 = add nsw i64 %430, 2147483648
  %432 = icmp ult i64 %431, 4294967296
  br i1 %432, label %434, label %433

433:                                              ; preds = %418
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.src, i32 noundef 604, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_inplacemerge) #10
  unreachable

434:                                              ; preds = %418
  %435 = icmp sgt i64 %430, 0
  br i1 %435, label %436, label %506

436:                                              ; preds = %434
  %437 = trunc nuw nsw i64 %430 to i32
  %438 = load i32, ptr %427, align 4, !tbaa !5
  %439 = getelementptr i8, ptr %427, i64 4
  %440 = load i32, ptr %439, align 4, !tbaa !5
  %441 = sext i32 %438 to i64
  %442 = getelementptr inbounds i8, ptr %201, i64 %441
  %443 = sext i32 %440 to i64
  %444 = getelementptr i8, ptr %201, i64 %443
  %445 = icmp ult ptr %442, %444
  br label %446

446:                                              ; preds = %493, %436
  %447 = phi i32 [ -1, %436 ], [ %502, %493 ]
  %448 = phi i32 [ %437, %436 ], [ %501, %493 ]
  %449 = phi ptr [ %227, %436 ], [ %499, %493 ]
  %450 = lshr i32 %448, 1
  %451 = zext nneg i32 %450 to i64
  %452 = getelementptr inbounds nuw [4 x i8], ptr %449, i64 %451
  %453 = load i32, ptr %452, align 4, !tbaa !5
  %454 = ashr i32 %453, 31
  %455 = xor i32 %454, %453
  %456 = zext nneg i32 %455 to i64
  %457 = getelementptr inbounds nuw [4 x i8], ptr %135, i64 %456
  %458 = load i32, ptr %457, align 4, !tbaa !5
  %459 = getelementptr i8, ptr %457, i64 4
  %460 = load i32, ptr %459, align 4, !tbaa !5
  %461 = sext i32 %458 to i64
  %462 = getelementptr inbounds i8, ptr %201, i64 %461
  %463 = sext i32 %460 to i64
  %464 = getelementptr i8, ptr %201, i64 %463
  %465 = icmp ult ptr %462, %464
  %466 = select i1 %465, i1 %445, i1 false
  br i1 %466, label %.preheader286, label %.loopexit288

.preheader286:                                    ; preds = %446, %472
  %467 = phi ptr [ %473, %472 ], [ %462, %446 ]
  %468 = phi ptr [ %474, %472 ], [ %442, %446 ]
  %469 = load i8, ptr %467, align 1, !tbaa !9
  %470 = load i8, ptr %468, align 1, !tbaa !9
  %471 = icmp eq i8 %469, %470
  br i1 %471, label %472, label %.loopexit287

472:                                              ; preds = %.preheader286
  %473 = getelementptr inbounds nuw i8, ptr %467, i64 1
  %474 = getelementptr inbounds nuw i8, ptr %468, i64 1
  %475 = icmp ult ptr %473, %464
  %476 = icmp ult ptr %474, %444
  %477 = select i1 %475, i1 %476, i1 false
  br i1 %477, label %.preheader286, label %.loopexit288, !llvm.loop !26

.loopexit288:                                     ; preds = %472, %446
  %478 = phi ptr [ %442, %446 ], [ %474, %472 ]
  %479 = phi ptr [ %462, %446 ], [ %473, %472 ]
  %480 = phi i1 [ %465, %446 ], [ %475, %472 ]
  %481 = phi i1 [ %445, %446 ], [ %476, %472 ]
  br i1 %480, label %482, label %491

482:                                              ; preds = %.loopexit288
  br i1 %481, label %483, label %493

483:                                              ; preds = %482
  %484 = load i8, ptr %479, align 1, !tbaa !9
  %485 = load i8, ptr %478, align 1, !tbaa !9
  br label %.loopexit287

.loopexit287:                                     ; preds = %.preheader286, %483
  %486 = phi i8 [ %485, %483 ], [ %470, %.preheader286 ]
  %487 = phi i8 [ %484, %483 ], [ %469, %.preheader286 ]
  %488 = zext i8 %487 to i32
  %489 = zext i8 %486 to i32
  %490 = sub nsw i32 %488, %489
  br label %493

491:                                              ; preds = %.loopexit288
  %492 = sext i1 %481 to i32
  br label %493

493:                                              ; preds = %491, %.loopexit287, %482
  %494 = phi i32 [ %492, %491 ], [ %490, %.loopexit287 ], [ 1, %482 ]
  %495 = icmp slt i32 %494, 0
  %496 = and i32 %448, 1
  %497 = xor i32 %496, 1
  %498 = getelementptr inbounds nuw i8, ptr %452, i64 4
  %499 = select i1 %495, ptr %498, ptr %449
  %500 = select i1 %495, i32 %497, i32 0
  %501 = sub nsw i32 %450, %500
  %502 = select i1 %495, i32 %447, i32 %494
  %503 = icmp sgt i32 %501, 0
  br i1 %503, label %446, label %504, !llvm.loop !27

504:                                              ; preds = %493
  %505 = icmp ult ptr %499, %420
  br i1 %505, label %508, label %652

506:                                              ; preds = %434
  %507 = icmp ult ptr %227, %420
  br i1 %507, label %513, label %652

508:                                              ; preds = %504
  %509 = icmp eq i32 %502, 0
  br i1 %509, label %510, label %513

510:                                              ; preds = %508
  %511 = load i32, ptr %499, align 4, !tbaa !5
  %512 = xor i32 %511, -1
  store i32 %512, ptr %499, align 4, !tbaa !5
  br label %513

513:                                              ; preds = %510, %508, %506
  %514 = phi ptr [ %499, %510 ], [ %499, %508 ], [ %227, %506 ]
  %515 = ptrtoint ptr %514 to i64
  %516 = sub i64 %428, %515
  %517 = ashr i64 %516, 2
  %518 = add nsw i64 %517, 2147483648
  %519 = icmp ult i64 %518, 4294967296
  br i1 %519, label %521, label %520

520:                                              ; preds = %513
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.src, i32 noundef 553, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_rotate) #10
  unreachable

521:                                              ; preds = %513
  %522 = ptrtoint ptr %419 to i64
  %523 = sub i64 %522, %428
  %524 = ashr i64 %523, 2
  %525 = add nsw i64 %524, 2147483648
  %526 = icmp ult i64 %525, 4294967296
  br i1 %526, label %528, label %527

527:                                              ; preds = %521
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.src, i32 noundef 554, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_rotate) #10
  unreachable

528:                                              ; preds = %521
  %529 = icmp sgt i64 %517, 0
  %530 = icmp sgt i64 %524, 0
  %531 = and i1 %530, %529
  br i1 %531, label %532, label %.loopexit293

532:                                              ; preds = %528
  %533 = trunc nuw nsw i64 %524 to i32
  %534 = trunc nuw nsw i64 %517 to i32
  %535 = getelementptr inbounds i8, ptr %420, i64 -4
  br label %536

536:                                              ; preds = %.loopexit283, %532
  %537 = phi i32 [ %533, %532 ], [ %645, %.loopexit283 ]
  %538 = phi i32 [ %534, %532 ], [ %644, %.loopexit283 ]
  %539 = phi ptr [ %419, %532 ], [ %643, %.loopexit283 ]
  %540 = phi ptr [ %514, %532 ], [ %642, %.loopexit283 ]
  %541 = icmp eq i32 %538, %537
  br i1 %541, label %542, label %587

542:                                              ; preds = %536
  %543 = add nsw i32 %537, -1
  %544 = zext nneg i32 %543 to i64
  %545 = add nuw nsw i64 %544, 1
  %546 = icmp samesign ult i32 %537, 8
  br i1 %546, label %.preheader2404.preheader, label %547

547:                                              ; preds = %542
  %548 = getelementptr i8, ptr %540, i64 4
  %549 = shl nuw nsw i64 %544, 2
  %550 = getelementptr i8, ptr %548, i64 %549
  %551 = getelementptr i8, ptr %420, i64 4
  %552 = getelementptr i8, ptr %551, i64 %549
  %553 = icmp ult ptr %540, %552
  %554 = icmp ult ptr %420, %550
  %555 = and i1 %553, %554
  br i1 %555, label %.preheader2404.preheader, label %556

556:                                              ; preds = %547
  %557 = and i64 %545, 4294967288
  br label %558

558:                                              ; preds = %558, %556
  %559 = phi i64 [ 0, %556 ], [ %569, %558 ]
  %560 = shl i64 %559, 2
  %561 = getelementptr i8, ptr %540, i64 %560
  %562 = getelementptr i8, ptr %420, i64 %560
  %563 = getelementptr i8, ptr %561, i64 16
  %564 = load <4 x i32>, ptr %561, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  %565 = load <4 x i32>, ptr %563, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  %566 = getelementptr i8, ptr %562, i64 16
  %567 = load <4 x i32>, ptr %562, align 4, !tbaa !5, !alias.scope !31
  %568 = load <4 x i32>, ptr %566, align 4, !tbaa !5, !alias.scope !31
  store <4 x i32> %567, ptr %561, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  store <4 x i32> %568, ptr %563, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  store <4 x i32> %564, ptr %562, align 4, !tbaa !5, !alias.scope !31
  store <4 x i32> %565, ptr %566, align 4, !tbaa !5, !alias.scope !31
  %569 = add nuw nsw i64 %559, 8
  %570 = icmp eq i64 %569, %557
  br i1 %570, label %571, label %558, !llvm.loop !33

571:                                              ; preds = %558
  %572 = shl nuw nsw i64 %557, 2
  %573 = getelementptr i8, ptr %540, i64 %572
  %574 = trunc nuw nsw i64 %557 to i32
  %575 = sub nsw i32 %537, %574
  %576 = getelementptr i8, ptr %420, i64 %572
  %577 = icmp eq i64 %545, %557
  br i1 %577, label %.loopexit293, label %.preheader2404.preheader

.preheader2404.preheader:                         ; preds = %571, %547, %542
  %.ph2353 = phi ptr [ %540, %547 ], [ %540, %542 ], [ %573, %571 ]
  %.ph2354 = phi i32 [ %537, %547 ], [ %537, %542 ], [ %575, %571 ]
  %.ph2355 = phi ptr [ %420, %547 ], [ %420, %542 ], [ %576, %571 ]
  br label %.preheader2404

.preheader2404:                                   ; preds = %.preheader2404.preheader, %.preheader2404
  %578 = phi ptr [ %584, %.preheader2404 ], [ %.ph2353, %.preheader2404.preheader ]
  %579 = phi i32 [ %583, %.preheader2404 ], [ %.ph2354, %.preheader2404.preheader ]
  %580 = phi ptr [ %585, %.preheader2404 ], [ %.ph2355, %.preheader2404.preheader ]
  %581 = load i32, ptr %578, align 4, !tbaa !5
  %582 = load i32, ptr %580, align 4, !tbaa !5
  store i32 %582, ptr %578, align 4, !tbaa !5
  store i32 %581, ptr %580, align 4, !tbaa !5
  %583 = add nsw i32 %579, -1
  %584 = getelementptr inbounds nuw i8, ptr %578, i64 4
  %585 = getelementptr inbounds nuw i8, ptr %580, i64 4
  %586 = icmp samesign ugt i32 %579, 1
  br i1 %586, label %.preheader2404, label %.loopexit293, !llvm.loop !36

587:                                              ; preds = %536
  %588 = icmp samesign ult i32 %538, %537
  br i1 %588, label %589, label %609

589:                                              ; preds = %587
  %590 = getelementptr inbounds i8, ptr %539, i64 -4
  %591 = xor i32 %538, -1
  br label %592

592:                                              ; preds = %604, %589
  %593 = phi ptr [ %607, %604 ], [ %590, %589 ]
  %594 = phi i32 [ %605, %604 ], [ %537, %589 ]
  %595 = load i32, ptr %593, align 4, !tbaa !5
  br label %596

596:                                              ; preds = %596, %592
  %597 = phi ptr [ %600, %596 ], [ %593, %592 ]
  %598 = phi ptr [ %602, %596 ], [ %535, %592 ]
  %599 = load i32, ptr %598, align 4, !tbaa !5
  %600 = getelementptr inbounds i8, ptr %597, i64 -4
  store i32 %599, ptr %597, align 4, !tbaa !5
  %601 = load i32, ptr %600, align 4, !tbaa !5
  %602 = getelementptr inbounds i8, ptr %598, i64 -4
  store i32 %601, ptr %598, align 4, !tbaa !5
  %603 = icmp ult ptr %602, %540
  br i1 %603, label %604, label %596

604:                                              ; preds = %596
  store i32 %595, ptr %600, align 4, !tbaa !5
  %605 = add i32 %594, %591
  %606 = icmp sgt i32 %605, %538
  %607 = getelementptr inbounds i8, ptr %597, i64 -8
  br i1 %606, label %592, label %.loopexit283

608:                                              ; preds = %630
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

609:                                              ; preds = %587
  %610 = load i32, ptr %540, align 4, !tbaa !5
  %611 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %537, i32 1)
  %612 = extractvalue { i32, i1 } %611, 1
  %613 = extractvalue { i32, i1 } %611, 0
  br i1 %612, label %.preheader282, label %.preheader284, !prof !11, !nosanitize !10

.preheader282:                                    ; preds = %609, %.preheader282
  %614 = phi ptr [ %617, %.preheader282 ], [ %540, %609 ]
  %615 = phi ptr [ %619, %.preheader282 ], [ %420, %609 ]
  %616 = load i32, ptr %615, align 4, !tbaa !5
  %617 = getelementptr inbounds nuw i8, ptr %614, i64 4
  store i32 %616, ptr %614, align 4, !tbaa !5
  %618 = load i32, ptr %617, align 4, !tbaa !5
  %619 = getelementptr inbounds nuw i8, ptr %615, i64 4
  store i32 %618, ptr %615, align 4, !tbaa !5
  %620 = icmp ugt ptr %539, %619
  br i1 %620, label %.preheader282, label %621

621:                                              ; preds = %.preheader282
  store i32 %610, ptr %617, align 4, !tbaa !5
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

622:                                              ; preds = %.preheader284, %622
  %623 = phi ptr [ %626, %622 ], [ %639, %.preheader284 ]
  %624 = phi ptr [ %628, %622 ], [ %420, %.preheader284 ]
  %625 = load i32, ptr %624, align 4, !tbaa !5
  %626 = getelementptr inbounds nuw i8, ptr %623, i64 4
  store i32 %625, ptr %623, align 4, !tbaa !5
  %627 = load i32, ptr %626, align 4, !tbaa !5
  %628 = getelementptr inbounds nuw i8, ptr %624, i64 4
  store i32 %627, ptr %624, align 4, !tbaa !5
  %629 = icmp ugt ptr %539, %628
  br i1 %629, label %622, label %630

630:                                              ; preds = %622
  store i32 %640, ptr %626, align 4, !tbaa !5
  %631 = getelementptr inbounds nuw i8, ptr %623, i64 8
  %632 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %641, i32 %613), !nosanitize !10
  %633 = extractvalue { i32, i1 } %632, 0, !nosanitize !10
  %634 = extractvalue { i32, i1 } %632, 1, !nosanitize !10
  br i1 %634, label %608, label %635, !prof !11, !nosanitize !10

635:                                              ; preds = %630
  %636 = icmp sgt i32 %633, %537
  br i1 %636, label %637, label %.loopexit283

637:                                              ; preds = %635
  %638 = load i32, ptr %631, align 4, !tbaa !5
  br label %.preheader284

.preheader284:                                    ; preds = %609, %637
  %639 = phi ptr [ %631, %637 ], [ %540, %609 ]
  %640 = phi i32 [ %638, %637 ], [ %610, %609 ]
  %641 = phi i32 [ %633, %637 ], [ %538, %609 ]
  br label %622

.loopexit283:                                     ; preds = %635, %604
  %642 = phi ptr [ %540, %604 ], [ %631, %635 ]
  %643 = phi ptr [ %600, %604 ], [ %539, %635 ]
  %644 = phi i32 [ %538, %604 ], [ %633, %635 ]
  %645 = phi i32 [ %605, %604 ], [ %537, %635 ]
  %646 = icmp sgt i32 %644, 0
  %647 = icmp sgt i32 %645, 0
  %648 = and i1 %646, %647
  br i1 %648, label %536, label %.loopexit293, !llvm.loop !37

.loopexit293:                                     ; preds = %.loopexit283, %.preheader2404, %571, %528
  %649 = sub nsw i64 0, %517
  %650 = getelementptr inbounds [4 x i8], ptr %419, i64 %649
  %651 = icmp eq ptr %227, %514
  br i1 %651, label %.loopexit303, label %652

652:                                              ; preds = %.loopexit293, %506, %504
  %653 = phi ptr [ %650, %.loopexit293 ], [ %419, %504 ], [ %419, %506 ]
  %654 = phi ptr [ %514, %.loopexit293 ], [ %420, %504 ], [ %420, %506 ]
  %655 = getelementptr inbounds i8, ptr %653, i64 -4
  br i1 %423, label %.preheader291, label %.loopexit292

.preheader291:                                    ; preds = %652, %.preheader291
  %656 = phi ptr [ %657, %.preheader291 ], [ %655, %652 ]
  %657 = getelementptr inbounds i8, ptr %656, i64 -4
  %658 = load i32, ptr %657, align 4, !tbaa !5
  %659 = icmp slt i32 %658, 0
  br i1 %659, label %.preheader291, label %.loopexit292, !llvm.loop !38

.loopexit292:                                     ; preds = %.preheader291, %652
  %660 = phi ptr [ %655, %652 ], [ %657, %.preheader291 ]
  %661 = icmp eq ptr %654, %660
  br i1 %661, label %.loopexit303, label %418

.loopexit303:                                     ; preds = %.loopexit292, %.loopexit293, %.loopexit305
  br i1 %225, label %662, label %720

662:                                              ; preds = %.loopexit303
  %663 = load i32, ptr %221, align 4, !tbaa !5
  %664 = add nsw i64 %.idx, 4
  %665 = icmp slt i64 %664, %.idx219
  br i1 %665, label %666, label %.loopexit298

666:                                              ; preds = %662
  %667 = sext i32 %663 to i64
  %668 = getelementptr inbounds [4 x i8], ptr %135, i64 %667
  %669 = load i32, ptr %668, align 4, !tbaa !5
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds i8, ptr %201, i64 %670
  %672 = icmp ult ptr %671, %202
  %673 = freeze i1 %672
  br i1 %673, label %.preheader297, label %.preheader300

.preheader300:                                    ; preds = %666, %677
  %674 = phi ptr [ %679, %677 ], [ %226, %666 ]
  %675 = load i32, ptr %674, align 4, !tbaa !5
  %676 = icmp slt i32 %675, 0
  br i1 %676, label %677, label %.loopexit298

677:                                              ; preds = %.preheader300
  %678 = getelementptr inbounds i8, ptr %674, i64 -4
  store i32 %675, ptr %678, align 4, !tbaa !5
  %679 = getelementptr inbounds nuw i8, ptr %674, i64 4
  %680 = icmp ult ptr %679, %224
  br i1 %680, label %.preheader300, label %.loopexit298, !llvm.loop !39

.preheader297:                                    ; preds = %666, %714
  %681 = phi ptr [ %716, %714 ], [ %226, %666 ]
  %682 = load i32, ptr %681, align 4, !tbaa !5
  %683 = icmp slt i32 %682, 0
  br i1 %683, label %714, label %684

684:                                              ; preds = %.preheader297
  %685 = zext nneg i32 %682 to i64
  %686 = getelementptr inbounds nuw [4 x i8], ptr %135, i64 %685
  %687 = load i32, ptr %686, align 4, !tbaa !5
  %688 = getelementptr i8, ptr %686, i64 4
  %689 = load i32, ptr %688, align 4, !tbaa !5
  %690 = sext i32 %687 to i64
  %691 = getelementptr inbounds i8, ptr %201, i64 %690
  %692 = sext i32 %689 to i64
  %693 = getelementptr i8, ptr %201, i64 %692
  %694 = icmp ult ptr %691, %693
  br i1 %694, label %.preheader289, label %714

.preheader289:                                    ; preds = %684, %700
  %695 = phi ptr [ %701, %700 ], [ %671, %684 ]
  %696 = phi ptr [ %702, %700 ], [ %691, %684 ]
  %697 = load i8, ptr %695, align 1, !tbaa !9
  %698 = load i8, ptr %696, align 1, !tbaa !9
  %699 = icmp eq i8 %697, %698
  br i1 %699, label %700, label %.loopexit290

700:                                              ; preds = %.preheader289
  %701 = getelementptr inbounds nuw i8, ptr %695, i64 1
  %702 = getelementptr inbounds nuw i8, ptr %696, i64 1
  %703 = icmp ult ptr %701, %202
  %704 = icmp ult ptr %702, %693
  %705 = select i1 %703, i1 %704, i1 false
  br i1 %705, label %.preheader289, label %706, !llvm.loop !26

706:                                              ; preds = %700
  br i1 %703, label %707, label %.loopexit298

707:                                              ; preds = %706
  br i1 %704, label %708, label %714

708:                                              ; preds = %707
  %709 = load i8, ptr %701, align 1, !tbaa !9
  %710 = load i8, ptr %702, align 1, !tbaa !9
  br label %.loopexit290

.loopexit290:                                     ; preds = %.preheader289, %708
  %711 = phi i8 [ %710, %708 ], [ %698, %.preheader289 ]
  %712 = phi i8 [ %709, %708 ], [ %697, %.preheader289 ]
  %713 = icmp ugt i8 %712, %711
  br i1 %713, label %714, label %.loopexit298

714:                                              ; preds = %.loopexit290, %707, %684, %.preheader297
  %715 = getelementptr inbounds i8, ptr %681, i64 -4
  store i32 %682, ptr %715, align 4, !tbaa !5
  %716 = getelementptr inbounds nuw i8, ptr %681, i64 4
  %717 = icmp ult ptr %716, %224
  br i1 %717, label %.preheader297, label %.loopexit298, !llvm.loop !39

.loopexit298:                                     ; preds = %677, %.preheader300, %714, %.loopexit290, %706, %662
  %718 = phi ptr [ %226, %662 ], [ %681, %.loopexit290 ], [ %716, %714 ], [ %681, %706 ], [ %674, %.preheader300 ], [ %679, %677 ]
  %719 = getelementptr inbounds i8, ptr %718, i64 -4
  store i32 %663, ptr %719, align 4, !tbaa !5
  br label %720

720:                                              ; preds = %.loopexit298, %.loopexit303, %216
  %721 = add nsw i32 %208, -1
  %722 = icmp slt i32 %204, %721
  br i1 %722, label %207, label %723, !llvm.loop !40

723:                                              ; preds = %720
  %724 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %204, i32 -1)
  %725 = extractvalue { i32, i1 } %724, 1, !nosanitize !10
  br i1 %725, label %.loopexit, label %726, !prof !11, !nosanitize !10

726:                                              ; preds = %723
  %727 = extractvalue { i32, i1 } %724, 0, !nosanitize !10
  %728 = icmp sgt i32 %213, 0
  br i1 %728, label %203, label %.preheader279, !llvm.loop !41

.preheader279:                                    ; preds = %726, %781
  %729 = phi i32 [ %782, %781 ], [ %169, %726 ]
  %730 = zext nneg i32 %729 to i64
  %731 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %730
  %732 = load i32, ptr %731, align 4, !tbaa !5
  %733 = icmp sgt i32 %732, -1
  br i1 %733, label %.preheader278.preheader, label %753

.preheader278.preheader:                          ; preds = %.preheader279
  %734 = zext nneg i32 %732 to i64
  %735 = getelementptr inbounds nuw [4 x i8], ptr %136, i64 %734
  store i32 %729, ptr %735, align 4, !tbaa !5
  %736 = icmp eq i32 %729, 0
  br i1 %736, label %.preheader278.preheader._crit_edge, label %.lr.ph

.preheader278:                                    ; preds = %.lr.ph
  %737 = zext nneg i32 %746 to i64
  %738 = getelementptr inbounds nuw [4 x i8], ptr %136, i64 %737
  %739 = trunc nuw nsw i64 %744 to i32
  store i32 %739, ptr %738, align 4, !tbaa !5
  %740 = icmp eq i64 %744, 0
  br i1 %740, label %.preheader278.preheader._crit_edge.loopexit, label %.lr.ph, !llvm.loop !42

.preheader278.preheader._crit_edge.loopexit:      ; preds = %.preheader278
  %741 = xor i32 %729, -1
  br label %.preheader278.preheader._crit_edge

.preheader278.preheader._crit_edge:               ; preds = %.preheader278.preheader, %.preheader278.preheader._crit_edge.loopexit
  %742 = phi i32 [ %741, %.preheader278.preheader._crit_edge.loopexit ], [ -1, %.preheader278.preheader ]
  store i32 %742, ptr %1, align 4, !tbaa !5
  br label %.loopexit280

.lr.ph:                                           ; preds = %.preheader278.preheader, %.preheader278
  %743 = phi i64 [ %744, %.preheader278 ], [ %730, %.preheader278.preheader ]
  %744 = add nsw i64 %743, -1
  %745 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %744
  %746 = load i32, ptr %745, align 4, !tbaa !5
  %747 = icmp sgt i32 %746, -1
  br i1 %747, label %.preheader278, label %748, !llvm.loop !42

748:                                              ; preds = %.lr.ph
  %749 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %743
  %750 = trunc nuw nsw i64 %744 to i32
  %751 = sub nsw i32 %750, %729
  store i32 %751, ptr %749, align 4, !tbaa !5
  %752 = icmp eq i64 %743, 1
  br i1 %752, label %.loopexit280, label %._crit_edge

._crit_edge:                                      ; preds = %748
  %.pre = and i64 %744, 4294967295
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pre
  %.pre1030 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !5
  br label %753

753:                                              ; preds = %._crit_edge, %.preheader279
  %754 = phi i32 [ %.pre1030, %._crit_edge ], [ %732, %.preheader279 ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %730, %.preheader279 ]
  %755 = phi i32 [ %750, %._crit_edge ], [ %729, %.preheader279 ]
  %756 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pre-phi
  %757 = xor i32 %754, -1
  store i32 %757, ptr %756, align 4, !tbaa !5
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds [4 x i8], ptr %136, i64 %758
  store i32 %755, ptr %759, align 4, !tbaa !5
  br label %767

760:                                              ; preds = %767
  %761 = getelementptr inbounds [4 x i8], ptr %1, i64 %769
  %762 = load i32, ptr %761, align 4, !tbaa !5
  %763 = xor i32 %762, -1
  store i32 %763, ptr %761, align 4, !tbaa !5
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds [4 x i8], ptr %136, i64 %764
  store i32 %755, ptr %765, align 4, !tbaa !5
  %766 = icmp eq i64 %769, -2147483648
  br i1 %766, label %.loopexit, label %767, !prof !43, !llvm.loop !44, !nosanitize !10

767:                                              ; preds = %760, %753
  %768 = phi i64 [ %.pre-phi, %753 ], [ %769, %760 ]
  %769 = add nsw i64 %768, -1
  %770 = shl i64 %769, 32
  %771 = ashr exact i64 %770, 30
  %772 = getelementptr inbounds i8, ptr %1, i64 %771
  %773 = load i32, ptr %772, align 4, !tbaa !5
  %774 = icmp slt i32 %773, 0
  br i1 %774, label %760, label %775, !llvm.loop !44

775:                                              ; preds = %767
  %776 = trunc i64 %769 to i32
  %777 = zext nneg i32 %773 to i64
  %778 = getelementptr inbounds nuw [4 x i8], ptr %136, i64 %777
  store i32 %755, ptr %778, align 4, !tbaa !5
  %779 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %776, i32 -1)
  %780 = extractvalue { i32, i1 } %779, 1, !nosanitize !10
  br i1 %780, label %.loopexit, label %781, !prof !11, !nosanitize !10

781:                                              ; preds = %775
  %782 = extractvalue { i32, i1 } %779, 0, !nosanitize !10
  %783 = icmp sgt i32 %782, -1
  br i1 %783, label %.preheader279, label %.loopexit280, !llvm.loop !45

.loopexit280:                                     ; preds = %781, %748, %.preheader278.preheader._crit_edge
  %784 = icmp samesign ult i32 %78, 65536
  br i1 %784, label %804, label %785

785:                                              ; preds = %.loopexit280
  %786 = icmp samesign ult i32 %78, 16777216
  br i1 %786, label %796, label %787

787:                                              ; preds = %785
  %788 = lshr i32 %78, 24
  %789 = zext nneg i32 %788 to i64
  %790 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %789
  %791 = load i32, ptr %790, align 4, !tbaa !5
  %792 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %791, i32 24), !nosanitize !10
  %793 = extractvalue { i32, i1 } %792, 0, !nosanitize !10
  %794 = extractvalue { i32, i1 } %792, 1, !nosanitize !10
  br i1 %794, label %795, label %817, !prof !11, !nosanitize !10

795:                                              ; preds = %806, %796, %787
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

796:                                              ; preds = %785
  %797 = lshr i32 %78, 16
  %798 = zext nneg i32 %797 to i64
  %799 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %798
  %800 = load i32, ptr %799, align 4, !tbaa !5
  %801 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %800, i32 16), !nosanitize !10
  %802 = extractvalue { i32, i1 } %801, 0, !nosanitize !10
  %803 = extractvalue { i32, i1 } %801, 1, !nosanitize !10
  br i1 %803, label %795, label %817, !prof !11, !nosanitize !10

804:                                              ; preds = %.loopexit280
  %805 = icmp samesign ult i32 %78, 256
  br i1 %805, label %814, label %806

806:                                              ; preds = %804
  %807 = lshr i32 %78, 8
  %808 = zext nneg i32 %807 to i64
  %809 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %808
  %810 = load i32, ptr %809, align 4, !tbaa !5
  %811 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %810, i32 8), !nosanitize !10
  %812 = extractvalue { i32, i1 } %811, 0, !nosanitize !10
  %813 = extractvalue { i32, i1 } %811, 1, !nosanitize !10
  br i1 %813, label %795, label %817, !prof !11, !nosanitize !10

814:                                              ; preds = %804
  %815 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %133
  %816 = load i32, ptr %815, align 4, !tbaa !5
  br label %817

817:                                              ; preds = %814, %806, %796, %787
  %818 = phi i32 [ %793, %787 ], [ %802, %796 ], [ %812, %806 ], [ %816, %814 ]
  %819 = add i32 %818, 1073741824
  %820 = icmp sgt i32 %819, -1
  br i1 %820, label %822, label %821, !prof !22, !nosanitize !10

821:                                              ; preds = %817
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

822:                                              ; preds = %817
  %823 = sub nsw i32 0, %78
  %824 = load i32, ptr %1, align 4, !tbaa !5
  %825 = icmp sgt i32 %824, %823
  br i1 %825, label %826, label %.loopexit276

826:                                              ; preds = %822
  %827 = getelementptr i8, ptr %136, i64 4
  %828 = shl nsw i32 %818, 1
  %829 = sdiv i32 %828, 3
  %830 = getelementptr i8, ptr %1, i64 4
  %831 = ptrtoint ptr %136 to i64
  %832 = ptrtoint ptr %1 to i64
  br label %833

833:                                              ; preds = %2797, %826
  %834 = phi i32 [ %824, %826 ], [ %2799, %2797 ]
  %835 = phi ptr [ %827, %826 ], [ %2798, %2797 ]
  %836 = phi i32 [ %829, %826 ], [ %2794, %2797 ]
  %837 = phi i32 [ %78, %826 ], [ %2793, %2797 ]
  %838 = ptrtoint ptr %835 to i64
  %839 = sub i64 %838, %831
  %840 = ashr i64 %839, 2
  %841 = add nsw i64 %840, 2147483648
  %842 = icmp ult i64 %841, 4294967296
  %843 = shl i64 %839, 30
  %844 = ashr i64 %843, 32
  %845 = sub nsw i64 0, %844
  br i1 %842, label %.preheader269, label %.preheader273

.preheader269:                                    ; preds = %833, %2659
  %846 = phi i32 [ %2665, %2659 ], [ %834, %833 ]
  %847 = phi i32 [ %2664, %2659 ], [ %837, %833 ]
  %848 = phi i32 [ %2663, %2659 ], [ %836, %833 ]
  %849 = phi ptr [ %2662, %2659 ], [ %1, %833 ]
  %850 = phi i32 [ %2661, %2659 ], [ 0, %833 ]
  %851 = phi i32 [ %2660, %2659 ], [ 0, %833 ]
  %852 = icmp slt i32 %846, 0
  br i1 %852, label %2645, label %853

853:                                              ; preds = %.preheader269
  %854 = icmp eq i32 %850, 0
  br i1 %854, label %858, label %855

855:                                              ; preds = %853
  %856 = sext i32 %850 to i64
  %857 = getelementptr inbounds [4 x i8], ptr %849, i64 %856
  store i32 %850, ptr %857, align 4, !tbaa !5
  br label %858

858:                                              ; preds = %855, %853
  %859 = zext nneg i32 %846 to i64
  %860 = getelementptr inbounds nuw [4 x i8], ptr %136, i64 %859
  %861 = load i32, ptr %860, align 4, !tbaa !5
  %862 = sext i32 %861 to i64
  %863 = getelementptr [4 x i8], ptr %830, i64 %862
  %864 = ptrtoint ptr %863 to i64
  %865 = ptrtoint ptr %849 to i64
  %866 = sub i64 %864, %865
  %867 = icmp sgt i64 %866, 4
  br i1 %867, label %871, label %868

868:                                              ; preds = %858
  %869 = icmp eq i64 %866, 4
  %870 = sext i1 %869 to i32
  br label %2653

871:                                              ; preds = %858
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %872 = icmp samesign ult i64 %866, 8589934592
  br i1 %872, label %873, label %2696

873:                                              ; preds = %871
  %874 = icmp samesign ult i64 %866, 262144
  br i1 %874, label %891, label %875

875:                                              ; preds = %873
  %876 = icmp samesign ult i64 %866, 67108864
  br i1 %876, label %884, label %877

877:                                              ; preds = %875
  %878 = lshr i64 %866, 26
  %879 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %878
  %880 = load i32, ptr %879, align 4, !tbaa !5
  %881 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %880, i32 24), !nosanitize !10
  %882 = extractvalue { i32, i1 } %881, 0, !nosanitize !10
  %883 = extractvalue { i32, i1 } %881, 1, !nosanitize !10
  br i1 %883, label %2697, label %.preheader2137.preheader, !prof !11, !nosanitize !10

884:                                              ; preds = %875
  %885 = lshr i64 %866, 18
  %886 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %885
  %887 = load i32, ptr %886, align 4, !tbaa !5
  %888 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %887, i32 16), !nosanitize !10
  %889 = extractvalue { i32, i1 } %888, 0, !nosanitize !10
  %890 = extractvalue { i32, i1 } %888, 1, !nosanitize !10
  br i1 %890, label %2697, label %.preheader2137.preheader, !prof !11, !nosanitize !10

891:                                              ; preds = %873
  %892 = icmp samesign ult i64 %866, 1024
  br i1 %892, label %900, label %893

893:                                              ; preds = %891
  %894 = lshr i64 %866, 10
  %895 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %894
  %896 = load i32, ptr %895, align 4, !tbaa !5
  %897 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %896, i32 8), !nosanitize !10
  %898 = extractvalue { i32, i1 } %897, 0, !nosanitize !10
  %899 = extractvalue { i32, i1 } %897, 1, !nosanitize !10
  br i1 %899, label %2697, label %.preheader2137.preheader, !prof !11, !nosanitize !10

900:                                              ; preds = %891
  %901 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %866
  %902 = load i32, ptr %901, align 4, !tbaa !5
  br label %.preheader2137.preheader

.preheader2137.preheader:                         ; preds = %900, %893, %884, %877
  %.ph2087 = phi i32 [ %882, %877 ], [ %889, %884 ], [ %898, %893 ], [ %902, %900 ]
  br label %.preheader2137

.preheader2137:                                   ; preds = %.preheader2137.preheader, %2634
  %903 = phi i32 [ %2635, %2634 ], [ 0, %.preheader2137.preheader ]
  %904 = phi i32 [ %2636, %2634 ], [ %847, %.preheader2137.preheader ]
  %905 = phi i32 [ %2637, %2634 ], [ %848, %.preheader2137.preheader ]
  %906 = phi ptr [ %2644, %2634 ], [ undef, %.preheader2137.preheader ]
  %907 = phi ptr [ %2638, %2634 ], [ %863, %.preheader2137.preheader ]
  %908 = phi ptr [ %2639, %2634 ], [ %849, %.preheader2137.preheader ]
  %909 = phi ptr [ %2640, %2634 ], [ %835, %.preheader2137.preheader ]
  %910 = phi i32 [ %2641, %2634 ], [ %.ph2087, %.preheader2137.preheader ]
  %911 = phi i32 [ %2642, %2634 ], [ 0, %.preheader2137.preheader ]
  %912 = phi i32 [ %2643, %2634 ], [ -1, %.preheader2137.preheader ]
  %913 = icmp slt i32 %910, 0
  br i1 %913, label %1838, label %914

914:                                              ; preds = %.preheader2137
  %915 = ptrtoint ptr %907 to i64
  %916 = ptrtoint ptr %908 to i64
  %917 = sub i64 %915, %916
  %918 = freeze i64 %917
  %919 = ashr i64 %918, 2
  %920 = icmp slt i64 %919, 9
  %921 = trunc nuw nsw i64 %919 to i32
  %922 = and i32 %921, 1
  %923 = icmp eq i32 %922, 0
  %924 = add nsw i32 %921, -1
  %925 = lshr i32 %924, 1
  %926 = zext nneg i32 %925 to i64
  %927 = getelementptr inbounds nuw [4 x i8], ptr %908, i64 %926
  %928 = zext nneg i32 %924 to i64
  %929 = getelementptr inbounds nuw [4 x i8], ptr %908, i64 %928
  %930 = getelementptr inbounds i8, ptr %907, i64 -4
  %931 = icmp ult ptr %908, %930
  br i1 %920, label %1793, label %932

932:                                              ; preds = %914
  %933 = icmp samesign ult i64 %919, 2147483648
  %934 = icmp eq i32 %910, 0
  br i1 %933, label %935, label %2698

935:                                              ; preds = %932
  br i1 %934, label %1618, label %936

936:                                              ; preds = %935
  store ptr %906, ptr %7, align 8
  %937 = add nsw i32 %910, -1
  %938 = lshr i64 %919, 1
  %939 = getelementptr inbounds nuw [4 x i8], ptr %908, i64 %938
  %940 = icmp samesign ult i64 %919, 513
  br i1 %940, label %1069, label %941

941:                                              ; preds = %936
  %942 = lshr i32 %921, 3
  %943 = zext nneg i32 %942 to i64
  %944 = getelementptr inbounds nuw [4 x i8], ptr %908, i64 %943
  %945 = shl nuw nsw i32 %942, 1
  %946 = zext nneg i32 %945 to i64
  %947 = getelementptr inbounds nuw [4 x i8], ptr %908, i64 %946
  %948 = load i32, ptr %908, align 4, !tbaa !5
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds [4 x i8], ptr %909, i64 %949
  %951 = load i32, ptr %950, align 4, !tbaa !5
  %952 = load i32, ptr %944, align 4, !tbaa !5
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds [4 x i8], ptr %909, i64 %953
  %955 = load i32, ptr %954, align 4, !tbaa !5
  %956 = icmp sgt i32 %951, %955
  %957 = select i1 %956, i32 %948, i32 %952
  %958 = select i1 %956, ptr %908, ptr %944
  %959 = sext i32 %957 to i64
  %960 = getelementptr inbounds [4 x i8], ptr %909, i64 %959
  %961 = load i32, ptr %960, align 4, !tbaa !5
  %962 = load i32, ptr %947, align 4, !tbaa !5
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds [4 x i8], ptr %909, i64 %963
  %965 = load i32, ptr %964, align 4, !tbaa !5
  %966 = icmp sgt i32 %961, %965
  br i1 %966, label %967, label %975

967:                                              ; preds = %941
  %968 = select i1 %956, i32 %952, i32 %948
  %969 = select i1 %956, ptr %944, ptr %908
  %970 = sext i32 %968 to i64
  %971 = getelementptr inbounds [4 x i8], ptr %909, i64 %970
  %972 = load i32, ptr %971, align 4, !tbaa !5
  %973 = icmp sgt i32 %972, %965
  %974 = select i1 %973, ptr %969, ptr %947
  br label %975

975:                                              ; preds = %967, %941
  %976 = phi ptr [ %974, %967 ], [ %958, %941 ]
  %977 = sub nsw i64 0, %943
  %978 = getelementptr inbounds [4 x i8], ptr %939, i64 %977
  %979 = getelementptr inbounds nuw [4 x i8], ptr %939, i64 %943
  %980 = load i32, ptr %978, align 4, !tbaa !5
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds [4 x i8], ptr %909, i64 %981
  %983 = load i32, ptr %982, align 4, !tbaa !5
  %984 = load i32, ptr %939, align 4, !tbaa !5
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds [4 x i8], ptr %909, i64 %985
  %987 = load i32, ptr %986, align 4, !tbaa !5
  %988 = icmp sgt i32 %983, %987
  %989 = select i1 %988, i32 %980, i32 %984
  %990 = select i1 %988, ptr %978, ptr %939
  %991 = sext i32 %989 to i64
  %992 = getelementptr inbounds [4 x i8], ptr %909, i64 %991
  %993 = load i32, ptr %992, align 4, !tbaa !5
  %994 = load i32, ptr %979, align 4, !tbaa !5
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds [4 x i8], ptr %909, i64 %995
  %997 = load i32, ptr %996, align 4, !tbaa !5
  %998 = icmp sgt i32 %993, %997
  br i1 %998, label %999, label %1007

999:                                              ; preds = %975
  %1000 = select i1 %988, i32 %984, i32 %980
  %1001 = select i1 %988, ptr %939, ptr %978
  %1002 = sext i32 %1000 to i64
  %1003 = getelementptr inbounds [4 x i8], ptr %909, i64 %1002
  %1004 = load i32, ptr %1003, align 4, !tbaa !5
  %1005 = icmp sgt i32 %1004, %997
  %1006 = select i1 %1005, ptr %1001, ptr %979
  br label %1007

1007:                                             ; preds = %999, %975
  %1008 = phi ptr [ %1006, %999 ], [ %990, %975 ]
  %1009 = sub nsw i64 0, %946
  %1010 = getelementptr inbounds [4 x i8], ptr %930, i64 %1009
  %1011 = getelementptr inbounds [4 x i8], ptr %930, i64 %977
  %1012 = load i32, ptr %1010, align 4, !tbaa !5
  %1013 = sext i32 %1012 to i64
  %1014 = getelementptr inbounds [4 x i8], ptr %909, i64 %1013
  %1015 = load i32, ptr %1014, align 4, !tbaa !5
  %1016 = load i32, ptr %1011, align 4, !tbaa !5
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds [4 x i8], ptr %909, i64 %1017
  %1019 = load i32, ptr %1018, align 4, !tbaa !5
  %1020 = icmp sgt i32 %1015, %1019
  %1021 = select i1 %1020, i32 %1012, i32 %1016
  %1022 = select i1 %1020, ptr %1010, ptr %1011
  %1023 = sext i32 %1021 to i64
  %1024 = getelementptr inbounds [4 x i8], ptr %909, i64 %1023
  %1025 = load i32, ptr %1024, align 4, !tbaa !5
  %1026 = load i32, ptr %930, align 4, !tbaa !5
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds [4 x i8], ptr %909, i64 %1027
  %1029 = load i32, ptr %1028, align 4, !tbaa !5
  %1030 = icmp sgt i32 %1025, %1029
  br i1 %1030, label %1031, label %1043

1031:                                             ; preds = %1007
  %1032 = select i1 %1020, i32 %1016, i32 %1012
  %1033 = select i1 %1020, ptr %1011, ptr %1010
  %1034 = sext i32 %1032 to i64
  %1035 = getelementptr inbounds [4 x i8], ptr %909, i64 %1034
  %1036 = load i32, ptr %1035, align 4, !tbaa !5
  %1037 = icmp sgt i32 %1036, %1029
  %1038 = select i1 %1037, ptr %1033, ptr %930
  %1039 = load i32, ptr %1038, align 4, !tbaa !5
  %1040 = sext i32 %1039 to i64
  %1041 = getelementptr inbounds [4 x i8], ptr %909, i64 %1040
  %1042 = load i32, ptr %1041, align 4, !tbaa !5
  br label %1043

1043:                                             ; preds = %1031, %1007
  %1044 = phi i32 [ %1025, %1007 ], [ %1042, %1031 ]
  %1045 = phi ptr [ %1022, %1007 ], [ %1038, %1031 ]
  %1046 = load i32, ptr %976, align 4, !tbaa !5
  %1047 = sext i32 %1046 to i64
  %1048 = getelementptr inbounds [4 x i8], ptr %909, i64 %1047
  %1049 = load i32, ptr %1048, align 4, !tbaa !5
  %1050 = load i32, ptr %1008, align 4, !tbaa !5
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds [4 x i8], ptr %909, i64 %1051
  %1053 = load i32, ptr %1052, align 4, !tbaa !5
  %1054 = icmp sgt i32 %1049, %1053
  %1055 = select i1 %1054, i32 %1046, i32 %1050
  %1056 = select i1 %1054, ptr %976, ptr %1008
  %1057 = sext i32 %1055 to i64
  %1058 = getelementptr inbounds [4 x i8], ptr %909, i64 %1057
  %1059 = load i32, ptr %1058, align 4, !tbaa !5
  %1060 = icmp sgt i32 %1059, %1044
  br i1 %1060, label %1061, label %1170

1061:                                             ; preds = %1043
  %1062 = select i1 %1054, i32 %1050, i32 %1046
  %1063 = select i1 %1054, ptr %1008, ptr %976
  %1064 = sext i32 %1062 to i64
  %1065 = getelementptr inbounds [4 x i8], ptr %909, i64 %1064
  %1066 = load i32, ptr %1065, align 4, !tbaa !5
  %1067 = icmp sgt i32 %1066, %1044
  %1068 = select i1 %1067, ptr %1063, ptr %1045
  br label %1170

1069:                                             ; preds = %936
  %1070 = icmp samesign ult i64 %919, 33
  br i1 %1070, label %1142, label %1071

1071:                                             ; preds = %1069
  %1072 = lshr i64 %919, 2
  %1073 = getelementptr inbounds nuw [4 x i8], ptr %908, i64 %1072
  %1074 = sub nsw i64 0, %1072
  %1075 = getelementptr inbounds [4 x i8], ptr %930, i64 %1074
  %1076 = load i32, ptr %1073, align 4, !tbaa !5
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds [4 x i8], ptr %909, i64 %1077
  %1079 = load i32, ptr %1078, align 4, !tbaa !5
  %1080 = load i32, ptr %939, align 4, !tbaa !5
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds [4 x i8], ptr %909, i64 %1081
  %1083 = load i32, ptr %1082, align 4, !tbaa !5
  %1084 = icmp sgt i32 %1079, %1083
  %1085 = select i1 %1084, i32 %1080, i32 %1076
  %1086 = select i1 %1084, ptr %939, ptr %1073
  %1087 = select i1 %1084, ptr %1073, ptr %939
  %1088 = load i32, ptr %1075, align 4, !tbaa !5
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds [4 x i8], ptr %909, i64 %1089
  %1091 = load i32, ptr %1090, align 4, !tbaa !5
  %1092 = load i32, ptr %930, align 4, !tbaa !5
  %1093 = sext i32 %1092 to i64
  %1094 = getelementptr inbounds [4 x i8], ptr %909, i64 %1093
  %1095 = load i32, ptr %1094, align 4, !tbaa !5
  %1096 = icmp sgt i32 %1091, %1095
  %1097 = select i1 %1096, i32 %1092, i32 %1088
  %1098 = select i1 %1096, ptr %930, ptr %1075
  %1099 = select i1 %1096, ptr %1075, ptr %930
  %1100 = sext i32 %1085 to i64
  %1101 = getelementptr inbounds [4 x i8], ptr %909, i64 %1100
  %1102 = load i32, ptr %1101, align 4, !tbaa !5
  %1103 = sext i32 %1097 to i64
  %1104 = getelementptr inbounds [4 x i8], ptr %909, i64 %1103
  %1105 = load i32, ptr %1104, align 4, !tbaa !5
  %1106 = icmp sgt i32 %1102, %1105
  %1107 = select i1 %1106, ptr %1099, ptr %1087
  %1108 = select i1 %1106, ptr %1086, ptr %1098
  %1109 = select i1 %1106, ptr %1087, ptr %1099
  %1110 = load i32, ptr %908, align 4, !tbaa !5
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr inbounds [4 x i8], ptr %909, i64 %1111
  %1113 = load i32, ptr %1112, align 4, !tbaa !5
  %1114 = load i32, ptr %1107, align 4, !tbaa !5
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds [4 x i8], ptr %909, i64 %1115
  %1117 = load i32, ptr %1116, align 4, !tbaa !5
  %1118 = icmp sgt i32 %1113, %1117
  %1119 = select i1 %1118, i32 %1114, i32 %1110
  %1120 = select i1 %1118, ptr %1107, ptr %908
  %1121 = select i1 %1118, ptr %908, ptr %1107
  %1122 = sext i32 %1119 to i64
  %1123 = getelementptr inbounds [4 x i8], ptr %909, i64 %1122
  %1124 = load i32, ptr %1123, align 4, !tbaa !5
  %1125 = load i32, ptr %1108, align 4, !tbaa !5
  %1126 = sext i32 %1125 to i64
  %1127 = getelementptr inbounds [4 x i8], ptr %909, i64 %1126
  %1128 = load i32, ptr %1127, align 4, !tbaa !5
  %1129 = icmp sgt i32 %1124, %1128
  %1130 = select i1 %1129, ptr %1109, ptr %1121
  %1131 = select i1 %1129, ptr %1120, ptr %1108
  %1132 = load i32, ptr %1130, align 4, !tbaa !5
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds [4 x i8], ptr %909, i64 %1133
  %1135 = load i32, ptr %1134, align 4, !tbaa !5
  %1136 = load i32, ptr %1131, align 4, !tbaa !5
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds [4 x i8], ptr %909, i64 %1137
  %1139 = load i32, ptr %1138, align 4, !tbaa !5
  %1140 = icmp sgt i32 %1135, %1139
  %1141 = select i1 %1140, ptr %1131, ptr %1130
  br label %1170

1142:                                             ; preds = %1069
  %1143 = load i32, ptr %908, align 4, !tbaa !5
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds [4 x i8], ptr %909, i64 %1144
  %1146 = load i32, ptr %1145, align 4, !tbaa !5
  %1147 = load i32, ptr %939, align 4, !tbaa !5
  %1148 = sext i32 %1147 to i64
  %1149 = getelementptr inbounds [4 x i8], ptr %909, i64 %1148
  %1150 = load i32, ptr %1149, align 4, !tbaa !5
  %1151 = icmp sgt i32 %1146, %1150
  %1152 = select i1 %1151, i32 %1143, i32 %1147
  %1153 = select i1 %1151, ptr %908, ptr %939
  %1154 = sext i32 %1152 to i64
  %1155 = getelementptr inbounds [4 x i8], ptr %909, i64 %1154
  %1156 = load i32, ptr %1155, align 4, !tbaa !5
  %1157 = load i32, ptr %930, align 4, !tbaa !5
  %1158 = sext i32 %1157 to i64
  %1159 = getelementptr inbounds [4 x i8], ptr %909, i64 %1158
  %1160 = load i32, ptr %1159, align 4, !tbaa !5
  %1161 = icmp sgt i32 %1156, %1160
  br i1 %1161, label %1162, label %1170

1162:                                             ; preds = %1142
  %1163 = select i1 %1151, i32 %1147, i32 %1143
  %1164 = select i1 %1151, ptr %939, ptr %908
  %1165 = sext i32 %1163 to i64
  %1166 = getelementptr inbounds [4 x i8], ptr %909, i64 %1165
  %1167 = load i32, ptr %1166, align 4, !tbaa !5
  %1168 = icmp sgt i32 %1167, %1160
  %1169 = select i1 %1168, ptr %1164, ptr %930
  br label %1170

1170:                                             ; preds = %1162, %1142, %1071, %1061, %1043
  %1171 = phi i32 [ %1110, %1071 ], [ %1143, %1162 ], [ %1143, %1142 ], [ %948, %1061 ], [ %948, %1043 ]
  %1172 = phi ptr [ %1141, %1071 ], [ %1169, %1162 ], [ %1153, %1142 ], [ %1068, %1061 ], [ %1056, %1043 ]
  store ptr %1172, ptr %7, align 8, !tbaa !46
  %1173 = load i32, ptr %1172, align 4, !tbaa !5
  store i32 %1173, ptr %908, align 4, !tbaa !5
  store i32 %1171, ptr %1172, align 4, !tbaa !5
  %1174 = load i32, ptr %908, align 4, !tbaa !5
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds [4 x i8], ptr %909, i64 %1175
  %1177 = load i32, ptr %1176, align 4, !tbaa !5
  %1178 = getelementptr inbounds nuw i8, ptr %908, i64 4
  call fastcc void @tr_partition(ptr noundef nonnull %909, ptr noundef nonnull %908, ptr noundef nonnull %1178, ptr noundef nonnull %907, ptr noundef %7, ptr noundef %8, i32 noundef %1177)
  %1179 = load ptr, ptr %8, align 8, !tbaa !46
  %1180 = load ptr, ptr %7, align 8, !tbaa !46
  %1181 = ptrtoint ptr %1179 to i64
  %1182 = ptrtoint ptr %1180 to i64
  %1183 = sub i64 %1181, %1182
  %1184 = ashr exact i64 %1183, 2
  %1185 = icmp eq i64 %919, %1184
  br i1 %1185, label %1541, label %1186

1186:                                             ; preds = %1170
  %1187 = load i32, ptr %1180, align 4, !tbaa !5
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds [4 x i8], ptr %136, i64 %1188
  %1190 = load i32, ptr %1189, align 4, !tbaa !5
  %1191 = icmp eq i32 %1190, %1177
  br i1 %1191, label %1226, label %1192

1192:                                             ; preds = %1186
  %1193 = add nsw i64 %1184, 2147483648
  %1194 = icmp ult i64 %1193, 4294967296
  br i1 %1194, label %1195, label %2745

1195:                                             ; preds = %1192
  %1196 = icmp ult i64 %1184, 65536
  br i1 %1196, label %1214, label %1197

1197:                                             ; preds = %1195
  %1198 = icmp ult i64 %1184, 16777216
  br i1 %1198, label %1207, label %1199

1199:                                             ; preds = %1197
  %1200 = lshr i64 %1184, 24
  %1201 = and i64 %1200, 255
  %1202 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1201
  %1203 = load i32, ptr %1202, align 4, !tbaa !5
  %1204 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1203, i32 24), !nosanitize !10
  %1205 = extractvalue { i32, i1 } %1204, 0, !nosanitize !10
  %1206 = extractvalue { i32, i1 } %1204, 1, !nosanitize !10
  br i1 %1206, label %2746, label %1226, !prof !11, !nosanitize !10

1207:                                             ; preds = %1197
  %1208 = lshr i64 %1184, 16
  %1209 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1208
  %1210 = load i32, ptr %1209, align 4, !tbaa !5
  %1211 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1210, i32 16), !nosanitize !10
  %1212 = extractvalue { i32, i1 } %1211, 0, !nosanitize !10
  %1213 = extractvalue { i32, i1 } %1211, 1, !nosanitize !10
  br i1 %1213, label %2746, label %1226, !prof !11, !nosanitize !10

1214:                                             ; preds = %1195
  %1215 = icmp samesign ult i64 %1184, 256
  br i1 %1215, label %1223, label %1216

1216:                                             ; preds = %1214
  %1217 = lshr i64 %1184, 8
  %1218 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1217
  %1219 = load i32, ptr %1218, align 4, !tbaa !5
  %1220 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1219, i32 8), !nosanitize !10
  %1221 = extractvalue { i32, i1 } %1220, 0, !nosanitize !10
  %1222 = extractvalue { i32, i1 } %1220, 1, !nosanitize !10
  br i1 %1222, label %2746, label %1226, !prof !11, !nosanitize !10

1223:                                             ; preds = %1214
  %1224 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %1183
  %1225 = load i32, ptr %1224, align 4, !tbaa !5
  br label %1226

1226:                                             ; preds = %1223, %1216, %1207, %1199, %1186
  %1227 = phi i32 [ -1, %1186 ], [ %1205, %1199 ], [ %1212, %1207 ], [ %1221, %1216 ], [ %1225, %1223 ]
  %1228 = sub i64 %1182, %832
  %1229 = ashr exact i64 %1228, 2
  %1230 = add nsw i64 %1229, 2147483647
  %1231 = icmp ult i64 %1230, 4294967296
  br i1 %1231, label %1232, label %2747

1232:                                             ; preds = %1226
  %1233 = trunc i64 %1229 to i32
  %1234 = add i32 %1233, -1
  %1235 = icmp ult ptr %908, %1180
  br i1 %1235, label %.preheader267, label %.loopexit268

.preheader267:                                    ; preds = %1232, %.preheader267
  %1236 = phi ptr [ %1240, %.preheader267 ], [ %908, %1232 ]
  %1237 = load i32, ptr %1236, align 4, !tbaa !5
  %1238 = sext i32 %1237 to i64
  %1239 = getelementptr inbounds [4 x i8], ptr %136, i64 %1238
  store i32 %1234, ptr %1239, align 4, !tbaa !5
  %1240 = getelementptr inbounds nuw i8, ptr %1236, i64 4
  %1241 = icmp ult ptr %1240, %1180
  br i1 %1241, label %.preheader267, label %.loopexit268, !llvm.loop !49

.loopexit268:                                     ; preds = %.preheader267, %1232
  %1242 = icmp ult ptr %1179, %907
  br i1 %1242, label %1243, label %.loopexit266

1243:                                             ; preds = %.loopexit268
  %1244 = sub i64 %1181, %832
  %1245 = ashr exact i64 %1244, 2
  %1246 = add nsw i64 %1245, 2147483647
  %1247 = icmp ult i64 %1246, 4294967296
  br i1 %1247, label %1248, label %2748

1248:                                             ; preds = %1243
  %1249 = trunc i64 %1245 to i32
  %1250 = add i32 %1249, -1
  %1251 = icmp ult ptr %1180, %1179
  br i1 %1251, label %.preheader265, label %.loopexit266

.preheader265:                                    ; preds = %1248, %.preheader265
  %1252 = phi ptr [ %1256, %.preheader265 ], [ %1180, %1248 ]
  %1253 = load i32, ptr %1252, align 4, !tbaa !5
  %1254 = sext i32 %1253 to i64
  %1255 = getelementptr inbounds [4 x i8], ptr %136, i64 %1254
  store i32 %1250, ptr %1255, align 4, !tbaa !5
  %1256 = getelementptr inbounds nuw i8, ptr %1252, i64 4
  %1257 = icmp ult ptr %1256, %1179
  br i1 %1257, label %.preheader265, label %.loopexit266, !llvm.loop !50

.loopexit266:                                     ; preds = %.preheader265, %1248, %.loopexit268
  %1258 = icmp sgt i64 %1184, 1
  br i1 %1258, label %1259, label %1465

1259:                                             ; preds = %.loopexit266
  %1260 = icmp samesign ult i64 %1184, 2147483648
  br i1 %1260, label %1261, label %2749

1261:                                             ; preds = %1259
  %1262 = trunc nuw nsw i64 %1184 to i32
  %1263 = icmp slt i32 %904, %1262
  br i1 %1263, label %1266, label %1264

1264:                                             ; preds = %1261
  %1265 = sub nsw i32 %904, %1262
  br label %1278

1266:                                             ; preds = %1261
  %1267 = icmp eq i32 %905, 0
  br i1 %1267, label %1460, label %1268

1268:                                             ; preds = %1266
  %1269 = sub nsw i32 %78, %1262
  %1270 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %904, i32 %1269), !nosanitize !10
  %1271 = extractvalue { i32, i1 } %1270, 1, !nosanitize !10
  br i1 %1271, label %2751, label %1272, !prof !11, !nosanitize !10

1272:                                             ; preds = %1268
  %1273 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %905, i32 -1)
  %1274 = extractvalue { i32, i1 } %1273, 1, !nosanitize !10
  br i1 %1274, label %2750, label %1275, !prof !11, !nosanitize !10

1275:                                             ; preds = %1272
  %1276 = extractvalue { i32, i1 } %1270, 0, !nosanitize !10
  %1277 = extractvalue { i32, i1 } %1273, 0, !nosanitize !10
  br label %1278

1278:                                             ; preds = %1275, %1264
  %1279 = phi i32 [ %1276, %1275 ], [ %1265, %1264 ]
  %1280 = phi i32 [ %1277, %1275 ], [ %905, %1264 ]
  %1281 = sub i64 %1182, %916
  %1282 = ashr exact i64 %1281, 2
  %1283 = sub i64 %915, %1181
  %1284 = ashr exact i64 %1283, 2
  %1285 = icmp sgt i64 %1282, %1284
  br i1 %1285, label %1373, label %1286

1286:                                             ; preds = %1278
  %1287 = icmp sgt i64 %1284, %1184
  br i1 %1287, label %1323, label %1288

1288:                                             ; preds = %1286
  %1289 = icmp sgt i64 %1282, 1
  br i1 %1289, label %1305, label %1290

1290:                                             ; preds = %1288
  %1291 = icmp sgt i64 %1284, 1
  br i1 %1291, label %1294, label %1292

1292:                                             ; preds = %1290
  %1293 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  br label %2634

1294:                                             ; preds = %1290
  %1295 = icmp slt i32 %911, 64
  br i1 %1295, label %1296, label %2754

1296:                                             ; preds = %1294
  %1297 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  %1298 = sext i32 %911 to i64
  %1299 = getelementptr inbounds [32 x i8], ptr %6, i64 %1298
  store ptr %1297, ptr %1299, align 16, !tbaa !51
  %1300 = getelementptr inbounds nuw i8, ptr %1299, i64 8
  store ptr %1180, ptr %1300, align 8, !tbaa !53
  %1301 = getelementptr inbounds nuw i8, ptr %1299, i64 16
  store ptr %1179, ptr %1301, align 16, !tbaa !54
  %1302 = getelementptr inbounds nuw i8, ptr %1299, i64 24
  store i32 %1227, ptr %1302, align 8, !tbaa !55
  %1303 = add nsw i32 %911, 1
  %1304 = getelementptr inbounds nuw i8, ptr %1299, i64 28
  store i32 %912, ptr %1304, align 4, !tbaa !56
  br label %2634

1305:                                             ; preds = %1288
  %1306 = icmp slt i32 %911, 64
  br i1 %1306, label %1307, label %2752

1307:                                             ; preds = %1305
  %1308 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  %1309 = sext i32 %911 to i64
  %1310 = getelementptr inbounds [32 x i8], ptr %6, i64 %1309
  store ptr %1308, ptr %1310, align 16, !tbaa !51
  %1311 = getelementptr inbounds nuw i8, ptr %1310, i64 8
  store ptr %1180, ptr %1311, align 8, !tbaa !53
  %1312 = getelementptr inbounds nuw i8, ptr %1310, i64 16
  store ptr %1179, ptr %1312, align 16, !tbaa !54
  %1313 = getelementptr inbounds nuw i8, ptr %1310, i64 24
  store i32 %1227, ptr %1313, align 8, !tbaa !55
  %1314 = getelementptr inbounds nuw i8, ptr %1310, i64 28
  store i32 %912, ptr %1314, align 4, !tbaa !56
  %1315 = icmp eq i32 %911, 63
  br i1 %1315, label %2753, label %1316

1316:                                             ; preds = %1307
  %1317 = getelementptr i8, ptr %1310, i64 32
  store ptr %909, ptr %1317, align 16, !tbaa !51
  %1318 = getelementptr i8, ptr %1310, i64 40
  store ptr %1179, ptr %1318, align 8, !tbaa !53
  %1319 = getelementptr i8, ptr %1310, i64 48
  store ptr %907, ptr %1319, align 16, !tbaa !54
  %1320 = getelementptr i8, ptr %1310, i64 56
  store i32 %937, ptr %1320, align 8, !tbaa !55
  %1321 = add nsw i32 %911, 2
  %1322 = getelementptr i8, ptr %1310, i64 60
  store i32 %912, ptr %1322, align 4, !tbaa !56
  br label %2634

1323:                                             ; preds = %1286
  %1324 = icmp sgt i64 %1282, %1184
  br i1 %1324, label %1355, label %1325

1325:                                             ; preds = %1323
  %1326 = icmp sgt i64 %1282, 1
  %1327 = icmp slt i32 %911, 64
  br i1 %1326, label %1338, label %1328

1328:                                             ; preds = %1325
  br i1 %1327, label %1329, label %2757

1329:                                             ; preds = %1328
  %1330 = sext i32 %911 to i64
  %1331 = getelementptr inbounds [32 x i8], ptr %6, i64 %1330
  store ptr %909, ptr %1331, align 16, !tbaa !51
  %1332 = getelementptr inbounds nuw i8, ptr %1331, i64 8
  store ptr %1179, ptr %1332, align 8, !tbaa !53
  %1333 = getelementptr inbounds nuw i8, ptr %1331, i64 16
  store ptr %907, ptr %1333, align 16, !tbaa !54
  %1334 = getelementptr inbounds nuw i8, ptr %1331, i64 24
  store i32 %937, ptr %1334, align 8, !tbaa !55
  %1335 = add nsw i32 %911, 1
  %1336 = getelementptr inbounds nuw i8, ptr %1331, i64 28
  store i32 %912, ptr %1336, align 4, !tbaa !56
  %1337 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  br label %2634

1338:                                             ; preds = %1325
  br i1 %1327, label %1339, label %2755

1339:                                             ; preds = %1338
  %1340 = sext i32 %911 to i64
  %1341 = getelementptr inbounds [32 x i8], ptr %6, i64 %1340
  store ptr %909, ptr %1341, align 16, !tbaa !51
  %1342 = getelementptr inbounds nuw i8, ptr %1341, i64 8
  store ptr %1179, ptr %1342, align 8, !tbaa !53
  %1343 = getelementptr inbounds nuw i8, ptr %1341, i64 16
  store ptr %907, ptr %1343, align 16, !tbaa !54
  %1344 = getelementptr inbounds nuw i8, ptr %1341, i64 24
  store i32 %937, ptr %1344, align 8, !tbaa !55
  %1345 = getelementptr inbounds nuw i8, ptr %1341, i64 28
  store i32 %912, ptr %1345, align 4, !tbaa !56
  %1346 = icmp eq i32 %911, 63
  br i1 %1346, label %2756, label %1347

1347:                                             ; preds = %1339
  %1348 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  %1349 = getelementptr i8, ptr %1341, i64 32
  store ptr %1348, ptr %1349, align 16, !tbaa !51
  %1350 = getelementptr i8, ptr %1341, i64 40
  store ptr %1180, ptr %1350, align 8, !tbaa !53
  %1351 = getelementptr i8, ptr %1341, i64 48
  store ptr %1179, ptr %1351, align 16, !tbaa !54
  %1352 = getelementptr i8, ptr %1341, i64 56
  store i32 %1227, ptr %1352, align 8, !tbaa !55
  %1353 = add nsw i32 %911, 2
  %1354 = getelementptr i8, ptr %1341, i64 60
  store i32 %912, ptr %1354, align 4, !tbaa !56
  br label %2634

1355:                                             ; preds = %1323
  %1356 = icmp slt i32 %911, 64
  br i1 %1356, label %1357, label %2758

1357:                                             ; preds = %1355
  %1358 = sext i32 %911 to i64
  %1359 = getelementptr inbounds [32 x i8], ptr %6, i64 %1358
  store ptr %909, ptr %1359, align 16, !tbaa !51
  %1360 = getelementptr inbounds nuw i8, ptr %1359, i64 8
  store ptr %1179, ptr %1360, align 8, !tbaa !53
  %1361 = getelementptr inbounds nuw i8, ptr %1359, i64 16
  store ptr %907, ptr %1361, align 16, !tbaa !54
  %1362 = getelementptr inbounds nuw i8, ptr %1359, i64 24
  store i32 %937, ptr %1362, align 8, !tbaa !55
  %1363 = getelementptr inbounds nuw i8, ptr %1359, i64 28
  store i32 %912, ptr %1363, align 4, !tbaa !56
  %1364 = icmp eq i32 %911, 63
  br i1 %1364, label %2759, label %1365

1365:                                             ; preds = %1357
  %1366 = getelementptr i8, ptr %1359, i64 32
  store ptr %909, ptr %1366, align 16, !tbaa !51
  %1367 = getelementptr i8, ptr %1359, i64 40
  store ptr %908, ptr %1367, align 8, !tbaa !53
  %1368 = getelementptr i8, ptr %1359, i64 48
  store ptr %1180, ptr %1368, align 16, !tbaa !54
  %1369 = getelementptr i8, ptr %1359, i64 56
  store i32 %937, ptr %1369, align 8, !tbaa !55
  %1370 = add nsw i32 %911, 2
  %1371 = getelementptr i8, ptr %1359, i64 60
  store i32 %912, ptr %1371, align 4, !tbaa !56
  %1372 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  br label %2634

1373:                                             ; preds = %1278
  %1374 = icmp sgt i64 %1282, %1184
  br i1 %1374, label %1410, label %1375

1375:                                             ; preds = %1373
  %1376 = icmp sgt i64 %1284, 1
  br i1 %1376, label %1392, label %1377

1377:                                             ; preds = %1375
  %1378 = icmp sgt i64 %1282, 1
  br i1 %1378, label %1381, label %1379

1379:                                             ; preds = %1377
  %1380 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  br label %2634

1381:                                             ; preds = %1377
  %1382 = icmp slt i32 %911, 64
  br i1 %1382, label %1383, label %2762

1383:                                             ; preds = %1381
  %1384 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  %1385 = sext i32 %911 to i64
  %1386 = getelementptr inbounds [32 x i8], ptr %6, i64 %1385
  store ptr %1384, ptr %1386, align 16, !tbaa !51
  %1387 = getelementptr inbounds nuw i8, ptr %1386, i64 8
  store ptr %1180, ptr %1387, align 8, !tbaa !53
  %1388 = getelementptr inbounds nuw i8, ptr %1386, i64 16
  store ptr %1179, ptr %1388, align 16, !tbaa !54
  %1389 = getelementptr inbounds nuw i8, ptr %1386, i64 24
  store i32 %1227, ptr %1389, align 8, !tbaa !55
  %1390 = add nsw i32 %911, 1
  %1391 = getelementptr inbounds nuw i8, ptr %1386, i64 28
  store i32 %912, ptr %1391, align 4, !tbaa !56
  br label %2634

1392:                                             ; preds = %1375
  %1393 = icmp slt i32 %911, 64
  br i1 %1393, label %1394, label %2760

1394:                                             ; preds = %1392
  %1395 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  %1396 = sext i32 %911 to i64
  %1397 = getelementptr inbounds [32 x i8], ptr %6, i64 %1396
  store ptr %1395, ptr %1397, align 16, !tbaa !51
  %1398 = getelementptr inbounds nuw i8, ptr %1397, i64 8
  store ptr %1180, ptr %1398, align 8, !tbaa !53
  %1399 = getelementptr inbounds nuw i8, ptr %1397, i64 16
  store ptr %1179, ptr %1399, align 16, !tbaa !54
  %1400 = getelementptr inbounds nuw i8, ptr %1397, i64 24
  store i32 %1227, ptr %1400, align 8, !tbaa !55
  %1401 = getelementptr inbounds nuw i8, ptr %1397, i64 28
  store i32 %912, ptr %1401, align 4, !tbaa !56
  %1402 = icmp eq i32 %911, 63
  br i1 %1402, label %2761, label %1403

1403:                                             ; preds = %1394
  %1404 = getelementptr i8, ptr %1397, i64 32
  store ptr %909, ptr %1404, align 16, !tbaa !51
  %1405 = getelementptr i8, ptr %1397, i64 40
  store ptr %908, ptr %1405, align 8, !tbaa !53
  %1406 = getelementptr i8, ptr %1397, i64 48
  store ptr %1180, ptr %1406, align 16, !tbaa !54
  %1407 = getelementptr i8, ptr %1397, i64 56
  store i32 %937, ptr %1407, align 8, !tbaa !55
  %1408 = add nsw i32 %911, 2
  %1409 = getelementptr i8, ptr %1397, i64 60
  store i32 %912, ptr %1409, align 4, !tbaa !56
  br label %2634

1410:                                             ; preds = %1373
  %1411 = icmp sgt i64 %1284, %1184
  br i1 %1411, label %1442, label %1412

1412:                                             ; preds = %1410
  %1413 = icmp sgt i64 %1284, 1
  %1414 = icmp slt i32 %911, 64
  br i1 %1413, label %1425, label %1415

1415:                                             ; preds = %1412
  br i1 %1414, label %1416, label %2765

1416:                                             ; preds = %1415
  %1417 = sext i32 %911 to i64
  %1418 = getelementptr inbounds [32 x i8], ptr %6, i64 %1417
  store ptr %909, ptr %1418, align 16, !tbaa !51
  %1419 = getelementptr inbounds nuw i8, ptr %1418, i64 8
  store ptr %908, ptr %1419, align 8, !tbaa !53
  %1420 = getelementptr inbounds nuw i8, ptr %1418, i64 16
  store ptr %1180, ptr %1420, align 16, !tbaa !54
  %1421 = getelementptr inbounds nuw i8, ptr %1418, i64 24
  store i32 %937, ptr %1421, align 8, !tbaa !55
  %1422 = add nsw i32 %911, 1
  %1423 = getelementptr inbounds nuw i8, ptr %1418, i64 28
  store i32 %912, ptr %1423, align 4, !tbaa !56
  %1424 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  br label %2634

1425:                                             ; preds = %1412
  br i1 %1414, label %1426, label %2763

1426:                                             ; preds = %1425
  %1427 = sext i32 %911 to i64
  %1428 = getelementptr inbounds [32 x i8], ptr %6, i64 %1427
  store ptr %909, ptr %1428, align 16, !tbaa !51
  %1429 = getelementptr inbounds nuw i8, ptr %1428, i64 8
  store ptr %908, ptr %1429, align 8, !tbaa !53
  %1430 = getelementptr inbounds nuw i8, ptr %1428, i64 16
  store ptr %1180, ptr %1430, align 16, !tbaa !54
  %1431 = getelementptr inbounds nuw i8, ptr %1428, i64 24
  store i32 %937, ptr %1431, align 8, !tbaa !55
  %1432 = getelementptr inbounds nuw i8, ptr %1428, i64 28
  store i32 %912, ptr %1432, align 4, !tbaa !56
  %1433 = icmp eq i32 %911, 63
  br i1 %1433, label %2764, label %1434

1434:                                             ; preds = %1426
  %1435 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  %1436 = getelementptr i8, ptr %1428, i64 32
  store ptr %1435, ptr %1436, align 16, !tbaa !51
  %1437 = getelementptr i8, ptr %1428, i64 40
  store ptr %1180, ptr %1437, align 8, !tbaa !53
  %1438 = getelementptr i8, ptr %1428, i64 48
  store ptr %1179, ptr %1438, align 16, !tbaa !54
  %1439 = getelementptr i8, ptr %1428, i64 56
  store i32 %1227, ptr %1439, align 8, !tbaa !55
  %1440 = add nsw i32 %911, 2
  %1441 = getelementptr i8, ptr %1428, i64 60
  store i32 %912, ptr %1441, align 4, !tbaa !56
  br label %2634

1442:                                             ; preds = %1410
  %1443 = icmp slt i32 %911, 64
  br i1 %1443, label %1444, label %2766

1444:                                             ; preds = %1442
  %1445 = sext i32 %911 to i64
  %1446 = getelementptr inbounds [32 x i8], ptr %6, i64 %1445
  store ptr %909, ptr %1446, align 16, !tbaa !51
  %1447 = getelementptr inbounds nuw i8, ptr %1446, i64 8
  store ptr %908, ptr %1447, align 8, !tbaa !53
  %1448 = getelementptr inbounds nuw i8, ptr %1446, i64 16
  store ptr %1180, ptr %1448, align 16, !tbaa !54
  %1449 = getelementptr inbounds nuw i8, ptr %1446, i64 24
  store i32 %937, ptr %1449, align 8, !tbaa !55
  %1450 = getelementptr inbounds nuw i8, ptr %1446, i64 28
  store i32 %912, ptr %1450, align 4, !tbaa !56
  %1451 = icmp eq i32 %911, 63
  br i1 %1451, label %2767, label %1452

1452:                                             ; preds = %1444
  %1453 = getelementptr i8, ptr %1446, i64 32
  store ptr %909, ptr %1453, align 16, !tbaa !51
  %1454 = getelementptr i8, ptr %1446, i64 40
  store ptr %1179, ptr %1454, align 8, !tbaa !53
  %1455 = getelementptr i8, ptr %1446, i64 48
  store ptr %907, ptr %1455, align 16, !tbaa !54
  %1456 = getelementptr i8, ptr %1446, i64 56
  store i32 %937, ptr %1456, align 8, !tbaa !55
  %1457 = add nsw i32 %911, 2
  %1458 = getelementptr i8, ptr %1446, i64 60
  store i32 %912, ptr %1458, align 4, !tbaa !56
  %1459 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  br label %2634

1460:                                             ; preds = %1266
  %1461 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %903, i32 %1262), !nosanitize !10
  %1462 = extractvalue { i32, i1 } %1461, 1, !nosanitize !10
  br i1 %1462, label %2751, label %1463, !prof !11, !nosanitize !10

1463:                                             ; preds = %1460
  %1464 = extractvalue { i32, i1 } %1461, 0, !nosanitize !10
  br label %1465

1465:                                             ; preds = %1463, %.loopexit266
  %1466 = phi i32 [ %1464, %1463 ], [ %903, %.loopexit266 ]
  %1467 = icmp sgt i64 %1183, 4
  %1468 = icmp sgt i32 %912, -1
  %1469 = select i1 %1467, i1 %1468, i1 false
  br i1 %1469, label %1470, label %1473

1470:                                             ; preds = %1465
  %1471 = zext nneg i32 %912 to i64
  %.split = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1471
  %1472 = getelementptr inbounds nuw i8, ptr %.split, i64 24
  store i32 -1, ptr %1472, align 8, !tbaa !55
  br label %1473

1473:                                             ; preds = %1470, %1465
  %1474 = sub i64 %1182, %916
  %1475 = ashr exact i64 %1474, 2
  %1476 = sub i64 %915, %1181
  %1477 = ashr exact i64 %1476, 2
  %1478 = icmp sgt i64 %1475, %1477
  br i1 %1478, label %1510, label %1479

1479:                                             ; preds = %1473
  %1480 = icmp sgt i64 %1475, 1
  br i1 %1480, label %1500, label %1481

1481:                                             ; preds = %1479
  %1482 = icmp sgt i64 %1477, 1
  br i1 %1482, label %2634, label %1483

1483:                                             ; preds = %1481
  %1484 = icmp sgt i32 %911, -1
  br i1 %1484, label %1485, label %2769

1485:                                             ; preds = %1483
  %1486 = icmp eq i32 %911, 0
  br i1 %1486, label %2617, label %1487

1487:                                             ; preds = %1485
  %1488 = add nsw i32 %911, -1
  %1489 = zext nneg i32 %1488 to i64
  %1490 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1489
  %1491 = load ptr, ptr %1490, align 16, !tbaa !51
  %1492 = getelementptr inbounds nuw i8, ptr %1490, i64 8
  %1493 = load ptr, ptr %1492, align 8, !tbaa !53
  %1494 = getelementptr inbounds nuw i8, ptr %1490, i64 16
  %1495 = load ptr, ptr %1494, align 16, !tbaa !54
  %1496 = getelementptr inbounds nuw i8, ptr %1490, i64 24
  %1497 = load i32, ptr %1496, align 8, !tbaa !55
  %1498 = getelementptr inbounds nuw i8, ptr %1490, i64 28
  %1499 = load i32, ptr %1498, align 4, !tbaa !56
  br label %2634

1500:                                             ; preds = %1479
  %1501 = icmp slt i32 %911, 64
  br i1 %1501, label %1502, label %2768

1502:                                             ; preds = %1500
  %1503 = sext i32 %911 to i64
  %1504 = getelementptr inbounds [32 x i8], ptr %6, i64 %1503
  store ptr %909, ptr %1504, align 16, !tbaa !51
  %1505 = getelementptr inbounds nuw i8, ptr %1504, i64 8
  store ptr %1179, ptr %1505, align 8, !tbaa !53
  %1506 = getelementptr inbounds nuw i8, ptr %1504, i64 16
  store ptr %907, ptr %1506, align 16, !tbaa !54
  %1507 = getelementptr inbounds nuw i8, ptr %1504, i64 24
  store i32 %937, ptr %1507, align 8, !tbaa !55
  %1508 = add nsw i32 %911, 1
  %1509 = getelementptr inbounds nuw i8, ptr %1504, i64 28
  store i32 %912, ptr %1509, align 4, !tbaa !56
  br label %2634

1510:                                             ; preds = %1473
  %1511 = icmp sgt i64 %1477, 1
  br i1 %1511, label %1531, label %1512

1512:                                             ; preds = %1510
  %1513 = icmp sgt i64 %1475, 1
  br i1 %1513, label %2634, label %1514

1514:                                             ; preds = %1512
  %1515 = icmp sgt i32 %911, -1
  br i1 %1515, label %1516, label %2771

1516:                                             ; preds = %1514
  %1517 = icmp eq i32 %911, 0
  br i1 %1517, label %2617, label %1518

1518:                                             ; preds = %1516
  %1519 = add nsw i32 %911, -1
  %1520 = zext nneg i32 %1519 to i64
  %1521 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1520
  %1522 = load ptr, ptr %1521, align 16, !tbaa !51
  %1523 = getelementptr inbounds nuw i8, ptr %1521, i64 8
  %1524 = load ptr, ptr %1523, align 8, !tbaa !53
  %1525 = getelementptr inbounds nuw i8, ptr %1521, i64 16
  %1526 = load ptr, ptr %1525, align 16, !tbaa !54
  %1527 = getelementptr inbounds nuw i8, ptr %1521, i64 24
  %1528 = load i32, ptr %1527, align 8, !tbaa !55
  %1529 = getelementptr inbounds nuw i8, ptr %1521, i64 28
  %1530 = load i32, ptr %1529, align 4, !tbaa !56
  br label %2634

1531:                                             ; preds = %1510
  %1532 = icmp slt i32 %911, 64
  br i1 %1532, label %1533, label %2770

1533:                                             ; preds = %1531
  %1534 = sext i32 %911 to i64
  %1535 = getelementptr inbounds [32 x i8], ptr %6, i64 %1534
  store ptr %909, ptr %1535, align 16, !tbaa !51
  %1536 = getelementptr inbounds nuw i8, ptr %1535, i64 8
  store ptr %908, ptr %1536, align 8, !tbaa !53
  %1537 = getelementptr inbounds nuw i8, ptr %1535, i64 16
  store ptr %1180, ptr %1537, align 16, !tbaa !54
  %1538 = getelementptr inbounds nuw i8, ptr %1535, i64 24
  store i32 %937, ptr %1538, align 8, !tbaa !55
  %1539 = add nsw i32 %911, 1
  %1540 = getelementptr inbounds nuw i8, ptr %1535, i64 28
  store i32 %912, ptr %1540, align 4, !tbaa !56
  br label %2634

1541:                                             ; preds = %1170
  %1542 = icmp slt i32 %904, %921
  br i1 %1542, label %1545, label %1543

1543:                                             ; preds = %1541
  %1544 = sub nsw i32 %904, %921
  br label %1557

1545:                                             ; preds = %1541
  %1546 = icmp eq i32 %905, 0
  br i1 %1546, label %1592, label %1547

1547:                                             ; preds = %1545
  %1548 = sub nsw i32 %78, %921
  %1549 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %904, i32 %1548), !nosanitize !10
  %1550 = extractvalue { i32, i1 } %1549, 1, !nosanitize !10
  br i1 %1550, label %2773, label %1551, !prof !11, !nosanitize !10

1551:                                             ; preds = %1547
  %1552 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %905, i32 -1)
  %1553 = extractvalue { i32, i1 } %1552, 1, !nosanitize !10
  br i1 %1553, label %2772, label %1554, !prof !11, !nosanitize !10

1554:                                             ; preds = %1551
  %1555 = extractvalue { i32, i1 } %1549, 0, !nosanitize !10
  %1556 = extractvalue { i32, i1 } %1552, 0, !nosanitize !10
  br label %1557

1557:                                             ; preds = %1554, %1543
  %1558 = phi i32 [ %1555, %1554 ], [ %1544, %1543 ]
  %1559 = phi i32 [ %1556, %1554 ], [ %905, %1543 ]
  %1560 = icmp samesign ult i64 %919, 65536
  br i1 %1560, label %1577, label %1561

1561:                                             ; preds = %1557
  %1562 = icmp samesign ult i64 %919, 16777216
  br i1 %1562, label %1570, label %1563

1563:                                             ; preds = %1561
  %1564 = lshr i64 %919, 24
  %1565 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1564
  %1566 = load i32, ptr %1565, align 4, !tbaa !5
  %1567 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1566, i32 24), !nosanitize !10
  %1568 = extractvalue { i32, i1 } %1567, 0, !nosanitize !10
  %1569 = extractvalue { i32, i1 } %1567, 1, !nosanitize !10
  br i1 %1569, label %2774, label %1589, !prof !11, !nosanitize !10

1570:                                             ; preds = %1561
  %1571 = lshr i64 %919, 16
  %1572 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1571
  %1573 = load i32, ptr %1572, align 4, !tbaa !5
  %1574 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1573, i32 16), !nosanitize !10
  %1575 = extractvalue { i32, i1 } %1574, 0, !nosanitize !10
  %1576 = extractvalue { i32, i1 } %1574, 1, !nosanitize !10
  br i1 %1576, label %2774, label %1589, !prof !11, !nosanitize !10

1577:                                             ; preds = %1557
  %1578 = icmp samesign ult i64 %919, 256
  br i1 %1578, label %1586, label %1579

1579:                                             ; preds = %1577
  %1580 = lshr i64 %919, 8
  %1581 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1580
  %1582 = load i32, ptr %1581, align 4, !tbaa !5
  %1583 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1582, i32 8), !nosanitize !10
  %1584 = extractvalue { i32, i1 } %1583, 0, !nosanitize !10
  %1585 = extractvalue { i32, i1 } %1583, 1, !nosanitize !10
  br i1 %1585, label %2774, label %1589, !prof !11, !nosanitize !10

1586:                                             ; preds = %1577
  %1587 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %919
  %1588 = load i32, ptr %1587, align 4, !tbaa !5
  br label %1589

1589:                                             ; preds = %1586, %1579, %1570, %1563
  %1590 = phi i32 [ %1568, %1563 ], [ %1575, %1570 ], [ %1584, %1579 ], [ %1588, %1586 ]
  %1591 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  br label %2634

1592:                                             ; preds = %1545
  %1593 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %903, i32 %921), !nosanitize !10
  %1594 = extractvalue { i32, i1 } %1593, 1, !nosanitize !10
  br i1 %1594, label %2773, label %1595, !prof !11, !nosanitize !10

1595:                                             ; preds = %1592
  %1596 = extractvalue { i32, i1 } %1593, 0, !nosanitize !10
  %1597 = icmp sgt i32 %912, -1
  br i1 %1597, label %1598, label %1601

1598:                                             ; preds = %1595
  %1599 = zext nneg i32 %912 to i64
  %.split220 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1599
  %1600 = getelementptr inbounds nuw i8, ptr %.split220, i64 24
  store i32 -1, ptr %1600, align 8, !tbaa !55
  br label %1601

1601:                                             ; preds = %1598, %1595
  %1602 = icmp sgt i32 %911, -1
  br i1 %1602, label %1603, label %2775

1603:                                             ; preds = %1601
  %1604 = icmp eq i32 %911, 0
  br i1 %1604, label %2617, label %1605

1605:                                             ; preds = %1603
  %1606 = add nsw i32 %911, -1
  %1607 = zext nneg i32 %1606 to i64
  %1608 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1607
  %1609 = load ptr, ptr %1608, align 16, !tbaa !51
  %1610 = getelementptr inbounds nuw i8, ptr %1608, i64 8
  %1611 = load ptr, ptr %1610, align 8, !tbaa !53
  %1612 = getelementptr inbounds nuw i8, ptr %1608, i64 16
  %1613 = load ptr, ptr %1612, align 16, !tbaa !54
  %1614 = getelementptr inbounds nuw i8, ptr %1608, i64 24
  %1615 = load i32, ptr %1614, align 8, !tbaa !55
  %1616 = getelementptr inbounds nuw i8, ptr %1608, i64 28
  %1617 = load i32, ptr %1616, align 4, !tbaa !56
  br label %2634

1618:                                             ; preds = %935
  br i1 %923, label %1621, label %1619

1619:                                             ; preds = %1618
  %1620 = lshr i64 %919, 1
  br label %1632

1621:                                             ; preds = %1618
  %1622 = load i32, ptr %927, align 4, !tbaa !5
  %1623 = sext i32 %1622 to i64
  %1624 = getelementptr inbounds [4 x i8], ptr %909, i64 %1623
  %1625 = load i32, ptr %1624, align 4, !tbaa !5
  %1626 = load i32, ptr %929, align 4, !tbaa !5
  %1627 = sext i32 %1626 to i64
  %1628 = getelementptr inbounds [4 x i8], ptr %909, i64 %1627
  %1629 = load i32, ptr %1628, align 4, !tbaa !5
  %1630 = icmp slt i32 %1625, %1629
  br i1 %1630, label %1631, label %1632

1631:                                             ; preds = %1621
  store i32 %1622, ptr %929, align 4, !tbaa !5
  store i32 %1626, ptr %927, align 4, !tbaa !5
  br label %1632

1632:                                             ; preds = %1631, %1621, %1619
  %1633 = phi i64 [ %1620, %1619 ], [ %926, %1631 ], [ %926, %1621 ]
  %1634 = phi i32 [ %921, %1619 ], [ %924, %1631 ], [ %924, %1621 ]
  br label %1635

1635:                                             ; preds = %1665, %1632
  %1636 = phi i64 [ %1633, %1632 ], [ %1637, %1665 ]
  %1637 = add nsw i64 %1636, -1
  %1638 = getelementptr inbounds nuw [4 x i8], ptr %908, i64 %1637
  %1639 = load i32, ptr %1638, align 4, !tbaa !5
  %1640 = sext i32 %1639 to i64
  %1641 = getelementptr inbounds [4 x i8], ptr %909, i64 %1640
  %1642 = load i32, ptr %1641, align 4, !tbaa !5
  %1643 = trunc nuw nsw i64 %1637 to i32
  br label %1644

1644:                                             ; preds = %1783, %1635
  %1645 = phi i32 [ %1785, %1783 ], [ %1643, %1635 ]
  %1646 = shl nsw i32 %1645, 1
  %1647 = or disjoint i32 %1646, 1
  %1648 = icmp slt i32 %1647, %1634
  br i1 %1648, label %1649, label %1665

1649:                                             ; preds = %1644
  %1650 = add nsw i32 %1646, 2
  %1651 = sext i32 %1647 to i64
  %1652 = getelementptr inbounds [4 x i8], ptr %908, i64 %1651
  %1653 = load i32, ptr %1652, align 4, !tbaa !5
  %1654 = sext i32 %1653 to i64
  %1655 = getelementptr inbounds [4 x i8], ptr %909, i64 %1654
  %1656 = load i32, ptr %1655, align 4, !tbaa !5
  %1657 = sext i32 %1650 to i64
  %1658 = getelementptr inbounds [4 x i8], ptr %908, i64 %1657
  %1659 = load i32, ptr %1658, align 4, !tbaa !5
  %1660 = sext i32 %1659 to i64
  %1661 = getelementptr inbounds [4 x i8], ptr %909, i64 %1660
  %1662 = load i32, ptr %1661, align 4, !tbaa !5
  %1663 = tail call i32 @llvm.smax.i32(i32 %1656, i32 %1662)
  %1664 = icmp sgt i32 %1663, %1642
  br i1 %1664, label %1783, label %1665

1665:                                             ; preds = %1649, %1644
  %1666 = sext i32 %1645 to i64
  %1667 = getelementptr inbounds [4 x i8], ptr %908, i64 %1666
  store i32 %1639, ptr %1667, align 4, !tbaa !5
  %1668 = icmp sgt i64 %1636, 1
  br i1 %1668, label %1635, label %1669, !llvm.loop !57

1669:                                             ; preds = %1665
  br i1 %923, label %1670, label %1703

1670:                                             ; preds = %1669
  %1671 = load i32, ptr %908, align 4, !tbaa !5
  %1672 = zext nneg i32 %1634 to i64
  %1673 = getelementptr inbounds nuw [4 x i8], ptr %908, i64 %1672
  %1674 = load i32, ptr %1673, align 4, !tbaa !5
  store i32 %1674, ptr %908, align 4, !tbaa !5
  store i32 %1671, ptr %1673, align 4, !tbaa !5
  %1675 = load i32, ptr %908, align 4, !tbaa !5
  %1676 = sext i32 %1675 to i64
  %1677 = getelementptr inbounds [4 x i8], ptr %909, i64 %1676
  %1678 = load i32, ptr %1677, align 4, !tbaa !5
  br label %1679

1679:                                             ; preds = %1773, %1670
  %1680 = phi i32 [ %1775, %1773 ], [ 0, %1670 ]
  %1681 = shl nsw i32 %1680, 1
  %1682 = or disjoint i32 %1681, 1
  %1683 = icmp slt i32 %1682, %1634
  br i1 %1683, label %1684, label %1700

1684:                                             ; preds = %1679
  %1685 = add nsw i32 %1681, 2
  %1686 = sext i32 %1682 to i64
  %1687 = getelementptr inbounds [4 x i8], ptr %908, i64 %1686
  %1688 = load i32, ptr %1687, align 4, !tbaa !5
  %1689 = sext i32 %1688 to i64
  %1690 = getelementptr inbounds [4 x i8], ptr %909, i64 %1689
  %1691 = load i32, ptr %1690, align 4, !tbaa !5
  %1692 = sext i32 %1685 to i64
  %1693 = getelementptr inbounds [4 x i8], ptr %908, i64 %1692
  %1694 = load i32, ptr %1693, align 4, !tbaa !5
  %1695 = sext i32 %1694 to i64
  %1696 = getelementptr inbounds [4 x i8], ptr %909, i64 %1695
  %1697 = load i32, ptr %1696, align 4, !tbaa !5
  %1698 = tail call i32 @llvm.smax.i32(i32 %1691, i32 %1697)
  %1699 = icmp sgt i32 %1698, %1678
  br i1 %1699, label %1773, label %1700

1700:                                             ; preds = %1684, %1679
  %1701 = sext i32 %1680 to i64
  %1702 = getelementptr inbounds [4 x i8], ptr %908, i64 %1701
  store i32 %1675, ptr %1702, align 4, !tbaa !5
  br label %1703

1703:                                             ; preds = %1700, %1669
  %1704 = add nsw i32 %1634, -1
  %1705 = zext nneg i32 %1704 to i64
  br label %1706

1706:                                             ; preds = %1735, %1703
  %1707 = phi i64 [ %1705, %1703 ], [ %1738, %1735 ]
  %1708 = load i32, ptr %908, align 4, !tbaa !5
  %1709 = getelementptr inbounds nuw [4 x i8], ptr %908, i64 %1707
  %1710 = load i32, ptr %1709, align 4, !tbaa !5
  store i32 %1710, ptr %908, align 4, !tbaa !5
  %1711 = sext i32 %1710 to i64
  %1712 = getelementptr inbounds [4 x i8], ptr %909, i64 %1711
  %1713 = load i32, ptr %1712, align 4, !tbaa !5
  br label %1714

1714:                                             ; preds = %1763, %1706
  %1715 = phi i32 [ %1765, %1763 ], [ 0, %1706 ]
  %1716 = shl nsw i32 %1715, 1
  %1717 = or disjoint i32 %1716, 1
  %1718 = sext i32 %1717 to i64
  %1719 = icmp sgt i64 %1707, %1718
  br i1 %1719, label %1720, label %1735

1720:                                             ; preds = %1714
  %1721 = add nsw i32 %1716, 2
  %1722 = getelementptr inbounds [4 x i8], ptr %908, i64 %1718
  %1723 = load i32, ptr %1722, align 4, !tbaa !5
  %1724 = sext i32 %1723 to i64
  %1725 = getelementptr inbounds [4 x i8], ptr %909, i64 %1724
  %1726 = load i32, ptr %1725, align 4, !tbaa !5
  %1727 = sext i32 %1721 to i64
  %1728 = getelementptr inbounds [4 x i8], ptr %908, i64 %1727
  %1729 = load i32, ptr %1728, align 4, !tbaa !5
  %1730 = sext i32 %1729 to i64
  %1731 = getelementptr inbounds [4 x i8], ptr %909, i64 %1730
  %1732 = load i32, ptr %1731, align 4, !tbaa !5
  %1733 = tail call i32 @llvm.smax.i32(i32 %1726, i32 %1732)
  %1734 = icmp sgt i32 %1733, %1713
  br i1 %1734, label %1763, label %1735

1735:                                             ; preds = %1720, %1714
  %1736 = sext i32 %1715 to i64
  %1737 = getelementptr inbounds [4 x i8], ptr %908, i64 %1736
  store i32 %1710, ptr %1737, align 4, !tbaa !5
  store i32 %1708, ptr %1709, align 4, !tbaa !5
  %1738 = add nsw i64 %1707, -1
  %1739 = icmp sgt i64 %1707, 1
  br i1 %1739, label %1706, label %1740, !llvm.loop !58

1740:                                             ; preds = %1735
  %1741 = load ptr, ptr %8, align 8
  br i1 %931, label %.preheader263, label %.loopexit264

.preheader263:                                    ; preds = %1740, %.loopexit236
  %1742 = phi ptr [ %1759, %.loopexit236 ], [ %930, %1740 ]
  %1743 = load i32, ptr %1742, align 4, !tbaa !5
  %1744 = sext i32 %1743 to i64
  %1745 = getelementptr inbounds [4 x i8], ptr %909, i64 %1744
  %1746 = load i32, ptr %1745, align 4, !tbaa !5
  %1747 = getelementptr inbounds i8, ptr %1742, i64 -4
  %1748 = icmp ugt ptr %908, %1747
  br i1 %1748, label %.loopexit236, label %.preheader235

.preheader235:                                    ; preds = %.preheader263, %1755
  %1749 = phi ptr [ %1757, %1755 ], [ %1747, %.preheader263 ]
  %1750 = load i32, ptr %1749, align 4, !tbaa !5
  %1751 = sext i32 %1750 to i64
  %1752 = getelementptr inbounds [4 x i8], ptr %909, i64 %1751
  %1753 = load i32, ptr %1752, align 4, !tbaa !5
  %1754 = icmp eq i32 %1753, %1746
  br i1 %1754, label %1755, label %.loopexit236

1755:                                             ; preds = %.preheader235
  %1756 = xor i32 %1750, -1
  store i32 %1756, ptr %1749, align 4, !tbaa !5
  %1757 = getelementptr inbounds i8, ptr %1749, i64 -4
  %1758 = icmp ugt ptr %908, %1757
  br i1 %1758, label %.loopexit236, label %.preheader235, !llvm.loop !59

.loopexit236:                                     ; preds = %1755, %.preheader235, %.preheader263
  %1759 = phi ptr [ %1747, %.preheader263 ], [ %1749, %.preheader235 ], [ %1757, %1755 ]
  %1760 = icmp ult ptr %908, %1759
  br i1 %1760, label %.preheader263, label %.loopexit264, !llvm.loop !60

.loopexit264:                                     ; preds = %.loopexit236, %1740
  %1761 = phi ptr [ %1741, %1740 ], [ %1759, %.loopexit236 ]
  %1762 = phi ptr [ %930, %1740 ], [ %1759, %.loopexit236 ]
  store ptr %1761, ptr %8, align 8
  br label %.loopexit262

1763:                                             ; preds = %1720
  %1764 = icmp slt i32 %1726, %1732
  %1765 = select i1 %1764, i32 %1721, i32 %1717
  %1766 = sext i32 %1765 to i64
  %1767 = getelementptr inbounds [4 x i8], ptr %908, i64 %1766
  %1768 = load i32, ptr %1767, align 4, !tbaa !5
  %1769 = sext i32 %1715 to i64
  %1770 = getelementptr inbounds [4 x i8], ptr %908, i64 %1769
  store i32 %1768, ptr %1770, align 4, !tbaa !5
  %1771 = add i32 %1765, 1073741824
  %1772 = icmp sgt i32 %1771, -1
  br i1 %1772, label %1714, label %2743, !prof !61, !llvm.loop !62, !nosanitize !10

1773:                                             ; preds = %1684
  %1774 = icmp slt i32 %1691, %1697
  %1775 = select i1 %1774, i32 %1685, i32 %1682
  %1776 = sext i32 %1775 to i64
  %1777 = getelementptr inbounds [4 x i8], ptr %908, i64 %1776
  %1778 = load i32, ptr %1777, align 4, !tbaa !5
  %1779 = sext i32 %1680 to i64
  %1780 = getelementptr inbounds [4 x i8], ptr %908, i64 %1779
  store i32 %1778, ptr %1780, align 4, !tbaa !5
  %1781 = add i32 %1775, 1073741824
  %1782 = icmp sgt i32 %1781, -1
  br i1 %1782, label %1679, label %2742, !prof !61, !llvm.loop !62, !nosanitize !10

1783:                                             ; preds = %1649
  %1784 = icmp slt i32 %1656, %1662
  %1785 = select i1 %1784, i32 %1650, i32 %1647
  %1786 = sext i32 %1785 to i64
  %1787 = getelementptr inbounds [4 x i8], ptr %908, i64 %1786
  %1788 = load i32, ptr %1787, align 4, !tbaa !5
  %1789 = sext i32 %1645 to i64
  %1790 = getelementptr inbounds [4 x i8], ptr %908, i64 %1789
  store i32 %1788, ptr %1790, align 4, !tbaa !5
  %1791 = add i32 %1785, 1073741824
  %1792 = icmp sgt i32 %1791, -1
  br i1 %1792, label %1644, label %2741, !prof !61, !llvm.loop !62, !nosanitize !10

1793:                                             ; preds = %914
  %1794 = getelementptr inbounds nuw i8, ptr %908, i64 4
  %1795 = icmp ult ptr %1794, %907
  br i1 %1795, label %.preheader260, label %.loopexit262

.preheader260:                                    ; preds = %1793, %1833
  %1796 = phi ptr [ %1835, %1833 ], [ %1794, %1793 ]
  %1797 = phi ptr [ %1796, %1833 ], [ %908, %1793 ]
  %1798 = load i32, ptr %1796, align 4, !tbaa !5
  %1799 = sext i32 %1798 to i64
  %1800 = getelementptr inbounds [4 x i8], ptr %909, i64 %1799
  %1801 = load i32, ptr %1800, align 4, !tbaa !5
  %1802 = load i32, ptr %1797, align 4, !tbaa !5
  %1803 = sext i32 %1802 to i64
  %1804 = getelementptr inbounds [4 x i8], ptr %909, i64 %1803
  %1805 = load i32, ptr %1804, align 4, !tbaa !5
  %1806 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1801, i32 %1805), !nosanitize !10
  %1807 = extractvalue { i32, i1 } %1806, 1, !nosanitize !10
  br i1 %1807, label %.loopexit234, label %.preheader232, !prof !63, !nosanitize !10

.preheader232:                                    ; preds = %.preheader260, %1821
  %1808 = phi i32 [ %1819, %1821 ], [ %1802, %.preheader260 ]
  %1809 = phi { i32, i1 } [ %1826, %1821 ], [ %1806, %.preheader260 ]
  %1810 = phi ptr [ %1816, %1821 ], [ %1797, %.preheader260 ]
  %1811 = extractvalue { i32, i1 } %1809, 0
  %1812 = icmp slt i32 %1811, 0
  br i1 %1812, label %.preheader, label %.loopexit231

.preheader:                                       ; preds = %.preheader232, %1818
  %1813 = phi i32 [ %1819, %1818 ], [ %1808, %.preheader232 ]
  %1814 = phi ptr [ %1816, %1818 ], [ %1810, %.preheader232 ]
  %1815 = getelementptr inbounds nuw i8, ptr %1814, i64 4
  store i32 %1813, ptr %1815, align 4, !tbaa !5
  %1816 = getelementptr inbounds i8, ptr %1814, i64 -4
  %1817 = icmp ugt ptr %908, %1816
  br i1 %1817, label %.loopexit231, label %1818

1818:                                             ; preds = %.preheader
  %1819 = load i32, ptr %1816, align 4, !tbaa !5
  %1820 = icmp slt i32 %1819, 0
  br i1 %1820, label %.preheader, label %1821, !llvm.loop !64

1821:                                             ; preds = %1818
  %1822 = load i32, ptr %1800, align 4, !tbaa !5
  %1823 = zext nneg i32 %1819 to i64
  %1824 = getelementptr inbounds nuw [4 x i8], ptr %909, i64 %1823
  %1825 = load i32, ptr %1824, align 4, !tbaa !5
  %1826 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1822, i32 %1825), !nosanitize !10
  %1827 = extractvalue { i32, i1 } %1826, 1, !nosanitize !10
  br i1 %1827, label %.loopexit234, label %.preheader232, !prof !65, !llvm.loop !64, !nosanitize !10

.loopexit231:                                     ; preds = %.preheader232, %.preheader
  %1828 = phi ptr [ %1816, %.preheader ], [ %1810, %.preheader232 ]
  %1829 = icmp eq i32 %1811, 0
  br i1 %1829, label %1830, label %1833

1830:                                             ; preds = %.loopexit231
  %1831 = load i32, ptr %1828, align 4, !tbaa !5
  %1832 = xor i32 %1831, -1
  store i32 %1832, ptr %1828, align 4, !tbaa !5
  br label %1833

1833:                                             ; preds = %1830, %.loopexit231
  %1834 = getelementptr inbounds nuw i8, ptr %1828, i64 4
  store i32 %1798, ptr %1834, align 4, !tbaa !5
  %1835 = getelementptr inbounds nuw i8, ptr %1796, i64 4
  %1836 = icmp ult ptr %1835, %907
  br i1 %1836, label %.preheader260, label %.loopexit262, !llvm.loop !66

.loopexit262:                                     ; preds = %1833, %1793, %.loopexit264
  %1837 = phi ptr [ %906, %1793 ], [ %1762, %.loopexit264 ], [ %906, %1833 ]
  store ptr %1837, ptr %7, align 8
  br label %2408

1838:                                             ; preds = %.preheader2137
  store ptr %906, ptr %7, align 8
  switch i32 %910, label %2408 [
    i32 -1, label %2079
    i32 -2, label %1839
  ]

1839:                                             ; preds = %1838
  %1840 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %911, i32 -1)
  %1841 = extractvalue { i32, i1 } %1840, 0, !nosanitize !10
  %1842 = extractvalue { i32, i1 } %1840, 1, !nosanitize !10
  br i1 %1842, label %2699, label %1843, !prof !11, !nosanitize !10

1843:                                             ; preds = %1839
  %1844 = sext i32 %1841 to i64
  %1845 = getelementptr inbounds [32 x i8], ptr %6, i64 %1844
  %1846 = getelementptr inbounds nuw i8, ptr %1845, i64 8
  %1847 = load ptr, ptr %1846, align 8, !tbaa !53
  store ptr %1847, ptr %7, align 8, !tbaa !46
  %1848 = getelementptr inbounds nuw i8, ptr %1845, i64 16
  %1849 = load ptr, ptr %1848, align 16, !tbaa !54
  store ptr %1849, ptr %8, align 8, !tbaa !46
  %1850 = getelementptr inbounds nuw i8, ptr %1845, i64 24
  %1851 = load i32, ptr %1850, align 8, !tbaa !55
  %1852 = icmp eq i32 %1851, 0
  br i1 %1852, label %1990, label %1853

1853:                                             ; preds = %1843
  %1854 = icmp sgt i32 %912, -1
  br i1 %1854, label %1855, label %1858

1855:                                             ; preds = %1853
  %1856 = zext nneg i32 %912 to i64
  %.split221 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1856
  %1857 = getelementptr inbounds nuw i8, ptr %.split221, i64 24
  store i32 -1, ptr %1857, align 8, !tbaa !55
  br label %1858

1858:                                             ; preds = %1855, %1853
  %1859 = ptrtoint ptr %909 to i64
  %1860 = sub i64 %1859, %831
  %1861 = ashr exact i64 %1860, 2
  %1862 = add nsw i64 %1861, 2147483648
  %1863 = icmp ult i64 %1862, 4294967296
  br i1 %1863, label %1864, label %2723

1864:                                             ; preds = %1858
  %1865 = trunc nsw i64 %1861 to i32
  %1866 = ptrtoint ptr %1849 to i64
  %1867 = sub i64 %1866, %832
  %1868 = ashr exact i64 %1867, 2
  %1869 = add nsw i64 %1868, 2147483647
  %1870 = icmp ult i64 %1869, 4294967296
  br i1 %1870, label %1871, label %2724

1871:                                             ; preds = %1864
  %1872 = trunc i64 %1868 to i32
  %1873 = add i32 %1872, -1
  %1874 = getelementptr inbounds i8, ptr %1847, i64 -4
  %1875 = icmp ugt ptr %908, %1874
  br i1 %1875, label %.loopexit259, label %.preheader256

.preheader256:                                    ; preds = %1871, %1912
  %1876 = phi i32 [ %1915, %1912 ], [ -1, %1871 ]
  %1877 = phi i32 [ %1914, %1912 ], [ -1, %1871 ]
  %1878 = phi ptr [ %1916, %1912 ], [ %908, %1871 ]
  %1879 = phi ptr [ %1913, %1912 ], [ %1874, %1871 ]
  %1880 = load i32, ptr %1878, align 4, !tbaa !5
  %1881 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1880, i32 %1865), !nosanitize !10
  %1882 = extractvalue { i32, i1 } %1881, 0, !nosanitize !10
  %1883 = extractvalue { i32, i1 } %1881, 1, !nosanitize !10
  br i1 %1883, label %.loopexit251, label %1884, !prof !11, !nosanitize !10

1884:                                             ; preds = %.preheader256
  %1885 = icmp sgt i32 %1882, -1
  br i1 %1885, label %1886, label %1912

1886:                                             ; preds = %1884
  %1887 = zext nneg i32 %1882 to i64
  %1888 = getelementptr inbounds nuw [4 x i8], ptr %136, i64 %1887
  %1889 = load i32, ptr %1888, align 4, !tbaa !5
  %1890 = icmp eq i32 %1889, %1873
  br i1 %1890, label %1891, label %1912

1891:                                             ; preds = %1886
  %1892 = getelementptr inbounds nuw i8, ptr %1879, i64 4
  store i32 %1882, ptr %1892, align 4, !tbaa !5
  %1893 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1882, i32 %1865), !nosanitize !10
  %1894 = extractvalue { i32, i1 } %1893, 1, !nosanitize !10
  br i1 %1894, label %.loopexit252, label %1895, !prof !11, !nosanitize !10

1895:                                             ; preds = %1891
  %1896 = extractvalue { i32, i1 } %1893, 0, !nosanitize !10
  %1897 = sext i32 %1896 to i64
  %1898 = getelementptr inbounds [4 x i8], ptr %136, i64 %1897
  %1899 = load i32, ptr %1898, align 4, !tbaa !5
  %1900 = icmp eq i32 %1877, %1899
  br i1 %1900, label %1909, label %1901

1901:                                             ; preds = %1895
  %1902 = ptrtoint ptr %1892 to i64
  %1903 = sub i64 %1902, %832
  %1904 = ashr exact i64 %1903, 2
  %1905 = add nsw i64 %1904, 2147483648
  %1906 = icmp ult i64 %1905, 4294967296
  br i1 %1906, label %1907, label %2725

1907:                                             ; preds = %1901
  %1908 = trunc nsw i64 %1904 to i32
  br label %1909

1909:                                             ; preds = %1907, %1895
  %1910 = phi i32 [ %1899, %1907 ], [ %1877, %1895 ]
  %1911 = phi i32 [ %1908, %1907 ], [ %1876, %1895 ]
  store i32 %1911, ptr %1888, align 4, !tbaa !5
  br label %1912

1912:                                             ; preds = %1909, %1886, %1884
  %1913 = phi ptr [ %1892, %1909 ], [ %1879, %1886 ], [ %1879, %1884 ]
  %1914 = phi i32 [ %1910, %1909 ], [ %1877, %1886 ], [ %1877, %1884 ]
  %1915 = phi i32 [ %1911, %1909 ], [ %1876, %1886 ], [ %1876, %1884 ]
  %1916 = getelementptr inbounds nuw i8, ptr %1878, i64 4
  %1917 = icmp ugt ptr %1916, %1913
  br i1 %1917, label %.loopexit259, label %.preheader256, !llvm.loop !67

.loopexit259:                                     ; preds = %1912, %1871
  %1918 = phi ptr [ %1874, %1871 ], [ %1913, %1912 ]
  %1919 = phi i32 [ -1, %1871 ], [ %1915, %1912 ]
  %1920 = icmp ugt ptr %908, %1918
  br i1 %1920, label %.loopexit255, label %.preheader254

.preheader254:                                    ; preds = %.loopexit259, %1942
  %1921 = phi i32 [ %1939, %1942 ], [ %1919, %.loopexit259 ]
  %1922 = phi i32 [ %1938, %1942 ], [ -1, %.loopexit259 ]
  %1923 = phi ptr [ %1943, %1942 ], [ %1918, %.loopexit259 ]
  %1924 = load i32, ptr %1923, align 4, !tbaa !5
  %1925 = sext i32 %1924 to i64
  %1926 = getelementptr inbounds [4 x i8], ptr %136, i64 %1925
  %1927 = load i32, ptr %1926, align 4, !tbaa !5
  %1928 = icmp eq i32 %1922, %1927
  br i1 %1928, label %1937, label %1929

1929:                                             ; preds = %.preheader254
  %1930 = ptrtoint ptr %1923 to i64
  %1931 = sub i64 %1930, %832
  %1932 = ashr exact i64 %1931, 2
  %1933 = add nsw i64 %1932, 2147483648
  %1934 = icmp ult i64 %1933, 4294967296
  br i1 %1934, label %1935, label %2726

1935:                                             ; preds = %1929
  %1936 = trunc nsw i64 %1932 to i32
  br label %1937

1937:                                             ; preds = %1935, %.preheader254
  %1938 = phi i32 [ %1927, %1935 ], [ %1922, %.preheader254 ]
  %1939 = phi i32 [ %1936, %1935 ], [ %1921, %.preheader254 ]
  %1940 = icmp eq i32 %1939, %1927
  br i1 %1940, label %1942, label %1941

1941:                                             ; preds = %1937
  store i32 %1939, ptr %1926, align 4, !tbaa !5
  br label %1942

1942:                                             ; preds = %1941, %1937
  %1943 = getelementptr inbounds i8, ptr %1923, i64 -4
  %1944 = icmp ugt ptr %908, %1943
  br i1 %1944, label %.loopexit255, label %.preheader254, !llvm.loop !68

.loopexit255:                                     ; preds = %1942, %.loopexit259
  %1945 = phi i32 [ %1919, %.loopexit259 ], [ %1939, %1942 ]
  %1946 = getelementptr inbounds nuw i8, ptr %1918, i64 4
  %1947 = icmp ult ptr %1946, %1849
  br i1 %1947, label %.preheader250, label %.loopexit246

.preheader250:                                    ; preds = %.loopexit255, %1985
  %1948 = phi ptr [ %1952, %1985 ], [ %907, %.loopexit255 ]
  %1949 = phi i32 [ %1988, %1985 ], [ %1945, %.loopexit255 ]
  %1950 = phi i32 [ %1987, %1985 ], [ -1, %.loopexit255 ]
  %1951 = phi ptr [ %1986, %1985 ], [ %1849, %.loopexit255 ]
  %1952 = getelementptr inbounds i8, ptr %1948, i64 -4
  %1953 = load i32, ptr %1952, align 4, !tbaa !5
  %1954 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1953, i32 %1865), !nosanitize !10
  %1955 = extractvalue { i32, i1 } %1954, 0, !nosanitize !10
  %1956 = extractvalue { i32, i1 } %1954, 1, !nosanitize !10
  br i1 %1956, label %.loopexit251, label %1957, !prof !11, !nosanitize !10

1957:                                             ; preds = %.preheader250
  %1958 = icmp sgt i32 %1955, -1
  br i1 %1958, label %1959, label %1985

1959:                                             ; preds = %1957
  %1960 = zext nneg i32 %1955 to i64
  %1961 = getelementptr inbounds nuw [4 x i8], ptr %136, i64 %1960
  %1962 = load i32, ptr %1961, align 4, !tbaa !5
  %1963 = icmp eq i32 %1962, %1873
  br i1 %1963, label %1964, label %1985

1964:                                             ; preds = %1959
  %1965 = getelementptr inbounds i8, ptr %1951, i64 -4
  store i32 %1955, ptr %1965, align 4, !tbaa !5
  %1966 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1955, i32 %1865), !nosanitize !10
  %1967 = extractvalue { i32, i1 } %1966, 1, !nosanitize !10
  br i1 %1967, label %.loopexit252, label %1968, !prof !11, !nosanitize !10

1968:                                             ; preds = %1964
  %1969 = extractvalue { i32, i1 } %1966, 0, !nosanitize !10
  %1970 = sext i32 %1969 to i64
  %1971 = getelementptr inbounds [4 x i8], ptr %136, i64 %1970
  %1972 = load i32, ptr %1971, align 4, !tbaa !5
  %1973 = icmp eq i32 %1950, %1972
  br i1 %1973, label %1982, label %1974

1974:                                             ; preds = %1968
  %1975 = ptrtoint ptr %1965 to i64
  %1976 = sub i64 %1975, %832
  %1977 = ashr exact i64 %1976, 2
  %1978 = add nsw i64 %1977, 2147483648
  %1979 = icmp ult i64 %1978, 4294967296
  br i1 %1979, label %1980, label %2727

1980:                                             ; preds = %1974
  %1981 = trunc nsw i64 %1977 to i32
  br label %1982

1982:                                             ; preds = %1980, %1968
  %1983 = phi i32 [ %1972, %1980 ], [ %1950, %1968 ]
  %1984 = phi i32 [ %1981, %1980 ], [ %1949, %1968 ]
  store i32 %1984, ptr %1961, align 4, !tbaa !5
  br label %1985

1985:                                             ; preds = %1982, %1959, %1957
  %1986 = phi ptr [ %1965, %1982 ], [ %1951, %1959 ], [ %1951, %1957 ]
  %1987 = phi i32 [ %1983, %1982 ], [ %1950, %1959 ], [ %1950, %1957 ]
  %1988 = phi i32 [ %1984, %1982 ], [ %1949, %1959 ], [ %1949, %1957 ]
  %1989 = icmp ult ptr %1946, %1986
  br i1 %1989, label %.preheader250, label %.loopexit246, !llvm.loop !69

1990:                                             ; preds = %1843
  %1991 = ptrtoint ptr %909 to i64
  %1992 = sub i64 %1991, %831
  %1993 = ashr exact i64 %1992, 2
  %1994 = add nsw i64 %1993, 2147483648
  %1995 = icmp ult i64 %1994, 4294967296
  br i1 %1995, label %1996, label %2719

1996:                                             ; preds = %1990
  %1997 = trunc nsw i64 %1993 to i32
  %1998 = ptrtoint ptr %1849 to i64
  %1999 = sub i64 %1998, %832
  %2000 = ashr exact i64 %1999, 2
  %2001 = add nsw i64 %2000, 2147483647
  %2002 = icmp ult i64 %2001, 4294967296
  br i1 %2002, label %2003, label %2720

2003:                                             ; preds = %1996
  %2004 = trunc i64 %2000 to i32
  %2005 = add i32 %2004, -1
  %2006 = getelementptr inbounds i8, ptr %1847, i64 -4
  %2007 = icmp ugt ptr %908, %2006
  br i1 %2007, label %.loopexit249, label %.preheader247

.preheader247:                                    ; preds = %2003, %2030
  %2008 = phi ptr [ %2032, %2030 ], [ %908, %2003 ]
  %2009 = phi ptr [ %2031, %2030 ], [ %2006, %2003 ]
  %2010 = load i32, ptr %2008, align 4, !tbaa !5
  %2011 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2010, i32 %1997), !nosanitize !10
  %2012 = extractvalue { i32, i1 } %2011, 0, !nosanitize !10
  %2013 = extractvalue { i32, i1 } %2011, 1, !nosanitize !10
  br i1 %2013, label %.loopexit245, label %2014, !prof !11, !nosanitize !10

2014:                                             ; preds = %.preheader247
  %2015 = icmp sgt i32 %2012, -1
  br i1 %2015, label %2016, label %2030

2016:                                             ; preds = %2014
  %2017 = zext nneg i32 %2012 to i64
  %2018 = getelementptr inbounds nuw [4 x i8], ptr %136, i64 %2017
  %2019 = load i32, ptr %2018, align 4, !tbaa !5
  %2020 = icmp eq i32 %2019, %2005
  br i1 %2020, label %2021, label %2030

2021:                                             ; preds = %2016
  %2022 = getelementptr inbounds nuw i8, ptr %2009, i64 4
  store i32 %2012, ptr %2022, align 4, !tbaa !5
  %2023 = ptrtoint ptr %2022 to i64
  %2024 = sub i64 %2023, %832
  %2025 = ashr exact i64 %2024, 2
  %2026 = add nsw i64 %2025, 2147483648
  %2027 = icmp ult i64 %2026, 4294967296
  br i1 %2027, label %2028, label %2721

2028:                                             ; preds = %2021
  %2029 = trunc nsw i64 %2025 to i32
  store i32 %2029, ptr %2018, align 4, !tbaa !5
  br label %2030

2030:                                             ; preds = %2028, %2016, %2014
  %2031 = phi ptr [ %2022, %2028 ], [ %2009, %2016 ], [ %2009, %2014 ]
  %2032 = getelementptr inbounds nuw i8, ptr %2008, i64 4
  %2033 = icmp ugt ptr %2032, %2031
  br i1 %2033, label %.loopexit249, label %.preheader247, !llvm.loop !70

.loopexit249:                                     ; preds = %2030, %2003
  %2034 = phi ptr [ %2006, %2003 ], [ %2031, %2030 ]
  %2035 = getelementptr inbounds nuw i8, ptr %2034, i64 4
  %2036 = icmp ult ptr %2035, %1849
  br i1 %2036, label %.preheader244, label %.loopexit246

.preheader244:                                    ; preds = %.loopexit249, %2060
  %2037 = phi ptr [ %2039, %2060 ], [ %907, %.loopexit249 ]
  %2038 = phi ptr [ %2061, %2060 ], [ %1849, %.loopexit249 ]
  %2039 = getelementptr inbounds i8, ptr %2037, i64 -4
  %2040 = load i32, ptr %2039, align 4, !tbaa !5
  %2041 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2040, i32 %1997), !nosanitize !10
  %2042 = extractvalue { i32, i1 } %2041, 0, !nosanitize !10
  %2043 = extractvalue { i32, i1 } %2041, 1, !nosanitize !10
  br i1 %2043, label %.loopexit245, label %2044, !prof !11, !nosanitize !10

2044:                                             ; preds = %.preheader244
  %2045 = icmp sgt i32 %2042, -1
  br i1 %2045, label %2046, label %2060

2046:                                             ; preds = %2044
  %2047 = zext nneg i32 %2042 to i64
  %2048 = getelementptr inbounds nuw [4 x i8], ptr %136, i64 %2047
  %2049 = load i32, ptr %2048, align 4, !tbaa !5
  %2050 = icmp eq i32 %2049, %2005
  br i1 %2050, label %2051, label %2060

2051:                                             ; preds = %2046
  %2052 = getelementptr inbounds i8, ptr %2038, i64 -4
  store i32 %2042, ptr %2052, align 4, !tbaa !5
  %2053 = ptrtoint ptr %2052 to i64
  %2054 = sub i64 %2053, %832
  %2055 = ashr exact i64 %2054, 2
  %2056 = add nsw i64 %2055, 2147483648
  %2057 = icmp ult i64 %2056, 4294967296
  br i1 %2057, label %2058, label %2722

2058:                                             ; preds = %2051
  %2059 = trunc nsw i64 %2055 to i32
  store i32 %2059, ptr %2048, align 4, !tbaa !5
  br label %2060

2060:                                             ; preds = %2058, %2046, %2044
  %2061 = phi ptr [ %2052, %2058 ], [ %2038, %2046 ], [ %2038, %2044 ]
  %2062 = icmp ult ptr %2035, %2061
  br i1 %2062, label %.preheader244, label %.loopexit246, !llvm.loop !71

.loopexit246:                                     ; preds = %1985, %2060, %.loopexit249, %.loopexit255
  %2063 = icmp sgt i32 %1841, -1
  br i1 %2063, label %2064, label %2728

2064:                                             ; preds = %.loopexit246
  %2065 = icmp eq i32 %1841, 0
  br i1 %2065, label %2617, label %2066

2066:                                             ; preds = %2064
  %2067 = add nsw i32 %1841, -1
  %2068 = zext nneg i32 %2067 to i64
  %2069 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2068
  %2070 = load ptr, ptr %2069, align 16, !tbaa !51
  %2071 = getelementptr inbounds nuw i8, ptr %2069, i64 8
  %2072 = load ptr, ptr %2071, align 8, !tbaa !53
  %2073 = getelementptr inbounds nuw i8, ptr %2069, i64 16
  %2074 = load ptr, ptr %2073, align 16, !tbaa !54
  %2075 = getelementptr inbounds nuw i8, ptr %2069, i64 24
  %2076 = load i32, ptr %2075, align 8, !tbaa !55
  %2077 = getelementptr inbounds nuw i8, ptr %2069, i64 28
  %2078 = load i32, ptr %2077, align 4, !tbaa !56
  br label %2634

2079:                                             ; preds = %1838
  %2080 = getelementptr inbounds [4 x i8], ptr %909, i64 %845
  %2081 = ptrtoint ptr %907 to i64
  %2082 = sub i64 %2081, %832
  %2083 = ashr exact i64 %2082, 2
  %2084 = add nsw i64 %2083, 2147483647
  %2085 = icmp ult i64 %2084, 4294967296
  br i1 %2085, label %2086, label %2700

2086:                                             ; preds = %2079
  %2087 = trunc i64 %2083 to i32
  %2088 = add i32 %2087, -1
  call fastcc void @tr_partition(ptr noundef %2080, ptr noundef %908, ptr noundef %908, ptr noundef %907, ptr noundef %7, ptr noundef %8, i32 noundef %2088)
  %2089 = load ptr, ptr %7, align 8, !tbaa !46
  %2090 = icmp ult ptr %2089, %907
  br i1 %2090, label %2091, label %.loopexit243

2091:                                             ; preds = %2086
  %2092 = ptrtoint ptr %2089 to i64
  %2093 = sub i64 %2092, %832
  %2094 = ashr exact i64 %2093, 2
  %2095 = add nsw i64 %2094, 2147483647
  %2096 = icmp ult i64 %2095, 4294967296
  br i1 %2096, label %2097, label %2701

2097:                                             ; preds = %2091
  %2098 = trunc i64 %2094 to i32
  %2099 = add i32 %2098, -1
  %2100 = icmp ult ptr %908, %2089
  br i1 %2100, label %.preheader242, label %.loopexit243

.preheader242:                                    ; preds = %2097, %.preheader242
  %2101 = phi ptr [ %2105, %.preheader242 ], [ %908, %2097 ]
  %2102 = load i32, ptr %2101, align 4, !tbaa !5
  %2103 = sext i32 %2102 to i64
  %2104 = getelementptr inbounds [4 x i8], ptr %136, i64 %2103
  store i32 %2099, ptr %2104, align 4, !tbaa !5
  %2105 = getelementptr inbounds nuw i8, ptr %2101, i64 4
  %2106 = icmp ult ptr %2105, %2089
  br i1 %2106, label %.preheader242, label %.loopexit243, !llvm.loop !72

.loopexit243:                                     ; preds = %.preheader242, %2097, %2086
  %2107 = load ptr, ptr %8, align 8, !tbaa !46
  %2108 = icmp ult ptr %2107, %907
  %2109 = ptrtoint ptr %2107 to i64
  br i1 %2108, label %2110, label %.loopexit241

2110:                                             ; preds = %.loopexit243
  %2111 = sub i64 %2109, %832
  %2112 = ashr exact i64 %2111, 2
  %2113 = add nsw i64 %2112, 2147483647
  %2114 = icmp ult i64 %2113, 4294967296
  br i1 %2114, label %2115, label %2702

2115:                                             ; preds = %2110
  %2116 = trunc i64 %2112 to i32
  %2117 = add i32 %2116, -1
  %2118 = icmp ult ptr %2089, %2107
  br i1 %2118, label %.preheader240, label %.loopexit241

.preheader240:                                    ; preds = %2115, %.preheader240
  %2119 = phi ptr [ %2123, %.preheader240 ], [ %2089, %2115 ]
  %2120 = load i32, ptr %2119, align 4, !tbaa !5
  %2121 = sext i32 %2120 to i64
  %2122 = getelementptr inbounds [4 x i8], ptr %136, i64 %2121
  store i32 %2117, ptr %2122, align 4, !tbaa !5
  %2123 = getelementptr inbounds nuw i8, ptr %2119, i64 4
  %2124 = icmp ult ptr %2123, %2107
  br i1 %2124, label %.preheader240, label %.loopexit241, !llvm.loop !73

.loopexit241:                                     ; preds = %.preheader240, %2115, %.loopexit243
  %2125 = ptrtoint ptr %2089 to i64
  %2126 = sub i64 %2109, %2125
  %2127 = icmp sgt i64 %2126, 4
  br i1 %2127, label %2128, label %2145

2128:                                             ; preds = %.loopexit241
  %2129 = icmp slt i32 %911, 64
  br i1 %2129, label %2130, label %2703

2130:                                             ; preds = %2128
  %2131 = sext i32 %911 to i64
  %2132 = getelementptr inbounds [32 x i8], ptr %6, i64 %2131
  store ptr null, ptr %2132, align 16, !tbaa !51
  %2133 = getelementptr inbounds nuw i8, ptr %2132, i64 8
  store ptr %2089, ptr %2133, align 8, !tbaa !53
  %2134 = getelementptr inbounds nuw i8, ptr %2132, i64 16
  store ptr %2107, ptr %2134, align 16, !tbaa !54
  %2135 = getelementptr inbounds nuw i8, ptr %2132, i64 24
  store i32 0, ptr %2135, align 8, !tbaa !55
  %2136 = getelementptr inbounds nuw i8, ptr %2132, i64 28
  store i32 0, ptr %2136, align 4, !tbaa !56
  %2137 = icmp eq i32 %911, 63
  br i1 %2137, label %2704, label %2138

2138:                                             ; preds = %2130
  %2139 = getelementptr i8, ptr %2132, i64 32
  store ptr %2080, ptr %2139, align 16, !tbaa !51
  %2140 = getelementptr i8, ptr %2132, i64 40
  store ptr %908, ptr %2140, align 8, !tbaa !53
  %2141 = getelementptr i8, ptr %2132, i64 48
  store ptr %907, ptr %2141, align 16, !tbaa !54
  %2142 = getelementptr i8, ptr %2132, i64 56
  store i32 -2, ptr %2142, align 8, !tbaa !55
  %2143 = add nsw i32 %911, 2
  %2144 = getelementptr i8, ptr %2132, i64 60
  store i32 %912, ptr %2144, align 4, !tbaa !56
  br label %2145

2145:                                             ; preds = %2138, %.loopexit241
  %2146 = phi i32 [ %2143, %2138 ], [ %911, %.loopexit241 ]
  %2147 = phi i32 [ %911, %2138 ], [ %912, %.loopexit241 ]
  %2148 = ptrtoint ptr %908 to i64
  %2149 = sub i64 %2125, %2148
  %2150 = ashr exact i64 %2149, 2
  %2151 = sub i64 %2081, %2109
  %2152 = ashr exact i64 %2151, 2
  %2153 = icmp sgt i64 %2150, %2152
  br i1 %2153, label %2281, label %2154

2154:                                             ; preds = %2145
  %2155 = icmp sgt i64 %2150, 1
  br i1 %2155, label %2207, label %2156

2156:                                             ; preds = %2154
  %2157 = icmp sgt i64 %2152, 1
  br i1 %2157, label %2175, label %2158

2158:                                             ; preds = %2156
  %2159 = icmp sgt i32 %2146, -1
  br i1 %2159, label %2160, label %2711

2160:                                             ; preds = %2158
  %2161 = icmp eq i32 %2146, 0
  br i1 %2161, label %2617, label %2162

2162:                                             ; preds = %2160
  %2163 = add nsw i32 %2146, -1
  %2164 = zext nneg i32 %2163 to i64
  %2165 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2164
  %2166 = load ptr, ptr %2165, align 16, !tbaa !51
  %2167 = getelementptr inbounds nuw i8, ptr %2165, i64 8
  %2168 = load ptr, ptr %2167, align 8, !tbaa !53
  %2169 = getelementptr inbounds nuw i8, ptr %2165, i64 16
  %2170 = load ptr, ptr %2169, align 16, !tbaa !54
  %2171 = getelementptr inbounds nuw i8, ptr %2165, i64 24
  %2172 = load i32, ptr %2171, align 8, !tbaa !55
  %2173 = getelementptr inbounds nuw i8, ptr %2165, i64 28
  %2174 = load i32, ptr %2173, align 4, !tbaa !56
  br label %2634

2175:                                             ; preds = %2156
  %2176 = icmp samesign ult i64 %2152, 2147483648
  br i1 %2176, label %2177, label %2709

2177:                                             ; preds = %2175
  %2178 = icmp samesign ult i64 %2152, 65536
  br i1 %2178, label %2195, label %2179

2179:                                             ; preds = %2177
  %2180 = icmp samesign ult i64 %2152, 16777216
  br i1 %2180, label %2188, label %2181

2181:                                             ; preds = %2179
  %2182 = lshr i64 %2152, 24
  %2183 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2182
  %2184 = load i32, ptr %2183, align 4, !tbaa !5
  %2185 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2184, i32 24), !nosanitize !10
  %2186 = extractvalue { i32, i1 } %2185, 0, !nosanitize !10
  %2187 = extractvalue { i32, i1 } %2185, 1, !nosanitize !10
  br i1 %2187, label %2710, label %2634, !prof !11, !nosanitize !10

2188:                                             ; preds = %2179
  %2189 = lshr i64 %2152, 16
  %2190 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2189
  %2191 = load i32, ptr %2190, align 4, !tbaa !5
  %2192 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2191, i32 16), !nosanitize !10
  %2193 = extractvalue { i32, i1 } %2192, 0, !nosanitize !10
  %2194 = extractvalue { i32, i1 } %2192, 1, !nosanitize !10
  br i1 %2194, label %2710, label %2634, !prof !11, !nosanitize !10

2195:                                             ; preds = %2177
  %2196 = icmp samesign ult i64 %2152, 256
  br i1 %2196, label %2204, label %2197

2197:                                             ; preds = %2195
  %2198 = lshr i64 %2152, 8
  %2199 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2198
  %2200 = load i32, ptr %2199, align 4, !tbaa !5
  %2201 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2200, i32 8), !nosanitize !10
  %2202 = extractvalue { i32, i1 } %2201, 0, !nosanitize !10
  %2203 = extractvalue { i32, i1 } %2201, 1, !nosanitize !10
  br i1 %2203, label %2710, label %2634, !prof !11, !nosanitize !10

2204:                                             ; preds = %2195
  %2205 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2151
  %2206 = load i32, ptr %2205, align 4, !tbaa !5
  br label %2634

2207:                                             ; preds = %2154
  %2208 = icmp slt i32 %2146, 64
  br i1 %2208, label %2209, label %2705

2209:                                             ; preds = %2207
  %2210 = sext i32 %2146 to i64
  %2211 = getelementptr inbounds [32 x i8], ptr %6, i64 %2210
  store ptr %909, ptr %2211, align 16, !tbaa !51
  %2212 = getelementptr inbounds nuw i8, ptr %2211, i64 8
  store ptr %2107, ptr %2212, align 8, !tbaa !53
  %2213 = getelementptr inbounds nuw i8, ptr %2211, i64 16
  store ptr %907, ptr %2213, align 16, !tbaa !54
  %2214 = add nsw i64 %2152, 2147483648
  %2215 = icmp ult i64 %2214, 4294967296
  br i1 %2215, label %2216, label %2706

2216:                                             ; preds = %2209
  %2217 = icmp ult i64 %2152, 65536
  br i1 %2217, label %2235, label %2218

2218:                                             ; preds = %2216
  %2219 = icmp ult i64 %2152, 16777216
  br i1 %2219, label %2228, label %2220

2220:                                             ; preds = %2218
  %2221 = lshr i64 %2152, 24
  %2222 = and i64 %2221, 255
  %2223 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2222
  %2224 = load i32, ptr %2223, align 4, !tbaa !5
  %2225 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2224, i32 24), !nosanitize !10
  %2226 = extractvalue { i32, i1 } %2225, 0, !nosanitize !10
  %2227 = extractvalue { i32, i1 } %2225, 1, !nosanitize !10
  br i1 %2227, label %2707, label %2247, !prof !11, !nosanitize !10

2228:                                             ; preds = %2218
  %2229 = lshr i64 %2152, 16
  %2230 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2229
  %2231 = load i32, ptr %2230, align 4, !tbaa !5
  %2232 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2231, i32 16), !nosanitize !10
  %2233 = extractvalue { i32, i1 } %2232, 0, !nosanitize !10
  %2234 = extractvalue { i32, i1 } %2232, 1, !nosanitize !10
  br i1 %2234, label %2707, label %2247, !prof !11, !nosanitize !10

2235:                                             ; preds = %2216
  %2236 = icmp samesign ult i64 %2152, 256
  br i1 %2236, label %2244, label %2237

2237:                                             ; preds = %2235
  %2238 = lshr i64 %2152, 8
  %2239 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2238
  %2240 = load i32, ptr %2239, align 4, !tbaa !5
  %2241 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2240, i32 8), !nosanitize !10
  %2242 = extractvalue { i32, i1 } %2241, 0, !nosanitize !10
  %2243 = extractvalue { i32, i1 } %2241, 1, !nosanitize !10
  br i1 %2243, label %2707, label %2247, !prof !11, !nosanitize !10

2244:                                             ; preds = %2235
  %2245 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2151
  %2246 = load i32, ptr %2245, align 4, !tbaa !5
  br label %2247

2247:                                             ; preds = %2244, %2237, %2228, %2220
  %2248 = phi i32 [ %2226, %2220 ], [ %2233, %2228 ], [ %2242, %2237 ], [ %2246, %2244 ]
  %2249 = getelementptr inbounds nuw i8, ptr %2211, i64 24
  store i32 %2248, ptr %2249, align 8, !tbaa !55
  %2250 = add nsw i32 %2146, 1
  %2251 = getelementptr inbounds nuw i8, ptr %2211, i64 28
  store i32 %2147, ptr %2251, align 4, !tbaa !56
  %2252 = icmp samesign ult i64 %2150, 65536
  br i1 %2252, label %2269, label %2253

2253:                                             ; preds = %2247
  %2254 = icmp samesign ult i64 %2150, 16777216
  br i1 %2254, label %2262, label %2255

2255:                                             ; preds = %2253
  %2256 = lshr i64 %2150, 24
  %2257 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2256
  %2258 = load i32, ptr %2257, align 4, !tbaa !5
  %2259 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2258, i32 24), !nosanitize !10
  %2260 = extractvalue { i32, i1 } %2259, 0, !nosanitize !10
  %2261 = extractvalue { i32, i1 } %2259, 1, !nosanitize !10
  br i1 %2261, label %2708, label %2634, !prof !11, !nosanitize !10

2262:                                             ; preds = %2253
  %2263 = lshr i64 %2150, 16
  %2264 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2263
  %2265 = load i32, ptr %2264, align 4, !tbaa !5
  %2266 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2265, i32 16), !nosanitize !10
  %2267 = extractvalue { i32, i1 } %2266, 0, !nosanitize !10
  %2268 = extractvalue { i32, i1 } %2266, 1, !nosanitize !10
  br i1 %2268, label %2708, label %2634, !prof !11, !nosanitize !10

2269:                                             ; preds = %2247
  %2270 = icmp samesign ult i64 %2150, 256
  br i1 %2270, label %2278, label %2271

2271:                                             ; preds = %2269
  %2272 = lshr i64 %2150, 8
  %2273 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2272
  %2274 = load i32, ptr %2273, align 4, !tbaa !5
  %2275 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2274, i32 8), !nosanitize !10
  %2276 = extractvalue { i32, i1 } %2275, 0, !nosanitize !10
  %2277 = extractvalue { i32, i1 } %2275, 1, !nosanitize !10
  br i1 %2277, label %2708, label %2634, !prof !11, !nosanitize !10

2278:                                             ; preds = %2269
  %2279 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2149
  %2280 = load i32, ptr %2279, align 4, !tbaa !5
  br label %2634

2281:                                             ; preds = %2145
  %2282 = icmp sgt i64 %2152, 1
  br i1 %2282, label %2334, label %2283

2283:                                             ; preds = %2281
  %2284 = icmp sgt i64 %2150, 1
  br i1 %2284, label %2302, label %2285

2285:                                             ; preds = %2283
  %2286 = icmp sgt i32 %2146, -1
  br i1 %2286, label %2287, label %2718

2287:                                             ; preds = %2285
  %2288 = icmp eq i32 %2146, 0
  br i1 %2288, label %2617, label %2289

2289:                                             ; preds = %2287
  %2290 = add nsw i32 %2146, -1
  %2291 = zext nneg i32 %2290 to i64
  %2292 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2291
  %2293 = load ptr, ptr %2292, align 16, !tbaa !51
  %2294 = getelementptr inbounds nuw i8, ptr %2292, i64 8
  %2295 = load ptr, ptr %2294, align 8, !tbaa !53
  %2296 = getelementptr inbounds nuw i8, ptr %2292, i64 16
  %2297 = load ptr, ptr %2296, align 16, !tbaa !54
  %2298 = getelementptr inbounds nuw i8, ptr %2292, i64 24
  %2299 = load i32, ptr %2298, align 8, !tbaa !55
  %2300 = getelementptr inbounds nuw i8, ptr %2292, i64 28
  %2301 = load i32, ptr %2300, align 4, !tbaa !56
  br label %2634

2302:                                             ; preds = %2283
  %2303 = icmp samesign ult i64 %2150, 2147483648
  br i1 %2303, label %2304, label %2716

2304:                                             ; preds = %2302
  %2305 = icmp samesign ult i64 %2150, 65536
  br i1 %2305, label %2322, label %2306

2306:                                             ; preds = %2304
  %2307 = icmp samesign ult i64 %2150, 16777216
  br i1 %2307, label %2315, label %2308

2308:                                             ; preds = %2306
  %2309 = lshr i64 %2150, 24
  %2310 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2309
  %2311 = load i32, ptr %2310, align 4, !tbaa !5
  %2312 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2311, i32 24), !nosanitize !10
  %2313 = extractvalue { i32, i1 } %2312, 0, !nosanitize !10
  %2314 = extractvalue { i32, i1 } %2312, 1, !nosanitize !10
  br i1 %2314, label %2717, label %2634, !prof !11, !nosanitize !10

2315:                                             ; preds = %2306
  %2316 = lshr i64 %2150, 16
  %2317 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2316
  %2318 = load i32, ptr %2317, align 4, !tbaa !5
  %2319 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2318, i32 16), !nosanitize !10
  %2320 = extractvalue { i32, i1 } %2319, 0, !nosanitize !10
  %2321 = extractvalue { i32, i1 } %2319, 1, !nosanitize !10
  br i1 %2321, label %2717, label %2634, !prof !11, !nosanitize !10

2322:                                             ; preds = %2304
  %2323 = icmp samesign ult i64 %2150, 256
  br i1 %2323, label %2331, label %2324

2324:                                             ; preds = %2322
  %2325 = lshr i64 %2150, 8
  %2326 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2325
  %2327 = load i32, ptr %2326, align 4, !tbaa !5
  %2328 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2327, i32 8), !nosanitize !10
  %2329 = extractvalue { i32, i1 } %2328, 0, !nosanitize !10
  %2330 = extractvalue { i32, i1 } %2328, 1, !nosanitize !10
  br i1 %2330, label %2717, label %2634, !prof !11, !nosanitize !10

2331:                                             ; preds = %2322
  %2332 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2149
  %2333 = load i32, ptr %2332, align 4, !tbaa !5
  br label %2634

2334:                                             ; preds = %2281
  %2335 = icmp slt i32 %2146, 64
  br i1 %2335, label %2336, label %2712

2336:                                             ; preds = %2334
  %2337 = sext i32 %2146 to i64
  %2338 = getelementptr inbounds [32 x i8], ptr %6, i64 %2337
  store ptr %909, ptr %2338, align 16, !tbaa !51
  %2339 = getelementptr inbounds nuw i8, ptr %2338, i64 8
  store ptr %908, ptr %2339, align 8, !tbaa !53
  %2340 = getelementptr inbounds nuw i8, ptr %2338, i64 16
  store ptr %2089, ptr %2340, align 16, !tbaa !54
  %2341 = add nsw i64 %2150, 2147483648
  %2342 = icmp ult i64 %2341, 4294967296
  br i1 %2342, label %2343, label %2713

2343:                                             ; preds = %2336
  %2344 = icmp ult i64 %2150, 65536
  br i1 %2344, label %2362, label %2345

2345:                                             ; preds = %2343
  %2346 = icmp ult i64 %2150, 16777216
  br i1 %2346, label %2355, label %2347

2347:                                             ; preds = %2345
  %2348 = lshr i64 %2150, 24
  %2349 = and i64 %2348, 255
  %2350 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2349
  %2351 = load i32, ptr %2350, align 4, !tbaa !5
  %2352 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2351, i32 24), !nosanitize !10
  %2353 = extractvalue { i32, i1 } %2352, 0, !nosanitize !10
  %2354 = extractvalue { i32, i1 } %2352, 1, !nosanitize !10
  br i1 %2354, label %2714, label %2374, !prof !11, !nosanitize !10

2355:                                             ; preds = %2345
  %2356 = lshr i64 %2150, 16
  %2357 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2356
  %2358 = load i32, ptr %2357, align 4, !tbaa !5
  %2359 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2358, i32 16), !nosanitize !10
  %2360 = extractvalue { i32, i1 } %2359, 0, !nosanitize !10
  %2361 = extractvalue { i32, i1 } %2359, 1, !nosanitize !10
  br i1 %2361, label %2714, label %2374, !prof !11, !nosanitize !10

2362:                                             ; preds = %2343
  %2363 = icmp samesign ult i64 %2150, 256
  br i1 %2363, label %2371, label %2364

2364:                                             ; preds = %2362
  %2365 = lshr i64 %2150, 8
  %2366 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2365
  %2367 = load i32, ptr %2366, align 4, !tbaa !5
  %2368 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2367, i32 8), !nosanitize !10
  %2369 = extractvalue { i32, i1 } %2368, 0, !nosanitize !10
  %2370 = extractvalue { i32, i1 } %2368, 1, !nosanitize !10
  br i1 %2370, label %2714, label %2374, !prof !11, !nosanitize !10

2371:                                             ; preds = %2362
  %2372 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2149
  %2373 = load i32, ptr %2372, align 4, !tbaa !5
  br label %2374

2374:                                             ; preds = %2371, %2364, %2355, %2347
  %2375 = phi i32 [ %2353, %2347 ], [ %2360, %2355 ], [ %2369, %2364 ], [ %2373, %2371 ]
  %2376 = getelementptr inbounds nuw i8, ptr %2338, i64 24
  store i32 %2375, ptr %2376, align 8, !tbaa !55
  %2377 = add nsw i32 %2146, 1
  %2378 = getelementptr inbounds nuw i8, ptr %2338, i64 28
  store i32 %2147, ptr %2378, align 4, !tbaa !56
  %2379 = icmp samesign ult i64 %2152, 65536
  br i1 %2379, label %2396, label %2380

2380:                                             ; preds = %2374
  %2381 = icmp samesign ult i64 %2152, 16777216
  br i1 %2381, label %2389, label %2382

2382:                                             ; preds = %2380
  %2383 = lshr i64 %2152, 24
  %2384 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2383
  %2385 = load i32, ptr %2384, align 4, !tbaa !5
  %2386 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2385, i32 24), !nosanitize !10
  %2387 = extractvalue { i32, i1 } %2386, 0, !nosanitize !10
  %2388 = extractvalue { i32, i1 } %2386, 1, !nosanitize !10
  br i1 %2388, label %2715, label %2634, !prof !11, !nosanitize !10

2389:                                             ; preds = %2380
  %2390 = lshr i64 %2152, 16
  %2391 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2390
  %2392 = load i32, ptr %2391, align 4, !tbaa !5
  %2393 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2392, i32 16), !nosanitize !10
  %2394 = extractvalue { i32, i1 } %2393, 0, !nosanitize !10
  %2395 = extractvalue { i32, i1 } %2393, 1, !nosanitize !10
  br i1 %2395, label %2715, label %2634, !prof !11, !nosanitize !10

2396:                                             ; preds = %2374
  %2397 = icmp samesign ult i64 %2152, 256
  br i1 %2397, label %2405, label %2398

2398:                                             ; preds = %2396
  %2399 = lshr i64 %2152, 8
  %2400 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2399
  %2401 = load i32, ptr %2400, align 4, !tbaa !5
  %2402 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2401, i32 8), !nosanitize !10
  %2403 = extractvalue { i32, i1 } %2402, 0, !nosanitize !10
  %2404 = extractvalue { i32, i1 } %2402, 1, !nosanitize !10
  br i1 %2404, label %2715, label %2634, !prof !11, !nosanitize !10

2405:                                             ; preds = %2396
  %2406 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2151
  %2407 = load i32, ptr %2406, align 4, !tbaa !5
  br label %2634

2408:                                             ; preds = %1838, %.loopexit262
  %2409 = load i32, ptr %908, align 4, !tbaa !5
  %2410 = icmp sgt i32 %2409, -1
  br i1 %2410, label %.preheader239, label %2428

.preheader239:                                    ; preds = %2408, %2424
  %2411 = phi i32 [ %2425, %2424 ], [ %2409, %2408 ]
  %2412 = phi ptr [ %2422, %2424 ], [ %908, %2408 ]
  %2413 = ptrtoint ptr %2412 to i64
  %2414 = sub i64 %2413, %832
  %2415 = ashr exact i64 %2414, 2
  %2416 = add nsw i64 %2415, 2147483648
  %2417 = icmp ult i64 %2416, 4294967296
  br i1 %2417, label %2418, label %2729

2418:                                             ; preds = %.preheader239
  %2419 = trunc nsw i64 %2415 to i32
  %2420 = zext nneg i32 %2411 to i64
  %2421 = getelementptr inbounds nuw [4 x i8], ptr %136, i64 %2420
  store i32 %2419, ptr %2421, align 4, !tbaa !5
  %2422 = getelementptr inbounds nuw i8, ptr %2412, i64 4
  %2423 = icmp ult ptr %2422, %907
  br i1 %2423, label %2424, label %2427

2424:                                             ; preds = %2418
  %2425 = load i32, ptr %2422, align 4, !tbaa !5
  %2426 = icmp sgt i32 %2425, -1
  br i1 %2426, label %.preheader239, label %2427, !llvm.loop !74

2427:                                             ; preds = %2424, %2418
  store ptr %2422, ptr %7, align 8
  br label %2428

2428:                                             ; preds = %2427, %2408
  %2429 = phi ptr [ %908, %2408 ], [ %2422, %2427 ]
  %2430 = icmp ult ptr %2429, %907
  br i1 %2430, label %2448, label %2431

2431:                                             ; preds = %2428
  %2432 = icmp sgt i32 %911, -1
  br i1 %2432, label %2433, label %2739

2433:                                             ; preds = %2431
  %2434 = icmp eq i32 %911, 0
  br i1 %2434, label %2617, label %2435

2435:                                             ; preds = %2433
  %2436 = add nsw i32 %911, -1
  %2437 = zext nneg i32 %2436 to i64
  %2438 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2437
  %2439 = load ptr, ptr %2438, align 16, !tbaa !51
  %2440 = getelementptr inbounds nuw i8, ptr %2438, i64 8
  %2441 = load ptr, ptr %2440, align 8, !tbaa !53
  %2442 = getelementptr inbounds nuw i8, ptr %2438, i64 16
  %2443 = load ptr, ptr %2442, align 16, !tbaa !54
  %2444 = getelementptr inbounds nuw i8, ptr %2438, i64 24
  %2445 = load i32, ptr %2444, align 8, !tbaa !55
  %2446 = getelementptr inbounds nuw i8, ptr %2438, i64 28
  %2447 = load i32, ptr %2446, align 4, !tbaa !56
  br label %2634

2448:                                             ; preds = %2428
  %2449 = load i32, ptr %2429, align 4, !tbaa !5
  br label %2450

2450:                                             ; preds = %2450, %2448
  %2451 = phi i32 [ %2455, %2450 ], [ %2449, %2448 ]
  %2452 = phi ptr [ %2454, %2450 ], [ %2429, %2448 ]
  %2453 = xor i32 %2451, -1
  store i32 %2453, ptr %2452, align 4, !tbaa !5
  %2454 = getelementptr inbounds nuw i8, ptr %2452, i64 4
  %2455 = load i32, ptr %2454, align 4, !tbaa !5
  %2456 = icmp slt i32 %2455, 0
  br i1 %2456, label %2450, label %2457, !llvm.loop !75

2457:                                             ; preds = %2450
  %2458 = zext nneg i32 %2455 to i64
  %2459 = getelementptr inbounds nuw [4 x i8], ptr %136, i64 %2458
  %2460 = load i32, ptr %2459, align 4, !tbaa !5
  %2461 = getelementptr inbounds nuw [4 x i8], ptr %909, i64 %2458
  %2462 = load i32, ptr %2461, align 4, !tbaa !5
  %2463 = icmp eq i32 %2460, %2462
  br i1 %2463, label %2507, label %2464

2464:                                             ; preds = %2457
  %2465 = ptrtoint ptr %2454 to i64
  %2466 = ptrtoint ptr %2429 to i64
  %2467 = sub i64 %2465, %2466
  %2468 = ashr exact i64 %2467, 2
  %2469 = add nsw i64 %2468, 2147483649
  %2470 = icmp ult i64 %2469, 4294967296
  br i1 %2470, label %2471, label %2730

2471:                                             ; preds = %2464
  %2472 = trunc i64 %2468 to i32
  %2473 = add i32 %2472, 1
  %2474 = icmp ult i32 %2473, 65536
  br i1 %2474, label %2493, label %2475

2475:                                             ; preds = %2471
  %2476 = icmp ult i32 %2473, 16777216
  br i1 %2476, label %2485, label %2477

2477:                                             ; preds = %2475
  %2478 = lshr i32 %2473, 24
  %2479 = zext nneg i32 %2478 to i64
  %2480 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2479
  %2481 = load i32, ptr %2480, align 4, !tbaa !5
  %2482 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2481, i32 24), !nosanitize !10
  %2483 = extractvalue { i32, i1 } %2482, 0, !nosanitize !10
  %2484 = extractvalue { i32, i1 } %2482, 1, !nosanitize !10
  br i1 %2484, label %2731, label %2507, !prof !11, !nosanitize !10

2485:                                             ; preds = %2475
  %2486 = lshr i32 %2473, 16
  %2487 = zext nneg i32 %2486 to i64
  %2488 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2487
  %2489 = load i32, ptr %2488, align 4, !tbaa !5
  %2490 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2489, i32 16), !nosanitize !10
  %2491 = extractvalue { i32, i1 } %2490, 0, !nosanitize !10
  %2492 = extractvalue { i32, i1 } %2490, 1, !nosanitize !10
  br i1 %2492, label %2731, label %2507, !prof !11, !nosanitize !10

2493:                                             ; preds = %2471
  %2494 = icmp samesign ult i32 %2473, 256
  br i1 %2494, label %2503, label %2495

2495:                                             ; preds = %2493
  %2496 = lshr i32 %2473, 8
  %2497 = zext nneg i32 %2496 to i64
  %2498 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2497
  %2499 = load i32, ptr %2498, align 4, !tbaa !5
  %2500 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2499, i32 8), !nosanitize !10
  %2501 = extractvalue { i32, i1 } %2500, 0, !nosanitize !10
  %2502 = extractvalue { i32, i1 } %2500, 1, !nosanitize !10
  br i1 %2502, label %2731, label %2507, !prof !11, !nosanitize !10

2503:                                             ; preds = %2493
  %2504 = zext nneg i32 %2473 to i64
  %2505 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2504
  %2506 = load i32, ptr %2505, align 4, !tbaa !5
  br label %2507

2507:                                             ; preds = %2503, %2495, %2485, %2477, %2457
  %2508 = phi i32 [ -1, %2457 ], [ %2483, %2477 ], [ %2491, %2485 ], [ %2501, %2495 ], [ %2506, %2503 ]
  %2509 = getelementptr inbounds nuw i8, ptr %2452, i64 8
  store ptr %2509, ptr %7, align 8, !tbaa !46
  %2510 = icmp ult ptr %2509, %907
  %2511 = ptrtoint ptr %2509 to i64
  br i1 %2510, label %2512, label %2528

2512:                                             ; preds = %2507
  %2513 = sub i64 %2511, %832
  %2514 = ashr exact i64 %2513, 2
  %2515 = add nsw i64 %2514, 2147483647
  %2516 = icmp ult i64 %2515, 4294967296
  br i1 %2516, label %2517, label %2732

2517:                                             ; preds = %2512
  %2518 = trunc i64 %2514 to i32
  %2519 = add i32 %2518, -1
  %2520 = icmp ult ptr %2429, %2509
  br i1 %2520, label %.preheader237, label %.loopexit238

.preheader237:                                    ; preds = %2517, %.preheader237
  %2521 = phi ptr [ %2525, %.preheader237 ], [ %2429, %2517 ]
  %2522 = load i32, ptr %2521, align 4, !tbaa !5
  %2523 = sext i32 %2522 to i64
  %2524 = getelementptr inbounds [4 x i8], ptr %136, i64 %2523
  store i32 %2519, ptr %2524, align 4, !tbaa !5
  %2525 = getelementptr inbounds nuw i8, ptr %2521, i64 4
  %2526 = icmp ult ptr %2525, %2509
  br i1 %2526, label %.preheader237, label %.loopexit238, !llvm.loop !76

.loopexit238:                                     ; preds = %.preheader237, %2517
  %2527 = phi ptr [ %2429, %2517 ], [ %2525, %.preheader237 ]
  store ptr %2527, ptr %8, align 8
  br label %2528

2528:                                             ; preds = %.loopexit238, %2507
  %2529 = ptrtoint ptr %2429 to i64
  %2530 = sub i64 %2511, %2529
  %2531 = ashr exact i64 %2530, 2
  %2532 = add nsw i64 %2531, 2147483648
  %2533 = icmp ult i64 %2532, 4294967296
  br i1 %2533, label %2534, label %2733

2534:                                             ; preds = %2528
  %2535 = trunc nsw i64 %2531 to i32
  %2536 = icmp slt i32 %904, %2535
  br i1 %2536, label %2540, label %2537

2537:                                             ; preds = %2534
  %2538 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %904, i32 %2535), !nosanitize !10
  %2539 = extractvalue { i32, i1 } %2538, 1, !nosanitize !10
  br i1 %2539, label %2734, label %2554, !prof !11, !nosanitize !10

2540:                                             ; preds = %2534
  %2541 = icmp eq i32 %905, 0
  br i1 %2541, label %2587, label %2542

2542:                                             ; preds = %2540
  %2543 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 range(i32 1, -2147483648) %78, i32 %2535), !nosanitize !10
  %2544 = extractvalue { i32, i1 } %2543, 1, !nosanitize !10
  br i1 %2544, label %2734, label %2545, !prof !11, !nosanitize !10

2545:                                             ; preds = %2542
  %2546 = extractvalue { i32, i1 } %2543, 0, !nosanitize !10
  %2547 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %904, i32 %2546), !nosanitize !10
  %2548 = extractvalue { i32, i1 } %2547, 1, !nosanitize !10
  br i1 %2548, label %2735, label %2549, !prof !11, !nosanitize !10

2549:                                             ; preds = %2545
  %2550 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %905, i32 -1)
  %2551 = extractvalue { i32, i1 } %2550, 1, !nosanitize !10
  br i1 %2551, label %2734, label %2552, !prof !11, !nosanitize !10

2552:                                             ; preds = %2549
  %2553 = extractvalue { i32, i1 } %2550, 0, !nosanitize !10
  br label %2554

2554:                                             ; preds = %2552, %2537
  %2555 = phi { i32, i1 } [ %2547, %2552 ], [ %2538, %2537 ]
  %2556 = phi i32 [ %2553, %2552 ], [ %905, %2537 ]
  %2557 = extractvalue { i32, i1 } %2555, 0
  %2558 = ptrtoint ptr %907 to i64
  %2559 = sub i64 %2558, %2511
  %2560 = icmp sgt i64 %2530, %2559
  br i1 %2560, label %2572, label %2561

2561:                                             ; preds = %2554
  %2562 = icmp slt i32 %911, 64
  br i1 %2562, label %2563, label %2736

2563:                                             ; preds = %2561
  %2564 = sext i32 %911 to i64
  %2565 = getelementptr inbounds [32 x i8], ptr %6, i64 %2564
  store ptr %909, ptr %2565, align 16, !tbaa !51
  %2566 = getelementptr inbounds nuw i8, ptr %2565, i64 8
  store ptr %2509, ptr %2566, align 8, !tbaa !53
  %2567 = getelementptr inbounds nuw i8, ptr %2565, i64 16
  store ptr %907, ptr %2567, align 16, !tbaa !54
  %2568 = getelementptr inbounds nuw i8, ptr %2565, i64 24
  store i32 -3, ptr %2568, align 8, !tbaa !55
  %2569 = add nsw i32 %911, 1
  %2570 = getelementptr inbounds nuw i8, ptr %2565, i64 28
  store i32 %912, ptr %2570, align 4, !tbaa !56
  %2571 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  br label %2634

2572:                                             ; preds = %2554
  %2573 = icmp sgt i64 %2559, 4
  br i1 %2573, label %2576, label %2574

2574:                                             ; preds = %2572
  %2575 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  br label %2634

2576:                                             ; preds = %2572
  %2577 = icmp slt i32 %911, 64
  br i1 %2577, label %2578, label %2737

2578:                                             ; preds = %2576
  %2579 = getelementptr inbounds [4 x i8], ptr %909, i64 %844
  %2580 = sext i32 %911 to i64
  %2581 = getelementptr inbounds [32 x i8], ptr %6, i64 %2580
  store ptr %2579, ptr %2581, align 16, !tbaa !51
  %2582 = getelementptr inbounds nuw i8, ptr %2581, i64 8
  store ptr %2429, ptr %2582, align 8, !tbaa !53
  %2583 = getelementptr inbounds nuw i8, ptr %2581, i64 16
  store ptr %2509, ptr %2583, align 16, !tbaa !54
  %2584 = getelementptr inbounds nuw i8, ptr %2581, i64 24
  store i32 %2508, ptr %2584, align 8, !tbaa !55
  %2585 = add nsw i32 %911, 1
  %2586 = getelementptr inbounds nuw i8, ptr %2581, i64 28
  store i32 %912, ptr %2586, align 4, !tbaa !56
  br label %2634

2587:                                             ; preds = %2540
  %2588 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %903, i32 %2535), !nosanitize !10
  %2589 = extractvalue { i32, i1 } %2588, 1, !nosanitize !10
  br i1 %2589, label %2735, label %2590, !prof !11, !nosanitize !10

2590:                                             ; preds = %2587
  %2591 = extractvalue { i32, i1 } %2588, 0, !nosanitize !10
  %2592 = icmp sgt i32 %912, -1
  br i1 %2592, label %2593, label %2596

2593:                                             ; preds = %2590
  %2594 = zext nneg i32 %912 to i64
  %.split222 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2594
  %2595 = getelementptr inbounds nuw i8, ptr %.split222, i64 24
  store i32 -1, ptr %2595, align 8, !tbaa !55
  br label %2596

2596:                                             ; preds = %2593, %2590
  %2597 = ptrtoint ptr %907 to i64
  %2598 = sub i64 %2597, %2511
  %2599 = icmp sgt i64 %2598, 4
  br i1 %2599, label %2634, label %2600

2600:                                             ; preds = %2596
  %2601 = icmp sgt i32 %911, -1
  br i1 %2601, label %2602, label %2738

2602:                                             ; preds = %2600
  %2603 = icmp eq i32 %911, 0
  br i1 %2603, label %2617, label %2604

2604:                                             ; preds = %2602
  %2605 = add nsw i32 %911, -1
  %2606 = zext nneg i32 %2605 to i64
  %2607 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2606
  %2608 = load ptr, ptr %2607, align 16, !tbaa !51
  %2609 = getelementptr inbounds nuw i8, ptr %2607, i64 8
  %2610 = load ptr, ptr %2609, align 8, !tbaa !53
  %2611 = getelementptr inbounds nuw i8, ptr %2607, i64 16
  %2612 = load ptr, ptr %2611, align 16, !tbaa !54
  %2613 = getelementptr inbounds nuw i8, ptr %2607, i64 24
  %2614 = load i32, ptr %2613, align 8, !tbaa !55
  %2615 = getelementptr inbounds nuw i8, ptr %2607, i64 28
  %2616 = load i32, ptr %2615, align 4, !tbaa !56
  br label %2634

2617:                                             ; preds = %2602, %2433, %2287, %2160, %2064, %1603, %1516, %1485
  %2618 = phi i32 [ 0, %2602 ], [ %905, %2433 ], [ %905, %2287 ], [ %905, %2160 ], [ %905, %2064 ], [ 0, %1603 ], [ %905, %1516 ], [ %905, %1485 ]
  %2619 = phi i32 [ %2591, %2602 ], [ %903, %2433 ], [ %903, %2287 ], [ %903, %2160 ], [ %903, %2064 ], [ %1596, %1603 ], [ %1466, %1516 ], [ %1466, %1485 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %2620 = icmp eq i32 %2619, 0
  br i1 %2620, label %2627, label %2621

2621:                                             ; preds = %2617
  %2622 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %851, i32 %2619), !nosanitize !10
  %2623 = extractvalue { i32, i1 } %2622, 1, !nosanitize !10
  br i1 %2623, label %.loopexit270, label %2624, !prof !11, !nosanitize !10

2624:                                             ; preds = %2621
  %2625 = extractvalue { i32, i1 } %2622, 0, !nosanitize !10
  %2626 = icmp ult ptr %863, %136
  br i1 %2626, label %2659, label %.loopexit271, !llvm.loop !77

2627:                                             ; preds = %2617
  %2628 = sub i64 %865, %864
  %2629 = ashr exact i64 %2628, 2
  %2630 = add nsw i64 %2629, 2147483648
  %2631 = icmp ult i64 %2630, 4294967296
  br i1 %2631, label %2632, label %2776

2632:                                             ; preds = %2627
  %2633 = trunc nsw i64 %2629 to i32
  br label %2653

2634:                                             ; preds = %2604, %2596, %2578, %2574, %2563, %2435, %2405, %2398, %2389, %2382, %2331, %2324, %2315, %2308, %2289, %2278, %2271, %2262, %2255, %2204, %2197, %2188, %2181, %2162, %2066, %1605, %1589, %1533, %1518, %1512, %1502, %1487, %1481, %1452, %1434, %1416, %1403, %1383, %1379, %1365, %1347, %1329, %1316, %1296, %1292
  %2635 = phi i32 [ %2591, %2596 ], [ %2591, %2604 ], [ %903, %2578 ], [ %903, %2574 ], [ %903, %2563 ], [ %903, %2435 ], [ %903, %2405 ], [ %903, %2398 ], [ %903, %2389 ], [ %903, %2382 ], [ %903, %2331 ], [ %903, %2324 ], [ %903, %2315 ], [ %903, %2308 ], [ %903, %2289 ], [ %903, %2278 ], [ %903, %2271 ], [ %903, %2262 ], [ %903, %2255 ], [ %903, %2204 ], [ %903, %2197 ], [ %903, %2188 ], [ %903, %2181 ], [ %903, %2162 ], [ %903, %2066 ], [ %1596, %1605 ], [ %903, %1589 ], [ %1466, %1533 ], [ %1466, %1512 ], [ %1466, %1518 ], [ %1466, %1502 ], [ %1466, %1481 ], [ %1466, %1487 ], [ %903, %1452 ], [ %903, %1434 ], [ %903, %1416 ], [ %903, %1403 ], [ %903, %1383 ], [ %903, %1379 ], [ %903, %1365 ], [ %903, %1347 ], [ %903, %1329 ], [ %903, %1316 ], [ %903, %1296 ], [ %903, %1292 ]
  %2636 = phi i32 [ %904, %2596 ], [ %904, %2604 ], [ %2557, %2578 ], [ %2557, %2574 ], [ %2557, %2563 ], [ %904, %2435 ], [ %904, %2405 ], [ %904, %2398 ], [ %904, %2389 ], [ %904, %2382 ], [ %904, %2331 ], [ %904, %2324 ], [ %904, %2315 ], [ %904, %2308 ], [ %904, %2289 ], [ %904, %2278 ], [ %904, %2271 ], [ %904, %2262 ], [ %904, %2255 ], [ %904, %2204 ], [ %904, %2197 ], [ %904, %2188 ], [ %904, %2181 ], [ %904, %2162 ], [ %904, %2066 ], [ %904, %1605 ], [ %1558, %1589 ], [ %904, %1533 ], [ %904, %1512 ], [ %904, %1518 ], [ %904, %1502 ], [ %904, %1481 ], [ %904, %1487 ], [ %1279, %1452 ], [ %1279, %1434 ], [ %1279, %1416 ], [ %1279, %1403 ], [ %1279, %1383 ], [ %1279, %1379 ], [ %1279, %1365 ], [ %1279, %1347 ], [ %1279, %1329 ], [ %1279, %1316 ], [ %1279, %1296 ], [ %1279, %1292 ]
  %2637 = phi i32 [ 0, %2596 ], [ 0, %2604 ], [ %2556, %2578 ], [ %2556, %2574 ], [ %2556, %2563 ], [ %905, %2435 ], [ %905, %2405 ], [ %905, %2398 ], [ %905, %2389 ], [ %905, %2382 ], [ %905, %2331 ], [ %905, %2324 ], [ %905, %2315 ], [ %905, %2308 ], [ %905, %2289 ], [ %905, %2278 ], [ %905, %2271 ], [ %905, %2262 ], [ %905, %2255 ], [ %905, %2204 ], [ %905, %2197 ], [ %905, %2188 ], [ %905, %2181 ], [ %905, %2162 ], [ %905, %2066 ], [ 0, %1605 ], [ %1559, %1589 ], [ %905, %1533 ], [ %905, %1512 ], [ %905, %1518 ], [ %905, %1502 ], [ %905, %1481 ], [ %905, %1487 ], [ %1280, %1452 ], [ %1280, %1434 ], [ %1280, %1416 ], [ %1280, %1403 ], [ %1280, %1383 ], [ %1280, %1379 ], [ %1280, %1365 ], [ %1280, %1347 ], [ %1280, %1329 ], [ %1280, %1316 ], [ %1280, %1296 ], [ %1280, %1292 ]
  %2638 = phi ptr [ %907, %2596 ], [ %2612, %2604 ], [ %907, %2578 ], [ %2509, %2574 ], [ %2509, %2563 ], [ %2443, %2435 ], [ %907, %2405 ], [ %907, %2398 ], [ %907, %2389 ], [ %907, %2382 ], [ %2089, %2331 ], [ %2089, %2324 ], [ %2089, %2315 ], [ %2089, %2308 ], [ %2297, %2289 ], [ %2089, %2278 ], [ %2089, %2271 ], [ %2089, %2262 ], [ %2089, %2255 ], [ %907, %2204 ], [ %907, %2197 ], [ %907, %2188 ], [ %907, %2181 ], [ %2170, %2162 ], [ %2074, %2066 ], [ %1613, %1605 ], [ %907, %1589 ], [ %907, %1533 ], [ %1180, %1512 ], [ %1526, %1518 ], [ %1180, %1502 ], [ %907, %1481 ], [ %1495, %1487 ], [ %1179, %1452 ], [ %907, %1434 ], [ %1179, %1416 ], [ %907, %1403 ], [ %1180, %1383 ], [ %1179, %1379 ], [ %1179, %1365 ], [ %1180, %1347 ], [ %1179, %1329 ], [ %1180, %1316 ], [ %907, %1296 ], [ %1179, %1292 ]
  %2639 = phi ptr [ %2509, %2596 ], [ %2610, %2604 ], [ %2509, %2578 ], [ %2429, %2574 ], [ %2429, %2563 ], [ %2441, %2435 ], [ %2107, %2405 ], [ %2107, %2398 ], [ %2107, %2389 ], [ %2107, %2382 ], [ %908, %2331 ], [ %908, %2324 ], [ %908, %2315 ], [ %908, %2308 ], [ %2295, %2289 ], [ %908, %2278 ], [ %908, %2271 ], [ %908, %2262 ], [ %908, %2255 ], [ %2107, %2204 ], [ %2107, %2197 ], [ %2107, %2188 ], [ %2107, %2181 ], [ %2168, %2162 ], [ %2072, %2066 ], [ %1611, %1605 ], [ %908, %1589 ], [ %1179, %1533 ], [ %908, %1512 ], [ %1524, %1518 ], [ %908, %1502 ], [ %1179, %1481 ], [ %1493, %1487 ], [ %1180, %1452 ], [ %1179, %1434 ], [ %1180, %1416 ], [ %1179, %1403 ], [ %908, %1383 ], [ %1180, %1379 ], [ %1180, %1365 ], [ %908, %1347 ], [ %1180, %1329 ], [ %908, %1316 ], [ %1179, %1296 ], [ %1180, %1292 ]
  %2640 = phi ptr [ %909, %2596 ], [ %2608, %2604 ], [ %909, %2578 ], [ %2575, %2574 ], [ %2571, %2563 ], [ %2439, %2435 ], [ %909, %2405 ], [ %909, %2398 ], [ %909, %2389 ], [ %909, %2382 ], [ %909, %2331 ], [ %909, %2324 ], [ %909, %2315 ], [ %909, %2308 ], [ %2293, %2289 ], [ %909, %2278 ], [ %909, %2271 ], [ %909, %2262 ], [ %909, %2255 ], [ %909, %2204 ], [ %909, %2197 ], [ %909, %2188 ], [ %909, %2181 ], [ %2166, %2162 ], [ %2070, %2066 ], [ %1609, %1605 ], [ %1591, %1589 ], [ %909, %1533 ], [ %909, %1512 ], [ %1522, %1518 ], [ %909, %1502 ], [ %909, %1481 ], [ %1491, %1487 ], [ %1459, %1452 ], [ %909, %1434 ], [ %1424, %1416 ], [ %909, %1403 ], [ %909, %1383 ], [ %1380, %1379 ], [ %1372, %1365 ], [ %909, %1347 ], [ %1337, %1329 ], [ %909, %1316 ], [ %909, %1296 ], [ %1293, %1292 ]
  %2641 = phi i32 [ -3, %2596 ], [ %2614, %2604 ], [ -3, %2578 ], [ %2508, %2574 ], [ %2508, %2563 ], [ %2445, %2435 ], [ %2407, %2405 ], [ %2403, %2398 ], [ %2394, %2389 ], [ %2387, %2382 ], [ %2333, %2331 ], [ %2329, %2324 ], [ %2320, %2315 ], [ %2313, %2308 ], [ %2299, %2289 ], [ %2280, %2278 ], [ %2276, %2271 ], [ %2267, %2262 ], [ %2260, %2255 ], [ %2206, %2204 ], [ %2202, %2197 ], [ %2193, %2188 ], [ %2186, %2181 ], [ %2172, %2162 ], [ %2076, %2066 ], [ %1615, %1605 ], [ %1590, %1589 ], [ %937, %1533 ], [ %937, %1512 ], [ %1528, %1518 ], [ %937, %1502 ], [ %937, %1481 ], [ %1497, %1487 ], [ %1227, %1452 ], [ %937, %1434 ], [ %1227, %1416 ], [ %937, %1403 ], [ %937, %1383 ], [ %1227, %1379 ], [ %1227, %1365 ], [ %937, %1347 ], [ %1227, %1329 ], [ %937, %1316 ], [ %937, %1296 ], [ %1227, %1292 ]
  %2642 = phi i32 [ %911, %2596 ], [ %2605, %2604 ], [ %2585, %2578 ], [ %911, %2574 ], [ %2569, %2563 ], [ %2436, %2435 ], [ %2377, %2405 ], [ %2377, %2398 ], [ %2377, %2389 ], [ %2377, %2382 ], [ %2146, %2331 ], [ %2146, %2324 ], [ %2146, %2315 ], [ %2146, %2308 ], [ %2290, %2289 ], [ %2250, %2278 ], [ %2250, %2271 ], [ %2250, %2262 ], [ %2250, %2255 ], [ %2146, %2204 ], [ %2146, %2197 ], [ %2146, %2188 ], [ %2146, %2181 ], [ %2163, %2162 ], [ %2067, %2066 ], [ %1606, %1605 ], [ %911, %1589 ], [ %1539, %1533 ], [ %911, %1512 ], [ %1519, %1518 ], [ %1508, %1502 ], [ %911, %1481 ], [ %1488, %1487 ], [ %1457, %1452 ], [ %1440, %1434 ], [ %1422, %1416 ], [ %1408, %1403 ], [ %1390, %1383 ], [ %911, %1379 ], [ %1370, %1365 ], [ %1353, %1347 ], [ %1335, %1329 ], [ %1321, %1316 ], [ %1303, %1296 ], [ %911, %1292 ]
  %2643 = phi i32 [ %912, %2596 ], [ %2616, %2604 ], [ %912, %2578 ], [ %912, %2574 ], [ %912, %2563 ], [ %2447, %2435 ], [ %2147, %2405 ], [ %2147, %2398 ], [ %2147, %2389 ], [ %2147, %2382 ], [ %2147, %2331 ], [ %2147, %2324 ], [ %2147, %2315 ], [ %2147, %2308 ], [ %2301, %2289 ], [ %2147, %2278 ], [ %2147, %2271 ], [ %2147, %2262 ], [ %2147, %2255 ], [ %2147, %2204 ], [ %2147, %2197 ], [ %2147, %2188 ], [ %2147, %2181 ], [ %2174, %2162 ], [ %2078, %2066 ], [ %1617, %1605 ], [ %912, %1589 ], [ %912, %1533 ], [ %912, %1512 ], [ %1530, %1518 ], [ %912, %1502 ], [ %912, %1481 ], [ %1499, %1487 ], [ %912, %1452 ], [ %912, %1434 ], [ %912, %1416 ], [ %912, %1403 ], [ %912, %1383 ], [ %912, %1379 ], [ %912, %1365 ], [ %912, %1347 ], [ %912, %1329 ], [ %912, %1316 ], [ %912, %1296 ], [ %912, %1292 ]
  %2644 = load ptr, ptr %7, align 8
  br label %.preheader2137

2645:                                             ; preds = %.preheader269
  %2646 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %850, i32 %846), !nosanitize !10
  %2647 = extractvalue { i32, i1 } %2646, 1, !nosanitize !10
  br i1 %2647, label %.loopexit270, label %2648, !prof !11, !nosanitize !10

2648:                                             ; preds = %2645
  %2649 = extractvalue { i32, i1 } %2646, 0, !nosanitize !10
  %2650 = sext i32 %846 to i64
  %2651 = sub nsw i64 0, %2650
  %2652 = getelementptr inbounds nuw [4 x i8], ptr %849, i64 %2651
  br label %2653

2653:                                             ; preds = %2648, %2632, %868
  %2654 = phi i32 [ %847, %2648 ], [ %904, %2632 ], [ %847, %868 ]
  %2655 = phi i32 [ %848, %2648 ], [ %2618, %2632 ], [ %848, %868 ]
  %2656 = phi ptr [ %2652, %2648 ], [ %863, %2632 ], [ %863, %868 ]
  %2657 = phi i32 [ %2649, %2648 ], [ %2633, %2632 ], [ %870, %868 ]
  %2658 = icmp ult ptr %2656, %136
  br i1 %2658, label %2659, label %.loopexit272, !llvm.loop !77

2659:                                             ; preds = %2653, %2624
  %2660 = phi i32 [ %2625, %2624 ], [ %851, %2653 ]
  %2661 = phi i32 [ 0, %2624 ], [ %2657, %2653 ]
  %2662 = phi ptr [ %863, %2624 ], [ %2656, %2653 ]
  %2663 = phi i32 [ %2618, %2624 ], [ %2655, %2653 ]
  %2664 = phi i32 [ %904, %2624 ], [ %2654, %2653 ]
  %2665 = load i32, ptr %2662, align 4, !tbaa !5
  br label %.preheader269

2666:                                             ; preds = %2780
  %2667 = load i32, ptr %2781, align 4, !tbaa !5
  br label %.preheader273

.preheader273:                                    ; preds = %833, %2666
  %2668 = phi i32 [ %2667, %2666 ], [ %834, %833 ]
  %2669 = phi ptr [ %2781, %2666 ], [ %1, %833 ]
  %2670 = phi i32 [ %2782, %2666 ], [ 0, %833 ]
  %2671 = icmp slt i32 %2668, 0
  br i1 %2671, label %2672, label %2680

2672:                                             ; preds = %.preheader273
  %2673 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2670, i32 %2668), !nosanitize !10
  %2674 = extractvalue { i32, i1 } %2673, 1, !nosanitize !10
  br i1 %2674, label %.loopexit270, label %2675, !prof !11, !nosanitize !10

.loopexit270:                                     ; preds = %2672, %2645, %2621
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2675:                                             ; preds = %2672
  %2676 = extractvalue { i32, i1 } %2673, 0, !nosanitize !10
  %2677 = sext i32 %2668 to i64
  %2678 = sub nsw i64 0, %2677
  %2679 = getelementptr inbounds nuw [4 x i8], ptr %2669, i64 %2678
  br label %2780

2680:                                             ; preds = %.preheader273
  %2681 = icmp eq i32 %2670, 0
  br i1 %2681, label %2685, label %2682

2682:                                             ; preds = %2680
  %2683 = sext i32 %2670 to i64
  %2684 = getelementptr inbounds [4 x i8], ptr %2669, i64 %2683
  store i32 %2670, ptr %2684, align 4, !tbaa !5
  br label %2685

2685:                                             ; preds = %2682, %2680
  %2686 = zext nneg i32 %2668 to i64
  %2687 = getelementptr inbounds nuw [4 x i8], ptr %136, i64 %2686
  %2688 = load i32, ptr %2687, align 4, !tbaa !5
  %2689 = sext i32 %2688 to i64
  %2690 = getelementptr [4 x i8], ptr %830, i64 %2689
  %2691 = ptrtoint ptr %2690 to i64
  %2692 = ptrtoint ptr %2669 to i64
  %2693 = sub i64 %2691, %2692
  %2694 = icmp sgt i64 %2693, 4
  br i1 %2694, label %2695, label %2777

2695:                                             ; preds = %2685
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1183, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2696:                                             ; preds = %871
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1187, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2697:                                             ; preds = %893, %884, %877
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2698:                                             ; preds = %932
  br i1 %934, label %2740, label %2744

2699:                                             ; preds = %1839
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2700:                                             ; preds = %2079
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.src, i32 noundef 1192, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2701:                                             ; preds = %2091
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1196, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2702:                                             ; preds = %2110
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1199, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2703:                                             ; preds = %2128
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1204, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2704:                                             ; preds = %2130
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1205, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2705:                                             ; preds = %2207
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1210, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2706:                                             ; preds = %2209
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.src, i32 noundef 1210, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2707:                                             ; preds = %2237, %2228, %2220
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2708:                                             ; preds = %2271, %2262, %2255
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2709:                                             ; preds = %2175
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.src, i32 noundef 1213, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2710:                                             ; preds = %2197, %2188, %2181
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2711:                                             ; preds = %2158
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1215, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2712:                                             ; preds = %2334
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1219, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2713:                                             ; preds = %2336
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1219, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2714:                                             ; preds = %2364, %2355, %2347
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2715:                                             ; preds = %2398, %2389, %2382
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2716:                                             ; preds = %2302
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1222, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2717:                                             ; preds = %2324, %2315, %2308
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2718:                                             ; preds = %2285
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1224, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2719:                                             ; preds = %1990
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1231, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

.loopexit245:                                     ; preds = %.preheader247, %.preheader244
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2720:                                             ; preds = %1996
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1120, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #10
  unreachable

2721:                                             ; preds = %2021
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1124, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #10
  unreachable

2722:                                             ; preds = %2051
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1130, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #10
  unreachable

2723:                                             ; preds = %1858
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1234, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

.loopexit251:                                     ; preds = %.preheader256, %.preheader250
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2724:                                             ; preds = %1864
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1144, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

.loopexit252:                                     ; preds = %1891, %1964
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2725:                                             ; preds = %1901
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1150, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

2726:                                             ; preds = %1929
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.src, i32 noundef 1158, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

2727:                                             ; preds = %1974
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1167, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

2728:                                             ; preds = %.loopexit246
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1236, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2729:                                             ; preds = %.preheader239
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.src, i32 noundef 1241, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2730:                                             ; preds = %2464
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.src, i32 noundef 1246, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2731:                                             ; preds = %2495, %2485, %2477
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2732:                                             ; preds = %2512
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1247, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2733:                                             ; preds = %2528
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1250, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2734:                                             ; preds = %2549, %2542, %2537
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2735:                                             ; preds = %2587, %2545
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2736:                                             ; preds = %2561
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1252, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2737:                                             ; preds = %2576
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1256, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2738:                                             ; preds = %2600
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1267, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2739:                                             ; preds = %2431
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1271, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

.loopexit234:                                     ; preds = %.preheader260, %1821
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2740:                                             ; preds = %2698
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1284, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2741:                                             ; preds = %1783
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

2742:                                             ; preds = %1773
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

2743:                                             ; preds = %1763
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

2744:                                             ; preds = %2698
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1019, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_pivot) #10
  unreachable

2745:                                             ; preds = %1192
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1300, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2746:                                             ; preds = %1216, %1207, %1199
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2747:                                             ; preds = %1226
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1303, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2748:                                             ; preds = %1243
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1304, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2749:                                             ; preds = %1259
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1307, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2750:                                             ; preds = %1272
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2751:                                             ; preds = %1460, %1268
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2752:                                             ; preds = %1305
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1311, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2753:                                             ; preds = %1307
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1312, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2754:                                             ; preds = %1294
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1315, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2755:                                             ; preds = %1338
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1322, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2756:                                             ; preds = %1339
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1323, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2757:                                             ; preds = %1328
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1326, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2758:                                             ; preds = %1355
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1330, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2759:                                             ; preds = %1357
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1331, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2760:                                             ; preds = %1392
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1337, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2761:                                             ; preds = %1394
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1338, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2762:                                             ; preds = %1381
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1341, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2763:                                             ; preds = %1425
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1348, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2764:                                             ; preds = %1426
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1349, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2765:                                             ; preds = %1415
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1352, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2766:                                             ; preds = %1442
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1356, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2767:                                             ; preds = %1444
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1357, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2768:                                             ; preds = %1500
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1365, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2769:                                             ; preds = %1483
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1370, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2770:                                             ; preds = %1531
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1374, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2771:                                             ; preds = %1514
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1379, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2772:                                             ; preds = %1551
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2773:                                             ; preds = %1592, %1547
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2774:                                             ; preds = %1579, %1570, %1563
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2775:                                             ; preds = %1601
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1388, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2776:                                             ; preds = %2627
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.src, i32 noundef 1423, ptr noundef nonnull @__PRETTY_FUNCTION__.trsort) #10
  unreachable

2777:                                             ; preds = %2685
  %2778 = icmp eq i64 %2693, 4
  %2779 = sext i1 %2778 to i32
  br label %2780

2780:                                             ; preds = %2777, %2675
  %2781 = phi ptr [ %2679, %2675 ], [ %2690, %2777 ]
  %2782 = phi i32 [ %2676, %2675 ], [ %2779, %2777 ]
  %2783 = icmp ult ptr %2781, %136
  br i1 %2783, label %2666, label %.loopexit272, !llvm.loop !77

.loopexit272:                                     ; preds = %2780, %2653
  %2784 = phi i32 [ %2654, %2653 ], [ %837, %2780 ]
  %2785 = phi i32 [ %2655, %2653 ], [ %836, %2780 ]
  %2786 = phi ptr [ %2656, %2653 ], [ %2781, %2780 ]
  %2787 = phi i32 [ %2657, %2653 ], [ %2782, %2780 ]
  %2788 = phi i32 [ %851, %2653 ], [ 0, %2780 ]
  %2789 = icmp eq i32 %2787, 0
  br i1 %2789, label %.loopexit271, label %2790

2790:                                             ; preds = %.loopexit272
  %2791 = sext i32 %2787 to i64
  %2792 = getelementptr inbounds [4 x i8], ptr %2786, i64 %2791
  store i32 %2787, ptr %2792, align 4, !tbaa !5
  br label %.loopexit271

.loopexit271:                                     ; preds = %2624, %2790, %.loopexit272
  %2793 = phi i32 [ %2784, %2790 ], [ %2784, %.loopexit272 ], [ %904, %2624 ]
  %2794 = phi i32 [ %2785, %2790 ], [ %2785, %.loopexit272 ], [ %2618, %2624 ]
  %2795 = phi i32 [ %2788, %2790 ], [ %2788, %.loopexit272 ], [ %2625, %2624 ]
  %2796 = icmp eq i32 %2795, 0
  br i1 %2796, label %.loopexit276, label %2797

2797:                                             ; preds = %.loopexit271
  %2798 = getelementptr i8, ptr %835, i64 %839
  %2799 = load i32, ptr %1, align 4, !tbaa !5
  %2800 = icmp sgt i32 %2799, %823
  br i1 %2800, label %833, label %.loopexit276, !llvm.loop !78

.loopexit276:                                     ; preds = %2797, %.loopexit271, %822
  %2801 = load i8, ptr %11, align 1, !tbaa !9
  %2802 = zext i8 %2801 to i32
  br label %2803

2803:                                             ; preds = %2839, %.loopexit276
  %2804 = phi i32 [ %2802, %.loopexit276 ], [ %2836, %2839 ]
  %2805 = phi i32 [ %9, %.loopexit276 ], [ %2835, %2839 ]
  %2806 = phi i32 [ %78, %.loopexit276 ], [ %2845, %2839 ]
  %2807 = icmp eq i32 %2805, 0
  br i1 %2807, label %.loopexit228, label %.lr.ph2102

.lr.ph2102:                                       ; preds = %2803
  %2808 = zext nneg i32 %2805 to i64
  br label %2811

2809:                                             ; preds = %2811
  %2810 = icmp eq i64 %2814, 0
  br i1 %2810, label %.loopexit228, label %2811, !llvm.loop !79

2811:                                             ; preds = %2809, %.lr.ph2102
  %2812 = phi i32 [ %2804, %.lr.ph2102 ], [ %2817, %2809 ]
  %2813 = phi i64 [ %2808, %.lr.ph2102 ], [ %2814, %2809 ]
  %2814 = add nsw i64 %2813, -1
  %2815 = getelementptr inbounds nuw i8, ptr %0, i64 %2814
  %2816 = load i8, ptr %2815, align 1, !tbaa !9
  %2817 = zext i8 %2816 to i32
  %2818 = icmp sgt i32 %2812, %2817
  br i1 %2818, label %2819, label %2809, !llvm.loop !79

2819:                                             ; preds = %2811
  %indvars.le = trunc nuw nsw i64 %2814 to i32
  %2820 = trunc nuw nsw i64 %2813 to i32
  %2821 = icmp eq i64 %2814, 0
  br i1 %2821, label %.loopexit227, label %.lr.ph2105

2822:                                             ; preds = %.lr.ph2105
  %2823 = icmp eq i64 %2826, 0
  br i1 %2823, label %.loopexit227, label %.lr.ph2105, !llvm.loop !80

.lr.ph2105:                                       ; preds = %2819, %2822
  %2824 = phi i32 [ %2829, %2822 ], [ %2817, %2819 ]
  %2825 = phi i64 [ %2826, %2822 ], [ %2814, %2819 ]
  %2826 = add nsw i64 %2825, -1
  %2827 = getelementptr inbounds nuw i8, ptr %0, i64 %2826
  %2828 = load i8, ptr %2827, align 1, !tbaa !9
  %2829 = zext i8 %2828 to i32
  %2830 = icmp samesign ult i32 %2824, %2829
  br i1 %2830, label %2831, label %2822, !llvm.loop !80

2831:                                             ; preds = %.lr.ph2105
  %2832 = trunc nuw nsw i64 %2825 to i32
  %2833 = trunc nuw nsw i64 %2826 to i32
  br label %.loopexit227

.loopexit227:                                     ; preds = %2822, %2831, %2819
  %2834 = phi i32 [ %2832, %2831 ], [ 0, %2819 ], [ 0, %2822 ]
  %2835 = phi i32 [ %2833, %2831 ], [ -1, %2819 ], [ -1, %2822 ]
  %2836 = phi i32 [ %2829, %2831 ], [ %2817, %2819 ], [ %2829, %2822 ]
  %2837 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2806, i32 -1)
  %2838 = extractvalue { i32, i1 } %2837, 1, !nosanitize !10
  br i1 %2838, label %.loopexit, label %2839, !prof !11, !nosanitize !10

2839:                                             ; preds = %.loopexit227
  %2840 = sub nsw i32 %2820, %2834
  %2841 = icmp sgt i32 %2840, 1
  %2842 = or i1 %2821, %2841
  %2843 = sub nsw i32 0, %2820
  %2844 = select i1 %2842, i32 %indvars.le, i32 %2843
  %2845 = extractvalue { i32, i1 } %2837, 0, !nosanitize !10
  %2846 = sext i32 %2845 to i64
  %2847 = getelementptr inbounds [4 x i8], ptr %136, i64 %2846
  %2848 = load i32, ptr %2847, align 4, !tbaa !5
  %2849 = sext i32 %2848 to i64
  %2850 = getelementptr inbounds [4 x i8], ptr %1, i64 %2849
  store i32 %2844, ptr %2850, align 4, !tbaa !5
  %2851 = icmp sgt i32 %2835, -1
  br i1 %2851, label %2803, label %.loopexit228, !llvm.loop !81

.loopexit228:                                     ; preds = %2839, %2803, %2809
  %2852 = getelementptr inbounds nuw i8, ptr %3, i64 262140
  store i32 %4, ptr %2852, align 4, !tbaa !5
  br label %2853

2853:                                             ; preds = %2923, %.loopexit228
  %2854 = phi i64 [ 254, %.loopexit228 ], [ %2929, %2923 ]
  %2855 = phi i32 [ %169, %.loopexit228 ], [ %2908, %2923 ]
  %2856 = trunc i64 %2854 to i32
  %2857 = add nuw nsw i64 %2854, 1
  %2858 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %2857
  %2859 = load i32, ptr %2858, align 4, !tbaa !5
  %2860 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2859, i32 -1)
  %2861 = extractvalue { i32, i1 } %2860, 1, !nosanitize !10
  br i1 %2861, label %.loopexit, label %2862, !prof !11, !nosanitize !10

2862:                                             ; preds = %2853
  %2863 = extractvalue { i32, i1 } %2860, 0, !nosanitize !10
  %2864 = getelementptr [4 x i8], ptr %3, i64 %2854
  %2865 = shl i32 %2856, 8
  br label %2866

2866:                                             ; preds = %2907, %2862
  %2867 = phi i64 [ 255, %2862 ], [ %2910, %2907 ]
  %2868 = phi i32 [ %2863, %2862 ], [ %2909, %2907 ]
  %2869 = phi i32 [ %2855, %2862 ], [ %2908, %2907 ]
  %2870 = shl i64 %2867, 10
  %2871 = getelementptr i8, ptr %2864, i64 %2870
  %2872 = load i32, ptr %2871, align 4, !tbaa !5
  %2873 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2868, i32 %2872), !nosanitize !10
  %2874 = extractvalue { i32, i1 } %2873, 1, !nosanitize !10
  br i1 %2874, label %.loopexit, label %2875, !prof !11, !nosanitize !10

2875:                                             ; preds = %2866
  store i32 %2868, ptr %2871, align 4, !tbaa !5
  %2876 = trunc nuw nsw i64 %2867 to i32
  %2877 = or i32 %2865, %2876
  %2878 = sext i32 %2877 to i64
  %2879 = getelementptr inbounds [4 x i8], ptr %3, i64 %2878
  %2880 = load i32, ptr %2879, align 4, !tbaa !5
  %2881 = extractvalue { i32, i1 } %2873, 0
  %2882 = icmp sgt i32 %2880, %2869
  br i1 %2882, label %2907, label %2883

2883:                                             ; preds = %2875
  %2884 = sext i32 %2881 to i64
  %2885 = sext i32 %2869 to i64
  %2886 = getelementptr inbounds [4 x i8], ptr %1, i64 %2885
  %2887 = load i32, ptr %2886, align 4, !tbaa !5
  %2888 = getelementptr inbounds [4 x i8], ptr %1, i64 %2884
  store i32 %2887, ptr %2888, align 4, !tbaa !5
  %2889 = icmp eq i32 %2881, -2147483648
  %2890 = icmp eq i32 %2869, -2147483648
  %2891 = or i1 %2890, %2889
  br i1 %2891, label %.loopexit, label %.lr.ph2108, !prof !82, !nosanitize !10

2892:                                             ; preds = %.lr.ph2108
  %2893 = getelementptr inbounds [4 x i8], ptr %1, i64 %2901
  %2894 = load i32, ptr %2893, align 4, !tbaa !5
  %2895 = getelementptr inbounds [4 x i8], ptr %1, i64 %2903
  store i32 %2894, ptr %2895, align 4, !tbaa !5
  %2896 = icmp eq i64 %2903, -2147483648
  %2897 = icmp eq i64 %2901, -2147483648
  %2898 = or i1 %2896, %2897
  br i1 %2898, label %.loopexit, label %.lr.ph2108, !prof !83, !llvm.loop !84, !nosanitize !10

.lr.ph2108:                                       ; preds = %2883, %2892
  %2899 = phi i64 [ %2903, %2892 ], [ %2884, %2883 ]
  %2900 = phi i64 [ %2901, %2892 ], [ %2885, %2883 ]
  %2901 = add nsw i64 %2900, -1
  %2902 = trunc i64 %2901 to i32
  %2903 = add nsw i64 %2899, -1
  %2904 = icmp sgt i32 %2880, %2902
  br i1 %2904, label %2905, label %2892, !llvm.loop !84

2905:                                             ; preds = %.lr.ph2108
  %2906 = trunc nsw i64 %2903 to i32
  br label %2907

2907:                                             ; preds = %2905, %2875
  %2908 = phi i32 [ %2869, %2875 ], [ %2902, %2905 ]
  %2909 = phi i32 [ %2881, %2875 ], [ %2906, %2905 ]
  %2910 = add nsw i64 %2867, -1
  %2911 = icmp samesign ult i64 %2854, %2910
  br i1 %2911, label %2866, label %2912, !llvm.loop !85

2912:                                             ; preds = %2907
  %2913 = or i32 %2865, %2856
  %2914 = sext i32 %2913 to i64
  %2915 = getelementptr inbounds [4 x i8], ptr %3, i64 %2914
  %2916 = load i32, ptr %2915, align 4, !tbaa !5
  %2917 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2909, i32 %2916), !nosanitize !10
  %2918 = extractvalue { i32, i1 } %2917, 1, !nosanitize !10
  br i1 %2918, label %.loopexit, label %2919, !prof !11, !nosanitize !10

2919:                                             ; preds = %2912
  %2920 = extractvalue { i32, i1 } %2917, 0, !nosanitize !10
  %2921 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2920, i32 1), !nosanitize !10
  %2922 = extractvalue { i32, i1 } %2921, 1, !nosanitize !10
  br i1 %2922, label %.loopexit225, label %2923, !prof !11, !nosanitize !10

2923:                                             ; preds = %2919
  %2924 = extractvalue { i32, i1 } %2921, 0, !nosanitize !10
  %2925 = trunc nuw nsw i64 %2857 to i32
  %2926 = or i32 %2865, %2925
  %2927 = sext i32 %2926 to i64
  %2928 = getelementptr inbounds [4 x i8], ptr %3, i64 %2927
  store i32 %2924, ptr %2928, align 4, !tbaa !5
  store i32 %2909, ptr %2915, align 4, !tbaa !5
  %2929 = add nsw i64 %2854, -1
  %2930 = icmp eq i64 %2854, 0
  br i1 %2930, label %.loopexit226, label %2853, !llvm.loop !86

.loopexit226:                                     ; preds = %2923, %128
  ret i32 %78
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @divbwt(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly captures(address_is_null) %4, ptr noundef writeonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %0, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %8, %9
  %11 = icmp slt i32 %3, 0
  %12 = or i1 %10, %11
  br i1 %12, label %704, label %13

13:                                               ; preds = %7
  %14 = icmp samesign ult i32 %3, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = icmp eq i32 %3, 1
  br i1 %16, label %17, label %704

17:                                               ; preds = %15
  %18 = load i8, ptr %0, align 1, !tbaa !9
  store i8 %18, ptr %1, align 1, !tbaa !9
  br label %704

19:                                               ; preds = %13
  %20 = icmp eq ptr %2, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1), !nosanitize !10
  %23 = extractvalue { i32, i1 } %22, 1, !nosanitize !10
  br i1 %23, label %24, label %25, !prof !11, !nosanitize !10

24:                                               ; preds = %.loopexit, %.loopexit56, %21
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

25:                                               ; preds = %21
  %26 = extractvalue { i32, i1 } %22, 0, !nosanitize !10
  %27 = zext nneg i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 2
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #9
  br label %30

30:                                               ; preds = %25, %19
  %31 = phi ptr [ %29, %25 ], [ %2, %19 ]
  %32 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #9
  %33 = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #9
  %34 = icmp ne ptr %31, null
  %35 = icmp ne ptr %32, null
  %36 = and i1 %34, %35
  %37 = icmp ne ptr %33, null
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %701

39:                                               ; preds = %30
  %40 = tail call fastcc i32 @sort_typeBstar(ptr noundef %0, ptr noundef %31, ptr noundef %32, ptr noundef %33, i32 noundef %3)
  %41 = icmp eq ptr %4, null
  %42 = icmp eq ptr %5, null
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %252

44:                                               ; preds = %39
  %45 = icmp sgt i32 %40, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = ptrtoint ptr %31 to i64
  br label %.loopexit61

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %31, i64 -4
  %50 = ptrtoint ptr %31 to i64
  br label %51

51:                                               ; preds = %.loopexit60, %48
  %52 = phi i64 [ 254, %48 ], [ %158, %.loopexit60 ]
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %53, 8
  %55 = add nuw nsw i64 %52, 1
  %56 = trunc nuw nsw i64 %55 to i32
  %57 = or i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i8], ptr %33, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i8], ptr %31, i64 %61
  %63 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %55
  %64 = load i32, ptr %63, align 4, !tbaa !5
  %65 = sext i32 %64 to i64
  %66 = getelementptr [4 x i8], ptr %49, i64 %65
  %67 = icmp ugt ptr %62, %66
  br i1 %67, label %.loopexit60, label %.preheader59

68:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader59:                                     ; preds = %51, %153
  %69 = phi ptr [ %156, %153 ], [ %66, %51 ]
  %70 = phi i32 [ %155, %153 ], [ -1, %51 ]
  %71 = phi ptr [ %154, %153 ], [ null, %51 ]
  %72 = load i32, ptr %69, align 4, !tbaa !5
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %144

74:                                               ; preds = %.preheader59
  %75 = zext nneg i32 %72 to i64
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !9
  %78 = zext i8 %77 to i64
  %79 = icmp eq i64 %52, %78
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1694, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

81:                                               ; preds = %74
  %82 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %72, i32 1), !nosanitize !10
  %83 = extractvalue { i32, i1 } %82, 0, !nosanitize !10
  %84 = extractvalue { i32, i1 } %82, 1, !nosanitize !10
  br i1 %84, label %68, label %85, !prof !11, !nosanitize !10

85:                                               ; preds = %81
  %86 = icmp slt i32 %83, %3
  br i1 %86, label %87, label %92

87:                                               ; preds = %85
  %88 = sext i32 %83 to i64
  %89 = getelementptr inbounds i8, ptr %0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !9
  %91 = icmp ugt i8 %77, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %85
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.src, i32 noundef 1695, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

93:                                               ; preds = %87
  %94 = add nsw i32 %72, -1
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !9
  %98 = zext i8 %97 to i32
  %99 = icmp ugt i8 %97, %77
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.src, i32 noundef 1696, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

101:                                              ; preds = %93
  %102 = xor i32 %98, -1
  store i32 %102, ptr %69, align 4, !tbaa !5
  %103 = icmp eq i32 %72, 1
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = getelementptr i8, ptr %76, i64 -2
  %106 = load i8, ptr %105, align 1, !tbaa !9
  %107 = icmp ugt i8 %106, %97
  %108 = sub nsw i32 0, %72
  %109 = select i1 %107, i32 %108, i32 %94
  br label %110

110:                                              ; preds = %104, %101
  %111 = phi i32 [ 0, %101 ], [ %109, %104 ]
  %112 = icmp eq i32 %70, %98
  br i1 %112, label %134, label %113

113:                                              ; preds = %110
  %114 = icmp sgt i32 %70, -1
  br i1 %114, label %115, label %127

115:                                              ; preds = %113
  %116 = ptrtoint ptr %71 to i64
  %117 = sub i64 %116, %50
  %118 = ashr exact i64 %117, 2
  %119 = add nsw i64 %118, 2147483648
  %120 = icmp ult i64 %119, 4294967296
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1701, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

122:                                              ; preds = %115
  %123 = trunc nsw i64 %118 to i32
  %124 = or i32 %70, %54
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x i8], ptr %33, i64 %125
  store i32 %123, ptr %126, align 4, !tbaa !5
  br label %127

127:                                              ; preds = %122, %113
  %128 = or disjoint i32 %54, %98
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x i8], ptr %33, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !5
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [4 x i8], ptr %31, i64 %132
  br label %134

134:                                              ; preds = %127, %110
  %135 = phi ptr [ %133, %127 ], [ %71, %110 ]
  %136 = phi i32 [ %98, %127 ], [ %70, %110 ]
  %137 = icmp ult ptr %135, %69
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.src, i32 noundef 1704, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

139:                                              ; preds = %134
  %140 = icmp eq ptr %135, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %139
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.src, i32 noundef 1704, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

142:                                              ; preds = %139
  %143 = getelementptr inbounds i8, ptr %135, i64 -4
  store i32 %111, ptr %135, align 4, !tbaa !5
  br label %153

144:                                              ; preds = %.preheader59
  %145 = icmp eq i32 %72, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %144
  %147 = xor i32 %72, -1
  store i32 %147, ptr %69, align 4, !tbaa !5
  br label %153

148:                                              ; preds = %144
  %149 = load i8, ptr %0, align 1, !tbaa !9
  %150 = zext i8 %149 to i64
  %151 = icmp eq i64 %52, %150
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1710, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

153:                                              ; preds = %148, %146, %142
  %154 = phi ptr [ %143, %142 ], [ %71, %146 ], [ %71, %148 ]
  %155 = phi i32 [ %136, %142 ], [ %70, %146 ], [ %70, %148 ]
  %156 = getelementptr inbounds i8, ptr %69, i64 -4
  %157 = icmp ugt ptr %62, %156
  br i1 %157, label %.loopexit60, label %.preheader59, !llvm.loop !87

.loopexit60:                                      ; preds = %153, %51
  %158 = add nsw i64 %52, -1
  %159 = icmp eq i64 %52, 0
  br i1 %159, label %.loopexit61, label %51, !llvm.loop !88

.loopexit61:                                      ; preds = %.loopexit60, %46
  %160 = phi i64 [ %47, %46 ], [ %50, %.loopexit60 ]
  %161 = add nsw i32 %3, -1
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !9
  %165 = zext i8 %164 to i64
  %166 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !5
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [4 x i8], ptr %31, i64 %168
  %170 = zext nneg i32 %3 to i64
  %171 = getelementptr i8, ptr %0, i64 %170
  %172 = getelementptr i8, ptr %171, i64 -2
  %173 = load i8, ptr %172, align 1, !tbaa !9
  %174 = zext i8 %173 to i32
  %175 = icmp ult i8 %173, %164
  %176 = xor i32 %174, -1
  %177 = select i1 %175, i32 %176, i32 %161
  store i32 %177, ptr %169, align 4, !tbaa !5
  %178 = shl nuw nsw i64 %170, 2
  %179 = getelementptr inbounds nuw i8, ptr %31, i64 %178
  %180 = getelementptr inbounds nuw i8, ptr %169, i64 4
  %181 = zext i8 %164 to i32
  br label %182

182:                                              ; preds = %239, %.loopexit61
  %183 = phi i32 [ %181, %.loopexit61 ], [ %242, %239 ]
  %184 = phi ptr [ %31, %.loopexit61 ], [ %241, %239 ]
  %185 = phi ptr [ %180, %.loopexit61 ], [ %240, %239 ]
  %186 = phi ptr [ %31, %.loopexit61 ], [ %243, %239 ]
  %187 = load i32, ptr %186, align 4, !tbaa !5
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %235

189:                                              ; preds = %182
  %190 = add nsw i32 %187, -1
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !9
  %194 = zext i8 %193 to i32
  %195 = zext nneg i32 %187 to i64
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !9
  %198 = icmp ult i8 %193, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %189
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.src, i32 noundef 1724, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

200:                                              ; preds = %189
  store i32 %194, ptr %186, align 4, !tbaa !5
  %201 = icmp eq i32 %187, 1
  br i1 %201, label %209, label %202

202:                                              ; preds = %200
  %203 = getelementptr i8, ptr %196, i64 -2
  %204 = load i8, ptr %203, align 1, !tbaa !9
  %205 = icmp ult i8 %204, %193
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = zext i8 %204 to i32
  %208 = xor i32 %207, -1
  br label %209

209:                                              ; preds = %206, %202, %200
  %210 = phi i32 [ %208, %206 ], [ %190, %202 ], [ 0, %200 ]
  %211 = icmp eq i32 %183, %194
  br i1 %211, label %228, label %212

212:                                              ; preds = %209
  %213 = ptrtoint ptr %185 to i64
  %214 = sub i64 %213, %160
  %215 = ashr exact i64 %214, 2
  %216 = add nsw i64 %215, 2147483648
  %217 = icmp ult i64 %216, 4294967296
  br i1 %217, label %219, label %218

218:                                              ; preds = %212
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1729, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

219:                                              ; preds = %212
  %220 = trunc nsw i64 %215 to i32
  %221 = zext nneg i32 %183 to i64
  %222 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %221
  store i32 %220, ptr %222, align 4, !tbaa !5
  %223 = zext i8 %193 to i64
  %224 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !5
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [4 x i8], ptr %31, i64 %226
  br label %228

228:                                              ; preds = %219, %209
  %229 = phi ptr [ %227, %219 ], [ %185, %209 ]
  %230 = phi i32 [ %194, %219 ], [ %183, %209 ]
  %231 = icmp ult ptr %186, %229
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.src, i32 noundef 1732, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

233:                                              ; preds = %228
  %234 = getelementptr inbounds nuw i8, ptr %229, i64 4
  store i32 %210, ptr %229, align 4, !tbaa !5
  br label %239

235:                                              ; preds = %182
  %236 = icmp eq i32 %187, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %235
  %238 = xor i32 %187, -1
  store i32 %238, ptr %186, align 4, !tbaa !5
  br label %239

239:                                              ; preds = %237, %235, %233
  %240 = phi ptr [ %234, %233 ], [ %185, %237 ], [ %185, %235 ]
  %241 = phi ptr [ %184, %233 ], [ %184, %237 ], [ %186, %235 ]
  %242 = phi i32 [ %230, %233 ], [ %183, %237 ], [ %183, %235 ]
  %243 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %244 = icmp ult ptr %243, %179
  br i1 %244, label %182, label %245, !llvm.loop !89

245:                                              ; preds = %239
  %246 = ptrtoint ptr %241 to i64
  %247 = sub i64 %246, %160
  %248 = ashr exact i64 %247, 2
  %249 = add nsw i64 %248, 2147483648
  %250 = icmp ult i64 %249, 4294967296
  br i1 %250, label %537, label %251

251:                                              ; preds = %245
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.src, i32 noundef 1741, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

252:                                              ; preds = %39
  %253 = lshr i32 %3, 3
  %254 = lshr i32 %3, 4
  %255 = or i32 %253, %254
  %256 = lshr i32 %255, 2
  %257 = or i32 %256, %255
  %258 = lshr i32 %257, 4
  %259 = or i32 %258, %257
  %260 = lshr i32 %259, 8
  %261 = or i32 %260, %259
  %262 = lshr i32 %261, 17
  %263 = lshr i32 %261, 1
  %264 = or i32 %262, %263
  %265 = add nsw i32 %3, -1
  %266 = add nuw nsw i32 %264, 1
  %267 = udiv i32 %265, %266
  %268 = trunc i32 %267 to i8
  store i8 %268, ptr %4, align 1, !tbaa !9
  %269 = icmp sgt i32 %40, 0
  br i1 %269, label %270, label %.loopexit64

270:                                              ; preds = %252
  %271 = getelementptr i8, ptr %5, i64 -4
  %272 = getelementptr i8, ptr %31, i64 -4
  %273 = ptrtoint ptr %31 to i64
  br label %275

274:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

275:                                              ; preds = %.loopexit63, %270
  %276 = phi i64 [ 254, %270 ], [ %398, %.loopexit63 ]
  %277 = trunc i64 %276 to i32
  %278 = shl i32 %277, 8
  %279 = add nuw nsw i64 %276, 1
  %280 = trunc nuw nsw i64 %279 to i32
  %281 = or i32 %278, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [4 x i8], ptr %33, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !5
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [4 x i8], ptr %31, i64 %285
  %287 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %279
  %288 = load i32, ptr %287, align 4, !tbaa !5
  %289 = sext i32 %288 to i64
  %290 = getelementptr [4 x i8], ptr %272, i64 %289
  %291 = icmp ugt ptr %286, %290
  br i1 %291, label %.loopexit63, label %.preheader62

.preheader62:                                     ; preds = %275, %393
  %292 = phi ptr [ %396, %393 ], [ %290, %275 ]
  %293 = phi i32 [ %395, %393 ], [ -1, %275 ]
  %294 = phi ptr [ %394, %393 ], [ null, %275 ]
  %295 = load i32, ptr %292, align 4, !tbaa !5
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %384

297:                                              ; preds = %.preheader62
  %298 = zext nneg i32 %295 to i64
  %299 = getelementptr inbounds nuw i8, ptr %0, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !9
  %301 = zext i8 %300 to i64
  %302 = icmp eq i64 %276, %301
  br i1 %302, label %304, label %303

303:                                              ; preds = %297
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1775, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

304:                                              ; preds = %297
  %305 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %295, i32 1), !nosanitize !10
  %306 = extractvalue { i32, i1 } %305, 0, !nosanitize !10
  %307 = extractvalue { i32, i1 } %305, 1, !nosanitize !10
  br i1 %307, label %274, label %308, !prof !11, !nosanitize !10

308:                                              ; preds = %304
  %309 = icmp slt i32 %306, %3
  br i1 %309, label %310, label %315

310:                                              ; preds = %308
  %311 = sext i32 %306 to i64
  %312 = getelementptr inbounds i8, ptr %0, i64 %311
  %313 = load i8, ptr %312, align 1, !tbaa !9
  %314 = icmp ugt i8 %300, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %310, %308
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.src, i32 noundef 1776, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

316:                                              ; preds = %310
  %317 = add nsw i32 %295, -1
  %318 = zext nneg i32 %317 to i64
  %319 = getelementptr inbounds nuw i8, ptr %0, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !9
  %321 = icmp ugt i8 %320, %300
  br i1 %321, label %322, label %323

322:                                              ; preds = %316
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.src, i32 noundef 1777, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

323:                                              ; preds = %316
  %324 = and i32 %295, %264
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %339

326:                                              ; preds = %323
  %327 = ptrtoint ptr %292 to i64
  %328 = sub i64 %327, %273
  %329 = ashr exact i64 %328, 2
  %330 = add nsw i64 %329, 2147483648
  %331 = icmp ult i64 %330, 4294967296
  br i1 %331, label %333, label %332

332:                                              ; preds = %326
  tail call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.src, i32 noundef 1779, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

333:                                              ; preds = %326
  %334 = trunc nsw i64 %329 to i32
  %335 = udiv i32 %295, %266
  %336 = zext nneg i32 %335 to i64
  %337 = getelementptr [4 x i8], ptr %271, i64 %336
  store i32 %334, ptr %337, align 4, !tbaa !5
  %338 = load i8, ptr %319, align 1, !tbaa !9
  br label %339

339:                                              ; preds = %333, %323
  %340 = phi i8 [ %320, %323 ], [ %338, %333 ]
  %341 = zext i8 %340 to i32
  %342 = xor i32 %341, -1
  store i32 %342, ptr %292, align 4, !tbaa !5
  %343 = icmp eq i32 %295, 1
  br i1 %343, label %350, label %344

344:                                              ; preds = %339
  %345 = getelementptr i8, ptr %299, i64 -2
  %346 = load i8, ptr %345, align 1, !tbaa !9
  %347 = icmp ugt i8 %346, %340
  %348 = sub nsw i32 0, %295
  %349 = select i1 %347, i32 %348, i32 %317
  br label %350

350:                                              ; preds = %344, %339
  %351 = phi i32 [ 0, %339 ], [ %349, %344 ]
  %352 = icmp eq i32 %293, %341
  br i1 %352, label %374, label %353

353:                                              ; preds = %350
  %354 = icmp sgt i32 %293, -1
  br i1 %354, label %355, label %367

355:                                              ; preds = %353
  %356 = ptrtoint ptr %294 to i64
  %357 = sub i64 %356, %273
  %358 = ashr exact i64 %357, 2
  %359 = add nsw i64 %358, 2147483648
  %360 = icmp ult i64 %359, 4294967296
  br i1 %360, label %362, label %361

361:                                              ; preds = %355
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1785, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

362:                                              ; preds = %355
  %363 = trunc nsw i64 %358 to i32
  %364 = or i32 %293, %278
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [4 x i8], ptr %33, i64 %365
  store i32 %363, ptr %366, align 4, !tbaa !5
  br label %367

367:                                              ; preds = %362, %353
  %368 = or disjoint i32 %278, %341
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [4 x i8], ptr %33, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !5
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [4 x i8], ptr %31, i64 %372
  br label %374

374:                                              ; preds = %367, %350
  %375 = phi ptr [ %373, %367 ], [ %294, %350 ]
  %376 = phi i32 [ %341, %367 ], [ %293, %350 ]
  %377 = icmp ult ptr %375, %292
  br i1 %377, label %379, label %378

378:                                              ; preds = %374
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.src, i32 noundef 1788, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

379:                                              ; preds = %374
  %380 = icmp eq ptr %375, null
  br i1 %380, label %381, label %382

381:                                              ; preds = %379
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.src, i32 noundef 1788, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

382:                                              ; preds = %379
  %383 = getelementptr inbounds i8, ptr %375, i64 -4
  store i32 %351, ptr %375, align 4, !tbaa !5
  br label %393

384:                                              ; preds = %.preheader62
  %385 = icmp eq i32 %295, 0
  br i1 %385, label %388, label %386

386:                                              ; preds = %384
  %387 = xor i32 %295, -1
  store i32 %387, ptr %292, align 4, !tbaa !5
  br label %393

388:                                              ; preds = %384
  %389 = load i8, ptr %0, align 1, !tbaa !9
  %390 = zext i8 %389 to i64
  %391 = icmp eq i64 %276, %390
  br i1 %391, label %393, label %392

392:                                              ; preds = %388
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1794, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

393:                                              ; preds = %388, %386, %382
  %394 = phi ptr [ %383, %382 ], [ %294, %386 ], [ %294, %388 ]
  %395 = phi i32 [ %376, %382 ], [ %293, %386 ], [ %293, %388 ]
  %396 = getelementptr inbounds i8, ptr %292, i64 -4
  %397 = icmp ugt ptr %286, %396
  br i1 %397, label %.loopexit63, label %.preheader62, !llvm.loop !90

.loopexit63:                                      ; preds = %393, %275
  %398 = add nsw i64 %276, -1
  %399 = icmp eq i64 %276, 0
  br i1 %399, label %.loopexit64, label %275, !llvm.loop !91

.loopexit64:                                      ; preds = %.loopexit63, %252
  %400 = zext nneg i32 %265 to i64
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 %400
  %402 = load i8, ptr %401, align 1, !tbaa !9
  %403 = zext i8 %402 to i32
  %404 = zext i8 %402 to i64
  %405 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %404
  %406 = load i32, ptr %405, align 4, !tbaa !5
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [4 x i8], ptr %31, i64 %407
  %409 = zext nneg i32 %3 to i64
  %410 = getelementptr i8, ptr %0, i64 %409
  %411 = getelementptr i8, ptr %410, i64 -2
  %412 = load i8, ptr %411, align 1, !tbaa !9
  %413 = icmp ult i8 %412, %402
  br i1 %413, label %414, label %426

414:                                              ; preds = %.loopexit64
  %415 = and i32 %264, %265
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %414
  %418 = zext nneg i32 %267 to i64
  %419 = getelementptr [4 x i8], ptr %5, i64 %418
  %420 = getelementptr i8, ptr %419, i64 -4
  store i32 %406, ptr %420, align 4, !tbaa !5
  %421 = load i8, ptr %411, align 1, !tbaa !9
  br label %422

422:                                              ; preds = %417, %414
  %423 = phi i8 [ %412, %414 ], [ %421, %417 ]
  %424 = zext i8 %423 to i32
  %425 = xor i32 %424, -1
  br label %426

426:                                              ; preds = %422, %.loopexit64
  %427 = phi i32 [ %425, %422 ], [ %265, %.loopexit64 ]
  store i32 %427, ptr %408, align 4, !tbaa !5
  %428 = shl nuw nsw i64 %409, 2
  %429 = getelementptr inbounds nuw i8, ptr %31, i64 %428
  %430 = getelementptr i8, ptr %5, i64 -4
  %431 = getelementptr inbounds nuw i8, ptr %408, i64 4
  %432 = ptrtoint ptr %31 to i64
  br label %433

433:                                              ; preds = %524, %426
  %434 = phi i32 [ %403, %426 ], [ %527, %524 ]
  %435 = phi ptr [ %31, %426 ], [ %526, %524 ]
  %436 = phi ptr [ %431, %426 ], [ %525, %524 ]
  %437 = phi ptr [ %31, %426 ], [ %528, %524 ]
  %438 = load i32, ptr %437, align 4, !tbaa !5
  %439 = icmp sgt i32 %438, 0
  br i1 %439, label %440, label %520

440:                                              ; preds = %433
  %441 = add nsw i32 %438, -1
  %442 = zext nneg i32 %441 to i64
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 %442
  %444 = load i8, ptr %443, align 1, !tbaa !9
  %445 = zext nneg i32 %438 to i64
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 %445
  %447 = load i8, ptr %446, align 1, !tbaa !9
  %448 = icmp ult i8 %444, %447
  br i1 %448, label %449, label %450

449:                                              ; preds = %440
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.src, i32 noundef 1815, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

450:                                              ; preds = %440
  %451 = and i32 %438, %264
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %466

453:                                              ; preds = %450
  %454 = ptrtoint ptr %437 to i64
  %455 = sub i64 %454, %432
  %456 = ashr exact i64 %455, 2
  %457 = add nsw i64 %456, 2147483648
  %458 = icmp ult i64 %457, 4294967296
  br i1 %458, label %460, label %459

459:                                              ; preds = %453
  tail call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.src, i32 noundef 1817, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

460:                                              ; preds = %453
  %461 = trunc nsw i64 %456 to i32
  %462 = udiv i32 %438, %266
  %463 = zext nneg i32 %462 to i64
  %464 = getelementptr [4 x i8], ptr %430, i64 %463
  store i32 %461, ptr %464, align 4, !tbaa !5
  %465 = load i8, ptr %443, align 1, !tbaa !9
  br label %466

466:                                              ; preds = %460, %450
  %467 = phi i8 [ %444, %450 ], [ %465, %460 ]
  %468 = zext i8 %467 to i32
  store i32 %468, ptr %437, align 4, !tbaa !5
  %469 = icmp eq i32 %434, %468
  br i1 %469, label %486, label %470

470:                                              ; preds = %466
  %471 = ptrtoint ptr %436 to i64
  %472 = sub i64 %471, %432
  %473 = ashr exact i64 %472, 2
  %474 = add nsw i64 %473, 2147483648
  %475 = icmp ult i64 %474, 4294967296
  br i1 %475, label %477, label %476

476:                                              ; preds = %470
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1822, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

477:                                              ; preds = %470
  %478 = trunc nsw i64 %473 to i32
  %479 = zext nneg i32 %434 to i64
  %480 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %479
  store i32 %478, ptr %480, align 4, !tbaa !5
  %481 = zext i8 %467 to i64
  %482 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %481
  %483 = load i32, ptr %482, align 4, !tbaa !5
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [4 x i8], ptr %31, i64 %484
  br label %486

486:                                              ; preds = %477, %466
  %487 = phi ptr [ %485, %477 ], [ %436, %466 ]
  %488 = phi i32 [ %468, %477 ], [ %434, %466 ]
  %489 = icmp ult ptr %437, %487
  br i1 %489, label %491, label %490

490:                                              ; preds = %486
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.src, i32 noundef 1825, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

491:                                              ; preds = %486
  %492 = icmp eq i32 %438, 1
  br i1 %492, label %518, label %493

493:                                              ; preds = %491
  %494 = getelementptr i8, ptr %446, i64 -2
  %495 = load i8, ptr %494, align 1, !tbaa !9
  %496 = icmp ult i8 %495, %467
  br i1 %496, label %497, label %518

497:                                              ; preds = %493
  %498 = and i32 %441, %264
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %513

500:                                              ; preds = %497
  %501 = ptrtoint ptr %487 to i64
  %502 = sub i64 %501, %432
  %503 = ashr exact i64 %502, 2
  %504 = add nsw i64 %503, 2147483648
  %505 = icmp ult i64 %504, 4294967296
  br i1 %505, label %507, label %506

506:                                              ; preds = %500
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1827, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

507:                                              ; preds = %500
  %508 = trunc nsw i64 %503 to i32
  %509 = udiv i32 %441, %266
  %510 = zext nneg i32 %509 to i64
  %511 = getelementptr [4 x i8], ptr %430, i64 %510
  store i32 %508, ptr %511, align 4, !tbaa !5
  %512 = load i8, ptr %494, align 1, !tbaa !9
  br label %513

513:                                              ; preds = %507, %497
  %514 = phi i8 [ %495, %497 ], [ %512, %507 ]
  %515 = zext i8 %514 to i32
  %516 = xor i32 %515, -1
  %517 = getelementptr inbounds nuw i8, ptr %487, i64 4
  store i32 %516, ptr %487, align 4, !tbaa !5
  br label %524

518:                                              ; preds = %493, %491
  %519 = getelementptr inbounds nuw i8, ptr %487, i64 4
  store i32 %441, ptr %487, align 4, !tbaa !5
  br label %524

520:                                              ; preds = %433
  %521 = icmp eq i32 %438, 0
  br i1 %521, label %524, label %522

522:                                              ; preds = %520
  %523 = xor i32 %438, -1
  store i32 %523, ptr %437, align 4, !tbaa !5
  br label %524

524:                                              ; preds = %522, %520, %518, %513
  %525 = phi ptr [ %517, %513 ], [ %519, %518 ], [ %436, %522 ], [ %436, %520 ]
  %526 = phi ptr [ %435, %513 ], [ %435, %518 ], [ %435, %522 ], [ %437, %520 ]
  %527 = phi i32 [ %488, %513 ], [ %488, %518 ], [ %434, %522 ], [ %434, %520 ]
  %528 = getelementptr inbounds nuw i8, ptr %437, i64 4
  %529 = icmp ult ptr %528, %429
  br i1 %529, label %433, label %530, !llvm.loop !92

530:                                              ; preds = %524
  %531 = ptrtoint ptr %526 to i64
  %532 = sub i64 %531, %432
  %533 = ashr exact i64 %532, 2
  %534 = add nsw i64 %533, 2147483648
  %535 = icmp ult i64 %534, 4294967296
  br i1 %535, label %537, label %536

536:                                              ; preds = %530
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.src, i32 noundef 1838, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

537:                                              ; preds = %530, %245
  %538 = phi i64 [ %409, %530 ], [ %170, %245 ]
  %539 = phi i64 [ %533, %530 ], [ %248, %245 ]
  %540 = trunc nsw i64 %539 to i32
  %541 = getelementptr i8, ptr %0, i64 %538
  %542 = getelementptr i8, ptr %541, i64 -1
  %543 = load i8, ptr %542, align 1, !tbaa !9
  store i8 %543, ptr %1, align 1, !tbaa !9
  %544 = icmp sgt i64 %539, 0
  br i1 %544, label %545, label %.loopexit56

545:                                              ; preds = %537
  %546 = icmp samesign ult i64 %539, 16
  br i1 %546, label %573, label %547

547:                                              ; preds = %545
  %548 = getelementptr i8, ptr %1, i64 1
  %549 = getelementptr i8, ptr %1, i64 %539
  %550 = getelementptr i8, ptr %549, i64 1
  %551 = shl nuw nsw i64 %539, 2
  %552 = getelementptr i8, ptr %31, i64 %551
  %553 = icmp ult ptr %548, %552
  %554 = icmp ult ptr %31, %550
  %555 = and i1 %553, %554
  br i1 %555, label %573, label %556

556:                                              ; preds = %547
  %557 = and i64 %539, 2147483640
  br label %558

558:                                              ; preds = %558, %556
  %559 = phi i64 [ 0, %556 ], [ %569, %558 ]
  %560 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %559
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 16
  %562 = load <4 x i32>, ptr %560, align 4, !tbaa !5, !alias.scope !93
  %563 = load <4 x i32>, ptr %561, align 4, !tbaa !5, !alias.scope !93
  %564 = trunc <4 x i32> %562 to <4 x i8>
  %565 = trunc <4 x i32> %563 to <4 x i8>
  %566 = getelementptr inbounds nuw i8, ptr %1, i64 %559
  %567 = getelementptr inbounds nuw i8, ptr %566, i64 1
  %568 = getelementptr inbounds nuw i8, ptr %566, i64 5
  store <4 x i8> %564, ptr %567, align 1, !tbaa !9, !alias.scope !96, !noalias !93
  store <4 x i8> %565, ptr %568, align 1, !tbaa !9, !alias.scope !96, !noalias !93
  %569 = add nuw i64 %559, 8
  %570 = icmp eq i64 %569, %557
  br i1 %570, label %571, label %558, !llvm.loop !98

571:                                              ; preds = %558
  %572 = icmp eq i64 %539, %557
  br i1 %572, label %.loopexit56, label %573

573:                                              ; preds = %571, %547, %545
  %574 = phi i64 [ 0, %547 ], [ 0, %545 ], [ %557, %571 ]
  %575 = and i64 %539, 3
  %576 = icmp eq i64 %575, 0
  br i1 %576, label %.loopexit58, label %.preheader57

.preheader57:                                     ; preds = %573, %.preheader57
  %577 = phi i64 [ %579, %.preheader57 ], [ %574, %573 ]
  %578 = phi i64 [ %584, %.preheader57 ], [ 0, %573 ]
  %579 = add nuw nsw i64 %577, 1
  %580 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %577
  %581 = load i32, ptr %580, align 4, !tbaa !5
  %582 = trunc i32 %581 to i8
  %583 = getelementptr inbounds nuw i8, ptr %1, i64 %579
  store i8 %582, ptr %583, align 1, !tbaa !9
  %584 = add nuw nsw i64 %578, 1
  %585 = icmp eq i64 %584, %575
  br i1 %585, label %.loopexit58, label %.preheader57, !llvm.loop !99

.loopexit58:                                      ; preds = %.preheader57, %573
  %586 = phi i64 [ %574, %573 ], [ %579, %.preheader57 ]
  %587 = sub nsw i64 %574, %539
  %588 = icmp ugt i64 %587, -4
  br i1 %588, label %.loopexit56, label %.preheader55

.preheader55:                                     ; preds = %.loopexit58, %.preheader55
  %589 = phi i64 [ %605, %.preheader55 ], [ %586, %.loopexit58 ]
  %590 = add nuw nsw i64 %589, 1
  %591 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %589
  %592 = load i32, ptr %591, align 4, !tbaa !5
  %593 = trunc i32 %592 to i8
  %594 = getelementptr inbounds nuw i8, ptr %1, i64 %590
  store i8 %593, ptr %594, align 1, !tbaa !9
  %595 = add nuw nsw i64 %589, 2
  %596 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %590
  %597 = load i32, ptr %596, align 4, !tbaa !5
  %598 = trunc i32 %597 to i8
  %599 = getelementptr inbounds nuw i8, ptr %1, i64 %595
  store i8 %598, ptr %599, align 1, !tbaa !9
  %600 = add nuw nsw i64 %589, 3
  %601 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %595
  %602 = load i32, ptr %601, align 4, !tbaa !5
  %603 = trunc i32 %602 to i8
  %604 = getelementptr inbounds nuw i8, ptr %1, i64 %600
  store i8 %603, ptr %604, align 1, !tbaa !9
  %605 = add nuw nsw i64 %589, 4
  %606 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %600
  %607 = load i32, ptr %606, align 4, !tbaa !5
  %608 = trunc i32 %607 to i8
  %609 = getelementptr inbounds nuw i8, ptr %1, i64 %605
  store i8 %608, ptr %609, align 1, !tbaa !9
  %610 = icmp eq i64 %605, %539
  br i1 %610, label %.loopexit56, label %.preheader55, !llvm.loop !101

.loopexit56:                                      ; preds = %.preheader55, %.loopexit58, %571, %537
  %611 = phi i32 [ 0, %537 ], [ %540, %571 ], [ %540, %.loopexit58 ], [ %540, %.preheader55 ]
  %612 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %611, i32 1), !nosanitize !10
  %613 = extractvalue { i32, i1 } %612, 1, !nosanitize !10
  br i1 %613, label %24, label %614, !prof !11, !nosanitize !10

614:                                              ; preds = %.loopexit56
  %615 = extractvalue { i32, i1 } %612, 0
  %616 = icmp slt i32 %615, %3
  br i1 %616, label %617, label %.loopexit

617:                                              ; preds = %614
  %618 = zext i32 %615 to i64
  %619 = add nsw i32 %3, -2
  %620 = sub i32 %619, %611
  %621 = zext i32 %620 to i64
  %622 = add nuw nsw i64 %621, 1
  %623 = icmp ult i32 %620, 27
  br i1 %623, label %656, label %624

624:                                              ; preds = %617
  %625 = getelementptr i8, ptr %1, i64 %618
  %626 = getelementptr i8, ptr %1, i64 %621
  %627 = getelementptr i8, ptr %626, i64 %618
  %628 = getelementptr i8, ptr %627, i64 1
  %629 = shl nuw nsw i64 %618, 2
  %630 = getelementptr i8, ptr %31, i64 %629
  %631 = add nuw nsw i64 %618, %621
  %632 = shl nuw nsw i64 %631, 2
  %633 = getelementptr i8, ptr %31, i64 %632
  %634 = getelementptr i8, ptr %633, i64 4
  %635 = icmp ult ptr %625, %634
  %636 = icmp ult ptr %630, %628
  %637 = and i1 %636, %635
  br i1 %637, label %656, label %638

638:                                              ; preds = %624
  %639 = and i64 %622, 8589934584
  br label %640

640:                                              ; preds = %640, %638
  %641 = phi i64 [ 0, %638 ], [ %651, %640 ]
  %642 = add i64 %641, %618
  %643 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %642
  %644 = getelementptr inbounds nuw i8, ptr %643, i64 16
  %645 = load <4 x i32>, ptr %643, align 4, !tbaa !5, !alias.scope !102
  %646 = load <4 x i32>, ptr %644, align 4, !tbaa !5, !alias.scope !102
  %647 = trunc <4 x i32> %645 to <4 x i8>
  %648 = trunc <4 x i32> %646 to <4 x i8>
  %649 = getelementptr inbounds nuw i8, ptr %1, i64 %642
  %650 = getelementptr inbounds nuw i8, ptr %649, i64 4
  store <4 x i8> %647, ptr %649, align 1, !tbaa !9, !alias.scope !105, !noalias !102
  store <4 x i8> %648, ptr %650, align 1, !tbaa !9, !alias.scope !105, !noalias !102
  %651 = add nuw i64 %641, 8
  %652 = icmp eq i64 %651, %639
  br i1 %652, label %653, label %640, !llvm.loop !107

653:                                              ; preds = %640
  %654 = add nuw nsw i64 %639, %618
  %655 = icmp eq i64 %622, %639
  br i1 %655, label %.loopexit, label %656

656:                                              ; preds = %653, %624, %617
  %657 = phi i64 [ %618, %624 ], [ %618, %617 ], [ %654, %653 ]
  %658 = trunc i64 %657 to i32
  %659 = sub i32 %3, %658
  %660 = and i32 %659, 3
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %.loopexit54, label %.preheader53

.preheader53:                                     ; preds = %656, %.preheader53
  %662 = phi i64 [ %668, %.preheader53 ], [ %657, %656 ]
  %663 = phi i32 [ %669, %.preheader53 ], [ 0, %656 ]
  %664 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %662
  %665 = load i32, ptr %664, align 4, !tbaa !5
  %666 = trunc i32 %665 to i8
  %667 = getelementptr inbounds nuw i8, ptr %1, i64 %662
  store i8 %666, ptr %667, align 1, !tbaa !9
  %668 = add nuw nsw i64 %662, 1
  %669 = add nuw nsw i32 %663, 1
  %670 = icmp eq i32 %669, %660
  br i1 %670, label %.loopexit54, label %.preheader53, !llvm.loop !108

.loopexit54:                                      ; preds = %.preheader53, %656
  %671 = phi i64 [ %657, %656 ], [ %668, %.preheader53 ]
  %672 = sub i32 %658, %3
  %673 = icmp ugt i32 %672, -4
  br i1 %673, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit54, %.preheader
  %674 = phi i64 [ %694, %.preheader ], [ %671, %.loopexit54 ]
  %675 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %674
  %676 = load i32, ptr %675, align 4, !tbaa !5
  %677 = trunc i32 %676 to i8
  %678 = getelementptr inbounds nuw i8, ptr %1, i64 %674
  store i8 %677, ptr %678, align 1, !tbaa !9
  %679 = add nuw nsw i64 %674, 1
  %680 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %679
  %681 = load i32, ptr %680, align 4, !tbaa !5
  %682 = trunc i32 %681 to i8
  %683 = getelementptr inbounds nuw i8, ptr %1, i64 %679
  store i8 %682, ptr %683, align 1, !tbaa !9
  %684 = add nuw nsw i64 %674, 2
  %685 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %684
  %686 = load i32, ptr %685, align 4, !tbaa !5
  %687 = trunc i32 %686 to i8
  %688 = getelementptr inbounds nuw i8, ptr %1, i64 %684
  store i8 %687, ptr %688, align 1, !tbaa !9
  %689 = add nuw nsw i64 %674, 3
  %690 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %689
  %691 = load i32, ptr %690, align 4, !tbaa !5
  %692 = trunc i32 %691 to i8
  %693 = getelementptr inbounds nuw i8, ptr %1, i64 %689
  store i8 %692, ptr %693, align 1, !tbaa !9
  %694 = add nuw nsw i64 %674, 4
  %695 = trunc i64 %694 to i32
  %696 = icmp eq i32 %3, %695
  br i1 %696, label %.loopexit, label %.preheader, !llvm.loop !109

.loopexit:                                        ; preds = %.preheader, %.loopexit54, %653, %614
  %697 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %540, i32 1), !nosanitize !10
  %698 = extractvalue { i32, i1 } %697, 1, !nosanitize !10
  br i1 %698, label %24, label %699, !prof !11, !nosanitize !10

699:                                              ; preds = %.loopexit
  %700 = extractvalue { i32, i1 } %697, 0, !nosanitize !10
  br label %701

701:                                              ; preds = %699, %30
  %702 = phi i32 [ %700, %699 ], [ -2, %30 ]
  tail call void @free(ptr noundef %33) #11
  tail call void @free(ptr noundef %32) #11
  br i1 %20, label %703, label %704

703:                                              ; preds = %701
  tail call void @free(ptr noundef %31) #11
  br label %704

704:                                              ; preds = %703, %701, %17, %15, %7
  %705 = phi i32 [ -1, %7 ], [ 1, %17 ], [ 0, %15 ], [ %702, %703 ], [ %702, %701 ]
  ret i32 %705
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @ss_mintrosort(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
  %5 = alloca [16 x %struct.anon], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = add nsw i64 %9, 2147483648
  %11 = icmp ult i64 %10, 4294967296
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 411, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

13:                                               ; preds = %4
  %14 = and i64 %8, 261120
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = lshr i64 %9, 8
  %18 = and i64 %17, 255
  %19 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 8), !nosanitize !10
  %22 = extractvalue { i32, i1 } %21, 0, !nosanitize !10
  %23 = extractvalue { i32, i1 } %21, 1, !nosanitize !10
  br i1 %23, label %24, label %29, !prof !11, !nosanitize !10

24:                                               ; preds = %16
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

25:                                               ; preds = %13
  %26 = and i64 %9, 255
  %27 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %25, %16
  %30 = phi i32 [ %22, %16 ], [ %28, %25 ]
  %31 = getelementptr i8, ptr %0, i64 2
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %29
  %32 = phi ptr [ %3, %29 ], [ %.be, %.backedge.backedge ]
  %33 = phi i32 [ 2, %29 ], [ %.be551, %.backedge.backedge ]
  %34 = phi ptr [ %2, %29 ], [ %.be552, %.backedge.backedge ]
  %35 = phi i32 [ 0, %29 ], [ %.be553, %.backedge.backedge ]
  %36 = phi i32 [ %30, %29 ], [ %.be554, %.backedge.backedge ]
  %37 = ptrtoint ptr %32 to i64
  %38 = ptrtoint ptr %34 to i64
  %39 = sub i64 %37, %38
  %40 = ashr exact i64 %39, 2
  %41 = icmp slt i64 %40, 9
  br i1 %41, label %42, label %140

42:                                               ; preds = %.backedge
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %.loopexit141

44:                                               ; preds = %42
  %45 = getelementptr inbounds i8, ptr %32, i64 -8
  %46 = icmp ugt ptr %34, %45
  br i1 %46, label %.loopexit141, label %47

47:                                               ; preds = %44
  %48 = sext i32 %33 to i64
  %49 = getelementptr inbounds i8, ptr %0, i64 %48
  br label %50

50:                                               ; preds = %.loopexit, %47
  %51 = phi ptr [ %45, %47 ], [ %121, %.loopexit ]
  %52 = load i32, ptr %51, align 4, !tbaa !5
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [4 x i8], ptr %1, i64 %54
  %56 = getelementptr i8, ptr %55, i64 4
  %57 = load i32, ptr %53, align 4, !tbaa !5
  br label %59

58:                                               ; preds = %112
  br label %59, !llvm.loop !110

59:                                               ; preds = %58, %50
  %60 = phi i32 [ %57, %50 ], [ %113, %58 ]
  %61 = phi ptr [ %53, %50 ], [ %110, %58 ]
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds [4 x i8], ptr %1, i64 %62
  %64 = load i32, ptr %55, align 4, !tbaa !5
  %65 = load i32, ptr %56, align 4, !tbaa !5
  %66 = load i32, ptr %63, align 4, !tbaa !5
  %67 = getelementptr i8, ptr %63, i64 4
  %68 = load i32, ptr %67, align 4, !tbaa !5
  %69 = sext i32 %64 to i64
  %70 = getelementptr inbounds i8, ptr %49, i64 %69
  %71 = sext i32 %66 to i64
  %72 = getelementptr inbounds i8, ptr %49, i64 %71
  %73 = sext i32 %65 to i64
  %74 = getelementptr i8, ptr %31, i64 %73
  %75 = sext i32 %68 to i64
  %76 = getelementptr i8, ptr %31, i64 %75
  %77 = icmp ult ptr %70, %74
  %78 = icmp ult ptr %72, %76
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %.preheader, label %.loopexit117

.preheader:                                       ; preds = %59, %85
  %80 = phi ptr [ %86, %85 ], [ %70, %59 ]
  %81 = phi ptr [ %87, %85 ], [ %72, %59 ]
  %82 = load i8, ptr %80, align 1, !tbaa !9
  %83 = load i8, ptr %81, align 1, !tbaa !9
  %84 = icmp eq i8 %82, %83
  br i1 %84, label %85, label %.loopexit116

85:                                               ; preds = %.preheader
  %86 = getelementptr inbounds nuw i8, ptr %80, i64 1
  %87 = getelementptr inbounds nuw i8, ptr %81, i64 1
  %88 = icmp ult ptr %86, %74
  %89 = icmp ult ptr %87, %76
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %.preheader, label %.loopexit117, !llvm.loop !26

.loopexit117:                                     ; preds = %85, %59
  %91 = phi ptr [ %72, %59 ], [ %87, %85 ]
  %92 = phi ptr [ %70, %59 ], [ %86, %85 ]
  %93 = phi i1 [ %77, %59 ], [ %88, %85 ]
  %94 = phi i1 [ %78, %59 ], [ %89, %85 ]
  br i1 %93, label %95, label %99

95:                                               ; preds = %.loopexit117
  br i1 %94, label %96, label %.preheader557.preheader

96:                                               ; preds = %95
  %97 = load i8, ptr %92, align 1, !tbaa !9
  %98 = load i8, ptr %91, align 1, !tbaa !9
  br label %.loopexit116

99:                                               ; preds = %.loopexit117
  %100 = sext i1 %94 to i32
  br label %.loopexit118

.loopexit116:                                     ; preds = %.preheader, %96
  %101 = phi i8 [ %98, %96 ], [ %83, %.preheader ]
  %102 = phi i8 [ %97, %96 ], [ %82, %.preheader ]
  %103 = zext i8 %102 to i32
  %104 = zext i8 %101 to i32
  %105 = sub nsw i32 %103, %104
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %.preheader557.preheader, label %.loopexit118

.preheader557.preheader:                          ; preds = %.loopexit116, %95
  br label %.preheader557

.preheader557:                                    ; preds = %.preheader557.preheader, %112
  %107 = phi i32 [ %113, %112 ], [ %60, %.preheader557.preheader ]
  %108 = phi ptr [ %110, %112 ], [ %61, %.preheader557.preheader ]
  %109 = getelementptr inbounds i8, ptr %108, i64 -4
  store i32 %107, ptr %109, align 4, !tbaa !5
  %110 = getelementptr inbounds nuw i8, ptr %108, i64 4
  %111 = icmp ult ptr %110, %32
  br i1 %111, label %112, label %.loopexit

112:                                              ; preds = %.preheader557
  %113 = load i32, ptr %110, align 4, !tbaa !5
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %.preheader557, label %58, !llvm.loop !110

.loopexit118:                                     ; preds = %.loopexit116, %99
  %115 = phi i32 [ %100, %99 ], [ %105, %.loopexit116 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %.loopexit

117:                                              ; preds = %.loopexit118
  %118 = xor i32 %60, -1
  store i32 %118, ptr %61, align 4, !tbaa !5
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader557, %117, %.loopexit118
  %119 = phi ptr [ %61, %117 ], [ %61, %.loopexit118 ], [ %110, %.preheader557 ]
  %120 = getelementptr inbounds i8, ptr %119, i64 -4
  store i32 %52, ptr %120, align 4, !tbaa !5
  %121 = getelementptr inbounds i8, ptr %51, i64 -4
  %122 = icmp ugt ptr %34, %121
  br i1 %122, label %.loopexit141, label %50, !llvm.loop !111

.loopexit141:                                     ; preds = %.loopexit, %44, %42
  %123 = icmp sgt i32 %35, -1
  br i1 %123, label %125, label %124

124:                                              ; preds = %.loopexit141
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 417, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

125:                                              ; preds = %.loopexit141
  %126 = icmp eq i32 %35, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %125
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void

128:                                              ; preds = %1548, %.loopexit143, %390, %140
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

129:                                              ; preds = %125
  %130 = add nsw i32 %35, -1
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !112
  %134 = getelementptr inbounds nuw i8, ptr %132, i64 8
  %135 = load ptr, ptr %134, align 8, !tbaa !114
  %136 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %137 = load i32, ptr %136, align 8, !tbaa !115
  %138 = getelementptr inbounds nuw i8, ptr %132, i64 20
  %139 = load i32, ptr %138, align 4, !tbaa !116
  br label %.backedge.backedge

140:                                              ; preds = %.backedge
  %141 = sext i32 %33 to i64
  %142 = getelementptr inbounds i8, ptr %0, i64 %141
  %143 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %36, i32 -1)
  %144 = extractvalue { i32, i1 } %143, 0, !nosanitize !10
  %145 = extractvalue { i32, i1 } %143, 1, !nosanitize !10
  br i1 %145, label %128, label %146, !prof !11, !nosanitize !10

146:                                              ; preds = %140
  %147 = icmp eq i32 %36, 0
  br i1 %147, label %148, label %.loopexit157

148:                                              ; preds = %146
  %149 = icmp samesign ult i64 %40, 2147483648
  br i1 %149, label %151, label %150

150:                                              ; preds = %148
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 422, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

151:                                              ; preds = %148
  %152 = trunc nuw nsw i64 %40 to i32
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  %156 = lshr i64 %40, 1
  br label %180

157:                                              ; preds = %151
  %158 = add nsw i32 %152, -1
  %159 = lshr i32 %158, 1
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !5
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [4 x i8], ptr %1, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !5
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, ptr %142, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !9
  %169 = zext nneg i32 %158 to i64
  %170 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !5
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [4 x i8], ptr %1, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !5
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %142, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !9
  %178 = icmp ult i8 %168, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %157
  store i32 %162, ptr %170, align 4, !tbaa !5
  store i32 %171, ptr %161, align 4, !tbaa !5
  br label %180

180:                                              ; preds = %179, %157, %155
  %181 = phi i64 [ %156, %155 ], [ %160, %179 ], [ %160, %157 ]
  %182 = phi i32 [ %152, %155 ], [ %158, %179 ], [ %158, %157 ]
  br label %183

183:                                              ; preds = %233, %180
  %184 = phi i64 [ %181, %180 ], [ %185, %233 ]
  %185 = add nsw i64 %184, -1
  %186 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !5
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [4 x i8], ptr %1, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !5
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, ptr %142, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !9
  %194 = trunc nuw nsw i64 %185 to i32
  br label %196

195:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

196:                                              ; preds = %223, %183
  %197 = phi i32 [ %225, %223 ], [ %194, %183 ]
  %198 = shl nsw i32 %197, 1
  %199 = or disjoint i32 %198, 1
  %200 = icmp slt i32 %199, %182
  br i1 %200, label %201, label %233

201:                                              ; preds = %196
  %202 = add nsw i32 %198, 2
  %203 = sext i32 %199 to i64
  %204 = getelementptr inbounds [4 x i8], ptr %34, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !5
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [4 x i8], ptr %1, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !5
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, ptr %142, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !9
  %212 = sext i32 %202 to i64
  %213 = getelementptr inbounds [4 x i8], ptr %34, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !5
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [4 x i8], ptr %1, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !5
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, ptr %142, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !9
  %221 = tail call i8 @llvm.umax.i8(i8 %211, i8 %220)
  %222 = icmp ugt i8 %221, %193
  br i1 %222, label %223, label %233

223:                                              ; preds = %201
  %224 = icmp ult i8 %211, %220
  %225 = select i1 %224, i32 %202, i32 %199
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [4 x i8], ptr %34, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !5
  %229 = sext i32 %197 to i64
  %230 = getelementptr inbounds [4 x i8], ptr %34, i64 %229
  store i32 %228, ptr %230, align 4, !tbaa !5
  %231 = add i32 %225, 1073741824
  %232 = icmp sgt i32 %231, -1
  br i1 %232, label %196, label %195, !prof !61, !llvm.loop !117, !nosanitize !10

233:                                              ; preds = %201, %196
  %234 = sext i32 %197 to i64
  %235 = getelementptr inbounds [4 x i8], ptr %34, i64 %234
  store i32 %187, ptr %235, align 4, !tbaa !5
  %236 = icmp sgt i64 %184, 1
  br i1 %236, label %183, label %237, !llvm.loop !118

237:                                              ; preds = %233
  br i1 %154, label %238, label %291

238:                                              ; preds = %237
  %239 = load i32, ptr %34, align 4, !tbaa !5
  %240 = zext nneg i32 %182 to i64
  %241 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !5
  store i32 %242, ptr %34, align 4, !tbaa !5
  store i32 %239, ptr %241, align 4, !tbaa !5
  %243 = load i32, ptr %34, align 4, !tbaa !5
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [4 x i8], ptr %1, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !5
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, ptr %142, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !9
  br label %251

250:                                              ; preds = %278
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

251:                                              ; preds = %278, %238
  %252 = phi i32 [ %280, %278 ], [ 0, %238 ]
  %253 = shl nsw i32 %252, 1
  %254 = or disjoint i32 %253, 1
  %255 = icmp slt i32 %254, %182
  br i1 %255, label %256, label %288

256:                                              ; preds = %251
  %257 = add nsw i32 %253, 2
  %258 = sext i32 %254 to i64
  %259 = getelementptr inbounds [4 x i8], ptr %34, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !5
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i8], ptr %1, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !5
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, ptr %142, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !9
  %267 = sext i32 %257 to i64
  %268 = getelementptr inbounds [4 x i8], ptr %34, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !5
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [4 x i8], ptr %1, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !5
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, ptr %142, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !9
  %276 = tail call i8 @llvm.umax.i8(i8 %266, i8 %275)
  %277 = icmp ugt i8 %276, %249
  br i1 %277, label %278, label %288

278:                                              ; preds = %256
  %279 = icmp ult i8 %266, %275
  %280 = select i1 %279, i32 %257, i32 %254
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [4 x i8], ptr %34, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !5
  %284 = sext i32 %252 to i64
  %285 = getelementptr inbounds [4 x i8], ptr %34, i64 %284
  store i32 %283, ptr %285, align 4, !tbaa !5
  %286 = add i32 %280, 1073741824
  %287 = icmp sgt i32 %286, -1
  br i1 %287, label %251, label %250, !prof !61, !llvm.loop !117, !nosanitize !10

288:                                              ; preds = %256, %251
  %289 = sext i32 %252 to i64
  %290 = getelementptr inbounds [4 x i8], ptr %34, i64 %289
  store i32 %243, ptr %290, align 4, !tbaa !5
  br label %291

291:                                              ; preds = %288, %237
  %292 = add nsw i32 %182, -1
  %293 = zext nneg i32 %292 to i64
  br label %294

294:                                              ; preds = %343, %291
  %295 = phi i64 [ %293, %291 ], [ %346, %343 ]
  %296 = load i32, ptr %34, align 4, !tbaa !5
  %297 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %295
  %298 = load i32, ptr %297, align 4, !tbaa !5
  store i32 %298, ptr %34, align 4, !tbaa !5
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x i8], ptr %1, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !5
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8, ptr %142, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !9
  br label %306

305:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

306:                                              ; preds = %333, %294
  %307 = phi i32 [ %335, %333 ], [ 0, %294 ]
  %308 = shl nsw i32 %307, 1
  %309 = or disjoint i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = icmp sgt i64 %295, %310
  br i1 %311, label %312, label %343

312:                                              ; preds = %306
  %313 = add nsw i32 %308, 2
  %314 = getelementptr inbounds [4 x i8], ptr %34, i64 %310
  %315 = load i32, ptr %314, align 4, !tbaa !5
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [4 x i8], ptr %1, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !5
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, ptr %142, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !9
  %322 = sext i32 %313 to i64
  %323 = getelementptr inbounds [4 x i8], ptr %34, i64 %322
  %324 = load i32, ptr %323, align 4, !tbaa !5
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [4 x i8], ptr %1, i64 %325
  %327 = load i32, ptr %326, align 4, !tbaa !5
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, ptr %142, i64 %328
  %330 = load i8, ptr %329, align 1, !tbaa !9
  %331 = tail call i8 @llvm.umax.i8(i8 %321, i8 %330)
  %332 = icmp ugt i8 %331, %304
  br i1 %332, label %333, label %343

333:                                              ; preds = %312
  %334 = icmp ult i8 %321, %330
  %335 = select i1 %334, i32 %313, i32 %309
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [4 x i8], ptr %34, i64 %336
  %338 = load i32, ptr %337, align 4, !tbaa !5
  %339 = sext i32 %307 to i64
  %340 = getelementptr inbounds [4 x i8], ptr %34, i64 %339
  store i32 %338, ptr %340, align 4, !tbaa !5
  %341 = add i32 %335, 1073741824
  %342 = icmp sgt i32 %341, -1
  br i1 %342, label %306, label %305, !prof !61, !llvm.loop !117, !nosanitize !10

343:                                              ; preds = %312, %306
  %344 = sext i32 %307 to i64
  %345 = getelementptr inbounds [4 x i8], ptr %34, i64 %344
  store i32 %298, ptr %345, align 4, !tbaa !5
  store i32 %296, ptr %297, align 4, !tbaa !5
  %346 = add nsw i64 %295, -1
  %347 = icmp sgt i64 %295, 1
  br i1 %347, label %294, label %.loopexit157, !llvm.loop !119

.loopexit157:                                     ; preds = %343, %146
  %348 = icmp slt i32 %144, 0
  br i1 %348, label %349, label %575

349:                                              ; preds = %.loopexit157
  %350 = load i32, ptr %34, align 4, !tbaa !5
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [4 x i8], ptr %1, i64 %351
  %353 = load i32, ptr %352, align 4, !tbaa !5
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, ptr %142, i64 %354
  %356 = load i8, ptr %355, align 1, !tbaa !9
  %357 = zext i8 %356 to i32
  %358 = getelementptr inbounds nuw i8, ptr %34, i64 4
  %359 = icmp ult ptr %358, %32
  br i1 %359, label %.preheader142, label %390

.preheader142:                                    ; preds = %349, %377
  %360 = phi ptr [ %380, %377 ], [ %358, %349 ]
  %361 = phi i32 [ %379, %377 ], [ %357, %349 ]
  %362 = phi ptr [ %378, %377 ], [ %34, %349 ]
  %363 = load i32, ptr %360, align 4, !tbaa !5
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [4 x i8], ptr %1, i64 %364
  %366 = load i32, ptr %365, align 4, !tbaa !5
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, ptr %142, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !9
  %370 = zext i8 %369 to i32
  %371 = icmp eq i32 %361, %370
  br i1 %371, label %377, label %372

372:                                              ; preds = %.preheader142
  %373 = ptrtoint ptr %360 to i64
  %374 = ptrtoint ptr %362 to i64
  %375 = sub i64 %373, %374
  %376 = icmp sgt i64 %375, 4
  br i1 %376, label %382, label %377

377:                                              ; preds = %372, %.preheader142
  %378 = phi ptr [ %362, %.preheader142 ], [ %360, %372 ]
  %379 = phi i32 [ %361, %.preheader142 ], [ %370, %372 ]
  %380 = getelementptr inbounds nuw i8, ptr %360, i64 4
  %381 = icmp ult ptr %380, %32
  br i1 %381, label %.preheader142, label %382, !llvm.loop !120

382:                                              ; preds = %377, %372
  %383 = phi ptr [ %378, %377 ], [ %362, %372 ]
  %384 = phi i32 [ %379, %377 ], [ %361, %372 ]
  %385 = phi ptr [ %380, %377 ], [ %360, %372 ]
  %386 = load i32, ptr %383, align 4, !tbaa !5
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [4 x i8], ptr %1, i64 %387
  %389 = load i32, ptr %388, align 4, !tbaa !5
  br label %390

390:                                              ; preds = %382, %349
  %391 = phi i32 [ %353, %349 ], [ %389, %382 ]
  %392 = phi ptr [ %34, %349 ], [ %383, %382 ]
  %393 = phi i32 [ %357, %349 ], [ %384, %382 ]
  %394 = phi ptr [ %358, %349 ], [ %385, %382 ]
  %395 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %391, i32 -1)
  %396 = extractvalue { i32, i1 } %395, 1, !nosanitize !10
  br i1 %396, label %128, label %397, !prof !11, !nosanitize !10

397:                                              ; preds = %390
  %398 = extractvalue { i32, i1 } %395, 0, !nosanitize !10
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, ptr %142, i64 %399
  %401 = load i8, ptr %400, align 1, !tbaa !9
  %402 = zext i8 %401 to i32
  %403 = icmp samesign ugt i32 %393, %402
  br i1 %403, label %404, label %470

404:                                              ; preds = %397
  %405 = getelementptr inbounds i8, ptr %392, i64 -4
  br label %406

406:                                              ; preds = %462, %404
  %407 = phi ptr [ %394, %404 ], [ %439, %462 ]
  %408 = phi ptr [ %405, %404 ], [ %436, %462 ]
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 4
  %410 = icmp ult ptr %409, %407
  br i1 %410, label %.preheader120, label %.loopexit122

.preheader120:                                    ; preds = %406, %432
  %411 = phi ptr [ %434, %432 ], [ %409, %406 ]
  %412 = load i32, ptr %411, align 4, !tbaa !5
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [4 x i8], ptr %1, i64 %413
  %415 = load i32, ptr %414, align 4, !tbaa !5
  %416 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %415, i32 %33), !nosanitize !10
  %417 = extractvalue { i32, i1 } %416, 0, !nosanitize !10
  %418 = extractvalue { i32, i1 } %416, 1, !nosanitize !10
  br i1 %418, label %.loopexit119, label %419, !prof !11, !nosanitize !10

.loopexit119:                                     ; preds = %422, %419, %.preheader120, %452, %449, %441
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

419:                                              ; preds = %.preheader120
  %420 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %412, i32 1), !nosanitize !10
  %421 = extractvalue { i32, i1 } %420, 1, !nosanitize !10
  br i1 %421, label %.loopexit119, label %422, !prof !11, !nosanitize !10

422:                                              ; preds = %419
  %423 = extractvalue { i32, i1 } %420, 0, !nosanitize !10
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [4 x i8], ptr %1, i64 %424
  %426 = load i32, ptr %425, align 4, !tbaa !5
  %427 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %426, i32 1), !nosanitize !10
  %428 = extractvalue { i32, i1 } %427, 1, !nosanitize !10
  br i1 %428, label %.loopexit119, label %429, !prof !11, !nosanitize !10

429:                                              ; preds = %422
  %430 = extractvalue { i32, i1 } %427, 0, !nosanitize !10
  %431 = icmp slt i32 %417, %430
  br i1 %431, label %.loopexit122, label %432

432:                                              ; preds = %429
  %433 = xor i32 %412, -1
  store i32 %433, ptr %411, align 4, !tbaa !5
  %434 = getelementptr inbounds nuw i8, ptr %411, i64 4
  %435 = icmp ult ptr %434, %407
  br i1 %435, label %.preheader120, label %.loopexit122, !llvm.loop !121

.loopexit122:                                     ; preds = %432, %429, %406
  %436 = phi ptr [ %409, %406 ], [ %411, %429 ], [ %434, %432 ]
  br label %437

437:                                              ; preds = %459, %.loopexit122
  %438 = phi ptr [ %407, %.loopexit122 ], [ %439, %459 ]
  %439 = getelementptr inbounds i8, ptr %438, i64 -4
  %440 = icmp ult ptr %436, %439
  br i1 %440, label %441, label %465

441:                                              ; preds = %437
  %442 = load i32, ptr %439, align 4, !tbaa !5
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [4 x i8], ptr %1, i64 %443
  %445 = load i32, ptr %444, align 4, !tbaa !5
  %446 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %445, i32 %33), !nosanitize !10
  %447 = extractvalue { i32, i1 } %446, 0, !nosanitize !10
  %448 = extractvalue { i32, i1 } %446, 1, !nosanitize !10
  br i1 %448, label %.loopexit119, label %449, !prof !11, !nosanitize !10

449:                                              ; preds = %441
  %450 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %442, i32 1), !nosanitize !10
  %451 = extractvalue { i32, i1 } %450, 1, !nosanitize !10
  br i1 %451, label %.loopexit119, label %452, !prof !11, !nosanitize !10

452:                                              ; preds = %449
  %453 = extractvalue { i32, i1 } %450, 0, !nosanitize !10
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [4 x i8], ptr %1, i64 %454
  %456 = load i32, ptr %455, align 4, !tbaa !5
  %457 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %456, i32 1), !nosanitize !10
  %458 = extractvalue { i32, i1 } %457, 1, !nosanitize !10
  br i1 %458, label %.loopexit119, label %459, !prof !11, !nosanitize !10

459:                                              ; preds = %452
  %460 = extractvalue { i32, i1 } %457, 0, !nosanitize !10
  %461 = icmp slt i32 %447, %460
  br i1 %461, label %437, label %462, !llvm.loop !122

462:                                              ; preds = %459
  %463 = xor i32 %442, -1
  %464 = load i32, ptr %436, align 4, !tbaa !5
  store i32 %464, ptr %439, align 4, !tbaa !5
  store i32 %463, ptr %436, align 4, !tbaa !5
  br label %406

465:                                              ; preds = %437
  %466 = icmp ult ptr %392, %436
  br i1 %466, label %467, label %470

467:                                              ; preds = %465
  %468 = load i32, ptr %392, align 4, !tbaa !5
  %469 = xor i32 %468, -1
  store i32 %469, ptr %392, align 4, !tbaa !5
  br label %470

470:                                              ; preds = %467, %465, %397
  %471 = phi ptr [ %392, %397 ], [ %436, %465 ], [ %436, %467 ]
  %472 = ptrtoint ptr %394 to i64
  %473 = ptrtoint ptr %471 to i64
  %474 = sub i64 %472, %473
  %475 = ashr exact i64 %474, 2
  %476 = sub i64 %37, %472
  %477 = ashr exact i64 %476, 2
  %478 = icmp sgt i64 %475, %477
  br i1 %478, label %514, label %479

479:                                              ; preds = %470
  %480 = icmp sgt i64 %475, 1
  br i1 %480, label %481, label %.backedge.backedge

481:                                              ; preds = %479
  %482 = icmp slt i32 %35, 16
  br i1 %482, label %484, label %483

483:                                              ; preds = %481
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

484:                                              ; preds = %481
  %485 = sext i32 %35 to i64
  %486 = getelementptr inbounds [24 x i8], ptr %5, i64 %485
  store ptr %394, ptr %486, align 8, !tbaa !112
  %487 = getelementptr inbounds nuw i8, ptr %486, i64 8
  store ptr %32, ptr %487, align 8, !tbaa !114
  %488 = getelementptr inbounds nuw i8, ptr %486, i64 16
  store i32 %33, ptr %488, align 8, !tbaa !115
  %489 = add nsw i32 %35, 1
  %490 = getelementptr inbounds nuw i8, ptr %486, i64 20
  store i32 -1, ptr %490, align 4, !tbaa !116
  %491 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 1), !nosanitize !10
  %492 = extractvalue { i32, i1 } %491, 0, !nosanitize !10
  %493 = extractvalue { i32, i1 } %491, 1, !nosanitize !10
  br i1 %493, label %494, label %495, !prof !11, !nosanitize !10

494:                                              ; preds = %1650, %1544, %1515, %1474, %1422, %1388, %1347, %1295, %551, %519, %484
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

495:                                              ; preds = %484
  %496 = icmp samesign ult i64 %475, 2147483648
  br i1 %496, label %498, label %497

497:                                              ; preds = %495
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 437, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

498:                                              ; preds = %495
  %499 = and i64 %474, 261120
  %500 = icmp eq i64 %499, 0
  br i1 %500, label %510, label %501

501:                                              ; preds = %498
  %502 = lshr i64 %475, 8
  %503 = and i64 %502, 255
  %504 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %503
  %505 = load i32, ptr %504, align 4, !tbaa !5
  %506 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %505, i32 8), !nosanitize !10
  %507 = extractvalue { i32, i1 } %506, 0, !nosanitize !10
  %508 = extractvalue { i32, i1 } %506, 1, !nosanitize !10
  br i1 %508, label %509, label %.backedge.backedge, !prof !11, !nosanitize !10

509:                                              ; preds = %501
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

510:                                              ; preds = %498
  %511 = and i64 %475, 255
  %512 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %511
  %513 = load i32, ptr %512, align 4, !tbaa !5
  br label %.backedge.backedge

514:                                              ; preds = %470
  %515 = icmp sgt i64 %477, 1
  br i1 %515, label %516, label %551

516:                                              ; preds = %514
  %517 = icmp slt i32 %35, 16
  br i1 %517, label %519, label %518

518:                                              ; preds = %516
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 443, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

519:                                              ; preds = %516
  %520 = sext i32 %35 to i64
  %521 = getelementptr inbounds [24 x i8], ptr %5, i64 %520
  store ptr %471, ptr %521, align 8, !tbaa !112
  %522 = getelementptr inbounds nuw i8, ptr %521, i64 8
  store ptr %394, ptr %522, align 8, !tbaa !114
  %523 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 1), !nosanitize !10
  %524 = extractvalue { i32, i1 } %523, 1, !nosanitize !10
  br i1 %524, label %494, label %525, !prof !11, !nosanitize !10

525:                                              ; preds = %519
  %526 = extractvalue { i32, i1 } %523, 0, !nosanitize !10
  %527 = getelementptr inbounds nuw i8, ptr %521, i64 16
  store i32 %526, ptr %527, align 8, !tbaa !115
  %528 = add nsw i64 %475, 2147483648
  %529 = icmp ult i64 %528, 4294967296
  br i1 %529, label %531, label %530

530:                                              ; preds = %525
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 443, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

531:                                              ; preds = %525
  %532 = and i64 %474, 261120
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %543, label %534

534:                                              ; preds = %531
  %535 = lshr i64 %475, 8
  %536 = and i64 %535, 255
  %537 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %536
  %538 = load i32, ptr %537, align 4, !tbaa !5
  %539 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %538, i32 8), !nosanitize !10
  %540 = extractvalue { i32, i1 } %539, 0, !nosanitize !10
  %541 = extractvalue { i32, i1 } %539, 1, !nosanitize !10
  br i1 %541, label %542, label %547, !prof !11, !nosanitize !10

542:                                              ; preds = %534
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

543:                                              ; preds = %531
  %544 = and i64 %475, 255
  %545 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %544
  %546 = load i32, ptr %545, align 4, !tbaa !5
  br label %547

547:                                              ; preds = %543, %534
  %548 = phi i32 [ %540, %534 ], [ %546, %543 ]
  %549 = add nsw i32 %35, 1
  %550 = getelementptr inbounds nuw i8, ptr %521, i64 20
  store i32 %548, ptr %550, align 4, !tbaa !116
  br label %.backedge.backedge

551:                                              ; preds = %514
  %552 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 1), !nosanitize !10
  %553 = extractvalue { i32, i1 } %552, 0, !nosanitize !10
  %554 = extractvalue { i32, i1 } %552, 1, !nosanitize !10
  br i1 %554, label %494, label %555, !prof !11, !nosanitize !10

555:                                              ; preds = %551
  %556 = add nsw i64 %475, 2147483648
  %557 = icmp ult i64 %556, 4294967296
  br i1 %557, label %559, label %558

558:                                              ; preds = %555
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

559:                                              ; preds = %555
  %560 = and i64 %474, 261120
  %561 = icmp eq i64 %560, 0
  br i1 %561, label %571, label %562

562:                                              ; preds = %559
  %563 = lshr i64 %475, 8
  %564 = and i64 %563, 255
  %565 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %564
  %566 = load i32, ptr %565, align 4, !tbaa !5
  %567 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %566, i32 8), !nosanitize !10
  %568 = extractvalue { i32, i1 } %567, 0, !nosanitize !10
  %569 = extractvalue { i32, i1 } %567, 1, !nosanitize !10
  br i1 %569, label %570, label %.backedge.backedge, !prof !11, !nosanitize !10

570:                                              ; preds = %562
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

571:                                              ; preds = %559
  %572 = and i64 %475, 255
  %573 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %572
  %574 = load i32, ptr %573, align 4, !tbaa !5
  br label %.backedge.backedge

575:                                              ; preds = %.loopexit157
  %576 = icmp ult i64 %40, 2147483648
  br i1 %576, label %578, label %577

577:                                              ; preds = %575
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 356, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_pivot) #10
  unreachable

578:                                              ; preds = %575
  %579 = lshr i64 %40, 1
  %580 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %579
  %581 = icmp samesign ult i64 %40, 513
  br i1 %581, label %582, label %736

582:                                              ; preds = %578
  %583 = icmp samesign ult i64 %40, 33
  br i1 %583, label %584, label %628

584:                                              ; preds = %582
  %585 = getelementptr inbounds i8, ptr %32, i64 -4
  %586 = load i32, ptr %34, align 4, !tbaa !5
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [4 x i8], ptr %1, i64 %587
  %589 = load i32, ptr %588, align 4, !tbaa !5
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i8, ptr %142, i64 %590
  %592 = load i8, ptr %591, align 1, !tbaa !9
  %593 = load i32, ptr %580, align 4, !tbaa !5
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds [4 x i8], ptr %1, i64 %594
  %596 = load i32, ptr %595, align 4, !tbaa !5
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i8, ptr %142, i64 %597
  %599 = load i8, ptr %598, align 1, !tbaa !9
  %600 = icmp ugt i8 %592, %599
  %601 = select i1 %600, i32 %586, i32 %593
  %602 = select i1 %600, ptr %34, ptr %580
  %603 = sext i32 %601 to i64
  %604 = getelementptr inbounds [4 x i8], ptr %1, i64 %603
  %605 = load i32, ptr %604, align 4, !tbaa !5
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i8, ptr %142, i64 %606
  %608 = load i8, ptr %607, align 1, !tbaa !9
  %609 = load i32, ptr %585, align 4, !tbaa !5
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds [4 x i8], ptr %1, i64 %610
  %612 = load i32, ptr %611, align 4, !tbaa !5
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i8, ptr %142, i64 %613
  %615 = load i8, ptr %614, align 1, !tbaa !9
  %616 = icmp ugt i8 %608, %615
  br i1 %616, label %617, label %926

617:                                              ; preds = %584
  %618 = select i1 %600, i32 %593, i32 %586
  %619 = select i1 %600, ptr %580, ptr %34
  %620 = sext i32 %618 to i64
  %621 = getelementptr inbounds [4 x i8], ptr %1, i64 %620
  %622 = load i32, ptr %621, align 4, !tbaa !5
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i8, ptr %142, i64 %623
  %625 = load i8, ptr %624, align 1, !tbaa !9
  %626 = icmp ugt i8 %625, %615
  %627 = select i1 %626, ptr %619, ptr %585
  br label %926

628:                                              ; preds = %582
  %629 = lshr i64 %40, 2
  %630 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %629
  %631 = getelementptr inbounds i8, ptr %32, i64 -4
  %632 = sub nsw i64 0, %629
  %633 = getelementptr inbounds [4 x i8], ptr %631, i64 %632
  %634 = load i32, ptr %630, align 4, !tbaa !5
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds [4 x i8], ptr %1, i64 %635
  %637 = load i32, ptr %636, align 4, !tbaa !5
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds i8, ptr %142, i64 %638
  %640 = load i8, ptr %639, align 1, !tbaa !9
  %641 = load i32, ptr %580, align 4, !tbaa !5
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds [4 x i8], ptr %1, i64 %642
  %644 = load i32, ptr %643, align 4, !tbaa !5
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i8, ptr %142, i64 %645
  %647 = load i8, ptr %646, align 1, !tbaa !9
  %648 = icmp ugt i8 %640, %647
  %649 = select i1 %648, i32 %641, i32 %634
  %650 = select i1 %648, ptr %580, ptr %630
  %651 = select i1 %648, ptr %630, ptr %580
  %652 = load i32, ptr %633, align 4, !tbaa !5
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [4 x i8], ptr %1, i64 %653
  %655 = load i32, ptr %654, align 4, !tbaa !5
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds i8, ptr %142, i64 %656
  %658 = load i8, ptr %657, align 1, !tbaa !9
  %659 = load i32, ptr %631, align 4, !tbaa !5
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds [4 x i8], ptr %1, i64 %660
  %662 = load i32, ptr %661, align 4, !tbaa !5
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i8, ptr %142, i64 %663
  %665 = load i8, ptr %664, align 1, !tbaa !9
  %666 = icmp ugt i8 %658, %665
  %667 = select i1 %666, i32 %659, i32 %652
  %668 = select i1 %666, ptr %631, ptr %633
  %669 = select i1 %666, ptr %633, ptr %631
  %670 = sext i32 %649 to i64
  %671 = getelementptr inbounds [4 x i8], ptr %1, i64 %670
  %672 = load i32, ptr %671, align 4, !tbaa !5
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds i8, ptr %142, i64 %673
  %675 = load i8, ptr %674, align 1, !tbaa !9
  %676 = sext i32 %667 to i64
  %677 = getelementptr inbounds [4 x i8], ptr %1, i64 %676
  %678 = load i32, ptr %677, align 4, !tbaa !5
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds i8, ptr %142, i64 %679
  %681 = load i8, ptr %680, align 1, !tbaa !9
  %682 = icmp ugt i8 %675, %681
  %683 = select i1 %682, ptr %669, ptr %651
  %684 = select i1 %682, ptr %650, ptr %668
  %685 = select i1 %682, ptr %651, ptr %669
  %686 = load i32, ptr %34, align 4, !tbaa !5
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [4 x i8], ptr %1, i64 %687
  %689 = load i32, ptr %688, align 4, !tbaa !5
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i8, ptr %142, i64 %690
  %692 = load i8, ptr %691, align 1, !tbaa !9
  %693 = load i32, ptr %683, align 4, !tbaa !5
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds [4 x i8], ptr %1, i64 %694
  %696 = load i32, ptr %695, align 4, !tbaa !5
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds i8, ptr %142, i64 %697
  %699 = load i8, ptr %698, align 1, !tbaa !9
  %700 = icmp ugt i8 %692, %699
  %701 = select i1 %700, i32 %693, i32 %686
  %702 = select i1 %700, ptr %683, ptr %34
  %703 = select i1 %700, ptr %34, ptr %683
  %704 = sext i32 %701 to i64
  %705 = getelementptr inbounds [4 x i8], ptr %1, i64 %704
  %706 = load i32, ptr %705, align 4, !tbaa !5
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds i8, ptr %142, i64 %707
  %709 = load i8, ptr %708, align 1, !tbaa !9
  %710 = load i32, ptr %684, align 4, !tbaa !5
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds [4 x i8], ptr %1, i64 %711
  %713 = load i32, ptr %712, align 4, !tbaa !5
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds i8, ptr %142, i64 %714
  %716 = load i8, ptr %715, align 1, !tbaa !9
  %717 = icmp ugt i8 %709, %716
  %718 = select i1 %717, ptr %685, ptr %703
  %719 = select i1 %717, ptr %702, ptr %684
  %720 = load i32, ptr %718, align 4, !tbaa !5
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds [4 x i8], ptr %1, i64 %721
  %723 = load i32, ptr %722, align 4, !tbaa !5
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds i8, ptr %142, i64 %724
  %726 = load i8, ptr %725, align 1, !tbaa !9
  %727 = load i32, ptr %719, align 4, !tbaa !5
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds [4 x i8], ptr %1, i64 %728
  %730 = load i32, ptr %729, align 4, !tbaa !5
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds i8, ptr %142, i64 %731
  %733 = load i8, ptr %732, align 1, !tbaa !9
  %734 = icmp ugt i8 %726, %733
  %735 = select i1 %734, ptr %719, ptr %718
  br label %926

736:                                              ; preds = %578
  %737 = trunc nuw nsw i64 %40 to i32
  %738 = lshr i32 %737, 3
  %739 = zext nneg i32 %738 to i64
  %740 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %739
  %741 = shl nuw nsw i32 %738, 1
  %742 = zext nneg i32 %741 to i64
  %743 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %742
  %744 = load i32, ptr %34, align 4, !tbaa !5
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds [4 x i8], ptr %1, i64 %745
  %747 = load i32, ptr %746, align 4, !tbaa !5
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds i8, ptr %142, i64 %748
  %750 = load i8, ptr %749, align 1, !tbaa !9
  %751 = load i32, ptr %740, align 4, !tbaa !5
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds [4 x i8], ptr %1, i64 %752
  %754 = load i32, ptr %753, align 4, !tbaa !5
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds i8, ptr %142, i64 %755
  %757 = load i8, ptr %756, align 1, !tbaa !9
  %758 = icmp ugt i8 %750, %757
  %759 = select i1 %758, i32 %744, i32 %751
  %760 = select i1 %758, ptr %34, ptr %740
  %761 = sext i32 %759 to i64
  %762 = getelementptr inbounds [4 x i8], ptr %1, i64 %761
  %763 = load i32, ptr %762, align 4, !tbaa !5
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds i8, ptr %142, i64 %764
  %766 = load i8, ptr %765, align 1, !tbaa !9
  %767 = load i32, ptr %743, align 4, !tbaa !5
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds [4 x i8], ptr %1, i64 %768
  %770 = load i32, ptr %769, align 4, !tbaa !5
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds i8, ptr %142, i64 %771
  %773 = load i8, ptr %772, align 1, !tbaa !9
  %774 = icmp ugt i8 %766, %773
  br i1 %774, label %775, label %786

775:                                              ; preds = %736
  %776 = select i1 %758, i32 %751, i32 %744
  %777 = select i1 %758, ptr %740, ptr %34
  %778 = sext i32 %776 to i64
  %779 = getelementptr inbounds [4 x i8], ptr %1, i64 %778
  %780 = load i32, ptr %779, align 4, !tbaa !5
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds i8, ptr %142, i64 %781
  %783 = load i8, ptr %782, align 1, !tbaa !9
  %784 = icmp ugt i8 %783, %773
  %785 = select i1 %784, ptr %777, ptr %743
  br label %786

786:                                              ; preds = %775, %736
  %787 = phi ptr [ %785, %775 ], [ %760, %736 ]
  %788 = sub nsw i64 0, %739
  %789 = getelementptr inbounds [4 x i8], ptr %580, i64 %788
  %790 = getelementptr inbounds nuw [4 x i8], ptr %580, i64 %739
  %791 = load i32, ptr %789, align 4, !tbaa !5
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds [4 x i8], ptr %1, i64 %792
  %794 = load i32, ptr %793, align 4, !tbaa !5
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds i8, ptr %142, i64 %795
  %797 = load i8, ptr %796, align 1, !tbaa !9
  %798 = load i32, ptr %580, align 4, !tbaa !5
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds [4 x i8], ptr %1, i64 %799
  %801 = load i32, ptr %800, align 4, !tbaa !5
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds i8, ptr %142, i64 %802
  %804 = load i8, ptr %803, align 1, !tbaa !9
  %805 = icmp ugt i8 %797, %804
  %806 = select i1 %805, i32 %791, i32 %798
  %807 = select i1 %805, ptr %789, ptr %580
  %808 = sext i32 %806 to i64
  %809 = getelementptr inbounds [4 x i8], ptr %1, i64 %808
  %810 = load i32, ptr %809, align 4, !tbaa !5
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds i8, ptr %142, i64 %811
  %813 = load i8, ptr %812, align 1, !tbaa !9
  %814 = load i32, ptr %790, align 4, !tbaa !5
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds [4 x i8], ptr %1, i64 %815
  %817 = load i32, ptr %816, align 4, !tbaa !5
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds i8, ptr %142, i64 %818
  %820 = load i8, ptr %819, align 1, !tbaa !9
  %821 = icmp ugt i8 %813, %820
  br i1 %821, label %822, label %833

822:                                              ; preds = %786
  %823 = select i1 %805, i32 %798, i32 %791
  %824 = select i1 %805, ptr %580, ptr %789
  %825 = sext i32 %823 to i64
  %826 = getelementptr inbounds [4 x i8], ptr %1, i64 %825
  %827 = load i32, ptr %826, align 4, !tbaa !5
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds i8, ptr %142, i64 %828
  %830 = load i8, ptr %829, align 1, !tbaa !9
  %831 = icmp ugt i8 %830, %820
  %832 = select i1 %831, ptr %824, ptr %790
  br label %833

833:                                              ; preds = %822, %786
  %834 = phi ptr [ %832, %822 ], [ %807, %786 ]
  %835 = getelementptr inbounds i8, ptr %32, i64 -4
  %836 = sub nsw i64 0, %742
  %837 = getelementptr inbounds [4 x i8], ptr %835, i64 %836
  %838 = getelementptr inbounds [4 x i8], ptr %835, i64 %788
  %839 = load i32, ptr %837, align 4, !tbaa !5
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds [4 x i8], ptr %1, i64 %840
  %842 = load i32, ptr %841, align 4, !tbaa !5
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds i8, ptr %142, i64 %843
  %845 = load i8, ptr %844, align 1, !tbaa !9
  %846 = load i32, ptr %838, align 4, !tbaa !5
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds [4 x i8], ptr %1, i64 %847
  %849 = load i32, ptr %848, align 4, !tbaa !5
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds i8, ptr %142, i64 %850
  %852 = load i8, ptr %851, align 1, !tbaa !9
  %853 = icmp ugt i8 %845, %852
  %854 = select i1 %853, i32 %839, i32 %846
  %855 = select i1 %853, ptr %837, ptr %838
  %856 = sext i32 %854 to i64
  %857 = getelementptr inbounds [4 x i8], ptr %1, i64 %856
  %858 = load i32, ptr %857, align 4, !tbaa !5
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds i8, ptr %142, i64 %859
  %861 = load i8, ptr %860, align 1, !tbaa !9
  %862 = load i32, ptr %835, align 4, !tbaa !5
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds [4 x i8], ptr %1, i64 %863
  %865 = load i32, ptr %864, align 4, !tbaa !5
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds i8, ptr %142, i64 %866
  %868 = load i8, ptr %867, align 1, !tbaa !9
  %869 = icmp ugt i8 %861, %868
  br i1 %869, label %870, label %888

870:                                              ; preds = %833
  %871 = select i1 %853, i32 %846, i32 %839
  %872 = select i1 %853, ptr %838, ptr %837
  %873 = sext i32 %871 to i64
  %874 = getelementptr inbounds [4 x i8], ptr %1, i64 %873
  %875 = load i32, ptr %874, align 4, !tbaa !5
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds i8, ptr %142, i64 %876
  %878 = load i8, ptr %877, align 1, !tbaa !9
  %879 = icmp ugt i8 %878, %868
  %880 = select i1 %879, ptr %872, ptr %835
  %881 = load i32, ptr %880, align 4, !tbaa !5
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds [4 x i8], ptr %1, i64 %882
  %884 = load i32, ptr %883, align 4, !tbaa !5
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds i8, ptr %142, i64 %885
  %887 = load i8, ptr %886, align 1, !tbaa !9
  br label %888

888:                                              ; preds = %870, %833
  %889 = phi i8 [ %861, %833 ], [ %887, %870 ]
  %890 = phi ptr [ %855, %833 ], [ %880, %870 ]
  %891 = load i32, ptr %787, align 4, !tbaa !5
  %892 = sext i32 %891 to i64
  %893 = getelementptr inbounds [4 x i8], ptr %1, i64 %892
  %894 = load i32, ptr %893, align 4, !tbaa !5
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds i8, ptr %142, i64 %895
  %897 = load i8, ptr %896, align 1, !tbaa !9
  %898 = load i32, ptr %834, align 4, !tbaa !5
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds [4 x i8], ptr %1, i64 %899
  %901 = load i32, ptr %900, align 4, !tbaa !5
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds i8, ptr %142, i64 %902
  %904 = load i8, ptr %903, align 1, !tbaa !9
  %905 = icmp ugt i8 %897, %904
  %906 = select i1 %905, i32 %891, i32 %898
  %907 = select i1 %905, ptr %787, ptr %834
  %908 = sext i32 %906 to i64
  %909 = getelementptr inbounds [4 x i8], ptr %1, i64 %908
  %910 = load i32, ptr %909, align 4, !tbaa !5
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds i8, ptr %142, i64 %911
  %913 = load i8, ptr %912, align 1, !tbaa !9
  %914 = icmp ugt i8 %913, %889
  br i1 %914, label %915, label %926

915:                                              ; preds = %888
  %916 = select i1 %905, i32 %898, i32 %891
  %917 = select i1 %905, ptr %834, ptr %787
  %918 = sext i32 %916 to i64
  %919 = getelementptr inbounds [4 x i8], ptr %1, i64 %918
  %920 = load i32, ptr %919, align 4, !tbaa !5
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds i8, ptr %142, i64 %921
  %923 = load i8, ptr %922, align 1, !tbaa !9
  %924 = icmp ugt i8 %923, %889
  %925 = select i1 %924, ptr %917, ptr %890
  br label %926

926:                                              ; preds = %915, %888, %628, %617, %584
  %927 = phi i32 [ %686, %628 ], [ %586, %617 ], [ %586, %584 ], [ %744, %915 ], [ %744, %888 ]
  %928 = phi ptr [ %735, %628 ], [ %627, %617 ], [ %602, %584 ], [ %925, %915 ], [ %907, %888 ]
  %929 = load i32, ptr %928, align 4, !tbaa !5
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds [4 x i8], ptr %1, i64 %930
  %932 = load i32, ptr %931, align 4, !tbaa !5
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds i8, ptr %142, i64 %933
  %935 = load i8, ptr %934, align 1, !tbaa !9
  store i32 %929, ptr %34, align 4, !tbaa !5
  store i32 %927, ptr %928, align 4, !tbaa !5
  br label %936

936:                                              ; preds = %940, %926
  %937 = phi ptr [ %34, %926 ], [ %938, %940 ]
  %938 = getelementptr inbounds nuw i8, ptr %937, i64 4
  %939 = icmp ult ptr %938, %32
  br i1 %939, label %940, label %.loopexit153

940:                                              ; preds = %936
  %941 = load i32, ptr %938, align 4, !tbaa !5
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds [4 x i8], ptr %1, i64 %942
  %944 = load i32, ptr %943, align 4, !tbaa !5
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds i8, ptr %142, i64 %945
  %947 = load i8, ptr %946, align 1, !tbaa !9
  %948 = icmp eq i8 %947, %935
  br i1 %948, label %936, label %949, !llvm.loop !123

949:                                              ; preds = %940
  %950 = icmp ult i8 %947, %935
  br i1 %950, label %951, label %.loopexit153

951:                                              ; preds = %949
  %952 = getelementptr inbounds nuw i8, ptr %937, i64 8
  %953 = icmp ult ptr %952, %32
  br i1 %953, label %.preheader152, label %.loopexit153

.preheader152:                                    ; preds = %951, %969
  %954 = phi ptr [ %971, %969 ], [ %952, %951 ]
  %955 = phi ptr [ %970, %969 ], [ %938, %951 ]
  %956 = load i32, ptr %954, align 4, !tbaa !5
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds [4 x i8], ptr %1, i64 %957
  %959 = load i32, ptr %958, align 4, !tbaa !5
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds i8, ptr %142, i64 %960
  %962 = load i8, ptr %961, align 1, !tbaa !9
  %963 = icmp ugt i8 %962, %935
  br i1 %963, label %.loopexit153, label %964

964:                                              ; preds = %.preheader152
  %965 = icmp eq i8 %962, %935
  br i1 %965, label %966, label %969

966:                                              ; preds = %964
  %967 = load i32, ptr %955, align 4, !tbaa !5
  store i32 %967, ptr %954, align 4, !tbaa !5
  store i32 %956, ptr %955, align 4, !tbaa !5
  %968 = getelementptr inbounds nuw i8, ptr %955, i64 4
  br label %969

969:                                              ; preds = %966, %964
  %970 = phi ptr [ %968, %966 ], [ %955, %964 ]
  %971 = getelementptr inbounds nuw i8, ptr %954, i64 4
  %972 = icmp ult ptr %971, %32
  br i1 %972, label %.preheader152, label %.loopexit153, !llvm.loop !124

.loopexit153:                                     ; preds = %936, %969, %.preheader152, %951, %949
  %973 = phi ptr [ %938, %949 ], [ %938, %951 ], [ %970, %969 ], [ %955, %.preheader152 ], [ %938, %936 ]
  %974 = phi ptr [ %938, %949 ], [ %952, %951 ], [ %971, %969 ], [ %954, %.preheader152 ], [ %938, %936 ]
  br label %975

975:                                              ; preds = %979, %.loopexit153
  %976 = phi ptr [ %32, %.loopexit153 ], [ %977, %979 ]
  %977 = getelementptr inbounds i8, ptr %976, i64 -4
  %978 = icmp ult ptr %974, %977
  br i1 %978, label %979, label %.loopexit148

979:                                              ; preds = %975
  %980 = load i32, ptr %977, align 4, !tbaa !5
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds [4 x i8], ptr %1, i64 %981
  %983 = load i32, ptr %982, align 4, !tbaa !5
  %984 = sext i32 %983 to i64
  %985 = getelementptr inbounds i8, ptr %142, i64 %984
  %986 = load i8, ptr %985, align 1, !tbaa !9
  %987 = icmp eq i8 %986, %935
  br i1 %987, label %975, label %988, !llvm.loop !125

988:                                              ; preds = %979
  %989 = icmp ugt i8 %986, %935
  br i1 %989, label %990, label %.loopexit148

990:                                              ; preds = %988
  %991 = getelementptr inbounds i8, ptr %976, i64 -8
  %992 = icmp ult ptr %974, %991
  br i1 %992, label %.preheader147, label %.loopexit148

.preheader147:                                    ; preds = %990, %1008
  %993 = phi ptr [ %1010, %1008 ], [ %991, %990 ]
  %994 = phi ptr [ %1009, %1008 ], [ %977, %990 ]
  %995 = load i32, ptr %993, align 4, !tbaa !5
  %996 = sext i32 %995 to i64
  %997 = getelementptr inbounds [4 x i8], ptr %1, i64 %996
  %998 = load i32, ptr %997, align 4, !tbaa !5
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds i8, ptr %142, i64 %999
  %1001 = load i8, ptr %1000, align 1, !tbaa !9
  %1002 = icmp ult i8 %1001, %935
  br i1 %1002, label %.loopexit148, label %1003

1003:                                             ; preds = %.preheader147
  %1004 = icmp eq i8 %1001, %935
  br i1 %1004, label %1005, label %1008

1005:                                             ; preds = %1003
  %1006 = load i32, ptr %994, align 4, !tbaa !5
  store i32 %1006, ptr %993, align 4, !tbaa !5
  store i32 %995, ptr %994, align 4, !tbaa !5
  %1007 = getelementptr inbounds i8, ptr %994, i64 -4
  br label %1008

1008:                                             ; preds = %1005, %1003
  %1009 = phi ptr [ %1007, %1005 ], [ %994, %1003 ]
  %1010 = getelementptr inbounds i8, ptr %993, i64 -4
  %1011 = icmp ult ptr %974, %1010
  br i1 %1011, label %.preheader147, label %.loopexit148, !llvm.loop !126

.loopexit148:                                     ; preds = %975, %1008, %.preheader147, %990, %988
  %1012 = phi ptr [ %977, %988 ], [ %991, %990 ], [ %1010, %1008 ], [ %993, %.preheader147 ], [ %977, %975 ]
  %1013 = phi ptr [ %977, %988 ], [ %977, %990 ], [ %1009, %1008 ], [ %994, %.preheader147 ], [ %977, %975 ]
  %1014 = icmp ult ptr %974, %1012
  br i1 %1014, label %.preheader145, label %.loopexit146

.preheader145:                                    ; preds = %.loopexit148, %.loopexit134
  %1015 = phi ptr [ %1065, %.loopexit134 ], [ %1013, %.loopexit148 ]
  %1016 = phi ptr [ %1066, %.loopexit134 ], [ %1012, %.loopexit148 ]
  %1017 = phi ptr [ %1043, %.loopexit134 ], [ %974, %.loopexit148 ]
  %1018 = phi ptr [ %1042, %.loopexit134 ], [ %973, %.loopexit148 ]
  %1019 = load i32, ptr %1017, align 4, !tbaa !5
  %1020 = load i32, ptr %1016, align 4, !tbaa !5
  store i32 %1020, ptr %1017, align 4, !tbaa !5
  store i32 %1019, ptr %1016, align 4, !tbaa !5
  %1021 = getelementptr inbounds nuw i8, ptr %1017, i64 4
  %1022 = icmp ult ptr %1021, %1016
  br i1 %1022, label %.preheader137, label %.loopexit138

.preheader137:                                    ; preds = %.preheader145, %1038
  %1023 = phi ptr [ %1040, %1038 ], [ %1021, %.preheader145 ]
  %1024 = phi ptr [ %1039, %1038 ], [ %1018, %.preheader145 ]
  %1025 = load i32, ptr %1023, align 4, !tbaa !5
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds [4 x i8], ptr %1, i64 %1026
  %1028 = load i32, ptr %1027, align 4, !tbaa !5
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds i8, ptr %142, i64 %1029
  %1031 = load i8, ptr %1030, align 1, !tbaa !9
  %1032 = icmp ugt i8 %1031, %935
  br i1 %1032, label %.loopexit138, label %1033

1033:                                             ; preds = %.preheader137
  %1034 = icmp eq i8 %1031, %935
  br i1 %1034, label %1035, label %1038

1035:                                             ; preds = %1033
  %1036 = load i32, ptr %1024, align 4, !tbaa !5
  store i32 %1036, ptr %1023, align 4, !tbaa !5
  store i32 %1025, ptr %1024, align 4, !tbaa !5
  %1037 = getelementptr inbounds nuw i8, ptr %1024, i64 4
  br label %1038

1038:                                             ; preds = %1035, %1033
  %1039 = phi ptr [ %1037, %1035 ], [ %1024, %1033 ]
  %1040 = getelementptr inbounds nuw i8, ptr %1023, i64 4
  %1041 = icmp ult ptr %1040, %1016
  br i1 %1041, label %.preheader137, label %.loopexit138, !llvm.loop !127

.loopexit138:                                     ; preds = %1038, %.preheader137, %.preheader145
  %1042 = phi ptr [ %1018, %.preheader145 ], [ %1039, %1038 ], [ %1024, %.preheader137 ]
  %1043 = phi ptr [ %1021, %.preheader145 ], [ %1040, %1038 ], [ %1023, %.preheader137 ]
  %1044 = getelementptr inbounds i8, ptr %1016, i64 -4
  %1045 = icmp ult ptr %1043, %1044
  br i1 %1045, label %.preheader133, label %.loopexit134

.preheader133:                                    ; preds = %.loopexit138, %1061
  %1046 = phi ptr [ %1063, %1061 ], [ %1044, %.loopexit138 ]
  %1047 = phi ptr [ %1062, %1061 ], [ %1015, %.loopexit138 ]
  %1048 = load i32, ptr %1046, align 4, !tbaa !5
  %1049 = sext i32 %1048 to i64
  %1050 = getelementptr inbounds [4 x i8], ptr %1, i64 %1049
  %1051 = load i32, ptr %1050, align 4, !tbaa !5
  %1052 = sext i32 %1051 to i64
  %1053 = getelementptr inbounds i8, ptr %142, i64 %1052
  %1054 = load i8, ptr %1053, align 1, !tbaa !9
  %1055 = icmp ult i8 %1054, %935
  br i1 %1055, label %.loopexit134, label %1056

1056:                                             ; preds = %.preheader133
  %1057 = icmp eq i8 %1054, %935
  br i1 %1057, label %1058, label %1061

1058:                                             ; preds = %1056
  %1059 = load i32, ptr %1047, align 4, !tbaa !5
  store i32 %1059, ptr %1046, align 4, !tbaa !5
  store i32 %1048, ptr %1047, align 4, !tbaa !5
  %1060 = getelementptr inbounds i8, ptr %1047, i64 -4
  br label %1061

1061:                                             ; preds = %1058, %1056
  %1062 = phi ptr [ %1060, %1058 ], [ %1047, %1056 ]
  %1063 = getelementptr inbounds i8, ptr %1046, i64 -4
  %1064 = icmp ult ptr %1043, %1063
  br i1 %1064, label %.preheader133, label %.loopexit134, !llvm.loop !128

.loopexit134:                                     ; preds = %1061, %.preheader133, %.loopexit138
  %1065 = phi ptr [ %1015, %.loopexit138 ], [ %1062, %1061 ], [ %1047, %.preheader133 ]
  %1066 = phi ptr [ %1044, %.loopexit138 ], [ %1063, %1061 ], [ %1046, %.preheader133 ]
  %1067 = icmp ult ptr %1043, %1066
  br i1 %1067, label %.preheader145, label %.loopexit146, !llvm.loop !129

.loopexit146:                                     ; preds = %.loopexit134, %.loopexit148
  %1068 = phi ptr [ %973, %.loopexit148 ], [ %1042, %.loopexit134 ]
  %1069 = phi ptr [ %974, %.loopexit148 ], [ %1043, %.loopexit134 ]
  %1070 = phi ptr [ %1013, %.loopexit148 ], [ %1065, %.loopexit134 ]
  %1071 = icmp ugt ptr %1068, %1070
  br i1 %1071, label %1544, label %1072

1072:                                             ; preds = %.loopexit146
  %1073 = getelementptr inbounds i8, ptr %1069, i64 -4
  %1074 = ptrtoint ptr %1068 to i64
  %1075 = sub i64 %1074, %38
  %1076 = ashr exact i64 %1075, 2
  %1077 = add nsw i64 %1076, 2147483648
  %1078 = icmp ult i64 %1077, 4294967296
  br i1 %1078, label %1080, label %1079

1079:                                             ; preds = %1072
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 483, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1080:                                             ; preds = %1072
  %1081 = ptrtoint ptr %1069 to i64
  %1082 = sub i64 %1081, %1074
  %1083 = ashr exact i64 %1082, 2
  %1084 = add nsw i64 %1083, 2147483648
  %1085 = icmp ult i64 %1084, 4294967296
  br i1 %1085, label %1087, label %1086

1086:                                             ; preds = %1080
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 483, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1087:                                             ; preds = %1080
  %1088 = tail call i64 @llvm.smin.i64(i64 %1076, i64 %1083)
  %1089 = icmp sgt i64 %1088, 0
  br i1 %1089, label %1090, label %.loopexit144

1090:                                             ; preds = %1087
  %1091 = sub nsw i64 0, %1088
  %1092 = getelementptr [4 x i8], ptr %1069, i64 %1091
  %1093 = trunc nuw nsw i64 %1088 to i32
  %1094 = icmp samesign ult i64 %1088, 8
  br i1 %1094, label %.preheader571.preheader, label %1095

1095:                                             ; preds = %1090
  %1096 = getelementptr i8, ptr %34, i64 4
  %1097 = shl nuw nsw i64 %1088, 2
  %1098 = add nuw nsw i64 %1097, 17179869180
  %1099 = and i64 %1098, 17179869180
  %1100 = getelementptr i8, ptr %1096, i64 %1099
  %1101 = getelementptr i8, ptr %1069, i64 4
  %1102 = sub nsw i64 %1099, %1097
  %1103 = getelementptr i8, ptr %1101, i64 %1102
  %1104 = icmp ult ptr %34, %1103
  %1105 = icmp ult ptr %1092, %1100
  %1106 = and i1 %1105, %1104
  br i1 %1106, label %.preheader571.preheader, label %1107

1107:                                             ; preds = %1095
  %1108 = and i64 %1088, 8589934584
  br label %1109

1109:                                             ; preds = %1109, %1107
  %1110 = phi i64 [ 0, %1107 ], [ %1120, %1109 ]
  %1111 = shl i64 %1110, 2
  %1112 = getelementptr i8, ptr %1092, i64 %1111
  %1113 = getelementptr i8, ptr %34, i64 %1111
  %1114 = getelementptr i8, ptr %1113, i64 16
  %1115 = load <4 x i32>, ptr %1113, align 4, !tbaa !5, !alias.scope !130, !noalias !133
  %1116 = load <4 x i32>, ptr %1114, align 4, !tbaa !5, !alias.scope !130, !noalias !133
  %1117 = getelementptr i8, ptr %1112, i64 16
  %1118 = load <4 x i32>, ptr %1112, align 4, !tbaa !5, !alias.scope !133
  %1119 = load <4 x i32>, ptr %1117, align 4, !tbaa !5, !alias.scope !133
  store <4 x i32> %1118, ptr %1113, align 4, !tbaa !5, !alias.scope !130, !noalias !133
  store <4 x i32> %1119, ptr %1114, align 4, !tbaa !5, !alias.scope !130, !noalias !133
  store <4 x i32> %1115, ptr %1112, align 4, !tbaa !5, !alias.scope !133
  store <4 x i32> %1116, ptr %1117, align 4, !tbaa !5, !alias.scope !133
  %1120 = add nuw i64 %1110, 8
  %1121 = icmp eq i64 %1120, %1108
  br i1 %1121, label %1122, label %1109, !llvm.loop !135

1122:                                             ; preds = %1109
  %1123 = trunc nuw nsw i64 %1108 to i32
  %1124 = sub nsw i32 %1093, %1123
  %1125 = shl nuw nsw i64 %1108, 2
  %1126 = getelementptr i8, ptr %1092, i64 %1125
  %1127 = getelementptr i8, ptr %34, i64 %1125
  %1128 = icmp eq i64 %1088, %1108
  br i1 %1128, label %.loopexit144, label %.preheader571.preheader

.preheader571.preheader:                          ; preds = %1122, %1095, %1090
  %.ph542 = phi i32 [ %1093, %1095 ], [ %1093, %1090 ], [ %1124, %1122 ]
  %.ph543 = phi ptr [ %1092, %1095 ], [ %1092, %1090 ], [ %1126, %1122 ]
  %.ph544 = phi ptr [ %34, %1095 ], [ %34, %1090 ], [ %1127, %1122 ]
  br label %.preheader571

.preheader571:                                    ; preds = %.preheader571.preheader, %.preheader571
  %1129 = phi i32 [ %1134, %.preheader571 ], [ %.ph542, %.preheader571.preheader ]
  %1130 = phi ptr [ %1136, %.preheader571 ], [ %.ph543, %.preheader571.preheader ]
  %1131 = phi ptr [ %1135, %.preheader571 ], [ %.ph544, %.preheader571.preheader ]
  %1132 = load i32, ptr %1131, align 4, !tbaa !5
  %1133 = load i32, ptr %1130, align 4, !tbaa !5
  store i32 %1133, ptr %1131, align 4, !tbaa !5
  store i32 %1132, ptr %1130, align 4, !tbaa !5
  %1134 = add nsw i32 %1129, -1
  %1135 = getelementptr inbounds nuw i8, ptr %1131, i64 4
  %1136 = getelementptr inbounds nuw i8, ptr %1130, i64 4
  %1137 = icmp samesign ugt i32 %1129, 1
  br i1 %1137, label %.preheader571, label %.loopexit144, !llvm.loop !136

.loopexit144:                                     ; preds = %.preheader571, %1122, %1087
  %1138 = ptrtoint ptr %1070 to i64
  %1139 = ptrtoint ptr %1073 to i64
  %1140 = sub i64 %1138, %1139
  %1141 = ashr exact i64 %1140, 2
  %1142 = add nsw i64 %1141, 2147483648
  %1143 = icmp ult i64 %1142, 4294967296
  br i1 %1143, label %1145, label %1144

1144:                                             ; preds = %.loopexit144
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.src, i32 noundef 485, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1145:                                             ; preds = %.loopexit144
  %1146 = sub i64 %37, %1138
  %1147 = ashr exact i64 %1146, 2
  %1148 = add nsw i64 %1147, 2147483647
  %1149 = icmp ult i64 %1148, 4294967296
  br i1 %1149, label %1151, label %1150

1150:                                             ; preds = %1145
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.src, i32 noundef 485, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1151:                                             ; preds = %1145
  %1152 = trunc nsw i64 %1141 to i32
  %1153 = trunc i64 %1147 to i32
  %1154 = add i32 %1153, -1
  %1155 = tail call i32 @llvm.smin.i32(i32 %1154, i32 %1152)
  %1156 = icmp sgt i32 %1155, 0
  br i1 %1156, label %1157, label %.loopexit143

1157:                                             ; preds = %1151
  %1158 = zext nneg i32 %1155 to i64
  %1159 = sub nsw i64 0, %1158
  %1160 = getelementptr [4 x i8], ptr %32, i64 %1159
  %1161 = icmp samesign ult i32 %1155, 8
  br i1 %1161, label %.preheader567.preheader, label %1162

1162:                                             ; preds = %1157
  %1163 = getelementptr i8, ptr %1069, i64 4
  %1164 = add nsw i32 %1155, -1
  %1165 = zext nneg i32 %1164 to i64
  %1166 = shl nuw nsw i64 %1165, 2
  %1167 = getelementptr i8, ptr %1163, i64 %1166
  %1168 = icmp ult ptr %1069, %32
  %1169 = icmp ult ptr %1160, %1167
  %1170 = and i1 %1168, %1169
  br i1 %1170, label %.preheader567.preheader, label %1171

1171:                                             ; preds = %1162
  %1172 = and i64 %1158, 2147483640
  br label %1173

1173:                                             ; preds = %1173, %1171
  %1174 = phi i64 [ 0, %1171 ], [ %1184, %1173 ]
  %1175 = shl i64 %1174, 2
  %1176 = getelementptr i8, ptr %1160, i64 %1175
  %1177 = getelementptr i8, ptr %1069, i64 %1175
  %1178 = getelementptr i8, ptr %1177, i64 16
  %1179 = load <4 x i32>, ptr %1177, align 4, !tbaa !5, !alias.scope !137, !noalias !140
  %1180 = load <4 x i32>, ptr %1178, align 4, !tbaa !5, !alias.scope !137, !noalias !140
  %1181 = getelementptr i8, ptr %1176, i64 16
  %1182 = load <4 x i32>, ptr %1176, align 4, !tbaa !5, !alias.scope !140
  %1183 = load <4 x i32>, ptr %1181, align 4, !tbaa !5, !alias.scope !140
  store <4 x i32> %1182, ptr %1177, align 4, !tbaa !5, !alias.scope !137, !noalias !140
  store <4 x i32> %1183, ptr %1178, align 4, !tbaa !5, !alias.scope !137, !noalias !140
  store <4 x i32> %1179, ptr %1176, align 4, !tbaa !5, !alias.scope !140
  store <4 x i32> %1180, ptr %1181, align 4, !tbaa !5, !alias.scope !140
  %1184 = add nuw nsw i64 %1174, 8
  %1185 = icmp eq i64 %1184, %1172
  br i1 %1185, label %1186, label %1173, !llvm.loop !142

1186:                                             ; preds = %1173
  %1187 = trunc nuw nsw i64 %1172 to i32
  %1188 = sub nsw i32 %1155, %1187
  %1189 = shl nuw nsw i64 %1172, 2
  %1190 = getelementptr i8, ptr %1160, i64 %1189
  %1191 = getelementptr i8, ptr %1069, i64 %1189
  %1192 = icmp eq i64 %1172, %1158
  br i1 %1192, label %.loopexit143, label %.preheader567.preheader

.preheader567.preheader:                          ; preds = %1186, %1162, %1157
  %.ph539 = phi i32 [ %1155, %1162 ], [ %1155, %1157 ], [ %1188, %1186 ]
  %.ph540 = phi ptr [ %1160, %1162 ], [ %1160, %1157 ], [ %1190, %1186 ]
  %.ph541 = phi ptr [ %1069, %1162 ], [ %1069, %1157 ], [ %1191, %1186 ]
  br label %.preheader567

.preheader567:                                    ; preds = %.preheader567.preheader, %.preheader567
  %1193 = phi i32 [ %1198, %.preheader567 ], [ %.ph539, %.preheader567.preheader ]
  %1194 = phi ptr [ %1200, %.preheader567 ], [ %.ph540, %.preheader567.preheader ]
  %1195 = phi ptr [ %1199, %.preheader567 ], [ %.ph541, %.preheader567.preheader ]
  %1196 = load i32, ptr %1195, align 4, !tbaa !5
  %1197 = load i32, ptr %1194, align 4, !tbaa !5
  store i32 %1197, ptr %1195, align 4, !tbaa !5
  store i32 %1196, ptr %1194, align 4, !tbaa !5
  %1198 = add nsw i32 %1193, -1
  %1199 = getelementptr inbounds nuw i8, ptr %1195, i64 4
  %1200 = getelementptr inbounds nuw i8, ptr %1194, i64 4
  %1201 = icmp samesign ugt i32 %1193, 1
  br i1 %1201, label %.preheader567, label %.loopexit143, !llvm.loop !143

.loopexit143:                                     ; preds = %.preheader567, %1186, %1151
  %1202 = getelementptr inbounds i8, ptr %34, i64 %1082
  %1203 = sub nsw i64 0, %1141
  %1204 = getelementptr inbounds [4 x i8], ptr %32, i64 %1203
  %1205 = load i32, ptr %1202, align 4, !tbaa !5
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds [4 x i8], ptr %1, i64 %1206
  %1208 = load i32, ptr %1207, align 4, !tbaa !5
  %1209 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1208, i32 -1)
  %1210 = extractvalue { i32, i1 } %1209, 1, !nosanitize !10
  br i1 %1210, label %128, label %1211, !prof !11, !nosanitize !10

1211:                                             ; preds = %.loopexit143
  %1212 = extractvalue { i32, i1 } %1209, 0, !nosanitize !10
  %1213 = sext i32 %1212 to i64
  %1214 = getelementptr inbounds i8, ptr %142, i64 %1213
  %1215 = load i8, ptr %1214, align 1, !tbaa !9
  %1216 = icmp ugt i8 %935, %1215
  br i1 %1216, label %1217, label %1283

1217:                                             ; preds = %1211
  %1218 = getelementptr inbounds i8, ptr %1202, i64 -4
  br label %1219

1219:                                             ; preds = %1275, %1217
  %1220 = phi ptr [ %1204, %1217 ], [ %1252, %1275 ]
  %1221 = phi ptr [ %1218, %1217 ], [ %1249, %1275 ]
  %1222 = getelementptr inbounds nuw i8, ptr %1221, i64 4
  %1223 = icmp ult ptr %1222, %1220
  br i1 %1223, label %.preheader129, label %.loopexit131

.preheader129:                                    ; preds = %1219, %1245
  %1224 = phi ptr [ %1247, %1245 ], [ %1222, %1219 ]
  %1225 = load i32, ptr %1224, align 4, !tbaa !5
  %1226 = sext i32 %1225 to i64
  %1227 = getelementptr inbounds [4 x i8], ptr %1, i64 %1226
  %1228 = load i32, ptr %1227, align 4, !tbaa !5
  %1229 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1228, i32 %33), !nosanitize !10
  %1230 = extractvalue { i32, i1 } %1229, 0, !nosanitize !10
  %1231 = extractvalue { i32, i1 } %1229, 1, !nosanitize !10
  br i1 %1231, label %.loopexit128, label %1232, !prof !11, !nosanitize !10

.loopexit128:                                     ; preds = %1235, %1232, %.preheader129, %1265, %1262, %1254
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1232:                                             ; preds = %.preheader129
  %1233 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1225, i32 1), !nosanitize !10
  %1234 = extractvalue { i32, i1 } %1233, 1, !nosanitize !10
  br i1 %1234, label %.loopexit128, label %1235, !prof !11, !nosanitize !10

1235:                                             ; preds = %1232
  %1236 = extractvalue { i32, i1 } %1233, 0, !nosanitize !10
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr inbounds [4 x i8], ptr %1, i64 %1237
  %1239 = load i32, ptr %1238, align 4, !tbaa !5
  %1240 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1239, i32 1), !nosanitize !10
  %1241 = extractvalue { i32, i1 } %1240, 1, !nosanitize !10
  br i1 %1241, label %.loopexit128, label %1242, !prof !11, !nosanitize !10

1242:                                             ; preds = %1235
  %1243 = extractvalue { i32, i1 } %1240, 0, !nosanitize !10
  %1244 = icmp slt i32 %1230, %1243
  br i1 %1244, label %.loopexit131, label %1245

1245:                                             ; preds = %1242
  %1246 = xor i32 %1225, -1
  store i32 %1246, ptr %1224, align 4, !tbaa !5
  %1247 = getelementptr inbounds nuw i8, ptr %1224, i64 4
  %1248 = icmp ult ptr %1247, %1220
  br i1 %1248, label %.preheader129, label %.loopexit131, !llvm.loop !121

.loopexit131:                                     ; preds = %1245, %1242, %1219
  %1249 = phi ptr [ %1222, %1219 ], [ %1224, %1242 ], [ %1247, %1245 ]
  br label %1250

1250:                                             ; preds = %1272, %.loopexit131
  %1251 = phi ptr [ %1220, %.loopexit131 ], [ %1252, %1272 ]
  %1252 = getelementptr inbounds i8, ptr %1251, i64 -4
  %1253 = icmp ult ptr %1249, %1252
  br i1 %1253, label %1254, label %1278

1254:                                             ; preds = %1250
  %1255 = load i32, ptr %1252, align 4, !tbaa !5
  %1256 = sext i32 %1255 to i64
  %1257 = getelementptr inbounds [4 x i8], ptr %1, i64 %1256
  %1258 = load i32, ptr %1257, align 4, !tbaa !5
  %1259 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1258, i32 %33), !nosanitize !10
  %1260 = extractvalue { i32, i1 } %1259, 0, !nosanitize !10
  %1261 = extractvalue { i32, i1 } %1259, 1, !nosanitize !10
  br i1 %1261, label %.loopexit128, label %1262, !prof !11, !nosanitize !10

1262:                                             ; preds = %1254
  %1263 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1255, i32 1), !nosanitize !10
  %1264 = extractvalue { i32, i1 } %1263, 1, !nosanitize !10
  br i1 %1264, label %.loopexit128, label %1265, !prof !11, !nosanitize !10

1265:                                             ; preds = %1262
  %1266 = extractvalue { i32, i1 } %1263, 0, !nosanitize !10
  %1267 = sext i32 %1266 to i64
  %1268 = getelementptr inbounds [4 x i8], ptr %1, i64 %1267
  %1269 = load i32, ptr %1268, align 4, !tbaa !5
  %1270 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1269, i32 1), !nosanitize !10
  %1271 = extractvalue { i32, i1 } %1270, 1, !nosanitize !10
  br i1 %1271, label %.loopexit128, label %1272, !prof !11, !nosanitize !10

1272:                                             ; preds = %1265
  %1273 = extractvalue { i32, i1 } %1270, 0, !nosanitize !10
  %1274 = icmp slt i32 %1260, %1273
  br i1 %1274, label %1250, label %1275, !llvm.loop !122

1275:                                             ; preds = %1272
  %1276 = xor i32 %1255, -1
  %1277 = load i32, ptr %1249, align 4, !tbaa !5
  store i32 %1277, ptr %1252, align 4, !tbaa !5
  store i32 %1276, ptr %1249, align 4, !tbaa !5
  br label %1219

1278:                                             ; preds = %1250
  %1279 = icmp ult ptr %1202, %1249
  br i1 %1279, label %1280, label %1283

1280:                                             ; preds = %1278
  %1281 = load i32, ptr %1202, align 4, !tbaa !5
  %1282 = xor i32 %1281, -1
  store i32 %1282, ptr %1202, align 4, !tbaa !5
  br label %1283

1283:                                             ; preds = %1280, %1278, %1211
  %1284 = phi ptr [ %1202, %1211 ], [ %1249, %1278 ], [ %1249, %1280 ]
  %1285 = ptrtoint ptr %1204 to i64
  %1286 = icmp sgt i64 %1083, %1141
  %1287 = ptrtoint ptr %1284 to i64
  %1288 = sub i64 %1285, %1287
  %1289 = ashr exact i64 %1288, 2
  br i1 %1286, label %1417, label %1290

1290:                                             ; preds = %1283
  %1291 = icmp sgt i64 %1141, %1289
  br i1 %1291, label %1334, label %1292

1292:                                             ; preds = %1290
  %1293 = icmp slt i32 %35, 16
  br i1 %1293, label %1295, label %1294

1294:                                             ; preds = %1292
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 493, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1295:                                             ; preds = %1292
  %1296 = sext i32 %35 to i64
  %1297 = getelementptr inbounds [24 x i8], ptr %5, i64 %1296
  store ptr %1284, ptr %1297, align 8, !tbaa !112
  %1298 = getelementptr inbounds nuw i8, ptr %1297, i64 8
  store ptr %1204, ptr %1298, align 8, !tbaa !114
  %1299 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 1), !nosanitize !10
  %1300 = extractvalue { i32, i1 } %1299, 1, !nosanitize !10
  br i1 %1300, label %494, label %1301, !prof !11, !nosanitize !10

1301:                                             ; preds = %1295
  %1302 = extractvalue { i32, i1 } %1299, 0, !nosanitize !10
  %1303 = getelementptr inbounds nuw i8, ptr %1297, i64 16
  store i32 %1302, ptr %1303, align 8, !tbaa !115
  %1304 = add nsw i64 %1289, 2147483648
  %1305 = icmp ult i64 %1304, 4294967296
  br i1 %1305, label %1307, label %1306

1306:                                             ; preds = %1301
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 493, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1307:                                             ; preds = %1301
  %1308 = and i64 %1288, 261120
  %1309 = icmp eq i64 %1308, 0
  br i1 %1309, label %1319, label %1310

1310:                                             ; preds = %1307
  %1311 = lshr i64 %1289, 8
  %1312 = and i64 %1311, 255
  %1313 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1312
  %1314 = load i32, ptr %1313, align 4, !tbaa !5
  %1315 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1314, i32 8), !nosanitize !10
  %1316 = extractvalue { i32, i1 } %1315, 0, !nosanitize !10
  %1317 = extractvalue { i32, i1 } %1315, 1, !nosanitize !10
  br i1 %1317, label %1318, label %1323, !prof !11, !nosanitize !10

1318:                                             ; preds = %1310
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1319:                                             ; preds = %1307
  %1320 = and i64 %1289, 255
  %1321 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1320
  %1322 = load i32, ptr %1321, align 4, !tbaa !5
  br label %1323

1323:                                             ; preds = %1319, %1310
  %1324 = phi i32 [ %1316, %1310 ], [ %1322, %1319 ]
  %1325 = getelementptr inbounds nuw i8, ptr %1297, i64 20
  store i32 %1324, ptr %1325, align 4, !tbaa !116
  %1326 = icmp eq i32 %35, 15
  br i1 %1326, label %1327, label %1328

1327:                                             ; preds = %1323
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 494, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1328:                                             ; preds = %1323
  %1329 = getelementptr i8, ptr %1297, i64 24
  store ptr %1204, ptr %1329, align 8, !tbaa !112
  %1330 = getelementptr i8, ptr %1297, i64 32
  store ptr %32, ptr %1330, align 8, !tbaa !114
  %1331 = getelementptr i8, ptr %1297, i64 40
  store i32 %33, ptr %1331, align 8, !tbaa !115
  %1332 = add nsw i32 %35, 2
  %1333 = getelementptr i8, ptr %1297, i64 44
  store i32 %144, ptr %1333, align 4, !tbaa !116
  br label %.backedge.backedge

1334:                                             ; preds = %1290
  %1335 = icmp sgt i64 %1083, %1289
  %1336 = icmp slt i32 %35, 16
  br i1 %1335, label %1378, label %1337

1337:                                             ; preds = %1334
  br i1 %1336, label %1339, label %1338

1338:                                             ; preds = %1337
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1339:                                             ; preds = %1337
  %1340 = sext i32 %35 to i64
  %1341 = getelementptr inbounds [24 x i8], ptr %5, i64 %1340
  store ptr %1204, ptr %1341, align 8, !tbaa !112
  %1342 = getelementptr inbounds nuw i8, ptr %1341, i64 8
  store ptr %32, ptr %1342, align 8, !tbaa !114
  %1343 = getelementptr inbounds nuw i8, ptr %1341, i64 16
  store i32 %33, ptr %1343, align 8, !tbaa !115
  %1344 = getelementptr inbounds nuw i8, ptr %1341, i64 20
  store i32 %144, ptr %1344, align 4, !tbaa !116
  %1345 = icmp eq i32 %35, 15
  br i1 %1345, label %1346, label %1347

1346:                                             ; preds = %1339
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1347:                                             ; preds = %1339
  %1348 = getelementptr i8, ptr %1341, i64 24
  store ptr %1284, ptr %1348, align 8, !tbaa !112
  %1349 = getelementptr i8, ptr %1341, i64 32
  store ptr %1204, ptr %1349, align 8, !tbaa !114
  %1350 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 1), !nosanitize !10
  %1351 = extractvalue { i32, i1 } %1350, 1, !nosanitize !10
  br i1 %1351, label %494, label %1352, !prof !11, !nosanitize !10

1352:                                             ; preds = %1347
  %1353 = extractvalue { i32, i1 } %1350, 0, !nosanitize !10
  %1354 = getelementptr i8, ptr %1341, i64 40
  store i32 %1353, ptr %1354, align 8, !tbaa !115
  %1355 = add nsw i64 %1289, 2147483648
  %1356 = icmp ult i64 %1355, 4294967296
  br i1 %1356, label %1358, label %1357

1357:                                             ; preds = %1352
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1358:                                             ; preds = %1352
  %1359 = and i64 %1288, 261120
  %1360 = icmp eq i64 %1359, 0
  br i1 %1360, label %1370, label %1361

1361:                                             ; preds = %1358
  %1362 = lshr i64 %1289, 8
  %1363 = and i64 %1362, 255
  %1364 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1363
  %1365 = load i32, ptr %1364, align 4, !tbaa !5
  %1366 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1365, i32 8), !nosanitize !10
  %1367 = extractvalue { i32, i1 } %1366, 0, !nosanitize !10
  %1368 = extractvalue { i32, i1 } %1366, 1, !nosanitize !10
  br i1 %1368, label %1369, label %1374, !prof !11, !nosanitize !10

1369:                                             ; preds = %1361
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1370:                                             ; preds = %1358
  %1371 = and i64 %1289, 255
  %1372 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1371
  %1373 = load i32, ptr %1372, align 4, !tbaa !5
  br label %1374

1374:                                             ; preds = %1370, %1361
  %1375 = phi i32 [ %1367, %1361 ], [ %1373, %1370 ]
  %1376 = add nsw i32 %35, 2
  %1377 = getelementptr i8, ptr %1341, i64 44
  store i32 %1375, ptr %1377, align 4, !tbaa !116
  br label %.backedge.backedge

1378:                                             ; preds = %1334
  br i1 %1336, label %1380, label %1379

1379:                                             ; preds = %1378
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 501, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1380:                                             ; preds = %1378
  %1381 = sext i32 %35 to i64
  %1382 = getelementptr inbounds [24 x i8], ptr %5, i64 %1381
  store ptr %1204, ptr %1382, align 8, !tbaa !112
  %1383 = getelementptr inbounds nuw i8, ptr %1382, i64 8
  store ptr %32, ptr %1383, align 8, !tbaa !114
  %1384 = getelementptr inbounds nuw i8, ptr %1382, i64 16
  store i32 %33, ptr %1384, align 8, !tbaa !115
  %1385 = getelementptr inbounds nuw i8, ptr %1382, i64 20
  store i32 %144, ptr %1385, align 4, !tbaa !116
  %1386 = icmp eq i32 %35, 15
  br i1 %1386, label %1387, label %1388

1387:                                             ; preds = %1380
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 502, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1388:                                             ; preds = %1380
  %1389 = getelementptr i8, ptr %1382, i64 24
  store ptr %34, ptr %1389, align 8, !tbaa !112
  %1390 = getelementptr i8, ptr %1382, i64 32
  store ptr %1202, ptr %1390, align 8, !tbaa !114
  %1391 = getelementptr i8, ptr %1382, i64 40
  store i32 %33, ptr %1391, align 8, !tbaa !115
  %1392 = add nsw i32 %35, 2
  %1393 = getelementptr i8, ptr %1382, i64 44
  store i32 %144, ptr %1393, align 4, !tbaa !116
  %1394 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 1), !nosanitize !10
  %1395 = extractvalue { i32, i1 } %1394, 0, !nosanitize !10
  %1396 = extractvalue { i32, i1 } %1394, 1, !nosanitize !10
  br i1 %1396, label %494, label %1397, !prof !11, !nosanitize !10

1397:                                             ; preds = %1388
  %1398 = add nsw i64 %1289, 2147483648
  %1399 = icmp ult i64 %1398, 4294967296
  br i1 %1399, label %1401, label %1400

1400:                                             ; preds = %1397
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 503, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1401:                                             ; preds = %1397
  %1402 = and i64 %1288, 261120
  %1403 = icmp eq i64 %1402, 0
  br i1 %1403, label %1413, label %1404

1404:                                             ; preds = %1401
  %1405 = lshr i64 %1289, 8
  %1406 = and i64 %1405, 255
  %1407 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1406
  %1408 = load i32, ptr %1407, align 4, !tbaa !5
  %1409 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1408, i32 8), !nosanitize !10
  %1410 = extractvalue { i32, i1 } %1409, 0, !nosanitize !10
  %1411 = extractvalue { i32, i1 } %1409, 1, !nosanitize !10
  br i1 %1411, label %1412, label %.backedge.backedge, !prof !11, !nosanitize !10

1412:                                             ; preds = %1404
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1413:                                             ; preds = %1401
  %1414 = and i64 %1289, 255
  %1415 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1414
  %1416 = load i32, ptr %1415, align 4, !tbaa !5
  br label %.backedge.backedge

1417:                                             ; preds = %1283
  %1418 = icmp sgt i64 %1083, %1289
  br i1 %1418, label %1461, label %1419

1419:                                             ; preds = %1417
  %1420 = icmp slt i32 %35, 16
  br i1 %1420, label %1422, label %1421

1421:                                             ; preds = %1419
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 507, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1422:                                             ; preds = %1419
  %1423 = sext i32 %35 to i64
  %1424 = getelementptr inbounds [24 x i8], ptr %5, i64 %1423
  store ptr %1284, ptr %1424, align 8, !tbaa !112
  %1425 = getelementptr inbounds nuw i8, ptr %1424, i64 8
  store ptr %1204, ptr %1425, align 8, !tbaa !114
  %1426 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 1), !nosanitize !10
  %1427 = extractvalue { i32, i1 } %1426, 1, !nosanitize !10
  br i1 %1427, label %494, label %1428, !prof !11, !nosanitize !10

1428:                                             ; preds = %1422
  %1429 = extractvalue { i32, i1 } %1426, 0, !nosanitize !10
  %1430 = getelementptr inbounds nuw i8, ptr %1424, i64 16
  store i32 %1429, ptr %1430, align 8, !tbaa !115
  %1431 = add nsw i64 %1289, 2147483648
  %1432 = icmp ult i64 %1431, 4294967296
  br i1 %1432, label %1434, label %1433

1433:                                             ; preds = %1428
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 507, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1434:                                             ; preds = %1428
  %1435 = and i64 %1288, 261120
  %1436 = icmp eq i64 %1435, 0
  br i1 %1436, label %1446, label %1437

1437:                                             ; preds = %1434
  %1438 = lshr i64 %1289, 8
  %1439 = and i64 %1438, 255
  %1440 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1439
  %1441 = load i32, ptr %1440, align 4, !tbaa !5
  %1442 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1441, i32 8), !nosanitize !10
  %1443 = extractvalue { i32, i1 } %1442, 0, !nosanitize !10
  %1444 = extractvalue { i32, i1 } %1442, 1, !nosanitize !10
  br i1 %1444, label %1445, label %1450, !prof !11, !nosanitize !10

1445:                                             ; preds = %1437
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1446:                                             ; preds = %1434
  %1447 = and i64 %1289, 255
  %1448 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1447
  %1449 = load i32, ptr %1448, align 4, !tbaa !5
  br label %1450

1450:                                             ; preds = %1446, %1437
  %1451 = phi i32 [ %1443, %1437 ], [ %1449, %1446 ]
  %1452 = getelementptr inbounds nuw i8, ptr %1424, i64 20
  store i32 %1451, ptr %1452, align 4, !tbaa !116
  %1453 = icmp eq i32 %35, 15
  br i1 %1453, label %1454, label %1455

1454:                                             ; preds = %1450
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 508, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1455:                                             ; preds = %1450
  %1456 = getelementptr i8, ptr %1424, i64 24
  store ptr %34, ptr %1456, align 8, !tbaa !112
  %1457 = getelementptr i8, ptr %1424, i64 32
  store ptr %1202, ptr %1457, align 8, !tbaa !114
  %1458 = getelementptr i8, ptr %1424, i64 40
  store i32 %33, ptr %1458, align 8, !tbaa !115
  %1459 = add nsw i32 %35, 2
  %1460 = getelementptr i8, ptr %1424, i64 44
  store i32 %144, ptr %1460, align 4, !tbaa !116
  br label %.backedge.backedge

1461:                                             ; preds = %1417
  %1462 = icmp sgt i64 %1141, %1289
  %1463 = icmp slt i32 %35, 16
  br i1 %1462, label %1505, label %1464

1464:                                             ; preds = %1461
  br i1 %1463, label %1466, label %1465

1465:                                             ; preds = %1464
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 511, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1466:                                             ; preds = %1464
  %1467 = sext i32 %35 to i64
  %1468 = getelementptr inbounds [24 x i8], ptr %5, i64 %1467
  store ptr %34, ptr %1468, align 8, !tbaa !112
  %1469 = getelementptr inbounds nuw i8, ptr %1468, i64 8
  store ptr %1202, ptr %1469, align 8, !tbaa !114
  %1470 = getelementptr inbounds nuw i8, ptr %1468, i64 16
  store i32 %33, ptr %1470, align 8, !tbaa !115
  %1471 = getelementptr inbounds nuw i8, ptr %1468, i64 20
  store i32 %144, ptr %1471, align 4, !tbaa !116
  %1472 = icmp eq i32 %35, 15
  br i1 %1472, label %1473, label %1474

1473:                                             ; preds = %1466
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 512, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1474:                                             ; preds = %1466
  %1475 = getelementptr i8, ptr %1468, i64 24
  store ptr %1284, ptr %1475, align 8, !tbaa !112
  %1476 = getelementptr i8, ptr %1468, i64 32
  store ptr %1204, ptr %1476, align 8, !tbaa !114
  %1477 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 1), !nosanitize !10
  %1478 = extractvalue { i32, i1 } %1477, 1, !nosanitize !10
  br i1 %1478, label %494, label %1479, !prof !11, !nosanitize !10

1479:                                             ; preds = %1474
  %1480 = extractvalue { i32, i1 } %1477, 0, !nosanitize !10
  %1481 = getelementptr i8, ptr %1468, i64 40
  store i32 %1480, ptr %1481, align 8, !tbaa !115
  %1482 = add nsw i64 %1289, 2147483648
  %1483 = icmp ult i64 %1482, 4294967296
  br i1 %1483, label %1485, label %1484

1484:                                             ; preds = %1479
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 512, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1485:                                             ; preds = %1479
  %1486 = and i64 %1288, 261120
  %1487 = icmp eq i64 %1486, 0
  br i1 %1487, label %1497, label %1488

1488:                                             ; preds = %1485
  %1489 = lshr i64 %1289, 8
  %1490 = and i64 %1489, 255
  %1491 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1490
  %1492 = load i32, ptr %1491, align 4, !tbaa !5
  %1493 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1492, i32 8), !nosanitize !10
  %1494 = extractvalue { i32, i1 } %1493, 0, !nosanitize !10
  %1495 = extractvalue { i32, i1 } %1493, 1, !nosanitize !10
  br i1 %1495, label %1496, label %1501, !prof !11, !nosanitize !10

1496:                                             ; preds = %1488
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1497:                                             ; preds = %1485
  %1498 = and i64 %1289, 255
  %1499 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1498
  %1500 = load i32, ptr %1499, align 4, !tbaa !5
  br label %1501

1501:                                             ; preds = %1497, %1488
  %1502 = phi i32 [ %1494, %1488 ], [ %1500, %1497 ]
  %1503 = add nsw i32 %35, 2
  %1504 = getelementptr i8, ptr %1468, i64 44
  store i32 %1502, ptr %1504, align 4, !tbaa !116
  br label %.backedge.backedge

1505:                                             ; preds = %1461
  br i1 %1463, label %1507, label %1506

1506:                                             ; preds = %1505
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 515, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1507:                                             ; preds = %1505
  %1508 = sext i32 %35 to i64
  %1509 = getelementptr inbounds [24 x i8], ptr %5, i64 %1508
  store ptr %34, ptr %1509, align 8, !tbaa !112
  %1510 = getelementptr inbounds nuw i8, ptr %1509, i64 8
  store ptr %1202, ptr %1510, align 8, !tbaa !114
  %1511 = getelementptr inbounds nuw i8, ptr %1509, i64 16
  store i32 %33, ptr %1511, align 8, !tbaa !115
  %1512 = getelementptr inbounds nuw i8, ptr %1509, i64 20
  store i32 %144, ptr %1512, align 4, !tbaa !116
  %1513 = icmp eq i32 %35, 15
  br i1 %1513, label %1514, label %1515

1514:                                             ; preds = %1507
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 516, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1515:                                             ; preds = %1507
  %1516 = getelementptr i8, ptr %1509, i64 24
  store ptr %1204, ptr %1516, align 8, !tbaa !112
  %1517 = getelementptr i8, ptr %1509, i64 32
  store ptr %32, ptr %1517, align 8, !tbaa !114
  %1518 = getelementptr i8, ptr %1509, i64 40
  store i32 %33, ptr %1518, align 8, !tbaa !115
  %1519 = add nsw i32 %35, 2
  %1520 = getelementptr i8, ptr %1509, i64 44
  store i32 %144, ptr %1520, align 4, !tbaa !116
  %1521 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 1), !nosanitize !10
  %1522 = extractvalue { i32, i1 } %1521, 0, !nosanitize !10
  %1523 = extractvalue { i32, i1 } %1521, 1, !nosanitize !10
  br i1 %1523, label %494, label %1524, !prof !11, !nosanitize !10

1524:                                             ; preds = %1515
  %1525 = add nsw i64 %1289, 2147483648
  %1526 = icmp ult i64 %1525, 4294967296
  br i1 %1526, label %1528, label %1527

1527:                                             ; preds = %1524
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 517, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1528:                                             ; preds = %1524
  %1529 = and i64 %1288, 261120
  %1530 = icmp eq i64 %1529, 0
  br i1 %1530, label %1540, label %1531

1531:                                             ; preds = %1528
  %1532 = lshr i64 %1289, 8
  %1533 = and i64 %1532, 255
  %1534 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1533
  %1535 = load i32, ptr %1534, align 4, !tbaa !5
  %1536 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1535, i32 8), !nosanitize !10
  %1537 = extractvalue { i32, i1 } %1536, 0, !nosanitize !10
  %1538 = extractvalue { i32, i1 } %1536, 1, !nosanitize !10
  br i1 %1538, label %1539, label %.backedge.backedge, !prof !11, !nosanitize !10

1539:                                             ; preds = %1531
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1540:                                             ; preds = %1528
  %1541 = and i64 %1289, 255
  %1542 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1541
  %1543 = load i32, ptr %1542, align 4, !tbaa !5
  br label %.backedge.backedge

1544:                                             ; preds = %.loopexit146
  %1545 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %144, i32 1), !nosanitize !10
  %1546 = extractvalue { i32, i1 } %1545, 0, !nosanitize !10
  %1547 = extractvalue { i32, i1 } %1545, 1, !nosanitize !10
  br i1 %1547, label %494, label %1548, !prof !11, !nosanitize !10

1548:                                             ; preds = %1544
  %1549 = load i32, ptr %34, align 4, !tbaa !5
  %1550 = sext i32 %1549 to i64
  %1551 = getelementptr inbounds [4 x i8], ptr %1, i64 %1550
  %1552 = load i32, ptr %1551, align 4, !tbaa !5
  %1553 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1552, i32 -1)
  %1554 = extractvalue { i32, i1 } %1553, 1, !nosanitize !10
  br i1 %1554, label %128, label %1555, !prof !11, !nosanitize !10

1555:                                             ; preds = %1548
  %1556 = extractvalue { i32, i1 } %1553, 0, !nosanitize !10
  %1557 = sext i32 %1556 to i64
  %1558 = getelementptr inbounds i8, ptr %142, i64 %1557
  %1559 = load i8, ptr %1558, align 1, !tbaa !9
  %1560 = icmp ult i8 %1559, %935
  br i1 %1560, label %1561, label %1650

1561:                                             ; preds = %1555
  %1562 = getelementptr inbounds i8, ptr %34, i64 -4
  br label %1563

1563:                                             ; preds = %1619, %1561
  %1564 = phi ptr [ %32, %1561 ], [ %1596, %1619 ]
  %1565 = phi ptr [ %1562, %1561 ], [ %1593, %1619 ]
  %1566 = getelementptr inbounds nuw i8, ptr %1565, i64 4
  %1567 = icmp ult ptr %1566, %1564
  br i1 %1567, label %.preheader124, label %.loopexit126

.preheader124:                                    ; preds = %1563, %1589
  %1568 = phi ptr [ %1591, %1589 ], [ %1566, %1563 ]
  %1569 = load i32, ptr %1568, align 4, !tbaa !5
  %1570 = sext i32 %1569 to i64
  %1571 = getelementptr inbounds [4 x i8], ptr %1, i64 %1570
  %1572 = load i32, ptr %1571, align 4, !tbaa !5
  %1573 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1572, i32 %33), !nosanitize !10
  %1574 = extractvalue { i32, i1 } %1573, 0, !nosanitize !10
  %1575 = extractvalue { i32, i1 } %1573, 1, !nosanitize !10
  br i1 %1575, label %.loopexit123, label %1576, !prof !11, !nosanitize !10

.loopexit123:                                     ; preds = %1579, %1576, %.preheader124, %1609, %1606, %1598
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1576:                                             ; preds = %.preheader124
  %1577 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1569, i32 1), !nosanitize !10
  %1578 = extractvalue { i32, i1 } %1577, 1, !nosanitize !10
  br i1 %1578, label %.loopexit123, label %1579, !prof !11, !nosanitize !10

1579:                                             ; preds = %1576
  %1580 = extractvalue { i32, i1 } %1577, 0, !nosanitize !10
  %1581 = sext i32 %1580 to i64
  %1582 = getelementptr inbounds [4 x i8], ptr %1, i64 %1581
  %1583 = load i32, ptr %1582, align 4, !tbaa !5
  %1584 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1583, i32 1), !nosanitize !10
  %1585 = extractvalue { i32, i1 } %1584, 1, !nosanitize !10
  br i1 %1585, label %.loopexit123, label %1586, !prof !11, !nosanitize !10

1586:                                             ; preds = %1579
  %1587 = extractvalue { i32, i1 } %1584, 0, !nosanitize !10
  %1588 = icmp slt i32 %1574, %1587
  br i1 %1588, label %.loopexit126, label %1589

1589:                                             ; preds = %1586
  %1590 = xor i32 %1569, -1
  store i32 %1590, ptr %1568, align 4, !tbaa !5
  %1591 = getelementptr inbounds nuw i8, ptr %1568, i64 4
  %1592 = icmp ult ptr %1591, %1564
  br i1 %1592, label %.preheader124, label %.loopexit126, !llvm.loop !121

.loopexit126:                                     ; preds = %1589, %1586, %1563
  %1593 = phi ptr [ %1566, %1563 ], [ %1568, %1586 ], [ %1591, %1589 ]
  br label %1594

1594:                                             ; preds = %1616, %.loopexit126
  %1595 = phi ptr [ %1564, %.loopexit126 ], [ %1596, %1616 ]
  %1596 = getelementptr inbounds i8, ptr %1595, i64 -4
  %1597 = icmp ult ptr %1593, %1596
  br i1 %1597, label %1598, label %1622

1598:                                             ; preds = %1594
  %1599 = load i32, ptr %1596, align 4, !tbaa !5
  %1600 = sext i32 %1599 to i64
  %1601 = getelementptr inbounds [4 x i8], ptr %1, i64 %1600
  %1602 = load i32, ptr %1601, align 4, !tbaa !5
  %1603 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1602, i32 %33), !nosanitize !10
  %1604 = extractvalue { i32, i1 } %1603, 0, !nosanitize !10
  %1605 = extractvalue { i32, i1 } %1603, 1, !nosanitize !10
  br i1 %1605, label %.loopexit123, label %1606, !prof !11, !nosanitize !10

1606:                                             ; preds = %1598
  %1607 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1599, i32 1), !nosanitize !10
  %1608 = extractvalue { i32, i1 } %1607, 1, !nosanitize !10
  br i1 %1608, label %.loopexit123, label %1609, !prof !11, !nosanitize !10

1609:                                             ; preds = %1606
  %1610 = extractvalue { i32, i1 } %1607, 0, !nosanitize !10
  %1611 = sext i32 %1610 to i64
  %1612 = getelementptr inbounds [4 x i8], ptr %1, i64 %1611
  %1613 = load i32, ptr %1612, align 4, !tbaa !5
  %1614 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1613, i32 1), !nosanitize !10
  %1615 = extractvalue { i32, i1 } %1614, 1, !nosanitize !10
  br i1 %1615, label %.loopexit123, label %1616, !prof !11, !nosanitize !10

1616:                                             ; preds = %1609
  %1617 = extractvalue { i32, i1 } %1614, 0, !nosanitize !10
  %1618 = icmp slt i32 %1604, %1617
  br i1 %1618, label %1594, label %1619, !llvm.loop !122

1619:                                             ; preds = %1616
  %1620 = xor i32 %1599, -1
  %1621 = load i32, ptr %1593, align 4, !tbaa !5
  store i32 %1621, ptr %1596, align 4, !tbaa !5
  store i32 %1620, ptr %1593, align 4, !tbaa !5
  br label %1563

1622:                                             ; preds = %1594
  %1623 = icmp ult ptr %34, %1593
  br i1 %1623, label %1624, label %1627

1624:                                             ; preds = %1622
  %1625 = load i32, ptr %34, align 4, !tbaa !5
  %1626 = xor i32 %1625, -1
  store i32 %1626, ptr %34, align 4, !tbaa !5
  br label %1627

1627:                                             ; preds = %1624, %1622
  %1628 = ptrtoint ptr %1593 to i64
  %1629 = sub i64 %37, %1628
  %1630 = ashr exact i64 %1629, 2
  %1631 = add nsw i64 %1630, 2147483648
  %1632 = icmp ult i64 %1631, 4294967296
  br i1 %1632, label %1634, label %1633

1633:                                             ; preds = %1627
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 524, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1634:                                             ; preds = %1627
  %1635 = and i64 %1629, 261120
  %1636 = icmp eq i64 %1635, 0
  br i1 %1636, label %1646, label %1637

1637:                                             ; preds = %1634
  %1638 = lshr i64 %1630, 8
  %1639 = and i64 %1638, 255
  %1640 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1639
  %1641 = load i32, ptr %1640, align 4, !tbaa !5
  %1642 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1641, i32 8), !nosanitize !10
  %1643 = extractvalue { i32, i1 } %1642, 0, !nosanitize !10
  %1644 = extractvalue { i32, i1 } %1642, 1, !nosanitize !10
  br i1 %1644, label %1645, label %1650, !prof !11, !nosanitize !10

1645:                                             ; preds = %1637
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1646:                                             ; preds = %1634
  %1647 = and i64 %1630, 255
  %1648 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1647
  %1649 = load i32, ptr %1648, align 4, !tbaa !5
  br label %1650

1650:                                             ; preds = %1646, %1637, %1555
  %1651 = phi ptr [ %34, %1555 ], [ %1593, %1637 ], [ %1593, %1646 ]
  %1652 = phi i32 [ %1546, %1555 ], [ %1643, %1637 ], [ %1649, %1646 ]
  %1653 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 1), !nosanitize !10
  %1654 = extractvalue { i32, i1 } %1653, 1, !nosanitize !10
  br i1 %1654, label %494, label %1655, !prof !11, !nosanitize !10

1655:                                             ; preds = %1650
  %1656 = extractvalue { i32, i1 } %1653, 0, !nosanitize !10
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %1655, %1540, %1531, %1501, %1455, %1413, %1404, %1374, %1328, %571, %562, %547, %510, %501, %479, %129
  %.be = phi ptr [ %135, %129 ], [ %32, %547 ], [ %32, %479 ], [ %394, %501 ], [ %394, %510 ], [ %394, %562 ], [ %394, %571 ], [ %1202, %1328 ], [ %1202, %1374 ], [ %32, %1455 ], [ %32, %1501 ], [ %32, %1655 ], [ %1204, %1404 ], [ %1204, %1413 ], [ %1204, %1531 ], [ %1204, %1540 ]
  %.be551 = phi i32 [ %137, %129 ], [ %33, %547 ], [ %33, %479 ], [ %492, %501 ], [ %492, %510 ], [ %553, %562 ], [ %553, %571 ], [ %33, %1328 ], [ %33, %1374 ], [ %33, %1455 ], [ %33, %1501 ], [ %1656, %1655 ], [ %1395, %1404 ], [ %1395, %1413 ], [ %1522, %1531 ], [ %1522, %1540 ]
  %.be552 = phi ptr [ %133, %129 ], [ %394, %547 ], [ %394, %479 ], [ %471, %501 ], [ %471, %510 ], [ %471, %562 ], [ %471, %571 ], [ %34, %1328 ], [ %34, %1374 ], [ %1204, %1455 ], [ %1204, %1501 ], [ %1651, %1655 ], [ %1284, %1404 ], [ %1284, %1413 ], [ %1284, %1531 ], [ %1284, %1540 ]
  %.be553 = phi i32 [ %130, %129 ], [ %549, %547 ], [ %35, %479 ], [ %489, %501 ], [ %489, %510 ], [ %35, %562 ], [ %35, %571 ], [ %1332, %1328 ], [ %1376, %1374 ], [ %1459, %1455 ], [ %1503, %1501 ], [ %35, %1655 ], [ %1392, %1404 ], [ %1392, %1413 ], [ %1519, %1531 ], [ %1519, %1540 ]
  %.be554 = phi i32 [ %139, %129 ], [ -1, %547 ], [ -1, %479 ], [ %507, %501 ], [ %513, %510 ], [ %568, %562 ], [ %574, %571 ], [ %144, %1328 ], [ %144, %1374 ], [ %144, %1455 ], [ %144, %1501 ], [ %1652, %1655 ], [ %1410, %1404 ], [ %1416, %1413 ], [ %1537, %1531 ], [ %1543, %1540 ]
  br label %.backedge
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ss_swapmerge(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef range(i32 -2147483644, -2147483648) %6) unnamed_addr #0 {
  %8 = alloca [32 x %struct.anon.0], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %9 = sext i32 %6 to i64
  %10 = getelementptr i8, ptr %5, i64 -4
  %11 = getelementptr i8, ptr %0, i64 2
  %12 = getelementptr i8, ptr %5, i64 4
  br label %.backedge1179

.backedge1179:                                    ; preds = %.backedge1179.backedge, %7
  %13 = phi ptr [ %4, %7 ], [ %.be1102, %.backedge1179.backedge ]
  %14 = phi ptr [ %3, %7 ], [ %.be1103, %.backedge1179.backedge ]
  %15 = phi ptr [ %2, %7 ], [ %.be1104, %.backedge1179.backedge ]
  %16 = phi i32 [ 0, %7 ], [ %.be1105, %.backedge1179.backedge ]
  %17 = phi i32 [ 0, %7 ], [ %.be1106, %.backedge1179.backedge ]
  %18 = ptrtoint ptr %13 to i64
  %19 = ptrtoint ptr %14 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 2
  %22 = icmp sgt i64 %21, %9
  br i1 %22, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.backedge1179
  %23 = sext i32 %16 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %16, i32 32)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %955
  %24 = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.backedge1179
  %.lcssa211 = phi ptr [ %14, %.backedge1179 ], [ %905, %._crit_edge.loopexit ]
  %.lcssa204 = phi ptr [ %15, %.backedge1179 ], [ %933, %._crit_edge.loopexit ]
  %.lcssa197 = phi i32 [ %16, %.backedge1179 ], [ %24, %._crit_edge.loopexit ]
  %.lcssa190 = phi i32 [ %17, %.backedge1179 ], [ %971, %._crit_edge.loopexit ]
  %.lcssa183 = phi i64 [ %20, %.backedge1179 ], [ %973, %._crit_edge.loopexit ]
  %.lcssa176 = phi i64 [ %21, %.backedge1179 ], [ %974, %._crit_edge.loopexit ]
  %25 = icmp ult ptr %.lcssa204, %.lcssa211
  %26 = icmp ult ptr %.lcssa211, %13
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %302

28:                                               ; preds = %._crit_edge
  %29 = getelementptr i8, ptr %10, i64 %.lcssa183
  %30 = add nsw i64 %.lcssa176, 2147483648
  %31 = icmp ult i64 %30, 4294967296
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.src, i32 noundef 695, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mergebackward) #10
  unreachable

33:                                               ; preds = %28
  %34 = icmp sgt i64 %.lcssa176, 0
  br i1 %34, label %35, label %.loopexit165

35:                                               ; preds = %33
  %36 = trunc nuw nsw i64 %.lcssa176 to i32
  %37 = icmp samesign ult i64 %.lcssa176, 8
  br i1 %37, label %.preheader1168.preheader, label %38

38:                                               ; preds = %35
  %39 = add nuw i64 %.lcssa183, 17179869180
  %40 = and i64 %39, 17179869180
  %41 = getelementptr i8, ptr %12, i64 %40
  %42 = getelementptr i8, ptr %.lcssa211, i64 4
  %43 = getelementptr i8, ptr %42, i64 %40
  %44 = icmp ult ptr %5, %43
  %45 = icmp ult ptr %.lcssa211, %41
  %46 = and i1 %44, %45
  br i1 %46, label %.preheader1168.preheader, label %47

47:                                               ; preds = %38
  %48 = and i64 %.lcssa176, 8589934584
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi i64 [ 0, %47 ], [ %60, %49 ]
  %51 = shl i64 %50, 2
  %52 = getelementptr i8, ptr %5, i64 %51
  %53 = getelementptr i8, ptr %.lcssa211, i64 %51
  %54 = getelementptr i8, ptr %52, i64 16
  %55 = load <4 x i32>, ptr %52, align 4, !tbaa !5, !alias.scope !144, !noalias !147
  %56 = load <4 x i32>, ptr %54, align 4, !tbaa !5, !alias.scope !144, !noalias !147
  %57 = getelementptr i8, ptr %53, i64 16
  %58 = load <4 x i32>, ptr %53, align 4, !tbaa !5, !alias.scope !147
  %59 = load <4 x i32>, ptr %57, align 4, !tbaa !5, !alias.scope !147
  store <4 x i32> %58, ptr %52, align 4, !tbaa !5, !alias.scope !144, !noalias !147
  store <4 x i32> %59, ptr %54, align 4, !tbaa !5, !alias.scope !144, !noalias !147
  store <4 x i32> %55, ptr %53, align 4, !tbaa !5, !alias.scope !147
  store <4 x i32> %56, ptr %57, align 4, !tbaa !5, !alias.scope !147
  %60 = add nuw i64 %50, 8
  %61 = icmp eq i64 %60, %48
  br i1 %61, label %62, label %49, !llvm.loop !149

62:                                               ; preds = %49
  %63 = shl nuw nsw i64 %48, 2
  %64 = getelementptr i8, ptr %5, i64 %63
  %65 = trunc nuw nsw i64 %48 to i32
  %66 = sub nsw i32 %36, %65
  %67 = getelementptr i8, ptr %.lcssa211, i64 %63
  %68 = icmp eq i64 %.lcssa176, %48
  br i1 %68, label %.loopexit165, label %.preheader1168.preheader

.preheader1168.preheader:                         ; preds = %62, %38, %35
  %.ph1093 = phi ptr [ %5, %38 ], [ %5, %35 ], [ %64, %62 ]
  %.ph1094 = phi i32 [ %36, %38 ], [ %36, %35 ], [ %66, %62 ]
  %.ph1095 = phi ptr [ %.lcssa211, %38 ], [ %.lcssa211, %35 ], [ %67, %62 ]
  br label %.preheader1168

.preheader1168:                                   ; preds = %.preheader1168.preheader, %.preheader1168
  %69 = phi ptr [ %75, %.preheader1168 ], [ %.ph1093, %.preheader1168.preheader ]
  %70 = phi i32 [ %74, %.preheader1168 ], [ %.ph1094, %.preheader1168.preheader ]
  %71 = phi ptr [ %76, %.preheader1168 ], [ %.ph1095, %.preheader1168.preheader ]
  %72 = load i32, ptr %69, align 4, !tbaa !5
  %73 = load i32, ptr %71, align 4, !tbaa !5
  store i32 %73, ptr %69, align 4, !tbaa !5
  store i32 %72, ptr %71, align 4, !tbaa !5
  %74 = add nsw i32 %70, -1
  %75 = getelementptr inbounds nuw i8, ptr %69, i64 4
  %76 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %77 = icmp samesign ugt i32 %70, 1
  br i1 %77, label %.preheader1168, label %.loopexit165, !llvm.loop !150

.loopexit165:                                     ; preds = %.preheader1168, %62, %33
  %78 = load i32, ptr %29, align 4, !tbaa !5
  %79 = ashr i32 %78, 31
  %80 = xor i32 %79, %78
  %81 = lshr i32 %78, 31
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %82
  %84 = getelementptr inbounds i8, ptr %.lcssa211, i64 -4
  %85 = load i32, ptr %84, align 4, !tbaa !5
  %86 = ashr i32 %85, 31
  %87 = xor i32 %86, %85
  %88 = lshr i32 %85, 30
  %89 = and i32 %88, 2
  %90 = or disjoint i32 %89, %81
  %91 = zext i32 %87 to i64
  %92 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %91
  %93 = getelementptr inbounds i8, ptr %13, i64 -4
  %94 = load i32, ptr %93, align 4, !tbaa !5
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.loopexit165
  %95 = phi ptr [ %29, %.loopexit165 ], [ %.be, %.backedge.backedge ]
  %96 = phi ptr [ %84, %.loopexit165 ], [ %.be1088, %.backedge.backedge ]
  %97 = phi ptr [ %93, %.loopexit165 ], [ %.be1089, %.backedge.backedge ]
  %98 = phi ptr [ %92, %.loopexit165 ], [ %.be1090, %.backedge.backedge ]
  %99 = phi ptr [ %83, %.loopexit165 ], [ %.be1091, %.backedge.backedge ]
  %100 = phi i32 [ %90, %.loopexit165 ], [ %.be1092, %.backedge.backedge ]
  %101 = getelementptr i8, ptr %99, i64 4
  br label %102

102:                                              ; preds = %219, %.backedge
  %103 = phi ptr [ %96, %.backedge ], [ %208, %219 ]
  %104 = phi ptr [ %97, %.backedge ], [ %206, %219 ]
  %105 = phi ptr [ %98, %.backedge ], [ %226, %219 ]
  %106 = phi i32 [ %100, %.backedge ], [ %224, %219 ]
  %107 = load i32, ptr %99, align 4, !tbaa !5
  %108 = load i32, ptr %101, align 4, !tbaa !5
  %109 = load i32, ptr %105, align 4, !tbaa !5
  %110 = getelementptr i8, ptr %105, i64 4
  %111 = load i32, ptr %110, align 4, !tbaa !5
  %112 = sext i32 %107 to i64
  %113 = getelementptr inbounds i8, ptr %11, i64 %112
  %114 = sext i32 %109 to i64
  %115 = getelementptr inbounds i8, ptr %11, i64 %114
  %116 = sext i32 %108 to i64
  %117 = getelementptr i8, ptr %11, i64 %116
  %118 = sext i32 %111 to i64
  %119 = getelementptr i8, ptr %11, i64 %118
  %120 = icmp ult ptr %113, %117
  %121 = icmp ult ptr %115, %119
  %122 = select i1 %120, i1 %121, i1 false
  br i1 %122, label %.preheader118, label %.loopexit120

.preheader118:                                    ; preds = %102, %128
  %123 = phi ptr [ %129, %128 ], [ %113, %102 ]
  %124 = phi ptr [ %130, %128 ], [ %115, %102 ]
  %125 = load i8, ptr %123, align 1, !tbaa !9
  %126 = load i8, ptr %124, align 1, !tbaa !9
  %127 = icmp eq i8 %125, %126
  br i1 %127, label %128, label %.loopexit119

128:                                              ; preds = %.preheader118
  %129 = getelementptr inbounds nuw i8, ptr %123, i64 1
  %130 = getelementptr inbounds nuw i8, ptr %124, i64 1
  %131 = icmp ult ptr %129, %117
  %132 = icmp ult ptr %130, %119
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %.preheader118, label %.loopexit120, !llvm.loop !26

.loopexit120:                                     ; preds = %128, %102
  %134 = phi ptr [ %115, %102 ], [ %130, %128 ]
  %135 = phi ptr [ %113, %102 ], [ %129, %128 ]
  %136 = phi i1 [ %120, %102 ], [ %131, %128 ]
  %137 = phi i1 [ %121, %102 ], [ %132, %128 ]
  br i1 %136, label %138, label %142

138:                                              ; preds = %.loopexit120
  br i1 %137, label %139, label %150

139:                                              ; preds = %138
  %140 = load i8, ptr %135, align 1, !tbaa !9
  %141 = load i8, ptr %134, align 1, !tbaa !9
  br label %.loopexit119

142:                                              ; preds = %.loopexit120
  %143 = sext i1 %137 to i32
  br label %184

.loopexit119:                                     ; preds = %.preheader118, %139
  %144 = phi i8 [ %141, %139 ], [ %126, %.preheader118 ]
  %145 = phi i8 [ %140, %139 ], [ %125, %.preheader118 ]
  %146 = zext i8 %145 to i32
  %147 = zext i8 %144 to i32
  %148 = sub nsw i32 %146, %147
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %184

150:                                              ; preds = %.loopexit119, %138
  %151 = and i32 %106, 1
  %152 = icmp eq i32 %151, 0
  %153 = load i32, ptr %95, align 4, !tbaa !5
  br i1 %152, label %164, label %.preheader127

.preheader127:                                    ; preds = %150, %.preheader127
  %154 = phi i32 [ %160, %.preheader127 ], [ %153, %150 ]
  %155 = phi ptr [ %159, %.preheader127 ], [ %95, %150 ]
  %156 = phi ptr [ %157, %.preheader127 ], [ %104, %150 ]
  %157 = getelementptr inbounds i8, ptr %156, i64 -4
  store i32 %154, ptr %156, align 4, !tbaa !5
  %158 = load i32, ptr %157, align 4, !tbaa !5
  %159 = getelementptr inbounds i8, ptr %155, i64 -4
  store i32 %158, ptr %155, align 4, !tbaa !5
  %160 = load i32, ptr %159, align 4, !tbaa !5
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %.preheader127, label %162, !llvm.loop !151

162:                                              ; preds = %.preheader127
  %163 = and i32 %106, -2
  br label %164

164:                                              ; preds = %162, %150
  %165 = phi i32 [ %160, %162 ], [ %153, %150 ]
  %166 = phi ptr [ %159, %162 ], [ %95, %150 ]
  %167 = phi ptr [ %157, %162 ], [ %104, %150 ]
  %168 = phi i32 [ %163, %162 ], [ %106, %150 ]
  %169 = getelementptr inbounds i8, ptr %167, i64 -4
  store i32 %165, ptr %167, align 4, !tbaa !5
  %170 = icmp ugt ptr %166, %5
  br i1 %170, label %171, label %.loopexit164

171:                                              ; preds = %164
  %172 = load i32, ptr %169, align 4, !tbaa !5
  %173 = getelementptr inbounds i8, ptr %166, i64 -4
  store i32 %172, ptr %166, align 4, !tbaa !5
  %174 = load i32, ptr %173, align 4, !tbaa !5
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = xor i32 %174, -1
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %178
  %180 = or disjoint i32 %168, 1
  br label %.backedge.backedge

181:                                              ; preds = %171
  %182 = zext nneg i32 %174 to i64
  %183 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %182
  br label %.backedge.backedge

184:                                              ; preds = %.loopexit119, %142
  %185 = phi i32 [ %143, %142 ], [ %148, %.loopexit119 ]
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %227

187:                                              ; preds = %184
  %188 = and i32 %106, 2
  %189 = icmp eq i32 %188, 0
  %190 = load i32, ptr %103, align 4, !tbaa !5
  br i1 %189, label %201, label %.preheader117

.preheader117:                                    ; preds = %187, %.preheader117
  %191 = phi i32 [ %197, %.preheader117 ], [ %190, %187 ]
  %192 = phi ptr [ %196, %.preheader117 ], [ %103, %187 ]
  %193 = phi ptr [ %194, %.preheader117 ], [ %104, %187 ]
  %194 = getelementptr inbounds i8, ptr %193, i64 -4
  store i32 %191, ptr %193, align 4, !tbaa !5
  %195 = load i32, ptr %194, align 4, !tbaa !5
  %196 = getelementptr inbounds i8, ptr %192, i64 -4
  store i32 %195, ptr %192, align 4, !tbaa !5
  %197 = load i32, ptr %196, align 4, !tbaa !5
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %.preheader117, label %199, !llvm.loop !152

199:                                              ; preds = %.preheader117
  %200 = and i32 %106, -3
  br label %201

201:                                              ; preds = %199, %187
  %202 = phi i32 [ %197, %199 ], [ %190, %187 ]
  %203 = phi ptr [ %196, %199 ], [ %103, %187 ]
  %204 = phi ptr [ %194, %199 ], [ %104, %187 ]
  %205 = phi i32 [ %200, %199 ], [ %106, %187 ]
  %206 = getelementptr inbounds i8, ptr %204, i64 -4
  store i32 %202, ptr %204, align 4, !tbaa !5
  %207 = load i32, ptr %206, align 4, !tbaa !5
  %208 = getelementptr inbounds i8, ptr %203, i64 -4
  store i32 %207, ptr %203, align 4, !tbaa !5
  %209 = icmp ult ptr %208, %.lcssa204
  br i1 %209, label %210, label %219

210:                                              ; preds = %201
  %211 = icmp ult ptr %5, %95
  br i1 %211, label %.preheader160, label %.loopexit161

.preheader160:                                    ; preds = %210, %.preheader160
  %212 = phi ptr [ %215, %.preheader160 ], [ %206, %210 ]
  %213 = phi ptr [ %217, %.preheader160 ], [ %95, %210 ]
  %214 = load i32, ptr %213, align 4, !tbaa !5
  %215 = getelementptr inbounds i8, ptr %212, i64 -4
  store i32 %214, ptr %212, align 4, !tbaa !5
  %216 = load i32, ptr %215, align 4, !tbaa !5
  %217 = getelementptr inbounds i8, ptr %213, i64 -4
  store i32 %216, ptr %213, align 4, !tbaa !5
  %218 = icmp ult ptr %5, %217
  br i1 %218, label %.preheader160, label %.loopexit161, !llvm.loop !153

219:                                              ; preds = %201
  %220 = load i32, ptr %208, align 4, !tbaa !5
  %.lobit = ashr i32 %220, 31
  %221 = xor i32 %.lobit, %220
  %222 = lshr i32 %220, 30
  %223 = and i32 %222, 2
  %224 = or disjoint i32 %223, %205
  %225 = zext i32 %221 to i64
  %226 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %225
  br label %102

227:                                              ; preds = %184
  %228 = and i32 %106, 1
  %229 = icmp eq i32 %228, 0
  %230 = load i32, ptr %95, align 4, !tbaa !5
  br i1 %229, label %241, label %.preheader130

.preheader130:                                    ; preds = %227, %.preheader130
  %231 = phi i32 [ %237, %.preheader130 ], [ %230, %227 ]
  %232 = phi ptr [ %236, %.preheader130 ], [ %95, %227 ]
  %233 = phi ptr [ %234, %.preheader130 ], [ %104, %227 ]
  %234 = getelementptr inbounds i8, ptr %233, i64 -4
  store i32 %231, ptr %233, align 4, !tbaa !5
  %235 = load i32, ptr %234, align 4, !tbaa !5
  %236 = getelementptr inbounds i8, ptr %232, i64 -4
  store i32 %235, ptr %232, align 4, !tbaa !5
  %237 = load i32, ptr %236, align 4, !tbaa !5
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %.preheader130, label %239, !llvm.loop !154

239:                                              ; preds = %.preheader130
  %240 = and i32 %106, -2
  br label %241

241:                                              ; preds = %239, %227
  %242 = phi i32 [ %237, %239 ], [ %230, %227 ]
  %243 = phi ptr [ %236, %239 ], [ %95, %227 ]
  %244 = phi ptr [ %234, %239 ], [ %104, %227 ]
  %245 = phi i32 [ %240, %239 ], [ %106, %227 ]
  %246 = xor i32 %242, -1
  store i32 %246, ptr %244, align 4, !tbaa !5
  %247 = icmp ugt ptr %243, %5
  br i1 %247, label %248, label %.loopexit164

248:                                              ; preds = %241
  %249 = getelementptr inbounds i8, ptr %244, i64 -4
  %250 = load i32, ptr %249, align 4, !tbaa !5
  %251 = getelementptr inbounds i8, ptr %243, i64 -4
  store i32 %250, ptr %243, align 4, !tbaa !5
  %252 = and i32 %245, 2
  %253 = icmp eq i32 %252, 0
  %254 = load i32, ptr %103, align 4, !tbaa !5
  br i1 %253, label %.loopexit129, label %.preheader128

.preheader128:                                    ; preds = %248, %.preheader128
  %255 = phi i32 [ %261, %.preheader128 ], [ %254, %248 ]
  %256 = phi ptr [ %260, %.preheader128 ], [ %103, %248 ]
  %257 = phi ptr [ %258, %.preheader128 ], [ %249, %248 ]
  %258 = getelementptr inbounds i8, ptr %257, i64 -4
  store i32 %255, ptr %257, align 4, !tbaa !5
  %259 = load i32, ptr %258, align 4, !tbaa !5
  %260 = getelementptr inbounds i8, ptr %256, i64 -4
  store i32 %259, ptr %256, align 4, !tbaa !5
  %261 = load i32, ptr %260, align 4, !tbaa !5
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %.preheader128, label %.loopexit129, !llvm.loop !155

.loopexit129:                                     ; preds = %.preheader128, %248
  %263 = phi i32 [ %254, %248 ], [ %261, %.preheader128 ]
  %264 = phi ptr [ %103, %248 ], [ %260, %.preheader128 ]
  %265 = phi ptr [ %249, %248 ], [ %258, %.preheader128 ]
  %266 = phi i32 [ %245, %248 ], [ 0, %.preheader128 ]
  %267 = getelementptr inbounds i8, ptr %265, i64 -4
  store i32 %263, ptr %265, align 4, !tbaa !5
  %268 = load i32, ptr %267, align 4, !tbaa !5
  %269 = getelementptr inbounds i8, ptr %264, i64 -4
  store i32 %268, ptr %264, align 4, !tbaa !5
  %270 = icmp ult ptr %269, %.lcssa204
  br i1 %270, label %271, label %280

271:                                              ; preds = %.loopexit129
  %272 = icmp ult ptr %5, %251
  br i1 %272, label %.preheader162, label %.loopexit161

.preheader162:                                    ; preds = %271, %.preheader162
  %273 = phi ptr [ %276, %.preheader162 ], [ %267, %271 ]
  %274 = phi ptr [ %278, %.preheader162 ], [ %251, %271 ]
  %275 = load i32, ptr %274, align 4, !tbaa !5
  %276 = getelementptr inbounds i8, ptr %273, i64 -4
  store i32 %275, ptr %273, align 4, !tbaa !5
  %277 = load i32, ptr %276, align 4, !tbaa !5
  %278 = getelementptr inbounds i8, ptr %274, i64 -4
  store i32 %277, ptr %274, align 4, !tbaa !5
  %279 = icmp ult ptr %5, %278
  br i1 %279, label %.preheader162, label %.loopexit161, !llvm.loop !156

280:                                              ; preds = %.loopexit129
  %281 = load i32, ptr %251, align 4, !tbaa !5
  %282 = ashr i32 %281, 31
  %283 = xor i32 %282, %281
  %284 = lshr i32 %281, 31
  %285 = or i32 %284, %266
  %286 = zext i32 %283 to i64
  %287 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %286
  %288 = load i32, ptr %269, align 4, !tbaa !5
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %280
  %291 = xor i32 %288, -1
  %292 = zext nneg i32 %291 to i64
  %293 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %292
  %294 = or disjoint i32 %285, 2
  br label %.backedge.backedge

295:                                              ; preds = %280
  %296 = zext nneg i32 %288 to i64
  %297 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %296
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %295, %290, %181, %176
  %.be = phi ptr [ %251, %295 ], [ %251, %290 ], [ %173, %181 ], [ %173, %176 ]
  %.be1088 = phi ptr [ %269, %295 ], [ %269, %290 ], [ %103, %181 ], [ %103, %176 ]
  %.be1089 = phi ptr [ %267, %295 ], [ %267, %290 ], [ %169, %181 ], [ %169, %176 ]
  %.be1090 = phi ptr [ %297, %295 ], [ %293, %290 ], [ %105, %181 ], [ %105, %176 ]
  %.be1091 = phi ptr [ %287, %295 ], [ %287, %290 ], [ %183, %181 ], [ %179, %176 ]
  %.be1092 = phi i32 [ %285, %295 ], [ %294, %290 ], [ %168, %181 ], [ %180, %176 ]
  br label %.backedge

.loopexit161:                                     ; preds = %.preheader162, %.preheader160, %271, %210
  %298 = phi ptr [ %95, %210 ], [ %251, %271 ], [ %217, %.preheader160 ], [ %278, %.preheader162 ]
  %299 = phi ptr [ %206, %210 ], [ %267, %271 ], [ %215, %.preheader160 ], [ %276, %.preheader162 ]
  %300 = load i32, ptr %298, align 4, !tbaa !5
  store i32 %300, ptr %299, align 4, !tbaa !5
  br label %.loopexit164

.loopexit164:                                     ; preds = %241, %164, %.loopexit161
  %301 = phi ptr [ %298, %.loopexit161 ], [ %5, %164 ], [ %5, %241 ]
  store i32 %94, ptr %301, align 4, !tbaa !5
  br label %302

302:                                              ; preds = %.loopexit164, %._crit_edge
  %303 = and i32 %.lcssa190, 1
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %307, label %305

305:                                              ; preds = %302
  %306 = load i32, ptr %.lcssa204, align 4, !tbaa !5
  br label %365

307:                                              ; preds = %302
  %308 = and i32 %.lcssa190, 2
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %368, label %310

310:                                              ; preds = %307
  %311 = getelementptr inbounds i8, ptr %.lcssa204, i64 -4
  %312 = load i32, ptr %311, align 4, !tbaa !5
  %313 = ashr i32 %312, 31
  %314 = xor i32 %313, %312
  %315 = zext nneg i32 %314 to i64
  %316 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %315
  %317 = load i32, ptr %.lcssa204, align 4, !tbaa !5
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [4 x i8], ptr %1, i64 %318
  %320 = load i32, ptr %316, align 4, !tbaa !5
  %321 = getelementptr i8, ptr %316, i64 4
  %322 = load i32, ptr %321, align 4, !tbaa !5
  %323 = load i32, ptr %319, align 4, !tbaa !5
  %324 = getelementptr i8, ptr %319, i64 4
  %325 = load i32, ptr %324, align 4, !tbaa !5
  %326 = sext i32 %320 to i64
  %327 = getelementptr inbounds i8, ptr %11, i64 %326
  %328 = sext i32 %323 to i64
  %329 = getelementptr inbounds i8, ptr %11, i64 %328
  %330 = sext i32 %322 to i64
  %331 = getelementptr i8, ptr %11, i64 %330
  %332 = sext i32 %325 to i64
  %333 = getelementptr i8, ptr %11, i64 %332
  %334 = icmp ult ptr %327, %331
  %335 = icmp ult ptr %329, %333
  %336 = select i1 %334, i1 %335, i1 false
  br i1 %336, label %.preheader157, label %.loopexit159

.preheader157:                                    ; preds = %310, %342
  %337 = phi ptr [ %343, %342 ], [ %327, %310 ]
  %338 = phi ptr [ %344, %342 ], [ %329, %310 ]
  %339 = load i8, ptr %337, align 1, !tbaa !9
  %340 = load i8, ptr %338, align 1, !tbaa !9
  %341 = icmp eq i8 %339, %340
  br i1 %341, label %342, label %.loopexit158

342:                                              ; preds = %.preheader157
  %343 = getelementptr inbounds nuw i8, ptr %337, i64 1
  %344 = getelementptr inbounds nuw i8, ptr %338, i64 1
  %345 = icmp ult ptr %343, %331
  %346 = icmp ult ptr %344, %333
  %347 = select i1 %345, i1 %346, i1 false
  br i1 %347, label %.preheader157, label %.loopexit159, !llvm.loop !26

.loopexit159:                                     ; preds = %342, %310
  %348 = phi ptr [ %329, %310 ], [ %344, %342 ]
  %349 = phi ptr [ %327, %310 ], [ %343, %342 ]
  %350 = phi i1 [ %334, %310 ], [ %345, %342 ]
  %351 = phi i1 [ %335, %310 ], [ %346, %342 ]
  br i1 %350, label %352, label %360

352:                                              ; preds = %.loopexit159
  br i1 %351, label %353, label %368

353:                                              ; preds = %352
  %354 = load i8, ptr %349, align 1, !tbaa !9
  %.pre599 = load i8, ptr %348, align 1, !tbaa !9
  br label %.loopexit158

.loopexit158:                                     ; preds = %.preheader157, %353
  %355 = phi i8 [ %.pre599, %353 ], [ %340, %.preheader157 ]
  %356 = phi i8 [ %354, %353 ], [ %339, %.preheader157 ]
  %357 = zext i8 %356 to i32
  %358 = zext i8 %355 to i32
  %359 = sub nsw i32 %357, %358
  br label %362

360:                                              ; preds = %.loopexit159
  %361 = sext i1 %351 to i32
  br label %362

362:                                              ; preds = %360, %.loopexit158
  %363 = phi i32 [ %361, %360 ], [ %359, %.loopexit158 ]
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %362, %305
  %366 = phi i32 [ %306, %305 ], [ %317, %362 ]
  %367 = xor i32 %366, -1
  store i32 %367, ptr %.lcssa204, align 4, !tbaa !5
  br label %368

368:                                              ; preds = %365, %362, %352, %307
  %369 = and i32 %.lcssa190, 4
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %428, label %371

371:                                              ; preds = %368
  %372 = getelementptr inbounds i8, ptr %13, i64 -4
  %373 = load i32, ptr %372, align 4, !tbaa !5
  %374 = ashr i32 %373, 31
  %375 = xor i32 %374, %373
  %376 = zext nneg i32 %375 to i64
  %377 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %376
  %378 = load i32, ptr %13, align 4, !tbaa !5
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [4 x i8], ptr %1, i64 %379
  %381 = load i32, ptr %377, align 4, !tbaa !5
  %382 = getelementptr i8, ptr %377, i64 4
  %383 = load i32, ptr %382, align 4, !tbaa !5
  %384 = load i32, ptr %380, align 4, !tbaa !5
  %385 = getelementptr i8, ptr %380, i64 4
  %386 = load i32, ptr %385, align 4, !tbaa !5
  %387 = sext i32 %381 to i64
  %388 = getelementptr inbounds i8, ptr %11, i64 %387
  %389 = sext i32 %384 to i64
  %390 = getelementptr inbounds i8, ptr %11, i64 %389
  %391 = sext i32 %383 to i64
  %392 = getelementptr i8, ptr %11, i64 %391
  %393 = sext i32 %386 to i64
  %394 = getelementptr i8, ptr %11, i64 %393
  %395 = icmp ult ptr %388, %392
  %396 = icmp ult ptr %390, %394
  %397 = select i1 %395, i1 %396, i1 false
  br i1 %397, label %.preheader154, label %.loopexit156

.preheader154:                                    ; preds = %371, %403
  %398 = phi ptr [ %404, %403 ], [ %388, %371 ]
  %399 = phi ptr [ %405, %403 ], [ %390, %371 ]
  %400 = load i8, ptr %398, align 1, !tbaa !9
  %401 = load i8, ptr %399, align 1, !tbaa !9
  %402 = icmp eq i8 %400, %401
  br i1 %402, label %403, label %.loopexit155

403:                                              ; preds = %.preheader154
  %404 = getelementptr inbounds nuw i8, ptr %398, i64 1
  %405 = getelementptr inbounds nuw i8, ptr %399, i64 1
  %406 = icmp ult ptr %404, %392
  %407 = icmp ult ptr %405, %394
  %408 = select i1 %406, i1 %407, i1 false
  br i1 %408, label %.preheader154, label %.loopexit156, !llvm.loop !26

.loopexit156:                                     ; preds = %403, %371
  %409 = phi ptr [ %390, %371 ], [ %405, %403 ]
  %410 = phi ptr [ %388, %371 ], [ %404, %403 ]
  %411 = phi i1 [ %395, %371 ], [ %406, %403 ]
  %412 = phi i1 [ %396, %371 ], [ %407, %403 ]
  br i1 %411, label %413, label %421

413:                                              ; preds = %.loopexit156
  br i1 %412, label %414, label %428

414:                                              ; preds = %413
  %415 = load i8, ptr %410, align 1, !tbaa !9
  %.pre600 = load i8, ptr %409, align 1, !tbaa !9
  br label %.loopexit155

.loopexit155:                                     ; preds = %.preheader154, %414
  %416 = phi i8 [ %.pre600, %414 ], [ %401, %.preheader154 ]
  %417 = phi i8 [ %415, %414 ], [ %400, %.preheader154 ]
  %418 = zext i8 %417 to i32
  %419 = zext i8 %416 to i32
  %420 = sub nsw i32 %418, %419
  br label %423

421:                                              ; preds = %.loopexit156
  %422 = sext i1 %412 to i32
  br label %423

423:                                              ; preds = %421, %.loopexit155
  %424 = phi i32 [ %422, %421 ], [ %420, %.loopexit155 ]
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %428

426:                                              ; preds = %423
  %427 = xor i32 %378, -1
  store i32 %427, ptr %13, align 4, !tbaa !5
  br label %428

428:                                              ; preds = %426, %423, %413, %368
  %429 = icmp sgt i32 %.lcssa197, -1
  br i1 %429, label %431, label %430

430:                                              ; preds = %428
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 771, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #10
  unreachable

431:                                              ; preds = %428
  %432 = icmp eq i32 %.lcssa197, 0
  br i1 %432, label %1176, label %433

433:                                              ; preds = %431
  %434 = add nsw i32 %.lcssa197, -1
  %435 = zext nneg i32 %434 to i64
  %436 = getelementptr inbounds nuw [32 x i8], ptr %8, i64 %435
  %437 = load ptr, ptr %436, align 16, !tbaa !157
  %438 = getelementptr inbounds nuw i8, ptr %436, i64 8
  %439 = load ptr, ptr %438, align 8, !tbaa !159
  %440 = getelementptr inbounds nuw i8, ptr %436, i64 16
  %441 = load ptr, ptr %440, align 16, !tbaa !160
  %442 = getelementptr inbounds nuw i8, ptr %436, i64 24
  %443 = load i32, ptr %442, align 8, !tbaa !161
  br label %.backedge1179.backedge

.lr.ph:                                           ; preds = %955, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %23, %.lr.ph.preheader ], [ %indvars.iv.next, %955 ]
  %444 = phi i64 [ %21, %.lr.ph.preheader ], [ %974, %955 ]
  %445 = phi i64 [ %20, %.lr.ph.preheader ], [ %973, %955 ]
  %446 = phi i64 [ %19, %.lr.ph.preheader ], [ %972, %955 ]
  %447 = phi i32 [ %17, %.lr.ph.preheader ], [ %971, %955 ]
  %448 = phi ptr [ %15, %.lr.ph.preheader ], [ %933, %955 ]
  %449 = phi ptr [ %14, %.lr.ph.preheader ], [ %905, %955 ]
  %450 = ptrtoint ptr %448 to i64
  %451 = sub i64 %446, %450
  %452 = ashr exact i64 %451, 2
  %453 = icmp sgt i64 %452, %9
  br i1 %453, label %783, label %454

454:                                              ; preds = %.lr.ph
  %455 = trunc nsw i64 %indvars.iv to i32
  %456 = icmp ult ptr %448, %449
  br i1 %456, label %457, label %641

457:                                              ; preds = %454
  %458 = getelementptr i8, ptr %10, i64 %451
  %459 = add nsw i64 %452, 2147483648
  %460 = icmp ult i64 %459, 4294967296
  br i1 %460, label %462, label %461

461:                                              ; preds = %457
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.src, i32 noundef 643, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mergeforward) #10
  unreachable

462:                                              ; preds = %457
  %463 = icmp sgt i64 %452, 0
  br i1 %463, label %464, label %.loopexit153

464:                                              ; preds = %462
  %465 = trunc nuw nsw i64 %452 to i32
  %466 = icmp samesign ult i64 %452, 8
  br i1 %466, label %.preheader1175.preheader, label %467

467:                                              ; preds = %464
  %468 = add nuw i64 %451, 17179869180
  %469 = and i64 %468, 17179869180
  %470 = getelementptr i8, ptr %12, i64 %469
  %471 = getelementptr i8, ptr %448, i64 4
  %472 = getelementptr i8, ptr %471, i64 %469
  %473 = icmp ult ptr %5, %472
  %474 = icmp ult ptr %448, %470
  %475 = and i1 %473, %474
  br i1 %475, label %.preheader1175.preheader, label %476

476:                                              ; preds = %467
  %477 = and i64 %452, 8589934584
  br label %478

478:                                              ; preds = %478, %476
  %479 = phi i64 [ 0, %476 ], [ %489, %478 ]
  %480 = shl i64 %479, 2
  %481 = getelementptr i8, ptr %5, i64 %480
  %482 = getelementptr i8, ptr %448, i64 %480
  %483 = getelementptr i8, ptr %481, i64 16
  %484 = load <4 x i32>, ptr %481, align 4, !tbaa !5, !alias.scope !162, !noalias !165
  %485 = load <4 x i32>, ptr %483, align 4, !tbaa !5, !alias.scope !162, !noalias !165
  %486 = getelementptr i8, ptr %482, i64 16
  %487 = load <4 x i32>, ptr %482, align 4, !tbaa !5, !alias.scope !165
  %488 = load <4 x i32>, ptr %486, align 4, !tbaa !5, !alias.scope !165
  store <4 x i32> %487, ptr %481, align 4, !tbaa !5, !alias.scope !162, !noalias !165
  store <4 x i32> %488, ptr %483, align 4, !tbaa !5, !alias.scope !162, !noalias !165
  store <4 x i32> %484, ptr %482, align 4, !tbaa !5, !alias.scope !165
  store <4 x i32> %485, ptr %486, align 4, !tbaa !5, !alias.scope !165
  %489 = add nuw nsw i64 %479, 8
  %490 = icmp eq i64 %489, %477
  br i1 %490, label %491, label %478, !llvm.loop !167

491:                                              ; preds = %478
  %492 = shl nuw nsw i64 %477, 2
  %493 = getelementptr i8, ptr %5, i64 %492
  %494 = trunc nuw nsw i64 %477 to i32
  %495 = sub nsw i32 %465, %494
  %496 = getelementptr i8, ptr %448, i64 %492
  %497 = icmp eq i64 %452, %477
  br i1 %497, label %.loopexit153, label %.preheader1175.preheader

.preheader1175.preheader:                         ; preds = %491, %467, %464
  %.ph1099 = phi ptr [ %5, %467 ], [ %5, %464 ], [ %493, %491 ]
  %.ph1100 = phi i32 [ %465, %467 ], [ %465, %464 ], [ %495, %491 ]
  %.ph1101 = phi ptr [ %448, %467 ], [ %448, %464 ], [ %496, %491 ]
  br label %.preheader1175

.preheader1175:                                   ; preds = %.preheader1175.preheader, %.preheader1175
  %498 = phi ptr [ %504, %.preheader1175 ], [ %.ph1099, %.preheader1175.preheader ]
  %499 = phi i32 [ %503, %.preheader1175 ], [ %.ph1100, %.preheader1175.preheader ]
  %500 = phi ptr [ %505, %.preheader1175 ], [ %.ph1101, %.preheader1175.preheader ]
  %501 = load i32, ptr %498, align 4, !tbaa !5
  %502 = load i32, ptr %500, align 4, !tbaa !5
  store i32 %502, ptr %498, align 4, !tbaa !5
  store i32 %501, ptr %500, align 4, !tbaa !5
  %503 = add nsw i32 %499, -1
  %504 = getelementptr inbounds nuw i8, ptr %498, i64 4
  %505 = getelementptr inbounds nuw i8, ptr %500, i64 4
  %506 = icmp samesign ugt i32 %499, 1
  br i1 %506, label %.preheader1175, label %.loopexit153, !llvm.loop !168

.loopexit153:                                     ; preds = %.preheader1175, %491, %462
  %507 = load i32, ptr %448, align 4, !tbaa !5
  br label %.loopexit124

.loopexit124.backedge:                            ; preds = %598, %638
  %.be1096 = phi ptr [ %624, %638 ], [ %584, %598 ]
  %.be1097 = phi ptr [ %613, %638 ], [ %513, %598 ]
  %.be1098 = phi ptr [ %622, %638 ], [ %582, %598 ]
  br label %.loopexit124

.loopexit124:                                     ; preds = %.loopexit124.backedge, %.loopexit153
  %508 = phi ptr [ %449, %.loopexit153 ], [ %.be1096, %.loopexit124.backedge ]
  %509 = phi ptr [ %5, %.loopexit153 ], [ %.be1097, %.loopexit124.backedge ]
  %510 = phi ptr [ %448, %.loopexit153 ], [ %.be1098, %.loopexit124.backedge ]
  %.pre = load i32, ptr %509, align 4, !tbaa !5
  br label %511

.loopexit:                                        ; preds = %571
  br label %511, !llvm.loop !169

511:                                              ; preds = %.loopexit, %.loopexit124
  %512 = phi i32 [ %.pre, %.loopexit124 ], [ %575, %.loopexit ]
  %513 = phi ptr [ %509, %.loopexit124 ], [ %574, %.loopexit ]
  %514 = phi ptr [ %510, %.loopexit124 ], [ %572, %.loopexit ]
  %515 = sext i32 %512 to i64
  %516 = getelementptr inbounds [4 x i8], ptr %1, i64 %515
  %517 = load i32, ptr %508, align 4, !tbaa !5
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds [4 x i8], ptr %1, i64 %518
  %520 = load i32, ptr %516, align 4, !tbaa !5
  %521 = getelementptr i8, ptr %516, i64 4
  %522 = load i32, ptr %521, align 4, !tbaa !5
  %523 = load i32, ptr %519, align 4, !tbaa !5
  %524 = getelementptr i8, ptr %519, i64 4
  %525 = load i32, ptr %524, align 4, !tbaa !5
  %526 = sext i32 %520 to i64
  %527 = getelementptr inbounds i8, ptr %11, i64 %526
  %528 = sext i32 %523 to i64
  %529 = getelementptr inbounds i8, ptr %11, i64 %528
  %530 = sext i32 %522 to i64
  %531 = getelementptr i8, ptr %11, i64 %530
  %532 = sext i32 %525 to i64
  %533 = getelementptr i8, ptr %11, i64 %532
  %534 = icmp ult ptr %527, %531
  %535 = icmp ult ptr %529, %533
  %536 = select i1 %534, i1 %535, i1 false
  br i1 %536, label %.preheader114, label %.loopexit116

.preheader114:                                    ; preds = %511, %542
  %537 = phi ptr [ %543, %542 ], [ %527, %511 ]
  %538 = phi ptr [ %544, %542 ], [ %529, %511 ]
  %539 = load i8, ptr %537, align 1, !tbaa !9
  %540 = load i8, ptr %538, align 1, !tbaa !9
  %541 = icmp eq i8 %539, %540
  br i1 %541, label %542, label %.loopexit115

542:                                              ; preds = %.preheader114
  %543 = getelementptr inbounds nuw i8, ptr %537, i64 1
  %544 = getelementptr inbounds nuw i8, ptr %538, i64 1
  %545 = icmp ult ptr %543, %531
  %546 = icmp ult ptr %544, %533
  %547 = select i1 %545, i1 %546, i1 false
  br i1 %547, label %.preheader114, label %.loopexit116, !llvm.loop !26

.loopexit116:                                     ; preds = %542, %511
  %548 = phi ptr [ %529, %511 ], [ %544, %542 ]
  %549 = phi ptr [ %527, %511 ], [ %543, %542 ]
  %550 = phi i1 [ %534, %511 ], [ %545, %542 ]
  %551 = phi i1 [ %535, %511 ], [ %546, %542 ]
  br i1 %550, label %552, label %561

552:                                              ; preds = %.loopexit116
  br i1 %551, label %553, label %.loopexit126.preheader

553:                                              ; preds = %552
  %554 = load i8, ptr %549, align 1, !tbaa !9
  %555 = load i8, ptr %548, align 1, !tbaa !9
  br label %.loopexit115

.loopexit115:                                     ; preds = %.preheader114, %553
  %556 = phi i8 [ %555, %553 ], [ %540, %.preheader114 ]
  %557 = phi i8 [ %554, %553 ], [ %539, %.preheader114 ]
  %558 = zext i8 %557 to i32
  %559 = zext i8 %556 to i32
  %560 = sub nsw i32 %558, %559
  br label %563

561:                                              ; preds = %.loopexit116
  %562 = sext i1 %551 to i32
  br label %563

563:                                              ; preds = %561, %.loopexit115
  %564 = phi i32 [ %562, %561 ], [ %560, %.loopexit115 ]
  %565 = icmp slt i32 %564, 0
  br i1 %565, label %.preheader, label %577

.preheader:                                       ; preds = %563, %571
  %566 = phi i32 [ %575, %571 ], [ %512, %563 ]
  %567 = phi ptr [ %574, %571 ], [ %513, %563 ]
  %568 = phi ptr [ %572, %571 ], [ %514, %563 ]
  store i32 %566, ptr %568, align 4, !tbaa !5
  %569 = icmp ugt ptr %458, %567
  br i1 %569, label %571, label %570

570:                                              ; preds = %.preheader
  store i32 %507, ptr %458, align 4, !tbaa !5
  br label %641

571:                                              ; preds = %.preheader
  %572 = getelementptr inbounds nuw i8, ptr %568, i64 4
  %573 = load i32, ptr %572, align 4, !tbaa !5
  %574 = getelementptr inbounds nuw i8, ptr %567, i64 4
  store i32 %573, ptr %567, align 4, !tbaa !5
  %575 = load i32, ptr %574, align 4, !tbaa !5
  %576 = icmp slt i32 %575, 0
  br i1 %576, label %.preheader, label %.loopexit, !llvm.loop !169

577:                                              ; preds = %563
  %578 = icmp eq i32 %564, 0
  br i1 %578, label %601, label %.loopexit126.preheader

.loopexit126.preheader:                           ; preds = %552, %577
  br label %.loopexit126

.loopexit126:                                     ; preds = %.loopexit126.preheader, %598
  %579 = phi i32 [ %599, %598 ], [ %517, %.loopexit126.preheader ]
  %580 = phi ptr [ %584, %598 ], [ %508, %.loopexit126.preheader ]
  %581 = phi ptr [ %582, %598 ], [ %514, %.loopexit126.preheader ]
  %582 = getelementptr inbounds nuw i8, ptr %581, i64 4
  store i32 %579, ptr %581, align 4, !tbaa !5
  %583 = load i32, ptr %582, align 4, !tbaa !5
  %584 = getelementptr inbounds nuw i8, ptr %580, i64 4
  store i32 %583, ptr %580, align 4, !tbaa !5
  %585 = icmp ugt ptr %13, %584
  br i1 %585, label %598, label %586

586:                                              ; preds = %.loopexit126
  %587 = icmp ult ptr %513, %458
  br i1 %587, label %.preheader151, label %.loopexit152

.preheader151:                                    ; preds = %586, %.preheader151
  %588 = phi ptr [ %591, %.preheader151 ], [ %582, %586 ]
  %589 = phi ptr [ %593, %.preheader151 ], [ %513, %586 ]
  %590 = load i32, ptr %589, align 4, !tbaa !5
  %591 = getelementptr inbounds nuw i8, ptr %588, i64 4
  store i32 %590, ptr %588, align 4, !tbaa !5
  %592 = load i32, ptr %591, align 4, !tbaa !5
  %593 = getelementptr inbounds nuw i8, ptr %589, i64 4
  store i32 %592, ptr %589, align 4, !tbaa !5
  %594 = icmp ult ptr %593, %458
  br i1 %594, label %.preheader151, label %.loopexit152, !llvm.loop !170

.loopexit152:                                     ; preds = %.preheader151, %586
  %595 = phi ptr [ %513, %586 ], [ %593, %.preheader151 ]
  %596 = phi ptr [ %582, %586 ], [ %591, %.preheader151 ]
  %597 = load i32, ptr %595, align 4, !tbaa !5
  store i32 %597, ptr %596, align 4, !tbaa !5
  store i32 %507, ptr %595, align 4, !tbaa !5
  br label %641

598:                                              ; preds = %.loopexit126
  %599 = load i32, ptr %584, align 4, !tbaa !5
  %600 = icmp slt i32 %599, 0
  br i1 %600, label %.loopexit126, label %.loopexit124.backedge, !llvm.loop !171

601:                                              ; preds = %577
  %602 = xor i32 %517, -1
  store i32 %602, ptr %508, align 4, !tbaa !5
  %603 = load i32, ptr %513, align 4, !tbaa !5
  br label %604

604:                                              ; preds = %610, %601
  %605 = phi i32 [ %603, %601 ], [ %614, %610 ]
  %606 = phi ptr [ %513, %601 ], [ %613, %610 ]
  %607 = phi ptr [ %514, %601 ], [ %611, %610 ]
  store i32 %605, ptr %607, align 4, !tbaa !5
  %608 = icmp ugt ptr %458, %606
  br i1 %608, label %610, label %609

609:                                              ; preds = %604
  store i32 %507, ptr %458, align 4, !tbaa !5
  br label %641

610:                                              ; preds = %604
  %611 = getelementptr inbounds nuw i8, ptr %607, i64 4
  %612 = load i32, ptr %611, align 4, !tbaa !5
  %613 = getelementptr inbounds nuw i8, ptr %606, i64 4
  store i32 %612, ptr %606, align 4, !tbaa !5
  %614 = load i32, ptr %613, align 4, !tbaa !5
  %615 = icmp slt i32 %614, 0
  br i1 %615, label %604, label %616, !llvm.loop !172

616:                                              ; preds = %610
  %617 = load i32, ptr %508, align 4, !tbaa !5
  br label %618

618:                                              ; preds = %638, %616
  %619 = phi i32 [ %639, %638 ], [ %617, %616 ]
  %620 = phi ptr [ %624, %638 ], [ %508, %616 ]
  %621 = phi ptr [ %622, %638 ], [ %611, %616 ]
  %622 = getelementptr inbounds nuw i8, ptr %621, i64 4
  store i32 %619, ptr %621, align 4, !tbaa !5
  %623 = load i32, ptr %622, align 4, !tbaa !5
  %624 = getelementptr inbounds nuw i8, ptr %620, i64 4
  store i32 %623, ptr %620, align 4, !tbaa !5
  %625 = icmp ugt ptr %13, %624
  br i1 %625, label %638, label %626

626:                                              ; preds = %618
  %627 = icmp ult ptr %613, %458
  br i1 %627, label %.preheader149, label %.loopexit150

.preheader149:                                    ; preds = %626, %.preheader149
  %628 = phi ptr [ %631, %.preheader149 ], [ %622, %626 ]
  %629 = phi ptr [ %633, %.preheader149 ], [ %613, %626 ]
  %630 = load i32, ptr %629, align 4, !tbaa !5
  %631 = getelementptr inbounds nuw i8, ptr %628, i64 4
  store i32 %630, ptr %628, align 4, !tbaa !5
  %632 = load i32, ptr %631, align 4, !tbaa !5
  %633 = getelementptr inbounds nuw i8, ptr %629, i64 4
  store i32 %632, ptr %629, align 4, !tbaa !5
  %634 = icmp ult ptr %633, %458
  br i1 %634, label %.preheader149, label %.loopexit150, !llvm.loop !173

.loopexit150:                                     ; preds = %.preheader149, %626
  %635 = phi ptr [ %613, %626 ], [ %633, %.preheader149 ]
  %636 = phi ptr [ %622, %626 ], [ %631, %.preheader149 ]
  %637 = load i32, ptr %635, align 4, !tbaa !5
  store i32 %637, ptr %636, align 4, !tbaa !5
  store i32 %507, ptr %635, align 4, !tbaa !5
  br label %641

638:                                              ; preds = %618
  %639 = load i32, ptr %624, align 4, !tbaa !5
  %640 = icmp slt i32 %639, 0
  br i1 %640, label %618, label %.loopexit124.backedge, !llvm.loop !174

641:                                              ; preds = %.loopexit150, %609, %.loopexit152, %570, %454
  %642 = and i32 %447, 1
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %646, label %644

644:                                              ; preds = %641
  %645 = load i32, ptr %448, align 4, !tbaa !5
  br label %704

646:                                              ; preds = %641
  %647 = and i32 %447, 2
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %707, label %649

649:                                              ; preds = %646
  %650 = getelementptr inbounds i8, ptr %448, i64 -4
  %651 = load i32, ptr %650, align 4, !tbaa !5
  %652 = ashr i32 %651, 31
  %653 = xor i32 %652, %651
  %654 = zext nneg i32 %653 to i64
  %655 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %654
  %656 = load i32, ptr %448, align 4, !tbaa !5
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds [4 x i8], ptr %1, i64 %657
  %659 = load i32, ptr %655, align 4, !tbaa !5
  %660 = getelementptr i8, ptr %655, i64 4
  %661 = load i32, ptr %660, align 4, !tbaa !5
  %662 = load i32, ptr %658, align 4, !tbaa !5
  %663 = getelementptr i8, ptr %658, i64 4
  %664 = load i32, ptr %663, align 4, !tbaa !5
  %665 = sext i32 %659 to i64
  %666 = getelementptr inbounds i8, ptr %11, i64 %665
  %667 = sext i32 %662 to i64
  %668 = getelementptr inbounds i8, ptr %11, i64 %667
  %669 = sext i32 %661 to i64
  %670 = getelementptr i8, ptr %11, i64 %669
  %671 = sext i32 %664 to i64
  %672 = getelementptr i8, ptr %11, i64 %671
  %673 = icmp ult ptr %666, %670
  %674 = icmp ult ptr %668, %672
  %675 = select i1 %673, i1 %674, i1 false
  br i1 %675, label %.preheader146, label %.loopexit148

.preheader146:                                    ; preds = %649, %681
  %676 = phi ptr [ %682, %681 ], [ %666, %649 ]
  %677 = phi ptr [ %683, %681 ], [ %668, %649 ]
  %678 = load i8, ptr %676, align 1, !tbaa !9
  %679 = load i8, ptr %677, align 1, !tbaa !9
  %680 = icmp eq i8 %678, %679
  br i1 %680, label %681, label %.loopexit147

681:                                              ; preds = %.preheader146
  %682 = getelementptr inbounds nuw i8, ptr %676, i64 1
  %683 = getelementptr inbounds nuw i8, ptr %677, i64 1
  %684 = icmp ult ptr %682, %670
  %685 = icmp ult ptr %683, %672
  %686 = select i1 %684, i1 %685, i1 false
  br i1 %686, label %.preheader146, label %.loopexit148, !llvm.loop !26

.loopexit148:                                     ; preds = %681, %649
  %687 = phi ptr [ %668, %649 ], [ %683, %681 ]
  %688 = phi ptr [ %666, %649 ], [ %682, %681 ]
  %689 = phi i1 [ %673, %649 ], [ %684, %681 ]
  %690 = phi i1 [ %674, %649 ], [ %685, %681 ]
  br i1 %689, label %691, label %699

691:                                              ; preds = %.loopexit148
  br i1 %690, label %692, label %707

692:                                              ; preds = %691
  %693 = load i8, ptr %688, align 1, !tbaa !9
  %.pre593 = load i8, ptr %687, align 1, !tbaa !9
  br label %.loopexit147

.loopexit147:                                     ; preds = %.preheader146, %692
  %694 = phi i8 [ %.pre593, %692 ], [ %679, %.preheader146 ]
  %695 = phi i8 [ %693, %692 ], [ %678, %.preheader146 ]
  %696 = zext i8 %695 to i32
  %697 = zext i8 %694 to i32
  %698 = sub nsw i32 %696, %697
  br label %701

699:                                              ; preds = %.loopexit148
  %700 = sext i1 %690 to i32
  br label %701

701:                                              ; preds = %699, %.loopexit147
  %702 = phi i32 [ %700, %699 ], [ %698, %.loopexit147 ]
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %704, label %707

704:                                              ; preds = %701, %644
  %705 = phi i32 [ %645, %644 ], [ %656, %701 ]
  %706 = xor i32 %705, -1
  store i32 %706, ptr %448, align 4, !tbaa !5
  br label %707

707:                                              ; preds = %704, %701, %691, %646
  %708 = and i32 %447, 4
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %767, label %710

710:                                              ; preds = %707
  %711 = getelementptr inbounds i8, ptr %13, i64 -4
  %712 = load i32, ptr %711, align 4, !tbaa !5
  %713 = ashr i32 %712, 31
  %714 = xor i32 %713, %712
  %715 = zext nneg i32 %714 to i64
  %716 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %715
  %717 = load i32, ptr %13, align 4, !tbaa !5
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds [4 x i8], ptr %1, i64 %718
  %720 = load i32, ptr %716, align 4, !tbaa !5
  %721 = getelementptr i8, ptr %716, i64 4
  %722 = load i32, ptr %721, align 4, !tbaa !5
  %723 = load i32, ptr %719, align 4, !tbaa !5
  %724 = getelementptr i8, ptr %719, i64 4
  %725 = load i32, ptr %724, align 4, !tbaa !5
  %726 = sext i32 %720 to i64
  %727 = getelementptr inbounds i8, ptr %11, i64 %726
  %728 = sext i32 %723 to i64
  %729 = getelementptr inbounds i8, ptr %11, i64 %728
  %730 = sext i32 %722 to i64
  %731 = getelementptr i8, ptr %11, i64 %730
  %732 = sext i32 %725 to i64
  %733 = getelementptr i8, ptr %11, i64 %732
  %734 = icmp ult ptr %727, %731
  %735 = icmp ult ptr %729, %733
  %736 = select i1 %734, i1 %735, i1 false
  br i1 %736, label %.preheader143, label %.loopexit145

.preheader143:                                    ; preds = %710, %742
  %737 = phi ptr [ %743, %742 ], [ %727, %710 ]
  %738 = phi ptr [ %744, %742 ], [ %729, %710 ]
  %739 = load i8, ptr %737, align 1, !tbaa !9
  %740 = load i8, ptr %738, align 1, !tbaa !9
  %741 = icmp eq i8 %739, %740
  br i1 %741, label %742, label %.loopexit144

742:                                              ; preds = %.preheader143
  %743 = getelementptr inbounds nuw i8, ptr %737, i64 1
  %744 = getelementptr inbounds nuw i8, ptr %738, i64 1
  %745 = icmp ult ptr %743, %731
  %746 = icmp ult ptr %744, %733
  %747 = select i1 %745, i1 %746, i1 false
  br i1 %747, label %.preheader143, label %.loopexit145, !llvm.loop !26

.loopexit145:                                     ; preds = %742, %710
  %748 = phi ptr [ %729, %710 ], [ %744, %742 ]
  %749 = phi ptr [ %727, %710 ], [ %743, %742 ]
  %750 = phi i1 [ %734, %710 ], [ %745, %742 ]
  %751 = phi i1 [ %735, %710 ], [ %746, %742 ]
  br i1 %750, label %752, label %760

752:                                              ; preds = %.loopexit145
  br i1 %751, label %753, label %767

753:                                              ; preds = %752
  %754 = load i8, ptr %749, align 1, !tbaa !9
  %.pre594 = load i8, ptr %748, align 1, !tbaa !9
  br label %.loopexit144

.loopexit144:                                     ; preds = %.preheader143, %753
  %755 = phi i8 [ %.pre594, %753 ], [ %740, %.preheader143 ]
  %756 = phi i8 [ %754, %753 ], [ %739, %.preheader143 ]
  %757 = zext i8 %756 to i32
  %758 = zext i8 %755 to i32
  %759 = sub nsw i32 %757, %758
  br label %762

760:                                              ; preds = %.loopexit145
  %761 = sext i1 %751 to i32
  br label %762

762:                                              ; preds = %760, %.loopexit144
  %763 = phi i32 [ %761, %760 ], [ %759, %.loopexit144 ]
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %767

765:                                              ; preds = %762
  %766 = xor i32 %717, -1
  store i32 %766, ptr %13, align 4, !tbaa !5
  br label %767

767:                                              ; preds = %765, %762, %752, %707
  %768 = icmp sgt i64 %indvars.iv, -1
  br i1 %768, label %770, label %769

769:                                              ; preds = %767
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 780, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #10
  unreachable

770:                                              ; preds = %767
  %771 = icmp eq i64 %indvars.iv, 0
  br i1 %771, label %1176, label %772

772:                                              ; preds = %770
  %773 = add nsw i32 %455, -1
  %774 = zext nneg i32 %773 to i64
  %775 = getelementptr inbounds nuw [32 x i8], ptr %8, i64 %774
  %776 = load ptr, ptr %775, align 16, !tbaa !157
  %777 = getelementptr inbounds nuw i8, ptr %775, i64 8
  %778 = load ptr, ptr %777, align 8, !tbaa !159
  %779 = getelementptr inbounds nuw i8, ptr %775, i64 16
  %780 = load ptr, ptr %779, align 16, !tbaa !160
  %781 = getelementptr inbounds nuw i8, ptr %775, i64 24
  %782 = load i32, ptr %781, align 8, !tbaa !161
  br label %.backedge1179.backedge

783:                                              ; preds = %.lr.ph
  %784 = tail call i64 @llvm.smin.i64(i64 %452, i64 %444)
  %785 = icmp slt i64 %784, 2147483648
  br i1 %785, label %787, label %786

786:                                              ; preds = %783
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.src, i32 noundef 784, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #10
  unreachable

787:                                              ; preds = %783
  %788 = icmp sgt i64 %784, 0
  br i1 %788, label %789, label %976

789:                                              ; preds = %787
  %790 = trunc nuw nsw i64 %784 to i32
  br label %791

791:                                              ; preds = %863, %789
  %792 = phi i32 [ %865, %863 ], [ %790, %789 ]
  %793 = phi i32 [ %864, %863 ], [ 0, %789 ]
  %794 = lshr i32 %792, 1
  %795 = sext i32 %793 to i64
  %796 = getelementptr inbounds [4 x i8], ptr %449, i64 %795
  %797 = zext nneg i32 %794 to i64
  %798 = getelementptr inbounds nuw [4 x i8], ptr %796, i64 %797
  %799 = load i32, ptr %798, align 4, !tbaa !5
  %800 = ashr i32 %799, 31
  %801 = xor i32 %800, %799
  %802 = zext nneg i32 %801 to i64
  %803 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %802
  %804 = sub nsw i64 0, %795
  %805 = getelementptr inbounds [4 x i8], ptr %449, i64 %804
  %806 = sub nsw i64 0, %797
  %807 = getelementptr inbounds [4 x i8], ptr %805, i64 %806
  %808 = getelementptr inbounds i8, ptr %807, i64 -4
  %809 = load i32, ptr %808, align 4, !tbaa !5
  %810 = ashr i32 %809, 31
  %811 = xor i32 %810, %809
  %812 = zext nneg i32 %811 to i64
  %813 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %812
  %814 = load i32, ptr %803, align 4, !tbaa !5
  %815 = getelementptr i8, ptr %803, i64 4
  %816 = load i32, ptr %815, align 4, !tbaa !5
  %817 = load i32, ptr %813, align 4, !tbaa !5
  %818 = getelementptr i8, ptr %813, i64 4
  %819 = load i32, ptr %818, align 4, !tbaa !5
  %820 = sext i32 %814 to i64
  %821 = getelementptr inbounds i8, ptr %11, i64 %820
  %822 = sext i32 %817 to i64
  %823 = getelementptr inbounds i8, ptr %11, i64 %822
  %824 = sext i32 %816 to i64
  %825 = getelementptr i8, ptr %11, i64 %824
  %826 = sext i32 %819 to i64
  %827 = getelementptr i8, ptr %11, i64 %826
  %828 = icmp ult ptr %821, %825
  %829 = icmp ult ptr %823, %827
  %830 = select i1 %828, i1 %829, i1 false
  br i1 %830, label %.preheader121, label %.loopexit123

.preheader121:                                    ; preds = %791, %836
  %831 = phi ptr [ %837, %836 ], [ %821, %791 ]
  %832 = phi ptr [ %838, %836 ], [ %823, %791 ]
  %833 = load i8, ptr %831, align 1, !tbaa !9
  %834 = load i8, ptr %832, align 1, !tbaa !9
  %835 = icmp eq i8 %833, %834
  br i1 %835, label %836, label %.loopexit122

836:                                              ; preds = %.preheader121
  %837 = getelementptr inbounds nuw i8, ptr %831, i64 1
  %838 = getelementptr inbounds nuw i8, ptr %832, i64 1
  %839 = icmp ult ptr %837, %825
  %840 = icmp ult ptr %838, %827
  %841 = select i1 %839, i1 %840, i1 false
  br i1 %841, label %.preheader121, label %.loopexit123, !llvm.loop !26

.loopexit123:                                     ; preds = %836, %791
  %842 = phi ptr [ %823, %791 ], [ %838, %836 ]
  %843 = phi ptr [ %821, %791 ], [ %837, %836 ]
  %844 = phi i1 [ %828, %791 ], [ %839, %836 ]
  %845 = phi i1 [ %829, %791 ], [ %840, %836 ]
  br i1 %844, label %846, label %852

846:                                              ; preds = %.loopexit123
  br i1 %845, label %847, label %863

847:                                              ; preds = %846
  %848 = load i8, ptr %843, align 1, !tbaa !9
  %.pre595 = load i8, ptr %842, align 1, !tbaa !9
  br label %.loopexit122

.loopexit122:                                     ; preds = %.preheader121, %847
  %849 = phi i8 [ %.pre595, %847 ], [ %834, %.preheader121 ]
  %850 = phi i8 [ %848, %847 ], [ %833, %.preheader121 ]
  %851 = icmp ult i8 %850, %849
  br i1 %851, label %854, label %863

852:                                              ; preds = %.loopexit123
  br i1 %845, label %854, label %863

853:                                              ; preds = %854
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

854:                                              ; preds = %852, %.loopexit122
  %855 = add nuw nsw i32 %794, 1
  %856 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %793, i32 %855), !nosanitize !10
  %857 = extractvalue { i32, i1 } %856, 1, !nosanitize !10
  br i1 %857, label %853, label %858, !prof !11, !nosanitize !10

858:                                              ; preds = %854
  %859 = extractvalue { i32, i1 } %856, 0, !nosanitize !10
  %860 = and i32 %792, 1
  %861 = xor i32 %860, 1
  %862 = sub nsw i32 %794, %861
  br label %863

863:                                              ; preds = %858, %852, %.loopexit122, %846
  %864 = phi i32 [ %859, %858 ], [ %793, %852 ], [ %793, %846 ], [ %793, %.loopexit122 ]
  %865 = phi i32 [ %862, %858 ], [ %794, %852 ], [ %794, %846 ], [ %794, %.loopexit122 ]
  %866 = icmp sgt i32 %865, 0
  br i1 %866, label %791, label %867, !llvm.loop !175

867:                                              ; preds = %863
  %868 = icmp sgt i32 %864, 0
  br i1 %868, label %869, label %976

869:                                              ; preds = %867
  %870 = zext nneg i32 %864 to i64
  %871 = sub nsw i64 0, %870
  %872 = getelementptr [4 x i8], ptr %449, i64 %871
  %873 = icmp samesign ult i32 %864, 8
  br i1 %873, label %.preheader1159.preheader, label %874

874:                                              ; preds = %869
  %875 = and i64 %870, 2147483640
  br label %876

876:                                              ; preds = %876, %874
  %877 = phi i64 [ 0, %874 ], [ %887, %876 ]
  %878 = shl i64 %877, 2
  %879 = getelementptr i8, ptr %872, i64 %878
  %880 = getelementptr i8, ptr %449, i64 %878
  %881 = getelementptr i8, ptr %879, i64 16
  %882 = load <4 x i32>, ptr %879, align 4, !tbaa !5, !alias.scope !176, !noalias !179
  %883 = load <4 x i32>, ptr %881, align 4, !tbaa !5, !alias.scope !176, !noalias !179
  %884 = getelementptr i8, ptr %880, i64 16
  %885 = load <4 x i32>, ptr %880, align 4, !tbaa !5, !alias.scope !179
  %886 = load <4 x i32>, ptr %884, align 4, !tbaa !5, !alias.scope !179
  store <4 x i32> %885, ptr %879, align 4, !tbaa !5, !alias.scope !176, !noalias !179
  store <4 x i32> %886, ptr %881, align 4, !tbaa !5, !alias.scope !176, !noalias !179
  store <4 x i32> %882, ptr %880, align 4, !tbaa !5, !alias.scope !179
  store <4 x i32> %883, ptr %884, align 4, !tbaa !5, !alias.scope !179
  %887 = add nuw nsw i64 %877, 8
  %888 = icmp eq i64 %887, %875
  br i1 %888, label %889, label %876, !llvm.loop !181

889:                                              ; preds = %876
  %890 = shl nuw nsw i64 %875, 2
  %891 = getelementptr i8, ptr %872, i64 %890
  %892 = trunc nuw nsw i64 %875 to i32
  %893 = sub nsw i32 %864, %892
  %894 = getelementptr i8, ptr %449, i64 %890
  %895 = icmp eq i64 %875, %870
  br i1 %895, label %.loopexit133, label %.preheader1159.preheader

.preheader1159.preheader:                         ; preds = %889, %869
  %.ph = phi ptr [ %891, %889 ], [ %872, %869 ]
  %.ph1085 = phi i32 [ %893, %889 ], [ %864, %869 ]
  %.ph1086 = phi ptr [ %894, %889 ], [ %449, %869 ]
  br label %.preheader1159

.preheader1159:                                   ; preds = %.preheader1159.preheader, %.preheader1159
  %896 = phi ptr [ %902, %.preheader1159 ], [ %.ph, %.preheader1159.preheader ]
  %897 = phi i32 [ %901, %.preheader1159 ], [ %.ph1085, %.preheader1159.preheader ]
  %898 = phi ptr [ %903, %.preheader1159 ], [ %.ph1086, %.preheader1159.preheader ]
  %899 = load i32, ptr %896, align 4, !tbaa !5
  %900 = load i32, ptr %898, align 4, !tbaa !5
  store i32 %900, ptr %896, align 4, !tbaa !5
  store i32 %899, ptr %898, align 4, !tbaa !5
  %901 = add nsw i32 %897, -1
  %902 = getelementptr inbounds nuw i8, ptr %896, i64 4
  %903 = getelementptr inbounds nuw i8, ptr %898, i64 4
  %904 = icmp samesign ugt i32 %897, 1
  br i1 %904, label %.preheader1159, label %.loopexit133, !llvm.loop !182

.loopexit133:                                     ; preds = %.preheader1159, %889
  %905 = getelementptr inbounds nuw [4 x i8], ptr %449, i64 %870
  %906 = icmp ult ptr %905, %13
  br i1 %906, label %907, label %929

907:                                              ; preds = %.loopexit133
  %908 = load i32, ptr %905, align 4, !tbaa !5
  %909 = icmp slt i32 %908, 0
  br i1 %909, label %910, label %917

910:                                              ; preds = %907
  %911 = xor i32 %908, -1
  store i32 %911, ptr %905, align 4, !tbaa !5
  %912 = icmp ult ptr %448, %872
  br i1 %912, label %.preheader131, label %929

.preheader131:                                    ; preds = %910, %.preheader131
  %913 = phi ptr [ %914, %.preheader131 ], [ %449, %910 ]
  %914 = getelementptr inbounds i8, ptr %913, i64 -4
  %915 = load i32, ptr %914, align 4, !tbaa !5
  %916 = icmp slt i32 %915, 0
  br i1 %916, label %.preheader131, label %923, !llvm.loop !183

917:                                              ; preds = %907
  %918 = icmp ult ptr %448, %872
  br i1 %918, label %.preheader132, label %929

.preheader132:                                    ; preds = %917, %.preheader132
  %919 = phi ptr [ %922, %.preheader132 ], [ %449, %917 ]
  %920 = load i32, ptr %919, align 4, !tbaa !5
  %921 = icmp slt i32 %920, 0
  %922 = getelementptr inbounds nuw i8, ptr %919, i64 4
  br i1 %921, label %.preheader132, label %926, !llvm.loop !184

923:                                              ; preds = %.preheader131
  %924 = ptrtoint ptr %914 to i64
  %925 = sub i64 %924, %450
  br label %929

926:                                              ; preds = %.preheader132
  %927 = ptrtoint ptr %919 to i64
  %928 = sub i64 %18, %927
  br label %929

929:                                              ; preds = %926, %923, %917, %910, %.loopexit133
  %930 = phi i64 [ %928, %926 ], [ %445, %923 ], [ %445, %910 ], [ %445, %917 ], [ %445, %.loopexit133 ]
  %931 = phi i64 [ %451, %926 ], [ %925, %923 ], [ %451, %910 ], [ %451, %917 ], [ %451, %.loopexit133 ]
  %932 = phi ptr [ %449, %926 ], [ %914, %923 ], [ %449, %910 ], [ %449, %917 ], [ %449, %.loopexit133 ]
  %933 = phi ptr [ %919, %926 ], [ %449, %923 ], [ %449, %910 ], [ %449, %917 ], [ %449, %.loopexit133 ]
  %934 = phi i32 [ 2, %926 ], [ 5, %923 ], [ 1, %910 ], [ 0, %917 ], [ 0, %.loopexit133 ]
  %935 = icmp sgt i64 %931, %930
  br i1 %935, label %953, label %936

936:                                              ; preds = %929
  %937 = icmp slt i64 %indvars.iv, 32
  br i1 %937, label %939, label %938

938:                                              ; preds = %936
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 810, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #10
  unreachable

939:                                              ; preds = %936
  %940 = trunc nsw i64 %indvars.iv to i32
  %sext = shl i64 %indvars.iv, 32
  %941 = ashr exact i64 %sext, 27
  %942 = getelementptr inbounds i8, ptr %8, i64 %941
  store ptr %933, ptr %942, align 16, !tbaa !157
  %943 = getelementptr inbounds nuw i8, ptr %942, i64 8
  store ptr %905, ptr %943, align 8, !tbaa !159
  %944 = getelementptr inbounds nuw i8, ptr %942, i64 16
  store ptr %13, ptr %944, align 16, !tbaa !160
  %945 = add nsw i32 %940, 1
  %946 = and i32 %934, 3
  %947 = and i32 %447, 4
  %948 = or disjoint i32 %946, %947
  %949 = getelementptr inbounds nuw i8, ptr %942, i64 24
  store i32 %948, ptr %949, align 8, !tbaa !161
  %950 = and i32 %447, 3
  %951 = and i32 %934, 4
  %952 = or disjoint i32 %951, %950
  br label %.backedge1179.backedge

953:                                              ; preds = %929
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %954, label %955

954:                                              ; preds = %953
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 814, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #10
  unreachable

955:                                              ; preds = %953
  %956 = and i32 %934, 2
  %957 = icmp ne i32 %956, 0
  %958 = icmp eq ptr %933, %449
  %959 = and i1 %958, %957
  %960 = xor i32 %934, 6
  %961 = select i1 %959, i32 %960, i32 %934
  %962 = getelementptr inbounds [32 x i8], ptr %8, i64 %indvars.iv
  store ptr %448, ptr %962, align 16, !tbaa !157
  %963 = getelementptr inbounds nuw i8, ptr %962, i64 8
  store ptr %872, ptr %963, align 8, !tbaa !159
  %964 = getelementptr inbounds nuw i8, ptr %962, i64 16
  store ptr %932, ptr %964, align 16, !tbaa !160
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %965 = and i32 %447, 3
  %966 = and i32 %961, 4
  %967 = or disjoint i32 %966, %965
  %968 = getelementptr inbounds nuw i8, ptr %962, i64 24
  store i32 %967, ptr %968, align 8, !tbaa !161
  %969 = and i32 %961, 3
  %970 = and i32 %447, 4
  %971 = or disjoint i32 %969, %970
  %972 = ptrtoint ptr %905 to i64
  %973 = sub i64 %18, %972
  %974 = ashr exact i64 %973, 2
  %975 = icmp sgt i64 %974, %9
  br i1 %975, label %.lr.ph, label %._crit_edge.loopexit

976:                                              ; preds = %867, %787
  %977 = trunc nsw i64 %indvars.iv to i32
  %978 = getelementptr inbounds i8, ptr %449, i64 -4
  %979 = load i32, ptr %978, align 4, !tbaa !5
  %980 = ashr i32 %979, 31
  %981 = xor i32 %980, %979
  %982 = zext nneg i32 %981 to i64
  %983 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %982
  %984 = load i32, ptr %449, align 4, !tbaa !5
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds [4 x i8], ptr %1, i64 %985
  %987 = load i32, ptr %983, align 4, !tbaa !5
  %988 = getelementptr i8, ptr %983, i64 4
  %989 = load i32, ptr %988, align 4, !tbaa !5
  %990 = load i32, ptr %986, align 4, !tbaa !5
  %991 = getelementptr i8, ptr %986, i64 4
  %992 = load i32, ptr %991, align 4, !tbaa !5
  %993 = sext i32 %987 to i64
  %994 = getelementptr inbounds i8, ptr %11, i64 %993
  %995 = sext i32 %990 to i64
  %996 = getelementptr inbounds i8, ptr %11, i64 %995
  %997 = sext i32 %989 to i64
  %998 = getelementptr i8, ptr %11, i64 %997
  %999 = sext i32 %992 to i64
  %1000 = getelementptr i8, ptr %11, i64 %999
  %1001 = icmp ult ptr %994, %998
  %1002 = icmp ult ptr %996, %1000
  %1003 = select i1 %1001, i1 %1002, i1 false
  br i1 %1003, label %.preheader140, label %.loopexit142

.preheader140:                                    ; preds = %976, %1009
  %1004 = phi ptr [ %1010, %1009 ], [ %994, %976 ]
  %1005 = phi ptr [ %1011, %1009 ], [ %996, %976 ]
  %1006 = load i8, ptr %1004, align 1, !tbaa !9
  %1007 = load i8, ptr %1005, align 1, !tbaa !9
  %1008 = icmp eq i8 %1006, %1007
  br i1 %1008, label %1009, label %.loopexit141

1009:                                             ; preds = %.preheader140
  %1010 = getelementptr inbounds nuw i8, ptr %1004, i64 1
  %1011 = getelementptr inbounds nuw i8, ptr %1005, i64 1
  %1012 = icmp ult ptr %1010, %998
  %1013 = icmp ult ptr %1011, %1000
  %1014 = select i1 %1012, i1 %1013, i1 false
  br i1 %1014, label %.preheader140, label %.loopexit142, !llvm.loop !26

.loopexit142:                                     ; preds = %1009, %976
  %1015 = phi ptr [ %996, %976 ], [ %1011, %1009 ]
  %1016 = phi ptr [ %994, %976 ], [ %1010, %1009 ]
  %1017 = phi i1 [ %1001, %976 ], [ %1012, %1009 ]
  %1018 = phi i1 [ %1002, %976 ], [ %1013, %1009 ]
  br i1 %1017, label %1019, label %1027

1019:                                             ; preds = %.loopexit142
  br i1 %1018, label %1020, label %1034

1020:                                             ; preds = %1019
  %1021 = load i8, ptr %1016, align 1, !tbaa !9
  %.pre596 = load i8, ptr %1015, align 1, !tbaa !9
  br label %.loopexit141

.loopexit141:                                     ; preds = %.preheader140, %1020
  %1022 = phi i8 [ %.pre596, %1020 ], [ %1007, %.preheader140 ]
  %1023 = phi i8 [ %1021, %1020 ], [ %1006, %.preheader140 ]
  %1024 = zext i8 %1023 to i32
  %1025 = zext i8 %1022 to i32
  %1026 = sub nsw i32 %1024, %1025
  br label %1029

1027:                                             ; preds = %.loopexit142
  %1028 = sext i1 %1018 to i32
  br label %1029

1029:                                             ; preds = %1027, %.loopexit141
  %1030 = phi i32 [ %1028, %1027 ], [ %1026, %.loopexit141 ]
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1032, label %1034

1032:                                             ; preds = %1029
  %1033 = xor i32 %984, -1
  store i32 %1033, ptr %449, align 4, !tbaa !5
  br label %1034

1034:                                             ; preds = %1032, %1029, %1019
  %1035 = and i32 %447, 1
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1039, label %1037

1037:                                             ; preds = %1034
  %1038 = load i32, ptr %448, align 4, !tbaa !5
  br label %1097

1039:                                             ; preds = %1034
  %1040 = and i32 %447, 2
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1100, label %1042

1042:                                             ; preds = %1039
  %1043 = getelementptr inbounds i8, ptr %448, i64 -4
  %1044 = load i32, ptr %1043, align 4, !tbaa !5
  %1045 = ashr i32 %1044, 31
  %1046 = xor i32 %1045, %1044
  %1047 = zext nneg i32 %1046 to i64
  %1048 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %1047
  %1049 = load i32, ptr %448, align 4, !tbaa !5
  %1050 = sext i32 %1049 to i64
  %1051 = getelementptr inbounds [4 x i8], ptr %1, i64 %1050
  %1052 = load i32, ptr %1048, align 4, !tbaa !5
  %1053 = getelementptr i8, ptr %1048, i64 4
  %1054 = load i32, ptr %1053, align 4, !tbaa !5
  %1055 = load i32, ptr %1051, align 4, !tbaa !5
  %1056 = getelementptr i8, ptr %1051, i64 4
  %1057 = load i32, ptr %1056, align 4, !tbaa !5
  %1058 = sext i32 %1052 to i64
  %1059 = getelementptr inbounds i8, ptr %11, i64 %1058
  %1060 = sext i32 %1055 to i64
  %1061 = getelementptr inbounds i8, ptr %11, i64 %1060
  %1062 = sext i32 %1054 to i64
  %1063 = getelementptr i8, ptr %11, i64 %1062
  %1064 = sext i32 %1057 to i64
  %1065 = getelementptr i8, ptr %11, i64 %1064
  %1066 = icmp ult ptr %1059, %1063
  %1067 = icmp ult ptr %1061, %1065
  %1068 = select i1 %1066, i1 %1067, i1 false
  br i1 %1068, label %.preheader137, label %.loopexit139

.preheader137:                                    ; preds = %1042, %1074
  %1069 = phi ptr [ %1075, %1074 ], [ %1059, %1042 ]
  %1070 = phi ptr [ %1076, %1074 ], [ %1061, %1042 ]
  %1071 = load i8, ptr %1069, align 1, !tbaa !9
  %1072 = load i8, ptr %1070, align 1, !tbaa !9
  %1073 = icmp eq i8 %1071, %1072
  br i1 %1073, label %1074, label %.loopexit138

1074:                                             ; preds = %.preheader137
  %1075 = getelementptr inbounds nuw i8, ptr %1069, i64 1
  %1076 = getelementptr inbounds nuw i8, ptr %1070, i64 1
  %1077 = icmp ult ptr %1075, %1063
  %1078 = icmp ult ptr %1076, %1065
  %1079 = select i1 %1077, i1 %1078, i1 false
  br i1 %1079, label %.preheader137, label %.loopexit139, !llvm.loop !26

.loopexit139:                                     ; preds = %1074, %1042
  %1080 = phi ptr [ %1061, %1042 ], [ %1076, %1074 ]
  %1081 = phi ptr [ %1059, %1042 ], [ %1075, %1074 ]
  %1082 = phi i1 [ %1066, %1042 ], [ %1077, %1074 ]
  %1083 = phi i1 [ %1067, %1042 ], [ %1078, %1074 ]
  br i1 %1082, label %1084, label %1092

1084:                                             ; preds = %.loopexit139
  br i1 %1083, label %1085, label %1100

1085:                                             ; preds = %1084
  %1086 = load i8, ptr %1081, align 1, !tbaa !9
  %.pre597 = load i8, ptr %1080, align 1, !tbaa !9
  br label %.loopexit138

.loopexit138:                                     ; preds = %.preheader137, %1085
  %1087 = phi i8 [ %.pre597, %1085 ], [ %1072, %.preheader137 ]
  %1088 = phi i8 [ %1086, %1085 ], [ %1071, %.preheader137 ]
  %1089 = zext i8 %1088 to i32
  %1090 = zext i8 %1087 to i32
  %1091 = sub nsw i32 %1089, %1090
  br label %1094

1092:                                             ; preds = %.loopexit139
  %1093 = sext i1 %1083 to i32
  br label %1094

1094:                                             ; preds = %1092, %.loopexit138
  %1095 = phi i32 [ %1093, %1092 ], [ %1091, %.loopexit138 ]
  %1096 = icmp eq i32 %1095, 0
  br i1 %1096, label %1097, label %1100

1097:                                             ; preds = %1094, %1037
  %1098 = phi i32 [ %1038, %1037 ], [ %1049, %1094 ]
  %1099 = xor i32 %1098, -1
  store i32 %1099, ptr %448, align 4, !tbaa !5
  br label %1100

1100:                                             ; preds = %1097, %1094, %1084, %1039
  %1101 = and i32 %447, 4
  %1102 = icmp eq i32 %1101, 0
  br i1 %1102, label %1160, label %1103

1103:                                             ; preds = %1100
  %1104 = getelementptr inbounds i8, ptr %13, i64 -4
  %1105 = load i32, ptr %1104, align 4, !tbaa !5
  %1106 = ashr i32 %1105, 31
  %1107 = xor i32 %1106, %1105
  %1108 = zext nneg i32 %1107 to i64
  %1109 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %1108
  %1110 = load i32, ptr %13, align 4, !tbaa !5
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr inbounds [4 x i8], ptr %1, i64 %1111
  %1113 = load i32, ptr %1109, align 4, !tbaa !5
  %1114 = getelementptr i8, ptr %1109, i64 4
  %1115 = load i32, ptr %1114, align 4, !tbaa !5
  %1116 = load i32, ptr %1112, align 4, !tbaa !5
  %1117 = getelementptr i8, ptr %1112, i64 4
  %1118 = load i32, ptr %1117, align 4, !tbaa !5
  %1119 = sext i32 %1113 to i64
  %1120 = getelementptr inbounds i8, ptr %11, i64 %1119
  %1121 = sext i32 %1116 to i64
  %1122 = getelementptr inbounds i8, ptr %11, i64 %1121
  %1123 = sext i32 %1115 to i64
  %1124 = getelementptr i8, ptr %11, i64 %1123
  %1125 = sext i32 %1118 to i64
  %1126 = getelementptr i8, ptr %11, i64 %1125
  %1127 = icmp ult ptr %1120, %1124
  %1128 = icmp ult ptr %1122, %1126
  %1129 = select i1 %1127, i1 %1128, i1 false
  br i1 %1129, label %.preheader134, label %.loopexit136

.preheader134:                                    ; preds = %1103, %1135
  %1130 = phi ptr [ %1136, %1135 ], [ %1120, %1103 ]
  %1131 = phi ptr [ %1137, %1135 ], [ %1122, %1103 ]
  %1132 = load i8, ptr %1130, align 1, !tbaa !9
  %1133 = load i8, ptr %1131, align 1, !tbaa !9
  %1134 = icmp eq i8 %1132, %1133
  br i1 %1134, label %1135, label %.loopexit135

1135:                                             ; preds = %.preheader134
  %1136 = getelementptr inbounds nuw i8, ptr %1130, i64 1
  %1137 = getelementptr inbounds nuw i8, ptr %1131, i64 1
  %1138 = icmp ult ptr %1136, %1124
  %1139 = icmp ult ptr %1137, %1126
  %1140 = select i1 %1138, i1 %1139, i1 false
  br i1 %1140, label %.preheader134, label %.loopexit136, !llvm.loop !26

.loopexit136:                                     ; preds = %1135, %1103
  %1141 = phi ptr [ %1122, %1103 ], [ %1137, %1135 ]
  %1142 = phi ptr [ %1120, %1103 ], [ %1136, %1135 ]
  %1143 = phi i1 [ %1127, %1103 ], [ %1138, %1135 ]
  %1144 = phi i1 [ %1128, %1103 ], [ %1139, %1135 ]
  br i1 %1143, label %1145, label %1153

1145:                                             ; preds = %.loopexit136
  br i1 %1144, label %1146, label %1160

1146:                                             ; preds = %1145
  %1147 = load i8, ptr %1142, align 1, !tbaa !9
  %.pre598 = load i8, ptr %1141, align 1, !tbaa !9
  br label %.loopexit135

.loopexit135:                                     ; preds = %.preheader134, %1146
  %1148 = phi i8 [ %.pre598, %1146 ], [ %1133, %.preheader134 ]
  %1149 = phi i8 [ %1147, %1146 ], [ %1132, %.preheader134 ]
  %1150 = zext i8 %1149 to i32
  %1151 = zext i8 %1148 to i32
  %1152 = sub nsw i32 %1150, %1151
  br label %1155

1153:                                             ; preds = %.loopexit136
  %1154 = sext i1 %1144 to i32
  br label %1155

1155:                                             ; preds = %1153, %.loopexit135
  %1156 = phi i32 [ %1154, %1153 ], [ %1152, %.loopexit135 ]
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1158, label %1160

1158:                                             ; preds = %1155
  %1159 = xor i32 %1110, -1
  store i32 %1159, ptr %13, align 4, !tbaa !5
  br label %1160

1160:                                             ; preds = %1158, %1155, %1145, %1100
  %1161 = icmp sgt i64 %indvars.iv, -1
  br i1 %1161, label %1163, label %1162

1162:                                             ; preds = %1160
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 822, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #10
  unreachable

1163:                                             ; preds = %1160
  %1164 = icmp eq i64 %indvars.iv, 0
  br i1 %1164, label %1176, label %1165

1165:                                             ; preds = %1163
  %1166 = add nsw i32 %977, -1
  %1167 = zext nneg i32 %1166 to i64
  %1168 = getelementptr inbounds nuw [32 x i8], ptr %8, i64 %1167
  %1169 = load ptr, ptr %1168, align 16, !tbaa !157
  %1170 = getelementptr inbounds nuw i8, ptr %1168, i64 8
  %1171 = load ptr, ptr %1170, align 8, !tbaa !159
  %1172 = getelementptr inbounds nuw i8, ptr %1168, i64 16
  %1173 = load ptr, ptr %1172, align 16, !tbaa !160
  %1174 = getelementptr inbounds nuw i8, ptr %1168, i64 24
  %1175 = load i32, ptr %1174, align 8, !tbaa !161
  br label %.backedge1179.backedge

.backedge1179.backedge:                           ; preds = %1165, %939, %772, %433
  %.be1102 = phi ptr [ %1173, %1165 ], [ %932, %939 ], [ %780, %772 ], [ %441, %433 ]
  %.be1103 = phi ptr [ %1171, %1165 ], [ %872, %939 ], [ %778, %772 ], [ %439, %433 ]
  %.be1104 = phi ptr [ %1169, %1165 ], [ %448, %939 ], [ %776, %772 ], [ %437, %433 ]
  %.be1105 = phi i32 [ %1166, %1165 ], [ %945, %939 ], [ %773, %772 ], [ %434, %433 ]
  %.be1106 = phi i32 [ %1175, %1165 ], [ %952, %939 ], [ %782, %772 ], [ %443, %433 ]
  br label %.backedge1179

1176:                                             ; preds = %1163, %770, %431
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @tr_partition(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull writeonly captures(none) %4, ptr noundef nonnull writeonly captures(none) %5, i32 noundef %6) unnamed_addr #6 {
  %8 = getelementptr inbounds i8, ptr %2, i64 -4
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %13 ]
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %12 = icmp ult ptr %11, %3
  br i1 %12, label %13, label %.loopexit59

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 4, !tbaa !5
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %9, label %19, !llvm.loop !185

19:                                               ; preds = %13
  %20 = icmp slt i32 %17, %6
  br i1 %20, label %21, label %.loopexit59

21:                                               ; preds = %19
  %22 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %23 = icmp ult ptr %22, %3
  br i1 %23, label %.preheader58, label %.loopexit59

.preheader58:                                     ; preds = %21, %36
  %24 = phi ptr [ %38, %36 ], [ %22, %21 ]
  %25 = phi ptr [ %37, %36 ], [ %11, %21 ]
  %26 = load i32, ptr %24, align 4, !tbaa !5
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = icmp sgt i32 %29, %6
  br i1 %30, label %.loopexit59, label %31

31:                                               ; preds = %.preheader58
  %32 = icmp eq i32 %29, %6
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i32, ptr %25, align 4, !tbaa !5
  store i32 %34, ptr %24, align 4, !tbaa !5
  store i32 %26, ptr %25, align 4, !tbaa !5
  %35 = getelementptr inbounds nuw i8, ptr %25, i64 4
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi ptr [ %35, %33 ], [ %25, %31 ]
  %38 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %39 = icmp ult ptr %38, %3
  br i1 %39, label %.preheader58, label %.loopexit59, !llvm.loop !186

.loopexit59:                                      ; preds = %9, %36, %.preheader58, %21, %19
  %40 = phi ptr [ %11, %19 ], [ %11, %21 ], [ %37, %36 ], [ %25, %.preheader58 ], [ %11, %9 ]
  %41 = phi ptr [ %11, %19 ], [ %22, %21 ], [ %38, %36 ], [ %24, %.preheader58 ], [ %11, %9 ]
  br label %42

42:                                               ; preds = %46, %.loopexit59
  %43 = phi ptr [ %3, %.loopexit59 ], [ %44, %46 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 -4
  %45 = icmp ult ptr %41, %44
  br i1 %45, label %46, label %.loopexit54

46:                                               ; preds = %42
  %47 = load i32, ptr %44, align 4, !tbaa !5
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i8], ptr %0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !5
  %51 = icmp eq i32 %50, %6
  br i1 %51, label %42, label %52, !llvm.loop !187

52:                                               ; preds = %46
  %53 = icmp sgt i32 %50, %6
  br i1 %53, label %54, label %.loopexit54

54:                                               ; preds = %52
  %55 = getelementptr inbounds i8, ptr %43, i64 -8
  %56 = icmp ult ptr %41, %55
  br i1 %56, label %.preheader53, label %.loopexit54

.preheader53:                                     ; preds = %54, %69
  %57 = phi ptr [ %71, %69 ], [ %55, %54 ]
  %58 = phi ptr [ %70, %69 ], [ %44, %54 ]
  %59 = load i32, ptr %57, align 4, !tbaa !5
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i8], ptr %0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !5
  %63 = icmp slt i32 %62, %6
  br i1 %63, label %.loopexit54, label %64

64:                                               ; preds = %.preheader53
  %65 = icmp eq i32 %62, %6
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i32, ptr %58, align 4, !tbaa !5
  store i32 %67, ptr %57, align 4, !tbaa !5
  store i32 %59, ptr %58, align 4, !tbaa !5
  %68 = getelementptr inbounds i8, ptr %58, i64 -4
  br label %69

69:                                               ; preds = %66, %64
  %70 = phi ptr [ %68, %66 ], [ %58, %64 ]
  %71 = getelementptr inbounds i8, ptr %57, i64 -4
  %72 = icmp ult ptr %41, %71
  br i1 %72, label %.preheader53, label %.loopexit54, !llvm.loop !188

.loopexit54:                                      ; preds = %42, %69, %.preheader53, %54, %52
  %73 = phi ptr [ %44, %52 ], [ %55, %54 ], [ %71, %69 ], [ %57, %.preheader53 ], [ %44, %42 ]
  %74 = phi ptr [ %44, %52 ], [ %44, %54 ], [ %70, %69 ], [ %58, %.preheader53 ], [ %44, %42 ]
  %75 = icmp ult ptr %41, %73
  br i1 %75, label %.preheader51, label %.loopexit52

.preheader51:                                     ; preds = %.loopexit54, %.loopexit45
  %76 = phi ptr [ %120, %.loopexit45 ], [ %74, %.loopexit54 ]
  %77 = phi ptr [ %121, %.loopexit45 ], [ %73, %.loopexit54 ]
  %78 = phi ptr [ %101, %.loopexit45 ], [ %41, %.loopexit54 ]
  %79 = phi ptr [ %100, %.loopexit45 ], [ %40, %.loopexit54 ]
  %80 = load i32, ptr %78, align 4, !tbaa !5
  %81 = load i32, ptr %77, align 4, !tbaa !5
  store i32 %81, ptr %78, align 4, !tbaa !5
  store i32 %80, ptr %77, align 4, !tbaa !5
  %82 = getelementptr inbounds nuw i8, ptr %78, i64 4
  %83 = icmp ult ptr %82, %77
  br i1 %83, label %.preheader47, label %.loopexit48

.preheader47:                                     ; preds = %.preheader51, %96
  %84 = phi ptr [ %98, %96 ], [ %82, %.preheader51 ]
  %85 = phi ptr [ %97, %96 ], [ %79, %.preheader51 ]
  %86 = load i32, ptr %84, align 4, !tbaa !5
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i8], ptr %0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !5
  %90 = icmp sgt i32 %89, %6
  br i1 %90, label %.loopexit48, label %91

91:                                               ; preds = %.preheader47
  %92 = icmp eq i32 %89, %6
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = load i32, ptr %85, align 4, !tbaa !5
  store i32 %94, ptr %84, align 4, !tbaa !5
  store i32 %86, ptr %85, align 4, !tbaa !5
  %95 = getelementptr inbounds nuw i8, ptr %85, i64 4
  br label %96

96:                                               ; preds = %93, %91
  %97 = phi ptr [ %95, %93 ], [ %85, %91 ]
  %98 = getelementptr inbounds nuw i8, ptr %84, i64 4
  %99 = icmp ult ptr %98, %77
  br i1 %99, label %.preheader47, label %.loopexit48, !llvm.loop !189

.loopexit48:                                      ; preds = %96, %.preheader47, %.preheader51
  %100 = phi ptr [ %79, %.preheader51 ], [ %97, %96 ], [ %85, %.preheader47 ]
  %101 = phi ptr [ %82, %.preheader51 ], [ %98, %96 ], [ %84, %.preheader47 ]
  %102 = getelementptr inbounds i8, ptr %77, i64 -4
  %103 = icmp ult ptr %101, %102
  br i1 %103, label %.preheader, label %.loopexit45

.preheader:                                       ; preds = %.loopexit48, %116
  %104 = phi ptr [ %118, %116 ], [ %102, %.loopexit48 ]
  %105 = phi ptr [ %117, %116 ], [ %76, %.loopexit48 ]
  %106 = load i32, ptr %104, align 4, !tbaa !5
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i8], ptr %0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !5
  %110 = icmp slt i32 %109, %6
  br i1 %110, label %.loopexit45, label %111

111:                                              ; preds = %.preheader
  %112 = icmp eq i32 %109, %6
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = load i32, ptr %105, align 4, !tbaa !5
  store i32 %114, ptr %104, align 4, !tbaa !5
  store i32 %106, ptr %105, align 4, !tbaa !5
  %115 = getelementptr inbounds i8, ptr %105, i64 -4
  br label %116

116:                                              ; preds = %113, %111
  %117 = phi ptr [ %115, %113 ], [ %105, %111 ]
  %118 = getelementptr inbounds i8, ptr %104, i64 -4
  %119 = icmp ult ptr %101, %118
  br i1 %119, label %.preheader, label %.loopexit45, !llvm.loop !190

.loopexit45:                                      ; preds = %116, %.preheader, %.loopexit48
  %120 = phi ptr [ %76, %.loopexit48 ], [ %117, %116 ], [ %105, %.preheader ]
  %121 = phi ptr [ %102, %.loopexit48 ], [ %118, %116 ], [ %104, %.preheader ]
  %122 = icmp ult ptr %101, %121
  br i1 %122, label %.preheader51, label %.loopexit52, !llvm.loop !191

.loopexit52:                                      ; preds = %.loopexit45, %.loopexit54
  %123 = phi ptr [ %40, %.loopexit54 ], [ %100, %.loopexit45 ]
  %124 = phi ptr [ %41, %.loopexit54 ], [ %101, %.loopexit45 ]
  %125 = phi ptr [ %74, %.loopexit54 ], [ %120, %.loopexit45 ]
  %126 = icmp ugt ptr %123, %125
  br i1 %126, label %261, label %127

127:                                              ; preds = %.loopexit52
  %128 = getelementptr inbounds i8, ptr %124, i64 -4
  %129 = ptrtoint ptr %123 to i64
  %130 = ptrtoint ptr %1 to i64
  %131 = sub i64 %129, %130
  %132 = ashr exact i64 %131, 2
  %133 = add nsw i64 %132, 2147483648
  %134 = icmp ult i64 %133, 4294967296
  br i1 %134, label %136, label %135

135:                                              ; preds = %127
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1101, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #10
  unreachable

136:                                              ; preds = %127
  %137 = ptrtoint ptr %124 to i64
  %138 = sub i64 %137, %129
  %139 = ashr exact i64 %138, 2
  %140 = add nsw i64 %139, 2147483648
  %141 = icmp ult i64 %140, 4294967296
  br i1 %141, label %143, label %142

142:                                              ; preds = %136
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1101, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #10
  unreachable

143:                                              ; preds = %136
  %144 = tail call i64 @llvm.smin.i64(i64 %132, i64 %139)
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %.loopexit44

146:                                              ; preds = %143
  %147 = sub nsw i64 0, %144
  %148 = getelementptr [4 x i8], ptr %124, i64 %147
  %149 = trunc nuw nsw i64 %144 to i32
  %150 = icmp samesign ult i64 %144, 20
  br i1 %150, label %.preheader187.preheader, label %151

151:                                              ; preds = %146
  %152 = shl nuw nsw i64 %144, 2
  %153 = add nuw nsw i64 %152, 17179869180
  %154 = and i64 %153, 17179869180
  %155 = getelementptr i8, ptr %1, i64 %154
  %156 = getelementptr i8, ptr %155, i64 4
  %reass.sub = sub nsw i64 %154, %152
  %157 = getelementptr i8, ptr %124, i64 %reass.sub
  %158 = getelementptr i8, ptr %157, i64 4
  %159 = icmp ult ptr %1, %158
  %160 = icmp ult ptr %148, %156
  %161 = and i1 %160, %159
  br i1 %161, label %.preheader187.preheader, label %162

162:                                              ; preds = %151
  %163 = and i64 %144, 8589934584
  br label %164

164:                                              ; preds = %164, %162
  %165 = phi i64 [ 0, %162 ], [ %175, %164 ]
  %166 = shl i64 %165, 2
  %167 = getelementptr i8, ptr %148, i64 %166
  %168 = getelementptr i8, ptr %1, i64 %166
  %169 = getelementptr i8, ptr %168, i64 16
  %170 = load <4 x i32>, ptr %168, align 4, !tbaa !5, !alias.scope !192, !noalias !195
  %171 = load <4 x i32>, ptr %169, align 4, !tbaa !5, !alias.scope !192, !noalias !195
  %172 = getelementptr i8, ptr %167, i64 16
  %173 = load <4 x i32>, ptr %167, align 4, !tbaa !5, !alias.scope !195
  %174 = load <4 x i32>, ptr %172, align 4, !tbaa !5, !alias.scope !195
  store <4 x i32> %173, ptr %168, align 4, !tbaa !5, !alias.scope !192, !noalias !195
  store <4 x i32> %174, ptr %169, align 4, !tbaa !5, !alias.scope !192, !noalias !195
  store <4 x i32> %170, ptr %167, align 4, !tbaa !5, !alias.scope !195
  store <4 x i32> %171, ptr %172, align 4, !tbaa !5, !alias.scope !195
  %175 = add nuw i64 %165, 8
  %176 = icmp eq i64 %175, %163
  br i1 %176, label %177, label %164, !llvm.loop !197

177:                                              ; preds = %164
  %178 = trunc nuw nsw i64 %163 to i32
  %179 = sub nsw i32 %149, %178
  %180 = shl nuw nsw i64 %163, 2
  %181 = getelementptr i8, ptr %148, i64 %180
  %182 = getelementptr i8, ptr %1, i64 %180
  %183 = icmp eq i64 %144, %163
  br i1 %183, label %.loopexit44, label %.preheader187.preheader

.preheader187.preheader:                          ; preds = %177, %151, %146
  %.ph177 = phi i32 [ %149, %151 ], [ %149, %146 ], [ %179, %177 ]
  %.ph178 = phi ptr [ %148, %151 ], [ %148, %146 ], [ %181, %177 ]
  %.ph179 = phi ptr [ %1, %151 ], [ %1, %146 ], [ %182, %177 ]
  br label %.preheader187

.preheader187:                                    ; preds = %.preheader187.preheader, %.preheader187
  %184 = phi i32 [ %189, %.preheader187 ], [ %.ph177, %.preheader187.preheader ]
  %185 = phi ptr [ %191, %.preheader187 ], [ %.ph178, %.preheader187.preheader ]
  %186 = phi ptr [ %190, %.preheader187 ], [ %.ph179, %.preheader187.preheader ]
  %187 = load i32, ptr %186, align 4, !tbaa !5
  %188 = load i32, ptr %185, align 4, !tbaa !5
  store i32 %188, ptr %186, align 4, !tbaa !5
  store i32 %187, ptr %185, align 4, !tbaa !5
  %189 = add nsw i32 %184, -1
  %190 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %191 = getelementptr inbounds nuw i8, ptr %185, i64 4
  %192 = icmp samesign ugt i32 %184, 1
  br i1 %192, label %.preheader187, label %.loopexit44, !llvm.loop !198

.loopexit44:                                      ; preds = %.preheader187, %177, %143
  %193 = ptrtoint ptr %125 to i64
  %194 = ptrtoint ptr %128 to i64
  %195 = sub i64 %193, %194
  %196 = ashr exact i64 %195, 2
  %197 = add nsw i64 %196, 2147483648
  %198 = icmp ult i64 %197, 4294967296
  br i1 %198, label %200, label %199

199:                                              ; preds = %.loopexit44
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.src, i32 noundef 1103, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #10
  unreachable

200:                                              ; preds = %.loopexit44
  %201 = ptrtoint ptr %3 to i64
  %202 = sub i64 %201, %193
  %203 = ashr exact i64 %202, 2
  %204 = add nsw i64 %203, 2147483647
  %205 = icmp ult i64 %204, 4294967296
  br i1 %205, label %207, label %206

206:                                              ; preds = %200
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.src, i32 noundef 1103, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #10
  unreachable

207:                                              ; preds = %200
  %208 = trunc nsw i64 %196 to i32
  %209 = trunc i64 %203 to i32
  %210 = add i32 %209, -1
  %211 = tail call i32 @llvm.smin.i32(i32 %210, i32 %208)
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %.loopexit

213:                                              ; preds = %207
  %214 = zext nneg i32 %211 to i64
  %215 = sub nsw i64 0, %214
  %216 = getelementptr [4 x i8], ptr %3, i64 %215
  %217 = icmp samesign ult i32 %211, 16
  br i1 %217, label %.preheader184.preheader, label %218

218:                                              ; preds = %213
  %219 = add nsw i32 %211, -1
  %220 = zext nneg i32 %219 to i64
  %221 = shl nuw nsw i64 %220, 2
  %222 = getelementptr i8, ptr %124, i64 %221
  %223 = getelementptr i8, ptr %222, i64 4
  %224 = icmp ult ptr %124, %3
  %225 = icmp ult ptr %216, %223
  %226 = and i1 %224, %225
  br i1 %226, label %.preheader184.preheader, label %227

227:                                              ; preds = %218
  %228 = and i64 %214, 2147483640
  br label %229

229:                                              ; preds = %229, %227
  %230 = phi i64 [ 0, %227 ], [ %240, %229 ]
  %231 = shl i64 %230, 2
  %232 = getelementptr i8, ptr %216, i64 %231
  %233 = getelementptr i8, ptr %124, i64 %231
  %234 = getelementptr i8, ptr %233, i64 16
  %235 = load <4 x i32>, ptr %233, align 4, !tbaa !5, !alias.scope !199, !noalias !202
  %236 = load <4 x i32>, ptr %234, align 4, !tbaa !5, !alias.scope !199, !noalias !202
  %237 = getelementptr i8, ptr %232, i64 16
  %238 = load <4 x i32>, ptr %232, align 4, !tbaa !5, !alias.scope !202
  %239 = load <4 x i32>, ptr %237, align 4, !tbaa !5, !alias.scope !202
  store <4 x i32> %238, ptr %233, align 4, !tbaa !5, !alias.scope !199, !noalias !202
  store <4 x i32> %239, ptr %234, align 4, !tbaa !5, !alias.scope !199, !noalias !202
  store <4 x i32> %235, ptr %232, align 4, !tbaa !5, !alias.scope !202
  store <4 x i32> %236, ptr %237, align 4, !tbaa !5, !alias.scope !202
  %240 = add nuw nsw i64 %230, 8
  %241 = icmp eq i64 %240, %228
  br i1 %241, label %242, label %229, !llvm.loop !204

242:                                              ; preds = %229
  %243 = trunc nuw nsw i64 %228 to i32
  %244 = sub nsw i32 %211, %243
  %245 = shl nuw nsw i64 %228, 2
  %246 = getelementptr i8, ptr %216, i64 %245
  %247 = getelementptr i8, ptr %124, i64 %245
  %248 = icmp eq i64 %228, %214
  br i1 %248, label %.loopexit, label %.preheader184.preheader

.preheader184.preheader:                          ; preds = %242, %218, %213
  %.ph = phi i32 [ %211, %218 ], [ %211, %213 ], [ %244, %242 ]
  %.ph175 = phi ptr [ %216, %218 ], [ %216, %213 ], [ %246, %242 ]
  %.ph176 = phi ptr [ %124, %218 ], [ %124, %213 ], [ %247, %242 ]
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.preheader, %.preheader184
  %249 = phi i32 [ %254, %.preheader184 ], [ %.ph, %.preheader184.preheader ]
  %250 = phi ptr [ %256, %.preheader184 ], [ %.ph175, %.preheader184.preheader ]
  %251 = phi ptr [ %255, %.preheader184 ], [ %.ph176, %.preheader184.preheader ]
  %252 = load i32, ptr %251, align 4, !tbaa !5
  %253 = load i32, ptr %250, align 4, !tbaa !5
  store i32 %253, ptr %251, align 4, !tbaa !5
  store i32 %252, ptr %250, align 4, !tbaa !5
  %254 = add nsw i32 %249, -1
  %255 = getelementptr inbounds nuw i8, ptr %251, i64 4
  %256 = getelementptr inbounds nuw i8, ptr %250, i64 4
  %257 = icmp samesign ugt i32 %249, 1
  br i1 %257, label %.preheader184, label %.loopexit, !llvm.loop !205

.loopexit:                                        ; preds = %.preheader184, %242, %207
  %258 = getelementptr inbounds i8, ptr %1, i64 %138
  %259 = sub nsw i64 0, %196
  %260 = getelementptr inbounds [4 x i8], ptr %3, i64 %259
  br label %261

261:                                              ; preds = %.loopexit, %.loopexit52
  %262 = phi ptr [ %260, %.loopexit ], [ %3, %.loopexit52 ]
  %263 = phi ptr [ %258, %.loopexit ], [ %1, %.loopexit52 ]
  store ptr %263, ptr %4, align 8, !tbaa !46
  store ptr %262, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = !{!"branch_weights", i32 1, i32 1048575}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = !{!"branch_weights", i32 1048575, i32 1}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !13, !34, !35}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !13, !34}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = !{!"branch_weights", i32 1, i32 1048574}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 int", !48, i64 0}
!48 = !{!"any pointer", !7, i64 0}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = !{!52, !47, i64 0}
!52 = !{!"", !47, i64 0, !47, i64 8, !47, i64 16, !6, i64 24, !6, i64 28}
!53 = !{!52, !47, i64 8}
!54 = !{!52, !47, i64 16}
!55 = !{!52, !6, i64 24}
!56 = !{!52, !6, i64 28}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = !{!"branch_weights", i32 134217473, i32 127}
!62 = distinct !{!62, !13}
!63 = !{!"branch_weights", i32 1, i32 127}
!64 = distinct !{!64, !13}
!65 = !{!"branch_weights", i32 127, i32 134217473}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = !{!"branch_weights", i32 1, i32 8190}
!83 = !{!"branch_weights", i32 8190, i32 -16382}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = !{!94}
!94 = distinct !{!94, !95}
!95 = distinct !{!95, !"LVerDomain"}
!96 = !{!97}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !13, !34, !35}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = distinct !{!101, !13, !34}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!106}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !13, !34, !35}
!108 = distinct !{!108, !100}
!109 = distinct !{!109, !13, !34}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = !{!113, !47, i64 0}
!113 = !{!"", !47, i64 0, !47, i64 8, !6, i64 16, !6, i64 20}
!114 = !{!113, !47, i64 8}
!115 = !{!113, !6, i64 16}
!116 = !{!113, !6, i64 20}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = !{!131}
!131 = distinct !{!131, !132}
!132 = distinct !{!132, !"LVerDomain"}
!133 = !{!134}
!134 = distinct !{!134, !132}
!135 = distinct !{!135, !13, !34, !35}
!136 = distinct !{!136, !13, !34}
!137 = !{!138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, !"LVerDomain"}
!140 = !{!141}
!141 = distinct !{!141, !139}
!142 = distinct !{!142, !13, !34, !35}
!143 = distinct !{!143, !13, !34}
!144 = !{!145}
!145 = distinct !{!145, !146}
!146 = distinct !{!146, !"LVerDomain"}
!147 = !{!148}
!148 = distinct !{!148, !146}
!149 = distinct !{!149, !13, !34, !35}
!150 = distinct !{!150, !13, !34}
!151 = distinct !{!151, !13}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !13}
!154 = distinct !{!154, !13}
!155 = distinct !{!155, !13}
!156 = distinct !{!156, !13}
!157 = !{!158, !47, i64 0}
!158 = !{!"", !47, i64 0, !47, i64 8, !47, i64 16, !6, i64 24}
!159 = !{!158, !47, i64 8}
!160 = !{!158, !47, i64 16}
!161 = !{!158, !6, i64 24}
!162 = !{!163}
!163 = distinct !{!163, !164}
!164 = distinct !{!164, !"LVerDomain"}
!165 = !{!166}
!166 = distinct !{!166, !164}
!167 = distinct !{!167, !13, !34, !35}
!168 = distinct !{!168, !13, !34}
!169 = distinct !{!169, !13}
!170 = distinct !{!170, !13}
!171 = distinct !{!171, !13}
!172 = distinct !{!172, !13}
!173 = distinct !{!173, !13}
!174 = distinct !{!174, !13}
!175 = distinct !{!175, !13}
!176 = !{!177}
!177 = distinct !{!177, !178}
!178 = distinct !{!178, !"LVerDomain"}
!179 = !{!180}
!180 = distinct !{!180, !178}
!181 = distinct !{!181, !13, !34, !35}
!182 = distinct !{!182, !13, !34}
!183 = distinct !{!183, !13}
!184 = distinct !{!184, !13}
!185 = distinct !{!185, !13}
!186 = distinct !{!186, !13}
!187 = distinct !{!187, !13}
!188 = distinct !{!188, !13}
!189 = distinct !{!189, !13}
!190 = distinct !{!190, !13}
!191 = distinct !{!191, !13}
!192 = !{!193}
!193 = distinct !{!193, !194}
!194 = distinct !{!194, !"LVerDomain"}
!195 = !{!196}
!196 = distinct !{!196, !194}
!197 = distinct !{!197, !13, !34, !35}
!198 = distinct !{!198, !13, !34}
!199 = !{!200}
!200 = distinct !{!200, !201}
!201 = distinct !{!201, !"LVerDomain"}
!202 = !{!203}
!203 = distinct !{!203, !201}
!204 = distinct !{!204, !13, !34, !35}
!205 = distinct !{!205, !13, !34}
