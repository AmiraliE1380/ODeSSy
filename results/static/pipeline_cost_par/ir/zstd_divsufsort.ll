; ModuleID = '/mydata/zstd/lib/dictBuilder/divsufsort.c'
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
  br i1 %9, label %233, label %10

10:                                               ; preds = %4
  switch i32 %2, label %22 [
    i32 0, label %233
    i32 1, label %11
    i32 2, label %12
  ]

11:                                               ; preds = %10
  store i32 0, ptr %1, align 4, !tbaa !5
  br label %233

12:                                               ; preds = %10
  %13 = load i8, ptr %0, align 1, !tbaa !9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = icmp ult i8 %13, %15
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i64
  %19 = getelementptr inbounds nuw i32, ptr %1, i64 %18
  store i32 0, ptr %19, align 4, !tbaa !5
  %20 = zext i1 %16 to i64
  %21 = getelementptr inbounds nuw i32, ptr %1, i64 %20
  store i32 1, ptr %21, align 4, !tbaa !5
  br label %233

22:                                               ; preds = %10
  %23 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #10
  %24 = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #10
  %25 = icmp ne ptr %23, null
  %26 = icmp ne ptr %24, null
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %231

28:                                               ; preds = %22
  %29 = tail call fastcc i32 @sort_typeBstar(ptr noundef %0, ptr noundef %1, ptr noundef %23, ptr noundef %24, i32 noundef %2)
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = ptrtoint ptr %1 to i64
  br label %148

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %1, i64 -4
  %35 = ptrtoint ptr %1 to i64
  br label %36

36:                                               ; preds = %145, %33
  %37 = phi i64 [ 254, %33 ], [ %146, %145 ]
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 8
  %40 = add nuw nsw i64 %37, 1
  %41 = trunc nuw nsw i64 %40 to i32
  %42 = or i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %24, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !5
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %1, i64 %46
  %48 = getelementptr inbounds nuw i32, ptr %23, i64 %40
  %49 = load i32, ptr %48, align 4, !tbaa !5
  %50 = sext i32 %49 to i64
  %51 = getelementptr i32, ptr %34, i64 %50
  %52 = icmp ugt ptr %47, %51
  br i1 %52, label %145, label %54

53:                                               ; preds = %67
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

54:                                               ; preds = %36, %140
  %55 = phi ptr [ %143, %140 ], [ %51, %36 ]
  %56 = phi i32 [ %142, %140 ], [ -1, %36 ]
  %57 = phi ptr [ %141, %140 ], [ null, %36 ]
  %58 = load i32, ptr %55, align 4, !tbaa !5
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %131

60:                                               ; preds = %54
  %61 = zext nneg i32 %58 to i64
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = zext i8 %63 to i64
  %65 = icmp eq i64 %37, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1630, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

67:                                               ; preds = %60
  %68 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %58, i32 1), !nosanitize !10
  %69 = extractvalue { i32, i1 } %68, 0, !nosanitize !10
  %70 = extractvalue { i32, i1 } %68, 1, !nosanitize !10
  br i1 %70, label %53, label %71, !prof !11, !nosanitize !10

71:                                               ; preds = %67
  %72 = icmp slt i32 %69, %2
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = sext i32 %69 to i64
  %75 = getelementptr inbounds i8, ptr %0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !9
  %77 = icmp ugt i8 %63, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %71
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.src, i32 noundef 1631, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

79:                                               ; preds = %73
  %80 = add nsw i32 %58, -1
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !9
  %84 = icmp ugt i8 %83, %63
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.src, i32 noundef 1632, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

86:                                               ; preds = %79
  %87 = xor i32 %58, -1
  store i32 %87, ptr %55, align 4, !tbaa !5
  %88 = load i8, ptr %82, align 1, !tbaa !9
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %58, 1
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = getelementptr i8, ptr %62, i64 -2
  %93 = load i8, ptr %92, align 1, !tbaa !9
  %94 = icmp ugt i8 %93, %88
  %95 = sub nsw i32 0, %58
  %96 = select i1 %94, i32 %95, i32 %80
  br label %97

97:                                               ; preds = %91, %86
  %98 = phi i32 [ 0, %86 ], [ %96, %91 ]
  %99 = icmp eq i32 %56, %89
  br i1 %99, label %121, label %100

100:                                              ; preds = %97
  %101 = icmp sgt i32 %56, -1
  br i1 %101, label %102, label %114

102:                                              ; preds = %100
  %103 = ptrtoint ptr %57 to i64
  %104 = sub i64 %103, %35
  %105 = ashr exact i64 %104, 2
  %106 = add nsw i64 %105, 2147483648
  %107 = icmp ult i64 %106, 4294967296
  br i1 %107, label %109, label %108

108:                                              ; preds = %102
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1637, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

109:                                              ; preds = %102
  %110 = trunc nsw i64 %105 to i32
  %111 = or i32 %56, %39
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, ptr %24, i64 %112
  store i32 %110, ptr %113, align 4, !tbaa !5
  br label %114

114:                                              ; preds = %109, %100
  %115 = or disjoint i32 %39, %89
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %24, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !5
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, ptr %1, i64 %119
  br label %121

121:                                              ; preds = %114, %97
  %122 = phi ptr [ %120, %114 ], [ %57, %97 ]
  %123 = phi i32 [ %89, %114 ], [ %56, %97 ]
  %124 = icmp ult ptr %122, %55
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.src, i32 noundef 1640, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

126:                                              ; preds = %121
  %127 = icmp eq ptr %122, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.src, i32 noundef 1640, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

129:                                              ; preds = %126
  %130 = getelementptr inbounds i8, ptr %122, i64 -4
  store i32 %98, ptr %122, align 4, !tbaa !5
  br label %140

131:                                              ; preds = %54
  %132 = icmp eq i32 %58, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %131
  %134 = load i8, ptr %0, align 1, !tbaa !9
  %135 = zext i8 %134 to i64
  %136 = icmp eq i64 %37, %135
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  tail call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.src, i32 noundef 1643, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

138:                                              ; preds = %133, %131
  %139 = xor i32 %58, -1
  store i32 %139, ptr %55, align 4, !tbaa !5
  br label %140

140:                                              ; preds = %138, %129
  %141 = phi ptr [ %130, %129 ], [ %57, %138 ]
  %142 = phi i32 [ %123, %129 ], [ %56, %138 ]
  %143 = getelementptr inbounds i8, ptr %55, i64 -4
  %144 = icmp ugt ptr %47, %143
  br i1 %144, label %145, label %54, !llvm.loop !12

145:                                              ; preds = %140, %36
  %146 = add nsw i64 %37, -1
  %147 = icmp eq i64 %37, 0
  br i1 %147, label %148, label %36, !llvm.loop !14

148:                                              ; preds = %145, %31
  %149 = phi i64 [ %32, %31 ], [ %35, %145 ]
  %150 = add nsw i32 %2, -1
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !9
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds nuw i32, ptr %23, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !5
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, ptr %1, i64 %157
  %159 = zext nneg i32 %2 to i64
  %160 = getelementptr i8, ptr %0, i64 %159
  %161 = getelementptr i8, ptr %160, i64 -2
  %162 = load i8, ptr %161, align 1, !tbaa !9
  %163 = icmp ult i8 %162, %153
  %164 = sub nsw i32 0, %2
  %165 = select i1 %163, i32 %164, i32 %150
  store i32 %165, ptr %158, align 4, !tbaa !5
  %166 = shl nuw nsw i64 %159, 2
  %167 = getelementptr inbounds nuw i8, ptr %1, i64 %166
  %168 = getelementptr inbounds nuw i8, ptr %158, i64 4
  %169 = zext i8 %153 to i32
  br label %170

170:                                              ; preds = %226, %148
  %171 = phi i32 [ %169, %148 ], [ %228, %226 ]
  %172 = phi ptr [ %168, %148 ], [ %227, %226 ]
  %173 = phi ptr [ %1, %148 ], [ %229, %226 ]
  %174 = load i32, ptr %173, align 4, !tbaa !5
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %221

176:                                              ; preds = %170
  %177 = add nsw i32 %174, -1
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !9
  %181 = zext i8 %180 to i32
  %182 = zext nneg i32 %174 to i64
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !9
  %185 = icmp ult i8 %180, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.src, i32 noundef 1657, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

187:                                              ; preds = %176
  %188 = icmp eq i32 %177, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %187
  %190 = getelementptr i8, ptr %183, i64 -2
  %191 = load i8, ptr %190, align 1, !tbaa !9
  %192 = icmp ult i8 %191, %180
  br i1 %192, label %193, label %195

193:                                              ; preds = %189, %187
  %194 = sub nsw i32 0, %174
  br label %195

195:                                              ; preds = %193, %189
  %196 = phi i32 [ %194, %193 ], [ %177, %189 ]
  %197 = icmp eq i32 %171, %181
  br i1 %197, label %214, label %198

198:                                              ; preds = %195
  %199 = ptrtoint ptr %172 to i64
  %200 = sub i64 %199, %149
  %201 = ashr exact i64 %200, 2
  %202 = add nsw i64 %201, 2147483648
  %203 = icmp ult i64 %202, 4294967296
  br i1 %203, label %205, label %204

204:                                              ; preds = %198
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1661, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

205:                                              ; preds = %198
  %206 = trunc nsw i64 %201 to i32
  %207 = zext nneg i32 %171 to i64
  %208 = getelementptr inbounds nuw i32, ptr %23, i64 %207
  store i32 %206, ptr %208, align 4, !tbaa !5
  %209 = zext i8 %180 to i64
  %210 = getelementptr inbounds nuw i32, ptr %23, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !5
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, ptr %1, i64 %212
  br label %214

214:                                              ; preds = %205, %195
  %215 = phi ptr [ %213, %205 ], [ %172, %195 ]
  %216 = phi i32 [ %181, %205 ], [ %171, %195 ]
  %217 = icmp ult ptr %173, %215
  br i1 %217, label %219, label %218

218:                                              ; preds = %214
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.src, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

219:                                              ; preds = %214
  %220 = getelementptr inbounds nuw i8, ptr %215, i64 4
  store i32 %196, ptr %215, align 4, !tbaa !5
  br label %226

221:                                              ; preds = %170
  %222 = icmp slt i32 %174, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %221
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.src, i32 noundef 1667, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

224:                                              ; preds = %221
  %225 = xor i32 %174, -1
  store i32 %225, ptr %173, align 4, !tbaa !5
  br label %226

226:                                              ; preds = %224, %219
  %227 = phi ptr [ %220, %219 ], [ %172, %224 ]
  %228 = phi i32 [ %216, %219 ], [ %171, %224 ]
  %229 = getelementptr inbounds nuw i8, ptr %173, i64 4
  %230 = icmp ult ptr %229, %167
  br i1 %230, label %170, label %231, !llvm.loop !15

231:                                              ; preds = %226, %22
  %232 = phi i32 [ -2, %22 ], [ 0, %226 ]
  tail call void @free(ptr noundef %24) #12
  tail call void @free(ptr noundef %23) #12
  br label %233

233:                                              ; preds = %10, %4, %231, %12, %11
  %234 = phi i32 [ 0, %11 ], [ 0, %12 ], [ %232, %231 ], [ -1, %4 ], [ %2, %10 ]
  ret i32 %234
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

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
  br label %16

14:                                               ; preds = %39, %21, %67, %104, %101, %91, %134, %125, %152, %3024, %181
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

15:                                               ; preds = %48, %159, %769, %221, %818, %803, %2939, %3016, %2961, %2975, %2995, %188, %81
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

16:                                               ; preds = %5, %79
  %17 = phi i32 [ %13, %5 ], [ %65, %79 ]
  %18 = phi i32 [ %9, %5 ], [ %61, %79 ]
  %19 = phi i32 [ %4, %5 ], [ %51, %79 ]
  %20 = zext nneg i32 %18 to i64
  br label %21

21:                                               ; preds = %16, %33
  %22 = phi i64 [ %20, %16 ], [ %34, %33 ]
  %23 = phi i32 [ %17, %16 ], [ %37, %33 ]
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds nuw i32, ptr %2, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 1), !nosanitize !10
  %28 = extractvalue { i32, i1 } %27, 1, !nosanitize !10
  br i1 %28, label %14, label %29, !prof !11, !nosanitize !10

29:                                               ; preds = %21
  %30 = extractvalue { i32, i1 } %27, 0, !nosanitize !10
  store i32 %30, ptr %25, align 4, !tbaa !5
  %31 = trunc nuw i64 %22 to i32
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %29
  %34 = add nsw i64 %22, -1
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !9
  %37 = zext i8 %36 to i32
  %38 = icmp sgt i32 %23, %37
  br i1 %38, label %39, label %21, !llvm.loop !16

39:                                               ; preds = %33
  %40 = trunc i64 %34 to i32
  %41 = shl nuw nsw i32 %37, 8
  %42 = or i32 %41, %23
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds nuw i32, ptr %3, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !5
  %46 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %45, i32 1), !nosanitize !10
  %47 = extractvalue { i32, i1 } %46, 1, !nosanitize !10
  br i1 %47, label %14, label %48, !prof !11, !nosanitize !10

48:                                               ; preds = %39
  %49 = extractvalue { i32, i1 } %46, 0, !nosanitize !10
  store i32 %49, ptr %44, align 4, !tbaa !5
  %50 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %19, i32 -1)
  %51 = extractvalue { i32, i1 } %50, 0, !nosanitize !10
  %52 = extractvalue { i32, i1 } %50, 1, !nosanitize !10
  br i1 %52, label %15, label %53, !prof !11, !nosanitize !10

53:                                               ; preds = %48
  %54 = sext i32 %51 to i64
  %55 = getelementptr inbounds i32, ptr %1, i64 %54
  store i32 %40, ptr %55, align 4, !tbaa !5
  %56 = icmp eq i64 %22, 1
  br i1 %56, label %81, label %57

57:                                               ; preds = %53
  %58 = add nsw i32 %31, -2
  br label %59

59:                                               ; preds = %57, %75
  %60 = phi i32 [ %65, %75 ], [ %37, %57 ]
  %61 = phi i32 [ %77, %75 ], [ %58, %57 ]
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !9
  %65 = zext i8 %64 to i32
  %66 = icmp samesign ult i32 %60, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %59
  %68 = shl nuw nsw i32 %60, 8
  %69 = or disjoint i32 %68, %65
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds nuw i32, ptr %3, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !5
  %73 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %72, i32 1), !nosanitize !10
  %74 = extractvalue { i32, i1 } %73, 1, !nosanitize !10
  br i1 %74, label %14, label %75, !prof !11, !nosanitize !10

75:                                               ; preds = %67
  %76 = extractvalue { i32, i1 } %73, 0, !nosanitize !10
  store i32 %76, ptr %71, align 4, !tbaa !5
  %77 = add nsw i32 %61, -1
  %78 = icmp sgt i32 %61, 0
  br i1 %78, label %59, label %81, !llvm.loop !17

79:                                               ; preds = %59
  %80 = icmp sgt i32 %61, -1
  br i1 %80, label %16, label %81, !llvm.loop !18

81:                                               ; preds = %53, %79, %29, %75
  %82 = phi i32 [ %51, %75 ], [ %19, %29 ], [ %51, %79 ], [ %51, %53 ]
  %83 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4, i32 %82), !nosanitize !10
  %84 = extractvalue { i32, i1 } %83, 0, !nosanitize !10
  %85 = extractvalue { i32, i1 } %83, 1, !nosanitize !10
  br i1 %85, label %15, label %91, !prof !11, !nosanitize !10

86:                                               ; preds = %121, %113
  %87 = phi i32 [ %95, %113 ], [ %132, %121 ]
  %88 = phi i32 [ %115, %113 ], [ %123, %121 ]
  %89 = add nuw nsw i64 %93, 1
  %90 = icmp eq i64 %114, 256
  br i1 %90, label %140, label %91, !llvm.loop !19

91:                                               ; preds = %81, %86
  %92 = phi i64 [ %114, %86 ], [ 0, %81 ]
  %93 = phi i64 [ %89, %86 ], [ 1, %81 ]
  %94 = phi i32 [ %88, %86 ], [ 0, %81 ]
  %95 = phi i32 [ %87, %86 ], [ 0, %81 ]
  %96 = getelementptr inbounds nuw i32, ptr %2, i64 %92
  %97 = load i32, ptr %96, align 4, !tbaa !5
  %98 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %94, i32 %97), !nosanitize !10
  %99 = extractvalue { i32, i1 } %98, 0, !nosanitize !10
  %100 = extractvalue { i32, i1 } %98, 1, !nosanitize !10
  br i1 %100, label %14, label %101, !prof !11, !nosanitize !10

101:                                              ; preds = %91
  %102 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %94, i32 %95), !nosanitize !10
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !10
  br i1 %103, label %14, label %104, !prof !11, !nosanitize !10

104:                                              ; preds = %101
  %105 = extractvalue { i32, i1 } %102, 0, !nosanitize !10
  store i32 %105, ptr %96, align 4, !tbaa !5
  %106 = shl i64 %92, 8
  %107 = and i64 %106, 4294967040
  %108 = getelementptr inbounds nuw i32, ptr %3, i64 %107
  %109 = getelementptr inbounds nuw i32, ptr %108, i64 %92
  %110 = load i32, ptr %109, align 4, !tbaa !5
  %111 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %99, i32 %110), !nosanitize !10
  %112 = extractvalue { i32, i1 } %111, 1, !nosanitize !10
  br i1 %112, label %14, label %113, !prof !11, !nosanitize !10

113:                                              ; preds = %104
  %114 = add nuw nsw i64 %92, 1
  %115 = extractvalue { i32, i1 } %111, 0
  %116 = icmp samesign ult i64 %92, 255
  br i1 %116, label %117, label %86

117:                                              ; preds = %113
  %118 = shl nuw nsw i64 %92, 10
  %119 = getelementptr inbounds nuw i8, ptr %3, i64 %118
  %120 = getelementptr inbounds nuw i32, ptr %3, i64 %92
  br label %125

121:                                              ; preds = %134
  %122 = add nuw nsw i64 %126, 1
  %123 = extractvalue { i32, i1 } %138, 0
  %124 = icmp eq i64 %122, 256
  br i1 %124, label %86, label %125, !llvm.loop !20

125:                                              ; preds = %117, %121
  %126 = phi i64 [ %93, %117 ], [ %122, %121 ]
  %127 = phi i32 [ %115, %117 ], [ %123, %121 ]
  %128 = phi i32 [ %95, %117 ], [ %132, %121 ]
  %129 = getelementptr inbounds nuw i32, ptr %119, i64 %126
  %130 = load i32, ptr %129, align 4, !tbaa !5
  %131 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %128, i32 %130), !nosanitize !10
  %132 = extractvalue { i32, i1 } %131, 0, !nosanitize !10
  %133 = extractvalue { i32, i1 } %131, 1, !nosanitize !10
  br i1 %133, label %14, label %134, !prof !11, !nosanitize !10

134:                                              ; preds = %125
  store i32 %132, ptr %129, align 4, !tbaa !5
  %135 = shl nuw nsw i64 %126, 10
  %136 = getelementptr inbounds nuw i8, ptr %120, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !5
  %138 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %127, i32 %137), !nosanitize !10
  %139 = extractvalue { i32, i1 } %138, 1, !nosanitize !10
  br i1 %139, label %14, label %121, !prof !11, !nosanitize !10

140:                                              ; preds = %86
  %141 = icmp sgt i32 %84, 0
  br i1 %141, label %142, label %3036

142:                                              ; preds = %140
  %143 = zext nneg i32 %4 to i64
  %144 = getelementptr inbounds nuw i32, ptr %1, i64 %143
  %145 = zext nneg i32 %84 to i64
  %146 = sub nsw i64 0, %145
  %147 = getelementptr inbounds i32, ptr %144, i64 %146
  %148 = getelementptr inbounds nuw i32, ptr %1, i64 %145
  %149 = icmp eq i32 %84, 1
  br i1 %149, label %181, label %150

150:                                              ; preds = %142
  %151 = add nsw i32 %84, -2
  br label %152

152:                                              ; preds = %150, %175
  %153 = phi i32 [ %179, %175 ], [ %151, %150 ]
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds nuw i32, ptr %147, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !5
  %157 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %156, i32 1), !nosanitize !10
  %158 = extractvalue { i32, i1 } %157, 1, !nosanitize !10
  br i1 %158, label %14, label %159, !prof !11, !nosanitize !10

159:                                              ; preds = %152
  %160 = extractvalue { i32, i1 } %157, 0, !nosanitize !10
  %161 = sext i32 %156 to i64
  %162 = getelementptr inbounds i8, ptr %0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !9
  %164 = zext i8 %163 to i64
  %165 = sext i32 %160 to i64
  %166 = getelementptr inbounds i8, ptr %0, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !9
  %168 = zext i8 %167 to i64
  %169 = shl nuw nsw i64 %164, 10
  %170 = getelementptr inbounds nuw i8, ptr %3, i64 %169
  %171 = getelementptr inbounds nuw i32, ptr %170, i64 %168
  %172 = load i32, ptr %171, align 4, !tbaa !5
  %173 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %172, i32 -1)
  %174 = extractvalue { i32, i1 } %173, 1, !nosanitize !10
  br i1 %174, label %15, label %175, !prof !11, !nosanitize !10

175:                                              ; preds = %159
  %176 = extractvalue { i32, i1 } %173, 0, !nosanitize !10
  store i32 %176, ptr %171, align 4, !tbaa !5
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, ptr %1, i64 %177
  store i32 %153, ptr %178, align 4, !tbaa !5
  %179 = add nsw i32 %153, -1
  %180 = icmp sgt i32 %153, 0
  br i1 %180, label %152, label %181, !llvm.loop !21

181:                                              ; preds = %175, %142
  %182 = add nsw i32 %84, -1
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds nuw i32, ptr %147, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !5
  %186 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %185, i32 1), !nosanitize !10
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !10
  br i1 %187, label %14, label %188, !prof !11, !nosanitize !10

188:                                              ; preds = %181
  %189 = sext i32 %185 to i64
  %190 = getelementptr inbounds i8, ptr %0, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !9
  %192 = zext i8 %191 to i64
  %193 = extractvalue { i32, i1 } %186, 0, !nosanitize !10
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, ptr %0, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !9
  %197 = zext i8 %196 to i64
  %198 = shl nuw nsw i64 %192, 10
  %199 = getelementptr inbounds nuw i8, ptr %3, i64 %198
  %200 = getelementptr inbounds nuw i32, ptr %199, i64 %197
  %201 = load i32, ptr %200, align 4, !tbaa !5
  %202 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %201, i32 -1)
  %203 = extractvalue { i32, i1 } %202, 1, !nosanitize !10
  br i1 %203, label %15, label %204, !prof !11, !nosanitize !10

204:                                              ; preds = %188
  %205 = extractvalue { i32, i1 } %202, 0, !nosanitize !10
  store i32 %205, ptr %200, align 4, !tbaa !5
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, ptr %1, i64 %206
  store i32 %182, ptr %207, align 4, !tbaa !5
  %208 = add nuw i32 %84, 1073741824
  %209 = icmp sgt i32 %208, -1
  br i1 %209, label %211, label %210, !prof !22, !nosanitize !10

210:                                              ; preds = %204
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

211:                                              ; preds = %204
  %212 = shl nuw nsw i32 %84, 1
  %213 = sub nsw i32 %4, %212
  %214 = icmp slt i32 %213, 1024
  %215 = getelementptr i8, ptr %0, i64 2
  %216 = getelementptr i8, ptr %0, i64 %143
  br label %217

217:                                              ; preds = %772, %211
  %218 = phi i32 [ 254, %211 ], [ %773, %772 ]
  %219 = phi i32 [ %84, %211 ], [ %227, %772 ]
  %220 = shl i32 %218, 8
  br label %221

221:                                              ; preds = %217, %766
  %222 = phi i32 [ 255, %217 ], [ %767, %766 ]
  %223 = phi i32 [ %219, %217 ], [ %227, %766 ]
  %224 = or i32 %222, %220
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, ptr %3, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !5
  %228 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %223, i32 %227), !nosanitize !10
  %229 = extractvalue { i32, i1 } %228, 1, !nosanitize !10
  br i1 %229, label %15, label %230, !prof !11, !nosanitize !10

230:                                              ; preds = %221
  %231 = extractvalue { i32, i1 } %228, 0, !nosanitize !10
  %232 = icmp sgt i32 %231, 1
  br i1 %232, label %233, label %766

233:                                              ; preds = %230
  %234 = sext i32 %227 to i64
  %235 = getelementptr inbounds i32, ptr %1, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !5
  %237 = sext i32 %223 to i64
  %238 = getelementptr inbounds i32, ptr %1, i64 %237
  %239 = icmp eq i32 %236, %182
  %240 = getelementptr inbounds nuw i8, ptr %235, i64 4
  %241 = select i1 %239, ptr %240, ptr %235
  br i1 %214, label %244, label %242

242:                                              ; preds = %233
  %243 = ptrtoint ptr %241 to i64
  br label %368

244:                                              ; preds = %233
  %245 = ptrtoint ptr %238 to i64
  %246 = ptrtoint ptr %241 to i64
  %247 = sub i64 %245, %246
  %248 = ashr exact i64 %247, 2
  %249 = add nsw i64 %248, 2147483648
  %250 = icmp ult i64 %249, 4294967296
  br i1 %250, label %252, label %251

251:                                              ; preds = %244
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 853, ptr noundef nonnull @__PRETTY_FUNCTION__.sssort) #11
  unreachable

252:                                              ; preds = %244
  %253 = trunc nsw i64 %248 to i32
  %254 = icmp slt i32 %213, %253
  br i1 %254, label %255, label %368

255:                                              ; preds = %252
  %256 = icmp sgt i64 %248, 1048575
  br i1 %256, label %361, label %257

257:                                              ; preds = %255
  %258 = icmp ult i64 %248, 65536
  br i1 %258, label %277, label %259

259:                                              ; preds = %257
  %260 = icmp ult i64 %248, 16777216
  br i1 %260, label %270, label %261

261:                                              ; preds = %259
  %262 = lshr i64 %248, 24
  %263 = and i64 %262, 255
  %264 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !5
  %266 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %265, i32 24), !nosanitize !10
  %267 = extractvalue { i32, i1 } %266, 0, !nosanitize !10
  %268 = extractvalue { i32, i1 } %266, 1, !nosanitize !10
  br i1 %268, label %269, label %289, !prof !11, !nosanitize !10

269:                                              ; preds = %328, %318, %314, %306, %303, %279, %270, %261
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

270:                                              ; preds = %259
  %271 = lshr i64 %248, 16
  %272 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !5
  %274 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %273, i32 16), !nosanitize !10
  %275 = extractvalue { i32, i1 } %274, 0, !nosanitize !10
  %276 = extractvalue { i32, i1 } %274, 1, !nosanitize !10
  br i1 %276, label %269, label %289, !prof !11, !nosanitize !10

277:                                              ; preds = %257
  %278 = icmp samesign ult i64 %248, 256
  br i1 %278, label %286, label %279

279:                                              ; preds = %277
  %280 = lshr i64 %248, 8
  %281 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %280
  %282 = load i32, ptr %281, align 4, !tbaa !5
  %283 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %282, i32 8), !nosanitize !10
  %284 = extractvalue { i32, i1 } %283, 0, !nosanitize !10
  %285 = extractvalue { i32, i1 } %283, 1, !nosanitize !10
  br i1 %285, label %269, label %289, !prof !11, !nosanitize !10

286:                                              ; preds = %277
  %287 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %248
  %288 = load i32, ptr %287, align 4, !tbaa !5
  br label %289

289:                                              ; preds = %286, %279, %270, %261
  %290 = phi i32 [ %267, %261 ], [ %275, %270 ], [ %284, %279 ], [ %288, %286 ]
  %291 = icmp sgt i32 %290, 15
  br i1 %291, label %292, label %326

292:                                              ; preds = %289
  %293 = lshr i32 %290, 1
  %294 = add nsw i32 %293, -7
  %295 = and i32 %290, 2147483646
  %296 = add nsw i32 %295, -6
  %297 = ashr i32 %253, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [256 x i32], ptr @sqq_table, i64 0, i64 %298
  %300 = load i32, ptr %299, align 4, !tbaa !5
  %301 = shl i32 %300, %294
  %302 = icmp samesign ugt i32 %290, 23
  br i1 %302, label %303, label %314

303:                                              ; preds = %292
  %304 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %301, i32 1), !nosanitize !10
  %305 = extractvalue { i32, i1 } %304, 1, !nosanitize !10
  br i1 %305, label %269, label %306, !prof !11, !nosanitize !10

306:                                              ; preds = %303
  %307 = extractvalue { i32, i1 } %304, 0, !nosanitize !10
  %308 = sdiv i32 %253, %301
  %309 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %307, i32 %308), !nosanitize !10
  %310 = extractvalue { i32, i1 } %309, 1, !nosanitize !10
  br i1 %310, label %269, label %311, !prof !11, !nosanitize !10

311:                                              ; preds = %306
  %312 = extractvalue { i32, i1 } %309, 0, !nosanitize !10
  %313 = ashr i32 %312, 1
  br label %314

314:                                              ; preds = %311, %292
  %315 = phi i32 [ %313, %311 ], [ %301, %292 ]
  %316 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %315, i32 1), !nosanitize !10
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !10
  br i1 %317, label %269, label %318, !prof !11, !nosanitize !10

318:                                              ; preds = %314
  %319 = extractvalue { i32, i1 } %316, 0, !nosanitize !10
  %320 = sdiv i32 %253, %315
  %321 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %319, i32 %320), !nosanitize !10
  %322 = extractvalue { i32, i1 } %321, 1, !nosanitize !10
  br i1 %322, label %269, label %323, !prof !11, !nosanitize !10

323:                                              ; preds = %318
  %324 = extractvalue { i32, i1 } %321, 0, !nosanitize !10
  %325 = ashr i32 %324, 1
  br label %348

326:                                              ; preds = %289
  %327 = icmp sgt i32 %290, 7
  br i1 %327, label %328, label %342

328:                                              ; preds = %326
  %329 = lshr i32 %290, 1
  %330 = sub nuw nsw i32 7, %329
  %331 = and i32 %290, 2147483646
  %332 = add nsw i32 %331, -6
  %333 = ashr i32 %253, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [256 x i32], ptr @sqq_table, i64 0, i64 %334
  %336 = load i32, ptr %335, align 4, !tbaa !5
  %337 = ashr i32 %336, %330
  %338 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %337, i32 1), !nosanitize !10
  %339 = extractvalue { i32, i1 } %338, 1, !nosanitize !10
  br i1 %339, label %269, label %340, !prof !11, !nosanitize !10

340:                                              ; preds = %328
  %341 = extractvalue { i32, i1 } %338, 0, !nosanitize !10
  br label %348

342:                                              ; preds = %326
  %343 = shl i64 %247, 30
  %344 = ashr i64 %343, 32
  %345 = getelementptr inbounds [256 x i32], ptr @sqq_table, i64 0, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !5
  %347 = ashr i32 %346, 4
  br label %358

348:                                              ; preds = %340, %323
  %349 = phi i32 [ %325, %323 ], [ %341, %340 ]
  %350 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %349, i32 %349), !nosanitize !10
  %351 = extractvalue { i32, i1 } %350, 1, !nosanitize !10
  br i1 %351, label %352, label %353, !prof !11, !nosanitize !10

352:                                              ; preds = %348
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

353:                                              ; preds = %348
  %354 = extractvalue { i32, i1 } %350, 0, !nosanitize !10
  %355 = icmp sgt i32 %354, %253
  %356 = sext i1 %355 to i32
  %357 = add nsw i32 %349, %356
  br label %358

358:                                              ; preds = %353, %342
  %359 = phi i32 [ %347, %342 ], [ %357, %353 ]
  %360 = icmp slt i32 %213, %359
  br i1 %360, label %361, label %368

361:                                              ; preds = %358, %255
  %362 = phi i32 [ %359, %358 ], [ 1024, %255 ]
  %363 = tail call i32 @llvm.smin.i32(i32 %362, i32 1024)
  %364 = sext i32 %363 to i64
  %365 = sub nsw i64 0, %364
  %366 = getelementptr inbounds i32, ptr %238, i64 %365
  %367 = icmp eq i32 %362, 0
  br label %368

368:                                              ; preds = %361, %358, %252, %242
  %369 = phi i64 [ %243, %242 ], [ %246, %252 ], [ %246, %358 ], [ %246, %361 ]
  %370 = phi i32 [ %213, %242 ], [ %213, %252 ], [ %213, %358 ], [ %363, %361 ]
  %371 = phi ptr [ %148, %242 ], [ %148, %252 ], [ %148, %358 ], [ %366, %361 ]
  %372 = phi ptr [ %238, %242 ], [ %238, %252 ], [ %238, %358 ], [ %366, %361 ]
  %373 = phi i1 [ true, %242 ], [ true, %252 ], [ true, %358 ], [ %367, %361 ]
  %374 = ptrtoint ptr %372 to i64
  %375 = sub i64 %374, %369
  %376 = icmp sgt i64 %375, 4096
  br i1 %376, label %378, label %377

377:                                              ; preds = %368
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %147, ptr noundef %241, ptr noundef %372)
  br label %434

378:                                              ; preds = %368
  %379 = ptrtoint ptr %238 to i64
  br label %380

380:                                              ; preds = %413, %378
  %381 = phi i32 [ 0, %378 ], [ %414, %413 ]
  %382 = phi ptr [ %241, %378 ], [ %383, %413 ]
  %383 = getelementptr inbounds nuw i8, ptr %382, i64 4096
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %147, ptr noundef %382, ptr noundef %383)
  %384 = ptrtoint ptr %383 to i64
  %385 = sub i64 %379, %384
  %386 = ashr exact i64 %385, 2
  %387 = add nsw i64 %386, 2147483648
  %388 = icmp ult i64 %387, 4294967296
  br i1 %388, label %390, label %389

389:                                              ; preds = %380
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.src, i32 noundef 866, ptr noundef nonnull @__PRETTY_FUNCTION__.sssort) #11
  unreachable

390:                                              ; preds = %380
  %391 = trunc nsw i64 %386 to i32
  %392 = icmp slt i32 %370, %391
  %393 = select i1 %392, ptr %383, ptr %371
  %394 = tail call i32 @llvm.smax.i32(i32 %370, i32 %391)
  %395 = and i32 %381, 1
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %409, label %397

397:                                              ; preds = %390, %397
  %398 = phi i32 [ %405, %397 ], [ 1024, %390 ]
  %399 = phi i32 [ %406, %397 ], [ %381, %390 ]
  %400 = phi ptr [ %403, %397 ], [ %382, %390 ]
  %401 = sext i32 %398 to i64
  %402 = sub nsw i64 0, %401
  %403 = getelementptr inbounds i32, ptr %400, i64 %402
  %404 = getelementptr inbounds i32, ptr %400, i64 %401
  tail call fastcc void @ss_swapmerge(ptr noundef nonnull %0, ptr noundef nonnull %147, ptr noundef %403, ptr noundef %400, ptr noundef %404, ptr noundef %393, i32 noundef %394)
  %405 = shl i32 %398, 1
  %406 = ashr i32 %399, 1
  %407 = and i32 %399, 2
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %397, !llvm.loop !23

409:                                              ; preds = %397, %390
  %410 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %381, i32 1), !nosanitize !10
  %411 = extractvalue { i32, i1 } %410, 1, !nosanitize !10
  br i1 %411, label %412, label %413, !prof !11, !nosanitize !10

412:                                              ; preds = %409
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

413:                                              ; preds = %409
  %414 = extractvalue { i32, i1 } %410, 0, !nosanitize !10
  %415 = sub i64 %374, %384
  %416 = icmp sgt i64 %415, 4096
  br i1 %416, label %380, label %417, !llvm.loop !24

417:                                              ; preds = %413
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %147, ptr noundef %383, ptr noundef %372)
  %418 = icmp eq i32 %414, 0
  br i1 %418, label %434, label %419

419:                                              ; preds = %417, %429
  %420 = phi i32 [ %432, %429 ], [ %414, %417 ]
  %421 = phi i32 [ %431, %429 ], [ 1024, %417 ]
  %422 = phi ptr [ %430, %429 ], [ %383, %417 ]
  %423 = and i32 %420, 1
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %429, label %425

425:                                              ; preds = %419
  %426 = sext i32 %421 to i64
  %427 = sub nsw i64 0, %426
  %428 = getelementptr inbounds i32, ptr %422, i64 %427
  tail call fastcc void @ss_swapmerge(ptr noundef nonnull %0, ptr noundef nonnull %147, ptr noundef %428, ptr noundef %422, ptr noundef %372, ptr noundef %371, i32 noundef %370)
  br label %429

429:                                              ; preds = %425, %419
  %430 = phi ptr [ %428, %425 ], [ %422, %419 ]
  %431 = shl i32 %421, 1
  %432 = ashr i32 %420, 1
  %433 = icmp ult i32 %420, 2
  br i1 %433, label %434, label %419, !llvm.loop !25

434:                                              ; preds = %429, %417, %377
  br i1 %373, label %703, label %435

435:                                              ; preds = %434
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %147, ptr noundef %372, ptr noundef nonnull %238)
  br label %436

436:                                              ; preds = %700, %435
  %437 = phi ptr [ %238, %435 ], [ %701, %700 ]
  %438 = phi ptr [ %372, %435 ], [ %693, %700 ]
  %439 = getelementptr inbounds i8, ptr %437, i64 -4
  %440 = load i32, ptr %439, align 4, !tbaa !5
  %441 = icmp slt i32 %440, 0
  %442 = ashr i32 %440, 31
  %443 = xor i32 %442, %440
  %444 = zext i32 %443 to i64
  %445 = getelementptr inbounds nuw i32, ptr %147, i64 %444
  %446 = ptrtoint ptr %438 to i64
  %447 = sub i64 %446, %369
  %448 = ashr exact i64 %447, 2
  %449 = add nsw i64 %448, 2147483648
  %450 = icmp ult i64 %449, 4294967296
  br i1 %450, label %452, label %451

451:                                              ; preds = %436
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.src, i32 noundef 604, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_inplacemerge) #11
  unreachable

452:                                              ; preds = %436
  %453 = icmp sgt i64 %448, 0
  br i1 %453, label %454, label %527

454:                                              ; preds = %452
  %455 = trunc nuw nsw i64 %448 to i32
  %456 = load i32, ptr %445, align 4, !tbaa !5
  %457 = getelementptr i8, ptr %445, i64 4
  %458 = load i32, ptr %457, align 4, !tbaa !5
  %459 = sext i32 %456 to i64
  %460 = getelementptr inbounds i8, ptr %215, i64 %459
  %461 = sext i32 %458 to i64
  %462 = getelementptr i8, ptr %215, i64 %461
  %463 = icmp ult ptr %460, %462
  br label %464

464:                                              ; preds = %514, %454
  %465 = phi i32 [ -1, %454 ], [ %523, %514 ]
  %466 = phi i32 [ %455, %454 ], [ %522, %514 ]
  %467 = phi ptr [ %241, %454 ], [ %520, %514 ]
  %468 = lshr i32 %466, 1
  %469 = zext nneg i32 %468 to i64
  %470 = getelementptr inbounds nuw i32, ptr %467, i64 %469
  %471 = load i32, ptr %470, align 4, !tbaa !5
  %472 = ashr i32 %471, 31
  %473 = xor i32 %472, %471
  %474 = zext nneg i32 %473 to i64
  %475 = getelementptr inbounds nuw i32, ptr %147, i64 %474
  %476 = load i32, ptr %475, align 4, !tbaa !5
  %477 = getelementptr i8, ptr %475, i64 4
  %478 = load i32, ptr %477, align 4, !tbaa !5
  %479 = sext i32 %476 to i64
  %480 = getelementptr inbounds i8, ptr %215, i64 %479
  %481 = sext i32 %478 to i64
  %482 = getelementptr i8, ptr %215, i64 %481
  %483 = icmp ult ptr %480, %482
  %484 = select i1 %483, i1 %463, i1 false
  br i1 %484, label %485, label %497

485:                                              ; preds = %464, %491
  %486 = phi ptr [ %492, %491 ], [ %480, %464 ]
  %487 = phi ptr [ %493, %491 ], [ %460, %464 ]
  %488 = load i8, ptr %486, align 1, !tbaa !9
  %489 = load i8, ptr %487, align 1, !tbaa !9
  %490 = icmp eq i8 %488, %489
  br i1 %490, label %491, label %506

491:                                              ; preds = %485
  %492 = getelementptr inbounds nuw i8, ptr %486, i64 1
  %493 = getelementptr inbounds nuw i8, ptr %487, i64 1
  %494 = icmp ult ptr %492, %482
  %495 = icmp ult ptr %493, %462
  %496 = select i1 %494, i1 %495, i1 false
  br i1 %496, label %485, label %497, !llvm.loop !26

497:                                              ; preds = %491, %464
  %498 = phi ptr [ %460, %464 ], [ %493, %491 ]
  %499 = phi ptr [ %480, %464 ], [ %492, %491 ]
  %500 = phi i1 [ %483, %464 ], [ %494, %491 ]
  %501 = phi i1 [ %463, %464 ], [ %495, %491 ]
  br i1 %500, label %502, label %512

502:                                              ; preds = %497
  br i1 %501, label %503, label %514

503:                                              ; preds = %502
  %504 = load i8, ptr %499, align 1, !tbaa !9
  %505 = load i8, ptr %498, align 1, !tbaa !9
  br label %506

506:                                              ; preds = %485, %503
  %507 = phi i8 [ %505, %503 ], [ %489, %485 ]
  %508 = phi i8 [ %504, %503 ], [ %488, %485 ]
  %509 = zext i8 %508 to i32
  %510 = zext i8 %507 to i32
  %511 = sub nsw i32 %509, %510
  br label %514

512:                                              ; preds = %497
  %513 = sext i1 %501 to i32
  br label %514

514:                                              ; preds = %512, %506, %502
  %515 = phi i32 [ %513, %512 ], [ %511, %506 ], [ 1, %502 ]
  %516 = icmp slt i32 %515, 0
  %517 = and i32 %466, 1
  %518 = xor i32 %517, 1
  %519 = getelementptr inbounds nuw i8, ptr %470, i64 4
  %520 = select i1 %516, ptr %519, ptr %467
  %521 = select i1 %516, i32 %518, i32 0
  %522 = sub nsw i32 %468, %521
  %523 = select i1 %516, i32 %465, i32 %515
  %524 = icmp sgt i32 %522, 0
  br i1 %524, label %464, label %525, !llvm.loop !27

525:                                              ; preds = %514
  %526 = icmp ult ptr %520, %438
  br i1 %526, label %529, label %691

527:                                              ; preds = %452
  %528 = icmp ult ptr %241, %438
  br i1 %528, label %534, label %691

529:                                              ; preds = %525
  %530 = icmp eq i32 %523, 0
  br i1 %530, label %531, label %534

531:                                              ; preds = %529
  %532 = load i32, ptr %520, align 4, !tbaa !5
  %533 = xor i32 %532, -1
  store i32 %533, ptr %520, align 4, !tbaa !5
  br label %534

534:                                              ; preds = %531, %529, %527
  %535 = phi ptr [ %520, %531 ], [ %520, %529 ], [ %241, %527 ]
  %536 = ptrtoint ptr %535 to i64
  %537 = sub i64 %446, %536
  %538 = ashr i64 %537, 2
  %539 = add nsw i64 %538, 2147483648
  %540 = icmp ult i64 %539, 4294967296
  br i1 %540, label %542, label %541

541:                                              ; preds = %534
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.src, i32 noundef 553, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_rotate) #11
  unreachable

542:                                              ; preds = %534
  %543 = ptrtoint ptr %437 to i64
  %544 = sub i64 %543, %446
  %545 = ashr i64 %544, 2
  %546 = add nsw i64 %545, 2147483648
  %547 = icmp ult i64 %546, 4294967296
  br i1 %547, label %549, label %548

548:                                              ; preds = %542
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.src, i32 noundef 554, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_rotate) #11
  unreachable

549:                                              ; preds = %542
  %550 = icmp sgt i64 %538, 0
  %551 = icmp sgt i64 %545, 0
  %552 = and i1 %551, %550
  br i1 %552, label %553, label %687

553:                                              ; preds = %549
  %554 = trunc nuw nsw i64 %545 to i32
  %555 = trunc nuw nsw i64 %538 to i32
  %556 = getelementptr inbounds i8, ptr %438, i64 -4
  br label %557

557:                                              ; preds = %679, %553
  %558 = phi i32 [ %554, %553 ], [ %683, %679 ]
  %559 = phi i32 [ %555, %553 ], [ %682, %679 ]
  %560 = phi ptr [ %437, %553 ], [ %681, %679 ]
  %561 = phi ptr [ %535, %553 ], [ %680, %679 ]
  %562 = icmp eq i32 %559, %558
  br i1 %562, label %563, label %621

563:                                              ; preds = %557
  %564 = icmp ne i32 %558, 0
  %565 = sext i1 %564 to i32
  %566 = add i32 %558, %565
  %567 = zext i32 %566 to i64
  %568 = add nuw nsw i64 %567, 1
  %569 = icmp ult i32 %566, 7
  br i1 %569, label %607, label %570

570:                                              ; preds = %563
  %571 = getelementptr i8, ptr %561, i64 4
  %572 = icmp ne i32 %558, 0
  %573 = sext i1 %572 to i32
  %574 = add i32 %558, %573
  %575 = zext i32 %574 to i64
  %576 = shl nuw nsw i64 %575, 2
  %577 = getelementptr i8, ptr %571, i64 %576
  %578 = getelementptr i8, ptr %438, i64 4
  %579 = getelementptr i8, ptr %578, i64 %576
  %580 = icmp ult ptr %561, %579
  %581 = icmp ult ptr %438, %577
  %582 = and i1 %580, %581
  br i1 %582, label %607, label %583

583:                                              ; preds = %570
  %584 = and i64 %568, 8589934584
  %585 = shl nuw nsw i64 %584, 2
  %586 = getelementptr i8, ptr %561, i64 %585
  %587 = trunc i64 %584 to i32
  %588 = sub i32 %558, %587
  %589 = shl nuw nsw i64 %584, 2
  %590 = getelementptr i8, ptr %438, i64 %589
  br label %591

591:                                              ; preds = %591, %583
  %592 = phi i64 [ 0, %583 ], [ %603, %591 ]
  %593 = shl i64 %592, 2
  %594 = getelementptr i8, ptr %561, i64 %593
  %595 = shl i64 %592, 2
  %596 = getelementptr i8, ptr %438, i64 %595
  %597 = getelementptr i8, ptr %594, i64 16
  %598 = load <4 x i32>, ptr %594, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  %599 = load <4 x i32>, ptr %597, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  %600 = getelementptr i8, ptr %596, i64 16
  %601 = load <4 x i32>, ptr %596, align 4, !tbaa !5, !alias.scope !31
  %602 = load <4 x i32>, ptr %600, align 4, !tbaa !5, !alias.scope !31
  store <4 x i32> %601, ptr %594, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  store <4 x i32> %602, ptr %597, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  store <4 x i32> %598, ptr %596, align 4, !tbaa !5, !alias.scope !31
  store <4 x i32> %599, ptr %600, align 4, !tbaa !5, !alias.scope !31
  %603 = add nuw i64 %592, 8
  %604 = icmp eq i64 %603, %584
  br i1 %604, label %605, label %591, !llvm.loop !33

605:                                              ; preds = %591
  %606 = icmp eq i64 %568, %584
  br i1 %606, label %687, label %607

607:                                              ; preds = %570, %563, %605
  %608 = phi ptr [ %561, %570 ], [ %561, %563 ], [ %586, %605 ]
  %609 = phi i32 [ %558, %570 ], [ %558, %563 ], [ %588, %605 ]
  %610 = phi ptr [ %438, %570 ], [ %438, %563 ], [ %590, %605 ]
  br label %611

611:                                              ; preds = %607, %611
  %612 = phi ptr [ %618, %611 ], [ %608, %607 ]
  %613 = phi i32 [ %617, %611 ], [ %609, %607 ]
  %614 = phi ptr [ %619, %611 ], [ %610, %607 ]
  %615 = load i32, ptr %612, align 4, !tbaa !5
  %616 = load i32, ptr %614, align 4, !tbaa !5
  store i32 %616, ptr %612, align 4, !tbaa !5
  store i32 %615, ptr %614, align 4, !tbaa !5
  %617 = add nsw i32 %613, -1
  %618 = getelementptr inbounds nuw i8, ptr %612, i64 4
  %619 = getelementptr inbounds nuw i8, ptr %614, i64 4
  %620 = icmp samesign ugt i32 %613, 1
  br i1 %620, label %611, label %687, !llvm.loop !36

621:                                              ; preds = %557
  %622 = icmp samesign ult i32 %559, %558
  br i1 %622, label %623, label %644

623:                                              ; preds = %621
  %624 = getelementptr inbounds i8, ptr %560, i64 -4
  %625 = xor i32 %559, -1
  br label %626

626:                                              ; preds = %642, %623
  %627 = phi ptr [ %643, %642 ], [ %624, %623 ]
  %628 = phi i32 [ %639, %642 ], [ %558, %623 ]
  %629 = load i32, ptr %627, align 4, !tbaa !5
  br label %630

630:                                              ; preds = %626, %630
  %631 = phi ptr [ %634, %630 ], [ %627, %626 ]
  %632 = phi ptr [ %636, %630 ], [ %556, %626 ]
  %633 = load i32, ptr %632, align 4, !tbaa !5
  %634 = getelementptr inbounds i8, ptr %631, i64 -4
  store i32 %633, ptr %631, align 4, !tbaa !5
  %635 = load i32, ptr %634, align 4, !tbaa !5
  %636 = getelementptr inbounds i8, ptr %632, i64 -4
  store i32 %635, ptr %632, align 4, !tbaa !5
  %637 = icmp ult ptr %636, %561
  br i1 %637, label %638, label %630

638:                                              ; preds = %630
  store i32 %629, ptr %634, align 4, !tbaa !5
  %639 = add i32 %628, %625
  %640 = icmp sgt i32 %639, %559
  br i1 %640, label %642, label %679

641:                                              ; preds = %666
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

642:                                              ; preds = %638
  %643 = getelementptr inbounds i8, ptr %631, i64 -8
  br label %626

644:                                              ; preds = %621
  %645 = load i32, ptr %561, align 4, !tbaa !5
  %646 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %558, i32 1)
  %647 = extractvalue { i32, i1 } %646, 1
  %648 = extractvalue { i32, i1 } %646, 0
  br i1 %647, label %649, label %675, !prof !11, !nosanitize !10

649:                                              ; preds = %644, %649
  %650 = phi ptr [ %653, %649 ], [ %561, %644 ]
  %651 = phi ptr [ %655, %649 ], [ %438, %644 ]
  %652 = load i32, ptr %651, align 4, !tbaa !5
  %653 = getelementptr inbounds nuw i8, ptr %650, i64 4
  store i32 %652, ptr %650, align 4, !tbaa !5
  %654 = load i32, ptr %653, align 4, !tbaa !5
  %655 = getelementptr inbounds nuw i8, ptr %651, i64 4
  store i32 %654, ptr %651, align 4, !tbaa !5
  %656 = icmp ugt ptr %560, %655
  br i1 %656, label %649, label %657

657:                                              ; preds = %649
  store i32 %645, ptr %653, align 4, !tbaa !5
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

658:                                              ; preds = %675, %658
  %659 = phi ptr [ %662, %658 ], [ %676, %675 ]
  %660 = phi ptr [ %664, %658 ], [ %438, %675 ]
  %661 = load i32, ptr %660, align 4, !tbaa !5
  %662 = getelementptr inbounds nuw i8, ptr %659, i64 4
  store i32 %661, ptr %659, align 4, !tbaa !5
  %663 = load i32, ptr %662, align 4, !tbaa !5
  %664 = getelementptr inbounds nuw i8, ptr %660, i64 4
  store i32 %663, ptr %660, align 4, !tbaa !5
  %665 = icmp ugt ptr %560, %664
  br i1 %665, label %658, label %666

666:                                              ; preds = %658
  store i32 %677, ptr %662, align 4, !tbaa !5
  %667 = getelementptr inbounds nuw i8, ptr %659, i64 8
  %668 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %678, i32 %648), !nosanitize !10
  %669 = extractvalue { i32, i1 } %668, 0, !nosanitize !10
  %670 = extractvalue { i32, i1 } %668, 1, !nosanitize !10
  br i1 %670, label %641, label %671, !prof !11, !nosanitize !10

671:                                              ; preds = %666
  %672 = icmp sgt i32 %669, %558
  br i1 %672, label %673, label %679

673:                                              ; preds = %671
  %674 = load i32, ptr %667, align 4, !tbaa !5
  br label %675

675:                                              ; preds = %644, %673
  %676 = phi ptr [ %667, %673 ], [ %561, %644 ]
  %677 = phi i32 [ %674, %673 ], [ %645, %644 ]
  %678 = phi i32 [ %669, %673 ], [ %559, %644 ]
  br label %658

679:                                              ; preds = %671, %638
  %680 = phi ptr [ %561, %638 ], [ %667, %671 ]
  %681 = phi ptr [ %634, %638 ], [ %560, %671 ]
  %682 = phi i32 [ %559, %638 ], [ %669, %671 ]
  %683 = phi i32 [ %639, %638 ], [ %558, %671 ]
  %684 = icmp sgt i32 %682, 0
  %685 = icmp sgt i32 %683, 0
  %686 = and i1 %684, %685
  br i1 %686, label %557, label %687, !llvm.loop !37

687:                                              ; preds = %679, %611, %605, %549
  %688 = sub nsw i64 0, %538
  %689 = getelementptr inbounds i32, ptr %437, i64 %688
  %690 = icmp eq ptr %241, %535
  br i1 %690, label %703, label %691

691:                                              ; preds = %687, %527, %525
  %692 = phi ptr [ %689, %687 ], [ %437, %525 ], [ %437, %527 ]
  %693 = phi ptr [ %535, %687 ], [ %438, %525 ], [ %438, %527 ]
  %694 = getelementptr inbounds i8, ptr %692, i64 -4
  br i1 %441, label %695, label %700

695:                                              ; preds = %691, %695
  %696 = phi ptr [ %697, %695 ], [ %694, %691 ]
  %697 = getelementptr inbounds i8, ptr %696, i64 -4
  %698 = load i32, ptr %697, align 4, !tbaa !5
  %699 = icmp slt i32 %698, 0
  br i1 %699, label %695, label %700, !llvm.loop !38

700:                                              ; preds = %695, %691
  %701 = phi ptr [ %694, %691 ], [ %697, %695 ]
  %702 = icmp eq ptr %693, %701
  br i1 %702, label %703, label %436

703:                                              ; preds = %700, %687, %434
  br i1 %239, label %704, label %766

704:                                              ; preds = %703
  %705 = load i32, ptr %235, align 4, !tbaa !5
  %706 = icmp ult ptr %240, %238
  br i1 %706, label %707, label %763

707:                                              ; preds = %704
  %708 = sext i32 %705 to i64
  %709 = getelementptr inbounds i32, ptr %147, i64 %708
  %710 = load i32, ptr %709, align 4, !tbaa !5
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds i8, ptr %215, i64 %711
  %713 = icmp ult ptr %712, %216
  %714 = freeze i1 %713
  br i1 %714, label %723, label %715

715:                                              ; preds = %707, %719
  %716 = phi ptr [ %721, %719 ], [ %240, %707 ]
  %717 = load i32, ptr %716, align 4, !tbaa !5
  %718 = icmp slt i32 %717, 0
  br i1 %718, label %719, label %763

719:                                              ; preds = %715
  %720 = getelementptr inbounds i8, ptr %716, i64 -4
  store i32 %717, ptr %720, align 4, !tbaa !5
  %721 = getelementptr inbounds nuw i8, ptr %716, i64 4
  %722 = icmp ult ptr %721, %238
  br i1 %722, label %715, label %763, !llvm.loop !39

723:                                              ; preds = %707, %759
  %724 = phi ptr [ %761, %759 ], [ %240, %707 ]
  %725 = load i32, ptr %724, align 4, !tbaa !5
  %726 = icmp slt i32 %725, 0
  br i1 %726, label %759, label %727

727:                                              ; preds = %723
  %728 = zext nneg i32 %725 to i64
  %729 = getelementptr inbounds nuw i32, ptr %147, i64 %728
  %730 = load i32, ptr %729, align 4, !tbaa !5
  %731 = getelementptr i8, ptr %729, i64 4
  %732 = load i32, ptr %731, align 4, !tbaa !5
  %733 = sext i32 %730 to i64
  %734 = getelementptr inbounds i8, ptr %215, i64 %733
  %735 = sext i32 %732 to i64
  %736 = getelementptr i8, ptr %215, i64 %735
  %737 = icmp ult ptr %734, %736
  br i1 %737, label %738, label %759

738:                                              ; preds = %727, %744
  %739 = phi ptr [ %745, %744 ], [ %712, %727 ]
  %740 = phi ptr [ %746, %744 ], [ %734, %727 ]
  %741 = load i8, ptr %739, align 1, !tbaa !9
  %742 = load i8, ptr %740, align 1, !tbaa !9
  %743 = icmp eq i8 %741, %742
  br i1 %743, label %744, label %755

744:                                              ; preds = %738
  %745 = getelementptr inbounds nuw i8, ptr %739, i64 1
  %746 = getelementptr inbounds nuw i8, ptr %740, i64 1
  %747 = icmp ult ptr %745, %216
  %748 = icmp ult ptr %746, %736
  %749 = select i1 %747, i1 %748, i1 false
  br i1 %749, label %738, label %750, !llvm.loop !26

750:                                              ; preds = %744
  br i1 %747, label %751, label %763

751:                                              ; preds = %750
  br i1 %748, label %752, label %759

752:                                              ; preds = %751
  %753 = load i8, ptr %745, align 1, !tbaa !9
  %754 = load i8, ptr %746, align 1, !tbaa !9
  br label %755

755:                                              ; preds = %738, %752
  %756 = phi i8 [ %754, %752 ], [ %742, %738 ]
  %757 = phi i8 [ %753, %752 ], [ %741, %738 ]
  %758 = icmp ugt i8 %757, %756
  br i1 %758, label %759, label %763

759:                                              ; preds = %755, %751, %727, %723
  %760 = getelementptr inbounds i8, ptr %724, i64 -4
  store i32 %725, ptr %760, align 4, !tbaa !5
  %761 = getelementptr inbounds nuw i8, ptr %724, i64 4
  %762 = icmp ult ptr %761, %238
  br i1 %762, label %723, label %763, !llvm.loop !39

763:                                              ; preds = %719, %715, %759, %755, %750, %704
  %764 = phi ptr [ %240, %704 ], [ %724, %755 ], [ %761, %759 ], [ %724, %750 ], [ %716, %715 ], [ %721, %719 ]
  %765 = getelementptr inbounds i8, ptr %764, i64 -4
  store i32 %705, ptr %765, align 4, !tbaa !5
  br label %766

766:                                              ; preds = %230, %703, %763
  %767 = add nsw i32 %222, -1
  %768 = icmp slt i32 %218, %767
  br i1 %768, label %221, label %769, !llvm.loop !40

769:                                              ; preds = %766
  %770 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %218, i32 -1)
  %771 = extractvalue { i32, i1 } %770, 1, !nosanitize !10
  br i1 %771, label %15, label %772, !prof !11, !nosanitize !10

772:                                              ; preds = %769
  %773 = extractvalue { i32, i1 } %770, 0, !nosanitize !10
  %774 = icmp sgt i32 %227, 0
  br i1 %774, label %217, label %775, !llvm.loop !41

775:                                              ; preds = %772, %824
  %776 = phi i32 [ %825, %824 ], [ %182, %772 ]
  %777 = zext i32 %776 to i64
  %778 = getelementptr inbounds nuw i32, ptr %1, i64 %777
  %779 = load i32, ptr %778, align 4, !tbaa !5
  %780 = icmp sgt i32 %779, -1
  br i1 %780, label %781, label %800

781:                                              ; preds = %775, %790
  %782 = phi i32 [ %793, %790 ], [ %779, %775 ]
  %783 = phi i64 [ %791, %790 ], [ %777, %775 ]
  %784 = zext nneg i32 %782 to i64
  %785 = getelementptr inbounds nuw i32, ptr %148, i64 %784
  %786 = trunc nuw i64 %783 to i32
  store i32 %786, ptr %785, align 4, !tbaa !5
  %787 = icmp eq i64 %783, 0
  br i1 %787, label %788, label %790

788:                                              ; preds = %781
  %789 = xor i32 %776, -1
  store i32 %789, ptr %1, align 4, !tbaa !5
  br label %827

790:                                              ; preds = %781
  %791 = add nsw i64 %783, -1
  %792 = getelementptr inbounds nuw i32, ptr %1, i64 %791
  %793 = load i32, ptr %792, align 4, !tbaa !5
  %794 = icmp sgt i32 %793, -1
  br i1 %794, label %781, label %795, !llvm.loop !42

795:                                              ; preds = %790
  %796 = getelementptr inbounds nuw i32, ptr %1, i64 %783
  %797 = trunc i64 %791 to i32
  %798 = sub i32 %797, %776
  store i32 %798, ptr %796, align 4, !tbaa !5
  %799 = icmp eq i64 %783, 1
  br i1 %799, label %827, label %800

800:                                              ; preds = %795, %775
  %801 = phi i32 [ %797, %795 ], [ %776, %775 ]
  %802 = sext i32 %801 to i64
  br label %803

803:                                              ; preds = %811, %800
  %804 = phi i64 [ %812, %811 ], [ %802, %800 ]
  %805 = getelementptr inbounds i32, ptr %1, i64 %804
  %806 = load i32, ptr %805, align 4, !tbaa !5
  %807 = xor i32 %806, -1
  store i32 %807, ptr %805, align 4, !tbaa !5
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds i32, ptr %148, i64 %808
  store i32 %801, ptr %809, align 4, !tbaa !5
  %810 = icmp eq i64 %804, -2147483648
  br i1 %810, label %15, label %811, !prof !11, !nosanitize !10

811:                                              ; preds = %803
  %812 = add nsw i64 %804, -1
  %813 = shl i64 %812, 32
  %814 = ashr exact i64 %813, 30
  %815 = getelementptr inbounds i8, ptr %1, i64 %814
  %816 = load i32, ptr %815, align 4, !tbaa !5
  %817 = icmp slt i32 %816, 0
  br i1 %817, label %803, label %818, !llvm.loop !43

818:                                              ; preds = %811
  %819 = trunc i64 %812 to i32
  %820 = zext nneg i32 %816 to i64
  %821 = getelementptr inbounds nuw i32, ptr %148, i64 %820
  store i32 %801, ptr %821, align 4, !tbaa !5
  %822 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %819, i32 -1)
  %823 = extractvalue { i32, i1 } %822, 1, !nosanitize !10
  br i1 %823, label %15, label %824, !prof !11, !nosanitize !10

824:                                              ; preds = %818
  %825 = extractvalue { i32, i1 } %822, 0, !nosanitize !10
  %826 = icmp sgt i32 %825, -1
  br i1 %826, label %775, label %827, !llvm.loop !44

827:                                              ; preds = %824, %795, %788
  %828 = icmp samesign ult i32 %84, 65536
  br i1 %828, label %848, label %829

829:                                              ; preds = %827
  %830 = icmp samesign ult i32 %84, 16777216
  br i1 %830, label %840, label %831

831:                                              ; preds = %829
  %832 = lshr i32 %84, 24
  %833 = zext nneg i32 %832 to i64
  %834 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %833
  %835 = load i32, ptr %834, align 4, !tbaa !5
  %836 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %835, i32 24), !nosanitize !10
  %837 = extractvalue { i32, i1 } %836, 0, !nosanitize !10
  %838 = extractvalue { i32, i1 } %836, 1, !nosanitize !10
  br i1 %838, label %839, label %861, !prof !11, !nosanitize !10

839:                                              ; preds = %850, %840, %831
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

840:                                              ; preds = %829
  %841 = lshr i32 %84, 16
  %842 = zext nneg i32 %841 to i64
  %843 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %842
  %844 = load i32, ptr %843, align 4, !tbaa !5
  %845 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %844, i32 16), !nosanitize !10
  %846 = extractvalue { i32, i1 } %845, 0, !nosanitize !10
  %847 = extractvalue { i32, i1 } %845, 1, !nosanitize !10
  br i1 %847, label %839, label %861, !prof !11, !nosanitize !10

848:                                              ; preds = %827
  %849 = icmp samesign ult i32 %84, 256
  br i1 %849, label %858, label %850

850:                                              ; preds = %848
  %851 = lshr i32 %84, 8
  %852 = zext nneg i32 %851 to i64
  %853 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %852
  %854 = load i32, ptr %853, align 4, !tbaa !5
  %855 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %854, i32 8), !nosanitize !10
  %856 = extractvalue { i32, i1 } %855, 0, !nosanitize !10
  %857 = extractvalue { i32, i1 } %855, 1, !nosanitize !10
  br i1 %857, label %839, label %861, !prof !11, !nosanitize !10

858:                                              ; preds = %848
  %859 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %145
  %860 = load i32, ptr %859, align 4, !tbaa !5
  br label %861

861:                                              ; preds = %858, %850, %840, %831
  %862 = phi i32 [ %837, %831 ], [ %846, %840 ], [ %856, %850 ], [ %860, %858 ]
  %863 = add i32 %862, 1073741824
  %864 = icmp sgt i32 %863, -1
  br i1 %864, label %866, label %865, !prof !22, !nosanitize !10

865:                                              ; preds = %861
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

866:                                              ; preds = %861
  %867 = sub nsw i32 0, %84
  %868 = load i32, ptr %1, align 4, !tbaa !5
  %869 = icmp sgt i32 %868, %867
  br i1 %869, label %870, label %2901

870:                                              ; preds = %866
  %871 = getelementptr i8, ptr %148, i64 4
  %872 = shl nsw i32 %862, 1
  %873 = sdiv i32 %872, 3
  %874 = getelementptr i8, ptr %1, i64 4
  %875 = ptrtoint ptr %148 to i64
  %876 = ptrtoint ptr %1 to i64
  br label %877

877:                                              ; preds = %2897, %870
  %878 = phi i32 [ %868, %870 ], [ %2899, %2897 ]
  %879 = phi ptr [ %871, %870 ], [ %2898, %2897 ]
  %880 = phi i32 [ %873, %870 ], [ %2894, %2897 ]
  %881 = phi i32 [ %84, %870 ], [ %2893, %2897 ]
  %882 = ptrtoint ptr %879 to i64
  %883 = sub i64 %882, %875
  %884 = ashr i64 %883, 2
  %885 = add nsw i64 %884, 2147483648
  %886 = icmp ult i64 %885, 4294967296
  %887 = shl i64 %883, 30
  %888 = ashr i64 %887, 32
  %889 = sub nsw i64 0, %888
  br i1 %886, label %890, label %2760

890:                                              ; preds = %877, %2751
  %891 = phi i32 [ %2757, %2751 ], [ %878, %877 ]
  %892 = phi i32 [ %2756, %2751 ], [ %881, %877 ]
  %893 = phi i32 [ %2755, %2751 ], [ %880, %877 ]
  %894 = phi ptr [ %2754, %2751 ], [ %1, %877 ]
  %895 = phi i32 [ %2753, %2751 ], [ 0, %877 ]
  %896 = phi i32 [ %2752, %2751 ], [ 0, %877 ]
  %897 = icmp slt i32 %891, 0
  br i1 %897, label %2737, label %898

898:                                              ; preds = %890
  %899 = icmp eq i32 %895, 0
  br i1 %899, label %903, label %900

900:                                              ; preds = %898
  %901 = sext i32 %895 to i64
  %902 = getelementptr inbounds i32, ptr %894, i64 %901
  store i32 %895, ptr %902, align 4, !tbaa !5
  br label %903

903:                                              ; preds = %900, %898
  %904 = zext nneg i32 %891 to i64
  %905 = getelementptr inbounds nuw i32, ptr %148, i64 %904
  %906 = load i32, ptr %905, align 4, !tbaa !5
  %907 = sext i32 %906 to i64
  %908 = getelementptr i32, ptr %874, i64 %907
  %909 = ptrtoint ptr %908 to i64
  %910 = ptrtoint ptr %894 to i64
  %911 = sub i64 %909, %910
  %912 = icmp sgt i64 %911, 4
  br i1 %912, label %916, label %913

913:                                              ; preds = %903
  %914 = icmp eq i64 %911, 4
  %915 = sext i1 %914 to i32
  br label %2745

916:                                              ; preds = %903
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  %917 = lshr exact i64 %911, 2
  %918 = icmp samesign ult i64 %911, 8589934592
  br i1 %918, label %919, label %2790

919:                                              ; preds = %916
  %920 = icmp samesign ult i64 %911, 262144
  br i1 %920, label %937, label %921

921:                                              ; preds = %919
  %922 = icmp samesign ult i64 %911, 67108864
  br i1 %922, label %930, label %923

923:                                              ; preds = %921
  %924 = lshr i64 %911, 26
  %925 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %924
  %926 = load i32, ptr %925, align 4, !tbaa !5
  %927 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %926, i32 24), !nosanitize !10
  %928 = extractvalue { i32, i1 } %927, 0, !nosanitize !10
  %929 = extractvalue { i32, i1 } %927, 1, !nosanitize !10
  br i1 %929, label %2791, label %949, !prof !11, !nosanitize !10

930:                                              ; preds = %921
  %931 = lshr i64 %911, 18
  %932 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %931
  %933 = load i32, ptr %932, align 4, !tbaa !5
  %934 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %933, i32 16), !nosanitize !10
  %935 = extractvalue { i32, i1 } %934, 0, !nosanitize !10
  %936 = extractvalue { i32, i1 } %934, 1, !nosanitize !10
  br i1 %936, label %2791, label %949, !prof !11, !nosanitize !10

937:                                              ; preds = %919
  %938 = icmp samesign ult i64 %911, 1024
  br i1 %938, label %946, label %939

939:                                              ; preds = %937
  %940 = lshr i64 %911, 10
  %941 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %940
  %942 = load i32, ptr %941, align 4, !tbaa !5
  %943 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %942, i32 8), !nosanitize !10
  %944 = extractvalue { i32, i1 } %943, 0, !nosanitize !10
  %945 = extractvalue { i32, i1 } %943, 1, !nosanitize !10
  br i1 %945, label %2791, label %949, !prof !11, !nosanitize !10

946:                                              ; preds = %937
  %947 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %917
  %948 = load i32, ptr %947, align 4, !tbaa !5
  br label %949

949:                                              ; preds = %946, %939, %930, %923
  %950 = phi i32 [ %928, %923 ], [ %935, %930 ], [ %944, %939 ], [ %948, %946 ]
  br label %951

951:                                              ; preds = %949, %2726
  %952 = phi i32 [ %2727, %2726 ], [ 0, %949 ]
  %953 = phi i32 [ %2728, %2726 ], [ %892, %949 ]
  %954 = phi i32 [ %2729, %2726 ], [ %893, %949 ]
  %955 = phi ptr [ %2736, %2726 ], [ undef, %949 ]
  %956 = phi ptr [ %2730, %2726 ], [ %908, %949 ]
  %957 = phi ptr [ %2731, %2726 ], [ %894, %949 ]
  %958 = phi ptr [ %2732, %2726 ], [ %879, %949 ]
  %959 = phi i32 [ %2733, %2726 ], [ %950, %949 ]
  %960 = phi i32 [ %2734, %2726 ], [ 0, %949 ]
  %961 = phi i32 [ %2735, %2726 ], [ -1, %949 ]
  %962 = icmp slt i32 %959, 0
  br i1 %962, label %1912, label %963

963:                                              ; preds = %951
  %964 = ptrtoint ptr %956 to i64
  %965 = ptrtoint ptr %957 to i64
  %966 = sub i64 %964, %965
  %967 = freeze i64 %966
  %968 = ashr i64 %967, 2
  %969 = icmp slt i64 %968, 9
  %970 = trunc nuw nsw i64 %968 to i32
  %971 = and i32 %970, 1
  %972 = icmp eq i32 %971, 0
  %973 = add nsw i32 %970, -1
  %974 = lshr i32 %973, 1
  %975 = zext nneg i32 %974 to i64
  %976 = getelementptr inbounds nuw i32, ptr %957, i64 %975
  %977 = zext nneg i32 %973 to i64
  %978 = getelementptr inbounds nuw i32, ptr %957, i64 %977
  %979 = getelementptr inbounds i8, ptr %956, i64 -4
  %980 = icmp ult ptr %957, %979
  br i1 %969, label %1862, label %981

981:                                              ; preds = %963
  %982 = icmp samesign ult i64 %968, 2147483648
  %983 = icmp eq i32 %959, 0
  br i1 %982, label %984, label %2792

984:                                              ; preds = %981
  br i1 %983, label %1683, label %985

985:                                              ; preds = %984
  store ptr %955, ptr %7, align 8
  %986 = add nsw i32 %959, -1
  %987 = lshr i64 %968, 1
  %988 = getelementptr inbounds nuw i32, ptr %957, i64 %987
  %989 = icmp samesign ult i64 %968, 513
  br i1 %989, label %1118, label %990

990:                                              ; preds = %985
  %991 = lshr i32 %970, 3
  %992 = zext nneg i32 %991 to i64
  %993 = getelementptr inbounds nuw i32, ptr %957, i64 %992
  %994 = shl nuw nsw i32 %991, 1
  %995 = zext nneg i32 %994 to i64
  %996 = getelementptr inbounds nuw i32, ptr %957, i64 %995
  %997 = load i32, ptr %957, align 4, !tbaa !5
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds i32, ptr %958, i64 %998
  %1000 = load i32, ptr %999, align 4, !tbaa !5
  %1001 = load i32, ptr %993, align 4, !tbaa !5
  %1002 = sext i32 %1001 to i64
  %1003 = getelementptr inbounds i32, ptr %958, i64 %1002
  %1004 = load i32, ptr %1003, align 4, !tbaa !5
  %1005 = icmp sgt i32 %1000, %1004
  %1006 = select i1 %1005, i32 %997, i32 %1001
  %1007 = select i1 %1005, ptr %957, ptr %993
  %1008 = sext i32 %1006 to i64
  %1009 = getelementptr inbounds i32, ptr %958, i64 %1008
  %1010 = load i32, ptr %1009, align 4, !tbaa !5
  %1011 = load i32, ptr %996, align 4, !tbaa !5
  %1012 = sext i32 %1011 to i64
  %1013 = getelementptr inbounds i32, ptr %958, i64 %1012
  %1014 = load i32, ptr %1013, align 4, !tbaa !5
  %1015 = icmp sgt i32 %1010, %1014
  br i1 %1015, label %1016, label %1024

1016:                                             ; preds = %990
  %1017 = select i1 %1005, i32 %1001, i32 %997
  %1018 = select i1 %1005, ptr %993, ptr %957
  %1019 = sext i32 %1017 to i64
  %1020 = getelementptr inbounds i32, ptr %958, i64 %1019
  %1021 = load i32, ptr %1020, align 4, !tbaa !5
  %1022 = icmp sgt i32 %1021, %1014
  %1023 = select i1 %1022, ptr %1018, ptr %996
  br label %1024

1024:                                             ; preds = %1016, %990
  %1025 = phi ptr [ %1023, %1016 ], [ %1007, %990 ]
  %1026 = sub nsw i64 0, %992
  %1027 = getelementptr inbounds i32, ptr %988, i64 %1026
  %1028 = getelementptr inbounds nuw i32, ptr %988, i64 %992
  %1029 = load i32, ptr %1027, align 4, !tbaa !5
  %1030 = sext i32 %1029 to i64
  %1031 = getelementptr inbounds i32, ptr %958, i64 %1030
  %1032 = load i32, ptr %1031, align 4, !tbaa !5
  %1033 = load i32, ptr %988, align 4, !tbaa !5
  %1034 = sext i32 %1033 to i64
  %1035 = getelementptr inbounds i32, ptr %958, i64 %1034
  %1036 = load i32, ptr %1035, align 4, !tbaa !5
  %1037 = icmp sgt i32 %1032, %1036
  %1038 = select i1 %1037, i32 %1029, i32 %1033
  %1039 = select i1 %1037, ptr %1027, ptr %988
  %1040 = sext i32 %1038 to i64
  %1041 = getelementptr inbounds i32, ptr %958, i64 %1040
  %1042 = load i32, ptr %1041, align 4, !tbaa !5
  %1043 = load i32, ptr %1028, align 4, !tbaa !5
  %1044 = sext i32 %1043 to i64
  %1045 = getelementptr inbounds i32, ptr %958, i64 %1044
  %1046 = load i32, ptr %1045, align 4, !tbaa !5
  %1047 = icmp sgt i32 %1042, %1046
  br i1 %1047, label %1048, label %1056

1048:                                             ; preds = %1024
  %1049 = select i1 %1037, i32 %1033, i32 %1029
  %1050 = select i1 %1037, ptr %988, ptr %1027
  %1051 = sext i32 %1049 to i64
  %1052 = getelementptr inbounds i32, ptr %958, i64 %1051
  %1053 = load i32, ptr %1052, align 4, !tbaa !5
  %1054 = icmp sgt i32 %1053, %1046
  %1055 = select i1 %1054, ptr %1050, ptr %1028
  br label %1056

1056:                                             ; preds = %1048, %1024
  %1057 = phi ptr [ %1055, %1048 ], [ %1039, %1024 ]
  %1058 = sub nsw i64 0, %995
  %1059 = getelementptr inbounds i32, ptr %979, i64 %1058
  %1060 = getelementptr inbounds i32, ptr %979, i64 %1026
  %1061 = load i32, ptr %1059, align 4, !tbaa !5
  %1062 = sext i32 %1061 to i64
  %1063 = getelementptr inbounds i32, ptr %958, i64 %1062
  %1064 = load i32, ptr %1063, align 4, !tbaa !5
  %1065 = load i32, ptr %1060, align 4, !tbaa !5
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds i32, ptr %958, i64 %1066
  %1068 = load i32, ptr %1067, align 4, !tbaa !5
  %1069 = icmp sgt i32 %1064, %1068
  %1070 = select i1 %1069, i32 %1061, i32 %1065
  %1071 = select i1 %1069, ptr %1059, ptr %1060
  %1072 = sext i32 %1070 to i64
  %1073 = getelementptr inbounds i32, ptr %958, i64 %1072
  %1074 = load i32, ptr %1073, align 4, !tbaa !5
  %1075 = load i32, ptr %979, align 4, !tbaa !5
  %1076 = sext i32 %1075 to i64
  %1077 = getelementptr inbounds i32, ptr %958, i64 %1076
  %1078 = load i32, ptr %1077, align 4, !tbaa !5
  %1079 = icmp sgt i32 %1074, %1078
  br i1 %1079, label %1080, label %1092

1080:                                             ; preds = %1056
  %1081 = select i1 %1069, i32 %1065, i32 %1061
  %1082 = select i1 %1069, ptr %1060, ptr %1059
  %1083 = sext i32 %1081 to i64
  %1084 = getelementptr inbounds i32, ptr %958, i64 %1083
  %1085 = load i32, ptr %1084, align 4, !tbaa !5
  %1086 = icmp sgt i32 %1085, %1078
  %1087 = select i1 %1086, ptr %1082, ptr %979
  %1088 = load i32, ptr %1087, align 4, !tbaa !5
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds i32, ptr %958, i64 %1089
  %1091 = load i32, ptr %1090, align 4, !tbaa !5
  br label %1092

1092:                                             ; preds = %1080, %1056
  %1093 = phi i32 [ %1074, %1056 ], [ %1091, %1080 ]
  %1094 = phi ptr [ %1071, %1056 ], [ %1087, %1080 ]
  %1095 = load i32, ptr %1025, align 4, !tbaa !5
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds i32, ptr %958, i64 %1096
  %1098 = load i32, ptr %1097, align 4, !tbaa !5
  %1099 = load i32, ptr %1057, align 4, !tbaa !5
  %1100 = sext i32 %1099 to i64
  %1101 = getelementptr inbounds i32, ptr %958, i64 %1100
  %1102 = load i32, ptr %1101, align 4, !tbaa !5
  %1103 = icmp sgt i32 %1098, %1102
  %1104 = select i1 %1103, i32 %1095, i32 %1099
  %1105 = select i1 %1103, ptr %1025, ptr %1057
  %1106 = sext i32 %1104 to i64
  %1107 = getelementptr inbounds i32, ptr %958, i64 %1106
  %1108 = load i32, ptr %1107, align 4, !tbaa !5
  %1109 = icmp sgt i32 %1108, %1093
  br i1 %1109, label %1110, label %1219

1110:                                             ; preds = %1092
  %1111 = select i1 %1103, i32 %1099, i32 %1095
  %1112 = select i1 %1103, ptr %1057, ptr %1025
  %1113 = sext i32 %1111 to i64
  %1114 = getelementptr inbounds i32, ptr %958, i64 %1113
  %1115 = load i32, ptr %1114, align 4, !tbaa !5
  %1116 = icmp sgt i32 %1115, %1093
  %1117 = select i1 %1116, ptr %1112, ptr %1094
  br label %1219

1118:                                             ; preds = %985
  %1119 = icmp samesign ult i64 %968, 33
  br i1 %1119, label %1191, label %1120

1120:                                             ; preds = %1118
  %1121 = lshr i64 %968, 2
  %1122 = getelementptr inbounds nuw i32, ptr %957, i64 %1121
  %1123 = sub nsw i64 0, %1121
  %1124 = getelementptr inbounds i32, ptr %979, i64 %1123
  %1125 = load i32, ptr %1122, align 4, !tbaa !5
  %1126 = sext i32 %1125 to i64
  %1127 = getelementptr inbounds i32, ptr %958, i64 %1126
  %1128 = load i32, ptr %1127, align 4, !tbaa !5
  %1129 = load i32, ptr %988, align 4, !tbaa !5
  %1130 = sext i32 %1129 to i64
  %1131 = getelementptr inbounds i32, ptr %958, i64 %1130
  %1132 = load i32, ptr %1131, align 4, !tbaa !5
  %1133 = icmp sgt i32 %1128, %1132
  %1134 = select i1 %1133, i32 %1129, i32 %1125
  %1135 = select i1 %1133, ptr %988, ptr %1122
  %1136 = select i1 %1133, ptr %1122, ptr %988
  %1137 = load i32, ptr %1124, align 4, !tbaa !5
  %1138 = sext i32 %1137 to i64
  %1139 = getelementptr inbounds i32, ptr %958, i64 %1138
  %1140 = load i32, ptr %1139, align 4, !tbaa !5
  %1141 = load i32, ptr %979, align 4, !tbaa !5
  %1142 = sext i32 %1141 to i64
  %1143 = getelementptr inbounds i32, ptr %958, i64 %1142
  %1144 = load i32, ptr %1143, align 4, !tbaa !5
  %1145 = icmp sgt i32 %1140, %1144
  %1146 = select i1 %1145, i32 %1141, i32 %1137
  %1147 = select i1 %1145, ptr %979, ptr %1124
  %1148 = select i1 %1145, ptr %1124, ptr %979
  %1149 = sext i32 %1134 to i64
  %1150 = getelementptr inbounds i32, ptr %958, i64 %1149
  %1151 = load i32, ptr %1150, align 4, !tbaa !5
  %1152 = sext i32 %1146 to i64
  %1153 = getelementptr inbounds i32, ptr %958, i64 %1152
  %1154 = load i32, ptr %1153, align 4, !tbaa !5
  %1155 = icmp sgt i32 %1151, %1154
  %1156 = select i1 %1155, ptr %1148, ptr %1136
  %1157 = select i1 %1155, ptr %1135, ptr %1147
  %1158 = select i1 %1155, ptr %1136, ptr %1148
  %1159 = load i32, ptr %957, align 4, !tbaa !5
  %1160 = sext i32 %1159 to i64
  %1161 = getelementptr inbounds i32, ptr %958, i64 %1160
  %1162 = load i32, ptr %1161, align 4, !tbaa !5
  %1163 = load i32, ptr %1156, align 4, !tbaa !5
  %1164 = sext i32 %1163 to i64
  %1165 = getelementptr inbounds i32, ptr %958, i64 %1164
  %1166 = load i32, ptr %1165, align 4, !tbaa !5
  %1167 = icmp sgt i32 %1162, %1166
  %1168 = select i1 %1167, i32 %1163, i32 %1159
  %1169 = select i1 %1167, ptr %1156, ptr %957
  %1170 = select i1 %1167, ptr %957, ptr %1156
  %1171 = sext i32 %1168 to i64
  %1172 = getelementptr inbounds i32, ptr %958, i64 %1171
  %1173 = load i32, ptr %1172, align 4, !tbaa !5
  %1174 = load i32, ptr %1157, align 4, !tbaa !5
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds i32, ptr %958, i64 %1175
  %1177 = load i32, ptr %1176, align 4, !tbaa !5
  %1178 = icmp sgt i32 %1173, %1177
  %1179 = select i1 %1178, ptr %1158, ptr %1170
  %1180 = select i1 %1178, ptr %1169, ptr %1157
  %1181 = load i32, ptr %1179, align 4, !tbaa !5
  %1182 = sext i32 %1181 to i64
  %1183 = getelementptr inbounds i32, ptr %958, i64 %1182
  %1184 = load i32, ptr %1183, align 4, !tbaa !5
  %1185 = load i32, ptr %1180, align 4, !tbaa !5
  %1186 = sext i32 %1185 to i64
  %1187 = getelementptr inbounds i32, ptr %958, i64 %1186
  %1188 = load i32, ptr %1187, align 4, !tbaa !5
  %1189 = icmp sgt i32 %1184, %1188
  %1190 = select i1 %1189, ptr %1180, ptr %1179
  br label %1219

1191:                                             ; preds = %1118
  %1192 = load i32, ptr %957, align 4, !tbaa !5
  %1193 = sext i32 %1192 to i64
  %1194 = getelementptr inbounds i32, ptr %958, i64 %1193
  %1195 = load i32, ptr %1194, align 4, !tbaa !5
  %1196 = load i32, ptr %988, align 4, !tbaa !5
  %1197 = sext i32 %1196 to i64
  %1198 = getelementptr inbounds i32, ptr %958, i64 %1197
  %1199 = load i32, ptr %1198, align 4, !tbaa !5
  %1200 = icmp sgt i32 %1195, %1199
  %1201 = select i1 %1200, i32 %1192, i32 %1196
  %1202 = select i1 %1200, ptr %957, ptr %988
  %1203 = sext i32 %1201 to i64
  %1204 = getelementptr inbounds i32, ptr %958, i64 %1203
  %1205 = load i32, ptr %1204, align 4, !tbaa !5
  %1206 = load i32, ptr %979, align 4, !tbaa !5
  %1207 = sext i32 %1206 to i64
  %1208 = getelementptr inbounds i32, ptr %958, i64 %1207
  %1209 = load i32, ptr %1208, align 4, !tbaa !5
  %1210 = icmp sgt i32 %1205, %1209
  br i1 %1210, label %1211, label %1219

1211:                                             ; preds = %1191
  %1212 = select i1 %1200, i32 %1196, i32 %1192
  %1213 = select i1 %1200, ptr %988, ptr %957
  %1214 = sext i32 %1212 to i64
  %1215 = getelementptr inbounds i32, ptr %958, i64 %1214
  %1216 = load i32, ptr %1215, align 4, !tbaa !5
  %1217 = icmp sgt i32 %1216, %1209
  %1218 = select i1 %1217, ptr %1213, ptr %979
  br label %1219

1219:                                             ; preds = %1211, %1191, %1120, %1110, %1092
  %1220 = phi i32 [ %1159, %1120 ], [ %1192, %1211 ], [ %1192, %1191 ], [ %997, %1110 ], [ %997, %1092 ]
  %1221 = phi ptr [ %1190, %1120 ], [ %1218, %1211 ], [ %1202, %1191 ], [ %1117, %1110 ], [ %1105, %1092 ]
  store ptr %1221, ptr %7, align 8, !tbaa !45
  %1222 = load i32, ptr %1221, align 4, !tbaa !5
  store i32 %1222, ptr %957, align 4, !tbaa !5
  store i32 %1220, ptr %1221, align 4, !tbaa !5
  %1223 = load i32, ptr %957, align 4, !tbaa !5
  %1224 = sext i32 %1223 to i64
  %1225 = getelementptr inbounds i32, ptr %958, i64 %1224
  %1226 = load i32, ptr %1225, align 4, !tbaa !5
  %1227 = getelementptr inbounds nuw i8, ptr %957, i64 4
  call fastcc void @tr_partition(ptr noundef nonnull %958, ptr noundef nonnull %957, ptr noundef nonnull %1227, ptr noundef nonnull %956, ptr noundef %7, ptr noundef %8, i32 noundef %1226)
  %1228 = load ptr, ptr %8, align 8, !tbaa !45
  %1229 = load ptr, ptr %7, align 8, !tbaa !45
  %1230 = ptrtoint ptr %1228 to i64
  %1231 = ptrtoint ptr %1229 to i64
  %1232 = sub i64 %1230, %1231
  %1233 = ashr exact i64 %1232, 2
  %1234 = icmp eq i64 %968, %1233
  br i1 %1234, label %1606, label %1235

1235:                                             ; preds = %1219
  %1236 = load i32, ptr %1229, align 4, !tbaa !5
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr inbounds i32, ptr %148, i64 %1237
  %1239 = load i32, ptr %1238, align 4, !tbaa !5
  %1240 = icmp eq i32 %1239, %1226
  br i1 %1240, label %1275, label %1241

1241:                                             ; preds = %1235
  %1242 = add nsw i64 %1233, 2147483648
  %1243 = icmp ult i64 %1242, 4294967296
  br i1 %1243, label %1244, label %2843

1244:                                             ; preds = %1241
  %1245 = icmp ult i64 %1233, 65536
  br i1 %1245, label %1263, label %1246

1246:                                             ; preds = %1244
  %1247 = icmp ult i64 %1233, 16777216
  br i1 %1247, label %1256, label %1248

1248:                                             ; preds = %1246
  %1249 = lshr i64 %1233, 24
  %1250 = and i64 %1249, 255
  %1251 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1250
  %1252 = load i32, ptr %1251, align 4, !tbaa !5
  %1253 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1252, i32 24), !nosanitize !10
  %1254 = extractvalue { i32, i1 } %1253, 0, !nosanitize !10
  %1255 = extractvalue { i32, i1 } %1253, 1, !nosanitize !10
  br i1 %1255, label %2844, label %1275, !prof !11, !nosanitize !10

1256:                                             ; preds = %1246
  %1257 = lshr i64 %1233, 16
  %1258 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1257
  %1259 = load i32, ptr %1258, align 4, !tbaa !5
  %1260 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1259, i32 16), !nosanitize !10
  %1261 = extractvalue { i32, i1 } %1260, 0, !nosanitize !10
  %1262 = extractvalue { i32, i1 } %1260, 1, !nosanitize !10
  br i1 %1262, label %2844, label %1275, !prof !11, !nosanitize !10

1263:                                             ; preds = %1244
  %1264 = icmp samesign ult i64 %1233, 256
  br i1 %1264, label %1272, label %1265

1265:                                             ; preds = %1263
  %1266 = lshr i64 %1233, 8
  %1267 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1266
  %1268 = load i32, ptr %1267, align 4, !tbaa !5
  %1269 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1268, i32 8), !nosanitize !10
  %1270 = extractvalue { i32, i1 } %1269, 0, !nosanitize !10
  %1271 = extractvalue { i32, i1 } %1269, 1, !nosanitize !10
  br i1 %1271, label %2844, label %1275, !prof !11, !nosanitize !10

1272:                                             ; preds = %1263
  %1273 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1233
  %1274 = load i32, ptr %1273, align 4, !tbaa !5
  br label %1275

1275:                                             ; preds = %1272, %1265, %1256, %1248, %1235
  %1276 = phi i32 [ -1, %1235 ], [ %1254, %1248 ], [ %1261, %1256 ], [ %1270, %1265 ], [ %1274, %1272 ]
  %1277 = sub i64 %1231, %876
  %1278 = ashr exact i64 %1277, 2
  %1279 = add nsw i64 %1278, 2147483647
  %1280 = icmp ult i64 %1279, 4294967296
  br i1 %1280, label %1281, label %2845

1281:                                             ; preds = %1275
  %1282 = trunc i64 %1278 to i32
  %1283 = add i32 %1282, -1
  %1284 = icmp ult ptr %957, %1229
  br i1 %1284, label %1285, label %1292

1285:                                             ; preds = %1281, %1285
  %1286 = phi ptr [ %1290, %1285 ], [ %957, %1281 ]
  %1287 = load i32, ptr %1286, align 4, !tbaa !5
  %1288 = sext i32 %1287 to i64
  %1289 = getelementptr inbounds i32, ptr %148, i64 %1288
  store i32 %1283, ptr %1289, align 4, !tbaa !5
  %1290 = getelementptr inbounds nuw i8, ptr %1286, i64 4
  %1291 = icmp ult ptr %1290, %1229
  br i1 %1291, label %1285, label %1292, !llvm.loop !48

1292:                                             ; preds = %1285, %1281
  %1293 = icmp ult ptr %1228, %956
  br i1 %1293, label %1294, label %1310

1294:                                             ; preds = %1292
  %1295 = sub i64 %1230, %876
  %1296 = ashr exact i64 %1295, 2
  %1297 = add nsw i64 %1296, 2147483647
  %1298 = icmp ult i64 %1297, 4294967296
  br i1 %1298, label %1299, label %2846

1299:                                             ; preds = %1294
  %1300 = trunc i64 %1296 to i32
  %1301 = add i32 %1300, -1
  %1302 = icmp ult ptr %1229, %1228
  br i1 %1302, label %1303, label %1310

1303:                                             ; preds = %1299, %1303
  %1304 = phi ptr [ %1308, %1303 ], [ %1229, %1299 ]
  %1305 = load i32, ptr %1304, align 4, !tbaa !5
  %1306 = sext i32 %1305 to i64
  %1307 = getelementptr inbounds i32, ptr %148, i64 %1306
  store i32 %1301, ptr %1307, align 4, !tbaa !5
  %1308 = getelementptr inbounds nuw i8, ptr %1304, i64 4
  %1309 = icmp ult ptr %1308, %1228
  br i1 %1309, label %1303, label %1310, !llvm.loop !49

1310:                                             ; preds = %1303, %1299, %1292
  %1311 = icmp sgt i64 %1233, 1
  br i1 %1311, label %1312, label %1530

1312:                                             ; preds = %1310
  %1313 = icmp samesign ult i64 %1233, 2147483648
  br i1 %1313, label %1314, label %2847

1314:                                             ; preds = %1312
  %1315 = trunc nuw nsw i64 %1233 to i32
  %1316 = icmp slt i32 %953, %1315
  br i1 %1316, label %1319, label %1317

1317:                                             ; preds = %1314
  %1318 = sub nsw i32 %953, %1315
  br label %1331

1319:                                             ; preds = %1314
  %1320 = icmp eq i32 %954, 0
  br i1 %1320, label %1525, label %1321

1321:                                             ; preds = %1319
  %1322 = sub nsw i32 %84, %1315
  %1323 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %953, i32 %1322), !nosanitize !10
  %1324 = extractvalue { i32, i1 } %1323, 1, !nosanitize !10
  br i1 %1324, label %2849, label %1325, !prof !11, !nosanitize !10

1325:                                             ; preds = %1321
  %1326 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %954, i32 -1)
  %1327 = extractvalue { i32, i1 } %1326, 1, !nosanitize !10
  br i1 %1327, label %2848, label %1328, !prof !11, !nosanitize !10

1328:                                             ; preds = %1325
  %1329 = extractvalue { i32, i1 } %1323, 0, !nosanitize !10
  %1330 = extractvalue { i32, i1 } %1326, 0, !nosanitize !10
  br label %1331

1331:                                             ; preds = %1328, %1317
  %1332 = phi i32 [ %1329, %1328 ], [ %1318, %1317 ]
  %1333 = phi i32 [ %1330, %1328 ], [ %954, %1317 ]
  %1334 = sub i64 %1231, %965
  %1335 = ashr exact i64 %1334, 2
  %1336 = sub i64 %964, %1230
  %1337 = ashr exact i64 %1336, 2
  %1338 = icmp sgt i64 %1335, %1337
  br i1 %1338, label %1432, label %1339

1339:                                             ; preds = %1331
  %1340 = icmp sgt i64 %1337, %1233
  br i1 %1340, label %1378, label %1341

1341:                                             ; preds = %1339
  %1342 = icmp sgt i64 %1335, 1
  br i1 %1342, label %1358, label %1343

1343:                                             ; preds = %1341
  %1344 = icmp sgt i64 %1337, 1
  br i1 %1344, label %1347, label %1345

1345:                                             ; preds = %1343
  %1346 = getelementptr inbounds i32, ptr %958, i64 %888
  br label %2726

1347:                                             ; preds = %1343
  %1348 = icmp slt i32 %960, 64
  br i1 %1348, label %1349, label %2852

1349:                                             ; preds = %1347
  %1350 = getelementptr inbounds i32, ptr %958, i64 %888
  %1351 = sext i32 %960 to i64
  %1352 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1351
  store ptr %1350, ptr %1352, align 16, !tbaa !50
  %1353 = getelementptr inbounds nuw i8, ptr %1352, i64 8
  store ptr %1229, ptr %1353, align 8, !tbaa !52
  %1354 = getelementptr inbounds nuw i8, ptr %1352, i64 16
  store ptr %1228, ptr %1354, align 16, !tbaa !53
  %1355 = getelementptr inbounds nuw i8, ptr %1352, i64 24
  store i32 %1276, ptr %1355, align 8, !tbaa !54
  %1356 = add nsw i32 %960, 1
  %1357 = getelementptr inbounds nuw i8, ptr %1352, i64 28
  store i32 %961, ptr %1357, align 4, !tbaa !55
  br label %2726

1358:                                             ; preds = %1341
  %1359 = icmp slt i32 %960, 64
  br i1 %1359, label %1360, label %2850

1360:                                             ; preds = %1358
  %1361 = getelementptr inbounds i32, ptr %958, i64 %888
  %1362 = sext i32 %960 to i64
  %1363 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1362
  store ptr %1361, ptr %1363, align 16, !tbaa !50
  %1364 = getelementptr inbounds nuw i8, ptr %1363, i64 8
  store ptr %1229, ptr %1364, align 8, !tbaa !52
  %1365 = getelementptr inbounds nuw i8, ptr %1363, i64 16
  store ptr %1228, ptr %1365, align 16, !tbaa !53
  %1366 = getelementptr inbounds nuw i8, ptr %1363, i64 24
  store i32 %1276, ptr %1366, align 8, !tbaa !54
  %1367 = getelementptr inbounds nuw i8, ptr %1363, i64 28
  store i32 %961, ptr %1367, align 4, !tbaa !55
  %1368 = icmp eq i32 %960, 63
  br i1 %1368, label %2851, label %1369

1369:                                             ; preds = %1360
  %1370 = add nsw i32 %960, 1
  %1371 = sext i32 %1370 to i64
  %1372 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1371
  store ptr %958, ptr %1372, align 16, !tbaa !50
  %1373 = getelementptr inbounds nuw i8, ptr %1372, i64 8
  store ptr %1228, ptr %1373, align 8, !tbaa !52
  %1374 = getelementptr inbounds nuw i8, ptr %1372, i64 16
  store ptr %956, ptr %1374, align 16, !tbaa !53
  %1375 = getelementptr inbounds nuw i8, ptr %1372, i64 24
  store i32 %986, ptr %1375, align 8, !tbaa !54
  %1376 = add nsw i32 %960, 2
  %1377 = getelementptr inbounds nuw i8, ptr %1372, i64 28
  store i32 %961, ptr %1377, align 4, !tbaa !55
  br label %2726

1378:                                             ; preds = %1339
  %1379 = icmp sgt i64 %1335, %1233
  br i1 %1379, label %1412, label %1380

1380:                                             ; preds = %1378
  %1381 = icmp sgt i64 %1335, 1
  %1382 = icmp slt i32 %960, 64
  br i1 %1381, label %1393, label %1383

1383:                                             ; preds = %1380
  br i1 %1382, label %1384, label %2855

1384:                                             ; preds = %1383
  %1385 = sext i32 %960 to i64
  %1386 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1385
  store ptr %958, ptr %1386, align 16, !tbaa !50
  %1387 = getelementptr inbounds nuw i8, ptr %1386, i64 8
  store ptr %1228, ptr %1387, align 8, !tbaa !52
  %1388 = getelementptr inbounds nuw i8, ptr %1386, i64 16
  store ptr %956, ptr %1388, align 16, !tbaa !53
  %1389 = getelementptr inbounds nuw i8, ptr %1386, i64 24
  store i32 %986, ptr %1389, align 8, !tbaa !54
  %1390 = add nsw i32 %960, 1
  %1391 = getelementptr inbounds nuw i8, ptr %1386, i64 28
  store i32 %961, ptr %1391, align 4, !tbaa !55
  %1392 = getelementptr inbounds i32, ptr %958, i64 %888
  br label %2726

1393:                                             ; preds = %1380
  br i1 %1382, label %1394, label %2853

1394:                                             ; preds = %1393
  %1395 = sext i32 %960 to i64
  %1396 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1395
  store ptr %958, ptr %1396, align 16, !tbaa !50
  %1397 = getelementptr inbounds nuw i8, ptr %1396, i64 8
  store ptr %1228, ptr %1397, align 8, !tbaa !52
  %1398 = getelementptr inbounds nuw i8, ptr %1396, i64 16
  store ptr %956, ptr %1398, align 16, !tbaa !53
  %1399 = getelementptr inbounds nuw i8, ptr %1396, i64 24
  store i32 %986, ptr %1399, align 8, !tbaa !54
  %1400 = getelementptr inbounds nuw i8, ptr %1396, i64 28
  store i32 %961, ptr %1400, align 4, !tbaa !55
  %1401 = icmp eq i32 %960, 63
  br i1 %1401, label %2854, label %1402

1402:                                             ; preds = %1394
  %1403 = add nsw i32 %960, 1
  %1404 = getelementptr inbounds i32, ptr %958, i64 %888
  %1405 = sext i32 %1403 to i64
  %1406 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1405
  store ptr %1404, ptr %1406, align 16, !tbaa !50
  %1407 = getelementptr inbounds nuw i8, ptr %1406, i64 8
  store ptr %1229, ptr %1407, align 8, !tbaa !52
  %1408 = getelementptr inbounds nuw i8, ptr %1406, i64 16
  store ptr %1228, ptr %1408, align 16, !tbaa !53
  %1409 = getelementptr inbounds nuw i8, ptr %1406, i64 24
  store i32 %1276, ptr %1409, align 8, !tbaa !54
  %1410 = add nsw i32 %960, 2
  %1411 = getelementptr inbounds nuw i8, ptr %1406, i64 28
  store i32 %961, ptr %1411, align 4, !tbaa !55
  br label %2726

1412:                                             ; preds = %1378
  %1413 = icmp slt i32 %960, 64
  br i1 %1413, label %1414, label %2856

1414:                                             ; preds = %1412
  %1415 = sext i32 %960 to i64
  %1416 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1415
  store ptr %958, ptr %1416, align 16, !tbaa !50
  %1417 = getelementptr inbounds nuw i8, ptr %1416, i64 8
  store ptr %1228, ptr %1417, align 8, !tbaa !52
  %1418 = getelementptr inbounds nuw i8, ptr %1416, i64 16
  store ptr %956, ptr %1418, align 16, !tbaa !53
  %1419 = getelementptr inbounds nuw i8, ptr %1416, i64 24
  store i32 %986, ptr %1419, align 8, !tbaa !54
  %1420 = getelementptr inbounds nuw i8, ptr %1416, i64 28
  store i32 %961, ptr %1420, align 4, !tbaa !55
  %1421 = icmp eq i32 %960, 63
  br i1 %1421, label %2857, label %1422

1422:                                             ; preds = %1414
  %1423 = add nsw i32 %960, 1
  %1424 = sext i32 %1423 to i64
  %1425 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1424
  store ptr %958, ptr %1425, align 16, !tbaa !50
  %1426 = getelementptr inbounds nuw i8, ptr %1425, i64 8
  store ptr %957, ptr %1426, align 8, !tbaa !52
  %1427 = getelementptr inbounds nuw i8, ptr %1425, i64 16
  store ptr %1229, ptr %1427, align 16, !tbaa !53
  %1428 = getelementptr inbounds nuw i8, ptr %1425, i64 24
  store i32 %986, ptr %1428, align 8, !tbaa !54
  %1429 = add nsw i32 %960, 2
  %1430 = getelementptr inbounds nuw i8, ptr %1425, i64 28
  store i32 %961, ptr %1430, align 4, !tbaa !55
  %1431 = getelementptr inbounds i32, ptr %958, i64 %888
  br label %2726

1432:                                             ; preds = %1331
  %1433 = icmp sgt i64 %1335, %1233
  br i1 %1433, label %1471, label %1434

1434:                                             ; preds = %1432
  %1435 = icmp sgt i64 %1337, 1
  br i1 %1435, label %1451, label %1436

1436:                                             ; preds = %1434
  %1437 = icmp sgt i64 %1335, 1
  br i1 %1437, label %1440, label %1438

1438:                                             ; preds = %1436
  %1439 = getelementptr inbounds i32, ptr %958, i64 %888
  br label %2726

1440:                                             ; preds = %1436
  %1441 = icmp slt i32 %960, 64
  br i1 %1441, label %1442, label %2860

1442:                                             ; preds = %1440
  %1443 = getelementptr inbounds i32, ptr %958, i64 %888
  %1444 = sext i32 %960 to i64
  %1445 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1444
  store ptr %1443, ptr %1445, align 16, !tbaa !50
  %1446 = getelementptr inbounds nuw i8, ptr %1445, i64 8
  store ptr %1229, ptr %1446, align 8, !tbaa !52
  %1447 = getelementptr inbounds nuw i8, ptr %1445, i64 16
  store ptr %1228, ptr %1447, align 16, !tbaa !53
  %1448 = getelementptr inbounds nuw i8, ptr %1445, i64 24
  store i32 %1276, ptr %1448, align 8, !tbaa !54
  %1449 = add nsw i32 %960, 1
  %1450 = getelementptr inbounds nuw i8, ptr %1445, i64 28
  store i32 %961, ptr %1450, align 4, !tbaa !55
  br label %2726

1451:                                             ; preds = %1434
  %1452 = icmp slt i32 %960, 64
  br i1 %1452, label %1453, label %2858

1453:                                             ; preds = %1451
  %1454 = getelementptr inbounds i32, ptr %958, i64 %888
  %1455 = sext i32 %960 to i64
  %1456 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1455
  store ptr %1454, ptr %1456, align 16, !tbaa !50
  %1457 = getelementptr inbounds nuw i8, ptr %1456, i64 8
  store ptr %1229, ptr %1457, align 8, !tbaa !52
  %1458 = getelementptr inbounds nuw i8, ptr %1456, i64 16
  store ptr %1228, ptr %1458, align 16, !tbaa !53
  %1459 = getelementptr inbounds nuw i8, ptr %1456, i64 24
  store i32 %1276, ptr %1459, align 8, !tbaa !54
  %1460 = getelementptr inbounds nuw i8, ptr %1456, i64 28
  store i32 %961, ptr %1460, align 4, !tbaa !55
  %1461 = icmp eq i32 %960, 63
  br i1 %1461, label %2859, label %1462

1462:                                             ; preds = %1453
  %1463 = add nsw i32 %960, 1
  %1464 = sext i32 %1463 to i64
  %1465 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1464
  store ptr %958, ptr %1465, align 16, !tbaa !50
  %1466 = getelementptr inbounds nuw i8, ptr %1465, i64 8
  store ptr %957, ptr %1466, align 8, !tbaa !52
  %1467 = getelementptr inbounds nuw i8, ptr %1465, i64 16
  store ptr %1229, ptr %1467, align 16, !tbaa !53
  %1468 = getelementptr inbounds nuw i8, ptr %1465, i64 24
  store i32 %986, ptr %1468, align 8, !tbaa !54
  %1469 = add nsw i32 %960, 2
  %1470 = getelementptr inbounds nuw i8, ptr %1465, i64 28
  store i32 %961, ptr %1470, align 4, !tbaa !55
  br label %2726

1471:                                             ; preds = %1432
  %1472 = icmp sgt i64 %1337, %1233
  br i1 %1472, label %1505, label %1473

1473:                                             ; preds = %1471
  %1474 = icmp sgt i64 %1337, 1
  %1475 = icmp slt i32 %960, 64
  br i1 %1474, label %1486, label %1476

1476:                                             ; preds = %1473
  br i1 %1475, label %1477, label %2863

1477:                                             ; preds = %1476
  %1478 = sext i32 %960 to i64
  %1479 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1478
  store ptr %958, ptr %1479, align 16, !tbaa !50
  %1480 = getelementptr inbounds nuw i8, ptr %1479, i64 8
  store ptr %957, ptr %1480, align 8, !tbaa !52
  %1481 = getelementptr inbounds nuw i8, ptr %1479, i64 16
  store ptr %1229, ptr %1481, align 16, !tbaa !53
  %1482 = getelementptr inbounds nuw i8, ptr %1479, i64 24
  store i32 %986, ptr %1482, align 8, !tbaa !54
  %1483 = add nsw i32 %960, 1
  %1484 = getelementptr inbounds nuw i8, ptr %1479, i64 28
  store i32 %961, ptr %1484, align 4, !tbaa !55
  %1485 = getelementptr inbounds i32, ptr %958, i64 %888
  br label %2726

1486:                                             ; preds = %1473
  br i1 %1475, label %1487, label %2861

1487:                                             ; preds = %1486
  %1488 = sext i32 %960 to i64
  %1489 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1488
  store ptr %958, ptr %1489, align 16, !tbaa !50
  %1490 = getelementptr inbounds nuw i8, ptr %1489, i64 8
  store ptr %957, ptr %1490, align 8, !tbaa !52
  %1491 = getelementptr inbounds nuw i8, ptr %1489, i64 16
  store ptr %1229, ptr %1491, align 16, !tbaa !53
  %1492 = getelementptr inbounds nuw i8, ptr %1489, i64 24
  store i32 %986, ptr %1492, align 8, !tbaa !54
  %1493 = getelementptr inbounds nuw i8, ptr %1489, i64 28
  store i32 %961, ptr %1493, align 4, !tbaa !55
  %1494 = icmp eq i32 %960, 63
  br i1 %1494, label %2862, label %1495

1495:                                             ; preds = %1487
  %1496 = add nsw i32 %960, 1
  %1497 = getelementptr inbounds i32, ptr %958, i64 %888
  %1498 = sext i32 %1496 to i64
  %1499 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1498
  store ptr %1497, ptr %1499, align 16, !tbaa !50
  %1500 = getelementptr inbounds nuw i8, ptr %1499, i64 8
  store ptr %1229, ptr %1500, align 8, !tbaa !52
  %1501 = getelementptr inbounds nuw i8, ptr %1499, i64 16
  store ptr %1228, ptr %1501, align 16, !tbaa !53
  %1502 = getelementptr inbounds nuw i8, ptr %1499, i64 24
  store i32 %1276, ptr %1502, align 8, !tbaa !54
  %1503 = add nsw i32 %960, 2
  %1504 = getelementptr inbounds nuw i8, ptr %1499, i64 28
  store i32 %961, ptr %1504, align 4, !tbaa !55
  br label %2726

1505:                                             ; preds = %1471
  %1506 = icmp slt i32 %960, 64
  br i1 %1506, label %1507, label %2864

1507:                                             ; preds = %1505
  %1508 = sext i32 %960 to i64
  %1509 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1508
  store ptr %958, ptr %1509, align 16, !tbaa !50
  %1510 = getelementptr inbounds nuw i8, ptr %1509, i64 8
  store ptr %957, ptr %1510, align 8, !tbaa !52
  %1511 = getelementptr inbounds nuw i8, ptr %1509, i64 16
  store ptr %1229, ptr %1511, align 16, !tbaa !53
  %1512 = getelementptr inbounds nuw i8, ptr %1509, i64 24
  store i32 %986, ptr %1512, align 8, !tbaa !54
  %1513 = getelementptr inbounds nuw i8, ptr %1509, i64 28
  store i32 %961, ptr %1513, align 4, !tbaa !55
  %1514 = icmp eq i32 %960, 63
  br i1 %1514, label %2865, label %1515

1515:                                             ; preds = %1507
  %1516 = add nsw i32 %960, 1
  %1517 = sext i32 %1516 to i64
  %1518 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1517
  store ptr %958, ptr %1518, align 16, !tbaa !50
  %1519 = getelementptr inbounds nuw i8, ptr %1518, i64 8
  store ptr %1228, ptr %1519, align 8, !tbaa !52
  %1520 = getelementptr inbounds nuw i8, ptr %1518, i64 16
  store ptr %956, ptr %1520, align 16, !tbaa !53
  %1521 = getelementptr inbounds nuw i8, ptr %1518, i64 24
  store i32 %986, ptr %1521, align 8, !tbaa !54
  %1522 = add nsw i32 %960, 2
  %1523 = getelementptr inbounds nuw i8, ptr %1518, i64 28
  store i32 %961, ptr %1523, align 4, !tbaa !55
  %1524 = getelementptr inbounds i32, ptr %958, i64 %888
  br label %2726

1525:                                             ; preds = %1319
  %1526 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %952, i32 %1315), !nosanitize !10
  %1527 = extractvalue { i32, i1 } %1526, 1, !nosanitize !10
  br i1 %1527, label %2849, label %1528, !prof !11, !nosanitize !10

1528:                                             ; preds = %1525
  %1529 = extractvalue { i32, i1 } %1526, 0, !nosanitize !10
  br label %1530

1530:                                             ; preds = %1528, %1310
  %1531 = phi i32 [ %1529, %1528 ], [ %952, %1310 ]
  %1532 = icmp sgt i64 %1232, 4
  %1533 = icmp sgt i32 %961, -1
  %1534 = select i1 %1532, i1 %1533, i1 false
  br i1 %1534, label %1535, label %1538

1535:                                             ; preds = %1530
  %1536 = zext nneg i32 %961 to i64
  %1537 = getelementptr inbounds nuw [64 x %struct.anon.1], ptr %6, i64 0, i64 %1536, i32 3
  store i32 -1, ptr %1537, align 8, !tbaa !54
  br label %1538

1538:                                             ; preds = %1535, %1530
  %1539 = sub i64 %1231, %965
  %1540 = ashr exact i64 %1539, 2
  %1541 = sub i64 %964, %1230
  %1542 = ashr exact i64 %1541, 2
  %1543 = icmp sgt i64 %1540, %1542
  br i1 %1543, label %1575, label %1544

1544:                                             ; preds = %1538
  %1545 = icmp sgt i64 %1540, 1
  br i1 %1545, label %1565, label %1546

1546:                                             ; preds = %1544
  %1547 = icmp sgt i64 %1542, 1
  br i1 %1547, label %2726, label %1548

1548:                                             ; preds = %1546
  %1549 = icmp sgt i32 %960, -1
  br i1 %1549, label %1550, label %2867

1550:                                             ; preds = %1548
  %1551 = icmp eq i32 %960, 0
  br i1 %1551, label %2709, label %1552

1552:                                             ; preds = %1550
  %1553 = add nsw i32 %960, -1
  %1554 = zext nneg i32 %1553 to i64
  %1555 = getelementptr inbounds nuw [64 x %struct.anon.1], ptr %6, i64 0, i64 %1554
  %1556 = load ptr, ptr %1555, align 16, !tbaa !50
  %1557 = getelementptr inbounds nuw i8, ptr %1555, i64 8
  %1558 = load ptr, ptr %1557, align 8, !tbaa !52
  %1559 = getelementptr inbounds nuw i8, ptr %1555, i64 16
  %1560 = load ptr, ptr %1559, align 16, !tbaa !53
  %1561 = getelementptr inbounds nuw i8, ptr %1555, i64 24
  %1562 = load i32, ptr %1561, align 8, !tbaa !54
  %1563 = getelementptr inbounds nuw i8, ptr %1555, i64 28
  %1564 = load i32, ptr %1563, align 4, !tbaa !55
  br label %2726

1565:                                             ; preds = %1544
  %1566 = icmp slt i32 %960, 64
  br i1 %1566, label %1567, label %2866

1567:                                             ; preds = %1565
  %1568 = sext i32 %960 to i64
  %1569 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1568
  store ptr %958, ptr %1569, align 16, !tbaa !50
  %1570 = getelementptr inbounds nuw i8, ptr %1569, i64 8
  store ptr %1228, ptr %1570, align 8, !tbaa !52
  %1571 = getelementptr inbounds nuw i8, ptr %1569, i64 16
  store ptr %956, ptr %1571, align 16, !tbaa !53
  %1572 = getelementptr inbounds nuw i8, ptr %1569, i64 24
  store i32 %986, ptr %1572, align 8, !tbaa !54
  %1573 = add nsw i32 %960, 1
  %1574 = getelementptr inbounds nuw i8, ptr %1569, i64 28
  store i32 %961, ptr %1574, align 4, !tbaa !55
  br label %2726

1575:                                             ; preds = %1538
  %1576 = icmp sgt i64 %1542, 1
  br i1 %1576, label %1596, label %1577

1577:                                             ; preds = %1575
  %1578 = icmp sgt i64 %1540, 1
  br i1 %1578, label %2726, label %1579

1579:                                             ; preds = %1577
  %1580 = icmp sgt i32 %960, -1
  br i1 %1580, label %1581, label %2869

1581:                                             ; preds = %1579
  %1582 = icmp eq i32 %960, 0
  br i1 %1582, label %2709, label %1583

1583:                                             ; preds = %1581
  %1584 = add nsw i32 %960, -1
  %1585 = zext nneg i32 %1584 to i64
  %1586 = getelementptr inbounds nuw [64 x %struct.anon.1], ptr %6, i64 0, i64 %1585
  %1587 = load ptr, ptr %1586, align 16, !tbaa !50
  %1588 = getelementptr inbounds nuw i8, ptr %1586, i64 8
  %1589 = load ptr, ptr %1588, align 8, !tbaa !52
  %1590 = getelementptr inbounds nuw i8, ptr %1586, i64 16
  %1591 = load ptr, ptr %1590, align 16, !tbaa !53
  %1592 = getelementptr inbounds nuw i8, ptr %1586, i64 24
  %1593 = load i32, ptr %1592, align 8, !tbaa !54
  %1594 = getelementptr inbounds nuw i8, ptr %1586, i64 28
  %1595 = load i32, ptr %1594, align 4, !tbaa !55
  br label %2726

1596:                                             ; preds = %1575
  %1597 = icmp slt i32 %960, 64
  br i1 %1597, label %1598, label %2868

1598:                                             ; preds = %1596
  %1599 = sext i32 %960 to i64
  %1600 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1599
  store ptr %958, ptr %1600, align 16, !tbaa !50
  %1601 = getelementptr inbounds nuw i8, ptr %1600, i64 8
  store ptr %957, ptr %1601, align 8, !tbaa !52
  %1602 = getelementptr inbounds nuw i8, ptr %1600, i64 16
  store ptr %1229, ptr %1602, align 16, !tbaa !53
  %1603 = getelementptr inbounds nuw i8, ptr %1600, i64 24
  store i32 %986, ptr %1603, align 8, !tbaa !54
  %1604 = add nsw i32 %960, 1
  %1605 = getelementptr inbounds nuw i8, ptr %1600, i64 28
  store i32 %961, ptr %1605, align 4, !tbaa !55
  br label %2726

1606:                                             ; preds = %1219
  %1607 = icmp slt i32 %953, %970
  br i1 %1607, label %1610, label %1608

1608:                                             ; preds = %1606
  %1609 = sub nsw i32 %953, %970
  br label %1622

1610:                                             ; preds = %1606
  %1611 = icmp eq i32 %954, 0
  br i1 %1611, label %1657, label %1612

1612:                                             ; preds = %1610
  %1613 = sub nsw i32 %84, %970
  %1614 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %953, i32 %1613), !nosanitize !10
  %1615 = extractvalue { i32, i1 } %1614, 1, !nosanitize !10
  br i1 %1615, label %2871, label %1616, !prof !11, !nosanitize !10

1616:                                             ; preds = %1612
  %1617 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %954, i32 -1)
  %1618 = extractvalue { i32, i1 } %1617, 1, !nosanitize !10
  br i1 %1618, label %2870, label %1619, !prof !11, !nosanitize !10

1619:                                             ; preds = %1616
  %1620 = extractvalue { i32, i1 } %1614, 0, !nosanitize !10
  %1621 = extractvalue { i32, i1 } %1617, 0, !nosanitize !10
  br label %1622

1622:                                             ; preds = %1619, %1608
  %1623 = phi i32 [ %1620, %1619 ], [ %1609, %1608 ]
  %1624 = phi i32 [ %1621, %1619 ], [ %954, %1608 ]
  %1625 = icmp samesign ult i64 %968, 65536
  br i1 %1625, label %1642, label %1626

1626:                                             ; preds = %1622
  %1627 = icmp samesign ult i64 %968, 16777216
  br i1 %1627, label %1635, label %1628

1628:                                             ; preds = %1626
  %1629 = lshr i64 %968, 24
  %1630 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1629
  %1631 = load i32, ptr %1630, align 4, !tbaa !5
  %1632 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1631, i32 24), !nosanitize !10
  %1633 = extractvalue { i32, i1 } %1632, 0, !nosanitize !10
  %1634 = extractvalue { i32, i1 } %1632, 1, !nosanitize !10
  br i1 %1634, label %2872, label %1654, !prof !11, !nosanitize !10

1635:                                             ; preds = %1626
  %1636 = lshr i64 %968, 16
  %1637 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1636
  %1638 = load i32, ptr %1637, align 4, !tbaa !5
  %1639 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1638, i32 16), !nosanitize !10
  %1640 = extractvalue { i32, i1 } %1639, 0, !nosanitize !10
  %1641 = extractvalue { i32, i1 } %1639, 1, !nosanitize !10
  br i1 %1641, label %2872, label %1654, !prof !11, !nosanitize !10

1642:                                             ; preds = %1622
  %1643 = icmp samesign ult i64 %968, 256
  br i1 %1643, label %1651, label %1644

1644:                                             ; preds = %1642
  %1645 = lshr i64 %968, 8
  %1646 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1645
  %1647 = load i32, ptr %1646, align 4, !tbaa !5
  %1648 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1647, i32 8), !nosanitize !10
  %1649 = extractvalue { i32, i1 } %1648, 0, !nosanitize !10
  %1650 = extractvalue { i32, i1 } %1648, 1, !nosanitize !10
  br i1 %1650, label %2872, label %1654, !prof !11, !nosanitize !10

1651:                                             ; preds = %1642
  %1652 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %968
  %1653 = load i32, ptr %1652, align 4, !tbaa !5
  br label %1654

1654:                                             ; preds = %1651, %1644, %1635, %1628
  %1655 = phi i32 [ %1633, %1628 ], [ %1640, %1635 ], [ %1649, %1644 ], [ %1653, %1651 ]
  %1656 = getelementptr inbounds i32, ptr %958, i64 %888
  br label %2726

1657:                                             ; preds = %1610
  %1658 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %952, i32 %970), !nosanitize !10
  %1659 = extractvalue { i32, i1 } %1658, 1, !nosanitize !10
  br i1 %1659, label %2871, label %1660, !prof !11, !nosanitize !10

1660:                                             ; preds = %1657
  %1661 = extractvalue { i32, i1 } %1658, 0, !nosanitize !10
  %1662 = icmp sgt i32 %961, -1
  br i1 %1662, label %1663, label %1666

1663:                                             ; preds = %1660
  %1664 = zext nneg i32 %961 to i64
  %1665 = getelementptr inbounds nuw [64 x %struct.anon.1], ptr %6, i64 0, i64 %1664, i32 3
  store i32 -1, ptr %1665, align 8, !tbaa !54
  br label %1666

1666:                                             ; preds = %1663, %1660
  %1667 = icmp sgt i32 %960, -1
  br i1 %1667, label %1668, label %2873

1668:                                             ; preds = %1666
  %1669 = icmp eq i32 %960, 0
  br i1 %1669, label %2709, label %1670

1670:                                             ; preds = %1668
  %1671 = add nsw i32 %960, -1
  %1672 = zext nneg i32 %1671 to i64
  %1673 = getelementptr inbounds nuw [64 x %struct.anon.1], ptr %6, i64 0, i64 %1672
  %1674 = load ptr, ptr %1673, align 16, !tbaa !50
  %1675 = getelementptr inbounds nuw i8, ptr %1673, i64 8
  %1676 = load ptr, ptr %1675, align 8, !tbaa !52
  %1677 = getelementptr inbounds nuw i8, ptr %1673, i64 16
  %1678 = load ptr, ptr %1677, align 16, !tbaa !53
  %1679 = getelementptr inbounds nuw i8, ptr %1673, i64 24
  %1680 = load i32, ptr %1679, align 8, !tbaa !54
  %1681 = getelementptr inbounds nuw i8, ptr %1673, i64 28
  %1682 = load i32, ptr %1681, align 4, !tbaa !55
  br label %2726

1683:                                             ; preds = %984
  br i1 %972, label %1686, label %1684

1684:                                             ; preds = %1683
  %1685 = lshr i64 %968, 1
  br label %1697

1686:                                             ; preds = %1683
  %1687 = load i32, ptr %976, align 4, !tbaa !5
  %1688 = sext i32 %1687 to i64
  %1689 = getelementptr inbounds i32, ptr %958, i64 %1688
  %1690 = load i32, ptr %1689, align 4, !tbaa !5
  %1691 = load i32, ptr %978, align 4, !tbaa !5
  %1692 = sext i32 %1691 to i64
  %1693 = getelementptr inbounds i32, ptr %958, i64 %1692
  %1694 = load i32, ptr %1693, align 4, !tbaa !5
  %1695 = icmp slt i32 %1690, %1694
  br i1 %1695, label %1696, label %1697

1696:                                             ; preds = %1686
  store i32 %1687, ptr %978, align 4, !tbaa !5
  store i32 %1691, ptr %976, align 4, !tbaa !5
  br label %1697

1697:                                             ; preds = %1696, %1686, %1684
  %1698 = phi i64 [ %1685, %1684 ], [ %975, %1696 ], [ %975, %1686 ]
  %1699 = phi i32 [ %970, %1684 ], [ %973, %1696 ], [ %973, %1686 ]
  br label %1700

1700:                                             ; preds = %1730, %1697
  %1701 = phi i64 [ %1698, %1697 ], [ %1702, %1730 ]
  %1702 = add nsw i64 %1701, -1
  %1703 = getelementptr inbounds nuw i32, ptr %957, i64 %1702
  %1704 = load i32, ptr %1703, align 4, !tbaa !5
  %1705 = sext i32 %1704 to i64
  %1706 = getelementptr inbounds i32, ptr %958, i64 %1705
  %1707 = load i32, ptr %1706, align 4, !tbaa !5
  %1708 = trunc nuw nsw i64 %1702 to i32
  br label %1709

1709:                                             ; preds = %1852, %1700
  %1710 = phi i32 [ %1854, %1852 ], [ %1708, %1700 ]
  %1711 = shl nsw i32 %1710, 1
  %1712 = or disjoint i32 %1711, 1
  %1713 = icmp slt i32 %1712, %1699
  br i1 %1713, label %1714, label %1730

1714:                                             ; preds = %1709
  %1715 = add nsw i32 %1711, 2
  %1716 = sext i32 %1712 to i64
  %1717 = getelementptr inbounds i32, ptr %957, i64 %1716
  %1718 = load i32, ptr %1717, align 4, !tbaa !5
  %1719 = sext i32 %1718 to i64
  %1720 = getelementptr inbounds i32, ptr %958, i64 %1719
  %1721 = load i32, ptr %1720, align 4, !tbaa !5
  %1722 = sext i32 %1715 to i64
  %1723 = getelementptr inbounds i32, ptr %957, i64 %1722
  %1724 = load i32, ptr %1723, align 4, !tbaa !5
  %1725 = sext i32 %1724 to i64
  %1726 = getelementptr inbounds i32, ptr %958, i64 %1725
  %1727 = load i32, ptr %1726, align 4, !tbaa !5
  %1728 = tail call i32 @llvm.smax.i32(i32 %1721, i32 %1727)
  %1729 = icmp sgt i32 %1728, %1707
  br i1 %1729, label %1852, label %1730

1730:                                             ; preds = %1714, %1709
  %1731 = sext i32 %1710 to i64
  %1732 = getelementptr inbounds i32, ptr %957, i64 %1731
  store i32 %1704, ptr %1732, align 4, !tbaa !5
  %1733 = icmp sgt i64 %1701, 1
  br i1 %1733, label %1700, label %1734, !llvm.loop !56

1734:                                             ; preds = %1730
  br i1 %972, label %1735, label %1768

1735:                                             ; preds = %1734
  %1736 = load i32, ptr %957, align 4, !tbaa !5
  %1737 = zext nneg i32 %1699 to i64
  %1738 = getelementptr inbounds nuw i32, ptr %957, i64 %1737
  %1739 = load i32, ptr %1738, align 4, !tbaa !5
  store i32 %1739, ptr %957, align 4, !tbaa !5
  store i32 %1736, ptr %1738, align 4, !tbaa !5
  %1740 = load i32, ptr %957, align 4, !tbaa !5
  %1741 = sext i32 %1740 to i64
  %1742 = getelementptr inbounds i32, ptr %958, i64 %1741
  %1743 = load i32, ptr %1742, align 4, !tbaa !5
  br label %1744

1744:                                             ; preds = %1842, %1735
  %1745 = phi i32 [ %1844, %1842 ], [ 0, %1735 ]
  %1746 = shl nsw i32 %1745, 1
  %1747 = or disjoint i32 %1746, 1
  %1748 = icmp slt i32 %1747, %1699
  br i1 %1748, label %1749, label %1765

1749:                                             ; preds = %1744
  %1750 = add nsw i32 %1746, 2
  %1751 = sext i32 %1747 to i64
  %1752 = getelementptr inbounds i32, ptr %957, i64 %1751
  %1753 = load i32, ptr %1752, align 4, !tbaa !5
  %1754 = sext i32 %1753 to i64
  %1755 = getelementptr inbounds i32, ptr %958, i64 %1754
  %1756 = load i32, ptr %1755, align 4, !tbaa !5
  %1757 = sext i32 %1750 to i64
  %1758 = getelementptr inbounds i32, ptr %957, i64 %1757
  %1759 = load i32, ptr %1758, align 4, !tbaa !5
  %1760 = sext i32 %1759 to i64
  %1761 = getelementptr inbounds i32, ptr %958, i64 %1760
  %1762 = load i32, ptr %1761, align 4, !tbaa !5
  %1763 = tail call i32 @llvm.smax.i32(i32 %1756, i32 %1762)
  %1764 = icmp sgt i32 %1763, %1743
  br i1 %1764, label %1842, label %1765

1765:                                             ; preds = %1749, %1744
  %1766 = sext i32 %1745 to i64
  %1767 = getelementptr inbounds i32, ptr %957, i64 %1766
  store i32 %1740, ptr %1767, align 4, !tbaa !5
  br label %1768

1768:                                             ; preds = %1765, %1734
  %1769 = add nsw i32 %1699, -1
  %1770 = zext nneg i32 %1769 to i64
  br label %1771

1771:                                             ; preds = %1800, %1768
  %1772 = phi i64 [ %1770, %1768 ], [ %1803, %1800 ]
  %1773 = load i32, ptr %957, align 4, !tbaa !5
  %1774 = getelementptr inbounds nuw i32, ptr %957, i64 %1772
  %1775 = load i32, ptr %1774, align 4, !tbaa !5
  store i32 %1775, ptr %957, align 4, !tbaa !5
  %1776 = sext i32 %1775 to i64
  %1777 = getelementptr inbounds i32, ptr %958, i64 %1776
  %1778 = load i32, ptr %1777, align 4, !tbaa !5
  br label %1779

1779:                                             ; preds = %1832, %1771
  %1780 = phi i32 [ %1834, %1832 ], [ 0, %1771 ]
  %1781 = shl nsw i32 %1780, 1
  %1782 = or disjoint i32 %1781, 1
  %1783 = sext i32 %1782 to i64
  %1784 = icmp sgt i64 %1772, %1783
  br i1 %1784, label %1785, label %1800

1785:                                             ; preds = %1779
  %1786 = add nsw i32 %1781, 2
  %1787 = getelementptr inbounds i32, ptr %957, i64 %1783
  %1788 = load i32, ptr %1787, align 4, !tbaa !5
  %1789 = sext i32 %1788 to i64
  %1790 = getelementptr inbounds i32, ptr %958, i64 %1789
  %1791 = load i32, ptr %1790, align 4, !tbaa !5
  %1792 = sext i32 %1786 to i64
  %1793 = getelementptr inbounds i32, ptr %957, i64 %1792
  %1794 = load i32, ptr %1793, align 4, !tbaa !5
  %1795 = sext i32 %1794 to i64
  %1796 = getelementptr inbounds i32, ptr %958, i64 %1795
  %1797 = load i32, ptr %1796, align 4, !tbaa !5
  %1798 = tail call i32 @llvm.smax.i32(i32 %1791, i32 %1797)
  %1799 = icmp sgt i32 %1798, %1778
  br i1 %1799, label %1832, label %1800

1800:                                             ; preds = %1785, %1779
  %1801 = sext i32 %1780 to i64
  %1802 = getelementptr inbounds i32, ptr %957, i64 %1801
  store i32 %1775, ptr %1802, align 4, !tbaa !5
  store i32 %1773, ptr %1774, align 4, !tbaa !5
  %1803 = add nsw i64 %1772, -1
  %1804 = icmp sgt i64 %1772, 1
  br i1 %1804, label %1771, label %1805, !llvm.loop !57

1805:                                             ; preds = %1800
  %1806 = load ptr, ptr %8, align 8
  br i1 %980, label %1807, label %1829

1807:                                             ; preds = %1805, %1826
  %1808 = phi ptr [ %1827, %1826 ], [ %979, %1805 ]
  %1809 = load i32, ptr %1808, align 4, !tbaa !5
  %1810 = sext i32 %1809 to i64
  %1811 = getelementptr inbounds i32, ptr %958, i64 %1810
  %1812 = load i32, ptr %1811, align 4, !tbaa !5
  %1813 = getelementptr inbounds i8, ptr %1808, i64 -4
  %1814 = icmp ugt ptr %957, %1813
  br i1 %1814, label %1826, label %1815

1815:                                             ; preds = %1807, %1822
  %1816 = phi ptr [ %1824, %1822 ], [ %1813, %1807 ]
  %1817 = load i32, ptr %1816, align 4, !tbaa !5
  %1818 = sext i32 %1817 to i64
  %1819 = getelementptr inbounds i32, ptr %958, i64 %1818
  %1820 = load i32, ptr %1819, align 4, !tbaa !5
  %1821 = icmp eq i32 %1820, %1812
  br i1 %1821, label %1822, label %1826

1822:                                             ; preds = %1815
  %1823 = xor i32 %1817, -1
  store i32 %1823, ptr %1816, align 4, !tbaa !5
  %1824 = getelementptr inbounds i8, ptr %1816, i64 -4
  %1825 = icmp ugt ptr %957, %1824
  br i1 %1825, label %1826, label %1815, !llvm.loop !58

1826:                                             ; preds = %1822, %1815, %1807
  %1827 = phi ptr [ %1813, %1807 ], [ %1816, %1815 ], [ %1824, %1822 ]
  %1828 = icmp ult ptr %957, %1827
  br i1 %1828, label %1807, label %1829, !llvm.loop !59

1829:                                             ; preds = %1826, %1805
  %1830 = phi ptr [ %1806, %1805 ], [ %1827, %1826 ]
  %1831 = phi ptr [ %979, %1805 ], [ %1827, %1826 ]
  store ptr %1830, ptr %8, align 8
  br label %1910

1832:                                             ; preds = %1785
  %1833 = icmp slt i32 %1791, %1797
  %1834 = select i1 %1833, i32 %1786, i32 %1782
  %1835 = sext i32 %1834 to i64
  %1836 = getelementptr inbounds i32, ptr %957, i64 %1835
  %1837 = load i32, ptr %1836, align 4, !tbaa !5
  %1838 = sext i32 %1780 to i64
  %1839 = getelementptr inbounds i32, ptr %957, i64 %1838
  store i32 %1837, ptr %1839, align 4, !tbaa !5
  %1840 = add i32 %1834, 1073741824
  %1841 = icmp sgt i32 %1840, -1
  br i1 %1841, label %1779, label %2841, !prof !60, !llvm.loop !61, !nosanitize !10

1842:                                             ; preds = %1749
  %1843 = icmp slt i32 %1756, %1762
  %1844 = select i1 %1843, i32 %1750, i32 %1747
  %1845 = sext i32 %1844 to i64
  %1846 = getelementptr inbounds i32, ptr %957, i64 %1845
  %1847 = load i32, ptr %1846, align 4, !tbaa !5
  %1848 = sext i32 %1745 to i64
  %1849 = getelementptr inbounds i32, ptr %957, i64 %1848
  store i32 %1847, ptr %1849, align 4, !tbaa !5
  %1850 = add i32 %1844, 1073741824
  %1851 = icmp sgt i32 %1850, -1
  br i1 %1851, label %1744, label %2840, !prof !60, !llvm.loop !61, !nosanitize !10

1852:                                             ; preds = %1714
  %1853 = icmp slt i32 %1721, %1727
  %1854 = select i1 %1853, i32 %1715, i32 %1712
  %1855 = sext i32 %1854 to i64
  %1856 = getelementptr inbounds i32, ptr %957, i64 %1855
  %1857 = load i32, ptr %1856, align 4, !tbaa !5
  %1858 = sext i32 %1710 to i64
  %1859 = getelementptr inbounds i32, ptr %957, i64 %1858
  store i32 %1857, ptr %1859, align 4, !tbaa !5
  %1860 = add i32 %1854, 1073741824
  %1861 = icmp sgt i32 %1860, -1
  br i1 %1861, label %1709, label %2839, !prof !60, !llvm.loop !61, !nosanitize !10

1862:                                             ; preds = %963
  %1863 = getelementptr inbounds nuw i8, ptr %957, i64 4
  %1864 = icmp ult ptr %1863, %956
  br i1 %1864, label %1865, label %1910

1865:                                             ; preds = %1862, %1906
  %1866 = phi ptr [ %1908, %1906 ], [ %1863, %1862 ]
  %1867 = phi ptr [ %1866, %1906 ], [ %957, %1862 ]
  %1868 = load i32, ptr %1866, align 4, !tbaa !5
  %1869 = sext i32 %1868 to i64
  %1870 = getelementptr inbounds i32, ptr %958, i64 %1869
  %1871 = load i32, ptr %1870, align 4, !tbaa !5
  %1872 = load i32, ptr %1867, align 4, !tbaa !5
  %1873 = sext i32 %1872 to i64
  %1874 = getelementptr inbounds i32, ptr %958, i64 %1873
  %1875 = load i32, ptr %1874, align 4, !tbaa !5
  %1876 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1871, i32 %1875), !nosanitize !10
  %1877 = extractvalue { i32, i1 } %1876, 1, !nosanitize !10
  br i1 %1877, label %2837, label %1878, !prof !62, !nosanitize !10

1878:                                             ; preds = %1865, %1893
  %1879 = phi i32 [ %1891, %1893 ], [ %1872, %1865 ]
  %1880 = phi { i32, i1 } [ %1898, %1893 ], [ %1876, %1865 ]
  %1881 = phi ptr [ %1888, %1893 ], [ %1867, %1865 ]
  %1882 = extractvalue { i32, i1 } %1880, 0
  %1883 = icmp slt i32 %1882, 0
  br i1 %1883, label %1884, label %1900

1884:                                             ; preds = %1878, %1890
  %1885 = phi i32 [ %1891, %1890 ], [ %1879, %1878 ]
  %1886 = phi ptr [ %1888, %1890 ], [ %1881, %1878 ]
  %1887 = getelementptr inbounds nuw i8, ptr %1886, i64 4
  store i32 %1885, ptr %1887, align 4, !tbaa !5
  %1888 = getelementptr inbounds i8, ptr %1886, i64 -4
  %1889 = icmp ugt ptr %957, %1888
  br i1 %1889, label %1900, label %1890

1890:                                             ; preds = %1884
  %1891 = load i32, ptr %1888, align 4, !tbaa !5
  %1892 = icmp slt i32 %1891, 0
  br i1 %1892, label %1884, label %1893, !llvm.loop !63

1893:                                             ; preds = %1890
  %1894 = load i32, ptr %1870, align 4, !tbaa !5
  %1895 = zext nneg i32 %1891 to i64
  %1896 = getelementptr inbounds nuw i32, ptr %958, i64 %1895
  %1897 = load i32, ptr %1896, align 4, !tbaa !5
  %1898 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1894, i32 %1897), !nosanitize !10
  %1899 = extractvalue { i32, i1 } %1898, 1, !nosanitize !10
  br i1 %1899, label %2837, label %1878, !prof !64, !llvm.loop !63, !nosanitize !10

1900:                                             ; preds = %1878, %1884
  %1901 = phi ptr [ %1888, %1884 ], [ %1881, %1878 ]
  %1902 = icmp eq i32 %1882, 0
  br i1 %1902, label %1903, label %1906

1903:                                             ; preds = %1900
  %1904 = load i32, ptr %1901, align 4, !tbaa !5
  %1905 = xor i32 %1904, -1
  store i32 %1905, ptr %1901, align 4, !tbaa !5
  br label %1906

1906:                                             ; preds = %1903, %1900
  %1907 = getelementptr inbounds nuw i8, ptr %1901, i64 4
  store i32 %1868, ptr %1907, align 4, !tbaa !5
  %1908 = getelementptr inbounds nuw i8, ptr %1866, i64 4
  %1909 = icmp ult ptr %1908, %956
  br i1 %1909, label %1865, label %1910, !llvm.loop !65

1910:                                             ; preds = %1906, %1862, %1829
  %1911 = phi ptr [ %955, %1862 ], [ %1831, %1829 ], [ %955, %1906 ]
  store ptr %1911, ptr %7, align 8
  br label %2497

1912:                                             ; preds = %951
  store ptr %955, ptr %7, align 8
  switch i32 %959, label %2497 [
    i32 -1, label %2162
    i32 -2, label %1913
  ]

1913:                                             ; preds = %1912
  %1914 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %960, i32 -1)
  %1915 = extractvalue { i32, i1 } %1914, 0, !nosanitize !10
  %1916 = extractvalue { i32, i1 } %1914, 1, !nosanitize !10
  br i1 %1916, label %2793, label %1917, !prof !11, !nosanitize !10

1917:                                             ; preds = %1913
  %1918 = sext i32 %1915 to i64
  %1919 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1918
  %1920 = getelementptr inbounds nuw i8, ptr %1919, i64 8
  %1921 = load ptr, ptr %1920, align 8, !tbaa !52
  store ptr %1921, ptr %7, align 8, !tbaa !45
  %1922 = getelementptr inbounds nuw i8, ptr %1919, i64 16
  %1923 = load ptr, ptr %1922, align 16, !tbaa !53
  store ptr %1923, ptr %8, align 8, !tbaa !45
  %1924 = getelementptr inbounds nuw i8, ptr %1919, i64 24
  %1925 = load i32, ptr %1924, align 8, !tbaa !54
  %1926 = icmp eq i32 %1925, 0
  br i1 %1926, label %2069, label %1927

1927:                                             ; preds = %1917
  %1928 = icmp sgt i32 %961, -1
  br i1 %1928, label %1929, label %1932

1929:                                             ; preds = %1927
  %1930 = zext nneg i32 %961 to i64
  %1931 = getelementptr inbounds nuw [64 x %struct.anon.1], ptr %6, i64 0, i64 %1930, i32 3
  store i32 -1, ptr %1931, align 8, !tbaa !54
  br label %1932

1932:                                             ; preds = %1929, %1927
  %1933 = ptrtoint ptr %958 to i64
  %1934 = sub i64 %1933, %875
  %1935 = ashr exact i64 %1934, 2
  %1936 = add nsw i64 %1935, 2147483648
  %1937 = icmp ult i64 %1936, 4294967296
  br i1 %1937, label %1938, label %2818

1938:                                             ; preds = %1932
  %1939 = trunc nsw i64 %1935 to i32
  %1940 = ptrtoint ptr %1923 to i64
  %1941 = sub i64 %1940, %876
  %1942 = ashr exact i64 %1941, 2
  %1943 = add nsw i64 %1942, 2147483647
  %1944 = icmp ult i64 %1943, 4294967296
  br i1 %1944, label %1945, label %2820

1945:                                             ; preds = %1938
  %1946 = trunc i64 %1942 to i32
  %1947 = add i32 %1946, -1
  %1948 = getelementptr inbounds i8, ptr %1921, i64 -4
  %1949 = icmp ugt ptr %957, %1948
  br i1 %1949, label %1993, label %1950

1950:                                             ; preds = %1945, %1987
  %1951 = phi i32 [ %1990, %1987 ], [ -1, %1945 ]
  %1952 = phi i32 [ %1989, %1987 ], [ -1, %1945 ]
  %1953 = phi ptr [ %1991, %1987 ], [ %957, %1945 ]
  %1954 = phi ptr [ %1988, %1987 ], [ %1948, %1945 ]
  %1955 = load i32, ptr %1953, align 4, !tbaa !5
  %1956 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1955, i32 %1939), !nosanitize !10
  %1957 = extractvalue { i32, i1 } %1956, 0, !nosanitize !10
  %1958 = extractvalue { i32, i1 } %1956, 1, !nosanitize !10
  br i1 %1958, label %2819, label %1959, !prof !11, !nosanitize !10

1959:                                             ; preds = %1950
  %1960 = icmp sgt i32 %1957, -1
  br i1 %1960, label %1961, label %1987

1961:                                             ; preds = %1959
  %1962 = zext nneg i32 %1957 to i64
  %1963 = getelementptr inbounds nuw i32, ptr %148, i64 %1962
  %1964 = load i32, ptr %1963, align 4, !tbaa !5
  %1965 = icmp eq i32 %1964, %1947
  br i1 %1965, label %1966, label %1987

1966:                                             ; preds = %1961
  %1967 = getelementptr inbounds nuw i8, ptr %1954, i64 4
  store i32 %1957, ptr %1967, align 4, !tbaa !5
  %1968 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1957, i32 %1939), !nosanitize !10
  %1969 = extractvalue { i32, i1 } %1968, 1, !nosanitize !10
  br i1 %1969, label %2821, label %1970, !prof !11, !nosanitize !10

1970:                                             ; preds = %1966
  %1971 = extractvalue { i32, i1 } %1968, 0, !nosanitize !10
  %1972 = sext i32 %1971 to i64
  %1973 = getelementptr inbounds i32, ptr %148, i64 %1972
  %1974 = load i32, ptr %1973, align 4, !tbaa !5
  %1975 = icmp eq i32 %1952, %1974
  br i1 %1975, label %1984, label %1976

1976:                                             ; preds = %1970
  %1977 = ptrtoint ptr %1967 to i64
  %1978 = sub i64 %1977, %876
  %1979 = ashr exact i64 %1978, 2
  %1980 = add nsw i64 %1979, 2147483648
  %1981 = icmp ult i64 %1980, 4294967296
  br i1 %1981, label %1982, label %2822

1982:                                             ; preds = %1976
  %1983 = trunc nsw i64 %1979 to i32
  br label %1984

1984:                                             ; preds = %1982, %1970
  %1985 = phi i32 [ %1974, %1982 ], [ %1952, %1970 ]
  %1986 = phi i32 [ %1983, %1982 ], [ %1951, %1970 ]
  store i32 %1986, ptr %1963, align 4, !tbaa !5
  br label %1987

1987:                                             ; preds = %1984, %1961, %1959
  %1988 = phi ptr [ %1967, %1984 ], [ %1954, %1961 ], [ %1954, %1959 ]
  %1989 = phi i32 [ %1985, %1984 ], [ %1952, %1961 ], [ %1952, %1959 ]
  %1990 = phi i32 [ %1986, %1984 ], [ %1951, %1961 ], [ %1951, %1959 ]
  %1991 = getelementptr inbounds nuw i8, ptr %1953, i64 4
  %1992 = icmp ugt ptr %1991, %1988
  br i1 %1992, label %1993, label %1950, !llvm.loop !66

1993:                                             ; preds = %1987, %1945
  %1994 = phi ptr [ %1948, %1945 ], [ %1988, %1987 ]
  %1995 = phi i32 [ -1, %1945 ], [ %1990, %1987 ]
  %1996 = icmp ugt ptr %957, %1994
  br i1 %1996, label %2022, label %1997

1997:                                             ; preds = %1993, %2019
  %1998 = phi i32 [ %2016, %2019 ], [ %1995, %1993 ]
  %1999 = phi i32 [ %2015, %2019 ], [ -1, %1993 ]
  %2000 = phi ptr [ %2020, %2019 ], [ %1994, %1993 ]
  %2001 = load i32, ptr %2000, align 4, !tbaa !5
  %2002 = sext i32 %2001 to i64
  %2003 = getelementptr inbounds i32, ptr %148, i64 %2002
  %2004 = load i32, ptr %2003, align 4, !tbaa !5
  %2005 = icmp eq i32 %1999, %2004
  br i1 %2005, label %2014, label %2006

2006:                                             ; preds = %1997
  %2007 = ptrtoint ptr %2000 to i64
  %2008 = sub i64 %2007, %876
  %2009 = ashr exact i64 %2008, 2
  %2010 = add nsw i64 %2009, 2147483648
  %2011 = icmp ult i64 %2010, 4294967296
  br i1 %2011, label %2012, label %2823

2012:                                             ; preds = %2006
  %2013 = trunc nsw i64 %2009 to i32
  br label %2014

2014:                                             ; preds = %2012, %1997
  %2015 = phi i32 [ %2004, %2012 ], [ %1999, %1997 ]
  %2016 = phi i32 [ %2013, %2012 ], [ %1998, %1997 ]
  %2017 = icmp eq i32 %2016, %2004
  br i1 %2017, label %2019, label %2018

2018:                                             ; preds = %2014
  store i32 %2016, ptr %2003, align 4, !tbaa !5
  br label %2019

2019:                                             ; preds = %2018, %2014
  %2020 = getelementptr inbounds i8, ptr %2000, i64 -4
  %2021 = icmp ugt ptr %957, %2020
  br i1 %2021, label %2022, label %1997, !llvm.loop !67

2022:                                             ; preds = %2019, %1993
  %2023 = phi i32 [ %1995, %1993 ], [ %2016, %2019 ]
  %2024 = getelementptr inbounds nuw i8, ptr %1994, i64 4
  %2025 = icmp ult ptr %2024, %1923
  br i1 %2025, label %2026, label %2145

2026:                                             ; preds = %2022, %2064
  %2027 = phi ptr [ %2031, %2064 ], [ %956, %2022 ]
  %2028 = phi i32 [ %2067, %2064 ], [ %2023, %2022 ]
  %2029 = phi i32 [ %2066, %2064 ], [ -1, %2022 ]
  %2030 = phi ptr [ %2065, %2064 ], [ %1923, %2022 ]
  %2031 = getelementptr inbounds i8, ptr %2027, i64 -4
  %2032 = load i32, ptr %2031, align 4, !tbaa !5
  %2033 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2032, i32 %1939), !nosanitize !10
  %2034 = extractvalue { i32, i1 } %2033, 0, !nosanitize !10
  %2035 = extractvalue { i32, i1 } %2033, 1, !nosanitize !10
  br i1 %2035, label %2819, label %2036, !prof !11, !nosanitize !10

2036:                                             ; preds = %2026
  %2037 = icmp sgt i32 %2034, -1
  br i1 %2037, label %2038, label %2064

2038:                                             ; preds = %2036
  %2039 = zext nneg i32 %2034 to i64
  %2040 = getelementptr inbounds nuw i32, ptr %148, i64 %2039
  %2041 = load i32, ptr %2040, align 4, !tbaa !5
  %2042 = icmp eq i32 %2041, %1947
  br i1 %2042, label %2043, label %2064

2043:                                             ; preds = %2038
  %2044 = getelementptr inbounds i8, ptr %2030, i64 -4
  store i32 %2034, ptr %2044, align 4, !tbaa !5
  %2045 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2034, i32 %1939), !nosanitize !10
  %2046 = extractvalue { i32, i1 } %2045, 1, !nosanitize !10
  br i1 %2046, label %2821, label %2047, !prof !11, !nosanitize !10

2047:                                             ; preds = %2043
  %2048 = extractvalue { i32, i1 } %2045, 0, !nosanitize !10
  %2049 = sext i32 %2048 to i64
  %2050 = getelementptr inbounds i32, ptr %148, i64 %2049
  %2051 = load i32, ptr %2050, align 4, !tbaa !5
  %2052 = icmp eq i32 %2029, %2051
  br i1 %2052, label %2061, label %2053

2053:                                             ; preds = %2047
  %2054 = ptrtoint ptr %2044 to i64
  %2055 = sub i64 %2054, %876
  %2056 = ashr exact i64 %2055, 2
  %2057 = add nsw i64 %2056, 2147483648
  %2058 = icmp ult i64 %2057, 4294967296
  br i1 %2058, label %2059, label %2824

2059:                                             ; preds = %2053
  %2060 = trunc nsw i64 %2056 to i32
  br label %2061

2061:                                             ; preds = %2059, %2047
  %2062 = phi i32 [ %2051, %2059 ], [ %2029, %2047 ]
  %2063 = phi i32 [ %2060, %2059 ], [ %2028, %2047 ]
  store i32 %2063, ptr %2040, align 4, !tbaa !5
  br label %2064

2064:                                             ; preds = %2061, %2038, %2036
  %2065 = phi ptr [ %2044, %2061 ], [ %2030, %2038 ], [ %2030, %2036 ]
  %2066 = phi i32 [ %2062, %2061 ], [ %2029, %2038 ], [ %2029, %2036 ]
  %2067 = phi i32 [ %2063, %2061 ], [ %2028, %2038 ], [ %2028, %2036 ]
  %2068 = icmp ult ptr %2024, %2065
  br i1 %2068, label %2026, label %2145, !llvm.loop !68

2069:                                             ; preds = %1917
  %2070 = ptrtoint ptr %958 to i64
  %2071 = sub i64 %2070, %875
  %2072 = ashr exact i64 %2071, 2
  %2073 = add nsw i64 %2072, 2147483648
  %2074 = icmp ult i64 %2073, 4294967296
  br i1 %2074, label %2075, label %2813

2075:                                             ; preds = %2069
  %2076 = trunc nsw i64 %2072 to i32
  %2077 = ptrtoint ptr %1923 to i64
  %2078 = sub i64 %2077, %876
  %2079 = ashr exact i64 %2078, 2
  %2080 = add nsw i64 %2079, 2147483647
  %2081 = icmp ult i64 %2080, 4294967296
  br i1 %2081, label %2082, label %2815

2082:                                             ; preds = %2075
  %2083 = trunc i64 %2079 to i32
  %2084 = add i32 %2083, -1
  %2085 = getelementptr inbounds i8, ptr %1921, i64 -4
  %2086 = icmp ugt ptr %957, %2085
  br i1 %2086, label %2114, label %2087

2087:                                             ; preds = %2082, %2110
  %2088 = phi ptr [ %2112, %2110 ], [ %957, %2082 ]
  %2089 = phi ptr [ %2111, %2110 ], [ %2085, %2082 ]
  %2090 = load i32, ptr %2088, align 4, !tbaa !5
  %2091 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2090, i32 %2076), !nosanitize !10
  %2092 = extractvalue { i32, i1 } %2091, 0, !nosanitize !10
  %2093 = extractvalue { i32, i1 } %2091, 1, !nosanitize !10
  br i1 %2093, label %2814, label %2094, !prof !11, !nosanitize !10

2094:                                             ; preds = %2087
  %2095 = icmp sgt i32 %2092, -1
  br i1 %2095, label %2096, label %2110

2096:                                             ; preds = %2094
  %2097 = zext nneg i32 %2092 to i64
  %2098 = getelementptr inbounds nuw i32, ptr %148, i64 %2097
  %2099 = load i32, ptr %2098, align 4, !tbaa !5
  %2100 = icmp eq i32 %2099, %2084
  br i1 %2100, label %2101, label %2110

2101:                                             ; preds = %2096
  %2102 = getelementptr inbounds nuw i8, ptr %2089, i64 4
  store i32 %2092, ptr %2102, align 4, !tbaa !5
  %2103 = ptrtoint ptr %2102 to i64
  %2104 = sub i64 %2103, %876
  %2105 = ashr exact i64 %2104, 2
  %2106 = add nsw i64 %2105, 2147483648
  %2107 = icmp ult i64 %2106, 4294967296
  br i1 %2107, label %2108, label %2816

2108:                                             ; preds = %2101
  %2109 = trunc nsw i64 %2105 to i32
  store i32 %2109, ptr %2098, align 4, !tbaa !5
  br label %2110

2110:                                             ; preds = %2108, %2096, %2094
  %2111 = phi ptr [ %2102, %2108 ], [ %2089, %2096 ], [ %2089, %2094 ]
  %2112 = getelementptr inbounds nuw i8, ptr %2088, i64 4
  %2113 = icmp ugt ptr %2112, %2111
  br i1 %2113, label %2114, label %2087, !llvm.loop !69

2114:                                             ; preds = %2110, %2082
  %2115 = phi ptr [ %2085, %2082 ], [ %2111, %2110 ]
  %2116 = getelementptr inbounds nuw i8, ptr %2115, i64 4
  %2117 = icmp ult ptr %2116, %1923
  br i1 %2117, label %2118, label %2145

2118:                                             ; preds = %2114, %2142
  %2119 = phi ptr [ %2121, %2142 ], [ %956, %2114 ]
  %2120 = phi ptr [ %2143, %2142 ], [ %1923, %2114 ]
  %2121 = getelementptr inbounds i8, ptr %2119, i64 -4
  %2122 = load i32, ptr %2121, align 4, !tbaa !5
  %2123 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2122, i32 %2076), !nosanitize !10
  %2124 = extractvalue { i32, i1 } %2123, 0, !nosanitize !10
  %2125 = extractvalue { i32, i1 } %2123, 1, !nosanitize !10
  br i1 %2125, label %2814, label %2126, !prof !11, !nosanitize !10

2126:                                             ; preds = %2118
  %2127 = icmp sgt i32 %2124, -1
  br i1 %2127, label %2128, label %2142

2128:                                             ; preds = %2126
  %2129 = zext nneg i32 %2124 to i64
  %2130 = getelementptr inbounds nuw i32, ptr %148, i64 %2129
  %2131 = load i32, ptr %2130, align 4, !tbaa !5
  %2132 = icmp eq i32 %2131, %2084
  br i1 %2132, label %2133, label %2142

2133:                                             ; preds = %2128
  %2134 = getelementptr inbounds i8, ptr %2120, i64 -4
  store i32 %2124, ptr %2134, align 4, !tbaa !5
  %2135 = ptrtoint ptr %2134 to i64
  %2136 = sub i64 %2135, %876
  %2137 = ashr exact i64 %2136, 2
  %2138 = add nsw i64 %2137, 2147483648
  %2139 = icmp ult i64 %2138, 4294967296
  br i1 %2139, label %2140, label %2817

2140:                                             ; preds = %2133
  %2141 = trunc nsw i64 %2137 to i32
  store i32 %2141, ptr %2130, align 4, !tbaa !5
  br label %2142

2142:                                             ; preds = %2140, %2128, %2126
  %2143 = phi ptr [ %2134, %2140 ], [ %2120, %2128 ], [ %2120, %2126 ]
  %2144 = icmp ult ptr %2116, %2143
  br i1 %2144, label %2118, label %2145, !llvm.loop !70

2145:                                             ; preds = %2064, %2142, %2114, %2022
  %2146 = icmp sgt i32 %1915, -1
  br i1 %2146, label %2147, label %2825

2147:                                             ; preds = %2145
  %2148 = icmp eq i32 %1915, 0
  br i1 %2148, label %2709, label %2149

2149:                                             ; preds = %2147
  %2150 = add nsw i32 %1915, -1
  %2151 = zext nneg i32 %2150 to i64
  %2152 = getelementptr inbounds nuw [64 x %struct.anon.1], ptr %6, i64 0, i64 %2151
  %2153 = load ptr, ptr %2152, align 16, !tbaa !50
  %2154 = getelementptr inbounds nuw i8, ptr %2152, i64 8
  %2155 = load ptr, ptr %2154, align 8, !tbaa !52
  %2156 = getelementptr inbounds nuw i8, ptr %2152, i64 16
  %2157 = load ptr, ptr %2156, align 16, !tbaa !53
  %2158 = getelementptr inbounds nuw i8, ptr %2152, i64 24
  %2159 = load i32, ptr %2158, align 8, !tbaa !54
  %2160 = getelementptr inbounds nuw i8, ptr %2152, i64 28
  %2161 = load i32, ptr %2160, align 4, !tbaa !55
  br label %2726

2162:                                             ; preds = %1912
  %2163 = getelementptr inbounds i32, ptr %958, i64 %889
  %2164 = ptrtoint ptr %956 to i64
  %2165 = sub i64 %2164, %876
  %2166 = ashr exact i64 %2165, 2
  %2167 = add nsw i64 %2166, 2147483647
  %2168 = icmp ult i64 %2167, 4294967296
  br i1 %2168, label %2169, label %2794

2169:                                             ; preds = %2162
  %2170 = trunc i64 %2166 to i32
  %2171 = add i32 %2170, -1
  call fastcc void @tr_partition(ptr noundef %2163, ptr noundef %957, ptr noundef %957, ptr noundef %956, ptr noundef %7, ptr noundef %8, i32 noundef %2171)
  %2172 = load ptr, ptr %7, align 8, !tbaa !45
  %2173 = icmp ult ptr %2172, %956
  br i1 %2173, label %2174, label %2191

2174:                                             ; preds = %2169
  %2175 = ptrtoint ptr %2172 to i64
  %2176 = sub i64 %2175, %876
  %2177 = ashr exact i64 %2176, 2
  %2178 = add nsw i64 %2177, 2147483647
  %2179 = icmp ult i64 %2178, 4294967296
  br i1 %2179, label %2180, label %2795

2180:                                             ; preds = %2174
  %2181 = trunc i64 %2177 to i32
  %2182 = add i32 %2181, -1
  %2183 = icmp ult ptr %957, %2172
  br i1 %2183, label %2184, label %2191

2184:                                             ; preds = %2180, %2184
  %2185 = phi ptr [ %2189, %2184 ], [ %957, %2180 ]
  %2186 = load i32, ptr %2185, align 4, !tbaa !5
  %2187 = sext i32 %2186 to i64
  %2188 = getelementptr inbounds i32, ptr %148, i64 %2187
  store i32 %2182, ptr %2188, align 4, !tbaa !5
  %2189 = getelementptr inbounds nuw i8, ptr %2185, i64 4
  %2190 = icmp ult ptr %2189, %2172
  br i1 %2190, label %2184, label %2191, !llvm.loop !71

2191:                                             ; preds = %2184, %2180, %2169
  %2192 = load ptr, ptr %8, align 8, !tbaa !45
  %2193 = icmp ult ptr %2192, %956
  %2194 = ptrtoint ptr %2192 to i64
  br i1 %2193, label %2195, label %2211

2195:                                             ; preds = %2191
  %2196 = sub i64 %2194, %876
  %2197 = ashr exact i64 %2196, 2
  %2198 = add nsw i64 %2197, 2147483647
  %2199 = icmp ult i64 %2198, 4294967296
  br i1 %2199, label %2200, label %2796

2200:                                             ; preds = %2195
  %2201 = trunc i64 %2197 to i32
  %2202 = add i32 %2201, -1
  %2203 = icmp ult ptr %2172, %2192
  br i1 %2203, label %2204, label %2211

2204:                                             ; preds = %2200, %2204
  %2205 = phi ptr [ %2209, %2204 ], [ %2172, %2200 ]
  %2206 = load i32, ptr %2205, align 4, !tbaa !5
  %2207 = sext i32 %2206 to i64
  %2208 = getelementptr inbounds i32, ptr %148, i64 %2207
  store i32 %2202, ptr %2208, align 4, !tbaa !5
  %2209 = getelementptr inbounds nuw i8, ptr %2205, i64 4
  %2210 = icmp ult ptr %2209, %2192
  br i1 %2210, label %2204, label %2211, !llvm.loop !72

2211:                                             ; preds = %2204, %2200, %2191
  %2212 = ptrtoint ptr %2172 to i64
  %2213 = sub i64 %2194, %2212
  %2214 = icmp sgt i64 %2213, 4
  br i1 %2214, label %2215, label %2234

2215:                                             ; preds = %2211
  %2216 = icmp slt i32 %960, 64
  br i1 %2216, label %2217, label %2797

2217:                                             ; preds = %2215
  %2218 = sext i32 %960 to i64
  %2219 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2218
  store ptr null, ptr %2219, align 16, !tbaa !50
  %2220 = getelementptr inbounds nuw i8, ptr %2219, i64 8
  store ptr %2172, ptr %2220, align 8, !tbaa !52
  %2221 = getelementptr inbounds nuw i8, ptr %2219, i64 16
  store ptr %2192, ptr %2221, align 16, !tbaa !53
  %2222 = getelementptr inbounds nuw i8, ptr %2219, i64 24
  store i32 0, ptr %2222, align 8, !tbaa !54
  %2223 = getelementptr inbounds nuw i8, ptr %2219, i64 28
  store i32 0, ptr %2223, align 4, !tbaa !55
  %2224 = icmp eq i32 %960, 63
  br i1 %2224, label %2798, label %2225

2225:                                             ; preds = %2217
  %2226 = add nsw i32 %960, 1
  %2227 = sext i32 %2226 to i64
  %2228 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2227
  store ptr %2163, ptr %2228, align 16, !tbaa !50
  %2229 = getelementptr inbounds nuw i8, ptr %2228, i64 8
  store ptr %957, ptr %2229, align 8, !tbaa !52
  %2230 = getelementptr inbounds nuw i8, ptr %2228, i64 16
  store ptr %956, ptr %2230, align 16, !tbaa !53
  %2231 = getelementptr inbounds nuw i8, ptr %2228, i64 24
  store i32 -2, ptr %2231, align 8, !tbaa !54
  %2232 = add nsw i32 %960, 2
  %2233 = getelementptr inbounds nuw i8, ptr %2228, i64 28
  store i32 %961, ptr %2233, align 4, !tbaa !55
  br label %2234

2234:                                             ; preds = %2225, %2211
  %2235 = phi i32 [ %2232, %2225 ], [ %960, %2211 ]
  %2236 = phi i32 [ %960, %2225 ], [ %961, %2211 ]
  %2237 = ptrtoint ptr %957 to i64
  %2238 = sub i64 %2212, %2237
  %2239 = ashr exact i64 %2238, 2
  %2240 = sub i64 %2164, %2194
  %2241 = ashr exact i64 %2240, 2
  %2242 = icmp sgt i64 %2239, %2241
  br i1 %2242, label %2370, label %2243

2243:                                             ; preds = %2234
  %2244 = icmp sgt i64 %2239, 1
  br i1 %2244, label %2296, label %2245

2245:                                             ; preds = %2243
  %2246 = icmp sgt i64 %2241, 1
  br i1 %2246, label %2264, label %2247

2247:                                             ; preds = %2245
  %2248 = icmp sgt i32 %2235, -1
  br i1 %2248, label %2249, label %2805

2249:                                             ; preds = %2247
  %2250 = icmp eq i32 %2235, 0
  br i1 %2250, label %2709, label %2251

2251:                                             ; preds = %2249
  %2252 = add nsw i32 %2235, -1
  %2253 = zext nneg i32 %2252 to i64
  %2254 = getelementptr inbounds nuw [64 x %struct.anon.1], ptr %6, i64 0, i64 %2253
  %2255 = load ptr, ptr %2254, align 16, !tbaa !50
  %2256 = getelementptr inbounds nuw i8, ptr %2254, i64 8
  %2257 = load ptr, ptr %2256, align 8, !tbaa !52
  %2258 = getelementptr inbounds nuw i8, ptr %2254, i64 16
  %2259 = load ptr, ptr %2258, align 16, !tbaa !53
  %2260 = getelementptr inbounds nuw i8, ptr %2254, i64 24
  %2261 = load i32, ptr %2260, align 8, !tbaa !54
  %2262 = getelementptr inbounds nuw i8, ptr %2254, i64 28
  %2263 = load i32, ptr %2262, align 4, !tbaa !55
  br label %2726

2264:                                             ; preds = %2245
  %2265 = icmp samesign ult i64 %2241, 2147483648
  br i1 %2265, label %2266, label %2803

2266:                                             ; preds = %2264
  %2267 = icmp samesign ult i64 %2241, 65536
  br i1 %2267, label %2284, label %2268

2268:                                             ; preds = %2266
  %2269 = icmp samesign ult i64 %2241, 16777216
  br i1 %2269, label %2277, label %2270

2270:                                             ; preds = %2268
  %2271 = lshr i64 %2241, 24
  %2272 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2271
  %2273 = load i32, ptr %2272, align 4, !tbaa !5
  %2274 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2273, i32 24), !nosanitize !10
  %2275 = extractvalue { i32, i1 } %2274, 0, !nosanitize !10
  %2276 = extractvalue { i32, i1 } %2274, 1, !nosanitize !10
  br i1 %2276, label %2804, label %2726, !prof !11, !nosanitize !10

2277:                                             ; preds = %2268
  %2278 = lshr i64 %2241, 16
  %2279 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2278
  %2280 = load i32, ptr %2279, align 4, !tbaa !5
  %2281 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2280, i32 16), !nosanitize !10
  %2282 = extractvalue { i32, i1 } %2281, 0, !nosanitize !10
  %2283 = extractvalue { i32, i1 } %2281, 1, !nosanitize !10
  br i1 %2283, label %2804, label %2726, !prof !11, !nosanitize !10

2284:                                             ; preds = %2266
  %2285 = icmp samesign ult i64 %2241, 256
  br i1 %2285, label %2293, label %2286

2286:                                             ; preds = %2284
  %2287 = lshr i64 %2241, 8
  %2288 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2287
  %2289 = load i32, ptr %2288, align 4, !tbaa !5
  %2290 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2289, i32 8), !nosanitize !10
  %2291 = extractvalue { i32, i1 } %2290, 0, !nosanitize !10
  %2292 = extractvalue { i32, i1 } %2290, 1, !nosanitize !10
  br i1 %2292, label %2804, label %2726, !prof !11, !nosanitize !10

2293:                                             ; preds = %2284
  %2294 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2241
  %2295 = load i32, ptr %2294, align 4, !tbaa !5
  br label %2726

2296:                                             ; preds = %2243
  %2297 = icmp slt i32 %2235, 64
  br i1 %2297, label %2298, label %2799

2298:                                             ; preds = %2296
  %2299 = sext i32 %2235 to i64
  %2300 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2299
  store ptr %958, ptr %2300, align 16, !tbaa !50
  %2301 = getelementptr inbounds nuw i8, ptr %2300, i64 8
  store ptr %2192, ptr %2301, align 8, !tbaa !52
  %2302 = getelementptr inbounds nuw i8, ptr %2300, i64 16
  store ptr %956, ptr %2302, align 16, !tbaa !53
  %2303 = add nsw i64 %2241, 2147483648
  %2304 = icmp ult i64 %2303, 4294967296
  br i1 %2304, label %2305, label %2800

2305:                                             ; preds = %2298
  %2306 = icmp ult i64 %2241, 65536
  br i1 %2306, label %2324, label %2307

2307:                                             ; preds = %2305
  %2308 = icmp ult i64 %2241, 16777216
  br i1 %2308, label %2317, label %2309

2309:                                             ; preds = %2307
  %2310 = lshr i64 %2241, 24
  %2311 = and i64 %2310, 255
  %2312 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2311
  %2313 = load i32, ptr %2312, align 4, !tbaa !5
  %2314 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2313, i32 24), !nosanitize !10
  %2315 = extractvalue { i32, i1 } %2314, 0, !nosanitize !10
  %2316 = extractvalue { i32, i1 } %2314, 1, !nosanitize !10
  br i1 %2316, label %2801, label %2336, !prof !11, !nosanitize !10

2317:                                             ; preds = %2307
  %2318 = lshr i64 %2241, 16
  %2319 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2318
  %2320 = load i32, ptr %2319, align 4, !tbaa !5
  %2321 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2320, i32 16), !nosanitize !10
  %2322 = extractvalue { i32, i1 } %2321, 0, !nosanitize !10
  %2323 = extractvalue { i32, i1 } %2321, 1, !nosanitize !10
  br i1 %2323, label %2801, label %2336, !prof !11, !nosanitize !10

2324:                                             ; preds = %2305
  %2325 = icmp samesign ult i64 %2241, 256
  br i1 %2325, label %2333, label %2326

2326:                                             ; preds = %2324
  %2327 = lshr i64 %2241, 8
  %2328 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2327
  %2329 = load i32, ptr %2328, align 4, !tbaa !5
  %2330 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2329, i32 8), !nosanitize !10
  %2331 = extractvalue { i32, i1 } %2330, 0, !nosanitize !10
  %2332 = extractvalue { i32, i1 } %2330, 1, !nosanitize !10
  br i1 %2332, label %2801, label %2336, !prof !11, !nosanitize !10

2333:                                             ; preds = %2324
  %2334 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2241
  %2335 = load i32, ptr %2334, align 4, !tbaa !5
  br label %2336

2336:                                             ; preds = %2333, %2326, %2317, %2309
  %2337 = phi i32 [ %2315, %2309 ], [ %2322, %2317 ], [ %2331, %2326 ], [ %2335, %2333 ]
  %2338 = getelementptr inbounds nuw i8, ptr %2300, i64 24
  store i32 %2337, ptr %2338, align 8, !tbaa !54
  %2339 = add nsw i32 %2235, 1
  %2340 = getelementptr inbounds nuw i8, ptr %2300, i64 28
  store i32 %2236, ptr %2340, align 4, !tbaa !55
  %2341 = icmp samesign ult i64 %2239, 65536
  br i1 %2341, label %2358, label %2342

2342:                                             ; preds = %2336
  %2343 = icmp samesign ult i64 %2239, 16777216
  br i1 %2343, label %2351, label %2344

2344:                                             ; preds = %2342
  %2345 = lshr i64 %2239, 24
  %2346 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2345
  %2347 = load i32, ptr %2346, align 4, !tbaa !5
  %2348 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2347, i32 24), !nosanitize !10
  %2349 = extractvalue { i32, i1 } %2348, 0, !nosanitize !10
  %2350 = extractvalue { i32, i1 } %2348, 1, !nosanitize !10
  br i1 %2350, label %2802, label %2726, !prof !11, !nosanitize !10

2351:                                             ; preds = %2342
  %2352 = lshr i64 %2239, 16
  %2353 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2352
  %2354 = load i32, ptr %2353, align 4, !tbaa !5
  %2355 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2354, i32 16), !nosanitize !10
  %2356 = extractvalue { i32, i1 } %2355, 0, !nosanitize !10
  %2357 = extractvalue { i32, i1 } %2355, 1, !nosanitize !10
  br i1 %2357, label %2802, label %2726, !prof !11, !nosanitize !10

2358:                                             ; preds = %2336
  %2359 = icmp samesign ult i64 %2239, 256
  br i1 %2359, label %2367, label %2360

2360:                                             ; preds = %2358
  %2361 = lshr i64 %2239, 8
  %2362 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2361
  %2363 = load i32, ptr %2362, align 4, !tbaa !5
  %2364 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2363, i32 8), !nosanitize !10
  %2365 = extractvalue { i32, i1 } %2364, 0, !nosanitize !10
  %2366 = extractvalue { i32, i1 } %2364, 1, !nosanitize !10
  br i1 %2366, label %2802, label %2726, !prof !11, !nosanitize !10

2367:                                             ; preds = %2358
  %2368 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2239
  %2369 = load i32, ptr %2368, align 4, !tbaa !5
  br label %2726

2370:                                             ; preds = %2234
  %2371 = icmp sgt i64 %2241, 1
  br i1 %2371, label %2423, label %2372

2372:                                             ; preds = %2370
  %2373 = icmp sgt i64 %2239, 1
  br i1 %2373, label %2391, label %2374

2374:                                             ; preds = %2372
  %2375 = icmp sgt i32 %2235, -1
  br i1 %2375, label %2376, label %2812

2376:                                             ; preds = %2374
  %2377 = icmp eq i32 %2235, 0
  br i1 %2377, label %2709, label %2378

2378:                                             ; preds = %2376
  %2379 = add nsw i32 %2235, -1
  %2380 = zext nneg i32 %2379 to i64
  %2381 = getelementptr inbounds nuw [64 x %struct.anon.1], ptr %6, i64 0, i64 %2380
  %2382 = load ptr, ptr %2381, align 16, !tbaa !50
  %2383 = getelementptr inbounds nuw i8, ptr %2381, i64 8
  %2384 = load ptr, ptr %2383, align 8, !tbaa !52
  %2385 = getelementptr inbounds nuw i8, ptr %2381, i64 16
  %2386 = load ptr, ptr %2385, align 16, !tbaa !53
  %2387 = getelementptr inbounds nuw i8, ptr %2381, i64 24
  %2388 = load i32, ptr %2387, align 8, !tbaa !54
  %2389 = getelementptr inbounds nuw i8, ptr %2381, i64 28
  %2390 = load i32, ptr %2389, align 4, !tbaa !55
  br label %2726

2391:                                             ; preds = %2372
  %2392 = icmp samesign ult i64 %2239, 2147483648
  br i1 %2392, label %2393, label %2810

2393:                                             ; preds = %2391
  %2394 = icmp samesign ult i64 %2239, 65536
  br i1 %2394, label %2411, label %2395

2395:                                             ; preds = %2393
  %2396 = icmp samesign ult i64 %2239, 16777216
  br i1 %2396, label %2404, label %2397

2397:                                             ; preds = %2395
  %2398 = lshr i64 %2239, 24
  %2399 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2398
  %2400 = load i32, ptr %2399, align 4, !tbaa !5
  %2401 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2400, i32 24), !nosanitize !10
  %2402 = extractvalue { i32, i1 } %2401, 0, !nosanitize !10
  %2403 = extractvalue { i32, i1 } %2401, 1, !nosanitize !10
  br i1 %2403, label %2811, label %2726, !prof !11, !nosanitize !10

2404:                                             ; preds = %2395
  %2405 = lshr i64 %2239, 16
  %2406 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2405
  %2407 = load i32, ptr %2406, align 4, !tbaa !5
  %2408 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2407, i32 16), !nosanitize !10
  %2409 = extractvalue { i32, i1 } %2408, 0, !nosanitize !10
  %2410 = extractvalue { i32, i1 } %2408, 1, !nosanitize !10
  br i1 %2410, label %2811, label %2726, !prof !11, !nosanitize !10

2411:                                             ; preds = %2393
  %2412 = icmp samesign ult i64 %2239, 256
  br i1 %2412, label %2420, label %2413

2413:                                             ; preds = %2411
  %2414 = lshr i64 %2239, 8
  %2415 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2414
  %2416 = load i32, ptr %2415, align 4, !tbaa !5
  %2417 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2416, i32 8), !nosanitize !10
  %2418 = extractvalue { i32, i1 } %2417, 0, !nosanitize !10
  %2419 = extractvalue { i32, i1 } %2417, 1, !nosanitize !10
  br i1 %2419, label %2811, label %2726, !prof !11, !nosanitize !10

2420:                                             ; preds = %2411
  %2421 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2239
  %2422 = load i32, ptr %2421, align 4, !tbaa !5
  br label %2726

2423:                                             ; preds = %2370
  %2424 = icmp slt i32 %2235, 64
  br i1 %2424, label %2425, label %2806

2425:                                             ; preds = %2423
  %2426 = sext i32 %2235 to i64
  %2427 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2426
  store ptr %958, ptr %2427, align 16, !tbaa !50
  %2428 = getelementptr inbounds nuw i8, ptr %2427, i64 8
  store ptr %957, ptr %2428, align 8, !tbaa !52
  %2429 = getelementptr inbounds nuw i8, ptr %2427, i64 16
  store ptr %2172, ptr %2429, align 16, !tbaa !53
  %2430 = add nsw i64 %2239, 2147483648
  %2431 = icmp ult i64 %2430, 4294967296
  br i1 %2431, label %2432, label %2807

2432:                                             ; preds = %2425
  %2433 = icmp ult i64 %2239, 65536
  br i1 %2433, label %2451, label %2434

2434:                                             ; preds = %2432
  %2435 = icmp ult i64 %2239, 16777216
  br i1 %2435, label %2444, label %2436

2436:                                             ; preds = %2434
  %2437 = lshr i64 %2239, 24
  %2438 = and i64 %2437, 255
  %2439 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2438
  %2440 = load i32, ptr %2439, align 4, !tbaa !5
  %2441 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2440, i32 24), !nosanitize !10
  %2442 = extractvalue { i32, i1 } %2441, 0, !nosanitize !10
  %2443 = extractvalue { i32, i1 } %2441, 1, !nosanitize !10
  br i1 %2443, label %2808, label %2463, !prof !11, !nosanitize !10

2444:                                             ; preds = %2434
  %2445 = lshr i64 %2239, 16
  %2446 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2445
  %2447 = load i32, ptr %2446, align 4, !tbaa !5
  %2448 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2447, i32 16), !nosanitize !10
  %2449 = extractvalue { i32, i1 } %2448, 0, !nosanitize !10
  %2450 = extractvalue { i32, i1 } %2448, 1, !nosanitize !10
  br i1 %2450, label %2808, label %2463, !prof !11, !nosanitize !10

2451:                                             ; preds = %2432
  %2452 = icmp samesign ult i64 %2239, 256
  br i1 %2452, label %2460, label %2453

2453:                                             ; preds = %2451
  %2454 = lshr i64 %2239, 8
  %2455 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2454
  %2456 = load i32, ptr %2455, align 4, !tbaa !5
  %2457 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2456, i32 8), !nosanitize !10
  %2458 = extractvalue { i32, i1 } %2457, 0, !nosanitize !10
  %2459 = extractvalue { i32, i1 } %2457, 1, !nosanitize !10
  br i1 %2459, label %2808, label %2463, !prof !11, !nosanitize !10

2460:                                             ; preds = %2451
  %2461 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2239
  %2462 = load i32, ptr %2461, align 4, !tbaa !5
  br label %2463

2463:                                             ; preds = %2460, %2453, %2444, %2436
  %2464 = phi i32 [ %2442, %2436 ], [ %2449, %2444 ], [ %2458, %2453 ], [ %2462, %2460 ]
  %2465 = getelementptr inbounds nuw i8, ptr %2427, i64 24
  store i32 %2464, ptr %2465, align 8, !tbaa !54
  %2466 = add nsw i32 %2235, 1
  %2467 = getelementptr inbounds nuw i8, ptr %2427, i64 28
  store i32 %2236, ptr %2467, align 4, !tbaa !55
  %2468 = icmp samesign ult i64 %2241, 65536
  br i1 %2468, label %2485, label %2469

2469:                                             ; preds = %2463
  %2470 = icmp samesign ult i64 %2241, 16777216
  br i1 %2470, label %2478, label %2471

2471:                                             ; preds = %2469
  %2472 = lshr i64 %2241, 24
  %2473 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2472
  %2474 = load i32, ptr %2473, align 4, !tbaa !5
  %2475 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2474, i32 24), !nosanitize !10
  %2476 = extractvalue { i32, i1 } %2475, 0, !nosanitize !10
  %2477 = extractvalue { i32, i1 } %2475, 1, !nosanitize !10
  br i1 %2477, label %2809, label %2726, !prof !11, !nosanitize !10

2478:                                             ; preds = %2469
  %2479 = lshr i64 %2241, 16
  %2480 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2479
  %2481 = load i32, ptr %2480, align 4, !tbaa !5
  %2482 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2481, i32 16), !nosanitize !10
  %2483 = extractvalue { i32, i1 } %2482, 0, !nosanitize !10
  %2484 = extractvalue { i32, i1 } %2482, 1, !nosanitize !10
  br i1 %2484, label %2809, label %2726, !prof !11, !nosanitize !10

2485:                                             ; preds = %2463
  %2486 = icmp samesign ult i64 %2241, 256
  br i1 %2486, label %2494, label %2487

2487:                                             ; preds = %2485
  %2488 = lshr i64 %2241, 8
  %2489 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2488
  %2490 = load i32, ptr %2489, align 4, !tbaa !5
  %2491 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2490, i32 8), !nosanitize !10
  %2492 = extractvalue { i32, i1 } %2491, 0, !nosanitize !10
  %2493 = extractvalue { i32, i1 } %2491, 1, !nosanitize !10
  br i1 %2493, label %2809, label %2726, !prof !11, !nosanitize !10

2494:                                             ; preds = %2485
  %2495 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2241
  %2496 = load i32, ptr %2495, align 4, !tbaa !5
  br label %2726

2497:                                             ; preds = %1912, %1910
  %2498 = load i32, ptr %957, align 4, !tbaa !5
  %2499 = icmp sgt i32 %2498, -1
  br i1 %2499, label %2500, label %2518

2500:                                             ; preds = %2497, %2514
  %2501 = phi i32 [ %2515, %2514 ], [ %2498, %2497 ]
  %2502 = phi ptr [ %2512, %2514 ], [ %957, %2497 ]
  %2503 = ptrtoint ptr %2502 to i64
  %2504 = sub i64 %2503, %876
  %2505 = ashr exact i64 %2504, 2
  %2506 = add nsw i64 %2505, 2147483648
  %2507 = icmp ult i64 %2506, 4294967296
  br i1 %2507, label %2508, label %2826

2508:                                             ; preds = %2500
  %2509 = trunc nsw i64 %2505 to i32
  %2510 = zext nneg i32 %2501 to i64
  %2511 = getelementptr inbounds nuw i32, ptr %148, i64 %2510
  store i32 %2509, ptr %2511, align 4, !tbaa !5
  %2512 = getelementptr inbounds nuw i8, ptr %2502, i64 4
  %2513 = icmp ult ptr %2512, %956
  br i1 %2513, label %2514, label %2517

2514:                                             ; preds = %2508
  %2515 = load i32, ptr %2512, align 4, !tbaa !5
  %2516 = icmp sgt i32 %2515, -1
  br i1 %2516, label %2500, label %2517, !llvm.loop !73

2517:                                             ; preds = %2514, %2508
  store ptr %2512, ptr %7, align 8
  br label %2518

2518:                                             ; preds = %2517, %2497
  %2519 = phi ptr [ %957, %2497 ], [ %2512, %2517 ]
  %2520 = icmp ult ptr %2519, %956
  br i1 %2520, label %2538, label %2521

2521:                                             ; preds = %2518
  %2522 = icmp sgt i32 %960, -1
  br i1 %2522, label %2523, label %2836

2523:                                             ; preds = %2521
  %2524 = icmp eq i32 %960, 0
  br i1 %2524, label %2709, label %2525

2525:                                             ; preds = %2523
  %2526 = add nsw i32 %960, -1
  %2527 = zext nneg i32 %2526 to i64
  %2528 = getelementptr inbounds nuw [64 x %struct.anon.1], ptr %6, i64 0, i64 %2527
  %2529 = load ptr, ptr %2528, align 16, !tbaa !50
  %2530 = getelementptr inbounds nuw i8, ptr %2528, i64 8
  %2531 = load ptr, ptr %2530, align 8, !tbaa !52
  %2532 = getelementptr inbounds nuw i8, ptr %2528, i64 16
  %2533 = load ptr, ptr %2532, align 16, !tbaa !53
  %2534 = getelementptr inbounds nuw i8, ptr %2528, i64 24
  %2535 = load i32, ptr %2534, align 8, !tbaa !54
  %2536 = getelementptr inbounds nuw i8, ptr %2528, i64 28
  %2537 = load i32, ptr %2536, align 4, !tbaa !55
  br label %2726

2538:                                             ; preds = %2518
  %2539 = load i32, ptr %2519, align 4, !tbaa !5
  br label %2540

2540:                                             ; preds = %2540, %2538
  %2541 = phi i32 [ %2545, %2540 ], [ %2539, %2538 ]
  %2542 = phi ptr [ %2544, %2540 ], [ %2519, %2538 ]
  %2543 = xor i32 %2541, -1
  store i32 %2543, ptr %2542, align 4, !tbaa !5
  %2544 = getelementptr inbounds nuw i8, ptr %2542, i64 4
  %2545 = load i32, ptr %2544, align 4, !tbaa !5
  %2546 = icmp slt i32 %2545, 0
  br i1 %2546, label %2540, label %2547, !llvm.loop !74

2547:                                             ; preds = %2540
  %2548 = zext nneg i32 %2545 to i64
  %2549 = getelementptr inbounds nuw i32, ptr %148, i64 %2548
  %2550 = load i32, ptr %2549, align 4, !tbaa !5
  %2551 = getelementptr inbounds nuw i32, ptr %958, i64 %2548
  %2552 = load i32, ptr %2551, align 4, !tbaa !5
  %2553 = icmp eq i32 %2550, %2552
  br i1 %2553, label %2597, label %2554

2554:                                             ; preds = %2547
  %2555 = ptrtoint ptr %2544 to i64
  %2556 = ptrtoint ptr %2519 to i64
  %2557 = sub i64 %2555, %2556
  %2558 = ashr exact i64 %2557, 2
  %2559 = add nsw i64 %2558, 2147483649
  %2560 = icmp ult i64 %2559, 4294967296
  br i1 %2560, label %2561, label %2827

2561:                                             ; preds = %2554
  %2562 = trunc i64 %2558 to i32
  %2563 = add i32 %2562, 1
  %2564 = icmp ult i32 %2563, 65536
  br i1 %2564, label %2583, label %2565

2565:                                             ; preds = %2561
  %2566 = icmp ult i32 %2563, 16777216
  br i1 %2566, label %2575, label %2567

2567:                                             ; preds = %2565
  %2568 = lshr i32 %2563, 24
  %2569 = zext nneg i32 %2568 to i64
  %2570 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2569
  %2571 = load i32, ptr %2570, align 4, !tbaa !5
  %2572 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2571, i32 24), !nosanitize !10
  %2573 = extractvalue { i32, i1 } %2572, 0, !nosanitize !10
  %2574 = extractvalue { i32, i1 } %2572, 1, !nosanitize !10
  br i1 %2574, label %2828, label %2597, !prof !11, !nosanitize !10

2575:                                             ; preds = %2565
  %2576 = lshr i32 %2563, 16
  %2577 = zext nneg i32 %2576 to i64
  %2578 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2577
  %2579 = load i32, ptr %2578, align 4, !tbaa !5
  %2580 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2579, i32 16), !nosanitize !10
  %2581 = extractvalue { i32, i1 } %2580, 0, !nosanitize !10
  %2582 = extractvalue { i32, i1 } %2580, 1, !nosanitize !10
  br i1 %2582, label %2828, label %2597, !prof !11, !nosanitize !10

2583:                                             ; preds = %2561
  %2584 = icmp samesign ult i32 %2563, 256
  br i1 %2584, label %2593, label %2585

2585:                                             ; preds = %2583
  %2586 = lshr i32 %2563, 8
  %2587 = zext nneg i32 %2586 to i64
  %2588 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2587
  %2589 = load i32, ptr %2588, align 4, !tbaa !5
  %2590 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2589, i32 8), !nosanitize !10
  %2591 = extractvalue { i32, i1 } %2590, 0, !nosanitize !10
  %2592 = extractvalue { i32, i1 } %2590, 1, !nosanitize !10
  br i1 %2592, label %2828, label %2597, !prof !11, !nosanitize !10

2593:                                             ; preds = %2583
  %2594 = zext nneg i32 %2563 to i64
  %2595 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %2594
  %2596 = load i32, ptr %2595, align 4, !tbaa !5
  br label %2597

2597:                                             ; preds = %2593, %2585, %2575, %2567, %2547
  %2598 = phi i32 [ -1, %2547 ], [ %2573, %2567 ], [ %2581, %2575 ], [ %2591, %2585 ], [ %2596, %2593 ]
  %2599 = getelementptr inbounds nuw i8, ptr %2542, i64 8
  store ptr %2599, ptr %7, align 8, !tbaa !45
  %2600 = icmp ult ptr %2599, %956
  %2601 = ptrtoint ptr %2599 to i64
  br i1 %2600, label %2602, label %2620

2602:                                             ; preds = %2597
  %2603 = sub i64 %2601, %876
  %2604 = ashr exact i64 %2603, 2
  %2605 = add nsw i64 %2604, 2147483647
  %2606 = icmp ult i64 %2605, 4294967296
  br i1 %2606, label %2607, label %2829

2607:                                             ; preds = %2602
  %2608 = trunc i64 %2604 to i32
  %2609 = add i32 %2608, -1
  %2610 = icmp ult ptr %2519, %2599
  br i1 %2610, label %2611, label %2618

2611:                                             ; preds = %2607, %2611
  %2612 = phi ptr [ %2616, %2611 ], [ %2519, %2607 ]
  %2613 = load i32, ptr %2612, align 4, !tbaa !5
  %2614 = sext i32 %2613 to i64
  %2615 = getelementptr inbounds i32, ptr %148, i64 %2614
  store i32 %2609, ptr %2615, align 4, !tbaa !5
  %2616 = getelementptr inbounds nuw i8, ptr %2612, i64 4
  %2617 = icmp ult ptr %2616, %2599
  br i1 %2617, label %2611, label %2618, !llvm.loop !75

2618:                                             ; preds = %2611, %2607
  %2619 = phi ptr [ %2519, %2607 ], [ %2616, %2611 ]
  store ptr %2619, ptr %8, align 8
  br label %2620

2620:                                             ; preds = %2618, %2597
  %2621 = ptrtoint ptr %2519 to i64
  %2622 = sub i64 %2601, %2621
  %2623 = ashr exact i64 %2622, 2
  %2624 = add nsw i64 %2623, 2147483648
  %2625 = icmp ult i64 %2624, 4294967296
  br i1 %2625, label %2626, label %2830

2626:                                             ; preds = %2620
  %2627 = trunc nsw i64 %2623 to i32
  %2628 = icmp slt i32 %953, %2627
  br i1 %2628, label %2632, label %2629

2629:                                             ; preds = %2626
  %2630 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %953, i32 %2627), !nosanitize !10
  %2631 = extractvalue { i32, i1 } %2630, 1, !nosanitize !10
  br i1 %2631, label %2831, label %2646, !prof !11, !nosanitize !10

2632:                                             ; preds = %2626
  %2633 = icmp eq i32 %954, 0
  br i1 %2633, label %2679, label %2634

2634:                                             ; preds = %2632
  %2635 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 range(i32 1, -2147483648) %84, i32 %2627), !nosanitize !10
  %2636 = extractvalue { i32, i1 } %2635, 1, !nosanitize !10
  br i1 %2636, label %2831, label %2637, !prof !11, !nosanitize !10

2637:                                             ; preds = %2634
  %2638 = extractvalue { i32, i1 } %2635, 0, !nosanitize !10
  %2639 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %953, i32 %2638), !nosanitize !10
  %2640 = extractvalue { i32, i1 } %2639, 1, !nosanitize !10
  br i1 %2640, label %2832, label %2641, !prof !11, !nosanitize !10

2641:                                             ; preds = %2637
  %2642 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %954, i32 -1)
  %2643 = extractvalue { i32, i1 } %2642, 1, !nosanitize !10
  br i1 %2643, label %2831, label %2644, !prof !11, !nosanitize !10

2644:                                             ; preds = %2641
  %2645 = extractvalue { i32, i1 } %2642, 0, !nosanitize !10
  br label %2646

2646:                                             ; preds = %2644, %2629
  %2647 = phi { i32, i1 } [ %2639, %2644 ], [ %2630, %2629 ]
  %2648 = phi i32 [ %2645, %2644 ], [ %954, %2629 ]
  %2649 = extractvalue { i32, i1 } %2647, 0
  %2650 = ptrtoint ptr %956 to i64
  %2651 = sub i64 %2650, %2601
  %2652 = icmp sgt i64 %2622, %2651
  br i1 %2652, label %2664, label %2653

2653:                                             ; preds = %2646
  %2654 = icmp slt i32 %960, 64
  br i1 %2654, label %2655, label %2833

2655:                                             ; preds = %2653
  %2656 = sext i32 %960 to i64
  %2657 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2656
  store ptr %958, ptr %2657, align 16, !tbaa !50
  %2658 = getelementptr inbounds nuw i8, ptr %2657, i64 8
  store ptr %2599, ptr %2658, align 8, !tbaa !52
  %2659 = getelementptr inbounds nuw i8, ptr %2657, i64 16
  store ptr %956, ptr %2659, align 16, !tbaa !53
  %2660 = getelementptr inbounds nuw i8, ptr %2657, i64 24
  store i32 -3, ptr %2660, align 8, !tbaa !54
  %2661 = add nsw i32 %960, 1
  %2662 = getelementptr inbounds nuw i8, ptr %2657, i64 28
  store i32 %961, ptr %2662, align 4, !tbaa !55
  %2663 = getelementptr inbounds i32, ptr %958, i64 %888
  br label %2726

2664:                                             ; preds = %2646
  %2665 = icmp sgt i64 %2651, 4
  br i1 %2665, label %2668, label %2666

2666:                                             ; preds = %2664
  %2667 = getelementptr inbounds i32, ptr %958, i64 %888
  br label %2726

2668:                                             ; preds = %2664
  %2669 = icmp slt i32 %960, 64
  br i1 %2669, label %2670, label %2834

2670:                                             ; preds = %2668
  %2671 = getelementptr inbounds i32, ptr %958, i64 %888
  %2672 = sext i32 %960 to i64
  %2673 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2672
  store ptr %2671, ptr %2673, align 16, !tbaa !50
  %2674 = getelementptr inbounds nuw i8, ptr %2673, i64 8
  store ptr %2519, ptr %2674, align 8, !tbaa !52
  %2675 = getelementptr inbounds nuw i8, ptr %2673, i64 16
  store ptr %2599, ptr %2675, align 16, !tbaa !53
  %2676 = getelementptr inbounds nuw i8, ptr %2673, i64 24
  store i32 %2598, ptr %2676, align 8, !tbaa !54
  %2677 = add nsw i32 %960, 1
  %2678 = getelementptr inbounds nuw i8, ptr %2673, i64 28
  store i32 %961, ptr %2678, align 4, !tbaa !55
  br label %2726

2679:                                             ; preds = %2632
  %2680 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %952, i32 %2627), !nosanitize !10
  %2681 = extractvalue { i32, i1 } %2680, 1, !nosanitize !10
  br i1 %2681, label %2832, label %2682, !prof !11, !nosanitize !10

2682:                                             ; preds = %2679
  %2683 = extractvalue { i32, i1 } %2680, 0, !nosanitize !10
  %2684 = icmp sgt i32 %961, -1
  br i1 %2684, label %2685, label %2688

2685:                                             ; preds = %2682
  %2686 = zext nneg i32 %961 to i64
  %2687 = getelementptr inbounds nuw [64 x %struct.anon.1], ptr %6, i64 0, i64 %2686, i32 3
  store i32 -1, ptr %2687, align 8, !tbaa !54
  br label %2688

2688:                                             ; preds = %2685, %2682
  %2689 = ptrtoint ptr %956 to i64
  %2690 = sub i64 %2689, %2601
  %2691 = icmp sgt i64 %2690, 4
  br i1 %2691, label %2726, label %2692

2692:                                             ; preds = %2688
  %2693 = icmp sgt i32 %960, -1
  br i1 %2693, label %2694, label %2835

2694:                                             ; preds = %2692
  %2695 = icmp eq i32 %960, 0
  br i1 %2695, label %2709, label %2696

2696:                                             ; preds = %2694
  %2697 = add nsw i32 %960, -1
  %2698 = zext nneg i32 %2697 to i64
  %2699 = getelementptr inbounds nuw [64 x %struct.anon.1], ptr %6, i64 0, i64 %2698
  %2700 = load ptr, ptr %2699, align 16, !tbaa !50
  %2701 = getelementptr inbounds nuw i8, ptr %2699, i64 8
  %2702 = load ptr, ptr %2701, align 8, !tbaa !52
  %2703 = getelementptr inbounds nuw i8, ptr %2699, i64 16
  %2704 = load ptr, ptr %2703, align 16, !tbaa !53
  %2705 = getelementptr inbounds nuw i8, ptr %2699, i64 24
  %2706 = load i32, ptr %2705, align 8, !tbaa !54
  %2707 = getelementptr inbounds nuw i8, ptr %2699, i64 28
  %2708 = load i32, ptr %2707, align 4, !tbaa !55
  br label %2726

2709:                                             ; preds = %2694, %2523, %2376, %2249, %2147, %1668, %1581, %1550
  %2710 = phi i32 [ 0, %2694 ], [ %954, %2523 ], [ %954, %2376 ], [ %954, %2249 ], [ %954, %2147 ], [ 0, %1668 ], [ %954, %1581 ], [ %954, %1550 ]
  %2711 = phi i32 [ %2683, %2694 ], [ %952, %2523 ], [ %952, %2376 ], [ %952, %2249 ], [ %952, %2147 ], [ %1661, %1668 ], [ %1531, %1581 ], [ %1531, %1550 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #12
  %2712 = icmp eq i32 %2711, 0
  br i1 %2712, label %2719, label %2713

2713:                                             ; preds = %2709
  %2714 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %896, i32 %2711), !nosanitize !10
  %2715 = extractvalue { i32, i1 } %2714, 1, !nosanitize !10
  br i1 %2715, label %2768, label %2716, !prof !11, !nosanitize !10

2716:                                             ; preds = %2713
  %2717 = extractvalue { i32, i1 } %2714, 0, !nosanitize !10
  %2718 = icmp ult ptr %908, %148
  br i1 %2718, label %2751, label %2892, !llvm.loop !76

2719:                                             ; preds = %2709
  %2720 = sub i64 %910, %909
  %2721 = ashr exact i64 %2720, 2
  %2722 = add nsw i64 %2721, 2147483648
  %2723 = icmp ult i64 %2722, 4294967296
  br i1 %2723, label %2724, label %2874

2724:                                             ; preds = %2719
  %2725 = trunc nsw i64 %2721 to i32
  br label %2745

2726:                                             ; preds = %2696, %2688, %2670, %2666, %2655, %2525, %2494, %2487, %2478, %2471, %2420, %2413, %2404, %2397, %2378, %2367, %2360, %2351, %2344, %2293, %2286, %2277, %2270, %2251, %2149, %1670, %1654, %1598, %1583, %1577, %1567, %1552, %1546, %1515, %1495, %1477, %1462, %1442, %1438, %1422, %1402, %1384, %1369, %1349, %1345
  %2727 = phi i32 [ %2683, %2688 ], [ %2683, %2696 ], [ %952, %2670 ], [ %952, %2666 ], [ %952, %2655 ], [ %952, %2525 ], [ %952, %2494 ], [ %952, %2487 ], [ %952, %2478 ], [ %952, %2471 ], [ %952, %2420 ], [ %952, %2413 ], [ %952, %2404 ], [ %952, %2397 ], [ %952, %2378 ], [ %952, %2367 ], [ %952, %2360 ], [ %952, %2351 ], [ %952, %2344 ], [ %952, %2293 ], [ %952, %2286 ], [ %952, %2277 ], [ %952, %2270 ], [ %952, %2251 ], [ %952, %2149 ], [ %1661, %1670 ], [ %952, %1654 ], [ %1531, %1598 ], [ %1531, %1577 ], [ %1531, %1583 ], [ %1531, %1567 ], [ %1531, %1546 ], [ %1531, %1552 ], [ %952, %1515 ], [ %952, %1495 ], [ %952, %1477 ], [ %952, %1462 ], [ %952, %1442 ], [ %952, %1438 ], [ %952, %1422 ], [ %952, %1402 ], [ %952, %1384 ], [ %952, %1369 ], [ %952, %1349 ], [ %952, %1345 ]
  %2728 = phi i32 [ %953, %2688 ], [ %953, %2696 ], [ %2649, %2670 ], [ %2649, %2666 ], [ %2649, %2655 ], [ %953, %2525 ], [ %953, %2494 ], [ %953, %2487 ], [ %953, %2478 ], [ %953, %2471 ], [ %953, %2420 ], [ %953, %2413 ], [ %953, %2404 ], [ %953, %2397 ], [ %953, %2378 ], [ %953, %2367 ], [ %953, %2360 ], [ %953, %2351 ], [ %953, %2344 ], [ %953, %2293 ], [ %953, %2286 ], [ %953, %2277 ], [ %953, %2270 ], [ %953, %2251 ], [ %953, %2149 ], [ %953, %1670 ], [ %1623, %1654 ], [ %953, %1598 ], [ %953, %1577 ], [ %953, %1583 ], [ %953, %1567 ], [ %953, %1546 ], [ %953, %1552 ], [ %1332, %1515 ], [ %1332, %1495 ], [ %1332, %1477 ], [ %1332, %1462 ], [ %1332, %1442 ], [ %1332, %1438 ], [ %1332, %1422 ], [ %1332, %1402 ], [ %1332, %1384 ], [ %1332, %1369 ], [ %1332, %1349 ], [ %1332, %1345 ]
  %2729 = phi i32 [ 0, %2688 ], [ 0, %2696 ], [ %2648, %2670 ], [ %2648, %2666 ], [ %2648, %2655 ], [ %954, %2525 ], [ %954, %2494 ], [ %954, %2487 ], [ %954, %2478 ], [ %954, %2471 ], [ %954, %2420 ], [ %954, %2413 ], [ %954, %2404 ], [ %954, %2397 ], [ %954, %2378 ], [ %954, %2367 ], [ %954, %2360 ], [ %954, %2351 ], [ %954, %2344 ], [ %954, %2293 ], [ %954, %2286 ], [ %954, %2277 ], [ %954, %2270 ], [ %954, %2251 ], [ %954, %2149 ], [ 0, %1670 ], [ %1624, %1654 ], [ %954, %1598 ], [ %954, %1577 ], [ %954, %1583 ], [ %954, %1567 ], [ %954, %1546 ], [ %954, %1552 ], [ %1333, %1515 ], [ %1333, %1495 ], [ %1333, %1477 ], [ %1333, %1462 ], [ %1333, %1442 ], [ %1333, %1438 ], [ %1333, %1422 ], [ %1333, %1402 ], [ %1333, %1384 ], [ %1333, %1369 ], [ %1333, %1349 ], [ %1333, %1345 ]
  %2730 = phi ptr [ %956, %2688 ], [ %2704, %2696 ], [ %956, %2670 ], [ %2599, %2666 ], [ %2599, %2655 ], [ %2533, %2525 ], [ %956, %2494 ], [ %956, %2487 ], [ %956, %2478 ], [ %956, %2471 ], [ %2172, %2420 ], [ %2172, %2413 ], [ %2172, %2404 ], [ %2172, %2397 ], [ %2386, %2378 ], [ %2172, %2367 ], [ %2172, %2360 ], [ %2172, %2351 ], [ %2172, %2344 ], [ %956, %2293 ], [ %956, %2286 ], [ %956, %2277 ], [ %956, %2270 ], [ %2259, %2251 ], [ %2157, %2149 ], [ %1678, %1670 ], [ %956, %1654 ], [ %956, %1598 ], [ %1229, %1577 ], [ %1591, %1583 ], [ %1229, %1567 ], [ %956, %1546 ], [ %1560, %1552 ], [ %1228, %1515 ], [ %956, %1495 ], [ %1228, %1477 ], [ %956, %1462 ], [ %1229, %1442 ], [ %1228, %1438 ], [ %1228, %1422 ], [ %1229, %1402 ], [ %1228, %1384 ], [ %1229, %1369 ], [ %956, %1349 ], [ %1228, %1345 ]
  %2731 = phi ptr [ %2599, %2688 ], [ %2702, %2696 ], [ %2599, %2670 ], [ %2519, %2666 ], [ %2519, %2655 ], [ %2531, %2525 ], [ %2192, %2494 ], [ %2192, %2487 ], [ %2192, %2478 ], [ %2192, %2471 ], [ %957, %2420 ], [ %957, %2413 ], [ %957, %2404 ], [ %957, %2397 ], [ %2384, %2378 ], [ %957, %2367 ], [ %957, %2360 ], [ %957, %2351 ], [ %957, %2344 ], [ %2192, %2293 ], [ %2192, %2286 ], [ %2192, %2277 ], [ %2192, %2270 ], [ %2257, %2251 ], [ %2155, %2149 ], [ %1676, %1670 ], [ %957, %1654 ], [ %1228, %1598 ], [ %957, %1577 ], [ %1589, %1583 ], [ %957, %1567 ], [ %1228, %1546 ], [ %1558, %1552 ], [ %1229, %1515 ], [ %1228, %1495 ], [ %1229, %1477 ], [ %1228, %1462 ], [ %957, %1442 ], [ %1229, %1438 ], [ %1229, %1422 ], [ %957, %1402 ], [ %1229, %1384 ], [ %957, %1369 ], [ %1228, %1349 ], [ %1229, %1345 ]
  %2732 = phi ptr [ %958, %2688 ], [ %2700, %2696 ], [ %958, %2670 ], [ %2667, %2666 ], [ %2663, %2655 ], [ %2529, %2525 ], [ %958, %2494 ], [ %958, %2487 ], [ %958, %2478 ], [ %958, %2471 ], [ %958, %2420 ], [ %958, %2413 ], [ %958, %2404 ], [ %958, %2397 ], [ %2382, %2378 ], [ %958, %2367 ], [ %958, %2360 ], [ %958, %2351 ], [ %958, %2344 ], [ %958, %2293 ], [ %958, %2286 ], [ %958, %2277 ], [ %958, %2270 ], [ %2255, %2251 ], [ %2153, %2149 ], [ %1674, %1670 ], [ %1656, %1654 ], [ %958, %1598 ], [ %958, %1577 ], [ %1587, %1583 ], [ %958, %1567 ], [ %958, %1546 ], [ %1556, %1552 ], [ %1524, %1515 ], [ %958, %1495 ], [ %1485, %1477 ], [ %958, %1462 ], [ %958, %1442 ], [ %1439, %1438 ], [ %1431, %1422 ], [ %958, %1402 ], [ %1392, %1384 ], [ %958, %1369 ], [ %958, %1349 ], [ %1346, %1345 ]
  %2733 = phi i32 [ -3, %2688 ], [ %2706, %2696 ], [ -3, %2670 ], [ %2598, %2666 ], [ %2598, %2655 ], [ %2535, %2525 ], [ %2496, %2494 ], [ %2492, %2487 ], [ %2483, %2478 ], [ %2476, %2471 ], [ %2422, %2420 ], [ %2418, %2413 ], [ %2409, %2404 ], [ %2402, %2397 ], [ %2388, %2378 ], [ %2369, %2367 ], [ %2365, %2360 ], [ %2356, %2351 ], [ %2349, %2344 ], [ %2295, %2293 ], [ %2291, %2286 ], [ %2282, %2277 ], [ %2275, %2270 ], [ %2261, %2251 ], [ %2159, %2149 ], [ %1680, %1670 ], [ %1655, %1654 ], [ %986, %1598 ], [ %986, %1577 ], [ %1593, %1583 ], [ %986, %1567 ], [ %986, %1546 ], [ %1562, %1552 ], [ %1276, %1515 ], [ %986, %1495 ], [ %1276, %1477 ], [ %986, %1462 ], [ %986, %1442 ], [ %1276, %1438 ], [ %1276, %1422 ], [ %986, %1402 ], [ %1276, %1384 ], [ %986, %1369 ], [ %986, %1349 ], [ %1276, %1345 ]
  %2734 = phi i32 [ %960, %2688 ], [ %2697, %2696 ], [ %2677, %2670 ], [ %960, %2666 ], [ %2661, %2655 ], [ %2526, %2525 ], [ %2466, %2494 ], [ %2466, %2487 ], [ %2466, %2478 ], [ %2466, %2471 ], [ %2235, %2420 ], [ %2235, %2413 ], [ %2235, %2404 ], [ %2235, %2397 ], [ %2379, %2378 ], [ %2339, %2367 ], [ %2339, %2360 ], [ %2339, %2351 ], [ %2339, %2344 ], [ %2235, %2293 ], [ %2235, %2286 ], [ %2235, %2277 ], [ %2235, %2270 ], [ %2252, %2251 ], [ %2150, %2149 ], [ %1671, %1670 ], [ %960, %1654 ], [ %1604, %1598 ], [ %960, %1577 ], [ %1584, %1583 ], [ %1573, %1567 ], [ %960, %1546 ], [ %1553, %1552 ], [ %1522, %1515 ], [ %1503, %1495 ], [ %1483, %1477 ], [ %1469, %1462 ], [ %1449, %1442 ], [ %960, %1438 ], [ %1429, %1422 ], [ %1410, %1402 ], [ %1390, %1384 ], [ %1376, %1369 ], [ %1356, %1349 ], [ %960, %1345 ]
  %2735 = phi i32 [ %961, %2688 ], [ %2708, %2696 ], [ %961, %2670 ], [ %961, %2666 ], [ %961, %2655 ], [ %2537, %2525 ], [ %2236, %2494 ], [ %2236, %2487 ], [ %2236, %2478 ], [ %2236, %2471 ], [ %2236, %2420 ], [ %2236, %2413 ], [ %2236, %2404 ], [ %2236, %2397 ], [ %2390, %2378 ], [ %2236, %2367 ], [ %2236, %2360 ], [ %2236, %2351 ], [ %2236, %2344 ], [ %2236, %2293 ], [ %2236, %2286 ], [ %2236, %2277 ], [ %2236, %2270 ], [ %2263, %2251 ], [ %2161, %2149 ], [ %1682, %1670 ], [ %961, %1654 ], [ %961, %1598 ], [ %961, %1577 ], [ %1595, %1583 ], [ %961, %1567 ], [ %961, %1546 ], [ %1564, %1552 ], [ %961, %1515 ], [ %961, %1495 ], [ %961, %1477 ], [ %961, %1462 ], [ %961, %1442 ], [ %961, %1438 ], [ %961, %1422 ], [ %961, %1402 ], [ %961, %1384 ], [ %961, %1369 ], [ %961, %1349 ], [ %961, %1345 ]
  %2736 = load ptr, ptr %7, align 8
  br label %951

2737:                                             ; preds = %890
  %2738 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %895, i32 %891), !nosanitize !10
  %2739 = extractvalue { i32, i1 } %2738, 1, !nosanitize !10
  br i1 %2739, label %2768, label %2740, !prof !11, !nosanitize !10

2740:                                             ; preds = %2737
  %2741 = extractvalue { i32, i1 } %2738, 0, !nosanitize !10
  %2742 = sext i32 %891 to i64
  %2743 = sub nsw i64 0, %2742
  %2744 = getelementptr inbounds nuw i32, ptr %894, i64 %2743
  br label %2745

2745:                                             ; preds = %2740, %2724, %913
  %2746 = phi i32 [ %892, %2740 ], [ %953, %2724 ], [ %892, %913 ]
  %2747 = phi i32 [ %893, %2740 ], [ %2710, %2724 ], [ %893, %913 ]
  %2748 = phi ptr [ %2744, %2740 ], [ %908, %2724 ], [ %908, %913 ]
  %2749 = phi i32 [ %2741, %2740 ], [ %2725, %2724 ], [ %915, %913 ]
  %2750 = icmp ult ptr %2748, %148
  br i1 %2750, label %2751, label %2882, !llvm.loop !76

2751:                                             ; preds = %2745, %2716
  %2752 = phi i32 [ %2717, %2716 ], [ %896, %2745 ]
  %2753 = phi i32 [ 0, %2716 ], [ %2749, %2745 ]
  %2754 = phi ptr [ %908, %2716 ], [ %2748, %2745 ]
  %2755 = phi i32 [ %2710, %2716 ], [ %2747, %2745 ]
  %2756 = phi i32 [ %953, %2716 ], [ %2746, %2745 ]
  %2757 = load i32, ptr %2754, align 4, !tbaa !5
  br label %890

2758:                                             ; preds = %2878
  %2759 = load i32, ptr %2879, align 4, !tbaa !5
  br label %2760

2760:                                             ; preds = %877, %2758
  %2761 = phi i32 [ %2759, %2758 ], [ %878, %877 ]
  %2762 = phi ptr [ %2879, %2758 ], [ %1, %877 ]
  %2763 = phi i32 [ %2880, %2758 ], [ 0, %877 ]
  %2764 = icmp slt i32 %2761, 0
  br i1 %2764, label %2765, label %2774

2765:                                             ; preds = %2760
  %2766 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2763, i32 %2761), !nosanitize !10
  %2767 = extractvalue { i32, i1 } %2766, 1, !nosanitize !10
  br i1 %2767, label %2768, label %2769, !prof !11, !nosanitize !10

2768:                                             ; preds = %2765, %2737, %2713
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2769:                                             ; preds = %2765
  %2770 = extractvalue { i32, i1 } %2766, 0, !nosanitize !10
  %2771 = sext i32 %2761 to i64
  %2772 = sub nsw i64 0, %2771
  %2773 = getelementptr inbounds nuw i32, ptr %2762, i64 %2772
  br label %2878

2774:                                             ; preds = %2760
  %2775 = icmp eq i32 %2763, 0
  br i1 %2775, label %2779, label %2776

2776:                                             ; preds = %2774
  %2777 = sext i32 %2763 to i64
  %2778 = getelementptr inbounds i32, ptr %2762, i64 %2777
  store i32 %2763, ptr %2778, align 4, !tbaa !5
  br label %2779

2779:                                             ; preds = %2776, %2774
  %2780 = zext nneg i32 %2761 to i64
  %2781 = getelementptr inbounds nuw i32, ptr %148, i64 %2780
  %2782 = load i32, ptr %2781, align 4, !tbaa !5
  %2783 = sext i32 %2782 to i64
  %2784 = getelementptr i32, ptr %874, i64 %2783
  %2785 = ptrtoint ptr %2784 to i64
  %2786 = ptrtoint ptr %2762 to i64
  %2787 = sub i64 %2785, %2786
  %2788 = icmp sgt i64 %2787, 4
  br i1 %2788, label %2789, label %2875

2789:                                             ; preds = %2779
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1183, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2790:                                             ; preds = %916
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1187, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2791:                                             ; preds = %939, %930, %923
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2792:                                             ; preds = %981
  br i1 %983, label %2838, label %2842

2793:                                             ; preds = %1913
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

2794:                                             ; preds = %2162
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.src, i32 noundef 1192, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2795:                                             ; preds = %2174
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1196, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2796:                                             ; preds = %2195
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1199, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2797:                                             ; preds = %2215
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1204, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2798:                                             ; preds = %2217
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1205, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2799:                                             ; preds = %2296
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1210, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2800:                                             ; preds = %2298
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.src, i32 noundef 1210, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2801:                                             ; preds = %2326, %2317, %2309
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2802:                                             ; preds = %2360, %2351, %2344
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2803:                                             ; preds = %2264
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.src, i32 noundef 1213, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2804:                                             ; preds = %2286, %2277, %2270
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2805:                                             ; preds = %2247
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1215, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2806:                                             ; preds = %2423
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1219, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2807:                                             ; preds = %2425
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1219, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2808:                                             ; preds = %2453, %2444, %2436
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2809:                                             ; preds = %2487, %2478, %2471
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2810:                                             ; preds = %2391
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1222, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2811:                                             ; preds = %2413, %2404, %2397
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2812:                                             ; preds = %2374
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1224, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2813:                                             ; preds = %2069
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1231, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2814:                                             ; preds = %2087, %2118
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

2815:                                             ; preds = %2075
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1120, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #11
  unreachable

2816:                                             ; preds = %2101
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1124, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #11
  unreachable

2817:                                             ; preds = %2133
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1130, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #11
  unreachable

2818:                                             ; preds = %1932
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1234, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2819:                                             ; preds = %1950, %2026
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

2820:                                             ; preds = %1938
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1144, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #11
  unreachable

2821:                                             ; preds = %1966, %2043
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2822:                                             ; preds = %1976
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1150, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #11
  unreachable

2823:                                             ; preds = %2006
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.src, i32 noundef 1158, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #11
  unreachable

2824:                                             ; preds = %2053
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1167, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #11
  unreachable

2825:                                             ; preds = %2145
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1236, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2826:                                             ; preds = %2500
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.src, i32 noundef 1241, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2827:                                             ; preds = %2554
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.src, i32 noundef 1246, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2828:                                             ; preds = %2585, %2575, %2567
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2829:                                             ; preds = %2602
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1247, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2830:                                             ; preds = %2620
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1250, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2831:                                             ; preds = %2641, %2634, %2629
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

2832:                                             ; preds = %2679, %2637
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2833:                                             ; preds = %2653
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1252, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2834:                                             ; preds = %2668
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1256, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2835:                                             ; preds = %2692
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1267, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2836:                                             ; preds = %2521
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1271, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2837:                                             ; preds = %1865, %1893
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

2838:                                             ; preds = %2792
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1284, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2839:                                             ; preds = %1852
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

2840:                                             ; preds = %1842
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

2841:                                             ; preds = %1832
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

2842:                                             ; preds = %2792
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1019, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_pivot) #11
  unreachable

2843:                                             ; preds = %1241
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1300, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2844:                                             ; preds = %1265, %1256, %1248
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2845:                                             ; preds = %1275
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1303, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2846:                                             ; preds = %1294
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1304, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2847:                                             ; preds = %1312
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1307, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2848:                                             ; preds = %1325
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

2849:                                             ; preds = %1525, %1321
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2850:                                             ; preds = %1358
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1311, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2851:                                             ; preds = %1360
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1312, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2852:                                             ; preds = %1347
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1315, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2853:                                             ; preds = %1393
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1322, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2854:                                             ; preds = %1394
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1323, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2855:                                             ; preds = %1383
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1326, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2856:                                             ; preds = %1412
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1330, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2857:                                             ; preds = %1414
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1331, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2858:                                             ; preds = %1451
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1337, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2859:                                             ; preds = %1453
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1338, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2860:                                             ; preds = %1440
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1341, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2861:                                             ; preds = %1486
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1348, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2862:                                             ; preds = %1487
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1349, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2863:                                             ; preds = %1476
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1352, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2864:                                             ; preds = %1505
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1356, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2865:                                             ; preds = %1507
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1357, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2866:                                             ; preds = %1565
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1365, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2867:                                             ; preds = %1548
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1370, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2868:                                             ; preds = %1596
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1374, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2869:                                             ; preds = %1579
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1379, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2870:                                             ; preds = %1616
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

2871:                                             ; preds = %1657, %1612
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2872:                                             ; preds = %1644, %1635, %1628
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2873:                                             ; preds = %1666
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1388, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2874:                                             ; preds = %2719
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.src, i32 noundef 1423, ptr noundef nonnull @__PRETTY_FUNCTION__.trsort) #11
  unreachable

2875:                                             ; preds = %2779
  %2876 = icmp eq i64 %2787, 4
  %2877 = sext i1 %2876 to i32
  br label %2878

2878:                                             ; preds = %2875, %2769
  %2879 = phi ptr [ %2773, %2769 ], [ %2784, %2875 ]
  %2880 = phi i32 [ %2770, %2769 ], [ %2877, %2875 ]
  %2881 = icmp ult ptr %2879, %148
  br i1 %2881, label %2758, label %2882, !llvm.loop !76

2882:                                             ; preds = %2878, %2745
  %2883 = phi i32 [ %2746, %2745 ], [ %881, %2878 ]
  %2884 = phi i32 [ %2747, %2745 ], [ %880, %2878 ]
  %2885 = phi ptr [ %2748, %2745 ], [ %2879, %2878 ]
  %2886 = phi i32 [ %2749, %2745 ], [ %2880, %2878 ]
  %2887 = phi i32 [ %896, %2745 ], [ 0, %2878 ]
  %2888 = icmp eq i32 %2886, 0
  br i1 %2888, label %2892, label %2889

2889:                                             ; preds = %2882
  %2890 = sext i32 %2886 to i64
  %2891 = getelementptr inbounds i32, ptr %2885, i64 %2890
  store i32 %2886, ptr %2891, align 4, !tbaa !5
  br label %2892

2892:                                             ; preds = %2716, %2889, %2882
  %2893 = phi i32 [ %2883, %2889 ], [ %2883, %2882 ], [ %953, %2716 ]
  %2894 = phi i32 [ %2884, %2889 ], [ %2884, %2882 ], [ %2710, %2716 ]
  %2895 = phi i32 [ %2887, %2889 ], [ %2887, %2882 ], [ %2717, %2716 ]
  %2896 = icmp eq i32 %2895, 0
  br i1 %2896, label %2901, label %2897

2897:                                             ; preds = %2892
  %2898 = getelementptr i8, ptr %879, i64 %883
  %2899 = load i32, ptr %1, align 4, !tbaa !5
  %2900 = icmp sgt i32 %2899, %867
  br i1 %2900, label %877, label %2901, !llvm.loop !77

2901:                                             ; preds = %2892, %2897, %866
  %2902 = load i8, ptr %11, align 1, !tbaa !9
  %2903 = zext i8 %2902 to i32
  br label %2904

2904:                                             ; preds = %2901, %2945
  %2905 = phi i32 [ %2903, %2901 ], [ %2942, %2945 ]
  %2906 = phi i32 [ %9, %2901 ], [ %2941, %2945 ]
  %2907 = phi i32 [ %84, %2901 ], [ %2952, %2945 ]
  %2908 = zext i32 %2906 to i64
  br label %2909

2909:                                             ; preds = %2904, %2914
  %2910 = phi i32 [ %2906, %2904 ], [ %2915, %2914 ]
  %2911 = phi i64 [ %2908, %2904 ], [ %2916, %2914 ]
  %2912 = phi i32 [ %2905, %2904 ], [ %2919, %2914 ]
  %2913 = icmp eq i64 %2911, 0
  br i1 %2913, label %2959, label %2914

2914:                                             ; preds = %2909
  %2915 = add i32 %2910, -1
  %2916 = add nsw i64 %2911, -1
  %2917 = getelementptr inbounds nuw i8, ptr %0, i64 %2916
  %2918 = load i8, ptr %2917, align 1, !tbaa !9
  %2919 = zext i8 %2918 to i32
  %2920 = icmp sgt i32 %2912, %2919
  br i1 %2920, label %2921, label %2909, !llvm.loop !78

2921:                                             ; preds = %2914
  %2922 = trunc nuw i64 %2911 to i32
  %2923 = trunc i64 %2916 to i32
  %2924 = zext i32 %2915 to i64
  br label %2925

2925:                                             ; preds = %2921, %2929
  %2926 = phi i64 [ %2924, %2921 ], [ %2930, %2929 ]
  %2927 = phi i32 [ %2919, %2921 ], [ %2934, %2929 ]
  %2928 = icmp eq i64 %2926, 0
  br i1 %2928, label %2939, label %2929

2929:                                             ; preds = %2925
  %2930 = add nsw i64 %2926, -1
  %2931 = and i64 %2930, 4294967295
  %2932 = getelementptr inbounds nuw i8, ptr %0, i64 %2931
  %2933 = load i8, ptr %2932, align 1, !tbaa !9
  %2934 = zext i8 %2933 to i32
  %2935 = icmp samesign ult i32 %2927, %2934
  br i1 %2935, label %2936, label %2925, !llvm.loop !79

2936:                                             ; preds = %2929
  %2937 = trunc nuw i64 %2926 to i32
  %2938 = trunc i64 %2930 to i32
  br label %2939

2939:                                             ; preds = %2925, %2936
  %2940 = phi i32 [ %2937, %2936 ], [ 0, %2925 ]
  %2941 = phi i32 [ %2938, %2936 ], [ -1, %2925 ]
  %2942 = phi i32 [ %2934, %2936 ], [ %2927, %2925 ]
  %2943 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2907, i32 -1)
  %2944 = extractvalue { i32, i1 } %2943, 1, !nosanitize !10
  br i1 %2944, label %15, label %2945, !prof !11, !nosanitize !10

2945:                                             ; preds = %2939
  %2946 = icmp eq i32 %2923, 0
  %2947 = sub i32 %2922, %2940
  %2948 = icmp sgt i32 %2947, 1
  %2949 = or i1 %2946, %2948
  %2950 = sub nsw i32 0, %2922
  %2951 = select i1 %2949, i32 %2923, i32 %2950
  %2952 = extractvalue { i32, i1 } %2943, 0, !nosanitize !10
  %2953 = sext i32 %2952 to i64
  %2954 = getelementptr inbounds i32, ptr %148, i64 %2953
  %2955 = load i32, ptr %2954, align 4, !tbaa !5
  %2956 = sext i32 %2955 to i64
  %2957 = getelementptr inbounds i32, ptr %1, i64 %2956
  store i32 %2951, ptr %2957, align 4, !tbaa !5
  %2958 = icmp sgt i32 %2941, -1
  br i1 %2958, label %2904, label %2959, !llvm.loop !80

2959:                                             ; preds = %2945, %2909
  %2960 = getelementptr inbounds nuw i8, ptr %3, i64 262140
  store i32 %4, ptr %2960, align 4, !tbaa !5
  br label %2961

2961:                                             ; preds = %2959, %3028
  %2962 = phi i64 [ 254, %2959 ], [ %3034, %3028 ]
  %2963 = phi i32 [ %182, %2959 ], [ %3012, %3028 ]
  %2964 = trunc i64 %2962 to i32
  %2965 = add nuw nsw i64 %2962, 1
  %2966 = getelementptr inbounds nuw i32, ptr %2, i64 %2965
  %2967 = load i32, ptr %2966, align 4, !tbaa !5
  %2968 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2967, i32 -1)
  %2969 = extractvalue { i32, i1 } %2968, 1, !nosanitize !10
  br i1 %2969, label %15, label %2970, !prof !11, !nosanitize !10

2970:                                             ; preds = %2961
  %2971 = extractvalue { i32, i1 } %2968, 0, !nosanitize !10
  %2972 = getelementptr i32, ptr %3, i64 %2962
  %2973 = trunc i64 %2962 to i32
  %2974 = shl i32 %2973, 8
  br label %2975

2975:                                             ; preds = %2970, %3011
  %2976 = phi i64 [ 255, %2970 ], [ %3014, %3011 ]
  %2977 = phi i32 [ %2971, %2970 ], [ %3013, %3011 ]
  %2978 = phi i32 [ %2963, %2970 ], [ %3012, %3011 ]
  %2979 = shl i64 %2976, 10
  %2980 = getelementptr i8, ptr %2972, i64 %2979
  %2981 = load i32, ptr %2980, align 4, !tbaa !5
  %2982 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2977, i32 %2981), !nosanitize !10
  %2983 = extractvalue { i32, i1 } %2982, 1, !nosanitize !10
  br i1 %2983, label %15, label %2984, !prof !11, !nosanitize !10

2984:                                             ; preds = %2975
  store i32 %2977, ptr %2980, align 4, !tbaa !5
  %2985 = trunc nuw nsw i64 %2976 to i32
  %2986 = or i32 %2974, %2985
  %2987 = sext i32 %2986 to i64
  %2988 = getelementptr inbounds i32, ptr %3, i64 %2987
  %2989 = load i32, ptr %2988, align 4, !tbaa !5
  %2990 = extractvalue { i32, i1 } %2982, 0
  %2991 = icmp sgt i32 %2989, %2978
  br i1 %2991, label %3011, label %2992

2992:                                             ; preds = %2984
  %2993 = sext i32 %2990 to i64
  %2994 = sext i32 %2978 to i64
  br label %2995

2995:                                             ; preds = %2992, %3004
  %2996 = phi i64 [ %2994, %2992 ], [ %3005, %3004 ]
  %2997 = phi i64 [ %2993, %2992 ], [ %3007, %3004 ]
  %2998 = getelementptr inbounds i32, ptr %1, i64 %2996
  %2999 = load i32, ptr %2998, align 4, !tbaa !5
  %3000 = getelementptr inbounds i32, ptr %1, i64 %2997
  store i32 %2999, ptr %3000, align 4, !tbaa !5
  %3001 = icmp eq i64 %2997, -2147483648
  %3002 = icmp eq i64 %2996, -2147483648
  %3003 = or i1 %3001, %3002
  br i1 %3003, label %15, label %3004, !prof !81, !nosanitize !10

3004:                                             ; preds = %2995
  %3005 = add nsw i64 %2996, -1
  %3006 = trunc i64 %3005 to i32
  %3007 = add nsw i64 %2997, -1
  %3008 = icmp sgt i32 %2989, %3006
  br i1 %3008, label %3009, label %2995, !llvm.loop !82

3009:                                             ; preds = %3004
  %3010 = trunc i64 %3007 to i32
  br label %3011

3011:                                             ; preds = %3009, %2984
  %3012 = phi i32 [ %2978, %2984 ], [ %3006, %3009 ]
  %3013 = phi i32 [ %2990, %2984 ], [ %3010, %3009 ]
  %3014 = add nsw i64 %2976, -1
  %3015 = icmp samesign ult i64 %2962, %3014
  br i1 %3015, label %2975, label %3016, !llvm.loop !83

3016:                                             ; preds = %3011
  %3017 = shl i32 %2964, 8
  %3018 = or i32 %3017, %2964
  %3019 = sext i32 %3018 to i64
  %3020 = getelementptr inbounds i32, ptr %3, i64 %3019
  %3021 = load i32, ptr %3020, align 4, !tbaa !5
  %3022 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3013, i32 %3021), !nosanitize !10
  %3023 = extractvalue { i32, i1 } %3022, 1, !nosanitize !10
  br i1 %3023, label %15, label %3024, !prof !11, !nosanitize !10

3024:                                             ; preds = %3016
  %3025 = extractvalue { i32, i1 } %3022, 0, !nosanitize !10
  %3026 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3025, i32 1), !nosanitize !10
  %3027 = extractvalue { i32, i1 } %3026, 1, !nosanitize !10
  br i1 %3027, label %14, label %3028, !prof !11, !nosanitize !10

3028:                                             ; preds = %3024
  %3029 = extractvalue { i32, i1 } %3026, 0, !nosanitize !10
  %3030 = trunc nuw nsw i64 %2965 to i32
  %3031 = or i32 %3017, %3030
  %3032 = sext i32 %3031 to i64
  %3033 = getelementptr inbounds i32, ptr %3, i64 %3032
  store i32 %3029, ptr %3033, align 4, !tbaa !5
  store i32 %3013, ptr %3020, align 4, !tbaa !5
  %3034 = add nsw i64 %2962, -1
  %3035 = icmp eq i64 %2962, 0
  br i1 %3035, label %3036, label %2961, !llvm.loop !84

3036:                                             ; preds = %3028, %140
  ret i32 %84
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @divbwt(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly captures(address_is_null) %4, ptr noundef writeonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %0, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %8, %9
  %11 = icmp slt i32 %3, 0
  %12 = or i1 %10, %11
  br i1 %12, label %722, label %13

13:                                               ; preds = %7
  %14 = icmp samesign ult i32 %3, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = icmp eq i32 %3, 1
  br i1 %16, label %17, label %722

17:                                               ; preds = %15
  %18 = load i8, ptr %0, align 1, !tbaa !9
  store i8 %18, ptr %1, align 1, !tbaa !9
  br label %722

19:                                               ; preds = %13
  %20 = icmp eq ptr %2, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1), !nosanitize !10
  %23 = extractvalue { i32, i1 } %22, 1, !nosanitize !10
  br i1 %23, label %24, label %25, !prof !11, !nosanitize !10

24:                                               ; preds = %714, %621, %21
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

25:                                               ; preds = %21
  %26 = extractvalue { i32, i1 } %22, 0, !nosanitize !10
  %27 = zext nneg i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 2
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #10
  br label %30

30:                                               ; preds = %25, %19
  %31 = phi ptr [ %29, %25 ], [ %2, %19 ]
  %32 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #10
  %33 = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #10
  %34 = icmp ne ptr %31, null
  %35 = icmp ne ptr %32, null
  %36 = and i1 %34, %35
  %37 = icmp ne ptr %33, null
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %719

39:                                               ; preds = %30
  %40 = tail call fastcc i32 @sort_typeBstar(ptr noundef %0, ptr noundef %31, ptr noundef %32, ptr noundef %33, i32 noundef %3)
  %41 = icmp eq ptr %4, null
  %42 = icmp eq ptr %5, null
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %255

44:                                               ; preds = %39
  %45 = icmp sgt i32 %40, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = ptrtoint ptr %31 to i64
  br label %162

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %31, i64 -4
  %50 = ptrtoint ptr %31 to i64
  br label %51

51:                                               ; preds = %159, %48
  %52 = phi i64 [ 254, %48 ], [ %160, %159 ]
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %53, 8
  %55 = add nuw nsw i64 %52, 1
  %56 = trunc nuw nsw i64 %55 to i32
  %57 = or i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %33, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %31, i64 %61
  %63 = getelementptr inbounds nuw i32, ptr %32, i64 %55
  %64 = load i32, ptr %63, align 4, !tbaa !5
  %65 = sext i32 %64 to i64
  %66 = getelementptr i32, ptr %49, i64 %65
  %67 = icmp ugt ptr %62, %66
  br i1 %67, label %159, label %69

68:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

69:                                               ; preds = %51, %154
  %70 = phi ptr [ %157, %154 ], [ %66, %51 ]
  %71 = phi i32 [ %156, %154 ], [ -1, %51 ]
  %72 = phi ptr [ %155, %154 ], [ null, %51 ]
  %73 = load i32, ptr %70, align 4, !tbaa !5
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %145

75:                                               ; preds = %69
  %76 = zext nneg i32 %73 to i64
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !9
  %79 = zext i8 %78 to i64
  %80 = icmp eq i64 %52, %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1694, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

82:                                               ; preds = %75
  %83 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %73, i32 1), !nosanitize !10
  %84 = extractvalue { i32, i1 } %83, 0, !nosanitize !10
  %85 = extractvalue { i32, i1 } %83, 1, !nosanitize !10
  br i1 %85, label %68, label %86, !prof !11, !nosanitize !10

86:                                               ; preds = %82
  %87 = icmp slt i32 %84, %3
  br i1 %87, label %88, label %93

88:                                               ; preds = %86
  %89 = sext i32 %84 to i64
  %90 = getelementptr inbounds i8, ptr %0, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !9
  %92 = icmp ugt i8 %78, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %86
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.src, i32 noundef 1695, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

94:                                               ; preds = %88
  %95 = add nsw i32 %73, -1
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %99 = zext i8 %98 to i32
  %100 = icmp ugt i8 %98, %78
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.src, i32 noundef 1696, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

102:                                              ; preds = %94
  %103 = xor i32 %99, -1
  store i32 %103, ptr %70, align 4, !tbaa !5
  %104 = icmp eq i32 %73, 1
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = getelementptr i8, ptr %77, i64 -2
  %107 = load i8, ptr %106, align 1, !tbaa !9
  %108 = icmp ugt i8 %107, %98
  %109 = sub nsw i32 0, %73
  %110 = select i1 %108, i32 %109, i32 %95
  br label %111

111:                                              ; preds = %105, %102
  %112 = phi i32 [ 0, %102 ], [ %110, %105 ]
  %113 = icmp eq i32 %71, %99
  br i1 %113, label %135, label %114

114:                                              ; preds = %111
  %115 = icmp sgt i32 %71, -1
  br i1 %115, label %116, label %128

116:                                              ; preds = %114
  %117 = ptrtoint ptr %72 to i64
  %118 = sub i64 %117, %50
  %119 = ashr exact i64 %118, 2
  %120 = add nsw i64 %119, 2147483648
  %121 = icmp ult i64 %120, 4294967296
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1701, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

123:                                              ; preds = %116
  %124 = trunc nsw i64 %119 to i32
  %125 = or i32 %71, %54
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %33, i64 %126
  store i32 %124, ptr %127, align 4, !tbaa !5
  br label %128

128:                                              ; preds = %123, %114
  %129 = or disjoint i32 %54, %99
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, ptr %33, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !5
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, ptr %31, i64 %133
  br label %135

135:                                              ; preds = %128, %111
  %136 = phi ptr [ %134, %128 ], [ %72, %111 ]
  %137 = phi i32 [ %99, %128 ], [ %71, %111 ]
  %138 = icmp ult ptr %136, %70
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.src, i32 noundef 1704, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

140:                                              ; preds = %135
  %141 = icmp eq ptr %136, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %140
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.src, i32 noundef 1704, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

143:                                              ; preds = %140
  %144 = getelementptr inbounds i8, ptr %136, i64 -4
  store i32 %112, ptr %136, align 4, !tbaa !5
  br label %154

145:                                              ; preds = %69
  %146 = icmp eq i32 %73, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %145
  %148 = xor i32 %73, -1
  store i32 %148, ptr %70, align 4, !tbaa !5
  br label %154

149:                                              ; preds = %145
  %150 = load i8, ptr %0, align 1, !tbaa !9
  %151 = zext i8 %150 to i64
  %152 = icmp eq i64 %52, %151
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1710, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

154:                                              ; preds = %149, %147, %143
  %155 = phi ptr [ %144, %143 ], [ %72, %147 ], [ %72, %149 ]
  %156 = phi i32 [ %137, %143 ], [ %71, %147 ], [ %71, %149 ]
  %157 = getelementptr inbounds i8, ptr %70, i64 -4
  %158 = icmp ugt ptr %62, %157
  br i1 %158, label %159, label %69, !llvm.loop !85

159:                                              ; preds = %154, %51
  %160 = add nsw i64 %52, -1
  %161 = icmp eq i64 %52, 0
  br i1 %161, label %162, label %51, !llvm.loop !86

162:                                              ; preds = %159, %46
  %163 = phi i64 [ %47, %46 ], [ %50, %159 ]
  %164 = add nsw i32 %3, -1
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !9
  %168 = zext i8 %167 to i64
  %169 = getelementptr inbounds nuw i32, ptr %32, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !5
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, ptr %31, i64 %171
  %173 = zext nneg i32 %3 to i64
  %174 = getelementptr i8, ptr %0, i64 %173
  %175 = getelementptr i8, ptr %174, i64 -2
  %176 = load i8, ptr %175, align 1, !tbaa !9
  %177 = zext i8 %176 to i32
  %178 = icmp ult i8 %176, %167
  %179 = xor i32 %177, -1
  %180 = select i1 %178, i32 %179, i32 %164
  store i32 %180, ptr %172, align 4, !tbaa !5
  %181 = shl nuw nsw i64 %173, 2
  %182 = getelementptr inbounds nuw i8, ptr %31, i64 %181
  %183 = getelementptr inbounds nuw i8, ptr %172, i64 4
  %184 = zext i8 %167 to i32
  br label %185

185:                                              ; preds = %242, %162
  %186 = phi i32 [ %184, %162 ], [ %245, %242 ]
  %187 = phi ptr [ %31, %162 ], [ %244, %242 ]
  %188 = phi ptr [ %183, %162 ], [ %243, %242 ]
  %189 = phi ptr [ %31, %162 ], [ %246, %242 ]
  %190 = load i32, ptr %189, align 4, !tbaa !5
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %238

192:                                              ; preds = %185
  %193 = add nsw i32 %190, -1
  %194 = zext nneg i32 %193 to i64
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !9
  %197 = zext i8 %196 to i32
  %198 = zext nneg i32 %190 to i64
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !9
  %201 = icmp ult i8 %196, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %192
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.src, i32 noundef 1724, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

203:                                              ; preds = %192
  store i32 %197, ptr %189, align 4, !tbaa !5
  %204 = icmp eq i32 %190, 1
  br i1 %204, label %212, label %205

205:                                              ; preds = %203
  %206 = getelementptr i8, ptr %199, i64 -2
  %207 = load i8, ptr %206, align 1, !tbaa !9
  %208 = icmp ult i8 %207, %196
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = zext i8 %207 to i32
  %211 = xor i32 %210, -1
  br label %212

212:                                              ; preds = %209, %205, %203
  %213 = phi i32 [ %211, %209 ], [ %193, %205 ], [ 0, %203 ]
  %214 = icmp eq i32 %186, %197
  br i1 %214, label %231, label %215

215:                                              ; preds = %212
  %216 = ptrtoint ptr %188 to i64
  %217 = sub i64 %216, %163
  %218 = ashr exact i64 %217, 2
  %219 = add nsw i64 %218, 2147483648
  %220 = icmp ult i64 %219, 4294967296
  br i1 %220, label %222, label %221

221:                                              ; preds = %215
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1729, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

222:                                              ; preds = %215
  %223 = trunc nsw i64 %218 to i32
  %224 = zext nneg i32 %186 to i64
  %225 = getelementptr inbounds nuw i32, ptr %32, i64 %224
  store i32 %223, ptr %225, align 4, !tbaa !5
  %226 = zext i8 %196 to i64
  %227 = getelementptr inbounds nuw i32, ptr %32, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !5
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, ptr %31, i64 %229
  br label %231

231:                                              ; preds = %222, %212
  %232 = phi ptr [ %230, %222 ], [ %188, %212 ]
  %233 = phi i32 [ %197, %222 ], [ %186, %212 ]
  %234 = icmp ult ptr %189, %232
  br i1 %234, label %236, label %235

235:                                              ; preds = %231
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.src, i32 noundef 1732, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

236:                                              ; preds = %231
  %237 = getelementptr inbounds nuw i8, ptr %232, i64 4
  store i32 %213, ptr %232, align 4, !tbaa !5
  br label %242

238:                                              ; preds = %185
  %239 = icmp eq i32 %190, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %238
  %241 = xor i32 %190, -1
  store i32 %241, ptr %189, align 4, !tbaa !5
  br label %242

242:                                              ; preds = %240, %238, %236
  %243 = phi ptr [ %237, %236 ], [ %188, %240 ], [ %188, %238 ]
  %244 = phi ptr [ %187, %236 ], [ %187, %240 ], [ %189, %238 ]
  %245 = phi i32 [ %233, %236 ], [ %186, %240 ], [ %186, %238 ]
  %246 = getelementptr inbounds nuw i8, ptr %189, i64 4
  %247 = icmp ult ptr %246, %182
  br i1 %247, label %185, label %248, !llvm.loop !87

248:                                              ; preds = %242
  %249 = ptrtoint ptr %244 to i64
  %250 = sub i64 %249, %163
  %251 = ashr exact i64 %250, 2
  %252 = add nsw i64 %251, 2147483648
  %253 = icmp ult i64 %252, 4294967296
  br i1 %253, label %543, label %254

254:                                              ; preds = %248
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.src, i32 noundef 1741, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

255:                                              ; preds = %39
  %256 = lshr i32 %3, 3
  %257 = lshr i32 %3, 4
  %258 = or i32 %256, %257
  %259 = lshr i32 %258, 2
  %260 = or i32 %259, %258
  %261 = lshr i32 %260, 4
  %262 = or i32 %261, %260
  %263 = lshr i32 %262, 8
  %264 = or i32 %263, %262
  %265 = lshr i32 %264, 17
  %266 = lshr i32 %264, 1
  %267 = or i32 %265, %266
  %268 = add nsw i32 %3, -1
  %269 = add nuw nsw i32 %267, 1
  %270 = udiv i32 %268, %269
  %271 = trunc i32 %270 to i8
  store i8 %271, ptr %4, align 1, !tbaa !9
  %272 = icmp sgt i32 %40, 0
  br i1 %272, label %273, label %405

273:                                              ; preds = %255
  %274 = getelementptr i8, ptr %5, i64 -4
  %275 = getelementptr i8, ptr %31, i64 -4
  %276 = ptrtoint ptr %31 to i64
  br label %278

277:                                              ; preds = %308
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

278:                                              ; preds = %402, %273
  %279 = phi i64 [ 254, %273 ], [ %403, %402 ]
  %280 = trunc i64 %279 to i32
  %281 = shl i32 %280, 8
  %282 = add nuw nsw i64 %279, 1
  %283 = trunc nuw nsw i64 %282 to i32
  %284 = or i32 %281, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, ptr %33, i64 %285
  %287 = load i32, ptr %286, align 4, !tbaa !5
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, ptr %31, i64 %288
  %290 = getelementptr inbounds nuw i32, ptr %32, i64 %282
  %291 = load i32, ptr %290, align 4, !tbaa !5
  %292 = sext i32 %291 to i64
  %293 = getelementptr i32, ptr %275, i64 %292
  %294 = icmp ugt ptr %289, %293
  br i1 %294, label %402, label %295

295:                                              ; preds = %278, %397
  %296 = phi ptr [ %400, %397 ], [ %293, %278 ]
  %297 = phi i32 [ %399, %397 ], [ -1, %278 ]
  %298 = phi ptr [ %398, %397 ], [ null, %278 ]
  %299 = load i32, ptr %296, align 4, !tbaa !5
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %388

301:                                              ; preds = %295
  %302 = zext nneg i32 %299 to i64
  %303 = getelementptr inbounds nuw i8, ptr %0, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !9
  %305 = zext i8 %304 to i64
  %306 = icmp eq i64 %279, %305
  br i1 %306, label %308, label %307

307:                                              ; preds = %301
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1775, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

308:                                              ; preds = %301
  %309 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %299, i32 1), !nosanitize !10
  %310 = extractvalue { i32, i1 } %309, 0, !nosanitize !10
  %311 = extractvalue { i32, i1 } %309, 1, !nosanitize !10
  br i1 %311, label %277, label %312, !prof !11, !nosanitize !10

312:                                              ; preds = %308
  %313 = icmp slt i32 %310, %3
  br i1 %313, label %314, label %319

314:                                              ; preds = %312
  %315 = sext i32 %310 to i64
  %316 = getelementptr inbounds i8, ptr %0, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !9
  %318 = icmp ugt i8 %304, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %314, %312
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.src, i32 noundef 1776, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

320:                                              ; preds = %314
  %321 = add nsw i32 %299, -1
  %322 = zext nneg i32 %321 to i64
  %323 = getelementptr inbounds nuw i8, ptr %0, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !9
  %325 = icmp ugt i8 %324, %304
  br i1 %325, label %326, label %327

326:                                              ; preds = %320
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.src, i32 noundef 1777, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

327:                                              ; preds = %320
  %328 = and i32 %299, %267
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %343

330:                                              ; preds = %327
  %331 = ptrtoint ptr %296 to i64
  %332 = sub i64 %331, %276
  %333 = ashr exact i64 %332, 2
  %334 = add nsw i64 %333, 2147483648
  %335 = icmp ult i64 %334, 4294967296
  br i1 %335, label %337, label %336

336:                                              ; preds = %330
  tail call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.src, i32 noundef 1779, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

337:                                              ; preds = %330
  %338 = trunc nsw i64 %333 to i32
  %339 = udiv i32 %299, %269
  %340 = zext nneg i32 %339 to i64
  %341 = getelementptr i32, ptr %274, i64 %340
  store i32 %338, ptr %341, align 4, !tbaa !5
  %342 = load i8, ptr %323, align 1, !tbaa !9
  br label %343

343:                                              ; preds = %337, %327
  %344 = phi i8 [ %324, %327 ], [ %342, %337 ]
  %345 = zext i8 %344 to i32
  %346 = xor i32 %345, -1
  store i32 %346, ptr %296, align 4, !tbaa !5
  %347 = icmp eq i32 %299, 1
  br i1 %347, label %354, label %348

348:                                              ; preds = %343
  %349 = getelementptr i8, ptr %303, i64 -2
  %350 = load i8, ptr %349, align 1, !tbaa !9
  %351 = icmp ugt i8 %350, %344
  %352 = sub nsw i32 0, %299
  %353 = select i1 %351, i32 %352, i32 %321
  br label %354

354:                                              ; preds = %348, %343
  %355 = phi i32 [ 0, %343 ], [ %353, %348 ]
  %356 = icmp eq i32 %297, %345
  br i1 %356, label %378, label %357

357:                                              ; preds = %354
  %358 = icmp sgt i32 %297, -1
  br i1 %358, label %359, label %371

359:                                              ; preds = %357
  %360 = ptrtoint ptr %298 to i64
  %361 = sub i64 %360, %276
  %362 = ashr exact i64 %361, 2
  %363 = add nsw i64 %362, 2147483648
  %364 = icmp ult i64 %363, 4294967296
  br i1 %364, label %366, label %365

365:                                              ; preds = %359
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1785, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

366:                                              ; preds = %359
  %367 = trunc nsw i64 %362 to i32
  %368 = or i32 %297, %281
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, ptr %33, i64 %369
  store i32 %367, ptr %370, align 4, !tbaa !5
  br label %371

371:                                              ; preds = %366, %357
  %372 = or disjoint i32 %281, %345
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, ptr %33, i64 %373
  %375 = load i32, ptr %374, align 4, !tbaa !5
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, ptr %31, i64 %376
  br label %378

378:                                              ; preds = %371, %354
  %379 = phi ptr [ %377, %371 ], [ %298, %354 ]
  %380 = phi i32 [ %345, %371 ], [ %297, %354 ]
  %381 = icmp ult ptr %379, %296
  br i1 %381, label %383, label %382

382:                                              ; preds = %378
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.src, i32 noundef 1788, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

383:                                              ; preds = %378
  %384 = icmp eq ptr %379, null
  br i1 %384, label %385, label %386

385:                                              ; preds = %383
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.src, i32 noundef 1788, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

386:                                              ; preds = %383
  %387 = getelementptr inbounds i8, ptr %379, i64 -4
  store i32 %355, ptr %379, align 4, !tbaa !5
  br label %397

388:                                              ; preds = %295
  %389 = icmp eq i32 %299, 0
  br i1 %389, label %392, label %390

390:                                              ; preds = %388
  %391 = xor i32 %299, -1
  store i32 %391, ptr %296, align 4, !tbaa !5
  br label %397

392:                                              ; preds = %388
  %393 = load i8, ptr %0, align 1, !tbaa !9
  %394 = zext i8 %393 to i64
  %395 = icmp eq i64 %279, %394
  br i1 %395, label %397, label %396

396:                                              ; preds = %392
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1794, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

397:                                              ; preds = %392, %390, %386
  %398 = phi ptr [ %387, %386 ], [ %298, %390 ], [ %298, %392 ]
  %399 = phi i32 [ %380, %386 ], [ %297, %390 ], [ %297, %392 ]
  %400 = getelementptr inbounds i8, ptr %296, i64 -4
  %401 = icmp ugt ptr %289, %400
  br i1 %401, label %402, label %295, !llvm.loop !88

402:                                              ; preds = %397, %278
  %403 = add nsw i64 %279, -1
  %404 = icmp eq i64 %279, 0
  br i1 %404, label %405, label %278, !llvm.loop !89

405:                                              ; preds = %402, %255
  %406 = zext nneg i32 %268 to i64
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 %406
  %408 = load i8, ptr %407, align 1, !tbaa !9
  %409 = zext i8 %408 to i32
  %410 = zext i8 %408 to i64
  %411 = getelementptr inbounds nuw i32, ptr %32, i64 %410
  %412 = load i32, ptr %411, align 4, !tbaa !5
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, ptr %31, i64 %413
  %415 = zext nneg i32 %3 to i64
  %416 = getelementptr i8, ptr %0, i64 %415
  %417 = getelementptr i8, ptr %416, i64 -2
  %418 = load i8, ptr %417, align 1, !tbaa !9
  %419 = icmp ult i8 %418, %408
  br i1 %419, label %420, label %432

420:                                              ; preds = %405
  %421 = and i32 %267, %268
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %428

423:                                              ; preds = %420
  %424 = sext i32 %270 to i64
  %425 = getelementptr i32, ptr %5, i64 %424
  %426 = getelementptr i8, ptr %425, i64 -4
  store i32 %412, ptr %426, align 4, !tbaa !5
  %427 = load i8, ptr %417, align 1, !tbaa !9
  br label %428

428:                                              ; preds = %423, %420
  %429 = phi i8 [ %418, %420 ], [ %427, %423 ]
  %430 = zext i8 %429 to i32
  %431 = xor i32 %430, -1
  br label %432

432:                                              ; preds = %428, %405
  %433 = phi i32 [ %431, %428 ], [ %268, %405 ]
  store i32 %433, ptr %414, align 4, !tbaa !5
  %434 = shl nuw nsw i64 %415, 2
  %435 = getelementptr inbounds nuw i8, ptr %31, i64 %434
  %436 = getelementptr i8, ptr %5, i64 -4
  %437 = getelementptr inbounds nuw i8, ptr %414, i64 4
  %438 = ptrtoint ptr %31 to i64
  br label %439

439:                                              ; preds = %530, %432
  %440 = phi i32 [ %409, %432 ], [ %533, %530 ]
  %441 = phi ptr [ %31, %432 ], [ %532, %530 ]
  %442 = phi ptr [ %437, %432 ], [ %531, %530 ]
  %443 = phi ptr [ %31, %432 ], [ %534, %530 ]
  %444 = load i32, ptr %443, align 4, !tbaa !5
  %445 = icmp sgt i32 %444, 0
  br i1 %445, label %446, label %526

446:                                              ; preds = %439
  %447 = add nsw i32 %444, -1
  %448 = zext nneg i32 %447 to i64
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 %448
  %450 = load i8, ptr %449, align 1, !tbaa !9
  %451 = zext nneg i32 %444 to i64
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 %451
  %453 = load i8, ptr %452, align 1, !tbaa !9
  %454 = icmp ult i8 %450, %453
  br i1 %454, label %455, label %456

455:                                              ; preds = %446
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.src, i32 noundef 1815, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

456:                                              ; preds = %446
  %457 = and i32 %444, %267
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %472

459:                                              ; preds = %456
  %460 = ptrtoint ptr %443 to i64
  %461 = sub i64 %460, %438
  %462 = ashr exact i64 %461, 2
  %463 = add nsw i64 %462, 2147483648
  %464 = icmp ult i64 %463, 4294967296
  br i1 %464, label %466, label %465

465:                                              ; preds = %459
  tail call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.src, i32 noundef 1817, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

466:                                              ; preds = %459
  %467 = trunc nsw i64 %462 to i32
  %468 = udiv i32 %444, %269
  %469 = zext nneg i32 %468 to i64
  %470 = getelementptr i32, ptr %436, i64 %469
  store i32 %467, ptr %470, align 4, !tbaa !5
  %471 = load i8, ptr %449, align 1, !tbaa !9
  br label %472

472:                                              ; preds = %466, %456
  %473 = phi i8 [ %450, %456 ], [ %471, %466 ]
  %474 = zext i8 %473 to i32
  store i32 %474, ptr %443, align 4, !tbaa !5
  %475 = icmp eq i32 %440, %474
  br i1 %475, label %492, label %476

476:                                              ; preds = %472
  %477 = ptrtoint ptr %442 to i64
  %478 = sub i64 %477, %438
  %479 = ashr exact i64 %478, 2
  %480 = add nsw i64 %479, 2147483648
  %481 = icmp ult i64 %480, 4294967296
  br i1 %481, label %483, label %482

482:                                              ; preds = %476
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1822, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

483:                                              ; preds = %476
  %484 = trunc nsw i64 %479 to i32
  %485 = zext nneg i32 %440 to i64
  %486 = getelementptr inbounds nuw i32, ptr %32, i64 %485
  store i32 %484, ptr %486, align 4, !tbaa !5
  %487 = zext i8 %473 to i64
  %488 = getelementptr inbounds nuw i32, ptr %32, i64 %487
  %489 = load i32, ptr %488, align 4, !tbaa !5
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, ptr %31, i64 %490
  br label %492

492:                                              ; preds = %483, %472
  %493 = phi ptr [ %491, %483 ], [ %442, %472 ]
  %494 = phi i32 [ %474, %483 ], [ %440, %472 ]
  %495 = icmp ult ptr %443, %493
  br i1 %495, label %497, label %496

496:                                              ; preds = %492
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.src, i32 noundef 1825, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

497:                                              ; preds = %492
  %498 = icmp eq i32 %444, 1
  br i1 %498, label %524, label %499

499:                                              ; preds = %497
  %500 = getelementptr i8, ptr %452, i64 -2
  %501 = load i8, ptr %500, align 1, !tbaa !9
  %502 = icmp ult i8 %501, %473
  br i1 %502, label %503, label %524

503:                                              ; preds = %499
  %504 = and i32 %447, %267
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %519

506:                                              ; preds = %503
  %507 = ptrtoint ptr %493 to i64
  %508 = sub i64 %507, %438
  %509 = ashr exact i64 %508, 2
  %510 = add nsw i64 %509, 2147483648
  %511 = icmp ult i64 %510, 4294967296
  br i1 %511, label %513, label %512

512:                                              ; preds = %506
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1827, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

513:                                              ; preds = %506
  %514 = trunc nsw i64 %509 to i32
  %515 = udiv i32 %447, %269
  %516 = zext nneg i32 %515 to i64
  %517 = getelementptr i32, ptr %436, i64 %516
  store i32 %514, ptr %517, align 4, !tbaa !5
  %518 = load i8, ptr %500, align 1, !tbaa !9
  br label %519

519:                                              ; preds = %513, %503
  %520 = phi i8 [ %501, %503 ], [ %518, %513 ]
  %521 = zext i8 %520 to i32
  %522 = xor i32 %521, -1
  %523 = getelementptr inbounds nuw i8, ptr %493, i64 4
  store i32 %522, ptr %493, align 4, !tbaa !5
  br label %530

524:                                              ; preds = %499, %497
  %525 = getelementptr inbounds nuw i8, ptr %493, i64 4
  store i32 %447, ptr %493, align 4, !tbaa !5
  br label %530

526:                                              ; preds = %439
  %527 = icmp eq i32 %444, 0
  br i1 %527, label %530, label %528

528:                                              ; preds = %526
  %529 = xor i32 %444, -1
  store i32 %529, ptr %443, align 4, !tbaa !5
  br label %530

530:                                              ; preds = %528, %526, %524, %519
  %531 = phi ptr [ %523, %519 ], [ %525, %524 ], [ %442, %528 ], [ %442, %526 ]
  %532 = phi ptr [ %441, %519 ], [ %441, %524 ], [ %441, %528 ], [ %443, %526 ]
  %533 = phi i32 [ %494, %519 ], [ %494, %524 ], [ %440, %528 ], [ %440, %526 ]
  %534 = getelementptr inbounds nuw i8, ptr %443, i64 4
  %535 = icmp ult ptr %534, %435
  br i1 %535, label %439, label %536, !llvm.loop !90

536:                                              ; preds = %530
  %537 = ptrtoint ptr %532 to i64
  %538 = sub i64 %537, %438
  %539 = ashr exact i64 %538, 2
  %540 = add nsw i64 %539, 2147483648
  %541 = icmp ult i64 %540, 4294967296
  br i1 %541, label %543, label %542

542:                                              ; preds = %536
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.src, i32 noundef 1838, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

543:                                              ; preds = %536, %248
  %544 = phi i64 [ %415, %536 ], [ %173, %248 ]
  %545 = phi i64 [ %539, %536 ], [ %251, %248 ]
  %546 = trunc nsw i64 %545 to i32
  %547 = getelementptr i8, ptr %0, i64 %544
  %548 = getelementptr i8, ptr %547, i64 -1
  %549 = load i8, ptr %548, align 1, !tbaa !9
  store i8 %549, ptr %1, align 1, !tbaa !9
  %550 = icmp sgt i64 %545, 0
  br i1 %550, label %551, label %621

551:                                              ; preds = %543
  %552 = and i64 %545, 2147483647
  %553 = icmp samesign ult i64 %552, 16
  br i1 %553, label %580, label %554

554:                                              ; preds = %551
  %555 = getelementptr i8, ptr %1, i64 1
  %556 = getelementptr i8, ptr %1, i64 %552
  %557 = getelementptr i8, ptr %556, i64 1
  %558 = shl nuw nsw i64 %552, 2
  %559 = getelementptr i8, ptr %31, i64 %558
  %560 = icmp ult ptr %555, %559
  %561 = icmp ult ptr %31, %557
  %562 = and i1 %560, %561
  br i1 %562, label %580, label %563

563:                                              ; preds = %554
  %564 = and i64 %545, 2147483640
  br label %565

565:                                              ; preds = %565, %563
  %566 = phi i64 [ 0, %563 ], [ %576, %565 ]
  %567 = getelementptr inbounds nuw i32, ptr %31, i64 %566
  %568 = getelementptr inbounds nuw i8, ptr %567, i64 16
  %569 = load <4 x i32>, ptr %567, align 4, !tbaa !5, !alias.scope !91
  %570 = load <4 x i32>, ptr %568, align 4, !tbaa !5, !alias.scope !91
  %571 = trunc <4 x i32> %569 to <4 x i8>
  %572 = trunc <4 x i32> %570 to <4 x i8>
  %573 = getelementptr inbounds nuw i8, ptr %1, i64 %566
  %574 = getelementptr inbounds nuw i8, ptr %573, i64 1
  %575 = getelementptr inbounds nuw i8, ptr %573, i64 5
  store <4 x i8> %571, ptr %574, align 1, !tbaa !9, !alias.scope !94, !noalias !91
  store <4 x i8> %572, ptr %575, align 1, !tbaa !9, !alias.scope !94, !noalias !91
  %576 = add nuw i64 %566, 8
  %577 = icmp eq i64 %576, %564
  br i1 %577, label %578, label %565, !llvm.loop !96

578:                                              ; preds = %565
  %579 = icmp eq i64 %552, %564
  br i1 %579, label %621, label %580

580:                                              ; preds = %554, %551, %578
  %581 = phi i64 [ 0, %554 ], [ 0, %551 ], [ %564, %578 ]
  %582 = and i64 %545, 3
  %583 = icmp eq i64 %582, 0
  br i1 %583, label %594, label %584

584:                                              ; preds = %580, %584
  %585 = phi i64 [ %587, %584 ], [ %581, %580 ]
  %586 = phi i64 [ %592, %584 ], [ 0, %580 ]
  %587 = add nuw nsw i64 %585, 1
  %588 = getelementptr inbounds nuw i32, ptr %31, i64 %585
  %589 = load i32, ptr %588, align 4, !tbaa !5
  %590 = trunc i32 %589 to i8
  %591 = getelementptr inbounds nuw i8, ptr %1, i64 %587
  store i8 %590, ptr %591, align 1, !tbaa !9
  %592 = add i64 %586, 1
  %593 = icmp eq i64 %592, %582
  br i1 %593, label %594, label %584, !llvm.loop !97

594:                                              ; preds = %584, %580
  %595 = phi i64 [ %581, %580 ], [ %587, %584 ]
  %596 = sub nsw i64 %581, %552
  %597 = icmp ugt i64 %596, -4
  br i1 %597, label %621, label %598

598:                                              ; preds = %594, %598
  %599 = phi i64 [ %615, %598 ], [ %595, %594 ]
  %600 = add nuw nsw i64 %599, 1
  %601 = getelementptr inbounds nuw i32, ptr %31, i64 %599
  %602 = load i32, ptr %601, align 4, !tbaa !5
  %603 = trunc i32 %602 to i8
  %604 = getelementptr inbounds nuw i8, ptr %1, i64 %600
  store i8 %603, ptr %604, align 1, !tbaa !9
  %605 = add nuw nsw i64 %599, 2
  %606 = getelementptr inbounds nuw i32, ptr %31, i64 %600
  %607 = load i32, ptr %606, align 4, !tbaa !5
  %608 = trunc i32 %607 to i8
  %609 = getelementptr inbounds nuw i8, ptr %1, i64 %605
  store i8 %608, ptr %609, align 1, !tbaa !9
  %610 = add nuw nsw i64 %599, 3
  %611 = getelementptr inbounds nuw i32, ptr %31, i64 %605
  %612 = load i32, ptr %611, align 4, !tbaa !5
  %613 = trunc i32 %612 to i8
  %614 = getelementptr inbounds nuw i8, ptr %1, i64 %610
  store i8 %613, ptr %614, align 1, !tbaa !9
  %615 = add nuw nsw i64 %599, 4
  %616 = getelementptr inbounds nuw i32, ptr %31, i64 %610
  %617 = load i32, ptr %616, align 4, !tbaa !5
  %618 = trunc i32 %617 to i8
  %619 = getelementptr inbounds nuw i8, ptr %1, i64 %615
  store i8 %618, ptr %619, align 1, !tbaa !9
  %620 = icmp eq i64 %615, %552
  br i1 %620, label %621, label %598, !llvm.loop !99

621:                                              ; preds = %594, %598, %578, %543
  %622 = phi i32 [ 0, %543 ], [ %546, %578 ], [ %546, %598 ], [ %546, %594 ]
  %623 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %622, i32 1), !nosanitize !10
  %624 = extractvalue { i32, i1 } %623, 1, !nosanitize !10
  br i1 %624, label %24, label %625, !prof !11, !nosanitize !10

625:                                              ; preds = %621
  %626 = extractvalue { i32, i1 } %623, 0
  %627 = icmp slt i32 %626, %3
  br i1 %627, label %628, label %714

628:                                              ; preds = %625
  %629 = zext i32 %626 to i64
  %630 = add nsw i32 %3, -2
  %631 = sub i32 %630, %622
  %632 = zext i32 %631 to i64
  %633 = add nuw nsw i64 %632, 1
  %634 = icmp ult i32 %631, 27
  br i1 %634, label %670, label %635

635:                                              ; preds = %628
  %636 = getelementptr i8, ptr %1, i64 %629
  %637 = add nsw i32 %3, -2
  %638 = sub i32 %637, %622
  %639 = zext i32 %638 to i64
  %640 = getelementptr i8, ptr %1, i64 %639
  %641 = getelementptr i8, ptr %640, i64 %629
  %642 = getelementptr i8, ptr %641, i64 1
  %643 = shl nuw nsw i64 %629, 2
  %644 = getelementptr i8, ptr %31, i64 %643
  %645 = add nuw nsw i64 %639, %629
  %646 = shl nuw nsw i64 %645, 2
  %647 = getelementptr i8, ptr %31, i64 %646
  %648 = getelementptr i8, ptr %647, i64 4
  %649 = icmp ult ptr %636, %648
  %650 = icmp ult ptr %644, %642
  %651 = and i1 %649, %650
  br i1 %651, label %670, label %652

652:                                              ; preds = %635
  %653 = and i64 %633, 8589934584
  %654 = add nuw nsw i64 %653, %629
  br label %655

655:                                              ; preds = %655, %652
  %656 = phi i64 [ 0, %652 ], [ %666, %655 ]
  %657 = add i64 %656, %629
  %658 = getelementptr inbounds nuw i32, ptr %31, i64 %657
  %659 = getelementptr inbounds nuw i8, ptr %658, i64 16
  %660 = load <4 x i32>, ptr %658, align 4, !tbaa !5, !alias.scope !100
  %661 = load <4 x i32>, ptr %659, align 4, !tbaa !5, !alias.scope !100
  %662 = trunc <4 x i32> %660 to <4 x i8>
  %663 = trunc <4 x i32> %661 to <4 x i8>
  %664 = getelementptr inbounds nuw i8, ptr %1, i64 %657
  %665 = getelementptr inbounds nuw i8, ptr %664, i64 4
  store <4 x i8> %662, ptr %664, align 1, !tbaa !9, !alias.scope !103, !noalias !100
  store <4 x i8> %663, ptr %665, align 1, !tbaa !9, !alias.scope !103, !noalias !100
  %666 = add nuw i64 %656, 8
  %667 = icmp eq i64 %666, %653
  br i1 %667, label %668, label %655, !llvm.loop !105

668:                                              ; preds = %655
  %669 = icmp eq i64 %633, %653
  br i1 %669, label %714, label %670

670:                                              ; preds = %635, %628, %668
  %671 = phi i64 [ %629, %635 ], [ %629, %628 ], [ %654, %668 ]
  %672 = trunc i64 %671 to i32
  %673 = sub i32 %3, %672
  %674 = and i32 %673, 3
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %686, label %676

676:                                              ; preds = %670, %676
  %677 = phi i64 [ %683, %676 ], [ %671, %670 ]
  %678 = phi i32 [ %684, %676 ], [ 0, %670 ]
  %679 = getelementptr inbounds nuw i32, ptr %31, i64 %677
  %680 = load i32, ptr %679, align 4, !tbaa !5
  %681 = trunc i32 %680 to i8
  %682 = getelementptr inbounds nuw i8, ptr %1, i64 %677
  store i8 %681, ptr %682, align 1, !tbaa !9
  %683 = add nuw nsw i64 %677, 1
  %684 = add i32 %678, 1
  %685 = icmp eq i32 %684, %674
  br i1 %685, label %686, label %676, !llvm.loop !106

686:                                              ; preds = %676, %670
  %687 = phi i64 [ %671, %670 ], [ %683, %676 ]
  %688 = sub i32 %672, %3
  %689 = icmp ugt i32 %688, -4
  br i1 %689, label %714, label %690

690:                                              ; preds = %686, %690
  %691 = phi i64 [ %711, %690 ], [ %687, %686 ]
  %692 = getelementptr inbounds nuw i32, ptr %31, i64 %691
  %693 = load i32, ptr %692, align 4, !tbaa !5
  %694 = trunc i32 %693 to i8
  %695 = getelementptr inbounds nuw i8, ptr %1, i64 %691
  store i8 %694, ptr %695, align 1, !tbaa !9
  %696 = add nuw nsw i64 %691, 1
  %697 = getelementptr inbounds nuw i32, ptr %31, i64 %696
  %698 = load i32, ptr %697, align 4, !tbaa !5
  %699 = trunc i32 %698 to i8
  %700 = getelementptr inbounds nuw i8, ptr %1, i64 %696
  store i8 %699, ptr %700, align 1, !tbaa !9
  %701 = add nuw nsw i64 %691, 2
  %702 = getelementptr inbounds nuw i32, ptr %31, i64 %701
  %703 = load i32, ptr %702, align 4, !tbaa !5
  %704 = trunc i32 %703 to i8
  %705 = getelementptr inbounds nuw i8, ptr %1, i64 %701
  store i8 %704, ptr %705, align 1, !tbaa !9
  %706 = add nuw nsw i64 %691, 3
  %707 = getelementptr inbounds nuw i32, ptr %31, i64 %706
  %708 = load i32, ptr %707, align 4, !tbaa !5
  %709 = trunc i32 %708 to i8
  %710 = getelementptr inbounds nuw i8, ptr %1, i64 %706
  store i8 %709, ptr %710, align 1, !tbaa !9
  %711 = add nuw nsw i64 %691, 4
  %712 = trunc i64 %711 to i32
  %713 = icmp eq i32 %3, %712
  br i1 %713, label %714, label %690, !llvm.loop !107

714:                                              ; preds = %686, %690, %668, %625
  %715 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %546, i32 1), !nosanitize !10
  %716 = extractvalue { i32, i1 } %715, 1, !nosanitize !10
  br i1 %716, label %24, label %717, !prof !11, !nosanitize !10

717:                                              ; preds = %714
  %718 = extractvalue { i32, i1 } %715, 0, !nosanitize !10
  br label %719

719:                                              ; preds = %30, %717
  %720 = phi i32 [ %718, %717 ], [ -2, %30 ]
  tail call void @free(ptr noundef %33) #12
  tail call void @free(ptr noundef %32) #12
  br i1 %20, label %721, label %722

721:                                              ; preds = %719
  tail call void @free(ptr noundef %31) #12
  br label %722

722:                                              ; preds = %719, %721, %15, %17, %7
  %723 = phi i32 [ -1, %7 ], [ 1, %17 ], [ 0, %15 ], [ %720, %721 ], [ %720, %719 ]
  ret i32 %723
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @ss_mintrosort(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
  %5 = alloca [16 x %struct.anon], align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %5) #12
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = add nsw i64 %9, 2147483648
  %11 = icmp ult i64 %10, 4294967296
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 411, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

13:                                               ; preds = %4
  %14 = and i64 %8, 261120
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = lshr i64 %9, 8
  %18 = and i64 %17, 255
  %19 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 8), !nosanitize !10
  %22 = extractvalue { i32, i1 } %21, 0, !nosanitize !10
  %23 = extractvalue { i32, i1 } %21, 1, !nosanitize !10
  br i1 %23, label %24, label %29, !prof !11, !nosanitize !10

24:                                               ; preds = %16
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

25:                                               ; preds = %13
  %26 = and i64 %9, 255
  %27 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %16, %25
  %30 = phi i32 [ %22, %16 ], [ %28, %25 ]
  %31 = getelementptr i8, ptr %0, i64 2
  br label %32

32:                                               ; preds = %1727, %29
  %33 = phi ptr [ %3, %29 ], [ %1728, %1727 ]
  %34 = phi i32 [ 2, %29 ], [ %1729, %1727 ]
  %35 = phi ptr [ %2, %29 ], [ %1730, %1727 ]
  %36 = phi i32 [ 0, %29 ], [ %1731, %1727 ]
  %37 = phi i32 [ %30, %29 ], [ %1732, %1727 ]
  %38 = ptrtoint ptr %33 to i64
  %39 = ptrtoint ptr %35 to i64
  %40 = sub i64 %38, %39
  %41 = ashr exact i64 %40, 2
  %42 = icmp slt i64 %41, 9
  br i1 %42, label %43, label %149

43:                                               ; preds = %32
  %44 = icmp sgt i64 %41, 1
  br i1 %44, label %45, label %131

45:                                               ; preds = %43
  %46 = getelementptr inbounds i8, ptr %33, i64 -8
  %47 = icmp ugt ptr %35, %46
  br i1 %47, label %131, label %48

48:                                               ; preds = %45
  %49 = sext i32 %34 to i64
  %50 = getelementptr inbounds i8, ptr %0, i64 %49
  br label %51

51:                                               ; preds = %126, %48
  %52 = phi ptr [ %46, %48 ], [ %129, %126 ]
  %53 = load i32, ptr %52, align 4, !tbaa !5
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, ptr %1, i64 %55
  %57 = getelementptr i8, ptr %56, i64 4
  %58 = load i32, ptr %54, align 4, !tbaa !5
  br label %60

59:                                               ; preds = %118
  br label %60, !llvm.loop !108

60:                                               ; preds = %59, %51
  %61 = phi i32 [ %58, %51 ], [ %119, %59 ]
  %62 = phi ptr [ %54, %51 ], [ %116, %59 ]
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, ptr %1, i64 %63
  %65 = load i32, ptr %56, align 4, !tbaa !5
  %66 = load i32, ptr %57, align 4, !tbaa !5
  %67 = load i32, ptr %64, align 4, !tbaa !5
  %68 = getelementptr i8, ptr %64, i64 4
  %69 = load i32, ptr %68, align 4, !tbaa !5
  %70 = sext i32 %65 to i64
  %71 = getelementptr inbounds i8, ptr %50, i64 %70
  %72 = sext i32 %67 to i64
  %73 = getelementptr inbounds i8, ptr %50, i64 %72
  %74 = sext i32 %66 to i64
  %75 = getelementptr i8, ptr %31, i64 %74
  %76 = sext i32 %69 to i64
  %77 = getelementptr i8, ptr %31, i64 %76
  %78 = icmp ult ptr %71, %75
  %79 = icmp ult ptr %73, %77
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %93

81:                                               ; preds = %60, %87
  %82 = phi ptr [ %88, %87 ], [ %71, %60 ]
  %83 = phi ptr [ %89, %87 ], [ %73, %60 ]
  %84 = load i8, ptr %82, align 1, !tbaa !9
  %85 = load i8, ptr %83, align 1, !tbaa !9
  %86 = icmp eq i8 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %81
  %88 = getelementptr inbounds nuw i8, ptr %82, i64 1
  %89 = getelementptr inbounds nuw i8, ptr %83, i64 1
  %90 = icmp ult ptr %88, %75
  %91 = icmp ult ptr %89, %77
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %81, label %93, !llvm.loop !26

93:                                               ; preds = %87, %60
  %94 = phi ptr [ %73, %60 ], [ %89, %87 ]
  %95 = phi ptr [ %71, %60 ], [ %88, %87 ]
  %96 = phi i1 [ %78, %60 ], [ %90, %87 ]
  %97 = phi i1 [ %79, %60 ], [ %91, %87 ]
  br i1 %96, label %98, label %102

98:                                               ; preds = %93
  br i1 %97, label %99, label %111

99:                                               ; preds = %98
  %100 = load i8, ptr %95, align 1, !tbaa !9
  %101 = load i8, ptr %94, align 1, !tbaa !9
  br label %104

102:                                              ; preds = %93
  %103 = sext i1 %97 to i32
  br label %121

104:                                              ; preds = %81, %99
  %105 = phi i8 [ %101, %99 ], [ %85, %81 ]
  %106 = phi i8 [ %100, %99 ], [ %84, %81 ]
  %107 = zext i8 %106 to i32
  %108 = zext i8 %105 to i32
  %109 = sub nsw i32 %107, %108
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %104, %98
  br label %112

112:                                              ; preds = %111, %118
  %113 = phi i32 [ %119, %118 ], [ %61, %111 ]
  %114 = phi ptr [ %116, %118 ], [ %62, %111 ]
  %115 = getelementptr inbounds i8, ptr %114, i64 -4
  store i32 %113, ptr %115, align 4, !tbaa !5
  %116 = getelementptr inbounds nuw i8, ptr %114, i64 4
  %117 = icmp ult ptr %116, %33
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = load i32, ptr %116, align 4, !tbaa !5
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %112, label %59, !llvm.loop !108

121:                                              ; preds = %104, %102
  %122 = phi i32 [ %103, %102 ], [ %109, %104 ]
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = xor i32 %61, -1
  store i32 %125, ptr %62, align 4, !tbaa !5
  br label %126

126:                                              ; preds = %112, %124, %121
  %127 = phi ptr [ %62, %124 ], [ %62, %121 ], [ %116, %112 ]
  %128 = getelementptr inbounds i8, ptr %127, i64 -4
  store i32 %53, ptr %128, align 4, !tbaa !5
  %129 = getelementptr inbounds i8, ptr %52, i64 -4
  %130 = icmp ugt ptr %35, %129
  br i1 %130, label %131, label %51, !llvm.loop !109

131:                                              ; preds = %126, %45, %43
  %132 = icmp sgt i32 %36, -1
  br i1 %132, label %134, label %133

133:                                              ; preds = %131
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 417, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

134:                                              ; preds = %131
  %135 = icmp eq i32 %36, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %134
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %5) #12
  ret void

137:                                              ; preds = %1615, %1253, %401, %149
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

138:                                              ; preds = %134
  %139 = add nsw i32 %36, -1
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds nuw [16 x %struct.anon], ptr %5, i64 0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !110
  %143 = getelementptr inbounds nuw i8, ptr %141, i64 8
  %144 = load ptr, ptr %143, align 8, !tbaa !112
  %145 = getelementptr inbounds nuw i8, ptr %141, i64 16
  %146 = load i32, ptr %145, align 8, !tbaa !113
  %147 = getelementptr inbounds nuw i8, ptr %141, i64 20
  %148 = load i32, ptr %147, align 4, !tbaa !114
  br label %1727

149:                                              ; preds = %32
  %150 = sext i32 %34 to i64
  %151 = getelementptr inbounds i8, ptr %0, i64 %150
  %152 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %37, i32 -1)
  %153 = extractvalue { i32, i1 } %152, 0, !nosanitize !10
  %154 = extractvalue { i32, i1 } %152, 1, !nosanitize !10
  br i1 %154, label %137, label %155, !prof !11, !nosanitize !10

155:                                              ; preds = %149
  %156 = icmp eq i32 %37, 0
  br i1 %156, label %157, label %357

157:                                              ; preds = %155
  %158 = icmp samesign ult i64 %41, 2147483648
  br i1 %158, label %160, label %159

159:                                              ; preds = %157
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 422, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

160:                                              ; preds = %157
  %161 = trunc nuw nsw i64 %41 to i32
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = lshr i64 %41, 1
  br label %189

166:                                              ; preds = %160
  %167 = add nsw i32 %161, -1
  %168 = lshr i32 %167, 1
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds nuw i32, ptr %35, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !5
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, ptr %1, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !5
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %151, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !9
  %178 = zext nneg i32 %167 to i64
  %179 = getelementptr inbounds nuw i32, ptr %35, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !5
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, ptr %1, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !5
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %151, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !9
  %187 = icmp ult i8 %177, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %166
  store i32 %171, ptr %179, align 4, !tbaa !5
  store i32 %180, ptr %170, align 4, !tbaa !5
  br label %189

189:                                              ; preds = %164, %188, %166
  %190 = phi i64 [ %165, %164 ], [ %169, %188 ], [ %169, %166 ]
  %191 = phi i32 [ %161, %164 ], [ %167, %188 ], [ %167, %166 ]
  br label %192

192:                                              ; preds = %242, %189
  %193 = phi i64 [ %190, %189 ], [ %194, %242 ]
  %194 = add nsw i64 %193, -1
  %195 = getelementptr inbounds nuw i32, ptr %35, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !5
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, ptr %1, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !5
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, ptr %151, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !9
  %203 = trunc nuw nsw i64 %194 to i32
  br label %205

204:                                              ; preds = %232
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

205:                                              ; preds = %232, %192
  %206 = phi i32 [ %234, %232 ], [ %203, %192 ]
  %207 = shl nsw i32 %206, 1
  %208 = or disjoint i32 %207, 1
  %209 = icmp slt i32 %208, %191
  br i1 %209, label %210, label %242

210:                                              ; preds = %205
  %211 = add nsw i32 %207, 2
  %212 = sext i32 %208 to i64
  %213 = getelementptr inbounds i32, ptr %35, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !5
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, ptr %1, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !5
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, ptr %151, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !9
  %221 = sext i32 %211 to i64
  %222 = getelementptr inbounds i32, ptr %35, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !5
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, ptr %1, i64 %224
  %226 = load i32, ptr %225, align 4, !tbaa !5
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, ptr %151, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !9
  %230 = tail call i8 @llvm.umax.i8(i8 %220, i8 %229)
  %231 = icmp ugt i8 %230, %202
  br i1 %231, label %232, label %242

232:                                              ; preds = %210
  %233 = icmp ult i8 %220, %229
  %234 = select i1 %233, i32 %211, i32 %208
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, ptr %35, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !5
  %238 = sext i32 %206 to i64
  %239 = getelementptr inbounds i32, ptr %35, i64 %238
  store i32 %237, ptr %239, align 4, !tbaa !5
  %240 = add i32 %234, 1073741824
  %241 = icmp sgt i32 %240, -1
  br i1 %241, label %205, label %204, !prof !60, !llvm.loop !115, !nosanitize !10

242:                                              ; preds = %210, %205
  %243 = sext i32 %206 to i64
  %244 = getelementptr inbounds i32, ptr %35, i64 %243
  store i32 %196, ptr %244, align 4, !tbaa !5
  %245 = icmp sgt i64 %193, 1
  br i1 %245, label %192, label %246, !llvm.loop !116

246:                                              ; preds = %242
  br i1 %163, label %247, label %300

247:                                              ; preds = %246
  %248 = load i32, ptr %35, align 4, !tbaa !5
  %249 = zext nneg i32 %191 to i64
  %250 = getelementptr inbounds nuw i32, ptr %35, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !5
  store i32 %251, ptr %35, align 4, !tbaa !5
  store i32 %248, ptr %250, align 4, !tbaa !5
  %252 = load i32, ptr %35, align 4, !tbaa !5
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, ptr %1, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !5
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, ptr %151, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !9
  br label %260

259:                                              ; preds = %287
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

260:                                              ; preds = %287, %247
  %261 = phi i32 [ %289, %287 ], [ 0, %247 ]
  %262 = shl nsw i32 %261, 1
  %263 = or disjoint i32 %262, 1
  %264 = icmp slt i32 %263, %191
  br i1 %264, label %265, label %297

265:                                              ; preds = %260
  %266 = add nsw i32 %262, 2
  %267 = sext i32 %263 to i64
  %268 = getelementptr inbounds i32, ptr %35, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !5
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, ptr %1, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !5
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, ptr %151, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !9
  %276 = sext i32 %266 to i64
  %277 = getelementptr inbounds i32, ptr %35, i64 %276
  %278 = load i32, ptr %277, align 4, !tbaa !5
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, ptr %1, i64 %279
  %281 = load i32, ptr %280, align 4, !tbaa !5
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, ptr %151, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !9
  %285 = tail call i8 @llvm.umax.i8(i8 %275, i8 %284)
  %286 = icmp ugt i8 %285, %258
  br i1 %286, label %287, label %297

287:                                              ; preds = %265
  %288 = icmp ult i8 %275, %284
  %289 = select i1 %288, i32 %266, i32 %263
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, ptr %35, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !5
  %293 = sext i32 %261 to i64
  %294 = getelementptr inbounds i32, ptr %35, i64 %293
  store i32 %292, ptr %294, align 4, !tbaa !5
  %295 = add i32 %289, 1073741824
  %296 = icmp sgt i32 %295, -1
  br i1 %296, label %260, label %259, !prof !60, !llvm.loop !115, !nosanitize !10

297:                                              ; preds = %265, %260
  %298 = sext i32 %261 to i64
  %299 = getelementptr inbounds i32, ptr %35, i64 %298
  store i32 %252, ptr %299, align 4, !tbaa !5
  br label %300

300:                                              ; preds = %297, %246
  %301 = add nsw i32 %191, -1
  %302 = zext nneg i32 %301 to i64
  br label %303

303:                                              ; preds = %352, %300
  %304 = phi i64 [ %302, %300 ], [ %355, %352 ]
  %305 = load i32, ptr %35, align 4, !tbaa !5
  %306 = getelementptr inbounds nuw i32, ptr %35, i64 %304
  %307 = load i32, ptr %306, align 4, !tbaa !5
  store i32 %307, ptr %35, align 4, !tbaa !5
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, ptr %1, i64 %308
  %310 = load i32, ptr %309, align 4, !tbaa !5
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8, ptr %151, i64 %311
  %313 = load i8, ptr %312, align 1, !tbaa !9
  br label %315

314:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

315:                                              ; preds = %342, %303
  %316 = phi i32 [ %344, %342 ], [ 0, %303 ]
  %317 = shl nsw i32 %316, 1
  %318 = or disjoint i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = icmp sgt i64 %304, %319
  br i1 %320, label %321, label %352

321:                                              ; preds = %315
  %322 = add nsw i32 %317, 2
  %323 = getelementptr inbounds i32, ptr %35, i64 %319
  %324 = load i32, ptr %323, align 4, !tbaa !5
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, ptr %1, i64 %325
  %327 = load i32, ptr %326, align 4, !tbaa !5
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, ptr %151, i64 %328
  %330 = load i8, ptr %329, align 1, !tbaa !9
  %331 = sext i32 %322 to i64
  %332 = getelementptr inbounds i32, ptr %35, i64 %331
  %333 = load i32, ptr %332, align 4, !tbaa !5
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, ptr %1, i64 %334
  %336 = load i32, ptr %335, align 4, !tbaa !5
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, ptr %151, i64 %337
  %339 = load i8, ptr %338, align 1, !tbaa !9
  %340 = tail call i8 @llvm.umax.i8(i8 %330, i8 %339)
  %341 = icmp ugt i8 %340, %313
  br i1 %341, label %342, label %352

342:                                              ; preds = %321
  %343 = icmp ult i8 %330, %339
  %344 = select i1 %343, i32 %322, i32 %318
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, ptr %35, i64 %345
  %347 = load i32, ptr %346, align 4, !tbaa !5
  %348 = sext i32 %316 to i64
  %349 = getelementptr inbounds i32, ptr %35, i64 %348
  store i32 %347, ptr %349, align 4, !tbaa !5
  %350 = add i32 %344, 1073741824
  %351 = icmp sgt i32 %350, -1
  br i1 %351, label %315, label %314, !prof !60, !llvm.loop !115, !nosanitize !10

352:                                              ; preds = %321, %315
  %353 = sext i32 %316 to i64
  %354 = getelementptr inbounds i32, ptr %35, i64 %353
  store i32 %307, ptr %354, align 4, !tbaa !5
  store i32 %305, ptr %306, align 4, !tbaa !5
  %355 = add nsw i64 %304, -1
  %356 = icmp sgt i64 %304, 1
  br i1 %356, label %303, label %357, !llvm.loop !117

357:                                              ; preds = %352, %155
  %358 = icmp slt i32 %153, 0
  br i1 %358, label %359, label %589

359:                                              ; preds = %357
  %360 = load i32, ptr %35, align 4, !tbaa !5
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, ptr %1, i64 %361
  %363 = load i32, ptr %362, align 4, !tbaa !5
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8, ptr %151, i64 %364
  %366 = load i8, ptr %365, align 1, !tbaa !9
  %367 = zext i8 %366 to i32
  %368 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %369 = icmp ult ptr %368, %33
  br i1 %369, label %370, label %401

370:                                              ; preds = %359, %388
  %371 = phi ptr [ %391, %388 ], [ %368, %359 ]
  %372 = phi i32 [ %390, %388 ], [ %367, %359 ]
  %373 = phi ptr [ %389, %388 ], [ %35, %359 ]
  %374 = load i32, ptr %371, align 4, !tbaa !5
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, ptr %1, i64 %375
  %377 = load i32, ptr %376, align 4, !tbaa !5
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, ptr %151, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !9
  %381 = zext i8 %380 to i32
  %382 = icmp eq i32 %372, %381
  br i1 %382, label %388, label %383

383:                                              ; preds = %370
  %384 = ptrtoint ptr %371 to i64
  %385 = ptrtoint ptr %373 to i64
  %386 = sub i64 %384, %385
  %387 = icmp sgt i64 %386, 4
  br i1 %387, label %393, label %388

388:                                              ; preds = %383, %370
  %389 = phi ptr [ %373, %370 ], [ %371, %383 ]
  %390 = phi i32 [ %372, %370 ], [ %381, %383 ]
  %391 = getelementptr inbounds nuw i8, ptr %371, i64 4
  %392 = icmp ult ptr %391, %33
  br i1 %392, label %370, label %393, !llvm.loop !118

393:                                              ; preds = %383, %388
  %394 = phi ptr [ %389, %388 ], [ %373, %383 ]
  %395 = phi i32 [ %390, %388 ], [ %372, %383 ]
  %396 = phi ptr [ %391, %388 ], [ %371, %383 ]
  %397 = load i32, ptr %394, align 4, !tbaa !5
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, ptr %1, i64 %398
  %400 = load i32, ptr %399, align 4, !tbaa !5
  br label %401

401:                                              ; preds = %393, %359
  %402 = phi i32 [ %363, %359 ], [ %400, %393 ]
  %403 = phi ptr [ %35, %359 ], [ %394, %393 ]
  %404 = phi i32 [ %367, %359 ], [ %395, %393 ]
  %405 = phi ptr [ %368, %359 ], [ %396, %393 ]
  %406 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %402, i32 -1)
  %407 = extractvalue { i32, i1 } %406, 1, !nosanitize !10
  br i1 %407, label %137, label %408, !prof !11, !nosanitize !10

408:                                              ; preds = %401
  %409 = extractvalue { i32, i1 } %406, 0, !nosanitize !10
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8, ptr %151, i64 %410
  %412 = load i8, ptr %411, align 1, !tbaa !9
  %413 = zext i8 %412 to i32
  %414 = icmp samesign ugt i32 %404, %413
  br i1 %414, label %415, label %484

415:                                              ; preds = %408
  %416 = getelementptr inbounds i8, ptr %403, i64 -4
  br label %417

417:                                              ; preds = %476, %415
  %418 = phi ptr [ %405, %415 ], [ %453, %476 ]
  %419 = phi ptr [ %416, %415 ], [ %450, %476 ]
  %420 = getelementptr inbounds nuw i8, ptr %419, i64 4
  %421 = icmp ult ptr %420, %418
  br i1 %421, label %422, label %449

422:                                              ; preds = %417, %445
  %423 = phi ptr [ %447, %445 ], [ %420, %417 ]
  %424 = load i32, ptr %423, align 4, !tbaa !5
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, ptr %1, i64 %425
  %427 = load i32, ptr %426, align 4, !tbaa !5
  %428 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %427, i32 %34), !nosanitize !10
  %429 = extractvalue { i32, i1 } %428, 0, !nosanitize !10
  %430 = extractvalue { i32, i1 } %428, 1, !nosanitize !10
  br i1 %430, label %431, label %432, !prof !11, !nosanitize !10

431:                                              ; preds = %435, %432, %422, %466, %463, %455
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

432:                                              ; preds = %422
  %433 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %424, i32 1), !nosanitize !10
  %434 = extractvalue { i32, i1 } %433, 1, !nosanitize !10
  br i1 %434, label %431, label %435, !prof !11, !nosanitize !10

435:                                              ; preds = %432
  %436 = extractvalue { i32, i1 } %433, 0, !nosanitize !10
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, ptr %1, i64 %437
  %439 = load i32, ptr %438, align 4, !tbaa !5
  %440 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %439, i32 1), !nosanitize !10
  %441 = extractvalue { i32, i1 } %440, 1, !nosanitize !10
  br i1 %441, label %431, label %442, !prof !11, !nosanitize !10

442:                                              ; preds = %435
  %443 = extractvalue { i32, i1 } %440, 0, !nosanitize !10
  %444 = icmp slt i32 %429, %443
  br i1 %444, label %449, label %445

445:                                              ; preds = %442
  %446 = xor i32 %424, -1
  store i32 %446, ptr %423, align 4, !tbaa !5
  %447 = getelementptr inbounds nuw i8, ptr %423, i64 4
  %448 = icmp ult ptr %447, %418
  br i1 %448, label %422, label %449, !llvm.loop !119

449:                                              ; preds = %445, %442, %417
  %450 = phi ptr [ %420, %417 ], [ %423, %442 ], [ %447, %445 ]
  br label %451

451:                                              ; preds = %473, %449
  %452 = phi ptr [ %418, %449 ], [ %453, %473 ]
  %453 = getelementptr inbounds i8, ptr %452, i64 -4
  %454 = icmp ult ptr %450, %453
  br i1 %454, label %455, label %479

455:                                              ; preds = %451
  %456 = load i32, ptr %453, align 4, !tbaa !5
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, ptr %1, i64 %457
  %459 = load i32, ptr %458, align 4, !tbaa !5
  %460 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %459, i32 %34), !nosanitize !10
  %461 = extractvalue { i32, i1 } %460, 0, !nosanitize !10
  %462 = extractvalue { i32, i1 } %460, 1, !nosanitize !10
  br i1 %462, label %431, label %463, !prof !11, !nosanitize !10

463:                                              ; preds = %455
  %464 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %456, i32 1), !nosanitize !10
  %465 = extractvalue { i32, i1 } %464, 1, !nosanitize !10
  br i1 %465, label %431, label %466, !prof !11, !nosanitize !10

466:                                              ; preds = %463
  %467 = extractvalue { i32, i1 } %464, 0, !nosanitize !10
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, ptr %1, i64 %468
  %470 = load i32, ptr %469, align 4, !tbaa !5
  %471 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %470, i32 1), !nosanitize !10
  %472 = extractvalue { i32, i1 } %471, 1, !nosanitize !10
  br i1 %472, label %431, label %473, !prof !11, !nosanitize !10

473:                                              ; preds = %466
  %474 = extractvalue { i32, i1 } %471, 0, !nosanitize !10
  %475 = icmp slt i32 %461, %474
  br i1 %475, label %451, label %476, !llvm.loop !120

476:                                              ; preds = %473
  %477 = xor i32 %456, -1
  %478 = load i32, ptr %450, align 4, !tbaa !5
  store i32 %478, ptr %453, align 4, !tbaa !5
  store i32 %477, ptr %450, align 4, !tbaa !5
  br label %417

479:                                              ; preds = %451
  %480 = icmp ult ptr %403, %450
  br i1 %480, label %481, label %484

481:                                              ; preds = %479
  %482 = load i32, ptr %403, align 4, !tbaa !5
  %483 = xor i32 %482, -1
  store i32 %483, ptr %403, align 4, !tbaa !5
  br label %484

484:                                              ; preds = %481, %479, %408
  %485 = phi ptr [ %403, %408 ], [ %450, %479 ], [ %450, %481 ]
  %486 = ptrtoint ptr %405 to i64
  %487 = ptrtoint ptr %485 to i64
  %488 = sub i64 %486, %487
  %489 = ashr exact i64 %488, 2
  %490 = sub i64 %38, %486
  %491 = ashr exact i64 %490, 2
  %492 = icmp sgt i64 %489, %491
  br i1 %492, label %528, label %493

493:                                              ; preds = %484
  %494 = icmp sgt i64 %489, 1
  br i1 %494, label %495, label %1727

495:                                              ; preds = %493
  %496 = icmp slt i32 %36, 16
  br i1 %496, label %498, label %497

497:                                              ; preds = %495
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

498:                                              ; preds = %495
  %499 = sext i32 %36 to i64
  %500 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %499
  store ptr %405, ptr %500, align 8, !tbaa !110
  %501 = getelementptr inbounds nuw i8, ptr %500, i64 8
  store ptr %33, ptr %501, align 8, !tbaa !112
  %502 = getelementptr inbounds nuw i8, ptr %500, i64 16
  store i32 %34, ptr %502, align 8, !tbaa !113
  %503 = add nsw i32 %36, 1
  %504 = getelementptr inbounds nuw i8, ptr %500, i64 20
  store i32 -1, ptr %504, align 4, !tbaa !114
  %505 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %506 = extractvalue { i32, i1 } %505, 0, !nosanitize !10
  %507 = extractvalue { i32, i1 } %505, 1, !nosanitize !10
  br i1 %507, label %508, label %509, !prof !11, !nosanitize !10

508:                                              ; preds = %1720, %1611, %1580, %1537, %1483, %1447, %1404, %1350, %565, %533, %498
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

509:                                              ; preds = %498
  %510 = icmp samesign ult i64 %489, 2147483648
  br i1 %510, label %512, label %511

511:                                              ; preds = %509
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 437, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

512:                                              ; preds = %509
  %513 = and i64 %488, 261120
  %514 = icmp eq i64 %513, 0
  br i1 %514, label %524, label %515

515:                                              ; preds = %512
  %516 = lshr i64 %489, 8
  %517 = and i64 %516, 255
  %518 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %517
  %519 = load i32, ptr %518, align 4, !tbaa !5
  %520 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %519, i32 8), !nosanitize !10
  %521 = extractvalue { i32, i1 } %520, 0, !nosanitize !10
  %522 = extractvalue { i32, i1 } %520, 1, !nosanitize !10
  br i1 %522, label %523, label %1727, !prof !11, !nosanitize !10

523:                                              ; preds = %515
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

524:                                              ; preds = %512
  %525 = and i64 %489, 255
  %526 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %525
  %527 = load i32, ptr %526, align 4, !tbaa !5
  br label %1727

528:                                              ; preds = %484
  %529 = icmp sgt i64 %491, 1
  br i1 %529, label %530, label %565

530:                                              ; preds = %528
  %531 = icmp slt i32 %36, 16
  br i1 %531, label %533, label %532

532:                                              ; preds = %530
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 443, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

533:                                              ; preds = %530
  %534 = sext i32 %36 to i64
  %535 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %534
  store ptr %485, ptr %535, align 8, !tbaa !110
  %536 = getelementptr inbounds nuw i8, ptr %535, i64 8
  store ptr %405, ptr %536, align 8, !tbaa !112
  %537 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %538 = extractvalue { i32, i1 } %537, 1, !nosanitize !10
  br i1 %538, label %508, label %539, !prof !11, !nosanitize !10

539:                                              ; preds = %533
  %540 = extractvalue { i32, i1 } %537, 0, !nosanitize !10
  %541 = getelementptr inbounds nuw i8, ptr %535, i64 16
  store i32 %540, ptr %541, align 8, !tbaa !113
  %542 = add nsw i64 %489, 2147483648
  %543 = icmp ult i64 %542, 4294967296
  br i1 %543, label %545, label %544

544:                                              ; preds = %539
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 443, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

545:                                              ; preds = %539
  %546 = and i64 %488, 261120
  %547 = icmp eq i64 %546, 0
  br i1 %547, label %557, label %548

548:                                              ; preds = %545
  %549 = lshr i64 %489, 8
  %550 = and i64 %549, 255
  %551 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %550
  %552 = load i32, ptr %551, align 4, !tbaa !5
  %553 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %552, i32 8), !nosanitize !10
  %554 = extractvalue { i32, i1 } %553, 0, !nosanitize !10
  %555 = extractvalue { i32, i1 } %553, 1, !nosanitize !10
  br i1 %555, label %556, label %561, !prof !11, !nosanitize !10

556:                                              ; preds = %548
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

557:                                              ; preds = %545
  %558 = and i64 %489, 255
  %559 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %558
  %560 = load i32, ptr %559, align 4, !tbaa !5
  br label %561

561:                                              ; preds = %548, %557
  %562 = phi i32 [ %554, %548 ], [ %560, %557 ]
  %563 = add nsw i32 %36, 1
  %564 = getelementptr inbounds nuw i8, ptr %535, i64 20
  store i32 %562, ptr %564, align 4, !tbaa !114
  br label %1727

565:                                              ; preds = %528
  %566 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %567 = extractvalue { i32, i1 } %566, 0, !nosanitize !10
  %568 = extractvalue { i32, i1 } %566, 1, !nosanitize !10
  br i1 %568, label %508, label %569, !prof !11, !nosanitize !10

569:                                              ; preds = %565
  %570 = add nsw i64 %489, 2147483648
  %571 = icmp ult i64 %570, 4294967296
  br i1 %571, label %573, label %572

572:                                              ; preds = %569
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

573:                                              ; preds = %569
  %574 = and i64 %488, 261120
  %575 = icmp eq i64 %574, 0
  br i1 %575, label %585, label %576

576:                                              ; preds = %573
  %577 = lshr i64 %489, 8
  %578 = and i64 %577, 255
  %579 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %578
  %580 = load i32, ptr %579, align 4, !tbaa !5
  %581 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %580, i32 8), !nosanitize !10
  %582 = extractvalue { i32, i1 } %581, 0, !nosanitize !10
  %583 = extractvalue { i32, i1 } %581, 1, !nosanitize !10
  br i1 %583, label %584, label %1727, !prof !11, !nosanitize !10

584:                                              ; preds = %576
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

585:                                              ; preds = %573
  %586 = and i64 %489, 255
  %587 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %586
  %588 = load i32, ptr %587, align 4, !tbaa !5
  br label %1727

589:                                              ; preds = %357
  %590 = icmp ult i64 %41, 2147483648
  br i1 %590, label %592, label %591

591:                                              ; preds = %589
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 356, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_pivot) #11
  unreachable

592:                                              ; preds = %589
  %593 = lshr i64 %41, 1
  %594 = getelementptr inbounds nuw i32, ptr %35, i64 %593
  %595 = icmp samesign ult i64 %41, 513
  br i1 %595, label %596, label %750

596:                                              ; preds = %592
  %597 = icmp samesign ult i64 %41, 33
  br i1 %597, label %598, label %642

598:                                              ; preds = %596
  %599 = getelementptr inbounds i8, ptr %33, i64 -4
  %600 = load i32, ptr %35, align 4, !tbaa !5
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32, ptr %1, i64 %601
  %603 = load i32, ptr %602, align 4, !tbaa !5
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i8, ptr %151, i64 %604
  %606 = load i8, ptr %605, align 1, !tbaa !9
  %607 = load i32, ptr %594, align 4, !tbaa !5
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i32, ptr %1, i64 %608
  %610 = load i32, ptr %609, align 4, !tbaa !5
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i8, ptr %151, i64 %611
  %613 = load i8, ptr %612, align 1, !tbaa !9
  %614 = icmp ugt i8 %606, %613
  %615 = select i1 %614, i32 %600, i32 %607
  %616 = select i1 %614, ptr %35, ptr %594
  %617 = sext i32 %615 to i64
  %618 = getelementptr inbounds i32, ptr %1, i64 %617
  %619 = load i32, ptr %618, align 4, !tbaa !5
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i8, ptr %151, i64 %620
  %622 = load i8, ptr %621, align 1, !tbaa !9
  %623 = load i32, ptr %599, align 4, !tbaa !5
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds i32, ptr %1, i64 %624
  %626 = load i32, ptr %625, align 4, !tbaa !5
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds i8, ptr %151, i64 %627
  %629 = load i8, ptr %628, align 1, !tbaa !9
  %630 = icmp ugt i8 %622, %629
  br i1 %630, label %631, label %940

631:                                              ; preds = %598
  %632 = select i1 %614, i32 %607, i32 %600
  %633 = select i1 %614, ptr %594, ptr %35
  %634 = sext i32 %632 to i64
  %635 = getelementptr inbounds i32, ptr %1, i64 %634
  %636 = load i32, ptr %635, align 4, !tbaa !5
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds i8, ptr %151, i64 %637
  %639 = load i8, ptr %638, align 1, !tbaa !9
  %640 = icmp ugt i8 %639, %629
  %641 = select i1 %640, ptr %633, ptr %599
  br label %940

642:                                              ; preds = %596
  %643 = lshr i64 %41, 2
  %644 = getelementptr inbounds nuw i32, ptr %35, i64 %643
  %645 = getelementptr inbounds i8, ptr %33, i64 -4
  %646 = sub nsw i64 0, %643
  %647 = getelementptr inbounds i32, ptr %645, i64 %646
  %648 = load i32, ptr %644, align 4, !tbaa !5
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i32, ptr %1, i64 %649
  %651 = load i32, ptr %650, align 4, !tbaa !5
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i8, ptr %151, i64 %652
  %654 = load i8, ptr %653, align 1, !tbaa !9
  %655 = load i32, ptr %594, align 4, !tbaa !5
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds i32, ptr %1, i64 %656
  %658 = load i32, ptr %657, align 4, !tbaa !5
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i8, ptr %151, i64 %659
  %661 = load i8, ptr %660, align 1, !tbaa !9
  %662 = icmp ugt i8 %654, %661
  %663 = select i1 %662, i32 %655, i32 %648
  %664 = select i1 %662, ptr %594, ptr %644
  %665 = select i1 %662, ptr %644, ptr %594
  %666 = load i32, ptr %647, align 4, !tbaa !5
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i32, ptr %1, i64 %667
  %669 = load i32, ptr %668, align 4, !tbaa !5
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds i8, ptr %151, i64 %670
  %672 = load i8, ptr %671, align 1, !tbaa !9
  %673 = load i32, ptr %645, align 4, !tbaa !5
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i32, ptr %1, i64 %674
  %676 = load i32, ptr %675, align 4, !tbaa !5
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds i8, ptr %151, i64 %677
  %679 = load i8, ptr %678, align 1, !tbaa !9
  %680 = icmp ugt i8 %672, %679
  %681 = select i1 %680, i32 %673, i32 %666
  %682 = select i1 %680, ptr %645, ptr %647
  %683 = select i1 %680, ptr %647, ptr %645
  %684 = sext i32 %663 to i64
  %685 = getelementptr inbounds i32, ptr %1, i64 %684
  %686 = load i32, ptr %685, align 4, !tbaa !5
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i8, ptr %151, i64 %687
  %689 = load i8, ptr %688, align 1, !tbaa !9
  %690 = sext i32 %681 to i64
  %691 = getelementptr inbounds i32, ptr %1, i64 %690
  %692 = load i32, ptr %691, align 4, !tbaa !5
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds i8, ptr %151, i64 %693
  %695 = load i8, ptr %694, align 1, !tbaa !9
  %696 = icmp ugt i8 %689, %695
  %697 = select i1 %696, ptr %683, ptr %665
  %698 = select i1 %696, ptr %664, ptr %682
  %699 = select i1 %696, ptr %665, ptr %683
  %700 = load i32, ptr %35, align 4, !tbaa !5
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i32, ptr %1, i64 %701
  %703 = load i32, ptr %702, align 4, !tbaa !5
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds i8, ptr %151, i64 %704
  %706 = load i8, ptr %705, align 1, !tbaa !9
  %707 = load i32, ptr %697, align 4, !tbaa !5
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds i32, ptr %1, i64 %708
  %710 = load i32, ptr %709, align 4, !tbaa !5
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds i8, ptr %151, i64 %711
  %713 = load i8, ptr %712, align 1, !tbaa !9
  %714 = icmp ugt i8 %706, %713
  %715 = select i1 %714, i32 %707, i32 %700
  %716 = select i1 %714, ptr %697, ptr %35
  %717 = select i1 %714, ptr %35, ptr %697
  %718 = sext i32 %715 to i64
  %719 = getelementptr inbounds i32, ptr %1, i64 %718
  %720 = load i32, ptr %719, align 4, !tbaa !5
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds i8, ptr %151, i64 %721
  %723 = load i8, ptr %722, align 1, !tbaa !9
  %724 = load i32, ptr %698, align 4, !tbaa !5
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds i32, ptr %1, i64 %725
  %727 = load i32, ptr %726, align 4, !tbaa !5
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds i8, ptr %151, i64 %728
  %730 = load i8, ptr %729, align 1, !tbaa !9
  %731 = icmp ugt i8 %723, %730
  %732 = select i1 %731, ptr %699, ptr %717
  %733 = select i1 %731, ptr %716, ptr %698
  %734 = load i32, ptr %732, align 4, !tbaa !5
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds i32, ptr %1, i64 %735
  %737 = load i32, ptr %736, align 4, !tbaa !5
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds i8, ptr %151, i64 %738
  %740 = load i8, ptr %739, align 1, !tbaa !9
  %741 = load i32, ptr %733, align 4, !tbaa !5
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds i32, ptr %1, i64 %742
  %744 = load i32, ptr %743, align 4, !tbaa !5
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds i8, ptr %151, i64 %745
  %747 = load i8, ptr %746, align 1, !tbaa !9
  %748 = icmp ugt i8 %740, %747
  %749 = select i1 %748, ptr %733, ptr %732
  br label %940

750:                                              ; preds = %592
  %751 = trunc nuw nsw i64 %41 to i32
  %752 = lshr i32 %751, 3
  %753 = zext nneg i32 %752 to i64
  %754 = getelementptr inbounds nuw i32, ptr %35, i64 %753
  %755 = shl nuw nsw i32 %752, 1
  %756 = zext nneg i32 %755 to i64
  %757 = getelementptr inbounds nuw i32, ptr %35, i64 %756
  %758 = load i32, ptr %35, align 4, !tbaa !5
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds i32, ptr %1, i64 %759
  %761 = load i32, ptr %760, align 4, !tbaa !5
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds i8, ptr %151, i64 %762
  %764 = load i8, ptr %763, align 1, !tbaa !9
  %765 = load i32, ptr %754, align 4, !tbaa !5
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds i32, ptr %1, i64 %766
  %768 = load i32, ptr %767, align 4, !tbaa !5
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds i8, ptr %151, i64 %769
  %771 = load i8, ptr %770, align 1, !tbaa !9
  %772 = icmp ugt i8 %764, %771
  %773 = select i1 %772, i32 %758, i32 %765
  %774 = select i1 %772, ptr %35, ptr %754
  %775 = sext i32 %773 to i64
  %776 = getelementptr inbounds i32, ptr %1, i64 %775
  %777 = load i32, ptr %776, align 4, !tbaa !5
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds i8, ptr %151, i64 %778
  %780 = load i8, ptr %779, align 1, !tbaa !9
  %781 = load i32, ptr %757, align 4, !tbaa !5
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds i32, ptr %1, i64 %782
  %784 = load i32, ptr %783, align 4, !tbaa !5
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds i8, ptr %151, i64 %785
  %787 = load i8, ptr %786, align 1, !tbaa !9
  %788 = icmp ugt i8 %780, %787
  br i1 %788, label %789, label %800

789:                                              ; preds = %750
  %790 = select i1 %772, i32 %765, i32 %758
  %791 = select i1 %772, ptr %754, ptr %35
  %792 = sext i32 %790 to i64
  %793 = getelementptr inbounds i32, ptr %1, i64 %792
  %794 = load i32, ptr %793, align 4, !tbaa !5
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds i8, ptr %151, i64 %795
  %797 = load i8, ptr %796, align 1, !tbaa !9
  %798 = icmp ugt i8 %797, %787
  %799 = select i1 %798, ptr %791, ptr %757
  br label %800

800:                                              ; preds = %789, %750
  %801 = phi ptr [ %799, %789 ], [ %774, %750 ]
  %802 = sub nsw i64 0, %753
  %803 = getelementptr inbounds i32, ptr %594, i64 %802
  %804 = getelementptr inbounds nuw i32, ptr %594, i64 %753
  %805 = load i32, ptr %803, align 4, !tbaa !5
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds i32, ptr %1, i64 %806
  %808 = load i32, ptr %807, align 4, !tbaa !5
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds i8, ptr %151, i64 %809
  %811 = load i8, ptr %810, align 1, !tbaa !9
  %812 = load i32, ptr %594, align 4, !tbaa !5
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds i32, ptr %1, i64 %813
  %815 = load i32, ptr %814, align 4, !tbaa !5
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds i8, ptr %151, i64 %816
  %818 = load i8, ptr %817, align 1, !tbaa !9
  %819 = icmp ugt i8 %811, %818
  %820 = select i1 %819, i32 %805, i32 %812
  %821 = select i1 %819, ptr %803, ptr %594
  %822 = sext i32 %820 to i64
  %823 = getelementptr inbounds i32, ptr %1, i64 %822
  %824 = load i32, ptr %823, align 4, !tbaa !5
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds i8, ptr %151, i64 %825
  %827 = load i8, ptr %826, align 1, !tbaa !9
  %828 = load i32, ptr %804, align 4, !tbaa !5
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds i32, ptr %1, i64 %829
  %831 = load i32, ptr %830, align 4, !tbaa !5
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds i8, ptr %151, i64 %832
  %834 = load i8, ptr %833, align 1, !tbaa !9
  %835 = icmp ugt i8 %827, %834
  br i1 %835, label %836, label %847

836:                                              ; preds = %800
  %837 = select i1 %819, i32 %812, i32 %805
  %838 = select i1 %819, ptr %594, ptr %803
  %839 = sext i32 %837 to i64
  %840 = getelementptr inbounds i32, ptr %1, i64 %839
  %841 = load i32, ptr %840, align 4, !tbaa !5
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds i8, ptr %151, i64 %842
  %844 = load i8, ptr %843, align 1, !tbaa !9
  %845 = icmp ugt i8 %844, %834
  %846 = select i1 %845, ptr %838, ptr %804
  br label %847

847:                                              ; preds = %836, %800
  %848 = phi ptr [ %846, %836 ], [ %821, %800 ]
  %849 = getelementptr inbounds i8, ptr %33, i64 -4
  %850 = sub nsw i64 0, %756
  %851 = getelementptr inbounds i32, ptr %849, i64 %850
  %852 = getelementptr inbounds i32, ptr %849, i64 %802
  %853 = load i32, ptr %851, align 4, !tbaa !5
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds i32, ptr %1, i64 %854
  %856 = load i32, ptr %855, align 4, !tbaa !5
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds i8, ptr %151, i64 %857
  %859 = load i8, ptr %858, align 1, !tbaa !9
  %860 = load i32, ptr %852, align 4, !tbaa !5
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds i32, ptr %1, i64 %861
  %863 = load i32, ptr %862, align 4, !tbaa !5
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds i8, ptr %151, i64 %864
  %866 = load i8, ptr %865, align 1, !tbaa !9
  %867 = icmp ugt i8 %859, %866
  %868 = select i1 %867, i32 %853, i32 %860
  %869 = select i1 %867, ptr %851, ptr %852
  %870 = sext i32 %868 to i64
  %871 = getelementptr inbounds i32, ptr %1, i64 %870
  %872 = load i32, ptr %871, align 4, !tbaa !5
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds i8, ptr %151, i64 %873
  %875 = load i8, ptr %874, align 1, !tbaa !9
  %876 = load i32, ptr %849, align 4, !tbaa !5
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds i32, ptr %1, i64 %877
  %879 = load i32, ptr %878, align 4, !tbaa !5
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds i8, ptr %151, i64 %880
  %882 = load i8, ptr %881, align 1, !tbaa !9
  %883 = icmp ugt i8 %875, %882
  br i1 %883, label %884, label %902

884:                                              ; preds = %847
  %885 = select i1 %867, i32 %860, i32 %853
  %886 = select i1 %867, ptr %852, ptr %851
  %887 = sext i32 %885 to i64
  %888 = getelementptr inbounds i32, ptr %1, i64 %887
  %889 = load i32, ptr %888, align 4, !tbaa !5
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds i8, ptr %151, i64 %890
  %892 = load i8, ptr %891, align 1, !tbaa !9
  %893 = icmp ugt i8 %892, %882
  %894 = select i1 %893, ptr %886, ptr %849
  %895 = load i32, ptr %894, align 4, !tbaa !5
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds i32, ptr %1, i64 %896
  %898 = load i32, ptr %897, align 4, !tbaa !5
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds i8, ptr %151, i64 %899
  %901 = load i8, ptr %900, align 1, !tbaa !9
  br label %902

902:                                              ; preds = %884, %847
  %903 = phi i8 [ %875, %847 ], [ %901, %884 ]
  %904 = phi ptr [ %869, %847 ], [ %894, %884 ]
  %905 = load i32, ptr %801, align 4, !tbaa !5
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds i32, ptr %1, i64 %906
  %908 = load i32, ptr %907, align 4, !tbaa !5
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds i8, ptr %151, i64 %909
  %911 = load i8, ptr %910, align 1, !tbaa !9
  %912 = load i32, ptr %848, align 4, !tbaa !5
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds i32, ptr %1, i64 %913
  %915 = load i32, ptr %914, align 4, !tbaa !5
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds i8, ptr %151, i64 %916
  %918 = load i8, ptr %917, align 1, !tbaa !9
  %919 = icmp ugt i8 %911, %918
  %920 = select i1 %919, i32 %905, i32 %912
  %921 = select i1 %919, ptr %801, ptr %848
  %922 = sext i32 %920 to i64
  %923 = getelementptr inbounds i32, ptr %1, i64 %922
  %924 = load i32, ptr %923, align 4, !tbaa !5
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds i8, ptr %151, i64 %925
  %927 = load i8, ptr %926, align 1, !tbaa !9
  %928 = icmp ugt i8 %927, %903
  br i1 %928, label %929, label %940

929:                                              ; preds = %902
  %930 = select i1 %919, i32 %912, i32 %905
  %931 = select i1 %919, ptr %848, ptr %801
  %932 = sext i32 %930 to i64
  %933 = getelementptr inbounds i32, ptr %1, i64 %932
  %934 = load i32, ptr %933, align 4, !tbaa !5
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds i8, ptr %151, i64 %935
  %937 = load i8, ptr %936, align 1, !tbaa !9
  %938 = icmp ugt i8 %937, %903
  %939 = select i1 %938, ptr %931, ptr %904
  br label %940

940:                                              ; preds = %598, %631, %642, %902, %929
  %941 = phi i32 [ %700, %642 ], [ %600, %631 ], [ %600, %598 ], [ %758, %929 ], [ %758, %902 ]
  %942 = phi ptr [ %749, %642 ], [ %641, %631 ], [ %616, %598 ], [ %939, %929 ], [ %921, %902 ]
  %943 = load i32, ptr %942, align 4, !tbaa !5
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds i32, ptr %1, i64 %944
  %946 = load i32, ptr %945, align 4, !tbaa !5
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds i8, ptr %151, i64 %947
  %949 = load i8, ptr %948, align 1, !tbaa !9
  store i32 %943, ptr %35, align 4, !tbaa !5
  store i32 %941, ptr %942, align 4, !tbaa !5
  br label %950

950:                                              ; preds = %954, %940
  %951 = phi ptr [ %35, %940 ], [ %952, %954 ]
  %952 = getelementptr inbounds nuw i8, ptr %951, i64 4
  %953 = icmp ult ptr %952, %33
  br i1 %953, label %954, label %988

954:                                              ; preds = %950
  %955 = load i32, ptr %952, align 4, !tbaa !5
  %956 = sext i32 %955 to i64
  %957 = getelementptr inbounds i32, ptr %1, i64 %956
  %958 = load i32, ptr %957, align 4, !tbaa !5
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds i8, ptr %151, i64 %959
  %961 = load i8, ptr %960, align 1, !tbaa !9
  %962 = icmp eq i8 %961, %949
  br i1 %962, label %950, label %963, !llvm.loop !121

963:                                              ; preds = %954
  %964 = icmp ult i8 %961, %949
  br i1 %964, label %965, label %988

965:                                              ; preds = %963
  %966 = getelementptr inbounds nuw i8, ptr %951, i64 8
  %967 = icmp ult ptr %966, %33
  br i1 %967, label %968, label %988

968:                                              ; preds = %965, %984
  %969 = phi ptr [ %986, %984 ], [ %966, %965 ]
  %970 = phi ptr [ %985, %984 ], [ %952, %965 ]
  %971 = load i32, ptr %969, align 4, !tbaa !5
  %972 = sext i32 %971 to i64
  %973 = getelementptr inbounds i32, ptr %1, i64 %972
  %974 = load i32, ptr %973, align 4, !tbaa !5
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds i8, ptr %151, i64 %975
  %977 = load i8, ptr %976, align 1, !tbaa !9
  %978 = icmp ugt i8 %977, %949
  br i1 %978, label %988, label %979

979:                                              ; preds = %968
  %980 = icmp eq i8 %977, %949
  br i1 %980, label %981, label %984

981:                                              ; preds = %979
  %982 = load i32, ptr %970, align 4, !tbaa !5
  store i32 %982, ptr %969, align 4, !tbaa !5
  store i32 %971, ptr %970, align 4, !tbaa !5
  %983 = getelementptr inbounds nuw i8, ptr %970, i64 4
  br label %984

984:                                              ; preds = %981, %979
  %985 = phi ptr [ %983, %981 ], [ %970, %979 ]
  %986 = getelementptr inbounds nuw i8, ptr %969, i64 4
  %987 = icmp ult ptr %986, %33
  br i1 %987, label %968, label %988, !llvm.loop !122

988:                                              ; preds = %950, %984, %968, %965, %963
  %989 = phi ptr [ %952, %963 ], [ %952, %965 ], [ %985, %984 ], [ %970, %968 ], [ %952, %950 ]
  %990 = phi ptr [ %952, %963 ], [ %966, %965 ], [ %986, %984 ], [ %969, %968 ], [ %952, %950 ]
  br label %991

991:                                              ; preds = %995, %988
  %992 = phi ptr [ %33, %988 ], [ %993, %995 ]
  %993 = getelementptr inbounds i8, ptr %992, i64 -4
  %994 = icmp ult ptr %990, %993
  br i1 %994, label %995, label %1029

995:                                              ; preds = %991
  %996 = load i32, ptr %993, align 4, !tbaa !5
  %997 = sext i32 %996 to i64
  %998 = getelementptr inbounds i32, ptr %1, i64 %997
  %999 = load i32, ptr %998, align 4, !tbaa !5
  %1000 = sext i32 %999 to i64
  %1001 = getelementptr inbounds i8, ptr %151, i64 %1000
  %1002 = load i8, ptr %1001, align 1, !tbaa !9
  %1003 = icmp eq i8 %1002, %949
  br i1 %1003, label %991, label %1004, !llvm.loop !123

1004:                                             ; preds = %995
  %1005 = icmp ugt i8 %1002, %949
  br i1 %1005, label %1006, label %1029

1006:                                             ; preds = %1004
  %1007 = getelementptr inbounds i8, ptr %992, i64 -8
  %1008 = icmp ult ptr %990, %1007
  br i1 %1008, label %1009, label %1029

1009:                                             ; preds = %1006, %1025
  %1010 = phi ptr [ %1027, %1025 ], [ %1007, %1006 ]
  %1011 = phi ptr [ %1026, %1025 ], [ %993, %1006 ]
  %1012 = load i32, ptr %1010, align 4, !tbaa !5
  %1013 = sext i32 %1012 to i64
  %1014 = getelementptr inbounds i32, ptr %1, i64 %1013
  %1015 = load i32, ptr %1014, align 4, !tbaa !5
  %1016 = sext i32 %1015 to i64
  %1017 = getelementptr inbounds i8, ptr %151, i64 %1016
  %1018 = load i8, ptr %1017, align 1, !tbaa !9
  %1019 = icmp ult i8 %1018, %949
  br i1 %1019, label %1029, label %1020

1020:                                             ; preds = %1009
  %1021 = icmp eq i8 %1018, %949
  br i1 %1021, label %1022, label %1025

1022:                                             ; preds = %1020
  %1023 = load i32, ptr %1011, align 4, !tbaa !5
  store i32 %1023, ptr %1010, align 4, !tbaa !5
  store i32 %1012, ptr %1011, align 4, !tbaa !5
  %1024 = getelementptr inbounds i8, ptr %1011, i64 -4
  br label %1025

1025:                                             ; preds = %1022, %1020
  %1026 = phi ptr [ %1024, %1022 ], [ %1011, %1020 ]
  %1027 = getelementptr inbounds i8, ptr %1010, i64 -4
  %1028 = icmp ult ptr %990, %1027
  br i1 %1028, label %1009, label %1029, !llvm.loop !124

1029:                                             ; preds = %991, %1025, %1009, %1006, %1004
  %1030 = phi ptr [ %993, %1004 ], [ %1007, %1006 ], [ %1027, %1025 ], [ %1010, %1009 ], [ %993, %991 ]
  %1031 = phi ptr [ %993, %1004 ], [ %993, %1006 ], [ %1026, %1025 ], [ %1011, %1009 ], [ %993, %991 ]
  %1032 = icmp ult ptr %990, %1030
  br i1 %1032, label %1033, label %1091

1033:                                             ; preds = %1029, %1087
  %1034 = phi ptr [ %1088, %1087 ], [ %1031, %1029 ]
  %1035 = phi ptr [ %1089, %1087 ], [ %1030, %1029 ]
  %1036 = phi ptr [ %1064, %1087 ], [ %990, %1029 ]
  %1037 = phi ptr [ %1063, %1087 ], [ %989, %1029 ]
  %1038 = load i32, ptr %1036, align 4, !tbaa !5
  %1039 = load i32, ptr %1035, align 4, !tbaa !5
  store i32 %1039, ptr %1036, align 4, !tbaa !5
  store i32 %1038, ptr %1035, align 4, !tbaa !5
  %1040 = getelementptr inbounds nuw i8, ptr %1036, i64 4
  %1041 = icmp ult ptr %1040, %1035
  br i1 %1041, label %1042, label %1062

1042:                                             ; preds = %1033, %1058
  %1043 = phi ptr [ %1060, %1058 ], [ %1040, %1033 ]
  %1044 = phi ptr [ %1059, %1058 ], [ %1037, %1033 ]
  %1045 = load i32, ptr %1043, align 4, !tbaa !5
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds i32, ptr %1, i64 %1046
  %1048 = load i32, ptr %1047, align 4, !tbaa !5
  %1049 = sext i32 %1048 to i64
  %1050 = getelementptr inbounds i8, ptr %151, i64 %1049
  %1051 = load i8, ptr %1050, align 1, !tbaa !9
  %1052 = icmp ugt i8 %1051, %949
  br i1 %1052, label %1062, label %1053

1053:                                             ; preds = %1042
  %1054 = icmp eq i8 %1051, %949
  br i1 %1054, label %1055, label %1058

1055:                                             ; preds = %1053
  %1056 = load i32, ptr %1044, align 4, !tbaa !5
  store i32 %1056, ptr %1043, align 4, !tbaa !5
  store i32 %1045, ptr %1044, align 4, !tbaa !5
  %1057 = getelementptr inbounds nuw i8, ptr %1044, i64 4
  br label %1058

1058:                                             ; preds = %1055, %1053
  %1059 = phi ptr [ %1057, %1055 ], [ %1044, %1053 ]
  %1060 = getelementptr inbounds nuw i8, ptr %1043, i64 4
  %1061 = icmp ult ptr %1060, %1035
  br i1 %1061, label %1042, label %1062, !llvm.loop !125

1062:                                             ; preds = %1042, %1058, %1033
  %1063 = phi ptr [ %1037, %1033 ], [ %1059, %1058 ], [ %1044, %1042 ]
  %1064 = phi ptr [ %1040, %1033 ], [ %1060, %1058 ], [ %1043, %1042 ]
  %1065 = getelementptr inbounds i8, ptr %1035, i64 -4
  %1066 = icmp ult ptr %1064, %1065
  br i1 %1066, label %1067, label %1087

1067:                                             ; preds = %1062, %1083
  %1068 = phi ptr [ %1085, %1083 ], [ %1065, %1062 ]
  %1069 = phi ptr [ %1084, %1083 ], [ %1034, %1062 ]
  %1070 = load i32, ptr %1068, align 4, !tbaa !5
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds i32, ptr %1, i64 %1071
  %1073 = load i32, ptr %1072, align 4, !tbaa !5
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds i8, ptr %151, i64 %1074
  %1076 = load i8, ptr %1075, align 1, !tbaa !9
  %1077 = icmp ult i8 %1076, %949
  br i1 %1077, label %1087, label %1078

1078:                                             ; preds = %1067
  %1079 = icmp eq i8 %1076, %949
  br i1 %1079, label %1080, label %1083

1080:                                             ; preds = %1078
  %1081 = load i32, ptr %1069, align 4, !tbaa !5
  store i32 %1081, ptr %1068, align 4, !tbaa !5
  store i32 %1070, ptr %1069, align 4, !tbaa !5
  %1082 = getelementptr inbounds i8, ptr %1069, i64 -4
  br label %1083

1083:                                             ; preds = %1080, %1078
  %1084 = phi ptr [ %1082, %1080 ], [ %1069, %1078 ]
  %1085 = getelementptr inbounds i8, ptr %1068, i64 -4
  %1086 = icmp ult ptr %1064, %1085
  br i1 %1086, label %1067, label %1087, !llvm.loop !126

1087:                                             ; preds = %1067, %1083, %1062
  %1088 = phi ptr [ %1034, %1062 ], [ %1084, %1083 ], [ %1069, %1067 ]
  %1089 = phi ptr [ %1065, %1062 ], [ %1085, %1083 ], [ %1068, %1067 ]
  %1090 = icmp ult ptr %1064, %1089
  br i1 %1090, label %1033, label %1091, !llvm.loop !127

1091:                                             ; preds = %1087, %1029
  %1092 = phi ptr [ %989, %1029 ], [ %1063, %1087 ]
  %1093 = phi ptr [ %990, %1029 ], [ %1064, %1087 ]
  %1094 = phi ptr [ %1031, %1029 ], [ %1088, %1087 ]
  %1095 = icmp ugt ptr %1092, %1094
  br i1 %1095, label %1611, label %1096

1096:                                             ; preds = %1091
  %1097 = getelementptr inbounds i8, ptr %1093, i64 -4
  %1098 = ptrtoint ptr %1092 to i64
  %1099 = sub i64 %1098, %39
  %1100 = ashr exact i64 %1099, 2
  %1101 = add nsw i64 %1100, 2147483648
  %1102 = icmp ult i64 %1101, 4294967296
  br i1 %1102, label %1104, label %1103

1103:                                             ; preds = %1096
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 483, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1104:                                             ; preds = %1096
  %1105 = ptrtoint ptr %1093 to i64
  %1106 = sub i64 %1105, %1098
  %1107 = ashr exact i64 %1106, 2
  %1108 = add nsw i64 %1107, 2147483648
  %1109 = icmp ult i64 %1108, 4294967296
  br i1 %1109, label %1111, label %1110

1110:                                             ; preds = %1104
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 483, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1111:                                             ; preds = %1104
  %1112 = tail call i64 @llvm.smin.i64(i64 %1100, i64 %1107)
  %1113 = icmp sgt i64 %1112, 0
  br i1 %1113, label %1114, label %1177

1114:                                             ; preds = %1111
  %1115 = sub nsw i64 0, %1112
  %1116 = getelementptr i32, ptr %1093, i64 %1115
  %1117 = trunc i64 %1112 to i32
  %1118 = icmp ne i32 %1117, 0
  %1119 = sext i1 %1118 to i64
  %1120 = add i64 %1112, %1119
  %1121 = and i64 %1120, 4294967295
  %1122 = add nuw nsw i64 %1121, 1
  %1123 = icmp samesign ult i64 %1121, 7
  br i1 %1123, label %1163, label %1124

1124:                                             ; preds = %1114
  %1125 = getelementptr i8, ptr %35, i64 4
  %1126 = icmp ne i32 %1117, 0
  %1127 = sext i1 %1126 to i64
  %1128 = add i64 %1112, %1127
  %1129 = shl i64 %1128, 2
  %1130 = and i64 %1129, 17179869180
  %1131 = getelementptr i8, ptr %1125, i64 %1130
  %1132 = getelementptr i8, ptr %1093, i64 4
  %1133 = shl nsw i64 %1112, 2
  %1134 = sub nsw i64 %1130, %1133
  %1135 = getelementptr i8, ptr %1132, i64 %1134
  %1136 = icmp ult ptr %35, %1135
  %1137 = icmp ult ptr %1116, %1131
  %1138 = and i1 %1136, %1137
  br i1 %1138, label %1163, label %1139

1139:                                             ; preds = %1124
  %1140 = and i64 %1122, 8589934584
  %1141 = trunc i64 %1140 to i32
  %1142 = sub i32 %1117, %1141
  %1143 = shl nuw nsw i64 %1140, 2
  %1144 = getelementptr i8, ptr %1116, i64 %1143
  %1145 = shl nuw nsw i64 %1140, 2
  %1146 = getelementptr i8, ptr %35, i64 %1145
  br label %1147

1147:                                             ; preds = %1147, %1139
  %1148 = phi i64 [ 0, %1139 ], [ %1159, %1147 ]
  %1149 = shl i64 %1148, 2
  %1150 = getelementptr i8, ptr %1116, i64 %1149
  %1151 = shl i64 %1148, 2
  %1152 = getelementptr i8, ptr %35, i64 %1151
  %1153 = getelementptr i8, ptr %1152, i64 16
  %1154 = load <4 x i32>, ptr %1152, align 4, !tbaa !5, !alias.scope !128, !noalias !131
  %1155 = load <4 x i32>, ptr %1153, align 4, !tbaa !5, !alias.scope !128, !noalias !131
  %1156 = getelementptr i8, ptr %1150, i64 16
  %1157 = load <4 x i32>, ptr %1150, align 4, !tbaa !5, !alias.scope !131
  %1158 = load <4 x i32>, ptr %1156, align 4, !tbaa !5, !alias.scope !131
  store <4 x i32> %1157, ptr %1152, align 4, !tbaa !5, !alias.scope !128, !noalias !131
  store <4 x i32> %1158, ptr %1153, align 4, !tbaa !5, !alias.scope !128, !noalias !131
  store <4 x i32> %1154, ptr %1150, align 4, !tbaa !5, !alias.scope !131
  store <4 x i32> %1155, ptr %1156, align 4, !tbaa !5, !alias.scope !131
  %1159 = add nuw i64 %1148, 8
  %1160 = icmp eq i64 %1159, %1140
  br i1 %1160, label %1161, label %1147, !llvm.loop !133

1161:                                             ; preds = %1147
  %1162 = icmp eq i64 %1122, %1140
  br i1 %1162, label %1177, label %1163

1163:                                             ; preds = %1124, %1114, %1161
  %1164 = phi i32 [ %1117, %1124 ], [ %1117, %1114 ], [ %1142, %1161 ]
  %1165 = phi ptr [ %1116, %1124 ], [ %1116, %1114 ], [ %1144, %1161 ]
  %1166 = phi ptr [ %35, %1124 ], [ %35, %1114 ], [ %1146, %1161 ]
  br label %1167

1167:                                             ; preds = %1163, %1167
  %1168 = phi i32 [ %1173, %1167 ], [ %1164, %1163 ]
  %1169 = phi ptr [ %1175, %1167 ], [ %1165, %1163 ]
  %1170 = phi ptr [ %1174, %1167 ], [ %1166, %1163 ]
  %1171 = load i32, ptr %1170, align 4, !tbaa !5
  %1172 = load i32, ptr %1169, align 4, !tbaa !5
  store i32 %1172, ptr %1170, align 4, !tbaa !5
  store i32 %1171, ptr %1169, align 4, !tbaa !5
  %1173 = add nsw i32 %1168, -1
  %1174 = getelementptr inbounds nuw i8, ptr %1170, i64 4
  %1175 = getelementptr inbounds nuw i8, ptr %1169, i64 4
  %1176 = icmp samesign ugt i32 %1168, 1
  br i1 %1176, label %1167, label %1177, !llvm.loop !134

1177:                                             ; preds = %1167, %1161, %1111
  %1178 = ptrtoint ptr %1094 to i64
  %1179 = ptrtoint ptr %1097 to i64
  %1180 = sub i64 %1178, %1179
  %1181 = ashr exact i64 %1180, 2
  %1182 = add nsw i64 %1181, 2147483648
  %1183 = icmp ult i64 %1182, 4294967296
  br i1 %1183, label %1185, label %1184

1184:                                             ; preds = %1177
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.src, i32 noundef 485, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1185:                                             ; preds = %1177
  %1186 = sub i64 %38, %1178
  %1187 = ashr exact i64 %1186, 2
  %1188 = add nsw i64 %1187, 2147483647
  %1189 = icmp ult i64 %1188, 4294967296
  br i1 %1189, label %1191, label %1190

1190:                                             ; preds = %1185
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.src, i32 noundef 485, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1191:                                             ; preds = %1185
  %1192 = trunc nsw i64 %1181 to i32
  %1193 = trunc i64 %1187 to i32
  %1194 = add i32 %1193, -1
  %1195 = tail call i32 @llvm.smin.i32(i32 %1194, i32 %1192)
  %1196 = icmp sgt i32 %1195, 0
  br i1 %1196, label %1197, label %1253

1197:                                             ; preds = %1191
  %1198 = zext nneg i32 %1195 to i64
  %1199 = sub nsw i64 0, %1198
  %1200 = getelementptr i32, ptr %33, i64 %1199
  %1201 = icmp ult i32 %1195, 8
  br i1 %1201, label %1239, label %1202

1202:                                             ; preds = %1197
  %1203 = getelementptr i8, ptr %1093, i64 4
  %1204 = add nsw i32 %1195, -1
  %1205 = zext i32 %1204 to i64
  %1206 = shl nuw nsw i64 %1205, 2
  %1207 = getelementptr i8, ptr %1203, i64 %1206
  %1208 = getelementptr i8, ptr %33, i64 4
  %1209 = sub nsw i64 %1205, %1198
  %1210 = shl nsw i64 %1209, 2
  %1211 = getelementptr i8, ptr %1208, i64 %1210
  %1212 = icmp ult ptr %1093, %1211
  %1213 = icmp ult ptr %1200, %1207
  %1214 = and i1 %1212, %1213
  br i1 %1214, label %1239, label %1215

1215:                                             ; preds = %1202
  %1216 = and i64 %1198, 2147483640
  %1217 = trunc nuw nsw i64 %1216 to i32
  %1218 = sub nsw i32 %1195, %1217
  %1219 = shl nuw nsw i64 %1216, 2
  %1220 = getelementptr i8, ptr %1200, i64 %1219
  %1221 = shl nuw nsw i64 %1216, 2
  %1222 = getelementptr i8, ptr %1093, i64 %1221
  br label %1223

1223:                                             ; preds = %1223, %1215
  %1224 = phi i64 [ 0, %1215 ], [ %1235, %1223 ]
  %1225 = shl i64 %1224, 2
  %1226 = getelementptr i8, ptr %1200, i64 %1225
  %1227 = shl i64 %1224, 2
  %1228 = getelementptr i8, ptr %1093, i64 %1227
  %1229 = getelementptr i8, ptr %1228, i64 16
  %1230 = load <4 x i32>, ptr %1228, align 4, !tbaa !5, !alias.scope !135, !noalias !138
  %1231 = load <4 x i32>, ptr %1229, align 4, !tbaa !5, !alias.scope !135, !noalias !138
  %1232 = getelementptr i8, ptr %1226, i64 16
  %1233 = load <4 x i32>, ptr %1226, align 4, !tbaa !5, !alias.scope !138
  %1234 = load <4 x i32>, ptr %1232, align 4, !tbaa !5, !alias.scope !138
  store <4 x i32> %1233, ptr %1228, align 4, !tbaa !5, !alias.scope !135, !noalias !138
  store <4 x i32> %1234, ptr %1229, align 4, !tbaa !5, !alias.scope !135, !noalias !138
  store <4 x i32> %1230, ptr %1226, align 4, !tbaa !5, !alias.scope !138
  store <4 x i32> %1231, ptr %1232, align 4, !tbaa !5, !alias.scope !138
  %1235 = add nuw i64 %1224, 8
  %1236 = icmp eq i64 %1235, %1216
  br i1 %1236, label %1237, label %1223, !llvm.loop !140

1237:                                             ; preds = %1223
  %1238 = icmp eq i64 %1216, %1198
  br i1 %1238, label %1253, label %1239

1239:                                             ; preds = %1202, %1197, %1237
  %1240 = phi i32 [ %1195, %1202 ], [ %1195, %1197 ], [ %1218, %1237 ]
  %1241 = phi ptr [ %1200, %1202 ], [ %1200, %1197 ], [ %1220, %1237 ]
  %1242 = phi ptr [ %1093, %1202 ], [ %1093, %1197 ], [ %1222, %1237 ]
  br label %1243

1243:                                             ; preds = %1239, %1243
  %1244 = phi i32 [ %1249, %1243 ], [ %1240, %1239 ]
  %1245 = phi ptr [ %1251, %1243 ], [ %1241, %1239 ]
  %1246 = phi ptr [ %1250, %1243 ], [ %1242, %1239 ]
  %1247 = load i32, ptr %1246, align 4, !tbaa !5
  %1248 = load i32, ptr %1245, align 4, !tbaa !5
  store i32 %1248, ptr %1246, align 4, !tbaa !5
  store i32 %1247, ptr %1245, align 4, !tbaa !5
  %1249 = add nsw i32 %1244, -1
  %1250 = getelementptr inbounds nuw i8, ptr %1246, i64 4
  %1251 = getelementptr inbounds nuw i8, ptr %1245, i64 4
  %1252 = icmp samesign ugt i32 %1244, 1
  br i1 %1252, label %1243, label %1253, !llvm.loop !141

1253:                                             ; preds = %1243, %1237, %1191
  %1254 = getelementptr inbounds i8, ptr %35, i64 %1106
  %1255 = sub nsw i64 0, %1181
  %1256 = getelementptr inbounds i32, ptr %33, i64 %1255
  %1257 = load i32, ptr %1254, align 4, !tbaa !5
  %1258 = sext i32 %1257 to i64
  %1259 = getelementptr inbounds i32, ptr %1, i64 %1258
  %1260 = load i32, ptr %1259, align 4, !tbaa !5
  %1261 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1260, i32 -1)
  %1262 = extractvalue { i32, i1 } %1261, 1, !nosanitize !10
  br i1 %1262, label %137, label %1263, !prof !11, !nosanitize !10

1263:                                             ; preds = %1253
  %1264 = extractvalue { i32, i1 } %1261, 0, !nosanitize !10
  %1265 = sext i32 %1264 to i64
  %1266 = getelementptr inbounds i8, ptr %151, i64 %1265
  %1267 = load i8, ptr %1266, align 1, !tbaa !9
  %1268 = icmp ugt i8 %949, %1267
  br i1 %1268, label %1269, label %1338

1269:                                             ; preds = %1263
  %1270 = getelementptr inbounds i8, ptr %1254, i64 -4
  br label %1271

1271:                                             ; preds = %1330, %1269
  %1272 = phi ptr [ %1256, %1269 ], [ %1307, %1330 ]
  %1273 = phi ptr [ %1270, %1269 ], [ %1304, %1330 ]
  %1274 = getelementptr inbounds nuw i8, ptr %1273, i64 4
  %1275 = icmp ult ptr %1274, %1272
  br i1 %1275, label %1276, label %1303

1276:                                             ; preds = %1271, %1299
  %1277 = phi ptr [ %1301, %1299 ], [ %1274, %1271 ]
  %1278 = load i32, ptr %1277, align 4, !tbaa !5
  %1279 = sext i32 %1278 to i64
  %1280 = getelementptr inbounds i32, ptr %1, i64 %1279
  %1281 = load i32, ptr %1280, align 4, !tbaa !5
  %1282 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1281, i32 %34), !nosanitize !10
  %1283 = extractvalue { i32, i1 } %1282, 0, !nosanitize !10
  %1284 = extractvalue { i32, i1 } %1282, 1, !nosanitize !10
  br i1 %1284, label %1285, label %1286, !prof !11, !nosanitize !10

1285:                                             ; preds = %1289, %1286, %1276, %1320, %1317, %1309
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1286:                                             ; preds = %1276
  %1287 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1278, i32 1), !nosanitize !10
  %1288 = extractvalue { i32, i1 } %1287, 1, !nosanitize !10
  br i1 %1288, label %1285, label %1289, !prof !11, !nosanitize !10

1289:                                             ; preds = %1286
  %1290 = extractvalue { i32, i1 } %1287, 0, !nosanitize !10
  %1291 = sext i32 %1290 to i64
  %1292 = getelementptr inbounds i32, ptr %1, i64 %1291
  %1293 = load i32, ptr %1292, align 4, !tbaa !5
  %1294 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1293, i32 1), !nosanitize !10
  %1295 = extractvalue { i32, i1 } %1294, 1, !nosanitize !10
  br i1 %1295, label %1285, label %1296, !prof !11, !nosanitize !10

1296:                                             ; preds = %1289
  %1297 = extractvalue { i32, i1 } %1294, 0, !nosanitize !10
  %1298 = icmp slt i32 %1283, %1297
  br i1 %1298, label %1303, label %1299

1299:                                             ; preds = %1296
  %1300 = xor i32 %1278, -1
  store i32 %1300, ptr %1277, align 4, !tbaa !5
  %1301 = getelementptr inbounds nuw i8, ptr %1277, i64 4
  %1302 = icmp ult ptr %1301, %1272
  br i1 %1302, label %1276, label %1303, !llvm.loop !119

1303:                                             ; preds = %1299, %1296, %1271
  %1304 = phi ptr [ %1274, %1271 ], [ %1277, %1296 ], [ %1301, %1299 ]
  br label %1305

1305:                                             ; preds = %1327, %1303
  %1306 = phi ptr [ %1272, %1303 ], [ %1307, %1327 ]
  %1307 = getelementptr inbounds i8, ptr %1306, i64 -4
  %1308 = icmp ult ptr %1304, %1307
  br i1 %1308, label %1309, label %1333

1309:                                             ; preds = %1305
  %1310 = load i32, ptr %1307, align 4, !tbaa !5
  %1311 = sext i32 %1310 to i64
  %1312 = getelementptr inbounds i32, ptr %1, i64 %1311
  %1313 = load i32, ptr %1312, align 4, !tbaa !5
  %1314 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1313, i32 %34), !nosanitize !10
  %1315 = extractvalue { i32, i1 } %1314, 0, !nosanitize !10
  %1316 = extractvalue { i32, i1 } %1314, 1, !nosanitize !10
  br i1 %1316, label %1285, label %1317, !prof !11, !nosanitize !10

1317:                                             ; preds = %1309
  %1318 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1310, i32 1), !nosanitize !10
  %1319 = extractvalue { i32, i1 } %1318, 1, !nosanitize !10
  br i1 %1319, label %1285, label %1320, !prof !11, !nosanitize !10

1320:                                             ; preds = %1317
  %1321 = extractvalue { i32, i1 } %1318, 0, !nosanitize !10
  %1322 = sext i32 %1321 to i64
  %1323 = getelementptr inbounds i32, ptr %1, i64 %1322
  %1324 = load i32, ptr %1323, align 4, !tbaa !5
  %1325 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1324, i32 1), !nosanitize !10
  %1326 = extractvalue { i32, i1 } %1325, 1, !nosanitize !10
  br i1 %1326, label %1285, label %1327, !prof !11, !nosanitize !10

1327:                                             ; preds = %1320
  %1328 = extractvalue { i32, i1 } %1325, 0, !nosanitize !10
  %1329 = icmp slt i32 %1315, %1328
  br i1 %1329, label %1305, label %1330, !llvm.loop !120

1330:                                             ; preds = %1327
  %1331 = xor i32 %1310, -1
  %1332 = load i32, ptr %1304, align 4, !tbaa !5
  store i32 %1332, ptr %1307, align 4, !tbaa !5
  store i32 %1331, ptr %1304, align 4, !tbaa !5
  br label %1271

1333:                                             ; preds = %1305
  %1334 = icmp ult ptr %1254, %1304
  br i1 %1334, label %1335, label %1338

1335:                                             ; preds = %1333
  %1336 = load i32, ptr %1254, align 4, !tbaa !5
  %1337 = xor i32 %1336, -1
  store i32 %1337, ptr %1254, align 4, !tbaa !5
  br label %1338

1338:                                             ; preds = %1335, %1333, %1263
  %1339 = phi ptr [ %1254, %1263 ], [ %1304, %1333 ], [ %1304, %1335 ]
  %1340 = ptrtoint ptr %1256 to i64
  %1341 = icmp sgt i64 %1107, %1181
  %1342 = ptrtoint ptr %1339 to i64
  %1343 = sub i64 %1340, %1342
  %1344 = ashr exact i64 %1343, 2
  br i1 %1341, label %1478, label %1345

1345:                                             ; preds = %1338
  %1346 = icmp sgt i64 %1181, %1344
  br i1 %1346, label %1391, label %1347

1347:                                             ; preds = %1345
  %1348 = icmp slt i32 %36, 16
  br i1 %1348, label %1350, label %1349

1349:                                             ; preds = %1347
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 493, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1350:                                             ; preds = %1347
  %1351 = sext i32 %36 to i64
  %1352 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1351
  store ptr %1339, ptr %1352, align 8, !tbaa !110
  %1353 = getelementptr inbounds nuw i8, ptr %1352, i64 8
  store ptr %1256, ptr %1353, align 8, !tbaa !112
  %1354 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %1355 = extractvalue { i32, i1 } %1354, 1, !nosanitize !10
  br i1 %1355, label %508, label %1356, !prof !11, !nosanitize !10

1356:                                             ; preds = %1350
  %1357 = extractvalue { i32, i1 } %1354, 0, !nosanitize !10
  %1358 = getelementptr inbounds nuw i8, ptr %1352, i64 16
  store i32 %1357, ptr %1358, align 8, !tbaa !113
  %1359 = add nsw i64 %1344, 2147483648
  %1360 = icmp ult i64 %1359, 4294967296
  br i1 %1360, label %1362, label %1361

1361:                                             ; preds = %1356
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 493, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1362:                                             ; preds = %1356
  %1363 = and i64 %1343, 261120
  %1364 = icmp eq i64 %1363, 0
  br i1 %1364, label %1374, label %1365

1365:                                             ; preds = %1362
  %1366 = lshr i64 %1344, 8
  %1367 = and i64 %1366, 255
  %1368 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1367
  %1369 = load i32, ptr %1368, align 4, !tbaa !5
  %1370 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1369, i32 8), !nosanitize !10
  %1371 = extractvalue { i32, i1 } %1370, 0, !nosanitize !10
  %1372 = extractvalue { i32, i1 } %1370, 1, !nosanitize !10
  br i1 %1372, label %1373, label %1378, !prof !11, !nosanitize !10

1373:                                             ; preds = %1365
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1374:                                             ; preds = %1362
  %1375 = and i64 %1344, 255
  %1376 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1375
  %1377 = load i32, ptr %1376, align 4, !tbaa !5
  br label %1378

1378:                                             ; preds = %1365, %1374
  %1379 = phi i32 [ %1371, %1365 ], [ %1377, %1374 ]
  %1380 = getelementptr inbounds nuw i8, ptr %1352, i64 20
  store i32 %1379, ptr %1380, align 4, !tbaa !114
  %1381 = icmp eq i32 %36, 15
  br i1 %1381, label %1382, label %1383

1382:                                             ; preds = %1378
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 494, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1383:                                             ; preds = %1378
  %1384 = add nsw i32 %36, 1
  %1385 = sext i32 %1384 to i64
  %1386 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1385
  store ptr %1256, ptr %1386, align 8, !tbaa !110
  %1387 = getelementptr inbounds nuw i8, ptr %1386, i64 8
  store ptr %33, ptr %1387, align 8, !tbaa !112
  %1388 = getelementptr inbounds nuw i8, ptr %1386, i64 16
  store i32 %34, ptr %1388, align 8, !tbaa !113
  %1389 = add nsw i32 %36, 2
  %1390 = getelementptr inbounds nuw i8, ptr %1386, i64 20
  store i32 %153, ptr %1390, align 4, !tbaa !114
  br label %1727

1391:                                             ; preds = %1345
  %1392 = icmp sgt i64 %1107, %1344
  %1393 = icmp slt i32 %36, 16
  br i1 %1392, label %1437, label %1394

1394:                                             ; preds = %1391
  br i1 %1393, label %1396, label %1395

1395:                                             ; preds = %1394
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1396:                                             ; preds = %1394
  %1397 = sext i32 %36 to i64
  %1398 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1397
  store ptr %1256, ptr %1398, align 8, !tbaa !110
  %1399 = getelementptr inbounds nuw i8, ptr %1398, i64 8
  store ptr %33, ptr %1399, align 8, !tbaa !112
  %1400 = getelementptr inbounds nuw i8, ptr %1398, i64 16
  store i32 %34, ptr %1400, align 8, !tbaa !113
  %1401 = getelementptr inbounds nuw i8, ptr %1398, i64 20
  store i32 %153, ptr %1401, align 4, !tbaa !114
  %1402 = icmp eq i32 %36, 15
  br i1 %1402, label %1403, label %1404

1403:                                             ; preds = %1396
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1404:                                             ; preds = %1396
  %1405 = add nsw i32 %36, 1
  %1406 = sext i32 %1405 to i64
  %1407 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1406
  store ptr %1339, ptr %1407, align 8, !tbaa !110
  %1408 = getelementptr inbounds nuw i8, ptr %1407, i64 8
  store ptr %1256, ptr %1408, align 8, !tbaa !112
  %1409 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %1410 = extractvalue { i32, i1 } %1409, 1, !nosanitize !10
  br i1 %1410, label %508, label %1411, !prof !11, !nosanitize !10

1411:                                             ; preds = %1404
  %1412 = extractvalue { i32, i1 } %1409, 0, !nosanitize !10
  %1413 = getelementptr inbounds nuw i8, ptr %1407, i64 16
  store i32 %1412, ptr %1413, align 8, !tbaa !113
  %1414 = add nsw i64 %1344, 2147483648
  %1415 = icmp ult i64 %1414, 4294967296
  br i1 %1415, label %1417, label %1416

1416:                                             ; preds = %1411
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1417:                                             ; preds = %1411
  %1418 = and i64 %1343, 261120
  %1419 = icmp eq i64 %1418, 0
  br i1 %1419, label %1429, label %1420

1420:                                             ; preds = %1417
  %1421 = lshr i64 %1344, 8
  %1422 = and i64 %1421, 255
  %1423 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1422
  %1424 = load i32, ptr %1423, align 4, !tbaa !5
  %1425 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1424, i32 8), !nosanitize !10
  %1426 = extractvalue { i32, i1 } %1425, 0, !nosanitize !10
  %1427 = extractvalue { i32, i1 } %1425, 1, !nosanitize !10
  br i1 %1427, label %1428, label %1433, !prof !11, !nosanitize !10

1428:                                             ; preds = %1420
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1429:                                             ; preds = %1417
  %1430 = and i64 %1344, 255
  %1431 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1430
  %1432 = load i32, ptr %1431, align 4, !tbaa !5
  br label %1433

1433:                                             ; preds = %1420, %1429
  %1434 = phi i32 [ %1426, %1420 ], [ %1432, %1429 ]
  %1435 = add nsw i32 %36, 2
  %1436 = getelementptr inbounds nuw i8, ptr %1407, i64 20
  store i32 %1434, ptr %1436, align 4, !tbaa !114
  br label %1727

1437:                                             ; preds = %1391
  br i1 %1393, label %1439, label %1438

1438:                                             ; preds = %1437
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 501, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1439:                                             ; preds = %1437
  %1440 = sext i32 %36 to i64
  %1441 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1440
  store ptr %1256, ptr %1441, align 8, !tbaa !110
  %1442 = getelementptr inbounds nuw i8, ptr %1441, i64 8
  store ptr %33, ptr %1442, align 8, !tbaa !112
  %1443 = getelementptr inbounds nuw i8, ptr %1441, i64 16
  store i32 %34, ptr %1443, align 8, !tbaa !113
  %1444 = getelementptr inbounds nuw i8, ptr %1441, i64 20
  store i32 %153, ptr %1444, align 4, !tbaa !114
  %1445 = icmp eq i32 %36, 15
  br i1 %1445, label %1446, label %1447

1446:                                             ; preds = %1439
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 502, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1447:                                             ; preds = %1439
  %1448 = add nsw i32 %36, 1
  %1449 = sext i32 %1448 to i64
  %1450 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1449
  store ptr %35, ptr %1450, align 8, !tbaa !110
  %1451 = getelementptr inbounds nuw i8, ptr %1450, i64 8
  store ptr %1254, ptr %1451, align 8, !tbaa !112
  %1452 = getelementptr inbounds nuw i8, ptr %1450, i64 16
  store i32 %34, ptr %1452, align 8, !tbaa !113
  %1453 = add nsw i32 %36, 2
  %1454 = getelementptr inbounds nuw i8, ptr %1450, i64 20
  store i32 %153, ptr %1454, align 4, !tbaa !114
  %1455 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %1456 = extractvalue { i32, i1 } %1455, 0, !nosanitize !10
  %1457 = extractvalue { i32, i1 } %1455, 1, !nosanitize !10
  br i1 %1457, label %508, label %1458, !prof !11, !nosanitize !10

1458:                                             ; preds = %1447
  %1459 = add nsw i64 %1344, 2147483648
  %1460 = icmp ult i64 %1459, 4294967296
  br i1 %1460, label %1462, label %1461

1461:                                             ; preds = %1458
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 503, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1462:                                             ; preds = %1458
  %1463 = and i64 %1343, 261120
  %1464 = icmp eq i64 %1463, 0
  br i1 %1464, label %1474, label %1465

1465:                                             ; preds = %1462
  %1466 = lshr i64 %1344, 8
  %1467 = and i64 %1466, 255
  %1468 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1467
  %1469 = load i32, ptr %1468, align 4, !tbaa !5
  %1470 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1469, i32 8), !nosanitize !10
  %1471 = extractvalue { i32, i1 } %1470, 0, !nosanitize !10
  %1472 = extractvalue { i32, i1 } %1470, 1, !nosanitize !10
  br i1 %1472, label %1473, label %1727, !prof !11, !nosanitize !10

1473:                                             ; preds = %1465
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1474:                                             ; preds = %1462
  %1475 = and i64 %1344, 255
  %1476 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1475
  %1477 = load i32, ptr %1476, align 4, !tbaa !5
  br label %1727

1478:                                             ; preds = %1338
  %1479 = icmp sgt i64 %1107, %1344
  br i1 %1479, label %1524, label %1480

1480:                                             ; preds = %1478
  %1481 = icmp slt i32 %36, 16
  br i1 %1481, label %1483, label %1482

1482:                                             ; preds = %1480
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 507, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1483:                                             ; preds = %1480
  %1484 = sext i32 %36 to i64
  %1485 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1484
  store ptr %1339, ptr %1485, align 8, !tbaa !110
  %1486 = getelementptr inbounds nuw i8, ptr %1485, i64 8
  store ptr %1256, ptr %1486, align 8, !tbaa !112
  %1487 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %1488 = extractvalue { i32, i1 } %1487, 1, !nosanitize !10
  br i1 %1488, label %508, label %1489, !prof !11, !nosanitize !10

1489:                                             ; preds = %1483
  %1490 = extractvalue { i32, i1 } %1487, 0, !nosanitize !10
  %1491 = getelementptr inbounds nuw i8, ptr %1485, i64 16
  store i32 %1490, ptr %1491, align 8, !tbaa !113
  %1492 = add nsw i64 %1344, 2147483648
  %1493 = icmp ult i64 %1492, 4294967296
  br i1 %1493, label %1495, label %1494

1494:                                             ; preds = %1489
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 507, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1495:                                             ; preds = %1489
  %1496 = and i64 %1343, 261120
  %1497 = icmp eq i64 %1496, 0
  br i1 %1497, label %1507, label %1498

1498:                                             ; preds = %1495
  %1499 = lshr i64 %1344, 8
  %1500 = and i64 %1499, 255
  %1501 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1500
  %1502 = load i32, ptr %1501, align 4, !tbaa !5
  %1503 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1502, i32 8), !nosanitize !10
  %1504 = extractvalue { i32, i1 } %1503, 0, !nosanitize !10
  %1505 = extractvalue { i32, i1 } %1503, 1, !nosanitize !10
  br i1 %1505, label %1506, label %1511, !prof !11, !nosanitize !10

1506:                                             ; preds = %1498
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1507:                                             ; preds = %1495
  %1508 = and i64 %1344, 255
  %1509 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1508
  %1510 = load i32, ptr %1509, align 4, !tbaa !5
  br label %1511

1511:                                             ; preds = %1498, %1507
  %1512 = phi i32 [ %1504, %1498 ], [ %1510, %1507 ]
  %1513 = getelementptr inbounds nuw i8, ptr %1485, i64 20
  store i32 %1512, ptr %1513, align 4, !tbaa !114
  %1514 = icmp eq i32 %36, 15
  br i1 %1514, label %1515, label %1516

1515:                                             ; preds = %1511
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 508, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1516:                                             ; preds = %1511
  %1517 = add nsw i32 %36, 1
  %1518 = sext i32 %1517 to i64
  %1519 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1518
  store ptr %35, ptr %1519, align 8, !tbaa !110
  %1520 = getelementptr inbounds nuw i8, ptr %1519, i64 8
  store ptr %1254, ptr %1520, align 8, !tbaa !112
  %1521 = getelementptr inbounds nuw i8, ptr %1519, i64 16
  store i32 %34, ptr %1521, align 8, !tbaa !113
  %1522 = add nsw i32 %36, 2
  %1523 = getelementptr inbounds nuw i8, ptr %1519, i64 20
  store i32 %153, ptr %1523, align 4, !tbaa !114
  br label %1727

1524:                                             ; preds = %1478
  %1525 = icmp sgt i64 %1181, %1344
  %1526 = icmp slt i32 %36, 16
  br i1 %1525, label %1570, label %1527

1527:                                             ; preds = %1524
  br i1 %1526, label %1529, label %1528

1528:                                             ; preds = %1527
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 511, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1529:                                             ; preds = %1527
  %1530 = sext i32 %36 to i64
  %1531 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1530
  store ptr %35, ptr %1531, align 8, !tbaa !110
  %1532 = getelementptr inbounds nuw i8, ptr %1531, i64 8
  store ptr %1254, ptr %1532, align 8, !tbaa !112
  %1533 = getelementptr inbounds nuw i8, ptr %1531, i64 16
  store i32 %34, ptr %1533, align 8, !tbaa !113
  %1534 = getelementptr inbounds nuw i8, ptr %1531, i64 20
  store i32 %153, ptr %1534, align 4, !tbaa !114
  %1535 = icmp eq i32 %36, 15
  br i1 %1535, label %1536, label %1537

1536:                                             ; preds = %1529
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 512, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1537:                                             ; preds = %1529
  %1538 = add nsw i32 %36, 1
  %1539 = sext i32 %1538 to i64
  %1540 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1539
  store ptr %1339, ptr %1540, align 8, !tbaa !110
  %1541 = getelementptr inbounds nuw i8, ptr %1540, i64 8
  store ptr %1256, ptr %1541, align 8, !tbaa !112
  %1542 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %1543 = extractvalue { i32, i1 } %1542, 1, !nosanitize !10
  br i1 %1543, label %508, label %1544, !prof !11, !nosanitize !10

1544:                                             ; preds = %1537
  %1545 = extractvalue { i32, i1 } %1542, 0, !nosanitize !10
  %1546 = getelementptr inbounds nuw i8, ptr %1540, i64 16
  store i32 %1545, ptr %1546, align 8, !tbaa !113
  %1547 = add nsw i64 %1344, 2147483648
  %1548 = icmp ult i64 %1547, 4294967296
  br i1 %1548, label %1550, label %1549

1549:                                             ; preds = %1544
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 512, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1550:                                             ; preds = %1544
  %1551 = and i64 %1343, 261120
  %1552 = icmp eq i64 %1551, 0
  br i1 %1552, label %1562, label %1553

1553:                                             ; preds = %1550
  %1554 = lshr i64 %1344, 8
  %1555 = and i64 %1554, 255
  %1556 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1555
  %1557 = load i32, ptr %1556, align 4, !tbaa !5
  %1558 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1557, i32 8), !nosanitize !10
  %1559 = extractvalue { i32, i1 } %1558, 0, !nosanitize !10
  %1560 = extractvalue { i32, i1 } %1558, 1, !nosanitize !10
  br i1 %1560, label %1561, label %1566, !prof !11, !nosanitize !10

1561:                                             ; preds = %1553
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1562:                                             ; preds = %1550
  %1563 = and i64 %1344, 255
  %1564 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1563
  %1565 = load i32, ptr %1564, align 4, !tbaa !5
  br label %1566

1566:                                             ; preds = %1553, %1562
  %1567 = phi i32 [ %1559, %1553 ], [ %1565, %1562 ]
  %1568 = add nsw i32 %36, 2
  %1569 = getelementptr inbounds nuw i8, ptr %1540, i64 20
  store i32 %1567, ptr %1569, align 4, !tbaa !114
  br label %1727

1570:                                             ; preds = %1524
  br i1 %1526, label %1572, label %1571

1571:                                             ; preds = %1570
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 515, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1572:                                             ; preds = %1570
  %1573 = sext i32 %36 to i64
  %1574 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1573
  store ptr %35, ptr %1574, align 8, !tbaa !110
  %1575 = getelementptr inbounds nuw i8, ptr %1574, i64 8
  store ptr %1254, ptr %1575, align 8, !tbaa !112
  %1576 = getelementptr inbounds nuw i8, ptr %1574, i64 16
  store i32 %34, ptr %1576, align 8, !tbaa !113
  %1577 = getelementptr inbounds nuw i8, ptr %1574, i64 20
  store i32 %153, ptr %1577, align 4, !tbaa !114
  %1578 = icmp eq i32 %36, 15
  br i1 %1578, label %1579, label %1580

1579:                                             ; preds = %1572
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 516, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1580:                                             ; preds = %1572
  %1581 = add nsw i32 %36, 1
  %1582 = sext i32 %1581 to i64
  %1583 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1582
  store ptr %1256, ptr %1583, align 8, !tbaa !110
  %1584 = getelementptr inbounds nuw i8, ptr %1583, i64 8
  store ptr %33, ptr %1584, align 8, !tbaa !112
  %1585 = getelementptr inbounds nuw i8, ptr %1583, i64 16
  store i32 %34, ptr %1585, align 8, !tbaa !113
  %1586 = add nsw i32 %36, 2
  %1587 = getelementptr inbounds nuw i8, ptr %1583, i64 20
  store i32 %153, ptr %1587, align 4, !tbaa !114
  %1588 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %1589 = extractvalue { i32, i1 } %1588, 0, !nosanitize !10
  %1590 = extractvalue { i32, i1 } %1588, 1, !nosanitize !10
  br i1 %1590, label %508, label %1591, !prof !11, !nosanitize !10

1591:                                             ; preds = %1580
  %1592 = add nsw i64 %1344, 2147483648
  %1593 = icmp ult i64 %1592, 4294967296
  br i1 %1593, label %1595, label %1594

1594:                                             ; preds = %1591
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 517, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1595:                                             ; preds = %1591
  %1596 = and i64 %1343, 261120
  %1597 = icmp eq i64 %1596, 0
  br i1 %1597, label %1607, label %1598

1598:                                             ; preds = %1595
  %1599 = lshr i64 %1344, 8
  %1600 = and i64 %1599, 255
  %1601 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1600
  %1602 = load i32, ptr %1601, align 4, !tbaa !5
  %1603 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1602, i32 8), !nosanitize !10
  %1604 = extractvalue { i32, i1 } %1603, 0, !nosanitize !10
  %1605 = extractvalue { i32, i1 } %1603, 1, !nosanitize !10
  br i1 %1605, label %1606, label %1727, !prof !11, !nosanitize !10

1606:                                             ; preds = %1598
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1607:                                             ; preds = %1595
  %1608 = and i64 %1344, 255
  %1609 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1608
  %1610 = load i32, ptr %1609, align 4, !tbaa !5
  br label %1727

1611:                                             ; preds = %1091
  %1612 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %153, i32 1), !nosanitize !10
  %1613 = extractvalue { i32, i1 } %1612, 0, !nosanitize !10
  %1614 = extractvalue { i32, i1 } %1612, 1, !nosanitize !10
  br i1 %1614, label %508, label %1615, !prof !11, !nosanitize !10

1615:                                             ; preds = %1611
  %1616 = load i32, ptr %35, align 4, !tbaa !5
  %1617 = sext i32 %1616 to i64
  %1618 = getelementptr inbounds i32, ptr %1, i64 %1617
  %1619 = load i32, ptr %1618, align 4, !tbaa !5
  %1620 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1619, i32 -1)
  %1621 = extractvalue { i32, i1 } %1620, 1, !nosanitize !10
  br i1 %1621, label %137, label %1622, !prof !11, !nosanitize !10

1622:                                             ; preds = %1615
  %1623 = extractvalue { i32, i1 } %1620, 0, !nosanitize !10
  %1624 = sext i32 %1623 to i64
  %1625 = getelementptr inbounds i8, ptr %151, i64 %1624
  %1626 = load i8, ptr %1625, align 1, !tbaa !9
  %1627 = icmp ult i8 %1626, %949
  br i1 %1627, label %1628, label %1720

1628:                                             ; preds = %1622
  %1629 = getelementptr inbounds i8, ptr %35, i64 -4
  br label %1630

1630:                                             ; preds = %1689, %1628
  %1631 = phi ptr [ %33, %1628 ], [ %1666, %1689 ]
  %1632 = phi ptr [ %1629, %1628 ], [ %1663, %1689 ]
  %1633 = getelementptr inbounds nuw i8, ptr %1632, i64 4
  %1634 = icmp ult ptr %1633, %1631
  br i1 %1634, label %1635, label %1662

1635:                                             ; preds = %1630, %1658
  %1636 = phi ptr [ %1660, %1658 ], [ %1633, %1630 ]
  %1637 = load i32, ptr %1636, align 4, !tbaa !5
  %1638 = sext i32 %1637 to i64
  %1639 = getelementptr inbounds i32, ptr %1, i64 %1638
  %1640 = load i32, ptr %1639, align 4, !tbaa !5
  %1641 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1640, i32 %34), !nosanitize !10
  %1642 = extractvalue { i32, i1 } %1641, 0, !nosanitize !10
  %1643 = extractvalue { i32, i1 } %1641, 1, !nosanitize !10
  br i1 %1643, label %1644, label %1645, !prof !11, !nosanitize !10

1644:                                             ; preds = %1648, %1645, %1635, %1679, %1676, %1668
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1645:                                             ; preds = %1635
  %1646 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1637, i32 1), !nosanitize !10
  %1647 = extractvalue { i32, i1 } %1646, 1, !nosanitize !10
  br i1 %1647, label %1644, label %1648, !prof !11, !nosanitize !10

1648:                                             ; preds = %1645
  %1649 = extractvalue { i32, i1 } %1646, 0, !nosanitize !10
  %1650 = sext i32 %1649 to i64
  %1651 = getelementptr inbounds i32, ptr %1, i64 %1650
  %1652 = load i32, ptr %1651, align 4, !tbaa !5
  %1653 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1652, i32 1), !nosanitize !10
  %1654 = extractvalue { i32, i1 } %1653, 1, !nosanitize !10
  br i1 %1654, label %1644, label %1655, !prof !11, !nosanitize !10

1655:                                             ; preds = %1648
  %1656 = extractvalue { i32, i1 } %1653, 0, !nosanitize !10
  %1657 = icmp slt i32 %1642, %1656
  br i1 %1657, label %1662, label %1658

1658:                                             ; preds = %1655
  %1659 = xor i32 %1637, -1
  store i32 %1659, ptr %1636, align 4, !tbaa !5
  %1660 = getelementptr inbounds nuw i8, ptr %1636, i64 4
  %1661 = icmp ult ptr %1660, %1631
  br i1 %1661, label %1635, label %1662, !llvm.loop !119

1662:                                             ; preds = %1658, %1655, %1630
  %1663 = phi ptr [ %1633, %1630 ], [ %1636, %1655 ], [ %1660, %1658 ]
  br label %1664

1664:                                             ; preds = %1686, %1662
  %1665 = phi ptr [ %1631, %1662 ], [ %1666, %1686 ]
  %1666 = getelementptr inbounds i8, ptr %1665, i64 -4
  %1667 = icmp ult ptr %1663, %1666
  br i1 %1667, label %1668, label %1692

1668:                                             ; preds = %1664
  %1669 = load i32, ptr %1666, align 4, !tbaa !5
  %1670 = sext i32 %1669 to i64
  %1671 = getelementptr inbounds i32, ptr %1, i64 %1670
  %1672 = load i32, ptr %1671, align 4, !tbaa !5
  %1673 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1672, i32 %34), !nosanitize !10
  %1674 = extractvalue { i32, i1 } %1673, 0, !nosanitize !10
  %1675 = extractvalue { i32, i1 } %1673, 1, !nosanitize !10
  br i1 %1675, label %1644, label %1676, !prof !11, !nosanitize !10

1676:                                             ; preds = %1668
  %1677 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1669, i32 1), !nosanitize !10
  %1678 = extractvalue { i32, i1 } %1677, 1, !nosanitize !10
  br i1 %1678, label %1644, label %1679, !prof !11, !nosanitize !10

1679:                                             ; preds = %1676
  %1680 = extractvalue { i32, i1 } %1677, 0, !nosanitize !10
  %1681 = sext i32 %1680 to i64
  %1682 = getelementptr inbounds i32, ptr %1, i64 %1681
  %1683 = load i32, ptr %1682, align 4, !tbaa !5
  %1684 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1683, i32 1), !nosanitize !10
  %1685 = extractvalue { i32, i1 } %1684, 1, !nosanitize !10
  br i1 %1685, label %1644, label %1686, !prof !11, !nosanitize !10

1686:                                             ; preds = %1679
  %1687 = extractvalue { i32, i1 } %1684, 0, !nosanitize !10
  %1688 = icmp slt i32 %1674, %1687
  br i1 %1688, label %1664, label %1689, !llvm.loop !120

1689:                                             ; preds = %1686
  %1690 = xor i32 %1669, -1
  %1691 = load i32, ptr %1663, align 4, !tbaa !5
  store i32 %1691, ptr %1666, align 4, !tbaa !5
  store i32 %1690, ptr %1663, align 4, !tbaa !5
  br label %1630

1692:                                             ; preds = %1664
  %1693 = icmp ult ptr %35, %1663
  br i1 %1693, label %1694, label %1697

1694:                                             ; preds = %1692
  %1695 = load i32, ptr %35, align 4, !tbaa !5
  %1696 = xor i32 %1695, -1
  store i32 %1696, ptr %35, align 4, !tbaa !5
  br label %1697

1697:                                             ; preds = %1692, %1694
  %1698 = ptrtoint ptr %1663 to i64
  %1699 = sub i64 %38, %1698
  %1700 = ashr exact i64 %1699, 2
  %1701 = add nsw i64 %1700, 2147483648
  %1702 = icmp ult i64 %1701, 4294967296
  br i1 %1702, label %1704, label %1703

1703:                                             ; preds = %1697
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 524, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1704:                                             ; preds = %1697
  %1705 = and i64 %1699, 261120
  %1706 = icmp eq i64 %1705, 0
  br i1 %1706, label %1716, label %1707

1707:                                             ; preds = %1704
  %1708 = lshr i64 %1700, 8
  %1709 = and i64 %1708, 255
  %1710 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1709
  %1711 = load i32, ptr %1710, align 4, !tbaa !5
  %1712 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1711, i32 8), !nosanitize !10
  %1713 = extractvalue { i32, i1 } %1712, 0, !nosanitize !10
  %1714 = extractvalue { i32, i1 } %1712, 1, !nosanitize !10
  br i1 %1714, label %1715, label %1720, !prof !11, !nosanitize !10

1715:                                             ; preds = %1707
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1716:                                             ; preds = %1704
  %1717 = and i64 %1700, 255
  %1718 = getelementptr inbounds nuw [256 x i32], ptr @lg_table, i64 0, i64 %1717
  %1719 = load i32, ptr %1718, align 4, !tbaa !5
  br label %1720

1720:                                             ; preds = %1716, %1707, %1622
  %1721 = phi ptr [ %35, %1622 ], [ %1663, %1707 ], [ %1663, %1716 ]
  %1722 = phi i32 [ %1613, %1622 ], [ %1713, %1707 ], [ %1719, %1716 ]
  %1723 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %1724 = extractvalue { i32, i1 } %1723, 1, !nosanitize !10
  br i1 %1724, label %508, label %1725, !prof !11, !nosanitize !10

1725:                                             ; preds = %1720
  %1726 = extractvalue { i32, i1 } %1723, 0, !nosanitize !10
  br label %1727

1727:                                             ; preds = %1725, %1516, %1566, %1383, %1433, %1465, %1474, %1598, %1607, %561, %493, %515, %524, %576, %585, %138
  %1728 = phi ptr [ %144, %138 ], [ %33, %561 ], [ %33, %493 ], [ %405, %515 ], [ %405, %524 ], [ %405, %576 ], [ %405, %585 ], [ %1254, %1383 ], [ %1254, %1433 ], [ %33, %1516 ], [ %33, %1566 ], [ %33, %1725 ], [ %1256, %1465 ], [ %1256, %1474 ], [ %1256, %1598 ], [ %1256, %1607 ]
  %1729 = phi i32 [ %146, %138 ], [ %34, %561 ], [ %34, %493 ], [ %506, %515 ], [ %506, %524 ], [ %567, %576 ], [ %567, %585 ], [ %34, %1383 ], [ %34, %1433 ], [ %34, %1516 ], [ %34, %1566 ], [ %1726, %1725 ], [ %1456, %1465 ], [ %1456, %1474 ], [ %1589, %1598 ], [ %1589, %1607 ]
  %1730 = phi ptr [ %142, %138 ], [ %405, %561 ], [ %405, %493 ], [ %485, %515 ], [ %485, %524 ], [ %485, %576 ], [ %485, %585 ], [ %35, %1383 ], [ %35, %1433 ], [ %1256, %1516 ], [ %1256, %1566 ], [ %1721, %1725 ], [ %1339, %1465 ], [ %1339, %1474 ], [ %1339, %1598 ], [ %1339, %1607 ]
  %1731 = phi i32 [ %139, %138 ], [ %563, %561 ], [ %36, %493 ], [ %503, %515 ], [ %503, %524 ], [ %36, %576 ], [ %36, %585 ], [ %1389, %1383 ], [ %1435, %1433 ], [ %1522, %1516 ], [ %1568, %1566 ], [ %36, %1725 ], [ %1453, %1465 ], [ %1453, %1474 ], [ %1586, %1598 ], [ %1586, %1607 ]
  %1732 = phi i32 [ %148, %138 ], [ -1, %561 ], [ -1, %493 ], [ %521, %515 ], [ %527, %524 ], [ %582, %576 ], [ %588, %585 ], [ %153, %1383 ], [ %153, %1433 ], [ %153, %1516 ], [ %153, %1566 ], [ %1722, %1725 ], [ %1471, %1465 ], [ %1477, %1474 ], [ %1604, %1598 ], [ %1610, %1607 ]
  br label %32
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ss_swapmerge(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca [32 x %struct.anon.0], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #12
  %9 = sext i32 %6 to i64
  %10 = getelementptr i8, ptr %5, i64 -4
  %11 = getelementptr i8, ptr %0, i64 2
  %12 = getelementptr i8, ptr %5, i64 4
  %13 = getelementptr i8, ptr %5, i64 4
  br label %14

14:                                               ; preds = %495, %7
  %15 = phi ptr [ %4, %7 ], [ %496, %495 ]
  %16 = phi ptr [ %3, %7 ], [ %497, %495 ]
  %17 = phi ptr [ %2, %7 ], [ %498, %495 ]
  %18 = phi i32 [ 0, %7 ], [ %499, %495 ]
  %19 = phi i32 [ 0, %7 ], [ %500, %495 ]
  %20 = ptrtoint ptr %15 to i64
  br label %21

21:                                               ; preds = %14, %1071
  %22 = phi ptr [ %1020, %1071 ], [ %16, %14 ]
  %23 = phi ptr [ %1050, %1071 ], [ %17, %14 ]
  %24 = phi i32 [ %1082, %1071 ], [ %18, %14 ]
  %25 = phi i32 [ %1089, %1071 ], [ %19, %14 ]
  %26 = ptrtoint ptr %22 to i64
  %27 = sub i64 %20, %26
  %28 = ashr exact i64 %27, 2
  %29 = icmp sgt i64 %28, %9
  br i1 %29, label %501, label %30

30:                                               ; preds = %21
  %31 = icmp ult ptr %23, %22
  %32 = icmp ult ptr %22, %15
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %345

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %10, i64 %27
  %36 = add nsw i64 %28, 2147483648
  %37 = icmp ult i64 %36, 4294967296
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.src, i32 noundef 695, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mergebackward) #11
  unreachable

39:                                               ; preds = %34
  %40 = icmp sgt i64 %28, 0
  br i1 %40, label %41, label %99

41:                                               ; preds = %39
  %42 = trunc i64 %28 to i32
  %43 = icmp ne i32 %42, 0
  %44 = sext i1 %43 to i64
  %45 = add nsw i64 %28, %44
  %46 = and i64 %45, 4294967295
  %47 = add nuw nsw i64 %46, 1
  %48 = icmp samesign ult i64 %46, 7
  br i1 %48, label %85, label %49

49:                                               ; preds = %41
  %50 = icmp ne i32 %42, 0
  %51 = sext i1 %50 to i64
  %52 = add nsw i64 %28, %51
  %53 = shl i64 %52, 2
  %54 = and i64 %53, 17179869180
  %55 = getelementptr i8, ptr %13, i64 %54
  %56 = getelementptr i8, ptr %22, i64 4
  %57 = getelementptr i8, ptr %56, i64 %54
  %58 = icmp ult ptr %5, %57
  %59 = icmp ult ptr %22, %55
  %60 = and i1 %58, %59
  br i1 %60, label %85, label %61

61:                                               ; preds = %49
  %62 = and i64 %47, 8589934584
  %63 = shl nuw nsw i64 %62, 2
  %64 = getelementptr i8, ptr %5, i64 %63
  %65 = trunc i64 %62 to i32
  %66 = sub i32 %42, %65
  %67 = shl nuw nsw i64 %62, 2
  %68 = getelementptr i8, ptr %22, i64 %67
  br label %69

69:                                               ; preds = %69, %61
  %70 = phi i64 [ 0, %61 ], [ %81, %69 ]
  %71 = shl i64 %70, 2
  %72 = getelementptr i8, ptr %5, i64 %71
  %73 = shl i64 %70, 2
  %74 = getelementptr i8, ptr %22, i64 %73
  %75 = getelementptr i8, ptr %72, i64 16
  %76 = load <4 x i32>, ptr %72, align 4, !tbaa !5, !alias.scope !142, !noalias !145
  %77 = load <4 x i32>, ptr %75, align 4, !tbaa !5, !alias.scope !142, !noalias !145
  %78 = getelementptr i8, ptr %74, i64 16
  %79 = load <4 x i32>, ptr %74, align 4, !tbaa !5, !alias.scope !145
  %80 = load <4 x i32>, ptr %78, align 4, !tbaa !5, !alias.scope !145
  store <4 x i32> %79, ptr %72, align 4, !tbaa !5, !alias.scope !142, !noalias !145
  store <4 x i32> %80, ptr %75, align 4, !tbaa !5, !alias.scope !142, !noalias !145
  store <4 x i32> %76, ptr %74, align 4, !tbaa !5, !alias.scope !145
  store <4 x i32> %77, ptr %78, align 4, !tbaa !5, !alias.scope !145
  %81 = add nuw i64 %70, 8
  %82 = icmp eq i64 %81, %62
  br i1 %82, label %83, label %69, !llvm.loop !147

83:                                               ; preds = %69
  %84 = icmp eq i64 %47, %62
  br i1 %84, label %99, label %85

85:                                               ; preds = %49, %41, %83
  %86 = phi ptr [ %5, %49 ], [ %5, %41 ], [ %64, %83 ]
  %87 = phi i32 [ %42, %49 ], [ %42, %41 ], [ %66, %83 ]
  %88 = phi ptr [ %22, %49 ], [ %22, %41 ], [ %68, %83 ]
  br label %89

89:                                               ; preds = %85, %89
  %90 = phi ptr [ %96, %89 ], [ %86, %85 ]
  %91 = phi i32 [ %95, %89 ], [ %87, %85 ]
  %92 = phi ptr [ %97, %89 ], [ %88, %85 ]
  %93 = load i32, ptr %90, align 4, !tbaa !5
  %94 = load i32, ptr %92, align 4, !tbaa !5
  store i32 %94, ptr %90, align 4, !tbaa !5
  store i32 %93, ptr %92, align 4, !tbaa !5
  %95 = add nsw i32 %91, -1
  %96 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %97 = getelementptr inbounds nuw i8, ptr %92, i64 4
  %98 = icmp samesign ugt i32 %91, 1
  br i1 %98, label %89, label %99, !llvm.loop !148

99:                                               ; preds = %89, %83, %39
  %100 = load i32, ptr %35, align 4, !tbaa !5
  %101 = ashr i32 %100, 31
  %102 = xor i32 %101, %100
  %103 = lshr i32 %100, 31
  %104 = zext i32 %102 to i64
  %105 = getelementptr inbounds nuw i32, ptr %1, i64 %104
  %106 = getelementptr inbounds i8, ptr %22, i64 -4
  %107 = load i32, ptr %106, align 4, !tbaa !5
  %108 = ashr i32 %107, 31
  %109 = xor i32 %108, %107
  %110 = lshr i32 %107, 30
  %111 = and i32 %110, 2
  %112 = or disjoint i32 %111, %103
  %113 = zext i32 %109 to i64
  %114 = getelementptr inbounds nuw i32, ptr %1, i64 %113
  %115 = getelementptr inbounds i8, ptr %15, i64 -4
  %116 = load i32, ptr %115, align 4, !tbaa !5
  br label %117

117:                                              ; preds = %208, %99
  %118 = phi ptr [ %35, %99 ], [ %209, %208 ]
  %119 = phi ptr [ %106, %99 ], [ %210, %208 ]
  %120 = phi ptr [ %115, %99 ], [ %211, %208 ]
  %121 = phi ptr [ %114, %99 ], [ %212, %208 ]
  %122 = phi ptr [ %105, %99 ], [ %213, %208 ]
  %123 = phi i32 [ %112, %99 ], [ %214, %208 ]
  %124 = getelementptr i8, ptr %122, i64 4
  br label %125

125:                                              ; preds = %255, %117
  %126 = phi ptr [ %119, %117 ], [ %243, %255 ]
  %127 = phi ptr [ %120, %117 ], [ %241, %255 ]
  %128 = phi ptr [ %121, %117 ], [ %263, %255 ]
  %129 = phi i32 [ %123, %117 ], [ %261, %255 ]
  %130 = load i32, ptr %122, align 4, !tbaa !5
  %131 = load i32, ptr %124, align 4, !tbaa !5
  %132 = load i32, ptr %128, align 4, !tbaa !5
  %133 = getelementptr i8, ptr %128, i64 4
  %134 = load i32, ptr %133, align 4, !tbaa !5
  %135 = sext i32 %130 to i64
  %136 = getelementptr inbounds i8, ptr %11, i64 %135
  %137 = sext i32 %132 to i64
  %138 = getelementptr inbounds i8, ptr %11, i64 %137
  %139 = sext i32 %131 to i64
  %140 = getelementptr i8, ptr %11, i64 %139
  %141 = sext i32 %134 to i64
  %142 = getelementptr i8, ptr %11, i64 %141
  %143 = icmp ult ptr %136, %140
  %144 = icmp ult ptr %138, %142
  %145 = select i1 %143, i1 %144, i1 false
  br i1 %145, label %146, label %158

146:                                              ; preds = %125, %152
  %147 = phi ptr [ %153, %152 ], [ %136, %125 ]
  %148 = phi ptr [ %154, %152 ], [ %138, %125 ]
  %149 = load i8, ptr %147, align 1, !tbaa !9
  %150 = load i8, ptr %148, align 1, !tbaa !9
  %151 = icmp eq i8 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %146
  %153 = getelementptr inbounds nuw i8, ptr %147, i64 1
  %154 = getelementptr inbounds nuw i8, ptr %148, i64 1
  %155 = icmp ult ptr %153, %140
  %156 = icmp ult ptr %154, %142
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %146, label %158, !llvm.loop !26

158:                                              ; preds = %152, %125
  %159 = phi ptr [ %138, %125 ], [ %154, %152 ]
  %160 = phi ptr [ %136, %125 ], [ %153, %152 ]
  %161 = phi i1 [ %143, %125 ], [ %155, %152 ]
  %162 = phi i1 [ %144, %125 ], [ %156, %152 ]
  br i1 %161, label %163, label %167

163:                                              ; preds = %158
  br i1 %162, label %164, label %176

164:                                              ; preds = %163
  %165 = load i8, ptr %160, align 1, !tbaa !9
  %166 = load i8, ptr %159, align 1, !tbaa !9
  br label %169

167:                                              ; preds = %158
  %168 = sext i1 %162 to i32
  br label %218

169:                                              ; preds = %146, %164
  %170 = phi i8 [ %166, %164 ], [ %150, %146 ]
  %171 = phi i8 [ %165, %164 ], [ %149, %146 ]
  %172 = zext i8 %171 to i32
  %173 = zext i8 %170 to i32
  %174 = sub nsw i32 %172, %173
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %218

176:                                              ; preds = %169, %163
  %177 = and i32 %129, 1
  %178 = icmp eq i32 %177, 0
  %179 = load i32, ptr %118, align 4, !tbaa !5
  br i1 %178, label %191, label %180

180:                                              ; preds = %176, %180
  %181 = phi i32 [ %187, %180 ], [ %179, %176 ]
  %182 = phi ptr [ %186, %180 ], [ %118, %176 ]
  %183 = phi ptr [ %184, %180 ], [ %127, %176 ]
  %184 = getelementptr inbounds i8, ptr %183, i64 -4
  store i32 %181, ptr %183, align 4, !tbaa !5
  %185 = load i32, ptr %184, align 4, !tbaa !5
  %186 = getelementptr inbounds i8, ptr %182, i64 -4
  store i32 %185, ptr %182, align 4, !tbaa !5
  %187 = load i32, ptr %186, align 4, !tbaa !5
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %180, label %189, !llvm.loop !149

189:                                              ; preds = %180
  %190 = and i32 %129, -2
  br label %191

191:                                              ; preds = %189, %176
  %192 = phi i32 [ %187, %189 ], [ %179, %176 ]
  %193 = phi ptr [ %186, %189 ], [ %118, %176 ]
  %194 = phi ptr [ %184, %189 ], [ %127, %176 ]
  %195 = phi i32 [ %190, %189 ], [ %129, %176 ]
  %196 = getelementptr inbounds i8, ptr %194, i64 -4
  store i32 %192, ptr %194, align 4, !tbaa !5
  %197 = icmp ugt ptr %193, %5
  br i1 %197, label %198, label %343

198:                                              ; preds = %191
  %199 = load i32, ptr %196, align 4, !tbaa !5
  %200 = getelementptr inbounds i8, ptr %193, i64 -4
  store i32 %199, ptr %193, align 4, !tbaa !5
  %201 = load i32, ptr %200, align 4, !tbaa !5
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %198
  %204 = xor i32 %201, -1
  %205 = zext nneg i32 %204 to i64
  %206 = getelementptr inbounds nuw i32, ptr %1, i64 %205
  %207 = or disjoint i32 %195, 1
  br label %208

208:                                              ; preds = %203, %215, %331, %336
  %209 = phi ptr [ %289, %336 ], [ %289, %331 ], [ %200, %215 ], [ %200, %203 ]
  %210 = phi ptr [ %309, %336 ], [ %309, %331 ], [ %126, %215 ], [ %126, %203 ]
  %211 = phi ptr [ %307, %336 ], [ %307, %331 ], [ %196, %215 ], [ %196, %203 ]
  %212 = phi ptr [ %338, %336 ], [ %334, %331 ], [ %128, %215 ], [ %128, %203 ]
  %213 = phi ptr [ %328, %336 ], [ %328, %331 ], [ %217, %215 ], [ %206, %203 ]
  %214 = phi i32 [ %326, %336 ], [ %335, %331 ], [ %195, %215 ], [ %207, %203 ]
  br label %117

215:                                              ; preds = %198
  %216 = zext nneg i32 %201 to i64
  %217 = getelementptr inbounds nuw i32, ptr %1, i64 %216
  br label %208

218:                                              ; preds = %169, %167
  %219 = phi i32 [ %168, %167 ], [ %174, %169 ]
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %264

221:                                              ; preds = %218
  %222 = and i32 %129, 2
  %223 = icmp eq i32 %222, 0
  %224 = load i32, ptr %126, align 4, !tbaa !5
  br i1 %223, label %236, label %225

225:                                              ; preds = %221, %225
  %226 = phi i32 [ %232, %225 ], [ %224, %221 ]
  %227 = phi ptr [ %231, %225 ], [ %126, %221 ]
  %228 = phi ptr [ %229, %225 ], [ %127, %221 ]
  %229 = getelementptr inbounds i8, ptr %228, i64 -4
  store i32 %226, ptr %228, align 4, !tbaa !5
  %230 = load i32, ptr %229, align 4, !tbaa !5
  %231 = getelementptr inbounds i8, ptr %227, i64 -4
  store i32 %230, ptr %227, align 4, !tbaa !5
  %232 = load i32, ptr %231, align 4, !tbaa !5
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %225, label %234, !llvm.loop !150

234:                                              ; preds = %225
  %235 = and i32 %129, -3
  br label %236

236:                                              ; preds = %234, %221
  %237 = phi i32 [ %232, %234 ], [ %224, %221 ]
  %238 = phi ptr [ %231, %234 ], [ %126, %221 ]
  %239 = phi ptr [ %229, %234 ], [ %127, %221 ]
  %240 = phi i32 [ %235, %234 ], [ %129, %221 ]
  %241 = getelementptr inbounds i8, ptr %239, i64 -4
  store i32 %237, ptr %239, align 4, !tbaa !5
  %242 = load i32, ptr %241, align 4, !tbaa !5
  %243 = getelementptr inbounds i8, ptr %238, i64 -4
  store i32 %242, ptr %238, align 4, !tbaa !5
  %244 = icmp ult ptr %243, %23
  br i1 %244, label %245, label %255

245:                                              ; preds = %236
  %246 = icmp ult ptr %5, %118
  br i1 %246, label %247, label %339

247:                                              ; preds = %245, %247
  %248 = phi ptr [ %251, %247 ], [ %241, %245 ]
  %249 = phi ptr [ %253, %247 ], [ %118, %245 ]
  %250 = load i32, ptr %249, align 4, !tbaa !5
  %251 = getelementptr inbounds i8, ptr %248, i64 -4
  store i32 %250, ptr %248, align 4, !tbaa !5
  %252 = load i32, ptr %251, align 4, !tbaa !5
  %253 = getelementptr inbounds i8, ptr %249, i64 -4
  store i32 %252, ptr %249, align 4, !tbaa !5
  %254 = icmp ult ptr %5, %253
  br i1 %254, label %247, label %339, !llvm.loop !151

255:                                              ; preds = %236
  %256 = load i32, ptr %243, align 4, !tbaa !5
  %257 = icmp slt i32 %256, 0
  %258 = xor i32 %256, -1
  %259 = or disjoint i32 %240, 2
  %260 = select i1 %257, i32 %258, i32 %256
  %261 = select i1 %257, i32 %259, i32 %240
  %262 = zext i32 %260 to i64
  %263 = getelementptr inbounds nuw i32, ptr %1, i64 %262
  br label %125

264:                                              ; preds = %218
  %265 = and i32 %129, 1
  %266 = icmp eq i32 %265, 0
  %267 = load i32, ptr %118, align 4, !tbaa !5
  br i1 %266, label %279, label %268

268:                                              ; preds = %264, %268
  %269 = phi i32 [ %275, %268 ], [ %267, %264 ]
  %270 = phi ptr [ %274, %268 ], [ %118, %264 ]
  %271 = phi ptr [ %272, %268 ], [ %127, %264 ]
  %272 = getelementptr inbounds i8, ptr %271, i64 -4
  store i32 %269, ptr %271, align 4, !tbaa !5
  %273 = load i32, ptr %272, align 4, !tbaa !5
  %274 = getelementptr inbounds i8, ptr %270, i64 -4
  store i32 %273, ptr %270, align 4, !tbaa !5
  %275 = load i32, ptr %274, align 4, !tbaa !5
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %268, label %277, !llvm.loop !152

277:                                              ; preds = %268
  %278 = and i32 %129, -2
  br label %279

279:                                              ; preds = %277, %264
  %280 = phi i32 [ %275, %277 ], [ %267, %264 ]
  %281 = phi ptr [ %274, %277 ], [ %118, %264 ]
  %282 = phi ptr [ %272, %277 ], [ %127, %264 ]
  %283 = phi i32 [ %278, %277 ], [ %129, %264 ]
  %284 = xor i32 %280, -1
  store i32 %284, ptr %282, align 4, !tbaa !5
  %285 = icmp ugt ptr %281, %5
  br i1 %285, label %286, label %343

286:                                              ; preds = %279
  %287 = getelementptr inbounds i8, ptr %282, i64 -4
  %288 = load i32, ptr %287, align 4, !tbaa !5
  %289 = getelementptr inbounds i8, ptr %281, i64 -4
  store i32 %288, ptr %281, align 4, !tbaa !5
  %290 = and i32 %283, 2
  %291 = icmp eq i32 %290, 0
  %292 = load i32, ptr %126, align 4, !tbaa !5
  br i1 %291, label %302, label %293

293:                                              ; preds = %286, %293
  %294 = phi i32 [ %300, %293 ], [ %292, %286 ]
  %295 = phi ptr [ %299, %293 ], [ %126, %286 ]
  %296 = phi ptr [ %297, %293 ], [ %287, %286 ]
  %297 = getelementptr inbounds i8, ptr %296, i64 -4
  store i32 %294, ptr %296, align 4, !tbaa !5
  %298 = load i32, ptr %297, align 4, !tbaa !5
  %299 = getelementptr inbounds i8, ptr %295, i64 -4
  store i32 %298, ptr %295, align 4, !tbaa !5
  %300 = load i32, ptr %299, align 4, !tbaa !5
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %293, label %302, !llvm.loop !153

302:                                              ; preds = %293, %286
  %303 = phi i32 [ %292, %286 ], [ %300, %293 ]
  %304 = phi ptr [ %126, %286 ], [ %299, %293 ]
  %305 = phi ptr [ %287, %286 ], [ %297, %293 ]
  %306 = phi i32 [ %283, %286 ], [ 0, %293 ]
  %307 = getelementptr inbounds i8, ptr %305, i64 -4
  store i32 %303, ptr %305, align 4, !tbaa !5
  %308 = load i32, ptr %307, align 4, !tbaa !5
  %309 = getelementptr inbounds i8, ptr %304, i64 -4
  store i32 %308, ptr %304, align 4, !tbaa !5
  %310 = icmp ult ptr %309, %23
  br i1 %310, label %311, label %321

311:                                              ; preds = %302
  %312 = icmp ult ptr %5, %289
  br i1 %312, label %313, label %339

313:                                              ; preds = %311, %313
  %314 = phi ptr [ %317, %313 ], [ %307, %311 ]
  %315 = phi ptr [ %319, %313 ], [ %289, %311 ]
  %316 = load i32, ptr %315, align 4, !tbaa !5
  %317 = getelementptr inbounds i8, ptr %314, i64 -4
  store i32 %316, ptr %314, align 4, !tbaa !5
  %318 = load i32, ptr %317, align 4, !tbaa !5
  %319 = getelementptr inbounds i8, ptr %315, i64 -4
  store i32 %318, ptr %315, align 4, !tbaa !5
  %320 = icmp ult ptr %5, %319
  br i1 %320, label %313, label %339, !llvm.loop !154

321:                                              ; preds = %302
  %322 = load i32, ptr %289, align 4, !tbaa !5
  %323 = ashr i32 %322, 31
  %324 = xor i32 %323, %322
  %325 = lshr i32 %322, 31
  %326 = or i32 %325, %306
  %327 = zext i32 %324 to i64
  %328 = getelementptr inbounds nuw i32, ptr %1, i64 %327
  %329 = load i32, ptr %309, align 4, !tbaa !5
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %321
  %332 = xor i32 %329, -1
  %333 = zext nneg i32 %332 to i64
  %334 = getelementptr inbounds nuw i32, ptr %1, i64 %333
  %335 = or disjoint i32 %326, 2
  br label %208

336:                                              ; preds = %321
  %337 = zext nneg i32 %329 to i64
  %338 = getelementptr inbounds nuw i32, ptr %1, i64 %337
  br label %208

339:                                              ; preds = %313, %247, %311, %245
  %340 = phi ptr [ %118, %245 ], [ %289, %311 ], [ %253, %247 ], [ %319, %313 ]
  %341 = phi ptr [ %241, %245 ], [ %307, %311 ], [ %251, %247 ], [ %317, %313 ]
  %342 = load i32, ptr %340, align 4, !tbaa !5
  store i32 %342, ptr %341, align 4, !tbaa !5
  br label %343

343:                                              ; preds = %191, %279, %339
  %344 = phi ptr [ %340, %339 ], [ %5, %279 ], [ %5, %191 ]
  store i32 %116, ptr %344, align 4, !tbaa !5
  br label %345

345:                                              ; preds = %30, %343
  %346 = and i32 %25, 1
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %350, label %348

348:                                              ; preds = %345
  %349 = load i32, ptr %23, align 4, !tbaa !5
  br label %412

350:                                              ; preds = %345
  %351 = and i32 %25, 2
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %415, label %353

353:                                              ; preds = %350
  %354 = getelementptr inbounds i8, ptr %23, i64 -4
  %355 = load i32, ptr %354, align 4, !tbaa !5
  %356 = ashr i32 %355, 31
  %357 = xor i32 %356, %355
  %358 = zext nneg i32 %357 to i64
  %359 = getelementptr inbounds nuw i32, ptr %1, i64 %358
  %360 = load i32, ptr %23, align 4, !tbaa !5
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, ptr %1, i64 %361
  %363 = load i32, ptr %359, align 4, !tbaa !5
  %364 = getelementptr i8, ptr %359, i64 4
  %365 = load i32, ptr %364, align 4, !tbaa !5
  %366 = load i32, ptr %362, align 4, !tbaa !5
  %367 = getelementptr i8, ptr %362, i64 4
  %368 = load i32, ptr %367, align 4, !tbaa !5
  %369 = sext i32 %363 to i64
  %370 = getelementptr inbounds i8, ptr %11, i64 %369
  %371 = sext i32 %366 to i64
  %372 = getelementptr inbounds i8, ptr %11, i64 %371
  %373 = sext i32 %365 to i64
  %374 = getelementptr i8, ptr %11, i64 %373
  %375 = sext i32 %368 to i64
  %376 = getelementptr i8, ptr %11, i64 %375
  %377 = icmp ult ptr %370, %374
  %378 = icmp ult ptr %372, %376
  %379 = select i1 %377, i1 %378, i1 false
  br i1 %379, label %380, label %392

380:                                              ; preds = %353, %386
  %381 = phi ptr [ %387, %386 ], [ %370, %353 ]
  %382 = phi ptr [ %388, %386 ], [ %372, %353 ]
  %383 = load i8, ptr %381, align 1, !tbaa !9
  %384 = load i8, ptr %382, align 1, !tbaa !9
  %385 = icmp eq i8 %383, %384
  br i1 %385, label %386, label %400

386:                                              ; preds = %380
  %387 = getelementptr inbounds nuw i8, ptr %381, i64 1
  %388 = getelementptr inbounds nuw i8, ptr %382, i64 1
  %389 = icmp ult ptr %387, %374
  %390 = icmp ult ptr %388, %376
  %391 = select i1 %389, i1 %390, i1 false
  br i1 %391, label %380, label %392, !llvm.loop !26

392:                                              ; preds = %386, %353
  %393 = phi ptr [ %372, %353 ], [ %388, %386 ]
  %394 = phi ptr [ %370, %353 ], [ %387, %386 ]
  %395 = phi i1 [ %377, %353 ], [ %389, %386 ]
  %396 = phi i1 [ %378, %353 ], [ %390, %386 ]
  br i1 %395, label %397, label %407

397:                                              ; preds = %392
  br i1 %396, label %398, label %415

398:                                              ; preds = %397
  %399 = load i8, ptr %394, align 1, !tbaa !9
  br label %400

400:                                              ; preds = %380, %398
  %401 = phi i8 [ %399, %398 ], [ %383, %380 ]
  %402 = phi ptr [ %393, %398 ], [ %382, %380 ]
  %403 = zext i8 %401 to i32
  %404 = load i8, ptr %402, align 1, !tbaa !9
  %405 = zext i8 %404 to i32
  %406 = sub nsw i32 %403, %405
  br label %409

407:                                              ; preds = %392
  %408 = sext i1 %396 to i32
  br label %409

409:                                              ; preds = %400, %407
  %410 = phi i32 [ %408, %407 ], [ %406, %400 ]
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %348, %409
  %413 = phi i32 [ %349, %348 ], [ %360, %409 ]
  %414 = xor i32 %413, -1
  store i32 %414, ptr %23, align 4, !tbaa !5
  br label %415

415:                                              ; preds = %397, %412, %409, %350
  %416 = and i32 %25, 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %479, label %418

418:                                              ; preds = %415
  %419 = getelementptr inbounds i8, ptr %15, i64 -4
  %420 = load i32, ptr %419, align 4, !tbaa !5
  %421 = ashr i32 %420, 31
  %422 = xor i32 %421, %420
  %423 = zext nneg i32 %422 to i64
  %424 = getelementptr inbounds nuw i32, ptr %1, i64 %423
  %425 = load i32, ptr %15, align 4, !tbaa !5
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, ptr %1, i64 %426
  %428 = load i32, ptr %424, align 4, !tbaa !5
  %429 = getelementptr i8, ptr %424, i64 4
  %430 = load i32, ptr %429, align 4, !tbaa !5
  %431 = load i32, ptr %427, align 4, !tbaa !5
  %432 = getelementptr i8, ptr %427, i64 4
  %433 = load i32, ptr %432, align 4, !tbaa !5
  %434 = sext i32 %428 to i64
  %435 = getelementptr inbounds i8, ptr %11, i64 %434
  %436 = sext i32 %431 to i64
  %437 = getelementptr inbounds i8, ptr %11, i64 %436
  %438 = sext i32 %430 to i64
  %439 = getelementptr i8, ptr %11, i64 %438
  %440 = sext i32 %433 to i64
  %441 = getelementptr i8, ptr %11, i64 %440
  %442 = icmp ult ptr %435, %439
  %443 = icmp ult ptr %437, %441
  %444 = select i1 %442, i1 %443, i1 false
  br i1 %444, label %445, label %457

445:                                              ; preds = %418, %451
  %446 = phi ptr [ %452, %451 ], [ %435, %418 ]
  %447 = phi ptr [ %453, %451 ], [ %437, %418 ]
  %448 = load i8, ptr %446, align 1, !tbaa !9
  %449 = load i8, ptr %447, align 1, !tbaa !9
  %450 = icmp eq i8 %448, %449
  br i1 %450, label %451, label %465

451:                                              ; preds = %445
  %452 = getelementptr inbounds nuw i8, ptr %446, i64 1
  %453 = getelementptr inbounds nuw i8, ptr %447, i64 1
  %454 = icmp ult ptr %452, %439
  %455 = icmp ult ptr %453, %441
  %456 = select i1 %454, i1 %455, i1 false
  br i1 %456, label %445, label %457, !llvm.loop !26

457:                                              ; preds = %451, %418
  %458 = phi ptr [ %437, %418 ], [ %453, %451 ]
  %459 = phi ptr [ %435, %418 ], [ %452, %451 ]
  %460 = phi i1 [ %442, %418 ], [ %454, %451 ]
  %461 = phi i1 [ %443, %418 ], [ %455, %451 ]
  br i1 %460, label %462, label %472

462:                                              ; preds = %457
  br i1 %461, label %463, label %479

463:                                              ; preds = %462
  %464 = load i8, ptr %459, align 1, !tbaa !9
  br label %465

465:                                              ; preds = %445, %463
  %466 = phi i8 [ %464, %463 ], [ %448, %445 ]
  %467 = phi ptr [ %458, %463 ], [ %447, %445 ]
  %468 = zext i8 %466 to i32
  %469 = load i8, ptr %467, align 1, !tbaa !9
  %470 = zext i8 %469 to i32
  %471 = sub nsw i32 %468, %470
  br label %474

472:                                              ; preds = %457
  %473 = sext i1 %461 to i32
  br label %474

474:                                              ; preds = %465, %472
  %475 = phi i32 [ %473, %472 ], [ %471, %465 ]
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %479

477:                                              ; preds = %474
  %478 = xor i32 %425, -1
  store i32 %478, ptr %15, align 4, !tbaa !5
  br label %479

479:                                              ; preds = %462, %415, %474, %477
  %480 = icmp sgt i32 %24, -1
  br i1 %480, label %482, label %481

481:                                              ; preds = %479
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 771, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #11
  unreachable

482:                                              ; preds = %479
  %483 = icmp eq i32 %24, 0
  br i1 %483, label %1301, label %484

484:                                              ; preds = %482
  %485 = add nsw i32 %24, -1
  %486 = zext nneg i32 %485 to i64
  %487 = getelementptr inbounds nuw [32 x %struct.anon.0], ptr %8, i64 0, i64 %486
  %488 = load ptr, ptr %487, align 16, !tbaa !155
  %489 = getelementptr inbounds nuw i8, ptr %487, i64 8
  %490 = load ptr, ptr %489, align 8, !tbaa !157
  %491 = getelementptr inbounds nuw i8, ptr %487, i64 16
  %492 = load ptr, ptr %491, align 16, !tbaa !158
  %493 = getelementptr inbounds nuw i8, ptr %487, i64 24
  %494 = load i32, ptr %493, align 8, !tbaa !159
  br label %495

495:                                              ; preds = %484, %862, %1056, %1290
  %496 = phi ptr [ %1298, %1290 ], [ %1049, %1056 ], [ %870, %862 ], [ %492, %484 ]
  %497 = phi ptr [ %1296, %1290 ], [ %966, %1056 ], [ %868, %862 ], [ %490, %484 ]
  %498 = phi ptr [ %1294, %1290 ], [ %23, %1056 ], [ %866, %862 ], [ %488, %484 ]
  %499 = phi i32 [ %1291, %1290 ], [ %1061, %1056 ], [ %863, %862 ], [ %485, %484 ]
  %500 = phi i32 [ %1300, %1290 ], [ %1068, %1056 ], [ %872, %862 ], [ %494, %484 ]
  br label %14

501:                                              ; preds = %21
  %502 = ptrtoint ptr %23 to i64
  %503 = sub i64 %26, %502
  %504 = ashr exact i64 %503, 2
  %505 = icmp sgt i64 %504, %9
  br i1 %505, label %873, label %506

506:                                              ; preds = %501
  %507 = icmp ult ptr %23, %22
  br i1 %507, label %508, label %723

508:                                              ; preds = %506
  %509 = getelementptr i8, ptr %10, i64 %503
  %510 = add nsw i64 %504, 2147483648
  %511 = icmp ult i64 %510, 4294967296
  br i1 %511, label %513, label %512

512:                                              ; preds = %508
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.src, i32 noundef 643, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mergeforward) #11
  unreachable

513:                                              ; preds = %508
  %514 = icmp sgt i64 %504, 0
  br i1 %514, label %515, label %573

515:                                              ; preds = %513
  %516 = trunc i64 %504 to i32
  %517 = icmp ne i32 %516, 0
  %518 = sext i1 %517 to i64
  %519 = add nsw i64 %504, %518
  %520 = and i64 %519, 4294967295
  %521 = add nuw nsw i64 %520, 1
  %522 = icmp samesign ult i64 %520, 7
  br i1 %522, label %559, label %523

523:                                              ; preds = %515
  %524 = icmp ne i32 %516, 0
  %525 = sext i1 %524 to i64
  %526 = add nsw i64 %504, %525
  %527 = shl i64 %526, 2
  %528 = and i64 %527, 17179869180
  %529 = getelementptr i8, ptr %12, i64 %528
  %530 = getelementptr i8, ptr %23, i64 4
  %531 = getelementptr i8, ptr %530, i64 %528
  %532 = icmp ult ptr %5, %531
  %533 = icmp ult ptr %23, %529
  %534 = and i1 %532, %533
  br i1 %534, label %559, label %535

535:                                              ; preds = %523
  %536 = and i64 %521, 8589934584
  %537 = shl nuw nsw i64 %536, 2
  %538 = getelementptr i8, ptr %5, i64 %537
  %539 = trunc i64 %536 to i32
  %540 = sub i32 %516, %539
  %541 = shl nuw nsw i64 %536, 2
  %542 = getelementptr i8, ptr %23, i64 %541
  br label %543

543:                                              ; preds = %543, %535
  %544 = phi i64 [ 0, %535 ], [ %555, %543 ]
  %545 = shl i64 %544, 2
  %546 = getelementptr i8, ptr %5, i64 %545
  %547 = shl i64 %544, 2
  %548 = getelementptr i8, ptr %23, i64 %547
  %549 = getelementptr i8, ptr %546, i64 16
  %550 = load <4 x i32>, ptr %546, align 4, !tbaa !5, !alias.scope !160, !noalias !163
  %551 = load <4 x i32>, ptr %549, align 4, !tbaa !5, !alias.scope !160, !noalias !163
  %552 = getelementptr i8, ptr %548, i64 16
  %553 = load <4 x i32>, ptr %548, align 4, !tbaa !5, !alias.scope !163
  %554 = load <4 x i32>, ptr %552, align 4, !tbaa !5, !alias.scope !163
  store <4 x i32> %553, ptr %546, align 4, !tbaa !5, !alias.scope !160, !noalias !163
  store <4 x i32> %554, ptr %549, align 4, !tbaa !5, !alias.scope !160, !noalias !163
  store <4 x i32> %550, ptr %548, align 4, !tbaa !5, !alias.scope !163
  store <4 x i32> %551, ptr %552, align 4, !tbaa !5, !alias.scope !163
  %555 = add nuw i64 %544, 8
  %556 = icmp eq i64 %555, %536
  br i1 %556, label %557, label %543, !llvm.loop !165

557:                                              ; preds = %543
  %558 = icmp eq i64 %521, %536
  br i1 %558, label %573, label %559

559:                                              ; preds = %523, %515, %557
  %560 = phi ptr [ %5, %523 ], [ %5, %515 ], [ %538, %557 ]
  %561 = phi i32 [ %516, %523 ], [ %516, %515 ], [ %540, %557 ]
  %562 = phi ptr [ %23, %523 ], [ %23, %515 ], [ %542, %557 ]
  br label %563

563:                                              ; preds = %559, %563
  %564 = phi ptr [ %570, %563 ], [ %560, %559 ]
  %565 = phi i32 [ %569, %563 ], [ %561, %559 ]
  %566 = phi ptr [ %571, %563 ], [ %562, %559 ]
  %567 = load i32, ptr %564, align 4, !tbaa !5
  %568 = load i32, ptr %566, align 4, !tbaa !5
  store i32 %568, ptr %564, align 4, !tbaa !5
  store i32 %567, ptr %566, align 4, !tbaa !5
  %569 = add nsw i32 %565, -1
  %570 = getelementptr inbounds nuw i8, ptr %564, i64 4
  %571 = getelementptr inbounds nuw i8, ptr %566, i64 4
  %572 = icmp samesign ugt i32 %565, 1
  br i1 %572, label %563, label %573, !llvm.loop !166

573:                                              ; preds = %563, %557, %513
  %574 = load i32, ptr %23, align 4, !tbaa !5
  br label %579

575:                                              ; preds = %678, %720
  %576 = phi ptr [ %704, %720 ], [ %662, %678 ]
  %577 = phi ptr [ %693, %720 ], [ %584, %678 ]
  %578 = phi ptr [ %702, %720 ], [ %660, %678 ]
  br label %579

579:                                              ; preds = %575, %573
  %580 = phi ptr [ %22, %573 ], [ %576, %575 ]
  %581 = phi ptr [ %5, %573 ], [ %577, %575 ]
  %582 = phi ptr [ %23, %573 ], [ %578, %575 ]
  br label %583

583:                                              ; preds = %647, %579
  %584 = phi ptr [ %581, %579 ], [ %650, %647 ]
  %585 = phi ptr [ %582, %579 ], [ %648, %647 ]
  %586 = load i32, ptr %584, align 4, !tbaa !5
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i32, ptr %1, i64 %587
  %589 = load i32, ptr %580, align 4, !tbaa !5
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i32, ptr %1, i64 %590
  %592 = load i32, ptr %588, align 4, !tbaa !5
  %593 = getelementptr i8, ptr %588, i64 4
  %594 = load i32, ptr %593, align 4, !tbaa !5
  %595 = load i32, ptr %591, align 4, !tbaa !5
  %596 = getelementptr i8, ptr %591, i64 4
  %597 = load i32, ptr %596, align 4, !tbaa !5
  %598 = sext i32 %592 to i64
  %599 = getelementptr inbounds i8, ptr %11, i64 %598
  %600 = sext i32 %595 to i64
  %601 = getelementptr inbounds i8, ptr %11, i64 %600
  %602 = sext i32 %594 to i64
  %603 = getelementptr i8, ptr %11, i64 %602
  %604 = sext i32 %597 to i64
  %605 = getelementptr i8, ptr %11, i64 %604
  %606 = icmp ult ptr %599, %603
  %607 = icmp ult ptr %601, %605
  %608 = select i1 %606, i1 %607, i1 false
  br i1 %608, label %609, label %621

609:                                              ; preds = %583, %615
  %610 = phi ptr [ %616, %615 ], [ %599, %583 ]
  %611 = phi ptr [ %617, %615 ], [ %601, %583 ]
  %612 = load i8, ptr %610, align 1, !tbaa !9
  %613 = load i8, ptr %611, align 1, !tbaa !9
  %614 = icmp eq i8 %612, %613
  br i1 %614, label %615, label %630

615:                                              ; preds = %609
  %616 = getelementptr inbounds nuw i8, ptr %610, i64 1
  %617 = getelementptr inbounds nuw i8, ptr %611, i64 1
  %618 = icmp ult ptr %616, %603
  %619 = icmp ult ptr %617, %605
  %620 = select i1 %618, i1 %619, i1 false
  br i1 %620, label %609, label %621, !llvm.loop !26

621:                                              ; preds = %615, %583
  %622 = phi ptr [ %601, %583 ], [ %617, %615 ]
  %623 = phi ptr [ %599, %583 ], [ %616, %615 ]
  %624 = phi i1 [ %606, %583 ], [ %618, %615 ]
  %625 = phi i1 [ %607, %583 ], [ %619, %615 ]
  br i1 %624, label %626, label %636

626:                                              ; preds = %621
  br i1 %625, label %627, label %655

627:                                              ; preds = %626
  %628 = load i8, ptr %623, align 1, !tbaa !9
  %629 = load i8, ptr %622, align 1, !tbaa !9
  br label %630

630:                                              ; preds = %609, %627
  %631 = phi i8 [ %629, %627 ], [ %613, %609 ]
  %632 = phi i8 [ %628, %627 ], [ %612, %609 ]
  %633 = zext i8 %632 to i32
  %634 = zext i8 %631 to i32
  %635 = sub nsw i32 %633, %634
  br label %638

636:                                              ; preds = %621
  %637 = sext i1 %625 to i32
  br label %638

638:                                              ; preds = %636, %630
  %639 = phi i32 [ %637, %636 ], [ %635, %630 ]
  %640 = icmp slt i32 %639, 0
  br i1 %640, label %641, label %653

641:                                              ; preds = %638, %647
  %642 = phi i32 [ %651, %647 ], [ %586, %638 ]
  %643 = phi ptr [ %650, %647 ], [ %584, %638 ]
  %644 = phi ptr [ %648, %647 ], [ %585, %638 ]
  store i32 %642, ptr %644, align 4, !tbaa !5
  %645 = icmp ugt ptr %509, %643
  br i1 %645, label %647, label %646

646:                                              ; preds = %641
  store i32 %574, ptr %509, align 4, !tbaa !5
  br label %723

647:                                              ; preds = %641
  %648 = getelementptr inbounds nuw i8, ptr %644, i64 4
  %649 = load i32, ptr %648, align 4, !tbaa !5
  %650 = getelementptr inbounds nuw i8, ptr %643, i64 4
  store i32 %649, ptr %643, align 4, !tbaa !5
  %651 = load i32, ptr %650, align 4, !tbaa !5
  %652 = icmp slt i32 %651, 0
  br i1 %652, label %641, label %583, !llvm.loop !167

653:                                              ; preds = %638
  %654 = icmp eq i32 %639, 0
  br i1 %654, label %681, label %655

655:                                              ; preds = %626, %653
  br label %656

656:                                              ; preds = %655, %678
  %657 = phi i32 [ %679, %678 ], [ %589, %655 ]
  %658 = phi ptr [ %662, %678 ], [ %580, %655 ]
  %659 = phi ptr [ %660, %678 ], [ %585, %655 ]
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 4
  store i32 %657, ptr %659, align 4, !tbaa !5
  %661 = load i32, ptr %660, align 4, !tbaa !5
  %662 = getelementptr inbounds nuw i8, ptr %658, i64 4
  store i32 %661, ptr %658, align 4, !tbaa !5
  %663 = icmp ugt ptr %15, %662
  br i1 %663, label %678, label %664

664:                                              ; preds = %656
  %665 = icmp ult ptr %584, %509
  br i1 %665, label %666, label %674

666:                                              ; preds = %664, %666
  %667 = phi ptr [ %670, %666 ], [ %660, %664 ]
  %668 = phi ptr [ %672, %666 ], [ %584, %664 ]
  %669 = load i32, ptr %668, align 4, !tbaa !5
  %670 = getelementptr inbounds nuw i8, ptr %667, i64 4
  store i32 %669, ptr %667, align 4, !tbaa !5
  %671 = load i32, ptr %670, align 4, !tbaa !5
  %672 = getelementptr inbounds nuw i8, ptr %668, i64 4
  store i32 %671, ptr %668, align 4, !tbaa !5
  %673 = icmp ult ptr %672, %509
  br i1 %673, label %666, label %674, !llvm.loop !168

674:                                              ; preds = %666, %664
  %675 = phi ptr [ %584, %664 ], [ %672, %666 ]
  %676 = phi ptr [ %660, %664 ], [ %670, %666 ]
  %677 = load i32, ptr %675, align 4, !tbaa !5
  store i32 %677, ptr %676, align 4, !tbaa !5
  store i32 %574, ptr %675, align 4, !tbaa !5
  br label %723

678:                                              ; preds = %656
  %679 = load i32, ptr %662, align 4, !tbaa !5
  %680 = icmp slt i32 %679, 0
  br i1 %680, label %656, label %575, !llvm.loop !169

681:                                              ; preds = %653
  %682 = xor i32 %589, -1
  store i32 %682, ptr %580, align 4, !tbaa !5
  %683 = load i32, ptr %584, align 4, !tbaa !5
  br label %684

684:                                              ; preds = %690, %681
  %685 = phi i32 [ %683, %681 ], [ %694, %690 ]
  %686 = phi ptr [ %584, %681 ], [ %693, %690 ]
  %687 = phi ptr [ %585, %681 ], [ %691, %690 ]
  store i32 %685, ptr %687, align 4, !tbaa !5
  %688 = icmp ugt ptr %509, %686
  br i1 %688, label %690, label %689

689:                                              ; preds = %684
  store i32 %574, ptr %509, align 4, !tbaa !5
  br label %723

690:                                              ; preds = %684
  %691 = getelementptr inbounds nuw i8, ptr %687, i64 4
  %692 = load i32, ptr %691, align 4, !tbaa !5
  %693 = getelementptr inbounds nuw i8, ptr %686, i64 4
  store i32 %692, ptr %686, align 4, !tbaa !5
  %694 = load i32, ptr %693, align 4, !tbaa !5
  %695 = icmp slt i32 %694, 0
  br i1 %695, label %684, label %696, !llvm.loop !170

696:                                              ; preds = %690
  %697 = load i32, ptr %580, align 4, !tbaa !5
  br label %698

698:                                              ; preds = %720, %696
  %699 = phi i32 [ %721, %720 ], [ %697, %696 ]
  %700 = phi ptr [ %704, %720 ], [ %580, %696 ]
  %701 = phi ptr [ %702, %720 ], [ %691, %696 ]
  %702 = getelementptr inbounds nuw i8, ptr %701, i64 4
  store i32 %699, ptr %701, align 4, !tbaa !5
  %703 = load i32, ptr %702, align 4, !tbaa !5
  %704 = getelementptr inbounds nuw i8, ptr %700, i64 4
  store i32 %703, ptr %700, align 4, !tbaa !5
  %705 = icmp ugt ptr %15, %704
  br i1 %705, label %720, label %706

706:                                              ; preds = %698
  %707 = icmp ult ptr %693, %509
  br i1 %707, label %708, label %716

708:                                              ; preds = %706, %708
  %709 = phi ptr [ %712, %708 ], [ %702, %706 ]
  %710 = phi ptr [ %714, %708 ], [ %693, %706 ]
  %711 = load i32, ptr %710, align 4, !tbaa !5
  %712 = getelementptr inbounds nuw i8, ptr %709, i64 4
  store i32 %711, ptr %709, align 4, !tbaa !5
  %713 = load i32, ptr %712, align 4, !tbaa !5
  %714 = getelementptr inbounds nuw i8, ptr %710, i64 4
  store i32 %713, ptr %710, align 4, !tbaa !5
  %715 = icmp ult ptr %714, %509
  br i1 %715, label %708, label %716, !llvm.loop !171

716:                                              ; preds = %708, %706
  %717 = phi ptr [ %693, %706 ], [ %714, %708 ]
  %718 = phi ptr [ %702, %706 ], [ %712, %708 ]
  %719 = load i32, ptr %717, align 4, !tbaa !5
  store i32 %719, ptr %718, align 4, !tbaa !5
  store i32 %574, ptr %717, align 4, !tbaa !5
  br label %723

720:                                              ; preds = %698
  %721 = load i32, ptr %704, align 4, !tbaa !5
  %722 = icmp slt i32 %721, 0
  br i1 %722, label %698, label %575, !llvm.loop !172

723:                                              ; preds = %716, %689, %674, %646, %506
  %724 = and i32 %25, 1
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %728, label %726

726:                                              ; preds = %723
  %727 = load i32, ptr %23, align 4, !tbaa !5
  br label %790

728:                                              ; preds = %723
  %729 = and i32 %25, 2
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %793, label %731

731:                                              ; preds = %728
  %732 = getelementptr inbounds i8, ptr %23, i64 -4
  %733 = load i32, ptr %732, align 4, !tbaa !5
  %734 = ashr i32 %733, 31
  %735 = xor i32 %734, %733
  %736 = zext nneg i32 %735 to i64
  %737 = getelementptr inbounds nuw i32, ptr %1, i64 %736
  %738 = load i32, ptr %23, align 4, !tbaa !5
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds i32, ptr %1, i64 %739
  %741 = load i32, ptr %737, align 4, !tbaa !5
  %742 = getelementptr i8, ptr %737, i64 4
  %743 = load i32, ptr %742, align 4, !tbaa !5
  %744 = load i32, ptr %740, align 4, !tbaa !5
  %745 = getelementptr i8, ptr %740, i64 4
  %746 = load i32, ptr %745, align 4, !tbaa !5
  %747 = sext i32 %741 to i64
  %748 = getelementptr inbounds i8, ptr %11, i64 %747
  %749 = sext i32 %744 to i64
  %750 = getelementptr inbounds i8, ptr %11, i64 %749
  %751 = sext i32 %743 to i64
  %752 = getelementptr i8, ptr %11, i64 %751
  %753 = sext i32 %746 to i64
  %754 = getelementptr i8, ptr %11, i64 %753
  %755 = icmp ult ptr %748, %752
  %756 = icmp ult ptr %750, %754
  %757 = select i1 %755, i1 %756, i1 false
  br i1 %757, label %758, label %770

758:                                              ; preds = %731, %764
  %759 = phi ptr [ %765, %764 ], [ %748, %731 ]
  %760 = phi ptr [ %766, %764 ], [ %750, %731 ]
  %761 = load i8, ptr %759, align 1, !tbaa !9
  %762 = load i8, ptr %760, align 1, !tbaa !9
  %763 = icmp eq i8 %761, %762
  br i1 %763, label %764, label %778

764:                                              ; preds = %758
  %765 = getelementptr inbounds nuw i8, ptr %759, i64 1
  %766 = getelementptr inbounds nuw i8, ptr %760, i64 1
  %767 = icmp ult ptr %765, %752
  %768 = icmp ult ptr %766, %754
  %769 = select i1 %767, i1 %768, i1 false
  br i1 %769, label %758, label %770, !llvm.loop !26

770:                                              ; preds = %764, %731
  %771 = phi ptr [ %750, %731 ], [ %766, %764 ]
  %772 = phi ptr [ %748, %731 ], [ %765, %764 ]
  %773 = phi i1 [ %755, %731 ], [ %767, %764 ]
  %774 = phi i1 [ %756, %731 ], [ %768, %764 ]
  br i1 %773, label %775, label %785

775:                                              ; preds = %770
  br i1 %774, label %776, label %793

776:                                              ; preds = %775
  %777 = load i8, ptr %772, align 1, !tbaa !9
  br label %778

778:                                              ; preds = %758, %776
  %779 = phi i8 [ %777, %776 ], [ %761, %758 ]
  %780 = phi ptr [ %771, %776 ], [ %760, %758 ]
  %781 = zext i8 %779 to i32
  %782 = load i8, ptr %780, align 1, !tbaa !9
  %783 = zext i8 %782 to i32
  %784 = sub nsw i32 %781, %783
  br label %787

785:                                              ; preds = %770
  %786 = sext i1 %774 to i32
  br label %787

787:                                              ; preds = %778, %785
  %788 = phi i32 [ %786, %785 ], [ %784, %778 ]
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %793

790:                                              ; preds = %726, %787
  %791 = phi i32 [ %727, %726 ], [ %738, %787 ]
  %792 = xor i32 %791, -1
  store i32 %792, ptr %23, align 4, !tbaa !5
  br label %793

793:                                              ; preds = %775, %790, %787, %728
  %794 = and i32 %25, 4
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %857, label %796

796:                                              ; preds = %793
  %797 = getelementptr inbounds i8, ptr %15, i64 -4
  %798 = load i32, ptr %797, align 4, !tbaa !5
  %799 = ashr i32 %798, 31
  %800 = xor i32 %799, %798
  %801 = zext nneg i32 %800 to i64
  %802 = getelementptr inbounds nuw i32, ptr %1, i64 %801
  %803 = load i32, ptr %15, align 4, !tbaa !5
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds i32, ptr %1, i64 %804
  %806 = load i32, ptr %802, align 4, !tbaa !5
  %807 = getelementptr i8, ptr %802, i64 4
  %808 = load i32, ptr %807, align 4, !tbaa !5
  %809 = load i32, ptr %805, align 4, !tbaa !5
  %810 = getelementptr i8, ptr %805, i64 4
  %811 = load i32, ptr %810, align 4, !tbaa !5
  %812 = sext i32 %806 to i64
  %813 = getelementptr inbounds i8, ptr %11, i64 %812
  %814 = sext i32 %809 to i64
  %815 = getelementptr inbounds i8, ptr %11, i64 %814
  %816 = sext i32 %808 to i64
  %817 = getelementptr i8, ptr %11, i64 %816
  %818 = sext i32 %811 to i64
  %819 = getelementptr i8, ptr %11, i64 %818
  %820 = icmp ult ptr %813, %817
  %821 = icmp ult ptr %815, %819
  %822 = select i1 %820, i1 %821, i1 false
  br i1 %822, label %823, label %835

823:                                              ; preds = %796, %829
  %824 = phi ptr [ %830, %829 ], [ %813, %796 ]
  %825 = phi ptr [ %831, %829 ], [ %815, %796 ]
  %826 = load i8, ptr %824, align 1, !tbaa !9
  %827 = load i8, ptr %825, align 1, !tbaa !9
  %828 = icmp eq i8 %826, %827
  br i1 %828, label %829, label %843

829:                                              ; preds = %823
  %830 = getelementptr inbounds nuw i8, ptr %824, i64 1
  %831 = getelementptr inbounds nuw i8, ptr %825, i64 1
  %832 = icmp ult ptr %830, %817
  %833 = icmp ult ptr %831, %819
  %834 = select i1 %832, i1 %833, i1 false
  br i1 %834, label %823, label %835, !llvm.loop !26

835:                                              ; preds = %829, %796
  %836 = phi ptr [ %815, %796 ], [ %831, %829 ]
  %837 = phi ptr [ %813, %796 ], [ %830, %829 ]
  %838 = phi i1 [ %820, %796 ], [ %832, %829 ]
  %839 = phi i1 [ %821, %796 ], [ %833, %829 ]
  br i1 %838, label %840, label %850

840:                                              ; preds = %835
  br i1 %839, label %841, label %857

841:                                              ; preds = %840
  %842 = load i8, ptr %837, align 1, !tbaa !9
  br label %843

843:                                              ; preds = %823, %841
  %844 = phi i8 [ %842, %841 ], [ %826, %823 ]
  %845 = phi ptr [ %836, %841 ], [ %825, %823 ]
  %846 = zext i8 %844 to i32
  %847 = load i8, ptr %845, align 1, !tbaa !9
  %848 = zext i8 %847 to i32
  %849 = sub nsw i32 %846, %848
  br label %852

850:                                              ; preds = %835
  %851 = sext i1 %839 to i32
  br label %852

852:                                              ; preds = %843, %850
  %853 = phi i32 [ %851, %850 ], [ %849, %843 ]
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %855, label %857

855:                                              ; preds = %852
  %856 = xor i32 %803, -1
  store i32 %856, ptr %15, align 4, !tbaa !5
  br label %857

857:                                              ; preds = %840, %793, %852, %855
  %858 = icmp sgt i32 %24, -1
  br i1 %858, label %860, label %859

859:                                              ; preds = %857
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 780, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #11
  unreachable

860:                                              ; preds = %857
  %861 = icmp eq i32 %24, 0
  br i1 %861, label %1301, label %862

862:                                              ; preds = %860
  %863 = add nsw i32 %24, -1
  %864 = zext nneg i32 %863 to i64
  %865 = getelementptr inbounds nuw [32 x %struct.anon.0], ptr %8, i64 0, i64 %864
  %866 = load ptr, ptr %865, align 16, !tbaa !155
  %867 = getelementptr inbounds nuw i8, ptr %865, i64 8
  %868 = load ptr, ptr %867, align 8, !tbaa !157
  %869 = getelementptr inbounds nuw i8, ptr %865, i64 16
  %870 = load ptr, ptr %869, align 16, !tbaa !158
  %871 = getelementptr inbounds nuw i8, ptr %865, i64 24
  %872 = load i32, ptr %871, align 8, !tbaa !159
  br label %495

873:                                              ; preds = %501
  %874 = tail call i64 @llvm.smin.i64(i64 %504, i64 %28)
  %875 = icmp slt i64 %874, 2147483648
  br i1 %875, label %877, label %876

876:                                              ; preds = %873
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.src, i32 noundef 784, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #11
  unreachable

877:                                              ; preds = %873
  %878 = icmp sgt i64 %874, 0
  br i1 %878, label %879, label %1090

879:                                              ; preds = %877
  %880 = trunc nuw nsw i64 %874 to i32
  br label %881

881:                                              ; preds = %879, %957
  %882 = phi i32 [ %959, %957 ], [ %880, %879 ]
  %883 = phi i32 [ %958, %957 ], [ 0, %879 ]
  %884 = lshr i32 %882, 1
  %885 = sext i32 %883 to i64
  %886 = getelementptr inbounds i32, ptr %22, i64 %885
  %887 = zext nneg i32 %884 to i64
  %888 = getelementptr inbounds nuw i32, ptr %886, i64 %887
  %889 = load i32, ptr %888, align 4, !tbaa !5
  %890 = ashr i32 %889, 31
  %891 = xor i32 %890, %889
  %892 = zext nneg i32 %891 to i64
  %893 = getelementptr inbounds nuw i32, ptr %1, i64 %892
  %894 = sub nsw i64 0, %885
  %895 = getelementptr inbounds i32, ptr %22, i64 %894
  %896 = sub nsw i64 0, %887
  %897 = getelementptr inbounds i32, ptr %895, i64 %896
  %898 = getelementptr inbounds i8, ptr %897, i64 -4
  %899 = load i32, ptr %898, align 4, !tbaa !5
  %900 = ashr i32 %899, 31
  %901 = xor i32 %900, %899
  %902 = zext nneg i32 %901 to i64
  %903 = getelementptr inbounds nuw i32, ptr %1, i64 %902
  %904 = load i32, ptr %893, align 4, !tbaa !5
  %905 = getelementptr i8, ptr %893, i64 4
  %906 = load i32, ptr %905, align 4, !tbaa !5
  %907 = load i32, ptr %903, align 4, !tbaa !5
  %908 = getelementptr i8, ptr %903, i64 4
  %909 = load i32, ptr %908, align 4, !tbaa !5
  %910 = sext i32 %904 to i64
  %911 = getelementptr inbounds i8, ptr %11, i64 %910
  %912 = sext i32 %907 to i64
  %913 = getelementptr inbounds i8, ptr %11, i64 %912
  %914 = sext i32 %906 to i64
  %915 = getelementptr i8, ptr %11, i64 %914
  %916 = sext i32 %909 to i64
  %917 = getelementptr i8, ptr %11, i64 %916
  %918 = icmp ult ptr %911, %915
  %919 = icmp ult ptr %913, %917
  %920 = select i1 %918, i1 %919, i1 false
  br i1 %920, label %921, label %933

921:                                              ; preds = %881, %927
  %922 = phi ptr [ %928, %927 ], [ %911, %881 ]
  %923 = phi ptr [ %929, %927 ], [ %913, %881 ]
  %924 = load i8, ptr %922, align 1, !tbaa !9
  %925 = load i8, ptr %923, align 1, !tbaa !9
  %926 = icmp eq i8 %924, %925
  br i1 %926, label %927, label %941

927:                                              ; preds = %921
  %928 = getelementptr inbounds nuw i8, ptr %922, i64 1
  %929 = getelementptr inbounds nuw i8, ptr %923, i64 1
  %930 = icmp ult ptr %928, %915
  %931 = icmp ult ptr %929, %917
  %932 = select i1 %930, i1 %931, i1 false
  br i1 %932, label %921, label %933, !llvm.loop !26

933:                                              ; preds = %927, %881
  %934 = phi ptr [ %913, %881 ], [ %929, %927 ]
  %935 = phi ptr [ %911, %881 ], [ %928, %927 ]
  %936 = phi i1 [ %918, %881 ], [ %930, %927 ]
  %937 = phi i1 [ %919, %881 ], [ %931, %927 ]
  br i1 %936, label %938, label %946

938:                                              ; preds = %933
  br i1 %937, label %939, label %957

939:                                              ; preds = %938
  %940 = load i8, ptr %935, align 1, !tbaa !9
  br label %941

941:                                              ; preds = %921, %939
  %942 = phi i8 [ %940, %939 ], [ %924, %921 ]
  %943 = phi ptr [ %934, %939 ], [ %923, %921 ]
  %944 = load i8, ptr %943, align 1, !tbaa !9
  %945 = icmp ult i8 %942, %944
  br i1 %945, label %948, label %957

946:                                              ; preds = %933
  br i1 %937, label %948, label %957

947:                                              ; preds = %948
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

948:                                              ; preds = %941, %946
  %949 = add nuw nsw i32 %884, 1
  %950 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %883, i32 %949), !nosanitize !10
  %951 = extractvalue { i32, i1 } %950, 1, !nosanitize !10
  br i1 %951, label %947, label %952, !prof !11, !nosanitize !10

952:                                              ; preds = %948
  %953 = extractvalue { i32, i1 } %950, 0, !nosanitize !10
  %954 = and i32 %882, 1
  %955 = xor i32 %954, 1
  %956 = sub nsw i32 %884, %955
  br label %957

957:                                              ; preds = %941, %938, %946, %952
  %958 = phi i32 [ %953, %952 ], [ %883, %946 ], [ %883, %938 ], [ %883, %941 ]
  %959 = phi i32 [ %956, %952 ], [ %884, %946 ], [ %884, %938 ], [ %884, %941 ]
  %960 = icmp sgt i32 %959, 0
  br i1 %960, label %881, label %961, !llvm.loop !173

961:                                              ; preds = %957
  %962 = icmp sgt i32 %958, 0
  br i1 %962, label %963, label %1090

963:                                              ; preds = %961
  %964 = zext nneg i32 %958 to i64
  %965 = sub nsw i64 0, %964
  %966 = getelementptr i32, ptr %22, i64 %965
  %967 = icmp ult i32 %958, 8
  br i1 %967, label %1005, label %968

968:                                              ; preds = %963
  %969 = getelementptr i8, ptr %22, i64 4
  %970 = add nsw i32 %958, -1
  %971 = zext i32 %970 to i64
  %972 = shl nuw nsw i64 %971, 2
  %973 = sub nsw i64 %971, %964
  %974 = shl nsw i64 %973, 2
  %975 = getelementptr i8, ptr %969, i64 %974
  %976 = getelementptr i8, ptr %22, i64 4
  %977 = getelementptr i8, ptr %976, i64 %972
  %978 = icmp ult ptr %966, %977
  %979 = icmp ult ptr %22, %975
  %980 = and i1 %978, %979
  br i1 %980, label %1005, label %981

981:                                              ; preds = %968
  %982 = and i64 %964, 2147483640
  %983 = shl nuw nsw i64 %982, 2
  %984 = getelementptr i8, ptr %966, i64 %983
  %985 = trunc nuw nsw i64 %982 to i32
  %986 = sub nsw i32 %958, %985
  %987 = shl nuw nsw i64 %982, 2
  %988 = getelementptr i8, ptr %22, i64 %987
  br label %989

989:                                              ; preds = %989, %981
  %990 = phi i64 [ 0, %981 ], [ %1001, %989 ]
  %991 = shl i64 %990, 2
  %992 = getelementptr i8, ptr %966, i64 %991
  %993 = shl i64 %990, 2
  %994 = getelementptr i8, ptr %22, i64 %993
  %995 = getelementptr i8, ptr %992, i64 16
  %996 = load <4 x i32>, ptr %992, align 4, !tbaa !5, !alias.scope !174, !noalias !177
  %997 = load <4 x i32>, ptr %995, align 4, !tbaa !5, !alias.scope !174, !noalias !177
  %998 = getelementptr i8, ptr %994, i64 16
  %999 = load <4 x i32>, ptr %994, align 4, !tbaa !5, !alias.scope !177
  %1000 = load <4 x i32>, ptr %998, align 4, !tbaa !5, !alias.scope !177
  store <4 x i32> %999, ptr %992, align 4, !tbaa !5, !alias.scope !174, !noalias !177
  store <4 x i32> %1000, ptr %995, align 4, !tbaa !5, !alias.scope !174, !noalias !177
  store <4 x i32> %996, ptr %994, align 4, !tbaa !5, !alias.scope !177
  store <4 x i32> %997, ptr %998, align 4, !tbaa !5, !alias.scope !177
  %1001 = add nuw i64 %990, 8
  %1002 = icmp eq i64 %1001, %982
  br i1 %1002, label %1003, label %989, !llvm.loop !179

1003:                                             ; preds = %989
  %1004 = icmp eq i64 %982, %964
  br i1 %1004, label %1019, label %1005

1005:                                             ; preds = %968, %963, %1003
  %1006 = phi ptr [ %966, %968 ], [ %966, %963 ], [ %984, %1003 ]
  %1007 = phi i32 [ %958, %968 ], [ %958, %963 ], [ %986, %1003 ]
  %1008 = phi ptr [ %22, %968 ], [ %22, %963 ], [ %988, %1003 ]
  br label %1009

1009:                                             ; preds = %1005, %1009
  %1010 = phi ptr [ %1016, %1009 ], [ %1006, %1005 ]
  %1011 = phi i32 [ %1015, %1009 ], [ %1007, %1005 ]
  %1012 = phi ptr [ %1017, %1009 ], [ %1008, %1005 ]
  %1013 = load i32, ptr %1010, align 4, !tbaa !5
  %1014 = load i32, ptr %1012, align 4, !tbaa !5
  store i32 %1014, ptr %1010, align 4, !tbaa !5
  store i32 %1013, ptr %1012, align 4, !tbaa !5
  %1015 = add nsw i32 %1011, -1
  %1016 = getelementptr inbounds nuw i8, ptr %1010, i64 4
  %1017 = getelementptr inbounds nuw i8, ptr %1012, i64 4
  %1018 = icmp samesign ugt i32 %1011, 1
  br i1 %1018, label %1009, label %1019, !llvm.loop !180

1019:                                             ; preds = %1009, %1003
  %1020 = getelementptr inbounds nuw i32, ptr %22, i64 %964
  %1021 = icmp ult ptr %1020, %15
  br i1 %1021, label %1022, label %1046

1022:                                             ; preds = %1019
  %1023 = load i32, ptr %1020, align 4, !tbaa !5
  %1024 = icmp slt i32 %1023, 0
  br i1 %1024, label %1025, label %1033

1025:                                             ; preds = %1022
  %1026 = xor i32 %1023, -1
  store i32 %1026, ptr %1020, align 4, !tbaa !5
  %1027 = icmp ult ptr %23, %966
  br i1 %1027, label %1028, label %1046

1028:                                             ; preds = %1025, %1028
  %1029 = phi ptr [ %1030, %1028 ], [ %22, %1025 ]
  %1030 = getelementptr inbounds i8, ptr %1029, i64 -4
  %1031 = load i32, ptr %1030, align 4, !tbaa !5
  %1032 = icmp slt i32 %1031, 0
  br i1 %1032, label %1028, label %1040, !llvm.loop !181

1033:                                             ; preds = %1022
  %1034 = icmp ult ptr %23, %966
  br i1 %1034, label %1035, label %1046

1035:                                             ; preds = %1033, %1035
  %1036 = phi ptr [ %1039, %1035 ], [ %22, %1033 ]
  %1037 = load i32, ptr %1036, align 4, !tbaa !5
  %1038 = icmp slt i32 %1037, 0
  %1039 = getelementptr inbounds nuw i8, ptr %1036, i64 4
  br i1 %1038, label %1035, label %1043, !llvm.loop !182

1040:                                             ; preds = %1028
  %1041 = ptrtoint ptr %1030 to i64
  %1042 = sub i64 %1041, %502
  br label %1046

1043:                                             ; preds = %1035
  %1044 = ptrtoint ptr %1036 to i64
  %1045 = sub i64 %20, %1044
  br label %1046

1046:                                             ; preds = %1043, %1040, %1025, %1033, %1019
  %1047 = phi i64 [ %1045, %1043 ], [ %27, %1040 ], [ %27, %1025 ], [ %27, %1033 ], [ %27, %1019 ]
  %1048 = phi i64 [ %503, %1043 ], [ %1042, %1040 ], [ %503, %1025 ], [ %503, %1033 ], [ %503, %1019 ]
  %1049 = phi ptr [ %22, %1043 ], [ %1030, %1040 ], [ %22, %1025 ], [ %22, %1033 ], [ %22, %1019 ]
  %1050 = phi ptr [ %1036, %1043 ], [ %22, %1040 ], [ %22, %1025 ], [ %22, %1033 ], [ %22, %1019 ]
  %1051 = phi i32 [ 2, %1043 ], [ 5, %1040 ], [ 1, %1025 ], [ 0, %1033 ], [ 0, %1019 ]
  %1052 = icmp sgt i64 %1048, %1047
  %1053 = icmp slt i32 %24, 32
  br i1 %1052, label %1069, label %1054

1054:                                             ; preds = %1046
  br i1 %1053, label %1056, label %1055

1055:                                             ; preds = %1054
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 810, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #11
  unreachable

1056:                                             ; preds = %1054
  %1057 = sext i32 %24 to i64
  %1058 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %1057
  store ptr %1050, ptr %1058, align 16, !tbaa !155
  %1059 = getelementptr inbounds nuw i8, ptr %1058, i64 8
  store ptr %1020, ptr %1059, align 8, !tbaa !157
  %1060 = getelementptr inbounds nuw i8, ptr %1058, i64 16
  store ptr %15, ptr %1060, align 16, !tbaa !158
  %1061 = add nsw i32 %24, 1
  %1062 = and i32 %1051, 3
  %1063 = and i32 %25, 4
  %1064 = or disjoint i32 %1062, %1063
  %1065 = getelementptr inbounds nuw i8, ptr %1058, i64 24
  store i32 %1064, ptr %1065, align 8, !tbaa !159
  %1066 = and i32 %25, 3
  %1067 = and i32 %1051, 4
  %1068 = or disjoint i32 %1067, %1066
  br label %495

1069:                                             ; preds = %1046
  br i1 %1053, label %1071, label %1070

1070:                                             ; preds = %1069
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 814, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #11
  unreachable

1071:                                             ; preds = %1069
  %1072 = and i32 %1051, 2
  %1073 = icmp ne i32 %1072, 0
  %1074 = icmp eq ptr %1050, %22
  %1075 = and i1 %1074, %1073
  %1076 = xor i32 %1051, 6
  %1077 = select i1 %1075, i32 %1076, i32 %1051
  %1078 = sext i32 %24 to i64
  %1079 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %1078
  store ptr %23, ptr %1079, align 16, !tbaa !155
  %1080 = getelementptr inbounds nuw i8, ptr %1079, i64 8
  store ptr %966, ptr %1080, align 8, !tbaa !157
  %1081 = getelementptr inbounds nuw i8, ptr %1079, i64 16
  store ptr %1049, ptr %1081, align 16, !tbaa !158
  %1082 = add nsw i32 %24, 1
  %1083 = and i32 %25, 3
  %1084 = and i32 %1077, 4
  %1085 = or disjoint i32 %1084, %1083
  %1086 = getelementptr inbounds nuw i8, ptr %1079, i64 24
  store i32 %1085, ptr %1086, align 8, !tbaa !159
  %1087 = and i32 %1077, 3
  %1088 = and i32 %25, 4
  %1089 = or disjoint i32 %1087, %1088
  br label %21

1090:                                             ; preds = %877, %961
  %1091 = getelementptr inbounds i8, ptr %22, i64 -4
  %1092 = load i32, ptr %1091, align 4, !tbaa !5
  %1093 = ashr i32 %1092, 31
  %1094 = xor i32 %1093, %1092
  %1095 = zext nneg i32 %1094 to i64
  %1096 = getelementptr inbounds nuw i32, ptr %1, i64 %1095
  %1097 = load i32, ptr %22, align 4, !tbaa !5
  %1098 = sext i32 %1097 to i64
  %1099 = getelementptr inbounds i32, ptr %1, i64 %1098
  %1100 = load i32, ptr %1096, align 4, !tbaa !5
  %1101 = getelementptr i8, ptr %1096, i64 4
  %1102 = load i32, ptr %1101, align 4, !tbaa !5
  %1103 = load i32, ptr %1099, align 4, !tbaa !5
  %1104 = getelementptr i8, ptr %1099, i64 4
  %1105 = load i32, ptr %1104, align 4, !tbaa !5
  %1106 = sext i32 %1100 to i64
  %1107 = getelementptr inbounds i8, ptr %11, i64 %1106
  %1108 = sext i32 %1103 to i64
  %1109 = getelementptr inbounds i8, ptr %11, i64 %1108
  %1110 = sext i32 %1102 to i64
  %1111 = getelementptr i8, ptr %11, i64 %1110
  %1112 = sext i32 %1105 to i64
  %1113 = getelementptr i8, ptr %11, i64 %1112
  %1114 = icmp ult ptr %1107, %1111
  %1115 = icmp ult ptr %1109, %1113
  %1116 = select i1 %1114, i1 %1115, i1 false
  br i1 %1116, label %1117, label %1129

1117:                                             ; preds = %1090, %1123
  %1118 = phi ptr [ %1124, %1123 ], [ %1107, %1090 ]
  %1119 = phi ptr [ %1125, %1123 ], [ %1109, %1090 ]
  %1120 = load i8, ptr %1118, align 1, !tbaa !9
  %1121 = load i8, ptr %1119, align 1, !tbaa !9
  %1122 = icmp eq i8 %1120, %1121
  br i1 %1122, label %1123, label %1137

1123:                                             ; preds = %1117
  %1124 = getelementptr inbounds nuw i8, ptr %1118, i64 1
  %1125 = getelementptr inbounds nuw i8, ptr %1119, i64 1
  %1126 = icmp ult ptr %1124, %1111
  %1127 = icmp ult ptr %1125, %1113
  %1128 = select i1 %1126, i1 %1127, i1 false
  br i1 %1128, label %1117, label %1129, !llvm.loop !26

1129:                                             ; preds = %1123, %1090
  %1130 = phi ptr [ %1109, %1090 ], [ %1125, %1123 ]
  %1131 = phi ptr [ %1107, %1090 ], [ %1124, %1123 ]
  %1132 = phi i1 [ %1114, %1090 ], [ %1126, %1123 ]
  %1133 = phi i1 [ %1115, %1090 ], [ %1127, %1123 ]
  br i1 %1132, label %1134, label %1144

1134:                                             ; preds = %1129
  br i1 %1133, label %1135, label %1151

1135:                                             ; preds = %1134
  %1136 = load i8, ptr %1131, align 1, !tbaa !9
  br label %1137

1137:                                             ; preds = %1117, %1135
  %1138 = phi i8 [ %1136, %1135 ], [ %1120, %1117 ]
  %1139 = phi ptr [ %1130, %1135 ], [ %1119, %1117 ]
  %1140 = zext i8 %1138 to i32
  %1141 = load i8, ptr %1139, align 1, !tbaa !9
  %1142 = zext i8 %1141 to i32
  %1143 = sub nsw i32 %1140, %1142
  br label %1146

1144:                                             ; preds = %1129
  %1145 = sext i1 %1133 to i32
  br label %1146

1146:                                             ; preds = %1137, %1144
  %1147 = phi i32 [ %1145, %1144 ], [ %1143, %1137 ]
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1149, label %1151

1149:                                             ; preds = %1146
  %1150 = xor i32 %1097, -1
  store i32 %1150, ptr %22, align 4, !tbaa !5
  br label %1151

1151:                                             ; preds = %1134, %1146, %1149
  %1152 = and i32 %25, 1
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1156, label %1154

1154:                                             ; preds = %1151
  %1155 = load i32, ptr %23, align 4, !tbaa !5
  br label %1218

1156:                                             ; preds = %1151
  %1157 = and i32 %25, 2
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1221, label %1159

1159:                                             ; preds = %1156
  %1160 = getelementptr inbounds i8, ptr %23, i64 -4
  %1161 = load i32, ptr %1160, align 4, !tbaa !5
  %1162 = ashr i32 %1161, 31
  %1163 = xor i32 %1162, %1161
  %1164 = zext nneg i32 %1163 to i64
  %1165 = getelementptr inbounds nuw i32, ptr %1, i64 %1164
  %1166 = load i32, ptr %23, align 4, !tbaa !5
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds i32, ptr %1, i64 %1167
  %1169 = load i32, ptr %1165, align 4, !tbaa !5
  %1170 = getelementptr i8, ptr %1165, i64 4
  %1171 = load i32, ptr %1170, align 4, !tbaa !5
  %1172 = load i32, ptr %1168, align 4, !tbaa !5
  %1173 = getelementptr i8, ptr %1168, i64 4
  %1174 = load i32, ptr %1173, align 4, !tbaa !5
  %1175 = sext i32 %1169 to i64
  %1176 = getelementptr inbounds i8, ptr %11, i64 %1175
  %1177 = sext i32 %1172 to i64
  %1178 = getelementptr inbounds i8, ptr %11, i64 %1177
  %1179 = sext i32 %1171 to i64
  %1180 = getelementptr i8, ptr %11, i64 %1179
  %1181 = sext i32 %1174 to i64
  %1182 = getelementptr i8, ptr %11, i64 %1181
  %1183 = icmp ult ptr %1176, %1180
  %1184 = icmp ult ptr %1178, %1182
  %1185 = select i1 %1183, i1 %1184, i1 false
  br i1 %1185, label %1186, label %1198

1186:                                             ; preds = %1159, %1192
  %1187 = phi ptr [ %1193, %1192 ], [ %1176, %1159 ]
  %1188 = phi ptr [ %1194, %1192 ], [ %1178, %1159 ]
  %1189 = load i8, ptr %1187, align 1, !tbaa !9
  %1190 = load i8, ptr %1188, align 1, !tbaa !9
  %1191 = icmp eq i8 %1189, %1190
  br i1 %1191, label %1192, label %1206

1192:                                             ; preds = %1186
  %1193 = getelementptr inbounds nuw i8, ptr %1187, i64 1
  %1194 = getelementptr inbounds nuw i8, ptr %1188, i64 1
  %1195 = icmp ult ptr %1193, %1180
  %1196 = icmp ult ptr %1194, %1182
  %1197 = select i1 %1195, i1 %1196, i1 false
  br i1 %1197, label %1186, label %1198, !llvm.loop !26

1198:                                             ; preds = %1192, %1159
  %1199 = phi ptr [ %1178, %1159 ], [ %1194, %1192 ]
  %1200 = phi ptr [ %1176, %1159 ], [ %1193, %1192 ]
  %1201 = phi i1 [ %1183, %1159 ], [ %1195, %1192 ]
  %1202 = phi i1 [ %1184, %1159 ], [ %1196, %1192 ]
  br i1 %1201, label %1203, label %1213

1203:                                             ; preds = %1198
  br i1 %1202, label %1204, label %1221

1204:                                             ; preds = %1203
  %1205 = load i8, ptr %1200, align 1, !tbaa !9
  br label %1206

1206:                                             ; preds = %1186, %1204
  %1207 = phi i8 [ %1205, %1204 ], [ %1189, %1186 ]
  %1208 = phi ptr [ %1199, %1204 ], [ %1188, %1186 ]
  %1209 = zext i8 %1207 to i32
  %1210 = load i8, ptr %1208, align 1, !tbaa !9
  %1211 = zext i8 %1210 to i32
  %1212 = sub nsw i32 %1209, %1211
  br label %1215

1213:                                             ; preds = %1198
  %1214 = sext i1 %1202 to i32
  br label %1215

1215:                                             ; preds = %1206, %1213
  %1216 = phi i32 [ %1214, %1213 ], [ %1212, %1206 ]
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1218, label %1221

1218:                                             ; preds = %1154, %1215
  %1219 = phi i32 [ %1155, %1154 ], [ %1166, %1215 ]
  %1220 = xor i32 %1219, -1
  store i32 %1220, ptr %23, align 4, !tbaa !5
  br label %1221

1221:                                             ; preds = %1203, %1218, %1215, %1156
  %1222 = and i32 %25, 4
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1285, label %1224

1224:                                             ; preds = %1221
  %1225 = getelementptr inbounds i8, ptr %15, i64 -4
  %1226 = load i32, ptr %1225, align 4, !tbaa !5
  %1227 = ashr i32 %1226, 31
  %1228 = xor i32 %1227, %1226
  %1229 = zext nneg i32 %1228 to i64
  %1230 = getelementptr inbounds nuw i32, ptr %1, i64 %1229
  %1231 = load i32, ptr %15, align 4, !tbaa !5
  %1232 = sext i32 %1231 to i64
  %1233 = getelementptr inbounds i32, ptr %1, i64 %1232
  %1234 = load i32, ptr %1230, align 4, !tbaa !5
  %1235 = getelementptr i8, ptr %1230, i64 4
  %1236 = load i32, ptr %1235, align 4, !tbaa !5
  %1237 = load i32, ptr %1233, align 4, !tbaa !5
  %1238 = getelementptr i8, ptr %1233, i64 4
  %1239 = load i32, ptr %1238, align 4, !tbaa !5
  %1240 = sext i32 %1234 to i64
  %1241 = getelementptr inbounds i8, ptr %11, i64 %1240
  %1242 = sext i32 %1237 to i64
  %1243 = getelementptr inbounds i8, ptr %11, i64 %1242
  %1244 = sext i32 %1236 to i64
  %1245 = getelementptr i8, ptr %11, i64 %1244
  %1246 = sext i32 %1239 to i64
  %1247 = getelementptr i8, ptr %11, i64 %1246
  %1248 = icmp ult ptr %1241, %1245
  %1249 = icmp ult ptr %1243, %1247
  %1250 = select i1 %1248, i1 %1249, i1 false
  br i1 %1250, label %1251, label %1263

1251:                                             ; preds = %1224, %1257
  %1252 = phi ptr [ %1258, %1257 ], [ %1241, %1224 ]
  %1253 = phi ptr [ %1259, %1257 ], [ %1243, %1224 ]
  %1254 = load i8, ptr %1252, align 1, !tbaa !9
  %1255 = load i8, ptr %1253, align 1, !tbaa !9
  %1256 = icmp eq i8 %1254, %1255
  br i1 %1256, label %1257, label %1271

1257:                                             ; preds = %1251
  %1258 = getelementptr inbounds nuw i8, ptr %1252, i64 1
  %1259 = getelementptr inbounds nuw i8, ptr %1253, i64 1
  %1260 = icmp ult ptr %1258, %1245
  %1261 = icmp ult ptr %1259, %1247
  %1262 = select i1 %1260, i1 %1261, i1 false
  br i1 %1262, label %1251, label %1263, !llvm.loop !26

1263:                                             ; preds = %1257, %1224
  %1264 = phi ptr [ %1243, %1224 ], [ %1259, %1257 ]
  %1265 = phi ptr [ %1241, %1224 ], [ %1258, %1257 ]
  %1266 = phi i1 [ %1248, %1224 ], [ %1260, %1257 ]
  %1267 = phi i1 [ %1249, %1224 ], [ %1261, %1257 ]
  br i1 %1266, label %1268, label %1278

1268:                                             ; preds = %1263
  br i1 %1267, label %1269, label %1285

1269:                                             ; preds = %1268
  %1270 = load i8, ptr %1265, align 1, !tbaa !9
  br label %1271

1271:                                             ; preds = %1251, %1269
  %1272 = phi i8 [ %1270, %1269 ], [ %1254, %1251 ]
  %1273 = phi ptr [ %1264, %1269 ], [ %1253, %1251 ]
  %1274 = zext i8 %1272 to i32
  %1275 = load i8, ptr %1273, align 1, !tbaa !9
  %1276 = zext i8 %1275 to i32
  %1277 = sub nsw i32 %1274, %1276
  br label %1280

1278:                                             ; preds = %1263
  %1279 = sext i1 %1267 to i32
  br label %1280

1280:                                             ; preds = %1271, %1278
  %1281 = phi i32 [ %1279, %1278 ], [ %1277, %1271 ]
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %1283, label %1285

1283:                                             ; preds = %1280
  %1284 = xor i32 %1231, -1
  store i32 %1284, ptr %15, align 4, !tbaa !5
  br label %1285

1285:                                             ; preds = %1268, %1221, %1280, %1283
  %1286 = icmp sgt i32 %24, -1
  br i1 %1286, label %1288, label %1287

1287:                                             ; preds = %1285
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 822, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #11
  unreachable

1288:                                             ; preds = %1285
  %1289 = icmp eq i32 %24, 0
  br i1 %1289, label %1301, label %1290

1290:                                             ; preds = %1288
  %1291 = add nsw i32 %24, -1
  %1292 = zext nneg i32 %1291 to i64
  %1293 = getelementptr inbounds nuw [32 x %struct.anon.0], ptr %8, i64 0, i64 %1292
  %1294 = load ptr, ptr %1293, align 16, !tbaa !155
  %1295 = getelementptr inbounds nuw i8, ptr %1293, i64 8
  %1296 = load ptr, ptr %1295, align 8, !tbaa !157
  %1297 = getelementptr inbounds nuw i8, ptr %1293, i64 16
  %1298 = load ptr, ptr %1297, align 16, !tbaa !158
  %1299 = getelementptr inbounds nuw i8, ptr %1293, i64 24
  %1300 = load i32, ptr %1299, align 8, !tbaa !159
  br label %495

1301:                                             ; preds = %1288, %860, %482
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @tr_partition(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull writeonly captures(none) %4, ptr noundef nonnull writeonly captures(none) %5, i32 noundef %6) unnamed_addr #7 {
  %8 = getelementptr inbounds i8, ptr %2, i64 -4
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %13 ]
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %12 = icmp ult ptr %11, %3
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 4, !tbaa !5
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %9, label %19, !llvm.loop !183

19:                                               ; preds = %13
  %20 = icmp slt i32 %17, %6
  br i1 %20, label %21, label %41

21:                                               ; preds = %19
  %22 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %23 = icmp ult ptr %22, %3
  br i1 %23, label %24, label %41

24:                                               ; preds = %21, %37
  %25 = phi ptr [ %39, %37 ], [ %22, %21 ]
  %26 = phi ptr [ %38, %37 ], [ %11, %21 ]
  %27 = load i32, ptr %25, align 4, !tbaa !5
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !5
  %31 = icmp sgt i32 %30, %6
  br i1 %31, label %41, label %32

32:                                               ; preds = %24
  %33 = icmp eq i32 %30, %6
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, ptr %26, align 4, !tbaa !5
  store i32 %35, ptr %25, align 4, !tbaa !5
  store i32 %27, ptr %26, align 4, !tbaa !5
  %36 = getelementptr inbounds nuw i8, ptr %26, i64 4
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi ptr [ %36, %34 ], [ %26, %32 ]
  %39 = getelementptr inbounds nuw i8, ptr %25, i64 4
  %40 = icmp ult ptr %39, %3
  br i1 %40, label %24, label %41, !llvm.loop !184

41:                                               ; preds = %9, %37, %24, %21, %19
  %42 = phi ptr [ %11, %19 ], [ %11, %21 ], [ %38, %37 ], [ %26, %24 ], [ %11, %9 ]
  %43 = phi ptr [ %11, %19 ], [ %22, %21 ], [ %39, %37 ], [ %25, %24 ], [ %11, %9 ]
  br label %44

44:                                               ; preds = %48, %41
  %45 = phi ptr [ %3, %41 ], [ %46, %48 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 -4
  %47 = icmp ult ptr %43, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  %49 = load i32, ptr %46, align 4, !tbaa !5
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !5
  %53 = icmp eq i32 %52, %6
  br i1 %53, label %44, label %54, !llvm.loop !185

54:                                               ; preds = %48
  %55 = icmp sgt i32 %52, %6
  br i1 %55, label %56, label %76

56:                                               ; preds = %54
  %57 = getelementptr inbounds i8, ptr %45, i64 -8
  %58 = icmp ult ptr %43, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %56, %72
  %60 = phi ptr [ %74, %72 ], [ %57, %56 ]
  %61 = phi ptr [ %73, %72 ], [ %46, %56 ]
  %62 = load i32, ptr %60, align 4, !tbaa !5
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !5
  %66 = icmp slt i32 %65, %6
  br i1 %66, label %76, label %67

67:                                               ; preds = %59
  %68 = icmp eq i32 %65, %6
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i32, ptr %61, align 4, !tbaa !5
  store i32 %70, ptr %60, align 4, !tbaa !5
  store i32 %62, ptr %61, align 4, !tbaa !5
  %71 = getelementptr inbounds i8, ptr %61, i64 -4
  br label %72

72:                                               ; preds = %69, %67
  %73 = phi ptr [ %71, %69 ], [ %61, %67 ]
  %74 = getelementptr inbounds i8, ptr %60, i64 -4
  %75 = icmp ult ptr %43, %74
  br i1 %75, label %59, label %76, !llvm.loop !186

76:                                               ; preds = %44, %72, %59, %56, %54
  %77 = phi ptr [ %46, %54 ], [ %57, %56 ], [ %74, %72 ], [ %60, %59 ], [ %46, %44 ]
  %78 = phi ptr [ %46, %54 ], [ %46, %56 ], [ %73, %72 ], [ %61, %59 ], [ %46, %44 ]
  %79 = icmp ult ptr %43, %77
  br i1 %79, label %80, label %132

80:                                               ; preds = %76, %128
  %81 = phi ptr [ %129, %128 ], [ %78, %76 ]
  %82 = phi ptr [ %130, %128 ], [ %77, %76 ]
  %83 = phi ptr [ %108, %128 ], [ %43, %76 ]
  %84 = phi ptr [ %107, %128 ], [ %42, %76 ]
  %85 = load i32, ptr %83, align 4, !tbaa !5
  %86 = load i32, ptr %82, align 4, !tbaa !5
  store i32 %86, ptr %83, align 4, !tbaa !5
  store i32 %85, ptr %82, align 4, !tbaa !5
  %87 = getelementptr inbounds nuw i8, ptr %83, i64 4
  %88 = icmp ult ptr %87, %82
  br i1 %88, label %89, label %106

89:                                               ; preds = %80, %102
  %90 = phi ptr [ %104, %102 ], [ %87, %80 ]
  %91 = phi ptr [ %103, %102 ], [ %84, %80 ]
  %92 = load i32, ptr %90, align 4, !tbaa !5
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, ptr %0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !5
  %96 = icmp sgt i32 %95, %6
  br i1 %96, label %106, label %97

97:                                               ; preds = %89
  %98 = icmp eq i32 %95, %6
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i32, ptr %91, align 4, !tbaa !5
  store i32 %100, ptr %90, align 4, !tbaa !5
  store i32 %92, ptr %91, align 4, !tbaa !5
  %101 = getelementptr inbounds nuw i8, ptr %91, i64 4
  br label %102

102:                                              ; preds = %99, %97
  %103 = phi ptr [ %101, %99 ], [ %91, %97 ]
  %104 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %105 = icmp ult ptr %104, %82
  br i1 %105, label %89, label %106, !llvm.loop !187

106:                                              ; preds = %89, %102, %80
  %107 = phi ptr [ %84, %80 ], [ %103, %102 ], [ %91, %89 ]
  %108 = phi ptr [ %87, %80 ], [ %104, %102 ], [ %90, %89 ]
  %109 = getelementptr inbounds i8, ptr %82, i64 -4
  %110 = icmp ult ptr %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %106, %124
  %112 = phi ptr [ %126, %124 ], [ %109, %106 ]
  %113 = phi ptr [ %125, %124 ], [ %81, %106 ]
  %114 = load i32, ptr %112, align 4, !tbaa !5
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !5
  %118 = icmp slt i32 %117, %6
  br i1 %118, label %128, label %119

119:                                              ; preds = %111
  %120 = icmp eq i32 %117, %6
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = load i32, ptr %113, align 4, !tbaa !5
  store i32 %122, ptr %112, align 4, !tbaa !5
  store i32 %114, ptr %113, align 4, !tbaa !5
  %123 = getelementptr inbounds i8, ptr %113, i64 -4
  br label %124

124:                                              ; preds = %121, %119
  %125 = phi ptr [ %123, %121 ], [ %113, %119 ]
  %126 = getelementptr inbounds i8, ptr %112, i64 -4
  %127 = icmp ult ptr %108, %126
  br i1 %127, label %111, label %128, !llvm.loop !188

128:                                              ; preds = %111, %124, %106
  %129 = phi ptr [ %81, %106 ], [ %125, %124 ], [ %113, %111 ]
  %130 = phi ptr [ %109, %106 ], [ %126, %124 ], [ %112, %111 ]
  %131 = icmp ult ptr %108, %130
  br i1 %131, label %80, label %132, !llvm.loop !189

132:                                              ; preds = %128, %76
  %133 = phi ptr [ %42, %76 ], [ %107, %128 ]
  %134 = phi ptr [ %43, %76 ], [ %108, %128 ]
  %135 = phi ptr [ %78, %76 ], [ %129, %128 ]
  %136 = icmp ugt ptr %133, %135
  br i1 %136, label %300, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds i8, ptr %134, i64 -4
  %139 = ptrtoint ptr %133 to i64
  %140 = ptrtoint ptr %1 to i64
  %141 = sub i64 %139, %140
  %142 = ashr exact i64 %141, 2
  %143 = add nsw i64 %142, 2147483648
  %144 = icmp ult i64 %143, 4294967296
  br i1 %144, label %146, label %145

145:                                              ; preds = %137
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1101, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #11
  unreachable

146:                                              ; preds = %137
  %147 = ptrtoint ptr %134 to i64
  %148 = sub i64 %147, %139
  %149 = ashr exact i64 %148, 2
  %150 = add nsw i64 %149, 2147483648
  %151 = icmp ult i64 %150, 4294967296
  br i1 %151, label %153, label %152

152:                                              ; preds = %146
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1101, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #11
  unreachable

153:                                              ; preds = %146
  %154 = tail call i64 @llvm.smin.i64(i64 %142, i64 %149)
  %155 = icmp sgt i64 %154, 0
  br i1 %155, label %156, label %219

156:                                              ; preds = %153
  %157 = sub nsw i64 0, %154
  %158 = getelementptr i32, ptr %134, i64 %157
  %159 = trunc i64 %154 to i32
  %160 = icmp ne i32 %159, 0
  %161 = sext i1 %160 to i64
  %162 = add i64 %154, %161
  %163 = and i64 %162, 4294967295
  %164 = add nuw nsw i64 %163, 1
  %165 = icmp samesign ult i64 %163, 19
  br i1 %165, label %205, label %166

166:                                              ; preds = %156
  %167 = icmp ne i32 %159, 0
  %168 = sext i1 %167 to i64
  %169 = add i64 %154, %168
  %170 = shl i64 %169, 2
  %171 = and i64 %170, 17179869180
  %172 = getelementptr i8, ptr %1, i64 %171
  %173 = getelementptr i8, ptr %172, i64 4
  %174 = add nuw nsw i64 %171, 4
  %175 = shl nsw i64 %154, 2
  %176 = sub nsw i64 %174, %175
  %177 = getelementptr i8, ptr %134, i64 %176
  %178 = icmp ult ptr %1, %177
  %179 = icmp ult ptr %158, %173
  %180 = and i1 %178, %179
  br i1 %180, label %205, label %181

181:                                              ; preds = %166
  %182 = and i64 %164, 8589934584
  %183 = trunc i64 %182 to i32
  %184 = sub i32 %159, %183
  %185 = shl nuw nsw i64 %182, 2
  %186 = getelementptr i8, ptr %158, i64 %185
  %187 = shl nuw nsw i64 %182, 2
  %188 = getelementptr i8, ptr %1, i64 %187
  br label %189

189:                                              ; preds = %189, %181
  %190 = phi i64 [ 0, %181 ], [ %201, %189 ]
  %191 = shl i64 %190, 2
  %192 = getelementptr i8, ptr %158, i64 %191
  %193 = shl i64 %190, 2
  %194 = getelementptr i8, ptr %1, i64 %193
  %195 = getelementptr i8, ptr %194, i64 16
  %196 = load <4 x i32>, ptr %194, align 4, !tbaa !5, !alias.scope !190, !noalias !193
  %197 = load <4 x i32>, ptr %195, align 4, !tbaa !5, !alias.scope !190, !noalias !193
  %198 = getelementptr i8, ptr %192, i64 16
  %199 = load <4 x i32>, ptr %192, align 4, !tbaa !5, !alias.scope !193
  %200 = load <4 x i32>, ptr %198, align 4, !tbaa !5, !alias.scope !193
  store <4 x i32> %199, ptr %194, align 4, !tbaa !5, !alias.scope !190, !noalias !193
  store <4 x i32> %200, ptr %195, align 4, !tbaa !5, !alias.scope !190, !noalias !193
  store <4 x i32> %196, ptr %192, align 4, !tbaa !5, !alias.scope !193
  store <4 x i32> %197, ptr %198, align 4, !tbaa !5, !alias.scope !193
  %201 = add nuw i64 %190, 8
  %202 = icmp eq i64 %201, %182
  br i1 %202, label %203, label %189, !llvm.loop !195

203:                                              ; preds = %189
  %204 = icmp eq i64 %164, %182
  br i1 %204, label %219, label %205

205:                                              ; preds = %166, %156, %203
  %206 = phi i32 [ %159, %166 ], [ %159, %156 ], [ %184, %203 ]
  %207 = phi ptr [ %158, %166 ], [ %158, %156 ], [ %186, %203 ]
  %208 = phi ptr [ %1, %166 ], [ %1, %156 ], [ %188, %203 ]
  br label %209

209:                                              ; preds = %205, %209
  %210 = phi i32 [ %215, %209 ], [ %206, %205 ]
  %211 = phi ptr [ %217, %209 ], [ %207, %205 ]
  %212 = phi ptr [ %216, %209 ], [ %208, %205 ]
  %213 = load i32, ptr %212, align 4, !tbaa !5
  %214 = load i32, ptr %211, align 4, !tbaa !5
  store i32 %214, ptr %212, align 4, !tbaa !5
  store i32 %213, ptr %211, align 4, !tbaa !5
  %215 = add nsw i32 %210, -1
  %216 = getelementptr inbounds nuw i8, ptr %212, i64 4
  %217 = getelementptr inbounds nuw i8, ptr %211, i64 4
  %218 = icmp samesign ugt i32 %210, 1
  br i1 %218, label %209, label %219, !llvm.loop !196

219:                                              ; preds = %209, %203, %153
  %220 = ptrtoint ptr %135 to i64
  %221 = ptrtoint ptr %138 to i64
  %222 = sub i64 %220, %221
  %223 = ashr exact i64 %222, 2
  %224 = add nsw i64 %223, 2147483648
  %225 = icmp ult i64 %224, 4294967296
  br i1 %225, label %227, label %226

226:                                              ; preds = %219
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.src, i32 noundef 1103, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #11
  unreachable

227:                                              ; preds = %219
  %228 = ptrtoint ptr %3 to i64
  %229 = sub i64 %228, %220
  %230 = ashr exact i64 %229, 2
  %231 = add nsw i64 %230, 2147483647
  %232 = icmp ult i64 %231, 4294967296
  br i1 %232, label %234, label %233

233:                                              ; preds = %227
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.src, i32 noundef 1103, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #11
  unreachable

234:                                              ; preds = %227
  %235 = trunc nsw i64 %223 to i32
  %236 = trunc i64 %230 to i32
  %237 = add i32 %236, -1
  %238 = tail call i32 @llvm.smin.i32(i32 %237, i32 %235)
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %296

240:                                              ; preds = %234
  %241 = zext nneg i32 %238 to i64
  %242 = sub nsw i64 0, %241
  %243 = getelementptr i32, ptr %3, i64 %242
  %244 = icmp ult i32 %238, 16
  br i1 %244, label %282, label %245

245:                                              ; preds = %240
  %246 = add nsw i32 %238, -1
  %247 = zext i32 %246 to i64
  %248 = shl nuw nsw i64 %247, 2
  %249 = getelementptr i8, ptr %134, i64 %248
  %250 = getelementptr i8, ptr %249, i64 4
  %251 = add nuw nsw i64 %248, 4
  %252 = shl nuw nsw i64 %241, 2
  %253 = sub nsw i64 %251, %252
  %254 = getelementptr i8, ptr %3, i64 %253
  %255 = icmp ult ptr %134, %254
  %256 = icmp ult ptr %243, %250
  %257 = and i1 %255, %256
  br i1 %257, label %282, label %258

258:                                              ; preds = %245
  %259 = and i64 %241, 2147483640
  %260 = trunc nuw nsw i64 %259 to i32
  %261 = sub nsw i32 %238, %260
  %262 = shl nuw nsw i64 %259, 2
  %263 = getelementptr i8, ptr %243, i64 %262
  %264 = shl nuw nsw i64 %259, 2
  %265 = getelementptr i8, ptr %134, i64 %264
  br label %266

266:                                              ; preds = %266, %258
  %267 = phi i64 [ 0, %258 ], [ %278, %266 ]
  %268 = shl i64 %267, 2
  %269 = getelementptr i8, ptr %243, i64 %268
  %270 = shl i64 %267, 2
  %271 = getelementptr i8, ptr %134, i64 %270
  %272 = getelementptr i8, ptr %271, i64 16
  %273 = load <4 x i32>, ptr %271, align 4, !tbaa !5, !alias.scope !197, !noalias !200
  %274 = load <4 x i32>, ptr %272, align 4, !tbaa !5, !alias.scope !197, !noalias !200
  %275 = getelementptr i8, ptr %269, i64 16
  %276 = load <4 x i32>, ptr %269, align 4, !tbaa !5, !alias.scope !200
  %277 = load <4 x i32>, ptr %275, align 4, !tbaa !5, !alias.scope !200
  store <4 x i32> %276, ptr %271, align 4, !tbaa !5, !alias.scope !197, !noalias !200
  store <4 x i32> %277, ptr %272, align 4, !tbaa !5, !alias.scope !197, !noalias !200
  store <4 x i32> %273, ptr %269, align 4, !tbaa !5, !alias.scope !200
  store <4 x i32> %274, ptr %275, align 4, !tbaa !5, !alias.scope !200
  %278 = add nuw i64 %267, 8
  %279 = icmp eq i64 %278, %259
  br i1 %279, label %280, label %266, !llvm.loop !202

280:                                              ; preds = %266
  %281 = icmp eq i64 %259, %241
  br i1 %281, label %296, label %282

282:                                              ; preds = %245, %240, %280
  %283 = phi i32 [ %238, %245 ], [ %238, %240 ], [ %261, %280 ]
  %284 = phi ptr [ %243, %245 ], [ %243, %240 ], [ %263, %280 ]
  %285 = phi ptr [ %134, %245 ], [ %134, %240 ], [ %265, %280 ]
  br label %286

286:                                              ; preds = %282, %286
  %287 = phi i32 [ %292, %286 ], [ %283, %282 ]
  %288 = phi ptr [ %294, %286 ], [ %284, %282 ]
  %289 = phi ptr [ %293, %286 ], [ %285, %282 ]
  %290 = load i32, ptr %289, align 4, !tbaa !5
  %291 = load i32, ptr %288, align 4, !tbaa !5
  store i32 %291, ptr %289, align 4, !tbaa !5
  store i32 %290, ptr %288, align 4, !tbaa !5
  %292 = add nsw i32 %287, -1
  %293 = getelementptr inbounds nuw i8, ptr %289, i64 4
  %294 = getelementptr inbounds nuw i8, ptr %288, i64 4
  %295 = icmp samesign ugt i32 %287, 1
  br i1 %295, label %286, label %296, !llvm.loop !203

296:                                              ; preds = %286, %280, %234
  %297 = getelementptr inbounds i8, ptr %1, i64 %148
  %298 = sub nsw i64 0, %223
  %299 = getelementptr inbounds i32, ptr %3, i64 %298
  br label %300

300:                                              ; preds = %296, %132
  %301 = phi ptr [ %299, %296 ], [ %3, %132 ]
  %302 = phi ptr [ %297, %296 ], [ %1, %132 ]
  store ptr %302, ptr %4, align 8, !tbaa !45
  store ptr %301, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn nounwind }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }

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
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 int", !47, i64 0}
!47 = !{!"any pointer", !7, i64 0}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = !{!51, !46, i64 0}
!51 = !{!"", !46, i64 0, !46, i64 8, !46, i64 16, !6, i64 24, !6, i64 28}
!52 = !{!51, !46, i64 8}
!53 = !{!51, !46, i64 16}
!54 = !{!51, !6, i64 24}
!55 = !{!51, !6, i64 28}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = !{!"branch_weights", i32 134217473, i32 127}
!61 = distinct !{!61, !13}
!62 = !{!"branch_weights", i32 1, i32 127}
!63 = distinct !{!63, !13}
!64 = !{!"branch_weights", i32 127, i32 134217473}
!65 = distinct !{!65, !13}
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
!81 = !{!"branch_weights", i32 8191, i32 -8192}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = !{!92}
!92 = distinct !{!92, !93}
!93 = distinct !{!93, !"LVerDomain"}
!94 = !{!95}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !13, !34, !35}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = distinct !{!99, !13, !34}
!100 = !{!101}
!101 = distinct !{!101, !102}
!102 = distinct !{!102, !"LVerDomain"}
!103 = !{!104}
!104 = distinct !{!104, !102}
!105 = distinct !{!105, !13, !34, !35}
!106 = distinct !{!106, !98}
!107 = distinct !{!107, !13, !34}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = !{!111, !46, i64 0}
!111 = !{!"", !46, i64 0, !46, i64 8, !6, i64 16, !6, i64 20}
!112 = !{!111, !46, i64 8}
!113 = !{!111, !6, i64 16}
!114 = !{!111, !6, i64 20}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
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
!128 = !{!129}
!129 = distinct !{!129, !130}
!130 = distinct !{!130, !"LVerDomain"}
!131 = !{!132}
!132 = distinct !{!132, !130}
!133 = distinct !{!133, !13, !34, !35}
!134 = distinct !{!134, !13, !34}
!135 = !{!136}
!136 = distinct !{!136, !137}
!137 = distinct !{!137, !"LVerDomain"}
!138 = !{!139}
!139 = distinct !{!139, !137}
!140 = distinct !{!140, !13, !34, !35}
!141 = distinct !{!141, !13, !34}
!142 = !{!143}
!143 = distinct !{!143, !144}
!144 = distinct !{!144, !"LVerDomain"}
!145 = !{!146}
!146 = distinct !{!146, !144}
!147 = distinct !{!147, !13, !34, !35}
!148 = distinct !{!148, !13, !34}
!149 = distinct !{!149, !13}
!150 = distinct !{!150, !13}
!151 = distinct !{!151, !13}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !13}
!154 = distinct !{!154, !13}
!155 = !{!156, !46, i64 0}
!156 = !{!"", !46, i64 0, !46, i64 8, !46, i64 16, !6, i64 24}
!157 = !{!156, !46, i64 8}
!158 = !{!156, !46, i64 16}
!159 = !{!156, !6, i64 24}
!160 = !{!161}
!161 = distinct !{!161, !162}
!162 = distinct !{!162, !"LVerDomain"}
!163 = !{!164}
!164 = distinct !{!164, !162}
!165 = distinct !{!165, !13, !34, !35}
!166 = distinct !{!166, !13, !34}
!167 = distinct !{!167, !13}
!168 = distinct !{!168, !13}
!169 = distinct !{!169, !13}
!170 = distinct !{!170, !13}
!171 = distinct !{!171, !13}
!172 = distinct !{!172, !13}
!173 = distinct !{!173, !13}
!174 = !{!175}
!175 = distinct !{!175, !176}
!176 = distinct !{!176, !"LVerDomain"}
!177 = !{!178}
!178 = distinct !{!178, !176}
!179 = distinct !{!179, !13, !34, !35}
!180 = distinct !{!180, !13, !34}
!181 = distinct !{!181, !13}
!182 = distinct !{!182, !13}
!183 = distinct !{!183, !13}
!184 = distinct !{!184, !13}
!185 = distinct !{!185, !13}
!186 = distinct !{!186, !13}
!187 = distinct !{!187, !13}
!188 = distinct !{!188, !13}
!189 = distinct !{!189, !13}
!190 = !{!191}
!191 = distinct !{!191, !192}
!192 = distinct !{!192, !"LVerDomain"}
!193 = !{!194}
!194 = distinct !{!194, !192}
!195 = distinct !{!195, !13, !34, !35}
!196 = distinct !{!196, !13, !34}
!197 = !{!198}
!198 = distinct !{!198, !199}
!199 = distinct !{!199, !"LVerDomain"}
!200 = !{!201}
!201 = distinct !{!201, !199}
!202 = distinct !{!202, !13, !34, !35}
!203 = distinct !{!203, !13, !34}
