; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_trees.ll'
source_filename = "/mydata/zlib/trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }

@_dist_code = dso_local local_unnamed_addr constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\10\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 16
@_length_code = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\0F\0F\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C", align 16
@static_ltree = internal constant [288 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 140 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 76 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 204 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 44 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 172 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 108 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 236 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 156 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 92 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 220 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 60 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 188 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 124 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 252 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 130 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 66 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 194 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 34 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 162 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 98 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 226 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 146 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 82 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 210 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 50 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 178 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 114 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 242 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 138 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 74 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 202 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 42 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 170 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 106 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 234 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 154 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 90 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 218 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 58 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 186 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 122 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 250 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 134 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 70 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 198 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 38 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 166 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 102 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 230 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 150 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 86 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 214 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 54 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 182 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 118 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 246 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 142 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 78 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 206 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 46 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 174 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 110 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 238 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 158 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 94 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 222 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 62 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 190 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 126 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 254 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 129 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 65 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 193 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 33 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 161 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 97 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 225 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 145 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 81 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 209 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 49 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 177 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 113 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 241 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 137 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 73 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 201 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 41 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 169 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 105 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 233 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 153 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 89 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 217 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 57 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 185 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 121 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 249 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 133 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 69 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 197 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 37 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 165 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 101 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 229 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 149 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 85 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 213 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 53 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 181 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 117 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 245 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 141 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 77 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 205 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 45 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 173 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 109 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 237 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 157 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 93 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 221 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 61 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 189 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 125 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 253 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 275 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 147 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 403 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 83 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 339 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 211 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 467 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 51 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 307 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 179 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 435 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 115 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 371 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 243 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 499 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 267 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 139 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 395 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 75 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 331 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 203 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 459 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 43 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 299 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 171 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 427 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 107 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 363 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 235 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 491 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 283 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 155 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 411 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 91 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 347 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 219 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 475 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 59 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 315 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 187 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 443 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 123 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 379 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 251 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 507 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 263 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 135 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 391 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 71 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 327 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 199 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 455 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 39 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 295 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 167 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 423 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 103 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 359 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 231 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 487 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 279 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 151 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 407 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 87 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 343 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 215 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 471 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 55 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 311 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 183 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 439 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 119 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 375 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 247 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 503 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 15 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 271 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 143 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 399 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 79 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 335 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 207 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 463 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 47 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 303 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 175 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 431 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 111 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 367 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 239 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 495 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 31 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 287 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 159 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 415 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 95 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 351 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 223 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 479 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 63 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 319 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 191 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 447 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 127 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 383 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 255 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 511 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 64 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 32 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 96 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 80 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 48 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 112 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 72 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 40 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 104 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 88 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 56 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 120 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 68 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 36 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 100 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 84 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 52 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 116 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 131 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 67 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 195 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 35 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 163 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 99 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 227 }, %union.anon.0 { i16 8 } }], align 16
@static_dtree = internal constant [30 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 5 } }], align 16
@extra_lbits = internal constant [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], align 16
@static_l_desc = internal constant { ptr, ptr, i32, i32, i32, [4 x i8] } { ptr @static_ltree, ptr @extra_lbits, i32 257, i32 286, i32 15, [4 x i8] zeroinitializer }, align 8
@extra_dbits = internal constant [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 16
@static_d_desc = internal constant { ptr, ptr, i32, i32, i32, [4 x i8] } { ptr @static_dtree, ptr @extra_dbits, i32 0, i32 30, i32 15, [4 x i8] zeroinitializer }, align 8
@extra_blbits = internal constant [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], align 16
@static_bl_desc = internal constant { ptr, ptr, i32, i32, i32, [4 x i8] } { ptr null, ptr @extra_blbits, i32 0, i32 19, i32 7, [4 x i8] zeroinitializer }, align 8
@bl_order = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@base_length = internal unnamed_addr constant [29 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 10, i32 12, i32 14, i32 16, i32 20, i32 24, i32 28, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 0], align 16
@base_dist = internal unnamed_addr constant [30 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @_tr_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2904
  store ptr %2, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 2920
  store ptr @static_l_desc, ptr %4, align 8, !tbaa !20
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  store ptr %5, ptr %6, align 8, !tbaa !21
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  store ptr @static_d_desc, ptr %7, align 8, !tbaa !22
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  store ptr %8, ptr %9, align 8, !tbaa !23
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  store ptr @static_bl_desc, ptr %10, align 8, !tbaa !24
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %11, align 8, !tbaa !25
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  store i32 0, ptr %12, align 4, !tbaa !26
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 0, ptr %13, align 8, !tbaa !27
  br label %14

14:                                               ; preds = %25, %1
  %15 = phi i64 [ 0, %1 ], [ %29, %25 ]
  %16 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %15
  store i16 0, ptr %16, align 4, !tbaa !28
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i16 0, ptr %17, align 4, !tbaa !28
  %18 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %15
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i16 0, ptr %19, align 4, !tbaa !28
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i16 0, ptr %20, align 4, !tbaa !28
  %21 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %15
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i16 0, ptr %22, align 4, !tbaa !28
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 20
  store i16 0, ptr %23, align 4, !tbaa !28
  %24 = icmp eq i64 %15, 280
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %15
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i16 0, ptr %27, align 4, !tbaa !28
  %28 = getelementptr inbounds nuw i8, ptr %26, i64 28
  store i16 0, ptr %28, align 4, !tbaa !28
  %29 = add nuw nsw i64 %15, 8
  br label %14

30:                                               ; preds = %14
  store i16 0, ptr %5, align 4, !tbaa !28
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %31, align 4, !tbaa !28
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %32, align 4, !tbaa !28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %33, align 4, !tbaa !28
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %34, align 4, !tbaa !28
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %35, align 4, !tbaa !28
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %36, align 4, !tbaa !28
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %37, align 4, !tbaa !28
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %38, align 4, !tbaa !28
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %39, align 4, !tbaa !28
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %40, align 4, !tbaa !28
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %41, align 4, !tbaa !28
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %42, align 4, !tbaa !28
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %43, align 4, !tbaa !28
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %44, align 4, !tbaa !28
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %45, align 4, !tbaa !28
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %46, align 4, !tbaa !28
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %47, align 4, !tbaa !28
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %48, align 4, !tbaa !28
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %49, align 4, !tbaa !28
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %50, align 4, !tbaa !28
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %51, align 4, !tbaa !28
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %52, align 4, !tbaa !28
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %53, align 4, !tbaa !28
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %54, align 4, !tbaa !28
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %55, align 4, !tbaa !28
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %56, align 4, !tbaa !28
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %57, align 4, !tbaa !28
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %58, align 4, !tbaa !28
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %59, align 4, !tbaa !28
  store i16 0, ptr %8, align 4, !tbaa !28
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %60, align 4, !tbaa !28
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %61, align 4, !tbaa !28
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %62, align 4, !tbaa !28
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %63, align 4, !tbaa !28
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %64, align 4, !tbaa !28
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %65, align 4, !tbaa !28
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %66, align 4, !tbaa !28
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %67, align 4, !tbaa !28
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %68, align 4, !tbaa !28
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %69, align 4, !tbaa !28
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %70, align 4, !tbaa !28
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %71, align 4, !tbaa !28
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %72, align 4, !tbaa !28
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %73, align 4, !tbaa !28
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %74, align 4, !tbaa !28
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %75, align 4, !tbaa !28
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %76, align 4, !tbaa !28
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %77, align 4, !tbaa !28
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %78, align 4, !tbaa !28
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %80, align 4, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %79, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @_tr_stored_block(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %6 = load i32, ptr %5, align 4, !tbaa !26
  %7 = icmp sgt i32 %6, 13
  br i1 %7, label %9, label %47

8:                                                ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

9:                                                ; preds = %4
  %10 = and i32 %3, 65535
  %11 = shl i32 %3, %6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %13 = load i16, ptr %12, align 8, !tbaa !25
  %14 = trunc i32 %11 to i16
  %15 = or i16 %13, %14
  store i16 %15, ptr %12, align 8, !tbaa !25
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %17 = load i64, ptr %16, align 8, !tbaa !31
  %18 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %17, i64 1), !nosanitize !30
  %19 = extractvalue { i64, i1 } %18, 1, !nosanitize !30
  br i1 %19, label %20, label %21, !prof !32, !nosanitize !30

20:                                               ; preds = %9
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

21:                                               ; preds = %9
  %22 = extractvalue { i64, i1 } %18, 0, !nosanitize !30
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = load ptr, ptr %23, align 8, !tbaa !33
  %25 = trunc i16 %15 to i8
  store i64 %22, ptr %16, align 8, !tbaa !31
  %26 = getelementptr inbounds nuw i8, ptr %24, i64 %17
  store i8 %25, ptr %26, align 1, !tbaa !28
  %27 = load i64, ptr %16, align 8, !tbaa !31
  %28 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 1), !nosanitize !30
  %29 = extractvalue { i64, i1 } %28, 1, !nosanitize !30
  br i1 %29, label %30, label %31, !prof !32, !nosanitize !30

30:                                               ; preds = %41, %21
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

31:                                               ; preds = %21
  %32 = extractvalue { i64, i1 } %28, 0, !nosanitize !30
  %33 = load ptr, ptr %23, align 8, !tbaa !33
  %34 = load i16, ptr %12, align 8, !tbaa !25
  %35 = lshr i16 %34, 8
  %36 = trunc nuw i16 %35 to i8
  store i64 %32, ptr %16, align 8, !tbaa !31
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 %27
  store i8 %36, ptr %37, align 1, !tbaa !28
  %38 = load i32, ptr %5, align 4, !tbaa !26
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %38), !nosanitize !30
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !30
  br i1 %40, label %8, label %41, !prof !32, !nosanitize !30

41:                                               ; preds = %31
  %42 = extractvalue { i32, i1 } %39, 0, !nosanitize !30
  %43 = lshr i32 %10, %42
  %44 = trunc nuw i32 %43 to i16
  store i16 %44, ptr %12, align 8, !tbaa !25
  %45 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 -13), !nosanitize !30
  %46 = extractvalue { i32, i1 } %45, 1, !nosanitize !30
  br i1 %46, label %30, label %55, !prof !32, !nosanitize !30

47:                                               ; preds = %4
  %48 = shl i32 %3, %6
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %50 = load i16, ptr %49, align 8, !tbaa !25
  %51 = trunc i32 %48 to i16
  %52 = or i16 %50, %51
  store i16 %52, ptr %49, align 8, !tbaa !25
  %53 = add nsw i32 %6, 3
  %54 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %53, 0
  br label %55

55:                                               ; preds = %47, %41
  %56 = phi i16 [ %44, %41 ], [ %52, %47 ]
  %57 = phi { i32, i1 } [ %45, %41 ], [ %54, %47 ]
  %58 = extractvalue { i32, i1 } %57, 0
  store i32 %58, ptr %5, align 4, !tbaa !26
  %59 = icmp sgt i32 %58, 8
  br i1 %59, label %60, label %84

60:                                               ; preds = %55
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %62 = load i64, ptr %61, align 8, !tbaa !31
  %63 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %62, i64 1), !nosanitize !30
  %64 = extractvalue { i64, i1 } %63, 1, !nosanitize !30
  br i1 %64, label %65, label %66, !prof !32, !nosanitize !30

65:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

66:                                               ; preds = %60
  %67 = extractvalue { i64, i1 } %63, 0, !nosanitize !30
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %69 = load ptr, ptr %68, align 8, !tbaa !33
  %70 = trunc i16 %56 to i8
  store i64 %67, ptr %61, align 8, !tbaa !31
  %71 = getelementptr inbounds nuw i8, ptr %69, i64 %62
  store i8 %70, ptr %71, align 1, !tbaa !28
  %72 = load i64, ptr %61, align 8, !tbaa !31
  %73 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %72, i64 1), !nosanitize !30
  %74 = extractvalue { i64, i1 } %73, 1, !nosanitize !30
  br i1 %74, label %75, label %76, !prof !32, !nosanitize !30

75:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

76:                                               ; preds = %66
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %78 = extractvalue { i64, i1 } %73, 0, !nosanitize !30
  %79 = load ptr, ptr %68, align 8, !tbaa !33
  %80 = load i16, ptr %77, align 8, !tbaa !25
  %81 = lshr i16 %80, 8
  %82 = trunc nuw i16 %81 to i8
  store i64 %78, ptr %61, align 8, !tbaa !31
  %83 = getelementptr inbounds nuw i8, ptr %79, i64 %72
  store i8 %82, ptr %83, align 1, !tbaa !28
  br label %98

84:                                               ; preds = %55
  %85 = icmp sgt i32 %58, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %84
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %88 = load i64, ptr %87, align 8, !tbaa !31
  %89 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %88, i64 1), !nosanitize !30
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !30
  br i1 %90, label %91, label %92, !prof !32, !nosanitize !30

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

92:                                               ; preds = %86
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !30
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %95 = load ptr, ptr %94, align 8, !tbaa !33
  %96 = trunc i16 %56 to i8
  store i64 %93, ptr %87, align 8, !tbaa !31
  %97 = getelementptr inbounds nuw i8, ptr %95, i64 %88
  store i8 %96, ptr %97, align 1, !tbaa !28
  br label %98

98:                                               ; preds = %92, %84, %76
  %99 = load i32, ptr %5, align 4, !tbaa !26
  %100 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %99, i32 -1)
  %101 = extractvalue { i32, i1 } %100, 1, !nosanitize !30
  br i1 %101, label %102, label %103, !prof !32, !nosanitize !30

102:                                              ; preds = %98
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

103:                                              ; preds = %98
  %104 = extractvalue { i32, i1 } %100, 0, !nosanitize !30
  %105 = and i32 %104, 7
  %106 = add nuw nsw i32 %105, 1
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %106, ptr %107, align 8, !tbaa !27
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %108, align 8, !tbaa !25
  store i32 0, ptr %5, align 4, !tbaa !26
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %111 = load i64, ptr %110, align 8, !tbaa !31
  %112 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 1), !nosanitize !30
  %113 = extractvalue { i64, i1 } %112, 1, !nosanitize !30
  br i1 %113, label %114, label %115, !prof !32, !nosanitize !30

114:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

115:                                              ; preds = %103
  %116 = extractvalue { i64, i1 } %112, 0, !nosanitize !30
  %117 = load ptr, ptr %109, align 8, !tbaa !33
  %118 = trunc i64 %2 to i8
  store i64 %116, ptr %110, align 8, !tbaa !31
  %119 = getelementptr inbounds nuw i8, ptr %117, i64 %111
  store i8 %118, ptr %119, align 1, !tbaa !28
  %120 = load i64, ptr %110, align 8, !tbaa !31
  %121 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %120, i64 1), !nosanitize !30
  %122 = extractvalue { i64, i1 } %121, 1, !nosanitize !30
  br i1 %122, label %123, label %124, !prof !32, !nosanitize !30

123:                                              ; preds = %115
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

124:                                              ; preds = %115
  %125 = extractvalue { i64, i1 } %121, 0, !nosanitize !30
  %126 = load ptr, ptr %109, align 8, !tbaa !33
  %127 = lshr i64 %2, 8
  %128 = trunc i64 %127 to i8
  store i64 %125, ptr %110, align 8, !tbaa !31
  %129 = getelementptr inbounds nuw i8, ptr %126, i64 %120
  store i8 %128, ptr %129, align 1, !tbaa !28
  %130 = load i64, ptr %110, align 8, !tbaa !31
  %131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %130, i64 1), !nosanitize !30
  %132 = extractvalue { i64, i1 } %131, 1, !nosanitize !30
  br i1 %132, label %133, label %134, !prof !32, !nosanitize !30

133:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

134:                                              ; preds = %124
  %135 = extractvalue { i64, i1 } %131, 0, !nosanitize !30
  %136 = load ptr, ptr %109, align 8, !tbaa !33
  %137 = trunc i64 %2 to i32
  %138 = xor i32 %137, 65535
  %139 = trunc i32 %138 to i8
  store i64 %135, ptr %110, align 8, !tbaa !31
  %140 = getelementptr inbounds nuw i8, ptr %136, i64 %130
  store i8 %139, ptr %140, align 1, !tbaa !28
  %141 = load i64, ptr %110, align 8, !tbaa !31
  %142 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %141, i64 1), !nosanitize !30
  %143 = extractvalue { i64, i1 } %142, 1, !nosanitize !30
  br i1 %143, label %144, label %145, !prof !32, !nosanitize !30

144:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

145:                                              ; preds = %134
  %146 = extractvalue { i64, i1 } %142, 0, !nosanitize !30
  %147 = load ptr, ptr %109, align 8, !tbaa !33
  %148 = lshr i32 %138, 8
  %149 = trunc i32 %148 to i8
  store i64 %146, ptr %110, align 8, !tbaa !31
  %150 = getelementptr inbounds nuw i8, ptr %147, i64 %141
  store i8 %149, ptr %150, align 1, !tbaa !28
  %151 = icmp eq i64 %2, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %145
  %153 = load ptr, ptr %109, align 8, !tbaa !33
  %154 = load i64, ptr %110, align 8, !tbaa !31
  %155 = getelementptr inbounds nuw i8, ptr %153, i64 %154
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %155, ptr align 1 %1, i64 %2, i1 false)
  br label %156

156:                                              ; preds = %152, %145
  %157 = load i64, ptr %110, align 8, !tbaa !31
  %158 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %157, i64 %2), !nosanitize !30
  %159 = extractvalue { i64, i1 } %158, 1, !nosanitize !30
  br i1 %159, label %160, label %161, !prof !32, !nosanitize !30

160:                                              ; preds = %156
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

161:                                              ; preds = %156
  %162 = extractvalue { i64, i1 } %158, 0, !nosanitize !30
  store i64 %162, ptr %110, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local void @_tr_flush_bits(ptr noundef captures(none) %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %3 = load i32, ptr %2, align 4, !tbaa !26
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load i64, ptr %7, align 8, !tbaa !31
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 1), !nosanitize !30
  %10 = extractvalue { i64, i1 } %9, 1, !nosanitize !30
  br i1 %10, label %11, label %12, !prof !32, !nosanitize !30

11:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

12:                                               ; preds = %5
  %13 = extractvalue { i64, i1 } %9, 0, !nosanitize !30
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = load i16, ptr %6, align 8, !tbaa !25
  %17 = trunc i16 %16 to i8
  store i64 %13, ptr %7, align 8, !tbaa !31
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 %8
  store i8 %17, ptr %18, align 1, !tbaa !28
  %19 = load i64, ptr %7, align 8, !tbaa !31
  %20 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 1), !nosanitize !30
  %21 = extractvalue { i64, i1 } %20, 1, !nosanitize !30
  br i1 %21, label %22, label %23, !prof !32, !nosanitize !30

22:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

23:                                               ; preds = %12
  %24 = extractvalue { i64, i1 } %20, 0, !nosanitize !30
  %25 = load ptr, ptr %14, align 8, !tbaa !33
  %26 = load i16, ptr %6, align 8, !tbaa !25
  %27 = lshr i16 %26, 8
  %28 = trunc nuw i16 %27 to i8
  store i64 %24, ptr %7, align 8, !tbaa !31
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 %19
  store i8 %28, ptr %29, align 1, !tbaa !28
  store i16 0, ptr %6, align 8, !tbaa !25
  br label %54

30:                                               ; preds = %1
  %31 = icmp sgt i32 %3, 7
  br i1 %31, label %32, label %56

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %34 = load i64, ptr %33, align 8, !tbaa !31
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %34, i64 1), !nosanitize !30
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !30
  br i1 %36, label %37, label %38, !prof !32, !nosanitize !30

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !30
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %41 = load ptr, ptr %40, align 8, !tbaa !33
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %43 = load i16, ptr %42, align 8, !tbaa !25
  %44 = trunc i16 %43 to i8
  store i64 %39, ptr %33, align 8, !tbaa !31
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 %34
  store i8 %44, ptr %45, align 1, !tbaa !28
  %46 = load i16, ptr %42, align 8, !tbaa !25
  %47 = lshr i16 %46, 8
  store i16 %47, ptr %42, align 8, !tbaa !25
  %48 = load i32, ptr %2, align 4, !tbaa !26
  %49 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %48, i32 -8)
  %50 = extractvalue { i32, i1 } %49, 1, !nosanitize !30
  br i1 %50, label %51, label %52, !prof !32, !nosanitize !30

51:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

52:                                               ; preds = %38
  %53 = extractvalue { i32, i1 } %49, 0, !nosanitize !30
  br label %54

54:                                               ; preds = %52, %23
  %55 = phi i32 [ %53, %52 ], [ 0, %23 ]
  store i32 %55, ptr %2, align 4, !tbaa !26
  br label %56

56:                                               ; preds = %54, %30
  ret void
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local void @_tr_align(ptr noundef captures(none) %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %3 = load i32, ptr %2, align 4, !tbaa !26
  %4 = icmp sgt i32 %3, 13
  %5 = shl i32 2, %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %7 = load i16, ptr %6, align 8, !tbaa !25
  %8 = trunc i32 %5 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %6, align 8, !tbaa !25
  br i1 %4, label %11, label %43

10:                                               ; preds = %67, %27
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load i64, ptr %12, align 8, !tbaa !31
  %14 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 1), !nosanitize !30
  %15 = extractvalue { i64, i1 } %14, 1, !nosanitize !30
  br i1 %15, label %16, label %17, !prof !32, !nosanitize !30

16:                                               ; preds = %11
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

17:                                               ; preds = %11
  %18 = extractvalue { i64, i1 } %14, 0, !nosanitize !30
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load ptr, ptr %19, align 8, !tbaa !33
  %21 = trunc i16 %9 to i8
  store i64 %18, ptr %12, align 8, !tbaa !31
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 %13
  store i8 %21, ptr %22, align 1, !tbaa !28
  %23 = load i64, ptr %12, align 8, !tbaa !31
  %24 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %23, i64 1), !nosanitize !30
  %25 = extractvalue { i64, i1 } %24, 1, !nosanitize !30
  br i1 %25, label %26, label %27, !prof !32, !nosanitize !30

26:                                               ; preds = %37, %17
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

27:                                               ; preds = %17
  %28 = extractvalue { i64, i1 } %24, 0, !nosanitize !30
  %29 = load ptr, ptr %19, align 8, !tbaa !33
  %30 = load i16, ptr %6, align 8, !tbaa !25
  %31 = lshr i16 %30, 8
  %32 = trunc nuw i16 %31 to i8
  store i64 %28, ptr %12, align 8, !tbaa !31
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 %23
  store i8 %32, ptr %33, align 1, !tbaa !28
  %34 = load i32, ptr %2, align 4, !tbaa !26
  %35 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %34), !nosanitize !30
  %36 = extractvalue { i32, i1 } %35, 1, !nosanitize !30
  br i1 %36, label %10, label %37, !prof !32, !nosanitize !30

37:                                               ; preds = %27
  %38 = extractvalue { i32, i1 } %35, 0, !nosanitize !30
  %39 = lshr i32 2, %38
  %40 = trunc nuw nsw i32 %39 to i16
  store i16 %40, ptr %6, align 8, !tbaa !25
  %41 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 -13), !nosanitize !30
  %42 = extractvalue { i32, i1 } %41, 1, !nosanitize !30
  br i1 %42, label %26, label %46, !prof !32, !nosanitize !30

43:                                               ; preds = %1
  %44 = add nsw i32 %3, 3
  %45 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %44, 0
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi i16 [ %40, %37 ], [ %9, %43 ]
  %48 = phi { i32, i1 } [ %41, %37 ], [ %45, %43 ]
  %49 = extractvalue { i32, i1 } %48, 0
  store i32 %49, ptr %2, align 4, !tbaa !26
  %50 = icmp sgt i32 %49, 9
  br i1 %50, label %51, label %82

51:                                               ; preds = %46
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !31
  %54 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %53, i64 1), !nosanitize !30
  %55 = extractvalue { i64, i1 } %54, 1, !nosanitize !30
  br i1 %55, label %56, label %57, !prof !32, !nosanitize !30

56:                                               ; preds = %51
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

57:                                               ; preds = %51
  %58 = extractvalue { i64, i1 } %54, 0, !nosanitize !30
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %60 = load ptr, ptr %59, align 8, !tbaa !33
  %61 = trunc i16 %47 to i8
  store i64 %58, ptr %52, align 8, !tbaa !31
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 %53
  store i8 %61, ptr %62, align 1, !tbaa !28
  %63 = load i64, ptr %52, align 8, !tbaa !31
  %64 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %63, i64 1), !nosanitize !30
  %65 = extractvalue { i64, i1 } %64, 1, !nosanitize !30
  br i1 %65, label %66, label %67, !prof !32, !nosanitize !30

66:                                               ; preds = %77, %57
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

67:                                               ; preds = %57
  %68 = extractvalue { i64, i1 } %64, 0, !nosanitize !30
  %69 = load ptr, ptr %59, align 8, !tbaa !33
  %70 = load i16, ptr %6, align 8, !tbaa !25
  %71 = lshr i16 %70, 8
  %72 = trunc nuw i16 %71 to i8
  store i64 %68, ptr %52, align 8, !tbaa !31
  %73 = getelementptr inbounds nuw i8, ptr %69, i64 %63
  store i8 %72, ptr %73, align 1, !tbaa !28
  %74 = load i32, ptr %2, align 4, !tbaa !26
  %75 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %74), !nosanitize !30
  %76 = extractvalue { i32, i1 } %75, 1, !nosanitize !30
  br i1 %76, label %10, label %77, !prof !32, !nosanitize !30

77:                                               ; preds = %67
  store i16 0, ptr %6, align 8, !tbaa !25
  %78 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %74, i32 -9), !nosanitize !30
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !30
  br i1 %79, label %66, label %80, !prof !32, !nosanitize !30

80:                                               ; preds = %77
  %81 = extractvalue { i32, i1 } %78, 0, !nosanitize !30
  br label %85

82:                                               ; preds = %46
  %83 = add nsw i32 %49, 7
  %84 = trunc i16 %47 to i8
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi i8 [ %84, %82 ], [ 0, %80 ]
  %87 = phi i32 [ %83, %82 ], [ %81, %80 ]
  store i32 %87, ptr %2, align 4, !tbaa !26
  %88 = icmp eq i32 %87, 16
  br i1 %88, label %89, label %111

89:                                               ; preds = %85
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %91 = load i64, ptr %90, align 8, !tbaa !31
  %92 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %91, i64 1), !nosanitize !30
  %93 = extractvalue { i64, i1 } %92, 1, !nosanitize !30
  br i1 %93, label %94, label %95, !prof !32, !nosanitize !30

94:                                               ; preds = %89
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

95:                                               ; preds = %89
  %96 = extractvalue { i64, i1 } %92, 0, !nosanitize !30
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %98 = load ptr, ptr %97, align 8, !tbaa !33
  store i64 %96, ptr %90, align 8, !tbaa !31
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 %91
  store i8 %86, ptr %99, align 1, !tbaa !28
  %100 = load i64, ptr %90, align 8, !tbaa !31
  %101 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %100, i64 1), !nosanitize !30
  %102 = extractvalue { i64, i1 } %101, 1, !nosanitize !30
  br i1 %102, label %103, label %104, !prof !32, !nosanitize !30

103:                                              ; preds = %95
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

104:                                              ; preds = %95
  %105 = extractvalue { i64, i1 } %101, 0, !nosanitize !30
  %106 = load ptr, ptr %97, align 8, !tbaa !33
  %107 = load i16, ptr %6, align 8, !tbaa !25
  %108 = lshr i16 %107, 8
  %109 = trunc nuw i16 %108 to i8
  store i64 %105, ptr %90, align 8, !tbaa !31
  %110 = getelementptr inbounds nuw i8, ptr %106, i64 %100
  store i8 %109, ptr %110, align 1, !tbaa !28
  store i16 0, ptr %6, align 8, !tbaa !25
  br label %132

111:                                              ; preds = %85
  %112 = icmp sgt i32 %87, 7
  br i1 %112, label %113, label %134

113:                                              ; preds = %111
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %115 = load i64, ptr %114, align 8, !tbaa !31
  %116 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %115, i64 1), !nosanitize !30
  %117 = extractvalue { i64, i1 } %116, 1, !nosanitize !30
  br i1 %117, label %118, label %119, !prof !32, !nosanitize !30

118:                                              ; preds = %113
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

119:                                              ; preds = %113
  %120 = extractvalue { i64, i1 } %116, 0, !nosanitize !30
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %122 = load ptr, ptr %121, align 8, !tbaa !33
  store i64 %120, ptr %114, align 8, !tbaa !31
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 %115
  store i8 %86, ptr %123, align 1, !tbaa !28
  %124 = load i16, ptr %6, align 8, !tbaa !25
  %125 = lshr i16 %124, 8
  store i16 %125, ptr %6, align 8, !tbaa !25
  %126 = load i32, ptr %2, align 4, !tbaa !26
  %127 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %126, i32 -8)
  %128 = extractvalue { i32, i1 } %127, 1, !nosanitize !30
  br i1 %128, label %129, label %130, !prof !32, !nosanitize !30

129:                                              ; preds = %119
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

130:                                              ; preds = %119
  %131 = extractvalue { i32, i1 } %127, 0, !nosanitize !30
  br label %132

132:                                              ; preds = %130, %104
  %133 = phi i32 [ %131, %130 ], [ 0, %104 ]
  store i32 %133, ptr %2, align 4, !tbaa !26
  br label %134

134:                                              ; preds = %132, %111
  ret void
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @_tr_flush_block(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [16 x i16], align 16
  %6 = alloca [16 x i16], align 16
  %7 = alloca [16 x i16], align 16
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %2423

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %14 = load i32, ptr %13, align 8, !tbaa !36
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %156

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %18 = load i16, ptr %17, align 4, !tbaa !28
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %.loopexit357

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %22 = load i16, ptr %21, align 4, !tbaa !28
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %.loopexit357

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %26 = load i16, ptr %25, align 4, !tbaa !28
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %.loopexit357

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %30 = load i16, ptr %29, align 4, !tbaa !28
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %.loopexit357

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 228
  %34 = load i16, ptr %33, align 4, !tbaa !28
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %.loopexit357

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %38 = load i16, ptr %37, align 4, !tbaa !28
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %.loopexit357

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %42 = load i16, ptr %41, align 4, !tbaa !28
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %.loopexit357

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %46 = load i16, ptr %45, align 4, !tbaa !28
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %.loopexit357

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %50 = load i16, ptr %49, align 4, !tbaa !28
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %.loopexit357

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %54 = load i16, ptr %53, align 4, !tbaa !28
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %.loopexit357

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %58 = load i16, ptr %57, align 4, !tbaa !28
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %.loopexit357

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %62 = load i16, ptr %61, align 4, !tbaa !28
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %.loopexit357

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %66 = load i16, ptr %65, align 4, !tbaa !28
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %.loopexit357

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 292
  %70 = load i16, ptr %69, align 4, !tbaa !28
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %.loopexit357

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %74 = load i16, ptr %73, align 4, !tbaa !28
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %.loopexit357

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %78 = load i16, ptr %77, align 4, !tbaa !28
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %.loopexit357

80:                                               ; preds = %76
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %82 = load i16, ptr %81, align 4, !tbaa !28
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %.loopexit357

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 308
  %86 = load i16, ptr %85, align 4, !tbaa !28
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %.loopexit357

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %90 = load i16, ptr %89, align 4, !tbaa !28
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %.loopexit357

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 324
  %94 = load i16, ptr %93, align 4, !tbaa !28
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %.loopexit357

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %98 = load i16, ptr %97, align 4, !tbaa !28
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %.loopexit357

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 332
  %102 = load i16, ptr %101, align 4, !tbaa !28
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %.loopexit357

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %106 = load i16, ptr %105, align 4, !tbaa !28
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %.loopexit357

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %110 = load i16, ptr %109, align 4, !tbaa !28
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %.loopexit357

112:                                              ; preds = %108
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 252
  %114 = load i16, ptr %113, align 4, !tbaa !28
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %.loopexit357

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %118 = load i16, ptr %117, align 4, !tbaa !28
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %.preheader356, label %.loopexit357

120:                                              ; preds = %.preheader356
  %121 = getelementptr inbounds nuw i8, ptr %152, i64 4
  %122 = load i16, ptr %121, align 4, !tbaa !28
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %.loopexit357

124:                                              ; preds = %120
  %125 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %126 = load i16, ptr %125, align 4, !tbaa !28
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %.loopexit357

128:                                              ; preds = %124
  %129 = getelementptr inbounds nuw i8, ptr %152, i64 12
  %130 = load i16, ptr %129, align 4, !tbaa !28
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %.preheader356.1, label %.loopexit357

.preheader356.1:                                  ; preds = %128
  %132 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %151
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %134 = load i16, ptr %133, align 4, !tbaa !28
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %.loopexit357

136:                                              ; preds = %.preheader356.1
  %137 = getelementptr inbounds nuw i8, ptr %132, i64 20
  %138 = load i16, ptr %137, align 4, !tbaa !28
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %.loopexit357

140:                                              ; preds = %136
  %141 = getelementptr inbounds nuw i8, ptr %132, i64 24
  %142 = load i16, ptr %141, align 4, !tbaa !28
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %.loopexit357

144:                                              ; preds = %140
  %145 = getelementptr inbounds nuw i8, ptr %132, i64 28
  %146 = load i16, ptr %145, align 4, !tbaa !28
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %.loopexit357

148:                                              ; preds = %144
  %149 = add nuw nsw i64 %151, 8
  %150 = icmp eq i64 %149, 256
  br i1 %150, label %.loopexit357, label %.preheader356, !llvm.loop !39

.preheader356:                                    ; preds = %116, %148
  %151 = phi i64 [ %149, %148 ], [ 32, %116 ]
  %152 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %151
  %153 = load i16, ptr %152, align 4, !tbaa !28
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %120, label %.loopexit357

.loopexit357:                                     ; preds = %.preheader356, %128, %124, %120, %.preheader356.1, %136, %140, %144, %148, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16
  %155 = phi i32 [ 1, %116 ], [ 1, %112 ], [ 1, %108 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ 0, %24 ], [ 0, %20 ], [ 0, %16 ], [ 0, %148 ], [ 1, %128 ], [ 1, %124 ], [ 1, %120 ], [ 1, %.preheader356 ], [ 1, %.preheader356.1 ], [ 1, %136 ], [ 1, %140 ], [ 1, %144 ]
  store i32 %155, ptr %13, align 8, !tbaa !36
  br label %156

156:                                              ; preds = %.loopexit357, %11
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %158 = load ptr, ptr %157, align 8, !tbaa !41
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 2920
  %160 = load ptr, ptr %159, align 8, !tbaa !42
  %161 = load ptr, ptr %160, align 8, !tbaa !43
  %162 = getelementptr inbounds nuw i8, ptr %160, i64 20
  %163 = load i32, ptr %162, align 4, !tbaa !46
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 5300
  store i32 0, ptr %164, align 4, !tbaa !47
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 5304
  store i32 573, ptr %165, align 8, !tbaa !48
  %166 = icmp sgt i32 %163, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %156
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %170 = zext nneg i32 %163 to i64
  br label %182

171:                                              ; preds = %200
  %172 = load i32, ptr %164, align 4, !tbaa !47
  %173 = icmp slt i32 %172, 2
  br i1 %173, label %174, label %.loopexit354

174:                                              ; preds = %171, %156
  %175 = phi i32 [ %201, %171 ], [ -1, %156 ]
  %176 = phi i32 [ %172, %171 ], [ 0, %156 ]
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %180 = icmp eq ptr %161, null
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %204

182:                                              ; preds = %200, %167
  %183 = phi i64 [ 0, %167 ], [ %202, %200 ]
  %184 = phi i32 [ -1, %167 ], [ %201, %200 ]
  %185 = getelementptr inbounds nuw [4 x i8], ptr %158, i64 %183
  %186 = load i16, ptr %185, align 2, !tbaa !28
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %198, label %188

188:                                              ; preds = %182
  %189 = load i32, ptr %164, align 4, !tbaa !47
  %190 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %189, i32 1), !nosanitize !30
  %191 = extractvalue { i32, i1 } %190, 1, !nosanitize !30
  br i1 %191, label %.loopexit350, label %192, !prof !32, !nosanitize !30

.loopexit350:                                     ; preds = %188, %404
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

192:                                              ; preds = %188
  %193 = extractvalue { i32, i1 } %190, 0, !nosanitize !30
  store i32 %193, ptr %164, align 4, !tbaa !47
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [4 x i8], ptr %168, i64 %194
  %196 = trunc nuw nsw i64 %183 to i32
  store i32 %196, ptr %195, align 4, !tbaa !49
  %197 = getelementptr inbounds nuw i8, ptr %169, i64 %183
  store i8 0, ptr %197, align 1, !tbaa !28
  br label %200

198:                                              ; preds = %182
  %199 = getelementptr inbounds nuw i8, ptr %185, i64 2
  store i16 0, ptr %199, align 2, !tbaa !28
  br label %200

200:                                              ; preds = %198, %192
  %201 = phi i32 [ %196, %192 ], [ %184, %198 ]
  %202 = add nuw nsw i64 %183, 1
  %203 = icmp eq i64 %202, %170
  br i1 %203, label %171, label %182, !llvm.loop !50

204:                                              ; preds = %232, %174
  %205 = phi i32 [ %176, %174 ], [ %233, %232 ]
  %206 = phi i32 [ %175, %174 ], [ %209, %232 ]
  %207 = icmp slt i32 %206, 2
  %208 = add i32 %206, 1
  %209 = select i1 %207, i32 %208, i32 %206
  %210 = add nsw i32 %205, 1
  %211 = select i1 %207, i32 %208, i32 0
  store i32 %210, ptr %164, align 4, !tbaa !47
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds [4 x i8], ptr %177, i64 %212
  store i32 %211, ptr %213, align 4, !tbaa !49
  %214 = sext i32 %211 to i64
  %215 = getelementptr inbounds [4 x i8], ptr %158, i64 %214
  store i16 1, ptr %215, align 2, !tbaa !28
  %216 = getelementptr inbounds i8, ptr %178, i64 %214
  store i8 0, ptr %216, align 1, !tbaa !28
  %217 = load i64, ptr %179, align 8, !tbaa !51
  %218 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %217, i64 1), !nosanitize !30
  %219 = extractvalue { i64, i1 } %218, 1, !nosanitize !30
  br i1 %219, label %220, label %221, !prof !32, !nosanitize !30

220:                                              ; preds = %204
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

221:                                              ; preds = %204
  %222 = extractvalue { i64, i1 } %218, 0, !nosanitize !30
  store i64 %222, ptr %179, align 8, !tbaa !51
  br i1 %180, label %232, label %223

223:                                              ; preds = %221
  %.split = getelementptr inbounds [4 x i8], ptr %161, i64 %214
  %224 = getelementptr inbounds nuw i8, ptr %.split, i64 2
  %225 = load i16, ptr %224, align 2, !tbaa !28
  %226 = zext i16 %225 to i64
  %227 = load i64, ptr %181, align 8, !tbaa !52
  %228 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %227, i64 %226), !nosanitize !30
  %229 = extractvalue { i64, i1 } %228, 1, !nosanitize !30
  br i1 %229, label %.loopexit349, label %230, !prof !32, !nosanitize !30

.loopexit349:                                     ; preds = %223, %397, %390, %317, %493
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

230:                                              ; preds = %223
  %231 = extractvalue { i64, i1 } %228, 0, !nosanitize !30
  store i64 %231, ptr %181, align 8, !tbaa !52
  br label %232

232:                                              ; preds = %230, %221
  %233 = load i32, ptr %164, align 4, !tbaa !47
  %234 = icmp slt i32 %233, 2
  br i1 %234, label %204, label %.loopexit354, !llvm.loop !53

.loopexit354:                                     ; preds = %232, %171
  %235 = phi i32 [ %201, %171 ], [ %209, %232 ]
  %236 = phi i32 [ %172, %171 ], [ %233, %232 ]
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 %235, ptr %237, align 8, !tbaa !54
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %240 = lshr i32 %236, 1
  %241 = zext nneg i32 %240 to i64
  br label %246

242:                                              ; preds = %.loopexit351
  %243 = load i32, ptr %164, align 4, !tbaa !47
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %245 = sext i32 %163 to i64
  br label %317

246:                                              ; preds = %.loopexit351, %.loopexit354
  %247 = phi i64 [ %241, %.loopexit354 ], [ %315, %.loopexit351 ]
  %248 = getelementptr inbounds nuw [4 x i8], ptr %238, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !49
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, ptr %239, i64 %250
  %252 = load i32, ptr %164, align 4, !tbaa !47
  %253 = trunc i64 %247 to i32
  %254 = shl i32 %253, 1
  %255 = icmp sgt i32 %254, %252
  br i1 %255, label %.loopexit351, label %256

256:                                              ; preds = %246
  %257 = getelementptr inbounds [4 x i8], ptr %158, i64 %250
  br label %258

258:                                              ; preds = %306, %256
  %259 = phi i32 [ %252, %256 ], [ %310, %306 ]
  %260 = phi i32 [ %254, %256 ], [ %309, %306 ]
  %261 = phi i32 [ %253, %256 ], [ %291, %306 ]
  %262 = icmp slt i32 %260, %259
  br i1 %262, label %265, label %263

263:                                              ; preds = %258
  %264 = sext i32 %260 to i64
  br label %289

265:                                              ; preds = %258
  %266 = or disjoint i32 %260, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [4 x i8], ptr %238, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !49
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [4 x i8], ptr %158, i64 %270
  %272 = load i16, ptr %271, align 2, !tbaa !28
  %273 = sext i32 %260 to i64
  %274 = getelementptr inbounds [4 x i8], ptr %238, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !49
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [4 x i8], ptr %158, i64 %276
  %278 = load i16, ptr %277, align 2, !tbaa !28
  %279 = icmp ult i16 %272, %278
  br i1 %279, label %288, label %280

280:                                              ; preds = %265
  %281 = icmp eq i16 %272, %278
  br i1 %281, label %282, label %289

282:                                              ; preds = %280
  %283 = getelementptr inbounds i8, ptr %239, i64 %270
  %284 = load i8, ptr %283, align 1, !tbaa !28
  %285 = getelementptr inbounds i8, ptr %239, i64 %276
  %286 = load i8, ptr %285, align 1, !tbaa !28
  %287 = icmp ugt i8 %284, %286
  br i1 %287, label %289, label %288

288:                                              ; preds = %282, %265
  br label %289

289:                                              ; preds = %288, %282, %280, %263
  %290 = phi i64 [ %264, %263 ], [ %267, %288 ], [ %273, %282 ], [ %273, %280 ]
  %291 = phi i32 [ %260, %263 ], [ %266, %288 ], [ %260, %282 ], [ %260, %280 ]
  %292 = load i16, ptr %257, align 2, !tbaa !28
  %293 = getelementptr inbounds [4 x i8], ptr %238, i64 %290
  %294 = load i32, ptr %293, align 4, !tbaa !49
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [4 x i8], ptr %158, i64 %295
  %297 = load i16, ptr %296, align 2, !tbaa !28
  %298 = icmp ult i16 %292, %297
  br i1 %298, label %.loopexit351, label %299

299:                                              ; preds = %289
  %300 = icmp eq i16 %292, %297
  br i1 %300, label %301, label %306

301:                                              ; preds = %299
  %302 = load i8, ptr %251, align 1, !tbaa !28
  %303 = getelementptr inbounds i8, ptr %239, i64 %295
  %304 = load i8, ptr %303, align 1, !tbaa !28
  %305 = icmp ugt i8 %302, %304
  br i1 %305, label %306, label %.loopexit351

306:                                              ; preds = %301, %299
  %307 = sext i32 %261 to i64
  %308 = getelementptr inbounds [4 x i8], ptr %238, i64 %307
  store i32 %294, ptr %308, align 4, !tbaa !49
  %309 = shl i32 %291, 1
  %310 = load i32, ptr %164, align 4, !tbaa !47
  %311 = icmp sgt i32 %309, %310
  br i1 %311, label %.loopexit351, label %258, !llvm.loop !55

.loopexit351:                                     ; preds = %306, %301, %289, %246
  %312 = phi i32 [ %253, %246 ], [ %291, %306 ], [ %261, %301 ], [ %261, %289 ]
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [4 x i8], ptr %238, i64 %313
  store i32 %249, ptr %314, align 4, !tbaa !49
  %315 = add nsw i64 %247, -1
  %316 = icmp sgt i64 %247, 1
  br i1 %316, label %246, label %242, !llvm.loop !56

317:                                              ; preds = %488, %242
  %318 = phi i32 [ %243, %242 ], [ %491, %488 ]
  %319 = phi i64 [ %245, %242 ], [ %429, %488 ]
  %320 = load i32, ptr %244, align 4, !tbaa !49
  %321 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %318, i32 -1)
  %322 = extractvalue { i32, i1 } %321, 1, !nosanitize !30
  br i1 %322, label %.loopexit349, label %323, !prof !32, !nosanitize !30

323:                                              ; preds = %317
  %324 = extractvalue { i32, i1 } %321, 0, !nosanitize !30
  store i32 %324, ptr %164, align 4, !tbaa !47
  %325 = sext i32 %318 to i64
  %326 = getelementptr inbounds [4 x i8], ptr %238, i64 %325
  %327 = load i32, ptr %326, align 4, !tbaa !49
  store i32 %327, ptr %244, align 4, !tbaa !49
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, ptr %239, i64 %328
  %330 = icmp slt i32 %324, 2
  br i1 %330, label %390, label %331

331:                                              ; preds = %323
  %332 = getelementptr inbounds [4 x i8], ptr %158, i64 %328
  br label %333

333:                                              ; preds = %381, %331
  %334 = phi i32 [ %324, %331 ], [ %385, %381 ]
  %335 = phi i32 [ 2, %331 ], [ %384, %381 ]
  %336 = phi i32 [ 1, %331 ], [ %366, %381 ]
  %337 = icmp slt i32 %335, %334
  br i1 %337, label %340, label %338

338:                                              ; preds = %333
  %339 = sext i32 %335 to i64
  br label %364

340:                                              ; preds = %333
  %341 = or disjoint i32 %335, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [4 x i8], ptr %238, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !49
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [4 x i8], ptr %158, i64 %345
  %347 = load i16, ptr %346, align 2, !tbaa !28
  %348 = sext i32 %335 to i64
  %349 = getelementptr inbounds [4 x i8], ptr %238, i64 %348
  %350 = load i32, ptr %349, align 4, !tbaa !49
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [4 x i8], ptr %158, i64 %351
  %353 = load i16, ptr %352, align 2, !tbaa !28
  %354 = icmp ult i16 %347, %353
  br i1 %354, label %363, label %355

355:                                              ; preds = %340
  %356 = icmp eq i16 %347, %353
  br i1 %356, label %357, label %364

357:                                              ; preds = %355
  %358 = getelementptr inbounds i8, ptr %239, i64 %345
  %359 = load i8, ptr %358, align 1, !tbaa !28
  %360 = getelementptr inbounds i8, ptr %239, i64 %351
  %361 = load i8, ptr %360, align 1, !tbaa !28
  %362 = icmp ugt i8 %359, %361
  br i1 %362, label %364, label %363

363:                                              ; preds = %357, %340
  br label %364

364:                                              ; preds = %363, %357, %355, %338
  %365 = phi i64 [ %339, %338 ], [ %342, %363 ], [ %348, %357 ], [ %348, %355 ]
  %366 = phi i32 [ %335, %338 ], [ %341, %363 ], [ %335, %357 ], [ %335, %355 ]
  %367 = load i16, ptr %332, align 2, !tbaa !28
  %368 = getelementptr inbounds [4 x i8], ptr %238, i64 %365
  %369 = load i32, ptr %368, align 4, !tbaa !49
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [4 x i8], ptr %158, i64 %370
  %372 = load i16, ptr %371, align 2, !tbaa !28
  %373 = icmp ult i16 %367, %372
  br i1 %373, label %387, label %374

374:                                              ; preds = %364
  %375 = icmp eq i16 %367, %372
  br i1 %375, label %376, label %381

376:                                              ; preds = %374
  %377 = load i8, ptr %329, align 1, !tbaa !28
  %378 = getelementptr inbounds i8, ptr %239, i64 %370
  %379 = load i8, ptr %378, align 1, !tbaa !28
  %380 = icmp ugt i8 %377, %379
  br i1 %380, label %381, label %387

381:                                              ; preds = %376, %374
  %382 = sext i32 %336 to i64
  %383 = getelementptr inbounds [4 x i8], ptr %238, i64 %382
  store i32 %369, ptr %383, align 4, !tbaa !49
  %384 = shl i32 %366, 1
  %385 = load i32, ptr %164, align 4, !tbaa !47
  %386 = icmp sgt i32 %384, %385
  br i1 %386, label %387, label %333, !llvm.loop !55

387:                                              ; preds = %381, %376, %364
  %388 = phi i32 [ %336, %364 ], [ %336, %376 ], [ %366, %381 ]
  %389 = sext i32 %388 to i64
  br label %390

390:                                              ; preds = %387, %323
  %391 = phi i64 [ 1, %323 ], [ %389, %387 ]
  %392 = getelementptr inbounds [4 x i8], ptr %238, i64 %391
  store i32 %327, ptr %392, align 4, !tbaa !49
  %393 = load i32, ptr %244, align 4, !tbaa !49
  %394 = load i32, ptr %165, align 8, !tbaa !48
  %395 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %394, i32 -1)
  %396 = extractvalue { i32, i1 } %395, 1, !nosanitize !30
  br i1 %396, label %.loopexit349, label %397, !prof !32, !nosanitize !30

397:                                              ; preds = %390
  %398 = extractvalue { i32, i1 } %395, 0, !nosanitize !30
  store i32 %398, ptr %165, align 8, !tbaa !48
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [4 x i8], ptr %238, i64 %399
  store i32 %320, ptr %400, align 4, !tbaa !49
  %401 = load i32, ptr %165, align 8, !tbaa !48
  %402 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %401, i32 -1)
  %403 = extractvalue { i32, i1 } %402, 1, !nosanitize !30
  br i1 %403, label %.loopexit349, label %404, !prof !32, !nosanitize !30

404:                                              ; preds = %397
  %405 = extractvalue { i32, i1 } %402, 0, !nosanitize !30
  store i32 %405, ptr %165, align 8, !tbaa !48
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [4 x i8], ptr %238, i64 %406
  store i32 %393, ptr %407, align 4, !tbaa !49
  %408 = sext i32 %320 to i64
  %409 = getelementptr inbounds [4 x i8], ptr %158, i64 %408
  %410 = load i16, ptr %409, align 2, !tbaa !28
  %411 = sext i32 %393 to i64
  %412 = getelementptr inbounds [4 x i8], ptr %158, i64 %411
  %413 = load i16, ptr %412, align 2, !tbaa !28
  %414 = add i16 %413, %410
  %415 = getelementptr inbounds [4 x i8], ptr %158, i64 %319
  store i16 %414, ptr %415, align 2, !tbaa !28
  %416 = getelementptr inbounds i8, ptr %239, i64 %408
  %417 = load i8, ptr %416, align 1, !tbaa !28
  %418 = getelementptr inbounds i8, ptr %239, i64 %411
  %419 = load i8, ptr %418, align 1, !tbaa !28
  %420 = tail call i8 @llvm.umax.i8(i8 %417, i8 %419)
  %421 = add i8 %420, 1
  %422 = getelementptr inbounds i8, ptr %239, i64 %319
  store i8 %421, ptr %422, align 1, !tbaa !28
  %423 = trunc nsw i64 %319 to i32
  %424 = trunc i64 %319 to i16
  %425 = getelementptr inbounds nuw i8, ptr %412, i64 2
  store i16 %424, ptr %425, align 2, !tbaa !28
  %426 = getelementptr inbounds nuw i8, ptr %409, i64 2
  store i16 %424, ptr %426, align 2, !tbaa !28
  %427 = icmp eq i64 %319, 2147483647
  br i1 %427, label %.loopexit350, label %428, !prof !32, !nosanitize !30

428:                                              ; preds = %404
  %429 = add nsw i64 %319, 1
  store i32 %423, ptr %244, align 4, !tbaa !49
  %430 = load i32, ptr %164, align 4, !tbaa !47
  %431 = icmp slt i32 %430, 2
  br i1 %431, label %488, label %.preheader348

.preheader348:                                    ; preds = %428, %479
  %432 = phi i32 [ %483, %479 ], [ %430, %428 ]
  %433 = phi i32 [ %482, %479 ], [ 2, %428 ]
  %434 = phi i32 [ %464, %479 ], [ 1, %428 ]
  %435 = icmp slt i32 %433, %432
  br i1 %435, label %438, label %436

436:                                              ; preds = %.preheader348
  %437 = sext i32 %433 to i64
  br label %462

438:                                              ; preds = %.preheader348
  %439 = or disjoint i32 %433, 1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [4 x i8], ptr %238, i64 %440
  %442 = load i32, ptr %441, align 4, !tbaa !49
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [4 x i8], ptr %158, i64 %443
  %445 = load i16, ptr %444, align 2, !tbaa !28
  %446 = sext i32 %433 to i64
  %447 = getelementptr inbounds [4 x i8], ptr %238, i64 %446
  %448 = load i32, ptr %447, align 4, !tbaa !49
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [4 x i8], ptr %158, i64 %449
  %451 = load i16, ptr %450, align 2, !tbaa !28
  %452 = icmp ult i16 %445, %451
  br i1 %452, label %461, label %453

453:                                              ; preds = %438
  %454 = icmp eq i16 %445, %451
  br i1 %454, label %455, label %462

455:                                              ; preds = %453
  %456 = getelementptr inbounds i8, ptr %239, i64 %443
  %457 = load i8, ptr %456, align 1, !tbaa !28
  %458 = getelementptr inbounds i8, ptr %239, i64 %449
  %459 = load i8, ptr %458, align 1, !tbaa !28
  %460 = icmp ugt i8 %457, %459
  br i1 %460, label %462, label %461

461:                                              ; preds = %455, %438
  br label %462

462:                                              ; preds = %461, %455, %453, %436
  %463 = phi i64 [ %437, %436 ], [ %440, %461 ], [ %446, %455 ], [ %446, %453 ]
  %464 = phi i32 [ %433, %436 ], [ %439, %461 ], [ %433, %455 ], [ %433, %453 ]
  %465 = load i16, ptr %415, align 2, !tbaa !28
  %466 = getelementptr inbounds [4 x i8], ptr %238, i64 %463
  %467 = load i32, ptr %466, align 4, !tbaa !49
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [4 x i8], ptr %158, i64 %468
  %470 = load i16, ptr %469, align 2, !tbaa !28
  %471 = icmp ult i16 %465, %470
  br i1 %471, label %485, label %472

472:                                              ; preds = %462
  %473 = icmp eq i16 %465, %470
  br i1 %473, label %474, label %479

474:                                              ; preds = %472
  %475 = load i8, ptr %422, align 1, !tbaa !28
  %476 = getelementptr inbounds i8, ptr %239, i64 %468
  %477 = load i8, ptr %476, align 1, !tbaa !28
  %478 = icmp ugt i8 %475, %477
  br i1 %478, label %479, label %485

479:                                              ; preds = %474, %472
  %480 = sext i32 %434 to i64
  %481 = getelementptr inbounds [4 x i8], ptr %238, i64 %480
  store i32 %467, ptr %481, align 4, !tbaa !49
  %482 = shl i32 %464, 1
  %483 = load i32, ptr %164, align 4, !tbaa !47
  %484 = icmp sgt i32 %482, %483
  br i1 %484, label %485, label %.preheader348, !llvm.loop !55

485:                                              ; preds = %479, %474, %462
  %486 = phi i32 [ %434, %462 ], [ %434, %474 ], [ %464, %479 ]
  %487 = sext i32 %486 to i64
  br label %488

488:                                              ; preds = %485, %428
  %489 = phi i64 [ 1, %428 ], [ %487, %485 ]
  %490 = getelementptr inbounds [4 x i8], ptr %238, i64 %489
  store i32 %423, ptr %490, align 4, !tbaa !49
  %491 = load i32, ptr %164, align 4, !tbaa !47
  %492 = icmp sgt i32 %491, 1
  br i1 %492, label %317, label %493, !llvm.loop !57

493:                                              ; preds = %488
  %494 = load i32, ptr %165, align 8, !tbaa !48
  %495 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %494, i32 -1)
  %496 = extractvalue { i32, i1 } %495, 1, !nosanitize !30
  br i1 %496, label %.loopexit349, label %497, !prof !32, !nosanitize !30

497:                                              ; preds = %493
  %498 = extractvalue { i32, i1 } %495, 0, !nosanitize !30
  %499 = load i32, ptr %244, align 4, !tbaa !49
  store i32 %498, ptr %165, align 8, !tbaa !48
  %500 = sext i32 %498 to i64
  %501 = getelementptr inbounds [4 x i8], ptr %238, i64 %500
  store i32 %499, ptr %501, align 4, !tbaa !49
  %502 = load ptr, ptr %157, align 8, !tbaa !41
  %503 = load i32, ptr %237, align 8, !tbaa !54
  %504 = load ptr, ptr %159, align 8, !tbaa !42
  %505 = load ptr, ptr %504, align 8, !tbaa !43
  %506 = getelementptr inbounds nuw i8, ptr %504, i64 8
  %507 = load ptr, ptr %506, align 8, !tbaa !58
  %508 = getelementptr inbounds nuw i8, ptr %504, i64 16
  %509 = load i32, ptr %508, align 8, !tbaa !59
  %510 = getelementptr inbounds nuw i8, ptr %504, i64 24
  %511 = load i32, ptr %510, align 8, !tbaa !60
  %512 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %512, i8 0, i64 32, i1 false), !tbaa !61
  %513 = load i32, ptr %165, align 8, !tbaa !48
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [4 x i8], ptr %238, i64 %514
  %516 = load i32, ptr %515, align 4, !tbaa !49
  %517 = sext i32 %516 to i64
  %.split248 = getelementptr inbounds [4 x i8], ptr %502, i64 %517
  %518 = getelementptr inbounds nuw i8, ptr %.split248, i64 2
  store i16 0, ptr %518, align 2, !tbaa !28
  %519 = load i32, ptr %165, align 8, !tbaa !48
  %520 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %519, i32 1), !nosanitize !30
  %521 = extractvalue { i32, i1 } %520, 1, !nosanitize !30
  br i1 %521, label %.loopexit345, label %522, !prof !32, !nosanitize !30

.loopexit345:                                     ; preds = %569, %545, %497
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

522:                                              ; preds = %497
  %523 = extractvalue { i32, i1 } %520, 0
  %524 = icmp slt i32 %523, 573
  br i1 %524, label %525, label %.loopexit340

525:                                              ; preds = %522
  %526 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %527 = icmp eq ptr %505, null
  %528 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %529 = sext i32 %523 to i64
  br label %530

530:                                              ; preds = %600, %525
  %531 = phi i64 [ %529, %525 ], [ %601, %600 ]
  %532 = phi i32 [ 0, %525 ], [ %552, %600 ]
  %533 = getelementptr inbounds [4 x i8], ptr %238, i64 %531
  %534 = load i32, ptr %533, align 4, !tbaa !49
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds [4 x i8], ptr %502, i64 %535
  %537 = getelementptr inbounds nuw i8, ptr %536, i64 2
  %538 = load i16, ptr %537, align 2, !tbaa !28
  %539 = zext i16 %538 to i64
  %.split249 = getelementptr inbounds nuw [4 x i8], ptr %502, i64 %539
  %540 = getelementptr inbounds nuw i8, ptr %.split249, i64 2
  %541 = load i16, ptr %540, align 2, !tbaa !28
  %542 = zext i16 %541 to i32
  %543 = add nuw nsw i32 %542, 1
  %544 = icmp sgt i32 %511, %542
  br i1 %544, label %550, label %545

545:                                              ; preds = %530
  %546 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %532, i32 1), !nosanitize !30
  %547 = extractvalue { i32, i1 } %546, 1, !nosanitize !30
  br i1 %547, label %.loopexit345, label %548, !prof !32, !nosanitize !30

548:                                              ; preds = %545
  %549 = extractvalue { i32, i1 } %546, 0, !nosanitize !30
  br label %550

550:                                              ; preds = %548, %530
  %551 = phi i32 [ %511, %548 ], [ %543, %530 ]
  %552 = phi i32 [ %549, %548 ], [ %532, %530 ]
  %553 = trunc i32 %551 to i16
  store i16 %553, ptr %537, align 2, !tbaa !28
  %554 = icmp sgt i32 %534, %503
  br i1 %554, label %600, label %555

555:                                              ; preds = %550
  %556 = sext i32 %551 to i64
  %557 = getelementptr inbounds [2 x i8], ptr %512, i64 %556
  %558 = load i16, ptr %557, align 2, !tbaa !61
  %559 = add i16 %558, 1
  store i16 %559, ptr %557, align 2, !tbaa !61
  %560 = icmp slt i32 %534, %509
  br i1 %560, label %569, label %561

561:                                              ; preds = %555
  %562 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %534, i32 %509), !nosanitize !30
  %563 = extractvalue { i32, i1 } %562, 1, !nosanitize !30
  br i1 %563, label %.loopexit335, label %564, !prof !32, !nosanitize !30

.loopexit335:                                     ; preds = %561, %627, %619, %653, %658, %606
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

564:                                              ; preds = %561
  %565 = extractvalue { i32, i1 } %562, 0, !nosanitize !30
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds [4 x i8], ptr %507, i64 %566
  %568 = load i32, ptr %567, align 4, !tbaa !49
  br label %569

569:                                              ; preds = %564, %555
  %570 = phi i32 [ %568, %564 ], [ 0, %555 ]
  %571 = load i16, ptr %536, align 2, !tbaa !28
  %572 = zext i16 %571 to i64
  %573 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %551, i32 %570), !nosanitize !30
  %574 = extractvalue { i32, i1 } %573, 1, !nosanitize !30
  br i1 %574, label %.loopexit345, label %575, !prof !32, !nosanitize !30

575:                                              ; preds = %569
  %576 = extractvalue { i32, i1 } %573, 0, !nosanitize !30
  %577 = zext i32 %576 to i64
  %578 = mul nuw nsw i64 %577, %572
  %579 = load i64, ptr %526, align 8, !tbaa !51
  %580 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %579, i64 %578), !nosanitize !30
  %581 = extractvalue { i64, i1 } %580, 1, !nosanitize !30
  br i1 %581, label %582, label %583, !prof !32, !nosanitize !30

582:                                              ; preds = %585, %575
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

583:                                              ; preds = %575
  %584 = extractvalue { i64, i1 } %580, 0, !nosanitize !30
  store i64 %584, ptr %526, align 8, !tbaa !51
  br i1 %527, label %600, label %585

585:                                              ; preds = %583
  %.split250 = getelementptr inbounds [4 x i8], ptr %505, i64 %535
  %586 = getelementptr inbounds nuw i8, ptr %.split250, i64 2
  %587 = load i16, ptr %586, align 2, !tbaa !28
  %588 = zext i16 %587 to i32
  %589 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %588, i32 %570), !nosanitize !30
  %590 = extractvalue { i32, i1 } %589, 1, !nosanitize !30
  br i1 %590, label %582, label %591, !prof !32, !nosanitize !30

591:                                              ; preds = %585
  %592 = extractvalue { i32, i1 } %589, 0, !nosanitize !30
  %593 = zext i32 %592 to i64
  %594 = mul nuw nsw i64 %593, %572
  %595 = load i64, ptr %528, align 8, !tbaa !52
  %596 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %595, i64 %594), !nosanitize !30
  %597 = extractvalue { i64, i1 } %596, 1, !nosanitize !30
  br i1 %597, label %.loopexit343, label %598, !prof !32, !nosanitize !30

.loopexit343:                                     ; preds = %591, %622
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

598:                                              ; preds = %591
  %599 = extractvalue { i64, i1 } %596, 0, !nosanitize !30
  store i64 %599, ptr %528, align 8, !tbaa !52
  br label %600

600:                                              ; preds = %598, %583, %550
  %601 = add nsw i64 %531, 1
  %602 = and i64 %601, 4294967295
  %603 = icmp eq i64 %602, 573
  br i1 %603, label %604, label %530, !llvm.loop !62

604:                                              ; preds = %600
  %605 = icmp eq i32 %552, 0
  br i1 %605, label %.loopexit340, label %606

606:                                              ; preds = %604
  %607 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %511, i32 -1)
  %608 = extractvalue { i32, i1 } %607, 1, !nosanitize !30
  %609 = sext i32 %511 to i64
  %610 = getelementptr inbounds [2 x i8], ptr %512, i64 %609
  br i1 %608, label %.loopexit335, label %.preheader342, !prof !32, !nosanitize !30

.preheader342:                                    ; preds = %606, %637
  %611 = phi i32 [ %638, %637 ], [ %552, %606 ]
  br label %612

612:                                              ; preds = %619, %.preheader342
  %613 = phi { i32, i1 } [ %620, %619 ], [ %607, %.preheader342 ]
  %614 = extractvalue { i32, i1 } %613, 0
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [2 x i8], ptr %512, i64 %615
  %617 = load i16, ptr %616, align 2, !tbaa !61
  %618 = icmp eq i16 %617, 0
  br i1 %618, label %619, label %622

619:                                              ; preds = %612
  %620 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %614, i32 -1)
  %621 = extractvalue { i32, i1 } %620, 1, !nosanitize !30
  br i1 %621, label %.loopexit335, label %612, !prof !32, !llvm.loop !63, !nosanitize !30

622:                                              ; preds = %612
  %623 = getelementptr inbounds [2 x i8], ptr %512, i64 %615
  %624 = add i16 %617, -1
  store i16 %624, ptr %623, align 2, !tbaa !61
  %625 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %614, i32 1), !nosanitize !30
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !30
  br i1 %626, label %.loopexit343, label %627, !prof !32, !nosanitize !30

627:                                              ; preds = %622
  %628 = extractvalue { i32, i1 } %625, 0, !nosanitize !30
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds [2 x i8], ptr %512, i64 %629
  %631 = load i16, ptr %630, align 2, !tbaa !61
  %632 = add i16 %631, 2
  store i16 %632, ptr %630, align 2, !tbaa !61
  %633 = load i16, ptr %610, align 2, !tbaa !61
  %634 = add i16 %633, -1
  store i16 %634, ptr %610, align 2, !tbaa !61
  %635 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %611, i32 -2)
  %636 = extractvalue { i32, i1 } %635, 1, !nosanitize !30
  br i1 %636, label %.loopexit335, label %637, !prof !32, !nosanitize !30

637:                                              ; preds = %627
  %638 = extractvalue { i32, i1 } %635, 0, !nosanitize !30
  %639 = icmp sgt i32 %638, 0
  br i1 %639, label %.preheader342, label %640, !llvm.loop !64

640:                                              ; preds = %637
  %641 = icmp eq i32 %511, 0
  br i1 %641, label %.loopexit340, label %.preheader338

.preheader338:                                    ; preds = %640, %695
  %642 = phi i64 [ %696, %695 ], [ %609, %640 ]
  %643 = phi i32 [ %650, %695 ], [ 573, %640 ]
  %644 = getelementptr inbounds [2 x i8], ptr %512, i64 %642
  %645 = load i16, ptr %644, align 2, !tbaa !61
  %646 = icmp eq i16 %645, 0
  br i1 %646, label %.loopexit337, label %647

647:                                              ; preds = %.preheader338
  %648 = zext i16 %645 to i32
  %649 = trunc i64 %642 to i16
  br label %653

.loopexit337:                                     ; preds = %692, %.preheader338
  %650 = phi i32 [ %643, %.preheader338 ], [ %662, %692 ]
  %651 = and i64 %642, 4294967295
  %652 = icmp eq i64 %651, 2147483648
  br i1 %652, label %.loopexit336, label %695, !prof !32, !nosanitize !30

653:                                              ; preds = %692, %647
  %654 = phi i32 [ %643, %647 ], [ %662, %692 ]
  %655 = phi i32 [ %648, %647 ], [ %693, %692 ]
  %656 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %654, i32 -1)
  %657 = extractvalue { i32, i1 } %656, 1, !nosanitize !30
  br i1 %657, label %.loopexit335, label %.lr.ph, !prof !65, !nosanitize !30

658:                                              ; preds = %.lr.ph
  %659 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %662, i32 -1)
  %660 = extractvalue { i32, i1 } %659, 1, !nosanitize !30
  br i1 %660, label %.loopexit335, label %.lr.ph, !prof !66, !llvm.loop !67, !nosanitize !30

.lr.ph:                                           ; preds = %653, %658
  %661 = phi { i32, i1 } [ %659, %658 ], [ %656, %653 ]
  %662 = extractvalue { i32, i1 } %661, 0, !nosanitize !30
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds [4 x i8], ptr %238, i64 %663
  %665 = load i32, ptr %664, align 4, !tbaa !49
  %666 = icmp sgt i32 %665, %503
  br i1 %666, label %658, label %667, !llvm.loop !67

667:                                              ; preds = %.lr.ph
  %668 = sext i32 %665 to i64
  %669 = getelementptr inbounds [4 x i8], ptr %502, i64 %668
  %670 = getelementptr inbounds nuw i8, ptr %669, i64 2
  %671 = load i16, ptr %670, align 2, !tbaa !28
  %672 = zext i16 %671 to i64
  %673 = icmp eq i64 %642, %672
  br i1 %673, label %692, label %674

674:                                              ; preds = %667
  %675 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %642, i64 %672), !nosanitize !30
  %676 = extractvalue { i64, i1 } %675, 1, !nosanitize !30
  br i1 %676, label %.loopexit336, label %677, !prof !32, !nosanitize !30

.loopexit336:                                     ; preds = %.loopexit337, %674
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

677:                                              ; preds = %674
  %678 = extractvalue { i64, i1 } %675, 0, !nosanitize !30
  %679 = load i16, ptr %669, align 2, !tbaa !28
  %680 = zext i16 %679 to i64
  %681 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %678, i64 %680), !nosanitize !30
  %682 = extractvalue { i64, i1 } %681, 1, !nosanitize !30
  br i1 %682, label %683, label %684, !prof !32, !nosanitize !30

683:                                              ; preds = %677
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !30
  unreachable, !nosanitize !30

684:                                              ; preds = %677
  %685 = extractvalue { i64, i1 } %681, 0, !nosanitize !30
  %686 = load i64, ptr %526, align 8, !tbaa !51
  %687 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %686, i64 %685), !nosanitize !30
  %688 = extractvalue { i64, i1 } %687, 1, !nosanitize !30
  br i1 %688, label %689, label %690, !prof !32, !nosanitize !30

689:                                              ; preds = %684
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

690:                                              ; preds = %684
  %691 = extractvalue { i64, i1 } %687, 0, !nosanitize !30
  store i64 %691, ptr %526, align 8, !tbaa !51
  store i16 %649, ptr %670, align 2, !tbaa !28
  br label %692

692:                                              ; preds = %690, %667
  %693 = add nsw i32 %655, -1
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %.loopexit337, label %653, !llvm.loop !67

695:                                              ; preds = %.loopexit337
  %696 = add nsw i64 %642, -1
  %697 = and i64 %696, 4294967295
  %698 = icmp eq i64 %697, 0
  br i1 %698, label %.loopexit340, label %.preheader338, !llvm.loop !68

.loopexit340:                                     ; preds = %695, %640, %604, %522
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %699 = load i16, ptr %512, align 2, !tbaa !61
  %700 = zext i16 %699 to i32
  %701 = shl nuw nsw i32 %700, 1
  %702 = trunc i32 %701 to i16
  %703 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %702, ptr %703, align 2, !tbaa !61
  %704 = getelementptr i8, ptr %0, i64 2978
  %705 = load i16, ptr %704, align 2, !tbaa !61
  %706 = zext i16 %705 to i32
  %707 = add nuw nsw i32 %701, %706
  %708 = shl nuw nsw i32 %707, 1
  %709 = trunc i32 %708 to i16
  %710 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %709, ptr %710, align 4, !tbaa !61
  %711 = getelementptr i8, ptr %0, i64 2980
  %712 = load i16, ptr %711, align 2, !tbaa !61
  %713 = zext i16 %712 to i32
  %714 = add nuw nsw i32 %708, %713
  %715 = shl nuw nsw i32 %714, 1
  %716 = trunc i32 %715 to i16
  %717 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %716, ptr %717, align 2, !tbaa !61
  %718 = getelementptr i8, ptr %0, i64 2982
  %719 = load i16, ptr %718, align 2, !tbaa !61
  %720 = zext i16 %719 to i32
  %721 = add nuw nsw i32 %715, %720
  %722 = shl nuw nsw i32 %721, 1
  %723 = trunc i32 %722 to i16
  %724 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %723, ptr %724, align 8, !tbaa !61
  %725 = getelementptr i8, ptr %0, i64 2984
  %726 = load i16, ptr %725, align 2, !tbaa !61
  %727 = zext i16 %726 to i32
  %728 = add nuw nsw i32 %722, %727
  %729 = shl nuw nsw i32 %728, 1
  %730 = trunc i32 %729 to i16
  %731 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %730, ptr %731, align 2, !tbaa !61
  %732 = getelementptr i8, ptr %0, i64 2986
  %733 = load i16, ptr %732, align 2, !tbaa !61
  %734 = zext i16 %733 to i32
  %735 = add nuw nsw i32 %729, %734
  %736 = shl nuw nsw i32 %735, 1
  %737 = trunc i32 %736 to i16
  %738 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %737, ptr %738, align 4, !tbaa !61
  %739 = getelementptr i8, ptr %0, i64 2988
  %740 = load i16, ptr %739, align 2, !tbaa !61
  %741 = zext i16 %740 to i32
  %742 = add nuw nsw i32 %736, %741
  %743 = shl nuw nsw i32 %742, 1
  %744 = trunc i32 %743 to i16
  %745 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %744, ptr %745, align 2, !tbaa !61
  %746 = getelementptr i8, ptr %0, i64 2990
  %747 = load i16, ptr %746, align 2, !tbaa !61
  %748 = trunc i32 %743 to i16
  %.tr810 = add i16 %747, %748
  %749 = shl i16 %.tr810, 1
  %750 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %749, ptr %750, align 16, !tbaa !61
  %751 = getelementptr i8, ptr %0, i64 2992
  %752 = load i16, ptr %751, align 2, !tbaa !61
  %.tr261 = add i16 %752, %749
  %753 = shl i16 %.tr261, 1
  %754 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %753, ptr %754, align 2, !tbaa !61
  %755 = getelementptr i8, ptr %0, i64 2994
  %756 = load i16, ptr %755, align 2, !tbaa !61
  %.tr = add i16 %753, %756
  %757 = shl i16 %.tr, 1
  %758 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %757, ptr %758, align 4, !tbaa !61
  %759 = getelementptr i8, ptr %0, i64 2996
  %760 = load i16, ptr %759, align 2, !tbaa !61
  %761 = add i16 %757, %760
  %762 = shl i16 %761, 1
  %763 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %762, ptr %763, align 2, !tbaa !61
  %764 = getelementptr i8, ptr %0, i64 2998
  %765 = load i16, ptr %764, align 2, !tbaa !61
  %766 = add i16 %762, %765
  %767 = shl i16 %766, 1
  %768 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %767, ptr %768, align 8, !tbaa !61
  %769 = getelementptr i8, ptr %0, i64 3000
  %770 = load i16, ptr %769, align 2, !tbaa !61
  %771 = add i16 %767, %770
  %772 = shl i16 %771, 1
  %773 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %772, ptr %773, align 2, !tbaa !61
  %774 = getelementptr i8, ptr %0, i64 3002
  %775 = load i16, ptr %774, align 2, !tbaa !61
  %776 = add i16 %772, %775
  %777 = shl i16 %776, 1
  %778 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %777, ptr %778, align 4, !tbaa !61
  %779 = getelementptr i8, ptr %0, i64 3004
  %780 = load i16, ptr %779, align 2, !tbaa !61
  %781 = add i16 %777, %780
  %782 = shl i16 %781, 1
  %783 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %782, ptr %783, align 2, !tbaa !61
  %784 = icmp slt i32 %235, 0
  br i1 %784, label %.loopexit334, label %.preheader333

785:                                              ; preds = %835
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

.preheader333:                                    ; preds = %.loopexit340, %837
  %786 = phi i64 [ %838, %837 ], [ 0, %.loopexit340 ]
  %787 = getelementptr inbounds nuw [4 x i8], ptr %158, i64 %786
  %788 = getelementptr inbounds nuw i8, ptr %787, i64 2
  %789 = load i16, ptr %788, align 2, !tbaa !28
  %790 = icmp eq i16 %789, 0
  br i1 %790, label %835, label %791

791:                                              ; preds = %.preheader333
  %792 = zext i16 %789 to i32
  %793 = zext i16 %789 to i64
  %794 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %793
  %795 = load i16, ptr %794, align 2, !tbaa !61
  %796 = add i16 %795, 1
  store i16 %796, ptr %794, align 2, !tbaa !61
  %797 = and i32 %792, 3
  %798 = icmp ult i16 %789, 4
  br i1 %798, label %.loopexit332, label %799

799:                                              ; preds = %791
  %800 = and i32 %792, 65532
  br label %801

801:                                              ; preds = %801, %799
  %802 = phi i16 [ %795, %799 ], [ %818, %801 ]
  %803 = phi i16 [ 0, %799 ], [ %817, %801 ]
  %804 = phi i32 [ 0, %799 ], [ %819, %801 ]
  %805 = and i16 %802, 1
  %806 = or disjoint i16 %803, %805
  %807 = lshr i16 %802, 2
  %808 = shl i16 %806, 2
  %809 = and i16 %802, 2
  %810 = or disjoint i16 %808, %809
  %811 = and i16 %807, 1
  %812 = or disjoint i16 %810, %811
  %813 = shl i16 %812, 1
  %814 = lshr i16 %802, 3
  %815 = and i16 %814, 1
  %816 = or disjoint i16 %813, %815
  %817 = shl i16 %816, 1
  %818 = lshr i16 %802, 4
  %819 = add nuw nsw i32 %804, 4
  %820 = icmp eq i32 %819, %800
  br i1 %820, label %.loopexit332, label %801, !llvm.loop !69

.loopexit332:                                     ; preds = %801, %791
  %821 = phi i16 [ poison, %791 ], [ %816, %801 ]
  %822 = phi i16 [ %795, %791 ], [ %818, %801 ]
  %823 = phi i16 [ 0, %791 ], [ %817, %801 ]
  %824 = icmp eq i32 %797, 0
  br i1 %824, label %.loopexit331, label %.preheader330

.preheader330:                                    ; preds = %.loopexit332, %.preheader330
  %825 = phi i16 [ %831, %.preheader330 ], [ %822, %.loopexit332 ]
  %826 = phi i16 [ %830, %.preheader330 ], [ %823, %.loopexit332 ]
  %827 = phi i32 [ %832, %.preheader330 ], [ 0, %.loopexit332 ]
  %828 = and i16 %825, 1
  %829 = or disjoint i16 %826, %828
  %830 = shl i16 %829, 1
  %831 = lshr i16 %825, 1
  %832 = add nuw nsw i32 %827, 1
  %833 = icmp eq i32 %832, %797
  br i1 %833, label %.loopexit331, label %.preheader330, !llvm.loop !70

.loopexit331:                                     ; preds = %.preheader330, %.loopexit332
  %834 = phi i16 [ %821, %.loopexit332 ], [ %829, %.preheader330 ]
  store i16 %834, ptr %787, align 2, !tbaa !28
  br label %835

835:                                              ; preds = %.loopexit331, %.preheader333
  %836 = icmp eq i64 %786, 2147483647
  br i1 %836, label %785, label %837, !prof !32, !nosanitize !30

837:                                              ; preds = %835
  %838 = add nuw nsw i64 %786, 1
  %839 = trunc i64 %838 to i32
  %840 = icmp slt i32 %235, %839
  br i1 %840, label %.loopexit334, label %.preheader333, !llvm.loop !72

.loopexit334:                                     ; preds = %837, %.loopexit340
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %841 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %842 = load ptr, ptr %841, align 8, !tbaa !41
  %843 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %844 = load ptr, ptr %843, align 8, !tbaa !42
  %845 = load ptr, ptr %844, align 8, !tbaa !43
  %846 = getelementptr inbounds nuw i8, ptr %844, i64 20
  %847 = load i32, ptr %846, align 4, !tbaa !46
  store i32 0, ptr %164, align 4, !tbaa !47
  store i32 573, ptr %165, align 8, !tbaa !48
  %848 = icmp sgt i32 %847, 0
  br i1 %848, label %849, label %854

849:                                              ; preds = %.loopexit334
  %850 = zext nneg i32 %847 to i64
  br label %860

851:                                              ; preds = %878
  %852 = load i32, ptr %164, align 4, !tbaa !47
  %853 = icmp slt i32 %852, 2
  br i1 %853, label %854, label %.loopexit328

854:                                              ; preds = %851, %.loopexit334
  %855 = phi i32 [ %879, %851 ], [ -1, %.loopexit334 ]
  %856 = phi i32 [ %852, %851 ], [ 0, %.loopexit334 ]
  %857 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %858 = icmp eq ptr %845, null
  %859 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %882

860:                                              ; preds = %878, %849
  %861 = phi i64 [ 0, %849 ], [ %880, %878 ]
  %862 = phi i32 [ -1, %849 ], [ %879, %878 ]
  %863 = getelementptr inbounds nuw [4 x i8], ptr %842, i64 %861
  %864 = load i16, ptr %863, align 2, !tbaa !28
  %865 = icmp eq i16 %864, 0
  br i1 %865, label %876, label %866

866:                                              ; preds = %860
  %867 = load i32, ptr %164, align 4, !tbaa !47
  %868 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %867, i32 1), !nosanitize !30
  %869 = extractvalue { i32, i1 } %868, 1, !nosanitize !30
  br i1 %869, label %.loopexit324, label %870, !prof !32, !nosanitize !30

.loopexit324:                                     ; preds = %866, %1079
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

870:                                              ; preds = %866
  %871 = extractvalue { i32, i1 } %868, 0, !nosanitize !30
  store i32 %871, ptr %164, align 4, !tbaa !47
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds [4 x i8], ptr %238, i64 %872
  %874 = trunc nuw nsw i64 %861 to i32
  store i32 %874, ptr %873, align 4, !tbaa !49
  %875 = getelementptr inbounds nuw i8, ptr %239, i64 %861
  store i8 0, ptr %875, align 1, !tbaa !28
  br label %878

876:                                              ; preds = %860
  %877 = getelementptr inbounds nuw i8, ptr %863, i64 2
  store i16 0, ptr %877, align 2, !tbaa !28
  br label %878

878:                                              ; preds = %876, %870
  %879 = phi i32 [ %874, %870 ], [ %862, %876 ]
  %880 = add nuw nsw i64 %861, 1
  %881 = icmp eq i64 %880, %850
  br i1 %881, label %851, label %860, !llvm.loop !50

882:                                              ; preds = %910, %854
  %883 = phi i32 [ %856, %854 ], [ %911, %910 ]
  %884 = phi i32 [ %855, %854 ], [ %887, %910 ]
  %885 = icmp slt i32 %884, 2
  %886 = add i32 %884, 1
  %887 = select i1 %885, i32 %886, i32 %884
  %888 = add nsw i32 %883, 1
  %889 = select i1 %885, i32 %886, i32 0
  store i32 %888, ptr %164, align 4, !tbaa !47
  %890 = sext i32 %888 to i64
  %891 = getelementptr inbounds [4 x i8], ptr %238, i64 %890
  store i32 %889, ptr %891, align 4, !tbaa !49
  %892 = sext i32 %889 to i64
  %893 = getelementptr inbounds [4 x i8], ptr %842, i64 %892
  store i16 1, ptr %893, align 2, !tbaa !28
  %894 = getelementptr inbounds i8, ptr %239, i64 %892
  store i8 0, ptr %894, align 1, !tbaa !28
  %895 = load i64, ptr %857, align 8, !tbaa !51
  %896 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %895, i64 1), !nosanitize !30
  %897 = extractvalue { i64, i1 } %896, 1, !nosanitize !30
  br i1 %897, label %898, label %899, !prof !32, !nosanitize !30

898:                                              ; preds = %882
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

899:                                              ; preds = %882
  %900 = extractvalue { i64, i1 } %896, 0, !nosanitize !30
  store i64 %900, ptr %857, align 8, !tbaa !51
  br i1 %858, label %910, label %901

901:                                              ; preds = %899
  %.split251 = getelementptr inbounds [4 x i8], ptr %845, i64 %892
  %902 = getelementptr inbounds nuw i8, ptr %.split251, i64 2
  %903 = load i16, ptr %902, align 2, !tbaa !28
  %904 = zext i16 %903 to i64
  %905 = load i64, ptr %859, align 8, !tbaa !52
  %906 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %905, i64 %904), !nosanitize !30
  %907 = extractvalue { i64, i1 } %906, 1, !nosanitize !30
  br i1 %907, label %.loopexit323, label %908, !prof !32, !nosanitize !30

.loopexit323:                                     ; preds = %901, %1072, %1065, %992, %1168
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

908:                                              ; preds = %901
  %909 = extractvalue { i64, i1 } %906, 0, !nosanitize !30
  store i64 %909, ptr %859, align 8, !tbaa !52
  br label %910

910:                                              ; preds = %908, %899
  %911 = load i32, ptr %164, align 4, !tbaa !47
  %912 = icmp slt i32 %911, 2
  br i1 %912, label %882, label %.loopexit328, !llvm.loop !53

.loopexit328:                                     ; preds = %910, %851
  %913 = phi i32 [ %879, %851 ], [ %887, %910 ]
  %914 = phi i32 [ %852, %851 ], [ %911, %910 ]
  %915 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %913, ptr %915, align 8, !tbaa !54
  %916 = lshr i32 %914, 1
  %917 = zext nneg i32 %916 to i64
  br label %921

918:                                              ; preds = %.loopexit325
  %919 = load i32, ptr %164, align 4, !tbaa !47
  %920 = sext i32 %847 to i64
  br label %992

921:                                              ; preds = %.loopexit325, %.loopexit328
  %922 = phi i64 [ %917, %.loopexit328 ], [ %990, %.loopexit325 ]
  %923 = getelementptr inbounds nuw [4 x i8], ptr %238, i64 %922
  %924 = load i32, ptr %923, align 4, !tbaa !49
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds i8, ptr %239, i64 %925
  %927 = load i32, ptr %164, align 4, !tbaa !47
  %928 = trunc i64 %922 to i32
  %929 = shl i32 %928, 1
  %930 = icmp sgt i32 %929, %927
  br i1 %930, label %.loopexit325, label %931

931:                                              ; preds = %921
  %932 = getelementptr inbounds [4 x i8], ptr %842, i64 %925
  br label %933

933:                                              ; preds = %981, %931
  %934 = phi i32 [ %927, %931 ], [ %985, %981 ]
  %935 = phi i32 [ %929, %931 ], [ %984, %981 ]
  %936 = phi i32 [ %928, %931 ], [ %966, %981 ]
  %937 = icmp slt i32 %935, %934
  br i1 %937, label %940, label %938

938:                                              ; preds = %933
  %939 = sext i32 %935 to i64
  br label %964

940:                                              ; preds = %933
  %941 = or disjoint i32 %935, 1
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds [4 x i8], ptr %238, i64 %942
  %944 = load i32, ptr %943, align 4, !tbaa !49
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds [4 x i8], ptr %842, i64 %945
  %947 = load i16, ptr %946, align 2, !tbaa !28
  %948 = sext i32 %935 to i64
  %949 = getelementptr inbounds [4 x i8], ptr %238, i64 %948
  %950 = load i32, ptr %949, align 4, !tbaa !49
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds [4 x i8], ptr %842, i64 %951
  %953 = load i16, ptr %952, align 2, !tbaa !28
  %954 = icmp ult i16 %947, %953
  br i1 %954, label %963, label %955

955:                                              ; preds = %940
  %956 = icmp eq i16 %947, %953
  br i1 %956, label %957, label %964

957:                                              ; preds = %955
  %958 = getelementptr inbounds i8, ptr %239, i64 %945
  %959 = load i8, ptr %958, align 1, !tbaa !28
  %960 = getelementptr inbounds i8, ptr %239, i64 %951
  %961 = load i8, ptr %960, align 1, !tbaa !28
  %962 = icmp ugt i8 %959, %961
  br i1 %962, label %964, label %963

963:                                              ; preds = %957, %940
  br label %964

964:                                              ; preds = %963, %957, %955, %938
  %965 = phi i64 [ %939, %938 ], [ %942, %963 ], [ %948, %957 ], [ %948, %955 ]
  %966 = phi i32 [ %935, %938 ], [ %941, %963 ], [ %935, %957 ], [ %935, %955 ]
  %967 = load i16, ptr %932, align 2, !tbaa !28
  %968 = getelementptr inbounds [4 x i8], ptr %238, i64 %965
  %969 = load i32, ptr %968, align 4, !tbaa !49
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds [4 x i8], ptr %842, i64 %970
  %972 = load i16, ptr %971, align 2, !tbaa !28
  %973 = icmp ult i16 %967, %972
  br i1 %973, label %.loopexit325, label %974

974:                                              ; preds = %964
  %975 = icmp eq i16 %967, %972
  br i1 %975, label %976, label %981

976:                                              ; preds = %974
  %977 = load i8, ptr %926, align 1, !tbaa !28
  %978 = getelementptr inbounds i8, ptr %239, i64 %970
  %979 = load i8, ptr %978, align 1, !tbaa !28
  %980 = icmp ugt i8 %977, %979
  br i1 %980, label %981, label %.loopexit325

981:                                              ; preds = %976, %974
  %982 = sext i32 %936 to i64
  %983 = getelementptr inbounds [4 x i8], ptr %238, i64 %982
  store i32 %969, ptr %983, align 4, !tbaa !49
  %984 = shl i32 %966, 1
  %985 = load i32, ptr %164, align 4, !tbaa !47
  %986 = icmp sgt i32 %984, %985
  br i1 %986, label %.loopexit325, label %933, !llvm.loop !55

.loopexit325:                                     ; preds = %981, %976, %964, %921
  %987 = phi i32 [ %928, %921 ], [ %966, %981 ], [ %936, %976 ], [ %936, %964 ]
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds [4 x i8], ptr %238, i64 %988
  store i32 %924, ptr %989, align 4, !tbaa !49
  %990 = add nsw i64 %922, -1
  %991 = icmp sgt i64 %922, 1
  br i1 %991, label %921, label %918, !llvm.loop !56

992:                                              ; preds = %1163, %918
  %993 = phi i32 [ %919, %918 ], [ %1166, %1163 ]
  %994 = phi i64 [ %920, %918 ], [ %1104, %1163 ]
  %995 = load i32, ptr %244, align 4, !tbaa !49
  %996 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %993, i32 -1)
  %997 = extractvalue { i32, i1 } %996, 1, !nosanitize !30
  br i1 %997, label %.loopexit323, label %998, !prof !32, !nosanitize !30

998:                                              ; preds = %992
  %999 = extractvalue { i32, i1 } %996, 0, !nosanitize !30
  store i32 %999, ptr %164, align 4, !tbaa !47
  %1000 = sext i32 %993 to i64
  %1001 = getelementptr inbounds [4 x i8], ptr %238, i64 %1000
  %1002 = load i32, ptr %1001, align 4, !tbaa !49
  store i32 %1002, ptr %244, align 4, !tbaa !49
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds i8, ptr %239, i64 %1003
  %1005 = icmp slt i32 %999, 2
  br i1 %1005, label %1065, label %1006

1006:                                             ; preds = %998
  %1007 = getelementptr inbounds [4 x i8], ptr %842, i64 %1003
  br label %1008

1008:                                             ; preds = %1056, %1006
  %1009 = phi i32 [ %999, %1006 ], [ %1060, %1056 ]
  %1010 = phi i32 [ 2, %1006 ], [ %1059, %1056 ]
  %1011 = phi i32 [ 1, %1006 ], [ %1041, %1056 ]
  %1012 = icmp slt i32 %1010, %1009
  br i1 %1012, label %1015, label %1013

1013:                                             ; preds = %1008
  %1014 = sext i32 %1010 to i64
  br label %1039

1015:                                             ; preds = %1008
  %1016 = or disjoint i32 %1010, 1
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds [4 x i8], ptr %238, i64 %1017
  %1019 = load i32, ptr %1018, align 4, !tbaa !49
  %1020 = sext i32 %1019 to i64
  %1021 = getelementptr inbounds [4 x i8], ptr %842, i64 %1020
  %1022 = load i16, ptr %1021, align 2, !tbaa !28
  %1023 = sext i32 %1010 to i64
  %1024 = getelementptr inbounds [4 x i8], ptr %238, i64 %1023
  %1025 = load i32, ptr %1024, align 4, !tbaa !49
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds [4 x i8], ptr %842, i64 %1026
  %1028 = load i16, ptr %1027, align 2, !tbaa !28
  %1029 = icmp ult i16 %1022, %1028
  br i1 %1029, label %1038, label %1030

1030:                                             ; preds = %1015
  %1031 = icmp eq i16 %1022, %1028
  br i1 %1031, label %1032, label %1039

1032:                                             ; preds = %1030
  %1033 = getelementptr inbounds i8, ptr %239, i64 %1020
  %1034 = load i8, ptr %1033, align 1, !tbaa !28
  %1035 = getelementptr inbounds i8, ptr %239, i64 %1026
  %1036 = load i8, ptr %1035, align 1, !tbaa !28
  %1037 = icmp ugt i8 %1034, %1036
  br i1 %1037, label %1039, label %1038

1038:                                             ; preds = %1032, %1015
  br label %1039

1039:                                             ; preds = %1038, %1032, %1030, %1013
  %1040 = phi i64 [ %1014, %1013 ], [ %1017, %1038 ], [ %1023, %1032 ], [ %1023, %1030 ]
  %1041 = phi i32 [ %1010, %1013 ], [ %1016, %1038 ], [ %1010, %1032 ], [ %1010, %1030 ]
  %1042 = load i16, ptr %1007, align 2, !tbaa !28
  %1043 = getelementptr inbounds [4 x i8], ptr %238, i64 %1040
  %1044 = load i32, ptr %1043, align 4, !tbaa !49
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds [4 x i8], ptr %842, i64 %1045
  %1047 = load i16, ptr %1046, align 2, !tbaa !28
  %1048 = icmp ult i16 %1042, %1047
  br i1 %1048, label %1062, label %1049

1049:                                             ; preds = %1039
  %1050 = icmp eq i16 %1042, %1047
  br i1 %1050, label %1051, label %1056

1051:                                             ; preds = %1049
  %1052 = load i8, ptr %1004, align 1, !tbaa !28
  %1053 = getelementptr inbounds i8, ptr %239, i64 %1045
  %1054 = load i8, ptr %1053, align 1, !tbaa !28
  %1055 = icmp ugt i8 %1052, %1054
  br i1 %1055, label %1056, label %1062

1056:                                             ; preds = %1051, %1049
  %1057 = sext i32 %1011 to i64
  %1058 = getelementptr inbounds [4 x i8], ptr %238, i64 %1057
  store i32 %1044, ptr %1058, align 4, !tbaa !49
  %1059 = shl i32 %1041, 1
  %1060 = load i32, ptr %164, align 4, !tbaa !47
  %1061 = icmp sgt i32 %1059, %1060
  br i1 %1061, label %1062, label %1008, !llvm.loop !55

1062:                                             ; preds = %1056, %1051, %1039
  %1063 = phi i32 [ %1011, %1039 ], [ %1011, %1051 ], [ %1041, %1056 ]
  %1064 = sext i32 %1063 to i64
  br label %1065

1065:                                             ; preds = %1062, %998
  %1066 = phi i64 [ 1, %998 ], [ %1064, %1062 ]
  %1067 = getelementptr inbounds [4 x i8], ptr %238, i64 %1066
  store i32 %1002, ptr %1067, align 4, !tbaa !49
  %1068 = load i32, ptr %244, align 4, !tbaa !49
  %1069 = load i32, ptr %165, align 8, !tbaa !48
  %1070 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1069, i32 -1)
  %1071 = extractvalue { i32, i1 } %1070, 1, !nosanitize !30
  br i1 %1071, label %.loopexit323, label %1072, !prof !32, !nosanitize !30

1072:                                             ; preds = %1065
  %1073 = extractvalue { i32, i1 } %1070, 0, !nosanitize !30
  store i32 %1073, ptr %165, align 8, !tbaa !48
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds [4 x i8], ptr %238, i64 %1074
  store i32 %995, ptr %1075, align 4, !tbaa !49
  %1076 = load i32, ptr %165, align 8, !tbaa !48
  %1077 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1076, i32 -1)
  %1078 = extractvalue { i32, i1 } %1077, 1, !nosanitize !30
  br i1 %1078, label %.loopexit323, label %1079, !prof !32, !nosanitize !30

1079:                                             ; preds = %1072
  %1080 = extractvalue { i32, i1 } %1077, 0, !nosanitize !30
  store i32 %1080, ptr %165, align 8, !tbaa !48
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds [4 x i8], ptr %238, i64 %1081
  store i32 %1068, ptr %1082, align 4, !tbaa !49
  %1083 = sext i32 %995 to i64
  %1084 = getelementptr inbounds [4 x i8], ptr %842, i64 %1083
  %1085 = load i16, ptr %1084, align 2, !tbaa !28
  %1086 = sext i32 %1068 to i64
  %1087 = getelementptr inbounds [4 x i8], ptr %842, i64 %1086
  %1088 = load i16, ptr %1087, align 2, !tbaa !28
  %1089 = add i16 %1088, %1085
  %1090 = getelementptr inbounds [4 x i8], ptr %842, i64 %994
  store i16 %1089, ptr %1090, align 2, !tbaa !28
  %1091 = getelementptr inbounds i8, ptr %239, i64 %1083
  %1092 = load i8, ptr %1091, align 1, !tbaa !28
  %1093 = getelementptr inbounds i8, ptr %239, i64 %1086
  %1094 = load i8, ptr %1093, align 1, !tbaa !28
  %1095 = tail call i8 @llvm.umax.i8(i8 %1092, i8 %1094)
  %1096 = add i8 %1095, 1
  %1097 = getelementptr inbounds i8, ptr %239, i64 %994
  store i8 %1096, ptr %1097, align 1, !tbaa !28
  %1098 = trunc nsw i64 %994 to i32
  %1099 = trunc i64 %994 to i16
  %1100 = getelementptr inbounds nuw i8, ptr %1087, i64 2
  store i16 %1099, ptr %1100, align 2, !tbaa !28
  %1101 = getelementptr inbounds nuw i8, ptr %1084, i64 2
  store i16 %1099, ptr %1101, align 2, !tbaa !28
  %1102 = icmp eq i64 %994, 2147483647
  br i1 %1102, label %.loopexit324, label %1103, !prof !32, !nosanitize !30

1103:                                             ; preds = %1079
  %1104 = add nsw i64 %994, 1
  store i32 %1098, ptr %244, align 4, !tbaa !49
  %1105 = load i32, ptr %164, align 4, !tbaa !47
  %1106 = icmp slt i32 %1105, 2
  br i1 %1106, label %1163, label %.preheader322

.preheader322:                                    ; preds = %1103, %1154
  %1107 = phi i32 [ %1158, %1154 ], [ %1105, %1103 ]
  %1108 = phi i32 [ %1157, %1154 ], [ 2, %1103 ]
  %1109 = phi i32 [ %1139, %1154 ], [ 1, %1103 ]
  %1110 = icmp slt i32 %1108, %1107
  br i1 %1110, label %1113, label %1111

1111:                                             ; preds = %.preheader322
  %1112 = sext i32 %1108 to i64
  br label %1137

1113:                                             ; preds = %.preheader322
  %1114 = or disjoint i32 %1108, 1
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds [4 x i8], ptr %238, i64 %1115
  %1117 = load i32, ptr %1116, align 4, !tbaa !49
  %1118 = sext i32 %1117 to i64
  %1119 = getelementptr inbounds [4 x i8], ptr %842, i64 %1118
  %1120 = load i16, ptr %1119, align 2, !tbaa !28
  %1121 = sext i32 %1108 to i64
  %1122 = getelementptr inbounds [4 x i8], ptr %238, i64 %1121
  %1123 = load i32, ptr %1122, align 4, !tbaa !49
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds [4 x i8], ptr %842, i64 %1124
  %1126 = load i16, ptr %1125, align 2, !tbaa !28
  %1127 = icmp ult i16 %1120, %1126
  br i1 %1127, label %1136, label %1128

1128:                                             ; preds = %1113
  %1129 = icmp eq i16 %1120, %1126
  br i1 %1129, label %1130, label %1137

1130:                                             ; preds = %1128
  %1131 = getelementptr inbounds i8, ptr %239, i64 %1118
  %1132 = load i8, ptr %1131, align 1, !tbaa !28
  %1133 = getelementptr inbounds i8, ptr %239, i64 %1124
  %1134 = load i8, ptr %1133, align 1, !tbaa !28
  %1135 = icmp ugt i8 %1132, %1134
  br i1 %1135, label %1137, label %1136

1136:                                             ; preds = %1130, %1113
  br label %1137

1137:                                             ; preds = %1136, %1130, %1128, %1111
  %1138 = phi i64 [ %1112, %1111 ], [ %1115, %1136 ], [ %1121, %1130 ], [ %1121, %1128 ]
  %1139 = phi i32 [ %1108, %1111 ], [ %1114, %1136 ], [ %1108, %1130 ], [ %1108, %1128 ]
  %1140 = load i16, ptr %1090, align 2, !tbaa !28
  %1141 = getelementptr inbounds [4 x i8], ptr %238, i64 %1138
  %1142 = load i32, ptr %1141, align 4, !tbaa !49
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds [4 x i8], ptr %842, i64 %1143
  %1145 = load i16, ptr %1144, align 2, !tbaa !28
  %1146 = icmp ult i16 %1140, %1145
  br i1 %1146, label %1160, label %1147

1147:                                             ; preds = %1137
  %1148 = icmp eq i16 %1140, %1145
  br i1 %1148, label %1149, label %1154

1149:                                             ; preds = %1147
  %1150 = load i8, ptr %1097, align 1, !tbaa !28
  %1151 = getelementptr inbounds i8, ptr %239, i64 %1143
  %1152 = load i8, ptr %1151, align 1, !tbaa !28
  %1153 = icmp ugt i8 %1150, %1152
  br i1 %1153, label %1154, label %1160

1154:                                             ; preds = %1149, %1147
  %1155 = sext i32 %1109 to i64
  %1156 = getelementptr inbounds [4 x i8], ptr %238, i64 %1155
  store i32 %1142, ptr %1156, align 4, !tbaa !49
  %1157 = shl i32 %1139, 1
  %1158 = load i32, ptr %164, align 4, !tbaa !47
  %1159 = icmp sgt i32 %1157, %1158
  br i1 %1159, label %1160, label %.preheader322, !llvm.loop !55

1160:                                             ; preds = %1154, %1149, %1137
  %1161 = phi i32 [ %1109, %1137 ], [ %1109, %1149 ], [ %1139, %1154 ]
  %1162 = sext i32 %1161 to i64
  br label %1163

1163:                                             ; preds = %1160, %1103
  %1164 = phi i64 [ 1, %1103 ], [ %1162, %1160 ]
  %1165 = getelementptr inbounds [4 x i8], ptr %238, i64 %1164
  store i32 %1098, ptr %1165, align 4, !tbaa !49
  %1166 = load i32, ptr %164, align 4, !tbaa !47
  %1167 = icmp sgt i32 %1166, 1
  br i1 %1167, label %992, label %1168, !llvm.loop !57

1168:                                             ; preds = %1163
  %1169 = load i32, ptr %165, align 8, !tbaa !48
  %1170 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1169, i32 -1)
  %1171 = extractvalue { i32, i1 } %1170, 1, !nosanitize !30
  br i1 %1171, label %.loopexit323, label %1172, !prof !32, !nosanitize !30

1172:                                             ; preds = %1168
  %1173 = extractvalue { i32, i1 } %1170, 0, !nosanitize !30
  %1174 = load i32, ptr %244, align 4, !tbaa !49
  store i32 %1173, ptr %165, align 8, !tbaa !48
  %1175 = sext i32 %1173 to i64
  %1176 = getelementptr inbounds [4 x i8], ptr %238, i64 %1175
  store i32 %1174, ptr %1176, align 4, !tbaa !49
  %1177 = load ptr, ptr %841, align 8, !tbaa !41
  %1178 = load i32, ptr %915, align 8, !tbaa !54
  %1179 = load ptr, ptr %843, align 8, !tbaa !42
  %1180 = load ptr, ptr %1179, align 8, !tbaa !43
  %1181 = getelementptr inbounds nuw i8, ptr %1179, i64 8
  %1182 = load ptr, ptr %1181, align 8, !tbaa !58
  %1183 = getelementptr inbounds nuw i8, ptr %1179, i64 16
  %1184 = load i32, ptr %1183, align 8, !tbaa !59
  %1185 = getelementptr inbounds nuw i8, ptr %1179, i64 24
  %1186 = load i32, ptr %1185, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %512, i8 0, i64 32, i1 false), !tbaa !61
  %1187 = load i32, ptr %165, align 8, !tbaa !48
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds [4 x i8], ptr %238, i64 %1188
  %1190 = load i32, ptr %1189, align 4, !tbaa !49
  %1191 = sext i32 %1190 to i64
  %.split252 = getelementptr inbounds [4 x i8], ptr %1177, i64 %1191
  %1192 = getelementptr inbounds nuw i8, ptr %.split252, i64 2
  store i16 0, ptr %1192, align 2, !tbaa !28
  %1193 = load i32, ptr %165, align 8, !tbaa !48
  %1194 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1193, i32 1), !nosanitize !30
  %1195 = extractvalue { i32, i1 } %1194, 1, !nosanitize !30
  br i1 %1195, label %.loopexit319, label %1196, !prof !32, !nosanitize !30

.loopexit319:                                     ; preds = %1243, %1219, %1172
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

1196:                                             ; preds = %1172
  %1197 = extractvalue { i32, i1 } %1194, 0
  %1198 = icmp slt i32 %1197, 573
  br i1 %1198, label %1199, label %.loopexit314

1199:                                             ; preds = %1196
  %1200 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1201 = icmp eq ptr %1180, null
  %1202 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1203 = sext i32 %1197 to i64
  br label %1204

1204:                                             ; preds = %1274, %1199
  %1205 = phi i64 [ %1203, %1199 ], [ %1275, %1274 ]
  %1206 = phi i32 [ 0, %1199 ], [ %1226, %1274 ]
  %1207 = getelementptr inbounds [4 x i8], ptr %238, i64 %1205
  %1208 = load i32, ptr %1207, align 4, !tbaa !49
  %1209 = sext i32 %1208 to i64
  %1210 = getelementptr inbounds [4 x i8], ptr %1177, i64 %1209
  %1211 = getelementptr inbounds nuw i8, ptr %1210, i64 2
  %1212 = load i16, ptr %1211, align 2, !tbaa !28
  %1213 = zext i16 %1212 to i64
  %.split253 = getelementptr inbounds nuw [4 x i8], ptr %1177, i64 %1213
  %1214 = getelementptr inbounds nuw i8, ptr %.split253, i64 2
  %1215 = load i16, ptr %1214, align 2, !tbaa !28
  %1216 = zext i16 %1215 to i32
  %1217 = add nuw nsw i32 %1216, 1
  %1218 = icmp sgt i32 %1186, %1216
  br i1 %1218, label %1224, label %1219

1219:                                             ; preds = %1204
  %1220 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1206, i32 1), !nosanitize !30
  %1221 = extractvalue { i32, i1 } %1220, 1, !nosanitize !30
  br i1 %1221, label %.loopexit319, label %1222, !prof !32, !nosanitize !30

1222:                                             ; preds = %1219
  %1223 = extractvalue { i32, i1 } %1220, 0, !nosanitize !30
  br label %1224

1224:                                             ; preds = %1222, %1204
  %1225 = phi i32 [ %1186, %1222 ], [ %1217, %1204 ]
  %1226 = phi i32 [ %1223, %1222 ], [ %1206, %1204 ]
  %1227 = trunc i32 %1225 to i16
  store i16 %1227, ptr %1211, align 2, !tbaa !28
  %1228 = icmp sgt i32 %1208, %1178
  br i1 %1228, label %1274, label %1229

1229:                                             ; preds = %1224
  %1230 = sext i32 %1225 to i64
  %1231 = getelementptr inbounds [2 x i8], ptr %512, i64 %1230
  %1232 = load i16, ptr %1231, align 2, !tbaa !61
  %1233 = add i16 %1232, 1
  store i16 %1233, ptr %1231, align 2, !tbaa !61
  %1234 = icmp slt i32 %1208, %1184
  br i1 %1234, label %1243, label %1235

1235:                                             ; preds = %1229
  %1236 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1208, i32 %1184), !nosanitize !30
  %1237 = extractvalue { i32, i1 } %1236, 1, !nosanitize !30
  br i1 %1237, label %.loopexit309, label %1238, !prof !32, !nosanitize !30

.loopexit309:                                     ; preds = %1235, %1301, %1293, %1327, %1332, %1280
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

1238:                                             ; preds = %1235
  %1239 = extractvalue { i32, i1 } %1236, 0, !nosanitize !30
  %1240 = sext i32 %1239 to i64
  %1241 = getelementptr inbounds [4 x i8], ptr %1182, i64 %1240
  %1242 = load i32, ptr %1241, align 4, !tbaa !49
  br label %1243

1243:                                             ; preds = %1238, %1229
  %1244 = phi i32 [ %1242, %1238 ], [ 0, %1229 ]
  %1245 = load i16, ptr %1210, align 2, !tbaa !28
  %1246 = zext i16 %1245 to i64
  %1247 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1225, i32 %1244), !nosanitize !30
  %1248 = extractvalue { i32, i1 } %1247, 1, !nosanitize !30
  br i1 %1248, label %.loopexit319, label %1249, !prof !32, !nosanitize !30

1249:                                             ; preds = %1243
  %1250 = extractvalue { i32, i1 } %1247, 0, !nosanitize !30
  %1251 = zext i32 %1250 to i64
  %1252 = mul nuw nsw i64 %1251, %1246
  %1253 = load i64, ptr %1200, align 8, !tbaa !51
  %1254 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1253, i64 %1252), !nosanitize !30
  %1255 = extractvalue { i64, i1 } %1254, 1, !nosanitize !30
  br i1 %1255, label %1256, label %1257, !prof !32, !nosanitize !30

1256:                                             ; preds = %1259, %1249
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

1257:                                             ; preds = %1249
  %1258 = extractvalue { i64, i1 } %1254, 0, !nosanitize !30
  store i64 %1258, ptr %1200, align 8, !tbaa !51
  br i1 %1201, label %1274, label %1259

1259:                                             ; preds = %1257
  %.split254 = getelementptr inbounds [4 x i8], ptr %1180, i64 %1209
  %1260 = getelementptr inbounds nuw i8, ptr %.split254, i64 2
  %1261 = load i16, ptr %1260, align 2, !tbaa !28
  %1262 = zext i16 %1261 to i32
  %1263 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1262, i32 %1244), !nosanitize !30
  %1264 = extractvalue { i32, i1 } %1263, 1, !nosanitize !30
  br i1 %1264, label %1256, label %1265, !prof !32, !nosanitize !30

1265:                                             ; preds = %1259
  %1266 = extractvalue { i32, i1 } %1263, 0, !nosanitize !30
  %1267 = zext i32 %1266 to i64
  %1268 = mul nuw nsw i64 %1267, %1246
  %1269 = load i64, ptr %1202, align 8, !tbaa !52
  %1270 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1269, i64 %1268), !nosanitize !30
  %1271 = extractvalue { i64, i1 } %1270, 1, !nosanitize !30
  br i1 %1271, label %.loopexit317, label %1272, !prof !32, !nosanitize !30

.loopexit317:                                     ; preds = %1265, %1296
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

1272:                                             ; preds = %1265
  %1273 = extractvalue { i64, i1 } %1270, 0, !nosanitize !30
  store i64 %1273, ptr %1202, align 8, !tbaa !52
  br label %1274

1274:                                             ; preds = %1272, %1257, %1224
  %1275 = add nsw i64 %1205, 1
  %1276 = and i64 %1275, 4294967295
  %1277 = icmp eq i64 %1276, 573
  br i1 %1277, label %1278, label %1204, !llvm.loop !62

1278:                                             ; preds = %1274
  %1279 = icmp eq i32 %1226, 0
  br i1 %1279, label %.loopexit314, label %1280

1280:                                             ; preds = %1278
  %1281 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1186, i32 -1)
  %1282 = extractvalue { i32, i1 } %1281, 1, !nosanitize !30
  %1283 = sext i32 %1186 to i64
  %1284 = getelementptr inbounds [2 x i8], ptr %512, i64 %1283
  br i1 %1282, label %.loopexit309, label %.preheader316, !prof !32, !nosanitize !30

.preheader316:                                    ; preds = %1280, %1311
  %1285 = phi i32 [ %1312, %1311 ], [ %1226, %1280 ]
  br label %1286

1286:                                             ; preds = %1293, %.preheader316
  %1287 = phi { i32, i1 } [ %1294, %1293 ], [ %1281, %.preheader316 ]
  %1288 = extractvalue { i32, i1 } %1287, 0
  %1289 = sext i32 %1288 to i64
  %1290 = getelementptr inbounds [2 x i8], ptr %512, i64 %1289
  %1291 = load i16, ptr %1290, align 2, !tbaa !61
  %1292 = icmp eq i16 %1291, 0
  br i1 %1292, label %1293, label %1296

1293:                                             ; preds = %1286
  %1294 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1288, i32 -1)
  %1295 = extractvalue { i32, i1 } %1294, 1, !nosanitize !30
  br i1 %1295, label %.loopexit309, label %1286, !prof !32, !llvm.loop !63, !nosanitize !30

1296:                                             ; preds = %1286
  %1297 = getelementptr inbounds [2 x i8], ptr %512, i64 %1289
  %1298 = add i16 %1291, -1
  store i16 %1298, ptr %1297, align 2, !tbaa !61
  %1299 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1288, i32 1), !nosanitize !30
  %1300 = extractvalue { i32, i1 } %1299, 1, !nosanitize !30
  br i1 %1300, label %.loopexit317, label %1301, !prof !32, !nosanitize !30

1301:                                             ; preds = %1296
  %1302 = extractvalue { i32, i1 } %1299, 0, !nosanitize !30
  %1303 = sext i32 %1302 to i64
  %1304 = getelementptr inbounds [2 x i8], ptr %512, i64 %1303
  %1305 = load i16, ptr %1304, align 2, !tbaa !61
  %1306 = add i16 %1305, 2
  store i16 %1306, ptr %1304, align 2, !tbaa !61
  %1307 = load i16, ptr %1284, align 2, !tbaa !61
  %1308 = add i16 %1307, -1
  store i16 %1308, ptr %1284, align 2, !tbaa !61
  %1309 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1285, i32 -2)
  %1310 = extractvalue { i32, i1 } %1309, 1, !nosanitize !30
  br i1 %1310, label %.loopexit309, label %1311, !prof !32, !nosanitize !30

1311:                                             ; preds = %1301
  %1312 = extractvalue { i32, i1 } %1309, 0, !nosanitize !30
  %1313 = icmp sgt i32 %1312, 0
  br i1 %1313, label %.preheader316, label %1314, !llvm.loop !64

1314:                                             ; preds = %1311
  %1315 = icmp eq i32 %1186, 0
  br i1 %1315, label %.loopexit314, label %.preheader312

.preheader312:                                    ; preds = %1314, %1369
  %1316 = phi i64 [ %1370, %1369 ], [ %1283, %1314 ]
  %1317 = phi i32 [ %1324, %1369 ], [ 573, %1314 ]
  %1318 = getelementptr inbounds [2 x i8], ptr %512, i64 %1316
  %1319 = load i16, ptr %1318, align 2, !tbaa !61
  %1320 = icmp eq i16 %1319, 0
  br i1 %1320, label %.loopexit311, label %1321

1321:                                             ; preds = %.preheader312
  %1322 = zext i16 %1319 to i32
  %1323 = trunc i64 %1316 to i16
  br label %1327

.loopexit311:                                     ; preds = %1366, %.preheader312
  %1324 = phi i32 [ %1317, %.preheader312 ], [ %1336, %1366 ]
  %1325 = and i64 %1316, 4294967295
  %1326 = icmp eq i64 %1325, 2147483648
  br i1 %1326, label %.loopexit310, label %1369, !prof !32, !nosanitize !30

1327:                                             ; preds = %1366, %1321
  %1328 = phi i32 [ %1317, %1321 ], [ %1336, %1366 ]
  %1329 = phi i32 [ %1322, %1321 ], [ %1367, %1366 ]
  %1330 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1328, i32 -1)
  %1331 = extractvalue { i32, i1 } %1330, 1, !nosanitize !30
  br i1 %1331, label %.loopexit309, label %.lr.ph1039, !prof !65, !nosanitize !30

1332:                                             ; preds = %.lr.ph1039
  %1333 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1336, i32 -1)
  %1334 = extractvalue { i32, i1 } %1333, 1, !nosanitize !30
  br i1 %1334, label %.loopexit309, label %.lr.ph1039, !prof !66, !llvm.loop !67, !nosanitize !30

.lr.ph1039:                                       ; preds = %1327, %1332
  %1335 = phi { i32, i1 } [ %1333, %1332 ], [ %1330, %1327 ]
  %1336 = extractvalue { i32, i1 } %1335, 0, !nosanitize !30
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds [4 x i8], ptr %238, i64 %1337
  %1339 = load i32, ptr %1338, align 4, !tbaa !49
  %1340 = icmp sgt i32 %1339, %1178
  br i1 %1340, label %1332, label %1341, !llvm.loop !67

1341:                                             ; preds = %.lr.ph1039
  %1342 = sext i32 %1339 to i64
  %1343 = getelementptr inbounds [4 x i8], ptr %1177, i64 %1342
  %1344 = getelementptr inbounds nuw i8, ptr %1343, i64 2
  %1345 = load i16, ptr %1344, align 2, !tbaa !28
  %1346 = zext i16 %1345 to i64
  %1347 = icmp eq i64 %1316, %1346
  br i1 %1347, label %1366, label %1348

1348:                                             ; preds = %1341
  %1349 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1316, i64 %1346), !nosanitize !30
  %1350 = extractvalue { i64, i1 } %1349, 1, !nosanitize !30
  br i1 %1350, label %.loopexit310, label %1351, !prof !32, !nosanitize !30

.loopexit310:                                     ; preds = %.loopexit311, %1348
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

1351:                                             ; preds = %1348
  %1352 = extractvalue { i64, i1 } %1349, 0, !nosanitize !30
  %1353 = load i16, ptr %1343, align 2, !tbaa !28
  %1354 = zext i16 %1353 to i64
  %1355 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1352, i64 %1354), !nosanitize !30
  %1356 = extractvalue { i64, i1 } %1355, 1, !nosanitize !30
  br i1 %1356, label %1357, label %1358, !prof !32, !nosanitize !30

1357:                                             ; preds = %1351
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !30
  unreachable, !nosanitize !30

1358:                                             ; preds = %1351
  %1359 = extractvalue { i64, i1 } %1355, 0, !nosanitize !30
  %1360 = load i64, ptr %1200, align 8, !tbaa !51
  %1361 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1360, i64 %1359), !nosanitize !30
  %1362 = extractvalue { i64, i1 } %1361, 1, !nosanitize !30
  br i1 %1362, label %1363, label %1364, !prof !32, !nosanitize !30

1363:                                             ; preds = %1358
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

1364:                                             ; preds = %1358
  %1365 = extractvalue { i64, i1 } %1361, 0, !nosanitize !30
  store i64 %1365, ptr %1200, align 8, !tbaa !51
  store i16 %1323, ptr %1344, align 2, !tbaa !28
  br label %1366

1366:                                             ; preds = %1364, %1341
  %1367 = add nsw i32 %1329, -1
  %1368 = icmp eq i32 %1367, 0
  br i1 %1368, label %.loopexit311, label %1327, !llvm.loop !67

1369:                                             ; preds = %.loopexit311
  %1370 = add nsw i64 %1316, -1
  %1371 = and i64 %1370, 4294967295
  %1372 = icmp eq i64 %1371, 0
  br i1 %1372, label %.loopexit314, label %.preheader312, !llvm.loop !68

.loopexit314:                                     ; preds = %1369, %1314, %1278, %1196
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %1373 = load i16, ptr %512, align 2, !tbaa !61
  %1374 = zext i16 %1373 to i32
  %1375 = shl nuw nsw i32 %1374, 1
  %1376 = trunc i32 %1375 to i16
  %1377 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1376, ptr %1377, align 2, !tbaa !61
  %1378 = load i16, ptr %704, align 2, !tbaa !61
  %1379 = zext i16 %1378 to i32
  %1380 = add nuw nsw i32 %1375, %1379
  %1381 = shl nuw nsw i32 %1380, 1
  %1382 = trunc i32 %1381 to i16
  %1383 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1382, ptr %1383, align 4, !tbaa !61
  %1384 = load i16, ptr %711, align 2, !tbaa !61
  %1385 = zext i16 %1384 to i32
  %1386 = add nuw nsw i32 %1381, %1385
  %1387 = shl nuw nsw i32 %1386, 1
  %1388 = trunc i32 %1387 to i16
  %1389 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1388, ptr %1389, align 2, !tbaa !61
  %1390 = load i16, ptr %718, align 2, !tbaa !61
  %1391 = zext i16 %1390 to i32
  %1392 = add nuw nsw i32 %1387, %1391
  %1393 = shl nuw nsw i32 %1392, 1
  %1394 = trunc i32 %1393 to i16
  %1395 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1394, ptr %1395, align 8, !tbaa !61
  %1396 = load i16, ptr %725, align 2, !tbaa !61
  %1397 = zext i16 %1396 to i32
  %1398 = add nuw nsw i32 %1393, %1397
  %1399 = shl nuw nsw i32 %1398, 1
  %1400 = trunc i32 %1399 to i16
  %1401 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1400, ptr %1401, align 2, !tbaa !61
  %1402 = load i16, ptr %732, align 2, !tbaa !61
  %1403 = zext i16 %1402 to i32
  %1404 = add nuw nsw i32 %1399, %1403
  %1405 = shl nuw nsw i32 %1404, 1
  %1406 = trunc i32 %1405 to i16
  %1407 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1406, ptr %1407, align 4, !tbaa !61
  %1408 = load i16, ptr %739, align 2, !tbaa !61
  %1409 = zext i16 %1408 to i32
  %1410 = add nuw nsw i32 %1405, %1409
  %1411 = shl nuw nsw i32 %1410, 1
  %1412 = trunc i32 %1411 to i16
  %1413 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1412, ptr %1413, align 2, !tbaa !61
  %1414 = load i16, ptr %746, align 2, !tbaa !61
  %1415 = trunc i32 %1411 to i16
  %.tr811 = add i16 %1414, %1415
  %1416 = shl i16 %.tr811, 1
  %1417 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1416, ptr %1417, align 16, !tbaa !61
  %1418 = load i16, ptr %751, align 2, !tbaa !61
  %.tr262 = add i16 %1418, %1416
  %1419 = shl i16 %.tr262, 1
  %1420 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1419, ptr %1420, align 2, !tbaa !61
  %1421 = load i16, ptr %755, align 2, !tbaa !61
  %.tr255 = add i16 %1419, %1421
  %1422 = shl i16 %.tr255, 1
  %1423 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1422, ptr %1423, align 4, !tbaa !61
  %1424 = load i16, ptr %759, align 2, !tbaa !61
  %1425 = add i16 %1422, %1424
  %1426 = shl i16 %1425, 1
  %1427 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1426, ptr %1427, align 2, !tbaa !61
  %1428 = load i16, ptr %764, align 2, !tbaa !61
  %1429 = add i16 %1426, %1428
  %1430 = shl i16 %1429, 1
  %1431 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1430, ptr %1431, align 8, !tbaa !61
  %1432 = load i16, ptr %769, align 2, !tbaa !61
  %1433 = add i16 %1430, %1432
  %1434 = shl i16 %1433, 1
  %1435 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1434, ptr %1435, align 2, !tbaa !61
  %1436 = load i16, ptr %774, align 2, !tbaa !61
  %1437 = add i16 %1434, %1436
  %1438 = shl i16 %1437, 1
  %1439 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1438, ptr %1439, align 4, !tbaa !61
  %1440 = load i16, ptr %779, align 2, !tbaa !61
  %1441 = add i16 %1438, %1440
  %1442 = shl i16 %1441, 1
  %1443 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1442, ptr %1443, align 2, !tbaa !61
  %1444 = icmp slt i32 %913, 0
  br i1 %1444, label %.loopexit308, label %.preheader307

1445:                                             ; preds = %1495
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

.preheader307:                                    ; preds = %.loopexit314, %1497
  %1446 = phi i64 [ %1498, %1497 ], [ 0, %.loopexit314 ]
  %1447 = getelementptr inbounds nuw [4 x i8], ptr %842, i64 %1446
  %1448 = getelementptr inbounds nuw i8, ptr %1447, i64 2
  %1449 = load i16, ptr %1448, align 2, !tbaa !28
  %1450 = icmp eq i16 %1449, 0
  br i1 %1450, label %1495, label %1451

1451:                                             ; preds = %.preheader307
  %1452 = zext i16 %1449 to i32
  %1453 = zext i16 %1449 to i64
  %1454 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %1453
  %1455 = load i16, ptr %1454, align 2, !tbaa !61
  %1456 = add i16 %1455, 1
  store i16 %1456, ptr %1454, align 2, !tbaa !61
  %1457 = and i32 %1452, 3
  %1458 = icmp ult i16 %1449, 4
  br i1 %1458, label %.loopexit306, label %1459

1459:                                             ; preds = %1451
  %1460 = and i32 %1452, 65532
  br label %1461

1461:                                             ; preds = %1461, %1459
  %1462 = phi i16 [ %1455, %1459 ], [ %1478, %1461 ]
  %1463 = phi i16 [ 0, %1459 ], [ %1477, %1461 ]
  %1464 = phi i32 [ 0, %1459 ], [ %1479, %1461 ]
  %1465 = and i16 %1462, 1
  %1466 = or disjoint i16 %1463, %1465
  %1467 = lshr i16 %1462, 2
  %1468 = shl i16 %1466, 2
  %1469 = and i16 %1462, 2
  %1470 = or disjoint i16 %1468, %1469
  %1471 = and i16 %1467, 1
  %1472 = or disjoint i16 %1470, %1471
  %1473 = shl i16 %1472, 1
  %1474 = lshr i16 %1462, 3
  %1475 = and i16 %1474, 1
  %1476 = or disjoint i16 %1473, %1475
  %1477 = shl i16 %1476, 1
  %1478 = lshr i16 %1462, 4
  %1479 = add nuw nsw i32 %1464, 4
  %1480 = icmp eq i32 %1479, %1460
  br i1 %1480, label %.loopexit306, label %1461, !llvm.loop !69

.loopexit306:                                     ; preds = %1461, %1451
  %1481 = phi i16 [ poison, %1451 ], [ %1476, %1461 ]
  %1482 = phi i16 [ %1455, %1451 ], [ %1478, %1461 ]
  %1483 = phi i16 [ 0, %1451 ], [ %1477, %1461 ]
  %1484 = icmp eq i32 %1457, 0
  br i1 %1484, label %.loopexit305, label %.preheader304

.preheader304:                                    ; preds = %.loopexit306, %.preheader304
  %1485 = phi i16 [ %1491, %.preheader304 ], [ %1482, %.loopexit306 ]
  %1486 = phi i16 [ %1490, %.preheader304 ], [ %1483, %.loopexit306 ]
  %1487 = phi i32 [ %1492, %.preheader304 ], [ 0, %.loopexit306 ]
  %1488 = and i16 %1485, 1
  %1489 = or disjoint i16 %1486, %1488
  %1490 = shl i16 %1489, 1
  %1491 = lshr i16 %1485, 1
  %1492 = add nuw nsw i32 %1487, 1
  %1493 = icmp eq i32 %1492, %1457
  br i1 %1493, label %.loopexit305, label %.preheader304, !llvm.loop !73

.loopexit305:                                     ; preds = %.preheader304, %.loopexit306
  %1494 = phi i16 [ %1481, %.loopexit306 ], [ %1489, %.preheader304 ]
  store i16 %1494, ptr %1447, align 2, !tbaa !28
  br label %1495

1495:                                             ; preds = %.loopexit305, %.preheader307
  %1496 = icmp eq i64 %1446, 2147483647
  br i1 %1496, label %1445, label %1497, !prof !32, !nosanitize !30

1497:                                             ; preds = %1495
  %1498 = add nuw nsw i64 %1446, 1
  %1499 = trunc i64 %1498 to i32
  %1500 = icmp slt i32 %913, %1499
  br i1 %1500, label %.loopexit308, label %.preheader307, !llvm.loop !72

.loopexit308:                                     ; preds = %1497, %.loopexit314
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %1501 = load i32, ptr %237, align 8, !tbaa !74
  %1502 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1501, i32 1), !nosanitize !30
  %1503 = extractvalue { i32, i1 } %1502, 1, !nosanitize !30
  br i1 %1503, label %.loopexit302, label %1504, !prof !32, !nosanitize !30

.loopexit302:                                     ; preds = %1522, %.loopexit308
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

1504:                                             ; preds = %.loopexit308
  %1505 = getelementptr i8, ptr %0, i64 214
  %1506 = load i16, ptr %1505, align 2, !tbaa !28
  %1507 = extractvalue { i32, i1 } %1502, 0, !nosanitize !30
  %1508 = sext i32 %1507 to i64
  %1509 = shl nsw i64 %1508, 2
  %1510 = getelementptr i8, ptr %0, i64 %1509
  %1511 = getelementptr i8, ptr %1510, i64 214
  store i16 -1, ptr %1511, align 2, !tbaa !28
  %1512 = icmp slt i32 %1501, 0
  br i1 %1512, label %.loopexit303, label %1513

1513:                                             ; preds = %1504
  %1514 = zext i16 %1506 to i32
  %1515 = icmp eq i16 %1506, 0
  %1516 = select i1 %1515, i32 138, i32 7
  %1517 = select i1 %1515, i32 3, i32 4
  %1518 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1519 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1520 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1521 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %1526

1522:                                             ; preds = %1575
  %1523 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1527, i32 1), !nosanitize !30
  %1524 = extractvalue { i32, i1 } %1523, 0, !nosanitize !30
  %1525 = extractvalue { i32, i1 } %1523, 1, !nosanitize !30
  br i1 %1525, label %.loopexit302, label %1526, !prof !75, !llvm.loop !76, !nosanitize !30

1526:                                             ; preds = %1513, %1522
  %1527 = phi i32 [ 1, %1513 ], [ %1524, %1522 ]
  %1528 = phi i32 [ -1, %1513 ], [ %1576, %1522 ]
  %1529 = phi i32 [ %1514, %1513 ], [ %1537, %1522 ]
  %1530 = phi i32 [ 0, %1513 ], [ %1577, %1522 ]
  %1531 = phi i32 [ %1516, %1513 ], [ %1578, %1522 ]
  %1532 = phi i32 [ %1517, %1513 ], [ %1579, %1522 ]
  %1533 = sext i32 %1527 to i64
  %1534 = shl nsw i64 %1533, 2
  %1535 = getelementptr i8, ptr %1505, i64 %1534
  %1536 = load i16, ptr %1535, align 2, !tbaa !28
  %1537 = zext i16 %1536 to i32
  %1538 = add nsw i32 %1530, 1
  %1539 = icmp slt i32 %1538, %1531
  %1540 = icmp eq i32 %1529, %1537
  %1541 = select i1 %1539, i1 %1540, i1 false
  br i1 %1541, label %1575, label %1542

1542:                                             ; preds = %1526
  %1543 = icmp slt i32 %1538, %1532
  br i1 %1543, label %1544, label %1550

1544:                                             ; preds = %1542
  %1545 = zext nneg i32 %1529 to i64
  %1546 = getelementptr inbounds nuw [4 x i8], ptr %1518, i64 %1545
  %1547 = load i16, ptr %1546, align 4, !tbaa !28
  %1548 = trunc i32 %1538 to i16
  %1549 = add i16 %1547, %1548
  store i16 %1549, ptr %1546, align 4, !tbaa !28
  br label %1570

1550:                                             ; preds = %1542
  %1551 = icmp eq i32 %1529, 0
  br i1 %1551, label %1562, label %1552

1552:                                             ; preds = %1550
  %1553 = icmp eq i32 %1529, %1528
  br i1 %1553, label %1559, label %1554

1554:                                             ; preds = %1552
  %1555 = zext nneg i32 %1529 to i64
  %1556 = getelementptr inbounds nuw [4 x i8], ptr %1518, i64 %1555
  %1557 = load i16, ptr %1556, align 4, !tbaa !28
  %1558 = add i16 %1557, 1
  store i16 %1558, ptr %1556, align 4, !tbaa !28
  br label %1559

1559:                                             ; preds = %1554, %1552
  %1560 = load i16, ptr %1519, align 4, !tbaa !28
  %1561 = add i16 %1560, 1
  store i16 %1561, ptr %1519, align 4, !tbaa !28
  br label %1570

1562:                                             ; preds = %1550
  %1563 = icmp slt i32 %1530, 10
  br i1 %1563, label %1564, label %1567

1564:                                             ; preds = %1562
  %1565 = load i16, ptr %1521, align 4, !tbaa !28
  %1566 = add i16 %1565, 1
  store i16 %1566, ptr %1521, align 4, !tbaa !28
  br label %1570

1567:                                             ; preds = %1562
  %1568 = load i16, ptr %1520, align 4, !tbaa !28
  %1569 = add i16 %1568, 1
  store i16 %1569, ptr %1520, align 4, !tbaa !28
  br label %1570

1570:                                             ; preds = %1567, %1564, %1559, %1544
  %1571 = icmp eq i16 %1536, 0
  br i1 %1571, label %1575, label %1572

1572:                                             ; preds = %1570
  %1573 = select i1 %1540, i32 6, i32 7
  %1574 = select i1 %1540, i32 3, i32 4
  br label %1575

1575:                                             ; preds = %1572, %1570, %1526
  %1576 = phi i32 [ %1528, %1526 ], [ %1529, %1570 ], [ %1529, %1572 ]
  %1577 = phi i32 [ %1538, %1526 ], [ 0, %1570 ], [ 0, %1572 ]
  %1578 = phi i32 [ %1531, %1526 ], [ 138, %1570 ], [ %1573, %1572 ]
  %1579 = phi i32 [ %1532, %1526 ], [ 3, %1570 ], [ %1574, %1572 ]
  %1580 = icmp sgt i32 %1527, %1501
  br i1 %1580, label %.loopexit303, label %1522, !llvm.loop !76

.loopexit303:                                     ; preds = %1575, %1504
  %1581 = load i32, ptr %915, align 8, !tbaa !77
  %1582 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1581, i32 1), !nosanitize !30
  %1583 = extractvalue { i32, i1 } %1582, 1, !nosanitize !30
  br i1 %1583, label %.loopexit300, label %1584, !prof !32, !nosanitize !30

.loopexit300:                                     ; preds = %1602, %.loopexit303
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

1584:                                             ; preds = %.loopexit303
  %1585 = getelementptr i8, ptr %0, i64 2506
  %1586 = load i16, ptr %1585, align 2, !tbaa !28
  %1587 = extractvalue { i32, i1 } %1582, 0, !nosanitize !30
  %1588 = sext i32 %1587 to i64
  %1589 = shl nsw i64 %1588, 2
  %1590 = getelementptr i8, ptr %0, i64 %1589
  %1591 = getelementptr i8, ptr %1590, i64 2506
  store i16 -1, ptr %1591, align 2, !tbaa !28
  %1592 = icmp slt i32 %1581, 0
  br i1 %1592, label %.loopexit301, label %1593

1593:                                             ; preds = %1584
  %1594 = zext i16 %1586 to i32
  %1595 = icmp eq i16 %1586, 0
  %1596 = select i1 %1595, i32 138, i32 7
  %1597 = select i1 %1595, i32 3, i32 4
  %1598 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1599 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1600 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1601 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %1606

1602:                                             ; preds = %1655
  %1603 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1607, i32 1), !nosanitize !30
  %1604 = extractvalue { i32, i1 } %1603, 0, !nosanitize !30
  %1605 = extractvalue { i32, i1 } %1603, 1, !nosanitize !30
  br i1 %1605, label %.loopexit300, label %1606, !prof !75, !llvm.loop !76, !nosanitize !30

1606:                                             ; preds = %1593, %1602
  %1607 = phi i32 [ 1, %1593 ], [ %1604, %1602 ]
  %1608 = phi i32 [ -1, %1593 ], [ %1656, %1602 ]
  %1609 = phi i32 [ %1594, %1593 ], [ %1617, %1602 ]
  %1610 = phi i32 [ 0, %1593 ], [ %1657, %1602 ]
  %1611 = phi i32 [ %1596, %1593 ], [ %1658, %1602 ]
  %1612 = phi i32 [ %1597, %1593 ], [ %1659, %1602 ]
  %1613 = sext i32 %1607 to i64
  %1614 = shl nsw i64 %1613, 2
  %1615 = getelementptr i8, ptr %1585, i64 %1614
  %1616 = load i16, ptr %1615, align 2, !tbaa !28
  %1617 = zext i16 %1616 to i32
  %1618 = add nsw i32 %1610, 1
  %1619 = icmp slt i32 %1618, %1611
  %1620 = icmp eq i32 %1609, %1617
  %1621 = select i1 %1619, i1 %1620, i1 false
  br i1 %1621, label %1655, label %1622

1622:                                             ; preds = %1606
  %1623 = icmp slt i32 %1618, %1612
  br i1 %1623, label %1624, label %1630

1624:                                             ; preds = %1622
  %1625 = zext nneg i32 %1609 to i64
  %1626 = getelementptr inbounds nuw [4 x i8], ptr %1598, i64 %1625
  %1627 = load i16, ptr %1626, align 4, !tbaa !28
  %1628 = trunc i32 %1618 to i16
  %1629 = add i16 %1627, %1628
  store i16 %1629, ptr %1626, align 4, !tbaa !28
  br label %1650

1630:                                             ; preds = %1622
  %1631 = icmp eq i32 %1609, 0
  br i1 %1631, label %1642, label %1632

1632:                                             ; preds = %1630
  %1633 = icmp eq i32 %1609, %1608
  br i1 %1633, label %1639, label %1634

1634:                                             ; preds = %1632
  %1635 = zext nneg i32 %1609 to i64
  %1636 = getelementptr inbounds nuw [4 x i8], ptr %1598, i64 %1635
  %1637 = load i16, ptr %1636, align 4, !tbaa !28
  %1638 = add i16 %1637, 1
  store i16 %1638, ptr %1636, align 4, !tbaa !28
  br label %1639

1639:                                             ; preds = %1634, %1632
  %1640 = load i16, ptr %1599, align 4, !tbaa !28
  %1641 = add i16 %1640, 1
  store i16 %1641, ptr %1599, align 4, !tbaa !28
  br label %1650

1642:                                             ; preds = %1630
  %1643 = icmp slt i32 %1610, 10
  br i1 %1643, label %1644, label %1647

1644:                                             ; preds = %1642
  %1645 = load i16, ptr %1601, align 4, !tbaa !28
  %1646 = add i16 %1645, 1
  store i16 %1646, ptr %1601, align 4, !tbaa !28
  br label %1650

1647:                                             ; preds = %1642
  %1648 = load i16, ptr %1600, align 4, !tbaa !28
  %1649 = add i16 %1648, 1
  store i16 %1649, ptr %1600, align 4, !tbaa !28
  br label %1650

1650:                                             ; preds = %1647, %1644, %1639, %1624
  %1651 = icmp eq i16 %1616, 0
  br i1 %1651, label %1655, label %1652

1652:                                             ; preds = %1650
  %1653 = select i1 %1620, i32 6, i32 7
  %1654 = select i1 %1620, i32 3, i32 4
  br label %1655

1655:                                             ; preds = %1652, %1650, %1606
  %1656 = phi i32 [ %1608, %1606 ], [ %1609, %1650 ], [ %1609, %1652 ]
  %1657 = phi i32 [ %1618, %1606 ], [ 0, %1650 ], [ 0, %1652 ]
  %1658 = phi i32 [ %1611, %1606 ], [ 138, %1650 ], [ %1653, %1652 ]
  %1659 = phi i32 [ %1612, %1606 ], [ 3, %1650 ], [ %1654, %1652 ]
  %1660 = icmp sgt i32 %1607, %1581
  br i1 %1660, label %.loopexit301, label %1602, !llvm.loop !76

.loopexit301:                                     ; preds = %1655, %1584
  %1661 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %1662 = load ptr, ptr %1661, align 8, !tbaa !41
  %1663 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %1664 = load ptr, ptr %1663, align 8, !tbaa !42
  %1665 = load ptr, ptr %1664, align 8, !tbaa !43
  %1666 = getelementptr inbounds nuw i8, ptr %1664, i64 20
  %1667 = load i32, ptr %1666, align 4, !tbaa !46
  store i32 0, ptr %164, align 4, !tbaa !47
  store i32 573, ptr %165, align 8, !tbaa !48
  %1668 = icmp sgt i32 %1667, 0
  br i1 %1668, label %1669, label %1674

1669:                                             ; preds = %.loopexit301
  %1670 = zext nneg i32 %1667 to i64
  br label %1680

1671:                                             ; preds = %1698
  %1672 = load i32, ptr %164, align 4, !tbaa !47
  %1673 = icmp slt i32 %1672, 2
  br i1 %1673, label %1674, label %.loopexit298

1674:                                             ; preds = %1671, %.loopexit301
  %1675 = phi i32 [ %1699, %1671 ], [ -1, %.loopexit301 ]
  %1676 = phi i32 [ %1672, %1671 ], [ 0, %.loopexit301 ]
  %1677 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1678 = icmp eq ptr %1665, null
  %1679 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1702

1680:                                             ; preds = %1698, %1669
  %1681 = phi i64 [ 0, %1669 ], [ %1700, %1698 ]
  %1682 = phi i32 [ -1, %1669 ], [ %1699, %1698 ]
  %1683 = getelementptr inbounds nuw [4 x i8], ptr %1662, i64 %1681
  %1684 = load i16, ptr %1683, align 2, !tbaa !28
  %1685 = icmp eq i16 %1684, 0
  br i1 %1685, label %1696, label %1686

1686:                                             ; preds = %1680
  %1687 = load i32, ptr %164, align 4, !tbaa !47
  %1688 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1687, i32 1), !nosanitize !30
  %1689 = extractvalue { i32, i1 } %1688, 1, !nosanitize !30
  br i1 %1689, label %.loopexit295, label %1690, !prof !32, !nosanitize !30

.loopexit295:                                     ; preds = %1686, %1899
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

1690:                                             ; preds = %1686
  %1691 = extractvalue { i32, i1 } %1688, 0, !nosanitize !30
  store i32 %1691, ptr %164, align 4, !tbaa !47
  %1692 = sext i32 %1691 to i64
  %1693 = getelementptr inbounds [4 x i8], ptr %238, i64 %1692
  %1694 = trunc nuw nsw i64 %1681 to i32
  store i32 %1694, ptr %1693, align 4, !tbaa !49
  %1695 = getelementptr inbounds nuw i8, ptr %239, i64 %1681
  store i8 0, ptr %1695, align 1, !tbaa !28
  br label %1698

1696:                                             ; preds = %1680
  %1697 = getelementptr inbounds nuw i8, ptr %1683, i64 2
  store i16 0, ptr %1697, align 2, !tbaa !28
  br label %1698

1698:                                             ; preds = %1696, %1690
  %1699 = phi i32 [ %1694, %1690 ], [ %1682, %1696 ]
  %1700 = add nuw nsw i64 %1681, 1
  %1701 = icmp eq i64 %1700, %1670
  br i1 %1701, label %1671, label %1680, !llvm.loop !50

1702:                                             ; preds = %1730, %1674
  %1703 = phi i32 [ %1676, %1674 ], [ %1731, %1730 ]
  %1704 = phi i32 [ %1675, %1674 ], [ %1707, %1730 ]
  %1705 = icmp slt i32 %1704, 2
  %1706 = add i32 %1704, 1
  %1707 = select i1 %1705, i32 %1706, i32 %1704
  %1708 = add nsw i32 %1703, 1
  %1709 = select i1 %1705, i32 %1706, i32 0
  store i32 %1708, ptr %164, align 4, !tbaa !47
  %1710 = sext i32 %1708 to i64
  %1711 = getelementptr inbounds [4 x i8], ptr %238, i64 %1710
  store i32 %1709, ptr %1711, align 4, !tbaa !49
  %1712 = sext i32 %1709 to i64
  %1713 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1712
  store i16 1, ptr %1713, align 2, !tbaa !28
  %1714 = getelementptr inbounds i8, ptr %239, i64 %1712
  store i8 0, ptr %1714, align 1, !tbaa !28
  %1715 = load i64, ptr %1677, align 8, !tbaa !51
  %1716 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1715, i64 1), !nosanitize !30
  %1717 = extractvalue { i64, i1 } %1716, 1, !nosanitize !30
  br i1 %1717, label %1718, label %1719, !prof !32, !nosanitize !30

1718:                                             ; preds = %1702
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

1719:                                             ; preds = %1702
  %1720 = extractvalue { i64, i1 } %1716, 0, !nosanitize !30
  store i64 %1720, ptr %1677, align 8, !tbaa !51
  br i1 %1678, label %1730, label %1721

1721:                                             ; preds = %1719
  %.split256 = getelementptr inbounds [4 x i8], ptr %1665, i64 %1712
  %1722 = getelementptr inbounds nuw i8, ptr %.split256, i64 2
  %1723 = load i16, ptr %1722, align 2, !tbaa !28
  %1724 = zext i16 %1723 to i64
  %1725 = load i64, ptr %1679, align 8, !tbaa !52
  %1726 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1725, i64 %1724), !nosanitize !30
  %1727 = extractvalue { i64, i1 } %1726, 1, !nosanitize !30
  br i1 %1727, label %.loopexit294, label %1728, !prof !32, !nosanitize !30

.loopexit294:                                     ; preds = %1721, %1892, %1885, %1812, %1988
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

1728:                                             ; preds = %1721
  %1729 = extractvalue { i64, i1 } %1726, 0, !nosanitize !30
  store i64 %1729, ptr %1679, align 8, !tbaa !52
  br label %1730

1730:                                             ; preds = %1728, %1719
  %1731 = load i32, ptr %164, align 4, !tbaa !47
  %1732 = icmp slt i32 %1731, 2
  br i1 %1732, label %1702, label %.loopexit298, !llvm.loop !53

.loopexit298:                                     ; preds = %1730, %1671
  %1733 = phi i32 [ %1699, %1671 ], [ %1707, %1730 ]
  %1734 = phi i32 [ %1672, %1671 ], [ %1731, %1730 ]
  %1735 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %1733, ptr %1735, align 8, !tbaa !54
  %1736 = lshr i32 %1734, 1
  %1737 = zext nneg i32 %1736 to i64
  br label %1741

1738:                                             ; preds = %.loopexit296
  %1739 = load i32, ptr %164, align 4, !tbaa !47
  %1740 = sext i32 %1667 to i64
  br label %1812

1741:                                             ; preds = %.loopexit296, %.loopexit298
  %1742 = phi i64 [ %1737, %.loopexit298 ], [ %1810, %.loopexit296 ]
  %1743 = getelementptr inbounds nuw [4 x i8], ptr %238, i64 %1742
  %1744 = load i32, ptr %1743, align 4, !tbaa !49
  %1745 = sext i32 %1744 to i64
  %1746 = getelementptr inbounds i8, ptr %239, i64 %1745
  %1747 = load i32, ptr %164, align 4, !tbaa !47
  %1748 = trunc i64 %1742 to i32
  %1749 = shl i32 %1748, 1
  %1750 = icmp sgt i32 %1749, %1747
  br i1 %1750, label %.loopexit296, label %1751

1751:                                             ; preds = %1741
  %1752 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1745
  br label %1753

1753:                                             ; preds = %1801, %1751
  %1754 = phi i32 [ %1747, %1751 ], [ %1805, %1801 ]
  %1755 = phi i32 [ %1749, %1751 ], [ %1804, %1801 ]
  %1756 = phi i32 [ %1748, %1751 ], [ %1786, %1801 ]
  %1757 = icmp slt i32 %1755, %1754
  br i1 %1757, label %1760, label %1758

1758:                                             ; preds = %1753
  %1759 = sext i32 %1755 to i64
  br label %1784

1760:                                             ; preds = %1753
  %1761 = or disjoint i32 %1755, 1
  %1762 = sext i32 %1761 to i64
  %1763 = getelementptr inbounds [4 x i8], ptr %238, i64 %1762
  %1764 = load i32, ptr %1763, align 4, !tbaa !49
  %1765 = sext i32 %1764 to i64
  %1766 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1765
  %1767 = load i16, ptr %1766, align 2, !tbaa !28
  %1768 = sext i32 %1755 to i64
  %1769 = getelementptr inbounds [4 x i8], ptr %238, i64 %1768
  %1770 = load i32, ptr %1769, align 4, !tbaa !49
  %1771 = sext i32 %1770 to i64
  %1772 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1771
  %1773 = load i16, ptr %1772, align 2, !tbaa !28
  %1774 = icmp ult i16 %1767, %1773
  br i1 %1774, label %1783, label %1775

1775:                                             ; preds = %1760
  %1776 = icmp eq i16 %1767, %1773
  br i1 %1776, label %1777, label %1784

1777:                                             ; preds = %1775
  %1778 = getelementptr inbounds i8, ptr %239, i64 %1765
  %1779 = load i8, ptr %1778, align 1, !tbaa !28
  %1780 = getelementptr inbounds i8, ptr %239, i64 %1771
  %1781 = load i8, ptr %1780, align 1, !tbaa !28
  %1782 = icmp ugt i8 %1779, %1781
  br i1 %1782, label %1784, label %1783

1783:                                             ; preds = %1777, %1760
  br label %1784

1784:                                             ; preds = %1783, %1777, %1775, %1758
  %1785 = phi i64 [ %1759, %1758 ], [ %1762, %1783 ], [ %1768, %1777 ], [ %1768, %1775 ]
  %1786 = phi i32 [ %1755, %1758 ], [ %1761, %1783 ], [ %1755, %1777 ], [ %1755, %1775 ]
  %1787 = load i16, ptr %1752, align 2, !tbaa !28
  %1788 = getelementptr inbounds [4 x i8], ptr %238, i64 %1785
  %1789 = load i32, ptr %1788, align 4, !tbaa !49
  %1790 = sext i32 %1789 to i64
  %1791 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1790
  %1792 = load i16, ptr %1791, align 2, !tbaa !28
  %1793 = icmp ult i16 %1787, %1792
  br i1 %1793, label %.loopexit296, label %1794

1794:                                             ; preds = %1784
  %1795 = icmp eq i16 %1787, %1792
  br i1 %1795, label %1796, label %1801

1796:                                             ; preds = %1794
  %1797 = load i8, ptr %1746, align 1, !tbaa !28
  %1798 = getelementptr inbounds i8, ptr %239, i64 %1790
  %1799 = load i8, ptr %1798, align 1, !tbaa !28
  %1800 = icmp ugt i8 %1797, %1799
  br i1 %1800, label %1801, label %.loopexit296

1801:                                             ; preds = %1796, %1794
  %1802 = sext i32 %1756 to i64
  %1803 = getelementptr inbounds [4 x i8], ptr %238, i64 %1802
  store i32 %1789, ptr %1803, align 4, !tbaa !49
  %1804 = shl i32 %1786, 1
  %1805 = load i32, ptr %164, align 4, !tbaa !47
  %1806 = icmp sgt i32 %1804, %1805
  br i1 %1806, label %.loopexit296, label %1753, !llvm.loop !55

.loopexit296:                                     ; preds = %1801, %1796, %1784, %1741
  %1807 = phi i32 [ %1748, %1741 ], [ %1756, %1784 ], [ %1756, %1796 ], [ %1786, %1801 ]
  %1808 = sext i32 %1807 to i64
  %1809 = getelementptr inbounds [4 x i8], ptr %238, i64 %1808
  store i32 %1744, ptr %1809, align 4, !tbaa !49
  %1810 = add nsw i64 %1742, -1
  %1811 = icmp sgt i64 %1742, 1
  br i1 %1811, label %1741, label %1738, !llvm.loop !56

1812:                                             ; preds = %1983, %1738
  %1813 = phi i32 [ %1739, %1738 ], [ %1986, %1983 ]
  %1814 = phi i64 [ %1740, %1738 ], [ %1924, %1983 ]
  %1815 = load i32, ptr %244, align 4, !tbaa !49
  %1816 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1813, i32 -1)
  %1817 = extractvalue { i32, i1 } %1816, 1, !nosanitize !30
  br i1 %1817, label %.loopexit294, label %1818, !prof !32, !nosanitize !30

1818:                                             ; preds = %1812
  %1819 = extractvalue { i32, i1 } %1816, 0, !nosanitize !30
  store i32 %1819, ptr %164, align 4, !tbaa !47
  %1820 = sext i32 %1813 to i64
  %1821 = getelementptr inbounds [4 x i8], ptr %238, i64 %1820
  %1822 = load i32, ptr %1821, align 4, !tbaa !49
  store i32 %1822, ptr %244, align 4, !tbaa !49
  %1823 = sext i32 %1822 to i64
  %1824 = getelementptr inbounds i8, ptr %239, i64 %1823
  %1825 = icmp slt i32 %1819, 2
  br i1 %1825, label %1885, label %1826

1826:                                             ; preds = %1818
  %1827 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1823
  br label %1828

1828:                                             ; preds = %1876, %1826
  %1829 = phi i32 [ %1819, %1826 ], [ %1880, %1876 ]
  %1830 = phi i32 [ 2, %1826 ], [ %1879, %1876 ]
  %1831 = phi i32 [ 1, %1826 ], [ %1861, %1876 ]
  %1832 = icmp slt i32 %1830, %1829
  br i1 %1832, label %1835, label %1833

1833:                                             ; preds = %1828
  %1834 = sext i32 %1830 to i64
  br label %1859

1835:                                             ; preds = %1828
  %1836 = or disjoint i32 %1830, 1
  %1837 = sext i32 %1836 to i64
  %1838 = getelementptr inbounds [4 x i8], ptr %238, i64 %1837
  %1839 = load i32, ptr %1838, align 4, !tbaa !49
  %1840 = sext i32 %1839 to i64
  %1841 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1840
  %1842 = load i16, ptr %1841, align 2, !tbaa !28
  %1843 = sext i32 %1830 to i64
  %1844 = getelementptr inbounds [4 x i8], ptr %238, i64 %1843
  %1845 = load i32, ptr %1844, align 4, !tbaa !49
  %1846 = sext i32 %1845 to i64
  %1847 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1846
  %1848 = load i16, ptr %1847, align 2, !tbaa !28
  %1849 = icmp ult i16 %1842, %1848
  br i1 %1849, label %1858, label %1850

1850:                                             ; preds = %1835
  %1851 = icmp eq i16 %1842, %1848
  br i1 %1851, label %1852, label %1859

1852:                                             ; preds = %1850
  %1853 = getelementptr inbounds i8, ptr %239, i64 %1840
  %1854 = load i8, ptr %1853, align 1, !tbaa !28
  %1855 = getelementptr inbounds i8, ptr %239, i64 %1846
  %1856 = load i8, ptr %1855, align 1, !tbaa !28
  %1857 = icmp ugt i8 %1854, %1856
  br i1 %1857, label %1859, label %1858

1858:                                             ; preds = %1852, %1835
  br label %1859

1859:                                             ; preds = %1858, %1852, %1850, %1833
  %1860 = phi i64 [ %1834, %1833 ], [ %1837, %1858 ], [ %1843, %1852 ], [ %1843, %1850 ]
  %1861 = phi i32 [ %1830, %1833 ], [ %1836, %1858 ], [ %1830, %1852 ], [ %1830, %1850 ]
  %1862 = load i16, ptr %1827, align 2, !tbaa !28
  %1863 = getelementptr inbounds [4 x i8], ptr %238, i64 %1860
  %1864 = load i32, ptr %1863, align 4, !tbaa !49
  %1865 = sext i32 %1864 to i64
  %1866 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1865
  %1867 = load i16, ptr %1866, align 2, !tbaa !28
  %1868 = icmp ult i16 %1862, %1867
  br i1 %1868, label %1882, label %1869

1869:                                             ; preds = %1859
  %1870 = icmp eq i16 %1862, %1867
  br i1 %1870, label %1871, label %1876

1871:                                             ; preds = %1869
  %1872 = load i8, ptr %1824, align 1, !tbaa !28
  %1873 = getelementptr inbounds i8, ptr %239, i64 %1865
  %1874 = load i8, ptr %1873, align 1, !tbaa !28
  %1875 = icmp ugt i8 %1872, %1874
  br i1 %1875, label %1876, label %1882

1876:                                             ; preds = %1871, %1869
  %1877 = sext i32 %1831 to i64
  %1878 = getelementptr inbounds [4 x i8], ptr %238, i64 %1877
  store i32 %1864, ptr %1878, align 4, !tbaa !49
  %1879 = shl i32 %1861, 1
  %1880 = load i32, ptr %164, align 4, !tbaa !47
  %1881 = icmp sgt i32 %1879, %1880
  br i1 %1881, label %1882, label %1828, !llvm.loop !55

1882:                                             ; preds = %1876, %1871, %1859
  %1883 = phi i32 [ %1831, %1859 ], [ %1831, %1871 ], [ %1861, %1876 ]
  %1884 = sext i32 %1883 to i64
  br label %1885

1885:                                             ; preds = %1882, %1818
  %1886 = phi i64 [ 1, %1818 ], [ %1884, %1882 ]
  %1887 = getelementptr inbounds [4 x i8], ptr %238, i64 %1886
  store i32 %1822, ptr %1887, align 4, !tbaa !49
  %1888 = load i32, ptr %244, align 4, !tbaa !49
  %1889 = load i32, ptr %165, align 8, !tbaa !48
  %1890 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1889, i32 -1)
  %1891 = extractvalue { i32, i1 } %1890, 1, !nosanitize !30
  br i1 %1891, label %.loopexit294, label %1892, !prof !32, !nosanitize !30

1892:                                             ; preds = %1885
  %1893 = extractvalue { i32, i1 } %1890, 0, !nosanitize !30
  store i32 %1893, ptr %165, align 8, !tbaa !48
  %1894 = sext i32 %1893 to i64
  %1895 = getelementptr inbounds [4 x i8], ptr %238, i64 %1894
  store i32 %1815, ptr %1895, align 4, !tbaa !49
  %1896 = load i32, ptr %165, align 8, !tbaa !48
  %1897 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1896, i32 -1)
  %1898 = extractvalue { i32, i1 } %1897, 1, !nosanitize !30
  br i1 %1898, label %.loopexit294, label %1899, !prof !32, !nosanitize !30

1899:                                             ; preds = %1892
  %1900 = extractvalue { i32, i1 } %1897, 0, !nosanitize !30
  store i32 %1900, ptr %165, align 8, !tbaa !48
  %1901 = sext i32 %1900 to i64
  %1902 = getelementptr inbounds [4 x i8], ptr %238, i64 %1901
  store i32 %1888, ptr %1902, align 4, !tbaa !49
  %1903 = sext i32 %1815 to i64
  %1904 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1903
  %1905 = load i16, ptr %1904, align 2, !tbaa !28
  %1906 = sext i32 %1888 to i64
  %1907 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1906
  %1908 = load i16, ptr %1907, align 2, !tbaa !28
  %1909 = add i16 %1908, %1905
  %1910 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1814
  store i16 %1909, ptr %1910, align 2, !tbaa !28
  %1911 = getelementptr inbounds i8, ptr %239, i64 %1903
  %1912 = load i8, ptr %1911, align 1, !tbaa !28
  %1913 = getelementptr inbounds i8, ptr %239, i64 %1906
  %1914 = load i8, ptr %1913, align 1, !tbaa !28
  %1915 = tail call i8 @llvm.umax.i8(i8 %1912, i8 %1914)
  %1916 = add i8 %1915, 1
  %1917 = getelementptr inbounds i8, ptr %239, i64 %1814
  store i8 %1916, ptr %1917, align 1, !tbaa !28
  %1918 = trunc nsw i64 %1814 to i32
  %1919 = trunc i64 %1814 to i16
  %1920 = getelementptr inbounds nuw i8, ptr %1907, i64 2
  store i16 %1919, ptr %1920, align 2, !tbaa !28
  %1921 = getelementptr inbounds nuw i8, ptr %1904, i64 2
  store i16 %1919, ptr %1921, align 2, !tbaa !28
  %1922 = icmp eq i64 %1814, 2147483647
  br i1 %1922, label %.loopexit295, label %1923, !prof !32, !nosanitize !30

1923:                                             ; preds = %1899
  %1924 = add nsw i64 %1814, 1
  store i32 %1918, ptr %244, align 4, !tbaa !49
  %1925 = load i32, ptr %164, align 4, !tbaa !47
  %1926 = icmp slt i32 %1925, 2
  br i1 %1926, label %1983, label %.preheader293

.preheader293:                                    ; preds = %1923, %1974
  %1927 = phi i32 [ %1978, %1974 ], [ %1925, %1923 ]
  %1928 = phi i32 [ %1977, %1974 ], [ 2, %1923 ]
  %1929 = phi i32 [ %1959, %1974 ], [ 1, %1923 ]
  %1930 = icmp slt i32 %1928, %1927
  br i1 %1930, label %1933, label %1931

1931:                                             ; preds = %.preheader293
  %1932 = sext i32 %1928 to i64
  br label %1957

1933:                                             ; preds = %.preheader293
  %1934 = or disjoint i32 %1928, 1
  %1935 = sext i32 %1934 to i64
  %1936 = getelementptr inbounds [4 x i8], ptr %238, i64 %1935
  %1937 = load i32, ptr %1936, align 4, !tbaa !49
  %1938 = sext i32 %1937 to i64
  %1939 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1938
  %1940 = load i16, ptr %1939, align 2, !tbaa !28
  %1941 = sext i32 %1928 to i64
  %1942 = getelementptr inbounds [4 x i8], ptr %238, i64 %1941
  %1943 = load i32, ptr %1942, align 4, !tbaa !49
  %1944 = sext i32 %1943 to i64
  %1945 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1944
  %1946 = load i16, ptr %1945, align 2, !tbaa !28
  %1947 = icmp ult i16 %1940, %1946
  br i1 %1947, label %1956, label %1948

1948:                                             ; preds = %1933
  %1949 = icmp eq i16 %1940, %1946
  br i1 %1949, label %1950, label %1957

1950:                                             ; preds = %1948
  %1951 = getelementptr inbounds i8, ptr %239, i64 %1938
  %1952 = load i8, ptr %1951, align 1, !tbaa !28
  %1953 = getelementptr inbounds i8, ptr %239, i64 %1944
  %1954 = load i8, ptr %1953, align 1, !tbaa !28
  %1955 = icmp ugt i8 %1952, %1954
  br i1 %1955, label %1957, label %1956

1956:                                             ; preds = %1950, %1933
  br label %1957

1957:                                             ; preds = %1956, %1950, %1948, %1931
  %1958 = phi i64 [ %1932, %1931 ], [ %1935, %1956 ], [ %1941, %1950 ], [ %1941, %1948 ]
  %1959 = phi i32 [ %1928, %1931 ], [ %1934, %1956 ], [ %1928, %1950 ], [ %1928, %1948 ]
  %1960 = load i16, ptr %1910, align 2, !tbaa !28
  %1961 = getelementptr inbounds [4 x i8], ptr %238, i64 %1958
  %1962 = load i32, ptr %1961, align 4, !tbaa !49
  %1963 = sext i32 %1962 to i64
  %1964 = getelementptr inbounds [4 x i8], ptr %1662, i64 %1963
  %1965 = load i16, ptr %1964, align 2, !tbaa !28
  %1966 = icmp ult i16 %1960, %1965
  br i1 %1966, label %1980, label %1967

1967:                                             ; preds = %1957
  %1968 = icmp eq i16 %1960, %1965
  br i1 %1968, label %1969, label %1974

1969:                                             ; preds = %1967
  %1970 = load i8, ptr %1917, align 1, !tbaa !28
  %1971 = getelementptr inbounds i8, ptr %239, i64 %1963
  %1972 = load i8, ptr %1971, align 1, !tbaa !28
  %1973 = icmp ugt i8 %1970, %1972
  br i1 %1973, label %1974, label %1980

1974:                                             ; preds = %1969, %1967
  %1975 = sext i32 %1929 to i64
  %1976 = getelementptr inbounds [4 x i8], ptr %238, i64 %1975
  store i32 %1962, ptr %1976, align 4, !tbaa !49
  %1977 = shl i32 %1959, 1
  %1978 = load i32, ptr %164, align 4, !tbaa !47
  %1979 = icmp sgt i32 %1977, %1978
  br i1 %1979, label %1980, label %.preheader293, !llvm.loop !55

1980:                                             ; preds = %1974, %1969, %1957
  %1981 = phi i32 [ %1929, %1957 ], [ %1929, %1969 ], [ %1959, %1974 ]
  %1982 = sext i32 %1981 to i64
  br label %1983

1983:                                             ; preds = %1980, %1923
  %1984 = phi i64 [ 1, %1923 ], [ %1982, %1980 ]
  %1985 = getelementptr inbounds [4 x i8], ptr %238, i64 %1984
  store i32 %1918, ptr %1985, align 4, !tbaa !49
  %1986 = load i32, ptr %164, align 4, !tbaa !47
  %1987 = icmp sgt i32 %1986, 1
  br i1 %1987, label %1812, label %1988, !llvm.loop !57

1988:                                             ; preds = %1983
  %1989 = load i32, ptr %165, align 8, !tbaa !48
  %1990 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1989, i32 -1)
  %1991 = extractvalue { i32, i1 } %1990, 1, !nosanitize !30
  br i1 %1991, label %.loopexit294, label %1992, !prof !32, !nosanitize !30

1992:                                             ; preds = %1988
  %1993 = extractvalue { i32, i1 } %1990, 0, !nosanitize !30
  %1994 = load i32, ptr %244, align 4, !tbaa !49
  store i32 %1993, ptr %165, align 8, !tbaa !48
  %1995 = sext i32 %1993 to i64
  %1996 = getelementptr inbounds [4 x i8], ptr %238, i64 %1995
  store i32 %1994, ptr %1996, align 4, !tbaa !49
  %1997 = load ptr, ptr %1661, align 8, !tbaa !41
  %1998 = load i32, ptr %1735, align 8, !tbaa !54
  %1999 = load ptr, ptr %1663, align 8, !tbaa !42
  %2000 = load ptr, ptr %1999, align 8, !tbaa !43
  %2001 = getelementptr inbounds nuw i8, ptr %1999, i64 8
  %2002 = load ptr, ptr %2001, align 8, !tbaa !58
  %2003 = getelementptr inbounds nuw i8, ptr %1999, i64 16
  %2004 = load i32, ptr %2003, align 8, !tbaa !59
  %2005 = getelementptr inbounds nuw i8, ptr %1999, i64 24
  %2006 = load i32, ptr %2005, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %512, i8 0, i64 32, i1 false), !tbaa !61
  %2007 = load i32, ptr %165, align 8, !tbaa !48
  %2008 = sext i32 %2007 to i64
  %2009 = getelementptr inbounds [4 x i8], ptr %238, i64 %2008
  %2010 = load i32, ptr %2009, align 4, !tbaa !49
  %2011 = sext i32 %2010 to i64
  %.split257 = getelementptr inbounds [4 x i8], ptr %1997, i64 %2011
  %2012 = getelementptr inbounds nuw i8, ptr %.split257, i64 2
  store i16 0, ptr %2012, align 2, !tbaa !28
  %2013 = load i32, ptr %165, align 8, !tbaa !48
  %2014 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2013, i32 1), !nosanitize !30
  %2015 = extractvalue { i32, i1 } %2014, 1, !nosanitize !30
  br i1 %2015, label %.loopexit290, label %2016, !prof !32, !nosanitize !30

.loopexit290:                                     ; preds = %2063, %2039, %1992
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

2016:                                             ; preds = %1992
  %2017 = extractvalue { i32, i1 } %2014, 0
  %2018 = icmp slt i32 %2017, 573
  br i1 %2018, label %2019, label %.loopexit285

2019:                                             ; preds = %2016
  %2020 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2021 = icmp eq ptr %2000, null
  %2022 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2023 = sext i32 %2017 to i64
  br label %2024

2024:                                             ; preds = %2094, %2019
  %2025 = phi i64 [ %2023, %2019 ], [ %2095, %2094 ]
  %2026 = phi i32 [ 0, %2019 ], [ %2046, %2094 ]
  %2027 = getelementptr inbounds [4 x i8], ptr %238, i64 %2025
  %2028 = load i32, ptr %2027, align 4, !tbaa !49
  %2029 = sext i32 %2028 to i64
  %2030 = getelementptr inbounds [4 x i8], ptr %1997, i64 %2029
  %2031 = getelementptr inbounds nuw i8, ptr %2030, i64 2
  %2032 = load i16, ptr %2031, align 2, !tbaa !28
  %2033 = zext i16 %2032 to i64
  %.split258 = getelementptr inbounds nuw [4 x i8], ptr %1997, i64 %2033
  %2034 = getelementptr inbounds nuw i8, ptr %.split258, i64 2
  %2035 = load i16, ptr %2034, align 2, !tbaa !28
  %2036 = zext i16 %2035 to i32
  %2037 = add nuw nsw i32 %2036, 1
  %2038 = icmp sgt i32 %2006, %2036
  br i1 %2038, label %2044, label %2039

2039:                                             ; preds = %2024
  %2040 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2026, i32 1), !nosanitize !30
  %2041 = extractvalue { i32, i1 } %2040, 1, !nosanitize !30
  br i1 %2041, label %.loopexit290, label %2042, !prof !32, !nosanitize !30

2042:                                             ; preds = %2039
  %2043 = extractvalue { i32, i1 } %2040, 0, !nosanitize !30
  br label %2044

2044:                                             ; preds = %2042, %2024
  %2045 = phi i32 [ %2006, %2042 ], [ %2037, %2024 ]
  %2046 = phi i32 [ %2043, %2042 ], [ %2026, %2024 ]
  %2047 = trunc i32 %2045 to i16
  store i16 %2047, ptr %2031, align 2, !tbaa !28
  %2048 = icmp sgt i32 %2028, %1998
  br i1 %2048, label %2094, label %2049

2049:                                             ; preds = %2044
  %2050 = sext i32 %2045 to i64
  %2051 = getelementptr inbounds [2 x i8], ptr %512, i64 %2050
  %2052 = load i16, ptr %2051, align 2, !tbaa !61
  %2053 = add i16 %2052, 1
  store i16 %2053, ptr %2051, align 2, !tbaa !61
  %2054 = icmp slt i32 %2028, %2004
  br i1 %2054, label %2063, label %2055

2055:                                             ; preds = %2049
  %2056 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2028, i32 %2004), !nosanitize !30
  %2057 = extractvalue { i32, i1 } %2056, 1, !nosanitize !30
  br i1 %2057, label %.loopexit280, label %2058, !prof !32, !nosanitize !30

.loopexit280:                                     ; preds = %2055, %2121, %2113, %2147, %2152, %2100
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2058:                                             ; preds = %2055
  %2059 = extractvalue { i32, i1 } %2056, 0, !nosanitize !30
  %2060 = sext i32 %2059 to i64
  %2061 = getelementptr inbounds [4 x i8], ptr %2002, i64 %2060
  %2062 = load i32, ptr %2061, align 4, !tbaa !49
  br label %2063

2063:                                             ; preds = %2058, %2049
  %2064 = phi i32 [ %2062, %2058 ], [ 0, %2049 ]
  %2065 = load i16, ptr %2030, align 2, !tbaa !28
  %2066 = zext i16 %2065 to i64
  %2067 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2045, i32 %2064), !nosanitize !30
  %2068 = extractvalue { i32, i1 } %2067, 1, !nosanitize !30
  br i1 %2068, label %.loopexit290, label %2069, !prof !32, !nosanitize !30

2069:                                             ; preds = %2063
  %2070 = extractvalue { i32, i1 } %2067, 0, !nosanitize !30
  %2071 = zext i32 %2070 to i64
  %2072 = mul nuw nsw i64 %2071, %2066
  %2073 = load i64, ptr %2020, align 8, !tbaa !51
  %2074 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2073, i64 %2072), !nosanitize !30
  %2075 = extractvalue { i64, i1 } %2074, 1, !nosanitize !30
  br i1 %2075, label %2076, label %2077, !prof !32, !nosanitize !30

2076:                                             ; preds = %2079, %2069
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2077:                                             ; preds = %2069
  %2078 = extractvalue { i64, i1 } %2074, 0, !nosanitize !30
  store i64 %2078, ptr %2020, align 8, !tbaa !51
  br i1 %2021, label %2094, label %2079

2079:                                             ; preds = %2077
  %.split259 = getelementptr inbounds [4 x i8], ptr %2000, i64 %2029
  %2080 = getelementptr inbounds nuw i8, ptr %.split259, i64 2
  %2081 = load i16, ptr %2080, align 2, !tbaa !28
  %2082 = zext i16 %2081 to i32
  %2083 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2082, i32 %2064), !nosanitize !30
  %2084 = extractvalue { i32, i1 } %2083, 1, !nosanitize !30
  br i1 %2084, label %2076, label %2085, !prof !32, !nosanitize !30

2085:                                             ; preds = %2079
  %2086 = extractvalue { i32, i1 } %2083, 0, !nosanitize !30
  %2087 = zext i32 %2086 to i64
  %2088 = mul nuw nsw i64 %2087, %2066
  %2089 = load i64, ptr %2022, align 8, !tbaa !52
  %2090 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2089, i64 %2088), !nosanitize !30
  %2091 = extractvalue { i64, i1 } %2090, 1, !nosanitize !30
  br i1 %2091, label %.loopexit288, label %2092, !prof !32, !nosanitize !30

.loopexit288:                                     ; preds = %2085, %2116
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2092:                                             ; preds = %2085
  %2093 = extractvalue { i64, i1 } %2090, 0, !nosanitize !30
  store i64 %2093, ptr %2022, align 8, !tbaa !52
  br label %2094

2094:                                             ; preds = %2092, %2077, %2044
  %2095 = add nsw i64 %2025, 1
  %2096 = and i64 %2095, 4294967295
  %2097 = icmp eq i64 %2096, 573
  br i1 %2097, label %2098, label %2024, !llvm.loop !62

2098:                                             ; preds = %2094
  %2099 = icmp eq i32 %2046, 0
  br i1 %2099, label %.loopexit285, label %2100

2100:                                             ; preds = %2098
  %2101 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2006, i32 -1)
  %2102 = extractvalue { i32, i1 } %2101, 1, !nosanitize !30
  %2103 = sext i32 %2006 to i64
  %2104 = getelementptr inbounds [2 x i8], ptr %512, i64 %2103
  br i1 %2102, label %.loopexit280, label %.preheader287, !prof !32, !nosanitize !30

.preheader287:                                    ; preds = %2100, %2131
  %2105 = phi i32 [ %2132, %2131 ], [ %2046, %2100 ]
  br label %2106

2106:                                             ; preds = %2113, %.preheader287
  %2107 = phi { i32, i1 } [ %2114, %2113 ], [ %2101, %.preheader287 ]
  %2108 = extractvalue { i32, i1 } %2107, 0
  %2109 = sext i32 %2108 to i64
  %2110 = getelementptr inbounds [2 x i8], ptr %512, i64 %2109
  %2111 = load i16, ptr %2110, align 2, !tbaa !61
  %2112 = icmp eq i16 %2111, 0
  br i1 %2112, label %2113, label %2116

2113:                                             ; preds = %2106
  %2114 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2108, i32 -1)
  %2115 = extractvalue { i32, i1 } %2114, 1, !nosanitize !30
  br i1 %2115, label %.loopexit280, label %2106, !prof !32, !llvm.loop !63, !nosanitize !30

2116:                                             ; preds = %2106
  %2117 = getelementptr inbounds [2 x i8], ptr %512, i64 %2109
  %2118 = add i16 %2111, -1
  store i16 %2118, ptr %2117, align 2, !tbaa !61
  %2119 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2108, i32 1), !nosanitize !30
  %2120 = extractvalue { i32, i1 } %2119, 1, !nosanitize !30
  br i1 %2120, label %.loopexit288, label %2121, !prof !32, !nosanitize !30

2121:                                             ; preds = %2116
  %2122 = extractvalue { i32, i1 } %2119, 0, !nosanitize !30
  %2123 = sext i32 %2122 to i64
  %2124 = getelementptr inbounds [2 x i8], ptr %512, i64 %2123
  %2125 = load i16, ptr %2124, align 2, !tbaa !61
  %2126 = add i16 %2125, 2
  store i16 %2126, ptr %2124, align 2, !tbaa !61
  %2127 = load i16, ptr %2104, align 2, !tbaa !61
  %2128 = add i16 %2127, -1
  store i16 %2128, ptr %2104, align 2, !tbaa !61
  %2129 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2105, i32 -2)
  %2130 = extractvalue { i32, i1 } %2129, 1, !nosanitize !30
  br i1 %2130, label %.loopexit280, label %2131, !prof !32, !nosanitize !30

2131:                                             ; preds = %2121
  %2132 = extractvalue { i32, i1 } %2129, 0, !nosanitize !30
  %2133 = icmp sgt i32 %2132, 0
  br i1 %2133, label %.preheader287, label %2134, !llvm.loop !64

2134:                                             ; preds = %2131
  %2135 = icmp eq i32 %2006, 0
  br i1 %2135, label %.loopexit285, label %.preheader283

.preheader283:                                    ; preds = %2134, %2189
  %2136 = phi i64 [ %2190, %2189 ], [ %2103, %2134 ]
  %2137 = phi i32 [ %2144, %2189 ], [ 573, %2134 ]
  %2138 = getelementptr inbounds [2 x i8], ptr %512, i64 %2136
  %2139 = load i16, ptr %2138, align 2, !tbaa !61
  %2140 = icmp eq i16 %2139, 0
  br i1 %2140, label %.loopexit282, label %2141

2141:                                             ; preds = %.preheader283
  %2142 = zext i16 %2139 to i32
  %2143 = trunc i64 %2136 to i16
  br label %2147

.loopexit282:                                     ; preds = %2186, %.preheader283
  %2144 = phi i32 [ %2137, %.preheader283 ], [ %2156, %2186 ]
  %2145 = and i64 %2136, 4294967295
  %2146 = icmp eq i64 %2145, 2147483648
  br i1 %2146, label %.loopexit281, label %2189, !prof !32, !nosanitize !30

2147:                                             ; preds = %2186, %2141
  %2148 = phi i32 [ %2137, %2141 ], [ %2156, %2186 ]
  %2149 = phi i32 [ %2142, %2141 ], [ %2187, %2186 ]
  %2150 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2148, i32 -1)
  %2151 = extractvalue { i32, i1 } %2150, 1, !nosanitize !30
  br i1 %2151, label %.loopexit280, label %.lr.ph1041, !prof !65, !nosanitize !30

2152:                                             ; preds = %.lr.ph1041
  %2153 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2156, i32 -1)
  %2154 = extractvalue { i32, i1 } %2153, 1, !nosanitize !30
  br i1 %2154, label %.loopexit280, label %.lr.ph1041, !prof !66, !llvm.loop !67, !nosanitize !30

.lr.ph1041:                                       ; preds = %2147, %2152
  %2155 = phi { i32, i1 } [ %2153, %2152 ], [ %2150, %2147 ]
  %2156 = extractvalue { i32, i1 } %2155, 0, !nosanitize !30
  %2157 = sext i32 %2156 to i64
  %2158 = getelementptr inbounds [4 x i8], ptr %238, i64 %2157
  %2159 = load i32, ptr %2158, align 4, !tbaa !49
  %2160 = icmp sgt i32 %2159, %1998
  br i1 %2160, label %2152, label %2161, !llvm.loop !67

2161:                                             ; preds = %.lr.ph1041
  %2162 = sext i32 %2159 to i64
  %2163 = getelementptr inbounds [4 x i8], ptr %1997, i64 %2162
  %2164 = getelementptr inbounds nuw i8, ptr %2163, i64 2
  %2165 = load i16, ptr %2164, align 2, !tbaa !28
  %2166 = zext i16 %2165 to i64
  %2167 = icmp eq i64 %2136, %2166
  br i1 %2167, label %2186, label %2168

2168:                                             ; preds = %2161
  %2169 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2136, i64 %2166), !nosanitize !30
  %2170 = extractvalue { i64, i1 } %2169, 1, !nosanitize !30
  br i1 %2170, label %.loopexit281, label %2171, !prof !32, !nosanitize !30

.loopexit281:                                     ; preds = %.loopexit282, %2168
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

2171:                                             ; preds = %2168
  %2172 = extractvalue { i64, i1 } %2169, 0, !nosanitize !30
  %2173 = load i16, ptr %2163, align 2, !tbaa !28
  %2174 = zext i16 %2173 to i64
  %2175 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2172, i64 %2174), !nosanitize !30
  %2176 = extractvalue { i64, i1 } %2175, 1, !nosanitize !30
  br i1 %2176, label %2177, label %2178, !prof !32, !nosanitize !30

2177:                                             ; preds = %2171
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !30
  unreachable, !nosanitize !30

2178:                                             ; preds = %2171
  %2179 = extractvalue { i64, i1 } %2175, 0, !nosanitize !30
  %2180 = load i64, ptr %2020, align 8, !tbaa !51
  %2181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2180, i64 %2179), !nosanitize !30
  %2182 = extractvalue { i64, i1 } %2181, 1, !nosanitize !30
  br i1 %2182, label %2183, label %2184, !prof !32, !nosanitize !30

2183:                                             ; preds = %2178
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2184:                                             ; preds = %2178
  %2185 = extractvalue { i64, i1 } %2181, 0, !nosanitize !30
  store i64 %2185, ptr %2020, align 8, !tbaa !51
  store i16 %2143, ptr %2164, align 2, !tbaa !28
  br label %2186

2186:                                             ; preds = %2184, %2161
  %2187 = add nsw i32 %2149, -1
  %2188 = icmp eq i32 %2187, 0
  br i1 %2188, label %.loopexit282, label %2147, !llvm.loop !67

2189:                                             ; preds = %.loopexit282
  %2190 = add nsw i64 %2136, -1
  %2191 = and i64 %2190, 4294967295
  %2192 = icmp eq i64 %2191, 0
  br i1 %2192, label %.loopexit285, label %.preheader283, !llvm.loop !68

.loopexit285:                                     ; preds = %2189, %2134, %2098, %2016
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %2193 = load i16, ptr %512, align 2, !tbaa !61
  %2194 = zext i16 %2193 to i32
  %2195 = shl nuw nsw i32 %2194, 1
  %2196 = trunc i32 %2195 to i16
  %2197 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %2196, ptr %2197, align 2, !tbaa !61
  %2198 = load i16, ptr %704, align 2, !tbaa !61
  %2199 = zext i16 %2198 to i32
  %2200 = add nuw nsw i32 %2195, %2199
  %2201 = shl nuw nsw i32 %2200, 1
  %2202 = trunc i32 %2201 to i16
  %2203 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2202, ptr %2203, align 4, !tbaa !61
  %2204 = load i16, ptr %711, align 2, !tbaa !61
  %2205 = zext i16 %2204 to i32
  %2206 = add nuw nsw i32 %2201, %2205
  %2207 = shl nuw nsw i32 %2206, 1
  %2208 = trunc i32 %2207 to i16
  %2209 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2208, ptr %2209, align 2, !tbaa !61
  %2210 = load i16, ptr %718, align 2, !tbaa !61
  %2211 = zext i16 %2210 to i32
  %2212 = add nuw nsw i32 %2207, %2211
  %2213 = shl nuw nsw i32 %2212, 1
  %2214 = trunc i32 %2213 to i16
  %2215 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %2214, ptr %2215, align 8, !tbaa !61
  %2216 = load i16, ptr %725, align 2, !tbaa !61
  %2217 = zext i16 %2216 to i32
  %2218 = add nuw nsw i32 %2213, %2217
  %2219 = shl nuw nsw i32 %2218, 1
  %2220 = trunc i32 %2219 to i16
  %2221 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %2220, ptr %2221, align 2, !tbaa !61
  %2222 = load i16, ptr %732, align 2, !tbaa !61
  %2223 = trunc i32 %2219 to i16
  %.tr812 = add i16 %2222, %2223
  %2224 = shl i16 %.tr812, 1
  %2225 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %2224, ptr %2225, align 4, !tbaa !61
  %2226 = load i16, ptr %739, align 2, !tbaa !61
  %.tr263 = add i16 %2226, %2224
  %2227 = shl i16 %.tr263, 1
  %2228 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %2227, ptr %2228, align 2, !tbaa !61
  %2229 = load i16, ptr %746, align 2, !tbaa !61
  %.tr260 = add i16 %2227, %2229
  %2230 = shl i16 %.tr260, 1
  %2231 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %2230, ptr %2231, align 16, !tbaa !61
  %2232 = load i16, ptr %751, align 2, !tbaa !61
  %2233 = add i16 %2230, %2232
  %2234 = shl i16 %2233, 1
  %2235 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %2234, ptr %2235, align 2, !tbaa !61
  %2236 = load i16, ptr %755, align 2, !tbaa !61
  %2237 = add i16 %2234, %2236
  %2238 = shl i16 %2237, 1
  %2239 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %2238, ptr %2239, align 4, !tbaa !61
  %2240 = load i16, ptr %759, align 2, !tbaa !61
  %2241 = add i16 %2238, %2240
  %2242 = shl i16 %2241, 1
  %2243 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %2242, ptr %2243, align 2, !tbaa !61
  %2244 = load i16, ptr %764, align 2, !tbaa !61
  %2245 = add i16 %2242, %2244
  %2246 = shl i16 %2245, 1
  %2247 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2246, ptr %2247, align 8, !tbaa !61
  %2248 = load i16, ptr %769, align 2, !tbaa !61
  %2249 = add i16 %2246, %2248
  %2250 = shl i16 %2249, 1
  %2251 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2250, ptr %2251, align 2, !tbaa !61
  %2252 = load i16, ptr %774, align 2, !tbaa !61
  %2253 = add i16 %2250, %2252
  %2254 = shl i16 %2253, 1
  %2255 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2254, ptr %2255, align 4, !tbaa !61
  %2256 = load i16, ptr %779, align 2, !tbaa !61
  %2257 = add i16 %2254, %2256
  %2258 = shl i16 %2257, 1
  %2259 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2258, ptr %2259, align 2, !tbaa !61
  %2260 = icmp slt i32 %1733, 0
  br i1 %2260, label %.loopexit279, label %.preheader278

2261:                                             ; preds = %2311
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

.preheader278:                                    ; preds = %.loopexit285, %2313
  %2262 = phi i64 [ %2314, %2313 ], [ 0, %.loopexit285 ]
  %2263 = getelementptr inbounds nuw [4 x i8], ptr %1662, i64 %2262
  %2264 = getelementptr inbounds nuw i8, ptr %2263, i64 2
  %2265 = load i16, ptr %2264, align 2, !tbaa !28
  %2266 = icmp eq i16 %2265, 0
  br i1 %2266, label %2311, label %2267

2267:                                             ; preds = %.preheader278
  %2268 = zext i16 %2265 to i32
  %2269 = zext i16 %2265 to i64
  %2270 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %2269
  %2271 = load i16, ptr %2270, align 2, !tbaa !61
  %2272 = add i16 %2271, 1
  store i16 %2272, ptr %2270, align 2, !tbaa !61
  %2273 = and i32 %2268, 3
  %2274 = icmp ult i16 %2265, 4
  br i1 %2274, label %.loopexit277, label %2275

2275:                                             ; preds = %2267
  %2276 = and i32 %2268, 65532
  br label %2277

2277:                                             ; preds = %2277, %2275
  %2278 = phi i16 [ %2271, %2275 ], [ %2294, %2277 ]
  %2279 = phi i16 [ 0, %2275 ], [ %2293, %2277 ]
  %2280 = phi i32 [ 0, %2275 ], [ %2295, %2277 ]
  %2281 = and i16 %2278, 1
  %2282 = or disjoint i16 %2279, %2281
  %2283 = lshr i16 %2278, 2
  %2284 = shl i16 %2282, 2
  %2285 = and i16 %2278, 2
  %2286 = or disjoint i16 %2284, %2285
  %2287 = and i16 %2283, 1
  %2288 = or disjoint i16 %2286, %2287
  %2289 = shl i16 %2288, 1
  %2290 = lshr i16 %2278, 3
  %2291 = and i16 %2290, 1
  %2292 = or disjoint i16 %2289, %2291
  %2293 = shl i16 %2292, 1
  %2294 = lshr i16 %2278, 4
  %2295 = add nuw nsw i32 %2280, 4
  %2296 = icmp eq i32 %2295, %2276
  br i1 %2296, label %.loopexit277, label %2277, !llvm.loop !69

.loopexit277:                                     ; preds = %2277, %2267
  %2297 = phi i16 [ poison, %2267 ], [ %2292, %2277 ]
  %2298 = phi i16 [ %2271, %2267 ], [ %2294, %2277 ]
  %2299 = phi i16 [ 0, %2267 ], [ %2293, %2277 ]
  %2300 = icmp eq i32 %2273, 0
  br i1 %2300, label %.loopexit276, label %.preheader

.preheader:                                       ; preds = %.loopexit277, %.preheader
  %2301 = phi i16 [ %2307, %.preheader ], [ %2298, %.loopexit277 ]
  %2302 = phi i16 [ %2306, %.preheader ], [ %2299, %.loopexit277 ]
  %2303 = phi i32 [ %2308, %.preheader ], [ 0, %.loopexit277 ]
  %2304 = and i16 %2301, 1
  %2305 = or disjoint i16 %2302, %2304
  %2306 = shl i16 %2305, 1
  %2307 = lshr i16 %2301, 1
  %2308 = add nuw nsw i32 %2303, 1
  %2309 = icmp eq i32 %2308, %2273
  br i1 %2309, label %.loopexit276, label %.preheader, !llvm.loop !78

.loopexit276:                                     ; preds = %.preheader, %.loopexit277
  %2310 = phi i16 [ %2297, %.loopexit277 ], [ %2305, %.preheader ]
  store i16 %2310, ptr %2263, align 2, !tbaa !28
  br label %2311

2311:                                             ; preds = %.loopexit276, %.preheader278
  %2312 = icmp eq i64 %2262, 2147483647
  br i1 %2312, label %2261, label %2313, !prof !32, !nosanitize !30

2313:                                             ; preds = %2311
  %2314 = add nuw nsw i64 %2262, 1
  %2315 = trunc i64 %2314 to i32
  %2316 = icmp slt i32 %1733, %2315
  br i1 %2316, label %.loopexit279, label %.preheader278, !llvm.loop !72

.loopexit279:                                     ; preds = %2313, %.loopexit285
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %2317 = getelementptr i8, ptr %0, i64 2750
  %2318 = getelementptr i8, ptr %0, i64 2810
  %2319 = load i16, ptr %2318, align 2, !tbaa !28
  %2320 = icmp eq i16 %2319, 0
  br i1 %2320, label %2321, label %2381

2321:                                             ; preds = %.loopexit279
  %2322 = getelementptr i8, ptr %0, i64 2754
  %2323 = load i16, ptr %2322, align 2, !tbaa !28
  %2324 = icmp eq i16 %2323, 0
  br i1 %2324, label %2325, label %2381

2325:                                             ; preds = %2321
  %2326 = getelementptr i8, ptr %0, i64 2806
  %2327 = load i16, ptr %2326, align 2, !tbaa !28
  %2328 = icmp eq i16 %2327, 0
  br i1 %2328, label %2329, label %2381

2329:                                             ; preds = %2325
  %2330 = getelementptr i8, ptr %0, i64 2758
  %2331 = load i16, ptr %2330, align 2, !tbaa !28
  %2332 = icmp eq i16 %2331, 0
  br i1 %2332, label %2333, label %2381

2333:                                             ; preds = %2329
  %2334 = getelementptr i8, ptr %0, i64 2802
  %2335 = load i16, ptr %2334, align 2, !tbaa !28
  %2336 = icmp eq i16 %2335, 0
  br i1 %2336, label %2337, label %2381

2337:                                             ; preds = %2333
  %2338 = getelementptr i8, ptr %0, i64 2762
  %2339 = load i16, ptr %2338, align 2, !tbaa !28
  %2340 = icmp eq i16 %2339, 0
  br i1 %2340, label %2341, label %2381

2341:                                             ; preds = %2337
  %2342 = getelementptr i8, ptr %0, i64 2798
  %2343 = load i16, ptr %2342, align 2, !tbaa !28
  %2344 = icmp eq i16 %2343, 0
  br i1 %2344, label %2345, label %2381

2345:                                             ; preds = %2341
  %2346 = getelementptr i8, ptr %0, i64 2766
  %2347 = load i16, ptr %2346, align 2, !tbaa !28
  %2348 = icmp eq i16 %2347, 0
  br i1 %2348, label %2349, label %2381

2349:                                             ; preds = %2345
  %2350 = getelementptr i8, ptr %0, i64 2794
  %2351 = load i16, ptr %2350, align 2, !tbaa !28
  %2352 = icmp eq i16 %2351, 0
  br i1 %2352, label %2353, label %2381

2353:                                             ; preds = %2349
  %2354 = getelementptr i8, ptr %0, i64 2770
  %2355 = load i16, ptr %2354, align 2, !tbaa !28
  %2356 = icmp eq i16 %2355, 0
  br i1 %2356, label %2357, label %2381

2357:                                             ; preds = %2353
  %2358 = getelementptr i8, ptr %0, i64 2790
  %2359 = load i16, ptr %2358, align 2, !tbaa !28
  %2360 = icmp eq i16 %2359, 0
  br i1 %2360, label %2361, label %2381

2361:                                             ; preds = %2357
  %2362 = getelementptr i8, ptr %0, i64 2774
  %2363 = load i16, ptr %2362, align 2, !tbaa !28
  %2364 = icmp eq i16 %2363, 0
  br i1 %2364, label %2365, label %2381

2365:                                             ; preds = %2361
  %2366 = getelementptr i8, ptr %0, i64 2786
  %2367 = load i16, ptr %2366, align 2, !tbaa !28
  %2368 = icmp eq i16 %2367, 0
  br i1 %2368, label %2369, label %2381

2369:                                             ; preds = %2365
  %2370 = getelementptr i8, ptr %0, i64 2778
  %2371 = load i16, ptr %2370, align 2, !tbaa !28
  %2372 = icmp eq i16 %2371, 0
  br i1 %2372, label %2373, label %2381

2373:                                             ; preds = %2369
  %2374 = getelementptr i8, ptr %0, i64 2782
  %2375 = load i16, ptr %2374, align 2, !tbaa !28
  %2376 = icmp eq i16 %2375, 0
  br i1 %2376, label %2377, label %2381

2377:                                             ; preds = %2373
  %2378 = load i16, ptr %2317, align 2, !tbaa !28
  %2379 = icmp eq i16 %2378, 0
  %2380 = select i1 %2379, i32 2, i32 3
  br label %2381

2381:                                             ; preds = %2377, %2373, %2369, %2365, %2361, %2357, %2353, %2349, %2345, %2341, %2337, %2333, %2329, %2325, %2321, %.loopexit279
  %2382 = phi i32 [ 18, %.loopexit279 ], [ 17, %2321 ], [ 16, %2325 ], [ 15, %2329 ], [ 14, %2333 ], [ 13, %2337 ], [ 12, %2341 ], [ 11, %2345 ], [ 10, %2349 ], [ 9, %2353 ], [ 8, %2357 ], [ 7, %2361 ], [ 6, %2365 ], [ 5, %2369 ], [ 4, %2373 ], [ %2380, %2377 ]
  %2383 = mul nuw nsw i32 %2382, 3
  %2384 = add nuw nsw i32 %2383, 17
  %2385 = zext nneg i32 %2384 to i64
  %2386 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2387 = load i64, ptr %2386, align 8, !tbaa !51
  %2388 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2387, i64 %2385), !nosanitize !30
  %2389 = extractvalue { i64, i1 } %2388, 1, !nosanitize !30
  br i1 %2389, label %2390, label %2391, !prof !32, !nosanitize !30

2390:                                             ; preds = %2381
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2391:                                             ; preds = %2381
  %2392 = extractvalue { i64, i1 } %2388, 0, !nosanitize !30
  store i64 %2392, ptr %2386, align 8, !tbaa !51
  %2393 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2392, i64 3), !nosanitize !30
  %2394 = extractvalue { i64, i1 } %2393, 1, !nosanitize !30
  br i1 %2394, label %2395, label %2396, !prof !32, !nosanitize !30

2395:                                             ; preds = %2391
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2396:                                             ; preds = %2391
  %2397 = extractvalue { i64, i1 } %2393, 0, !nosanitize !30
  %2398 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2397, i64 7), !nosanitize !30
  %2399 = extractvalue { i64, i1 } %2398, 1, !nosanitize !30
  br i1 %2399, label %2400, label %2401, !prof !32, !nosanitize !30

2400:                                             ; preds = %2396
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2401:                                             ; preds = %2396
  %2402 = extractvalue { i64, i1 } %2398, 0, !nosanitize !30
  %2403 = lshr i64 %2402, 3
  %2404 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2405 = load i64, ptr %2404, align 8, !tbaa !52
  %2406 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2405, i64 3), !nosanitize !30
  %2407 = extractvalue { i64, i1 } %2406, 1, !nosanitize !30
  br i1 %2407, label %2408, label %2409, !prof !32, !nosanitize !30

2408:                                             ; preds = %2401
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2409:                                             ; preds = %2401
  %2410 = extractvalue { i64, i1 } %2406, 0, !nosanitize !30
  %2411 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2410, i64 7), !nosanitize !30
  %2412 = extractvalue { i64, i1 } %2411, 1, !nosanitize !30
  br i1 %2412, label %2413, label %2414, !prof !32, !nosanitize !30

2413:                                             ; preds = %2409
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2414:                                             ; preds = %2409
  %2415 = extractvalue { i64, i1 } %2411, 0, !nosanitize !30
  %2416 = lshr i64 %2415, 3
  %2417 = icmp samesign ugt i64 %2416, %2403
  br i1 %2417, label %2418, label %2422

2418:                                             ; preds = %2414
  %2419 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2420 = load i32, ptr %2419, align 8, !tbaa !79
  %2421 = icmp eq i32 %2420, 4
  br i1 %2421, label %2422, label %2429

2422:                                             ; preds = %2418, %2414
  br label %2429

2423:                                             ; preds = %4
  %2424 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 5), !nosanitize !30
  %2425 = extractvalue { i64, i1 } %2424, 1, !nosanitize !30
  br i1 %2425, label %2426, label %2427, !prof !32, !nosanitize !30

2426:                                             ; preds = %2423
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2427:                                             ; preds = %2423
  %2428 = extractvalue { i64, i1 } %2424, 0, !nosanitize !30
  br label %2429

2429:                                             ; preds = %2427, %2422, %2418
  %2430 = phi i32 [ %2382, %2422 ], [ %2382, %2418 ], [ 0, %2427 ]
  %2431 = phi i1 [ true, %2422 ], [ false, %2418 ], [ true, %2427 ]
  %2432 = phi i64 [ %2416, %2422 ], [ %2403, %2418 ], [ %2428, %2427 ]
  %2433 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 4), !nosanitize !30
  %2434 = extractvalue { i64, i1 } %2433, 1, !nosanitize !30
  br i1 %2434, label %2435, label %2436, !prof !32, !nosanitize !30

2435:                                             ; preds = %2605, %2429
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2436:                                             ; preds = %2429
  %2437 = extractvalue { i64, i1 } %2433, 0, !nosanitize !30
  %2438 = icmp ule i64 %2437, %2432
  %2439 = icmp ne ptr %1, null
  %2440 = and i1 %2439, %2438
  %2441 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2442 = load i32, ptr %2441, align 4, !tbaa !26
  %2443 = icmp sgt i32 %2442, 13
  br i1 %2440, label %2444, label %2600

2444:                                             ; preds = %2436
  br i1 %2443, label %2446, label %2484

2445:                                             ; preds = %2468
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2446:                                             ; preds = %2444
  %2447 = and i32 %3, 65535
  %2448 = shl i32 %3, %2442
  %2449 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2450 = load i16, ptr %2449, align 8, !tbaa !25
  %2451 = trunc i32 %2448 to i16
  %2452 = or i16 %2450, %2451
  store i16 %2452, ptr %2449, align 8, !tbaa !25
  %2453 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2454 = load i64, ptr %2453, align 8, !tbaa !31
  %2455 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2454, i64 1), !nosanitize !30
  %2456 = extractvalue { i64, i1 } %2455, 1, !nosanitize !30
  br i1 %2456, label %2457, label %2458, !prof !32, !nosanitize !30

2457:                                             ; preds = %2446
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2458:                                             ; preds = %2446
  %2459 = extractvalue { i64, i1 } %2455, 0, !nosanitize !30
  %2460 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2461 = load ptr, ptr %2460, align 8, !tbaa !33
  %2462 = trunc i16 %2452 to i8
  store i64 %2459, ptr %2453, align 8, !tbaa !31
  %2463 = getelementptr inbounds nuw i8, ptr %2461, i64 %2454
  store i8 %2462, ptr %2463, align 1, !tbaa !28
  %2464 = load i64, ptr %2453, align 8, !tbaa !31
  %2465 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2464, i64 1), !nosanitize !30
  %2466 = extractvalue { i64, i1 } %2465, 1, !nosanitize !30
  br i1 %2466, label %2467, label %2468, !prof !32, !nosanitize !30

2467:                                             ; preds = %2478, %2458
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2468:                                             ; preds = %2458
  %2469 = extractvalue { i64, i1 } %2465, 0, !nosanitize !30
  %2470 = load ptr, ptr %2460, align 8, !tbaa !33
  %2471 = load i16, ptr %2449, align 8, !tbaa !25
  %2472 = lshr i16 %2471, 8
  %2473 = trunc nuw i16 %2472 to i8
  store i64 %2469, ptr %2453, align 8, !tbaa !31
  %2474 = getelementptr inbounds nuw i8, ptr %2470, i64 %2464
  store i8 %2473, ptr %2474, align 1, !tbaa !28
  %2475 = load i32, ptr %2441, align 4, !tbaa !26
  %2476 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2475), !nosanitize !30
  %2477 = extractvalue { i32, i1 } %2476, 1, !nosanitize !30
  br i1 %2477, label %2445, label %2478, !prof !32, !nosanitize !30

2478:                                             ; preds = %2468
  %2479 = extractvalue { i32, i1 } %2476, 0, !nosanitize !30
  %2480 = lshr i32 %2447, %2479
  %2481 = trunc nuw i32 %2480 to i16
  store i16 %2481, ptr %2449, align 8, !tbaa !25
  %2482 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2475, i32 -13), !nosanitize !30
  %2483 = extractvalue { i32, i1 } %2482, 1, !nosanitize !30
  br i1 %2483, label %2467, label %2492, !prof !32, !nosanitize !30

2484:                                             ; preds = %2444
  %2485 = shl i32 %3, %2442
  %2486 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2487 = load i16, ptr %2486, align 8, !tbaa !25
  %2488 = trunc i32 %2485 to i16
  %2489 = or i16 %2487, %2488
  store i16 %2489, ptr %2486, align 8, !tbaa !25
  %2490 = add nsw i32 %2442, 3
  %2491 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2490, 0
  br label %2492

2492:                                             ; preds = %2484, %2478
  %2493 = phi i16 [ %2481, %2478 ], [ %2489, %2484 ]
  %2494 = phi { i32, i1 } [ %2482, %2478 ], [ %2491, %2484 ]
  %2495 = extractvalue { i32, i1 } %2494, 0
  store i32 %2495, ptr %2441, align 4, !tbaa !26
  %2496 = icmp sgt i32 %2495, 8
  br i1 %2496, label %2497, label %2521

2497:                                             ; preds = %2492
  %2498 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2499 = load i64, ptr %2498, align 8, !tbaa !31
  %2500 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2499, i64 1), !nosanitize !30
  %2501 = extractvalue { i64, i1 } %2500, 1, !nosanitize !30
  br i1 %2501, label %2502, label %2503, !prof !32, !nosanitize !30

2502:                                             ; preds = %2497
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2503:                                             ; preds = %2497
  %2504 = extractvalue { i64, i1 } %2500, 0, !nosanitize !30
  %2505 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2506 = load ptr, ptr %2505, align 8, !tbaa !33
  %2507 = trunc i16 %2493 to i8
  store i64 %2504, ptr %2498, align 8, !tbaa !31
  %2508 = getelementptr inbounds nuw i8, ptr %2506, i64 %2499
  store i8 %2507, ptr %2508, align 1, !tbaa !28
  %2509 = load i64, ptr %2498, align 8, !tbaa !31
  %2510 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2509, i64 1), !nosanitize !30
  %2511 = extractvalue { i64, i1 } %2510, 1, !nosanitize !30
  br i1 %2511, label %2512, label %2513, !prof !32, !nosanitize !30

2512:                                             ; preds = %2503
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2513:                                             ; preds = %2503
  %2514 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2515 = extractvalue { i64, i1 } %2510, 0, !nosanitize !30
  %2516 = load ptr, ptr %2505, align 8, !tbaa !33
  %2517 = load i16, ptr %2514, align 8, !tbaa !25
  %2518 = lshr i16 %2517, 8
  %2519 = trunc nuw i16 %2518 to i8
  store i64 %2515, ptr %2498, align 8, !tbaa !31
  %2520 = getelementptr inbounds nuw i8, ptr %2516, i64 %2509
  store i8 %2519, ptr %2520, align 1, !tbaa !28
  br label %2535

2521:                                             ; preds = %2492
  %2522 = icmp sgt i32 %2495, 0
  br i1 %2522, label %2523, label %2535

2523:                                             ; preds = %2521
  %2524 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2525 = load i64, ptr %2524, align 8, !tbaa !31
  %2526 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2525, i64 1), !nosanitize !30
  %2527 = extractvalue { i64, i1 } %2526, 1, !nosanitize !30
  br i1 %2527, label %2528, label %2529, !prof !32, !nosanitize !30

2528:                                             ; preds = %2523
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2529:                                             ; preds = %2523
  %2530 = extractvalue { i64, i1 } %2526, 0, !nosanitize !30
  %2531 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2532 = load ptr, ptr %2531, align 8, !tbaa !33
  %2533 = trunc i16 %2493 to i8
  store i64 %2530, ptr %2524, align 8, !tbaa !31
  %2534 = getelementptr inbounds nuw i8, ptr %2532, i64 %2525
  store i8 %2533, ptr %2534, align 1, !tbaa !28
  br label %2535

2535:                                             ; preds = %2529, %2521, %2513
  %2536 = load i32, ptr %2441, align 4, !tbaa !26
  %2537 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2536, i32 -1)
  %2538 = extractvalue { i32, i1 } %2537, 1, !nosanitize !30
  br i1 %2538, label %2539, label %2540, !prof !32, !nosanitize !30

2539:                                             ; preds = %2535
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2540:                                             ; preds = %2535
  %2541 = extractvalue { i32, i1 } %2537, 0, !nosanitize !30
  %2542 = and i32 %2541, 7
  %2543 = add nuw nsw i32 %2542, 1
  %2544 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %2543, ptr %2544, align 8, !tbaa !27
  %2545 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %2545, align 8, !tbaa !25
  store i32 0, ptr %2441, align 4, !tbaa !26
  %2546 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2547 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2548 = load i64, ptr %2547, align 8, !tbaa !31
  %2549 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2548, i64 1), !nosanitize !30
  %2550 = extractvalue { i64, i1 } %2549, 1, !nosanitize !30
  br i1 %2550, label %2551, label %2552, !prof !32, !nosanitize !30

2551:                                             ; preds = %2540
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2552:                                             ; preds = %2540
  %2553 = extractvalue { i64, i1 } %2549, 0, !nosanitize !30
  %2554 = load ptr, ptr %2546, align 8, !tbaa !33
  %2555 = trunc i64 %2 to i8
  store i64 %2553, ptr %2547, align 8, !tbaa !31
  %2556 = getelementptr inbounds nuw i8, ptr %2554, i64 %2548
  store i8 %2555, ptr %2556, align 1, !tbaa !28
  %2557 = load i64, ptr %2547, align 8, !tbaa !31
  %2558 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2557, i64 1), !nosanitize !30
  %2559 = extractvalue { i64, i1 } %2558, 1, !nosanitize !30
  br i1 %2559, label %2560, label %2561, !prof !32, !nosanitize !30

2560:                                             ; preds = %2552
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2561:                                             ; preds = %2552
  %2562 = extractvalue { i64, i1 } %2558, 0, !nosanitize !30
  %2563 = load ptr, ptr %2546, align 8, !tbaa !33
  %2564 = lshr i64 %2, 8
  %2565 = trunc i64 %2564 to i8
  store i64 %2562, ptr %2547, align 8, !tbaa !31
  %2566 = getelementptr inbounds nuw i8, ptr %2563, i64 %2557
  store i8 %2565, ptr %2566, align 1, !tbaa !28
  %2567 = load i64, ptr %2547, align 8, !tbaa !31
  %2568 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2567, i64 1), !nosanitize !30
  %2569 = extractvalue { i64, i1 } %2568, 1, !nosanitize !30
  br i1 %2569, label %2570, label %2571, !prof !32, !nosanitize !30

2570:                                             ; preds = %2561
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2571:                                             ; preds = %2561
  %2572 = extractvalue { i64, i1 } %2568, 0, !nosanitize !30
  %2573 = load ptr, ptr %2546, align 8, !tbaa !33
  %2574 = trunc i64 %2 to i32
  %2575 = xor i32 %2574, 65535
  %2576 = trunc i32 %2575 to i8
  store i64 %2572, ptr %2547, align 8, !tbaa !31
  %2577 = getelementptr inbounds nuw i8, ptr %2573, i64 %2567
  store i8 %2576, ptr %2577, align 1, !tbaa !28
  %2578 = load i64, ptr %2547, align 8, !tbaa !31
  %2579 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2578, i64 1), !nosanitize !30
  %2580 = extractvalue { i64, i1 } %2579, 1, !nosanitize !30
  br i1 %2580, label %2581, label %2582, !prof !32, !nosanitize !30

2581:                                             ; preds = %2571
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2582:                                             ; preds = %2571
  %2583 = extractvalue { i64, i1 } %2579, 0, !nosanitize !30
  %2584 = load ptr, ptr %2546, align 8, !tbaa !33
  %2585 = lshr i32 %2575, 8
  %2586 = trunc i32 %2585 to i8
  store i64 %2583, ptr %2547, align 8, !tbaa !31
  %2587 = getelementptr inbounds nuw i8, ptr %2584, i64 %2578
  store i8 %2586, ptr %2587, align 1, !tbaa !28
  %2588 = icmp eq i64 %2, 0
  br i1 %2588, label %2593, label %2589

2589:                                             ; preds = %2582
  %2590 = load ptr, ptr %2546, align 8, !tbaa !33
  %2591 = load i64, ptr %2547, align 8, !tbaa !31
  %2592 = getelementptr inbounds nuw i8, ptr %2590, i64 %2591
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2592, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %2593

2593:                                             ; preds = %2589, %2582
  %2594 = load i64, ptr %2547, align 8, !tbaa !31
  %2595 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2594, i64 %2), !nosanitize !30
  %2596 = extractvalue { i64, i1 } %2595, 1, !nosanitize !30
  br i1 %2596, label %2597, label %2598, !prof !32, !nosanitize !30

2597:                                             ; preds = %2593
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2598:                                             ; preds = %2593
  %2599 = extractvalue { i64, i1 } %2595, 0, !nosanitize !30
  store i64 %2599, ptr %2547, align 8, !tbaa !31
  br label %4607

2600:                                             ; preds = %2436
  br i1 %2431, label %2601, label %3028

2601:                                             ; preds = %2600
  %2602 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2), !nosanitize !30
  %2603 = extractvalue { i32, i1 } %2602, 1, !nosanitize !30
  br i1 %2443, label %2605, label %2645

2604:                                             ; preds = %3055, %2629
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2605:                                             ; preds = %2601
  br i1 %2603, label %2435, label %2606, !prof !32, !nosanitize !30

2606:                                             ; preds = %2605
  %2607 = extractvalue { i32, i1 } %2602, 0, !nosanitize !30
  %2608 = and i32 %2607, 65535
  %2609 = shl i32 %2607, %2442
  %2610 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2611 = load i16, ptr %2610, align 8, !tbaa !25
  %2612 = trunc i32 %2609 to i16
  %2613 = or i16 %2611, %2612
  store i16 %2613, ptr %2610, align 8, !tbaa !25
  %2614 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2615 = load i64, ptr %2614, align 8, !tbaa !31
  %2616 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2615, i64 1), !nosanitize !30
  %2617 = extractvalue { i64, i1 } %2616, 1, !nosanitize !30
  br i1 %2617, label %2618, label %2619, !prof !32, !nosanitize !30

2618:                                             ; preds = %2606
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2619:                                             ; preds = %2606
  %2620 = extractvalue { i64, i1 } %2616, 0, !nosanitize !30
  %2621 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2622 = load ptr, ptr %2621, align 8, !tbaa !33
  %2623 = trunc i16 %2613 to i8
  store i64 %2620, ptr %2614, align 8, !tbaa !31
  %2624 = getelementptr inbounds nuw i8, ptr %2622, i64 %2615
  store i8 %2623, ptr %2624, align 1, !tbaa !28
  %2625 = load i64, ptr %2614, align 8, !tbaa !31
  %2626 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2625, i64 1), !nosanitize !30
  %2627 = extractvalue { i64, i1 } %2626, 1, !nosanitize !30
  br i1 %2627, label %2628, label %2629, !prof !32, !nosanitize !30

2628:                                             ; preds = %3031, %2645, %2639, %2619
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2629:                                             ; preds = %2619
  %2630 = extractvalue { i64, i1 } %2626, 0, !nosanitize !30
  %2631 = load ptr, ptr %2621, align 8, !tbaa !33
  %2632 = load i16, ptr %2610, align 8, !tbaa !25
  %2633 = lshr i16 %2632, 8
  %2634 = trunc nuw i16 %2633 to i8
  store i64 %2630, ptr %2614, align 8, !tbaa !31
  %2635 = getelementptr inbounds nuw i8, ptr %2631, i64 %2625
  store i8 %2634, ptr %2635, align 1, !tbaa !28
  %2636 = load i32, ptr %2441, align 4, !tbaa !26
  %2637 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2636), !nosanitize !30
  %2638 = extractvalue { i32, i1 } %2637, 1, !nosanitize !30
  br i1 %2638, label %2604, label %2639, !prof !32, !nosanitize !30

2639:                                             ; preds = %2629
  %2640 = extractvalue { i32, i1 } %2637, 0, !nosanitize !30
  %2641 = lshr i32 %2608, %2640
  %2642 = trunc nuw i32 %2641 to i16
  store i16 %2642, ptr %2610, align 8, !tbaa !25
  %2643 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2636, i32 -13), !nosanitize !30
  %2644 = extractvalue { i32, i1 } %2643, 1, !nosanitize !30
  br i1 %2644, label %2628, label %2655, !prof !32, !nosanitize !30

2645:                                             ; preds = %2601
  br i1 %2603, label %2628, label %2646, !prof !32, !nosanitize !30

2646:                                             ; preds = %2645
  %2647 = extractvalue { i32, i1 } %2602, 0, !nosanitize !30
  %2648 = shl i32 %2647, %2442
  %2649 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2650 = load i16, ptr %2649, align 8, !tbaa !25
  %2651 = trunc i32 %2648 to i16
  %2652 = or i16 %2650, %2651
  store i16 %2652, ptr %2649, align 8, !tbaa !25
  %2653 = add nsw i32 %2442, 3
  %2654 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2653, 0
  br label %2655

2655:                                             ; preds = %2646, %2639
  %2656 = phi i16 [ %2642, %2639 ], [ %2652, %2646 ]
  %2657 = phi { i32, i1 } [ %2643, %2639 ], [ %2654, %2646 ]
  %2658 = extractvalue { i32, i1 } %2657, 0
  store i32 %2658, ptr %2441, align 4, !tbaa !26
  %2659 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %2660 = load i32, ptr %2659, align 4, !tbaa !29
  %2661 = icmp eq i32 %2660, 0
  br i1 %2661, label %.loopexit264, label %2662

2662:                                             ; preds = %2655
  %2663 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %2664 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2665 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2666 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %2667

2667:                                             ; preds = %2984, %2662
  %2668 = phi i16 [ %2985, %2984 ], [ %2656, %2662 ]
  %2669 = phi i32 [ %2986, %2984 ], [ %2658, %2662 ]
  %2670 = phi i32 [ %2689, %2984 ], [ 0, %2662 ]
  %2671 = load ptr, ptr %2663, align 8, !tbaa !80
  %2672 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2670, i32 2)
  %2673 = extractvalue { i32, i1 } %2672, 0, !nosanitize !30
  %2674 = extractvalue { i32, i1 } %2672, 1, !nosanitize !30
  br i1 %2674, label %2675, label %2676, !prof !32, !nosanitize !30

2675:                                             ; preds = %2667
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2676:                                             ; preds = %2667
  %2677 = add nuw i32 %2670, 1
  %2678 = zext i32 %2670 to i64
  %2679 = getelementptr inbounds nuw i8, ptr %2671, i64 %2678
  %2680 = load i8, ptr %2679, align 1, !tbaa !28
  %2681 = zext i8 %2680 to i32
  %2682 = zext i32 %2677 to i64
  %2683 = getelementptr inbounds nuw i8, ptr %2671, i64 %2682
  %2684 = load i8, ptr %2683, align 1, !tbaa !28
  %2685 = zext i8 %2684 to i32
  %2686 = shl nuw nsw i32 %2685, 8
  %2687 = or disjoint i32 %2686, %2681
  %2688 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2673, i32 1), !nosanitize !30
  %2689 = extractvalue { i32, i1 } %2688, 0, !nosanitize !30
  %2690 = extractvalue { i32, i1 } %2688, 1, !nosanitize !30
  br i1 %2690, label %2691, label %2692, !prof !32, !nosanitize !30

2691:                                             ; preds = %2676
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2692:                                             ; preds = %2676
  %2693 = zext i32 %2673 to i64
  %2694 = getelementptr inbounds nuw i8, ptr %2671, i64 %2693
  %2695 = load i8, ptr %2694, align 1, !tbaa !28
  %2696 = zext i8 %2695 to i32
  %2697 = icmp eq i32 %2687, 0
  %2698 = zext i8 %2695 to i64
  br i1 %2697, label %2699, label %2746

2699:                                             ; preds = %2692
  %2700 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2698
  %2701 = getelementptr inbounds nuw i8, ptr %2700, i64 2
  %2702 = load i16, ptr %2701, align 2, !tbaa !28
  %2703 = zext i16 %2702 to i32
  %2704 = sub nsw i32 16, %2703
  %2705 = icmp sgt i32 %2669, %2704
  %2706 = load i16, ptr %2700, align 4, !tbaa !28
  %2707 = zext i16 %2706 to i32
  %2708 = shl i32 %2707, %2669
  %2709 = trunc i32 %2708 to i16
  %2710 = or i16 %2668, %2709
  store i16 %2710, ptr %2664, align 8, !tbaa !25
  br i1 %2705, label %2712, label %2743

2711:                                             ; preds = %2844, %2834, %2810, %2804, %2776, %2726
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2712:                                             ; preds = %2699
  %2713 = load i64, ptr %2665, align 8, !tbaa !31
  %2714 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2713, i64 1), !nosanitize !30
  %2715 = extractvalue { i64, i1 } %2714, 1, !nosanitize !30
  br i1 %2715, label %2716, label %2717, !prof !32, !nosanitize !30

2716:                                             ; preds = %2712
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2717:                                             ; preds = %2712
  %2718 = extractvalue { i64, i1 } %2714, 0, !nosanitize !30
  %2719 = load ptr, ptr %2666, align 8, !tbaa !33
  %2720 = trunc i16 %2710 to i8
  store i64 %2718, ptr %2665, align 8, !tbaa !31
  %2721 = getelementptr inbounds nuw i8, ptr %2719, i64 %2713
  store i8 %2720, ptr %2721, align 1, !tbaa !28
  %2722 = load i64, ptr %2665, align 8, !tbaa !31
  %2723 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2722, i64 1), !nosanitize !30
  %2724 = extractvalue { i64, i1 } %2723, 1, !nosanitize !30
  br i1 %2724, label %2725, label %2726, !prof !32, !nosanitize !30

2725:                                             ; preds = %2736, %2717
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2726:                                             ; preds = %2717
  %2727 = extractvalue { i64, i1 } %2723, 0, !nosanitize !30
  %2728 = load ptr, ptr %2666, align 8, !tbaa !33
  %2729 = load i16, ptr %2664, align 8, !tbaa !25
  %2730 = lshr i16 %2729, 8
  %2731 = trunc nuw i16 %2730 to i8
  store i64 %2727, ptr %2665, align 8, !tbaa !31
  %2732 = getelementptr inbounds nuw i8, ptr %2728, i64 %2722
  store i8 %2731, ptr %2732, align 1, !tbaa !28
  %2733 = load i32, ptr %2441, align 4, !tbaa !26
  %2734 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2733), !nosanitize !30
  %2735 = extractvalue { i32, i1 } %2734, 1, !nosanitize !30
  br i1 %2735, label %2711, label %2736, !prof !32, !nosanitize !30

2736:                                             ; preds = %2726
  %2737 = extractvalue { i32, i1 } %2734, 0, !nosanitize !30
  %2738 = lshr i32 %2707, %2737
  %2739 = trunc nuw i32 %2738 to i16
  store i16 %2739, ptr %2664, align 8, !tbaa !25
  %2740 = add nsw i32 %2703, -16
  %2741 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2733, i32 %2740), !nosanitize !30
  %2742 = extractvalue { i32, i1 } %2741, 1, !nosanitize !30
  br i1 %2742, label %2725, label %2980, !prof !32, !nosanitize !30

2743:                                             ; preds = %2699
  %2744 = add nsw i32 %2669, %2703
  %2745 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2744, 0
  br label %2980

2746:                                             ; preds = %2692
  %2747 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %2698
  %2748 = load i8, ptr %2747, align 1, !tbaa !28
  %2749 = zext i8 %2748 to i64
  %2750 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2749
  %2751 = getelementptr inbounds nuw i8, ptr %2750, i64 1028
  %2752 = getelementptr inbounds nuw i8, ptr %2750, i64 1030
  %2753 = load i16, ptr %2752, align 2, !tbaa !28
  %2754 = zext i16 %2753 to i32
  %2755 = sub nsw i32 16, %2754
  %2756 = icmp sgt i32 %2669, %2755
  %2757 = load i16, ptr %2751, align 4, !tbaa !28
  %2758 = zext i16 %2757 to i32
  %2759 = shl i32 %2758, %2669
  %2760 = trunc i32 %2759 to i16
  %2761 = or i16 %2668, %2760
  store i16 %2761, ptr %2664, align 8, !tbaa !25
  br i1 %2756, label %2762, label %2793

2762:                                             ; preds = %2746
  %2763 = load i64, ptr %2665, align 8, !tbaa !31
  %2764 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2763, i64 1), !nosanitize !30
  %2765 = extractvalue { i64, i1 } %2764, 1, !nosanitize !30
  br i1 %2765, label %2766, label %2767, !prof !32, !nosanitize !30

2766:                                             ; preds = %2762
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2767:                                             ; preds = %2762
  %2768 = extractvalue { i64, i1 } %2764, 0, !nosanitize !30
  %2769 = load ptr, ptr %2666, align 8, !tbaa !33
  %2770 = trunc i16 %2761 to i8
  store i64 %2768, ptr %2665, align 8, !tbaa !31
  %2771 = getelementptr inbounds nuw i8, ptr %2769, i64 %2763
  store i8 %2770, ptr %2771, align 1, !tbaa !28
  %2772 = load i64, ptr %2665, align 8, !tbaa !31
  %2773 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2772, i64 1), !nosanitize !30
  %2774 = extractvalue { i64, i1 } %2773, 1, !nosanitize !30
  br i1 %2774, label %2775, label %2776, !prof !32, !nosanitize !30

2775:                                             ; preds = %2786, %2767
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2776:                                             ; preds = %2767
  %2777 = extractvalue { i64, i1 } %2773, 0, !nosanitize !30
  %2778 = load ptr, ptr %2666, align 8, !tbaa !33
  %2779 = load i16, ptr %2664, align 8, !tbaa !25
  %2780 = lshr i16 %2779, 8
  %2781 = trunc nuw i16 %2780 to i8
  store i64 %2777, ptr %2665, align 8, !tbaa !31
  %2782 = getelementptr inbounds nuw i8, ptr %2778, i64 %2772
  store i8 %2781, ptr %2782, align 1, !tbaa !28
  %2783 = load i32, ptr %2441, align 4, !tbaa !26
  %2784 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2783), !nosanitize !30
  %2785 = extractvalue { i32, i1 } %2784, 1, !nosanitize !30
  br i1 %2785, label %2711, label %2786, !prof !32, !nosanitize !30

2786:                                             ; preds = %2776
  %2787 = extractvalue { i32, i1 } %2784, 0, !nosanitize !30
  %2788 = lshr i32 %2758, %2787
  %2789 = trunc nuw i32 %2788 to i16
  store i16 %2789, ptr %2664, align 8, !tbaa !25
  %2790 = add nsw i32 %2754, -16
  %2791 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2783, i32 %2790), !nosanitize !30
  %2792 = extractvalue { i32, i1 } %2791, 1, !nosanitize !30
  br i1 %2792, label %2775, label %2796, !prof !32, !nosanitize !30

2793:                                             ; preds = %2746
  %2794 = add nsw i32 %2669, %2754
  %2795 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2794, 0
  br label %2796

2796:                                             ; preds = %2793, %2786
  %2797 = phi i16 [ %2789, %2786 ], [ %2761, %2793 ]
  %2798 = phi { i32, i1 } [ %2791, %2786 ], [ %2795, %2793 ]
  %2799 = extractvalue { i32, i1 } %2798, 0
  store i32 %2799, ptr %2441, align 4, !tbaa !26
  %2800 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %2749
  %2801 = load i32, ptr %2800, align 4, !tbaa !49
  %2802 = add i8 %2748, -28
  %2803 = icmp ult i8 %2802, -20
  br i1 %2803, label %2864, label %2804

2804:                                             ; preds = %2796
  %2805 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %2749
  %2806 = load i32, ptr %2805, align 4, !tbaa !49
  %2807 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2696, i32 %2806), !nosanitize !30
  %2808 = extractvalue { i32, i1 } %2807, 0, !nosanitize !30
  %2809 = extractvalue { i32, i1 } %2807, 1, !nosanitize !30
  br i1 %2809, label %2711, label %2810, !prof !32, !nosanitize !30

2810:                                             ; preds = %2804
  %2811 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2801), !nosanitize !30
  %2812 = extractvalue { i32, i1 } %2811, 1, !nosanitize !30
  br i1 %2812, label %2711, label %2813, !prof !32, !nosanitize !30

2813:                                             ; preds = %2810
  %2814 = extractvalue { i32, i1 } %2811, 0, !nosanitize !30
  %2815 = icmp sgt i32 %2799, %2814
  br i1 %2815, label %2816, label %2854

2816:                                             ; preds = %2813
  %2817 = and i32 %2808, 65535
  %2818 = shl i32 %2808, %2799
  %2819 = trunc i32 %2818 to i16
  %2820 = or i16 %2797, %2819
  store i16 %2820, ptr %2664, align 8, !tbaa !25
  %2821 = load i64, ptr %2665, align 8, !tbaa !31
  %2822 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2821, i64 1), !nosanitize !30
  %2823 = extractvalue { i64, i1 } %2822, 1, !nosanitize !30
  br i1 %2823, label %2824, label %2825, !prof !32, !nosanitize !30

2824:                                             ; preds = %2816
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2825:                                             ; preds = %2816
  %2826 = extractvalue { i64, i1 } %2822, 0, !nosanitize !30
  %2827 = load ptr, ptr %2666, align 8, !tbaa !33
  %2828 = trunc i16 %2820 to i8
  store i64 %2826, ptr %2665, align 8, !tbaa !31
  %2829 = getelementptr inbounds nuw i8, ptr %2827, i64 %2821
  store i8 %2828, ptr %2829, align 1, !tbaa !28
  %2830 = load i64, ptr %2665, align 8, !tbaa !31
  %2831 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2830, i64 1), !nosanitize !30
  %2832 = extractvalue { i64, i1 } %2831, 1, !nosanitize !30
  br i1 %2832, label %2833, label %2834, !prof !32, !nosanitize !30

2833:                                             ; preds = %2854, %2850, %2825
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2834:                                             ; preds = %2825
  %2835 = extractvalue { i64, i1 } %2831, 0, !nosanitize !30
  %2836 = load ptr, ptr %2666, align 8, !tbaa !33
  %2837 = load i16, ptr %2664, align 8, !tbaa !25
  %2838 = lshr i16 %2837, 8
  %2839 = trunc nuw i16 %2838 to i8
  store i64 %2835, ptr %2665, align 8, !tbaa !31
  %2840 = getelementptr inbounds nuw i8, ptr %2836, i64 %2830
  store i8 %2839, ptr %2840, align 1, !tbaa !28
  %2841 = load i32, ptr %2441, align 4, !tbaa !26
  %2842 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2841), !nosanitize !30
  %2843 = extractvalue { i32, i1 } %2842, 1, !nosanitize !30
  br i1 %2843, label %2711, label %2844, !prof !32, !nosanitize !30

2844:                                             ; preds = %2834
  %2845 = extractvalue { i32, i1 } %2842, 0, !nosanitize !30
  %2846 = lshr i32 %2817, %2845
  %2847 = trunc nuw i32 %2846 to i16
  store i16 %2847, ptr %2664, align 8, !tbaa !25
  %2848 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2801, i32 -16)
  %2849 = extractvalue { i32, i1 } %2848, 1, !nosanitize !30
  br i1 %2849, label %2711, label %2850, !prof !32, !nosanitize !30

2850:                                             ; preds = %2844
  %2851 = extractvalue { i32, i1 } %2848, 0, !nosanitize !30
  %2852 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2841, i32 %2851), !nosanitize !30
  %2853 = extractvalue { i32, i1 } %2852, 1, !nosanitize !30
  br i1 %2853, label %2833, label %2860, !prof !32, !nosanitize !30

2854:                                             ; preds = %2813
  %2855 = shl i32 %2808, %2799
  %2856 = trunc i32 %2855 to i16
  %2857 = or i16 %2797, %2856
  store i16 %2857, ptr %2664, align 8, !tbaa !25
  %2858 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2799, i32 %2801), !nosanitize !30
  %2859 = extractvalue { i32, i1 } %2858, 1, !nosanitize !30
  br i1 %2859, label %2833, label %2860, !prof !32, !nosanitize !30

2860:                                             ; preds = %2854, %2850
  %2861 = phi i16 [ %2847, %2850 ], [ %2857, %2854 ]
  %2862 = phi { i32, i1 } [ %2852, %2850 ], [ %2858, %2854 ]
  %2863 = extractvalue { i32, i1 } %2862, 0
  store i32 %2863, ptr %2441, align 4, !tbaa !26
  br label %2864

2864:                                             ; preds = %2860, %2796
  %2865 = phi i16 [ %2861, %2860 ], [ %2797, %2796 ]
  %2866 = phi i32 [ %2863, %2860 ], [ %2799, %2796 ]
  %2867 = add nsw i32 %2687, -1
  %2868 = icmp samesign ult i32 %2687, 257
  %2869 = lshr i32 %2867, 7
  %2870 = add nuw nsw i32 %2869, 256
  %2871 = select i1 %2868, i32 %2867, i32 %2870
  %2872 = zext nneg i32 %2871 to i64
  %2873 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2872
  %2874 = load i8, ptr %2873, align 1, !tbaa !28
  %2875 = zext i8 %2874 to i64
  %2876 = getelementptr inbounds nuw [4 x i8], ptr @static_dtree, i64 %2875
  %2877 = icmp sgt i32 %2866, 11
  %2878 = load i16, ptr %2876, align 4, !tbaa !28
  %2879 = zext i16 %2878 to i32
  %2880 = shl i32 %2879, %2866
  %2881 = trunc i32 %2880 to i16
  %2882 = or i16 %2865, %2881
  store i16 %2882, ptr %2664, align 8, !tbaa !25
  br i1 %2877, label %2884, label %2914

2883:                                             ; preds = %2898
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

2884:                                             ; preds = %2864
  %2885 = load i64, ptr %2665, align 8, !tbaa !31
  %2886 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2885, i64 1), !nosanitize !30
  %2887 = extractvalue { i64, i1 } %2886, 1, !nosanitize !30
  br i1 %2887, label %2888, label %2889, !prof !32, !nosanitize !30

2888:                                             ; preds = %2884
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2889:                                             ; preds = %2884
  %2890 = extractvalue { i64, i1 } %2886, 0, !nosanitize !30
  %2891 = load ptr, ptr %2666, align 8, !tbaa !33
  %2892 = trunc i16 %2882 to i8
  store i64 %2890, ptr %2665, align 8, !tbaa !31
  %2893 = getelementptr inbounds nuw i8, ptr %2891, i64 %2885
  store i8 %2892, ptr %2893, align 1, !tbaa !28
  %2894 = load i64, ptr %2665, align 8, !tbaa !31
  %2895 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2894, i64 1), !nosanitize !30
  %2896 = extractvalue { i64, i1 } %2895, 1, !nosanitize !30
  br i1 %2896, label %2897, label %2898, !prof !32, !nosanitize !30

2897:                                             ; preds = %2908, %2889
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2898:                                             ; preds = %2889
  %2899 = extractvalue { i64, i1 } %2895, 0, !nosanitize !30
  %2900 = load ptr, ptr %2666, align 8, !tbaa !33
  %2901 = load i16, ptr %2664, align 8, !tbaa !25
  %2902 = lshr i16 %2901, 8
  %2903 = trunc nuw i16 %2902 to i8
  store i64 %2899, ptr %2665, align 8, !tbaa !31
  %2904 = getelementptr inbounds nuw i8, ptr %2900, i64 %2894
  store i8 %2903, ptr %2904, align 1, !tbaa !28
  %2905 = load i32, ptr %2441, align 4, !tbaa !26
  %2906 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2905), !nosanitize !30
  %2907 = extractvalue { i32, i1 } %2906, 1, !nosanitize !30
  br i1 %2907, label %2883, label %2908, !prof !32, !nosanitize !30

2908:                                             ; preds = %2898
  %2909 = extractvalue { i32, i1 } %2906, 0, !nosanitize !30
  %2910 = lshr i32 %2879, %2909
  %2911 = trunc nuw i32 %2910 to i16
  store i16 %2911, ptr %2664, align 8, !tbaa !25
  %2912 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2905, i32 -11), !nosanitize !30
  %2913 = extractvalue { i32, i1 } %2912, 1, !nosanitize !30
  br i1 %2913, label %2897, label %2917, !prof !32, !nosanitize !30

2914:                                             ; preds = %2864
  %2915 = add nsw i32 %2866, 5
  %2916 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2915, 0
  br label %2917

2917:                                             ; preds = %2914, %2908
  %2918 = phi i16 [ %2911, %2908 ], [ %2882, %2914 ]
  %2919 = phi { i32, i1 } [ %2912, %2908 ], [ %2916, %2914 ]
  %2920 = extractvalue { i32, i1 } %2919, 0
  store i32 %2920, ptr %2441, align 4, !tbaa !26
  %2921 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %2875
  %2922 = load i32, ptr %2921, align 4, !tbaa !49
  %2923 = icmp ult i8 %2874, 4
  br i1 %2923, label %2984, label %2924

2924:                                             ; preds = %2917
  %2925 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %2875
  %2926 = load i32, ptr %2925, align 4, !tbaa !49
  %2927 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2867, i32 %2926), !nosanitize !30
  %2928 = extractvalue { i32, i1 } %2927, 0, !nosanitize !30
  %2929 = extractvalue { i32, i1 } %2927, 1, !nosanitize !30
  br i1 %2929, label %.loopexit, label %2930, !prof !32, !nosanitize !30

.loopexit:                                        ; preds = %2964, %2954, %2930, %2924, %3009
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

2930:                                             ; preds = %2924
  %2931 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2922), !nosanitize !30
  %2932 = extractvalue { i32, i1 } %2931, 1, !nosanitize !30
  br i1 %2932, label %.loopexit, label %2933, !prof !32, !nosanitize !30

2933:                                             ; preds = %2930
  %2934 = extractvalue { i32, i1 } %2931, 0, !nosanitize !30
  %2935 = icmp sgt i32 %2920, %2934
  br i1 %2935, label %2936, label %2974

2936:                                             ; preds = %2933
  %2937 = and i32 %2928, 65535
  %2938 = shl i32 %2928, %2920
  %2939 = trunc i32 %2938 to i16
  %2940 = or i16 %2918, %2939
  store i16 %2940, ptr %2664, align 8, !tbaa !25
  %2941 = load i64, ptr %2665, align 8, !tbaa !31
  %2942 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2941, i64 1), !nosanitize !30
  %2943 = extractvalue { i64, i1 } %2942, 1, !nosanitize !30
  br i1 %2943, label %2944, label %2945, !prof !32, !nosanitize !30

2944:                                             ; preds = %2936
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2945:                                             ; preds = %2936
  %2946 = extractvalue { i64, i1 } %2942, 0, !nosanitize !30
  %2947 = load ptr, ptr %2666, align 8, !tbaa !33
  %2948 = trunc i16 %2940 to i8
  store i64 %2946, ptr %2665, align 8, !tbaa !31
  %2949 = getelementptr inbounds nuw i8, ptr %2947, i64 %2941
  store i8 %2948, ptr %2949, align 1, !tbaa !28
  %2950 = load i64, ptr %2665, align 8, !tbaa !31
  %2951 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2950, i64 1), !nosanitize !30
  %2952 = extractvalue { i64, i1 } %2951, 1, !nosanitize !30
  br i1 %2952, label %2953, label %2954, !prof !32, !nosanitize !30

2953:                                             ; preds = %2974, %2970, %2945
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2954:                                             ; preds = %2945
  %2955 = extractvalue { i64, i1 } %2951, 0, !nosanitize !30
  %2956 = load ptr, ptr %2666, align 8, !tbaa !33
  %2957 = load i16, ptr %2664, align 8, !tbaa !25
  %2958 = lshr i16 %2957, 8
  %2959 = trunc nuw i16 %2958 to i8
  store i64 %2955, ptr %2665, align 8, !tbaa !31
  %2960 = getelementptr inbounds nuw i8, ptr %2956, i64 %2950
  store i8 %2959, ptr %2960, align 1, !tbaa !28
  %2961 = load i32, ptr %2441, align 4, !tbaa !26
  %2962 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2961), !nosanitize !30
  %2963 = extractvalue { i32, i1 } %2962, 1, !nosanitize !30
  br i1 %2963, label %.loopexit, label %2964, !prof !32, !nosanitize !30

2964:                                             ; preds = %2954
  %2965 = extractvalue { i32, i1 } %2962, 0, !nosanitize !30
  %2966 = lshr i32 %2937, %2965
  %2967 = trunc nuw i32 %2966 to i16
  store i16 %2967, ptr %2664, align 8, !tbaa !25
  %2968 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2922, i32 -16)
  %2969 = extractvalue { i32, i1 } %2968, 1, !nosanitize !30
  br i1 %2969, label %.loopexit, label %2970, !prof !32, !nosanitize !30

2970:                                             ; preds = %2964
  %2971 = extractvalue { i32, i1 } %2968, 0, !nosanitize !30
  %2972 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2961, i32 %2971), !nosanitize !30
  %2973 = extractvalue { i32, i1 } %2972, 1, !nosanitize !30
  br i1 %2973, label %2953, label %2980, !prof !32, !nosanitize !30

2974:                                             ; preds = %2933
  %2975 = shl i32 %2928, %2920
  %2976 = trunc i32 %2975 to i16
  %2977 = or i16 %2918, %2976
  store i16 %2977, ptr %2664, align 8, !tbaa !25
  %2978 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2920, i32 %2922), !nosanitize !30
  %2979 = extractvalue { i32, i1 } %2978, 1, !nosanitize !30
  br i1 %2979, label %2953, label %2980, !prof !32, !nosanitize !30

2980:                                             ; preds = %2974, %2970, %2743, %2736
  %2981 = phi i16 [ %2739, %2736 ], [ %2710, %2743 ], [ %2967, %2970 ], [ %2977, %2974 ]
  %2982 = phi { i32, i1 } [ %2741, %2736 ], [ %2745, %2743 ], [ %2972, %2970 ], [ %2978, %2974 ]
  %2983 = extractvalue { i32, i1 } %2982, 0
  store i32 %2983, ptr %2441, align 4, !tbaa !26
  br label %2984

2984:                                             ; preds = %2980, %2917
  %2985 = phi i16 [ %2918, %2917 ], [ %2981, %2980 ]
  %2986 = phi i32 [ %2920, %2917 ], [ %2983, %2980 ]
  %2987 = load i32, ptr %2659, align 4, !tbaa !29
  %2988 = icmp ult i32 %2689, %2987
  br i1 %2988, label %2667, label %.loopexit264, !llvm.loop !81

.loopexit264:                                     ; preds = %2984, %2655
  %2989 = phi i16 [ %2656, %2655 ], [ %2985, %2984 ]
  %2990 = phi i32 [ %2658, %2655 ], [ %2986, %2984 ]
  %2991 = icmp sgt i32 %2990, 9
  %2992 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %2991, label %2993, label %3022

2993:                                             ; preds = %.loopexit264
  %2994 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2995 = load i64, ptr %2994, align 8, !tbaa !31
  %2996 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2995, i64 1), !nosanitize !30
  %2997 = extractvalue { i64, i1 } %2996, 1, !nosanitize !30
  br i1 %2997, label %2998, label %2999, !prof !32, !nosanitize !30

2998:                                             ; preds = %2993
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2999:                                             ; preds = %2993
  %3000 = extractvalue { i64, i1 } %2996, 0, !nosanitize !30
  %3001 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3002 = load ptr, ptr %3001, align 8, !tbaa !33
  %3003 = trunc i16 %2989 to i8
  store i64 %3000, ptr %2994, align 8, !tbaa !31
  %3004 = getelementptr inbounds nuw i8, ptr %3002, i64 %2995
  store i8 %3003, ptr %3004, align 1, !tbaa !28
  %3005 = load i64, ptr %2994, align 8, !tbaa !31
  %3006 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3005, i64 1), !nosanitize !30
  %3007 = extractvalue { i64, i1 } %3006, 1, !nosanitize !30
  br i1 %3007, label %3008, label %3009, !prof !32, !nosanitize !30

3008:                                             ; preds = %3019, %2999
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3009:                                             ; preds = %2999
  %3010 = extractvalue { i64, i1 } %3006, 0, !nosanitize !30
  %3011 = load ptr, ptr %3001, align 8, !tbaa !33
  %3012 = load i16, ptr %2992, align 8, !tbaa !25
  %3013 = lshr i16 %3012, 8
  %3014 = trunc nuw i16 %3013 to i8
  store i64 %3010, ptr %2994, align 8, !tbaa !31
  %3015 = getelementptr inbounds nuw i8, ptr %3011, i64 %3005
  store i8 %3014, ptr %3015, align 1, !tbaa !28
  %3016 = load i32, ptr %2441, align 4, !tbaa !26
  %3017 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3016), !nosanitize !30
  %3018 = extractvalue { i32, i1 } %3017, 1, !nosanitize !30
  br i1 %3018, label %.loopexit, label %3019, !prof !32, !nosanitize !30

3019:                                             ; preds = %3009
  store i16 0, ptr %2992, align 8, !tbaa !25
  %3020 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3016, i32 -9), !nosanitize !30
  %3021 = extractvalue { i32, i1 } %3020, 1, !nosanitize !30
  br i1 %3021, label %3008, label %3025, !prof !32, !nosanitize !30

3022:                                             ; preds = %.loopexit264
  %3023 = add nsw i32 %2990, 7
  %3024 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3023, 0
  br label %3025

3025:                                             ; preds = %3022, %3019
  %3026 = phi { i32, i1 } [ %3020, %3019 ], [ %3024, %3022 ]
  %3027 = extractvalue { i32, i1 } %3026, 0
  store i32 %3027, ptr %2441, align 4, !tbaa !26
  br label %4607

3028:                                             ; preds = %2600
  %3029 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 4), !nosanitize !30
  %3030 = extractvalue { i32, i1 } %3029, 1, !nosanitize !30
  br i1 %2443, label %3031, label %3071

3031:                                             ; preds = %3028
  br i1 %3030, label %2628, label %3032, !prof !32, !nosanitize !30

3032:                                             ; preds = %3031
  %3033 = extractvalue { i32, i1 } %3029, 0, !nosanitize !30
  %3034 = and i32 %3033, 65535
  %3035 = shl i32 %3033, %2442
  %3036 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3037 = load i16, ptr %3036, align 8, !tbaa !25
  %3038 = trunc i32 %3035 to i16
  %3039 = or i16 %3037, %3038
  store i16 %3039, ptr %3036, align 8, !tbaa !25
  %3040 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3041 = load i64, ptr %3040, align 8, !tbaa !31
  %3042 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3041, i64 1), !nosanitize !30
  %3043 = extractvalue { i64, i1 } %3042, 1, !nosanitize !30
  br i1 %3043, label %3044, label %3045, !prof !32, !nosanitize !30

3044:                                             ; preds = %3032
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3045:                                             ; preds = %3032
  %3046 = extractvalue { i64, i1 } %3042, 0, !nosanitize !30
  %3047 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3048 = load ptr, ptr %3047, align 8, !tbaa !33
  %3049 = trunc i16 %3039 to i8
  store i64 %3046, ptr %3040, align 8, !tbaa !31
  %3050 = getelementptr inbounds nuw i8, ptr %3048, i64 %3041
  store i8 %3049, ptr %3050, align 1, !tbaa !28
  %3051 = load i64, ptr %3040, align 8, !tbaa !31
  %3052 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3051, i64 1), !nosanitize !30
  %3053 = extractvalue { i64, i1 } %3052, 1, !nosanitize !30
  br i1 %3053, label %3054, label %3055, !prof !32, !nosanitize !30

3054:                                             ; preds = %3090, %3081, %3071, %3065, %3045
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3055:                                             ; preds = %3045
  %3056 = extractvalue { i64, i1 } %3052, 0, !nosanitize !30
  %3057 = load ptr, ptr %3047, align 8, !tbaa !33
  %3058 = load i16, ptr %3036, align 8, !tbaa !25
  %3059 = lshr i16 %3058, 8
  %3060 = trunc nuw i16 %3059 to i8
  store i64 %3056, ptr %3040, align 8, !tbaa !31
  %3061 = getelementptr inbounds nuw i8, ptr %3057, i64 %3051
  store i8 %3060, ptr %3061, align 1, !tbaa !28
  %3062 = load i32, ptr %2441, align 4, !tbaa !26
  %3063 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3062), !nosanitize !30
  %3064 = extractvalue { i32, i1 } %3063, 1, !nosanitize !30
  br i1 %3064, label %2604, label %3065, !prof !32, !nosanitize !30

3065:                                             ; preds = %3055
  %3066 = extractvalue { i32, i1 } %3063, 0, !nosanitize !30
  %3067 = lshr i32 %3034, %3066
  %3068 = trunc nuw i32 %3067 to i16
  store i16 %3068, ptr %3036, align 8, !tbaa !25
  %3069 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3062, i32 -13), !nosanitize !30
  %3070 = extractvalue { i32, i1 } %3069, 1, !nosanitize !30
  br i1 %3070, label %3054, label %3081, !prof !32, !nosanitize !30

3071:                                             ; preds = %3028
  br i1 %3030, label %3054, label %3072, !prof !32, !nosanitize !30

3072:                                             ; preds = %3071
  %3073 = extractvalue { i32, i1 } %3029, 0, !nosanitize !30
  %3074 = shl i32 %3073, %2442
  %3075 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3076 = load i16, ptr %3075, align 8, !tbaa !25
  %3077 = trunc i32 %3074 to i16
  %3078 = or i16 %3076, %3077
  store i16 %3078, ptr %3075, align 8, !tbaa !25
  %3079 = add nsw i32 %2442, 3
  %3080 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3079, 0
  br label %3081

3081:                                             ; preds = %3072, %3065
  %3082 = phi i16 [ %3068, %3065 ], [ %3078, %3072 ]
  %3083 = phi { i32, i1 } [ %3069, %3065 ], [ %3080, %3072 ]
  %3084 = extractvalue { i32, i1 } %3083, 0
  store i32 %3084, ptr %2441, align 4, !tbaa !26
  %3085 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %3086 = load i32, ptr %3085, align 8, !tbaa !74
  %3087 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3086, i32 1), !nosanitize !30
  %3088 = extractvalue { i32, i1 } %3087, 0, !nosanitize !30
  %3089 = extractvalue { i32, i1 } %3087, 1, !nosanitize !30
  br i1 %3089, label %3054, label %3090, !prof !32, !nosanitize !30

3090:                                             ; preds = %3081
  %3091 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %3092 = load i32, ptr %3091, align 8, !tbaa !77
  %3093 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3092, i32 1), !nosanitize !30
  %3094 = extractvalue { i32, i1 } %3093, 0, !nosanitize !30
  %3095 = extractvalue { i32, i1 } %3093, 1, !nosanitize !30
  br i1 %3095, label %3054, label %3096, !prof !32, !nosanitize !30

3096:                                             ; preds = %3090
  %3097 = add nuw nsw i32 %2430, 1
  %3098 = icmp sgt i32 %3084, 11
  %3099 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3088, i32 -257)
  %3100 = extractvalue { i32, i1 } %3099, 1, !nosanitize !30
  br i1 %3098, label %3101, label %3140

.loopexit275:                                     ; preds = %3291, %.loopexit274, %3316, %3231, %3195, %3179, %3156, %3140, %3124, %3101
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

3101:                                             ; preds = %3096
  br i1 %3100, label %.loopexit275, label %3102, !prof !32, !nosanitize !30

3102:                                             ; preds = %3101
  %3103 = extractvalue { i32, i1 } %3099, 0, !nosanitize !30
  %3104 = and i32 %3103, 65535
  %3105 = shl i32 %3103, %3084
  %3106 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3107 = trunc i32 %3105 to i16
  %3108 = or i16 %3082, %3107
  store i16 %3108, ptr %3106, align 8, !tbaa !25
  %3109 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3110 = load i64, ptr %3109, align 8, !tbaa !31
  %3111 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3110, i64 1), !nosanitize !30
  %3112 = extractvalue { i64, i1 } %3111, 1, !nosanitize !30
  br i1 %3112, label %3113, label %3114, !prof !32, !nosanitize !30

3113:                                             ; preds = %3102
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3114:                                             ; preds = %3102
  %3115 = extractvalue { i64, i1 } %3111, 0, !nosanitize !30
  %3116 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3117 = load ptr, ptr %3116, align 8, !tbaa !33
  %3118 = trunc i16 %3108 to i8
  store i64 %3115, ptr %3109, align 8, !tbaa !31
  %3119 = getelementptr inbounds nuw i8, ptr %3117, i64 %3110
  store i8 %3118, ptr %3119, align 1, !tbaa !28
  %3120 = load i64, ptr %3109, align 8, !tbaa !31
  %3121 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3120, i64 1), !nosanitize !30
  %3122 = extractvalue { i64, i1 } %3121, 1, !nosanitize !30
  br i1 %3122, label %3123, label %3124, !prof !32, !nosanitize !30

3123:                                             ; preds = %3134, %3114
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3124:                                             ; preds = %3114
  %3125 = extractvalue { i64, i1 } %3121, 0, !nosanitize !30
  %3126 = load ptr, ptr %3116, align 8, !tbaa !33
  %3127 = load i16, ptr %3106, align 8, !tbaa !25
  %3128 = lshr i16 %3127, 8
  %3129 = trunc nuw i16 %3128 to i8
  store i64 %3125, ptr %3109, align 8, !tbaa !31
  %3130 = getelementptr inbounds nuw i8, ptr %3126, i64 %3120
  store i8 %3129, ptr %3130, align 1, !tbaa !28
  %3131 = load i32, ptr %2441, align 4, !tbaa !26
  %3132 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3131), !nosanitize !30
  %3133 = extractvalue { i32, i1 } %3132, 1, !nosanitize !30
  br i1 %3133, label %.loopexit275, label %3134, !prof !32, !nosanitize !30

3134:                                             ; preds = %3124
  %3135 = extractvalue { i32, i1 } %3132, 0, !nosanitize !30
  %3136 = lshr i32 %3104, %3135
  %3137 = trunc nuw i32 %3136 to i16
  store i16 %3137, ptr %3106, align 8, !tbaa !25
  %3138 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3131, i32 -11), !nosanitize !30
  %3139 = extractvalue { i32, i1 } %3138, 1, !nosanitize !30
  br i1 %3139, label %3123, label %3149, !prof !32, !nosanitize !30

3140:                                             ; preds = %3096
  br i1 %3100, label %.loopexit275, label %3141, !prof !32, !nosanitize !30

3141:                                             ; preds = %3140
  %3142 = extractvalue { i32, i1 } %3099, 0, !nosanitize !30
  %3143 = shl i32 %3142, %3084
  %3144 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3145 = trunc i32 %3143 to i16
  %3146 = or i16 %3082, %3145
  store i16 %3146, ptr %3144, align 8, !tbaa !25
  %3147 = add nsw i32 %3084, 5
  %3148 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3147, 0
  br label %3149

3149:                                             ; preds = %3141, %3134
  %3150 = phi i16 [ %3137, %3134 ], [ %3146, %3141 ]
  %3151 = phi { i32, i1 } [ %3138, %3134 ], [ %3148, %3141 ]
  %3152 = extractvalue { i32, i1 } %3151, 0
  store i32 %3152, ptr %2441, align 4, !tbaa !26
  %3153 = icmp sgt i32 %3152, 11
  %3154 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3094, i32 -1)
  %3155 = extractvalue { i32, i1 } %3154, 1, !nosanitize !30
  br i1 %3153, label %3156, label %3195

3156:                                             ; preds = %3149
  br i1 %3155, label %.loopexit275, label %3157, !prof !32, !nosanitize !30

3157:                                             ; preds = %3156
  %3158 = extractvalue { i32, i1 } %3154, 0, !nosanitize !30
  %3159 = and i32 %3158, 65535
  %3160 = shl i32 %3158, %3152
  %3161 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3162 = trunc i32 %3160 to i16
  %3163 = or i16 %3150, %3162
  store i16 %3163, ptr %3161, align 8, !tbaa !25
  %3164 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3165 = load i64, ptr %3164, align 8, !tbaa !31
  %3166 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3165, i64 1), !nosanitize !30
  %3167 = extractvalue { i64, i1 } %3166, 1, !nosanitize !30
  br i1 %3167, label %3168, label %3169, !prof !32, !nosanitize !30

3168:                                             ; preds = %3157
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3169:                                             ; preds = %3157
  %3170 = extractvalue { i64, i1 } %3166, 0, !nosanitize !30
  %3171 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3172 = load ptr, ptr %3171, align 8, !tbaa !33
  %3173 = trunc i16 %3163 to i8
  store i64 %3170, ptr %3164, align 8, !tbaa !31
  %3174 = getelementptr inbounds nuw i8, ptr %3172, i64 %3165
  store i8 %3173, ptr %3174, align 1, !tbaa !28
  %3175 = load i64, ptr %3164, align 8, !tbaa !31
  %3176 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3175, i64 1), !nosanitize !30
  %3177 = extractvalue { i64, i1 } %3176, 1, !nosanitize !30
  br i1 %3177, label %3178, label %3179, !prof !32, !nosanitize !30

3178:                                             ; preds = %3189, %3169
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3179:                                             ; preds = %3169
  %3180 = extractvalue { i64, i1 } %3176, 0, !nosanitize !30
  %3181 = load ptr, ptr %3171, align 8, !tbaa !33
  %3182 = load i16, ptr %3161, align 8, !tbaa !25
  %3183 = lshr i16 %3182, 8
  %3184 = trunc nuw i16 %3183 to i8
  store i64 %3180, ptr %3164, align 8, !tbaa !31
  %3185 = getelementptr inbounds nuw i8, ptr %3181, i64 %3175
  store i8 %3184, ptr %3185, align 1, !tbaa !28
  %3186 = load i32, ptr %2441, align 4, !tbaa !26
  %3187 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3186), !nosanitize !30
  %3188 = extractvalue { i32, i1 } %3187, 1, !nosanitize !30
  br i1 %3188, label %.loopexit275, label %3189, !prof !32, !nosanitize !30

3189:                                             ; preds = %3179
  %3190 = extractvalue { i32, i1 } %3187, 0, !nosanitize !30
  %3191 = lshr i32 %3159, %3190
  %3192 = trunc nuw i32 %3191 to i16
  store i16 %3192, ptr %3161, align 8, !tbaa !25
  %3193 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3186, i32 -11), !nosanitize !30
  %3194 = extractvalue { i32, i1 } %3193, 1, !nosanitize !30
  br i1 %3194, label %3178, label %3204, !prof !32, !nosanitize !30

3195:                                             ; preds = %3149
  br i1 %3155, label %.loopexit275, label %3196, !prof !32, !nosanitize !30

3196:                                             ; preds = %3195
  %3197 = extractvalue { i32, i1 } %3154, 0, !nosanitize !30
  %3198 = shl i32 %3197, %3152
  %3199 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3200 = trunc i32 %3198 to i16
  %3201 = or i16 %3150, %3200
  store i16 %3201, ptr %3199, align 8, !tbaa !25
  %3202 = add nsw i32 %3152, 5
  %3203 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3202, 0
  br label %3204

3204:                                             ; preds = %3196, %3189
  %3205 = phi i16 [ %3192, %3189 ], [ %3201, %3196 ]
  %3206 = phi { i32, i1 } [ %3193, %3189 ], [ %3203, %3196 ]
  %3207 = extractvalue { i32, i1 } %3206, 0
  store i32 %3207, ptr %2441, align 4, !tbaa !26
  %3208 = icmp sgt i32 %3207, 12
  %3209 = add nsw i32 %2430, -3
  br i1 %3208, label %3210, label %3247

3210:                                             ; preds = %3204
  %3211 = and i32 %3209, 65535
  %3212 = shl i32 %3209, %3207
  %3213 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3214 = trunc i32 %3212 to i16
  %3215 = or i16 %3205, %3214
  store i16 %3215, ptr %3213, align 8, !tbaa !25
  %3216 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3217 = load i64, ptr %3216, align 8, !tbaa !31
  %3218 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3217, i64 1), !nosanitize !30
  %3219 = extractvalue { i64, i1 } %3218, 1, !nosanitize !30
  br i1 %3219, label %3220, label %3221, !prof !32, !nosanitize !30

3220:                                             ; preds = %3210
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3221:                                             ; preds = %3210
  %3222 = extractvalue { i64, i1 } %3218, 0, !nosanitize !30
  %3223 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3224 = load ptr, ptr %3223, align 8, !tbaa !33
  %3225 = trunc i16 %3215 to i8
  store i64 %3222, ptr %3216, align 8, !tbaa !31
  %3226 = getelementptr inbounds nuw i8, ptr %3224, i64 %3217
  store i8 %3225, ptr %3226, align 1, !tbaa !28
  %3227 = load i64, ptr %3216, align 8, !tbaa !31
  %3228 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3227, i64 1), !nosanitize !30
  %3229 = extractvalue { i64, i1 } %3228, 1, !nosanitize !30
  br i1 %3229, label %3230, label %3231, !prof !32, !nosanitize !30

3230:                                             ; preds = %3241, %3221
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3231:                                             ; preds = %3221
  %3232 = extractvalue { i64, i1 } %3228, 0, !nosanitize !30
  %3233 = load ptr, ptr %3223, align 8, !tbaa !33
  %3234 = load i16, ptr %3213, align 8, !tbaa !25
  %3235 = lshr i16 %3234, 8
  %3236 = trunc nuw i16 %3235 to i8
  store i64 %3232, ptr %3216, align 8, !tbaa !31
  %3237 = getelementptr inbounds nuw i8, ptr %3233, i64 %3227
  store i8 %3236, ptr %3237, align 1, !tbaa !28
  %3238 = load i32, ptr %2441, align 4, !tbaa !26
  %3239 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3238), !nosanitize !30
  %3240 = extractvalue { i32, i1 } %3239, 1, !nosanitize !30
  br i1 %3240, label %.loopexit275, label %3241, !prof !32, !nosanitize !30

3241:                                             ; preds = %3231
  %3242 = extractvalue { i32, i1 } %3239, 0, !nosanitize !30
  %3243 = lshr i32 %3211, %3242
  %3244 = trunc nuw i32 %3243 to i16
  store i16 %3244, ptr %3213, align 8, !tbaa !25
  %3245 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3238, i32 -12), !nosanitize !30
  %3246 = extractvalue { i32, i1 } %3245, 1, !nosanitize !30
  br i1 %3246, label %3230, label %3253, !prof !32, !nosanitize !30

3247:                                             ; preds = %3204
  %3248 = shl nsw i32 %3209, %3207
  %3249 = trunc i32 %3248 to i16
  %3250 = or i16 %3205, %3249
  %3251 = add nsw i32 %3207, 4
  %3252 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3251, 0
  br label %3253

3253:                                             ; preds = %3247, %3241
  %3254 = phi i16 [ %3244, %3241 ], [ %3250, %3247 ]
  %3255 = phi { i32, i1 } [ %3245, %3241 ], [ %3252, %3247 ]
  %3256 = extractvalue { i32, i1 } %3255, 0
  store i32 %3256, ptr %2441, align 4, !tbaa !26
  %3257 = getelementptr i8, ptr %0, i64 2750
  %3258 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3259 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3260 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3261 = zext nneg i32 %3097 to i64
  br label %3262

3262:                                             ; preds = %3310, %3253
  %3263 = phi i16 [ %3254, %3253 ], [ %3311, %3310 ]
  %3264 = phi i32 [ %3256, %3253 ], [ %3313, %3310 ]
  %3265 = phi i64 [ 0, %3253 ], [ %3314, %3310 ]
  %3266 = icmp sgt i32 %3264, 13
  %3267 = getelementptr inbounds nuw i8, ptr @bl_order, i64 %3265
  %3268 = load i8, ptr %3267, align 1, !tbaa !28
  %3269 = zext i8 %3268 to i64
  %3270 = shl nuw nsw i64 %3269, 2
  %3271 = getelementptr i8, ptr %3257, i64 %3270
  %3272 = load i16, ptr %3271, align 2, !tbaa !28
  %3273 = zext i16 %3272 to i32
  %3274 = shl i32 %3273, %3264
  %3275 = trunc i32 %3274 to i16
  %3276 = or i16 %3263, %3275
  store i16 %3276, ptr %3258, align 8, !tbaa !25
  br i1 %3266, label %3277, label %3307

3277:                                             ; preds = %3262
  %3278 = load i64, ptr %3259, align 8, !tbaa !31
  %3279 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3278, i64 1), !nosanitize !30
  %3280 = extractvalue { i64, i1 } %3279, 1, !nosanitize !30
  br i1 %3280, label %3281, label %3282, !prof !32, !nosanitize !30

3281:                                             ; preds = %3277
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3282:                                             ; preds = %3277
  %3283 = extractvalue { i64, i1 } %3279, 0, !nosanitize !30
  %3284 = load ptr, ptr %3260, align 8, !tbaa !33
  %3285 = trunc i16 %3276 to i8
  store i64 %3283, ptr %3259, align 8, !tbaa !31
  %3286 = getelementptr inbounds nuw i8, ptr %3284, i64 %3278
  store i8 %3285, ptr %3286, align 1, !tbaa !28
  %3287 = load i64, ptr %3259, align 8, !tbaa !31
  %3288 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3287, i64 1), !nosanitize !30
  %3289 = extractvalue { i64, i1 } %3288, 1, !nosanitize !30
  br i1 %3289, label %3290, label %3291, !prof !32, !nosanitize !30

3290:                                             ; preds = %3301, %3282
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3291:                                             ; preds = %3282
  %3292 = extractvalue { i64, i1 } %3288, 0, !nosanitize !30
  %3293 = load ptr, ptr %3260, align 8, !tbaa !33
  %3294 = load i16, ptr %3258, align 8, !tbaa !25
  %3295 = lshr i16 %3294, 8
  %3296 = trunc nuw i16 %3295 to i8
  store i64 %3292, ptr %3259, align 8, !tbaa !31
  %3297 = getelementptr inbounds nuw i8, ptr %3293, i64 %3287
  store i8 %3296, ptr %3297, align 1, !tbaa !28
  %3298 = load i32, ptr %2441, align 4, !tbaa !26
  %3299 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3298), !nosanitize !30
  %3300 = extractvalue { i32, i1 } %3299, 1, !nosanitize !30
  br i1 %3300, label %.loopexit275, label %3301, !prof !32, !nosanitize !30

3301:                                             ; preds = %3291
  %3302 = extractvalue { i32, i1 } %3299, 0, !nosanitize !30
  %3303 = lshr i32 %3273, %3302
  %3304 = trunc nuw i32 %3303 to i16
  store i16 %3304, ptr %3258, align 8, !tbaa !25
  %3305 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3298, i32 -13), !nosanitize !30
  %3306 = extractvalue { i32, i1 } %3305, 1, !nosanitize !30
  br i1 %3306, label %3290, label %3310, !prof !32, !nosanitize !30

3307:                                             ; preds = %3262
  %3308 = add nsw i32 %3264, 3
  %3309 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3308, 0
  br label %3310

3310:                                             ; preds = %3307, %3301
  %3311 = phi i16 [ %3304, %3301 ], [ %3276, %3307 ]
  %3312 = phi { i32, i1 } [ %3305, %3301 ], [ %3309, %3307 ]
  %3313 = extractvalue { i32, i1 } %3312, 0
  store i32 %3313, ptr %2441, align 4, !tbaa !26
  %3314 = add nuw nsw i64 %3265, 1
  %3315 = icmp eq i64 %3314, %3261
  br i1 %3315, label %3316, label %3262, !llvm.loop !82

3316:                                             ; preds = %3310
  %3317 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3088, i32 -1)
  %3318 = extractvalue { i32, i1 } %3317, 1, !nosanitize !30
  br i1 %3318, label %.loopexit275, label %3319, !prof !32, !nosanitize !30

3319:                                             ; preds = %3316
  %3320 = extractvalue { i32, i1 } %3317, 0, !nosanitize !30
  %3321 = icmp slt i32 %3320, 0
  br i1 %3321, label %.loopexit274, label %3322

3322:                                             ; preds = %3319
  %3323 = getelementptr i8, ptr %0, i64 214
  %3324 = load i16, ptr %3323, align 2, !tbaa !28
  %3325 = icmp eq i16 %3324, 0
  %3326 = select i1 %3325, i32 138, i32 7
  %3327 = select i1 %3325, i32 3, i32 4
  %3328 = zext i16 %3324 to i32
  %3329 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3330 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3331 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3332 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3333 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3334 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3335 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3341

3336:                                             ; preds = %3761
  %3337 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3342, i32 1), !nosanitize !30
  %3338 = extractvalue { i32, i1 } %3337, 0, !nosanitize !30
  %3339 = extractvalue { i32, i1 } %3337, 1, !nosanitize !30
  br i1 %3339, label %3340, label %3341, !prof !75, !llvm.loop !83, !nosanitize !30

3340:                                             ; preds = %3336
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

3341:                                             ; preds = %3322, %3336
  %3342 = phi i32 [ 1, %3322 ], [ %3338, %3336 ]
  %3343 = phi i32 [ %3327, %3322 ], [ %3764, %3336 ]
  %3344 = phi i32 [ %3326, %3322 ], [ %3765, %3336 ]
  %3345 = phi i32 [ 0, %3322 ], [ %3766, %3336 ]
  %3346 = phi i32 [ %3328, %3322 ], [ %3354, %3336 ]
  %3347 = phi i32 [ -1, %3322 ], [ %3767, %3336 ]
  %3348 = phi i32 [ %3313, %3322 ], [ %3763, %3336 ]
  %3349 = phi i16 [ %3311, %3322 ], [ %3762, %3336 ]
  %3350 = sext i32 %3342 to i64
  %3351 = shl nsw i64 %3350, 2
  %3352 = getelementptr i8, ptr %3323, i64 %3351
  %3353 = load i16, ptr %3352, align 2, !tbaa !28
  %3354 = zext i16 %3353 to i32
  %3355 = add nsw i32 %3345, 1
  %3356 = icmp slt i32 %3355, %3344
  %3357 = icmp eq i32 %3346, %3354
  %3358 = select i1 %3356, i1 %3357, i1 false
  br i1 %3358, label %3761, label %3359

3359:                                             ; preds = %3341
  %3360 = icmp slt i32 %3355, %3343
  br i1 %3360, label %3361, label %3421

3361:                                             ; preds = %3359
  %3362 = zext nneg i32 %3346 to i64
  %3363 = getelementptr inbounds nuw [4 x i8], ptr %3329, i64 %3362
  %3364 = getelementptr inbounds nuw i8, ptr %3363, i64 2
  br label %3365

3365:                                             ; preds = %3418, %3361
  %3366 = phi i16 [ %3413, %3418 ], [ %3349, %3361 ]
  %3367 = phi i32 [ %3415, %3418 ], [ %3348, %3361 ]
  %3368 = phi i32 [ %3419, %3418 ], [ %3355, %3361 ]
  %3369 = load i16, ptr %3364, align 2, !tbaa !28
  %3370 = zext i16 %3369 to i32
  %3371 = sub nsw i32 16, %3370
  %3372 = icmp sgt i32 %3367, %3371
  %3373 = load i16, ptr %3363, align 4, !tbaa !28
  %3374 = zext i16 %3373 to i32
  %3375 = shl i32 %3374, %3367
  %3376 = trunc i32 %3375 to i16
  %3377 = or i16 %3366, %3376
  store i16 %3377, ptr %3258, align 8, !tbaa !25
  br i1 %3372, label %3378, label %3409

.loopexit271:                                     ; preds = %3729, %3685, %3639, %3595, %3547, %3503, %3452, %3412, %3392
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

3378:                                             ; preds = %3365
  %3379 = load i64, ptr %3259, align 8, !tbaa !31
  %3380 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3379, i64 1), !nosanitize !30
  %3381 = extractvalue { i64, i1 } %3380, 1, !nosanitize !30
  br i1 %3381, label %3382, label %3383, !prof !32, !nosanitize !30

3382:                                             ; preds = %3378
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3383:                                             ; preds = %3378
  %3384 = extractvalue { i64, i1 } %3380, 0, !nosanitize !30
  %3385 = load ptr, ptr %3260, align 8, !tbaa !33
  %3386 = trunc i16 %3377 to i8
  store i64 %3384, ptr %3259, align 8, !tbaa !31
  %3387 = getelementptr inbounds nuw i8, ptr %3385, i64 %3379
  store i8 %3386, ptr %3387, align 1, !tbaa !28
  %3388 = load i64, ptr %3259, align 8, !tbaa !31
  %3389 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3388, i64 1), !nosanitize !30
  %3390 = extractvalue { i64, i1 } %3389, 1, !nosanitize !30
  br i1 %3390, label %3391, label %3392, !prof !32, !nosanitize !30

3391:                                             ; preds = %3402, %3383
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3392:                                             ; preds = %3383
  %3393 = extractvalue { i64, i1 } %3389, 0, !nosanitize !30
  %3394 = load ptr, ptr %3260, align 8, !tbaa !33
  %3395 = load i16, ptr %3258, align 8, !tbaa !25
  %3396 = lshr i16 %3395, 8
  %3397 = trunc nuw i16 %3396 to i8
  store i64 %3393, ptr %3259, align 8, !tbaa !31
  %3398 = getelementptr inbounds nuw i8, ptr %3394, i64 %3388
  store i8 %3397, ptr %3398, align 1, !tbaa !28
  %3399 = load i32, ptr %2441, align 4, !tbaa !26
  %3400 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3399), !nosanitize !30
  %3401 = extractvalue { i32, i1 } %3400, 1, !nosanitize !30
  br i1 %3401, label %.loopexit271, label %3402, !prof !32, !nosanitize !30

3402:                                             ; preds = %3392
  %3403 = extractvalue { i32, i1 } %3400, 0, !nosanitize !30
  %3404 = lshr i32 %3374, %3403
  %3405 = trunc nuw i32 %3404 to i16
  store i16 %3405, ptr %3258, align 8, !tbaa !25
  %3406 = add nsw i32 %3370, -16
  %3407 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3399, i32 %3406), !nosanitize !30
  %3408 = extractvalue { i32, i1 } %3407, 1, !nosanitize !30
  br i1 %3408, label %3391, label %3412, !prof !32, !nosanitize !30

3409:                                             ; preds = %3365
  %3410 = add nsw i32 %3367, %3370
  %3411 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3410, 0
  br label %3412

3412:                                             ; preds = %3409, %3402
  %3413 = phi i16 [ %3405, %3402 ], [ %3377, %3409 ]
  %3414 = phi { i32, i1 } [ %3407, %3402 ], [ %3411, %3409 ]
  %3415 = extractvalue { i32, i1 } %3414, 0
  store i32 %3415, ptr %2441, align 4, !tbaa !26
  %3416 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3368, i32 -1)
  %3417 = extractvalue { i32, i1 } %3416, 1, !nosanitize !30
  br i1 %3417, label %.loopexit271, label %3418, !prof !32, !nosanitize !30

3418:                                             ; preds = %3412
  %3419 = extractvalue { i32, i1 } %3416, 0, !nosanitize !30
  %3420 = icmp eq i32 %3419, 0
  br i1 %3420, label %.loopexit272, label %3365, !llvm.loop !84

3421:                                             ; preds = %3359
  %3422 = icmp eq i32 %3346, 0
  br i1 %3422, label %3569, label %3423

3423:                                             ; preds = %3421
  %3424 = icmp eq i32 %3346, %3347
  br i1 %3424, label %3476, label %3425

3425:                                             ; preds = %3423
  %3426 = zext nneg i32 %3346 to i64
  %3427 = getelementptr inbounds nuw [4 x i8], ptr %3329, i64 %3426
  %3428 = getelementptr inbounds nuw i8, ptr %3427, i64 2
  %3429 = load i16, ptr %3428, align 2, !tbaa !28
  %3430 = zext i16 %3429 to i32
  %3431 = sub nsw i32 16, %3430
  %3432 = icmp sgt i32 %3348, %3431
  %3433 = load i16, ptr %3427, align 4, !tbaa !28
  %3434 = zext i16 %3433 to i32
  %3435 = shl i32 %3434, %3348
  %3436 = trunc i32 %3435 to i16
  %3437 = or i16 %3349, %3436
  store i16 %3437, ptr %3258, align 8, !tbaa !25
  br i1 %3432, label %3438, label %3469

3438:                                             ; preds = %3425
  %3439 = load i64, ptr %3259, align 8, !tbaa !31
  %3440 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3439, i64 1), !nosanitize !30
  %3441 = extractvalue { i64, i1 } %3440, 1, !nosanitize !30
  br i1 %3441, label %3442, label %3443, !prof !32, !nosanitize !30

3442:                                             ; preds = %3438
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3443:                                             ; preds = %3438
  %3444 = extractvalue { i64, i1 } %3440, 0, !nosanitize !30
  %3445 = load ptr, ptr %3260, align 8, !tbaa !33
  %3446 = trunc i16 %3437 to i8
  store i64 %3444, ptr %3259, align 8, !tbaa !31
  %3447 = getelementptr inbounds nuw i8, ptr %3445, i64 %3439
  store i8 %3446, ptr %3447, align 1, !tbaa !28
  %3448 = load i64, ptr %3259, align 8, !tbaa !31
  %3449 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3448, i64 1), !nosanitize !30
  %3450 = extractvalue { i64, i1 } %3449, 1, !nosanitize !30
  br i1 %3450, label %3451, label %3452, !prof !32, !nosanitize !30

3451:                                             ; preds = %3462, %3443
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3452:                                             ; preds = %3443
  %3453 = extractvalue { i64, i1 } %3449, 0, !nosanitize !30
  %3454 = load ptr, ptr %3260, align 8, !tbaa !33
  %3455 = load i16, ptr %3258, align 8, !tbaa !25
  %3456 = lshr i16 %3455, 8
  %3457 = trunc nuw i16 %3456 to i8
  store i64 %3453, ptr %3259, align 8, !tbaa !31
  %3458 = getelementptr inbounds nuw i8, ptr %3454, i64 %3448
  store i8 %3457, ptr %3458, align 1, !tbaa !28
  %3459 = load i32, ptr %2441, align 4, !tbaa !26
  %3460 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3459), !nosanitize !30
  %3461 = extractvalue { i32, i1 } %3460, 1, !nosanitize !30
  br i1 %3461, label %.loopexit271, label %3462, !prof !32, !nosanitize !30

3462:                                             ; preds = %3452
  %3463 = extractvalue { i32, i1 } %3460, 0, !nosanitize !30
  %3464 = lshr i32 %3434, %3463
  %3465 = trunc nuw i32 %3464 to i16
  store i16 %3465, ptr %3258, align 8, !tbaa !25
  %3466 = add nsw i32 %3430, -16
  %3467 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3459, i32 %3466), !nosanitize !30
  %3468 = extractvalue { i32, i1 } %3467, 1, !nosanitize !30
  br i1 %3468, label %3451, label %3472, !prof !32, !nosanitize !30

3469:                                             ; preds = %3425
  %3470 = add nsw i32 %3348, %3430
  %3471 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3470, 0
  br label %3472

3472:                                             ; preds = %3469, %3462
  %3473 = phi i16 [ %3465, %3462 ], [ %3437, %3469 ]
  %3474 = phi { i32, i1 } [ %3467, %3462 ], [ %3471, %3469 ]
  %3475 = extractvalue { i32, i1 } %3474, 0
  store i32 %3475, ptr %2441, align 4, !tbaa !26
  br label %3476

3476:                                             ; preds = %3472, %3423
  %3477 = phi i16 [ %3473, %3472 ], [ %3349, %3423 ]
  %3478 = phi i32 [ %3475, %3472 ], [ %3348, %3423 ]
  %3479 = phi i32 [ %3345, %3472 ], [ %3355, %3423 ]
  %3480 = load i16, ptr %3331, align 2, !tbaa !28
  %3481 = zext i16 %3480 to i32
  %3482 = sub nsw i32 16, %3481
  %3483 = icmp sgt i32 %3478, %3482
  %3484 = load i16, ptr %3330, align 4, !tbaa !28
  %3485 = zext i16 %3484 to i32
  %3486 = shl i32 %3485, %3478
  %3487 = trunc i32 %3486 to i16
  %3488 = or i16 %3477, %3487
  store i16 %3488, ptr %3258, align 8, !tbaa !25
  br i1 %3483, label %3489, label %3520

3489:                                             ; preds = %3476
  %3490 = load i64, ptr %3259, align 8, !tbaa !31
  %3491 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3490, i64 1), !nosanitize !30
  %3492 = extractvalue { i64, i1 } %3491, 1, !nosanitize !30
  br i1 %3492, label %3493, label %3494, !prof !32, !nosanitize !30

3493:                                             ; preds = %3489
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3494:                                             ; preds = %3489
  %3495 = extractvalue { i64, i1 } %3491, 0, !nosanitize !30
  %3496 = load ptr, ptr %3260, align 8, !tbaa !33
  %3497 = trunc i16 %3488 to i8
  store i64 %3495, ptr %3259, align 8, !tbaa !31
  %3498 = getelementptr inbounds nuw i8, ptr %3496, i64 %3490
  store i8 %3497, ptr %3498, align 1, !tbaa !28
  %3499 = load i64, ptr %3259, align 8, !tbaa !31
  %3500 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3499, i64 1), !nosanitize !30
  %3501 = extractvalue { i64, i1 } %3500, 1, !nosanitize !30
  br i1 %3501, label %3502, label %3503, !prof !32, !nosanitize !30

3502:                                             ; preds = %3513, %3494
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3503:                                             ; preds = %3494
  %3504 = extractvalue { i64, i1 } %3500, 0, !nosanitize !30
  %3505 = load ptr, ptr %3260, align 8, !tbaa !33
  %3506 = load i16, ptr %3258, align 8, !tbaa !25
  %3507 = lshr i16 %3506, 8
  %3508 = trunc nuw i16 %3507 to i8
  store i64 %3504, ptr %3259, align 8, !tbaa !31
  %3509 = getelementptr inbounds nuw i8, ptr %3505, i64 %3499
  store i8 %3508, ptr %3509, align 1, !tbaa !28
  %3510 = load i32, ptr %2441, align 4, !tbaa !26
  %3511 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3510), !nosanitize !30
  %3512 = extractvalue { i32, i1 } %3511, 1, !nosanitize !30
  br i1 %3512, label %.loopexit271, label %3513, !prof !32, !nosanitize !30

3513:                                             ; preds = %3503
  %3514 = extractvalue { i32, i1 } %3511, 0, !nosanitize !30
  %3515 = lshr i32 %3485, %3514
  %3516 = trunc nuw i32 %3515 to i16
  store i16 %3516, ptr %3258, align 8, !tbaa !25
  %3517 = add nsw i32 %3481, -16
  %3518 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3510, i32 %3517), !nosanitize !30
  %3519 = extractvalue { i32, i1 } %3518, 1, !nosanitize !30
  br i1 %3519, label %3502, label %3523, !prof !32, !nosanitize !30

3520:                                             ; preds = %3476
  %3521 = add nsw i32 %3478, %3481
  %3522 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3521, 0
  br label %3523

3523:                                             ; preds = %3520, %3513
  %3524 = phi i16 [ %3516, %3513 ], [ %3488, %3520 ]
  %3525 = phi { i32, i1 } [ %3518, %3513 ], [ %3522, %3520 ]
  %3526 = extractvalue { i32, i1 } %3525, 0
  store i32 %3526, ptr %2441, align 4, !tbaa !26
  %3527 = icmp sgt i32 %3526, 14
  %3528 = add i32 %3479, 65533
  br i1 %3527, label %3529, label %3563

3529:                                             ; preds = %3523
  %3530 = and i32 %3528, 65535
  %3531 = shl i32 %3528, %3526
  %3532 = trunc i32 %3531 to i16
  %3533 = or i16 %3524, %3532
  store i16 %3533, ptr %3258, align 8, !tbaa !25
  %3534 = load i64, ptr %3259, align 8, !tbaa !31
  %3535 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3534, i64 1), !nosanitize !30
  %3536 = extractvalue { i64, i1 } %3535, 1, !nosanitize !30
  br i1 %3536, label %3537, label %3538, !prof !32, !nosanitize !30

3537:                                             ; preds = %3529
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3538:                                             ; preds = %3529
  %3539 = extractvalue { i64, i1 } %3535, 0, !nosanitize !30
  %3540 = load ptr, ptr %3260, align 8, !tbaa !33
  %3541 = trunc i16 %3533 to i8
  store i64 %3539, ptr %3259, align 8, !tbaa !31
  %3542 = getelementptr inbounds nuw i8, ptr %3540, i64 %3534
  store i8 %3541, ptr %3542, align 1, !tbaa !28
  %3543 = load i64, ptr %3259, align 8, !tbaa !31
  %3544 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3543, i64 1), !nosanitize !30
  %3545 = extractvalue { i64, i1 } %3544, 1, !nosanitize !30
  br i1 %3545, label %3546, label %3547, !prof !32, !nosanitize !30

3546:                                             ; preds = %3557, %3538
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3547:                                             ; preds = %3538
  %3548 = extractvalue { i64, i1 } %3544, 0, !nosanitize !30
  %3549 = load ptr, ptr %3260, align 8, !tbaa !33
  %3550 = load i16, ptr %3258, align 8, !tbaa !25
  %3551 = lshr i16 %3550, 8
  %3552 = trunc nuw i16 %3551 to i8
  store i64 %3548, ptr %3259, align 8, !tbaa !31
  %3553 = getelementptr inbounds nuw i8, ptr %3549, i64 %3543
  store i8 %3552, ptr %3553, align 1, !tbaa !28
  %3554 = load i32, ptr %2441, align 4, !tbaa !26
  %3555 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3554), !nosanitize !30
  %3556 = extractvalue { i32, i1 } %3555, 1, !nosanitize !30
  br i1 %3556, label %.loopexit271, label %3557, !prof !32, !nosanitize !30

3557:                                             ; preds = %3547
  %3558 = extractvalue { i32, i1 } %3555, 0, !nosanitize !30
  %3559 = lshr i32 %3530, %3558
  %3560 = trunc nuw i32 %3559 to i16
  store i16 %3560, ptr %3258, align 8, !tbaa !25
  %3561 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3554, i32 -14), !nosanitize !30
  %3562 = extractvalue { i32, i1 } %3561, 1, !nosanitize !30
  br i1 %3562, label %3546, label %3751, !prof !32, !nosanitize !30

3563:                                             ; preds = %3523
  %3564 = shl i32 %3528, %3526
  %3565 = trunc i32 %3564 to i16
  %3566 = or i16 %3524, %3565
  store i16 %3566, ptr %3258, align 8, !tbaa !25
  %3567 = add nsw i32 %3526, 2
  %3568 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3567, 0
  br label %3751

3569:                                             ; preds = %3421
  %3570 = icmp slt i32 %3345, 10
  br i1 %3570, label %3571, label %3661

3571:                                             ; preds = %3569
  %3572 = load i16, ptr %3335, align 2, !tbaa !28
  %3573 = zext i16 %3572 to i32
  %3574 = sub nsw i32 16, %3573
  %3575 = icmp sgt i32 %3348, %3574
  %3576 = load i16, ptr %3334, align 4, !tbaa !28
  %3577 = zext i16 %3576 to i32
  %3578 = shl i32 %3577, %3348
  %3579 = trunc i32 %3578 to i16
  %3580 = or i16 %3349, %3579
  store i16 %3580, ptr %3258, align 8, !tbaa !25
  br i1 %3575, label %3581, label %3612

3581:                                             ; preds = %3571
  %3582 = load i64, ptr %3259, align 8, !tbaa !31
  %3583 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3582, i64 1), !nosanitize !30
  %3584 = extractvalue { i64, i1 } %3583, 1, !nosanitize !30
  br i1 %3584, label %3585, label %3586, !prof !32, !nosanitize !30

3585:                                             ; preds = %3581
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3586:                                             ; preds = %3581
  %3587 = extractvalue { i64, i1 } %3583, 0, !nosanitize !30
  %3588 = load ptr, ptr %3260, align 8, !tbaa !33
  %3589 = trunc i16 %3580 to i8
  store i64 %3587, ptr %3259, align 8, !tbaa !31
  %3590 = getelementptr inbounds nuw i8, ptr %3588, i64 %3582
  store i8 %3589, ptr %3590, align 1, !tbaa !28
  %3591 = load i64, ptr %3259, align 8, !tbaa !31
  %3592 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3591, i64 1), !nosanitize !30
  %3593 = extractvalue { i64, i1 } %3592, 1, !nosanitize !30
  br i1 %3593, label %3594, label %3595, !prof !32, !nosanitize !30

3594:                                             ; preds = %3605, %3586
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3595:                                             ; preds = %3586
  %3596 = extractvalue { i64, i1 } %3592, 0, !nosanitize !30
  %3597 = load ptr, ptr %3260, align 8, !tbaa !33
  %3598 = load i16, ptr %3258, align 8, !tbaa !25
  %3599 = lshr i16 %3598, 8
  %3600 = trunc nuw i16 %3599 to i8
  store i64 %3596, ptr %3259, align 8, !tbaa !31
  %3601 = getelementptr inbounds nuw i8, ptr %3597, i64 %3591
  store i8 %3600, ptr %3601, align 1, !tbaa !28
  %3602 = load i32, ptr %2441, align 4, !tbaa !26
  %3603 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3602), !nosanitize !30
  %3604 = extractvalue { i32, i1 } %3603, 1, !nosanitize !30
  br i1 %3604, label %.loopexit271, label %3605, !prof !32, !nosanitize !30

3605:                                             ; preds = %3595
  %3606 = extractvalue { i32, i1 } %3603, 0, !nosanitize !30
  %3607 = lshr i32 %3577, %3606
  %3608 = trunc nuw i32 %3607 to i16
  store i16 %3608, ptr %3258, align 8, !tbaa !25
  %3609 = add nsw i32 %3573, -16
  %3610 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3602, i32 %3609), !nosanitize !30
  %3611 = extractvalue { i32, i1 } %3610, 1, !nosanitize !30
  br i1 %3611, label %3594, label %3615, !prof !32, !nosanitize !30

3612:                                             ; preds = %3571
  %3613 = add nsw i32 %3348, %3573
  %3614 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3613, 0
  br label %3615

3615:                                             ; preds = %3612, %3605
  %3616 = phi i16 [ %3608, %3605 ], [ %3580, %3612 ]
  %3617 = phi { i32, i1 } [ %3610, %3605 ], [ %3614, %3612 ]
  %3618 = extractvalue { i32, i1 } %3617, 0
  store i32 %3618, ptr %2441, align 4, !tbaa !26
  %3619 = icmp sgt i32 %3618, 13
  %3620 = add nsw i32 %3345, 65534
  br i1 %3619, label %3621, label %3655

3621:                                             ; preds = %3615
  %3622 = and i32 %3620, 65535
  %3623 = shl i32 %3620, %3618
  %3624 = trunc i32 %3623 to i16
  %3625 = or i16 %3616, %3624
  store i16 %3625, ptr %3258, align 8, !tbaa !25
  %3626 = load i64, ptr %3259, align 8, !tbaa !31
  %3627 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3626, i64 1), !nosanitize !30
  %3628 = extractvalue { i64, i1 } %3627, 1, !nosanitize !30
  br i1 %3628, label %3629, label %3630, !prof !32, !nosanitize !30

3629:                                             ; preds = %3621
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3630:                                             ; preds = %3621
  %3631 = extractvalue { i64, i1 } %3627, 0, !nosanitize !30
  %3632 = load ptr, ptr %3260, align 8, !tbaa !33
  %3633 = trunc i16 %3625 to i8
  store i64 %3631, ptr %3259, align 8, !tbaa !31
  %3634 = getelementptr inbounds nuw i8, ptr %3632, i64 %3626
  store i8 %3633, ptr %3634, align 1, !tbaa !28
  %3635 = load i64, ptr %3259, align 8, !tbaa !31
  %3636 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3635, i64 1), !nosanitize !30
  %3637 = extractvalue { i64, i1 } %3636, 1, !nosanitize !30
  br i1 %3637, label %3638, label %3639, !prof !32, !nosanitize !30

3638:                                             ; preds = %3649, %3630
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3639:                                             ; preds = %3630
  %3640 = extractvalue { i64, i1 } %3636, 0, !nosanitize !30
  %3641 = load ptr, ptr %3260, align 8, !tbaa !33
  %3642 = load i16, ptr %3258, align 8, !tbaa !25
  %3643 = lshr i16 %3642, 8
  %3644 = trunc nuw i16 %3643 to i8
  store i64 %3640, ptr %3259, align 8, !tbaa !31
  %3645 = getelementptr inbounds nuw i8, ptr %3641, i64 %3635
  store i8 %3644, ptr %3645, align 1, !tbaa !28
  %3646 = load i32, ptr %2441, align 4, !tbaa !26
  %3647 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3646), !nosanitize !30
  %3648 = extractvalue { i32, i1 } %3647, 1, !nosanitize !30
  br i1 %3648, label %.loopexit271, label %3649, !prof !32, !nosanitize !30

3649:                                             ; preds = %3639
  %3650 = extractvalue { i32, i1 } %3647, 0, !nosanitize !30
  %3651 = lshr i32 %3622, %3650
  %3652 = trunc nuw i32 %3651 to i16
  store i16 %3652, ptr %3258, align 8, !tbaa !25
  %3653 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3646, i32 -13), !nosanitize !30
  %3654 = extractvalue { i32, i1 } %3653, 1, !nosanitize !30
  br i1 %3654, label %3638, label %3751, !prof !32, !nosanitize !30

3655:                                             ; preds = %3615
  %3656 = shl i32 %3620, %3618
  %3657 = trunc i32 %3656 to i16
  %3658 = or i16 %3616, %3657
  store i16 %3658, ptr %3258, align 8, !tbaa !25
  %3659 = add nsw i32 %3618, 3
  %3660 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3659, 0
  br label %3751

3661:                                             ; preds = %3569
  %3662 = load i16, ptr %3333, align 2, !tbaa !28
  %3663 = zext i16 %3662 to i32
  %3664 = sub nsw i32 16, %3663
  %3665 = icmp sgt i32 %3348, %3664
  %3666 = load i16, ptr %3332, align 4, !tbaa !28
  %3667 = zext i16 %3666 to i32
  %3668 = shl i32 %3667, %3348
  %3669 = trunc i32 %3668 to i16
  %3670 = or i16 %3349, %3669
  store i16 %3670, ptr %3258, align 8, !tbaa !25
  br i1 %3665, label %3671, label %3702

3671:                                             ; preds = %3661
  %3672 = load i64, ptr %3259, align 8, !tbaa !31
  %3673 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3672, i64 1), !nosanitize !30
  %3674 = extractvalue { i64, i1 } %3673, 1, !nosanitize !30
  br i1 %3674, label %3675, label %3676, !prof !32, !nosanitize !30

3675:                                             ; preds = %3671
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3676:                                             ; preds = %3671
  %3677 = extractvalue { i64, i1 } %3673, 0, !nosanitize !30
  %3678 = load ptr, ptr %3260, align 8, !tbaa !33
  %3679 = trunc i16 %3670 to i8
  store i64 %3677, ptr %3259, align 8, !tbaa !31
  %3680 = getelementptr inbounds nuw i8, ptr %3678, i64 %3672
  store i8 %3679, ptr %3680, align 1, !tbaa !28
  %3681 = load i64, ptr %3259, align 8, !tbaa !31
  %3682 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3681, i64 1), !nosanitize !30
  %3683 = extractvalue { i64, i1 } %3682, 1, !nosanitize !30
  br i1 %3683, label %3684, label %3685, !prof !32, !nosanitize !30

3684:                                             ; preds = %3695, %3676
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3685:                                             ; preds = %3676
  %3686 = extractvalue { i64, i1 } %3682, 0, !nosanitize !30
  %3687 = load ptr, ptr %3260, align 8, !tbaa !33
  %3688 = load i16, ptr %3258, align 8, !tbaa !25
  %3689 = lshr i16 %3688, 8
  %3690 = trunc nuw i16 %3689 to i8
  store i64 %3686, ptr %3259, align 8, !tbaa !31
  %3691 = getelementptr inbounds nuw i8, ptr %3687, i64 %3681
  store i8 %3690, ptr %3691, align 1, !tbaa !28
  %3692 = load i32, ptr %2441, align 4, !tbaa !26
  %3693 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3692), !nosanitize !30
  %3694 = extractvalue { i32, i1 } %3693, 1, !nosanitize !30
  br i1 %3694, label %.loopexit271, label %3695, !prof !32, !nosanitize !30

3695:                                             ; preds = %3685
  %3696 = extractvalue { i32, i1 } %3693, 0, !nosanitize !30
  %3697 = lshr i32 %3667, %3696
  %3698 = trunc nuw i32 %3697 to i16
  store i16 %3698, ptr %3258, align 8, !tbaa !25
  %3699 = add nsw i32 %3663, -16
  %3700 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3692, i32 %3699), !nosanitize !30
  %3701 = extractvalue { i32, i1 } %3700, 1, !nosanitize !30
  br i1 %3701, label %3684, label %3705, !prof !32, !nosanitize !30

3702:                                             ; preds = %3661
  %3703 = add nsw i32 %3348, %3663
  %3704 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3703, 0
  br label %3705

3705:                                             ; preds = %3702, %3695
  %3706 = phi i16 [ %3698, %3695 ], [ %3670, %3702 ]
  %3707 = phi { i32, i1 } [ %3700, %3695 ], [ %3704, %3702 ]
  %3708 = extractvalue { i32, i1 } %3707, 0
  store i32 %3708, ptr %2441, align 4, !tbaa !26
  %3709 = icmp sgt i32 %3708, 9
  %3710 = add nuw i32 %3345, 65526
  br i1 %3709, label %3711, label %3745

3711:                                             ; preds = %3705
  %3712 = and i32 %3710, 65535
  %3713 = shl i32 %3710, %3708
  %3714 = trunc i32 %3713 to i16
  %3715 = or i16 %3706, %3714
  store i16 %3715, ptr %3258, align 8, !tbaa !25
  %3716 = load i64, ptr %3259, align 8, !tbaa !31
  %3717 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3716, i64 1), !nosanitize !30
  %3718 = extractvalue { i64, i1 } %3717, 1, !nosanitize !30
  br i1 %3718, label %3719, label %3720, !prof !32, !nosanitize !30

3719:                                             ; preds = %3711
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3720:                                             ; preds = %3711
  %3721 = extractvalue { i64, i1 } %3717, 0, !nosanitize !30
  %3722 = load ptr, ptr %3260, align 8, !tbaa !33
  %3723 = trunc i16 %3715 to i8
  store i64 %3721, ptr %3259, align 8, !tbaa !31
  %3724 = getelementptr inbounds nuw i8, ptr %3722, i64 %3716
  store i8 %3723, ptr %3724, align 1, !tbaa !28
  %3725 = load i64, ptr %3259, align 8, !tbaa !31
  %3726 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3725, i64 1), !nosanitize !30
  %3727 = extractvalue { i64, i1 } %3726, 1, !nosanitize !30
  br i1 %3727, label %3728, label %3729, !prof !32, !nosanitize !30

3728:                                             ; preds = %3739, %3720
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3729:                                             ; preds = %3720
  %3730 = extractvalue { i64, i1 } %3726, 0, !nosanitize !30
  %3731 = load ptr, ptr %3260, align 8, !tbaa !33
  %3732 = load i16, ptr %3258, align 8, !tbaa !25
  %3733 = lshr i16 %3732, 8
  %3734 = trunc nuw i16 %3733 to i8
  store i64 %3730, ptr %3259, align 8, !tbaa !31
  %3735 = getelementptr inbounds nuw i8, ptr %3731, i64 %3725
  store i8 %3734, ptr %3735, align 1, !tbaa !28
  %3736 = load i32, ptr %2441, align 4, !tbaa !26
  %3737 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3736), !nosanitize !30
  %3738 = extractvalue { i32, i1 } %3737, 1, !nosanitize !30
  br i1 %3738, label %.loopexit271, label %3739, !prof !32, !nosanitize !30

3739:                                             ; preds = %3729
  %3740 = extractvalue { i32, i1 } %3737, 0, !nosanitize !30
  %3741 = lshr i32 %3712, %3740
  %3742 = trunc nuw i32 %3741 to i16
  store i16 %3742, ptr %3258, align 8, !tbaa !25
  %3743 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3736, i32 -9), !nosanitize !30
  %3744 = extractvalue { i32, i1 } %3743, 1, !nosanitize !30
  br i1 %3744, label %3728, label %3751, !prof !32, !nosanitize !30

3745:                                             ; preds = %3705
  %3746 = shl i32 %3710, %3708
  %3747 = trunc i32 %3746 to i16
  %3748 = or i16 %3706, %3747
  store i16 %3748, ptr %3258, align 8, !tbaa !25
  %3749 = add nsw i32 %3708, 7
  %3750 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3749, 0
  br label %3751

3751:                                             ; preds = %3745, %3739, %3655, %3649, %3563, %3557
  %3752 = phi i16 [ %3560, %3557 ], [ %3566, %3563 ], [ %3652, %3649 ], [ %3658, %3655 ], [ %3742, %3739 ], [ %3748, %3745 ]
  %3753 = phi { i32, i1 } [ %3561, %3557 ], [ %3568, %3563 ], [ %3653, %3649 ], [ %3660, %3655 ], [ %3743, %3739 ], [ %3750, %3745 ]
  %3754 = extractvalue { i32, i1 } %3753, 0
  store i32 %3754, ptr %2441, align 4, !tbaa !26
  br label %.loopexit272

.loopexit272:                                     ; preds = %3418, %3751
  %3755 = phi i16 [ %3752, %3751 ], [ %3413, %3418 ]
  %3756 = phi i32 [ %3754, %3751 ], [ %3415, %3418 ]
  %3757 = icmp eq i16 %3353, 0
  br i1 %3757, label %3761, label %3758

3758:                                             ; preds = %.loopexit272
  %3759 = select i1 %3357, i32 3, i32 4
  %3760 = select i1 %3357, i32 6, i32 7
  br label %3761

3761:                                             ; preds = %3758, %.loopexit272, %3341
  %3762 = phi i16 [ %3349, %3341 ], [ %3755, %.loopexit272 ], [ %3755, %3758 ]
  %3763 = phi i32 [ %3348, %3341 ], [ %3756, %.loopexit272 ], [ %3756, %3758 ]
  %3764 = phi i32 [ %3343, %3341 ], [ 3, %.loopexit272 ], [ %3759, %3758 ]
  %3765 = phi i32 [ %3344, %3341 ], [ 138, %.loopexit272 ], [ %3760, %3758 ]
  %3766 = phi i32 [ %3355, %3341 ], [ 0, %.loopexit272 ], [ 0, %3758 ]
  %3767 = phi i32 [ %3347, %3341 ], [ %3346, %.loopexit272 ], [ %3346, %3758 ]
  %3768 = icmp sgt i32 %3342, %3320
  br i1 %3768, label %.loopexit274, label %3336, !llvm.loop !83

.loopexit274:                                     ; preds = %3761, %3319
  %3769 = phi i16 [ %3311, %3319 ], [ %3762, %3761 ]
  %3770 = phi i32 [ %3313, %3319 ], [ %3763, %3761 ]
  br i1 %3155, label %.loopexit275, label %3771, !prof !32, !nosanitize !30

3771:                                             ; preds = %.loopexit274
  %3772 = extractvalue { i32, i1 } %3154, 0, !nosanitize !30
  %3773 = icmp slt i32 %3772, 0
  br i1 %3773, label %.loopexit270, label %3774

3774:                                             ; preds = %3771
  %3775 = getelementptr i8, ptr %0, i64 2506
  %3776 = load i16, ptr %3775, align 2, !tbaa !28
  %3777 = icmp eq i16 %3776, 0
  %3778 = select i1 %3777, i32 138, i32 7
  %3779 = select i1 %3777, i32 3, i32 4
  %3780 = zext i16 %3776 to i32
  %3781 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3782 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3783 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3784 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3785 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3786 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3787 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3793

3788:                                             ; preds = %4213
  %3789 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3794, i32 1), !nosanitize !30
  %3790 = extractvalue { i32, i1 } %3789, 0, !nosanitize !30
  %3791 = extractvalue { i32, i1 } %3789, 1, !nosanitize !30
  br i1 %3791, label %3792, label %3793, !prof !75, !llvm.loop !83, !nosanitize !30

3792:                                             ; preds = %3788
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

3793:                                             ; preds = %3774, %3788
  %3794 = phi i32 [ 1, %3774 ], [ %3790, %3788 ]
  %3795 = phi i32 [ %3779, %3774 ], [ %4216, %3788 ]
  %3796 = phi i32 [ %3778, %3774 ], [ %4217, %3788 ]
  %3797 = phi i32 [ 0, %3774 ], [ %4218, %3788 ]
  %3798 = phi i32 [ %3780, %3774 ], [ %3806, %3788 ]
  %3799 = phi i32 [ -1, %3774 ], [ %4219, %3788 ]
  %3800 = phi i32 [ %3770, %3774 ], [ %4215, %3788 ]
  %3801 = phi i16 [ %3769, %3774 ], [ %4214, %3788 ]
  %3802 = sext i32 %3794 to i64
  %3803 = shl nsw i64 %3802, 2
  %3804 = getelementptr i8, ptr %3775, i64 %3803
  %3805 = load i16, ptr %3804, align 2, !tbaa !28
  %3806 = zext i16 %3805 to i32
  %3807 = add nsw i32 %3797, 1
  %3808 = icmp slt i32 %3807, %3796
  %3809 = icmp eq i32 %3798, %3806
  %3810 = select i1 %3808, i1 %3809, i1 false
  br i1 %3810, label %4213, label %3811

3811:                                             ; preds = %3793
  %3812 = icmp slt i32 %3807, %3795
  br i1 %3812, label %3813, label %3873

3813:                                             ; preds = %3811
  %3814 = zext nneg i32 %3798 to i64
  %3815 = getelementptr inbounds nuw [4 x i8], ptr %3781, i64 %3814
  %3816 = getelementptr inbounds nuw i8, ptr %3815, i64 2
  br label %3817

3817:                                             ; preds = %3870, %3813
  %3818 = phi i16 [ %3865, %3870 ], [ %3801, %3813 ]
  %3819 = phi i32 [ %3867, %3870 ], [ %3800, %3813 ]
  %3820 = phi i32 [ %3871, %3870 ], [ %3807, %3813 ]
  %3821 = load i16, ptr %3816, align 2, !tbaa !28
  %3822 = zext i16 %3821 to i32
  %3823 = sub nsw i32 16, %3822
  %3824 = icmp sgt i32 %3819, %3823
  %3825 = load i16, ptr %3815, align 4, !tbaa !28
  %3826 = zext i16 %3825 to i32
  %3827 = shl i32 %3826, %3819
  %3828 = trunc i32 %3827 to i16
  %3829 = or i16 %3818, %3828
  store i16 %3829, ptr %3258, align 8, !tbaa !25
  br i1 %3824, label %3830, label %3861

.loopexit267:                                     ; preds = %4181, %4137, %4091, %4047, %3999, %3955, %3904, %3864, %3844
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

3830:                                             ; preds = %3817
  %3831 = load i64, ptr %3259, align 8, !tbaa !31
  %3832 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3831, i64 1), !nosanitize !30
  %3833 = extractvalue { i64, i1 } %3832, 1, !nosanitize !30
  br i1 %3833, label %3834, label %3835, !prof !32, !nosanitize !30

3834:                                             ; preds = %3830
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3835:                                             ; preds = %3830
  %3836 = extractvalue { i64, i1 } %3832, 0, !nosanitize !30
  %3837 = load ptr, ptr %3260, align 8, !tbaa !33
  %3838 = trunc i16 %3829 to i8
  store i64 %3836, ptr %3259, align 8, !tbaa !31
  %3839 = getelementptr inbounds nuw i8, ptr %3837, i64 %3831
  store i8 %3838, ptr %3839, align 1, !tbaa !28
  %3840 = load i64, ptr %3259, align 8, !tbaa !31
  %3841 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3840, i64 1), !nosanitize !30
  %3842 = extractvalue { i64, i1 } %3841, 1, !nosanitize !30
  br i1 %3842, label %3843, label %3844, !prof !32, !nosanitize !30

3843:                                             ; preds = %3854, %3835
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3844:                                             ; preds = %3835
  %3845 = extractvalue { i64, i1 } %3841, 0, !nosanitize !30
  %3846 = load ptr, ptr %3260, align 8, !tbaa !33
  %3847 = load i16, ptr %3258, align 8, !tbaa !25
  %3848 = lshr i16 %3847, 8
  %3849 = trunc nuw i16 %3848 to i8
  store i64 %3845, ptr %3259, align 8, !tbaa !31
  %3850 = getelementptr inbounds nuw i8, ptr %3846, i64 %3840
  store i8 %3849, ptr %3850, align 1, !tbaa !28
  %3851 = load i32, ptr %2441, align 4, !tbaa !26
  %3852 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3851), !nosanitize !30
  %3853 = extractvalue { i32, i1 } %3852, 1, !nosanitize !30
  br i1 %3853, label %.loopexit267, label %3854, !prof !32, !nosanitize !30

3854:                                             ; preds = %3844
  %3855 = extractvalue { i32, i1 } %3852, 0, !nosanitize !30
  %3856 = lshr i32 %3826, %3855
  %3857 = trunc nuw i32 %3856 to i16
  store i16 %3857, ptr %3258, align 8, !tbaa !25
  %3858 = add nsw i32 %3822, -16
  %3859 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3851, i32 %3858), !nosanitize !30
  %3860 = extractvalue { i32, i1 } %3859, 1, !nosanitize !30
  br i1 %3860, label %3843, label %3864, !prof !32, !nosanitize !30

3861:                                             ; preds = %3817
  %3862 = add nsw i32 %3819, %3822
  %3863 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3862, 0
  br label %3864

3864:                                             ; preds = %3861, %3854
  %3865 = phi i16 [ %3857, %3854 ], [ %3829, %3861 ]
  %3866 = phi { i32, i1 } [ %3859, %3854 ], [ %3863, %3861 ]
  %3867 = extractvalue { i32, i1 } %3866, 0
  store i32 %3867, ptr %2441, align 4, !tbaa !26
  %3868 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3820, i32 -1)
  %3869 = extractvalue { i32, i1 } %3868, 1, !nosanitize !30
  br i1 %3869, label %.loopexit267, label %3870, !prof !32, !nosanitize !30

3870:                                             ; preds = %3864
  %3871 = extractvalue { i32, i1 } %3868, 0, !nosanitize !30
  %3872 = icmp eq i32 %3871, 0
  br i1 %3872, label %.loopexit268, label %3817, !llvm.loop !84

3873:                                             ; preds = %3811
  %3874 = icmp eq i32 %3798, 0
  br i1 %3874, label %4021, label %3875

3875:                                             ; preds = %3873
  %3876 = icmp eq i32 %3798, %3799
  br i1 %3876, label %3928, label %3877

3877:                                             ; preds = %3875
  %3878 = zext nneg i32 %3798 to i64
  %3879 = getelementptr inbounds nuw [4 x i8], ptr %3781, i64 %3878
  %3880 = getelementptr inbounds nuw i8, ptr %3879, i64 2
  %3881 = load i16, ptr %3880, align 2, !tbaa !28
  %3882 = zext i16 %3881 to i32
  %3883 = sub nsw i32 16, %3882
  %3884 = icmp sgt i32 %3800, %3883
  %3885 = load i16, ptr %3879, align 4, !tbaa !28
  %3886 = zext i16 %3885 to i32
  %3887 = shl i32 %3886, %3800
  %3888 = trunc i32 %3887 to i16
  %3889 = or i16 %3801, %3888
  store i16 %3889, ptr %3258, align 8, !tbaa !25
  br i1 %3884, label %3890, label %3921

3890:                                             ; preds = %3877
  %3891 = load i64, ptr %3259, align 8, !tbaa !31
  %3892 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3891, i64 1), !nosanitize !30
  %3893 = extractvalue { i64, i1 } %3892, 1, !nosanitize !30
  br i1 %3893, label %3894, label %3895, !prof !32, !nosanitize !30

3894:                                             ; preds = %3890
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3895:                                             ; preds = %3890
  %3896 = extractvalue { i64, i1 } %3892, 0, !nosanitize !30
  %3897 = load ptr, ptr %3260, align 8, !tbaa !33
  %3898 = trunc i16 %3889 to i8
  store i64 %3896, ptr %3259, align 8, !tbaa !31
  %3899 = getelementptr inbounds nuw i8, ptr %3897, i64 %3891
  store i8 %3898, ptr %3899, align 1, !tbaa !28
  %3900 = load i64, ptr %3259, align 8, !tbaa !31
  %3901 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3900, i64 1), !nosanitize !30
  %3902 = extractvalue { i64, i1 } %3901, 1, !nosanitize !30
  br i1 %3902, label %3903, label %3904, !prof !32, !nosanitize !30

3903:                                             ; preds = %3914, %3895
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3904:                                             ; preds = %3895
  %3905 = extractvalue { i64, i1 } %3901, 0, !nosanitize !30
  %3906 = load ptr, ptr %3260, align 8, !tbaa !33
  %3907 = load i16, ptr %3258, align 8, !tbaa !25
  %3908 = lshr i16 %3907, 8
  %3909 = trunc nuw i16 %3908 to i8
  store i64 %3905, ptr %3259, align 8, !tbaa !31
  %3910 = getelementptr inbounds nuw i8, ptr %3906, i64 %3900
  store i8 %3909, ptr %3910, align 1, !tbaa !28
  %3911 = load i32, ptr %2441, align 4, !tbaa !26
  %3912 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3911), !nosanitize !30
  %3913 = extractvalue { i32, i1 } %3912, 1, !nosanitize !30
  br i1 %3913, label %.loopexit267, label %3914, !prof !32, !nosanitize !30

3914:                                             ; preds = %3904
  %3915 = extractvalue { i32, i1 } %3912, 0, !nosanitize !30
  %3916 = lshr i32 %3886, %3915
  %3917 = trunc nuw i32 %3916 to i16
  store i16 %3917, ptr %3258, align 8, !tbaa !25
  %3918 = add nsw i32 %3882, -16
  %3919 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3911, i32 %3918), !nosanitize !30
  %3920 = extractvalue { i32, i1 } %3919, 1, !nosanitize !30
  br i1 %3920, label %3903, label %3924, !prof !32, !nosanitize !30

3921:                                             ; preds = %3877
  %3922 = add nsw i32 %3800, %3882
  %3923 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3922, 0
  br label %3924

3924:                                             ; preds = %3921, %3914
  %3925 = phi i16 [ %3917, %3914 ], [ %3889, %3921 ]
  %3926 = phi { i32, i1 } [ %3919, %3914 ], [ %3923, %3921 ]
  %3927 = extractvalue { i32, i1 } %3926, 0
  store i32 %3927, ptr %2441, align 4, !tbaa !26
  br label %3928

3928:                                             ; preds = %3924, %3875
  %3929 = phi i16 [ %3925, %3924 ], [ %3801, %3875 ]
  %3930 = phi i32 [ %3927, %3924 ], [ %3800, %3875 ]
  %3931 = phi i32 [ %3797, %3924 ], [ %3807, %3875 ]
  %3932 = load i16, ptr %3783, align 2, !tbaa !28
  %3933 = zext i16 %3932 to i32
  %3934 = sub nsw i32 16, %3933
  %3935 = icmp sgt i32 %3930, %3934
  %3936 = load i16, ptr %3782, align 4, !tbaa !28
  %3937 = zext i16 %3936 to i32
  %3938 = shl i32 %3937, %3930
  %3939 = trunc i32 %3938 to i16
  %3940 = or i16 %3929, %3939
  store i16 %3940, ptr %3258, align 8, !tbaa !25
  br i1 %3935, label %3941, label %3972

3941:                                             ; preds = %3928
  %3942 = load i64, ptr %3259, align 8, !tbaa !31
  %3943 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3942, i64 1), !nosanitize !30
  %3944 = extractvalue { i64, i1 } %3943, 1, !nosanitize !30
  br i1 %3944, label %3945, label %3946, !prof !32, !nosanitize !30

3945:                                             ; preds = %3941
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3946:                                             ; preds = %3941
  %3947 = extractvalue { i64, i1 } %3943, 0, !nosanitize !30
  %3948 = load ptr, ptr %3260, align 8, !tbaa !33
  %3949 = trunc i16 %3940 to i8
  store i64 %3947, ptr %3259, align 8, !tbaa !31
  %3950 = getelementptr inbounds nuw i8, ptr %3948, i64 %3942
  store i8 %3949, ptr %3950, align 1, !tbaa !28
  %3951 = load i64, ptr %3259, align 8, !tbaa !31
  %3952 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3951, i64 1), !nosanitize !30
  %3953 = extractvalue { i64, i1 } %3952, 1, !nosanitize !30
  br i1 %3953, label %3954, label %3955, !prof !32, !nosanitize !30

3954:                                             ; preds = %3965, %3946
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3955:                                             ; preds = %3946
  %3956 = extractvalue { i64, i1 } %3952, 0, !nosanitize !30
  %3957 = load ptr, ptr %3260, align 8, !tbaa !33
  %3958 = load i16, ptr %3258, align 8, !tbaa !25
  %3959 = lshr i16 %3958, 8
  %3960 = trunc nuw i16 %3959 to i8
  store i64 %3956, ptr %3259, align 8, !tbaa !31
  %3961 = getelementptr inbounds nuw i8, ptr %3957, i64 %3951
  store i8 %3960, ptr %3961, align 1, !tbaa !28
  %3962 = load i32, ptr %2441, align 4, !tbaa !26
  %3963 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3962), !nosanitize !30
  %3964 = extractvalue { i32, i1 } %3963, 1, !nosanitize !30
  br i1 %3964, label %.loopexit267, label %3965, !prof !32, !nosanitize !30

3965:                                             ; preds = %3955
  %3966 = extractvalue { i32, i1 } %3963, 0, !nosanitize !30
  %3967 = lshr i32 %3937, %3966
  %3968 = trunc nuw i32 %3967 to i16
  store i16 %3968, ptr %3258, align 8, !tbaa !25
  %3969 = add nsw i32 %3933, -16
  %3970 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3962, i32 %3969), !nosanitize !30
  %3971 = extractvalue { i32, i1 } %3970, 1, !nosanitize !30
  br i1 %3971, label %3954, label %3975, !prof !32, !nosanitize !30

3972:                                             ; preds = %3928
  %3973 = add nsw i32 %3930, %3933
  %3974 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3973, 0
  br label %3975

3975:                                             ; preds = %3972, %3965
  %3976 = phi i16 [ %3968, %3965 ], [ %3940, %3972 ]
  %3977 = phi { i32, i1 } [ %3970, %3965 ], [ %3974, %3972 ]
  %3978 = extractvalue { i32, i1 } %3977, 0
  store i32 %3978, ptr %2441, align 4, !tbaa !26
  %3979 = icmp sgt i32 %3978, 14
  %3980 = add i32 %3931, 65533
  br i1 %3979, label %3981, label %4015

3981:                                             ; preds = %3975
  %3982 = and i32 %3980, 65535
  %3983 = shl i32 %3980, %3978
  %3984 = trunc i32 %3983 to i16
  %3985 = or i16 %3976, %3984
  store i16 %3985, ptr %3258, align 8, !tbaa !25
  %3986 = load i64, ptr %3259, align 8, !tbaa !31
  %3987 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3986, i64 1), !nosanitize !30
  %3988 = extractvalue { i64, i1 } %3987, 1, !nosanitize !30
  br i1 %3988, label %3989, label %3990, !prof !32, !nosanitize !30

3989:                                             ; preds = %3981
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3990:                                             ; preds = %3981
  %3991 = extractvalue { i64, i1 } %3987, 0, !nosanitize !30
  %3992 = load ptr, ptr %3260, align 8, !tbaa !33
  %3993 = trunc i16 %3985 to i8
  store i64 %3991, ptr %3259, align 8, !tbaa !31
  %3994 = getelementptr inbounds nuw i8, ptr %3992, i64 %3986
  store i8 %3993, ptr %3994, align 1, !tbaa !28
  %3995 = load i64, ptr %3259, align 8, !tbaa !31
  %3996 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3995, i64 1), !nosanitize !30
  %3997 = extractvalue { i64, i1 } %3996, 1, !nosanitize !30
  br i1 %3997, label %3998, label %3999, !prof !32, !nosanitize !30

3998:                                             ; preds = %4009, %3990
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3999:                                             ; preds = %3990
  %4000 = extractvalue { i64, i1 } %3996, 0, !nosanitize !30
  %4001 = load ptr, ptr %3260, align 8, !tbaa !33
  %4002 = load i16, ptr %3258, align 8, !tbaa !25
  %4003 = lshr i16 %4002, 8
  %4004 = trunc nuw i16 %4003 to i8
  store i64 %4000, ptr %3259, align 8, !tbaa !31
  %4005 = getelementptr inbounds nuw i8, ptr %4001, i64 %3995
  store i8 %4004, ptr %4005, align 1, !tbaa !28
  %4006 = load i32, ptr %2441, align 4, !tbaa !26
  %4007 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4006), !nosanitize !30
  %4008 = extractvalue { i32, i1 } %4007, 1, !nosanitize !30
  br i1 %4008, label %.loopexit267, label %4009, !prof !32, !nosanitize !30

4009:                                             ; preds = %3999
  %4010 = extractvalue { i32, i1 } %4007, 0, !nosanitize !30
  %4011 = lshr i32 %3982, %4010
  %4012 = trunc nuw i32 %4011 to i16
  store i16 %4012, ptr %3258, align 8, !tbaa !25
  %4013 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4006, i32 -14), !nosanitize !30
  %4014 = extractvalue { i32, i1 } %4013, 1, !nosanitize !30
  br i1 %4014, label %3998, label %4203, !prof !32, !nosanitize !30

4015:                                             ; preds = %3975
  %4016 = shl i32 %3980, %3978
  %4017 = trunc i32 %4016 to i16
  %4018 = or i16 %3976, %4017
  store i16 %4018, ptr %3258, align 8, !tbaa !25
  %4019 = add nsw i32 %3978, 2
  %4020 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4019, 0
  br label %4203

4021:                                             ; preds = %3873
  %4022 = icmp slt i32 %3797, 10
  br i1 %4022, label %4023, label %4113

4023:                                             ; preds = %4021
  %4024 = load i16, ptr %3787, align 2, !tbaa !28
  %4025 = zext i16 %4024 to i32
  %4026 = sub nsw i32 16, %4025
  %4027 = icmp sgt i32 %3800, %4026
  %4028 = load i16, ptr %3786, align 4, !tbaa !28
  %4029 = zext i16 %4028 to i32
  %4030 = shl i32 %4029, %3800
  %4031 = trunc i32 %4030 to i16
  %4032 = or i16 %3801, %4031
  store i16 %4032, ptr %3258, align 8, !tbaa !25
  br i1 %4027, label %4033, label %4064

4033:                                             ; preds = %4023
  %4034 = load i64, ptr %3259, align 8, !tbaa !31
  %4035 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4034, i64 1), !nosanitize !30
  %4036 = extractvalue { i64, i1 } %4035, 1, !nosanitize !30
  br i1 %4036, label %4037, label %4038, !prof !32, !nosanitize !30

4037:                                             ; preds = %4033
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4038:                                             ; preds = %4033
  %4039 = extractvalue { i64, i1 } %4035, 0, !nosanitize !30
  %4040 = load ptr, ptr %3260, align 8, !tbaa !33
  %4041 = trunc i16 %4032 to i8
  store i64 %4039, ptr %3259, align 8, !tbaa !31
  %4042 = getelementptr inbounds nuw i8, ptr %4040, i64 %4034
  store i8 %4041, ptr %4042, align 1, !tbaa !28
  %4043 = load i64, ptr %3259, align 8, !tbaa !31
  %4044 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4043, i64 1), !nosanitize !30
  %4045 = extractvalue { i64, i1 } %4044, 1, !nosanitize !30
  br i1 %4045, label %4046, label %4047, !prof !32, !nosanitize !30

4046:                                             ; preds = %4057, %4038
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4047:                                             ; preds = %4038
  %4048 = extractvalue { i64, i1 } %4044, 0, !nosanitize !30
  %4049 = load ptr, ptr %3260, align 8, !tbaa !33
  %4050 = load i16, ptr %3258, align 8, !tbaa !25
  %4051 = lshr i16 %4050, 8
  %4052 = trunc nuw i16 %4051 to i8
  store i64 %4048, ptr %3259, align 8, !tbaa !31
  %4053 = getelementptr inbounds nuw i8, ptr %4049, i64 %4043
  store i8 %4052, ptr %4053, align 1, !tbaa !28
  %4054 = load i32, ptr %2441, align 4, !tbaa !26
  %4055 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4054), !nosanitize !30
  %4056 = extractvalue { i32, i1 } %4055, 1, !nosanitize !30
  br i1 %4056, label %.loopexit267, label %4057, !prof !32, !nosanitize !30

4057:                                             ; preds = %4047
  %4058 = extractvalue { i32, i1 } %4055, 0, !nosanitize !30
  %4059 = lshr i32 %4029, %4058
  %4060 = trunc nuw i32 %4059 to i16
  store i16 %4060, ptr %3258, align 8, !tbaa !25
  %4061 = add nsw i32 %4025, -16
  %4062 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4054, i32 %4061), !nosanitize !30
  %4063 = extractvalue { i32, i1 } %4062, 1, !nosanitize !30
  br i1 %4063, label %4046, label %4067, !prof !32, !nosanitize !30

4064:                                             ; preds = %4023
  %4065 = add nsw i32 %3800, %4025
  %4066 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4065, 0
  br label %4067

4067:                                             ; preds = %4064, %4057
  %4068 = phi i16 [ %4060, %4057 ], [ %4032, %4064 ]
  %4069 = phi { i32, i1 } [ %4062, %4057 ], [ %4066, %4064 ]
  %4070 = extractvalue { i32, i1 } %4069, 0
  store i32 %4070, ptr %2441, align 4, !tbaa !26
  %4071 = icmp sgt i32 %4070, 13
  %4072 = add nsw i32 %3797, 65534
  br i1 %4071, label %4073, label %4107

4073:                                             ; preds = %4067
  %4074 = and i32 %4072, 65535
  %4075 = shl i32 %4072, %4070
  %4076 = trunc i32 %4075 to i16
  %4077 = or i16 %4068, %4076
  store i16 %4077, ptr %3258, align 8, !tbaa !25
  %4078 = load i64, ptr %3259, align 8, !tbaa !31
  %4079 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4078, i64 1), !nosanitize !30
  %4080 = extractvalue { i64, i1 } %4079, 1, !nosanitize !30
  br i1 %4080, label %4081, label %4082, !prof !32, !nosanitize !30

4081:                                             ; preds = %4073
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4082:                                             ; preds = %4073
  %4083 = extractvalue { i64, i1 } %4079, 0, !nosanitize !30
  %4084 = load ptr, ptr %3260, align 8, !tbaa !33
  %4085 = trunc i16 %4077 to i8
  store i64 %4083, ptr %3259, align 8, !tbaa !31
  %4086 = getelementptr inbounds nuw i8, ptr %4084, i64 %4078
  store i8 %4085, ptr %4086, align 1, !tbaa !28
  %4087 = load i64, ptr %3259, align 8, !tbaa !31
  %4088 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4087, i64 1), !nosanitize !30
  %4089 = extractvalue { i64, i1 } %4088, 1, !nosanitize !30
  br i1 %4089, label %4090, label %4091, !prof !32, !nosanitize !30

4090:                                             ; preds = %4101, %4082
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4091:                                             ; preds = %4082
  %4092 = extractvalue { i64, i1 } %4088, 0, !nosanitize !30
  %4093 = load ptr, ptr %3260, align 8, !tbaa !33
  %4094 = load i16, ptr %3258, align 8, !tbaa !25
  %4095 = lshr i16 %4094, 8
  %4096 = trunc nuw i16 %4095 to i8
  store i64 %4092, ptr %3259, align 8, !tbaa !31
  %4097 = getelementptr inbounds nuw i8, ptr %4093, i64 %4087
  store i8 %4096, ptr %4097, align 1, !tbaa !28
  %4098 = load i32, ptr %2441, align 4, !tbaa !26
  %4099 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4098), !nosanitize !30
  %4100 = extractvalue { i32, i1 } %4099, 1, !nosanitize !30
  br i1 %4100, label %.loopexit267, label %4101, !prof !32, !nosanitize !30

4101:                                             ; preds = %4091
  %4102 = extractvalue { i32, i1 } %4099, 0, !nosanitize !30
  %4103 = lshr i32 %4074, %4102
  %4104 = trunc nuw i32 %4103 to i16
  store i16 %4104, ptr %3258, align 8, !tbaa !25
  %4105 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4098, i32 -13), !nosanitize !30
  %4106 = extractvalue { i32, i1 } %4105, 1, !nosanitize !30
  br i1 %4106, label %4090, label %4203, !prof !32, !nosanitize !30

4107:                                             ; preds = %4067
  %4108 = shl i32 %4072, %4070
  %4109 = trunc i32 %4108 to i16
  %4110 = or i16 %4068, %4109
  store i16 %4110, ptr %3258, align 8, !tbaa !25
  %4111 = add nsw i32 %4070, 3
  %4112 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4111, 0
  br label %4203

4113:                                             ; preds = %4021
  %4114 = load i16, ptr %3785, align 2, !tbaa !28
  %4115 = zext i16 %4114 to i32
  %4116 = sub nsw i32 16, %4115
  %4117 = icmp sgt i32 %3800, %4116
  %4118 = load i16, ptr %3784, align 4, !tbaa !28
  %4119 = zext i16 %4118 to i32
  %4120 = shl i32 %4119, %3800
  %4121 = trunc i32 %4120 to i16
  %4122 = or i16 %3801, %4121
  store i16 %4122, ptr %3258, align 8, !tbaa !25
  br i1 %4117, label %4123, label %4154

4123:                                             ; preds = %4113
  %4124 = load i64, ptr %3259, align 8, !tbaa !31
  %4125 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4124, i64 1), !nosanitize !30
  %4126 = extractvalue { i64, i1 } %4125, 1, !nosanitize !30
  br i1 %4126, label %4127, label %4128, !prof !32, !nosanitize !30

4127:                                             ; preds = %4123
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4128:                                             ; preds = %4123
  %4129 = extractvalue { i64, i1 } %4125, 0, !nosanitize !30
  %4130 = load ptr, ptr %3260, align 8, !tbaa !33
  %4131 = trunc i16 %4122 to i8
  store i64 %4129, ptr %3259, align 8, !tbaa !31
  %4132 = getelementptr inbounds nuw i8, ptr %4130, i64 %4124
  store i8 %4131, ptr %4132, align 1, !tbaa !28
  %4133 = load i64, ptr %3259, align 8, !tbaa !31
  %4134 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4133, i64 1), !nosanitize !30
  %4135 = extractvalue { i64, i1 } %4134, 1, !nosanitize !30
  br i1 %4135, label %4136, label %4137, !prof !32, !nosanitize !30

4136:                                             ; preds = %4147, %4128
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4137:                                             ; preds = %4128
  %4138 = extractvalue { i64, i1 } %4134, 0, !nosanitize !30
  %4139 = load ptr, ptr %3260, align 8, !tbaa !33
  %4140 = load i16, ptr %3258, align 8, !tbaa !25
  %4141 = lshr i16 %4140, 8
  %4142 = trunc nuw i16 %4141 to i8
  store i64 %4138, ptr %3259, align 8, !tbaa !31
  %4143 = getelementptr inbounds nuw i8, ptr %4139, i64 %4133
  store i8 %4142, ptr %4143, align 1, !tbaa !28
  %4144 = load i32, ptr %2441, align 4, !tbaa !26
  %4145 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4144), !nosanitize !30
  %4146 = extractvalue { i32, i1 } %4145, 1, !nosanitize !30
  br i1 %4146, label %.loopexit267, label %4147, !prof !32, !nosanitize !30

4147:                                             ; preds = %4137
  %4148 = extractvalue { i32, i1 } %4145, 0, !nosanitize !30
  %4149 = lshr i32 %4119, %4148
  %4150 = trunc nuw i32 %4149 to i16
  store i16 %4150, ptr %3258, align 8, !tbaa !25
  %4151 = add nsw i32 %4115, -16
  %4152 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4144, i32 %4151), !nosanitize !30
  %4153 = extractvalue { i32, i1 } %4152, 1, !nosanitize !30
  br i1 %4153, label %4136, label %4157, !prof !32, !nosanitize !30

4154:                                             ; preds = %4113
  %4155 = add nsw i32 %3800, %4115
  %4156 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4155, 0
  br label %4157

4157:                                             ; preds = %4154, %4147
  %4158 = phi i16 [ %4150, %4147 ], [ %4122, %4154 ]
  %4159 = phi { i32, i1 } [ %4152, %4147 ], [ %4156, %4154 ]
  %4160 = extractvalue { i32, i1 } %4159, 0
  store i32 %4160, ptr %2441, align 4, !tbaa !26
  %4161 = icmp sgt i32 %4160, 9
  %4162 = add nuw i32 %3797, 65526
  br i1 %4161, label %4163, label %4197

4163:                                             ; preds = %4157
  %4164 = and i32 %4162, 65535
  %4165 = shl i32 %4162, %4160
  %4166 = trunc i32 %4165 to i16
  %4167 = or i16 %4158, %4166
  store i16 %4167, ptr %3258, align 8, !tbaa !25
  %4168 = load i64, ptr %3259, align 8, !tbaa !31
  %4169 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4168, i64 1), !nosanitize !30
  %4170 = extractvalue { i64, i1 } %4169, 1, !nosanitize !30
  br i1 %4170, label %4171, label %4172, !prof !32, !nosanitize !30

4171:                                             ; preds = %4163
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4172:                                             ; preds = %4163
  %4173 = extractvalue { i64, i1 } %4169, 0, !nosanitize !30
  %4174 = load ptr, ptr %3260, align 8, !tbaa !33
  %4175 = trunc i16 %4167 to i8
  store i64 %4173, ptr %3259, align 8, !tbaa !31
  %4176 = getelementptr inbounds nuw i8, ptr %4174, i64 %4168
  store i8 %4175, ptr %4176, align 1, !tbaa !28
  %4177 = load i64, ptr %3259, align 8, !tbaa !31
  %4178 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4177, i64 1), !nosanitize !30
  %4179 = extractvalue { i64, i1 } %4178, 1, !nosanitize !30
  br i1 %4179, label %4180, label %4181, !prof !32, !nosanitize !30

4180:                                             ; preds = %4191, %4172
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4181:                                             ; preds = %4172
  %4182 = extractvalue { i64, i1 } %4178, 0, !nosanitize !30
  %4183 = load ptr, ptr %3260, align 8, !tbaa !33
  %4184 = load i16, ptr %3258, align 8, !tbaa !25
  %4185 = lshr i16 %4184, 8
  %4186 = trunc nuw i16 %4185 to i8
  store i64 %4182, ptr %3259, align 8, !tbaa !31
  %4187 = getelementptr inbounds nuw i8, ptr %4183, i64 %4177
  store i8 %4186, ptr %4187, align 1, !tbaa !28
  %4188 = load i32, ptr %2441, align 4, !tbaa !26
  %4189 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4188), !nosanitize !30
  %4190 = extractvalue { i32, i1 } %4189, 1, !nosanitize !30
  br i1 %4190, label %.loopexit267, label %4191, !prof !32, !nosanitize !30

4191:                                             ; preds = %4181
  %4192 = extractvalue { i32, i1 } %4189, 0, !nosanitize !30
  %4193 = lshr i32 %4164, %4192
  %4194 = trunc nuw i32 %4193 to i16
  store i16 %4194, ptr %3258, align 8, !tbaa !25
  %4195 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4188, i32 -9), !nosanitize !30
  %4196 = extractvalue { i32, i1 } %4195, 1, !nosanitize !30
  br i1 %4196, label %4180, label %4203, !prof !32, !nosanitize !30

4197:                                             ; preds = %4157
  %4198 = shl i32 %4162, %4160
  %4199 = trunc i32 %4198 to i16
  %4200 = or i16 %4158, %4199
  store i16 %4200, ptr %3258, align 8, !tbaa !25
  %4201 = add nsw i32 %4160, 7
  %4202 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4201, 0
  br label %4203

4203:                                             ; preds = %4197, %4191, %4107, %4101, %4015, %4009
  %4204 = phi i16 [ %4012, %4009 ], [ %4018, %4015 ], [ %4104, %4101 ], [ %4110, %4107 ], [ %4194, %4191 ], [ %4200, %4197 ]
  %4205 = phi { i32, i1 } [ %4013, %4009 ], [ %4020, %4015 ], [ %4105, %4101 ], [ %4112, %4107 ], [ %4195, %4191 ], [ %4202, %4197 ]
  %4206 = extractvalue { i32, i1 } %4205, 0
  store i32 %4206, ptr %2441, align 4, !tbaa !26
  br label %.loopexit268

.loopexit268:                                     ; preds = %3870, %4203
  %4207 = phi i16 [ %4204, %4203 ], [ %3865, %3870 ]
  %4208 = phi i32 [ %4206, %4203 ], [ %3867, %3870 ]
  %4209 = icmp eq i16 %3805, 0
  br i1 %4209, label %4213, label %4210

4210:                                             ; preds = %.loopexit268
  %4211 = select i1 %3809, i32 3, i32 4
  %4212 = select i1 %3809, i32 6, i32 7
  br label %4213

4213:                                             ; preds = %4210, %.loopexit268, %3793
  %4214 = phi i16 [ %3801, %3793 ], [ %4207, %.loopexit268 ], [ %4207, %4210 ]
  %4215 = phi i32 [ %3800, %3793 ], [ %4208, %.loopexit268 ], [ %4208, %4210 ]
  %4216 = phi i32 [ %3795, %3793 ], [ 3, %.loopexit268 ], [ %4211, %4210 ]
  %4217 = phi i32 [ %3796, %3793 ], [ 138, %.loopexit268 ], [ %4212, %4210 ]
  %4218 = phi i32 [ %3807, %3793 ], [ 0, %.loopexit268 ], [ 0, %4210 ]
  %4219 = phi i32 [ %3799, %3793 ], [ %3798, %.loopexit268 ], [ %3798, %4210 ]
  %4220 = icmp sgt i32 %3794, %3772
  br i1 %4220, label %.loopexit270, label %3788, !llvm.loop !83

.loopexit270:                                     ; preds = %4213, %3771
  %4221 = phi i16 [ %3769, %3771 ], [ %4214, %4213 ]
  %4222 = phi i32 [ %3770, %3771 ], [ %4215, %4213 ]
  %4223 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %4224 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %4225 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %4226 = load i32, ptr %4225, align 4, !tbaa !29
  %4227 = icmp eq i32 %4226, 0
  br i1 %4227, label %.loopexit266, label %4228

4228:                                             ; preds = %.loopexit270
  %4229 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %4230

4230:                                             ; preds = %4552, %4228
  %4231 = phi i16 [ %4553, %4552 ], [ %4221, %4228 ]
  %4232 = phi i32 [ %4554, %4552 ], [ %4222, %4228 ]
  %4233 = phi i32 [ %4252, %4552 ], [ 0, %4228 ]
  %4234 = load ptr, ptr %4229, align 8, !tbaa !80
  %4235 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4233, i32 2)
  %4236 = extractvalue { i32, i1 } %4235, 0, !nosanitize !30
  %4237 = extractvalue { i32, i1 } %4235, 1, !nosanitize !30
  br i1 %4237, label %4238, label %4239, !prof !32, !nosanitize !30

4238:                                             ; preds = %4230
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4239:                                             ; preds = %4230
  %4240 = add nuw i32 %4233, 1
  %4241 = zext i32 %4233 to i64
  %4242 = getelementptr inbounds nuw i8, ptr %4234, i64 %4241
  %4243 = load i8, ptr %4242, align 1, !tbaa !28
  %4244 = zext i8 %4243 to i32
  %4245 = zext i32 %4240 to i64
  %4246 = getelementptr inbounds nuw i8, ptr %4234, i64 %4245
  %4247 = load i8, ptr %4246, align 1, !tbaa !28
  %4248 = zext i8 %4247 to i32
  %4249 = shl nuw nsw i32 %4248, 8
  %4250 = or disjoint i32 %4249, %4244
  %4251 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4236, i32 1), !nosanitize !30
  %4252 = extractvalue { i32, i1 } %4251, 0, !nosanitize !30
  %4253 = extractvalue { i32, i1 } %4251, 1, !nosanitize !30
  br i1 %4253, label %4254, label %4255, !prof !32, !nosanitize !30

4254:                                             ; preds = %4239
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4255:                                             ; preds = %4239
  %4256 = zext i32 %4236 to i64
  %4257 = getelementptr inbounds nuw i8, ptr %4234, i64 %4256
  %4258 = load i8, ptr %4257, align 1, !tbaa !28
  %4259 = zext i8 %4258 to i32
  %4260 = icmp eq i32 %4250, 0
  %4261 = zext i8 %4258 to i64
  br i1 %4260, label %4262, label %4309

4262:                                             ; preds = %4255
  %4263 = getelementptr inbounds nuw [4 x i8], ptr %4223, i64 %4261
  %4264 = getelementptr inbounds nuw i8, ptr %4263, i64 2
  %4265 = load i16, ptr %4264, align 2, !tbaa !28
  %4266 = zext i16 %4265 to i32
  %4267 = sub nsw i32 16, %4266
  %4268 = icmp sgt i32 %4232, %4267
  %4269 = load i16, ptr %4263, align 2, !tbaa !28
  %4270 = zext i16 %4269 to i32
  %4271 = shl i32 %4270, %4232
  %4272 = trunc i32 %4271 to i16
  %4273 = or i16 %4231, %4272
  store i16 %4273, ptr %3258, align 8, !tbaa !25
  br i1 %4268, label %4275, label %4306

4274:                                             ; preds = %4407, %4397, %4373, %4367, %4339, %4289
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

4275:                                             ; preds = %4262
  %4276 = load i64, ptr %3259, align 8, !tbaa !31
  %4277 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4276, i64 1), !nosanitize !30
  %4278 = extractvalue { i64, i1 } %4277, 1, !nosanitize !30
  br i1 %4278, label %4279, label %4280, !prof !32, !nosanitize !30

4279:                                             ; preds = %4275
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4280:                                             ; preds = %4275
  %4281 = extractvalue { i64, i1 } %4277, 0, !nosanitize !30
  %4282 = load ptr, ptr %3260, align 8, !tbaa !33
  %4283 = trunc i16 %4273 to i8
  store i64 %4281, ptr %3259, align 8, !tbaa !31
  %4284 = getelementptr inbounds nuw i8, ptr %4282, i64 %4276
  store i8 %4283, ptr %4284, align 1, !tbaa !28
  %4285 = load i64, ptr %3259, align 8, !tbaa !31
  %4286 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4285, i64 1), !nosanitize !30
  %4287 = extractvalue { i64, i1 } %4286, 1, !nosanitize !30
  br i1 %4287, label %4288, label %4289, !prof !32, !nosanitize !30

4288:                                             ; preds = %4299, %4280
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4289:                                             ; preds = %4280
  %4290 = extractvalue { i64, i1 } %4286, 0, !nosanitize !30
  %4291 = load ptr, ptr %3260, align 8, !tbaa !33
  %4292 = load i16, ptr %3258, align 8, !tbaa !25
  %4293 = lshr i16 %4292, 8
  %4294 = trunc nuw i16 %4293 to i8
  store i64 %4290, ptr %3259, align 8, !tbaa !31
  %4295 = getelementptr inbounds nuw i8, ptr %4291, i64 %4285
  store i8 %4294, ptr %4295, align 1, !tbaa !28
  %4296 = load i32, ptr %2441, align 4, !tbaa !26
  %4297 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4296), !nosanitize !30
  %4298 = extractvalue { i32, i1 } %4297, 1, !nosanitize !30
  br i1 %4298, label %4274, label %4299, !prof !32, !nosanitize !30

4299:                                             ; preds = %4289
  %4300 = extractvalue { i32, i1 } %4297, 0, !nosanitize !30
  %4301 = lshr i32 %4270, %4300
  %4302 = trunc nuw i32 %4301 to i16
  store i16 %4302, ptr %3258, align 8, !tbaa !25
  %4303 = add nsw i32 %4266, -16
  %4304 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4296, i32 %4303), !nosanitize !30
  %4305 = extractvalue { i32, i1 } %4304, 1, !nosanitize !30
  br i1 %4305, label %4288, label %4548, !prof !32, !nosanitize !30

4306:                                             ; preds = %4262
  %4307 = add nsw i32 %4232, %4266
  %4308 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4307, 0
  br label %4548

4309:                                             ; preds = %4255
  %4310 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %4261
  %4311 = load i8, ptr %4310, align 1, !tbaa !28
  %4312 = zext i8 %4311 to i64
  %4313 = getelementptr inbounds nuw [4 x i8], ptr %4223, i64 %4312
  %4314 = getelementptr inbounds nuw i8, ptr %4313, i64 1028
  %4315 = getelementptr inbounds nuw i8, ptr %4313, i64 1030
  %4316 = load i16, ptr %4315, align 2, !tbaa !28
  %4317 = zext i16 %4316 to i32
  %4318 = sub nsw i32 16, %4317
  %4319 = icmp sgt i32 %4232, %4318
  %4320 = load i16, ptr %4314, align 2, !tbaa !28
  %4321 = zext i16 %4320 to i32
  %4322 = shl i32 %4321, %4232
  %4323 = trunc i32 %4322 to i16
  %4324 = or i16 %4231, %4323
  store i16 %4324, ptr %3258, align 8, !tbaa !25
  br i1 %4319, label %4325, label %4356

4325:                                             ; preds = %4309
  %4326 = load i64, ptr %3259, align 8, !tbaa !31
  %4327 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4326, i64 1), !nosanitize !30
  %4328 = extractvalue { i64, i1 } %4327, 1, !nosanitize !30
  br i1 %4328, label %4329, label %4330, !prof !32, !nosanitize !30

4329:                                             ; preds = %4325
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4330:                                             ; preds = %4325
  %4331 = extractvalue { i64, i1 } %4327, 0, !nosanitize !30
  %4332 = load ptr, ptr %3260, align 8, !tbaa !33
  %4333 = trunc i16 %4324 to i8
  store i64 %4331, ptr %3259, align 8, !tbaa !31
  %4334 = getelementptr inbounds nuw i8, ptr %4332, i64 %4326
  store i8 %4333, ptr %4334, align 1, !tbaa !28
  %4335 = load i64, ptr %3259, align 8, !tbaa !31
  %4336 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4335, i64 1), !nosanitize !30
  %4337 = extractvalue { i64, i1 } %4336, 1, !nosanitize !30
  br i1 %4337, label %4338, label %4339, !prof !32, !nosanitize !30

4338:                                             ; preds = %4349, %4330
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4339:                                             ; preds = %4330
  %4340 = extractvalue { i64, i1 } %4336, 0, !nosanitize !30
  %4341 = load ptr, ptr %3260, align 8, !tbaa !33
  %4342 = load i16, ptr %3258, align 8, !tbaa !25
  %4343 = lshr i16 %4342, 8
  %4344 = trunc nuw i16 %4343 to i8
  store i64 %4340, ptr %3259, align 8, !tbaa !31
  %4345 = getelementptr inbounds nuw i8, ptr %4341, i64 %4335
  store i8 %4344, ptr %4345, align 1, !tbaa !28
  %4346 = load i32, ptr %2441, align 4, !tbaa !26
  %4347 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4346), !nosanitize !30
  %4348 = extractvalue { i32, i1 } %4347, 1, !nosanitize !30
  br i1 %4348, label %4274, label %4349, !prof !32, !nosanitize !30

4349:                                             ; preds = %4339
  %4350 = extractvalue { i32, i1 } %4347, 0, !nosanitize !30
  %4351 = lshr i32 %4321, %4350
  %4352 = trunc nuw i32 %4351 to i16
  store i16 %4352, ptr %3258, align 8, !tbaa !25
  %4353 = add nsw i32 %4317, -16
  %4354 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4346, i32 %4353), !nosanitize !30
  %4355 = extractvalue { i32, i1 } %4354, 1, !nosanitize !30
  br i1 %4355, label %4338, label %4359, !prof !32, !nosanitize !30

4356:                                             ; preds = %4309
  %4357 = add nsw i32 %4232, %4317
  %4358 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4357, 0
  br label %4359

4359:                                             ; preds = %4356, %4349
  %4360 = phi i16 [ %4352, %4349 ], [ %4324, %4356 ]
  %4361 = phi { i32, i1 } [ %4354, %4349 ], [ %4358, %4356 ]
  %4362 = extractvalue { i32, i1 } %4361, 0
  store i32 %4362, ptr %2441, align 4, !tbaa !26
  %4363 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %4312
  %4364 = load i32, ptr %4363, align 4, !tbaa !49
  %4365 = add i8 %4311, -28
  %4366 = icmp ult i8 %4365, -20
  br i1 %4366, label %4427, label %4367

4367:                                             ; preds = %4359
  %4368 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %4312
  %4369 = load i32, ptr %4368, align 4, !tbaa !49
  %4370 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4259, i32 %4369), !nosanitize !30
  %4371 = extractvalue { i32, i1 } %4370, 0, !nosanitize !30
  %4372 = extractvalue { i32, i1 } %4370, 1, !nosanitize !30
  br i1 %4372, label %4274, label %4373, !prof !32, !nosanitize !30

4373:                                             ; preds = %4367
  %4374 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4364), !nosanitize !30
  %4375 = extractvalue { i32, i1 } %4374, 1, !nosanitize !30
  br i1 %4375, label %4274, label %4376, !prof !32, !nosanitize !30

4376:                                             ; preds = %4373
  %4377 = extractvalue { i32, i1 } %4374, 0, !nosanitize !30
  %4378 = icmp sgt i32 %4362, %4377
  br i1 %4378, label %4379, label %4417

4379:                                             ; preds = %4376
  %4380 = and i32 %4371, 65535
  %4381 = shl i32 %4371, %4362
  %4382 = trunc i32 %4381 to i16
  %4383 = or i16 %4360, %4382
  store i16 %4383, ptr %3258, align 8, !tbaa !25
  %4384 = load i64, ptr %3259, align 8, !tbaa !31
  %4385 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4384, i64 1), !nosanitize !30
  %4386 = extractvalue { i64, i1 } %4385, 1, !nosanitize !30
  br i1 %4386, label %4387, label %4388, !prof !32, !nosanitize !30

4387:                                             ; preds = %4379
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4388:                                             ; preds = %4379
  %4389 = extractvalue { i64, i1 } %4385, 0, !nosanitize !30
  %4390 = load ptr, ptr %3260, align 8, !tbaa !33
  %4391 = trunc i16 %4383 to i8
  store i64 %4389, ptr %3259, align 8, !tbaa !31
  %4392 = getelementptr inbounds nuw i8, ptr %4390, i64 %4384
  store i8 %4391, ptr %4392, align 1, !tbaa !28
  %4393 = load i64, ptr %3259, align 8, !tbaa !31
  %4394 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4393, i64 1), !nosanitize !30
  %4395 = extractvalue { i64, i1 } %4394, 1, !nosanitize !30
  br i1 %4395, label %4396, label %4397, !prof !32, !nosanitize !30

4396:                                             ; preds = %4417, %4413, %4388
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4397:                                             ; preds = %4388
  %4398 = extractvalue { i64, i1 } %4394, 0, !nosanitize !30
  %4399 = load ptr, ptr %3260, align 8, !tbaa !33
  %4400 = load i16, ptr %3258, align 8, !tbaa !25
  %4401 = lshr i16 %4400, 8
  %4402 = trunc nuw i16 %4401 to i8
  store i64 %4398, ptr %3259, align 8, !tbaa !31
  %4403 = getelementptr inbounds nuw i8, ptr %4399, i64 %4393
  store i8 %4402, ptr %4403, align 1, !tbaa !28
  %4404 = load i32, ptr %2441, align 4, !tbaa !26
  %4405 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4404), !nosanitize !30
  %4406 = extractvalue { i32, i1 } %4405, 1, !nosanitize !30
  br i1 %4406, label %4274, label %4407, !prof !32, !nosanitize !30

4407:                                             ; preds = %4397
  %4408 = extractvalue { i32, i1 } %4405, 0, !nosanitize !30
  %4409 = lshr i32 %4380, %4408
  %4410 = trunc nuw i32 %4409 to i16
  store i16 %4410, ptr %3258, align 8, !tbaa !25
  %4411 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4364, i32 -16)
  %4412 = extractvalue { i32, i1 } %4411, 1, !nosanitize !30
  br i1 %4412, label %4274, label %4413, !prof !32, !nosanitize !30

4413:                                             ; preds = %4407
  %4414 = extractvalue { i32, i1 } %4411, 0, !nosanitize !30
  %4415 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4404, i32 %4414), !nosanitize !30
  %4416 = extractvalue { i32, i1 } %4415, 1, !nosanitize !30
  br i1 %4416, label %4396, label %4423, !prof !32, !nosanitize !30

4417:                                             ; preds = %4376
  %4418 = shl i32 %4371, %4362
  %4419 = trunc i32 %4418 to i16
  %4420 = or i16 %4360, %4419
  store i16 %4420, ptr %3258, align 8, !tbaa !25
  %4421 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4362, i32 %4364), !nosanitize !30
  %4422 = extractvalue { i32, i1 } %4421, 1, !nosanitize !30
  br i1 %4422, label %4396, label %4423, !prof !32, !nosanitize !30

4423:                                             ; preds = %4417, %4413
  %4424 = phi i16 [ %4410, %4413 ], [ %4420, %4417 ]
  %4425 = phi { i32, i1 } [ %4415, %4413 ], [ %4421, %4417 ]
  %4426 = extractvalue { i32, i1 } %4425, 0
  store i32 %4426, ptr %2441, align 4, !tbaa !26
  br label %4427

4427:                                             ; preds = %4423, %4359
  %4428 = phi i16 [ %4424, %4423 ], [ %4360, %4359 ]
  %4429 = phi i32 [ %4426, %4423 ], [ %4362, %4359 ]
  %4430 = add nsw i32 %4250, -1
  %4431 = icmp samesign ult i32 %4250, 257
  %4432 = lshr i32 %4430, 7
  %4433 = add nuw nsw i32 %4432, 256
  %4434 = select i1 %4431, i32 %4430, i32 %4433
  %4435 = zext nneg i32 %4434 to i64
  %4436 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4435
  %4437 = load i8, ptr %4436, align 1, !tbaa !28
  %4438 = zext i8 %4437 to i64
  %4439 = getelementptr inbounds nuw [4 x i8], ptr %4224, i64 %4438
  %4440 = getelementptr inbounds nuw i8, ptr %4439, i64 2
  %4441 = load i16, ptr %4440, align 2, !tbaa !28
  %4442 = zext i16 %4441 to i32
  %4443 = sub nsw i32 16, %4442
  %4444 = icmp sgt i32 %4429, %4443
  %4445 = load i16, ptr %4439, align 2, !tbaa !28
  %4446 = zext i16 %4445 to i32
  %4447 = shl i32 %4446, %4429
  %4448 = trunc i32 %4447 to i16
  %4449 = or i16 %4428, %4448
  store i16 %4449, ptr %3258, align 8, !tbaa !25
  br i1 %4444, label %4451, label %4482

4450:                                             ; preds = %4465
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

4451:                                             ; preds = %4427
  %4452 = load i64, ptr %3259, align 8, !tbaa !31
  %4453 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4452, i64 1), !nosanitize !30
  %4454 = extractvalue { i64, i1 } %4453, 1, !nosanitize !30
  br i1 %4454, label %4455, label %4456, !prof !32, !nosanitize !30

4455:                                             ; preds = %4451
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4456:                                             ; preds = %4451
  %4457 = extractvalue { i64, i1 } %4453, 0, !nosanitize !30
  %4458 = load ptr, ptr %3260, align 8, !tbaa !33
  %4459 = trunc i16 %4449 to i8
  store i64 %4457, ptr %3259, align 8, !tbaa !31
  %4460 = getelementptr inbounds nuw i8, ptr %4458, i64 %4452
  store i8 %4459, ptr %4460, align 1, !tbaa !28
  %4461 = load i64, ptr %3259, align 8, !tbaa !31
  %4462 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4461, i64 1), !nosanitize !30
  %4463 = extractvalue { i64, i1 } %4462, 1, !nosanitize !30
  br i1 %4463, label %4464, label %4465, !prof !32, !nosanitize !30

4464:                                             ; preds = %4475, %4456
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4465:                                             ; preds = %4456
  %4466 = extractvalue { i64, i1 } %4462, 0, !nosanitize !30
  %4467 = load ptr, ptr %3260, align 8, !tbaa !33
  %4468 = load i16, ptr %3258, align 8, !tbaa !25
  %4469 = lshr i16 %4468, 8
  %4470 = trunc nuw i16 %4469 to i8
  store i64 %4466, ptr %3259, align 8, !tbaa !31
  %4471 = getelementptr inbounds nuw i8, ptr %4467, i64 %4461
  store i8 %4470, ptr %4471, align 1, !tbaa !28
  %4472 = load i32, ptr %2441, align 4, !tbaa !26
  %4473 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4472), !nosanitize !30
  %4474 = extractvalue { i32, i1 } %4473, 1, !nosanitize !30
  br i1 %4474, label %4450, label %4475, !prof !32, !nosanitize !30

4475:                                             ; preds = %4465
  %4476 = extractvalue { i32, i1 } %4473, 0, !nosanitize !30
  %4477 = lshr i32 %4446, %4476
  %4478 = trunc nuw i32 %4477 to i16
  store i16 %4478, ptr %3258, align 8, !tbaa !25
  %4479 = add nsw i32 %4442, -16
  %4480 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4472, i32 %4479), !nosanitize !30
  %4481 = extractvalue { i32, i1 } %4480, 1, !nosanitize !30
  br i1 %4481, label %4464, label %4485, !prof !32, !nosanitize !30

4482:                                             ; preds = %4427
  %4483 = add nsw i32 %4429, %4442
  %4484 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4483, 0
  br label %4485

4485:                                             ; preds = %4482, %4475
  %4486 = phi i16 [ %4478, %4475 ], [ %4449, %4482 ]
  %4487 = phi { i32, i1 } [ %4480, %4475 ], [ %4484, %4482 ]
  %4488 = extractvalue { i32, i1 } %4487, 0
  store i32 %4488, ptr %2441, align 4, !tbaa !26
  %4489 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %4438
  %4490 = load i32, ptr %4489, align 4, !tbaa !49
  %4491 = icmp ult i8 %4437, 4
  br i1 %4491, label %4552, label %4492

4492:                                             ; preds = %4485
  %4493 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %4438
  %4494 = load i32, ptr %4493, align 4, !tbaa !49
  %4495 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %4430, i32 %4494), !nosanitize !30
  %4496 = extractvalue { i32, i1 } %4495, 0, !nosanitize !30
  %4497 = extractvalue { i32, i1 } %4495, 1, !nosanitize !30
  br i1 %4497, label %.loopexit265, label %4498, !prof !32, !nosanitize !30

.loopexit265:                                     ; preds = %4532, %4522, %4498, %4492, %4584
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

4498:                                             ; preds = %4492
  %4499 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4490), !nosanitize !30
  %4500 = extractvalue { i32, i1 } %4499, 1, !nosanitize !30
  br i1 %4500, label %.loopexit265, label %4501, !prof !32, !nosanitize !30

4501:                                             ; preds = %4498
  %4502 = extractvalue { i32, i1 } %4499, 0, !nosanitize !30
  %4503 = icmp sgt i32 %4488, %4502
  br i1 %4503, label %4504, label %4542

4504:                                             ; preds = %4501
  %4505 = and i32 %4496, 65535
  %4506 = shl i32 %4496, %4488
  %4507 = trunc i32 %4506 to i16
  %4508 = or i16 %4486, %4507
  store i16 %4508, ptr %3258, align 8, !tbaa !25
  %4509 = load i64, ptr %3259, align 8, !tbaa !31
  %4510 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4509, i64 1), !nosanitize !30
  %4511 = extractvalue { i64, i1 } %4510, 1, !nosanitize !30
  br i1 %4511, label %4512, label %4513, !prof !32, !nosanitize !30

4512:                                             ; preds = %4504
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4513:                                             ; preds = %4504
  %4514 = extractvalue { i64, i1 } %4510, 0, !nosanitize !30
  %4515 = load ptr, ptr %3260, align 8, !tbaa !33
  %4516 = trunc i16 %4508 to i8
  store i64 %4514, ptr %3259, align 8, !tbaa !31
  %4517 = getelementptr inbounds nuw i8, ptr %4515, i64 %4509
  store i8 %4516, ptr %4517, align 1, !tbaa !28
  %4518 = load i64, ptr %3259, align 8, !tbaa !31
  %4519 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4518, i64 1), !nosanitize !30
  %4520 = extractvalue { i64, i1 } %4519, 1, !nosanitize !30
  br i1 %4520, label %4521, label %4522, !prof !32, !nosanitize !30

4521:                                             ; preds = %4542, %4538, %4513
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4522:                                             ; preds = %4513
  %4523 = extractvalue { i64, i1 } %4519, 0, !nosanitize !30
  %4524 = load ptr, ptr %3260, align 8, !tbaa !33
  %4525 = load i16, ptr %3258, align 8, !tbaa !25
  %4526 = lshr i16 %4525, 8
  %4527 = trunc nuw i16 %4526 to i8
  store i64 %4523, ptr %3259, align 8, !tbaa !31
  %4528 = getelementptr inbounds nuw i8, ptr %4524, i64 %4518
  store i8 %4527, ptr %4528, align 1, !tbaa !28
  %4529 = load i32, ptr %2441, align 4, !tbaa !26
  %4530 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4529), !nosanitize !30
  %4531 = extractvalue { i32, i1 } %4530, 1, !nosanitize !30
  br i1 %4531, label %.loopexit265, label %4532, !prof !32, !nosanitize !30

4532:                                             ; preds = %4522
  %4533 = extractvalue { i32, i1 } %4530, 0, !nosanitize !30
  %4534 = lshr i32 %4505, %4533
  %4535 = trunc nuw i32 %4534 to i16
  store i16 %4535, ptr %3258, align 8, !tbaa !25
  %4536 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4490, i32 -16)
  %4537 = extractvalue { i32, i1 } %4536, 1, !nosanitize !30
  br i1 %4537, label %.loopexit265, label %4538, !prof !32, !nosanitize !30

4538:                                             ; preds = %4532
  %4539 = extractvalue { i32, i1 } %4536, 0, !nosanitize !30
  %4540 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4529, i32 %4539), !nosanitize !30
  %4541 = extractvalue { i32, i1 } %4540, 1, !nosanitize !30
  br i1 %4541, label %4521, label %4548, !prof !32, !nosanitize !30

4542:                                             ; preds = %4501
  %4543 = shl i32 %4496, %4488
  %4544 = trunc i32 %4543 to i16
  %4545 = or i16 %4486, %4544
  store i16 %4545, ptr %3258, align 8, !tbaa !25
  %4546 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4488, i32 %4490), !nosanitize !30
  %4547 = extractvalue { i32, i1 } %4546, 1, !nosanitize !30
  br i1 %4547, label %4521, label %4548, !prof !32, !nosanitize !30

4548:                                             ; preds = %4542, %4538, %4306, %4299
  %4549 = phi i16 [ %4302, %4299 ], [ %4273, %4306 ], [ %4535, %4538 ], [ %4545, %4542 ]
  %4550 = phi { i32, i1 } [ %4304, %4299 ], [ %4308, %4306 ], [ %4540, %4538 ], [ %4546, %4542 ]
  %4551 = extractvalue { i32, i1 } %4550, 0
  store i32 %4551, ptr %2441, align 4, !tbaa !26
  br label %4552

4552:                                             ; preds = %4548, %4485
  %4553 = phi i16 [ %4486, %4485 ], [ %4549, %4548 ]
  %4554 = phi i32 [ %4488, %4485 ], [ %4551, %4548 ]
  %4555 = load i32, ptr %4225, align 4, !tbaa !29
  %4556 = icmp ult i32 %4252, %4555
  br i1 %4556, label %4230, label %.loopexit266, !llvm.loop !81

.loopexit266:                                     ; preds = %4552, %.loopexit270
  %4557 = phi i16 [ %4221, %.loopexit270 ], [ %4553, %4552 ]
  %4558 = phi i32 [ %4222, %.loopexit270 ], [ %4554, %4552 ]
  %4559 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %4560 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %4561 = load i16, ptr %4560, align 2, !tbaa !28
  %4562 = zext i16 %4561 to i32
  %4563 = sub nsw i32 16, %4562
  %4564 = icmp sgt i32 %4558, %4563
  %4565 = load i16, ptr %4559, align 2, !tbaa !28
  %4566 = zext i16 %4565 to i32
  %4567 = shl i32 %4566, %4558
  %4568 = trunc i32 %4567 to i16
  %4569 = or i16 %4557, %4568
  store i16 %4569, ptr %3258, align 8, !tbaa !25
  br i1 %4564, label %4570, label %4601

4570:                                             ; preds = %.loopexit266
  %4571 = load i64, ptr %3259, align 8, !tbaa !31
  %4572 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4571, i64 1), !nosanitize !30
  %4573 = extractvalue { i64, i1 } %4572, 1, !nosanitize !30
  br i1 %4573, label %4574, label %4575, !prof !32, !nosanitize !30

4574:                                             ; preds = %4570
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4575:                                             ; preds = %4570
  %4576 = extractvalue { i64, i1 } %4572, 0, !nosanitize !30
  %4577 = load ptr, ptr %3260, align 8, !tbaa !33
  %4578 = trunc i16 %4569 to i8
  store i64 %4576, ptr %3259, align 8, !tbaa !31
  %4579 = getelementptr inbounds nuw i8, ptr %4577, i64 %4571
  store i8 %4578, ptr %4579, align 1, !tbaa !28
  %4580 = load i64, ptr %3259, align 8, !tbaa !31
  %4581 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4580, i64 1), !nosanitize !30
  %4582 = extractvalue { i64, i1 } %4581, 1, !nosanitize !30
  br i1 %4582, label %4583, label %4584, !prof !32, !nosanitize !30

4583:                                             ; preds = %4594, %4575
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4584:                                             ; preds = %4575
  %4585 = extractvalue { i64, i1 } %4581, 0, !nosanitize !30
  %4586 = load ptr, ptr %3260, align 8, !tbaa !33
  %4587 = load i16, ptr %3258, align 8, !tbaa !25
  %4588 = lshr i16 %4587, 8
  %4589 = trunc nuw i16 %4588 to i8
  store i64 %4585, ptr %3259, align 8, !tbaa !31
  %4590 = getelementptr inbounds nuw i8, ptr %4586, i64 %4580
  store i8 %4589, ptr %4590, align 1, !tbaa !28
  %4591 = load i32, ptr %2441, align 4, !tbaa !26
  %4592 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4591), !nosanitize !30
  %4593 = extractvalue { i32, i1 } %4592, 1, !nosanitize !30
  br i1 %4593, label %.loopexit265, label %4594, !prof !32, !nosanitize !30

4594:                                             ; preds = %4584
  %4595 = extractvalue { i32, i1 } %4592, 0, !nosanitize !30
  %4596 = lshr i32 %4566, %4595
  %4597 = trunc nuw i32 %4596 to i16
  store i16 %4597, ptr %3258, align 8, !tbaa !25
  %4598 = add nsw i32 %4562, -16
  %4599 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4591, i32 %4598), !nosanitize !30
  %4600 = extractvalue { i32, i1 } %4599, 1, !nosanitize !30
  br i1 %4600, label %4583, label %4604, !prof !32, !nosanitize !30

4601:                                             ; preds = %.loopexit266
  %4602 = add nsw i32 %4558, %4562
  %4603 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4602, 0
  br label %4604

4604:                                             ; preds = %4601, %4594
  %4605 = phi { i32, i1 } [ %4599, %4594 ], [ %4603, %4601 ]
  %4606 = extractvalue { i32, i1 } %4605, 0
  store i32 %4606, ptr %2441, align 4, !tbaa !26
  br label %4607

4607:                                             ; preds = %4604, %3025, %2598
  %4608 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %4609

4609:                                             ; preds = %4620, %4607
  %4610 = phi i64 [ 0, %4607 ], [ %4624, %4620 ]
  %4611 = getelementptr inbounds nuw [4 x i8], ptr %4608, i64 %4610
  store i16 0, ptr %4611, align 4, !tbaa !28
  %4612 = getelementptr inbounds nuw i8, ptr %4611, i64 4
  store i16 0, ptr %4612, align 4, !tbaa !28
  %4613 = getelementptr inbounds nuw [4 x i8], ptr %4608, i64 %4610
  %4614 = getelementptr inbounds nuw i8, ptr %4613, i64 8
  store i16 0, ptr %4614, align 4, !tbaa !28
  %4615 = getelementptr inbounds nuw i8, ptr %4613, i64 12
  store i16 0, ptr %4615, align 4, !tbaa !28
  %4616 = getelementptr inbounds nuw [4 x i8], ptr %4608, i64 %4610
  %4617 = getelementptr inbounds nuw i8, ptr %4616, i64 16
  store i16 0, ptr %4617, align 4, !tbaa !28
  %4618 = getelementptr inbounds nuw i8, ptr %4616, i64 20
  store i16 0, ptr %4618, align 4, !tbaa !28
  %4619 = icmp eq i64 %4610, 280
  br i1 %4619, label %4625, label %4620

4620:                                             ; preds = %4609
  %4621 = getelementptr inbounds nuw [4 x i8], ptr %4608, i64 %4610
  %4622 = getelementptr inbounds nuw i8, ptr %4621, i64 24
  store i16 0, ptr %4622, align 4, !tbaa !28
  %4623 = getelementptr inbounds nuw i8, ptr %4621, i64 28
  store i16 0, ptr %4623, align 4, !tbaa !28
  %4624 = add nuw nsw i64 %4610, 8
  br label %4609

4625:                                             ; preds = %4609
  %4626 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %4626, align 4, !tbaa !28
  %4627 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %4627, align 4, !tbaa !28
  %4628 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %4628, align 4, !tbaa !28
  %4629 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %4629, align 4, !tbaa !28
  %4630 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %4630, align 4, !tbaa !28
  %4631 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %4631, align 4, !tbaa !28
  %4632 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %4632, align 4, !tbaa !28
  %4633 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %4633, align 4, !tbaa !28
  %4634 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %4634, align 4, !tbaa !28
  %4635 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %4635, align 4, !tbaa !28
  %4636 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %4636, align 4, !tbaa !28
  %4637 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %4637, align 4, !tbaa !28
  %4638 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %4638, align 4, !tbaa !28
  %4639 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %4639, align 4, !tbaa !28
  %4640 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %4640, align 4, !tbaa !28
  %4641 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %4641, align 4, !tbaa !28
  %4642 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %4642, align 4, !tbaa !28
  %4643 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %4643, align 4, !tbaa !28
  %4644 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %4644, align 4, !tbaa !28
  %4645 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %4645, align 4, !tbaa !28
  %4646 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %4646, align 4, !tbaa !28
  %4647 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %4647, align 4, !tbaa !28
  %4648 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %4648, align 4, !tbaa !28
  %4649 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %4649, align 4, !tbaa !28
  %4650 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %4650, align 4, !tbaa !28
  %4651 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %4651, align 4, !tbaa !28
  %4652 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %4652, align 4, !tbaa !28
  %4653 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %4653, align 4, !tbaa !28
  %4654 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %4654, align 4, !tbaa !28
  %4655 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %4655, align 4, !tbaa !28
  %4656 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %4656, align 4, !tbaa !28
  %4657 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %4657, align 4, !tbaa !28
  %4658 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %4658, align 4, !tbaa !28
  %4659 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %4659, align 4, !tbaa !28
  %4660 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %4660, align 4, !tbaa !28
  %4661 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %4661, align 4, !tbaa !28
  %4662 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %4662, align 4, !tbaa !28
  %4663 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %4663, align 4, !tbaa !28
  %4664 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %4664, align 4, !tbaa !28
  %4665 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %4665, align 4, !tbaa !28
  %4666 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %4666, align 4, !tbaa !28
  %4667 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %4667, align 4, !tbaa !28
  %4668 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %4668, align 4, !tbaa !28
  %4669 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %4669, align 4, !tbaa !28
  %4670 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %4670, align 4, !tbaa !28
  %4671 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %4671, align 4, !tbaa !28
  %4672 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %4672, align 4, !tbaa !28
  %4673 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %4673, align 4, !tbaa !28
  %4674 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %4674, align 4, !tbaa !28
  %4675 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %4675, align 4, !tbaa !28
  %4676 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %4677 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %4677, align 4, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4676, i8 0, i64 20, i1 false)
  %4678 = icmp eq i32 %3, 0
  br i1 %4678, label %4735, label %4679

4679:                                             ; preds = %4625
  %4680 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %4681 = load i32, ptr %4680, align 4, !tbaa !26
  %4682 = icmp sgt i32 %4681, 8
  br i1 %4682, label %4683, label %4708

4683:                                             ; preds = %4679
  %4684 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4685 = load i64, ptr %4684, align 8, !tbaa !31
  %4686 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4685, i64 1), !nosanitize !30
  %4687 = extractvalue { i64, i1 } %4686, 1, !nosanitize !30
  br i1 %4687, label %4688, label %4689, !prof !32, !nosanitize !30

4688:                                             ; preds = %4683
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4689:                                             ; preds = %4683
  %4690 = extractvalue { i64, i1 } %4686, 0, !nosanitize !30
  %4691 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4692 = load ptr, ptr %4691, align 8, !tbaa !33
  %4693 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4694 = load i16, ptr %4693, align 8, !tbaa !25
  %4695 = trunc i16 %4694 to i8
  store i64 %4690, ptr %4684, align 8, !tbaa !31
  %4696 = getelementptr inbounds nuw i8, ptr %4692, i64 %4685
  store i8 %4695, ptr %4696, align 1, !tbaa !28
  %4697 = load i64, ptr %4684, align 8, !tbaa !31
  %4698 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4697, i64 1), !nosanitize !30
  %4699 = extractvalue { i64, i1 } %4698, 1, !nosanitize !30
  br i1 %4699, label %4700, label %4701, !prof !32, !nosanitize !30

4700:                                             ; preds = %4689
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4701:                                             ; preds = %4689
  %4702 = extractvalue { i64, i1 } %4698, 0, !nosanitize !30
  %4703 = load ptr, ptr %4691, align 8, !tbaa !33
  %4704 = load i16, ptr %4693, align 8, !tbaa !25
  %4705 = lshr i16 %4704, 8
  %4706 = trunc nuw i16 %4705 to i8
  store i64 %4702, ptr %4684, align 8, !tbaa !31
  %4707 = getelementptr inbounds nuw i8, ptr %4703, i64 %4697
  store i8 %4706, ptr %4707, align 1, !tbaa !28
  br label %4724

4708:                                             ; preds = %4679
  %4709 = icmp sgt i32 %4681, 0
  br i1 %4709, label %4710, label %4724

4710:                                             ; preds = %4708
  %4711 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4712 = load i64, ptr %4711, align 8, !tbaa !31
  %4713 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4712, i64 1), !nosanitize !30
  %4714 = extractvalue { i64, i1 } %4713, 1, !nosanitize !30
  br i1 %4714, label %4715, label %4716, !prof !32, !nosanitize !30

4715:                                             ; preds = %4710
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4716:                                             ; preds = %4710
  %4717 = extractvalue { i64, i1 } %4713, 0, !nosanitize !30
  %4718 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4719 = load ptr, ptr %4718, align 8, !tbaa !33
  %4720 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4721 = load i16, ptr %4720, align 8, !tbaa !25
  %4722 = trunc i16 %4721 to i8
  store i64 %4717, ptr %4711, align 8, !tbaa !31
  %4723 = getelementptr inbounds nuw i8, ptr %4719, i64 %4712
  store i8 %4722, ptr %4723, align 1, !tbaa !28
  br label %4724

4724:                                             ; preds = %4716, %4708, %4701
  %4725 = load i32, ptr %4680, align 4, !tbaa !26
  %4726 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4725, i32 -1)
  %4727 = extractvalue { i32, i1 } %4726, 1, !nosanitize !30
  br i1 %4727, label %4728, label %4729, !prof !32, !nosanitize !30

4728:                                             ; preds = %4724
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

4729:                                             ; preds = %4724
  %4730 = extractvalue { i32, i1 } %4726, 0, !nosanitize !30
  %4731 = and i32 %4730, 7
  %4732 = add nuw nsw i32 %4731, 1
  %4733 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %4732, ptr %4733, align 8, !tbaa !27
  %4734 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %4734, align 8, !tbaa !25
  store i32 0, ptr %4680, align 4, !tbaa !26
  br label %4735

4735:                                             ; preds = %4729, %4625
  ret void
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_tr_tally(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %6 = load i32, ptr %5, align 4, !tbaa !29
  %7 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %6, i32 1), !nosanitize !30
  %8 = extractvalue { i32, i1 } %7, 1, !nosanitize !30
  br i1 %8, label %9, label %10, !prof !32, !nosanitize !30

9:                                                ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

10:                                               ; preds = %3
  %11 = extractvalue { i32, i1 } %7, 0, !nosanitize !30
  %12 = load ptr, ptr %4, align 8, !tbaa !80
  %13 = trunc i32 %1 to i8
  store i32 %11, ptr %5, align 4, !tbaa !29
  %14 = zext i32 %6 to i64
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 %14
  store i8 %13, ptr %15, align 1, !tbaa !28
  %16 = load i32, ptr %5, align 4, !tbaa !29
  %17 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %16, i32 1), !nosanitize !30
  %18 = extractvalue { i32, i1 } %17, 1, !nosanitize !30
  br i1 %18, label %19, label %20, !prof !32, !nosanitize !30

19:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

20:                                               ; preds = %10
  %21 = extractvalue { i32, i1 } %17, 0, !nosanitize !30
  %22 = load ptr, ptr %4, align 8, !tbaa !80
  %23 = lshr i32 %1, 8
  %24 = trunc i32 %23 to i8
  store i32 %21, ptr %5, align 4, !tbaa !29
  %25 = zext i32 %16 to i64
  %26 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  store i8 %24, ptr %26, align 1, !tbaa !28
  %27 = load i32, ptr %5, align 4, !tbaa !29
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %27, i32 1), !nosanitize !30
  %29 = extractvalue { i32, i1 } %28, 1, !nosanitize !30
  br i1 %29, label %30, label %31, !prof !32, !nosanitize !30

30:                                               ; preds = %20
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

31:                                               ; preds = %20
  %32 = extractvalue { i32, i1 } %28, 0, !nosanitize !30
  %33 = load ptr, ptr %4, align 8, !tbaa !80
  %34 = trunc i32 %2 to i8
  store i32 %32, ptr %5, align 4, !tbaa !29
  %35 = zext i32 %27 to i64
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 %35
  store i8 %34, ptr %36, align 1, !tbaa !28
  %37 = icmp eq i32 %1, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %40 = zext i32 %2 to i64
  %41 = getelementptr inbounds nuw [4 x i8], ptr %39, i64 %40
  %42 = load i16, ptr %41, align 4, !tbaa !28
  %43 = add i16 %42, 1
  store i16 %43, ptr %41, align 4, !tbaa !28
  br label %73

44:                                               ; preds = %31
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %46 = load i32, ptr %45, align 8, !tbaa !85
  %47 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %46, i32 1), !nosanitize !30
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !30
  br i1 %48, label %49, label %50, !prof !32, !nosanitize !30

49:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !30
  store i32 %51, ptr %45, align 8, !tbaa !85
  %52 = add i32 %1, -1
  %53 = zext i32 %2 to i64
  %54 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !28
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %58 = getelementptr inbounds nuw [4 x i8], ptr %57, i64 %56
  %59 = load i16, ptr %58, align 4, !tbaa !28
  %60 = add i16 %59, 1
  store i16 %60, ptr %58, align 4, !tbaa !28
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %62 = icmp ult i32 %1, 257
  %63 = lshr i32 %52, 7
  %64 = add nuw nsw i32 %63, 256
  %65 = select i1 %62, i32 %52, i32 %64
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !28
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %69
  %71 = load i16, ptr %70, align 4, !tbaa !28
  %72 = add i16 %71, 1
  store i16 %72, ptr %70, align 4, !tbaa !28
  br label %73

73:                                               ; preds = %50, %38
  %74 = load i32, ptr %5, align 4, !tbaa !29
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %76 = load i32, ptr %75, align 8, !tbaa !86
  %77 = icmp eq i32 %74, %76
  %78 = zext i1 %77 to i32
  ret i32 %78
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noreturn nounwind }
attributes #9 = { nomerge noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !17, i64 2904}
!6 = !{!"internal_state", !7, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !13, i64 40, !11, i64 48, !14, i64 56, !13, i64 64, !9, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !12, i64 96, !13, i64 104, !15, i64 112, !15, i64 120, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !13, i64 152, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !9, i64 212, !9, i64 2504, !9, i64 2748, !16, i64 2904, !16, i64 2928, !16, i64 2952, !9, i64 2976, !9, i64 3008, !11, i64 5300, !11, i64 5304, !9, i64 5308, !12, i64 5888, !11, i64 5896, !11, i64 5900, !11, i64 5904, !13, i64 5912, !13, i64 5920, !11, i64 5928, !11, i64 5932, !19, i64 5936, !11, i64 5940, !11, i64 5944, !13, i64 5952, !11, i64 5960}
!7 = !{!"p1 _ZTS10z_stream_s", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"p1 omnipotent char", !8, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!"p1 _ZTS11gz_header_s", !8, i64 0}
!15 = !{!"p1 short", !8, i64 0}
!16 = !{!"tree_desc_s", !17, i64 0, !11, i64 8, !18, i64 16}
!17 = !{!"p1 _ZTS9ct_data_s", !8, i64 0}
!18 = !{!"p1 _ZTS18static_tree_desc_s", !8, i64 0}
!19 = !{!"short", !9, i64 0}
!20 = !{!6, !18, i64 2920}
!21 = !{!6, !17, i64 2928}
!22 = !{!6, !18, i64 2944}
!23 = !{!6, !17, i64 2952}
!24 = !{!6, !18, i64 2968}
!25 = !{!6, !19, i64 5936}
!26 = !{!6, !11, i64 5940}
!27 = !{!6, !11, i64 5944}
!28 = !{!9, !9, i64 0}
!29 = !{!6, !11, i64 5900}
!30 = !{}
!31 = !{!6, !13, i64 40}
!32 = !{!"branch_weights", i32 1, i32 1048575}
!33 = !{!6, !12, i64 16}
!34 = !{!6, !11, i64 196}
!35 = !{!6, !7, i64 0}
!36 = !{!37, !11, i64 88}
!37 = !{!"z_stream_s", !12, i64 0, !11, i64 8, !13, i64 16, !12, i64 24, !11, i64 32, !13, i64 40, !12, i64 48, !38, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !11, i64 88, !13, i64 96, !13, i64 104}
!38 = !{!"p1 _ZTS14internal_state", !8, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!16, !17, i64 0}
!42 = !{!16, !18, i64 16}
!43 = !{!44, !17, i64 0}
!44 = !{!"static_tree_desc_s", !17, i64 0, !45, i64 8, !11, i64 16, !11, i64 20, !11, i64 24}
!45 = !{!"p1 int", !8, i64 0}
!46 = !{!44, !11, i64 20}
!47 = !{!6, !11, i64 5300}
!48 = !{!6, !11, i64 5304}
!49 = !{!11, !11, i64 0}
!50 = distinct !{!50, !40}
!51 = !{!6, !13, i64 5912}
!52 = !{!6, !13, i64 5920}
!53 = distinct !{!53, !40}
!54 = !{!16, !11, i64 8}
!55 = distinct !{!55, !40}
!56 = distinct !{!56, !40}
!57 = distinct !{!57, !40}
!58 = !{!44, !45, i64 8}
!59 = !{!44, !11, i64 16}
!60 = !{!44, !11, i64 24}
!61 = !{!19, !19, i64 0}
!62 = distinct !{!62, !40}
!63 = distinct !{!63, !40}
!64 = distinct !{!64, !40}
!65 = !{!"branch_weights", i32 1, i32 127}
!66 = !{!"branch_weights", i32 127, i32 134217473}
!67 = distinct !{!67, !40}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !40}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = distinct !{!72, !40}
!73 = distinct !{!73, !71}
!74 = !{!6, !11, i64 2912}
!75 = !{!"branch_weights", i32 1, i32 1048574}
!76 = distinct !{!76, !40}
!77 = !{!6, !11, i64 2936}
!78 = distinct !{!78, !71}
!79 = !{!6, !11, i64 200}
!80 = !{!6, !12, i64 5888}
!81 = distinct !{!81, !40}
!82 = distinct !{!82, !40}
!83 = distinct !{!83, !40}
!84 = distinct !{!84, !40}
!85 = !{!6, !11, i64 5928}
!86 = !{!6, !11, i64 5904}
