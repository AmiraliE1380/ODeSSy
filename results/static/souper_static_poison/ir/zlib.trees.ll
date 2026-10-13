; ModuleID = '/mydata/zlib/trees.c'
source_filename = "/mydata/zlib/trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.static_tree_desc_s = type { ptr, ptr, i32, i32, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.internal_state = type { ptr, i32, ptr, i64, ptr, i64, i32, ptr, i64, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, i32, i64, i64, i32, i32, i16, i32, i32, i64, i32 }
%struct.tree_desc_s = type { ptr, i32, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@_dist_code = dso_local local_unnamed_addr constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\10\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 16
@_length_code = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\0F\0F\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C", align 16
@static_l_desc = internal constant %struct.static_tree_desc_s { ptr @static_ltree, ptr @extra_lbits, i32 257, i32 286, i32 15 }, align 8
@static_d_desc = internal constant %struct.static_tree_desc_s { ptr @static_dtree, ptr @extra_dbits, i32 0, i32 30, i32 15 }, align 8
@static_bl_desc = internal constant %struct.static_tree_desc_s { ptr null, ptr @extra_blbits, i32 0, i32 19, i32 7 }, align 8
@static_ltree = internal constant [288 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 140 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 76 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 204 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 44 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 172 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 108 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 236 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 156 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 92 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 220 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 60 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 188 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 124 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 252 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 130 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 66 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 194 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 34 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 162 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 98 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 226 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 146 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 82 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 210 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 50 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 178 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 114 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 242 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 138 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 74 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 202 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 42 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 170 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 106 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 234 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 154 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 90 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 218 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 58 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 186 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 122 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 250 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 134 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 70 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 198 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 38 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 166 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 102 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 230 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 150 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 86 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 214 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 54 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 182 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 118 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 246 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 142 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 78 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 206 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 46 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 174 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 110 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 238 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 158 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 94 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 222 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 62 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 190 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 126 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 254 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 129 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 65 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 193 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 33 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 161 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 97 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 225 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 145 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 81 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 209 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 49 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 177 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 113 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 241 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 137 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 73 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 201 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 41 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 169 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 105 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 233 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 153 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 89 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 217 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 57 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 185 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 121 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 249 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 133 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 69 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 197 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 37 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 165 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 101 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 229 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 149 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 85 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 213 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 53 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 181 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 117 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 245 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 141 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 77 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 205 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 45 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 173 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 109 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 237 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 157 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 93 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 221 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 61 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 189 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 125 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 253 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 275 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 147 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 403 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 83 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 339 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 211 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 467 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 51 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 307 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 179 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 435 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 115 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 371 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 243 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 499 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 267 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 139 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 395 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 75 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 331 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 203 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 459 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 43 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 299 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 171 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 427 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 107 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 363 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 235 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 491 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 283 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 155 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 411 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 91 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 347 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 219 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 475 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 59 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 315 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 187 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 443 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 123 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 379 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 251 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 507 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 263 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 135 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 391 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 71 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 327 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 199 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 455 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 39 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 295 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 167 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 423 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 103 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 359 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 231 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 487 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 279 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 151 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 407 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 87 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 343 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 215 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 471 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 55 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 311 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 183 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 439 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 119 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 375 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 247 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 503 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 15 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 271 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 143 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 399 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 79 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 335 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 207 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 463 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 47 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 303 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 175 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 431 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 111 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 367 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 239 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 495 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 31 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 287 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 159 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 415 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 95 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 351 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 223 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 479 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 63 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 319 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 191 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 447 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 127 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 383 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 255 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 511 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 64 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 32 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 96 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 80 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 48 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 112 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 72 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 40 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 104 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 88 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 56 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 120 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 68 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 36 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 100 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 84 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 52 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 116 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 131 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 67 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 195 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 35 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 163 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 99 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 227 }, %union.anon.0 { i16 8 } }], align 16
@static_dtree = internal constant [30 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 5 } }], align 16
@extra_lbits = internal constant [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], align 16
@extra_dbits = internal constant [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 16
@extra_blbits = internal constant [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], align 16
@bl_order = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@base_length = internal unnamed_addr constant [29 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 10, i32 12, i32 14, i32 16, i32 20, i32 24, i32 28, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 0], align 16
@base_dist = internal unnamed_addr constant [30 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @_tr_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40
  store ptr %2, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40, i32 2
  store ptr @static_l_desc, ptr %4, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41
  store ptr %5, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i32 2
  store ptr @static_d_desc, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42
  store ptr %8, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i32 2
  store ptr @static_bl_desc, ptr %10, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  store i16 0, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  store i32 0, ptr %12, align 4, !tbaa !20
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 58
  store i32 0, ptr %13, align 8, !tbaa !21
  br label %14

14:                                               ; preds = %14, %1
  %15 = phi i64 [ 0, %1 ], [ %19, %14 ]
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %15
  store i16 0, ptr %16, align 4, !tbaa !22
  %17 = or disjoint i64 %15, 1
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %17
  store i16 0, ptr %18, align 4, !tbaa !22
  %19 = add nuw nsw i64 %15, 2
  %20 = icmp eq i64 %19, 286
  br i1 %20, label %21, label %14, !llvm.loop !23

21:                                               ; preds = %14
  store i16 0, ptr %5, align 4, !tbaa !22
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 1
  store i16 0, ptr %22, align 4, !tbaa !22
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 2
  store i16 0, ptr %23, align 4, !tbaa !22
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 3
  store i16 0, ptr %24, align 4, !tbaa !22
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 4
  store i16 0, ptr %25, align 4, !tbaa !22
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 5
  store i16 0, ptr %26, align 4, !tbaa !22
  %27 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 6
  store i16 0, ptr %27, align 4, !tbaa !22
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 7
  store i16 0, ptr %28, align 4, !tbaa !22
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 8
  store i16 0, ptr %29, align 4, !tbaa !22
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 9
  store i16 0, ptr %30, align 4, !tbaa !22
  %31 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 10
  store i16 0, ptr %31, align 4, !tbaa !22
  %32 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 11
  store i16 0, ptr %32, align 4, !tbaa !22
  %33 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 12
  store i16 0, ptr %33, align 4, !tbaa !22
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 13
  store i16 0, ptr %34, align 4, !tbaa !22
  %35 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 14
  store i16 0, ptr %35, align 4, !tbaa !22
  %36 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 15
  store i16 0, ptr %36, align 4, !tbaa !22
  %37 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 16
  store i16 0, ptr %37, align 4, !tbaa !22
  %38 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 17
  store i16 0, ptr %38, align 4, !tbaa !22
  %39 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 18
  store i16 0, ptr %39, align 4, !tbaa !22
  %40 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 19
  store i16 0, ptr %40, align 4, !tbaa !22
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 20
  store i16 0, ptr %41, align 4, !tbaa !22
  %42 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 21
  store i16 0, ptr %42, align 4, !tbaa !22
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 22
  store i16 0, ptr %43, align 4, !tbaa !22
  %44 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 23
  store i16 0, ptr %44, align 4, !tbaa !22
  %45 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 24
  store i16 0, ptr %45, align 4, !tbaa !22
  %46 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 25
  store i16 0, ptr %46, align 4, !tbaa !22
  %47 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 26
  store i16 0, ptr %47, align 4, !tbaa !22
  %48 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 27
  store i16 0, ptr %48, align 4, !tbaa !22
  %49 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 28
  store i16 0, ptr %49, align 4, !tbaa !22
  %50 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 29
  store i16 0, ptr %50, align 4, !tbaa !22
  store i16 0, ptr %8, align 4, !tbaa !22
  %51 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 1
  store i16 0, ptr %51, align 4, !tbaa !22
  %52 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 2
  store i16 0, ptr %52, align 4, !tbaa !22
  %53 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 3
  store i16 0, ptr %53, align 4, !tbaa !22
  %54 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 4
  store i16 0, ptr %54, align 4, !tbaa !22
  %55 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 5
  store i16 0, ptr %55, align 4, !tbaa !22
  %56 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 6
  store i16 0, ptr %56, align 4, !tbaa !22
  %57 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 7
  store i16 0, ptr %57, align 4, !tbaa !22
  %58 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 8
  store i16 0, ptr %58, align 4, !tbaa !22
  %59 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 9
  store i16 0, ptr %59, align 4, !tbaa !22
  %60 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 10
  store i16 0, ptr %60, align 4, !tbaa !22
  %61 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 11
  store i16 0, ptr %61, align 4, !tbaa !22
  %62 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 12
  store i16 0, ptr %62, align 4, !tbaa !22
  %63 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 13
  store i16 0, ptr %63, align 4, !tbaa !22
  %64 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 14
  store i16 0, ptr %64, align 4, !tbaa !22
  %65 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 15
  store i16 0, ptr %65, align 4, !tbaa !22
  %66 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  store i16 0, ptr %66, align 4, !tbaa !22
  %67 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  store i16 0, ptr %67, align 4, !tbaa !22
  %68 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  store i16 0, ptr %68, align 4, !tbaa !22
  %69 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 256
  store i16 1, ptr %69, align 4, !tbaa !22
  %70 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %71 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  store i32 0, ptr %71, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %70, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_tr_stored_block(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %6 = load i32, ptr %5, align 4, !tbaa !20
  %7 = icmp sgt i32 %6, 13
  br i1 %7, label %10, label %46

8:                                                ; preds = %30
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

9:                                                ; preds = %150, %128, %119, %111, %100, %40, %21, %10
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

10:                                               ; preds = %4
  %11 = and i32 %3, 65535
  %12 = shl i32 %3, %6
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %14 = load i16, ptr %13, align 8, !tbaa !19
  %15 = trunc i32 %12 to i16
  %16 = or i16 %14, %15
  store i16 %16, ptr %13, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %18 = load i64, ptr %17, align 8, !tbaa !27
  %19 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %18, i64 1), !nosanitize !26
  %20 = extractvalue { i64, i1 } %19, 1, !nosanitize !26
  br i1 %20, label %9, label %21, !nosanitize !26

21:                                               ; preds = %10
  %22 = extractvalue { i64, i1 } %19, 0, !nosanitize !26
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !28
  %25 = trunc i16 %16 to i8
  store i64 %22, ptr %17, align 8, !tbaa !27
  %26 = getelementptr inbounds i8, ptr %24, i64 %18
  store i8 %25, ptr %26, align 1, !tbaa !22
  %27 = load i64, ptr %17, align 8, !tbaa !27
  %28 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 1), !nosanitize !26
  %29 = extractvalue { i64, i1 } %28, 1, !nosanitize !26
  br i1 %29, label %9, label %30, !nosanitize !26

30:                                               ; preds = %21
  %31 = extractvalue { i64, i1 } %28, 0, !nosanitize !26
  %32 = load ptr, ptr %23, align 8, !tbaa !28
  %33 = load i16, ptr %13, align 8, !tbaa !19
  %34 = lshr i16 %33, 8
  %35 = trunc i16 %34 to i8
  store i64 %31, ptr %17, align 8, !tbaa !27
  %36 = getelementptr inbounds i8, ptr %32, i64 %27
  store i8 %35, ptr %36, align 1, !tbaa !22
  %37 = load i32, ptr %5, align 4, !tbaa !20
  %38 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %37), !nosanitize !26
  %39 = extractvalue { i32, i1 } %38, 1, !nosanitize !26
  br i1 %39, label %8, label %40, !nosanitize !26

40:                                               ; preds = %30
  %41 = extractvalue { i32, i1 } %38, 0, !nosanitize !26
  %42 = lshr i32 %11, %41
  %43 = trunc i32 %42 to i16
  store i16 %43, ptr %13, align 8, !tbaa !19
  %44 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %37, i32 -13), !nosanitize !26
  %45 = extractvalue { i32, i1 } %44, 1, !nosanitize !26
  br i1 %45, label %9, label %54, !nosanitize !26

46:                                               ; preds = %4
  %47 = shl i32 %3, %6
  %48 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %49 = load i16, ptr %48, align 8, !tbaa !19
  %50 = trunc i32 %47 to i16
  %51 = or i16 %49, %50
  store i16 %51, ptr %48, align 8, !tbaa !19
  %52 = add nsw i32 %6, 3
  %53 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %52, 0
  br label %54

54:                                               ; preds = %46, %40
  %55 = phi i16 [ %43, %40 ], [ %51, %46 ]
  %56 = phi { i32, i1 } [ %44, %40 ], [ %53, %46 ]
  %57 = extractvalue { i32, i1 } %56, 0
  store i32 %57, ptr %5, align 4, !tbaa !20
  %58 = icmp sgt i32 %57, 8
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %61 = load i64, ptr %60, align 8, !tbaa !27
  %62 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %61, i64 1), !nosanitize !26
  %63 = extractvalue { i64, i1 } %62, 1, !nosanitize !26
  br i1 %63, label %64, label %65, !nosanitize !26

64:                                               ; preds = %84, %65, %59
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

65:                                               ; preds = %59
  %66 = extractvalue { i64, i1 } %62, 0, !nosanitize !26
  %67 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !28
  %69 = trunc i16 %55 to i8
  store i64 %66, ptr %60, align 8, !tbaa !27
  %70 = getelementptr inbounds i8, ptr %68, i64 %61
  store i8 %69, ptr %70, align 1, !tbaa !22
  %71 = load i64, ptr %60, align 8, !tbaa !27
  %72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %71, i64 1), !nosanitize !26
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !26
  br i1 %73, label %64, label %74, !nosanitize !26

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !26
  %77 = load ptr, ptr %67, align 8, !tbaa !28
  %78 = load i16, ptr %75, align 8, !tbaa !19
  %79 = lshr i16 %78, 8
  %80 = trunc i16 %79 to i8
  store i64 %76, ptr %60, align 8, !tbaa !27
  %81 = getelementptr inbounds i8, ptr %77, i64 %71
  store i8 %80, ptr %81, align 1, !tbaa !22
  br label %95

82:                                               ; preds = %54
  %83 = icmp sgt i32 %57, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %86 = load i64, ptr %85, align 8, !tbaa !27
  %87 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 1), !nosanitize !26
  %88 = extractvalue { i64, i1 } %87, 1, !nosanitize !26
  br i1 %88, label %64, label %89, !nosanitize !26

89:                                               ; preds = %84
  %90 = extractvalue { i64, i1 } %87, 0, !nosanitize !26
  %91 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !28
  %93 = trunc i16 %55 to i8
  store i64 %90, ptr %85, align 8, !tbaa !27
  %94 = getelementptr inbounds i8, ptr %92, i64 %86
  store i8 %93, ptr %94, align 1, !tbaa !22
  br label %95

95:                                               ; preds = %89, %82, %74
  %96 = load i32, ptr %5, align 4, !tbaa !20
  %97 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %96, i32 -1)
  %98 = extractvalue { i32, i1 } %97, 1, !nosanitize !26
  br i1 %98, label %99, label %100, !nosanitize !26

99:                                               ; preds = %95
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

100:                                              ; preds = %95
  %101 = extractvalue { i32, i1 } %97, 0, !nosanitize !26
  %102 = and i32 %101, 7
  %103 = add nuw nsw i32 %102, 1
  %104 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 58
  store i32 %103, ptr %104, align 8, !tbaa !21
  %105 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  store i16 0, ptr %105, align 8, !tbaa !19
  store i32 0, ptr %5, align 4, !tbaa !20
  %106 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %107 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %108 = load i64, ptr %107, align 8, !tbaa !27
  %109 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %108, i64 1), !nosanitize !26
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !26
  br i1 %110, label %9, label %111, !nosanitize !26

111:                                              ; preds = %100
  %112 = extractvalue { i64, i1 } %109, 0, !nosanitize !26
  %113 = load ptr, ptr %106, align 8, !tbaa !28
  %114 = trunc i64 %2 to i8
  store i64 %112, ptr %107, align 8, !tbaa !27
  %115 = getelementptr inbounds i8, ptr %113, i64 %108
  store i8 %114, ptr %115, align 1, !tbaa !22
  %116 = load i64, ptr %107, align 8, !tbaa !27
  %117 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %116, i64 1), !nosanitize !26
  %118 = extractvalue { i64, i1 } %117, 1, !nosanitize !26
  br i1 %118, label %9, label %119, !nosanitize !26

119:                                              ; preds = %111
  %120 = extractvalue { i64, i1 } %117, 0, !nosanitize !26
  %121 = load ptr, ptr %106, align 8, !tbaa !28
  %122 = lshr i64 %2, 8
  %123 = trunc i64 %122 to i8
  store i64 %120, ptr %107, align 8, !tbaa !27
  %124 = getelementptr inbounds i8, ptr %121, i64 %116
  store i8 %123, ptr %124, align 1, !tbaa !22
  %125 = load i64, ptr %107, align 8, !tbaa !27
  %126 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %125, i64 1), !nosanitize !26
  %127 = extractvalue { i64, i1 } %126, 1, !nosanitize !26
  br i1 %127, label %9, label %128, !nosanitize !26

128:                                              ; preds = %119
  %129 = extractvalue { i64, i1 } %126, 0, !nosanitize !26
  %130 = load ptr, ptr %106, align 8, !tbaa !28
  %131 = trunc i64 %2 to i32
  %132 = and i32 %131, 65535
  %133 = xor i32 %132, 65535
  %134 = trunc i32 %133 to i8
  store i64 %129, ptr %107, align 8, !tbaa !27
  %135 = getelementptr inbounds i8, ptr %130, i64 %125
  store i8 %134, ptr %135, align 1, !tbaa !22
  %136 = load i64, ptr %107, align 8, !tbaa !27
  %137 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %136, i64 1), !nosanitize !26
  %138 = extractvalue { i64, i1 } %137, 1, !nosanitize !26
  br i1 %138, label %9, label %139, !nosanitize !26

139:                                              ; preds = %128
  %140 = extractvalue { i64, i1 } %137, 0, !nosanitize !26
  %141 = load ptr, ptr %106, align 8, !tbaa !28
  %142 = lshr i32 %133, 8
  %143 = trunc i32 %142 to i8
  store i64 %140, ptr %107, align 8, !tbaa !27
  %144 = getelementptr inbounds i8, ptr %141, i64 %136
  store i8 %143, ptr %144, align 1, !tbaa !22
  %145 = icmp eq i64 %2, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %139
  %147 = load ptr, ptr %106, align 8, !tbaa !28
  %148 = load i64, ptr %107, align 8, !tbaa !27
  %149 = getelementptr inbounds i8, ptr %147, i64 %148
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %149, ptr align 1 %1, i64 %2, i1 false)
  br label %150

150:                                              ; preds = %146, %139
  %151 = load i64, ptr %107, align 8, !tbaa !27
  %152 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %151, i64 %2), !nosanitize !26
  %153 = extractvalue { i64, i1 } %152, 1, !nosanitize !26
  br i1 %153, label %9, label %154, !nosanitize !26

154:                                              ; preds = %150
  %155 = extractvalue { i64, i1 } %152, 0, !nosanitize !26
  store i64 %155, ptr %107, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @_tr_flush_bits(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %3 = load i32, ptr %2, align 4, !tbaa !20
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !27
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 1), !nosanitize !26
  %10 = extractvalue { i64, i1 } %9, 1, !nosanitize !26
  br i1 %10, label %11, label %12, !nosanitize !26

11:                                               ; preds = %31, %12, %5
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

12:                                               ; preds = %5
  %13 = extractvalue { i64, i1 } %9, 0, !nosanitize !26
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = load i16, ptr %6, align 8, !tbaa !19
  %17 = trunc i16 %16 to i8
  store i64 %13, ptr %7, align 8, !tbaa !27
  %18 = getelementptr inbounds i8, ptr %15, i64 %8
  store i8 %17, ptr %18, align 1, !tbaa !22
  %19 = load i64, ptr %7, align 8, !tbaa !27
  %20 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 1), !nosanitize !26
  %21 = extractvalue { i64, i1 } %20, 1, !nosanitize !26
  br i1 %21, label %11, label %22, !nosanitize !26

22:                                               ; preds = %12
  %23 = extractvalue { i64, i1 } %20, 0, !nosanitize !26
  %24 = load ptr, ptr %14, align 8, !tbaa !28
  %25 = load i16, ptr %6, align 8, !tbaa !19
  %26 = lshr i16 %25, 8
  %27 = trunc i16 %26 to i8
  store i64 %23, ptr %7, align 8, !tbaa !27
  %28 = getelementptr inbounds i8, ptr %24, i64 %19
  store i8 %27, ptr %28, align 1, !tbaa !22
  store i16 0, ptr %6, align 8, !tbaa !19
  br label %52

29:                                               ; preds = %1
  %30 = icmp sgt i32 %3, 7
  br i1 %30, label %31, label %54

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %33 = load i64, ptr %32, align 8, !tbaa !27
  %34 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 1), !nosanitize !26
  %35 = extractvalue { i64, i1 } %34, 1, !nosanitize !26
  br i1 %35, label %11, label %36, !nosanitize !26

36:                                               ; preds = %31
  %37 = extractvalue { i64, i1 } %34, 0, !nosanitize !26
  %38 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !28
  %40 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %41 = load i16, ptr %40, align 8, !tbaa !19
  %42 = trunc i16 %41 to i8
  store i64 %37, ptr %32, align 8, !tbaa !27
  %43 = getelementptr inbounds i8, ptr %39, i64 %33
  store i8 %42, ptr %43, align 1, !tbaa !22
  %44 = load i16, ptr %40, align 8, !tbaa !19
  %45 = lshr i16 %44, 8
  store i16 %45, ptr %40, align 8, !tbaa !19
  %46 = load i32, ptr %2, align 4, !tbaa !20
  %47 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %46, i32 -8)
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !26
  br i1 %48, label %49, label %50, !nosanitize !26

49:                                               ; preds = %36
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

50:                                               ; preds = %36
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !26
  br label %52

52:                                               ; preds = %50, %22
  %53 = phi i32 [ %51, %50 ], [ 0, %22 ]
  store i32 %53, ptr %2, align 4, !tbaa !20
  br label %54

54:                                               ; preds = %29, %52
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_tr_align(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %3 = load i32, ptr %2, align 4, !tbaa !20
  %4 = icmp sgt i32 %3, 13
  %5 = shl i32 2, %3
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %7 = load i16, ptr %6, align 8, !tbaa !19
  %8 = trunc i32 %5 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %6, align 8, !tbaa !19
  br i1 %4, label %11, label %42

10:                                               ; preds = %65, %26
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %13 = load i64, ptr %12, align 8, !tbaa !27
  %14 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 1), !nosanitize !26
  %15 = extractvalue { i64, i1 } %14, 1, !nosanitize !26
  br i1 %15, label %16, label %17, !nosanitize !26

16:                                               ; preds = %75, %56, %50, %36, %17, %11
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

17:                                               ; preds = %11
  %18 = extractvalue { i64, i1 } %14, 0, !nosanitize !26
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !28
  %21 = trunc i16 %9 to i8
  store i64 %18, ptr %12, align 8, !tbaa !27
  %22 = getelementptr inbounds i8, ptr %20, i64 %13
  store i8 %21, ptr %22, align 1, !tbaa !22
  %23 = load i64, ptr %12, align 8, !tbaa !27
  %24 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %23, i64 1), !nosanitize !26
  %25 = extractvalue { i64, i1 } %24, 1, !nosanitize !26
  br i1 %25, label %16, label %26, !nosanitize !26

26:                                               ; preds = %17
  %27 = extractvalue { i64, i1 } %24, 0, !nosanitize !26
  %28 = load ptr, ptr %19, align 8, !tbaa !28
  %29 = load i16, ptr %6, align 8, !tbaa !19
  %30 = lshr i16 %29, 8
  %31 = trunc i16 %30 to i8
  store i64 %27, ptr %12, align 8, !tbaa !27
  %32 = getelementptr inbounds i8, ptr %28, i64 %23
  store i8 %31, ptr %32, align 1, !tbaa !22
  %33 = load i32, ptr %2, align 4, !tbaa !20
  %34 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %33), !nosanitize !26
  %35 = extractvalue { i32, i1 } %34, 1, !nosanitize !26
  br i1 %35, label %10, label %36, !nosanitize !26

36:                                               ; preds = %26
  %37 = extractvalue { i32, i1 } %34, 0, !nosanitize !26
  %38 = lshr i32 2, %37
  %39 = trunc i32 %38 to i16
  store i16 %39, ptr %6, align 8, !tbaa !19
  %40 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 -13), !nosanitize !26
  %41 = extractvalue { i32, i1 } %40, 1, !nosanitize !26
  br i1 %41, label %16, label %45, !nosanitize !26

42:                                               ; preds = %1
  %43 = add nsw i32 %3, 3
  %44 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %43, 0
  br label %45

45:                                               ; preds = %42, %36
  %46 = phi i16 [ %39, %36 ], [ %9, %42 ]
  %47 = phi { i32, i1 } [ %40, %36 ], [ %44, %42 ]
  %48 = extractvalue { i32, i1 } %47, 0
  store i32 %48, ptr %2, align 4, !tbaa !20
  %49 = icmp sgt i32 %48, 9
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %52 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !27
  %54 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %53, i64 1), !nosanitize !26
  %55 = extractvalue { i64, i1 } %54, 1, !nosanitize !26
  br i1 %55, label %16, label %56, !nosanitize !26

56:                                               ; preds = %50
  %57 = extractvalue { i64, i1 } %54, 0, !nosanitize !26
  %58 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !28
  %60 = trunc i16 %46 to i8
  store i64 %57, ptr %52, align 8, !tbaa !27
  %61 = getelementptr inbounds i8, ptr %59, i64 %53
  store i8 %60, ptr %61, align 1, !tbaa !22
  %62 = load i64, ptr %52, align 8, !tbaa !27
  %63 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %62, i64 1), !nosanitize !26
  %64 = extractvalue { i64, i1 } %63, 1, !nosanitize !26
  br i1 %64, label %16, label %65, !nosanitize !26

65:                                               ; preds = %56
  %66 = extractvalue { i64, i1 } %63, 0, !nosanitize !26
  %67 = load ptr, ptr %58, align 8, !tbaa !28
  %68 = load i16, ptr %51, align 8, !tbaa !19
  %69 = lshr i16 %68, 8
  %70 = trunc i16 %69 to i8
  store i64 %66, ptr %52, align 8, !tbaa !27
  %71 = getelementptr inbounds i8, ptr %67, i64 %62
  store i8 %70, ptr %71, align 1, !tbaa !22
  %72 = load i32, ptr %2, align 4, !tbaa !20
  %73 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %72), !nosanitize !26
  %74 = extractvalue { i32, i1 } %73, 1, !nosanitize !26
  br i1 %74, label %10, label %75, !nosanitize !26

75:                                               ; preds = %65
  store i16 0, ptr %51, align 8, !tbaa !19
  %76 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %72, i32 -9), !nosanitize !26
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !26
  br i1 %77, label %16, label %78, !nosanitize !26

78:                                               ; preds = %75
  %79 = extractvalue { i32, i1 } %76, 0, !nosanitize !26
  br label %83

80:                                               ; preds = %45
  %81 = add nsw i32 %48, 7
  %82 = trunc i16 %46 to i8
  br label %83

83:                                               ; preds = %80, %78
  %84 = phi i8 [ %82, %80 ], [ 0, %78 ]
  %85 = phi i32 [ %81, %80 ], [ %79, %78 ]
  store i32 %85, ptr %2, align 4, !tbaa !20
  %86 = icmp eq i32 %85, 16
  br i1 %86, label %87, label %109

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %89 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %90 = load i64, ptr %89, align 8, !tbaa !27
  %91 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %90, i64 1), !nosanitize !26
  %92 = extractvalue { i64, i1 } %91, 1, !nosanitize !26
  br i1 %92, label %93, label %94, !nosanitize !26

93:                                               ; preds = %111, %94, %87
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

94:                                               ; preds = %87
  %95 = extractvalue { i64, i1 } %91, 0, !nosanitize !26
  %96 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !28
  store i64 %95, ptr %89, align 8, !tbaa !27
  %98 = getelementptr inbounds i8, ptr %97, i64 %90
  store i8 %84, ptr %98, align 1, !tbaa !22
  %99 = load i64, ptr %89, align 8, !tbaa !27
  %100 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %99, i64 1), !nosanitize !26
  %101 = extractvalue { i64, i1 } %100, 1, !nosanitize !26
  br i1 %101, label %93, label %102, !nosanitize !26

102:                                              ; preds = %94
  %103 = extractvalue { i64, i1 } %100, 0, !nosanitize !26
  %104 = load ptr, ptr %96, align 8, !tbaa !28
  %105 = load i16, ptr %88, align 8, !tbaa !19
  %106 = lshr i16 %105, 8
  %107 = trunc i16 %106 to i8
  store i64 %103, ptr %89, align 8, !tbaa !27
  %108 = getelementptr inbounds i8, ptr %104, i64 %99
  store i8 %107, ptr %108, align 1, !tbaa !22
  store i16 0, ptr %88, align 8, !tbaa !19
  br label %130

109:                                              ; preds = %83
  %110 = icmp sgt i32 %85, 7
  br i1 %110, label %111, label %132

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %113 = load i64, ptr %112, align 8, !tbaa !27
  %114 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %113, i64 1), !nosanitize !26
  %115 = extractvalue { i64, i1 } %114, 1, !nosanitize !26
  br i1 %115, label %93, label %116, !nosanitize !26

116:                                              ; preds = %111
  %117 = extractvalue { i64, i1 } %114, 0, !nosanitize !26
  %118 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !28
  %120 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  store i64 %117, ptr %112, align 8, !tbaa !27
  %121 = getelementptr inbounds i8, ptr %119, i64 %113
  store i8 %84, ptr %121, align 1, !tbaa !22
  %122 = load i16, ptr %120, align 8, !tbaa !19
  %123 = lshr i16 %122, 8
  store i16 %123, ptr %120, align 8, !tbaa !19
  %124 = load i32, ptr %2, align 4, !tbaa !20
  %125 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %124, i32 -8)
  %126 = extractvalue { i32, i1 } %125, 1, !nosanitize !26
  br i1 %126, label %127, label %128, !nosanitize !26

127:                                              ; preds = %116
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

128:                                              ; preds = %116
  %129 = extractvalue { i32, i1 } %125, 0, !nosanitize !26
  br label %130

130:                                              ; preds = %128, %102
  %131 = phi i32 [ %129, %128 ], [ 0, %102 ]
  store i32 %131, ptr %2, align 4, !tbaa !20
  br label %132

132:                                              ; preds = %109, %130
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_tr_flush_block(ptr noundef %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [16 x i16], align 16
  %6 = alloca [16 x i16], align 16
  %7 = alloca [16 x i16], align 16
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 33
  %9 = load i32, ptr %8, align 4, !tbaa !29
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %2464

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !30
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !31
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %145

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 0
  %18 = load i16, ptr %17, align 4, !tbaa !22
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %143

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 1
  %22 = load i16, ptr %21, align 4, !tbaa !22
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %143

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 2
  %26 = load i16, ptr %25, align 4, !tbaa !22
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %143

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 3
  %30 = load i16, ptr %29, align 4, !tbaa !22
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %143

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 4
  %34 = load i16, ptr %33, align 4, !tbaa !22
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %143

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 5
  %38 = load i16, ptr %37, align 4, !tbaa !22
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %143

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 6
  %42 = load i16, ptr %41, align 4, !tbaa !22
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %143

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 14
  %46 = load i16, ptr %45, align 4, !tbaa !22
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %143

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 15
  %50 = load i16, ptr %49, align 4, !tbaa !22
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %143

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 16
  %54 = load i16, ptr %53, align 4, !tbaa !22
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %143

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 17
  %58 = load i16, ptr %57, align 4, !tbaa !22
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %143

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 18
  %62 = load i16, ptr %61, align 4, !tbaa !22
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %143

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 19
  %66 = load i16, ptr %65, align 4, !tbaa !22
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %143

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 20
  %70 = load i16, ptr %69, align 4, !tbaa !22
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %143

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 21
  %74 = load i16, ptr %73, align 4, !tbaa !22
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %143

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 22
  %78 = load i16, ptr %77, align 4, !tbaa !22
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %143

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 23
  %82 = load i16, ptr %81, align 4, !tbaa !22
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %143

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 24
  %86 = load i16, ptr %85, align 4, !tbaa !22
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %143

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 25
  %90 = load i16, ptr %89, align 4, !tbaa !22
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %143

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 28
  %94 = load i16, ptr %93, align 4, !tbaa !22
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %143

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 29
  %98 = load i16, ptr %97, align 4, !tbaa !22
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %143

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 30
  %102 = load i16, ptr %101, align 4, !tbaa !22
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %143

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 31
  %106 = load i16, ptr %105, align 4, !tbaa !22
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %143

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 9
  %110 = load i16, ptr %109, align 4, !tbaa !22
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %143

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 10
  %114 = load i16, ptr %113, align 4, !tbaa !22
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %143

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 13
  %118 = load i16, ptr %117, align 4, !tbaa !22
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %138, label %143

120:                                              ; preds = %138
  %121 = or disjoint i64 %139, 1
  %122 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %121
  %123 = load i16, ptr %122, align 4, !tbaa !22
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %120
  %126 = or disjoint i64 %139, 2
  %127 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %126
  %128 = load i16, ptr %127, align 4, !tbaa !22
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = or disjoint i64 %139, 3
  %132 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %131
  %133 = load i16, ptr %132, align 4, !tbaa !22
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = add nuw nsw i64 %139, 4
  %137 = icmp eq i64 %136, 256
  br i1 %137, label %143, label %138, !llvm.loop !33

138:                                              ; preds = %116, %135
  %139 = phi i64 [ %136, %135 ], [ 32, %116 ]
  %140 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %139
  %141 = load i16, ptr %140, align 4, !tbaa !22
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %120, label %143

143:                                              ; preds = %138, %120, %125, %130, %135, %16, %20, %24, %28, %32, %36, %40, %44, %48, %52, %56, %60, %64, %68, %72, %76, %80, %84, %88, %92, %96, %100, %104, %108, %112, %116
  %144 = phi i32 [ 1, %116 ], [ 1, %112 ], [ 1, %108 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ 0, %24 ], [ 0, %20 ], [ 0, %16 ], [ 1, %138 ], [ 1, %120 ], [ 1, %125 ], [ 1, %130 ], [ 0, %135 ]
  store i32 %144, ptr %13, align 8, !tbaa !31
  br label %145

145:                                              ; preds = %143, %11
  %146 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40
  %147 = load ptr, ptr %146, align 8, !tbaa !34
  %148 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !35
  %150 = load ptr, ptr %149, align 8, !tbaa !36
  %151 = getelementptr inbounds %struct.static_tree_desc_s, ptr %149, i64 0, i32 3
  %152 = load i32, ptr %151, align 4, !tbaa !38
  %153 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45
  store i32 0, ptr %153, align 4, !tbaa !39
  %154 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 46
  store i32 573, ptr %154, align 8, !tbaa !40
  %155 = icmp sgt i32 %152, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %145
  %157 = zext nneg i32 %152 to i64
  br label %167

158:                                              ; preds = %186
  %159 = load i32, ptr %153, align 4, !tbaa !39
  %160 = icmp slt i32 %159, 2
  br i1 %160, label %161, label %221

161:                                              ; preds = %158, %145
  %162 = phi i32 [ %187, %158 ], [ -1, %145 ]
  %163 = phi i32 [ %159, %158 ], [ 0, %145 ]
  %164 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %165 = icmp eq ptr %150, null
  %166 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  br label %190

167:                                              ; preds = %186, %156
  %168 = phi i64 [ 0, %156 ], [ %188, %186 ]
  %169 = phi i32 [ -1, %156 ], [ %187, %186 ]
  %170 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %168
  %171 = load i16, ptr %170, align 2, !tbaa !22
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %167
  %174 = load i32, ptr %153, align 4, !tbaa !39
  %175 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %174, i32 1), !nosanitize !26
  %176 = extractvalue { i32, i1 } %175, 1, !nosanitize !26
  br i1 %176, label %177, label %178, !nosanitize !26

177:                                              ; preds = %173, %388
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

178:                                              ; preds = %173
  %179 = extractvalue { i32, i1 } %175, 0, !nosanitize !26
  store i32 %179, ptr %153, align 4, !tbaa !39
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %180
  %182 = trunc i64 %168 to i32
  store i32 %182, ptr %181, align 4, !tbaa !41
  %183 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %168
  store i8 0, ptr %183, align 1, !tbaa !22
  br label %186

184:                                              ; preds = %167
  %185 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %168, i32 1
  store i16 0, ptr %185, align 2, !tbaa !22
  br label %186

186:                                              ; preds = %184, %178
  %187 = phi i32 [ %182, %178 ], [ %169, %184 ]
  %188 = add nuw nsw i64 %168, 1
  %189 = icmp eq i64 %188, %157
  br i1 %189, label %158, label %167, !llvm.loop !42

190:                                              ; preds = %218, %161
  %191 = phi i32 [ %163, %161 ], [ %219, %218 ]
  %192 = phi i32 [ %162, %161 ], [ %195, %218 ]
  %193 = icmp slt i32 %192, 2
  %194 = add i32 %192, 1
  %195 = select i1 %193, i32 %194, i32 %192
  %196 = add nsw i32 %191, 1
  %197 = select i1 %193, i32 %194, i32 0
  store i32 %196, ptr %153, align 4, !tbaa !39
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %198
  store i32 %197, ptr %199, align 4, !tbaa !41
  %200 = sext i32 %197 to i64
  %201 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %200
  store i16 1, ptr %201, align 2, !tbaa !22
  %202 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %200
  store i8 0, ptr %202, align 1, !tbaa !22
  %203 = load i64, ptr %164, align 8, !tbaa !43
  %204 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %203, i64 1), !nosanitize !26
  %205 = extractvalue { i64, i1 } %204, 1, !nosanitize !26
  br i1 %205, label %206, label %207, !nosanitize !26

206:                                              ; preds = %209, %190, %381, %373, %303, %476
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

207:                                              ; preds = %190
  %208 = extractvalue { i64, i1 } %204, 0, !nosanitize !26
  store i64 %208, ptr %164, align 8, !tbaa !43
  br i1 %165, label %218, label %209

209:                                              ; preds = %207
  %210 = getelementptr inbounds %struct.ct_data_s, ptr %150, i64 %200, i32 1
  %211 = load i16, ptr %210, align 2, !tbaa !22
  %212 = zext i16 %211 to i64
  %213 = load i64, ptr %166, align 8, !tbaa !44
  %214 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %213, i64 %212), !nosanitize !26
  %215 = extractvalue { i64, i1 } %214, 1, !nosanitize !26
  br i1 %215, label %206, label %216, !nosanitize !26

216:                                              ; preds = %209
  %217 = extractvalue { i64, i1 } %214, 0, !nosanitize !26
  store i64 %217, ptr %166, align 8, !tbaa !44
  br label %218

218:                                              ; preds = %216, %207
  %219 = load i32, ptr %153, align 4, !tbaa !39
  %220 = icmp slt i32 %219, 2
  br i1 %220, label %190, label %221, !llvm.loop !45

221:                                              ; preds = %218, %158
  %222 = phi i32 [ %187, %158 ], [ %195, %218 ]
  %223 = phi i32 [ %159, %158 ], [ %219, %218 ]
  %224 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40, i32 1
  store i32 %222, ptr %224, align 8, !tbaa !46
  %225 = lshr i32 %223, 1
  %226 = zext nneg i32 %225 to i64
  br label %231

227:                                              ; preds = %297
  %228 = load i32, ptr %153, align 4, !tbaa !39
  %229 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 1
  %230 = sext i32 %152 to i64
  br label %303

231:                                              ; preds = %297, %221
  %232 = phi i64 [ %226, %221 ], [ %301, %297 ]
  %233 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !41
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %235
  %237 = trunc i64 %232 to i32
  %238 = shl nuw i32 %237, 1
  %239 = load i32, ptr %153, align 4, !tbaa !39
  %240 = icmp sgt i32 %238, %239
  br i1 %240, label %297, label %241

241:                                              ; preds = %231
  %242 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %235
  br label %243

243:                                              ; preds = %291, %241
  %244 = phi i32 [ %239, %241 ], [ %295, %291 ]
  %245 = phi i32 [ %238, %241 ], [ %294, %291 ]
  %246 = phi i32 [ %237, %241 ], [ %276, %291 ]
  %247 = icmp slt i32 %245, %244
  br i1 %247, label %250, label %248

248:                                              ; preds = %243
  %249 = sext i32 %245 to i64
  br label %274

250:                                              ; preds = %243
  %251 = or disjoint i32 %245, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !41
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %255
  %257 = load i16, ptr %256, align 2, !tbaa !22
  %258 = sext i32 %245 to i64
  %259 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !41
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %261
  %263 = load i16, ptr %262, align 2, !tbaa !22
  %264 = icmp ult i16 %257, %263
  br i1 %264, label %273, label %265

265:                                              ; preds = %250
  %266 = icmp eq i16 %257, %263
  br i1 %266, label %267, label %274

267:                                              ; preds = %265
  %268 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %255
  %269 = load i8, ptr %268, align 1, !tbaa !22
  %270 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %261
  %271 = load i8, ptr %270, align 1, !tbaa !22
  %272 = icmp ugt i8 %269, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %267, %250
  br label %274

274:                                              ; preds = %273, %267, %265, %248
  %275 = phi i64 [ %249, %248 ], [ %252, %273 ], [ %258, %267 ], [ %258, %265 ]
  %276 = phi i32 [ %245, %248 ], [ %251, %273 ], [ %245, %267 ], [ %245, %265 ]
  %277 = load i16, ptr %242, align 2, !tbaa !22
  %278 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %275
  %279 = load i32, ptr %278, align 4, !tbaa !41
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %280
  %282 = load i16, ptr %281, align 2, !tbaa !22
  %283 = icmp ult i16 %277, %282
  br i1 %283, label %297, label %284

284:                                              ; preds = %274
  %285 = icmp eq i16 %277, %282
  br i1 %285, label %286, label %291

286:                                              ; preds = %284
  %287 = load i8, ptr %236, align 1, !tbaa !22
  %288 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %280
  %289 = load i8, ptr %288, align 1, !tbaa !22
  %290 = icmp ugt i8 %287, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %286, %284
  %292 = sext i32 %246 to i64
  %293 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %292
  store i32 %279, ptr %293, align 4, !tbaa !41
  %294 = shl i32 %276, 1
  %295 = load i32, ptr %153, align 4, !tbaa !39
  %296 = icmp sgt i32 %294, %295
  br i1 %296, label %297, label %243, !llvm.loop !47

297:                                              ; preds = %291, %286, %274, %231
  %298 = phi i32 [ %237, %231 ], [ %246, %274 ], [ %246, %286 ], [ %276, %291 ]
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %299
  store i32 %234, ptr %300, align 4, !tbaa !41
  %301 = add nsw i64 %232, -1
  %302 = icmp sgt i64 %232, 1
  br i1 %302, label %231, label %227, !llvm.loop !48

303:                                              ; preds = %470, %227
  %304 = phi i32 [ %228, %227 ], [ %474, %470 ]
  %305 = phi i64 [ %230, %227 ], [ %413, %470 ]
  %306 = load i32, ptr %229, align 4, !tbaa !41
  %307 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %304, i32 -1)
  %308 = extractvalue { i32, i1 } %307, 1, !nosanitize !26
  br i1 %308, label %206, label %309, !nosanitize !26

309:                                              ; preds = %303
  %310 = extractvalue { i32, i1 } %307, 0, !nosanitize !26
  store i32 %310, ptr %153, align 4, !tbaa !39
  %311 = sext i32 %304 to i64
  %312 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %311
  %313 = load i32, ptr %312, align 4, !tbaa !41
  store i32 %313, ptr %229, align 4, !tbaa !41
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %314
  %316 = icmp slt i32 %310, 2
  br i1 %316, label %373, label %317

317:                                              ; preds = %309
  %318 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %314
  br label %319

319:                                              ; preds = %367, %317
  %320 = phi i32 [ %310, %317 ], [ %371, %367 ]
  %321 = phi i32 [ 2, %317 ], [ %370, %367 ]
  %322 = phi i32 [ 1, %317 ], [ %352, %367 ]
  %323 = icmp slt i32 %321, %320
  br i1 %323, label %326, label %324

324:                                              ; preds = %319
  %325 = sext i32 %321 to i64
  br label %350

326:                                              ; preds = %319
  %327 = or disjoint i32 %321, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !41
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %331
  %333 = load i16, ptr %332, align 2, !tbaa !22
  %334 = sext i32 %321 to i64
  %335 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %334
  %336 = load i32, ptr %335, align 4, !tbaa !41
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %337
  %339 = load i16, ptr %338, align 2, !tbaa !22
  %340 = icmp ult i16 %333, %339
  br i1 %340, label %349, label %341

341:                                              ; preds = %326
  %342 = icmp eq i16 %333, %339
  br i1 %342, label %343, label %350

343:                                              ; preds = %341
  %344 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %331
  %345 = load i8, ptr %344, align 1, !tbaa !22
  %346 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %337
  %347 = load i8, ptr %346, align 1, !tbaa !22
  %348 = icmp ugt i8 %345, %347
  br i1 %348, label %350, label %349

349:                                              ; preds = %343, %326
  br label %350

350:                                              ; preds = %349, %343, %341, %324
  %351 = phi i64 [ %325, %324 ], [ %328, %349 ], [ %334, %343 ], [ %334, %341 ]
  %352 = phi i32 [ %321, %324 ], [ %327, %349 ], [ %321, %343 ], [ %321, %341 ]
  %353 = load i16, ptr %318, align 2, !tbaa !22
  %354 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %351
  %355 = load i32, ptr %354, align 4, !tbaa !41
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %356
  %358 = load i16, ptr %357, align 2, !tbaa !22
  %359 = icmp ult i16 %353, %358
  br i1 %359, label %373, label %360

360:                                              ; preds = %350
  %361 = icmp eq i16 %353, %358
  br i1 %361, label %362, label %367

362:                                              ; preds = %360
  %363 = load i8, ptr %315, align 1, !tbaa !22
  %364 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %356
  %365 = load i8, ptr %364, align 1, !tbaa !22
  %366 = icmp ugt i8 %363, %365
  br i1 %366, label %367, label %373

367:                                              ; preds = %362, %360
  %368 = sext i32 %322 to i64
  %369 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %368
  store i32 %355, ptr %369, align 4, !tbaa !41
  %370 = shl i32 %352, 1
  %371 = load i32, ptr %153, align 4, !tbaa !39
  %372 = icmp sgt i32 %370, %371
  br i1 %372, label %373, label %319, !llvm.loop !47

373:                                              ; preds = %367, %362, %350, %309
  %374 = phi i32 [ 1, %309 ], [ %322, %350 ], [ %322, %362 ], [ %352, %367 ]
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %375
  store i32 %313, ptr %376, align 4, !tbaa !41
  %377 = load i32, ptr %229, align 4, !tbaa !41
  %378 = load i32, ptr %154, align 8, !tbaa !40
  %379 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %378, i32 -1)
  %380 = extractvalue { i32, i1 } %379, 1, !nosanitize !26
  br i1 %380, label %206, label %381, !nosanitize !26

381:                                              ; preds = %373
  %382 = extractvalue { i32, i1 } %379, 0, !nosanitize !26
  store i32 %382, ptr %154, align 8, !tbaa !40
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %383
  store i32 %306, ptr %384, align 4, !tbaa !41
  %385 = load i32, ptr %154, align 8, !tbaa !40
  %386 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %385, i32 -1)
  %387 = extractvalue { i32, i1 } %386, 1, !nosanitize !26
  br i1 %387, label %206, label %388, !nosanitize !26

388:                                              ; preds = %381
  %389 = extractvalue { i32, i1 } %386, 0, !nosanitize !26
  store i32 %389, ptr %154, align 8, !tbaa !40
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %390
  store i32 %377, ptr %391, align 4, !tbaa !41
  %392 = sext i32 %306 to i64
  %393 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %392
  %394 = load i16, ptr %393, align 2, !tbaa !22
  %395 = sext i32 %377 to i64
  %396 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %395
  %397 = load i16, ptr %396, align 2, !tbaa !22
  %398 = add i16 %397, %394
  %399 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %305
  store i16 %398, ptr %399, align 2, !tbaa !22
  %400 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %392
  %401 = load i8, ptr %400, align 1, !tbaa !22
  %402 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %395
  %403 = load i8, ptr %402, align 1, !tbaa !22
  %404 = tail call i8 @llvm.umax.i8(i8 %401, i8 %403)
  %405 = add i8 %404, 1
  %406 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %305
  store i8 %405, ptr %406, align 1, !tbaa !22
  %407 = trunc i64 %305 to i32
  %408 = trunc i64 %305 to i16
  %409 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %395, i32 1
  store i16 %408, ptr %409, align 2, !tbaa !22
  %410 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %392, i32 1
  store i16 %408, ptr %410, align 2, !tbaa !22
  %411 = icmp eq i32 %407, 2147483647
  br i1 %411, label %177, label %412, !nosanitize !26

412:                                              ; preds = %388
  %413 = add nsw i64 %305, 1
  store i32 %407, ptr %229, align 4, !tbaa !41
  %414 = load i32, ptr %153, align 4, !tbaa !39
  %415 = icmp slt i32 %414, 2
  br i1 %415, label %470, label %416

416:                                              ; preds = %412, %464
  %417 = phi i32 [ %468, %464 ], [ %414, %412 ]
  %418 = phi i32 [ %467, %464 ], [ 2, %412 ]
  %419 = phi i32 [ %449, %464 ], [ 1, %412 ]
  %420 = icmp slt i32 %418, %417
  br i1 %420, label %423, label %421

421:                                              ; preds = %416
  %422 = sext i32 %418 to i64
  br label %447

423:                                              ; preds = %416
  %424 = or disjoint i32 %418, 1
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %425
  %427 = load i32, ptr %426, align 4, !tbaa !41
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %428
  %430 = load i16, ptr %429, align 2, !tbaa !22
  %431 = sext i32 %418 to i64
  %432 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %431
  %433 = load i32, ptr %432, align 4, !tbaa !41
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %434
  %436 = load i16, ptr %435, align 2, !tbaa !22
  %437 = icmp ult i16 %430, %436
  br i1 %437, label %446, label %438

438:                                              ; preds = %423
  %439 = icmp eq i16 %430, %436
  br i1 %439, label %440, label %447

440:                                              ; preds = %438
  %441 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %428
  %442 = load i8, ptr %441, align 1, !tbaa !22
  %443 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %434
  %444 = load i8, ptr %443, align 1, !tbaa !22
  %445 = icmp ugt i8 %442, %444
  br i1 %445, label %447, label %446

446:                                              ; preds = %440, %423
  br label %447

447:                                              ; preds = %446, %440, %438, %421
  %448 = phi i64 [ %422, %421 ], [ %425, %446 ], [ %431, %440 ], [ %431, %438 ]
  %449 = phi i32 [ %418, %421 ], [ %424, %446 ], [ %418, %440 ], [ %418, %438 ]
  %450 = load i16, ptr %399, align 2, !tbaa !22
  %451 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %448
  %452 = load i32, ptr %451, align 4, !tbaa !41
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %453
  %455 = load i16, ptr %454, align 2, !tbaa !22
  %456 = icmp ult i16 %450, %455
  br i1 %456, label %470, label %457

457:                                              ; preds = %447
  %458 = icmp eq i16 %450, %455
  br i1 %458, label %459, label %464

459:                                              ; preds = %457
  %460 = load i8, ptr %406, align 1, !tbaa !22
  %461 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %453
  %462 = load i8, ptr %461, align 1, !tbaa !22
  %463 = icmp ugt i8 %460, %462
  br i1 %463, label %464, label %470

464:                                              ; preds = %459, %457
  %465 = sext i32 %419 to i64
  %466 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %465
  store i32 %452, ptr %466, align 4, !tbaa !41
  %467 = shl i32 %449, 1
  %468 = load i32, ptr %153, align 4, !tbaa !39
  %469 = icmp sgt i32 %467, %468
  br i1 %469, label %470, label %416, !llvm.loop !47

470:                                              ; preds = %464, %459, %447, %412
  %471 = phi i32 [ 1, %412 ], [ %419, %447 ], [ %419, %459 ], [ %449, %464 ]
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %472
  store i32 %407, ptr %473, align 4, !tbaa !41
  %474 = load i32, ptr %153, align 4, !tbaa !39
  %475 = icmp sgt i32 %474, 1
  br i1 %475, label %303, label %476, !llvm.loop !49

476:                                              ; preds = %470
  %477 = load i32, ptr %154, align 8, !tbaa !40
  %478 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %477, i32 -1)
  %479 = extractvalue { i32, i1 } %478, 1, !nosanitize !26
  br i1 %479, label %206, label %480, !nosanitize !26

480:                                              ; preds = %476
  %481 = extractvalue { i32, i1 } %478, 0, !nosanitize !26
  %482 = load i32, ptr %229, align 4, !tbaa !41
  store i32 %481, ptr %154, align 8, !tbaa !40
  %483 = sext i32 %481 to i64
  %484 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %483
  store i32 %482, ptr %484, align 4, !tbaa !41
  %485 = load ptr, ptr %146, align 8, !tbaa !34
  %486 = load i32, ptr %224, align 8, !tbaa !46
  %487 = load ptr, ptr %148, align 8, !tbaa !35
  %488 = load ptr, ptr %487, align 8, !tbaa !36
  %489 = getelementptr inbounds %struct.static_tree_desc_s, ptr %487, i64 0, i32 1
  %490 = load ptr, ptr %489, align 8, !tbaa !50
  %491 = getelementptr inbounds %struct.static_tree_desc_s, ptr %487, i64 0, i32 2
  %492 = load i32, ptr %491, align 8, !tbaa !51
  %493 = getelementptr inbounds %struct.static_tree_desc_s, ptr %487, i64 0, i32 4
  %494 = load i32, ptr %493, align 8, !tbaa !52
  %495 = getelementptr i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %495, i8 0, i64 32, i1 false), !tbaa !53
  %496 = load i32, ptr %154, align 8, !tbaa !40
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %497
  %499 = load i32, ptr %498, align 4, !tbaa !41
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.ct_data_s, ptr %485, i64 %500, i32 1
  store i16 0, ptr %501, align 2, !tbaa !22
  %502 = load i32, ptr %154, align 8, !tbaa !40
  %503 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %502, i32 1), !nosanitize !26
  %504 = extractvalue { i32, i1 } %503, 1, !nosanitize !26
  br i1 %504, label %505, label %506, !nosanitize !26

505:                                              ; preds = %576, %570, %561, %554, %529, %608, %674, %480
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

506:                                              ; preds = %480
  %507 = extractvalue { i32, i1 } %503, 0
  %508 = icmp slt i32 %507, 573
  br i1 %508, label %509, label %688

509:                                              ; preds = %506
  %510 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %511 = icmp eq ptr %488, null
  %512 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  %513 = sext i32 %507 to i64
  br label %514

514:                                              ; preds = %585, %509
  %515 = phi i64 [ %513, %509 ], [ %586, %585 ]
  %516 = phi i32 [ 0, %509 ], [ %536, %585 ]
  %517 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %515
  %518 = load i32, ptr %517, align 4, !tbaa !41
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.ct_data_s, ptr %485, i64 %519
  %521 = getelementptr inbounds %struct.ct_data_s, ptr %485, i64 %519, i32 1
  %522 = load i16, ptr %521, align 2, !tbaa !22
  %523 = zext i16 %522 to i64
  %524 = getelementptr inbounds %struct.ct_data_s, ptr %485, i64 %523, i32 1
  %525 = load i16, ptr %524, align 2, !tbaa !22
  %526 = zext i16 %525 to i32
  %527 = add nuw nsw i32 %526, 1
  %528 = icmp sgt i32 %494, %526
  br i1 %528, label %534, label %529

529:                                              ; preds = %514
  %530 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %516, i32 1), !nosanitize !26
  %531 = extractvalue { i32, i1 } %530, 1, !nosanitize !26
  br i1 %531, label %505, label %532, !nosanitize !26

532:                                              ; preds = %529
  %533 = extractvalue { i32, i1 } %530, 0, !nosanitize !26
  br label %534

534:                                              ; preds = %532, %514
  %535 = phi i32 [ %494, %532 ], [ %527, %514 ]
  %536 = phi i32 [ %533, %532 ], [ %516, %514 ]
  %537 = trunc i32 %535 to i16
  store i16 %537, ptr %521, align 2, !tbaa !22
  %538 = icmp sgt i32 %518, %486
  br i1 %538, label %585, label %539

539:                                              ; preds = %534
  %540 = sext i32 %535 to i64
  %541 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %540
  %542 = load i16, ptr %541, align 2, !tbaa !53
  %543 = add i16 %542, 1
  store i16 %543, ptr %541, align 2, !tbaa !53
  %544 = icmp slt i32 %518, %492
  br i1 %544, label %554, label %545

545:                                              ; preds = %539
  %546 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %518, i32 %492), !nosanitize !26
  %547 = extractvalue { i32, i1 } %546, 1, !nosanitize !26
  br i1 %547, label %548, label %549, !nosanitize !26

548:                                              ; preds = %545, %613, %605, %640, %664, %647, %591
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

549:                                              ; preds = %545
  %550 = extractvalue { i32, i1 } %546, 0, !nosanitize !26
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, ptr %490, i64 %551
  %553 = load i32, ptr %552, align 4, !tbaa !41
  br label %554

554:                                              ; preds = %549, %539
  %555 = phi i32 [ %553, %549 ], [ 0, %539 ]
  %556 = load i16, ptr %520, align 2, !tbaa !22
  %557 = zext i16 %556 to i64
  %558 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %535, i32 %555), !nosanitize !26
  %559 = extractvalue { i32, i1 } %558, 1, !nosanitize !26
  br i1 %559, label %505, label %561, !nosanitize !26

560:                                              ; preds = %668
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !26
  unreachable, !nosanitize !26

561:                                              ; preds = %554
  %562 = extractvalue { i32, i1 } %558, 0, !nosanitize !26
  %563 = zext i32 %562 to i64
  %564 = mul nuw nsw i64 %563, %557
  %565 = load i64, ptr %510, align 8, !tbaa !43
  %566 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %565, i64 %564), !nosanitize !26
  %567 = extractvalue { i64, i1 } %566, 1, !nosanitize !26
  br i1 %567, label %505, label %568, !nosanitize !26

568:                                              ; preds = %561
  %569 = extractvalue { i64, i1 } %566, 0, !nosanitize !26
  store i64 %569, ptr %510, align 8, !tbaa !43
  br i1 %511, label %585, label %570

570:                                              ; preds = %568
  %571 = getelementptr inbounds %struct.ct_data_s, ptr %488, i64 %519, i32 1
  %572 = load i16, ptr %571, align 2, !tbaa !22
  %573 = zext i16 %572 to i32
  %574 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %573, i32 %555), !nosanitize !26
  %575 = extractvalue { i32, i1 } %574, 1, !nosanitize !26
  br i1 %575, label %505, label %576, !nosanitize !26

576:                                              ; preds = %570
  %577 = extractvalue { i32, i1 } %574, 0, !nosanitize !26
  %578 = zext i32 %577 to i64
  %579 = mul nuw nsw i64 %578, %557
  %580 = load i64, ptr %512, align 8, !tbaa !44
  %581 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %580, i64 %579), !nosanitize !26
  %582 = extractvalue { i64, i1 } %581, 1, !nosanitize !26
  br i1 %582, label %505, label %583, !nosanitize !26

583:                                              ; preds = %576
  %584 = extractvalue { i64, i1 } %581, 0, !nosanitize !26
  store i64 %584, ptr %512, align 8, !tbaa !44
  br label %585

585:                                              ; preds = %583, %568, %534
  %586 = add nsw i64 %515, 1
  %587 = and i64 %586, 4294967295
  %588 = icmp eq i64 %587, 573
  br i1 %588, label %589, label %514, !llvm.loop !54

589:                                              ; preds = %585
  %590 = icmp eq i32 %536, 0
  br i1 %590, label %688, label %591

591:                                              ; preds = %589
  %592 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %494, i32 -1)
  %593 = extractvalue { i32, i1 } %592, 1, !nosanitize !26
  %594 = sext i32 %494 to i64
  %595 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %594
  br i1 %593, label %548, label %596, !nosanitize !26

596:                                              ; preds = %591, %623
  %597 = phi i32 [ %624, %623 ], [ %536, %591 ]
  br label %598

598:                                              ; preds = %605, %596
  %599 = phi { i32, i1 } [ %606, %605 ], [ %592, %596 ]
  %600 = extractvalue { i32, i1 } %599, 0
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %601
  %603 = load i16, ptr %602, align 2, !tbaa !53
  %604 = icmp eq i16 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %598
  %606 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %600, i32 -1)
  %607 = extractvalue { i32, i1 } %606, 1, !nosanitize !26
  br i1 %607, label %548, label %598, !llvm.loop !55, !nosanitize !26

608:                                              ; preds = %598
  %609 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %601
  %610 = add i16 %603, -1
  store i16 %610, ptr %609, align 2, !tbaa !53
  %611 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %600, i32 1), !nosanitize !26
  %612 = extractvalue { i32, i1 } %611, 1, !nosanitize !26
  br i1 %612, label %505, label %613, !nosanitize !26

613:                                              ; preds = %608
  %614 = extractvalue { i32, i1 } %611, 0, !nosanitize !26
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %615
  %617 = load i16, ptr %616, align 2, !tbaa !53
  %618 = add i16 %617, 2
  store i16 %618, ptr %616, align 2, !tbaa !53
  %619 = load i16, ptr %595, align 2, !tbaa !53
  %620 = add i16 %619, -1
  store i16 %620, ptr %595, align 2, !tbaa !53
  %621 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %597, i32 -2)
  %622 = extractvalue { i32, i1 } %621, 1, !nosanitize !26
  br i1 %622, label %548, label %623, !nosanitize !26

623:                                              ; preds = %613
  %624 = extractvalue { i32, i1 } %621, 0, !nosanitize !26
  %625 = icmp sgt i32 %624, 0
  br i1 %625, label %596, label %626, !llvm.loop !56

626:                                              ; preds = %623
  %627 = icmp eq i32 %494, 0
  br i1 %627, label %688, label %628

628:                                              ; preds = %626, %684
  %629 = phi i64 [ %685, %684 ], [ %594, %626 ]
  %630 = phi i32 [ %642, %684 ], [ 573, %626 ]
  %631 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %629
  %632 = load i16, ptr %631, align 2, !tbaa !53
  %633 = icmp eq i16 %632, 0
  br i1 %633, label %634, label %636

634:                                              ; preds = %628
  %635 = trunc i64 %629 to i32
  br label %640

636:                                              ; preds = %628
  %637 = zext i16 %632 to i32
  %638 = trunc i64 %629 to i32
  %639 = trunc i64 %629 to i16
  br label %644

640:                                              ; preds = %681, %634
  %641 = phi i32 [ %635, %634 ], [ %638, %681 ]
  %642 = phi i32 [ %630, %634 ], [ %652, %681 ]
  %643 = icmp eq i32 %641, -2147483648
  br i1 %643, label %548, label %684, !nosanitize !26

644:                                              ; preds = %681, %636
  %645 = phi i32 [ %630, %636 ], [ %652, %681 ]
  %646 = phi i32 [ %637, %636 ], [ %682, %681 ]
  br label %647

647:                                              ; preds = %651, %644
  %648 = phi i32 [ %652, %651 ], [ %645, %644 ]
  %649 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %648, i32 -1)
  %650 = extractvalue { i32, i1 } %649, 1, !nosanitize !26
  br i1 %650, label %548, label %651, !nosanitize !26

651:                                              ; preds = %647
  %652 = extractvalue { i32, i1 } %649, 0, !nosanitize !26
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %653
  %655 = load i32, ptr %654, align 4, !tbaa !41
  %656 = icmp sgt i32 %655, %486
  br i1 %656, label %647, label %657, !llvm.loop !57

657:                                              ; preds = %651
  %658 = sext i32 %655 to i64
  %659 = getelementptr inbounds %struct.ct_data_s, ptr %485, i64 %658
  %660 = getelementptr inbounds %struct.ct_data_s, ptr %485, i64 %658, i32 1
  %661 = load i16, ptr %660, align 2, !tbaa !22
  %662 = zext i16 %661 to i32
  %663 = icmp eq i32 %638, %662
  br i1 %663, label %681, label %664

664:                                              ; preds = %657
  %665 = zext i16 %661 to i64
  %666 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %629, i64 %665), !nosanitize !26
  %667 = extractvalue { i64, i1 } %666, 1, !nosanitize !26
  br i1 %667, label %548, label %668, !nosanitize !26

668:                                              ; preds = %664
  %669 = extractvalue { i64, i1 } %666, 0, !nosanitize !26
  %670 = load i16, ptr %659, align 2, !tbaa !22
  %671 = zext i16 %670 to i64
  %672 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %669, i64 %671), !nosanitize !26
  %673 = extractvalue { i64, i1 } %672, 1, !nosanitize !26
  br i1 %673, label %560, label %674, !nosanitize !26

674:                                              ; preds = %668
  %675 = extractvalue { i64, i1 } %672, 0, !nosanitize !26
  %676 = load i64, ptr %510, align 8, !tbaa !43
  %677 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %676, i64 %675), !nosanitize !26
  %678 = extractvalue { i64, i1 } %677, 1, !nosanitize !26
  br i1 %678, label %505, label %679, !nosanitize !26

679:                                              ; preds = %674
  %680 = extractvalue { i64, i1 } %677, 0, !nosanitize !26
  store i64 %680, ptr %510, align 8, !tbaa !43
  store i16 %639, ptr %660, align 2, !tbaa !22
  br label %681

681:                                              ; preds = %679, %657
  %682 = add nsw i32 %646, -1
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %640, label %644, !llvm.loop !57

684:                                              ; preds = %640
  %685 = add nsw i64 %629, -1
  %686 = and i64 %685, 4294967295
  %687 = icmp eq i64 %686, 0
  br i1 %687, label %688, label %628, !llvm.loop !58

688:                                              ; preds = %684, %626, %589, %506
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  %689 = load i16, ptr %495, align 2, !tbaa !53
  %690 = zext i16 %689 to i32
  %691 = shl nuw nsw i32 %690, 1
  %692 = trunc i32 %691 to i16
  %693 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 1
  store i16 %692, ptr %693, align 2, !tbaa !53
  %694 = getelementptr i8, ptr %0, i64 2978
  %695 = load i16, ptr %694, align 2, !tbaa !53
  %696 = zext i16 %695 to i32
  %697 = add nuw nsw i32 %691, %696
  %698 = shl nuw nsw i32 %697, 1
  %699 = trunc i32 %698 to i16
  %700 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 2
  store i16 %699, ptr %700, align 4, !tbaa !53
  %701 = getelementptr i8, ptr %0, i64 2980
  %702 = load i16, ptr %701, align 2, !tbaa !53
  %703 = zext i16 %702 to i32
  %704 = add nuw nsw i32 %698, %703
  %705 = shl nuw nsw i32 %704, 1
  %706 = trunc i32 %705 to i16
  %707 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 3
  store i16 %706, ptr %707, align 2, !tbaa !53
  %708 = getelementptr i8, ptr %0, i64 2982
  %709 = load i16, ptr %708, align 2, !tbaa !53
  %710 = zext i16 %709 to i32
  %711 = add nuw nsw i32 %705, %710
  %712 = shl nuw nsw i32 %711, 1
  %713 = trunc i32 %712 to i16
  %714 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 4
  store i16 %713, ptr %714, align 8, !tbaa !53
  %715 = getelementptr i8, ptr %0, i64 2984
  %716 = load i16, ptr %715, align 2, !tbaa !53
  %717 = zext i16 %716 to i32
  %718 = add nuw nsw i32 %712, %717
  %719 = shl nuw nsw i32 %718, 1
  %720 = trunc i32 %719 to i16
  %721 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 5
  store i16 %720, ptr %721, align 2, !tbaa !53
  %722 = getelementptr i8, ptr %0, i64 2986
  %723 = load i16, ptr %722, align 2, !tbaa !53
  %724 = zext i16 %723 to i32
  %725 = add nuw nsw i32 %719, %724
  %726 = shl nuw nsw i32 %725, 1
  %727 = trunc i32 %726 to i16
  %728 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 6
  store i16 %727, ptr %728, align 4, !tbaa !53
  %729 = getelementptr i8, ptr %0, i64 2988
  %730 = load i16, ptr %729, align 2, !tbaa !53
  %731 = zext i16 %730 to i32
  %732 = add nuw nsw i32 %726, %731
  %733 = shl nuw nsw i32 %732, 1
  %734 = trunc i32 %733 to i16
  %735 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 7
  store i16 %734, ptr %735, align 2, !tbaa !53
  %736 = getelementptr i8, ptr %0, i64 2990
  %737 = load i16, ptr %736, align 2, !tbaa !53
  %738 = zext i16 %737 to i32
  %739 = add nuw nsw i32 %733, %738
  %740 = shl nuw nsw i32 %739, 1
  %741 = trunc i32 %740 to i16
  %742 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 8
  store i16 %741, ptr %742, align 16, !tbaa !53
  %743 = getelementptr i8, ptr %0, i64 2992
  %744 = load i16, ptr %743, align 2, !tbaa !53
  %745 = zext i16 %744 to i32
  %746 = add nuw nsw i32 %740, %745
  %747 = shl nuw nsw i32 %746, 1
  %748 = trunc i32 %747 to i16
  %749 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 9
  store i16 %748, ptr %749, align 2, !tbaa !53
  %750 = getelementptr i8, ptr %0, i64 2994
  %751 = load i16, ptr %750, align 2, !tbaa !53
  %752 = zext i16 %751 to i32
  %753 = add nuw nsw i32 %747, %752
  %754 = shl nuw nsw i32 %753, 1
  %755 = trunc i32 %754 to i16
  %756 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 10
  store i16 %755, ptr %756, align 4, !tbaa !53
  %757 = getelementptr i8, ptr %0, i64 2996
  %758 = load i16, ptr %757, align 2, !tbaa !53
  %759 = trunc i32 %754 to i16
  %760 = add i16 %758, %759
  %761 = shl i16 %760, 1
  %762 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 11
  store i16 %761, ptr %762, align 2, !tbaa !53
  %763 = getelementptr i8, ptr %0, i64 2998
  %764 = load i16, ptr %763, align 2, !tbaa !53
  %765 = add i16 %764, %761
  %766 = shl i16 %765, 1
  %767 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 12
  store i16 %766, ptr %767, align 8, !tbaa !53
  %768 = getelementptr i8, ptr %0, i64 3000
  %769 = load i16, ptr %768, align 2, !tbaa !53
  %770 = add i16 %766, %769
  %771 = shl i16 %770, 1
  %772 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 13
  store i16 %771, ptr %772, align 2, !tbaa !53
  %773 = getelementptr i8, ptr %0, i64 3002
  %774 = load i16, ptr %773, align 2, !tbaa !53
  %775 = add i16 %771, %774
  %776 = shl i16 %775, 1
  %777 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 14
  store i16 %776, ptr %777, align 4, !tbaa !53
  %778 = getelementptr i8, ptr %0, i64 3004
  %779 = load i16, ptr %778, align 2, !tbaa !53
  %780 = add i16 %776, %779
  %781 = shl i16 %780, 1
  %782 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 15
  store i16 %781, ptr %782, align 2, !tbaa !53
  %783 = icmp slt i32 %222, 0
  br i1 %783, label %844, label %785

784:                                              ; preds = %838
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

785:                                              ; preds = %688, %840
  %786 = phi i64 [ %841, %840 ], [ 0, %688 ]
  %787 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %786, i32 1
  %788 = load i16, ptr %787, align 2, !tbaa !22
  %789 = icmp eq i16 %788, 0
  br i1 %789, label %838, label %790

790:                                              ; preds = %785
  %791 = zext i16 %788 to i32
  %792 = zext i16 %788 to i64
  %793 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %792
  %794 = load i16, ptr %793, align 2, !tbaa !53
  %795 = add i16 %794, 1
  store i16 %795, ptr %793, align 2, !tbaa !53
  %796 = and i32 %791, 3
  %797 = icmp ult i16 %788, 4
  br i1 %797, label %820, label %798

798:                                              ; preds = %790
  %799 = and i32 %791, 65532
  br label %800

800:                                              ; preds = %800, %798
  %801 = phi i16 [ %794, %798 ], [ %817, %800 ]
  %802 = phi i16 [ 0, %798 ], [ %816, %800 ]
  %803 = phi i32 [ 0, %798 ], [ %818, %800 ]
  %804 = and i16 %801, 1
  %805 = or disjoint i16 %802, %804
  %806 = lshr i16 %801, 2
  %807 = shl i16 %805, 2
  %808 = and i16 %801, 2
  %809 = or disjoint i16 %807, %808
  %810 = and i16 %806, 1
  %811 = or disjoint i16 %809, %810
  %812 = shl i16 %811, 1
  %813 = lshr i16 %801, 3
  %814 = and i16 %813, 1
  %815 = or disjoint i16 %812, %814
  %816 = shl i16 %815, 1
  %817 = lshr i16 %801, 4
  %818 = add i32 %803, 4
  %819 = icmp eq i32 %818, %799
  br i1 %819, label %820, label %800, !llvm.loop !59

820:                                              ; preds = %800, %790
  %821 = phi i16 [ undef, %790 ], [ %815, %800 ]
  %822 = phi i16 [ %794, %790 ], [ %817, %800 ]
  %823 = phi i16 [ 0, %790 ], [ %816, %800 ]
  %824 = icmp eq i32 %796, 0
  br i1 %824, label %835, label %825

825:                                              ; preds = %820, %825
  %826 = phi i16 [ %832, %825 ], [ %822, %820 ]
  %827 = phi i16 [ %831, %825 ], [ %823, %820 ]
  %828 = phi i32 [ %833, %825 ], [ 0, %820 ]
  %829 = and i16 %826, 1
  %830 = or disjoint i16 %827, %829
  %831 = shl i16 %830, 1
  %832 = lshr i16 %826, 1
  %833 = add i32 %828, 1
  %834 = icmp eq i32 %833, %796
  br i1 %834, label %835, label %825, !llvm.loop !60

835:                                              ; preds = %825, %820
  %836 = phi i16 [ %821, %820 ], [ %830, %825 ]
  %837 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %786
  store i16 %836, ptr %837, align 2, !tbaa !22
  br label %838

838:                                              ; preds = %835, %785
  %839 = icmp eq i64 %786, 2147483647
  br i1 %839, label %784, label %840, !nosanitize !26

840:                                              ; preds = %838
  %841 = add nuw nsw i64 %786, 1
  %842 = trunc i64 %841 to i32
  %843 = icmp slt i32 %222, %842
  br i1 %843, label %844, label %785, !llvm.loop !62

844:                                              ; preds = %840, %688
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  %845 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41
  %846 = load ptr, ptr %845, align 8, !tbaa !34
  %847 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i32 2
  %848 = load ptr, ptr %847, align 8, !tbaa !35
  %849 = load ptr, ptr %848, align 8, !tbaa !36
  %850 = getelementptr inbounds %struct.static_tree_desc_s, ptr %848, i64 0, i32 3
  %851 = load i32, ptr %850, align 4, !tbaa !38
  store i32 0, ptr %153, align 4, !tbaa !39
  store i32 573, ptr %154, align 8, !tbaa !40
  %852 = icmp sgt i32 %851, 0
  br i1 %852, label %853, label %858

853:                                              ; preds = %844
  %854 = zext nneg i32 %851 to i64
  br label %864

855:                                              ; preds = %883
  %856 = load i32, ptr %153, align 4, !tbaa !39
  %857 = icmp slt i32 %856, 2
  br i1 %857, label %858, label %918

858:                                              ; preds = %855, %844
  %859 = phi i32 [ %884, %855 ], [ -1, %844 ]
  %860 = phi i32 [ %856, %855 ], [ 0, %844 ]
  %861 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %862 = icmp eq ptr %849, null
  %863 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  br label %887

864:                                              ; preds = %883, %853
  %865 = phi i64 [ 0, %853 ], [ %885, %883 ]
  %866 = phi i32 [ -1, %853 ], [ %884, %883 ]
  %867 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %865
  %868 = load i16, ptr %867, align 2, !tbaa !22
  %869 = icmp eq i16 %868, 0
  br i1 %869, label %881, label %870

870:                                              ; preds = %864
  %871 = load i32, ptr %153, align 4, !tbaa !39
  %872 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %871, i32 1), !nosanitize !26
  %873 = extractvalue { i32, i1 } %872, 1, !nosanitize !26
  br i1 %873, label %874, label %875, !nosanitize !26

874:                                              ; preds = %870, %1084
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

875:                                              ; preds = %870
  %876 = extractvalue { i32, i1 } %872, 0, !nosanitize !26
  store i32 %876, ptr %153, align 4, !tbaa !39
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %877
  %879 = trunc i64 %865 to i32
  store i32 %879, ptr %878, align 4, !tbaa !41
  %880 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %865
  store i8 0, ptr %880, align 1, !tbaa !22
  br label %883

881:                                              ; preds = %864
  %882 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %865, i32 1
  store i16 0, ptr %882, align 2, !tbaa !22
  br label %883

883:                                              ; preds = %881, %875
  %884 = phi i32 [ %879, %875 ], [ %866, %881 ]
  %885 = add nuw nsw i64 %865, 1
  %886 = icmp eq i64 %885, %854
  br i1 %886, label %855, label %864, !llvm.loop !42

887:                                              ; preds = %915, %858
  %888 = phi i32 [ %860, %858 ], [ %916, %915 ]
  %889 = phi i32 [ %859, %858 ], [ %892, %915 ]
  %890 = icmp slt i32 %889, 2
  %891 = add i32 %889, 1
  %892 = select i1 %890, i32 %891, i32 %889
  %893 = add nsw i32 %888, 1
  %894 = select i1 %890, i32 %891, i32 0
  store i32 %893, ptr %153, align 4, !tbaa !39
  %895 = sext i32 %893 to i64
  %896 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %895
  store i32 %894, ptr %896, align 4, !tbaa !41
  %897 = sext i32 %894 to i64
  %898 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %897
  store i16 1, ptr %898, align 2, !tbaa !22
  %899 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %897
  store i8 0, ptr %899, align 1, !tbaa !22
  %900 = load i64, ptr %861, align 8, !tbaa !43
  %901 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %900, i64 1), !nosanitize !26
  %902 = extractvalue { i64, i1 } %901, 1, !nosanitize !26
  br i1 %902, label %903, label %904, !nosanitize !26

903:                                              ; preds = %906, %887, %1077, %1069, %999, %1172
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

904:                                              ; preds = %887
  %905 = extractvalue { i64, i1 } %901, 0, !nosanitize !26
  store i64 %905, ptr %861, align 8, !tbaa !43
  br i1 %862, label %915, label %906

906:                                              ; preds = %904
  %907 = getelementptr inbounds %struct.ct_data_s, ptr %849, i64 %897, i32 1
  %908 = load i16, ptr %907, align 2, !tbaa !22
  %909 = zext i16 %908 to i64
  %910 = load i64, ptr %863, align 8, !tbaa !44
  %911 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %910, i64 %909), !nosanitize !26
  %912 = extractvalue { i64, i1 } %911, 1, !nosanitize !26
  br i1 %912, label %903, label %913, !nosanitize !26

913:                                              ; preds = %906
  %914 = extractvalue { i64, i1 } %911, 0, !nosanitize !26
  store i64 %914, ptr %863, align 8, !tbaa !44
  br label %915

915:                                              ; preds = %913, %904
  %916 = load i32, ptr %153, align 4, !tbaa !39
  %917 = icmp slt i32 %916, 2
  br i1 %917, label %887, label %918, !llvm.loop !45

918:                                              ; preds = %915, %855
  %919 = phi i32 [ %884, %855 ], [ %892, %915 ]
  %920 = phi i32 [ %856, %855 ], [ %916, %915 ]
  %921 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i32 1
  store i32 %919, ptr %921, align 8, !tbaa !46
  %922 = lshr i32 %920, 1
  %923 = zext nneg i32 %922 to i64
  br label %927

924:                                              ; preds = %993
  %925 = load i32, ptr %153, align 4, !tbaa !39
  %926 = sext i32 %851 to i64
  br label %999

927:                                              ; preds = %993, %918
  %928 = phi i64 [ %923, %918 ], [ %997, %993 ]
  %929 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %928
  %930 = load i32, ptr %929, align 4, !tbaa !41
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %931
  %933 = trunc i64 %928 to i32
  %934 = shl nuw i32 %933, 1
  %935 = load i32, ptr %153, align 4, !tbaa !39
  %936 = icmp sgt i32 %934, %935
  br i1 %936, label %993, label %937

937:                                              ; preds = %927
  %938 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %931
  br label %939

939:                                              ; preds = %987, %937
  %940 = phi i32 [ %935, %937 ], [ %991, %987 ]
  %941 = phi i32 [ %934, %937 ], [ %990, %987 ]
  %942 = phi i32 [ %933, %937 ], [ %972, %987 ]
  %943 = icmp slt i32 %941, %940
  br i1 %943, label %946, label %944

944:                                              ; preds = %939
  %945 = sext i32 %941 to i64
  br label %970

946:                                              ; preds = %939
  %947 = or disjoint i32 %941, 1
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %948
  %950 = load i32, ptr %949, align 4, !tbaa !41
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %951
  %953 = load i16, ptr %952, align 2, !tbaa !22
  %954 = sext i32 %941 to i64
  %955 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %954
  %956 = load i32, ptr %955, align 4, !tbaa !41
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %957
  %959 = load i16, ptr %958, align 2, !tbaa !22
  %960 = icmp ult i16 %953, %959
  br i1 %960, label %969, label %961

961:                                              ; preds = %946
  %962 = icmp eq i16 %953, %959
  br i1 %962, label %963, label %970

963:                                              ; preds = %961
  %964 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %951
  %965 = load i8, ptr %964, align 1, !tbaa !22
  %966 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %957
  %967 = load i8, ptr %966, align 1, !tbaa !22
  %968 = icmp ugt i8 %965, %967
  br i1 %968, label %970, label %969

969:                                              ; preds = %963, %946
  br label %970

970:                                              ; preds = %969, %963, %961, %944
  %971 = phi i64 [ %945, %944 ], [ %948, %969 ], [ %954, %963 ], [ %954, %961 ]
  %972 = phi i32 [ %941, %944 ], [ %947, %969 ], [ %941, %963 ], [ %941, %961 ]
  %973 = load i16, ptr %938, align 2, !tbaa !22
  %974 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %971
  %975 = load i32, ptr %974, align 4, !tbaa !41
  %976 = sext i32 %975 to i64
  %977 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %976
  %978 = load i16, ptr %977, align 2, !tbaa !22
  %979 = icmp ult i16 %973, %978
  br i1 %979, label %993, label %980

980:                                              ; preds = %970
  %981 = icmp eq i16 %973, %978
  br i1 %981, label %982, label %987

982:                                              ; preds = %980
  %983 = load i8, ptr %932, align 1, !tbaa !22
  %984 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %976
  %985 = load i8, ptr %984, align 1, !tbaa !22
  %986 = icmp ugt i8 %983, %985
  br i1 %986, label %987, label %993

987:                                              ; preds = %982, %980
  %988 = sext i32 %942 to i64
  %989 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %988
  store i32 %975, ptr %989, align 4, !tbaa !41
  %990 = shl i32 %972, 1
  %991 = load i32, ptr %153, align 4, !tbaa !39
  %992 = icmp sgt i32 %990, %991
  br i1 %992, label %993, label %939, !llvm.loop !47

993:                                              ; preds = %987, %982, %970, %927
  %994 = phi i32 [ %933, %927 ], [ %942, %970 ], [ %942, %982 ], [ %972, %987 ]
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %995
  store i32 %930, ptr %996, align 4, !tbaa !41
  %997 = add nsw i64 %928, -1
  %998 = icmp sgt i64 %928, 1
  br i1 %998, label %927, label %924, !llvm.loop !48

999:                                              ; preds = %1166, %924
  %1000 = phi i32 [ %925, %924 ], [ %1170, %1166 ]
  %1001 = phi i64 [ %926, %924 ], [ %1109, %1166 ]
  %1002 = load i32, ptr %229, align 4, !tbaa !41
  %1003 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1000, i32 -1)
  %1004 = extractvalue { i32, i1 } %1003, 1, !nosanitize !26
  br i1 %1004, label %903, label %1005, !nosanitize !26

1005:                                             ; preds = %999
  %1006 = extractvalue { i32, i1 } %1003, 0, !nosanitize !26
  store i32 %1006, ptr %153, align 4, !tbaa !39
  %1007 = sext i32 %1000 to i64
  %1008 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1007
  %1009 = load i32, ptr %1008, align 4, !tbaa !41
  store i32 %1009, ptr %229, align 4, !tbaa !41
  %1010 = sext i32 %1009 to i64
  %1011 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1010
  %1012 = icmp slt i32 %1006, 2
  br i1 %1012, label %1069, label %1013

1013:                                             ; preds = %1005
  %1014 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %1010
  br label %1015

1015:                                             ; preds = %1063, %1013
  %1016 = phi i32 [ %1006, %1013 ], [ %1067, %1063 ]
  %1017 = phi i32 [ 2, %1013 ], [ %1066, %1063 ]
  %1018 = phi i32 [ 1, %1013 ], [ %1048, %1063 ]
  %1019 = icmp slt i32 %1017, %1016
  br i1 %1019, label %1022, label %1020

1020:                                             ; preds = %1015
  %1021 = sext i32 %1017 to i64
  br label %1046

1022:                                             ; preds = %1015
  %1023 = or disjoint i32 %1017, 1
  %1024 = sext i32 %1023 to i64
  %1025 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1024
  %1026 = load i32, ptr %1025, align 4, !tbaa !41
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %1027
  %1029 = load i16, ptr %1028, align 2, !tbaa !22
  %1030 = sext i32 %1017 to i64
  %1031 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1030
  %1032 = load i32, ptr %1031, align 4, !tbaa !41
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %1033
  %1035 = load i16, ptr %1034, align 2, !tbaa !22
  %1036 = icmp ult i16 %1029, %1035
  br i1 %1036, label %1045, label %1037

1037:                                             ; preds = %1022
  %1038 = icmp eq i16 %1029, %1035
  br i1 %1038, label %1039, label %1046

1039:                                             ; preds = %1037
  %1040 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1027
  %1041 = load i8, ptr %1040, align 1, !tbaa !22
  %1042 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1033
  %1043 = load i8, ptr %1042, align 1, !tbaa !22
  %1044 = icmp ugt i8 %1041, %1043
  br i1 %1044, label %1046, label %1045

1045:                                             ; preds = %1039, %1022
  br label %1046

1046:                                             ; preds = %1045, %1039, %1037, %1020
  %1047 = phi i64 [ %1021, %1020 ], [ %1024, %1045 ], [ %1030, %1039 ], [ %1030, %1037 ]
  %1048 = phi i32 [ %1017, %1020 ], [ %1023, %1045 ], [ %1017, %1039 ], [ %1017, %1037 ]
  %1049 = load i16, ptr %1014, align 2, !tbaa !22
  %1050 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1047
  %1051 = load i32, ptr %1050, align 4, !tbaa !41
  %1052 = sext i32 %1051 to i64
  %1053 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %1052
  %1054 = load i16, ptr %1053, align 2, !tbaa !22
  %1055 = icmp ult i16 %1049, %1054
  br i1 %1055, label %1069, label %1056

1056:                                             ; preds = %1046
  %1057 = icmp eq i16 %1049, %1054
  br i1 %1057, label %1058, label %1063

1058:                                             ; preds = %1056
  %1059 = load i8, ptr %1011, align 1, !tbaa !22
  %1060 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1052
  %1061 = load i8, ptr %1060, align 1, !tbaa !22
  %1062 = icmp ugt i8 %1059, %1061
  br i1 %1062, label %1063, label %1069

1063:                                             ; preds = %1058, %1056
  %1064 = sext i32 %1018 to i64
  %1065 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1064
  store i32 %1051, ptr %1065, align 4, !tbaa !41
  %1066 = shl i32 %1048, 1
  %1067 = load i32, ptr %153, align 4, !tbaa !39
  %1068 = icmp sgt i32 %1066, %1067
  br i1 %1068, label %1069, label %1015, !llvm.loop !47

1069:                                             ; preds = %1063, %1058, %1046, %1005
  %1070 = phi i32 [ 1, %1005 ], [ %1018, %1046 ], [ %1018, %1058 ], [ %1048, %1063 ]
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1071
  store i32 %1009, ptr %1072, align 4, !tbaa !41
  %1073 = load i32, ptr %229, align 4, !tbaa !41
  %1074 = load i32, ptr %154, align 8, !tbaa !40
  %1075 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1074, i32 -1)
  %1076 = extractvalue { i32, i1 } %1075, 1, !nosanitize !26
  br i1 %1076, label %903, label %1077, !nosanitize !26

1077:                                             ; preds = %1069
  %1078 = extractvalue { i32, i1 } %1075, 0, !nosanitize !26
  store i32 %1078, ptr %154, align 8, !tbaa !40
  %1079 = sext i32 %1078 to i64
  %1080 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1079
  store i32 %1002, ptr %1080, align 4, !tbaa !41
  %1081 = load i32, ptr %154, align 8, !tbaa !40
  %1082 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1081, i32 -1)
  %1083 = extractvalue { i32, i1 } %1082, 1, !nosanitize !26
  br i1 %1083, label %903, label %1084, !nosanitize !26

1084:                                             ; preds = %1077
  %1085 = extractvalue { i32, i1 } %1082, 0, !nosanitize !26
  store i32 %1085, ptr %154, align 8, !tbaa !40
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1086
  store i32 %1073, ptr %1087, align 4, !tbaa !41
  %1088 = sext i32 %1002 to i64
  %1089 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %1088
  %1090 = load i16, ptr %1089, align 2, !tbaa !22
  %1091 = sext i32 %1073 to i64
  %1092 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %1091
  %1093 = load i16, ptr %1092, align 2, !tbaa !22
  %1094 = add i16 %1093, %1090
  %1095 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %1001
  store i16 %1094, ptr %1095, align 2, !tbaa !22
  %1096 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1088
  %1097 = load i8, ptr %1096, align 1, !tbaa !22
  %1098 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1091
  %1099 = load i8, ptr %1098, align 1, !tbaa !22
  %1100 = tail call i8 @llvm.umax.i8(i8 %1097, i8 %1099)
  %1101 = add i8 %1100, 1
  %1102 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1001
  store i8 %1101, ptr %1102, align 1, !tbaa !22
  %1103 = trunc i64 %1001 to i32
  %1104 = trunc i64 %1001 to i16
  %1105 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %1091, i32 1
  store i16 %1104, ptr %1105, align 2, !tbaa !22
  %1106 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %1088, i32 1
  store i16 %1104, ptr %1106, align 2, !tbaa !22
  %1107 = icmp eq i32 %1103, 2147483647
  br i1 %1107, label %874, label %1108, !nosanitize !26

1108:                                             ; preds = %1084
  %1109 = add nsw i64 %1001, 1
  store i32 %1103, ptr %229, align 4, !tbaa !41
  %1110 = load i32, ptr %153, align 4, !tbaa !39
  %1111 = icmp slt i32 %1110, 2
  br i1 %1111, label %1166, label %1112

1112:                                             ; preds = %1108, %1160
  %1113 = phi i32 [ %1164, %1160 ], [ %1110, %1108 ]
  %1114 = phi i32 [ %1163, %1160 ], [ 2, %1108 ]
  %1115 = phi i32 [ %1145, %1160 ], [ 1, %1108 ]
  %1116 = icmp slt i32 %1114, %1113
  br i1 %1116, label %1119, label %1117

1117:                                             ; preds = %1112
  %1118 = sext i32 %1114 to i64
  br label %1143

1119:                                             ; preds = %1112
  %1120 = or disjoint i32 %1114, 1
  %1121 = sext i32 %1120 to i64
  %1122 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1121
  %1123 = load i32, ptr %1122, align 4, !tbaa !41
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %1124
  %1126 = load i16, ptr %1125, align 2, !tbaa !22
  %1127 = sext i32 %1114 to i64
  %1128 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1127
  %1129 = load i32, ptr %1128, align 4, !tbaa !41
  %1130 = sext i32 %1129 to i64
  %1131 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %1130
  %1132 = load i16, ptr %1131, align 2, !tbaa !22
  %1133 = icmp ult i16 %1126, %1132
  br i1 %1133, label %1142, label %1134

1134:                                             ; preds = %1119
  %1135 = icmp eq i16 %1126, %1132
  br i1 %1135, label %1136, label %1143

1136:                                             ; preds = %1134
  %1137 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1124
  %1138 = load i8, ptr %1137, align 1, !tbaa !22
  %1139 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1130
  %1140 = load i8, ptr %1139, align 1, !tbaa !22
  %1141 = icmp ugt i8 %1138, %1140
  br i1 %1141, label %1143, label %1142

1142:                                             ; preds = %1136, %1119
  br label %1143

1143:                                             ; preds = %1142, %1136, %1134, %1117
  %1144 = phi i64 [ %1118, %1117 ], [ %1121, %1142 ], [ %1127, %1136 ], [ %1127, %1134 ]
  %1145 = phi i32 [ %1114, %1117 ], [ %1120, %1142 ], [ %1114, %1136 ], [ %1114, %1134 ]
  %1146 = load i16, ptr %1095, align 2, !tbaa !22
  %1147 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1144
  %1148 = load i32, ptr %1147, align 4, !tbaa !41
  %1149 = sext i32 %1148 to i64
  %1150 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %1149
  %1151 = load i16, ptr %1150, align 2, !tbaa !22
  %1152 = icmp ult i16 %1146, %1151
  br i1 %1152, label %1166, label %1153

1153:                                             ; preds = %1143
  %1154 = icmp eq i16 %1146, %1151
  br i1 %1154, label %1155, label %1160

1155:                                             ; preds = %1153
  %1156 = load i8, ptr %1102, align 1, !tbaa !22
  %1157 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1149
  %1158 = load i8, ptr %1157, align 1, !tbaa !22
  %1159 = icmp ugt i8 %1156, %1158
  br i1 %1159, label %1160, label %1166

1160:                                             ; preds = %1155, %1153
  %1161 = sext i32 %1115 to i64
  %1162 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1161
  store i32 %1148, ptr %1162, align 4, !tbaa !41
  %1163 = shl i32 %1145, 1
  %1164 = load i32, ptr %153, align 4, !tbaa !39
  %1165 = icmp sgt i32 %1163, %1164
  br i1 %1165, label %1166, label %1112, !llvm.loop !47

1166:                                             ; preds = %1160, %1155, %1143, %1108
  %1167 = phi i32 [ 1, %1108 ], [ %1115, %1143 ], [ %1115, %1155 ], [ %1145, %1160 ]
  %1168 = sext i32 %1167 to i64
  %1169 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1168
  store i32 %1103, ptr %1169, align 4, !tbaa !41
  %1170 = load i32, ptr %153, align 4, !tbaa !39
  %1171 = icmp sgt i32 %1170, 1
  br i1 %1171, label %999, label %1172, !llvm.loop !49

1172:                                             ; preds = %1166
  %1173 = load i32, ptr %154, align 8, !tbaa !40
  %1174 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1173, i32 -1)
  %1175 = extractvalue { i32, i1 } %1174, 1, !nosanitize !26
  br i1 %1175, label %903, label %1176, !nosanitize !26

1176:                                             ; preds = %1172
  %1177 = extractvalue { i32, i1 } %1174, 0, !nosanitize !26
  %1178 = load i32, ptr %229, align 4, !tbaa !41
  store i32 %1177, ptr %154, align 8, !tbaa !40
  %1179 = sext i32 %1177 to i64
  %1180 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1179
  store i32 %1178, ptr %1180, align 4, !tbaa !41
  %1181 = load ptr, ptr %845, align 8, !tbaa !34
  %1182 = load i32, ptr %921, align 8, !tbaa !46
  %1183 = load ptr, ptr %847, align 8, !tbaa !35
  %1184 = load ptr, ptr %1183, align 8, !tbaa !36
  %1185 = getelementptr inbounds %struct.static_tree_desc_s, ptr %1183, i64 0, i32 1
  %1186 = load ptr, ptr %1185, align 8, !tbaa !50
  %1187 = getelementptr inbounds %struct.static_tree_desc_s, ptr %1183, i64 0, i32 2
  %1188 = load i32, ptr %1187, align 8, !tbaa !51
  %1189 = getelementptr inbounds %struct.static_tree_desc_s, ptr %1183, i64 0, i32 4
  %1190 = load i32, ptr %1189, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %495, i8 0, i64 32, i1 false), !tbaa !53
  %1191 = load i32, ptr %154, align 8, !tbaa !40
  %1192 = sext i32 %1191 to i64
  %1193 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1192
  %1194 = load i32, ptr %1193, align 4, !tbaa !41
  %1195 = sext i32 %1194 to i64
  %1196 = getelementptr inbounds %struct.ct_data_s, ptr %1181, i64 %1195, i32 1
  store i16 0, ptr %1196, align 2, !tbaa !22
  %1197 = load i32, ptr %154, align 8, !tbaa !40
  %1198 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1197, i32 1), !nosanitize !26
  %1199 = extractvalue { i32, i1 } %1198, 1, !nosanitize !26
  br i1 %1199, label %1200, label %1201, !nosanitize !26

1200:                                             ; preds = %1271, %1265, %1256, %1249, %1224, %1303, %1369, %1176
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

1201:                                             ; preds = %1176
  %1202 = extractvalue { i32, i1 } %1198, 0
  %1203 = icmp slt i32 %1202, 573
  br i1 %1203, label %1204, label %1383

1204:                                             ; preds = %1201
  %1205 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %1206 = icmp eq ptr %1184, null
  %1207 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  %1208 = sext i32 %1202 to i64
  br label %1209

1209:                                             ; preds = %1280, %1204
  %1210 = phi i64 [ %1208, %1204 ], [ %1281, %1280 ]
  %1211 = phi i32 [ 0, %1204 ], [ %1231, %1280 ]
  %1212 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1210
  %1213 = load i32, ptr %1212, align 4, !tbaa !41
  %1214 = sext i32 %1213 to i64
  %1215 = getelementptr inbounds %struct.ct_data_s, ptr %1181, i64 %1214
  %1216 = getelementptr inbounds %struct.ct_data_s, ptr %1181, i64 %1214, i32 1
  %1217 = load i16, ptr %1216, align 2, !tbaa !22
  %1218 = zext i16 %1217 to i64
  %1219 = getelementptr inbounds %struct.ct_data_s, ptr %1181, i64 %1218, i32 1
  %1220 = load i16, ptr %1219, align 2, !tbaa !22
  %1221 = zext i16 %1220 to i32
  %1222 = add nuw nsw i32 %1221, 1
  %1223 = icmp sgt i32 %1190, %1221
  br i1 %1223, label %1229, label %1224

1224:                                             ; preds = %1209
  %1225 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1211, i32 1), !nosanitize !26
  %1226 = extractvalue { i32, i1 } %1225, 1, !nosanitize !26
  br i1 %1226, label %1200, label %1227, !nosanitize !26

1227:                                             ; preds = %1224
  %1228 = extractvalue { i32, i1 } %1225, 0, !nosanitize !26
  br label %1229

1229:                                             ; preds = %1227, %1209
  %1230 = phi i32 [ %1190, %1227 ], [ %1222, %1209 ]
  %1231 = phi i32 [ %1228, %1227 ], [ %1211, %1209 ]
  %1232 = trunc i32 %1230 to i16
  store i16 %1232, ptr %1216, align 2, !tbaa !22
  %1233 = icmp sgt i32 %1213, %1182
  br i1 %1233, label %1280, label %1234

1234:                                             ; preds = %1229
  %1235 = sext i32 %1230 to i64
  %1236 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %1235
  %1237 = load i16, ptr %1236, align 2, !tbaa !53
  %1238 = add i16 %1237, 1
  store i16 %1238, ptr %1236, align 2, !tbaa !53
  %1239 = icmp slt i32 %1213, %1188
  br i1 %1239, label %1249, label %1240

1240:                                             ; preds = %1234
  %1241 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1213, i32 %1188), !nosanitize !26
  %1242 = extractvalue { i32, i1 } %1241, 1, !nosanitize !26
  br i1 %1242, label %1243, label %1244, !nosanitize !26

1243:                                             ; preds = %1240, %1308, %1300, %1335, %1359, %1342, %1286
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

1244:                                             ; preds = %1240
  %1245 = extractvalue { i32, i1 } %1241, 0, !nosanitize !26
  %1246 = sext i32 %1245 to i64
  %1247 = getelementptr inbounds i32, ptr %1186, i64 %1246
  %1248 = load i32, ptr %1247, align 4, !tbaa !41
  br label %1249

1249:                                             ; preds = %1244, %1234
  %1250 = phi i32 [ %1248, %1244 ], [ 0, %1234 ]
  %1251 = load i16, ptr %1215, align 2, !tbaa !22
  %1252 = zext i16 %1251 to i64
  %1253 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1230, i32 %1250), !nosanitize !26
  %1254 = extractvalue { i32, i1 } %1253, 1, !nosanitize !26
  br i1 %1254, label %1200, label %1256, !nosanitize !26

1255:                                             ; preds = %1363
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !26
  unreachable, !nosanitize !26

1256:                                             ; preds = %1249
  %1257 = extractvalue { i32, i1 } %1253, 0, !nosanitize !26
  %1258 = zext i32 %1257 to i64
  %1259 = mul nuw nsw i64 %1258, %1252
  %1260 = load i64, ptr %1205, align 8, !tbaa !43
  %1261 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1260, i64 %1259), !nosanitize !26
  %1262 = extractvalue { i64, i1 } %1261, 1, !nosanitize !26
  br i1 %1262, label %1200, label %1263, !nosanitize !26

1263:                                             ; preds = %1256
  %1264 = extractvalue { i64, i1 } %1261, 0, !nosanitize !26
  store i64 %1264, ptr %1205, align 8, !tbaa !43
  br i1 %1206, label %1280, label %1265

1265:                                             ; preds = %1263
  %1266 = getelementptr inbounds %struct.ct_data_s, ptr %1184, i64 %1214, i32 1
  %1267 = load i16, ptr %1266, align 2, !tbaa !22
  %1268 = zext i16 %1267 to i32
  %1269 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1268, i32 %1250), !nosanitize !26
  %1270 = extractvalue { i32, i1 } %1269, 1, !nosanitize !26
  br i1 %1270, label %1200, label %1271, !nosanitize !26

1271:                                             ; preds = %1265
  %1272 = extractvalue { i32, i1 } %1269, 0, !nosanitize !26
  %1273 = zext i32 %1272 to i64
  %1274 = mul nuw nsw i64 %1273, %1252
  %1275 = load i64, ptr %1207, align 8, !tbaa !44
  %1276 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1275, i64 %1274), !nosanitize !26
  %1277 = extractvalue { i64, i1 } %1276, 1, !nosanitize !26
  br i1 %1277, label %1200, label %1278, !nosanitize !26

1278:                                             ; preds = %1271
  %1279 = extractvalue { i64, i1 } %1276, 0, !nosanitize !26
  store i64 %1279, ptr %1207, align 8, !tbaa !44
  br label %1280

1280:                                             ; preds = %1278, %1263, %1229
  %1281 = add nsw i64 %1210, 1
  %1282 = and i64 %1281, 4294967295
  %1283 = icmp eq i64 %1282, 573
  br i1 %1283, label %1284, label %1209, !llvm.loop !54

1284:                                             ; preds = %1280
  %1285 = icmp eq i32 %1231, 0
  br i1 %1285, label %1383, label %1286

1286:                                             ; preds = %1284
  %1287 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1190, i32 -1)
  %1288 = extractvalue { i32, i1 } %1287, 1, !nosanitize !26
  %1289 = sext i32 %1190 to i64
  %1290 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %1289
  br i1 %1288, label %1243, label %1291, !nosanitize !26

1291:                                             ; preds = %1286, %1318
  %1292 = phi i32 [ %1319, %1318 ], [ %1231, %1286 ]
  br label %1293

1293:                                             ; preds = %1300, %1291
  %1294 = phi { i32, i1 } [ %1301, %1300 ], [ %1287, %1291 ]
  %1295 = extractvalue { i32, i1 } %1294, 0
  %1296 = sext i32 %1295 to i64
  %1297 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %1296
  %1298 = load i16, ptr %1297, align 2, !tbaa !53
  %1299 = icmp eq i16 %1298, 0
  br i1 %1299, label %1300, label %1303

1300:                                             ; preds = %1293
  %1301 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1295, i32 -1)
  %1302 = extractvalue { i32, i1 } %1301, 1, !nosanitize !26
  br i1 %1302, label %1243, label %1293, !llvm.loop !55, !nosanitize !26

1303:                                             ; preds = %1293
  %1304 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %1296
  %1305 = add i16 %1298, -1
  store i16 %1305, ptr %1304, align 2, !tbaa !53
  %1306 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1295, i32 1), !nosanitize !26
  %1307 = extractvalue { i32, i1 } %1306, 1, !nosanitize !26
  br i1 %1307, label %1200, label %1308, !nosanitize !26

1308:                                             ; preds = %1303
  %1309 = extractvalue { i32, i1 } %1306, 0, !nosanitize !26
  %1310 = sext i32 %1309 to i64
  %1311 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %1310
  %1312 = load i16, ptr %1311, align 2, !tbaa !53
  %1313 = add i16 %1312, 2
  store i16 %1313, ptr %1311, align 2, !tbaa !53
  %1314 = load i16, ptr %1290, align 2, !tbaa !53
  %1315 = add i16 %1314, -1
  store i16 %1315, ptr %1290, align 2, !tbaa !53
  %1316 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1292, i32 -2)
  %1317 = extractvalue { i32, i1 } %1316, 1, !nosanitize !26
  br i1 %1317, label %1243, label %1318, !nosanitize !26

1318:                                             ; preds = %1308
  %1319 = extractvalue { i32, i1 } %1316, 0, !nosanitize !26
  %1320 = icmp sgt i32 %1319, 0
  br i1 %1320, label %1291, label %1321, !llvm.loop !56

1321:                                             ; preds = %1318
  %1322 = icmp eq i32 %1190, 0
  br i1 %1322, label %1383, label %1323

1323:                                             ; preds = %1321, %1379
  %1324 = phi i64 [ %1380, %1379 ], [ %1289, %1321 ]
  %1325 = phi i32 [ %1337, %1379 ], [ 573, %1321 ]
  %1326 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %1324
  %1327 = load i16, ptr %1326, align 2, !tbaa !53
  %1328 = icmp eq i16 %1327, 0
  br i1 %1328, label %1329, label %1331

1329:                                             ; preds = %1323
  %1330 = trunc i64 %1324 to i32
  br label %1335

1331:                                             ; preds = %1323
  %1332 = zext i16 %1327 to i32
  %1333 = trunc i64 %1324 to i32
  %1334 = trunc i64 %1324 to i16
  br label %1339

1335:                                             ; preds = %1376, %1329
  %1336 = phi i32 [ %1330, %1329 ], [ %1333, %1376 ]
  %1337 = phi i32 [ %1325, %1329 ], [ %1347, %1376 ]
  %1338 = icmp eq i32 %1336, -2147483648
  br i1 %1338, label %1243, label %1379, !nosanitize !26

1339:                                             ; preds = %1376, %1331
  %1340 = phi i32 [ %1325, %1331 ], [ %1347, %1376 ]
  %1341 = phi i32 [ %1332, %1331 ], [ %1377, %1376 ]
  br label %1342

1342:                                             ; preds = %1346, %1339
  %1343 = phi i32 [ %1347, %1346 ], [ %1340, %1339 ]
  %1344 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1343, i32 -1)
  %1345 = extractvalue { i32, i1 } %1344, 1, !nosanitize !26
  br i1 %1345, label %1243, label %1346, !nosanitize !26

1346:                                             ; preds = %1342
  %1347 = extractvalue { i32, i1 } %1344, 0, !nosanitize !26
  %1348 = sext i32 %1347 to i64
  %1349 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1348
  %1350 = load i32, ptr %1349, align 4, !tbaa !41
  %1351 = icmp sgt i32 %1350, %1182
  br i1 %1351, label %1342, label %1352, !llvm.loop !57

1352:                                             ; preds = %1346
  %1353 = sext i32 %1350 to i64
  %1354 = getelementptr inbounds %struct.ct_data_s, ptr %1181, i64 %1353
  %1355 = getelementptr inbounds %struct.ct_data_s, ptr %1181, i64 %1353, i32 1
  %1356 = load i16, ptr %1355, align 2, !tbaa !22
  %1357 = zext i16 %1356 to i32
  %1358 = icmp eq i32 %1333, %1357
  br i1 %1358, label %1376, label %1359

1359:                                             ; preds = %1352
  %1360 = zext i16 %1356 to i64
  %1361 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1324, i64 %1360), !nosanitize !26
  %1362 = extractvalue { i64, i1 } %1361, 1, !nosanitize !26
  br i1 %1362, label %1243, label %1363, !nosanitize !26

1363:                                             ; preds = %1359
  %1364 = extractvalue { i64, i1 } %1361, 0, !nosanitize !26
  %1365 = load i16, ptr %1354, align 2, !tbaa !22
  %1366 = zext i16 %1365 to i64
  %1367 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1364, i64 %1366), !nosanitize !26
  %1368 = extractvalue { i64, i1 } %1367, 1, !nosanitize !26
  br i1 %1368, label %1255, label %1369, !nosanitize !26

1369:                                             ; preds = %1363
  %1370 = extractvalue { i64, i1 } %1367, 0, !nosanitize !26
  %1371 = load i64, ptr %1205, align 8, !tbaa !43
  %1372 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1371, i64 %1370), !nosanitize !26
  %1373 = extractvalue { i64, i1 } %1372, 1, !nosanitize !26
  br i1 %1373, label %1200, label %1374, !nosanitize !26

1374:                                             ; preds = %1369
  %1375 = extractvalue { i64, i1 } %1372, 0, !nosanitize !26
  store i64 %1375, ptr %1205, align 8, !tbaa !43
  store i16 %1334, ptr %1355, align 2, !tbaa !22
  br label %1376

1376:                                             ; preds = %1374, %1352
  %1377 = add nsw i32 %1341, -1
  %1378 = icmp eq i32 %1377, 0
  br i1 %1378, label %1335, label %1339, !llvm.loop !57

1379:                                             ; preds = %1335
  %1380 = add nsw i64 %1324, -1
  %1381 = and i64 %1380, 4294967295
  %1382 = icmp eq i64 %1381, 0
  br i1 %1382, label %1383, label %1323, !llvm.loop !58

1383:                                             ; preds = %1379, %1321, %1284, %1201
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  %1384 = load i16, ptr %495, align 2, !tbaa !53
  %1385 = zext i16 %1384 to i32
  %1386 = shl nuw nsw i32 %1385, 1
  %1387 = trunc i32 %1386 to i16
  %1388 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 1
  store i16 %1387, ptr %1388, align 2, !tbaa !53
  %1389 = load i16, ptr %694, align 2, !tbaa !53
  %1390 = zext i16 %1389 to i32
  %1391 = add nuw nsw i32 %1386, %1390
  %1392 = shl nuw nsw i32 %1391, 1
  %1393 = trunc i32 %1392 to i16
  %1394 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 2
  store i16 %1393, ptr %1394, align 4, !tbaa !53
  %1395 = load i16, ptr %701, align 2, !tbaa !53
  %1396 = zext i16 %1395 to i32
  %1397 = add nuw nsw i32 %1392, %1396
  %1398 = shl nuw nsw i32 %1397, 1
  %1399 = trunc i32 %1398 to i16
  %1400 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 3
  store i16 %1399, ptr %1400, align 2, !tbaa !53
  %1401 = load i16, ptr %708, align 2, !tbaa !53
  %1402 = zext i16 %1401 to i32
  %1403 = add nuw nsw i32 %1398, %1402
  %1404 = shl nuw nsw i32 %1403, 1
  %1405 = trunc i32 %1404 to i16
  %1406 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 4
  store i16 %1405, ptr %1406, align 8, !tbaa !53
  %1407 = load i16, ptr %715, align 2, !tbaa !53
  %1408 = zext i16 %1407 to i32
  %1409 = add nuw nsw i32 %1404, %1408
  %1410 = shl nuw nsw i32 %1409, 1
  %1411 = trunc i32 %1410 to i16
  %1412 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 5
  store i16 %1411, ptr %1412, align 2, !tbaa !53
  %1413 = load i16, ptr %722, align 2, !tbaa !53
  %1414 = zext i16 %1413 to i32
  %1415 = add nuw nsw i32 %1410, %1414
  %1416 = shl nuw nsw i32 %1415, 1
  %1417 = trunc i32 %1416 to i16
  %1418 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 6
  store i16 %1417, ptr %1418, align 4, !tbaa !53
  %1419 = load i16, ptr %729, align 2, !tbaa !53
  %1420 = zext i16 %1419 to i32
  %1421 = add nuw nsw i32 %1416, %1420
  %1422 = shl nuw nsw i32 %1421, 1
  %1423 = trunc i32 %1422 to i16
  %1424 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 7
  store i16 %1423, ptr %1424, align 2, !tbaa !53
  %1425 = load i16, ptr %736, align 2, !tbaa !53
  %1426 = zext i16 %1425 to i32
  %1427 = add nuw nsw i32 %1422, %1426
  %1428 = shl nuw nsw i32 %1427, 1
  %1429 = trunc i32 %1428 to i16
  %1430 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 8
  store i16 %1429, ptr %1430, align 16, !tbaa !53
  %1431 = load i16, ptr %743, align 2, !tbaa !53
  %1432 = zext i16 %1431 to i32
  %1433 = add nuw nsw i32 %1428, %1432
  %1434 = shl nuw nsw i32 %1433, 1
  %1435 = trunc i32 %1434 to i16
  %1436 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 9
  store i16 %1435, ptr %1436, align 2, !tbaa !53
  %1437 = load i16, ptr %750, align 2, !tbaa !53
  %1438 = zext i16 %1437 to i32
  %1439 = add nuw nsw i32 %1434, %1438
  %1440 = shl nuw nsw i32 %1439, 1
  %1441 = trunc i32 %1440 to i16
  %1442 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 10
  store i16 %1441, ptr %1442, align 4, !tbaa !53
  %1443 = load i16, ptr %757, align 2, !tbaa !53
  %1444 = trunc i32 %1440 to i16
  %1445 = add i16 %1443, %1444
  %1446 = shl i16 %1445, 1
  %1447 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 11
  store i16 %1446, ptr %1447, align 2, !tbaa !53
  %1448 = load i16, ptr %763, align 2, !tbaa !53
  %1449 = add i16 %1448, %1446
  %1450 = shl i16 %1449, 1
  %1451 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 12
  store i16 %1450, ptr %1451, align 8, !tbaa !53
  %1452 = load i16, ptr %768, align 2, !tbaa !53
  %1453 = add i16 %1450, %1452
  %1454 = shl i16 %1453, 1
  %1455 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 13
  store i16 %1454, ptr %1455, align 2, !tbaa !53
  %1456 = load i16, ptr %773, align 2, !tbaa !53
  %1457 = add i16 %1454, %1456
  %1458 = shl i16 %1457, 1
  %1459 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 14
  store i16 %1458, ptr %1459, align 4, !tbaa !53
  %1460 = load i16, ptr %778, align 2, !tbaa !53
  %1461 = add i16 %1458, %1460
  %1462 = shl i16 %1461, 1
  %1463 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 15
  store i16 %1462, ptr %1463, align 2, !tbaa !53
  %1464 = icmp slt i32 %919, 0
  br i1 %1464, label %1525, label %1466

1465:                                             ; preds = %1519
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

1466:                                             ; preds = %1383, %1521
  %1467 = phi i64 [ %1522, %1521 ], [ 0, %1383 ]
  %1468 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %1467, i32 1
  %1469 = load i16, ptr %1468, align 2, !tbaa !22
  %1470 = icmp eq i16 %1469, 0
  br i1 %1470, label %1519, label %1471

1471:                                             ; preds = %1466
  %1472 = zext i16 %1469 to i32
  %1473 = zext i16 %1469 to i64
  %1474 = getelementptr inbounds [16 x i16], ptr %6, i64 0, i64 %1473
  %1475 = load i16, ptr %1474, align 2, !tbaa !53
  %1476 = add i16 %1475, 1
  store i16 %1476, ptr %1474, align 2, !tbaa !53
  %1477 = and i32 %1472, 3
  %1478 = icmp ult i16 %1469, 4
  br i1 %1478, label %1501, label %1479

1479:                                             ; preds = %1471
  %1480 = and i32 %1472, 65532
  br label %1481

1481:                                             ; preds = %1481, %1479
  %1482 = phi i16 [ %1475, %1479 ], [ %1498, %1481 ]
  %1483 = phi i16 [ 0, %1479 ], [ %1497, %1481 ]
  %1484 = phi i32 [ 0, %1479 ], [ %1499, %1481 ]
  %1485 = and i16 %1482, 1
  %1486 = or disjoint i16 %1483, %1485
  %1487 = lshr i16 %1482, 2
  %1488 = shl i16 %1486, 2
  %1489 = and i16 %1482, 2
  %1490 = or disjoint i16 %1488, %1489
  %1491 = and i16 %1487, 1
  %1492 = or disjoint i16 %1490, %1491
  %1493 = shl i16 %1492, 1
  %1494 = lshr i16 %1482, 3
  %1495 = and i16 %1494, 1
  %1496 = or disjoint i16 %1493, %1495
  %1497 = shl i16 %1496, 1
  %1498 = lshr i16 %1482, 4
  %1499 = add i32 %1484, 4
  %1500 = icmp eq i32 %1499, %1480
  br i1 %1500, label %1501, label %1481, !llvm.loop !59

1501:                                             ; preds = %1481, %1471
  %1502 = phi i16 [ undef, %1471 ], [ %1496, %1481 ]
  %1503 = phi i16 [ %1475, %1471 ], [ %1498, %1481 ]
  %1504 = phi i16 [ 0, %1471 ], [ %1497, %1481 ]
  %1505 = icmp eq i32 %1477, 0
  br i1 %1505, label %1516, label %1506

1506:                                             ; preds = %1501, %1506
  %1507 = phi i16 [ %1513, %1506 ], [ %1503, %1501 ]
  %1508 = phi i16 [ %1512, %1506 ], [ %1504, %1501 ]
  %1509 = phi i32 [ %1514, %1506 ], [ 0, %1501 ]
  %1510 = and i16 %1507, 1
  %1511 = or disjoint i16 %1508, %1510
  %1512 = shl i16 %1511, 1
  %1513 = lshr i16 %1507, 1
  %1514 = add i32 %1509, 1
  %1515 = icmp eq i32 %1514, %1477
  br i1 %1515, label %1516, label %1506, !llvm.loop !63

1516:                                             ; preds = %1506, %1501
  %1517 = phi i16 [ %1502, %1501 ], [ %1511, %1506 ]
  %1518 = getelementptr inbounds %struct.ct_data_s, ptr %846, i64 %1467
  store i16 %1517, ptr %1518, align 2, !tbaa !22
  br label %1519

1519:                                             ; preds = %1516, %1466
  %1520 = icmp eq i64 %1467, 2147483647
  br i1 %1520, label %1465, label %1521, !nosanitize !26

1521:                                             ; preds = %1519
  %1522 = add nuw nsw i64 %1467, 1
  %1523 = trunc i64 %1522 to i32
  %1524 = icmp slt i32 %919, %1523
  br i1 %1524, label %1525, label %1466, !llvm.loop !62

1525:                                             ; preds = %1521, %1383
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  %1526 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37
  %1527 = load i32, ptr %224, align 8, !tbaa !64
  %1528 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1527, i32 1), !nosanitize !26
  %1529 = extractvalue { i32, i1 } %1528, 1, !nosanitize !26
  br i1 %1529, label %1530, label %1531, !nosanitize !26

1530:                                             ; preds = %1546, %1525
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

1531:                                             ; preds = %1525
  %1532 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 0, i32 1
  %1533 = load i16, ptr %1532, align 2, !tbaa !22
  %1534 = extractvalue { i32, i1 } %1528, 0, !nosanitize !26
  %1535 = sext i32 %1534 to i64
  %1536 = getelementptr inbounds %struct.ct_data_s, ptr %1526, i64 %1535, i32 1
  store i16 -1, ptr %1536, align 2, !tbaa !22
  %1537 = icmp slt i32 %1527, 0
  br i1 %1537, label %1604, label %1538

1538:                                             ; preds = %1531
  %1539 = zext i16 %1533 to i32
  %1540 = icmp eq i16 %1533, 0
  %1541 = select i1 %1540, i32 138, i32 7
  %1542 = select i1 %1540, i32 3, i32 4
  %1543 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  %1544 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  %1545 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  br label %1546

1546:                                             ; preds = %1598, %1538
  %1547 = phi i32 [ %1542, %1538 ], [ %1602, %1598 ]
  %1548 = phi i32 [ %1541, %1538 ], [ %1601, %1598 ]
  %1549 = phi i32 [ 0, %1538 ], [ %1600, %1598 ]
  %1550 = phi i32 [ %1539, %1538 ], [ %1560, %1598 ]
  %1551 = phi i32 [ 0, %1538 ], [ %1554, %1598 ]
  %1552 = phi i32 [ -1, %1538 ], [ %1599, %1598 ]
  %1553 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1551, i32 1), !nosanitize !26
  %1554 = extractvalue { i32, i1 } %1553, 0, !nosanitize !26
  %1555 = extractvalue { i32, i1 } %1553, 1, !nosanitize !26
  br i1 %1555, label %1530, label %1556, !nosanitize !26

1556:                                             ; preds = %1546
  %1557 = sext i32 %1554 to i64
  %1558 = getelementptr inbounds %struct.ct_data_s, ptr %1526, i64 %1557, i32 1
  %1559 = load i16, ptr %1558, align 2, !tbaa !22
  %1560 = zext i16 %1559 to i32
  %1561 = add nsw i32 %1549, 1
  %1562 = icmp slt i32 %1561, %1548
  %1563 = icmp eq i32 %1550, %1560
  %1564 = select i1 %1562, i1 %1563, i1 false
  br i1 %1564, label %1598, label %1565

1565:                                             ; preds = %1556
  %1566 = icmp slt i32 %1561, %1547
  br i1 %1566, label %1567, label %1573

1567:                                             ; preds = %1565
  %1568 = zext nneg i32 %1550 to i64
  %1569 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %1568
  %1570 = load i16, ptr %1569, align 4, !tbaa !22
  %1571 = trunc i32 %1561 to i16
  %1572 = add i16 %1570, %1571
  store i16 %1572, ptr %1569, align 4, !tbaa !22
  br label %1593

1573:                                             ; preds = %1565
  %1574 = icmp eq i32 %1550, 0
  br i1 %1574, label %1585, label %1575

1575:                                             ; preds = %1573
  %1576 = icmp eq i32 %1550, %1552
  br i1 %1576, label %1582, label %1577

1577:                                             ; preds = %1575
  %1578 = zext nneg i32 %1550 to i64
  %1579 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %1578
  %1580 = load i16, ptr %1579, align 4, !tbaa !22
  %1581 = add i16 %1580, 1
  store i16 %1581, ptr %1579, align 4, !tbaa !22
  br label %1582

1582:                                             ; preds = %1577, %1575
  %1583 = load i16, ptr %1543, align 4, !tbaa !22
  %1584 = add i16 %1583, 1
  store i16 %1584, ptr %1543, align 4, !tbaa !22
  br label %1593

1585:                                             ; preds = %1573
  %1586 = icmp slt i32 %1549, 10
  br i1 %1586, label %1587, label %1590

1587:                                             ; preds = %1585
  %1588 = load i16, ptr %1545, align 4, !tbaa !22
  %1589 = add i16 %1588, 1
  store i16 %1589, ptr %1545, align 4, !tbaa !22
  br label %1593

1590:                                             ; preds = %1585
  %1591 = load i16, ptr %1544, align 4, !tbaa !22
  %1592 = add i16 %1591, 1
  store i16 %1592, ptr %1544, align 4, !tbaa !22
  br label %1593

1593:                                             ; preds = %1590, %1587, %1582, %1567
  %1594 = icmp eq i16 %1559, 0
  br i1 %1594, label %1598, label %1595

1595:                                             ; preds = %1593
  %1596 = select i1 %1563, i32 6, i32 7
  %1597 = select i1 %1563, i32 3, i32 4
  br label %1598

1598:                                             ; preds = %1595, %1593, %1556
  %1599 = phi i32 [ %1552, %1556 ], [ %1550, %1593 ], [ %1550, %1595 ]
  %1600 = phi i32 [ %1561, %1556 ], [ 0, %1593 ], [ 0, %1595 ]
  %1601 = phi i32 [ %1548, %1556 ], [ 138, %1593 ], [ %1596, %1595 ]
  %1602 = phi i32 [ %1547, %1556 ], [ 3, %1593 ], [ %1597, %1595 ]
  %1603 = icmp sgt i32 %1554, %1527
  br i1 %1603, label %1604, label %1546, !llvm.loop !65

1604:                                             ; preds = %1598, %1531
  %1605 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  %1606 = load i32, ptr %921, align 8, !tbaa !66
  %1607 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1606, i32 1), !nosanitize !26
  %1608 = extractvalue { i32, i1 } %1607, 1, !nosanitize !26
  br i1 %1608, label %1609, label %1610, !nosanitize !26

1609:                                             ; preds = %1625, %1604
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

1610:                                             ; preds = %1604
  %1611 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 0, i32 1
  %1612 = load i16, ptr %1611, align 2, !tbaa !22
  %1613 = extractvalue { i32, i1 } %1607, 0, !nosanitize !26
  %1614 = sext i32 %1613 to i64
  %1615 = getelementptr inbounds %struct.ct_data_s, ptr %1605, i64 %1614, i32 1
  store i16 -1, ptr %1615, align 2, !tbaa !22
  %1616 = icmp slt i32 %1606, 0
  br i1 %1616, label %1683, label %1617

1617:                                             ; preds = %1610
  %1618 = zext i16 %1612 to i32
  %1619 = icmp eq i16 %1612, 0
  %1620 = select i1 %1619, i32 138, i32 7
  %1621 = select i1 %1619, i32 3, i32 4
  %1622 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  %1623 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  %1624 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  br label %1625

1625:                                             ; preds = %1677, %1617
  %1626 = phi i32 [ %1621, %1617 ], [ %1681, %1677 ]
  %1627 = phi i32 [ %1620, %1617 ], [ %1680, %1677 ]
  %1628 = phi i32 [ 0, %1617 ], [ %1679, %1677 ]
  %1629 = phi i32 [ %1618, %1617 ], [ %1639, %1677 ]
  %1630 = phi i32 [ 0, %1617 ], [ %1633, %1677 ]
  %1631 = phi i32 [ -1, %1617 ], [ %1678, %1677 ]
  %1632 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1630, i32 1), !nosanitize !26
  %1633 = extractvalue { i32, i1 } %1632, 0, !nosanitize !26
  %1634 = extractvalue { i32, i1 } %1632, 1, !nosanitize !26
  br i1 %1634, label %1609, label %1635, !nosanitize !26

1635:                                             ; preds = %1625
  %1636 = sext i32 %1633 to i64
  %1637 = getelementptr inbounds %struct.ct_data_s, ptr %1605, i64 %1636, i32 1
  %1638 = load i16, ptr %1637, align 2, !tbaa !22
  %1639 = zext i16 %1638 to i32
  %1640 = add nsw i32 %1628, 1
  %1641 = icmp slt i32 %1640, %1627
  %1642 = icmp eq i32 %1629, %1639
  %1643 = select i1 %1641, i1 %1642, i1 false
  br i1 %1643, label %1677, label %1644

1644:                                             ; preds = %1635
  %1645 = icmp slt i32 %1640, %1626
  br i1 %1645, label %1646, label %1652

1646:                                             ; preds = %1644
  %1647 = zext nneg i32 %1629 to i64
  %1648 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %1647
  %1649 = load i16, ptr %1648, align 4, !tbaa !22
  %1650 = trunc i32 %1640 to i16
  %1651 = add i16 %1649, %1650
  store i16 %1651, ptr %1648, align 4, !tbaa !22
  br label %1672

1652:                                             ; preds = %1644
  %1653 = icmp eq i32 %1629, 0
  br i1 %1653, label %1664, label %1654

1654:                                             ; preds = %1652
  %1655 = icmp eq i32 %1629, %1631
  br i1 %1655, label %1661, label %1656

1656:                                             ; preds = %1654
  %1657 = zext nneg i32 %1629 to i64
  %1658 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %1657
  %1659 = load i16, ptr %1658, align 4, !tbaa !22
  %1660 = add i16 %1659, 1
  store i16 %1660, ptr %1658, align 4, !tbaa !22
  br label %1661

1661:                                             ; preds = %1656, %1654
  %1662 = load i16, ptr %1622, align 4, !tbaa !22
  %1663 = add i16 %1662, 1
  store i16 %1663, ptr %1622, align 4, !tbaa !22
  br label %1672

1664:                                             ; preds = %1652
  %1665 = icmp slt i32 %1628, 10
  br i1 %1665, label %1666, label %1669

1666:                                             ; preds = %1664
  %1667 = load i16, ptr %1624, align 4, !tbaa !22
  %1668 = add i16 %1667, 1
  store i16 %1668, ptr %1624, align 4, !tbaa !22
  br label %1672

1669:                                             ; preds = %1664
  %1670 = load i16, ptr %1623, align 4, !tbaa !22
  %1671 = add i16 %1670, 1
  store i16 %1671, ptr %1623, align 4, !tbaa !22
  br label %1672

1672:                                             ; preds = %1669, %1666, %1661, %1646
  %1673 = icmp eq i16 %1638, 0
  br i1 %1673, label %1677, label %1674

1674:                                             ; preds = %1672
  %1675 = select i1 %1642, i32 6, i32 7
  %1676 = select i1 %1642, i32 3, i32 4
  br label %1677

1677:                                             ; preds = %1674, %1672, %1635
  %1678 = phi i32 [ %1631, %1635 ], [ %1629, %1672 ], [ %1629, %1674 ]
  %1679 = phi i32 [ %1640, %1635 ], [ 0, %1672 ], [ 0, %1674 ]
  %1680 = phi i32 [ %1627, %1635 ], [ 138, %1672 ], [ %1675, %1674 ]
  %1681 = phi i32 [ %1626, %1635 ], [ 3, %1672 ], [ %1676, %1674 ]
  %1682 = icmp sgt i32 %1633, %1606
  br i1 %1682, label %1683, label %1625, !llvm.loop !65

1683:                                             ; preds = %1677, %1610
  %1684 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42
  %1685 = load ptr, ptr %1684, align 8, !tbaa !34
  %1686 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i32 2
  %1687 = load ptr, ptr %1686, align 8, !tbaa !35
  %1688 = load ptr, ptr %1687, align 8, !tbaa !36
  %1689 = getelementptr inbounds %struct.static_tree_desc_s, ptr %1687, i64 0, i32 3
  %1690 = load i32, ptr %1689, align 4, !tbaa !38
  store i32 0, ptr %153, align 4, !tbaa !39
  store i32 573, ptr %154, align 8, !tbaa !40
  %1691 = icmp sgt i32 %1690, 0
  br i1 %1691, label %1692, label %1697

1692:                                             ; preds = %1683
  %1693 = zext nneg i32 %1690 to i64
  br label %1703

1694:                                             ; preds = %1722
  %1695 = load i32, ptr %153, align 4, !tbaa !39
  %1696 = icmp slt i32 %1695, 2
  br i1 %1696, label %1697, label %1757

1697:                                             ; preds = %1694, %1683
  %1698 = phi i32 [ %1723, %1694 ], [ -1, %1683 ]
  %1699 = phi i32 [ %1695, %1694 ], [ 0, %1683 ]
  %1700 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %1701 = icmp eq ptr %1688, null
  %1702 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  br label %1726

1703:                                             ; preds = %1722, %1692
  %1704 = phi i64 [ 0, %1692 ], [ %1724, %1722 ]
  %1705 = phi i32 [ -1, %1692 ], [ %1723, %1722 ]
  %1706 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1704
  %1707 = load i16, ptr %1706, align 2, !tbaa !22
  %1708 = icmp eq i16 %1707, 0
  br i1 %1708, label %1720, label %1709

1709:                                             ; preds = %1703
  %1710 = load i32, ptr %153, align 4, !tbaa !39
  %1711 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1710, i32 1), !nosanitize !26
  %1712 = extractvalue { i32, i1 } %1711, 1, !nosanitize !26
  br i1 %1712, label %1713, label %1714, !nosanitize !26

1713:                                             ; preds = %1709, %1923
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

1714:                                             ; preds = %1709
  %1715 = extractvalue { i32, i1 } %1711, 0, !nosanitize !26
  store i32 %1715, ptr %153, align 4, !tbaa !39
  %1716 = sext i32 %1715 to i64
  %1717 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1716
  %1718 = trunc i64 %1704 to i32
  store i32 %1718, ptr %1717, align 4, !tbaa !41
  %1719 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1704
  store i8 0, ptr %1719, align 1, !tbaa !22
  br label %1722

1720:                                             ; preds = %1703
  %1721 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1704, i32 1
  store i16 0, ptr %1721, align 2, !tbaa !22
  br label %1722

1722:                                             ; preds = %1720, %1714
  %1723 = phi i32 [ %1718, %1714 ], [ %1705, %1720 ]
  %1724 = add nuw nsw i64 %1704, 1
  %1725 = icmp eq i64 %1724, %1693
  br i1 %1725, label %1694, label %1703, !llvm.loop !42

1726:                                             ; preds = %1754, %1697
  %1727 = phi i32 [ %1699, %1697 ], [ %1755, %1754 ]
  %1728 = phi i32 [ %1698, %1697 ], [ %1731, %1754 ]
  %1729 = icmp slt i32 %1728, 2
  %1730 = add i32 %1728, 1
  %1731 = select i1 %1729, i32 %1730, i32 %1728
  %1732 = add nsw i32 %1727, 1
  %1733 = select i1 %1729, i32 %1730, i32 0
  store i32 %1732, ptr %153, align 4, !tbaa !39
  %1734 = sext i32 %1732 to i64
  %1735 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1734
  store i32 %1733, ptr %1735, align 4, !tbaa !41
  %1736 = sext i32 %1733 to i64
  %1737 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1736
  store i16 1, ptr %1737, align 2, !tbaa !22
  %1738 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1736
  store i8 0, ptr %1738, align 1, !tbaa !22
  %1739 = load i64, ptr %1700, align 8, !tbaa !43
  %1740 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1739, i64 1), !nosanitize !26
  %1741 = extractvalue { i64, i1 } %1740, 1, !nosanitize !26
  br i1 %1741, label %1742, label %1743, !nosanitize !26

1742:                                             ; preds = %1745, %1726, %1916, %1908, %1838, %2011
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

1743:                                             ; preds = %1726
  %1744 = extractvalue { i64, i1 } %1740, 0, !nosanitize !26
  store i64 %1744, ptr %1700, align 8, !tbaa !43
  br i1 %1701, label %1754, label %1745

1745:                                             ; preds = %1743
  %1746 = getelementptr inbounds %struct.ct_data_s, ptr %1688, i64 %1736, i32 1
  %1747 = load i16, ptr %1746, align 2, !tbaa !22
  %1748 = zext i16 %1747 to i64
  %1749 = load i64, ptr %1702, align 8, !tbaa !44
  %1750 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1749, i64 %1748), !nosanitize !26
  %1751 = extractvalue { i64, i1 } %1750, 1, !nosanitize !26
  br i1 %1751, label %1742, label %1752, !nosanitize !26

1752:                                             ; preds = %1745
  %1753 = extractvalue { i64, i1 } %1750, 0, !nosanitize !26
  store i64 %1753, ptr %1702, align 8, !tbaa !44
  br label %1754

1754:                                             ; preds = %1752, %1743
  %1755 = load i32, ptr %153, align 4, !tbaa !39
  %1756 = icmp slt i32 %1755, 2
  br i1 %1756, label %1726, label %1757, !llvm.loop !45

1757:                                             ; preds = %1754, %1694
  %1758 = phi i32 [ %1723, %1694 ], [ %1731, %1754 ]
  %1759 = phi i32 [ %1695, %1694 ], [ %1755, %1754 ]
  %1760 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i32 1
  store i32 %1758, ptr %1760, align 8, !tbaa !46
  %1761 = lshr i32 %1759, 1
  %1762 = zext nneg i32 %1761 to i64
  br label %1766

1763:                                             ; preds = %1832
  %1764 = load i32, ptr %153, align 4, !tbaa !39
  %1765 = sext i32 %1690 to i64
  br label %1838

1766:                                             ; preds = %1832, %1757
  %1767 = phi i64 [ %1762, %1757 ], [ %1836, %1832 ]
  %1768 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1767
  %1769 = load i32, ptr %1768, align 4, !tbaa !41
  %1770 = sext i32 %1769 to i64
  %1771 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1770
  %1772 = trunc i64 %1767 to i32
  %1773 = shl nuw i32 %1772, 1
  %1774 = load i32, ptr %153, align 4, !tbaa !39
  %1775 = icmp sgt i32 %1773, %1774
  br i1 %1775, label %1832, label %1776

1776:                                             ; preds = %1766
  %1777 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1770
  br label %1778

1778:                                             ; preds = %1826, %1776
  %1779 = phi i32 [ %1774, %1776 ], [ %1830, %1826 ]
  %1780 = phi i32 [ %1773, %1776 ], [ %1829, %1826 ]
  %1781 = phi i32 [ %1772, %1776 ], [ %1811, %1826 ]
  %1782 = icmp slt i32 %1780, %1779
  br i1 %1782, label %1785, label %1783

1783:                                             ; preds = %1778
  %1784 = sext i32 %1780 to i64
  br label %1809

1785:                                             ; preds = %1778
  %1786 = or disjoint i32 %1780, 1
  %1787 = sext i32 %1786 to i64
  %1788 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1787
  %1789 = load i32, ptr %1788, align 4, !tbaa !41
  %1790 = sext i32 %1789 to i64
  %1791 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1790
  %1792 = load i16, ptr %1791, align 2, !tbaa !22
  %1793 = sext i32 %1780 to i64
  %1794 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1793
  %1795 = load i32, ptr %1794, align 4, !tbaa !41
  %1796 = sext i32 %1795 to i64
  %1797 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1796
  %1798 = load i16, ptr %1797, align 2, !tbaa !22
  %1799 = icmp ult i16 %1792, %1798
  br i1 %1799, label %1808, label %1800

1800:                                             ; preds = %1785
  %1801 = icmp eq i16 %1792, %1798
  br i1 %1801, label %1802, label %1809

1802:                                             ; preds = %1800
  %1803 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1790
  %1804 = load i8, ptr %1803, align 1, !tbaa !22
  %1805 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1796
  %1806 = load i8, ptr %1805, align 1, !tbaa !22
  %1807 = icmp ugt i8 %1804, %1806
  br i1 %1807, label %1809, label %1808

1808:                                             ; preds = %1802, %1785
  br label %1809

1809:                                             ; preds = %1808, %1802, %1800, %1783
  %1810 = phi i64 [ %1784, %1783 ], [ %1787, %1808 ], [ %1793, %1802 ], [ %1793, %1800 ]
  %1811 = phi i32 [ %1780, %1783 ], [ %1786, %1808 ], [ %1780, %1802 ], [ %1780, %1800 ]
  %1812 = load i16, ptr %1777, align 2, !tbaa !22
  %1813 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1810
  %1814 = load i32, ptr %1813, align 4, !tbaa !41
  %1815 = sext i32 %1814 to i64
  %1816 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1815
  %1817 = load i16, ptr %1816, align 2, !tbaa !22
  %1818 = icmp ult i16 %1812, %1817
  br i1 %1818, label %1832, label %1819

1819:                                             ; preds = %1809
  %1820 = icmp eq i16 %1812, %1817
  br i1 %1820, label %1821, label %1826

1821:                                             ; preds = %1819
  %1822 = load i8, ptr %1771, align 1, !tbaa !22
  %1823 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1815
  %1824 = load i8, ptr %1823, align 1, !tbaa !22
  %1825 = icmp ugt i8 %1822, %1824
  br i1 %1825, label %1826, label %1832

1826:                                             ; preds = %1821, %1819
  %1827 = sext i32 %1781 to i64
  %1828 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1827
  store i32 %1814, ptr %1828, align 4, !tbaa !41
  %1829 = shl i32 %1811, 1
  %1830 = load i32, ptr %153, align 4, !tbaa !39
  %1831 = icmp sgt i32 %1829, %1830
  br i1 %1831, label %1832, label %1778, !llvm.loop !47

1832:                                             ; preds = %1826, %1821, %1809, %1766
  %1833 = phi i32 [ %1772, %1766 ], [ %1811, %1826 ], [ %1781, %1821 ], [ %1781, %1809 ]
  %1834 = sext i32 %1833 to i64
  %1835 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1834
  store i32 %1769, ptr %1835, align 4, !tbaa !41
  %1836 = add nsw i64 %1767, -1
  %1837 = icmp sgt i64 %1767, 1
  br i1 %1837, label %1766, label %1763, !llvm.loop !48

1838:                                             ; preds = %2005, %1763
  %1839 = phi i32 [ %1764, %1763 ], [ %2009, %2005 ]
  %1840 = phi i64 [ %1765, %1763 ], [ %1948, %2005 ]
  %1841 = load i32, ptr %229, align 4, !tbaa !41
  %1842 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1839, i32 -1)
  %1843 = extractvalue { i32, i1 } %1842, 1, !nosanitize !26
  br i1 %1843, label %1742, label %1844, !nosanitize !26

1844:                                             ; preds = %1838
  %1845 = extractvalue { i32, i1 } %1842, 0, !nosanitize !26
  store i32 %1845, ptr %153, align 4, !tbaa !39
  %1846 = sext i32 %1839 to i64
  %1847 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1846
  %1848 = load i32, ptr %1847, align 4, !tbaa !41
  store i32 %1848, ptr %229, align 4, !tbaa !41
  %1849 = sext i32 %1848 to i64
  %1850 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1849
  %1851 = icmp slt i32 %1845, 2
  br i1 %1851, label %1908, label %1852

1852:                                             ; preds = %1844
  %1853 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1849
  br label %1854

1854:                                             ; preds = %1902, %1852
  %1855 = phi i32 [ %1845, %1852 ], [ %1906, %1902 ]
  %1856 = phi i32 [ 2, %1852 ], [ %1905, %1902 ]
  %1857 = phi i32 [ 1, %1852 ], [ %1887, %1902 ]
  %1858 = icmp slt i32 %1856, %1855
  br i1 %1858, label %1861, label %1859

1859:                                             ; preds = %1854
  %1860 = sext i32 %1856 to i64
  br label %1885

1861:                                             ; preds = %1854
  %1862 = or disjoint i32 %1856, 1
  %1863 = sext i32 %1862 to i64
  %1864 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1863
  %1865 = load i32, ptr %1864, align 4, !tbaa !41
  %1866 = sext i32 %1865 to i64
  %1867 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1866
  %1868 = load i16, ptr %1867, align 2, !tbaa !22
  %1869 = sext i32 %1856 to i64
  %1870 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1869
  %1871 = load i32, ptr %1870, align 4, !tbaa !41
  %1872 = sext i32 %1871 to i64
  %1873 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1872
  %1874 = load i16, ptr %1873, align 2, !tbaa !22
  %1875 = icmp ult i16 %1868, %1874
  br i1 %1875, label %1884, label %1876

1876:                                             ; preds = %1861
  %1877 = icmp eq i16 %1868, %1874
  br i1 %1877, label %1878, label %1885

1878:                                             ; preds = %1876
  %1879 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1866
  %1880 = load i8, ptr %1879, align 1, !tbaa !22
  %1881 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1872
  %1882 = load i8, ptr %1881, align 1, !tbaa !22
  %1883 = icmp ugt i8 %1880, %1882
  br i1 %1883, label %1885, label %1884

1884:                                             ; preds = %1878, %1861
  br label %1885

1885:                                             ; preds = %1884, %1878, %1876, %1859
  %1886 = phi i64 [ %1860, %1859 ], [ %1863, %1884 ], [ %1869, %1878 ], [ %1869, %1876 ]
  %1887 = phi i32 [ %1856, %1859 ], [ %1862, %1884 ], [ %1856, %1878 ], [ %1856, %1876 ]
  %1888 = load i16, ptr %1853, align 2, !tbaa !22
  %1889 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1886
  %1890 = load i32, ptr %1889, align 4, !tbaa !41
  %1891 = sext i32 %1890 to i64
  %1892 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1891
  %1893 = load i16, ptr %1892, align 2, !tbaa !22
  %1894 = icmp ult i16 %1888, %1893
  br i1 %1894, label %1908, label %1895

1895:                                             ; preds = %1885
  %1896 = icmp eq i16 %1888, %1893
  br i1 %1896, label %1897, label %1902

1897:                                             ; preds = %1895
  %1898 = load i8, ptr %1850, align 1, !tbaa !22
  %1899 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1891
  %1900 = load i8, ptr %1899, align 1, !tbaa !22
  %1901 = icmp ugt i8 %1898, %1900
  br i1 %1901, label %1902, label %1908

1902:                                             ; preds = %1897, %1895
  %1903 = sext i32 %1857 to i64
  %1904 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1903
  store i32 %1890, ptr %1904, align 4, !tbaa !41
  %1905 = shl i32 %1887, 1
  %1906 = load i32, ptr %153, align 4, !tbaa !39
  %1907 = icmp sgt i32 %1905, %1906
  br i1 %1907, label %1908, label %1854, !llvm.loop !47

1908:                                             ; preds = %1902, %1897, %1885, %1844
  %1909 = phi i32 [ 1, %1844 ], [ %1887, %1902 ], [ %1857, %1897 ], [ %1857, %1885 ]
  %1910 = sext i32 %1909 to i64
  %1911 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1910
  store i32 %1848, ptr %1911, align 4, !tbaa !41
  %1912 = load i32, ptr %229, align 4, !tbaa !41
  %1913 = load i32, ptr %154, align 8, !tbaa !40
  %1914 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1913, i32 -1)
  %1915 = extractvalue { i32, i1 } %1914, 1, !nosanitize !26
  br i1 %1915, label %1742, label %1916, !nosanitize !26

1916:                                             ; preds = %1908
  %1917 = extractvalue { i32, i1 } %1914, 0, !nosanitize !26
  store i32 %1917, ptr %154, align 8, !tbaa !40
  %1918 = sext i32 %1917 to i64
  %1919 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1918
  store i32 %1841, ptr %1919, align 4, !tbaa !41
  %1920 = load i32, ptr %154, align 8, !tbaa !40
  %1921 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1920, i32 -1)
  %1922 = extractvalue { i32, i1 } %1921, 1, !nosanitize !26
  br i1 %1922, label %1742, label %1923, !nosanitize !26

1923:                                             ; preds = %1916
  %1924 = extractvalue { i32, i1 } %1921, 0, !nosanitize !26
  store i32 %1924, ptr %154, align 8, !tbaa !40
  %1925 = sext i32 %1924 to i64
  %1926 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1925
  store i32 %1912, ptr %1926, align 4, !tbaa !41
  %1927 = sext i32 %1841 to i64
  %1928 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1927
  %1929 = load i16, ptr %1928, align 2, !tbaa !22
  %1930 = sext i32 %1912 to i64
  %1931 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1930
  %1932 = load i16, ptr %1931, align 2, !tbaa !22
  %1933 = add i16 %1932, %1929
  %1934 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1840
  store i16 %1933, ptr %1934, align 2, !tbaa !22
  %1935 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1927
  %1936 = load i8, ptr %1935, align 1, !tbaa !22
  %1937 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1930
  %1938 = load i8, ptr %1937, align 1, !tbaa !22
  %1939 = tail call i8 @llvm.umax.i8(i8 %1936, i8 %1938)
  %1940 = add i8 %1939, 1
  %1941 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1840
  store i8 %1940, ptr %1941, align 1, !tbaa !22
  %1942 = trunc i64 %1840 to i32
  %1943 = trunc i64 %1840 to i16
  %1944 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1930, i32 1
  store i16 %1943, ptr %1944, align 2, !tbaa !22
  %1945 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1927, i32 1
  store i16 %1943, ptr %1945, align 2, !tbaa !22
  %1946 = icmp eq i32 %1942, 2147483647
  br i1 %1946, label %1713, label %1947, !nosanitize !26

1947:                                             ; preds = %1923
  %1948 = add nsw i64 %1840, 1
  store i32 %1942, ptr %229, align 4, !tbaa !41
  %1949 = load i32, ptr %153, align 4, !tbaa !39
  %1950 = icmp slt i32 %1949, 2
  br i1 %1950, label %2005, label %1951

1951:                                             ; preds = %1947, %1999
  %1952 = phi i32 [ %2003, %1999 ], [ %1949, %1947 ]
  %1953 = phi i32 [ %2002, %1999 ], [ 2, %1947 ]
  %1954 = phi i32 [ %1984, %1999 ], [ 1, %1947 ]
  %1955 = icmp slt i32 %1953, %1952
  br i1 %1955, label %1958, label %1956

1956:                                             ; preds = %1951
  %1957 = sext i32 %1953 to i64
  br label %1982

1958:                                             ; preds = %1951
  %1959 = or disjoint i32 %1953, 1
  %1960 = sext i32 %1959 to i64
  %1961 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1960
  %1962 = load i32, ptr %1961, align 4, !tbaa !41
  %1963 = sext i32 %1962 to i64
  %1964 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1963
  %1965 = load i16, ptr %1964, align 2, !tbaa !22
  %1966 = sext i32 %1953 to i64
  %1967 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1966
  %1968 = load i32, ptr %1967, align 4, !tbaa !41
  %1969 = sext i32 %1968 to i64
  %1970 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1969
  %1971 = load i16, ptr %1970, align 2, !tbaa !22
  %1972 = icmp ult i16 %1965, %1971
  br i1 %1972, label %1981, label %1973

1973:                                             ; preds = %1958
  %1974 = icmp eq i16 %1965, %1971
  br i1 %1974, label %1975, label %1982

1975:                                             ; preds = %1973
  %1976 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1963
  %1977 = load i8, ptr %1976, align 1, !tbaa !22
  %1978 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1969
  %1979 = load i8, ptr %1978, align 1, !tbaa !22
  %1980 = icmp ugt i8 %1977, %1979
  br i1 %1980, label %1982, label %1981

1981:                                             ; preds = %1975, %1958
  br label %1982

1982:                                             ; preds = %1981, %1975, %1973, %1956
  %1983 = phi i64 [ %1957, %1956 ], [ %1960, %1981 ], [ %1966, %1975 ], [ %1966, %1973 ]
  %1984 = phi i32 [ %1953, %1956 ], [ %1959, %1981 ], [ %1953, %1975 ], [ %1953, %1973 ]
  %1985 = load i16, ptr %1934, align 2, !tbaa !22
  %1986 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %1983
  %1987 = load i32, ptr %1986, align 4, !tbaa !41
  %1988 = sext i32 %1987 to i64
  %1989 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %1988
  %1990 = load i16, ptr %1989, align 2, !tbaa !22
  %1991 = icmp ult i16 %1985, %1990
  br i1 %1991, label %2005, label %1992

1992:                                             ; preds = %1982
  %1993 = icmp eq i16 %1985, %1990
  br i1 %1993, label %1994, label %1999

1994:                                             ; preds = %1992
  %1995 = load i8, ptr %1941, align 1, !tbaa !22
  %1996 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %1988
  %1997 = load i8, ptr %1996, align 1, !tbaa !22
  %1998 = icmp ugt i8 %1995, %1997
  br i1 %1998, label %1999, label %2005

1999:                                             ; preds = %1994, %1992
  %2000 = sext i32 %1954 to i64
  %2001 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %2000
  store i32 %1987, ptr %2001, align 4, !tbaa !41
  %2002 = shl i32 %1984, 1
  %2003 = load i32, ptr %153, align 4, !tbaa !39
  %2004 = icmp sgt i32 %2002, %2003
  br i1 %2004, label %2005, label %1951, !llvm.loop !47

2005:                                             ; preds = %1999, %1994, %1982, %1947
  %2006 = phi i32 [ 1, %1947 ], [ %1984, %1999 ], [ %1954, %1994 ], [ %1954, %1982 ]
  %2007 = sext i32 %2006 to i64
  %2008 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %2007
  store i32 %1942, ptr %2008, align 4, !tbaa !41
  %2009 = load i32, ptr %153, align 4, !tbaa !39
  %2010 = icmp sgt i32 %2009, 1
  br i1 %2010, label %1838, label %2011, !llvm.loop !49

2011:                                             ; preds = %2005
  %2012 = load i32, ptr %154, align 8, !tbaa !40
  %2013 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2012, i32 -1)
  %2014 = extractvalue { i32, i1 } %2013, 1, !nosanitize !26
  br i1 %2014, label %1742, label %2015, !nosanitize !26

2015:                                             ; preds = %2011
  %2016 = extractvalue { i32, i1 } %2013, 0, !nosanitize !26
  %2017 = load i32, ptr %229, align 4, !tbaa !41
  store i32 %2016, ptr %154, align 8, !tbaa !40
  %2018 = sext i32 %2016 to i64
  %2019 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %2018
  store i32 %2017, ptr %2019, align 4, !tbaa !41
  %2020 = load ptr, ptr %1684, align 8, !tbaa !34
  %2021 = load i32, ptr %1760, align 8, !tbaa !46
  %2022 = load ptr, ptr %1686, align 8, !tbaa !35
  %2023 = load ptr, ptr %2022, align 8, !tbaa !36
  %2024 = getelementptr inbounds %struct.static_tree_desc_s, ptr %2022, i64 0, i32 1
  %2025 = load ptr, ptr %2024, align 8, !tbaa !50
  %2026 = getelementptr inbounds %struct.static_tree_desc_s, ptr %2022, i64 0, i32 2
  %2027 = load i32, ptr %2026, align 8, !tbaa !51
  %2028 = getelementptr inbounds %struct.static_tree_desc_s, ptr %2022, i64 0, i32 4
  %2029 = load i32, ptr %2028, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %495, i8 0, i64 32, i1 false), !tbaa !53
  %2030 = load i32, ptr %154, align 8, !tbaa !40
  %2031 = sext i32 %2030 to i64
  %2032 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %2031
  %2033 = load i32, ptr %2032, align 4, !tbaa !41
  %2034 = sext i32 %2033 to i64
  %2035 = getelementptr inbounds %struct.ct_data_s, ptr %2020, i64 %2034, i32 1
  store i16 0, ptr %2035, align 2, !tbaa !22
  %2036 = load i32, ptr %154, align 8, !tbaa !40
  %2037 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2036, i32 1), !nosanitize !26
  %2038 = extractvalue { i32, i1 } %2037, 1, !nosanitize !26
  br i1 %2038, label %2039, label %2040, !nosanitize !26

2039:                                             ; preds = %2110, %2104, %2095, %2088, %2063, %2142, %2208, %2015
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

2040:                                             ; preds = %2015
  %2041 = extractvalue { i32, i1 } %2037, 0
  %2042 = icmp slt i32 %2041, 573
  br i1 %2042, label %2043, label %2222

2043:                                             ; preds = %2040
  %2044 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %2045 = icmp eq ptr %2023, null
  %2046 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  %2047 = sext i32 %2041 to i64
  br label %2048

2048:                                             ; preds = %2119, %2043
  %2049 = phi i64 [ %2047, %2043 ], [ %2120, %2119 ]
  %2050 = phi i32 [ 0, %2043 ], [ %2070, %2119 ]
  %2051 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %2049
  %2052 = load i32, ptr %2051, align 4, !tbaa !41
  %2053 = sext i32 %2052 to i64
  %2054 = getelementptr inbounds %struct.ct_data_s, ptr %2020, i64 %2053
  %2055 = getelementptr inbounds %struct.ct_data_s, ptr %2020, i64 %2053, i32 1
  %2056 = load i16, ptr %2055, align 2, !tbaa !22
  %2057 = zext i16 %2056 to i64
  %2058 = getelementptr inbounds %struct.ct_data_s, ptr %2020, i64 %2057, i32 1
  %2059 = load i16, ptr %2058, align 2, !tbaa !22
  %2060 = zext i16 %2059 to i32
  %2061 = add nuw nsw i32 %2060, 1
  %2062 = icmp sgt i32 %2029, %2060
  br i1 %2062, label %2068, label %2063

2063:                                             ; preds = %2048
  %2064 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2050, i32 1), !nosanitize !26
  %2065 = extractvalue { i32, i1 } %2064, 1, !nosanitize !26
  br i1 %2065, label %2039, label %2066, !nosanitize !26

2066:                                             ; preds = %2063
  %2067 = extractvalue { i32, i1 } %2064, 0, !nosanitize !26
  br label %2068

2068:                                             ; preds = %2066, %2048
  %2069 = phi i32 [ %2029, %2066 ], [ %2061, %2048 ]
  %2070 = phi i32 [ %2067, %2066 ], [ %2050, %2048 ]
  %2071 = trunc i32 %2069 to i16
  store i16 %2071, ptr %2055, align 2, !tbaa !22
  %2072 = icmp sgt i32 %2052, %2021
  br i1 %2072, label %2119, label %2073

2073:                                             ; preds = %2068
  %2074 = sext i32 %2069 to i64
  %2075 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %2074
  %2076 = load i16, ptr %2075, align 2, !tbaa !53
  %2077 = add i16 %2076, 1
  store i16 %2077, ptr %2075, align 2, !tbaa !53
  %2078 = icmp slt i32 %2052, %2027
  br i1 %2078, label %2088, label %2079

2079:                                             ; preds = %2073
  %2080 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2052, i32 %2027), !nosanitize !26
  %2081 = extractvalue { i32, i1 } %2080, 1, !nosanitize !26
  br i1 %2081, label %2082, label %2083, !nosanitize !26

2082:                                             ; preds = %2079, %2147, %2139, %2174, %2198, %2181, %2125
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

2083:                                             ; preds = %2079
  %2084 = extractvalue { i32, i1 } %2080, 0, !nosanitize !26
  %2085 = sext i32 %2084 to i64
  %2086 = getelementptr inbounds i32, ptr %2025, i64 %2085
  %2087 = load i32, ptr %2086, align 4, !tbaa !41
  br label %2088

2088:                                             ; preds = %2083, %2073
  %2089 = phi i32 [ %2087, %2083 ], [ 0, %2073 ]
  %2090 = load i16, ptr %2054, align 2, !tbaa !22
  %2091 = zext i16 %2090 to i64
  %2092 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2069, i32 %2089), !nosanitize !26
  %2093 = extractvalue { i32, i1 } %2092, 1, !nosanitize !26
  br i1 %2093, label %2039, label %2095, !nosanitize !26

2094:                                             ; preds = %2202
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !26
  unreachable, !nosanitize !26

2095:                                             ; preds = %2088
  %2096 = extractvalue { i32, i1 } %2092, 0, !nosanitize !26
  %2097 = zext i32 %2096 to i64
  %2098 = mul nuw nsw i64 %2097, %2091
  %2099 = load i64, ptr %2044, align 8, !tbaa !43
  %2100 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2099, i64 %2098), !nosanitize !26
  %2101 = extractvalue { i64, i1 } %2100, 1, !nosanitize !26
  br i1 %2101, label %2039, label %2102, !nosanitize !26

2102:                                             ; preds = %2095
  %2103 = extractvalue { i64, i1 } %2100, 0, !nosanitize !26
  store i64 %2103, ptr %2044, align 8, !tbaa !43
  br i1 %2045, label %2119, label %2104

2104:                                             ; preds = %2102
  %2105 = getelementptr inbounds %struct.ct_data_s, ptr %2023, i64 %2053, i32 1
  %2106 = load i16, ptr %2105, align 2, !tbaa !22
  %2107 = zext i16 %2106 to i32
  %2108 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2107, i32 %2089), !nosanitize !26
  %2109 = extractvalue { i32, i1 } %2108, 1, !nosanitize !26
  br i1 %2109, label %2039, label %2110, !nosanitize !26

2110:                                             ; preds = %2104
  %2111 = extractvalue { i32, i1 } %2108, 0, !nosanitize !26
  %2112 = zext i32 %2111 to i64
  %2113 = mul nuw nsw i64 %2112, %2091
  %2114 = load i64, ptr %2046, align 8, !tbaa !44
  %2115 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2114, i64 %2113), !nosanitize !26
  %2116 = extractvalue { i64, i1 } %2115, 1, !nosanitize !26
  br i1 %2116, label %2039, label %2117, !nosanitize !26

2117:                                             ; preds = %2110
  %2118 = extractvalue { i64, i1 } %2115, 0, !nosanitize !26
  store i64 %2118, ptr %2046, align 8, !tbaa !44
  br label %2119

2119:                                             ; preds = %2117, %2102, %2068
  %2120 = add nsw i64 %2049, 1
  %2121 = and i64 %2120, 4294967295
  %2122 = icmp eq i64 %2121, 573
  br i1 %2122, label %2123, label %2048, !llvm.loop !54

2123:                                             ; preds = %2119
  %2124 = icmp eq i32 %2070, 0
  br i1 %2124, label %2222, label %2125

2125:                                             ; preds = %2123
  %2126 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2029, i32 -1)
  %2127 = extractvalue { i32, i1 } %2126, 1, !nosanitize !26
  %2128 = sext i32 %2029 to i64
  %2129 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %2128
  br i1 %2127, label %2082, label %2130, !nosanitize !26

2130:                                             ; preds = %2125, %2157
  %2131 = phi i32 [ %2158, %2157 ], [ %2070, %2125 ]
  br label %2132

2132:                                             ; preds = %2139, %2130
  %2133 = phi { i32, i1 } [ %2140, %2139 ], [ %2126, %2130 ]
  %2134 = extractvalue { i32, i1 } %2133, 0
  %2135 = sext i32 %2134 to i64
  %2136 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %2135
  %2137 = load i16, ptr %2136, align 2, !tbaa !53
  %2138 = icmp eq i16 %2137, 0
  br i1 %2138, label %2139, label %2142

2139:                                             ; preds = %2132
  %2140 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2134, i32 -1)
  %2141 = extractvalue { i32, i1 } %2140, 1, !nosanitize !26
  br i1 %2141, label %2082, label %2132, !llvm.loop !55, !nosanitize !26

2142:                                             ; preds = %2132
  %2143 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %2135
  %2144 = add i16 %2137, -1
  store i16 %2144, ptr %2143, align 2, !tbaa !53
  %2145 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2134, i32 1), !nosanitize !26
  %2146 = extractvalue { i32, i1 } %2145, 1, !nosanitize !26
  br i1 %2146, label %2039, label %2147, !nosanitize !26

2147:                                             ; preds = %2142
  %2148 = extractvalue { i32, i1 } %2145, 0, !nosanitize !26
  %2149 = sext i32 %2148 to i64
  %2150 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %2149
  %2151 = load i16, ptr %2150, align 2, !tbaa !53
  %2152 = add i16 %2151, 2
  store i16 %2152, ptr %2150, align 2, !tbaa !53
  %2153 = load i16, ptr %2129, align 2, !tbaa !53
  %2154 = add i16 %2153, -1
  store i16 %2154, ptr %2129, align 2, !tbaa !53
  %2155 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2131, i32 -2)
  %2156 = extractvalue { i32, i1 } %2155, 1, !nosanitize !26
  br i1 %2156, label %2082, label %2157, !nosanitize !26

2157:                                             ; preds = %2147
  %2158 = extractvalue { i32, i1 } %2155, 0, !nosanitize !26
  %2159 = icmp sgt i32 %2158, 0
  br i1 %2159, label %2130, label %2160, !llvm.loop !56

2160:                                             ; preds = %2157
  %2161 = icmp eq i32 %2029, 0
  br i1 %2161, label %2222, label %2162

2162:                                             ; preds = %2160, %2218
  %2163 = phi i64 [ %2219, %2218 ], [ %2128, %2160 ]
  %2164 = phi i32 [ %2176, %2218 ], [ 573, %2160 ]
  %2165 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %2163
  %2166 = load i16, ptr %2165, align 2, !tbaa !53
  %2167 = icmp eq i16 %2166, 0
  br i1 %2167, label %2168, label %2170

2168:                                             ; preds = %2162
  %2169 = trunc i64 %2163 to i32
  br label %2174

2170:                                             ; preds = %2162
  %2171 = zext i16 %2166 to i32
  %2172 = trunc i64 %2163 to i32
  %2173 = trunc i64 %2163 to i16
  br label %2178

2174:                                             ; preds = %2215, %2168
  %2175 = phi i32 [ %2169, %2168 ], [ %2172, %2215 ]
  %2176 = phi i32 [ %2164, %2168 ], [ %2186, %2215 ]
  %2177 = icmp eq i32 %2175, -2147483648
  br i1 %2177, label %2082, label %2218, !nosanitize !26

2178:                                             ; preds = %2215, %2170
  %2179 = phi i32 [ %2164, %2170 ], [ %2186, %2215 ]
  %2180 = phi i32 [ %2171, %2170 ], [ %2216, %2215 ]
  br label %2181

2181:                                             ; preds = %2185, %2178
  %2182 = phi i32 [ %2186, %2185 ], [ %2179, %2178 ]
  %2183 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2182, i32 -1)
  %2184 = extractvalue { i32, i1 } %2183, 1, !nosanitize !26
  br i1 %2184, label %2082, label %2185, !nosanitize !26

2185:                                             ; preds = %2181
  %2186 = extractvalue { i32, i1 } %2183, 0, !nosanitize !26
  %2187 = sext i32 %2186 to i64
  %2188 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %2187
  %2189 = load i32, ptr %2188, align 4, !tbaa !41
  %2190 = icmp sgt i32 %2189, %2021
  br i1 %2190, label %2181, label %2191, !llvm.loop !57

2191:                                             ; preds = %2185
  %2192 = sext i32 %2189 to i64
  %2193 = getelementptr inbounds %struct.ct_data_s, ptr %2020, i64 %2192
  %2194 = getelementptr inbounds %struct.ct_data_s, ptr %2020, i64 %2192, i32 1
  %2195 = load i16, ptr %2194, align 2, !tbaa !22
  %2196 = zext i16 %2195 to i32
  %2197 = icmp eq i32 %2172, %2196
  br i1 %2197, label %2215, label %2198

2198:                                             ; preds = %2191
  %2199 = zext i16 %2195 to i64
  %2200 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2163, i64 %2199), !nosanitize !26
  %2201 = extractvalue { i64, i1 } %2200, 1, !nosanitize !26
  br i1 %2201, label %2082, label %2202, !nosanitize !26

2202:                                             ; preds = %2198
  %2203 = extractvalue { i64, i1 } %2200, 0, !nosanitize !26
  %2204 = load i16, ptr %2193, align 2, !tbaa !22
  %2205 = zext i16 %2204 to i64
  %2206 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2203, i64 %2205), !nosanitize !26
  %2207 = extractvalue { i64, i1 } %2206, 1, !nosanitize !26
  br i1 %2207, label %2094, label %2208, !nosanitize !26

2208:                                             ; preds = %2202
  %2209 = extractvalue { i64, i1 } %2206, 0, !nosanitize !26
  %2210 = load i64, ptr %2044, align 8, !tbaa !43
  %2211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2210, i64 %2209), !nosanitize !26
  %2212 = extractvalue { i64, i1 } %2211, 1, !nosanitize !26
  br i1 %2212, label %2039, label %2213, !nosanitize !26

2213:                                             ; preds = %2208
  %2214 = extractvalue { i64, i1 } %2211, 0, !nosanitize !26
  store i64 %2214, ptr %2044, align 8, !tbaa !43
  store i16 %2173, ptr %2194, align 2, !tbaa !22
  br label %2215

2215:                                             ; preds = %2213, %2191
  %2216 = add nsw i32 %2180, -1
  %2217 = icmp eq i32 %2216, 0
  br i1 %2217, label %2174, label %2178, !llvm.loop !57

2218:                                             ; preds = %2174
  %2219 = add nsw i64 %2163, -1
  %2220 = and i64 %2219, 4294967295
  %2221 = icmp eq i64 %2220, 0
  br i1 %2221, label %2222, label %2162, !llvm.loop !58

2222:                                             ; preds = %2218, %2160, %2123, %2040
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %2223 = load i16, ptr %495, align 2, !tbaa !53
  %2224 = zext i16 %2223 to i32
  %2225 = shl nuw nsw i32 %2224, 1
  %2226 = trunc i32 %2225 to i16
  %2227 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 1
  store i16 %2226, ptr %2227, align 2, !tbaa !53
  %2228 = load i16, ptr %694, align 2, !tbaa !53
  %2229 = zext i16 %2228 to i32
  %2230 = add nuw nsw i32 %2225, %2229
  %2231 = shl nuw nsw i32 %2230, 1
  %2232 = trunc i32 %2231 to i16
  %2233 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 2
  store i16 %2232, ptr %2233, align 4, !tbaa !53
  %2234 = load i16, ptr %701, align 2, !tbaa !53
  %2235 = zext i16 %2234 to i32
  %2236 = add nuw nsw i32 %2231, %2235
  %2237 = shl nuw nsw i32 %2236, 1
  %2238 = trunc i32 %2237 to i16
  %2239 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 3
  store i16 %2238, ptr %2239, align 2, !tbaa !53
  %2240 = load i16, ptr %708, align 2, !tbaa !53
  %2241 = zext i16 %2240 to i32
  %2242 = add nuw nsw i32 %2237, %2241
  %2243 = shl nuw nsw i32 %2242, 1
  %2244 = trunc i32 %2243 to i16
  %2245 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 4
  store i16 %2244, ptr %2245, align 8, !tbaa !53
  %2246 = load i16, ptr %715, align 2, !tbaa !53
  %2247 = zext i16 %2246 to i32
  %2248 = add nuw nsw i32 %2243, %2247
  %2249 = shl nuw nsw i32 %2248, 1
  %2250 = trunc i32 %2249 to i16
  %2251 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 5
  store i16 %2250, ptr %2251, align 2, !tbaa !53
  %2252 = load i16, ptr %722, align 2, !tbaa !53
  %2253 = zext i16 %2252 to i32
  %2254 = add nuw nsw i32 %2249, %2253
  %2255 = shl nuw nsw i32 %2254, 1
  %2256 = trunc i32 %2255 to i16
  %2257 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 6
  store i16 %2256, ptr %2257, align 4, !tbaa !53
  %2258 = load i16, ptr %729, align 2, !tbaa !53
  %2259 = zext i16 %2258 to i32
  %2260 = add nuw nsw i32 %2255, %2259
  %2261 = shl nuw nsw i32 %2260, 1
  %2262 = trunc i32 %2261 to i16
  %2263 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 7
  store i16 %2262, ptr %2263, align 2, !tbaa !53
  %2264 = load i16, ptr %736, align 2, !tbaa !53
  %2265 = zext i16 %2264 to i32
  %2266 = add nuw nsw i32 %2261, %2265
  %2267 = shl nuw nsw i32 %2266, 1
  %2268 = trunc i32 %2267 to i16
  %2269 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 8
  store i16 %2268, ptr %2269, align 16, !tbaa !53
  %2270 = load i16, ptr %743, align 2, !tbaa !53
  %2271 = trunc i32 %2267 to i16
  %2272 = add i16 %2270, %2271
  %2273 = shl i16 %2272, 1
  %2274 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 9
  store i16 %2273, ptr %2274, align 2, !tbaa !53
  %2275 = load i16, ptr %750, align 2, !tbaa !53
  %2276 = add i16 %2275, %2273
  %2277 = shl i16 %2276, 1
  %2278 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 10
  store i16 %2277, ptr %2278, align 4, !tbaa !53
  %2279 = load i16, ptr %757, align 2, !tbaa !53
  %2280 = add i16 %2277, %2279
  %2281 = shl i16 %2280, 1
  %2282 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 11
  store i16 %2281, ptr %2282, align 2, !tbaa !53
  %2283 = load i16, ptr %763, align 2, !tbaa !53
  %2284 = add i16 %2281, %2283
  %2285 = shl i16 %2284, 1
  %2286 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 12
  store i16 %2285, ptr %2286, align 8, !tbaa !53
  %2287 = load i16, ptr %768, align 2, !tbaa !53
  %2288 = add i16 %2285, %2287
  %2289 = shl i16 %2288, 1
  %2290 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 13
  store i16 %2289, ptr %2290, align 2, !tbaa !53
  %2291 = load i16, ptr %773, align 2, !tbaa !53
  %2292 = add i16 %2289, %2291
  %2293 = shl i16 %2292, 1
  %2294 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 14
  store i16 %2293, ptr %2294, align 4, !tbaa !53
  %2295 = load i16, ptr %778, align 2, !tbaa !53
  %2296 = add i16 %2293, %2295
  %2297 = shl i16 %2296, 1
  %2298 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 15
  store i16 %2297, ptr %2298, align 2, !tbaa !53
  %2299 = icmp slt i32 %1758, 0
  br i1 %2299, label %2360, label %2301

2300:                                             ; preds = %2354
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

2301:                                             ; preds = %2222, %2356
  %2302 = phi i64 [ %2357, %2356 ], [ 0, %2222 ]
  %2303 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %2302, i32 1
  %2304 = load i16, ptr %2303, align 2, !tbaa !22
  %2305 = icmp eq i16 %2304, 0
  br i1 %2305, label %2354, label %2306

2306:                                             ; preds = %2301
  %2307 = zext i16 %2304 to i32
  %2308 = zext i16 %2304 to i64
  %2309 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %2308
  %2310 = load i16, ptr %2309, align 2, !tbaa !53
  %2311 = add i16 %2310, 1
  store i16 %2311, ptr %2309, align 2, !tbaa !53
  %2312 = and i32 %2307, 3
  %2313 = icmp ult i16 %2304, 4
  br i1 %2313, label %2336, label %2314

2314:                                             ; preds = %2306
  %2315 = and i32 %2307, 65532
  br label %2316

2316:                                             ; preds = %2316, %2314
  %2317 = phi i16 [ %2310, %2314 ], [ %2333, %2316 ]
  %2318 = phi i16 [ 0, %2314 ], [ %2332, %2316 ]
  %2319 = phi i32 [ 0, %2314 ], [ %2334, %2316 ]
  %2320 = and i16 %2317, 1
  %2321 = or disjoint i16 %2318, %2320
  %2322 = lshr i16 %2317, 2
  %2323 = shl i16 %2321, 2
  %2324 = and i16 %2317, 2
  %2325 = or disjoint i16 %2323, %2324
  %2326 = and i16 %2322, 1
  %2327 = or disjoint i16 %2325, %2326
  %2328 = shl i16 %2327, 1
  %2329 = lshr i16 %2317, 3
  %2330 = and i16 %2329, 1
  %2331 = or disjoint i16 %2328, %2330
  %2332 = shl i16 %2331, 1
  %2333 = lshr i16 %2317, 4
  %2334 = add i32 %2319, 4
  %2335 = icmp eq i32 %2334, %2315
  br i1 %2335, label %2336, label %2316, !llvm.loop !59

2336:                                             ; preds = %2316, %2306
  %2337 = phi i16 [ undef, %2306 ], [ %2331, %2316 ]
  %2338 = phi i16 [ %2310, %2306 ], [ %2333, %2316 ]
  %2339 = phi i16 [ 0, %2306 ], [ %2332, %2316 ]
  %2340 = icmp eq i32 %2312, 0
  br i1 %2340, label %2351, label %2341

2341:                                             ; preds = %2336, %2341
  %2342 = phi i16 [ %2348, %2341 ], [ %2338, %2336 ]
  %2343 = phi i16 [ %2347, %2341 ], [ %2339, %2336 ]
  %2344 = phi i32 [ %2349, %2341 ], [ 0, %2336 ]
  %2345 = and i16 %2342, 1
  %2346 = or disjoint i16 %2343, %2345
  %2347 = shl i16 %2346, 1
  %2348 = lshr i16 %2342, 1
  %2349 = add i32 %2344, 1
  %2350 = icmp eq i32 %2349, %2312
  br i1 %2350, label %2351, label %2341, !llvm.loop !67

2351:                                             ; preds = %2341, %2336
  %2352 = phi i16 [ %2337, %2336 ], [ %2346, %2341 ]
  %2353 = getelementptr inbounds %struct.ct_data_s, ptr %1685, i64 %2302
  store i16 %2352, ptr %2353, align 2, !tbaa !22
  br label %2354

2354:                                             ; preds = %2351, %2301
  %2355 = icmp eq i64 %2302, 2147483647
  br i1 %2355, label %2300, label %2356, !nosanitize !26

2356:                                             ; preds = %2354
  %2357 = add nuw nsw i64 %2302, 1
  %2358 = trunc i64 %2357 to i32
  %2359 = icmp slt i32 %1758, %2358
  br i1 %2359, label %2360, label %2301, !llvm.loop !62

2360:                                             ; preds = %2356, %2222
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  %2361 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 15, i32 1
  %2362 = load i16, ptr %2361, align 2, !tbaa !22
  %2363 = icmp eq i16 %2362, 0
  br i1 %2363, label %2364, label %2426

2364:                                             ; preds = %2360
  %2365 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 1, i32 1
  %2366 = load i16, ptr %2365, align 2, !tbaa !22
  %2367 = icmp eq i16 %2366, 0
  br i1 %2367, label %2368, label %2426

2368:                                             ; preds = %2364
  %2369 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 14, i32 1
  %2370 = load i16, ptr %2369, align 2, !tbaa !22
  %2371 = icmp eq i16 %2370, 0
  br i1 %2371, label %2372, label %2426

2372:                                             ; preds = %2368
  %2373 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 2, i32 1
  %2374 = load i16, ptr %2373, align 2, !tbaa !22
  %2375 = icmp eq i16 %2374, 0
  br i1 %2375, label %2376, label %2426

2376:                                             ; preds = %2372
  %2377 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 13, i32 1
  %2378 = load i16, ptr %2377, align 2, !tbaa !22
  %2379 = icmp eq i16 %2378, 0
  br i1 %2379, label %2380, label %2426

2380:                                             ; preds = %2376
  %2381 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 3, i32 1
  %2382 = load i16, ptr %2381, align 2, !tbaa !22
  %2383 = icmp eq i16 %2382, 0
  br i1 %2383, label %2384, label %2426

2384:                                             ; preds = %2380
  %2385 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 12, i32 1
  %2386 = load i16, ptr %2385, align 2, !tbaa !22
  %2387 = icmp eq i16 %2386, 0
  br i1 %2387, label %2388, label %2426

2388:                                             ; preds = %2384
  %2389 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 4, i32 1
  %2390 = load i16, ptr %2389, align 2, !tbaa !22
  %2391 = icmp eq i16 %2390, 0
  br i1 %2391, label %2392, label %2426

2392:                                             ; preds = %2388
  %2393 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 11, i32 1
  %2394 = load i16, ptr %2393, align 2, !tbaa !22
  %2395 = icmp eq i16 %2394, 0
  br i1 %2395, label %2396, label %2426

2396:                                             ; preds = %2392
  %2397 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 5, i32 1
  %2398 = load i16, ptr %2397, align 2, !tbaa !22
  %2399 = icmp eq i16 %2398, 0
  br i1 %2399, label %2400, label %2426

2400:                                             ; preds = %2396
  %2401 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 10, i32 1
  %2402 = load i16, ptr %2401, align 2, !tbaa !22
  %2403 = icmp eq i16 %2402, 0
  br i1 %2403, label %2404, label %2426

2404:                                             ; preds = %2400
  %2405 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 6, i32 1
  %2406 = load i16, ptr %2405, align 2, !tbaa !22
  %2407 = icmp eq i16 %2406, 0
  br i1 %2407, label %2408, label %2426

2408:                                             ; preds = %2404
  %2409 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 9, i32 1
  %2410 = load i16, ptr %2409, align 2, !tbaa !22
  %2411 = icmp eq i16 %2410, 0
  br i1 %2411, label %2412, label %2426

2412:                                             ; preds = %2408
  %2413 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 7, i32 1
  %2414 = load i16, ptr %2413, align 2, !tbaa !22
  %2415 = icmp eq i16 %2414, 0
  br i1 %2415, label %2416, label %2426

2416:                                             ; preds = %2412
  %2417 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 8, i32 1
  %2418 = load i16, ptr %2417, align 2, !tbaa !22
  %2419 = icmp eq i16 %2418, 0
  br i1 %2419, label %2420, label %2426

2420:                                             ; preds = %2416
  %2421 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 0, i32 1
  %2422 = load i16, ptr %2421, align 2, !tbaa !22
  %2423 = icmp eq i16 %2422, 0
  %2424 = select i1 %2423, i32 2, i32 3
  br label %2426

2425:                                             ; preds = %2426
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

2426:                                             ; preds = %2420, %2416, %2412, %2408, %2404, %2400, %2396, %2392, %2388, %2384, %2380, %2376, %2372, %2368, %2364, %2360
  %2427 = phi i32 [ 18, %2360 ], [ 17, %2364 ], [ 16, %2368 ], [ 15, %2372 ], [ 14, %2376 ], [ 13, %2380 ], [ 12, %2384 ], [ 11, %2388 ], [ 10, %2392 ], [ 9, %2396 ], [ 8, %2400 ], [ 7, %2404 ], [ 6, %2408 ], [ 5, %2412 ], [ 4, %2416 ], [ %2424, %2420 ]
  %2428 = mul nuw nsw i32 %2427, 3
  %2429 = add nuw nsw i32 %2428, 17
  %2430 = zext nneg i32 %2429 to i64
  %2431 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %2432 = load i64, ptr %2431, align 8, !tbaa !43
  %2433 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2432, i64 %2430), !nosanitize !26
  %2434 = extractvalue { i64, i1 } %2433, 1, !nosanitize !26
  br i1 %2434, label %2425, label %2435, !nosanitize !26

2435:                                             ; preds = %2426
  %2436 = extractvalue { i64, i1 } %2433, 0, !nosanitize !26
  store i64 %2436, ptr %2431, align 8, !tbaa !43
  %2437 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2436, i64 3), !nosanitize !26
  %2438 = extractvalue { i64, i1 } %2437, 1, !nosanitize !26
  br i1 %2438, label %2439, label %2440, !nosanitize !26

2439:                                             ; preds = %3109, %3100, %3090, %3084, %3065, %3053, %3052, %2679, %2673, %2654, %2642, %2641, %2469, %2464, %2451, %2444, %2440, %2435
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

2440:                                             ; preds = %2435
  %2441 = extractvalue { i64, i1 } %2437, 0, !nosanitize !26
  %2442 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2441, i64 7), !nosanitize !26
  %2443 = extractvalue { i64, i1 } %2442, 1, !nosanitize !26
  br i1 %2443, label %2439, label %2444, !nosanitize !26

2444:                                             ; preds = %2440
  %2445 = extractvalue { i64, i1 } %2442, 0, !nosanitize !26
  %2446 = lshr i64 %2445, 3
  %2447 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  %2448 = load i64, ptr %2447, align 8, !tbaa !44
  %2449 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2448, i64 3), !nosanitize !26
  %2450 = extractvalue { i64, i1 } %2449, 1, !nosanitize !26
  br i1 %2450, label %2439, label %2451, !nosanitize !26

2451:                                             ; preds = %2444
  %2452 = extractvalue { i64, i1 } %2449, 0, !nosanitize !26
  %2453 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2452, i64 7), !nosanitize !26
  %2454 = extractvalue { i64, i1 } %2453, 1, !nosanitize !26
  br i1 %2454, label %2439, label %2455, !nosanitize !26

2455:                                             ; preds = %2451
  %2456 = extractvalue { i64, i1 } %2453, 0, !nosanitize !26
  %2457 = lshr i64 %2456, 3
  %2458 = icmp ugt i64 %2457, %2446
  br i1 %2458, label %2459, label %2463

2459:                                             ; preds = %2455
  %2460 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 34
  %2461 = load i32, ptr %2460, align 8, !tbaa !68
  %2462 = icmp eq i32 %2461, 4
  br i1 %2462, label %2463, label %2469

2463:                                             ; preds = %2459, %2455
  br label %2469

2464:                                             ; preds = %4
  %2465 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 5), !nosanitize !26
  %2466 = extractvalue { i64, i1 } %2465, 1, !nosanitize !26
  br i1 %2466, label %2439, label %2467, !nosanitize !26

2467:                                             ; preds = %2464
  %2468 = extractvalue { i64, i1 } %2465, 0, !nosanitize !26
  br label %2469

2469:                                             ; preds = %2459, %2463, %2467
  %2470 = phi i32 [ %2427, %2463 ], [ %2427, %2459 ], [ 0, %2467 ]
  %2471 = phi i64 [ %2457, %2463 ], [ %2457, %2459 ], [ %2468, %2467 ]
  %2472 = phi i64 [ %2457, %2463 ], [ %2446, %2459 ], [ %2468, %2467 ]
  %2473 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 4), !nosanitize !26
  %2474 = extractvalue { i64, i1 } %2473, 1, !nosanitize !26
  br i1 %2474, label %2439, label %2475, !nosanitize !26

2475:                                             ; preds = %2469
  %2476 = extractvalue { i64, i1 } %2473, 0, !nosanitize !26
  %2477 = icmp ule i64 %2476, %2472
  %2478 = icmp ne ptr %1, null
  %2479 = and i1 %2478, %2477
  br i1 %2479, label %2480, label %2632

2480:                                             ; preds = %2475
  %2481 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %2482 = load i32, ptr %2481, align 4, !tbaa !20
  %2483 = icmp sgt i32 %2482, 13
  br i1 %2483, label %2486, label %2522

2484:                                             ; preds = %2506
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

2485:                                             ; preds = %2626, %2604, %2595, %2587, %2576, %2516, %2497, %2486
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

2486:                                             ; preds = %2480
  %2487 = and i32 %3, 65535
  %2488 = shl i32 %3, %2482
  %2489 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %2490 = load i16, ptr %2489, align 8, !tbaa !19
  %2491 = trunc i32 %2488 to i16
  %2492 = or i16 %2490, %2491
  store i16 %2492, ptr %2489, align 8, !tbaa !19
  %2493 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %2494 = load i64, ptr %2493, align 8, !tbaa !27
  %2495 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2494, i64 1), !nosanitize !26
  %2496 = extractvalue { i64, i1 } %2495, 1, !nosanitize !26
  br i1 %2496, label %2485, label %2497, !nosanitize !26

2497:                                             ; preds = %2486
  %2498 = extractvalue { i64, i1 } %2495, 0, !nosanitize !26
  %2499 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %2500 = load ptr, ptr %2499, align 8, !tbaa !28
  %2501 = trunc i16 %2492 to i8
  store i64 %2498, ptr %2493, align 8, !tbaa !27
  %2502 = getelementptr inbounds i8, ptr %2500, i64 %2494
  store i8 %2501, ptr %2502, align 1, !tbaa !22
  %2503 = load i64, ptr %2493, align 8, !tbaa !27
  %2504 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2503, i64 1), !nosanitize !26
  %2505 = extractvalue { i64, i1 } %2504, 1, !nosanitize !26
  br i1 %2505, label %2485, label %2506, !nosanitize !26

2506:                                             ; preds = %2497
  %2507 = extractvalue { i64, i1 } %2504, 0, !nosanitize !26
  %2508 = load ptr, ptr %2499, align 8, !tbaa !28
  %2509 = load i16, ptr %2489, align 8, !tbaa !19
  %2510 = lshr i16 %2509, 8
  %2511 = trunc i16 %2510 to i8
  store i64 %2507, ptr %2493, align 8, !tbaa !27
  %2512 = getelementptr inbounds i8, ptr %2508, i64 %2503
  store i8 %2511, ptr %2512, align 1, !tbaa !22
  %2513 = load i32, ptr %2481, align 4, !tbaa !20
  %2514 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2513), !nosanitize !26
  %2515 = extractvalue { i32, i1 } %2514, 1, !nosanitize !26
  br i1 %2515, label %2484, label %2516, !nosanitize !26

2516:                                             ; preds = %2506
  %2517 = extractvalue { i32, i1 } %2514, 0, !nosanitize !26
  %2518 = lshr i32 %2487, %2517
  %2519 = trunc i32 %2518 to i16
  store i16 %2519, ptr %2489, align 8, !tbaa !19
  %2520 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2513, i32 -13), !nosanitize !26
  %2521 = extractvalue { i32, i1 } %2520, 1, !nosanitize !26
  br i1 %2521, label %2485, label %2530, !nosanitize !26

2522:                                             ; preds = %2480
  %2523 = shl i32 %3, %2482
  %2524 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %2525 = load i16, ptr %2524, align 8, !tbaa !19
  %2526 = trunc i32 %2523 to i16
  %2527 = or i16 %2525, %2526
  store i16 %2527, ptr %2524, align 8, !tbaa !19
  %2528 = add nsw i32 %2482, 3
  %2529 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2528, 0
  br label %2530

2530:                                             ; preds = %2522, %2516
  %2531 = phi i16 [ %2519, %2516 ], [ %2527, %2522 ]
  %2532 = phi { i32, i1 } [ %2520, %2516 ], [ %2529, %2522 ]
  %2533 = extractvalue { i32, i1 } %2532, 0
  store i32 %2533, ptr %2481, align 4, !tbaa !20
  %2534 = icmp sgt i32 %2533, 8
  br i1 %2534, label %2535, label %2558

2535:                                             ; preds = %2530
  %2536 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %2537 = load i64, ptr %2536, align 8, !tbaa !27
  %2538 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2537, i64 1), !nosanitize !26
  %2539 = extractvalue { i64, i1 } %2538, 1, !nosanitize !26
  br i1 %2539, label %2540, label %2541, !nosanitize !26

2540:                                             ; preds = %2560, %2541, %2535
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

2541:                                             ; preds = %2535
  %2542 = extractvalue { i64, i1 } %2538, 0, !nosanitize !26
  %2543 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %2544 = load ptr, ptr %2543, align 8, !tbaa !28
  %2545 = trunc i16 %2531 to i8
  store i64 %2542, ptr %2536, align 8, !tbaa !27
  %2546 = getelementptr inbounds i8, ptr %2544, i64 %2537
  store i8 %2545, ptr %2546, align 1, !tbaa !22
  %2547 = load i64, ptr %2536, align 8, !tbaa !27
  %2548 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2547, i64 1), !nosanitize !26
  %2549 = extractvalue { i64, i1 } %2548, 1, !nosanitize !26
  br i1 %2549, label %2540, label %2550, !nosanitize !26

2550:                                             ; preds = %2541
  %2551 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %2552 = extractvalue { i64, i1 } %2548, 0, !nosanitize !26
  %2553 = load ptr, ptr %2543, align 8, !tbaa !28
  %2554 = load i16, ptr %2551, align 8, !tbaa !19
  %2555 = lshr i16 %2554, 8
  %2556 = trunc i16 %2555 to i8
  store i64 %2552, ptr %2536, align 8, !tbaa !27
  %2557 = getelementptr inbounds i8, ptr %2553, i64 %2547
  store i8 %2556, ptr %2557, align 1, !tbaa !22
  br label %2571

2558:                                             ; preds = %2530
  %2559 = icmp sgt i32 %2533, 0
  br i1 %2559, label %2560, label %2571

2560:                                             ; preds = %2558
  %2561 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %2562 = load i64, ptr %2561, align 8, !tbaa !27
  %2563 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2562, i64 1), !nosanitize !26
  %2564 = extractvalue { i64, i1 } %2563, 1, !nosanitize !26
  br i1 %2564, label %2540, label %2565, !nosanitize !26

2565:                                             ; preds = %2560
  %2566 = extractvalue { i64, i1 } %2563, 0, !nosanitize !26
  %2567 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %2568 = load ptr, ptr %2567, align 8, !tbaa !28
  %2569 = trunc i16 %2531 to i8
  store i64 %2566, ptr %2561, align 8, !tbaa !27
  %2570 = getelementptr inbounds i8, ptr %2568, i64 %2562
  store i8 %2569, ptr %2570, align 1, !tbaa !22
  br label %2571

2571:                                             ; preds = %2565, %2558, %2550
  %2572 = load i32, ptr %2481, align 4, !tbaa !20
  %2573 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2572, i32 -1)
  %2574 = extractvalue { i32, i1 } %2573, 1, !nosanitize !26
  br i1 %2574, label %2575, label %2576, !nosanitize !26

2575:                                             ; preds = %2571
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

2576:                                             ; preds = %2571
  %2577 = extractvalue { i32, i1 } %2573, 0, !nosanitize !26
  %2578 = and i32 %2577, 7
  %2579 = add nuw nsw i32 %2578, 1
  %2580 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 58
  store i32 %2579, ptr %2580, align 8, !tbaa !21
  %2581 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  store i16 0, ptr %2581, align 8, !tbaa !19
  store i32 0, ptr %2481, align 4, !tbaa !20
  %2582 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %2583 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %2584 = load i64, ptr %2583, align 8, !tbaa !27
  %2585 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2584, i64 1), !nosanitize !26
  %2586 = extractvalue { i64, i1 } %2585, 1, !nosanitize !26
  br i1 %2586, label %2485, label %2587, !nosanitize !26

2587:                                             ; preds = %2576
  %2588 = extractvalue { i64, i1 } %2585, 0, !nosanitize !26
  %2589 = load ptr, ptr %2582, align 8, !tbaa !28
  %2590 = trunc i64 %2 to i8
  store i64 %2588, ptr %2583, align 8, !tbaa !27
  %2591 = getelementptr inbounds i8, ptr %2589, i64 %2584
  store i8 %2590, ptr %2591, align 1, !tbaa !22
  %2592 = load i64, ptr %2583, align 8, !tbaa !27
  %2593 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2592, i64 1), !nosanitize !26
  %2594 = extractvalue { i64, i1 } %2593, 1, !nosanitize !26
  br i1 %2594, label %2485, label %2595, !nosanitize !26

2595:                                             ; preds = %2587
  %2596 = extractvalue { i64, i1 } %2593, 0, !nosanitize !26
  %2597 = load ptr, ptr %2582, align 8, !tbaa !28
  %2598 = lshr i64 %2, 8
  %2599 = trunc i64 %2598 to i8
  store i64 %2596, ptr %2583, align 8, !tbaa !27
  %2600 = getelementptr inbounds i8, ptr %2597, i64 %2592
  store i8 %2599, ptr %2600, align 1, !tbaa !22
  %2601 = load i64, ptr %2583, align 8, !tbaa !27
  %2602 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2601, i64 1), !nosanitize !26
  %2603 = extractvalue { i64, i1 } %2602, 1, !nosanitize !26
  br i1 %2603, label %2485, label %2604, !nosanitize !26

2604:                                             ; preds = %2595
  %2605 = extractvalue { i64, i1 } %2602, 0, !nosanitize !26
  %2606 = load ptr, ptr %2582, align 8, !tbaa !28
  %2607 = trunc i64 %2 to i32
  %2608 = and i32 %2607, 65535
  %2609 = xor i32 %2608, 65535
  %2610 = trunc i32 %2609 to i8
  store i64 %2605, ptr %2583, align 8, !tbaa !27
  %2611 = getelementptr inbounds i8, ptr %2606, i64 %2601
  store i8 %2610, ptr %2611, align 1, !tbaa !22
  %2612 = load i64, ptr %2583, align 8, !tbaa !27
  %2613 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2612, i64 1), !nosanitize !26
  %2614 = extractvalue { i64, i1 } %2613, 1, !nosanitize !26
  br i1 %2614, label %2485, label %2615, !nosanitize !26

2615:                                             ; preds = %2604
  %2616 = extractvalue { i64, i1 } %2613, 0, !nosanitize !26
  %2617 = load ptr, ptr %2582, align 8, !tbaa !28
  %2618 = lshr i32 %2609, 8
  %2619 = trunc i32 %2618 to i8
  store i64 %2616, ptr %2583, align 8, !tbaa !27
  %2620 = getelementptr inbounds i8, ptr %2617, i64 %2612
  store i8 %2619, ptr %2620, align 1, !tbaa !22
  %2621 = icmp eq i64 %2, 0
  br i1 %2621, label %2626, label %2622

2622:                                             ; preds = %2615
  %2623 = load ptr, ptr %2582, align 8, !tbaa !28
  %2624 = load i64, ptr %2583, align 8, !tbaa !27
  %2625 = getelementptr inbounds i8, ptr %2623, i64 %2624
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2625, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %2626

2626:                                             ; preds = %2622, %2615
  %2627 = load i64, ptr %2583, align 8, !tbaa !27
  %2628 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2627, i64 %2), !nosanitize !26
  %2629 = extractvalue { i64, i1 } %2628, 1, !nosanitize !26
  br i1 %2629, label %2485, label %2630, !nosanitize !26

2630:                                             ; preds = %2626
  %2631 = extractvalue { i64, i1 } %2628, 0, !nosanitize !26
  store i64 %2631, ptr %2583, align 8, !tbaa !27
  br label %4575

2632:                                             ; preds = %2475
  %2633 = icmp eq i64 %2471, %2472
  %2634 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %2635 = load i32, ptr %2634, align 4, !tbaa !20
  %2636 = icmp sgt i32 %2635, 13
  br i1 %2633, label %2637, label %3049

2637:                                             ; preds = %2632
  %2638 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2)
  %2639 = extractvalue { i32, i1 } %2638, 1
  br i1 %2636, label %2641, label %2679

2640:                                             ; preds = %3074, %2663
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

2641:                                             ; preds = %2637
  br i1 %2639, label %2439, label %2642, !nosanitize !26

2642:                                             ; preds = %2641
  %2643 = extractvalue { i32, i1 } %2638, 0, !nosanitize !26
  %2644 = and i32 %2643, 65535
  %2645 = shl i32 %2643, %2635
  %2646 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %2647 = load i16, ptr %2646, align 8, !tbaa !19
  %2648 = trunc i32 %2645 to i16
  %2649 = or i16 %2647, %2648
  store i16 %2649, ptr %2646, align 8, !tbaa !19
  %2650 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %2651 = load i64, ptr %2650, align 8, !tbaa !27
  %2652 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2651, i64 1), !nosanitize !26
  %2653 = extractvalue { i64, i1 } %2652, 1, !nosanitize !26
  br i1 %2653, label %2439, label %2654, !nosanitize !26

2654:                                             ; preds = %2642
  %2655 = extractvalue { i64, i1 } %2652, 0, !nosanitize !26
  %2656 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %2657 = load ptr, ptr %2656, align 8, !tbaa !28
  %2658 = trunc i16 %2649 to i8
  store i64 %2655, ptr %2650, align 8, !tbaa !27
  %2659 = getelementptr inbounds i8, ptr %2657, i64 %2651
  store i8 %2658, ptr %2659, align 1, !tbaa !22
  %2660 = load i64, ptr %2650, align 8, !tbaa !27
  %2661 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2660, i64 1), !nosanitize !26
  %2662 = extractvalue { i64, i1 } %2661, 1, !nosanitize !26
  br i1 %2662, label %2439, label %2663, !nosanitize !26

2663:                                             ; preds = %2654
  %2664 = extractvalue { i64, i1 } %2661, 0, !nosanitize !26
  %2665 = load ptr, ptr %2656, align 8, !tbaa !28
  %2666 = load i16, ptr %2646, align 8, !tbaa !19
  %2667 = lshr i16 %2666, 8
  %2668 = trunc i16 %2667 to i8
  store i64 %2664, ptr %2650, align 8, !tbaa !27
  %2669 = getelementptr inbounds i8, ptr %2665, i64 %2660
  store i8 %2668, ptr %2669, align 1, !tbaa !22
  %2670 = load i32, ptr %2634, align 4, !tbaa !20
  %2671 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2670), !nosanitize !26
  %2672 = extractvalue { i32, i1 } %2671, 1, !nosanitize !26
  br i1 %2672, label %2640, label %2673, !nosanitize !26

2673:                                             ; preds = %2663
  %2674 = extractvalue { i32, i1 } %2671, 0, !nosanitize !26
  %2675 = lshr i32 %2644, %2674
  %2676 = trunc i32 %2675 to i16
  store i16 %2676, ptr %2646, align 8, !tbaa !19
  %2677 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2670, i32 -13), !nosanitize !26
  %2678 = extractvalue { i32, i1 } %2677, 1, !nosanitize !26
  br i1 %2678, label %2439, label %2689, !nosanitize !26

2679:                                             ; preds = %2637
  br i1 %2639, label %2439, label %2680, !nosanitize !26

2680:                                             ; preds = %2679
  %2681 = extractvalue { i32, i1 } %2638, 0, !nosanitize !26
  %2682 = shl i32 %2681, %2635
  %2683 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %2684 = load i16, ptr %2683, align 8, !tbaa !19
  %2685 = trunc i32 %2682 to i16
  %2686 = or i16 %2684, %2685
  store i16 %2686, ptr %2683, align 8, !tbaa !19
  %2687 = add nsw i32 %2635, 3
  %2688 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2687, 0
  br label %2689

2689:                                             ; preds = %2680, %2673
  %2690 = phi i16 [ %2676, %2673 ], [ %2686, %2680 ]
  %2691 = phi { i32, i1 } [ %2677, %2673 ], [ %2688, %2680 ]
  %2692 = extractvalue { i32, i1 } %2691, 0
  store i32 %2692, ptr %2634, align 4, !tbaa !20
  %2693 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %2694 = load i32, ptr %2693, align 4, !tbaa !25
  %2695 = icmp eq i32 %2694, 0
  br i1 %2695, label %3011, label %2696

2696:                                             ; preds = %2689
  %2697 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %2698 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %2699 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %2700 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  br label %2701

2701:                                             ; preds = %3006, %2696
  %2702 = phi i16 [ %3007, %3006 ], [ %2690, %2696 ]
  %2703 = phi i32 [ %3008, %3006 ], [ %2692, %2696 ]
  %2704 = phi i32 [ %2723, %3006 ], [ 0, %2696 ]
  %2705 = load ptr, ptr %2697, align 8, !tbaa !69
  %2706 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2704, i32 2)
  %2707 = extractvalue { i32, i1 } %2706, 0, !nosanitize !26
  %2708 = extractvalue { i32, i1 } %2706, 1, !nosanitize !26
  br i1 %2708, label %2709, label %2710, !nosanitize !26

2709:                                             ; preds = %2996, %2992, %2968, %2960, %2932, %2914, %2910, %2881, %2877, %2853, %2845, %2815, %2797, %2793, %2767, %2749, %2745, %2710, %2701, %3040, %3021, %3016
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

2710:                                             ; preds = %2701
  %2711 = add nuw i32 %2704, 1
  %2712 = zext i32 %2704 to i64
  %2713 = getelementptr inbounds i8, ptr %2705, i64 %2712
  %2714 = load i8, ptr %2713, align 1, !tbaa !22
  %2715 = zext i8 %2714 to i32
  %2716 = zext i32 %2711 to i64
  %2717 = getelementptr inbounds i8, ptr %2705, i64 %2716
  %2718 = load i8, ptr %2717, align 1, !tbaa !22
  %2719 = zext i8 %2718 to i32
  %2720 = shl nuw nsw i32 %2719, 8
  %2721 = or disjoint i32 %2720, %2715
  %2722 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2707, i32 1), !nosanitize !26
  %2723 = extractvalue { i32, i1 } %2722, 0, !nosanitize !26
  %2724 = extractvalue { i32, i1 } %2722, 1, !nosanitize !26
  br i1 %2724, label %2709, label %2725, !nosanitize !26

2725:                                             ; preds = %2710
  %2726 = zext i32 %2707 to i64
  %2727 = getelementptr inbounds i8, ptr %2705, i64 %2726
  %2728 = load i8, ptr %2727, align 1, !tbaa !22
  %2729 = zext i8 %2728 to i32
  %2730 = icmp eq i32 %2721, 0
  %2731 = zext i8 %2728 to i64
  br i1 %2730, label %2732, label %2777

2732:                                             ; preds = %2725
  %2733 = getelementptr inbounds %struct.ct_data_s, ptr @static_ltree, i64 %2731
  %2734 = getelementptr inbounds %struct.ct_data_s, ptr @static_ltree, i64 %2731, i32 1
  %2735 = load i16, ptr %2734, align 2, !tbaa !22
  %2736 = zext i16 %2735 to i32
  %2737 = sub nsw i32 16, %2736
  %2738 = icmp sgt i32 %2703, %2737
  %2739 = load i16, ptr %2733, align 4, !tbaa !22
  %2740 = zext i16 %2739 to i32
  %2741 = shl i32 %2740, %2703
  %2742 = trunc i32 %2741 to i16
  %2743 = or i16 %2702, %2742
  store i16 %2743, ptr %2698, align 8, !tbaa !19
  br i1 %2738, label %2745, label %2774

2744:                                             ; preds = %2986, %2976, %2954, %2948, %2922, %2871, %2861, %2839, %2833, %2805, %2757, %3030
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

2745:                                             ; preds = %2732
  %2746 = load i64, ptr %2699, align 8, !tbaa !27
  %2747 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2746, i64 1), !nosanitize !26
  %2748 = extractvalue { i64, i1 } %2747, 1, !nosanitize !26
  br i1 %2748, label %2709, label %2749, !nosanitize !26

2749:                                             ; preds = %2745
  %2750 = extractvalue { i64, i1 } %2747, 0, !nosanitize !26
  %2751 = load ptr, ptr %2700, align 8, !tbaa !28
  %2752 = trunc i16 %2743 to i8
  store i64 %2750, ptr %2699, align 8, !tbaa !27
  %2753 = getelementptr inbounds i8, ptr %2751, i64 %2746
  store i8 %2752, ptr %2753, align 1, !tbaa !22
  %2754 = load i64, ptr %2699, align 8, !tbaa !27
  %2755 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2754, i64 1), !nosanitize !26
  %2756 = extractvalue { i64, i1 } %2755, 1, !nosanitize !26
  br i1 %2756, label %2709, label %2757, !nosanitize !26

2757:                                             ; preds = %2749
  %2758 = extractvalue { i64, i1 } %2755, 0, !nosanitize !26
  %2759 = load ptr, ptr %2700, align 8, !tbaa !28
  %2760 = load i16, ptr %2698, align 8, !tbaa !19
  %2761 = lshr i16 %2760, 8
  %2762 = trunc i16 %2761 to i8
  store i64 %2758, ptr %2699, align 8, !tbaa !27
  %2763 = getelementptr inbounds i8, ptr %2759, i64 %2754
  store i8 %2762, ptr %2763, align 1, !tbaa !22
  %2764 = load i32, ptr %2634, align 4, !tbaa !20
  %2765 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2764), !nosanitize !26
  %2766 = extractvalue { i32, i1 } %2765, 1, !nosanitize !26
  br i1 %2766, label %2744, label %2767, !nosanitize !26

2767:                                             ; preds = %2757
  %2768 = extractvalue { i32, i1 } %2765, 0, !nosanitize !26
  %2769 = lshr i32 %2740, %2768
  %2770 = trunc i32 %2769 to i16
  store i16 %2770, ptr %2698, align 8, !tbaa !19
  %2771 = add nsw i32 %2736, -16
  %2772 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2764, i32 %2771), !nosanitize !26
  %2773 = extractvalue { i32, i1 } %2772, 1, !nosanitize !26
  br i1 %2773, label %2709, label %3002, !nosanitize !26

2774:                                             ; preds = %2732
  %2775 = add nsw i32 %2703, %2736
  %2776 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2775, 0
  br label %3002

2777:                                             ; preds = %2725
  %2778 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %2731
  %2779 = load i8, ptr %2778, align 1, !tbaa !22
  %2780 = zext i8 %2779 to i64
  %2781 = getelementptr %struct.ct_data_s, ptr @static_ltree, i64 %2780
  %2782 = getelementptr %struct.ct_data_s, ptr %2781, i64 257
  %2783 = getelementptr %struct.ct_data_s, ptr %2781, i64 257, i32 1
  %2784 = load i16, ptr %2783, align 2, !tbaa !22
  %2785 = zext i16 %2784 to i32
  %2786 = sub nsw i32 16, %2785
  %2787 = icmp sgt i32 %2703, %2786
  %2788 = load i16, ptr %2782, align 4, !tbaa !22
  %2789 = zext i16 %2788 to i32
  %2790 = shl i32 %2789, %2703
  %2791 = trunc i32 %2790 to i16
  %2792 = or i16 %2702, %2791
  store i16 %2792, ptr %2698, align 8, !tbaa !19
  br i1 %2787, label %2793, label %2822

2793:                                             ; preds = %2777
  %2794 = load i64, ptr %2699, align 8, !tbaa !27
  %2795 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2794, i64 1), !nosanitize !26
  %2796 = extractvalue { i64, i1 } %2795, 1, !nosanitize !26
  br i1 %2796, label %2709, label %2797, !nosanitize !26

2797:                                             ; preds = %2793
  %2798 = extractvalue { i64, i1 } %2795, 0, !nosanitize !26
  %2799 = load ptr, ptr %2700, align 8, !tbaa !28
  %2800 = trunc i16 %2792 to i8
  store i64 %2798, ptr %2699, align 8, !tbaa !27
  %2801 = getelementptr inbounds i8, ptr %2799, i64 %2794
  store i8 %2800, ptr %2801, align 1, !tbaa !22
  %2802 = load i64, ptr %2699, align 8, !tbaa !27
  %2803 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2802, i64 1), !nosanitize !26
  %2804 = extractvalue { i64, i1 } %2803, 1, !nosanitize !26
  br i1 %2804, label %2709, label %2805, !nosanitize !26

2805:                                             ; preds = %2797
  %2806 = extractvalue { i64, i1 } %2803, 0, !nosanitize !26
  %2807 = load ptr, ptr %2700, align 8, !tbaa !28
  %2808 = load i16, ptr %2698, align 8, !tbaa !19
  %2809 = lshr i16 %2808, 8
  %2810 = trunc i16 %2809 to i8
  store i64 %2806, ptr %2699, align 8, !tbaa !27
  %2811 = getelementptr inbounds i8, ptr %2807, i64 %2802
  store i8 %2810, ptr %2811, align 1, !tbaa !22
  %2812 = load i32, ptr %2634, align 4, !tbaa !20
  %2813 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2812), !nosanitize !26
  %2814 = extractvalue { i32, i1 } %2813, 1, !nosanitize !26
  br i1 %2814, label %2744, label %2815, !nosanitize !26

2815:                                             ; preds = %2805
  %2816 = extractvalue { i32, i1 } %2813, 0, !nosanitize !26
  %2817 = lshr i32 %2789, %2816
  %2818 = trunc i32 %2817 to i16
  store i16 %2818, ptr %2698, align 8, !tbaa !19
  %2819 = add nsw i32 %2785, -16
  %2820 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2812, i32 %2819), !nosanitize !26
  %2821 = extractvalue { i32, i1 } %2820, 1, !nosanitize !26
  br i1 %2821, label %2709, label %2825, !nosanitize !26

2822:                                             ; preds = %2777
  %2823 = add nsw i32 %2703, %2785
  %2824 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2823, 0
  br label %2825

2825:                                             ; preds = %2822, %2815
  %2826 = phi i16 [ %2818, %2815 ], [ %2792, %2822 ]
  %2827 = phi { i32, i1 } [ %2820, %2815 ], [ %2824, %2822 ]
  %2828 = extractvalue { i32, i1 } %2827, 0
  store i32 %2828, ptr %2634, align 4, !tbaa !20
  %2829 = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %2780
  %2830 = load i32, ptr %2829, align 4, !tbaa !41
  %2831 = add nsw i64 %2780, -28
  %2832 = icmp ult i64 %2831, -20
  br i1 %2832, label %2891, label %2833

2833:                                             ; preds = %2825
  %2834 = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %2780
  %2835 = load i32, ptr %2834, align 4, !tbaa !41
  %2836 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2729, i32 %2835), !nosanitize !26
  %2837 = extractvalue { i32, i1 } %2836, 0, !nosanitize !26
  %2838 = extractvalue { i32, i1 } %2836, 1, !nosanitize !26
  br i1 %2838, label %2744, label %2839, !nosanitize !26

2839:                                             ; preds = %2833
  %2840 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2830), !nosanitize !26
  %2841 = extractvalue { i32, i1 } %2840, 1, !nosanitize !26
  br i1 %2841, label %2744, label %2842, !nosanitize !26

2842:                                             ; preds = %2839
  %2843 = extractvalue { i32, i1 } %2840, 0, !nosanitize !26
  %2844 = icmp sgt i32 %2828, %2843
  br i1 %2844, label %2845, label %2881

2845:                                             ; preds = %2842
  %2846 = and i32 %2837, 65535
  %2847 = shl i32 %2837, %2828
  %2848 = trunc i32 %2847 to i16
  %2849 = or i16 %2826, %2848
  store i16 %2849, ptr %2698, align 8, !tbaa !19
  %2850 = load i64, ptr %2699, align 8, !tbaa !27
  %2851 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2850, i64 1), !nosanitize !26
  %2852 = extractvalue { i64, i1 } %2851, 1, !nosanitize !26
  br i1 %2852, label %2709, label %2853, !nosanitize !26

2853:                                             ; preds = %2845
  %2854 = extractvalue { i64, i1 } %2851, 0, !nosanitize !26
  %2855 = load ptr, ptr %2700, align 8, !tbaa !28
  %2856 = trunc i16 %2849 to i8
  store i64 %2854, ptr %2699, align 8, !tbaa !27
  %2857 = getelementptr inbounds i8, ptr %2855, i64 %2850
  store i8 %2856, ptr %2857, align 1, !tbaa !22
  %2858 = load i64, ptr %2699, align 8, !tbaa !27
  %2859 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2858, i64 1), !nosanitize !26
  %2860 = extractvalue { i64, i1 } %2859, 1, !nosanitize !26
  br i1 %2860, label %2709, label %2861, !nosanitize !26

2861:                                             ; preds = %2853
  %2862 = extractvalue { i64, i1 } %2859, 0, !nosanitize !26
  %2863 = load ptr, ptr %2700, align 8, !tbaa !28
  %2864 = load i16, ptr %2698, align 8, !tbaa !19
  %2865 = lshr i16 %2864, 8
  %2866 = trunc i16 %2865 to i8
  store i64 %2862, ptr %2699, align 8, !tbaa !27
  %2867 = getelementptr inbounds i8, ptr %2863, i64 %2858
  store i8 %2866, ptr %2867, align 1, !tbaa !22
  %2868 = load i32, ptr %2634, align 4, !tbaa !20
  %2869 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2868), !nosanitize !26
  %2870 = extractvalue { i32, i1 } %2869, 1, !nosanitize !26
  br i1 %2870, label %2744, label %2871, !nosanitize !26

2871:                                             ; preds = %2861
  %2872 = extractvalue { i32, i1 } %2869, 0, !nosanitize !26
  %2873 = lshr i32 %2846, %2872
  %2874 = trunc i32 %2873 to i16
  store i16 %2874, ptr %2698, align 8, !tbaa !19
  %2875 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2830, i32 -16)
  %2876 = extractvalue { i32, i1 } %2875, 1, !nosanitize !26
  br i1 %2876, label %2744, label %2877, !nosanitize !26

2877:                                             ; preds = %2871
  %2878 = extractvalue { i32, i1 } %2875, 0, !nosanitize !26
  %2879 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2868, i32 %2878), !nosanitize !26
  %2880 = extractvalue { i32, i1 } %2879, 1, !nosanitize !26
  br i1 %2880, label %2709, label %2887, !nosanitize !26

2881:                                             ; preds = %2842
  %2882 = shl i32 %2837, %2828
  %2883 = trunc i32 %2882 to i16
  %2884 = or i16 %2826, %2883
  store i16 %2884, ptr %2698, align 8, !tbaa !19
  %2885 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2828, i32 %2830), !nosanitize !26
  %2886 = extractvalue { i32, i1 } %2885, 1, !nosanitize !26
  br i1 %2886, label %2709, label %2887, !nosanitize !26

2887:                                             ; preds = %2881, %2877
  %2888 = phi i16 [ %2874, %2877 ], [ %2884, %2881 ]
  %2889 = phi { i32, i1 } [ %2879, %2877 ], [ %2885, %2881 ]
  %2890 = extractvalue { i32, i1 } %2889, 0
  store i32 %2890, ptr %2634, align 4, !tbaa !20
  br label %2891

2891:                                             ; preds = %2887, %2825
  %2892 = phi i16 [ %2888, %2887 ], [ %2826, %2825 ]
  %2893 = phi i32 [ %2890, %2887 ], [ %2828, %2825 ]
  %2894 = add nsw i32 %2721, -1
  %2895 = icmp ult i32 %2721, 257
  %2896 = lshr i32 %2894, 7
  %2897 = add nuw nsw i32 %2896, 256
  %2898 = select i1 %2895, i32 %2894, i32 %2897
  %2899 = zext nneg i32 %2898 to i64
  %2900 = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %2899
  %2901 = load i8, ptr %2900, align 1, !tbaa !22
  %2902 = zext i8 %2901 to i64
  %2903 = getelementptr inbounds %struct.ct_data_s, ptr @static_dtree, i64 %2902
  %2904 = icmp sgt i32 %2893, 11
  %2905 = load i16, ptr %2903, align 4, !tbaa !22
  %2906 = zext i16 %2905 to i32
  %2907 = shl i32 %2906, %2893
  %2908 = trunc i32 %2907 to i16
  %2909 = or i16 %2892, %2908
  store i16 %2909, ptr %2698, align 8, !tbaa !19
  br i1 %2904, label %2910, label %2938

2910:                                             ; preds = %2891
  %2911 = load i64, ptr %2699, align 8, !tbaa !27
  %2912 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2911, i64 1), !nosanitize !26
  %2913 = extractvalue { i64, i1 } %2912, 1, !nosanitize !26
  br i1 %2913, label %2709, label %2914, !nosanitize !26

2914:                                             ; preds = %2910
  %2915 = extractvalue { i64, i1 } %2912, 0, !nosanitize !26
  %2916 = load ptr, ptr %2700, align 8, !tbaa !28
  %2917 = trunc i16 %2909 to i8
  store i64 %2915, ptr %2699, align 8, !tbaa !27
  %2918 = getelementptr inbounds i8, ptr %2916, i64 %2911
  store i8 %2917, ptr %2918, align 1, !tbaa !22
  %2919 = load i64, ptr %2699, align 8, !tbaa !27
  %2920 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2919, i64 1), !nosanitize !26
  %2921 = extractvalue { i64, i1 } %2920, 1, !nosanitize !26
  br i1 %2921, label %2709, label %2922, !nosanitize !26

2922:                                             ; preds = %2914
  %2923 = extractvalue { i64, i1 } %2920, 0, !nosanitize !26
  %2924 = load ptr, ptr %2700, align 8, !tbaa !28
  %2925 = load i16, ptr %2698, align 8, !tbaa !19
  %2926 = lshr i16 %2925, 8
  %2927 = trunc i16 %2926 to i8
  store i64 %2923, ptr %2699, align 8, !tbaa !27
  %2928 = getelementptr inbounds i8, ptr %2924, i64 %2919
  store i8 %2927, ptr %2928, align 1, !tbaa !22
  %2929 = load i32, ptr %2634, align 4, !tbaa !20
  %2930 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2929), !nosanitize !26
  %2931 = extractvalue { i32, i1 } %2930, 1, !nosanitize !26
  br i1 %2931, label %2744, label %2932, !nosanitize !26

2932:                                             ; preds = %2922
  %2933 = extractvalue { i32, i1 } %2930, 0, !nosanitize !26
  %2934 = lshr i32 %2906, %2933
  %2935 = trunc i32 %2934 to i16
  store i16 %2935, ptr %2698, align 8, !tbaa !19
  %2936 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2929, i32 -11), !nosanitize !26
  %2937 = extractvalue { i32, i1 } %2936, 1, !nosanitize !26
  br i1 %2937, label %2709, label %2941, !nosanitize !26

2938:                                             ; preds = %2891
  %2939 = add nsw i32 %2893, 5
  %2940 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2939, 0
  br label %2941

2941:                                             ; preds = %2938, %2932
  %2942 = phi i16 [ %2935, %2932 ], [ %2909, %2938 ]
  %2943 = phi { i32, i1 } [ %2936, %2932 ], [ %2940, %2938 ]
  %2944 = extractvalue { i32, i1 } %2943, 0
  store i32 %2944, ptr %2634, align 4, !tbaa !20
  %2945 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %2902
  %2946 = load i32, ptr %2945, align 4, !tbaa !41
  %2947 = icmp ult i8 %2901, 4
  br i1 %2947, label %3006, label %2948

2948:                                             ; preds = %2941
  %2949 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %2902
  %2950 = load i32, ptr %2949, align 4, !tbaa !41
  %2951 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2894, i32 %2950), !nosanitize !26
  %2952 = extractvalue { i32, i1 } %2951, 0, !nosanitize !26
  %2953 = extractvalue { i32, i1 } %2951, 1, !nosanitize !26
  br i1 %2953, label %2744, label %2954, !nosanitize !26

2954:                                             ; preds = %2948
  %2955 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2946), !nosanitize !26
  %2956 = extractvalue { i32, i1 } %2955, 1, !nosanitize !26
  br i1 %2956, label %2744, label %2957, !nosanitize !26

2957:                                             ; preds = %2954
  %2958 = extractvalue { i32, i1 } %2955, 0, !nosanitize !26
  %2959 = icmp sgt i32 %2944, %2958
  br i1 %2959, label %2960, label %2996

2960:                                             ; preds = %2957
  %2961 = and i32 %2952, 65535
  %2962 = shl i32 %2952, %2944
  %2963 = trunc i32 %2962 to i16
  %2964 = or i16 %2942, %2963
  store i16 %2964, ptr %2698, align 8, !tbaa !19
  %2965 = load i64, ptr %2699, align 8, !tbaa !27
  %2966 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2965, i64 1), !nosanitize !26
  %2967 = extractvalue { i64, i1 } %2966, 1, !nosanitize !26
  br i1 %2967, label %2709, label %2968, !nosanitize !26

2968:                                             ; preds = %2960
  %2969 = extractvalue { i64, i1 } %2966, 0, !nosanitize !26
  %2970 = load ptr, ptr %2700, align 8, !tbaa !28
  %2971 = trunc i16 %2964 to i8
  store i64 %2969, ptr %2699, align 8, !tbaa !27
  %2972 = getelementptr inbounds i8, ptr %2970, i64 %2965
  store i8 %2971, ptr %2972, align 1, !tbaa !22
  %2973 = load i64, ptr %2699, align 8, !tbaa !27
  %2974 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2973, i64 1), !nosanitize !26
  %2975 = extractvalue { i64, i1 } %2974, 1, !nosanitize !26
  br i1 %2975, label %2709, label %2976, !nosanitize !26

2976:                                             ; preds = %2968
  %2977 = extractvalue { i64, i1 } %2974, 0, !nosanitize !26
  %2978 = load ptr, ptr %2700, align 8, !tbaa !28
  %2979 = load i16, ptr %2698, align 8, !tbaa !19
  %2980 = lshr i16 %2979, 8
  %2981 = trunc i16 %2980 to i8
  store i64 %2977, ptr %2699, align 8, !tbaa !27
  %2982 = getelementptr inbounds i8, ptr %2978, i64 %2973
  store i8 %2981, ptr %2982, align 1, !tbaa !22
  %2983 = load i32, ptr %2634, align 4, !tbaa !20
  %2984 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2983), !nosanitize !26
  %2985 = extractvalue { i32, i1 } %2984, 1, !nosanitize !26
  br i1 %2985, label %2744, label %2986, !nosanitize !26

2986:                                             ; preds = %2976
  %2987 = extractvalue { i32, i1 } %2984, 0, !nosanitize !26
  %2988 = lshr i32 %2961, %2987
  %2989 = trunc i32 %2988 to i16
  store i16 %2989, ptr %2698, align 8, !tbaa !19
  %2990 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2946, i32 -16)
  %2991 = extractvalue { i32, i1 } %2990, 1, !nosanitize !26
  br i1 %2991, label %2744, label %2992, !nosanitize !26

2992:                                             ; preds = %2986
  %2993 = extractvalue { i32, i1 } %2990, 0, !nosanitize !26
  %2994 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2983, i32 %2993), !nosanitize !26
  %2995 = extractvalue { i32, i1 } %2994, 1, !nosanitize !26
  br i1 %2995, label %2709, label %3002, !nosanitize !26

2996:                                             ; preds = %2957
  %2997 = shl i32 %2952, %2944
  %2998 = trunc i32 %2997 to i16
  %2999 = or i16 %2942, %2998
  store i16 %2999, ptr %2698, align 8, !tbaa !19
  %3000 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2944, i32 %2946), !nosanitize !26
  %3001 = extractvalue { i32, i1 } %3000, 1, !nosanitize !26
  br i1 %3001, label %2709, label %3002, !nosanitize !26

3002:                                             ; preds = %2992, %2996, %2767, %2774
  %3003 = phi i16 [ %2770, %2767 ], [ %2743, %2774 ], [ %2989, %2992 ], [ %2999, %2996 ]
  %3004 = phi { i32, i1 } [ %2772, %2767 ], [ %2776, %2774 ], [ %2994, %2992 ], [ %3000, %2996 ]
  %3005 = extractvalue { i32, i1 } %3004, 0
  store i32 %3005, ptr %2634, align 4, !tbaa !20
  br label %3006

3006:                                             ; preds = %3002, %2941
  %3007 = phi i16 [ %2942, %2941 ], [ %3003, %3002 ]
  %3008 = phi i32 [ %2944, %2941 ], [ %3005, %3002 ]
  %3009 = load i32, ptr %2693, align 4, !tbaa !25
  %3010 = icmp ult i32 %2723, %3009
  br i1 %3010, label %2701, label %3011, !llvm.loop !70

3011:                                             ; preds = %3006, %2689
  %3012 = phi i16 [ %2690, %2689 ], [ %3007, %3006 ]
  %3013 = phi i32 [ %2692, %2689 ], [ %3008, %3006 ]
  %3014 = icmp sgt i32 %3013, 9
  %3015 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  br i1 %3014, label %3016, label %3043

3016:                                             ; preds = %3011
  %3017 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %3018 = load i64, ptr %3017, align 8, !tbaa !27
  %3019 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3018, i64 1), !nosanitize !26
  %3020 = extractvalue { i64, i1 } %3019, 1, !nosanitize !26
  br i1 %3020, label %2709, label %3021, !nosanitize !26

3021:                                             ; preds = %3016
  %3022 = extractvalue { i64, i1 } %3019, 0, !nosanitize !26
  %3023 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %3024 = load ptr, ptr %3023, align 8, !tbaa !28
  %3025 = trunc i16 %3012 to i8
  store i64 %3022, ptr %3017, align 8, !tbaa !27
  %3026 = getelementptr inbounds i8, ptr %3024, i64 %3018
  store i8 %3025, ptr %3026, align 1, !tbaa !22
  %3027 = load i64, ptr %3017, align 8, !tbaa !27
  %3028 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3027, i64 1), !nosanitize !26
  %3029 = extractvalue { i64, i1 } %3028, 1, !nosanitize !26
  br i1 %3029, label %2709, label %3030, !nosanitize !26

3030:                                             ; preds = %3021
  %3031 = extractvalue { i64, i1 } %3028, 0, !nosanitize !26
  %3032 = load ptr, ptr %3023, align 8, !tbaa !28
  %3033 = load i16, ptr %3015, align 8, !tbaa !19
  %3034 = lshr i16 %3033, 8
  %3035 = trunc i16 %3034 to i8
  store i64 %3031, ptr %3017, align 8, !tbaa !27
  %3036 = getelementptr inbounds i8, ptr %3032, i64 %3027
  store i8 %3035, ptr %3036, align 1, !tbaa !22
  %3037 = load i32, ptr %2634, align 4, !tbaa !20
  %3038 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3037), !nosanitize !26
  %3039 = extractvalue { i32, i1 } %3038, 1, !nosanitize !26
  br i1 %3039, label %2744, label %3040, !nosanitize !26

3040:                                             ; preds = %3030
  store i16 0, ptr %3015, align 8, !tbaa !19
  %3041 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3037, i32 -9), !nosanitize !26
  %3042 = extractvalue { i32, i1 } %3041, 1, !nosanitize !26
  br i1 %3042, label %2709, label %3046, !nosanitize !26

3043:                                             ; preds = %3011
  %3044 = add nsw i32 %3013, 7
  %3045 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3044, 0
  br label %3046

3046:                                             ; preds = %3040, %3043
  %3047 = phi { i32, i1 } [ %3041, %3040 ], [ %3045, %3043 ]
  %3048 = extractvalue { i32, i1 } %3047, 0
  store i32 %3048, ptr %2634, align 4, !tbaa !20
  br label %4575

3049:                                             ; preds = %2632
  %3050 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 4)
  %3051 = extractvalue { i32, i1 } %3050, 1
  br i1 %2636, label %3052, label %3090

3052:                                             ; preds = %3049
  br i1 %3051, label %2439, label %3053, !nosanitize !26

3053:                                             ; preds = %3052
  %3054 = extractvalue { i32, i1 } %3050, 0, !nosanitize !26
  %3055 = and i32 %3054, 65535
  %3056 = shl i32 %3054, %2635
  %3057 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %3058 = load i16, ptr %3057, align 8, !tbaa !19
  %3059 = trunc i32 %3056 to i16
  %3060 = or i16 %3058, %3059
  store i16 %3060, ptr %3057, align 8, !tbaa !19
  %3061 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %3062 = load i64, ptr %3061, align 8, !tbaa !27
  %3063 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3062, i64 1), !nosanitize !26
  %3064 = extractvalue { i64, i1 } %3063, 1, !nosanitize !26
  br i1 %3064, label %2439, label %3065, !nosanitize !26

3065:                                             ; preds = %3053
  %3066 = extractvalue { i64, i1 } %3063, 0, !nosanitize !26
  %3067 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %3068 = load ptr, ptr %3067, align 8, !tbaa !28
  %3069 = trunc i16 %3060 to i8
  store i64 %3066, ptr %3061, align 8, !tbaa !27
  %3070 = getelementptr inbounds i8, ptr %3068, i64 %3062
  store i8 %3069, ptr %3070, align 1, !tbaa !22
  %3071 = load i64, ptr %3061, align 8, !tbaa !27
  %3072 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3071, i64 1), !nosanitize !26
  %3073 = extractvalue { i64, i1 } %3072, 1, !nosanitize !26
  br i1 %3073, label %2439, label %3074, !nosanitize !26

3074:                                             ; preds = %3065
  %3075 = extractvalue { i64, i1 } %3072, 0, !nosanitize !26
  %3076 = load ptr, ptr %3067, align 8, !tbaa !28
  %3077 = load i16, ptr %3057, align 8, !tbaa !19
  %3078 = lshr i16 %3077, 8
  %3079 = trunc i16 %3078 to i8
  store i64 %3075, ptr %3061, align 8, !tbaa !27
  %3080 = getelementptr inbounds i8, ptr %3076, i64 %3071
  store i8 %3079, ptr %3080, align 1, !tbaa !22
  %3081 = load i32, ptr %2634, align 4, !tbaa !20
  %3082 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3081), !nosanitize !26
  %3083 = extractvalue { i32, i1 } %3082, 1, !nosanitize !26
  br i1 %3083, label %2640, label %3084, !nosanitize !26

3084:                                             ; preds = %3074
  %3085 = extractvalue { i32, i1 } %3082, 0, !nosanitize !26
  %3086 = lshr i32 %3055, %3085
  %3087 = trunc i32 %3086 to i16
  store i16 %3087, ptr %3057, align 8, !tbaa !19
  %3088 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3081, i32 -13), !nosanitize !26
  %3089 = extractvalue { i32, i1 } %3088, 1, !nosanitize !26
  br i1 %3089, label %2439, label %3100, !nosanitize !26

3090:                                             ; preds = %3049
  br i1 %3051, label %2439, label %3091, !nosanitize !26

3091:                                             ; preds = %3090
  %3092 = extractvalue { i32, i1 } %3050, 0, !nosanitize !26
  %3093 = shl i32 %3092, %2635
  %3094 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %3095 = load i16, ptr %3094, align 8, !tbaa !19
  %3096 = trunc i32 %3093 to i16
  %3097 = or i16 %3095, %3096
  store i16 %3097, ptr %3094, align 8, !tbaa !19
  %3098 = add nsw i32 %2635, 3
  %3099 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3098, 0
  br label %3100

3100:                                             ; preds = %3091, %3084
  %3101 = phi i16 [ %3087, %3084 ], [ %3097, %3091 ]
  %3102 = phi { i32, i1 } [ %3088, %3084 ], [ %3099, %3091 ]
  %3103 = extractvalue { i32, i1 } %3102, 0
  store i32 %3103, ptr %2634, align 4, !tbaa !20
  %3104 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40, i32 1
  %3105 = load i32, ptr %3104, align 8, !tbaa !64
  %3106 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3105, i32 1), !nosanitize !26
  %3107 = extractvalue { i32, i1 } %3106, 0, !nosanitize !26
  %3108 = extractvalue { i32, i1 } %3106, 1, !nosanitize !26
  br i1 %3108, label %2439, label %3109, !nosanitize !26

3109:                                             ; preds = %3100
  %3110 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i32 1
  %3111 = load i32, ptr %3110, align 8, !tbaa !66
  %3112 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3111, i32 1), !nosanitize !26
  %3113 = extractvalue { i32, i1 } %3112, 0, !nosanitize !26
  %3114 = extractvalue { i32, i1 } %3112, 1, !nosanitize !26
  br i1 %3114, label %2439, label %3115, !nosanitize !26

3115:                                             ; preds = %3109
  %3116 = add nuw nsw i32 %2470, 1
  %3117 = icmp sgt i32 %3103, 11
  %3118 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3107, i32 -257)
  %3119 = extractvalue { i32, i1 } %3118, 1
  br i1 %3117, label %3121, label %3159

3120:                                             ; preds = %3302, %3765, %3327, %3246, %3212, %3196, %3175, %3159, %3143, %3121
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

3121:                                             ; preds = %3115
  br i1 %3119, label %3120, label %3122, !nosanitize !26

3122:                                             ; preds = %3121
  %3123 = extractvalue { i32, i1 } %3118, 0, !nosanitize !26
  %3124 = and i32 %3123, 65535
  %3125 = shl i32 %3123, %3103
  %3126 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %3127 = trunc i32 %3125 to i16
  %3128 = or i16 %3101, %3127
  store i16 %3128, ptr %3126, align 8, !tbaa !19
  %3129 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %3130 = load i64, ptr %3129, align 8, !tbaa !27
  %3131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3130, i64 1), !nosanitize !26
  %3132 = extractvalue { i64, i1 } %3131, 1, !nosanitize !26
  br i1 %3132, label %3133, label %3134, !nosanitize !26

3133:                                             ; preds = %3312, %3294, %3290, %3256, %3237, %3227, %3206, %3187, %3176, %3153, %3134, %3122
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

3134:                                             ; preds = %3122
  %3135 = extractvalue { i64, i1 } %3131, 0, !nosanitize !26
  %3136 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %3137 = load ptr, ptr %3136, align 8, !tbaa !28
  %3138 = trunc i16 %3128 to i8
  store i64 %3135, ptr %3129, align 8, !tbaa !27
  %3139 = getelementptr inbounds i8, ptr %3137, i64 %3130
  store i8 %3138, ptr %3139, align 1, !tbaa !22
  %3140 = load i64, ptr %3129, align 8, !tbaa !27
  %3141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3140, i64 1), !nosanitize !26
  %3142 = extractvalue { i64, i1 } %3141, 1, !nosanitize !26
  br i1 %3142, label %3133, label %3143, !nosanitize !26

3143:                                             ; preds = %3134
  %3144 = extractvalue { i64, i1 } %3141, 0, !nosanitize !26
  %3145 = load ptr, ptr %3136, align 8, !tbaa !28
  %3146 = load i16, ptr %3126, align 8, !tbaa !19
  %3147 = lshr i16 %3146, 8
  %3148 = trunc i16 %3147 to i8
  store i64 %3144, ptr %3129, align 8, !tbaa !27
  %3149 = getelementptr inbounds i8, ptr %3145, i64 %3140
  store i8 %3148, ptr %3149, align 1, !tbaa !22
  %3150 = load i32, ptr %2634, align 4, !tbaa !20
  %3151 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3150), !nosanitize !26
  %3152 = extractvalue { i32, i1 } %3151, 1, !nosanitize !26
  br i1 %3152, label %3120, label %3153, !nosanitize !26

3153:                                             ; preds = %3143
  %3154 = extractvalue { i32, i1 } %3151, 0, !nosanitize !26
  %3155 = lshr i32 %3124, %3154
  %3156 = trunc i32 %3155 to i16
  store i16 %3156, ptr %3126, align 8, !tbaa !19
  %3157 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3150, i32 -11), !nosanitize !26
  %3158 = extractvalue { i32, i1 } %3157, 1, !nosanitize !26
  br i1 %3158, label %3133, label %3168, !nosanitize !26

3159:                                             ; preds = %3115
  br i1 %3119, label %3120, label %3160, !nosanitize !26

3160:                                             ; preds = %3159
  %3161 = extractvalue { i32, i1 } %3118, 0, !nosanitize !26
  %3162 = shl i32 %3161, %3103
  %3163 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %3164 = trunc i32 %3162 to i16
  %3165 = or i16 %3101, %3164
  store i16 %3165, ptr %3163, align 8, !tbaa !19
  %3166 = add nsw i32 %3103, 5
  %3167 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3166, 0
  br label %3168

3168:                                             ; preds = %3160, %3153
  %3169 = phi i16 [ %3156, %3153 ], [ %3165, %3160 ]
  %3170 = phi { i32, i1 } [ %3157, %3153 ], [ %3167, %3160 ]
  %3171 = extractvalue { i32, i1 } %3170, 0
  store i32 %3171, ptr %2634, align 4, !tbaa !20
  %3172 = icmp sgt i32 %3171, 11
  %3173 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3113, i32 -1)
  %3174 = extractvalue { i32, i1 } %3173, 1
  br i1 %3172, label %3175, label %3212

3175:                                             ; preds = %3168
  br i1 %3174, label %3120, label %3176, !nosanitize !26

3176:                                             ; preds = %3175
  %3177 = extractvalue { i32, i1 } %3173, 0, !nosanitize !26
  %3178 = and i32 %3177, 65535
  %3179 = shl i32 %3177, %3171
  %3180 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %3181 = trunc i32 %3179 to i16
  %3182 = or i16 %3169, %3181
  store i16 %3182, ptr %3180, align 8, !tbaa !19
  %3183 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %3184 = load i64, ptr %3183, align 8, !tbaa !27
  %3185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3184, i64 1), !nosanitize !26
  %3186 = extractvalue { i64, i1 } %3185, 1, !nosanitize !26
  br i1 %3186, label %3133, label %3187, !nosanitize !26

3187:                                             ; preds = %3176
  %3188 = extractvalue { i64, i1 } %3185, 0, !nosanitize !26
  %3189 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %3190 = load ptr, ptr %3189, align 8, !tbaa !28
  %3191 = trunc i16 %3182 to i8
  store i64 %3188, ptr %3183, align 8, !tbaa !27
  %3192 = getelementptr inbounds i8, ptr %3190, i64 %3184
  store i8 %3191, ptr %3192, align 1, !tbaa !22
  %3193 = load i64, ptr %3183, align 8, !tbaa !27
  %3194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3193, i64 1), !nosanitize !26
  %3195 = extractvalue { i64, i1 } %3194, 1, !nosanitize !26
  br i1 %3195, label %3133, label %3196, !nosanitize !26

3196:                                             ; preds = %3187
  %3197 = extractvalue { i64, i1 } %3194, 0, !nosanitize !26
  %3198 = load ptr, ptr %3189, align 8, !tbaa !28
  %3199 = load i16, ptr %3180, align 8, !tbaa !19
  %3200 = lshr i16 %3199, 8
  %3201 = trunc i16 %3200 to i8
  store i64 %3197, ptr %3183, align 8, !tbaa !27
  %3202 = getelementptr inbounds i8, ptr %3198, i64 %3193
  store i8 %3201, ptr %3202, align 1, !tbaa !22
  %3203 = load i32, ptr %2634, align 4, !tbaa !20
  %3204 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3203), !nosanitize !26
  %3205 = extractvalue { i32, i1 } %3204, 1, !nosanitize !26
  br i1 %3205, label %3120, label %3206, !nosanitize !26

3206:                                             ; preds = %3196
  %3207 = extractvalue { i32, i1 } %3204, 0, !nosanitize !26
  %3208 = lshr i32 %3178, %3207
  %3209 = trunc i32 %3208 to i16
  store i16 %3209, ptr %3180, align 8, !tbaa !19
  %3210 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3203, i32 -11), !nosanitize !26
  %3211 = extractvalue { i32, i1 } %3210, 1, !nosanitize !26
  br i1 %3211, label %3133, label %3221, !nosanitize !26

3212:                                             ; preds = %3168
  br i1 %3174, label %3120, label %3213, !nosanitize !26

3213:                                             ; preds = %3212
  %3214 = extractvalue { i32, i1 } %3173, 0, !nosanitize !26
  %3215 = shl i32 %3214, %3171
  %3216 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %3217 = trunc i32 %3215 to i16
  %3218 = or i16 %3169, %3217
  store i16 %3218, ptr %3216, align 8, !tbaa !19
  %3219 = add nsw i32 %3171, 5
  %3220 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3219, 0
  br label %3221

3221:                                             ; preds = %3213, %3206
  %3222 = phi i16 [ %3209, %3206 ], [ %3218, %3213 ]
  %3223 = phi { i32, i1 } [ %3210, %3206 ], [ %3220, %3213 ]
  %3224 = extractvalue { i32, i1 } %3223, 0
  store i32 %3224, ptr %2634, align 4, !tbaa !20
  %3225 = icmp sgt i32 %3224, 12
  %3226 = add nsw i32 %2470, -3
  br i1 %3225, label %3227, label %3262

3227:                                             ; preds = %3221
  %3228 = and i32 %3226, 65535
  %3229 = shl i32 %3226, %3224
  %3230 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %3231 = trunc i32 %3229 to i16
  %3232 = or i16 %3222, %3231
  store i16 %3232, ptr %3230, align 8, !tbaa !19
  %3233 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %3234 = load i64, ptr %3233, align 8, !tbaa !27
  %3235 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3234, i64 1), !nosanitize !26
  %3236 = extractvalue { i64, i1 } %3235, 1, !nosanitize !26
  br i1 %3236, label %3133, label %3237, !nosanitize !26

3237:                                             ; preds = %3227
  %3238 = extractvalue { i64, i1 } %3235, 0, !nosanitize !26
  %3239 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %3240 = load ptr, ptr %3239, align 8, !tbaa !28
  %3241 = trunc i16 %3232 to i8
  store i64 %3238, ptr %3233, align 8, !tbaa !27
  %3242 = getelementptr inbounds i8, ptr %3240, i64 %3234
  store i8 %3241, ptr %3242, align 1, !tbaa !22
  %3243 = load i64, ptr %3233, align 8, !tbaa !27
  %3244 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3243, i64 1), !nosanitize !26
  %3245 = extractvalue { i64, i1 } %3244, 1, !nosanitize !26
  br i1 %3245, label %3133, label %3246, !nosanitize !26

3246:                                             ; preds = %3237
  %3247 = extractvalue { i64, i1 } %3244, 0, !nosanitize !26
  %3248 = load ptr, ptr %3239, align 8, !tbaa !28
  %3249 = load i16, ptr %3230, align 8, !tbaa !19
  %3250 = lshr i16 %3249, 8
  %3251 = trunc i16 %3250 to i8
  store i64 %3247, ptr %3233, align 8, !tbaa !27
  %3252 = getelementptr inbounds i8, ptr %3248, i64 %3243
  store i8 %3251, ptr %3252, align 1, !tbaa !22
  %3253 = load i32, ptr %2634, align 4, !tbaa !20
  %3254 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3253), !nosanitize !26
  %3255 = extractvalue { i32, i1 } %3254, 1, !nosanitize !26
  br i1 %3255, label %3120, label %3256, !nosanitize !26

3256:                                             ; preds = %3246
  %3257 = extractvalue { i32, i1 } %3254, 0, !nosanitize !26
  %3258 = lshr i32 %3228, %3257
  %3259 = trunc i32 %3258 to i16
  store i16 %3259, ptr %3230, align 8, !tbaa !19
  %3260 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3253, i32 -12), !nosanitize !26
  %3261 = extractvalue { i32, i1 } %3260, 1, !nosanitize !26
  br i1 %3261, label %3133, label %3268, !nosanitize !26

3262:                                             ; preds = %3221
  %3263 = shl nsw i32 %3226, %3224
  %3264 = trunc i32 %3263 to i16
  %3265 = or i16 %3222, %3264
  %3266 = add nsw i32 %3224, 4
  %3267 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3266, 0
  br label %3268

3268:                                             ; preds = %3256, %3262
  %3269 = phi i16 [ %3259, %3256 ], [ %3265, %3262 ]
  %3270 = phi { i32, i1 } [ %3260, %3256 ], [ %3267, %3262 ]
  %3271 = extractvalue { i32, i1 } %3270, 0
  store i32 %3271, ptr %2634, align 4, !tbaa !20
  %3272 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %3273 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %3274 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %3275 = zext nneg i32 %3116 to i64
  br label %3276

3276:                                             ; preds = %3321, %3268
  %3277 = phi i16 [ %3269, %3268 ], [ %3322, %3321 ]
  %3278 = phi i32 [ %3271, %3268 ], [ %3324, %3321 ]
  %3279 = phi i64 [ 0, %3268 ], [ %3325, %3321 ]
  %3280 = icmp sgt i32 %3278, 13
  %3281 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %3279
  %3282 = load i8, ptr %3281, align 1, !tbaa !22
  %3283 = zext i8 %3282 to i64
  %3284 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %3283, i32 1
  %3285 = load i16, ptr %3284, align 2, !tbaa !22
  %3286 = zext i16 %3285 to i32
  %3287 = shl i32 %3286, %3278
  %3288 = trunc i32 %3287 to i16
  %3289 = or i16 %3277, %3288
  store i16 %3289, ptr %3272, align 8, !tbaa !19
  br i1 %3280, label %3290, label %3318

3290:                                             ; preds = %3276
  %3291 = load i64, ptr %3273, align 8, !tbaa !27
  %3292 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3291, i64 1), !nosanitize !26
  %3293 = extractvalue { i64, i1 } %3292, 1, !nosanitize !26
  br i1 %3293, label %3133, label %3294, !nosanitize !26

3294:                                             ; preds = %3290
  %3295 = extractvalue { i64, i1 } %3292, 0, !nosanitize !26
  %3296 = load ptr, ptr %3274, align 8, !tbaa !28
  %3297 = trunc i16 %3289 to i8
  store i64 %3295, ptr %3273, align 8, !tbaa !27
  %3298 = getelementptr inbounds i8, ptr %3296, i64 %3291
  store i8 %3297, ptr %3298, align 1, !tbaa !22
  %3299 = load i64, ptr %3273, align 8, !tbaa !27
  %3300 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3299, i64 1), !nosanitize !26
  %3301 = extractvalue { i64, i1 } %3300, 1, !nosanitize !26
  br i1 %3301, label %3133, label %3302, !nosanitize !26

3302:                                             ; preds = %3294
  %3303 = extractvalue { i64, i1 } %3300, 0, !nosanitize !26
  %3304 = load ptr, ptr %3274, align 8, !tbaa !28
  %3305 = load i16, ptr %3272, align 8, !tbaa !19
  %3306 = lshr i16 %3305, 8
  %3307 = trunc i16 %3306 to i8
  store i64 %3303, ptr %3273, align 8, !tbaa !27
  %3308 = getelementptr inbounds i8, ptr %3304, i64 %3299
  store i8 %3307, ptr %3308, align 1, !tbaa !22
  %3309 = load i32, ptr %2634, align 4, !tbaa !20
  %3310 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3309), !nosanitize !26
  %3311 = extractvalue { i32, i1 } %3310, 1, !nosanitize !26
  br i1 %3311, label %3120, label %3312, !nosanitize !26

3312:                                             ; preds = %3302
  %3313 = extractvalue { i32, i1 } %3310, 0, !nosanitize !26
  %3314 = lshr i32 %3286, %3313
  %3315 = trunc i32 %3314 to i16
  store i16 %3315, ptr %3272, align 8, !tbaa !19
  %3316 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3309, i32 -13), !nosanitize !26
  %3317 = extractvalue { i32, i1 } %3316, 1, !nosanitize !26
  br i1 %3317, label %3133, label %3321, !nosanitize !26

3318:                                             ; preds = %3276
  %3319 = add nsw i32 %3278, 3
  %3320 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3319, 0
  br label %3321

3321:                                             ; preds = %3318, %3312
  %3322 = phi i16 [ %3315, %3312 ], [ %3289, %3318 ]
  %3323 = phi { i32, i1 } [ %3316, %3312 ], [ %3320, %3318 ]
  %3324 = extractvalue { i32, i1 } %3323, 0
  store i32 %3324, ptr %2634, align 4, !tbaa !20
  %3325 = add nuw nsw i64 %3279, 1
  %3326 = icmp eq i64 %3325, %3275
  br i1 %3326, label %3327, label %3276, !llvm.loop !71

3327:                                             ; preds = %3321
  %3328 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3107, i32 -1)
  %3329 = extractvalue { i32, i1 } %3328, 1, !nosanitize !26
  br i1 %3329, label %3120, label %3330, !nosanitize !26

3330:                                             ; preds = %3327
  %3331 = extractvalue { i32, i1 } %3328, 0, !nosanitize !26
  %3332 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37
  %3333 = icmp slt i32 %3331, 0
  br i1 %3333, label %3765, label %3334

3334:                                             ; preds = %3330
  %3335 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 0, i32 1
  %3336 = load i16, ptr %3335, align 2, !tbaa !22
  %3337 = icmp eq i16 %3336, 0
  %3338 = select i1 %3337, i32 138, i32 7
  %3339 = select i1 %3337, i32 3, i32 4
  %3340 = zext i16 %3336 to i32
  %3341 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  %3342 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16, i32 1
  %3343 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  %3344 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18, i32 1
  %3345 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  %3346 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17, i32 1
  br label %3347

3347:                                             ; preds = %3757, %3334
  %3348 = phi i16 [ %3322, %3334 ], [ %3758, %3757 ]
  %3349 = phi i32 [ %3324, %3334 ], [ %3759, %3757 ]
  %3350 = phi i32 [ 0, %3334 ], [ %3357, %3757 ]
  %3351 = phi i32 [ -1, %3334 ], [ %3763, %3757 ]
  %3352 = phi i32 [ %3340, %3334 ], [ %3364, %3757 ]
  %3353 = phi i32 [ 0, %3334 ], [ %3762, %3757 ]
  %3354 = phi i32 [ %3338, %3334 ], [ %3761, %3757 ]
  %3355 = phi i32 [ %3339, %3334 ], [ %3760, %3757 ]
  %3356 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3350, i32 1), !nosanitize !26
  %3357 = extractvalue { i32, i1 } %3356, 0, !nosanitize !26
  %3358 = extractvalue { i32, i1 } %3356, 1, !nosanitize !26
  br i1 %3358, label %3359, label %3360, !nosanitize !26

3359:                                             ; preds = %3734, %3716, %3708, %3692, %3674, %3670, %3648, %3630, %3622, %3606, %3588, %3584, %3560, %3542, %3534, %3518, %3500, %3496, %3469, %3451, %3447, %3347, %3411, %3393, %3389
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

3360:                                             ; preds = %3347
  %3361 = sext i32 %3357 to i64
  %3362 = getelementptr inbounds %struct.ct_data_s, ptr %3332, i64 %3361, i32 1
  %3363 = load i16, ptr %3362, align 2, !tbaa !22
  %3364 = zext i16 %3363 to i32
  %3365 = add nsw i32 %3353, 1
  %3366 = icmp slt i32 %3365, %3354
  %3367 = icmp eq i32 %3352, %3364
  %3368 = select i1 %3366, i1 %3367, i1 false
  br i1 %3368, label %3757, label %3369

3369:                                             ; preds = %3360
  %3370 = icmp slt i32 %3365, %3355
  br i1 %3370, label %3371, label %3430

3371:                                             ; preds = %3369
  %3372 = zext nneg i32 %3352 to i64
  %3373 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %3372
  %3374 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %3372, i32 1
  br label %3375

3375:                                             ; preds = %3427, %3371
  %3376 = phi i16 [ %3422, %3427 ], [ %3348, %3371 ]
  %3377 = phi i32 [ %3424, %3427 ], [ %3349, %3371 ]
  %3378 = phi i32 [ %3428, %3427 ], [ %3365, %3371 ]
  %3379 = load i16, ptr %3374, align 2, !tbaa !22
  %3380 = zext i16 %3379 to i32
  %3381 = sub nsw i32 16, %3380
  %3382 = icmp sgt i32 %3377, %3381
  %3383 = load i16, ptr %3373, align 4, !tbaa !22
  %3384 = zext i16 %3383 to i32
  %3385 = shl i32 %3384, %3377
  %3386 = trunc i32 %3385 to i16
  %3387 = or i16 %3376, %3386
  store i16 %3387, ptr %3272, align 8, !tbaa !19
  br i1 %3382, label %3389, label %3418

3388:                                             ; preds = %3724, %3682, %3638, %3596, %3550, %3508, %3459, %3421, %3401
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

3389:                                             ; preds = %3375
  %3390 = load i64, ptr %3273, align 8, !tbaa !27
  %3391 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3390, i64 1), !nosanitize !26
  %3392 = extractvalue { i64, i1 } %3391, 1, !nosanitize !26
  br i1 %3392, label %3359, label %3393, !nosanitize !26

3393:                                             ; preds = %3389
  %3394 = extractvalue { i64, i1 } %3391, 0, !nosanitize !26
  %3395 = load ptr, ptr %3274, align 8, !tbaa !28
  %3396 = trunc i16 %3387 to i8
  store i64 %3394, ptr %3273, align 8, !tbaa !27
  %3397 = getelementptr inbounds i8, ptr %3395, i64 %3390
  store i8 %3396, ptr %3397, align 1, !tbaa !22
  %3398 = load i64, ptr %3273, align 8, !tbaa !27
  %3399 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3398, i64 1), !nosanitize !26
  %3400 = extractvalue { i64, i1 } %3399, 1, !nosanitize !26
  br i1 %3400, label %3359, label %3401, !nosanitize !26

3401:                                             ; preds = %3393
  %3402 = extractvalue { i64, i1 } %3399, 0, !nosanitize !26
  %3403 = load ptr, ptr %3274, align 8, !tbaa !28
  %3404 = load i16, ptr %3272, align 8, !tbaa !19
  %3405 = lshr i16 %3404, 8
  %3406 = trunc i16 %3405 to i8
  store i64 %3402, ptr %3273, align 8, !tbaa !27
  %3407 = getelementptr inbounds i8, ptr %3403, i64 %3398
  store i8 %3406, ptr %3407, align 1, !tbaa !22
  %3408 = load i32, ptr %2634, align 4, !tbaa !20
  %3409 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3408), !nosanitize !26
  %3410 = extractvalue { i32, i1 } %3409, 1, !nosanitize !26
  br i1 %3410, label %3388, label %3411, !nosanitize !26

3411:                                             ; preds = %3401
  %3412 = extractvalue { i32, i1 } %3409, 0, !nosanitize !26
  %3413 = lshr i32 %3384, %3412
  %3414 = trunc i32 %3413 to i16
  store i16 %3414, ptr %3272, align 8, !tbaa !19
  %3415 = add nsw i32 %3380, -16
  %3416 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3408, i32 %3415), !nosanitize !26
  %3417 = extractvalue { i32, i1 } %3416, 1, !nosanitize !26
  br i1 %3417, label %3359, label %3421, !nosanitize !26

3418:                                             ; preds = %3375
  %3419 = add nsw i32 %3377, %3380
  %3420 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3419, 0
  br label %3421

3421:                                             ; preds = %3418, %3411
  %3422 = phi i16 [ %3414, %3411 ], [ %3387, %3418 ]
  %3423 = phi { i32, i1 } [ %3416, %3411 ], [ %3420, %3418 ]
  %3424 = extractvalue { i32, i1 } %3423, 0
  store i32 %3424, ptr %2634, align 4, !tbaa !20
  %3425 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3378, i32 -1)
  %3426 = extractvalue { i32, i1 } %3425, 1, !nosanitize !26
  br i1 %3426, label %3388, label %3427, !nosanitize !26

3427:                                             ; preds = %3421
  %3428 = extractvalue { i32, i1 } %3425, 0, !nosanitize !26
  %3429 = icmp eq i32 %3428, 0
  br i1 %3429, label %3750, label %3375, !llvm.loop !72

3430:                                             ; preds = %3369
  %3431 = icmp eq i32 %3352, 0
  br i1 %3431, label %3572, label %3432

3432:                                             ; preds = %3430
  %3433 = icmp eq i32 %3352, %3351
  br i1 %3433, label %3483, label %3434

3434:                                             ; preds = %3432
  %3435 = zext nneg i32 %3352 to i64
  %3436 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %3435
  %3437 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %3435, i32 1
  %3438 = load i16, ptr %3437, align 2, !tbaa !22
  %3439 = zext i16 %3438 to i32
  %3440 = sub nsw i32 16, %3439
  %3441 = icmp sgt i32 %3349, %3440
  %3442 = load i16, ptr %3436, align 4, !tbaa !22
  %3443 = zext i16 %3442 to i32
  %3444 = shl i32 %3443, %3349
  %3445 = trunc i32 %3444 to i16
  %3446 = or i16 %3348, %3445
  store i16 %3446, ptr %3272, align 8, !tbaa !19
  br i1 %3441, label %3447, label %3476

3447:                                             ; preds = %3434
  %3448 = load i64, ptr %3273, align 8, !tbaa !27
  %3449 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3448, i64 1), !nosanitize !26
  %3450 = extractvalue { i64, i1 } %3449, 1, !nosanitize !26
  br i1 %3450, label %3359, label %3451, !nosanitize !26

3451:                                             ; preds = %3447
  %3452 = extractvalue { i64, i1 } %3449, 0, !nosanitize !26
  %3453 = load ptr, ptr %3274, align 8, !tbaa !28
  %3454 = trunc i16 %3446 to i8
  store i64 %3452, ptr %3273, align 8, !tbaa !27
  %3455 = getelementptr inbounds i8, ptr %3453, i64 %3448
  store i8 %3454, ptr %3455, align 1, !tbaa !22
  %3456 = load i64, ptr %3273, align 8, !tbaa !27
  %3457 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3456, i64 1), !nosanitize !26
  %3458 = extractvalue { i64, i1 } %3457, 1, !nosanitize !26
  br i1 %3458, label %3359, label %3459, !nosanitize !26

3459:                                             ; preds = %3451
  %3460 = extractvalue { i64, i1 } %3457, 0, !nosanitize !26
  %3461 = load ptr, ptr %3274, align 8, !tbaa !28
  %3462 = load i16, ptr %3272, align 8, !tbaa !19
  %3463 = lshr i16 %3462, 8
  %3464 = trunc i16 %3463 to i8
  store i64 %3460, ptr %3273, align 8, !tbaa !27
  %3465 = getelementptr inbounds i8, ptr %3461, i64 %3456
  store i8 %3464, ptr %3465, align 1, !tbaa !22
  %3466 = load i32, ptr %2634, align 4, !tbaa !20
  %3467 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3466), !nosanitize !26
  %3468 = extractvalue { i32, i1 } %3467, 1, !nosanitize !26
  br i1 %3468, label %3388, label %3469, !nosanitize !26

3469:                                             ; preds = %3459
  %3470 = extractvalue { i32, i1 } %3467, 0, !nosanitize !26
  %3471 = lshr i32 %3443, %3470
  %3472 = trunc i32 %3471 to i16
  store i16 %3472, ptr %3272, align 8, !tbaa !19
  %3473 = add nsw i32 %3439, -16
  %3474 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3466, i32 %3473), !nosanitize !26
  %3475 = extractvalue { i32, i1 } %3474, 1, !nosanitize !26
  br i1 %3475, label %3359, label %3479, !nosanitize !26

3476:                                             ; preds = %3434
  %3477 = add nsw i32 %3349, %3439
  %3478 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3477, 0
  br label %3479

3479:                                             ; preds = %3476, %3469
  %3480 = phi i16 [ %3472, %3469 ], [ %3446, %3476 ]
  %3481 = phi { i32, i1 } [ %3474, %3469 ], [ %3478, %3476 ]
  %3482 = extractvalue { i32, i1 } %3481, 0
  store i32 %3482, ptr %2634, align 4, !tbaa !20
  br label %3483

3483:                                             ; preds = %3479, %3432
  %3484 = phi i16 [ %3480, %3479 ], [ %3348, %3432 ]
  %3485 = phi i32 [ %3482, %3479 ], [ %3349, %3432 ]
  %3486 = phi i32 [ %3353, %3479 ], [ %3365, %3432 ]
  %3487 = load i16, ptr %3342, align 2, !tbaa !22
  %3488 = zext i16 %3487 to i32
  %3489 = sub nsw i32 16, %3488
  %3490 = icmp sgt i32 %3485, %3489
  %3491 = load i16, ptr %3341, align 4, !tbaa !22
  %3492 = zext i16 %3491 to i32
  %3493 = shl i32 %3492, %3485
  %3494 = trunc i32 %3493 to i16
  %3495 = or i16 %3484, %3494
  store i16 %3495, ptr %3272, align 8, !tbaa !19
  br i1 %3490, label %3496, label %3525

3496:                                             ; preds = %3483
  %3497 = load i64, ptr %3273, align 8, !tbaa !27
  %3498 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3497, i64 1), !nosanitize !26
  %3499 = extractvalue { i64, i1 } %3498, 1, !nosanitize !26
  br i1 %3499, label %3359, label %3500, !nosanitize !26

3500:                                             ; preds = %3496
  %3501 = extractvalue { i64, i1 } %3498, 0, !nosanitize !26
  %3502 = load ptr, ptr %3274, align 8, !tbaa !28
  %3503 = trunc i16 %3495 to i8
  store i64 %3501, ptr %3273, align 8, !tbaa !27
  %3504 = getelementptr inbounds i8, ptr %3502, i64 %3497
  store i8 %3503, ptr %3504, align 1, !tbaa !22
  %3505 = load i64, ptr %3273, align 8, !tbaa !27
  %3506 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3505, i64 1), !nosanitize !26
  %3507 = extractvalue { i64, i1 } %3506, 1, !nosanitize !26
  br i1 %3507, label %3359, label %3508, !nosanitize !26

3508:                                             ; preds = %3500
  %3509 = extractvalue { i64, i1 } %3506, 0, !nosanitize !26
  %3510 = load ptr, ptr %3274, align 8, !tbaa !28
  %3511 = load i16, ptr %3272, align 8, !tbaa !19
  %3512 = lshr i16 %3511, 8
  %3513 = trunc i16 %3512 to i8
  store i64 %3509, ptr %3273, align 8, !tbaa !27
  %3514 = getelementptr inbounds i8, ptr %3510, i64 %3505
  store i8 %3513, ptr %3514, align 1, !tbaa !22
  %3515 = load i32, ptr %2634, align 4, !tbaa !20
  %3516 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3515), !nosanitize !26
  %3517 = extractvalue { i32, i1 } %3516, 1, !nosanitize !26
  br i1 %3517, label %3388, label %3518, !nosanitize !26

3518:                                             ; preds = %3508
  %3519 = extractvalue { i32, i1 } %3516, 0, !nosanitize !26
  %3520 = lshr i32 %3492, %3519
  %3521 = trunc i32 %3520 to i16
  store i16 %3521, ptr %3272, align 8, !tbaa !19
  %3522 = add nsw i32 %3488, -16
  %3523 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3515, i32 %3522), !nosanitize !26
  %3524 = extractvalue { i32, i1 } %3523, 1, !nosanitize !26
  br i1 %3524, label %3359, label %3528, !nosanitize !26

3525:                                             ; preds = %3483
  %3526 = add nsw i32 %3485, %3488
  %3527 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3526, 0
  br label %3528

3528:                                             ; preds = %3525, %3518
  %3529 = phi i16 [ %3521, %3518 ], [ %3495, %3525 ]
  %3530 = phi { i32, i1 } [ %3523, %3518 ], [ %3527, %3525 ]
  %3531 = extractvalue { i32, i1 } %3530, 0
  store i32 %3531, ptr %2634, align 4, !tbaa !20
  %3532 = icmp sgt i32 %3531, 14
  %3533 = add i32 %3486, 65533
  br i1 %3532, label %3534, label %3566

3534:                                             ; preds = %3528
  %3535 = and i32 %3533, 65535
  %3536 = shl i32 %3533, %3531
  %3537 = trunc i32 %3536 to i16
  %3538 = or i16 %3529, %3537
  store i16 %3538, ptr %3272, align 8, !tbaa !19
  %3539 = load i64, ptr %3273, align 8, !tbaa !27
  %3540 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3539, i64 1), !nosanitize !26
  %3541 = extractvalue { i64, i1 } %3540, 1, !nosanitize !26
  br i1 %3541, label %3359, label %3542, !nosanitize !26

3542:                                             ; preds = %3534
  %3543 = extractvalue { i64, i1 } %3540, 0, !nosanitize !26
  %3544 = load ptr, ptr %3274, align 8, !tbaa !28
  %3545 = trunc i16 %3538 to i8
  store i64 %3543, ptr %3273, align 8, !tbaa !27
  %3546 = getelementptr inbounds i8, ptr %3544, i64 %3539
  store i8 %3545, ptr %3546, align 1, !tbaa !22
  %3547 = load i64, ptr %3273, align 8, !tbaa !27
  %3548 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3547, i64 1), !nosanitize !26
  %3549 = extractvalue { i64, i1 } %3548, 1, !nosanitize !26
  br i1 %3549, label %3359, label %3550, !nosanitize !26

3550:                                             ; preds = %3542
  %3551 = extractvalue { i64, i1 } %3548, 0, !nosanitize !26
  %3552 = load ptr, ptr %3274, align 8, !tbaa !28
  %3553 = load i16, ptr %3272, align 8, !tbaa !19
  %3554 = lshr i16 %3553, 8
  %3555 = trunc i16 %3554 to i8
  store i64 %3551, ptr %3273, align 8, !tbaa !27
  %3556 = getelementptr inbounds i8, ptr %3552, i64 %3547
  store i8 %3555, ptr %3556, align 1, !tbaa !22
  %3557 = load i32, ptr %2634, align 4, !tbaa !20
  %3558 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3557), !nosanitize !26
  %3559 = extractvalue { i32, i1 } %3558, 1, !nosanitize !26
  br i1 %3559, label %3388, label %3560, !nosanitize !26

3560:                                             ; preds = %3550
  %3561 = extractvalue { i32, i1 } %3558, 0, !nosanitize !26
  %3562 = lshr i32 %3535, %3561
  %3563 = trunc i32 %3562 to i16
  store i16 %3563, ptr %3272, align 8, !tbaa !19
  %3564 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3557, i32 -14), !nosanitize !26
  %3565 = extractvalue { i32, i1 } %3564, 1, !nosanitize !26
  br i1 %3565, label %3359, label %3746, !nosanitize !26

3566:                                             ; preds = %3528
  %3567 = shl i32 %3533, %3531
  %3568 = trunc i32 %3567 to i16
  %3569 = or i16 %3529, %3568
  store i16 %3569, ptr %3272, align 8, !tbaa !19
  %3570 = add nsw i32 %3531, 2
  %3571 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3570, 0
  br label %3746

3572:                                             ; preds = %3430
  %3573 = icmp slt i32 %3353, 10
  br i1 %3573, label %3574, label %3660

3574:                                             ; preds = %3572
  %3575 = load i16, ptr %3346, align 2, !tbaa !22
  %3576 = zext i16 %3575 to i32
  %3577 = sub nsw i32 16, %3576
  %3578 = icmp sgt i32 %3349, %3577
  %3579 = load i16, ptr %3345, align 4, !tbaa !22
  %3580 = zext i16 %3579 to i32
  %3581 = shl i32 %3580, %3349
  %3582 = trunc i32 %3581 to i16
  %3583 = or i16 %3348, %3582
  store i16 %3583, ptr %3272, align 8, !tbaa !19
  br i1 %3578, label %3584, label %3613

3584:                                             ; preds = %3574
  %3585 = load i64, ptr %3273, align 8, !tbaa !27
  %3586 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3585, i64 1), !nosanitize !26
  %3587 = extractvalue { i64, i1 } %3586, 1, !nosanitize !26
  br i1 %3587, label %3359, label %3588, !nosanitize !26

3588:                                             ; preds = %3584
  %3589 = extractvalue { i64, i1 } %3586, 0, !nosanitize !26
  %3590 = load ptr, ptr %3274, align 8, !tbaa !28
  %3591 = trunc i16 %3583 to i8
  store i64 %3589, ptr %3273, align 8, !tbaa !27
  %3592 = getelementptr inbounds i8, ptr %3590, i64 %3585
  store i8 %3591, ptr %3592, align 1, !tbaa !22
  %3593 = load i64, ptr %3273, align 8, !tbaa !27
  %3594 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3593, i64 1), !nosanitize !26
  %3595 = extractvalue { i64, i1 } %3594, 1, !nosanitize !26
  br i1 %3595, label %3359, label %3596, !nosanitize !26

3596:                                             ; preds = %3588
  %3597 = extractvalue { i64, i1 } %3594, 0, !nosanitize !26
  %3598 = load ptr, ptr %3274, align 8, !tbaa !28
  %3599 = load i16, ptr %3272, align 8, !tbaa !19
  %3600 = lshr i16 %3599, 8
  %3601 = trunc i16 %3600 to i8
  store i64 %3597, ptr %3273, align 8, !tbaa !27
  %3602 = getelementptr inbounds i8, ptr %3598, i64 %3593
  store i8 %3601, ptr %3602, align 1, !tbaa !22
  %3603 = load i32, ptr %2634, align 4, !tbaa !20
  %3604 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3603), !nosanitize !26
  %3605 = extractvalue { i32, i1 } %3604, 1, !nosanitize !26
  br i1 %3605, label %3388, label %3606, !nosanitize !26

3606:                                             ; preds = %3596
  %3607 = extractvalue { i32, i1 } %3604, 0, !nosanitize !26
  %3608 = lshr i32 %3580, %3607
  %3609 = trunc i32 %3608 to i16
  store i16 %3609, ptr %3272, align 8, !tbaa !19
  %3610 = add nsw i32 %3576, -16
  %3611 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3603, i32 %3610), !nosanitize !26
  %3612 = extractvalue { i32, i1 } %3611, 1, !nosanitize !26
  br i1 %3612, label %3359, label %3616, !nosanitize !26

3613:                                             ; preds = %3574
  %3614 = add nsw i32 %3349, %3576
  %3615 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3614, 0
  br label %3616

3616:                                             ; preds = %3613, %3606
  %3617 = phi i16 [ %3609, %3606 ], [ %3583, %3613 ]
  %3618 = phi { i32, i1 } [ %3611, %3606 ], [ %3615, %3613 ]
  %3619 = extractvalue { i32, i1 } %3618, 0
  store i32 %3619, ptr %2634, align 4, !tbaa !20
  %3620 = icmp sgt i32 %3619, 13
  %3621 = add nsw i32 %3353, 65534
  br i1 %3620, label %3622, label %3654

3622:                                             ; preds = %3616
  %3623 = and i32 %3621, 65535
  %3624 = shl i32 %3621, %3619
  %3625 = trunc i32 %3624 to i16
  %3626 = or i16 %3617, %3625
  store i16 %3626, ptr %3272, align 8, !tbaa !19
  %3627 = load i64, ptr %3273, align 8, !tbaa !27
  %3628 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3627, i64 1), !nosanitize !26
  %3629 = extractvalue { i64, i1 } %3628, 1, !nosanitize !26
  br i1 %3629, label %3359, label %3630, !nosanitize !26

3630:                                             ; preds = %3622
  %3631 = extractvalue { i64, i1 } %3628, 0, !nosanitize !26
  %3632 = load ptr, ptr %3274, align 8, !tbaa !28
  %3633 = trunc i16 %3626 to i8
  store i64 %3631, ptr %3273, align 8, !tbaa !27
  %3634 = getelementptr inbounds i8, ptr %3632, i64 %3627
  store i8 %3633, ptr %3634, align 1, !tbaa !22
  %3635 = load i64, ptr %3273, align 8, !tbaa !27
  %3636 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3635, i64 1), !nosanitize !26
  %3637 = extractvalue { i64, i1 } %3636, 1, !nosanitize !26
  br i1 %3637, label %3359, label %3638, !nosanitize !26

3638:                                             ; preds = %3630
  %3639 = extractvalue { i64, i1 } %3636, 0, !nosanitize !26
  %3640 = load ptr, ptr %3274, align 8, !tbaa !28
  %3641 = load i16, ptr %3272, align 8, !tbaa !19
  %3642 = lshr i16 %3641, 8
  %3643 = trunc i16 %3642 to i8
  store i64 %3639, ptr %3273, align 8, !tbaa !27
  %3644 = getelementptr inbounds i8, ptr %3640, i64 %3635
  store i8 %3643, ptr %3644, align 1, !tbaa !22
  %3645 = load i32, ptr %2634, align 4, !tbaa !20
  %3646 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3645), !nosanitize !26
  %3647 = extractvalue { i32, i1 } %3646, 1, !nosanitize !26
  br i1 %3647, label %3388, label %3648, !nosanitize !26

3648:                                             ; preds = %3638
  %3649 = extractvalue { i32, i1 } %3646, 0, !nosanitize !26
  %3650 = lshr i32 %3623, %3649
  %3651 = trunc i32 %3650 to i16
  store i16 %3651, ptr %3272, align 8, !tbaa !19
  %3652 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3645, i32 -13), !nosanitize !26
  %3653 = extractvalue { i32, i1 } %3652, 1, !nosanitize !26
  br i1 %3653, label %3359, label %3746, !nosanitize !26

3654:                                             ; preds = %3616
  %3655 = shl i32 %3621, %3619
  %3656 = trunc i32 %3655 to i16
  %3657 = or i16 %3617, %3656
  store i16 %3657, ptr %3272, align 8, !tbaa !19
  %3658 = add nsw i32 %3619, 3
  %3659 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3658, 0
  br label %3746

3660:                                             ; preds = %3572
  %3661 = load i16, ptr %3344, align 2, !tbaa !22
  %3662 = zext i16 %3661 to i32
  %3663 = sub nsw i32 16, %3662
  %3664 = icmp sgt i32 %3349, %3663
  %3665 = load i16, ptr %3343, align 4, !tbaa !22
  %3666 = zext i16 %3665 to i32
  %3667 = shl i32 %3666, %3349
  %3668 = trunc i32 %3667 to i16
  %3669 = or i16 %3348, %3668
  store i16 %3669, ptr %3272, align 8, !tbaa !19
  br i1 %3664, label %3670, label %3699

3670:                                             ; preds = %3660
  %3671 = load i64, ptr %3273, align 8, !tbaa !27
  %3672 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3671, i64 1), !nosanitize !26
  %3673 = extractvalue { i64, i1 } %3672, 1, !nosanitize !26
  br i1 %3673, label %3359, label %3674, !nosanitize !26

3674:                                             ; preds = %3670
  %3675 = extractvalue { i64, i1 } %3672, 0, !nosanitize !26
  %3676 = load ptr, ptr %3274, align 8, !tbaa !28
  %3677 = trunc i16 %3669 to i8
  store i64 %3675, ptr %3273, align 8, !tbaa !27
  %3678 = getelementptr inbounds i8, ptr %3676, i64 %3671
  store i8 %3677, ptr %3678, align 1, !tbaa !22
  %3679 = load i64, ptr %3273, align 8, !tbaa !27
  %3680 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3679, i64 1), !nosanitize !26
  %3681 = extractvalue { i64, i1 } %3680, 1, !nosanitize !26
  br i1 %3681, label %3359, label %3682, !nosanitize !26

3682:                                             ; preds = %3674
  %3683 = extractvalue { i64, i1 } %3680, 0, !nosanitize !26
  %3684 = load ptr, ptr %3274, align 8, !tbaa !28
  %3685 = load i16, ptr %3272, align 8, !tbaa !19
  %3686 = lshr i16 %3685, 8
  %3687 = trunc i16 %3686 to i8
  store i64 %3683, ptr %3273, align 8, !tbaa !27
  %3688 = getelementptr inbounds i8, ptr %3684, i64 %3679
  store i8 %3687, ptr %3688, align 1, !tbaa !22
  %3689 = load i32, ptr %2634, align 4, !tbaa !20
  %3690 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3689), !nosanitize !26
  %3691 = extractvalue { i32, i1 } %3690, 1, !nosanitize !26
  br i1 %3691, label %3388, label %3692, !nosanitize !26

3692:                                             ; preds = %3682
  %3693 = extractvalue { i32, i1 } %3690, 0, !nosanitize !26
  %3694 = lshr i32 %3666, %3693
  %3695 = trunc i32 %3694 to i16
  store i16 %3695, ptr %3272, align 8, !tbaa !19
  %3696 = add nsw i32 %3662, -16
  %3697 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3689, i32 %3696), !nosanitize !26
  %3698 = extractvalue { i32, i1 } %3697, 1, !nosanitize !26
  br i1 %3698, label %3359, label %3702, !nosanitize !26

3699:                                             ; preds = %3660
  %3700 = add nsw i32 %3349, %3662
  %3701 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3700, 0
  br label %3702

3702:                                             ; preds = %3699, %3692
  %3703 = phi i16 [ %3695, %3692 ], [ %3669, %3699 ]
  %3704 = phi { i32, i1 } [ %3697, %3692 ], [ %3701, %3699 ]
  %3705 = extractvalue { i32, i1 } %3704, 0
  store i32 %3705, ptr %2634, align 4, !tbaa !20
  %3706 = icmp sgt i32 %3705, 9
  %3707 = add nuw i32 %3353, 65526
  br i1 %3706, label %3708, label %3740

3708:                                             ; preds = %3702
  %3709 = and i32 %3707, 65535
  %3710 = shl i32 %3707, %3705
  %3711 = trunc i32 %3710 to i16
  %3712 = or i16 %3703, %3711
  store i16 %3712, ptr %3272, align 8, !tbaa !19
  %3713 = load i64, ptr %3273, align 8, !tbaa !27
  %3714 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3713, i64 1), !nosanitize !26
  %3715 = extractvalue { i64, i1 } %3714, 1, !nosanitize !26
  br i1 %3715, label %3359, label %3716, !nosanitize !26

3716:                                             ; preds = %3708
  %3717 = extractvalue { i64, i1 } %3714, 0, !nosanitize !26
  %3718 = load ptr, ptr %3274, align 8, !tbaa !28
  %3719 = trunc i16 %3712 to i8
  store i64 %3717, ptr %3273, align 8, !tbaa !27
  %3720 = getelementptr inbounds i8, ptr %3718, i64 %3713
  store i8 %3719, ptr %3720, align 1, !tbaa !22
  %3721 = load i64, ptr %3273, align 8, !tbaa !27
  %3722 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3721, i64 1), !nosanitize !26
  %3723 = extractvalue { i64, i1 } %3722, 1, !nosanitize !26
  br i1 %3723, label %3359, label %3724, !nosanitize !26

3724:                                             ; preds = %3716
  %3725 = extractvalue { i64, i1 } %3722, 0, !nosanitize !26
  %3726 = load ptr, ptr %3274, align 8, !tbaa !28
  %3727 = load i16, ptr %3272, align 8, !tbaa !19
  %3728 = lshr i16 %3727, 8
  %3729 = trunc i16 %3728 to i8
  store i64 %3725, ptr %3273, align 8, !tbaa !27
  %3730 = getelementptr inbounds i8, ptr %3726, i64 %3721
  store i8 %3729, ptr %3730, align 1, !tbaa !22
  %3731 = load i32, ptr %2634, align 4, !tbaa !20
  %3732 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3731), !nosanitize !26
  %3733 = extractvalue { i32, i1 } %3732, 1, !nosanitize !26
  br i1 %3733, label %3388, label %3734, !nosanitize !26

3734:                                             ; preds = %3724
  %3735 = extractvalue { i32, i1 } %3732, 0, !nosanitize !26
  %3736 = lshr i32 %3709, %3735
  %3737 = trunc i32 %3736 to i16
  store i16 %3737, ptr %3272, align 8, !tbaa !19
  %3738 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3731, i32 -9), !nosanitize !26
  %3739 = extractvalue { i32, i1 } %3738, 1, !nosanitize !26
  br i1 %3739, label %3359, label %3746, !nosanitize !26

3740:                                             ; preds = %3702
  %3741 = shl i32 %3707, %3705
  %3742 = trunc i32 %3741 to i16
  %3743 = or i16 %3703, %3742
  store i16 %3743, ptr %3272, align 8, !tbaa !19
  %3744 = add nsw i32 %3705, 7
  %3745 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3744, 0
  br label %3746

3746:                                             ; preds = %3740, %3734, %3654, %3648, %3566, %3560
  %3747 = phi i16 [ %3563, %3560 ], [ %3569, %3566 ], [ %3651, %3648 ], [ %3657, %3654 ], [ %3737, %3734 ], [ %3743, %3740 ]
  %3748 = phi { i32, i1 } [ %3564, %3560 ], [ %3571, %3566 ], [ %3652, %3648 ], [ %3659, %3654 ], [ %3738, %3734 ], [ %3745, %3740 ]
  %3749 = extractvalue { i32, i1 } %3748, 0
  store i32 %3749, ptr %2634, align 4, !tbaa !20
  br label %3750

3750:                                             ; preds = %3427, %3746
  %3751 = phi i16 [ %3747, %3746 ], [ %3422, %3427 ]
  %3752 = phi i32 [ %3749, %3746 ], [ %3424, %3427 ]
  %3753 = icmp eq i16 %3363, 0
  br i1 %3753, label %3757, label %3754

3754:                                             ; preds = %3750
  %3755 = select i1 %3367, i32 3, i32 4
  %3756 = select i1 %3367, i32 6, i32 7
  br label %3757

3757:                                             ; preds = %3754, %3750, %3360
  %3758 = phi i16 [ %3348, %3360 ], [ %3751, %3750 ], [ %3751, %3754 ]
  %3759 = phi i32 [ %3349, %3360 ], [ %3752, %3750 ], [ %3752, %3754 ]
  %3760 = phi i32 [ %3355, %3360 ], [ 3, %3750 ], [ %3755, %3754 ]
  %3761 = phi i32 [ %3354, %3360 ], [ 138, %3750 ], [ %3756, %3754 ]
  %3762 = phi i32 [ %3365, %3360 ], [ 0, %3750 ], [ 0, %3754 ]
  %3763 = phi i32 [ %3351, %3360 ], [ %3352, %3750 ], [ %3352, %3754 ]
  %3764 = icmp sgt i32 %3357, %3331
  br i1 %3764, label %3765, label %3347, !llvm.loop !73

3765:                                             ; preds = %3757, %3330
  %3766 = phi i16 [ %3322, %3330 ], [ %3758, %3757 ]
  %3767 = phi i32 [ %3324, %3330 ], [ %3759, %3757 ]
  br i1 %3174, label %3120, label %3768, !nosanitize !26

3768:                                             ; preds = %3765
  %3769 = extractvalue { i32, i1 } %3173, 0, !nosanitize !26
  %3770 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  %3771 = icmp slt i32 %3769, 0
  br i1 %3771, label %4203, label %3772

3772:                                             ; preds = %3768
  %3773 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 0, i32 1
  %3774 = load i16, ptr %3773, align 2, !tbaa !22
  %3775 = icmp eq i16 %3774, 0
  %3776 = select i1 %3775, i32 138, i32 7
  %3777 = select i1 %3775, i32 3, i32 4
  %3778 = zext i16 %3774 to i32
  %3779 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  %3780 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16, i32 1
  %3781 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  %3782 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18, i32 1
  %3783 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  %3784 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17, i32 1
  br label %3785

3785:                                             ; preds = %4195, %3772
  %3786 = phi i16 [ %3766, %3772 ], [ %4196, %4195 ]
  %3787 = phi i32 [ %3767, %3772 ], [ %4197, %4195 ]
  %3788 = phi i32 [ 0, %3772 ], [ %3795, %4195 ]
  %3789 = phi i32 [ -1, %3772 ], [ %4201, %4195 ]
  %3790 = phi i32 [ %3778, %3772 ], [ %3802, %4195 ]
  %3791 = phi i32 [ 0, %3772 ], [ %4200, %4195 ]
  %3792 = phi i32 [ %3776, %3772 ], [ %4199, %4195 ]
  %3793 = phi i32 [ %3777, %3772 ], [ %4198, %4195 ]
  %3794 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3788, i32 1), !nosanitize !26
  %3795 = extractvalue { i32, i1 } %3794, 0, !nosanitize !26
  %3796 = extractvalue { i32, i1 } %3794, 1, !nosanitize !26
  br i1 %3796, label %3797, label %3798, !nosanitize !26

3797:                                             ; preds = %4172, %4154, %4146, %4130, %4112, %4108, %4086, %4068, %4060, %4044, %4026, %4022, %3998, %3980, %3972, %3956, %3938, %3934, %3907, %3889, %3885, %3785, %3849, %3831, %3827
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

3798:                                             ; preds = %3785
  %3799 = sext i32 %3795 to i64
  %3800 = getelementptr inbounds %struct.ct_data_s, ptr %3770, i64 %3799, i32 1
  %3801 = load i16, ptr %3800, align 2, !tbaa !22
  %3802 = zext i16 %3801 to i32
  %3803 = add nsw i32 %3791, 1
  %3804 = icmp slt i32 %3803, %3792
  %3805 = icmp eq i32 %3790, %3802
  %3806 = select i1 %3804, i1 %3805, i1 false
  br i1 %3806, label %4195, label %3807

3807:                                             ; preds = %3798
  %3808 = icmp slt i32 %3803, %3793
  br i1 %3808, label %3809, label %3868

3809:                                             ; preds = %3807
  %3810 = zext nneg i32 %3790 to i64
  %3811 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %3810
  %3812 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %3810, i32 1
  br label %3813

3813:                                             ; preds = %3865, %3809
  %3814 = phi i16 [ %3860, %3865 ], [ %3786, %3809 ]
  %3815 = phi i32 [ %3862, %3865 ], [ %3787, %3809 ]
  %3816 = phi i32 [ %3866, %3865 ], [ %3803, %3809 ]
  %3817 = load i16, ptr %3812, align 2, !tbaa !22
  %3818 = zext i16 %3817 to i32
  %3819 = sub nsw i32 16, %3818
  %3820 = icmp sgt i32 %3815, %3819
  %3821 = load i16, ptr %3811, align 4, !tbaa !22
  %3822 = zext i16 %3821 to i32
  %3823 = shl i32 %3822, %3815
  %3824 = trunc i32 %3823 to i16
  %3825 = or i16 %3814, %3824
  store i16 %3825, ptr %3272, align 8, !tbaa !19
  br i1 %3820, label %3827, label %3856

3826:                                             ; preds = %4162, %4120, %4076, %4034, %3988, %3946, %3897, %3859, %3839
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

3827:                                             ; preds = %3813
  %3828 = load i64, ptr %3273, align 8, !tbaa !27
  %3829 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3828, i64 1), !nosanitize !26
  %3830 = extractvalue { i64, i1 } %3829, 1, !nosanitize !26
  br i1 %3830, label %3797, label %3831, !nosanitize !26

3831:                                             ; preds = %3827
  %3832 = extractvalue { i64, i1 } %3829, 0, !nosanitize !26
  %3833 = load ptr, ptr %3274, align 8, !tbaa !28
  %3834 = trunc i16 %3825 to i8
  store i64 %3832, ptr %3273, align 8, !tbaa !27
  %3835 = getelementptr inbounds i8, ptr %3833, i64 %3828
  store i8 %3834, ptr %3835, align 1, !tbaa !22
  %3836 = load i64, ptr %3273, align 8, !tbaa !27
  %3837 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3836, i64 1), !nosanitize !26
  %3838 = extractvalue { i64, i1 } %3837, 1, !nosanitize !26
  br i1 %3838, label %3797, label %3839, !nosanitize !26

3839:                                             ; preds = %3831
  %3840 = extractvalue { i64, i1 } %3837, 0, !nosanitize !26
  %3841 = load ptr, ptr %3274, align 8, !tbaa !28
  %3842 = load i16, ptr %3272, align 8, !tbaa !19
  %3843 = lshr i16 %3842, 8
  %3844 = trunc i16 %3843 to i8
  store i64 %3840, ptr %3273, align 8, !tbaa !27
  %3845 = getelementptr inbounds i8, ptr %3841, i64 %3836
  store i8 %3844, ptr %3845, align 1, !tbaa !22
  %3846 = load i32, ptr %2634, align 4, !tbaa !20
  %3847 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3846), !nosanitize !26
  %3848 = extractvalue { i32, i1 } %3847, 1, !nosanitize !26
  br i1 %3848, label %3826, label %3849, !nosanitize !26

3849:                                             ; preds = %3839
  %3850 = extractvalue { i32, i1 } %3847, 0, !nosanitize !26
  %3851 = lshr i32 %3822, %3850
  %3852 = trunc i32 %3851 to i16
  store i16 %3852, ptr %3272, align 8, !tbaa !19
  %3853 = add nsw i32 %3818, -16
  %3854 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3846, i32 %3853), !nosanitize !26
  %3855 = extractvalue { i32, i1 } %3854, 1, !nosanitize !26
  br i1 %3855, label %3797, label %3859, !nosanitize !26

3856:                                             ; preds = %3813
  %3857 = add nsw i32 %3815, %3818
  %3858 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3857, 0
  br label %3859

3859:                                             ; preds = %3856, %3849
  %3860 = phi i16 [ %3852, %3849 ], [ %3825, %3856 ]
  %3861 = phi { i32, i1 } [ %3854, %3849 ], [ %3858, %3856 ]
  %3862 = extractvalue { i32, i1 } %3861, 0
  store i32 %3862, ptr %2634, align 4, !tbaa !20
  %3863 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3816, i32 -1)
  %3864 = extractvalue { i32, i1 } %3863, 1, !nosanitize !26
  br i1 %3864, label %3826, label %3865, !nosanitize !26

3865:                                             ; preds = %3859
  %3866 = extractvalue { i32, i1 } %3863, 0, !nosanitize !26
  %3867 = icmp eq i32 %3866, 0
  br i1 %3867, label %4188, label %3813, !llvm.loop !72

3868:                                             ; preds = %3807
  %3869 = icmp eq i32 %3790, 0
  br i1 %3869, label %4010, label %3870

3870:                                             ; preds = %3868
  %3871 = icmp eq i32 %3790, %3789
  br i1 %3871, label %3921, label %3872

3872:                                             ; preds = %3870
  %3873 = zext nneg i32 %3790 to i64
  %3874 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %3873
  %3875 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %3873, i32 1
  %3876 = load i16, ptr %3875, align 2, !tbaa !22
  %3877 = zext i16 %3876 to i32
  %3878 = sub nsw i32 16, %3877
  %3879 = icmp sgt i32 %3787, %3878
  %3880 = load i16, ptr %3874, align 4, !tbaa !22
  %3881 = zext i16 %3880 to i32
  %3882 = shl i32 %3881, %3787
  %3883 = trunc i32 %3882 to i16
  %3884 = or i16 %3786, %3883
  store i16 %3884, ptr %3272, align 8, !tbaa !19
  br i1 %3879, label %3885, label %3914

3885:                                             ; preds = %3872
  %3886 = load i64, ptr %3273, align 8, !tbaa !27
  %3887 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3886, i64 1), !nosanitize !26
  %3888 = extractvalue { i64, i1 } %3887, 1, !nosanitize !26
  br i1 %3888, label %3797, label %3889, !nosanitize !26

3889:                                             ; preds = %3885
  %3890 = extractvalue { i64, i1 } %3887, 0, !nosanitize !26
  %3891 = load ptr, ptr %3274, align 8, !tbaa !28
  %3892 = trunc i16 %3884 to i8
  store i64 %3890, ptr %3273, align 8, !tbaa !27
  %3893 = getelementptr inbounds i8, ptr %3891, i64 %3886
  store i8 %3892, ptr %3893, align 1, !tbaa !22
  %3894 = load i64, ptr %3273, align 8, !tbaa !27
  %3895 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3894, i64 1), !nosanitize !26
  %3896 = extractvalue { i64, i1 } %3895, 1, !nosanitize !26
  br i1 %3896, label %3797, label %3897, !nosanitize !26

3897:                                             ; preds = %3889
  %3898 = extractvalue { i64, i1 } %3895, 0, !nosanitize !26
  %3899 = load ptr, ptr %3274, align 8, !tbaa !28
  %3900 = load i16, ptr %3272, align 8, !tbaa !19
  %3901 = lshr i16 %3900, 8
  %3902 = trunc i16 %3901 to i8
  store i64 %3898, ptr %3273, align 8, !tbaa !27
  %3903 = getelementptr inbounds i8, ptr %3899, i64 %3894
  store i8 %3902, ptr %3903, align 1, !tbaa !22
  %3904 = load i32, ptr %2634, align 4, !tbaa !20
  %3905 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3904), !nosanitize !26
  %3906 = extractvalue { i32, i1 } %3905, 1, !nosanitize !26
  br i1 %3906, label %3826, label %3907, !nosanitize !26

3907:                                             ; preds = %3897
  %3908 = extractvalue { i32, i1 } %3905, 0, !nosanitize !26
  %3909 = lshr i32 %3881, %3908
  %3910 = trunc i32 %3909 to i16
  store i16 %3910, ptr %3272, align 8, !tbaa !19
  %3911 = add nsw i32 %3877, -16
  %3912 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3904, i32 %3911), !nosanitize !26
  %3913 = extractvalue { i32, i1 } %3912, 1, !nosanitize !26
  br i1 %3913, label %3797, label %3917, !nosanitize !26

3914:                                             ; preds = %3872
  %3915 = add nsw i32 %3787, %3877
  %3916 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3915, 0
  br label %3917

3917:                                             ; preds = %3914, %3907
  %3918 = phi i16 [ %3910, %3907 ], [ %3884, %3914 ]
  %3919 = phi { i32, i1 } [ %3912, %3907 ], [ %3916, %3914 ]
  %3920 = extractvalue { i32, i1 } %3919, 0
  store i32 %3920, ptr %2634, align 4, !tbaa !20
  br label %3921

3921:                                             ; preds = %3917, %3870
  %3922 = phi i16 [ %3918, %3917 ], [ %3786, %3870 ]
  %3923 = phi i32 [ %3920, %3917 ], [ %3787, %3870 ]
  %3924 = phi i32 [ %3791, %3917 ], [ %3803, %3870 ]
  %3925 = load i16, ptr %3780, align 2, !tbaa !22
  %3926 = zext i16 %3925 to i32
  %3927 = sub nsw i32 16, %3926
  %3928 = icmp sgt i32 %3923, %3927
  %3929 = load i16, ptr %3779, align 4, !tbaa !22
  %3930 = zext i16 %3929 to i32
  %3931 = shl i32 %3930, %3923
  %3932 = trunc i32 %3931 to i16
  %3933 = or i16 %3922, %3932
  store i16 %3933, ptr %3272, align 8, !tbaa !19
  br i1 %3928, label %3934, label %3963

3934:                                             ; preds = %3921
  %3935 = load i64, ptr %3273, align 8, !tbaa !27
  %3936 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3935, i64 1), !nosanitize !26
  %3937 = extractvalue { i64, i1 } %3936, 1, !nosanitize !26
  br i1 %3937, label %3797, label %3938, !nosanitize !26

3938:                                             ; preds = %3934
  %3939 = extractvalue { i64, i1 } %3936, 0, !nosanitize !26
  %3940 = load ptr, ptr %3274, align 8, !tbaa !28
  %3941 = trunc i16 %3933 to i8
  store i64 %3939, ptr %3273, align 8, !tbaa !27
  %3942 = getelementptr inbounds i8, ptr %3940, i64 %3935
  store i8 %3941, ptr %3942, align 1, !tbaa !22
  %3943 = load i64, ptr %3273, align 8, !tbaa !27
  %3944 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3943, i64 1), !nosanitize !26
  %3945 = extractvalue { i64, i1 } %3944, 1, !nosanitize !26
  br i1 %3945, label %3797, label %3946, !nosanitize !26

3946:                                             ; preds = %3938
  %3947 = extractvalue { i64, i1 } %3944, 0, !nosanitize !26
  %3948 = load ptr, ptr %3274, align 8, !tbaa !28
  %3949 = load i16, ptr %3272, align 8, !tbaa !19
  %3950 = lshr i16 %3949, 8
  %3951 = trunc i16 %3950 to i8
  store i64 %3947, ptr %3273, align 8, !tbaa !27
  %3952 = getelementptr inbounds i8, ptr %3948, i64 %3943
  store i8 %3951, ptr %3952, align 1, !tbaa !22
  %3953 = load i32, ptr %2634, align 4, !tbaa !20
  %3954 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3953), !nosanitize !26
  %3955 = extractvalue { i32, i1 } %3954, 1, !nosanitize !26
  br i1 %3955, label %3826, label %3956, !nosanitize !26

3956:                                             ; preds = %3946
  %3957 = extractvalue { i32, i1 } %3954, 0, !nosanitize !26
  %3958 = lshr i32 %3930, %3957
  %3959 = trunc i32 %3958 to i16
  store i16 %3959, ptr %3272, align 8, !tbaa !19
  %3960 = add nsw i32 %3926, -16
  %3961 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3953, i32 %3960), !nosanitize !26
  %3962 = extractvalue { i32, i1 } %3961, 1, !nosanitize !26
  br i1 %3962, label %3797, label %3966, !nosanitize !26

3963:                                             ; preds = %3921
  %3964 = add nsw i32 %3923, %3926
  %3965 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3964, 0
  br label %3966

3966:                                             ; preds = %3963, %3956
  %3967 = phi i16 [ %3959, %3956 ], [ %3933, %3963 ]
  %3968 = phi { i32, i1 } [ %3961, %3956 ], [ %3965, %3963 ]
  %3969 = extractvalue { i32, i1 } %3968, 0
  store i32 %3969, ptr %2634, align 4, !tbaa !20
  %3970 = icmp sgt i32 %3969, 14
  %3971 = add i32 %3924, 65533
  br i1 %3970, label %3972, label %4004

3972:                                             ; preds = %3966
  %3973 = and i32 %3971, 65535
  %3974 = shl i32 %3971, %3969
  %3975 = trunc i32 %3974 to i16
  %3976 = or i16 %3967, %3975
  store i16 %3976, ptr %3272, align 8, !tbaa !19
  %3977 = load i64, ptr %3273, align 8, !tbaa !27
  %3978 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3977, i64 1), !nosanitize !26
  %3979 = extractvalue { i64, i1 } %3978, 1, !nosanitize !26
  br i1 %3979, label %3797, label %3980, !nosanitize !26

3980:                                             ; preds = %3972
  %3981 = extractvalue { i64, i1 } %3978, 0, !nosanitize !26
  %3982 = load ptr, ptr %3274, align 8, !tbaa !28
  %3983 = trunc i16 %3976 to i8
  store i64 %3981, ptr %3273, align 8, !tbaa !27
  %3984 = getelementptr inbounds i8, ptr %3982, i64 %3977
  store i8 %3983, ptr %3984, align 1, !tbaa !22
  %3985 = load i64, ptr %3273, align 8, !tbaa !27
  %3986 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3985, i64 1), !nosanitize !26
  %3987 = extractvalue { i64, i1 } %3986, 1, !nosanitize !26
  br i1 %3987, label %3797, label %3988, !nosanitize !26

3988:                                             ; preds = %3980
  %3989 = extractvalue { i64, i1 } %3986, 0, !nosanitize !26
  %3990 = load ptr, ptr %3274, align 8, !tbaa !28
  %3991 = load i16, ptr %3272, align 8, !tbaa !19
  %3992 = lshr i16 %3991, 8
  %3993 = trunc i16 %3992 to i8
  store i64 %3989, ptr %3273, align 8, !tbaa !27
  %3994 = getelementptr inbounds i8, ptr %3990, i64 %3985
  store i8 %3993, ptr %3994, align 1, !tbaa !22
  %3995 = load i32, ptr %2634, align 4, !tbaa !20
  %3996 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3995), !nosanitize !26
  %3997 = extractvalue { i32, i1 } %3996, 1, !nosanitize !26
  br i1 %3997, label %3826, label %3998, !nosanitize !26

3998:                                             ; preds = %3988
  %3999 = extractvalue { i32, i1 } %3996, 0, !nosanitize !26
  %4000 = lshr i32 %3973, %3999
  %4001 = trunc i32 %4000 to i16
  store i16 %4001, ptr %3272, align 8, !tbaa !19
  %4002 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3995, i32 -14), !nosanitize !26
  %4003 = extractvalue { i32, i1 } %4002, 1, !nosanitize !26
  br i1 %4003, label %3797, label %4184, !nosanitize !26

4004:                                             ; preds = %3966
  %4005 = shl i32 %3971, %3969
  %4006 = trunc i32 %4005 to i16
  %4007 = or i16 %3967, %4006
  store i16 %4007, ptr %3272, align 8, !tbaa !19
  %4008 = add nsw i32 %3969, 2
  %4009 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4008, 0
  br label %4184

4010:                                             ; preds = %3868
  %4011 = icmp slt i32 %3791, 10
  br i1 %4011, label %4012, label %4098

4012:                                             ; preds = %4010
  %4013 = load i16, ptr %3784, align 2, !tbaa !22
  %4014 = zext i16 %4013 to i32
  %4015 = sub nsw i32 16, %4014
  %4016 = icmp sgt i32 %3787, %4015
  %4017 = load i16, ptr %3783, align 4, !tbaa !22
  %4018 = zext i16 %4017 to i32
  %4019 = shl i32 %4018, %3787
  %4020 = trunc i32 %4019 to i16
  %4021 = or i16 %3786, %4020
  store i16 %4021, ptr %3272, align 8, !tbaa !19
  br i1 %4016, label %4022, label %4051

4022:                                             ; preds = %4012
  %4023 = load i64, ptr %3273, align 8, !tbaa !27
  %4024 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4023, i64 1), !nosanitize !26
  %4025 = extractvalue { i64, i1 } %4024, 1, !nosanitize !26
  br i1 %4025, label %3797, label %4026, !nosanitize !26

4026:                                             ; preds = %4022
  %4027 = extractvalue { i64, i1 } %4024, 0, !nosanitize !26
  %4028 = load ptr, ptr %3274, align 8, !tbaa !28
  %4029 = trunc i16 %4021 to i8
  store i64 %4027, ptr %3273, align 8, !tbaa !27
  %4030 = getelementptr inbounds i8, ptr %4028, i64 %4023
  store i8 %4029, ptr %4030, align 1, !tbaa !22
  %4031 = load i64, ptr %3273, align 8, !tbaa !27
  %4032 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4031, i64 1), !nosanitize !26
  %4033 = extractvalue { i64, i1 } %4032, 1, !nosanitize !26
  br i1 %4033, label %3797, label %4034, !nosanitize !26

4034:                                             ; preds = %4026
  %4035 = extractvalue { i64, i1 } %4032, 0, !nosanitize !26
  %4036 = load ptr, ptr %3274, align 8, !tbaa !28
  %4037 = load i16, ptr %3272, align 8, !tbaa !19
  %4038 = lshr i16 %4037, 8
  %4039 = trunc i16 %4038 to i8
  store i64 %4035, ptr %3273, align 8, !tbaa !27
  %4040 = getelementptr inbounds i8, ptr %4036, i64 %4031
  store i8 %4039, ptr %4040, align 1, !tbaa !22
  %4041 = load i32, ptr %2634, align 4, !tbaa !20
  %4042 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4041), !nosanitize !26
  %4043 = extractvalue { i32, i1 } %4042, 1, !nosanitize !26
  br i1 %4043, label %3826, label %4044, !nosanitize !26

4044:                                             ; preds = %4034
  %4045 = extractvalue { i32, i1 } %4042, 0, !nosanitize !26
  %4046 = lshr i32 %4018, %4045
  %4047 = trunc i32 %4046 to i16
  store i16 %4047, ptr %3272, align 8, !tbaa !19
  %4048 = add nsw i32 %4014, -16
  %4049 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4041, i32 %4048), !nosanitize !26
  %4050 = extractvalue { i32, i1 } %4049, 1, !nosanitize !26
  br i1 %4050, label %3797, label %4054, !nosanitize !26

4051:                                             ; preds = %4012
  %4052 = add nsw i32 %3787, %4014
  %4053 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4052, 0
  br label %4054

4054:                                             ; preds = %4051, %4044
  %4055 = phi i16 [ %4047, %4044 ], [ %4021, %4051 ]
  %4056 = phi { i32, i1 } [ %4049, %4044 ], [ %4053, %4051 ]
  %4057 = extractvalue { i32, i1 } %4056, 0
  store i32 %4057, ptr %2634, align 4, !tbaa !20
  %4058 = icmp sgt i32 %4057, 13
  %4059 = add nsw i32 %3791, 65534
  br i1 %4058, label %4060, label %4092

4060:                                             ; preds = %4054
  %4061 = and i32 %4059, 65535
  %4062 = shl i32 %4059, %4057
  %4063 = trunc i32 %4062 to i16
  %4064 = or i16 %4055, %4063
  store i16 %4064, ptr %3272, align 8, !tbaa !19
  %4065 = load i64, ptr %3273, align 8, !tbaa !27
  %4066 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4065, i64 1), !nosanitize !26
  %4067 = extractvalue { i64, i1 } %4066, 1, !nosanitize !26
  br i1 %4067, label %3797, label %4068, !nosanitize !26

4068:                                             ; preds = %4060
  %4069 = extractvalue { i64, i1 } %4066, 0, !nosanitize !26
  %4070 = load ptr, ptr %3274, align 8, !tbaa !28
  %4071 = trunc i16 %4064 to i8
  store i64 %4069, ptr %3273, align 8, !tbaa !27
  %4072 = getelementptr inbounds i8, ptr %4070, i64 %4065
  store i8 %4071, ptr %4072, align 1, !tbaa !22
  %4073 = load i64, ptr %3273, align 8, !tbaa !27
  %4074 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4073, i64 1), !nosanitize !26
  %4075 = extractvalue { i64, i1 } %4074, 1, !nosanitize !26
  br i1 %4075, label %3797, label %4076, !nosanitize !26

4076:                                             ; preds = %4068
  %4077 = extractvalue { i64, i1 } %4074, 0, !nosanitize !26
  %4078 = load ptr, ptr %3274, align 8, !tbaa !28
  %4079 = load i16, ptr %3272, align 8, !tbaa !19
  %4080 = lshr i16 %4079, 8
  %4081 = trunc i16 %4080 to i8
  store i64 %4077, ptr %3273, align 8, !tbaa !27
  %4082 = getelementptr inbounds i8, ptr %4078, i64 %4073
  store i8 %4081, ptr %4082, align 1, !tbaa !22
  %4083 = load i32, ptr %2634, align 4, !tbaa !20
  %4084 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4083), !nosanitize !26
  %4085 = extractvalue { i32, i1 } %4084, 1, !nosanitize !26
  br i1 %4085, label %3826, label %4086, !nosanitize !26

4086:                                             ; preds = %4076
  %4087 = extractvalue { i32, i1 } %4084, 0, !nosanitize !26
  %4088 = lshr i32 %4061, %4087
  %4089 = trunc i32 %4088 to i16
  store i16 %4089, ptr %3272, align 8, !tbaa !19
  %4090 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4083, i32 -13), !nosanitize !26
  %4091 = extractvalue { i32, i1 } %4090, 1, !nosanitize !26
  br i1 %4091, label %3797, label %4184, !nosanitize !26

4092:                                             ; preds = %4054
  %4093 = shl i32 %4059, %4057
  %4094 = trunc i32 %4093 to i16
  %4095 = or i16 %4055, %4094
  store i16 %4095, ptr %3272, align 8, !tbaa !19
  %4096 = add nsw i32 %4057, 3
  %4097 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4096, 0
  br label %4184

4098:                                             ; preds = %4010
  %4099 = load i16, ptr %3782, align 2, !tbaa !22
  %4100 = zext i16 %4099 to i32
  %4101 = sub nsw i32 16, %4100
  %4102 = icmp sgt i32 %3787, %4101
  %4103 = load i16, ptr %3781, align 4, !tbaa !22
  %4104 = zext i16 %4103 to i32
  %4105 = shl i32 %4104, %3787
  %4106 = trunc i32 %4105 to i16
  %4107 = or i16 %3786, %4106
  store i16 %4107, ptr %3272, align 8, !tbaa !19
  br i1 %4102, label %4108, label %4137

4108:                                             ; preds = %4098
  %4109 = load i64, ptr %3273, align 8, !tbaa !27
  %4110 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4109, i64 1), !nosanitize !26
  %4111 = extractvalue { i64, i1 } %4110, 1, !nosanitize !26
  br i1 %4111, label %3797, label %4112, !nosanitize !26

4112:                                             ; preds = %4108
  %4113 = extractvalue { i64, i1 } %4110, 0, !nosanitize !26
  %4114 = load ptr, ptr %3274, align 8, !tbaa !28
  %4115 = trunc i16 %4107 to i8
  store i64 %4113, ptr %3273, align 8, !tbaa !27
  %4116 = getelementptr inbounds i8, ptr %4114, i64 %4109
  store i8 %4115, ptr %4116, align 1, !tbaa !22
  %4117 = load i64, ptr %3273, align 8, !tbaa !27
  %4118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4117, i64 1), !nosanitize !26
  %4119 = extractvalue { i64, i1 } %4118, 1, !nosanitize !26
  br i1 %4119, label %3797, label %4120, !nosanitize !26

4120:                                             ; preds = %4112
  %4121 = extractvalue { i64, i1 } %4118, 0, !nosanitize !26
  %4122 = load ptr, ptr %3274, align 8, !tbaa !28
  %4123 = load i16, ptr %3272, align 8, !tbaa !19
  %4124 = lshr i16 %4123, 8
  %4125 = trunc i16 %4124 to i8
  store i64 %4121, ptr %3273, align 8, !tbaa !27
  %4126 = getelementptr inbounds i8, ptr %4122, i64 %4117
  store i8 %4125, ptr %4126, align 1, !tbaa !22
  %4127 = load i32, ptr %2634, align 4, !tbaa !20
  %4128 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4127), !nosanitize !26
  %4129 = extractvalue { i32, i1 } %4128, 1, !nosanitize !26
  br i1 %4129, label %3826, label %4130, !nosanitize !26

4130:                                             ; preds = %4120
  %4131 = extractvalue { i32, i1 } %4128, 0, !nosanitize !26
  %4132 = lshr i32 %4104, %4131
  %4133 = trunc i32 %4132 to i16
  store i16 %4133, ptr %3272, align 8, !tbaa !19
  %4134 = add nsw i32 %4100, -16
  %4135 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4127, i32 %4134), !nosanitize !26
  %4136 = extractvalue { i32, i1 } %4135, 1, !nosanitize !26
  br i1 %4136, label %3797, label %4140, !nosanitize !26

4137:                                             ; preds = %4098
  %4138 = add nsw i32 %3787, %4100
  %4139 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4138, 0
  br label %4140

4140:                                             ; preds = %4137, %4130
  %4141 = phi i16 [ %4133, %4130 ], [ %4107, %4137 ]
  %4142 = phi { i32, i1 } [ %4135, %4130 ], [ %4139, %4137 ]
  %4143 = extractvalue { i32, i1 } %4142, 0
  store i32 %4143, ptr %2634, align 4, !tbaa !20
  %4144 = icmp sgt i32 %4143, 9
  %4145 = add nuw i32 %3791, 65526
  br i1 %4144, label %4146, label %4178

4146:                                             ; preds = %4140
  %4147 = and i32 %4145, 65535
  %4148 = shl i32 %4145, %4143
  %4149 = trunc i32 %4148 to i16
  %4150 = or i16 %4141, %4149
  store i16 %4150, ptr %3272, align 8, !tbaa !19
  %4151 = load i64, ptr %3273, align 8, !tbaa !27
  %4152 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4151, i64 1), !nosanitize !26
  %4153 = extractvalue { i64, i1 } %4152, 1, !nosanitize !26
  br i1 %4153, label %3797, label %4154, !nosanitize !26

4154:                                             ; preds = %4146
  %4155 = extractvalue { i64, i1 } %4152, 0, !nosanitize !26
  %4156 = load ptr, ptr %3274, align 8, !tbaa !28
  %4157 = trunc i16 %4150 to i8
  store i64 %4155, ptr %3273, align 8, !tbaa !27
  %4158 = getelementptr inbounds i8, ptr %4156, i64 %4151
  store i8 %4157, ptr %4158, align 1, !tbaa !22
  %4159 = load i64, ptr %3273, align 8, !tbaa !27
  %4160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4159, i64 1), !nosanitize !26
  %4161 = extractvalue { i64, i1 } %4160, 1, !nosanitize !26
  br i1 %4161, label %3797, label %4162, !nosanitize !26

4162:                                             ; preds = %4154
  %4163 = extractvalue { i64, i1 } %4160, 0, !nosanitize !26
  %4164 = load ptr, ptr %3274, align 8, !tbaa !28
  %4165 = load i16, ptr %3272, align 8, !tbaa !19
  %4166 = lshr i16 %4165, 8
  %4167 = trunc i16 %4166 to i8
  store i64 %4163, ptr %3273, align 8, !tbaa !27
  %4168 = getelementptr inbounds i8, ptr %4164, i64 %4159
  store i8 %4167, ptr %4168, align 1, !tbaa !22
  %4169 = load i32, ptr %2634, align 4, !tbaa !20
  %4170 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4169), !nosanitize !26
  %4171 = extractvalue { i32, i1 } %4170, 1, !nosanitize !26
  br i1 %4171, label %3826, label %4172, !nosanitize !26

4172:                                             ; preds = %4162
  %4173 = extractvalue { i32, i1 } %4170, 0, !nosanitize !26
  %4174 = lshr i32 %4147, %4173
  %4175 = trunc i32 %4174 to i16
  store i16 %4175, ptr %3272, align 8, !tbaa !19
  %4176 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4169, i32 -9), !nosanitize !26
  %4177 = extractvalue { i32, i1 } %4176, 1, !nosanitize !26
  br i1 %4177, label %3797, label %4184, !nosanitize !26

4178:                                             ; preds = %4140
  %4179 = shl i32 %4145, %4143
  %4180 = trunc i32 %4179 to i16
  %4181 = or i16 %4141, %4180
  store i16 %4181, ptr %3272, align 8, !tbaa !19
  %4182 = add nsw i32 %4143, 7
  %4183 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4182, 0
  br label %4184

4184:                                             ; preds = %4178, %4172, %4092, %4086, %4004, %3998
  %4185 = phi i16 [ %4001, %3998 ], [ %4007, %4004 ], [ %4089, %4086 ], [ %4095, %4092 ], [ %4175, %4172 ], [ %4181, %4178 ]
  %4186 = phi { i32, i1 } [ %4002, %3998 ], [ %4009, %4004 ], [ %4090, %4086 ], [ %4097, %4092 ], [ %4176, %4172 ], [ %4183, %4178 ]
  %4187 = extractvalue { i32, i1 } %4186, 0
  store i32 %4187, ptr %2634, align 4, !tbaa !20
  br label %4188

4188:                                             ; preds = %3865, %4184
  %4189 = phi i16 [ %4185, %4184 ], [ %3860, %3865 ]
  %4190 = phi i32 [ %4187, %4184 ], [ %3862, %3865 ]
  %4191 = icmp eq i16 %3801, 0
  br i1 %4191, label %4195, label %4192

4192:                                             ; preds = %4188
  %4193 = select i1 %3805, i32 3, i32 4
  %4194 = select i1 %3805, i32 6, i32 7
  br label %4195

4195:                                             ; preds = %4192, %4188, %3798
  %4196 = phi i16 [ %3786, %3798 ], [ %4189, %4188 ], [ %4189, %4192 ]
  %4197 = phi i32 [ %3787, %3798 ], [ %4190, %4188 ], [ %4190, %4192 ]
  %4198 = phi i32 [ %3793, %3798 ], [ 3, %4188 ], [ %4193, %4192 ]
  %4199 = phi i32 [ %3792, %3798 ], [ 138, %4188 ], [ %4194, %4192 ]
  %4200 = phi i32 [ %3803, %3798 ], [ 0, %4188 ], [ 0, %4192 ]
  %4201 = phi i32 [ %3789, %3798 ], [ %3790, %4188 ], [ %3790, %4192 ]
  %4202 = icmp sgt i32 %3795, %3769
  br i1 %4202, label %4203, label %3785, !llvm.loop !73

4203:                                             ; preds = %4195, %3768
  %4204 = phi i16 [ %3766, %3768 ], [ %4196, %4195 ]
  %4205 = phi i32 [ %3767, %3768 ], [ %4197, %4195 ]
  %4206 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %4207 = load i32, ptr %4206, align 4, !tbaa !25
  %4208 = icmp eq i32 %4207, 0
  br i1 %4208, label %4526, label %4209

4209:                                             ; preds = %4203
  %4210 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  br label %4211

4211:                                             ; preds = %4521, %4209
  %4212 = phi i16 [ %4522, %4521 ], [ %4204, %4209 ]
  %4213 = phi i32 [ %4523, %4521 ], [ %4205, %4209 ]
  %4214 = phi i32 [ %4233, %4521 ], [ 0, %4209 ]
  %4215 = load ptr, ptr %4210, align 8, !tbaa !69
  %4216 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4214, i32 2)
  %4217 = extractvalue { i32, i1 } %4216, 0, !nosanitize !26
  %4218 = extractvalue { i32, i1 } %4216, 1, !nosanitize !26
  br i1 %4218, label %4219, label %4220, !nosanitize !26

4219:                                             ; preds = %4511, %4507, %4483, %4475, %4446, %4428, %4424, %4391, %4387, %4363, %4355, %4325, %4307, %4303, %4277, %4259, %4255, %4220, %4211, %4562, %4544, %4540
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

4220:                                             ; preds = %4211
  %4221 = add nuw i32 %4214, 1
  %4222 = zext i32 %4214 to i64
  %4223 = getelementptr inbounds i8, ptr %4215, i64 %4222
  %4224 = load i8, ptr %4223, align 1, !tbaa !22
  %4225 = zext i8 %4224 to i32
  %4226 = zext i32 %4221 to i64
  %4227 = getelementptr inbounds i8, ptr %4215, i64 %4226
  %4228 = load i8, ptr %4227, align 1, !tbaa !22
  %4229 = zext i8 %4228 to i32
  %4230 = shl nuw nsw i32 %4229, 8
  %4231 = or disjoint i32 %4230, %4225
  %4232 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4217, i32 1), !nosanitize !26
  %4233 = extractvalue { i32, i1 } %4232, 0, !nosanitize !26
  %4234 = extractvalue { i32, i1 } %4232, 1, !nosanitize !26
  br i1 %4234, label %4219, label %4235, !nosanitize !26

4235:                                             ; preds = %4220
  %4236 = zext i32 %4217 to i64
  %4237 = getelementptr inbounds i8, ptr %4215, i64 %4236
  %4238 = load i8, ptr %4237, align 1, !tbaa !22
  %4239 = zext i8 %4238 to i32
  %4240 = icmp eq i32 %4231, 0
  %4241 = zext i8 %4238 to i64
  br i1 %4240, label %4242, label %4287

4242:                                             ; preds = %4235
  %4243 = getelementptr inbounds %struct.ct_data_s, ptr %3332, i64 %4241
  %4244 = getelementptr inbounds %struct.ct_data_s, ptr %3332, i64 %4241, i32 1
  %4245 = load i16, ptr %4244, align 2, !tbaa !22
  %4246 = zext i16 %4245 to i32
  %4247 = sub nsw i32 16, %4246
  %4248 = icmp sgt i32 %4213, %4247
  %4249 = load i16, ptr %4243, align 2, !tbaa !22
  %4250 = zext i16 %4249 to i32
  %4251 = shl i32 %4250, %4213
  %4252 = trunc i32 %4251 to i16
  %4253 = or i16 %4212, %4252
  store i16 %4253, ptr %3272, align 8, !tbaa !19
  br i1 %4248, label %4255, label %4284

4254:                                             ; preds = %4501, %4491, %4469, %4463, %4436, %4381, %4371, %4349, %4343, %4315, %4267, %4552
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

4255:                                             ; preds = %4242
  %4256 = load i64, ptr %3273, align 8, !tbaa !27
  %4257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4256, i64 1), !nosanitize !26
  %4258 = extractvalue { i64, i1 } %4257, 1, !nosanitize !26
  br i1 %4258, label %4219, label %4259, !nosanitize !26

4259:                                             ; preds = %4255
  %4260 = extractvalue { i64, i1 } %4257, 0, !nosanitize !26
  %4261 = load ptr, ptr %3274, align 8, !tbaa !28
  %4262 = trunc i16 %4253 to i8
  store i64 %4260, ptr %3273, align 8, !tbaa !27
  %4263 = getelementptr inbounds i8, ptr %4261, i64 %4256
  store i8 %4262, ptr %4263, align 1, !tbaa !22
  %4264 = load i64, ptr %3273, align 8, !tbaa !27
  %4265 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4264, i64 1), !nosanitize !26
  %4266 = extractvalue { i64, i1 } %4265, 1, !nosanitize !26
  br i1 %4266, label %4219, label %4267, !nosanitize !26

4267:                                             ; preds = %4259
  %4268 = extractvalue { i64, i1 } %4265, 0, !nosanitize !26
  %4269 = load ptr, ptr %3274, align 8, !tbaa !28
  %4270 = load i16, ptr %3272, align 8, !tbaa !19
  %4271 = lshr i16 %4270, 8
  %4272 = trunc i16 %4271 to i8
  store i64 %4268, ptr %3273, align 8, !tbaa !27
  %4273 = getelementptr inbounds i8, ptr %4269, i64 %4264
  store i8 %4272, ptr %4273, align 1, !tbaa !22
  %4274 = load i32, ptr %2634, align 4, !tbaa !20
  %4275 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4274), !nosanitize !26
  %4276 = extractvalue { i32, i1 } %4275, 1, !nosanitize !26
  br i1 %4276, label %4254, label %4277, !nosanitize !26

4277:                                             ; preds = %4267
  %4278 = extractvalue { i32, i1 } %4275, 0, !nosanitize !26
  %4279 = lshr i32 %4250, %4278
  %4280 = trunc i32 %4279 to i16
  store i16 %4280, ptr %3272, align 8, !tbaa !19
  %4281 = add nsw i32 %4246, -16
  %4282 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4274, i32 %4281), !nosanitize !26
  %4283 = extractvalue { i32, i1 } %4282, 1, !nosanitize !26
  br i1 %4283, label %4219, label %4517, !nosanitize !26

4284:                                             ; preds = %4242
  %4285 = add nsw i32 %4213, %4246
  %4286 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4285, 0
  br label %4517

4287:                                             ; preds = %4235
  %4288 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %4241
  %4289 = load i8, ptr %4288, align 1, !tbaa !22
  %4290 = zext i8 %4289 to i64
  %4291 = getelementptr %struct.ct_data_s, ptr %3332, i64 %4290
  %4292 = getelementptr %struct.ct_data_s, ptr %4291, i64 257
  %4293 = getelementptr %struct.ct_data_s, ptr %4291, i64 257, i32 1
  %4294 = load i16, ptr %4293, align 2, !tbaa !22
  %4295 = zext i16 %4294 to i32
  %4296 = sub nsw i32 16, %4295
  %4297 = icmp sgt i32 %4213, %4296
  %4298 = load i16, ptr %4292, align 2, !tbaa !22
  %4299 = zext i16 %4298 to i32
  %4300 = shl i32 %4299, %4213
  %4301 = trunc i32 %4300 to i16
  %4302 = or i16 %4212, %4301
  store i16 %4302, ptr %3272, align 8, !tbaa !19
  br i1 %4297, label %4303, label %4332

4303:                                             ; preds = %4287
  %4304 = load i64, ptr %3273, align 8, !tbaa !27
  %4305 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4304, i64 1), !nosanitize !26
  %4306 = extractvalue { i64, i1 } %4305, 1, !nosanitize !26
  br i1 %4306, label %4219, label %4307, !nosanitize !26

4307:                                             ; preds = %4303
  %4308 = extractvalue { i64, i1 } %4305, 0, !nosanitize !26
  %4309 = load ptr, ptr %3274, align 8, !tbaa !28
  %4310 = trunc i16 %4302 to i8
  store i64 %4308, ptr %3273, align 8, !tbaa !27
  %4311 = getelementptr inbounds i8, ptr %4309, i64 %4304
  store i8 %4310, ptr %4311, align 1, !tbaa !22
  %4312 = load i64, ptr %3273, align 8, !tbaa !27
  %4313 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4312, i64 1), !nosanitize !26
  %4314 = extractvalue { i64, i1 } %4313, 1, !nosanitize !26
  br i1 %4314, label %4219, label %4315, !nosanitize !26

4315:                                             ; preds = %4307
  %4316 = extractvalue { i64, i1 } %4313, 0, !nosanitize !26
  %4317 = load ptr, ptr %3274, align 8, !tbaa !28
  %4318 = load i16, ptr %3272, align 8, !tbaa !19
  %4319 = lshr i16 %4318, 8
  %4320 = trunc i16 %4319 to i8
  store i64 %4316, ptr %3273, align 8, !tbaa !27
  %4321 = getelementptr inbounds i8, ptr %4317, i64 %4312
  store i8 %4320, ptr %4321, align 1, !tbaa !22
  %4322 = load i32, ptr %2634, align 4, !tbaa !20
  %4323 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4322), !nosanitize !26
  %4324 = extractvalue { i32, i1 } %4323, 1, !nosanitize !26
  br i1 %4324, label %4254, label %4325, !nosanitize !26

4325:                                             ; preds = %4315
  %4326 = extractvalue { i32, i1 } %4323, 0, !nosanitize !26
  %4327 = lshr i32 %4299, %4326
  %4328 = trunc i32 %4327 to i16
  store i16 %4328, ptr %3272, align 8, !tbaa !19
  %4329 = add nsw i32 %4295, -16
  %4330 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4322, i32 %4329), !nosanitize !26
  %4331 = extractvalue { i32, i1 } %4330, 1, !nosanitize !26
  br i1 %4331, label %4219, label %4335, !nosanitize !26

4332:                                             ; preds = %4287
  %4333 = add nsw i32 %4213, %4295
  %4334 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4333, 0
  br label %4335

4335:                                             ; preds = %4332, %4325
  %4336 = phi i16 [ %4328, %4325 ], [ %4302, %4332 ]
  %4337 = phi { i32, i1 } [ %4330, %4325 ], [ %4334, %4332 ]
  %4338 = extractvalue { i32, i1 } %4337, 0
  store i32 %4338, ptr %2634, align 4, !tbaa !20
  %4339 = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %4290
  %4340 = load i32, ptr %4339, align 4, !tbaa !41
  %4341 = add nsw i64 %4290, -28
  %4342 = icmp ult i64 %4341, -20
  br i1 %4342, label %4401, label %4343

4343:                                             ; preds = %4335
  %4344 = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %4290
  %4345 = load i32, ptr %4344, align 4, !tbaa !41
  %4346 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4239, i32 %4345), !nosanitize !26
  %4347 = extractvalue { i32, i1 } %4346, 0, !nosanitize !26
  %4348 = extractvalue { i32, i1 } %4346, 1, !nosanitize !26
  br i1 %4348, label %4254, label %4349, !nosanitize !26

4349:                                             ; preds = %4343
  %4350 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4340), !nosanitize !26
  %4351 = extractvalue { i32, i1 } %4350, 1, !nosanitize !26
  br i1 %4351, label %4254, label %4352, !nosanitize !26

4352:                                             ; preds = %4349
  %4353 = extractvalue { i32, i1 } %4350, 0, !nosanitize !26
  %4354 = icmp sgt i32 %4338, %4353
  br i1 %4354, label %4355, label %4391

4355:                                             ; preds = %4352
  %4356 = and i32 %4347, 65535
  %4357 = shl i32 %4347, %4338
  %4358 = trunc i32 %4357 to i16
  %4359 = or i16 %4336, %4358
  store i16 %4359, ptr %3272, align 8, !tbaa !19
  %4360 = load i64, ptr %3273, align 8, !tbaa !27
  %4361 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4360, i64 1), !nosanitize !26
  %4362 = extractvalue { i64, i1 } %4361, 1, !nosanitize !26
  br i1 %4362, label %4219, label %4363, !nosanitize !26

4363:                                             ; preds = %4355
  %4364 = extractvalue { i64, i1 } %4361, 0, !nosanitize !26
  %4365 = load ptr, ptr %3274, align 8, !tbaa !28
  %4366 = trunc i16 %4359 to i8
  store i64 %4364, ptr %3273, align 8, !tbaa !27
  %4367 = getelementptr inbounds i8, ptr %4365, i64 %4360
  store i8 %4366, ptr %4367, align 1, !tbaa !22
  %4368 = load i64, ptr %3273, align 8, !tbaa !27
  %4369 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4368, i64 1), !nosanitize !26
  %4370 = extractvalue { i64, i1 } %4369, 1, !nosanitize !26
  br i1 %4370, label %4219, label %4371, !nosanitize !26

4371:                                             ; preds = %4363
  %4372 = extractvalue { i64, i1 } %4369, 0, !nosanitize !26
  %4373 = load ptr, ptr %3274, align 8, !tbaa !28
  %4374 = load i16, ptr %3272, align 8, !tbaa !19
  %4375 = lshr i16 %4374, 8
  %4376 = trunc i16 %4375 to i8
  store i64 %4372, ptr %3273, align 8, !tbaa !27
  %4377 = getelementptr inbounds i8, ptr %4373, i64 %4368
  store i8 %4376, ptr %4377, align 1, !tbaa !22
  %4378 = load i32, ptr %2634, align 4, !tbaa !20
  %4379 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4378), !nosanitize !26
  %4380 = extractvalue { i32, i1 } %4379, 1, !nosanitize !26
  br i1 %4380, label %4254, label %4381, !nosanitize !26

4381:                                             ; preds = %4371
  %4382 = extractvalue { i32, i1 } %4379, 0, !nosanitize !26
  %4383 = lshr i32 %4356, %4382
  %4384 = trunc i32 %4383 to i16
  store i16 %4384, ptr %3272, align 8, !tbaa !19
  %4385 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4340, i32 -16)
  %4386 = extractvalue { i32, i1 } %4385, 1, !nosanitize !26
  br i1 %4386, label %4254, label %4387, !nosanitize !26

4387:                                             ; preds = %4381
  %4388 = extractvalue { i32, i1 } %4385, 0, !nosanitize !26
  %4389 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4378, i32 %4388), !nosanitize !26
  %4390 = extractvalue { i32, i1 } %4389, 1, !nosanitize !26
  br i1 %4390, label %4219, label %4397, !nosanitize !26

4391:                                             ; preds = %4352
  %4392 = shl i32 %4347, %4338
  %4393 = trunc i32 %4392 to i16
  %4394 = or i16 %4336, %4393
  store i16 %4394, ptr %3272, align 8, !tbaa !19
  %4395 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4338, i32 %4340), !nosanitize !26
  %4396 = extractvalue { i32, i1 } %4395, 1, !nosanitize !26
  br i1 %4396, label %4219, label %4397, !nosanitize !26

4397:                                             ; preds = %4391, %4387
  %4398 = phi i16 [ %4384, %4387 ], [ %4394, %4391 ]
  %4399 = phi { i32, i1 } [ %4389, %4387 ], [ %4395, %4391 ]
  %4400 = extractvalue { i32, i1 } %4399, 0
  store i32 %4400, ptr %2634, align 4, !tbaa !20
  br label %4401

4401:                                             ; preds = %4397, %4335
  %4402 = phi i16 [ %4398, %4397 ], [ %4336, %4335 ]
  %4403 = phi i32 [ %4400, %4397 ], [ %4338, %4335 ]
  %4404 = add nsw i32 %4231, -1
  %4405 = icmp ult i32 %4231, 257
  %4406 = lshr i32 %4404, 7
  %4407 = add nuw nsw i32 %4406, 256
  %4408 = select i1 %4405, i32 %4404, i32 %4407
  %4409 = zext nneg i32 %4408 to i64
  %4410 = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %4409
  %4411 = load i8, ptr %4410, align 1, !tbaa !22
  %4412 = zext i8 %4411 to i64
  %4413 = getelementptr inbounds %struct.ct_data_s, ptr %3770, i64 %4412
  %4414 = getelementptr inbounds %struct.ct_data_s, ptr %3770, i64 %4412, i32 1
  %4415 = load i16, ptr %4414, align 2, !tbaa !22
  %4416 = zext i16 %4415 to i32
  %4417 = sub nsw i32 16, %4416
  %4418 = icmp sgt i32 %4403, %4417
  %4419 = load i16, ptr %4413, align 2, !tbaa !22
  %4420 = zext i16 %4419 to i32
  %4421 = shl i32 %4420, %4403
  %4422 = trunc i32 %4421 to i16
  %4423 = or i16 %4402, %4422
  store i16 %4423, ptr %3272, align 8, !tbaa !19
  br i1 %4418, label %4424, label %4453

4424:                                             ; preds = %4401
  %4425 = load i64, ptr %3273, align 8, !tbaa !27
  %4426 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4425, i64 1), !nosanitize !26
  %4427 = extractvalue { i64, i1 } %4426, 1, !nosanitize !26
  br i1 %4427, label %4219, label %4428, !nosanitize !26

4428:                                             ; preds = %4424
  %4429 = extractvalue { i64, i1 } %4426, 0, !nosanitize !26
  %4430 = load ptr, ptr %3274, align 8, !tbaa !28
  %4431 = trunc i16 %4423 to i8
  store i64 %4429, ptr %3273, align 8, !tbaa !27
  %4432 = getelementptr inbounds i8, ptr %4430, i64 %4425
  store i8 %4431, ptr %4432, align 1, !tbaa !22
  %4433 = load i64, ptr %3273, align 8, !tbaa !27
  %4434 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4433, i64 1), !nosanitize !26
  %4435 = extractvalue { i64, i1 } %4434, 1, !nosanitize !26
  br i1 %4435, label %4219, label %4436, !nosanitize !26

4436:                                             ; preds = %4428
  %4437 = extractvalue { i64, i1 } %4434, 0, !nosanitize !26
  %4438 = load ptr, ptr %3274, align 8, !tbaa !28
  %4439 = load i16, ptr %3272, align 8, !tbaa !19
  %4440 = lshr i16 %4439, 8
  %4441 = trunc i16 %4440 to i8
  store i64 %4437, ptr %3273, align 8, !tbaa !27
  %4442 = getelementptr inbounds i8, ptr %4438, i64 %4433
  store i8 %4441, ptr %4442, align 1, !tbaa !22
  %4443 = load i32, ptr %2634, align 4, !tbaa !20
  %4444 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4443), !nosanitize !26
  %4445 = extractvalue { i32, i1 } %4444, 1, !nosanitize !26
  br i1 %4445, label %4254, label %4446, !nosanitize !26

4446:                                             ; preds = %4436
  %4447 = extractvalue { i32, i1 } %4444, 0, !nosanitize !26
  %4448 = lshr i32 %4420, %4447
  %4449 = trunc i32 %4448 to i16
  store i16 %4449, ptr %3272, align 8, !tbaa !19
  %4450 = add nsw i32 %4416, -16
  %4451 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4443, i32 %4450), !nosanitize !26
  %4452 = extractvalue { i32, i1 } %4451, 1, !nosanitize !26
  br i1 %4452, label %4219, label %4456, !nosanitize !26

4453:                                             ; preds = %4401
  %4454 = add nsw i32 %4403, %4416
  %4455 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4454, 0
  br label %4456

4456:                                             ; preds = %4453, %4446
  %4457 = phi i16 [ %4449, %4446 ], [ %4423, %4453 ]
  %4458 = phi { i32, i1 } [ %4451, %4446 ], [ %4455, %4453 ]
  %4459 = extractvalue { i32, i1 } %4458, 0
  store i32 %4459, ptr %2634, align 4, !tbaa !20
  %4460 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %4412
  %4461 = load i32, ptr %4460, align 4, !tbaa !41
  %4462 = icmp ult i8 %4411, 4
  br i1 %4462, label %4521, label %4463

4463:                                             ; preds = %4456
  %4464 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %4412
  %4465 = load i32, ptr %4464, align 4, !tbaa !41
  %4466 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %4404, i32 %4465), !nosanitize !26
  %4467 = extractvalue { i32, i1 } %4466, 0, !nosanitize !26
  %4468 = extractvalue { i32, i1 } %4466, 1, !nosanitize !26
  br i1 %4468, label %4254, label %4469, !nosanitize !26

4469:                                             ; preds = %4463
  %4470 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4461), !nosanitize !26
  %4471 = extractvalue { i32, i1 } %4470, 1, !nosanitize !26
  br i1 %4471, label %4254, label %4472, !nosanitize !26

4472:                                             ; preds = %4469
  %4473 = extractvalue { i32, i1 } %4470, 0, !nosanitize !26
  %4474 = icmp sgt i32 %4459, %4473
  br i1 %4474, label %4475, label %4511

4475:                                             ; preds = %4472
  %4476 = and i32 %4467, 65535
  %4477 = shl i32 %4467, %4459
  %4478 = trunc i32 %4477 to i16
  %4479 = or i16 %4457, %4478
  store i16 %4479, ptr %3272, align 8, !tbaa !19
  %4480 = load i64, ptr %3273, align 8, !tbaa !27
  %4481 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4480, i64 1), !nosanitize !26
  %4482 = extractvalue { i64, i1 } %4481, 1, !nosanitize !26
  br i1 %4482, label %4219, label %4483, !nosanitize !26

4483:                                             ; preds = %4475
  %4484 = extractvalue { i64, i1 } %4481, 0, !nosanitize !26
  %4485 = load ptr, ptr %3274, align 8, !tbaa !28
  %4486 = trunc i16 %4479 to i8
  store i64 %4484, ptr %3273, align 8, !tbaa !27
  %4487 = getelementptr inbounds i8, ptr %4485, i64 %4480
  store i8 %4486, ptr %4487, align 1, !tbaa !22
  %4488 = load i64, ptr %3273, align 8, !tbaa !27
  %4489 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4488, i64 1), !nosanitize !26
  %4490 = extractvalue { i64, i1 } %4489, 1, !nosanitize !26
  br i1 %4490, label %4219, label %4491, !nosanitize !26

4491:                                             ; preds = %4483
  %4492 = extractvalue { i64, i1 } %4489, 0, !nosanitize !26
  %4493 = load ptr, ptr %3274, align 8, !tbaa !28
  %4494 = load i16, ptr %3272, align 8, !tbaa !19
  %4495 = lshr i16 %4494, 8
  %4496 = trunc i16 %4495 to i8
  store i64 %4492, ptr %3273, align 8, !tbaa !27
  %4497 = getelementptr inbounds i8, ptr %4493, i64 %4488
  store i8 %4496, ptr %4497, align 1, !tbaa !22
  %4498 = load i32, ptr %2634, align 4, !tbaa !20
  %4499 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4498), !nosanitize !26
  %4500 = extractvalue { i32, i1 } %4499, 1, !nosanitize !26
  br i1 %4500, label %4254, label %4501, !nosanitize !26

4501:                                             ; preds = %4491
  %4502 = extractvalue { i32, i1 } %4499, 0, !nosanitize !26
  %4503 = lshr i32 %4476, %4502
  %4504 = trunc i32 %4503 to i16
  store i16 %4504, ptr %3272, align 8, !tbaa !19
  %4505 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4461, i32 -16)
  %4506 = extractvalue { i32, i1 } %4505, 1, !nosanitize !26
  br i1 %4506, label %4254, label %4507, !nosanitize !26

4507:                                             ; preds = %4501
  %4508 = extractvalue { i32, i1 } %4505, 0, !nosanitize !26
  %4509 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4498, i32 %4508), !nosanitize !26
  %4510 = extractvalue { i32, i1 } %4509, 1, !nosanitize !26
  br i1 %4510, label %4219, label %4517, !nosanitize !26

4511:                                             ; preds = %4472
  %4512 = shl i32 %4467, %4459
  %4513 = trunc i32 %4512 to i16
  %4514 = or i16 %4457, %4513
  store i16 %4514, ptr %3272, align 8, !tbaa !19
  %4515 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4459, i32 %4461), !nosanitize !26
  %4516 = extractvalue { i32, i1 } %4515, 1, !nosanitize !26
  br i1 %4516, label %4219, label %4517, !nosanitize !26

4517:                                             ; preds = %4507, %4511, %4277, %4284
  %4518 = phi i16 [ %4280, %4277 ], [ %4253, %4284 ], [ %4504, %4507 ], [ %4514, %4511 ]
  %4519 = phi { i32, i1 } [ %4282, %4277 ], [ %4286, %4284 ], [ %4509, %4507 ], [ %4515, %4511 ]
  %4520 = extractvalue { i32, i1 } %4519, 0
  store i32 %4520, ptr %2634, align 4, !tbaa !20
  br label %4521

4521:                                             ; preds = %4517, %4456
  %4522 = phi i16 [ %4457, %4456 ], [ %4518, %4517 ]
  %4523 = phi i32 [ %4459, %4456 ], [ %4520, %4517 ]
  %4524 = load i32, ptr %4206, align 4, !tbaa !25
  %4525 = icmp ult i32 %4233, %4524
  br i1 %4525, label %4211, label %4526, !llvm.loop !70

4526:                                             ; preds = %4521, %4203
  %4527 = phi i16 [ %4204, %4203 ], [ %4522, %4521 ]
  %4528 = phi i32 [ %4205, %4203 ], [ %4523, %4521 ]
  %4529 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 256
  %4530 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 256, i32 1
  %4531 = load i16, ptr %4530, align 2, !tbaa !22
  %4532 = zext i16 %4531 to i32
  %4533 = sub nsw i32 16, %4532
  %4534 = icmp sgt i32 %4528, %4533
  %4535 = load i16, ptr %4529, align 2, !tbaa !22
  %4536 = zext i16 %4535 to i32
  %4537 = shl i32 %4536, %4528
  %4538 = trunc i32 %4537 to i16
  %4539 = or i16 %4527, %4538
  store i16 %4539, ptr %3272, align 8, !tbaa !19
  br i1 %4534, label %4540, label %4569

4540:                                             ; preds = %4526
  %4541 = load i64, ptr %3273, align 8, !tbaa !27
  %4542 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4541, i64 1), !nosanitize !26
  %4543 = extractvalue { i64, i1 } %4542, 1, !nosanitize !26
  br i1 %4543, label %4219, label %4544, !nosanitize !26

4544:                                             ; preds = %4540
  %4545 = extractvalue { i64, i1 } %4542, 0, !nosanitize !26
  %4546 = load ptr, ptr %3274, align 8, !tbaa !28
  %4547 = trunc i16 %4539 to i8
  store i64 %4545, ptr %3273, align 8, !tbaa !27
  %4548 = getelementptr inbounds i8, ptr %4546, i64 %4541
  store i8 %4547, ptr %4548, align 1, !tbaa !22
  %4549 = load i64, ptr %3273, align 8, !tbaa !27
  %4550 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4549, i64 1), !nosanitize !26
  %4551 = extractvalue { i64, i1 } %4550, 1, !nosanitize !26
  br i1 %4551, label %4219, label %4552, !nosanitize !26

4552:                                             ; preds = %4544
  %4553 = extractvalue { i64, i1 } %4550, 0, !nosanitize !26
  %4554 = load ptr, ptr %3274, align 8, !tbaa !28
  %4555 = load i16, ptr %3272, align 8, !tbaa !19
  %4556 = lshr i16 %4555, 8
  %4557 = trunc i16 %4556 to i8
  store i64 %4553, ptr %3273, align 8, !tbaa !27
  %4558 = getelementptr inbounds i8, ptr %4554, i64 %4549
  store i8 %4557, ptr %4558, align 1, !tbaa !22
  %4559 = load i32, ptr %2634, align 4, !tbaa !20
  %4560 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4559), !nosanitize !26
  %4561 = extractvalue { i32, i1 } %4560, 1, !nosanitize !26
  br i1 %4561, label %4254, label %4562, !nosanitize !26

4562:                                             ; preds = %4552
  %4563 = extractvalue { i32, i1 } %4560, 0, !nosanitize !26
  %4564 = lshr i32 %4536, %4563
  %4565 = trunc i32 %4564 to i16
  store i16 %4565, ptr %3272, align 8, !tbaa !19
  %4566 = add nsw i32 %4532, -16
  %4567 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4559, i32 %4566), !nosanitize !26
  %4568 = extractvalue { i32, i1 } %4567, 1, !nosanitize !26
  br i1 %4568, label %4219, label %4572, !nosanitize !26

4569:                                             ; preds = %4526
  %4570 = add nsw i32 %4528, %4532
  %4571 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4570, 0
  br label %4572

4572:                                             ; preds = %4562, %4569
  %4573 = phi { i32, i1 } [ %4567, %4562 ], [ %4571, %4569 ]
  %4574 = extractvalue { i32, i1 } %4573, 0
  store i32 %4574, ptr %2634, align 4, !tbaa !20
  br label %4575

4575:                                             ; preds = %3046, %4572, %2630
  br label %4576

4576:                                             ; preds = %4576, %4575
  %4577 = phi i64 [ 0, %4575 ], [ %4581, %4576 ]
  %4578 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %4577
  store i16 0, ptr %4578, align 4, !tbaa !22
  %4579 = or disjoint i64 %4577, 1
  %4580 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %4579
  store i16 0, ptr %4580, align 4, !tbaa !22
  %4581 = add nuw nsw i64 %4577, 2
  %4582 = icmp eq i64 %4581, 286
  br i1 %4582, label %4583, label %4576, !llvm.loop !23

4583:                                             ; preds = %4576
  %4584 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 0
  store i16 0, ptr %4584, align 4, !tbaa !22
  %4585 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 1
  store i16 0, ptr %4585, align 4, !tbaa !22
  %4586 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 2
  store i16 0, ptr %4586, align 4, !tbaa !22
  %4587 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 3
  store i16 0, ptr %4587, align 4, !tbaa !22
  %4588 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 4
  store i16 0, ptr %4588, align 4, !tbaa !22
  %4589 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 5
  store i16 0, ptr %4589, align 4, !tbaa !22
  %4590 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 6
  store i16 0, ptr %4590, align 4, !tbaa !22
  %4591 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 7
  store i16 0, ptr %4591, align 4, !tbaa !22
  %4592 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 8
  store i16 0, ptr %4592, align 4, !tbaa !22
  %4593 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 9
  store i16 0, ptr %4593, align 4, !tbaa !22
  %4594 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 10
  store i16 0, ptr %4594, align 4, !tbaa !22
  %4595 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 11
  store i16 0, ptr %4595, align 4, !tbaa !22
  %4596 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 12
  store i16 0, ptr %4596, align 4, !tbaa !22
  %4597 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 13
  store i16 0, ptr %4597, align 4, !tbaa !22
  %4598 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 14
  store i16 0, ptr %4598, align 4, !tbaa !22
  %4599 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 15
  store i16 0, ptr %4599, align 4, !tbaa !22
  %4600 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 16
  store i16 0, ptr %4600, align 4, !tbaa !22
  %4601 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 17
  store i16 0, ptr %4601, align 4, !tbaa !22
  %4602 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 18
  store i16 0, ptr %4602, align 4, !tbaa !22
  %4603 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 19
  store i16 0, ptr %4603, align 4, !tbaa !22
  %4604 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 20
  store i16 0, ptr %4604, align 4, !tbaa !22
  %4605 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 21
  store i16 0, ptr %4605, align 4, !tbaa !22
  %4606 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 22
  store i16 0, ptr %4606, align 4, !tbaa !22
  %4607 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 23
  store i16 0, ptr %4607, align 4, !tbaa !22
  %4608 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 24
  store i16 0, ptr %4608, align 4, !tbaa !22
  %4609 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 25
  store i16 0, ptr %4609, align 4, !tbaa !22
  %4610 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 26
  store i16 0, ptr %4610, align 4, !tbaa !22
  %4611 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 27
  store i16 0, ptr %4611, align 4, !tbaa !22
  %4612 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 28
  store i16 0, ptr %4612, align 4, !tbaa !22
  %4613 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 29
  store i16 0, ptr %4613, align 4, !tbaa !22
  %4614 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 0
  store i16 0, ptr %4614, align 4, !tbaa !22
  %4615 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 1
  store i16 0, ptr %4615, align 4, !tbaa !22
  %4616 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 2
  store i16 0, ptr %4616, align 4, !tbaa !22
  %4617 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 3
  store i16 0, ptr %4617, align 4, !tbaa !22
  %4618 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 4
  store i16 0, ptr %4618, align 4, !tbaa !22
  %4619 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 5
  store i16 0, ptr %4619, align 4, !tbaa !22
  %4620 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 6
  store i16 0, ptr %4620, align 4, !tbaa !22
  %4621 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 7
  store i16 0, ptr %4621, align 4, !tbaa !22
  %4622 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 8
  store i16 0, ptr %4622, align 4, !tbaa !22
  %4623 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 9
  store i16 0, ptr %4623, align 4, !tbaa !22
  %4624 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 10
  store i16 0, ptr %4624, align 4, !tbaa !22
  %4625 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 11
  store i16 0, ptr %4625, align 4, !tbaa !22
  %4626 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 12
  store i16 0, ptr %4626, align 4, !tbaa !22
  %4627 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 13
  store i16 0, ptr %4627, align 4, !tbaa !22
  %4628 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 14
  store i16 0, ptr %4628, align 4, !tbaa !22
  %4629 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 15
  store i16 0, ptr %4629, align 4, !tbaa !22
  %4630 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  store i16 0, ptr %4630, align 4, !tbaa !22
  %4631 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  store i16 0, ptr %4631, align 4, !tbaa !22
  %4632 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  store i16 0, ptr %4632, align 4, !tbaa !22
  %4633 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 256
  store i16 1, ptr %4633, align 4, !tbaa !22
  %4634 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %4635 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  store i32 0, ptr %4635, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4634, i8 0, i64 20, i1 false)
  %4636 = icmp eq i32 %3, 0
  br i1 %4636, label %4691, label %4637

4637:                                             ; preds = %4583
  %4638 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %4639 = load i32, ptr %4638, align 4, !tbaa !20
  %4640 = icmp sgt i32 %4639, 8
  br i1 %4640, label %4641, label %4665

4641:                                             ; preds = %4637
  %4642 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %4643 = load i64, ptr %4642, align 8, !tbaa !27
  %4644 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4643, i64 1), !nosanitize !26
  %4645 = extractvalue { i64, i1 } %4644, 1, !nosanitize !26
  br i1 %4645, label %4646, label %4647, !nosanitize !26

4646:                                             ; preds = %4667, %4647, %4641
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

4647:                                             ; preds = %4641
  %4648 = extractvalue { i64, i1 } %4644, 0, !nosanitize !26
  %4649 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %4650 = load ptr, ptr %4649, align 8, !tbaa !28
  %4651 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %4652 = load i16, ptr %4651, align 8, !tbaa !19
  %4653 = trunc i16 %4652 to i8
  store i64 %4648, ptr %4642, align 8, !tbaa !27
  %4654 = getelementptr inbounds i8, ptr %4650, i64 %4643
  store i8 %4653, ptr %4654, align 1, !tbaa !22
  %4655 = load i64, ptr %4642, align 8, !tbaa !27
  %4656 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4655, i64 1), !nosanitize !26
  %4657 = extractvalue { i64, i1 } %4656, 1, !nosanitize !26
  br i1 %4657, label %4646, label %4658, !nosanitize !26

4658:                                             ; preds = %4647
  %4659 = extractvalue { i64, i1 } %4656, 0, !nosanitize !26
  %4660 = load ptr, ptr %4649, align 8, !tbaa !28
  %4661 = load i16, ptr %4651, align 8, !tbaa !19
  %4662 = lshr i16 %4661, 8
  %4663 = trunc i16 %4662 to i8
  store i64 %4659, ptr %4642, align 8, !tbaa !27
  %4664 = getelementptr inbounds i8, ptr %4660, i64 %4655
  store i8 %4663, ptr %4664, align 1, !tbaa !22
  br label %4680

4665:                                             ; preds = %4637
  %4666 = icmp sgt i32 %4639, 0
  br i1 %4666, label %4667, label %4680

4667:                                             ; preds = %4665
  %4668 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %4669 = load i64, ptr %4668, align 8, !tbaa !27
  %4670 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4669, i64 1), !nosanitize !26
  %4671 = extractvalue { i64, i1 } %4670, 1, !nosanitize !26
  br i1 %4671, label %4646, label %4672, !nosanitize !26

4672:                                             ; preds = %4667
  %4673 = extractvalue { i64, i1 } %4670, 0, !nosanitize !26
  %4674 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %4675 = load ptr, ptr %4674, align 8, !tbaa !28
  %4676 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %4677 = load i16, ptr %4676, align 8, !tbaa !19
  %4678 = trunc i16 %4677 to i8
  store i64 %4673, ptr %4668, align 8, !tbaa !27
  %4679 = getelementptr inbounds i8, ptr %4675, i64 %4669
  store i8 %4678, ptr %4679, align 1, !tbaa !22
  br label %4680

4680:                                             ; preds = %4672, %4665, %4658
  %4681 = load i32, ptr %4638, align 4, !tbaa !20
  %4682 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4681, i32 -1)
  %4683 = extractvalue { i32, i1 } %4682, 1, !nosanitize !26
  br i1 %4683, label %4684, label %4685, !nosanitize !26

4684:                                             ; preds = %4680
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !26
  unreachable, !nosanitize !26

4685:                                             ; preds = %4680
  %4686 = extractvalue { i32, i1 } %4682, 0, !nosanitize !26
  %4687 = and i32 %4686, 7
  %4688 = add nuw nsw i32 %4687, 1
  %4689 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 58
  store i32 %4688, ptr %4689, align 8, !tbaa !21
  %4690 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  store i16 0, ptr %4690, align 8, !tbaa !19
  store i32 0, ptr %4638, align 4, !tbaa !20
  br label %4691

4691:                                             ; preds = %4685, %4583
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_tr_tally(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %6 = load i32, ptr %5, align 4, !tbaa !25
  %7 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %6, i32 1), !nosanitize !26
  %8 = extractvalue { i32, i1 } %7, 1, !nosanitize !26
  br i1 %8, label %9, label %10, !nosanitize !26

9:                                                ; preds = %39, %19, %10, %3
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !26
  unreachable, !nosanitize !26

10:                                               ; preds = %3
  %11 = extractvalue { i32, i1 } %7, 0, !nosanitize !26
  %12 = load ptr, ptr %4, align 8, !tbaa !69
  %13 = trunc i32 %1 to i8
  store i32 %11, ptr %5, align 4, !tbaa !25
  %14 = zext i32 %6 to i64
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  store i8 %13, ptr %15, align 1, !tbaa !22
  %16 = load i32, ptr %5, align 4, !tbaa !25
  %17 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %16, i32 1), !nosanitize !26
  %18 = extractvalue { i32, i1 } %17, 1, !nosanitize !26
  br i1 %18, label %9, label %19, !nosanitize !26

19:                                               ; preds = %10
  %20 = extractvalue { i32, i1 } %17, 0, !nosanitize !26
  %21 = load ptr, ptr %4, align 8, !tbaa !69
  %22 = lshr i32 %1, 8
  %23 = trunc i32 %22 to i8
  store i32 %20, ptr %5, align 4, !tbaa !25
  %24 = zext i32 %16 to i64
  %25 = getelementptr inbounds i8, ptr %21, i64 %24
  store i8 %23, ptr %25, align 1, !tbaa !22
  %26 = load i32, ptr %5, align 4, !tbaa !25
  %27 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %26, i32 1), !nosanitize !26
  %28 = extractvalue { i32, i1 } %27, 1, !nosanitize !26
  br i1 %28, label %9, label %29, !nosanitize !26

29:                                               ; preds = %19
  %30 = extractvalue { i32, i1 } %27, 0, !nosanitize !26
  %31 = load ptr, ptr %4, align 8, !tbaa !69
  %32 = trunc i32 %2 to i8
  store i32 %30, ptr %5, align 4, !tbaa !25
  %33 = zext i32 %26 to i64
  %34 = getelementptr inbounds i8, ptr %31, i64 %33
  store i8 %32, ptr %34, align 1, !tbaa !22
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = zext i32 %2 to i64
  %38 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %37
  br label %64

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 54
  %41 = load i32, ptr %40, align 8, !tbaa !74
  %42 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %41, i32 1), !nosanitize !26
  %43 = extractvalue { i32, i1 } %42, 1, !nosanitize !26
  br i1 %43, label %9, label %44, !nosanitize !26

44:                                               ; preds = %39
  %45 = extractvalue { i32, i1 } %42, 0, !nosanitize !26
  store i32 %45, ptr %40, align 8, !tbaa !74
  %46 = add i32 %1, -1
  %47 = zext i32 %2 to i64
  %48 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !22
  %50 = zext i8 %49 to i64
  %51 = add nuw nsw i64 %50, 257
  %52 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %51
  %53 = load i16, ptr %52, align 4, !tbaa !22
  %54 = add i16 %53, 1
  store i16 %54, ptr %52, align 4, !tbaa !22
  %55 = icmp ult i32 %1, 257
  %56 = lshr i32 %46, 7
  %57 = add nuw nsw i32 %56, 256
  %58 = select i1 %55, i32 %46, i32 %57
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !22
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %62
  br label %64

64:                                               ; preds = %44, %36
  %65 = phi ptr [ %63, %44 ], [ %38, %36 ]
  %66 = load i16, ptr %65, align 4, !tbaa !22
  %67 = add i16 %66, 1
  store i16 %67, ptr %65, align 4, !tbaa !22
  %68 = load i32, ptr %5, align 4, !tbaa !25
  %69 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %70 = load i32, ptr %69, align 8, !tbaa !75
  %71 = icmp eq i32 %68, %70
  %72 = zext i1 %71 to i32
  ret i32 %72
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 2904}
!6 = !{!"internal_state", !7, i64 0, !10, i64 8, !7, i64 16, !11, i64 24, !7, i64 32, !11, i64 40, !10, i64 48, !7, i64 56, !11, i64 64, !8, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !7, i64 96, !11, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !11, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !8, i64 212, !8, i64 2504, !8, i64 2748, !12, i64 2904, !12, i64 2928, !12, i64 2952, !8, i64 2976, !8, i64 3008, !10, i64 5300, !10, i64 5304, !8, i64 5308, !7, i64 5888, !10, i64 5896, !10, i64 5900, !10, i64 5904, !11, i64 5912, !11, i64 5920, !10, i64 5928, !10, i64 5932, !13, i64 5936, !10, i64 5940, !10, i64 5944, !11, i64 5952, !10, i64 5960}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!"tree_desc_s", !7, i64 0, !10, i64 8, !7, i64 16}
!13 = !{!"short", !8, i64 0}
!14 = !{!6, !7, i64 2920}
!15 = !{!6, !7, i64 2928}
!16 = !{!6, !7, i64 2944}
!17 = !{!6, !7, i64 2952}
!18 = !{!6, !7, i64 2968}
!19 = !{!6, !13, i64 5936}
!20 = !{!6, !10, i64 5940}
!21 = !{!6, !10, i64 5944}
!22 = !{!8, !8, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!6, !10, i64 5900}
!26 = !{}
!27 = !{!6, !11, i64 40}
!28 = !{!6, !7, i64 16}
!29 = !{!6, !10, i64 196}
!30 = !{!6, !7, i64 0}
!31 = !{!32, !10, i64 88}
!32 = !{!"z_stream_s", !7, i64 0, !10, i64 8, !11, i64 16, !7, i64 24, !10, i64 32, !11, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !11, i64 96, !11, i64 104}
!33 = distinct !{!33, !24}
!34 = !{!12, !7, i64 0}
!35 = !{!12, !7, i64 16}
!36 = !{!37, !7, i64 0}
!37 = !{!"static_tree_desc_s", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24}
!38 = !{!37, !10, i64 20}
!39 = !{!6, !10, i64 5300}
!40 = !{!6, !10, i64 5304}
!41 = !{!10, !10, i64 0}
!42 = distinct !{!42, !24}
!43 = !{!6, !11, i64 5912}
!44 = !{!6, !11, i64 5920}
!45 = distinct !{!45, !24}
!46 = !{!12, !10, i64 8}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24}
!50 = !{!37, !7, i64 8}
!51 = !{!37, !10, i64 16}
!52 = !{!37, !10, i64 24}
!53 = !{!13, !13, i64 0}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, !24}
!63 = distinct !{!63, !61}
!64 = !{!6, !10, i64 2912}
!65 = distinct !{!65, !24}
!66 = !{!6, !10, i64 2936}
!67 = distinct !{!67, !61}
!68 = !{!6, !10, i64 200}
!69 = !{!6, !7, i64 5888}
!70 = distinct !{!70, !24}
!71 = distinct !{!71, !24}
!72 = distinct !{!72, !24}
!73 = distinct !{!73, !24}
!74 = !{!6, !10, i64 5928}
!75 = !{!6, !10, i64 5904}
