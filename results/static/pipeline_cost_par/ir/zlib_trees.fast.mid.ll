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

14:                                               ; preds = %14, %1
  %15 = phi i64 [ 0, %1 ], [ %19, %14 ]
  %16 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %2, i64 0, i64 %15
  store i16 0, ptr %16, align 4, !tbaa !28
  %17 = or disjoint i64 %15, 1
  %18 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %2, i64 0, i64 %17
  store i16 0, ptr %18, align 4, !tbaa !28
  %19 = add nuw nsw i64 %15, 2
  %20 = icmp eq i64 %19, 286
  br i1 %20, label %21, label %14, !llvm.loop !29

21:                                               ; preds = %14
  store i16 0, ptr %5, align 4, !tbaa !28
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %22, align 4, !tbaa !28
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %23, align 4, !tbaa !28
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %24, align 4, !tbaa !28
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %25, align 4, !tbaa !28
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %26, align 4, !tbaa !28
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %27, align 4, !tbaa !28
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %28, align 4, !tbaa !28
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %29, align 4, !tbaa !28
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %30, align 4, !tbaa !28
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %31, align 4, !tbaa !28
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %32, align 4, !tbaa !28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %33, align 4, !tbaa !28
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %34, align 4, !tbaa !28
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %35, align 4, !tbaa !28
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %36, align 4, !tbaa !28
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %37, align 4, !tbaa !28
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %38, align 4, !tbaa !28
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %39, align 4, !tbaa !28
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %40, align 4, !tbaa !28
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %41, align 4, !tbaa !28
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %42, align 4, !tbaa !28
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %43, align 4, !tbaa !28
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %44, align 4, !tbaa !28
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %45, align 4, !tbaa !28
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %46, align 4, !tbaa !28
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %47, align 4, !tbaa !28
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %48, align 4, !tbaa !28
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %49, align 4, !tbaa !28
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %50, align 4, !tbaa !28
  store i16 0, ptr %8, align 4, !tbaa !28
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %51, align 4, !tbaa !28
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %52, align 4, !tbaa !28
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %53, align 4, !tbaa !28
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %54, align 4, !tbaa !28
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %55, align 4, !tbaa !28
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %56, align 4, !tbaa !28
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %57, align 4, !tbaa !28
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %58, align 4, !tbaa !28
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %59, align 4, !tbaa !28
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %60, align 4, !tbaa !28
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %61, align 4, !tbaa !28
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %62, align 4, !tbaa !28
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %63, align 4, !tbaa !28
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %64, align 4, !tbaa !28
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %65, align 4, !tbaa !28
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %66, align 4, !tbaa !28
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %67, align 4, !tbaa !28
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %68, align 4, !tbaa !28
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %69, align 4, !tbaa !28
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %71, align 4, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %70, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_tr_stored_block(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %6 = load i32, ptr %5, align 4, !tbaa !26
  %7 = icmp sgt i32 %6, 13
  br i1 %7, label %9, label %47

8:                                                ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

9:                                                ; preds = %4
  %10 = and i32 %3, 65535
  %11 = shl i32 %3, %6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %13 = load i16, ptr %12, align 8, !tbaa !25
  %14 = trunc i32 %11 to i16
  %15 = or i16 %13, %14
  store i16 %15, ptr %12, align 8, !tbaa !25
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %17 = load i64, ptr %16, align 8, !tbaa !33
  %18 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %17, i64 1), !nosanitize !32
  %19 = extractvalue { i64, i1 } %18, 1, !nosanitize !32
  br i1 %19, label %20, label %21, !prof !34, !nosanitize !32

20:                                               ; preds = %9
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

21:                                               ; preds = %9
  %22 = extractvalue { i64, i1 } %18, 0, !nosanitize !32
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = trunc i16 %15 to i8
  store i64 %22, ptr %16, align 8, !tbaa !33
  %26 = getelementptr inbounds nuw i8, ptr %24, i64 %17
  store i8 %25, ptr %26, align 1, !tbaa !28
  %27 = load i64, ptr %16, align 8, !tbaa !33
  %28 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 1), !nosanitize !32
  %29 = extractvalue { i64, i1 } %28, 1, !nosanitize !32
  br i1 %29, label %30, label %31, !prof !34, !nosanitize !32

30:                                               ; preds = %41, %21
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

31:                                               ; preds = %21
  %32 = extractvalue { i64, i1 } %28, 0, !nosanitize !32
  %33 = load ptr, ptr %23, align 8, !tbaa !35
  %34 = load i16, ptr %12, align 8, !tbaa !25
  %35 = lshr i16 %34, 8
  %36 = trunc nuw i16 %35 to i8
  store i64 %32, ptr %16, align 8, !tbaa !33
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 %27
  store i8 %36, ptr %37, align 1, !tbaa !28
  %38 = load i32, ptr %5, align 4, !tbaa !26
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %38), !nosanitize !32
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !32
  br i1 %40, label %8, label %41, !prof !34, !nosanitize !32

41:                                               ; preds = %31
  %42 = extractvalue { i32, i1 } %39, 0, !nosanitize !32
  %43 = lshr i32 %10, %42
  %44 = trunc nuw i32 %43 to i16
  store i16 %44, ptr %12, align 8, !tbaa !25
  %45 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 -13), !nosanitize !32
  %46 = extractvalue { i32, i1 } %45, 1, !nosanitize !32
  br i1 false, label %30, label %55, !prof !34, !nosanitize !32

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
  %62 = load i64, ptr %61, align 8, !tbaa !33
  %63 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %62, i64 1), !nosanitize !32
  %64 = extractvalue { i64, i1 } %63, 1, !nosanitize !32
  br i1 %64, label %65, label %66, !prof !34, !nosanitize !32

65:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

66:                                               ; preds = %60
  %67 = extractvalue { i64, i1 } %63, 0, !nosanitize !32
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %69 = load ptr, ptr %68, align 8, !tbaa !35
  %70 = trunc i16 %56 to i8
  store i64 %67, ptr %61, align 8, !tbaa !33
  %71 = getelementptr inbounds nuw i8, ptr %69, i64 %62
  store i8 %70, ptr %71, align 1, !tbaa !28
  %72 = load i64, ptr %61, align 8, !tbaa !33
  %73 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %72, i64 1), !nosanitize !32
  %74 = extractvalue { i64, i1 } %73, 1, !nosanitize !32
  br i1 %74, label %75, label %76, !prof !34, !nosanitize !32

75:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

76:                                               ; preds = %66
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %78 = extractvalue { i64, i1 } %73, 0, !nosanitize !32
  %79 = load ptr, ptr %68, align 8, !tbaa !35
  %80 = load i16, ptr %77, align 8, !tbaa !25
  %81 = lshr i16 %80, 8
  %82 = trunc nuw i16 %81 to i8
  store i64 %78, ptr %61, align 8, !tbaa !33
  %83 = getelementptr inbounds nuw i8, ptr %79, i64 %72
  store i8 %82, ptr %83, align 1, !tbaa !28
  br label %98

84:                                               ; preds = %55
  %85 = icmp sgt i32 %58, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %84
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %88 = load i64, ptr %87, align 8, !tbaa !33
  %89 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %88, i64 1), !nosanitize !32
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !32
  br i1 %90, label %91, label %92, !prof !34, !nosanitize !32

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

92:                                               ; preds = %86
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !32
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %95 = load ptr, ptr %94, align 8, !tbaa !35
  %96 = trunc i16 %56 to i8
  store i64 %93, ptr %87, align 8, !tbaa !33
  %97 = getelementptr inbounds nuw i8, ptr %95, i64 %88
  store i8 %96, ptr %97, align 1, !tbaa !28
  br label %98

98:                                               ; preds = %92, %84, %76
  %99 = load i32, ptr %5, align 4, !tbaa !26
  %100 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %99, i32 -1)
  %101 = extractvalue { i32, i1 } %100, 1, !nosanitize !32
  br i1 %101, label %102, label %103, !prof !34, !nosanitize !32

102:                                              ; preds = %98
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

103:                                              ; preds = %98
  %104 = extractvalue { i32, i1 } %100, 0, !nosanitize !32
  %105 = and i32 %104, 7
  %106 = add nuw nsw i32 %105, 1
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %106, ptr %107, align 8, !tbaa !27
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %108, align 8, !tbaa !25
  store i32 0, ptr %5, align 4, !tbaa !26
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %111 = load i64, ptr %110, align 8, !tbaa !33
  %112 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 1), !nosanitize !32
  %113 = extractvalue { i64, i1 } %112, 1, !nosanitize !32
  br i1 %113, label %114, label %115, !prof !34, !nosanitize !32

114:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

115:                                              ; preds = %103
  %116 = extractvalue { i64, i1 } %112, 0, !nosanitize !32
  %117 = load ptr, ptr %109, align 8, !tbaa !35
  %118 = trunc i64 %2 to i8
  store i64 %116, ptr %110, align 8, !tbaa !33
  %119 = getelementptr inbounds nuw i8, ptr %117, i64 %111
  store i8 %118, ptr %119, align 1, !tbaa !28
  %120 = load i64, ptr %110, align 8, !tbaa !33
  %121 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %120, i64 1), !nosanitize !32
  %122 = extractvalue { i64, i1 } %121, 1, !nosanitize !32
  br i1 %122, label %123, label %124, !prof !34, !nosanitize !32

123:                                              ; preds = %115
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

124:                                              ; preds = %115
  %125 = extractvalue { i64, i1 } %121, 0, !nosanitize !32
  %126 = load ptr, ptr %109, align 8, !tbaa !35
  %127 = lshr i64 %2, 8
  %128 = trunc i64 %127 to i8
  store i64 %125, ptr %110, align 8, !tbaa !33
  %129 = getelementptr inbounds nuw i8, ptr %126, i64 %120
  store i8 %128, ptr %129, align 1, !tbaa !28
  %130 = load i64, ptr %110, align 8, !tbaa !33
  %131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %130, i64 1), !nosanitize !32
  %132 = extractvalue { i64, i1 } %131, 1, !nosanitize !32
  br i1 %132, label %133, label %134, !prof !34, !nosanitize !32

133:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

134:                                              ; preds = %124
  %135 = extractvalue { i64, i1 } %131, 0, !nosanitize !32
  %136 = load ptr, ptr %109, align 8, !tbaa !35
  %137 = trunc i64 %2 to i32
  %138 = xor i32 %137, 65535
  %139 = trunc i32 %138 to i8
  store i64 %135, ptr %110, align 8, !tbaa !33
  %140 = getelementptr inbounds nuw i8, ptr %136, i64 %130
  store i8 %139, ptr %140, align 1, !tbaa !28
  %141 = load i64, ptr %110, align 8, !tbaa !33
  %142 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %141, i64 1), !nosanitize !32
  %143 = extractvalue { i64, i1 } %142, 1, !nosanitize !32
  br i1 %143, label %144, label %145, !prof !34, !nosanitize !32

144:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

145:                                              ; preds = %134
  %146 = extractvalue { i64, i1 } %142, 0, !nosanitize !32
  %147 = load ptr, ptr %109, align 8, !tbaa !35
  %148 = lshr i32 %138, 8
  %149 = trunc i32 %148 to i8
  store i64 %146, ptr %110, align 8, !tbaa !33
  %150 = getelementptr inbounds nuw i8, ptr %147, i64 %141
  store i8 %149, ptr %150, align 1, !tbaa !28
  %151 = icmp eq i64 %2, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %145
  %153 = load ptr, ptr %109, align 8, !tbaa !35
  %154 = load i64, ptr %110, align 8, !tbaa !33
  %155 = getelementptr inbounds nuw i8, ptr %153, i64 %154
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %155, ptr align 1 %1, i64 %2, i1 false)
  br label %156

156:                                              ; preds = %152, %145
  %157 = load i64, ptr %110, align 8, !tbaa !33
  %158 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %157, i64 %2), !nosanitize !32
  %159 = extractvalue { i64, i1 } %158, 1, !nosanitize !32
  br i1 %159, label %160, label %161, !prof !34, !nosanitize !32

160:                                              ; preds = %156
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

161:                                              ; preds = %156
  %162 = extractvalue { i64, i1 } %158, 0, !nosanitize !32
  store i64 %162, ptr %110, align 8, !tbaa !33
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local void @_tr_flush_bits(ptr noundef captures(none) %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %3 = load i32, ptr %2, align 4, !tbaa !26
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load i64, ptr %7, align 8, !tbaa !33
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 1), !nosanitize !32
  %10 = extractvalue { i64, i1 } %9, 1, !nosanitize !32
  br i1 %10, label %11, label %12, !prof !34, !nosanitize !32

11:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

12:                                               ; preds = %5
  %13 = extractvalue { i64, i1 } %9, 0, !nosanitize !32
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = load i16, ptr %6, align 8, !tbaa !25
  %17 = trunc i16 %16 to i8
  store i64 %13, ptr %7, align 8, !tbaa !33
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 %8
  store i8 %17, ptr %18, align 1, !tbaa !28
  %19 = load i64, ptr %7, align 8, !tbaa !33
  %20 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 1), !nosanitize !32
  %21 = extractvalue { i64, i1 } %20, 1, !nosanitize !32
  br i1 %21, label %22, label %23, !prof !34, !nosanitize !32

22:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

23:                                               ; preds = %12
  %24 = extractvalue { i64, i1 } %20, 0, !nosanitize !32
  %25 = load ptr, ptr %14, align 8, !tbaa !35
  %26 = load i16, ptr %6, align 8, !tbaa !25
  %27 = lshr i16 %26, 8
  %28 = trunc nuw i16 %27 to i8
  store i64 %24, ptr %7, align 8, !tbaa !33
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 %19
  store i8 %28, ptr %29, align 1, !tbaa !28
  store i16 0, ptr %6, align 8, !tbaa !25
  br label %54

30:                                               ; preds = %1
  %31 = icmp sgt i32 %3, 7
  br i1 %31, label %32, label %56

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %34 = load i64, ptr %33, align 8, !tbaa !33
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %34, i64 1), !nosanitize !32
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !32
  br i1 %36, label %37, label %38, !prof !34, !nosanitize !32

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !32
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %43 = load i16, ptr %42, align 8, !tbaa !25
  %44 = trunc i16 %43 to i8
  store i64 %39, ptr %33, align 8, !tbaa !33
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 %34
  store i8 %44, ptr %45, align 1, !tbaa !28
  %46 = load i16, ptr %42, align 8, !tbaa !25
  %47 = lshr i16 %46, 8
  store i16 %47, ptr %42, align 8, !tbaa !25
  %48 = load i32, ptr %2, align 4, !tbaa !26
  %49 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %48, i32 -8)
  %50 = extractvalue { i32, i1 } %49, 1, !nosanitize !32
  br i1 %50, label %51, label %52, !prof !34, !nosanitize !32

51:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

52:                                               ; preds = %38
  %53 = extractvalue { i32, i1 } %49, 0, !nosanitize !32
  br label %54

54:                                               ; preds = %52, %23
  %55 = phi i32 [ %53, %52 ], [ 0, %23 ]
  store i32 %55, ptr %2, align 4, !tbaa !26
  br label %56

56:                                               ; preds = %54, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_tr_align(ptr noundef captures(none) %0) local_unnamed_addr #1 {
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

10:                                               ; preds = %68, %27
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load i64, ptr %12, align 8, !tbaa !33
  %14 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 1), !nosanitize !32
  %15 = extractvalue { i64, i1 } %14, 1, !nosanitize !32
  br i1 %15, label %16, label %17, !prof !34, !nosanitize !32

16:                                               ; preds = %11
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

17:                                               ; preds = %11
  %18 = extractvalue { i64, i1 } %14, 0, !nosanitize !32
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = trunc i16 %9 to i8
  store i64 %18, ptr %12, align 8, !tbaa !33
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 %13
  store i8 %21, ptr %22, align 1, !tbaa !28
  %23 = load i64, ptr %12, align 8, !tbaa !33
  %24 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %23, i64 1), !nosanitize !32
  %25 = extractvalue { i64, i1 } %24, 1, !nosanitize !32
  br i1 %25, label %26, label %27, !prof !34, !nosanitize !32

26:                                               ; preds = %37, %17
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

27:                                               ; preds = %17
  %28 = extractvalue { i64, i1 } %24, 0, !nosanitize !32
  %29 = load ptr, ptr %19, align 8, !tbaa !35
  %30 = load i16, ptr %6, align 8, !tbaa !25
  %31 = lshr i16 %30, 8
  %32 = trunc nuw i16 %31 to i8
  store i64 %28, ptr %12, align 8, !tbaa !33
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 %23
  store i8 %32, ptr %33, align 1, !tbaa !28
  %34 = load i32, ptr %2, align 4, !tbaa !26
  %35 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %34), !nosanitize !32
  %36 = extractvalue { i32, i1 } %35, 1, !nosanitize !32
  br i1 %36, label %10, label %37, !prof !34, !nosanitize !32

37:                                               ; preds = %27
  %38 = extractvalue { i32, i1 } %35, 0, !nosanitize !32
  %39 = lshr i32 2, %38
  %40 = trunc nuw nsw i32 %39 to i16
  store i16 %40, ptr %6, align 8, !tbaa !25
  %41 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 -13), !nosanitize !32
  %42 = extractvalue { i32, i1 } %41, 1, !nosanitize !32
  br i1 false, label %26, label %46, !prof !34, !nosanitize !32

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
  br i1 %50, label %51, label %83

51:                                               ; preds = %46
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %54 = load i64, ptr %53, align 8, !tbaa !33
  %55 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %54, i64 1), !nosanitize !32
  %56 = extractvalue { i64, i1 } %55, 1, !nosanitize !32
  br i1 %56, label %57, label %58, !prof !34, !nosanitize !32

57:                                               ; preds = %51
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

58:                                               ; preds = %51
  %59 = extractvalue { i64, i1 } %55, 0, !nosanitize !32
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %61 = load ptr, ptr %60, align 8, !tbaa !35
  %62 = trunc i16 %47 to i8
  store i64 %59, ptr %53, align 8, !tbaa !33
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 %54
  store i8 %62, ptr %63, align 1, !tbaa !28
  %64 = load i64, ptr %53, align 8, !tbaa !33
  %65 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 1), !nosanitize !32
  %66 = extractvalue { i64, i1 } %65, 1, !nosanitize !32
  br i1 %66, label %67, label %68, !prof !34, !nosanitize !32

67:                                               ; preds = %78, %58
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

68:                                               ; preds = %58
  %69 = extractvalue { i64, i1 } %65, 0, !nosanitize !32
  %70 = load ptr, ptr %60, align 8, !tbaa !35
  %71 = load i16, ptr %52, align 8, !tbaa !25
  %72 = lshr i16 %71, 8
  %73 = trunc nuw i16 %72 to i8
  store i64 %69, ptr %53, align 8, !tbaa !33
  %74 = getelementptr inbounds nuw i8, ptr %70, i64 %64
  store i8 %73, ptr %74, align 1, !tbaa !28
  %75 = load i32, ptr %2, align 4, !tbaa !26
  %76 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %75), !nosanitize !32
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !32
  br i1 %77, label %10, label %78, !prof !34, !nosanitize !32

78:                                               ; preds = %68
  store i16 0, ptr %52, align 8, !tbaa !25
  %79 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %75, i32 -9), !nosanitize !32
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !32
  br i1 false, label %67, label %81, !prof !34, !nosanitize !32

81:                                               ; preds = %78
  %82 = extractvalue { i32, i1 } %79, 0, !nosanitize !32
  br label %86

83:                                               ; preds = %46
  %84 = add nsw i32 %49, 7
  %85 = trunc i16 %47 to i8
  br label %86

86:                                               ; preds = %83, %81
  %87 = phi i8 [ %85, %83 ], [ 0, %81 ]
  %88 = phi i32 [ %84, %83 ], [ %82, %81 ]
  store i32 %88, ptr %2, align 4, !tbaa !26
  %89 = icmp eq i32 %88, 16
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %93 = load i64, ptr %92, align 8, !tbaa !33
  %94 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %93, i64 1), !nosanitize !32
  %95 = extractvalue { i64, i1 } %94, 1, !nosanitize !32
  br i1 %95, label %96, label %97, !prof !34, !nosanitize !32

96:                                               ; preds = %90
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

97:                                               ; preds = %90
  %98 = extractvalue { i64, i1 } %94, 0, !nosanitize !32
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %100 = load ptr, ptr %99, align 8, !tbaa !35
  store i64 %98, ptr %92, align 8, !tbaa !33
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 %93
  store i8 %87, ptr %101, align 1, !tbaa !28
  %102 = load i64, ptr %92, align 8, !tbaa !33
  %103 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %102, i64 1), !nosanitize !32
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !32
  br i1 %104, label %105, label %106, !prof !34, !nosanitize !32

105:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

106:                                              ; preds = %97
  %107 = extractvalue { i64, i1 } %103, 0, !nosanitize !32
  %108 = load ptr, ptr %99, align 8, !tbaa !35
  %109 = load i16, ptr %91, align 8, !tbaa !25
  %110 = lshr i16 %109, 8
  %111 = trunc nuw i16 %110 to i8
  store i64 %107, ptr %92, align 8, !tbaa !33
  %112 = getelementptr inbounds nuw i8, ptr %108, i64 %102
  store i8 %111, ptr %112, align 1, !tbaa !28
  store i16 0, ptr %91, align 8, !tbaa !25
  br label %135

113:                                              ; preds = %86
  %114 = icmp sgt i32 %88, 7
  br i1 %114, label %115, label %137

115:                                              ; preds = %113
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %117 = load i64, ptr %116, align 8, !tbaa !33
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %117, i64 1), !nosanitize !32
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !32
  br i1 %119, label %120, label %121, !prof !34, !nosanitize !32

120:                                              ; preds = %115
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

121:                                              ; preds = %115
  %122 = extractvalue { i64, i1 } %118, 0, !nosanitize !32
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %124 = load ptr, ptr %123, align 8, !tbaa !35
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i64 %122, ptr %116, align 8, !tbaa !33
  %126 = getelementptr inbounds nuw i8, ptr %124, i64 %117
  store i8 %87, ptr %126, align 1, !tbaa !28
  %127 = load i16, ptr %125, align 8, !tbaa !25
  %128 = lshr i16 %127, 8
  store i16 %128, ptr %125, align 8, !tbaa !25
  %129 = load i32, ptr %2, align 4, !tbaa !26
  %130 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %129, i32 -8)
  %131 = extractvalue { i32, i1 } %130, 1, !nosanitize !32
  br i1 %131, label %132, label %133, !prof !34, !nosanitize !32

132:                                              ; preds = %121
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

133:                                              ; preds = %121
  %134 = extractvalue { i32, i1 } %130, 0, !nosanitize !32
  br label %135

135:                                              ; preds = %133, %106
  %136 = phi i32 [ %134, %133 ], [ 0, %106 ]
  store i32 %136, ptr %2, align 4, !tbaa !26
  br label %137

137:                                              ; preds = %135, %113
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_tr_flush_block(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [16 x i16], align 16
  %6 = alloca [16 x i16], align 16
  %7 = alloca [16 x i16], align 16
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %9 = load i32, ptr %8, align 4, !tbaa !36
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %3057

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !37
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %14 = load i32, ptr %13, align 8, !tbaa !38
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %145

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %18 = load i16, ptr %17, align 4, !tbaa !28
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %143

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %22 = load i16, ptr %21, align 4, !tbaa !28
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %143

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %26 = load i16, ptr %25, align 4, !tbaa !28
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %143

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %30 = load i16, ptr %29, align 4, !tbaa !28
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %143

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 228
  %34 = load i16, ptr %33, align 4, !tbaa !28
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %143

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %38 = load i16, ptr %37, align 4, !tbaa !28
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %143

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %42 = load i16, ptr %41, align 4, !tbaa !28
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %143

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %46 = load i16, ptr %45, align 4, !tbaa !28
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %143

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %50 = load i16, ptr %49, align 4, !tbaa !28
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %143

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %54 = load i16, ptr %53, align 4, !tbaa !28
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %143

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %58 = load i16, ptr %57, align 4, !tbaa !28
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %143

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %62 = load i16, ptr %61, align 4, !tbaa !28
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %143

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %66 = load i16, ptr %65, align 4, !tbaa !28
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %143

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 292
  %70 = load i16, ptr %69, align 4, !tbaa !28
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %143

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %74 = load i16, ptr %73, align 4, !tbaa !28
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %143

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %78 = load i16, ptr %77, align 4, !tbaa !28
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %143

80:                                               ; preds = %76
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %82 = load i16, ptr %81, align 4, !tbaa !28
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %143

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 308
  %86 = load i16, ptr %85, align 4, !tbaa !28
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %143

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %90 = load i16, ptr %89, align 4, !tbaa !28
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %143

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 324
  %94 = load i16, ptr %93, align 4, !tbaa !28
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %143

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %98 = load i16, ptr %97, align 4, !tbaa !28
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %143

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 332
  %102 = load i16, ptr %101, align 4, !tbaa !28
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %143

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %106 = load i16, ptr %105, align 4, !tbaa !28
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %143

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %110 = load i16, ptr %109, align 4, !tbaa !28
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %143

112:                                              ; preds = %108
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 252
  %114 = load i16, ptr %113, align 4, !tbaa !28
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %143

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %118 = load i16, ptr %117, align 4, !tbaa !28
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %138, label %143

120:                                              ; preds = %138
  %121 = or disjoint i64 %139, 1
  %122 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %17, i64 0, i64 %121
  %123 = load i16, ptr %122, align 4, !tbaa !28
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %120
  %126 = or disjoint i64 %139, 2
  %127 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %17, i64 0, i64 %126
  %128 = load i16, ptr %127, align 4, !tbaa !28
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = or disjoint i64 %139, 3
  %132 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %17, i64 0, i64 %131
  %133 = load i16, ptr %132, align 4, !tbaa !28
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = add nuw nsw i64 %139, 4
  %137 = icmp eq i64 %136, 256
  br i1 %137, label %143, label %138, !llvm.loop !41

138:                                              ; preds = %135, %116
  %139 = phi i64 [ %136, %135 ], [ 32, %116 ]
  %140 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %17, i64 0, i64 %139
  %141 = load i16, ptr %140, align 4, !tbaa !28
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %120, label %143

143:                                              ; preds = %138, %135, %130, %125, %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16
  %144 = phi i32 [ 1, %116 ], [ 1, %112 ], [ 1, %108 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ 0, %24 ], [ 0, %20 ], [ 0, %16 ], [ 1, %138 ], [ 1, %120 ], [ 1, %125 ], [ 1, %130 ], [ 0, %135 ]
  store i32 %144, ptr %13, align 8, !tbaa !38
  br label %145

145:                                              ; preds = %143, %11
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %147 = load ptr, ptr %146, align 8, !tbaa !42
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 2920
  %149 = load ptr, ptr %148, align 8, !tbaa !43
  %150 = load ptr, ptr %149, align 8, !tbaa !44
  %151 = getelementptr inbounds nuw i8, ptr %149, i64 20
  %152 = load i32, ptr %151, align 4, !tbaa !47
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 5300
  store i32 0, ptr %153, align 4, !tbaa !48
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 5304
  store i32 573, ptr %154, align 8, !tbaa !49
  %155 = icmp sgt i32 %152, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %145
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %159 = zext nneg i32 %152 to i64
  br label %171

160:                                              ; preds = %190
  %161 = load i32, ptr %153, align 4, !tbaa !48
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %226

163:                                              ; preds = %160, %145
  %164 = phi i32 [ %191, %160 ], [ -1, %145 ]
  %165 = phi i32 [ %161, %160 ], [ 0, %145 ]
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %169 = icmp eq ptr %150, null
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %194

171:                                              ; preds = %190, %156
  %172 = phi i64 [ 0, %156 ], [ %192, %190 ]
  %173 = phi i32 [ -1, %156 ], [ %191, %190 ]
  %174 = getelementptr inbounds nuw %struct.ct_data_s, ptr %147, i64 %172
  %175 = load i16, ptr %174, align 2, !tbaa !28
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %171
  %178 = load i32, ptr %153, align 4, !tbaa !48
  %179 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %178, i32 1), !nosanitize !32
  %180 = extractvalue { i32, i1 } %179, 1, !nosanitize !32
  br i1 %180, label %181, label %182, !prof !34, !nosanitize !32

.loopexit10:                                      ; preds = %325, %574
  br label %181

181:                                              ; preds = %.loopexit10, %177
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

182:                                              ; preds = %177
  %183 = extractvalue { i32, i1 } %179, 0, !nosanitize !32
  store i32 %183, ptr %153, align 4, !tbaa !48
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [573 x i32], ptr %157, i64 0, i64 %184
  %186 = trunc nuw nsw i64 %172 to i32
  store i32 %186, ptr %185, align 4, !tbaa !50
  %187 = getelementptr inbounds nuw [573 x i8], ptr %158, i64 0, i64 %172
  store i8 0, ptr %187, align 1, !tbaa !28
  br label %190

188:                                              ; preds = %171
  %189 = getelementptr inbounds nuw i8, ptr %174, i64 2
  store i16 0, ptr %189, align 2, !tbaa !28
  br label %190

190:                                              ; preds = %188, %182
  %191 = phi i32 [ %186, %182 ], [ %173, %188 ]
  %192 = add nuw nsw i64 %172, 1
  %193 = icmp eq i64 %192, %159
  br i1 %193, label %160, label %171, !llvm.loop !51

194:                                              ; preds = %223, %163
  %195 = phi i32 [ %165, %163 ], [ %224, %223 ]
  %196 = phi i32 [ %164, %163 ], [ %199, %223 ]
  %197 = icmp slt i32 %196, 2
  %198 = add i32 %196, 1
  %199 = select i1 %197, i32 %198, i32 %196
  %200 = add nsw i32 %195, 1
  %201 = select i1 %197, i32 %198, i32 0
  store i32 %200, ptr %153, align 4, !tbaa !48
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds [573 x i32], ptr %166, i64 0, i64 %202
  store i32 %201, ptr %203, align 4, !tbaa !50
  %204 = sext i32 %201 to i64
  %205 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %204
  store i16 1, ptr %205, align 2, !tbaa !28
  %206 = getelementptr inbounds [573 x i8], ptr %167, i64 0, i64 %204
  store i8 0, ptr %206, align 1, !tbaa !28
  %207 = load i64, ptr %168, align 8, !tbaa !52
  %208 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %207, i64 1), !nosanitize !32
  %209 = extractvalue { i64, i1 } %208, 1, !nosanitize !32
  br i1 %209, label %210, label %211, !prof !34, !nosanitize !32

210:                                              ; preds = %194
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

211:                                              ; preds = %194
  %212 = extractvalue { i64, i1 } %208, 0, !nosanitize !32
  store i64 %212, ptr %168, align 8, !tbaa !52
  br i1 %169, label %223, label %213

213:                                              ; preds = %211
  %214 = getelementptr inbounds %struct.ct_data_s, ptr %150, i64 %204, i32 1
  %215 = load i16, ptr %214, align 2, !tbaa !28
  %216 = zext i16 %215 to i64
  %217 = load i64, ptr %170, align 8, !tbaa !53
  %218 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %217, i64 %216), !nosanitize !32
  %219 = extractvalue { i64, i1 } %218, 1, !nosanitize !32
  br i1 %219, label %220, label %221, !prof !34, !nosanitize !32

.loopexit9:                                       ; preds = %318, %311, %238, %487, %560, %567
  br label %220

220:                                              ; preds = %.loopexit9, %664, %213
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

221:                                              ; preds = %213
  %222 = extractvalue { i64, i1 } %218, 0, !nosanitize !32
  store i64 %222, ptr %170, align 8, !tbaa !53
  br label %223

223:                                              ; preds = %221, %211
  %224 = load i32, ptr %153, align 4, !tbaa !48
  %225 = icmp slt i32 %224, 2
  br i1 %225, label %194, label %226, !llvm.loop !54

226:                                              ; preds = %223, %160
  %227 = phi i32 [ %191, %160 ], [ %199, %223 ]
  %228 = phi i32 [ %161, %160 ], [ %224, %223 ]
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 %227, ptr %229, align 8, !tbaa !55
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %232 = lshr i32 %228, 1
  %233 = zext nneg i32 %232 to i64
  br label %415

234:                                              ; preds = %481
  %235 = load i32, ptr %153, align 4, !tbaa !48
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %237 = sext i32 %152 to i64
  %mv.h11 = icmp sge i32 %235, 0
  %mv.h.fr12 = freeze i1 %mv.h11
  br i1 %mv.h.fr12, label %.mv.ph13.mv.fast, label %.mv.ph13

.mv.ph13.mv.fast:                                 ; preds = %234
  br label %238

238:                                              ; preds = %410, %.mv.ph13.mv.fast
  %239 = phi i32 [ %235, %.mv.ph13.mv.fast ], [ %413, %410 ]
  %240 = phi i64 [ %237, %.mv.ph13.mv.fast ], [ %350, %410 ]
  %241 = load i32, ptr %236, align 4, !tbaa !50
  %242 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %239, i32 -1)
  %243 = extractvalue { i32, i1 } %242, 1, !nosanitize !32
  br i1 false, label %.loopexit9, label %244, !prof !34, !nosanitize !32

244:                                              ; preds = %238
  %245 = extractvalue { i32, i1 } %242, 0, !nosanitize !32
  store i32 %245, ptr %153, align 4, !tbaa !48
  %246 = sext i32 %239 to i64
  %247 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !50
  store i32 %248, ptr %236, align 4, !tbaa !50
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %249
  %251 = icmp slt i32 %245, 2
  br i1 %251, label %311, label %252

252:                                              ; preds = %244
  %253 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %249
  br label %254

254:                                              ; preds = %302, %252
  %255 = phi i32 [ %245, %252 ], [ %306, %302 ]
  %256 = phi i32 [ 2, %252 ], [ %305, %302 ]
  %257 = phi i32 [ 1, %252 ], [ %287, %302 ]
  %258 = icmp slt i32 %256, %255
  br i1 %258, label %261, label %259

259:                                              ; preds = %254
  %260 = sext i32 %256 to i64
  br label %285

261:                                              ; preds = %254
  %262 = or disjoint i32 %256, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !50
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %266
  %268 = load i16, ptr %267, align 2, !tbaa !28
  %269 = sext i32 %256 to i64
  %270 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !50
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %272
  %274 = load i16, ptr %273, align 2, !tbaa !28
  %275 = icmp ult i16 %268, %274
  br i1 %275, label %284, label %276

276:                                              ; preds = %261
  %277 = icmp eq i16 %268, %274
  br i1 %277, label %278, label %285

278:                                              ; preds = %276
  %279 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %266
  %280 = load i8, ptr %279, align 1, !tbaa !28
  %281 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %272
  %282 = load i8, ptr %281, align 1, !tbaa !28
  %283 = icmp ugt i8 %280, %282
  br i1 %283, label %285, label %284

284:                                              ; preds = %278, %261
  br label %285

285:                                              ; preds = %284, %278, %276, %259
  %286 = phi i64 [ %260, %259 ], [ %263, %284 ], [ %269, %278 ], [ %269, %276 ]
  %287 = phi i32 [ %256, %259 ], [ %262, %284 ], [ %256, %278 ], [ %256, %276 ]
  %288 = load i16, ptr %253, align 2, !tbaa !28
  %289 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %286
  %290 = load i32, ptr %289, align 4, !tbaa !50
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %291
  %293 = load i16, ptr %292, align 2, !tbaa !28
  %294 = icmp ult i16 %288, %293
  br i1 %294, label %308, label %295

295:                                              ; preds = %285
  %296 = icmp eq i16 %288, %293
  br i1 %296, label %297, label %302

297:                                              ; preds = %295
  %298 = load i8, ptr %250, align 1, !tbaa !28
  %299 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %291
  %300 = load i8, ptr %299, align 1, !tbaa !28
  %301 = icmp ugt i8 %298, %300
  br i1 %301, label %302, label %308

302:                                              ; preds = %297, %295
  %303 = sext i32 %257 to i64
  %304 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %303
  store i32 %290, ptr %304, align 4, !tbaa !50
  %305 = shl i32 %287, 1
  %306 = load i32, ptr %153, align 4, !tbaa !48
  %307 = icmp sgt i32 %305, %306
  br i1 %307, label %308, label %254, !llvm.loop !56

308:                                              ; preds = %302, %297, %285
  %309 = phi i32 [ %257, %285 ], [ %257, %297 ], [ %287, %302 ]
  %310 = sext i32 %309 to i64
  br label %311

311:                                              ; preds = %308, %244
  %312 = phi i64 [ 1, %244 ], [ %310, %308 ]
  %313 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %312
  store i32 %248, ptr %313, align 4, !tbaa !50
  %314 = load i32, ptr %236, align 4, !tbaa !50
  %315 = load i32, ptr %154, align 8, !tbaa !49
  %316 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %315, i32 -1)
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !32
  br i1 %317, label %.loopexit9, label %318, !prof !34, !nosanitize !32

318:                                              ; preds = %311
  %319 = extractvalue { i32, i1 } %316, 0, !nosanitize !32
  store i32 %319, ptr %154, align 8, !tbaa !49
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %320
  store i32 %241, ptr %321, align 4, !tbaa !50
  %322 = load i32, ptr %154, align 8, !tbaa !49
  %323 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %322, i32 -1)
  %324 = extractvalue { i32, i1 } %323, 1, !nosanitize !32
  br i1 %324, label %.loopexit9, label %325, !prof !34, !nosanitize !32

325:                                              ; preds = %318
  %326 = extractvalue { i32, i1 } %323, 0, !nosanitize !32
  store i32 %326, ptr %154, align 8, !tbaa !49
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %327
  store i32 %314, ptr %328, align 4, !tbaa !50
  %329 = sext i32 %241 to i64
  %330 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %329
  %331 = load i16, ptr %330, align 2, !tbaa !28
  %332 = sext i32 %314 to i64
  %333 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %332
  %334 = load i16, ptr %333, align 2, !tbaa !28
  %335 = add i16 %334, %331
  %336 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %240
  store i16 %335, ptr %336, align 2, !tbaa !28
  %337 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %329
  %338 = load i8, ptr %337, align 1, !tbaa !28
  %339 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %332
  %340 = load i8, ptr %339, align 1, !tbaa !28
  %341 = tail call i8 @llvm.umax.i8(i8 %338, i8 %340)
  %342 = add i8 %341, 1
  %343 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %240
  store i8 %342, ptr %343, align 1, !tbaa !28
  %344 = trunc nsw i64 %240 to i32
  %345 = trunc i64 %240 to i16
  %346 = getelementptr inbounds nuw i8, ptr %333, i64 2
  store i16 %345, ptr %346, align 2, !tbaa !28
  %347 = getelementptr inbounds nuw i8, ptr %330, i64 2
  store i16 %345, ptr %347, align 2, !tbaa !28
  %348 = icmp eq i64 %240, 2147483647
  br i1 %348, label %.loopexit10, label %349, !prof !34, !nosanitize !32

349:                                              ; preds = %325
  %350 = add nsw i64 %240, 1
  store i32 %344, ptr %236, align 4, !tbaa !50
  %351 = load i32, ptr %153, align 4, !tbaa !48
  %352 = icmp slt i32 %351, 2
  br i1 %352, label %410, label %.preheader8.mv.fast

353:                                              ; preds = %.preheader8.mv.fast, %401
  %354 = phi i32 [ %405, %401 ], [ %351, %.preheader8.mv.fast ]
  %355 = phi i32 [ %404, %401 ], [ 2, %.preheader8.mv.fast ]
  %356 = phi i32 [ %386, %401 ], [ 1, %.preheader8.mv.fast ]
  %357 = icmp slt i32 %355, %354
  br i1 %357, label %360, label %358

358:                                              ; preds = %353
  %359 = sext i32 %355 to i64
  br label %384

360:                                              ; preds = %353
  %361 = or disjoint i32 %355, 1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !50
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %365
  %367 = load i16, ptr %366, align 2, !tbaa !28
  %368 = sext i32 %355 to i64
  %369 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %368
  %370 = load i32, ptr %369, align 4, !tbaa !50
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %371
  %373 = load i16, ptr %372, align 2, !tbaa !28
  %374 = icmp ult i16 %367, %373
  br i1 %374, label %383, label %375

375:                                              ; preds = %360
  %376 = icmp eq i16 %367, %373
  br i1 %376, label %377, label %384

377:                                              ; preds = %375
  %378 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %365
  %379 = load i8, ptr %378, align 1, !tbaa !28
  %380 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %371
  %381 = load i8, ptr %380, align 1, !tbaa !28
  %382 = icmp ugt i8 %379, %381
  br i1 %382, label %384, label %383

383:                                              ; preds = %377, %360
  br label %384

384:                                              ; preds = %383, %377, %375, %358
  %385 = phi i64 [ %359, %358 ], [ %362, %383 ], [ %368, %377 ], [ %368, %375 ]
  %386 = phi i32 [ %355, %358 ], [ %361, %383 ], [ %355, %377 ], [ %355, %375 ]
  %387 = load i16, ptr %336, align 2, !tbaa !28
  %388 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %385
  %389 = load i32, ptr %388, align 4, !tbaa !50
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %390
  %392 = load i16, ptr %391, align 2, !tbaa !28
  %393 = icmp ult i16 %387, %392
  br i1 %393, label %407, label %394

394:                                              ; preds = %384
  %395 = icmp eq i16 %387, %392
  br i1 %395, label %396, label %401

396:                                              ; preds = %394
  %397 = load i8, ptr %343, align 1, !tbaa !28
  %398 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %390
  %399 = load i8, ptr %398, align 1, !tbaa !28
  %400 = icmp ugt i8 %397, %399
  br i1 %400, label %401, label %407

401:                                              ; preds = %396, %394
  %402 = sext i32 %356 to i64
  %403 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %402
  store i32 %389, ptr %403, align 4, !tbaa !50
  %404 = shl i32 %386, 1
  %405 = load i32, ptr %153, align 4, !tbaa !48
  %406 = icmp sgt i32 %404, %405
  br i1 %406, label %407, label %353, !llvm.loop !56

407:                                              ; preds = %401, %396, %384
  %408 = phi i32 [ %356, %384 ], [ %356, %396 ], [ %386, %401 ]
  %409 = sext i32 %408 to i64
  br label %410

410:                                              ; preds = %407, %349
  %411 = phi i64 [ 1, %349 ], [ %409, %407 ]
  %412 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %411
  store i32 %344, ptr %412, align 4, !tbaa !50
  %413 = load i32, ptr %153, align 4, !tbaa !48
  %414 = icmp sgt i32 %413, 1
  br i1 %414, label %238, label %664, !llvm.loop !57

.preheader8.mv.fast:                              ; preds = %349
  br label %353

.mv.ph13:                                         ; preds = %234
  br label %487

415:                                              ; preds = %481, %226
  %416 = phi i64 [ %233, %226 ], [ %485, %481 ]
  %417 = getelementptr inbounds nuw [573 x i32], ptr %230, i64 0, i64 %416
  %418 = load i32, ptr %417, align 4, !tbaa !50
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %419
  %421 = load i32, ptr %153, align 4, !tbaa !48
  %422 = trunc i64 %416 to i32
  %423 = shl i32 %422, 1
  %424 = icmp sgt i32 %423, %421
  br i1 %424, label %481, label %425

425:                                              ; preds = %415
  %426 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %419
  br label %427

427:                                              ; preds = %475, %425
  %428 = phi i32 [ %421, %425 ], [ %479, %475 ]
  %429 = phi i32 [ %423, %425 ], [ %478, %475 ]
  %430 = phi i32 [ %422, %425 ], [ %460, %475 ]
  %431 = icmp slt i32 %429, %428
  br i1 %431, label %434, label %432

432:                                              ; preds = %427
  %433 = sext i32 %429 to i64
  br label %458

434:                                              ; preds = %427
  %435 = or disjoint i32 %429, 1
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %436
  %438 = load i32, ptr %437, align 4, !tbaa !50
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %439
  %441 = load i16, ptr %440, align 2, !tbaa !28
  %442 = sext i32 %429 to i64
  %443 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %442
  %444 = load i32, ptr %443, align 4, !tbaa !50
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %445
  %447 = load i16, ptr %446, align 2, !tbaa !28
  %448 = icmp ult i16 %441, %447
  br i1 %448, label %457, label %449

449:                                              ; preds = %434
  %450 = icmp eq i16 %441, %447
  br i1 %450, label %451, label %458

451:                                              ; preds = %449
  %452 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %439
  %453 = load i8, ptr %452, align 1, !tbaa !28
  %454 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %445
  %455 = load i8, ptr %454, align 1, !tbaa !28
  %456 = icmp ugt i8 %453, %455
  br i1 %456, label %458, label %457

457:                                              ; preds = %451, %434
  br label %458

458:                                              ; preds = %457, %451, %449, %432
  %459 = phi i64 [ %433, %432 ], [ %436, %457 ], [ %442, %451 ], [ %442, %449 ]
  %460 = phi i32 [ %429, %432 ], [ %435, %457 ], [ %429, %451 ], [ %429, %449 ]
  %461 = load i16, ptr %426, align 2, !tbaa !28
  %462 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %459
  %463 = load i32, ptr %462, align 4, !tbaa !50
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %464
  %466 = load i16, ptr %465, align 2, !tbaa !28
  %467 = icmp ult i16 %461, %466
  br i1 %467, label %481, label %468

468:                                              ; preds = %458
  %469 = icmp eq i16 %461, %466
  br i1 %469, label %470, label %475

470:                                              ; preds = %468
  %471 = load i8, ptr %420, align 1, !tbaa !28
  %472 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %464
  %473 = load i8, ptr %472, align 1, !tbaa !28
  %474 = icmp ugt i8 %471, %473
  br i1 %474, label %475, label %481

475:                                              ; preds = %470, %468
  %476 = sext i32 %430 to i64
  %477 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %476
  store i32 %463, ptr %477, align 4, !tbaa !50
  %478 = shl i32 %460, 1
  %479 = load i32, ptr %153, align 4, !tbaa !48
  %480 = icmp sgt i32 %478, %479
  br i1 %480, label %481, label %427, !llvm.loop !56

481:                                              ; preds = %475, %470, %458, %415
  %482 = phi i32 [ %422, %415 ], [ %430, %458 ], [ %430, %470 ], [ %460, %475 ]
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %483
  store i32 %418, ptr %484, align 4, !tbaa !50
  %485 = add nsw i64 %416, -1
  %486 = icmp sgt i64 %416, 1
  br i1 %486, label %415, label %234, !llvm.loop !58

487:                                              ; preds = %659, %.mv.ph13
  %488 = phi i32 [ %235, %.mv.ph13 ], [ %662, %659 ]
  %489 = phi i64 [ %237, %.mv.ph13 ], [ %599, %659 ]
  %490 = load i32, ptr %236, align 4, !tbaa !50
  %491 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %488, i32 -1)
  %492 = extractvalue { i32, i1 } %491, 1, !nosanitize !32
  br i1 %492, label %.loopexit9, label %493, !prof !34, !nosanitize !32

493:                                              ; preds = %487
  %494 = extractvalue { i32, i1 } %491, 0, !nosanitize !32
  store i32 %494, ptr %153, align 4, !tbaa !48
  %495 = sext i32 %488 to i64
  %496 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %495
  %497 = load i32, ptr %496, align 4, !tbaa !50
  store i32 %497, ptr %236, align 4, !tbaa !50
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %498
  %500 = icmp slt i32 %494, 2
  br i1 %500, label %560, label %501

501:                                              ; preds = %493
  %502 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %498
  br label %503

503:                                              ; preds = %551, %501
  %504 = phi i32 [ %494, %501 ], [ %555, %551 ]
  %505 = phi i32 [ 2, %501 ], [ %554, %551 ]
  %506 = phi i32 [ 1, %501 ], [ %536, %551 ]
  %507 = icmp slt i32 %505, %504
  br i1 %507, label %510, label %508

508:                                              ; preds = %503
  %509 = sext i32 %505 to i64
  br label %534

510:                                              ; preds = %503
  %511 = or disjoint i32 %505, 1
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %512
  %514 = load i32, ptr %513, align 4, !tbaa !50
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %515
  %517 = load i16, ptr %516, align 2, !tbaa !28
  %518 = sext i32 %505 to i64
  %519 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %518
  %520 = load i32, ptr %519, align 4, !tbaa !50
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %521
  %523 = load i16, ptr %522, align 2, !tbaa !28
  %524 = icmp ult i16 %517, %523
  br i1 %524, label %533, label %525

525:                                              ; preds = %510
  %526 = icmp eq i16 %517, %523
  br i1 %526, label %527, label %534

527:                                              ; preds = %525
  %528 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %515
  %529 = load i8, ptr %528, align 1, !tbaa !28
  %530 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %521
  %531 = load i8, ptr %530, align 1, !tbaa !28
  %532 = icmp ugt i8 %529, %531
  br i1 %532, label %534, label %533

533:                                              ; preds = %527, %510
  br label %534

534:                                              ; preds = %533, %527, %525, %508
  %535 = phi i64 [ %509, %508 ], [ %512, %533 ], [ %518, %527 ], [ %518, %525 ]
  %536 = phi i32 [ %505, %508 ], [ %511, %533 ], [ %505, %527 ], [ %505, %525 ]
  %537 = load i16, ptr %502, align 2, !tbaa !28
  %538 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %535
  %539 = load i32, ptr %538, align 4, !tbaa !50
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %540
  %542 = load i16, ptr %541, align 2, !tbaa !28
  %543 = icmp ult i16 %537, %542
  br i1 %543, label %557, label %544

544:                                              ; preds = %534
  %545 = icmp eq i16 %537, %542
  br i1 %545, label %546, label %551

546:                                              ; preds = %544
  %547 = load i8, ptr %499, align 1, !tbaa !28
  %548 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %540
  %549 = load i8, ptr %548, align 1, !tbaa !28
  %550 = icmp ugt i8 %547, %549
  br i1 %550, label %551, label %557

551:                                              ; preds = %546, %544
  %552 = sext i32 %506 to i64
  %553 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %552
  store i32 %539, ptr %553, align 4, !tbaa !50
  %554 = shl i32 %536, 1
  %555 = load i32, ptr %153, align 4, !tbaa !48
  %556 = icmp sgt i32 %554, %555
  br i1 %556, label %557, label %503, !llvm.loop !56

557:                                              ; preds = %551, %546, %534
  %558 = phi i32 [ %506, %534 ], [ %506, %546 ], [ %536, %551 ]
  %559 = sext i32 %558 to i64
  br label %560

560:                                              ; preds = %557, %493
  %561 = phi i64 [ 1, %493 ], [ %559, %557 ]
  %562 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %561
  store i32 %497, ptr %562, align 4, !tbaa !50
  %563 = load i32, ptr %236, align 4, !tbaa !50
  %564 = load i32, ptr %154, align 8, !tbaa !49
  %565 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %564, i32 -1)
  %566 = extractvalue { i32, i1 } %565, 1, !nosanitize !32
  br i1 %566, label %.loopexit9, label %567, !prof !34, !nosanitize !32

567:                                              ; preds = %560
  %568 = extractvalue { i32, i1 } %565, 0, !nosanitize !32
  store i32 %568, ptr %154, align 8, !tbaa !49
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %569
  store i32 %490, ptr %570, align 4, !tbaa !50
  %571 = load i32, ptr %154, align 8, !tbaa !49
  %572 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %571, i32 -1)
  %573 = extractvalue { i32, i1 } %572, 1, !nosanitize !32
  br i1 %573, label %.loopexit9, label %574, !prof !34, !nosanitize !32

574:                                              ; preds = %567
  %575 = extractvalue { i32, i1 } %572, 0, !nosanitize !32
  store i32 %575, ptr %154, align 8, !tbaa !49
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %576
  store i32 %563, ptr %577, align 4, !tbaa !50
  %578 = sext i32 %490 to i64
  %579 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %578
  %580 = load i16, ptr %579, align 2, !tbaa !28
  %581 = sext i32 %563 to i64
  %582 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %581
  %583 = load i16, ptr %582, align 2, !tbaa !28
  %584 = add i16 %583, %580
  %585 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %489
  store i16 %584, ptr %585, align 2, !tbaa !28
  %586 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %578
  %587 = load i8, ptr %586, align 1, !tbaa !28
  %588 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %581
  %589 = load i8, ptr %588, align 1, !tbaa !28
  %590 = tail call i8 @llvm.umax.i8(i8 %587, i8 %589)
  %591 = add i8 %590, 1
  %592 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %489
  store i8 %591, ptr %592, align 1, !tbaa !28
  %593 = trunc nsw i64 %489 to i32
  %594 = trunc i64 %489 to i16
  %595 = getelementptr inbounds nuw i8, ptr %582, i64 2
  store i16 %594, ptr %595, align 2, !tbaa !28
  %596 = getelementptr inbounds nuw i8, ptr %579, i64 2
  store i16 %594, ptr %596, align 2, !tbaa !28
  %597 = icmp eq i64 %489, 2147483647
  br i1 %597, label %.loopexit10, label %598, !prof !34, !nosanitize !32

598:                                              ; preds = %574
  %599 = add nsw i64 %489, 1
  store i32 %593, ptr %236, align 4, !tbaa !50
  %600 = load i32, ptr %153, align 4, !tbaa !48
  %601 = icmp slt i32 %600, 2
  br i1 %601, label %659, label %.preheader8

.preheader8:                                      ; preds = %598
  br label %602

602:                                              ; preds = %.preheader8, %650
  %603 = phi i32 [ %654, %650 ], [ %600, %.preheader8 ]
  %604 = phi i32 [ %653, %650 ], [ 2, %.preheader8 ]
  %605 = phi i32 [ %635, %650 ], [ 1, %.preheader8 ]
  %606 = icmp slt i32 %604, %603
  br i1 %606, label %609, label %607

607:                                              ; preds = %602
  %608 = sext i32 %604 to i64
  br label %633

609:                                              ; preds = %602
  %610 = or disjoint i32 %604, 1
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %611
  %613 = load i32, ptr %612, align 4, !tbaa !50
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %614
  %616 = load i16, ptr %615, align 2, !tbaa !28
  %617 = sext i32 %604 to i64
  %618 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %617
  %619 = load i32, ptr %618, align 4, !tbaa !50
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %620
  %622 = load i16, ptr %621, align 2, !tbaa !28
  %623 = icmp ult i16 %616, %622
  br i1 %623, label %632, label %624

624:                                              ; preds = %609
  %625 = icmp eq i16 %616, %622
  br i1 %625, label %626, label %633

626:                                              ; preds = %624
  %627 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %614
  %628 = load i8, ptr %627, align 1, !tbaa !28
  %629 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %620
  %630 = load i8, ptr %629, align 1, !tbaa !28
  %631 = icmp ugt i8 %628, %630
  br i1 %631, label %633, label %632

632:                                              ; preds = %626, %609
  br label %633

633:                                              ; preds = %632, %626, %624, %607
  %634 = phi i64 [ %608, %607 ], [ %611, %632 ], [ %617, %626 ], [ %617, %624 ]
  %635 = phi i32 [ %604, %607 ], [ %610, %632 ], [ %604, %626 ], [ %604, %624 ]
  %636 = load i16, ptr %585, align 2, !tbaa !28
  %637 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %634
  %638 = load i32, ptr %637, align 4, !tbaa !50
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %639
  %641 = load i16, ptr %640, align 2, !tbaa !28
  %642 = icmp ult i16 %636, %641
  br i1 %642, label %656, label %643

643:                                              ; preds = %633
  %644 = icmp eq i16 %636, %641
  br i1 %644, label %645, label %650

645:                                              ; preds = %643
  %646 = load i8, ptr %592, align 1, !tbaa !28
  %647 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %639
  %648 = load i8, ptr %647, align 1, !tbaa !28
  %649 = icmp ugt i8 %646, %648
  br i1 %649, label %650, label %656

650:                                              ; preds = %645, %643
  %651 = sext i32 %605 to i64
  %652 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %651
  store i32 %638, ptr %652, align 4, !tbaa !50
  %653 = shl i32 %635, 1
  %654 = load i32, ptr %153, align 4, !tbaa !48
  %655 = icmp sgt i32 %653, %654
  br i1 %655, label %656, label %602, !llvm.loop !56

656:                                              ; preds = %650, %645, %633
  %657 = phi i32 [ %605, %633 ], [ %605, %645 ], [ %635, %650 ]
  %658 = sext i32 %657 to i64
  br label %659

659:                                              ; preds = %656, %598
  %660 = phi i64 [ 1, %598 ], [ %658, %656 ]
  %661 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %660
  store i32 %593, ptr %661, align 4, !tbaa !50
  %662 = load i32, ptr %153, align 4, !tbaa !48
  %663 = icmp sgt i32 %662, 1
  br i1 %663, label %487, label %664, !llvm.loop !57

664:                                              ; preds = %410, %659
  %665 = load i32, ptr %154, align 8, !tbaa !49
  %666 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %665, i32 -1)
  %667 = extractvalue { i32, i1 } %666, 1, !nosanitize !32
  br i1 %667, label %220, label %668, !prof !34, !nosanitize !32

668:                                              ; preds = %664
  %669 = extractvalue { i32, i1 } %666, 0, !nosanitize !32
  %670 = load i32, ptr %236, align 4, !tbaa !50
  store i32 %669, ptr %154, align 8, !tbaa !49
  %671 = sext i32 %669 to i64
  %672 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %671
  store i32 %670, ptr %672, align 4, !tbaa !50
  %673 = load ptr, ptr %146, align 8, !tbaa !42
  %674 = load i32, ptr %229, align 8, !tbaa !55
  %675 = load ptr, ptr %148, align 8, !tbaa !43
  %676 = load ptr, ptr %675, align 8, !tbaa !44
  %677 = getelementptr inbounds nuw i8, ptr %675, i64 8
  %678 = load ptr, ptr %677, align 8, !tbaa !59
  %679 = getelementptr inbounds nuw i8, ptr %675, i64 16
  %680 = load i32, ptr %679, align 8, !tbaa !60
  %681 = getelementptr inbounds nuw i8, ptr %675, i64 24
  %682 = load i32, ptr %681, align 8, !tbaa !61
  %683 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %683, i8 0, i64 32, i1 false), !tbaa !62
  %684 = load i32, ptr %154, align 8, !tbaa !49
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %685
  %687 = load i32, ptr %686, align 4, !tbaa !50
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds %struct.ct_data_s, ptr %673, i64 %688, i32 1
  store i16 0, ptr %689, align 2, !tbaa !28
  %690 = load i32, ptr %154, align 8, !tbaa !49
  %691 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %690, i32 1), !nosanitize !32
  %692 = extractvalue { i32, i1 } %691, 1, !nosanitize !32
  br i1 %692, label %693, label %694, !prof !34, !nosanitize !32

693:                                              ; preds = %742, %717, %668
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

694:                                              ; preds = %668
  %695 = extractvalue { i32, i1 } %691, 0
  %696 = icmp slt i32 %695, 573
  br i1 %696, label %697, label %906

697:                                              ; preds = %694
  %698 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %699 = icmp eq ptr %676, null
  %700 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %701 = sext i32 %695 to i64
  br label %702

702:                                              ; preds = %774, %697
  %703 = phi i64 [ %701, %697 ], [ %775, %774 ]
  %704 = phi i32 [ 0, %697 ], [ %724, %774 ]
  %705 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %703
  %706 = load i32, ptr %705, align 4, !tbaa !50
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.ct_data_s, ptr %673, i64 %707
  %709 = getelementptr inbounds nuw i8, ptr %708, i64 2
  %710 = load i16, ptr %709, align 2, !tbaa !28
  %711 = zext i16 %710 to i64
  %712 = getelementptr inbounds nuw %struct.ct_data_s, ptr %673, i64 %711, i32 1
  %713 = load i16, ptr %712, align 2, !tbaa !28
  %714 = zext i16 %713 to i32
  %715 = add nuw nsw i32 %714, 1
  %716 = icmp sgt i32 %682, %714
  br i1 %716, label %722, label %717

717:                                              ; preds = %702
  %718 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %704, i32 1), !nosanitize !32
  %719 = extractvalue { i32, i1 } %718, 1, !nosanitize !32
  br i1 %719, label %693, label %720, !prof !34, !nosanitize !32

720:                                              ; preds = %717
  %721 = extractvalue { i32, i1 } %718, 0, !nosanitize !32
  br label %722

722:                                              ; preds = %720, %702
  %723 = phi i32 [ %682, %720 ], [ %715, %702 ]
  %724 = phi i32 [ %721, %720 ], [ %704, %702 ]
  %725 = trunc i32 %723 to i16
  store i16 %725, ptr %709, align 2, !tbaa !28
  %726 = icmp sgt i32 %706, %674
  br i1 %726, label %774, label %727

727:                                              ; preds = %722
  %728 = sext i32 %723 to i64
  %729 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %728
  %730 = load i16, ptr %729, align 2, !tbaa !62
  %731 = add i16 %730, 1
  store i16 %731, ptr %729, align 2, !tbaa !62
  %732 = icmp slt i32 %706, %680
  br i1 %732, label %742, label %733

733:                                              ; preds = %727
  %734 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %706, i32 %680), !nosanitize !32
  %735 = extractvalue { i32, i1 } %734, 1, !nosanitize !32
  br i1 %735, label %736, label %737, !prof !34, !nosanitize !32

.loopexit14:                                      ; preds = %812, %824
  br label %736

.loopexit17:                                      ; preds = %799, %832
  br label %736

736:                                              ; preds = %.loopexit17, %.loopexit14, %863, %780, %733
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

737:                                              ; preds = %733
  %738 = extractvalue { i32, i1 } %734, 0, !nosanitize !32
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds i32, ptr %678, i64 %739
  %741 = load i32, ptr %740, align 4, !tbaa !50
  br label %742

742:                                              ; preds = %737, %727
  %743 = phi i32 [ %741, %737 ], [ 0, %727 ]
  %744 = load i16, ptr %708, align 2, !tbaa !28
  %745 = zext i16 %744 to i64
  %746 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %723, i32 %743), !nosanitize !32
  %747 = extractvalue { i32, i1 } %746, 1, !nosanitize !32
  br i1 %747, label %693, label %748, !prof !34, !nosanitize !32

748:                                              ; preds = %742
  %749 = extractvalue { i32, i1 } %746, 0, !nosanitize !32
  %750 = zext i32 %749 to i64
  %751 = mul nuw nsw i64 %750, %745
  %752 = load i64, ptr %698, align 8, !tbaa !52
  %753 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %752, i64 %751), !nosanitize !32
  %754 = extractvalue { i64, i1 } %753, 1, !nosanitize !32
  br i1 %754, label %755, label %756, !prof !34, !nosanitize !32

755:                                              ; preds = %758, %748
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

756:                                              ; preds = %748
  %757 = extractvalue { i64, i1 } %753, 0, !nosanitize !32
  store i64 %757, ptr %698, align 8, !tbaa !52
  br i1 %699, label %774, label %758

758:                                              ; preds = %756
  %759 = getelementptr inbounds %struct.ct_data_s, ptr %676, i64 %707, i32 1
  %760 = load i16, ptr %759, align 2, !tbaa !28
  %761 = zext i16 %760 to i32
  %762 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %761, i32 %743), !nosanitize !32
  %763 = extractvalue { i32, i1 } %762, 1, !nosanitize !32
  br i1 %763, label %755, label %764, !prof !34, !nosanitize !32

764:                                              ; preds = %758
  %765 = extractvalue { i32, i1 } %762, 0, !nosanitize !32
  %766 = zext i32 %765 to i64
  %767 = mul nuw nsw i64 %766, %745
  %768 = load i64, ptr %700, align 8, !tbaa !53
  %769 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %768, i64 %767), !nosanitize !32
  %770 = extractvalue { i64, i1 } %769, 1, !nosanitize !32
  br i1 %770, label %771, label %772, !prof !34, !nosanitize !32

.loopexit16:                                      ; preds = %794, %827
  br label %771

771:                                              ; preds = %.loopexit16, %764
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

772:                                              ; preds = %764
  %773 = extractvalue { i64, i1 } %769, 0, !nosanitize !32
  store i64 %773, ptr %700, align 8, !tbaa !53
  br label %774

774:                                              ; preds = %772, %756, %722
  %775 = add nsw i64 %703, 1
  %776 = and i64 %775, 4294967295
  %777 = icmp eq i64 %776, 573
  br i1 %777, label %778, label %702, !llvm.loop !63

778:                                              ; preds = %774
  %779 = icmp eq i32 %724, 0
  br i1 %779, label %906, label %780

780:                                              ; preds = %778
  %781 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %682, i32 -1)
  %782 = extractvalue { i32, i1 } %781, 1, !nosanitize !32
  %783 = sext i32 %682 to i64
  %784 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %783
  br i1 %782, label %736, label %.preheader15, !prof !34, !nosanitize !32

.preheader15:                                     ; preds = %780
  %mv.h23 = icmp sge i32 %704, 0
  %mv.h24 = icmp sle i32 %704, 1073741824
  %mv.h25 = and i1 %mv.h23, %mv.h24
  %mv.h.fr26 = freeze i1 %mv.h25
  br i1 %mv.h.fr26, label %.mv.ph27.mv.fast, label %.mv.ph27

.mv.ph27.mv.fast:                                 ; preds = %.preheader15
  br label %785

785:                                              ; preds = %809, %.mv.ph27.mv.fast
  %786 = phi i32 [ %810, %809 ], [ %724, %.mv.ph27.mv.fast ]
  br label %787

787:                                              ; preds = %812, %785
  %788 = phi { i32, i1 } [ %813, %812 ], [ %781, %785 ]
  %789 = extractvalue { i32, i1 } %788, 0
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %790
  %792 = load i16, ptr %791, align 2, !tbaa !62
  %793 = icmp eq i16 %792, 0
  br i1 %793, label %812, label %794

794:                                              ; preds = %787
  %.lcssa21.mv.fast = phi i32 [ %789, %787 ]
  %.lcssa19.mv.fast = phi i64 [ %790, %787 ]
  %.lcssa.mv.fast = phi i16 [ %792, %787 ]
  %795 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %.lcssa19.mv.fast
  %796 = add i16 %.lcssa.mv.fast, -1
  store i16 %796, ptr %795, align 2, !tbaa !62
  %797 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.lcssa21.mv.fast, i32 1), !nosanitize !32
  %798 = extractvalue { i32, i1 } %797, 1, !nosanitize !32
  br i1 %798, label %.loopexit16, label %799, !prof !34, !nosanitize !32

799:                                              ; preds = %794
  %800 = extractvalue { i32, i1 } %797, 0, !nosanitize !32
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %801
  %803 = load i16, ptr %802, align 2, !tbaa !62
  %804 = add i16 %803, 2
  store i16 %804, ptr %802, align 2, !tbaa !62
  %805 = load i16, ptr %784, align 2, !tbaa !62
  %806 = add i16 %805, -1
  store i16 %806, ptr %784, align 2, !tbaa !62
  %807 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %786, i32 -2)
  %808 = extractvalue { i32, i1 } %807, 1, !nosanitize !32
  br i1 false, label %.loopexit17, label %809, !prof !34, !nosanitize !32

809:                                              ; preds = %799
  %810 = extractvalue { i32, i1 } %807, 0, !nosanitize !32
  %811 = icmp sgt i32 %810, 0
  br i1 %811, label %785, label %845, !llvm.loop !64

812:                                              ; preds = %787
  %813 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %789, i32 -1)
  %814 = extractvalue { i32, i1 } %813, 1, !nosanitize !32
  br i1 %814, label %.loopexit14, label %787, !prof !34, !llvm.loop !65, !nosanitize !32

.mv.ph27:                                         ; preds = %.preheader15
  br label %815

815:                                              ; preds = %.mv.ph27, %842
  %816 = phi i32 [ %843, %842 ], [ %724, %.mv.ph27 ]
  br label %817

817:                                              ; preds = %824, %815
  %818 = phi { i32, i1 } [ %825, %824 ], [ %781, %815 ]
  %819 = extractvalue { i32, i1 } %818, 0
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %820
  %822 = load i16, ptr %821, align 2, !tbaa !62
  %823 = icmp eq i16 %822, 0
  br i1 %823, label %824, label %827

824:                                              ; preds = %817
  %825 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %819, i32 -1)
  %826 = extractvalue { i32, i1 } %825, 1, !nosanitize !32
  br i1 %826, label %.loopexit14, label %817, !prof !34, !llvm.loop !65, !nosanitize !32

827:                                              ; preds = %817
  %.lcssa21 = phi i32 [ %819, %817 ]
  %.lcssa19 = phi i64 [ %820, %817 ]
  %.lcssa = phi i16 [ %822, %817 ]
  %828 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %.lcssa19
  %829 = add i16 %.lcssa, -1
  store i16 %829, ptr %828, align 2, !tbaa !62
  %830 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.lcssa21, i32 1), !nosanitize !32
  %831 = extractvalue { i32, i1 } %830, 1, !nosanitize !32
  br i1 %831, label %.loopexit16, label %832, !prof !34, !nosanitize !32

832:                                              ; preds = %827
  %833 = extractvalue { i32, i1 } %830, 0, !nosanitize !32
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %834
  %836 = load i16, ptr %835, align 2, !tbaa !62
  %837 = add i16 %836, 2
  store i16 %837, ptr %835, align 2, !tbaa !62
  %838 = load i16, ptr %784, align 2, !tbaa !62
  %839 = add i16 %838, -1
  store i16 %839, ptr %784, align 2, !tbaa !62
  %840 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %816, i32 -2)
  %841 = extractvalue { i32, i1 } %840, 1, !nosanitize !32
  br i1 %841, label %.loopexit17, label %842, !prof !34, !nosanitize !32

842:                                              ; preds = %832
  %843 = extractvalue { i32, i1 } %840, 0, !nosanitize !32
  %844 = icmp sgt i32 %843, 0
  br i1 %844, label %815, label %845, !llvm.loop !64

845:                                              ; preds = %809, %842
  %846 = icmp eq i32 %682, 0
  br i1 %846, label %906, label %847

847:                                              ; preds = %902, %845
  %848 = phi i64 [ %903, %902 ], [ %783, %845 ]
  %849 = phi i32 [ %857, %902 ], [ 573, %845 ]
  %850 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %848
  %851 = load i16, ptr %850, align 2, !tbaa !62
  %852 = icmp eq i16 %851, 0
  br i1 %852, label %856, label %853

853:                                              ; preds = %847
  %854 = zext i16 %851 to i32
  %855 = trunc i64 %848 to i16
  br label %860

856:                                              ; preds = %899, %847
  %857 = phi i32 [ %849, %847 ], [ %868, %899 ]
  %858 = and i64 %848, 4294967295
  %859 = icmp eq i64 %858, 2147483648
  br i1 %859, label %883, label %902, !prof !34, !nosanitize !32

860:                                              ; preds = %899, %853
  %861 = phi i32 [ %849, %853 ], [ %868, %899 ]
  %862 = phi i32 [ %854, %853 ], [ %900, %899 ]
  br label %863

863:                                              ; preds = %867, %860
  %864 = phi i32 [ %868, %867 ], [ %861, %860 ]
  %865 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %864, i32 -1)
  %866 = extractvalue { i32, i1 } %865, 1, !nosanitize !32
  br i1 %866, label %736, label %867, !prof !34, !nosanitize !32

867:                                              ; preds = %863
  %868 = extractvalue { i32, i1 } %865, 0, !nosanitize !32
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %869
  %871 = load i32, ptr %870, align 4, !tbaa !50
  %872 = icmp sgt i32 %871, %674
  br i1 %872, label %863, label %873, !llvm.loop !66

873:                                              ; preds = %867
  %874 = sext i32 %871 to i64
  %875 = getelementptr inbounds %struct.ct_data_s, ptr %673, i64 %874
  %876 = getelementptr inbounds nuw i8, ptr %875, i64 2
  %877 = load i16, ptr %876, align 2, !tbaa !28
  %878 = zext i16 %877 to i64
  %879 = icmp eq i64 %848, %878
  br i1 %879, label %899, label %880

880:                                              ; preds = %873
  %881 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %848, i64 %878), !nosanitize !32
  %882 = extractvalue { i64, i1 } %881, 1, !nosanitize !32
  br i1 %882, label %883, label %884, !prof !34, !nosanitize !32

883:                                              ; preds = %880, %856
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

884:                                              ; preds = %880
  %885 = extractvalue { i64, i1 } %881, 0, !nosanitize !32
  %886 = load i16, ptr %875, align 2, !tbaa !28
  %887 = zext i16 %886 to i64
  %888 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %885, i64 %887), !nosanitize !32
  %889 = extractvalue { i64, i1 } %888, 1, !nosanitize !32
  br i1 %889, label %890, label %891, !prof !34, !nosanitize !32

890:                                              ; preds = %884
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !32
  unreachable, !nosanitize !32

891:                                              ; preds = %884
  %892 = extractvalue { i64, i1 } %888, 0, !nosanitize !32
  %893 = load i64, ptr %698, align 8, !tbaa !52
  %894 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %893, i64 %892), !nosanitize !32
  %895 = extractvalue { i64, i1 } %894, 1, !nosanitize !32
  br i1 %895, label %896, label %897, !prof !34, !nosanitize !32

896:                                              ; preds = %891
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

897:                                              ; preds = %891
  %898 = extractvalue { i64, i1 } %894, 0, !nosanitize !32
  store i64 %898, ptr %698, align 8, !tbaa !52
  store i16 %855, ptr %876, align 2, !tbaa !28
  br label %899

899:                                              ; preds = %897, %873
  %900 = add nsw i32 %862, -1
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %856, label %860, !llvm.loop !66

902:                                              ; preds = %856
  %903 = add nsw i64 %848, -1
  %904 = and i64 %903, 4294967295
  %905 = icmp eq i64 %904, 0
  br i1 %905, label %906, label %847, !llvm.loop !67

906:                                              ; preds = %902, %845, %778, %694
  call void @llvm.lifetime.start.p0(ptr %7)
  %907 = load i16, ptr %683, align 2, !tbaa !62
  %908 = zext i16 %907 to i32
  %909 = shl nuw nsw i32 %908, 1
  %910 = trunc i32 %909 to i16
  %911 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %910, ptr %911, align 2, !tbaa !62
  %912 = getelementptr i8, ptr %0, i64 2978
  %913 = load i16, ptr %912, align 2, !tbaa !62
  %914 = zext i16 %913 to i32
  %915 = add nuw nsw i32 %909, %914
  %916 = shl nuw nsw i32 %915, 1
  %917 = trunc i32 %916 to i16
  %918 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %917, ptr %918, align 4, !tbaa !62
  %919 = getelementptr i8, ptr %0, i64 2980
  %920 = load i16, ptr %919, align 2, !tbaa !62
  %921 = zext i16 %920 to i32
  %922 = add nuw nsw i32 %916, %921
  %923 = shl nuw nsw i32 %922, 1
  %924 = trunc i32 %923 to i16
  %925 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %924, ptr %925, align 2, !tbaa !62
  %926 = getelementptr i8, ptr %0, i64 2982
  %927 = load i16, ptr %926, align 2, !tbaa !62
  %928 = zext i16 %927 to i32
  %929 = add nuw nsw i32 %923, %928
  %930 = shl nuw nsw i32 %929, 1
  %931 = trunc i32 %930 to i16
  %932 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %931, ptr %932, align 8, !tbaa !62
  %933 = getelementptr i8, ptr %0, i64 2984
  %934 = load i16, ptr %933, align 2, !tbaa !62
  %935 = zext i16 %934 to i32
  %936 = add nuw nsw i32 %930, %935
  %937 = shl nuw nsw i32 %936, 1
  %938 = trunc i32 %937 to i16
  %939 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %938, ptr %939, align 2, !tbaa !62
  %940 = getelementptr i8, ptr %0, i64 2986
  %941 = load i16, ptr %940, align 2, !tbaa !62
  %942 = zext i16 %941 to i32
  %943 = add nuw nsw i32 %937, %942
  %944 = shl nuw nsw i32 %943, 1
  %945 = trunc i32 %944 to i16
  %946 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %945, ptr %946, align 4, !tbaa !62
  %947 = getelementptr i8, ptr %0, i64 2988
  %948 = load i16, ptr %947, align 2, !tbaa !62
  %949 = zext i16 %948 to i32
  %950 = add nuw nsw i32 %944, %949
  %951 = shl nuw nsw i32 %950, 1
  %952 = trunc i32 %951 to i16
  %953 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %952, ptr %953, align 2, !tbaa !62
  %954 = getelementptr i8, ptr %0, i64 2990
  %955 = load i16, ptr %954, align 2, !tbaa !62
  %956 = zext i16 %955 to i32
  %957 = add nuw nsw i32 %951, %956
  %958 = shl nuw nsw i32 %957, 1
  %959 = trunc i32 %958 to i16
  %960 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %959, ptr %960, align 16, !tbaa !62
  %961 = getelementptr i8, ptr %0, i64 2992
  %962 = load i16, ptr %961, align 2, !tbaa !62
  %963 = zext i16 %962 to i32
  %964 = add nuw nsw i32 %958, %963
  %965 = shl nuw nsw i32 %964, 1
  %966 = trunc i32 %965 to i16
  %967 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %966, ptr %967, align 2, !tbaa !62
  %968 = getelementptr i8, ptr %0, i64 2994
  %969 = load i16, ptr %968, align 2, !tbaa !62
  %970 = zext i16 %969 to i32
  %971 = add nuw nsw i32 %965, %970
  %972 = shl nuw nsw i32 %971, 1
  %973 = trunc i32 %972 to i16
  %974 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %973, ptr %974, align 4, !tbaa !62
  %975 = getelementptr i8, ptr %0, i64 2996
  %976 = load i16, ptr %975, align 2, !tbaa !62
  %977 = trunc i32 %972 to i16
  %978 = add i16 %976, %977
  %979 = shl i16 %978, 1
  %980 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %979, ptr %980, align 2, !tbaa !62
  %981 = getelementptr i8, ptr %0, i64 2998
  %982 = load i16, ptr %981, align 2, !tbaa !62
  %983 = add i16 %982, %979
  %984 = shl i16 %983, 1
  %985 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %984, ptr %985, align 8, !tbaa !62
  %986 = getelementptr i8, ptr %0, i64 3000
  %987 = load i16, ptr %986, align 2, !tbaa !62
  %988 = add i16 %984, %987
  %989 = shl i16 %988, 1
  %990 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %989, ptr %990, align 2, !tbaa !62
  %991 = getelementptr i8, ptr %0, i64 3002
  %992 = load i16, ptr %991, align 2, !tbaa !62
  %993 = add i16 %989, %992
  %994 = shl i16 %993, 1
  %995 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %994, ptr %995, align 4, !tbaa !62
  %996 = getelementptr i8, ptr %0, i64 3004
  %997 = load i16, ptr %996, align 2, !tbaa !62
  %998 = add i16 %994, %997
  %999 = shl i16 %998, 1
  %1000 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %999, ptr %1000, align 2, !tbaa !62
  %1001 = icmp slt i32 %227, 0
  br i1 %1001, label %1062, label %1003

1002:                                             ; preds = %1056
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

1003:                                             ; preds = %1058, %906
  %1004 = phi i64 [ %1059, %1058 ], [ 0, %906 ]
  %1005 = getelementptr inbounds nuw %struct.ct_data_s, ptr %147, i64 %1004
  %1006 = getelementptr inbounds nuw i8, ptr %1005, i64 2
  %1007 = load i16, ptr %1006, align 2, !tbaa !28
  %1008 = icmp eq i16 %1007, 0
  br i1 %1008, label %1056, label %1009

1009:                                             ; preds = %1003
  %1010 = zext i16 %1007 to i32
  %1011 = zext i16 %1007 to i64
  %1012 = getelementptr inbounds nuw [16 x i16], ptr %7, i64 0, i64 %1011
  %1013 = load i16, ptr %1012, align 2, !tbaa !62
  %1014 = add i16 %1013, 1
  store i16 %1014, ptr %1012, align 2, !tbaa !62
  %1015 = and i32 %1010, 3
  %1016 = icmp ult i16 %1007, 4
  br i1 %1016, label %1039, label %1017

1017:                                             ; preds = %1009
  %1018 = and i32 %1010, 65532
  br label %1019

1019:                                             ; preds = %1019, %1017
  %1020 = phi i16 [ %1013, %1017 ], [ %1036, %1019 ]
  %1021 = phi i16 [ 0, %1017 ], [ %1035, %1019 ]
  %1022 = phi i32 [ 0, %1017 ], [ %1037, %1019 ]
  %1023 = and i16 %1020, 1
  %1024 = or disjoint i16 %1021, %1023
  %1025 = lshr i16 %1020, 2
  %1026 = shl i16 %1024, 2
  %1027 = and i16 %1020, 2
  %1028 = or disjoint i16 %1026, %1027
  %1029 = and i16 %1025, 1
  %1030 = or disjoint i16 %1028, %1029
  %1031 = shl i16 %1030, 1
  %1032 = lshr i16 %1020, 3
  %1033 = and i16 %1032, 1
  %1034 = or disjoint i16 %1031, %1033
  %1035 = shl i16 %1034, 1
  %1036 = lshr i16 %1020, 4
  %1037 = add i32 %1022, 4
  %1038 = icmp eq i32 %1037, %1018
  br i1 %1038, label %1039, label %1019, !llvm.loop !68

1039:                                             ; preds = %1019, %1009
  %1040 = phi i16 [ poison, %1009 ], [ %1034, %1019 ]
  %1041 = phi i16 [ %1013, %1009 ], [ %1036, %1019 ]
  %1042 = phi i16 [ 0, %1009 ], [ %1035, %1019 ]
  %1043 = icmp eq i32 %1015, 0
  br i1 %1043, label %1054, label %1044

1044:                                             ; preds = %1044, %1039
  %1045 = phi i16 [ %1051, %1044 ], [ %1041, %1039 ]
  %1046 = phi i16 [ %1050, %1044 ], [ %1042, %1039 ]
  %1047 = phi i32 [ %1052, %1044 ], [ 0, %1039 ]
  %1048 = and i16 %1045, 1
  %1049 = or disjoint i16 %1046, %1048
  %1050 = shl i16 %1049, 1
  %1051 = lshr i16 %1045, 1
  %1052 = add i32 %1047, 1
  %1053 = icmp eq i32 %1052, %1015
  br i1 %1053, label %1054, label %1044, !llvm.loop !69

1054:                                             ; preds = %1044, %1039
  %1055 = phi i16 [ %1040, %1039 ], [ %1049, %1044 ]
  store i16 %1055, ptr %1005, align 2, !tbaa !28
  br label %1056

1056:                                             ; preds = %1054, %1003
  %1057 = icmp eq i64 %1004, 2147483647
  br i1 %1057, label %1002, label %1058, !prof !34, !nosanitize !32

1058:                                             ; preds = %1056
  %1059 = add nuw nsw i64 %1004, 1
  %1060 = trunc i64 %1059 to i32
  %1061 = icmp slt i32 %227, %1060
  br i1 %1061, label %1062, label %1003, !llvm.loop !71

1062:                                             ; preds = %1058, %906
  call void @llvm.lifetime.end.p0(ptr %7)
  %1063 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %1064 = load ptr, ptr %1063, align 8, !tbaa !42
  %1065 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %1066 = load ptr, ptr %1065, align 8, !tbaa !43
  %1067 = load ptr, ptr %1066, align 8, !tbaa !44
  %1068 = getelementptr inbounds nuw i8, ptr %1066, i64 20
  %1069 = load i32, ptr %1068, align 4, !tbaa !47
  store i32 0, ptr %153, align 4, !tbaa !48
  store i32 573, ptr %154, align 8, !tbaa !49
  %1070 = icmp sgt i32 %1069, 0
  br i1 %1070, label %1071, label %1076

1071:                                             ; preds = %1062
  %1072 = zext nneg i32 %1069 to i64
  br label %1082

1073:                                             ; preds = %1101
  %1074 = load i32, ptr %153, align 4, !tbaa !48
  %1075 = icmp slt i32 %1074, 2
  br i1 %1075, label %1076, label %1137

1076:                                             ; preds = %1073, %1062
  %1077 = phi i32 [ %1102, %1073 ], [ -1, %1062 ]
  %1078 = phi i32 [ %1074, %1073 ], [ 0, %1062 ]
  %1079 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1080 = icmp eq ptr %1067, null
  %1081 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1105

1082:                                             ; preds = %1101, %1071
  %1083 = phi i64 [ 0, %1071 ], [ %1103, %1101 ]
  %1084 = phi i32 [ -1, %1071 ], [ %1102, %1101 ]
  %1085 = getelementptr inbounds nuw %struct.ct_data_s, ptr %1064, i64 %1083
  %1086 = load i16, ptr %1085, align 2, !tbaa !28
  %1087 = icmp eq i16 %1086, 0
  br i1 %1087, label %1099, label %1088

1088:                                             ; preds = %1082
  %1089 = load i32, ptr %153, align 4, !tbaa !48
  %1090 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1089, i32 1), !nosanitize !32
  %1091 = extractvalue { i32, i1 } %1090, 1, !nosanitize !32
  br i1 %1091, label %1092, label %1093, !prof !34, !nosanitize !32

.loopexit4:                                       ; preds = %1233, %1482
  br label %1092

1092:                                             ; preds = %.loopexit4, %1088
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

1093:                                             ; preds = %1088
  %1094 = extractvalue { i32, i1 } %1090, 0, !nosanitize !32
  store i32 %1094, ptr %153, align 4, !tbaa !48
  %1095 = sext i32 %1094 to i64
  %1096 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1095
  %1097 = trunc nuw nsw i64 %1083 to i32
  store i32 %1097, ptr %1096, align 4, !tbaa !50
  %1098 = getelementptr inbounds nuw [573 x i8], ptr %231, i64 0, i64 %1083
  store i8 0, ptr %1098, align 1, !tbaa !28
  br label %1101

1099:                                             ; preds = %1082
  %1100 = getelementptr inbounds nuw i8, ptr %1085, i64 2
  store i16 0, ptr %1100, align 2, !tbaa !28
  br label %1101

1101:                                             ; preds = %1099, %1093
  %1102 = phi i32 [ %1097, %1093 ], [ %1084, %1099 ]
  %1103 = add nuw nsw i64 %1083, 1
  %1104 = icmp eq i64 %1103, %1072
  br i1 %1104, label %1073, label %1082, !llvm.loop !51

1105:                                             ; preds = %1134, %1076
  %1106 = phi i32 [ %1078, %1076 ], [ %1135, %1134 ]
  %1107 = phi i32 [ %1077, %1076 ], [ %1110, %1134 ]
  %1108 = icmp slt i32 %1107, 2
  %1109 = add i32 %1107, 1
  %1110 = select i1 %1108, i32 %1109, i32 %1107
  %1111 = add nsw i32 %1106, 1
  %1112 = select i1 %1108, i32 %1109, i32 0
  store i32 %1111, ptr %153, align 4, !tbaa !48
  %1113 = sext i32 %1111 to i64
  %1114 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1113
  store i32 %1112, ptr %1114, align 4, !tbaa !50
  %1115 = sext i32 %1112 to i64
  %1116 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1115
  store i16 1, ptr %1116, align 2, !tbaa !28
  %1117 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1115
  store i8 0, ptr %1117, align 1, !tbaa !28
  %1118 = load i64, ptr %1079, align 8, !tbaa !52
  %1119 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1118, i64 1), !nosanitize !32
  %1120 = extractvalue { i64, i1 } %1119, 1, !nosanitize !32
  br i1 %1120, label %1121, label %1122, !prof !34, !nosanitize !32

1121:                                             ; preds = %1105
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

1122:                                             ; preds = %1105
  %1123 = extractvalue { i64, i1 } %1119, 0, !nosanitize !32
  store i64 %1123, ptr %1079, align 8, !tbaa !52
  br i1 %1080, label %1134, label %1124

1124:                                             ; preds = %1122
  %1125 = getelementptr inbounds %struct.ct_data_s, ptr %1067, i64 %1115, i32 1
  %1126 = load i16, ptr %1125, align 2, !tbaa !28
  %1127 = zext i16 %1126 to i64
  %1128 = load i64, ptr %1081, align 8, !tbaa !53
  %1129 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1128, i64 %1127), !nosanitize !32
  %1130 = extractvalue { i64, i1 } %1129, 1, !nosanitize !32
  br i1 %1130, label %1131, label %1132, !prof !34, !nosanitize !32

.loopexit3:                                       ; preds = %1226, %1219, %1146, %1395, %1468, %1475
  br label %1131

1131:                                             ; preds = %.loopexit3, %1572, %1124
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

1132:                                             ; preds = %1124
  %1133 = extractvalue { i64, i1 } %1129, 0, !nosanitize !32
  store i64 %1133, ptr %1081, align 8, !tbaa !53
  br label %1134

1134:                                             ; preds = %1132, %1122
  %1135 = load i32, ptr %153, align 4, !tbaa !48
  %1136 = icmp slt i32 %1135, 2
  br i1 %1136, label %1105, label %1137, !llvm.loop !54

1137:                                             ; preds = %1134, %1073
  %1138 = phi i32 [ %1102, %1073 ], [ %1110, %1134 ]
  %1139 = phi i32 [ %1074, %1073 ], [ %1135, %1134 ]
  %1140 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %1138, ptr %1140, align 8, !tbaa !55
  %1141 = lshr i32 %1139, 1
  %1142 = zext nneg i32 %1141 to i64
  br label %1323

1143:                                             ; preds = %1389
  %1144 = load i32, ptr %153, align 4, !tbaa !48
  %1145 = sext i32 %1069 to i64
  %mv.h5 = icmp sge i32 %1144, 0
  %mv.h.fr6 = freeze i1 %mv.h5
  br i1 %mv.h.fr6, label %.mv.ph7.mv.fast, label %.mv.ph7

.mv.ph7.mv.fast:                                  ; preds = %1143
  br label %1146

1146:                                             ; preds = %1318, %.mv.ph7.mv.fast
  %1147 = phi i32 [ %1144, %.mv.ph7.mv.fast ], [ %1321, %1318 ]
  %1148 = phi i64 [ %1145, %.mv.ph7.mv.fast ], [ %1258, %1318 ]
  %1149 = load i32, ptr %236, align 4, !tbaa !50
  %1150 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1147, i32 -1)
  %1151 = extractvalue { i32, i1 } %1150, 1, !nosanitize !32
  br i1 false, label %.loopexit3, label %1152, !prof !34, !nosanitize !32

1152:                                             ; preds = %1146
  %1153 = extractvalue { i32, i1 } %1150, 0, !nosanitize !32
  store i32 %1153, ptr %153, align 4, !tbaa !48
  %1154 = sext i32 %1147 to i64
  %1155 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1154
  %1156 = load i32, ptr %1155, align 4, !tbaa !50
  store i32 %1156, ptr %236, align 4, !tbaa !50
  %1157 = sext i32 %1156 to i64
  %1158 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1157
  %1159 = icmp slt i32 %1153, 2
  br i1 %1159, label %1219, label %1160

1160:                                             ; preds = %1152
  %1161 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1157
  br label %1162

1162:                                             ; preds = %1210, %1160
  %1163 = phi i32 [ %1153, %1160 ], [ %1214, %1210 ]
  %1164 = phi i32 [ 2, %1160 ], [ %1213, %1210 ]
  %1165 = phi i32 [ 1, %1160 ], [ %1195, %1210 ]
  %1166 = icmp slt i32 %1164, %1163
  br i1 %1166, label %1169, label %1167

1167:                                             ; preds = %1162
  %1168 = sext i32 %1164 to i64
  br label %1193

1169:                                             ; preds = %1162
  %1170 = or disjoint i32 %1164, 1
  %1171 = sext i32 %1170 to i64
  %1172 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1171
  %1173 = load i32, ptr %1172, align 4, !tbaa !50
  %1174 = sext i32 %1173 to i64
  %1175 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1174
  %1176 = load i16, ptr %1175, align 2, !tbaa !28
  %1177 = sext i32 %1164 to i64
  %1178 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1177
  %1179 = load i32, ptr %1178, align 4, !tbaa !50
  %1180 = sext i32 %1179 to i64
  %1181 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1180
  %1182 = load i16, ptr %1181, align 2, !tbaa !28
  %1183 = icmp ult i16 %1176, %1182
  br i1 %1183, label %1192, label %1184

1184:                                             ; preds = %1169
  %1185 = icmp eq i16 %1176, %1182
  br i1 %1185, label %1186, label %1193

1186:                                             ; preds = %1184
  %1187 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1174
  %1188 = load i8, ptr %1187, align 1, !tbaa !28
  %1189 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1180
  %1190 = load i8, ptr %1189, align 1, !tbaa !28
  %1191 = icmp ugt i8 %1188, %1190
  br i1 %1191, label %1193, label %1192

1192:                                             ; preds = %1186, %1169
  br label %1193

1193:                                             ; preds = %1192, %1186, %1184, %1167
  %1194 = phi i64 [ %1168, %1167 ], [ %1171, %1192 ], [ %1177, %1186 ], [ %1177, %1184 ]
  %1195 = phi i32 [ %1164, %1167 ], [ %1170, %1192 ], [ %1164, %1186 ], [ %1164, %1184 ]
  %1196 = load i16, ptr %1161, align 2, !tbaa !28
  %1197 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1194
  %1198 = load i32, ptr %1197, align 4, !tbaa !50
  %1199 = sext i32 %1198 to i64
  %1200 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1199
  %1201 = load i16, ptr %1200, align 2, !tbaa !28
  %1202 = icmp ult i16 %1196, %1201
  br i1 %1202, label %1216, label %1203

1203:                                             ; preds = %1193
  %1204 = icmp eq i16 %1196, %1201
  br i1 %1204, label %1205, label %1210

1205:                                             ; preds = %1203
  %1206 = load i8, ptr %1158, align 1, !tbaa !28
  %1207 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1199
  %1208 = load i8, ptr %1207, align 1, !tbaa !28
  %1209 = icmp ugt i8 %1206, %1208
  br i1 %1209, label %1210, label %1216

1210:                                             ; preds = %1205, %1203
  %1211 = sext i32 %1165 to i64
  %1212 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1211
  store i32 %1198, ptr %1212, align 4, !tbaa !50
  %1213 = shl i32 %1195, 1
  %1214 = load i32, ptr %153, align 4, !tbaa !48
  %1215 = icmp sgt i32 %1213, %1214
  br i1 %1215, label %1216, label %1162, !llvm.loop !56

1216:                                             ; preds = %1210, %1205, %1193
  %1217 = phi i32 [ %1165, %1193 ], [ %1165, %1205 ], [ %1195, %1210 ]
  %1218 = sext i32 %1217 to i64
  br label %1219

1219:                                             ; preds = %1216, %1152
  %1220 = phi i64 [ 1, %1152 ], [ %1218, %1216 ]
  %1221 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1220
  store i32 %1156, ptr %1221, align 4, !tbaa !50
  %1222 = load i32, ptr %236, align 4, !tbaa !50
  %1223 = load i32, ptr %154, align 8, !tbaa !49
  %1224 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1223, i32 -1)
  %1225 = extractvalue { i32, i1 } %1224, 1, !nosanitize !32
  br i1 %1225, label %.loopexit3, label %1226, !prof !34, !nosanitize !32

1226:                                             ; preds = %1219
  %1227 = extractvalue { i32, i1 } %1224, 0, !nosanitize !32
  store i32 %1227, ptr %154, align 8, !tbaa !49
  %1228 = sext i32 %1227 to i64
  %1229 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1228
  store i32 %1149, ptr %1229, align 4, !tbaa !50
  %1230 = load i32, ptr %154, align 8, !tbaa !49
  %1231 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1230, i32 -1)
  %1232 = extractvalue { i32, i1 } %1231, 1, !nosanitize !32
  br i1 %1232, label %.loopexit3, label %1233, !prof !34, !nosanitize !32

1233:                                             ; preds = %1226
  %1234 = extractvalue { i32, i1 } %1231, 0, !nosanitize !32
  store i32 %1234, ptr %154, align 8, !tbaa !49
  %1235 = sext i32 %1234 to i64
  %1236 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1235
  store i32 %1222, ptr %1236, align 4, !tbaa !50
  %1237 = sext i32 %1149 to i64
  %1238 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1237
  %1239 = load i16, ptr %1238, align 2, !tbaa !28
  %1240 = sext i32 %1222 to i64
  %1241 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1240
  %1242 = load i16, ptr %1241, align 2, !tbaa !28
  %1243 = add i16 %1242, %1239
  %1244 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1148
  store i16 %1243, ptr %1244, align 2, !tbaa !28
  %1245 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1237
  %1246 = load i8, ptr %1245, align 1, !tbaa !28
  %1247 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1240
  %1248 = load i8, ptr %1247, align 1, !tbaa !28
  %1249 = tail call i8 @llvm.umax.i8(i8 %1246, i8 %1248)
  %1250 = add i8 %1249, 1
  %1251 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1148
  store i8 %1250, ptr %1251, align 1, !tbaa !28
  %1252 = trunc nsw i64 %1148 to i32
  %1253 = trunc i64 %1148 to i16
  %1254 = getelementptr inbounds nuw i8, ptr %1241, i64 2
  store i16 %1253, ptr %1254, align 2, !tbaa !28
  %1255 = getelementptr inbounds nuw i8, ptr %1238, i64 2
  store i16 %1253, ptr %1255, align 2, !tbaa !28
  %1256 = icmp eq i64 %1148, 2147483647
  br i1 %1256, label %.loopexit4, label %1257, !prof !34, !nosanitize !32

1257:                                             ; preds = %1233
  %1258 = add nsw i64 %1148, 1
  store i32 %1252, ptr %236, align 4, !tbaa !50
  %1259 = load i32, ptr %153, align 4, !tbaa !48
  %1260 = icmp slt i32 %1259, 2
  br i1 %1260, label %1318, label %.preheader2.mv.fast

1261:                                             ; preds = %.preheader2.mv.fast, %1309
  %1262 = phi i32 [ %1313, %1309 ], [ %1259, %.preheader2.mv.fast ]
  %1263 = phi i32 [ %1312, %1309 ], [ 2, %.preheader2.mv.fast ]
  %1264 = phi i32 [ %1294, %1309 ], [ 1, %.preheader2.mv.fast ]
  %1265 = icmp slt i32 %1263, %1262
  br i1 %1265, label %1268, label %1266

1266:                                             ; preds = %1261
  %1267 = sext i32 %1263 to i64
  br label %1292

1268:                                             ; preds = %1261
  %1269 = or disjoint i32 %1263, 1
  %1270 = sext i32 %1269 to i64
  %1271 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1270
  %1272 = load i32, ptr %1271, align 4, !tbaa !50
  %1273 = sext i32 %1272 to i64
  %1274 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1273
  %1275 = load i16, ptr %1274, align 2, !tbaa !28
  %1276 = sext i32 %1263 to i64
  %1277 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1276
  %1278 = load i32, ptr %1277, align 4, !tbaa !50
  %1279 = sext i32 %1278 to i64
  %1280 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1279
  %1281 = load i16, ptr %1280, align 2, !tbaa !28
  %1282 = icmp ult i16 %1275, %1281
  br i1 %1282, label %1291, label %1283

1283:                                             ; preds = %1268
  %1284 = icmp eq i16 %1275, %1281
  br i1 %1284, label %1285, label %1292

1285:                                             ; preds = %1283
  %1286 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1273
  %1287 = load i8, ptr %1286, align 1, !tbaa !28
  %1288 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1279
  %1289 = load i8, ptr %1288, align 1, !tbaa !28
  %1290 = icmp ugt i8 %1287, %1289
  br i1 %1290, label %1292, label %1291

1291:                                             ; preds = %1285, %1268
  br label %1292

1292:                                             ; preds = %1291, %1285, %1283, %1266
  %1293 = phi i64 [ %1267, %1266 ], [ %1270, %1291 ], [ %1276, %1285 ], [ %1276, %1283 ]
  %1294 = phi i32 [ %1263, %1266 ], [ %1269, %1291 ], [ %1263, %1285 ], [ %1263, %1283 ]
  %1295 = load i16, ptr %1244, align 2, !tbaa !28
  %1296 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1293
  %1297 = load i32, ptr %1296, align 4, !tbaa !50
  %1298 = sext i32 %1297 to i64
  %1299 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1298
  %1300 = load i16, ptr %1299, align 2, !tbaa !28
  %1301 = icmp ult i16 %1295, %1300
  br i1 %1301, label %1315, label %1302

1302:                                             ; preds = %1292
  %1303 = icmp eq i16 %1295, %1300
  br i1 %1303, label %1304, label %1309

1304:                                             ; preds = %1302
  %1305 = load i8, ptr %1251, align 1, !tbaa !28
  %1306 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1298
  %1307 = load i8, ptr %1306, align 1, !tbaa !28
  %1308 = icmp ugt i8 %1305, %1307
  br i1 %1308, label %1309, label %1315

1309:                                             ; preds = %1304, %1302
  %1310 = sext i32 %1264 to i64
  %1311 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1310
  store i32 %1297, ptr %1311, align 4, !tbaa !50
  %1312 = shl i32 %1294, 1
  %1313 = load i32, ptr %153, align 4, !tbaa !48
  %1314 = icmp sgt i32 %1312, %1313
  br i1 %1314, label %1315, label %1261, !llvm.loop !56

1315:                                             ; preds = %1309, %1304, %1292
  %1316 = phi i32 [ %1264, %1292 ], [ %1264, %1304 ], [ %1294, %1309 ]
  %1317 = sext i32 %1316 to i64
  br label %1318

1318:                                             ; preds = %1315, %1257
  %1319 = phi i64 [ 1, %1257 ], [ %1317, %1315 ]
  %1320 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1319
  store i32 %1252, ptr %1320, align 4, !tbaa !50
  %1321 = load i32, ptr %153, align 4, !tbaa !48
  %1322 = icmp sgt i32 %1321, 1
  br i1 %1322, label %1146, label %1572, !llvm.loop !57

.preheader2.mv.fast:                              ; preds = %1257
  br label %1261

.mv.ph7:                                          ; preds = %1143
  br label %1395

1323:                                             ; preds = %1389, %1137
  %1324 = phi i64 [ %1142, %1137 ], [ %1393, %1389 ]
  %1325 = getelementptr inbounds nuw [573 x i32], ptr %230, i64 0, i64 %1324
  %1326 = load i32, ptr %1325, align 4, !tbaa !50
  %1327 = sext i32 %1326 to i64
  %1328 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1327
  %1329 = load i32, ptr %153, align 4, !tbaa !48
  %1330 = trunc i64 %1324 to i32
  %1331 = shl i32 %1330, 1
  %1332 = icmp sgt i32 %1331, %1329
  br i1 %1332, label %1389, label %1333

1333:                                             ; preds = %1323
  %1334 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1327
  br label %1335

1335:                                             ; preds = %1383, %1333
  %1336 = phi i32 [ %1329, %1333 ], [ %1387, %1383 ]
  %1337 = phi i32 [ %1331, %1333 ], [ %1386, %1383 ]
  %1338 = phi i32 [ %1330, %1333 ], [ %1368, %1383 ]
  %1339 = icmp slt i32 %1337, %1336
  br i1 %1339, label %1342, label %1340

1340:                                             ; preds = %1335
  %1341 = sext i32 %1337 to i64
  br label %1366

1342:                                             ; preds = %1335
  %1343 = or disjoint i32 %1337, 1
  %1344 = sext i32 %1343 to i64
  %1345 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1344
  %1346 = load i32, ptr %1345, align 4, !tbaa !50
  %1347 = sext i32 %1346 to i64
  %1348 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1347
  %1349 = load i16, ptr %1348, align 2, !tbaa !28
  %1350 = sext i32 %1337 to i64
  %1351 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1350
  %1352 = load i32, ptr %1351, align 4, !tbaa !50
  %1353 = sext i32 %1352 to i64
  %1354 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1353
  %1355 = load i16, ptr %1354, align 2, !tbaa !28
  %1356 = icmp ult i16 %1349, %1355
  br i1 %1356, label %1365, label %1357

1357:                                             ; preds = %1342
  %1358 = icmp eq i16 %1349, %1355
  br i1 %1358, label %1359, label %1366

1359:                                             ; preds = %1357
  %1360 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1347
  %1361 = load i8, ptr %1360, align 1, !tbaa !28
  %1362 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1353
  %1363 = load i8, ptr %1362, align 1, !tbaa !28
  %1364 = icmp ugt i8 %1361, %1363
  br i1 %1364, label %1366, label %1365

1365:                                             ; preds = %1359, %1342
  br label %1366

1366:                                             ; preds = %1365, %1359, %1357, %1340
  %1367 = phi i64 [ %1341, %1340 ], [ %1344, %1365 ], [ %1350, %1359 ], [ %1350, %1357 ]
  %1368 = phi i32 [ %1337, %1340 ], [ %1343, %1365 ], [ %1337, %1359 ], [ %1337, %1357 ]
  %1369 = load i16, ptr %1334, align 2, !tbaa !28
  %1370 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1367
  %1371 = load i32, ptr %1370, align 4, !tbaa !50
  %1372 = sext i32 %1371 to i64
  %1373 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1372
  %1374 = load i16, ptr %1373, align 2, !tbaa !28
  %1375 = icmp ult i16 %1369, %1374
  br i1 %1375, label %1389, label %1376

1376:                                             ; preds = %1366
  %1377 = icmp eq i16 %1369, %1374
  br i1 %1377, label %1378, label %1383

1378:                                             ; preds = %1376
  %1379 = load i8, ptr %1328, align 1, !tbaa !28
  %1380 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1372
  %1381 = load i8, ptr %1380, align 1, !tbaa !28
  %1382 = icmp ugt i8 %1379, %1381
  br i1 %1382, label %1383, label %1389

1383:                                             ; preds = %1378, %1376
  %1384 = sext i32 %1338 to i64
  %1385 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1384
  store i32 %1371, ptr %1385, align 4, !tbaa !50
  %1386 = shl i32 %1368, 1
  %1387 = load i32, ptr %153, align 4, !tbaa !48
  %1388 = icmp sgt i32 %1386, %1387
  br i1 %1388, label %1389, label %1335, !llvm.loop !56

1389:                                             ; preds = %1383, %1378, %1366, %1323
  %1390 = phi i32 [ %1330, %1323 ], [ %1338, %1366 ], [ %1338, %1378 ], [ %1368, %1383 ]
  %1391 = sext i32 %1390 to i64
  %1392 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1391
  store i32 %1326, ptr %1392, align 4, !tbaa !50
  %1393 = add nsw i64 %1324, -1
  %1394 = icmp sgt i64 %1324, 1
  br i1 %1394, label %1323, label %1143, !llvm.loop !58

1395:                                             ; preds = %1567, %.mv.ph7
  %1396 = phi i32 [ %1144, %.mv.ph7 ], [ %1570, %1567 ]
  %1397 = phi i64 [ %1145, %.mv.ph7 ], [ %1507, %1567 ]
  %1398 = load i32, ptr %236, align 4, !tbaa !50
  %1399 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1396, i32 -1)
  %1400 = extractvalue { i32, i1 } %1399, 1, !nosanitize !32
  br i1 %1400, label %.loopexit3, label %1401, !prof !34, !nosanitize !32

1401:                                             ; preds = %1395
  %1402 = extractvalue { i32, i1 } %1399, 0, !nosanitize !32
  store i32 %1402, ptr %153, align 4, !tbaa !48
  %1403 = sext i32 %1396 to i64
  %1404 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1403
  %1405 = load i32, ptr %1404, align 4, !tbaa !50
  store i32 %1405, ptr %236, align 4, !tbaa !50
  %1406 = sext i32 %1405 to i64
  %1407 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1406
  %1408 = icmp slt i32 %1402, 2
  br i1 %1408, label %1468, label %1409

1409:                                             ; preds = %1401
  %1410 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1406
  br label %1411

1411:                                             ; preds = %1459, %1409
  %1412 = phi i32 [ %1402, %1409 ], [ %1463, %1459 ]
  %1413 = phi i32 [ 2, %1409 ], [ %1462, %1459 ]
  %1414 = phi i32 [ 1, %1409 ], [ %1444, %1459 ]
  %1415 = icmp slt i32 %1413, %1412
  br i1 %1415, label %1418, label %1416

1416:                                             ; preds = %1411
  %1417 = sext i32 %1413 to i64
  br label %1442

1418:                                             ; preds = %1411
  %1419 = or disjoint i32 %1413, 1
  %1420 = sext i32 %1419 to i64
  %1421 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1420
  %1422 = load i32, ptr %1421, align 4, !tbaa !50
  %1423 = sext i32 %1422 to i64
  %1424 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1423
  %1425 = load i16, ptr %1424, align 2, !tbaa !28
  %1426 = sext i32 %1413 to i64
  %1427 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1426
  %1428 = load i32, ptr %1427, align 4, !tbaa !50
  %1429 = sext i32 %1428 to i64
  %1430 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1429
  %1431 = load i16, ptr %1430, align 2, !tbaa !28
  %1432 = icmp ult i16 %1425, %1431
  br i1 %1432, label %1441, label %1433

1433:                                             ; preds = %1418
  %1434 = icmp eq i16 %1425, %1431
  br i1 %1434, label %1435, label %1442

1435:                                             ; preds = %1433
  %1436 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1423
  %1437 = load i8, ptr %1436, align 1, !tbaa !28
  %1438 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1429
  %1439 = load i8, ptr %1438, align 1, !tbaa !28
  %1440 = icmp ugt i8 %1437, %1439
  br i1 %1440, label %1442, label %1441

1441:                                             ; preds = %1435, %1418
  br label %1442

1442:                                             ; preds = %1441, %1435, %1433, %1416
  %1443 = phi i64 [ %1417, %1416 ], [ %1420, %1441 ], [ %1426, %1435 ], [ %1426, %1433 ]
  %1444 = phi i32 [ %1413, %1416 ], [ %1419, %1441 ], [ %1413, %1435 ], [ %1413, %1433 ]
  %1445 = load i16, ptr %1410, align 2, !tbaa !28
  %1446 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1443
  %1447 = load i32, ptr %1446, align 4, !tbaa !50
  %1448 = sext i32 %1447 to i64
  %1449 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1448
  %1450 = load i16, ptr %1449, align 2, !tbaa !28
  %1451 = icmp ult i16 %1445, %1450
  br i1 %1451, label %1465, label %1452

1452:                                             ; preds = %1442
  %1453 = icmp eq i16 %1445, %1450
  br i1 %1453, label %1454, label %1459

1454:                                             ; preds = %1452
  %1455 = load i8, ptr %1407, align 1, !tbaa !28
  %1456 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1448
  %1457 = load i8, ptr %1456, align 1, !tbaa !28
  %1458 = icmp ugt i8 %1455, %1457
  br i1 %1458, label %1459, label %1465

1459:                                             ; preds = %1454, %1452
  %1460 = sext i32 %1414 to i64
  %1461 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1460
  store i32 %1447, ptr %1461, align 4, !tbaa !50
  %1462 = shl i32 %1444, 1
  %1463 = load i32, ptr %153, align 4, !tbaa !48
  %1464 = icmp sgt i32 %1462, %1463
  br i1 %1464, label %1465, label %1411, !llvm.loop !56

1465:                                             ; preds = %1459, %1454, %1442
  %1466 = phi i32 [ %1414, %1442 ], [ %1414, %1454 ], [ %1444, %1459 ]
  %1467 = sext i32 %1466 to i64
  br label %1468

1468:                                             ; preds = %1465, %1401
  %1469 = phi i64 [ 1, %1401 ], [ %1467, %1465 ]
  %1470 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1469
  store i32 %1405, ptr %1470, align 4, !tbaa !50
  %1471 = load i32, ptr %236, align 4, !tbaa !50
  %1472 = load i32, ptr %154, align 8, !tbaa !49
  %1473 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1472, i32 -1)
  %1474 = extractvalue { i32, i1 } %1473, 1, !nosanitize !32
  br i1 %1474, label %.loopexit3, label %1475, !prof !34, !nosanitize !32

1475:                                             ; preds = %1468
  %1476 = extractvalue { i32, i1 } %1473, 0, !nosanitize !32
  store i32 %1476, ptr %154, align 8, !tbaa !49
  %1477 = sext i32 %1476 to i64
  %1478 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1477
  store i32 %1398, ptr %1478, align 4, !tbaa !50
  %1479 = load i32, ptr %154, align 8, !tbaa !49
  %1480 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1479, i32 -1)
  %1481 = extractvalue { i32, i1 } %1480, 1, !nosanitize !32
  br i1 %1481, label %.loopexit3, label %1482, !prof !34, !nosanitize !32

1482:                                             ; preds = %1475
  %1483 = extractvalue { i32, i1 } %1480, 0, !nosanitize !32
  store i32 %1483, ptr %154, align 8, !tbaa !49
  %1484 = sext i32 %1483 to i64
  %1485 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1484
  store i32 %1471, ptr %1485, align 4, !tbaa !50
  %1486 = sext i32 %1398 to i64
  %1487 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1486
  %1488 = load i16, ptr %1487, align 2, !tbaa !28
  %1489 = sext i32 %1471 to i64
  %1490 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1489
  %1491 = load i16, ptr %1490, align 2, !tbaa !28
  %1492 = add i16 %1491, %1488
  %1493 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1397
  store i16 %1492, ptr %1493, align 2, !tbaa !28
  %1494 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1486
  %1495 = load i8, ptr %1494, align 1, !tbaa !28
  %1496 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1489
  %1497 = load i8, ptr %1496, align 1, !tbaa !28
  %1498 = tail call i8 @llvm.umax.i8(i8 %1495, i8 %1497)
  %1499 = add i8 %1498, 1
  %1500 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1397
  store i8 %1499, ptr %1500, align 1, !tbaa !28
  %1501 = trunc nsw i64 %1397 to i32
  %1502 = trunc i64 %1397 to i16
  %1503 = getelementptr inbounds nuw i8, ptr %1490, i64 2
  store i16 %1502, ptr %1503, align 2, !tbaa !28
  %1504 = getelementptr inbounds nuw i8, ptr %1487, i64 2
  store i16 %1502, ptr %1504, align 2, !tbaa !28
  %1505 = icmp eq i64 %1397, 2147483647
  br i1 %1505, label %.loopexit4, label %1506, !prof !34, !nosanitize !32

1506:                                             ; preds = %1482
  %1507 = add nsw i64 %1397, 1
  store i32 %1501, ptr %236, align 4, !tbaa !50
  %1508 = load i32, ptr %153, align 4, !tbaa !48
  %1509 = icmp slt i32 %1508, 2
  br i1 %1509, label %1567, label %.preheader2

.preheader2:                                      ; preds = %1506
  br label %1510

1510:                                             ; preds = %.preheader2, %1558
  %1511 = phi i32 [ %1562, %1558 ], [ %1508, %.preheader2 ]
  %1512 = phi i32 [ %1561, %1558 ], [ 2, %.preheader2 ]
  %1513 = phi i32 [ %1543, %1558 ], [ 1, %.preheader2 ]
  %1514 = icmp slt i32 %1512, %1511
  br i1 %1514, label %1517, label %1515

1515:                                             ; preds = %1510
  %1516 = sext i32 %1512 to i64
  br label %1541

1517:                                             ; preds = %1510
  %1518 = or disjoint i32 %1512, 1
  %1519 = sext i32 %1518 to i64
  %1520 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1519
  %1521 = load i32, ptr %1520, align 4, !tbaa !50
  %1522 = sext i32 %1521 to i64
  %1523 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1522
  %1524 = load i16, ptr %1523, align 2, !tbaa !28
  %1525 = sext i32 %1512 to i64
  %1526 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1525
  %1527 = load i32, ptr %1526, align 4, !tbaa !50
  %1528 = sext i32 %1527 to i64
  %1529 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1528
  %1530 = load i16, ptr %1529, align 2, !tbaa !28
  %1531 = icmp ult i16 %1524, %1530
  br i1 %1531, label %1540, label %1532

1532:                                             ; preds = %1517
  %1533 = icmp eq i16 %1524, %1530
  br i1 %1533, label %1534, label %1541

1534:                                             ; preds = %1532
  %1535 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1522
  %1536 = load i8, ptr %1535, align 1, !tbaa !28
  %1537 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1528
  %1538 = load i8, ptr %1537, align 1, !tbaa !28
  %1539 = icmp ugt i8 %1536, %1538
  br i1 %1539, label %1541, label %1540

1540:                                             ; preds = %1534, %1517
  br label %1541

1541:                                             ; preds = %1540, %1534, %1532, %1515
  %1542 = phi i64 [ %1516, %1515 ], [ %1519, %1540 ], [ %1525, %1534 ], [ %1525, %1532 ]
  %1543 = phi i32 [ %1512, %1515 ], [ %1518, %1540 ], [ %1512, %1534 ], [ %1512, %1532 ]
  %1544 = load i16, ptr %1493, align 2, !tbaa !28
  %1545 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1542
  %1546 = load i32, ptr %1545, align 4, !tbaa !50
  %1547 = sext i32 %1546 to i64
  %1548 = getelementptr inbounds %struct.ct_data_s, ptr %1064, i64 %1547
  %1549 = load i16, ptr %1548, align 2, !tbaa !28
  %1550 = icmp ult i16 %1544, %1549
  br i1 %1550, label %1564, label %1551

1551:                                             ; preds = %1541
  %1552 = icmp eq i16 %1544, %1549
  br i1 %1552, label %1553, label %1558

1553:                                             ; preds = %1551
  %1554 = load i8, ptr %1500, align 1, !tbaa !28
  %1555 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1547
  %1556 = load i8, ptr %1555, align 1, !tbaa !28
  %1557 = icmp ugt i8 %1554, %1556
  br i1 %1557, label %1558, label %1564

1558:                                             ; preds = %1553, %1551
  %1559 = sext i32 %1513 to i64
  %1560 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1559
  store i32 %1546, ptr %1560, align 4, !tbaa !50
  %1561 = shl i32 %1543, 1
  %1562 = load i32, ptr %153, align 4, !tbaa !48
  %1563 = icmp sgt i32 %1561, %1562
  br i1 %1563, label %1564, label %1510, !llvm.loop !56

1564:                                             ; preds = %1558, %1553, %1541
  %1565 = phi i32 [ %1513, %1541 ], [ %1513, %1553 ], [ %1543, %1558 ]
  %1566 = sext i32 %1565 to i64
  br label %1567

1567:                                             ; preds = %1564, %1506
  %1568 = phi i64 [ 1, %1506 ], [ %1566, %1564 ]
  %1569 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1568
  store i32 %1501, ptr %1569, align 4, !tbaa !50
  %1570 = load i32, ptr %153, align 4, !tbaa !48
  %1571 = icmp sgt i32 %1570, 1
  br i1 %1571, label %1395, label %1572, !llvm.loop !57

1572:                                             ; preds = %1318, %1567
  %1573 = load i32, ptr %154, align 8, !tbaa !49
  %1574 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1573, i32 -1)
  %1575 = extractvalue { i32, i1 } %1574, 1, !nosanitize !32
  br i1 %1575, label %1131, label %1576, !prof !34, !nosanitize !32

1576:                                             ; preds = %1572
  %1577 = extractvalue { i32, i1 } %1574, 0, !nosanitize !32
  %1578 = load i32, ptr %236, align 4, !tbaa !50
  store i32 %1577, ptr %154, align 8, !tbaa !49
  %1579 = sext i32 %1577 to i64
  %1580 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1579
  store i32 %1578, ptr %1580, align 4, !tbaa !50
  %1581 = load ptr, ptr %1063, align 8, !tbaa !42
  %1582 = load i32, ptr %1140, align 8, !tbaa !55
  %1583 = load ptr, ptr %1065, align 8, !tbaa !43
  %1584 = load ptr, ptr %1583, align 8, !tbaa !44
  %1585 = getelementptr inbounds nuw i8, ptr %1583, i64 8
  %1586 = load ptr, ptr %1585, align 8, !tbaa !59
  %1587 = getelementptr inbounds nuw i8, ptr %1583, i64 16
  %1588 = load i32, ptr %1587, align 8, !tbaa !60
  %1589 = getelementptr inbounds nuw i8, ptr %1583, i64 24
  %1590 = load i32, ptr %1589, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %683, i8 0, i64 32, i1 false), !tbaa !62
  %1591 = load i32, ptr %154, align 8, !tbaa !49
  %1592 = sext i32 %1591 to i64
  %1593 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1592
  %1594 = load i32, ptr %1593, align 4, !tbaa !50
  %1595 = sext i32 %1594 to i64
  %1596 = getelementptr inbounds %struct.ct_data_s, ptr %1581, i64 %1595, i32 1
  store i16 0, ptr %1596, align 2, !tbaa !28
  %1597 = load i32, ptr %154, align 8, !tbaa !49
  %1598 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1597, i32 1), !nosanitize !32
  %1599 = extractvalue { i32, i1 } %1598, 1, !nosanitize !32
  br i1 %1599, label %1600, label %1601, !prof !34, !nosanitize !32

1600:                                             ; preds = %1649, %1624, %1576
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

1601:                                             ; preds = %1576
  %1602 = extractvalue { i32, i1 } %1598, 0
  %1603 = icmp slt i32 %1602, 573
  br i1 %1603, label %1604, label %1783

1604:                                             ; preds = %1601
  %1605 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1606 = icmp eq ptr %1584, null
  %1607 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1608 = sext i32 %1602 to i64
  br label %1609

1609:                                             ; preds = %1681, %1604
  %1610 = phi i64 [ %1608, %1604 ], [ %1682, %1681 ]
  %1611 = phi i32 [ 0, %1604 ], [ %1631, %1681 ]
  %1612 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1610
  %1613 = load i32, ptr %1612, align 4, !tbaa !50
  %1614 = sext i32 %1613 to i64
  %1615 = getelementptr inbounds %struct.ct_data_s, ptr %1581, i64 %1614
  %1616 = getelementptr inbounds nuw i8, ptr %1615, i64 2
  %1617 = load i16, ptr %1616, align 2, !tbaa !28
  %1618 = zext i16 %1617 to i64
  %1619 = getelementptr inbounds nuw %struct.ct_data_s, ptr %1581, i64 %1618, i32 1
  %1620 = load i16, ptr %1619, align 2, !tbaa !28
  %1621 = zext i16 %1620 to i32
  %1622 = add nuw nsw i32 %1621, 1
  %1623 = icmp sgt i32 %1590, %1621
  br i1 %1623, label %1629, label %1624

1624:                                             ; preds = %1609
  %1625 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1611, i32 1), !nosanitize !32
  %1626 = extractvalue { i32, i1 } %1625, 1, !nosanitize !32
  br i1 %1626, label %1600, label %1627, !prof !34, !nosanitize !32

1627:                                             ; preds = %1624
  %1628 = extractvalue { i32, i1 } %1625, 0, !nosanitize !32
  br label %1629

1629:                                             ; preds = %1627, %1609
  %1630 = phi i32 [ %1590, %1627 ], [ %1622, %1609 ]
  %1631 = phi i32 [ %1628, %1627 ], [ %1611, %1609 ]
  %1632 = trunc i32 %1630 to i16
  store i16 %1632, ptr %1616, align 2, !tbaa !28
  %1633 = icmp sgt i32 %1613, %1582
  br i1 %1633, label %1681, label %1634

1634:                                             ; preds = %1629
  %1635 = sext i32 %1630 to i64
  %1636 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %1635
  %1637 = load i16, ptr %1636, align 2, !tbaa !62
  %1638 = add i16 %1637, 1
  store i16 %1638, ptr %1636, align 2, !tbaa !62
  %1639 = icmp slt i32 %1613, %1588
  br i1 %1639, label %1649, label %1640

1640:                                             ; preds = %1634
  %1641 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1613, i32 %1588), !nosanitize !32
  %1642 = extractvalue { i32, i1 } %1641, 1, !nosanitize !32
  br i1 %1642, label %1643, label %1644, !prof !34, !nosanitize !32

1643:                                             ; preds = %1740, %1709, %1701, %1687, %1640
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

1644:                                             ; preds = %1640
  %1645 = extractvalue { i32, i1 } %1641, 0, !nosanitize !32
  %1646 = sext i32 %1645 to i64
  %1647 = getelementptr inbounds i32, ptr %1586, i64 %1646
  %1648 = load i32, ptr %1647, align 4, !tbaa !50
  br label %1649

1649:                                             ; preds = %1644, %1634
  %1650 = phi i32 [ %1648, %1644 ], [ 0, %1634 ]
  %1651 = load i16, ptr %1615, align 2, !tbaa !28
  %1652 = zext i16 %1651 to i64
  %1653 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1630, i32 %1650), !nosanitize !32
  %1654 = extractvalue { i32, i1 } %1653, 1, !nosanitize !32
  br i1 %1654, label %1600, label %1655, !prof !34, !nosanitize !32

1655:                                             ; preds = %1649
  %1656 = extractvalue { i32, i1 } %1653, 0, !nosanitize !32
  %1657 = zext i32 %1656 to i64
  %1658 = mul nuw nsw i64 %1657, %1652
  %1659 = load i64, ptr %1605, align 8, !tbaa !52
  %1660 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1659, i64 %1658), !nosanitize !32
  %1661 = extractvalue { i64, i1 } %1660, 1, !nosanitize !32
  br i1 %1661, label %1662, label %1663, !prof !34, !nosanitize !32

1662:                                             ; preds = %1665, %1655
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

1663:                                             ; preds = %1655
  %1664 = extractvalue { i64, i1 } %1660, 0, !nosanitize !32
  store i64 %1664, ptr %1605, align 8, !tbaa !52
  br i1 %1606, label %1681, label %1665

1665:                                             ; preds = %1663
  %1666 = getelementptr inbounds %struct.ct_data_s, ptr %1584, i64 %1614, i32 1
  %1667 = load i16, ptr %1666, align 2, !tbaa !28
  %1668 = zext i16 %1667 to i32
  %1669 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1668, i32 %1650), !nosanitize !32
  %1670 = extractvalue { i32, i1 } %1669, 1, !nosanitize !32
  br i1 %1670, label %1662, label %1671, !prof !34, !nosanitize !32

1671:                                             ; preds = %1665
  %1672 = extractvalue { i32, i1 } %1669, 0, !nosanitize !32
  %1673 = zext i32 %1672 to i64
  %1674 = mul nuw nsw i64 %1673, %1652
  %1675 = load i64, ptr %1607, align 8, !tbaa !53
  %1676 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1675, i64 %1674), !nosanitize !32
  %1677 = extractvalue { i64, i1 } %1676, 1, !nosanitize !32
  br i1 %1677, label %1678, label %1679, !prof !34, !nosanitize !32

1678:                                             ; preds = %1704, %1671
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

1679:                                             ; preds = %1671
  %1680 = extractvalue { i64, i1 } %1676, 0, !nosanitize !32
  store i64 %1680, ptr %1607, align 8, !tbaa !53
  br label %1681

1681:                                             ; preds = %1679, %1663, %1629
  %1682 = add nsw i64 %1610, 1
  %1683 = and i64 %1682, 4294967295
  %1684 = icmp eq i64 %1683, 573
  br i1 %1684, label %1685, label %1609, !llvm.loop !63

1685:                                             ; preds = %1681
  %1686 = icmp eq i32 %1631, 0
  br i1 %1686, label %1783, label %1687

1687:                                             ; preds = %1685
  %1688 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1590, i32 -1)
  %1689 = extractvalue { i32, i1 } %1688, 1, !nosanitize !32
  %1690 = sext i32 %1590 to i64
  %1691 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %1690
  br i1 %1689, label %1643, label %1692, !prof !34, !nosanitize !32

1692:                                             ; preds = %1719, %1687
  %1693 = phi i32 [ %1720, %1719 ], [ %1631, %1687 ]
  br label %1694

1694:                                             ; preds = %1701, %1692
  %1695 = phi { i32, i1 } [ %1702, %1701 ], [ %1688, %1692 ]
  %1696 = extractvalue { i32, i1 } %1695, 0
  %1697 = sext i32 %1696 to i64
  %1698 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %1697
  %1699 = load i16, ptr %1698, align 2, !tbaa !62
  %1700 = icmp eq i16 %1699, 0
  br i1 %1700, label %1701, label %1704

1701:                                             ; preds = %1694
  %1702 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1696, i32 -1)
  %1703 = extractvalue { i32, i1 } %1702, 1, !nosanitize !32
  br i1 %1703, label %1643, label %1694, !prof !34, !llvm.loop !65, !nosanitize !32

1704:                                             ; preds = %1694
  %1705 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %1697
  %1706 = add i16 %1699, -1
  store i16 %1706, ptr %1705, align 2, !tbaa !62
  %1707 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1696, i32 1), !nosanitize !32
  %1708 = extractvalue { i32, i1 } %1707, 1, !nosanitize !32
  br i1 %1708, label %1678, label %1709, !prof !34, !nosanitize !32

1709:                                             ; preds = %1704
  %1710 = extractvalue { i32, i1 } %1707, 0, !nosanitize !32
  %1711 = sext i32 %1710 to i64
  %1712 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %1711
  %1713 = load i16, ptr %1712, align 2, !tbaa !62
  %1714 = add i16 %1713, 2
  store i16 %1714, ptr %1712, align 2, !tbaa !62
  %1715 = load i16, ptr %1691, align 2, !tbaa !62
  %1716 = add i16 %1715, -1
  store i16 %1716, ptr %1691, align 2, !tbaa !62
  %1717 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1693, i32 -2)
  %1718 = extractvalue { i32, i1 } %1717, 1, !nosanitize !32
  br i1 %1718, label %1643, label %1719, !prof !34, !nosanitize !32

1719:                                             ; preds = %1709
  %1720 = extractvalue { i32, i1 } %1717, 0, !nosanitize !32
  %1721 = icmp sgt i32 %1720, 0
  br i1 %1721, label %1692, label %1722, !llvm.loop !64

1722:                                             ; preds = %1719
  %1723 = icmp eq i32 %1590, 0
  br i1 %1723, label %1783, label %1724

1724:                                             ; preds = %1779, %1722
  %1725 = phi i64 [ %1780, %1779 ], [ %1690, %1722 ]
  %1726 = phi i32 [ %1734, %1779 ], [ 573, %1722 ]
  %1727 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %1725
  %1728 = load i16, ptr %1727, align 2, !tbaa !62
  %1729 = icmp eq i16 %1728, 0
  br i1 %1729, label %1733, label %1730

1730:                                             ; preds = %1724
  %1731 = zext i16 %1728 to i32
  %1732 = trunc i64 %1725 to i16
  br label %1737

1733:                                             ; preds = %1776, %1724
  %1734 = phi i32 [ %1726, %1724 ], [ %1745, %1776 ]
  %1735 = and i64 %1725, 4294967295
  %1736 = icmp eq i64 %1735, 2147483648
  br i1 %1736, label %1760, label %1779, !prof !34, !nosanitize !32

1737:                                             ; preds = %1776, %1730
  %1738 = phi i32 [ %1726, %1730 ], [ %1745, %1776 ]
  %1739 = phi i32 [ %1731, %1730 ], [ %1777, %1776 ]
  br label %1740

1740:                                             ; preds = %1744, %1737
  %1741 = phi i32 [ %1745, %1744 ], [ %1738, %1737 ]
  %1742 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1741, i32 -1)
  %1743 = extractvalue { i32, i1 } %1742, 1, !nosanitize !32
  br i1 %1743, label %1643, label %1744, !prof !34, !nosanitize !32

1744:                                             ; preds = %1740
  %1745 = extractvalue { i32, i1 } %1742, 0, !nosanitize !32
  %1746 = sext i32 %1745 to i64
  %1747 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1746
  %1748 = load i32, ptr %1747, align 4, !tbaa !50
  %1749 = icmp sgt i32 %1748, %1582
  br i1 %1749, label %1740, label %1750, !llvm.loop !66

1750:                                             ; preds = %1744
  %1751 = sext i32 %1748 to i64
  %1752 = getelementptr inbounds %struct.ct_data_s, ptr %1581, i64 %1751
  %1753 = getelementptr inbounds nuw i8, ptr %1752, i64 2
  %1754 = load i16, ptr %1753, align 2, !tbaa !28
  %1755 = zext i16 %1754 to i64
  %1756 = icmp eq i64 %1725, %1755
  br i1 %1756, label %1776, label %1757

1757:                                             ; preds = %1750
  %1758 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1725, i64 %1755), !nosanitize !32
  %1759 = extractvalue { i64, i1 } %1758, 1, !nosanitize !32
  br i1 %1759, label %1760, label %1761, !prof !34, !nosanitize !32

1760:                                             ; preds = %1757, %1733
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

1761:                                             ; preds = %1757
  %1762 = extractvalue { i64, i1 } %1758, 0, !nosanitize !32
  %1763 = load i16, ptr %1752, align 2, !tbaa !28
  %1764 = zext i16 %1763 to i64
  %1765 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1762, i64 %1764), !nosanitize !32
  %1766 = extractvalue { i64, i1 } %1765, 1, !nosanitize !32
  br i1 %1766, label %1767, label %1768, !prof !34, !nosanitize !32

1767:                                             ; preds = %1761
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !32
  unreachable, !nosanitize !32

1768:                                             ; preds = %1761
  %1769 = extractvalue { i64, i1 } %1765, 0, !nosanitize !32
  %1770 = load i64, ptr %1605, align 8, !tbaa !52
  %1771 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1770, i64 %1769), !nosanitize !32
  %1772 = extractvalue { i64, i1 } %1771, 1, !nosanitize !32
  br i1 %1772, label %1773, label %1774, !prof !34, !nosanitize !32

1773:                                             ; preds = %1768
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

1774:                                             ; preds = %1768
  %1775 = extractvalue { i64, i1 } %1771, 0, !nosanitize !32
  store i64 %1775, ptr %1605, align 8, !tbaa !52
  store i16 %1732, ptr %1753, align 2, !tbaa !28
  br label %1776

1776:                                             ; preds = %1774, %1750
  %1777 = add nsw i32 %1739, -1
  %1778 = icmp eq i32 %1777, 0
  br i1 %1778, label %1733, label %1737, !llvm.loop !66

1779:                                             ; preds = %1733
  %1780 = add nsw i64 %1725, -1
  %1781 = and i64 %1780, 4294967295
  %1782 = icmp eq i64 %1781, 0
  br i1 %1782, label %1783, label %1724, !llvm.loop !67

1783:                                             ; preds = %1779, %1722, %1685, %1601
  call void @llvm.lifetime.start.p0(ptr %6)
  %1784 = load i16, ptr %683, align 2, !tbaa !62
  %1785 = zext i16 %1784 to i32
  %1786 = shl nuw nsw i32 %1785, 1
  %1787 = trunc i32 %1786 to i16
  %1788 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1787, ptr %1788, align 2, !tbaa !62
  %1789 = load i16, ptr %912, align 2, !tbaa !62
  %1790 = zext i16 %1789 to i32
  %1791 = add nuw nsw i32 %1786, %1790
  %1792 = shl nuw nsw i32 %1791, 1
  %1793 = trunc i32 %1792 to i16
  %1794 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1793, ptr %1794, align 4, !tbaa !62
  %1795 = load i16, ptr %919, align 2, !tbaa !62
  %1796 = zext i16 %1795 to i32
  %1797 = add nuw nsw i32 %1792, %1796
  %1798 = shl nuw nsw i32 %1797, 1
  %1799 = trunc i32 %1798 to i16
  %1800 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1799, ptr %1800, align 2, !tbaa !62
  %1801 = load i16, ptr %926, align 2, !tbaa !62
  %1802 = zext i16 %1801 to i32
  %1803 = add nuw nsw i32 %1798, %1802
  %1804 = shl nuw nsw i32 %1803, 1
  %1805 = trunc i32 %1804 to i16
  %1806 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1805, ptr %1806, align 8, !tbaa !62
  %1807 = load i16, ptr %933, align 2, !tbaa !62
  %1808 = zext i16 %1807 to i32
  %1809 = add nuw nsw i32 %1804, %1808
  %1810 = shl nuw nsw i32 %1809, 1
  %1811 = trunc i32 %1810 to i16
  %1812 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1811, ptr %1812, align 2, !tbaa !62
  %1813 = load i16, ptr %940, align 2, !tbaa !62
  %1814 = zext i16 %1813 to i32
  %1815 = add nuw nsw i32 %1810, %1814
  %1816 = shl nuw nsw i32 %1815, 1
  %1817 = trunc i32 %1816 to i16
  %1818 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1817, ptr %1818, align 4, !tbaa !62
  %1819 = load i16, ptr %947, align 2, !tbaa !62
  %1820 = zext i16 %1819 to i32
  %1821 = add nuw nsw i32 %1816, %1820
  %1822 = shl nuw nsw i32 %1821, 1
  %1823 = trunc i32 %1822 to i16
  %1824 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1823, ptr %1824, align 2, !tbaa !62
  %1825 = load i16, ptr %954, align 2, !tbaa !62
  %1826 = zext i16 %1825 to i32
  %1827 = add nuw nsw i32 %1822, %1826
  %1828 = shl nuw nsw i32 %1827, 1
  %1829 = trunc i32 %1828 to i16
  %1830 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1829, ptr %1830, align 16, !tbaa !62
  %1831 = load i16, ptr %961, align 2, !tbaa !62
  %1832 = zext i16 %1831 to i32
  %1833 = add nuw nsw i32 %1828, %1832
  %1834 = shl nuw nsw i32 %1833, 1
  %1835 = trunc i32 %1834 to i16
  %1836 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1835, ptr %1836, align 2, !tbaa !62
  %1837 = load i16, ptr %968, align 2, !tbaa !62
  %1838 = zext i16 %1837 to i32
  %1839 = add nuw nsw i32 %1834, %1838
  %1840 = shl nuw nsw i32 %1839, 1
  %1841 = trunc i32 %1840 to i16
  %1842 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1841, ptr %1842, align 4, !tbaa !62
  %1843 = load i16, ptr %975, align 2, !tbaa !62
  %1844 = trunc i32 %1840 to i16
  %1845 = add i16 %1843, %1844
  %1846 = shl i16 %1845, 1
  %1847 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1846, ptr %1847, align 2, !tbaa !62
  %1848 = load i16, ptr %981, align 2, !tbaa !62
  %1849 = add i16 %1848, %1846
  %1850 = shl i16 %1849, 1
  %1851 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1850, ptr %1851, align 8, !tbaa !62
  %1852 = load i16, ptr %986, align 2, !tbaa !62
  %1853 = add i16 %1850, %1852
  %1854 = shl i16 %1853, 1
  %1855 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1854, ptr %1855, align 2, !tbaa !62
  %1856 = load i16, ptr %991, align 2, !tbaa !62
  %1857 = add i16 %1854, %1856
  %1858 = shl i16 %1857, 1
  %1859 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1858, ptr %1859, align 4, !tbaa !62
  %1860 = load i16, ptr %996, align 2, !tbaa !62
  %1861 = add i16 %1858, %1860
  %1862 = shl i16 %1861, 1
  %1863 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1862, ptr %1863, align 2, !tbaa !62
  %1864 = icmp slt i32 %1138, 0
  br i1 %1864, label %1925, label %1866

1865:                                             ; preds = %1919
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

1866:                                             ; preds = %1921, %1783
  %1867 = phi i64 [ %1922, %1921 ], [ 0, %1783 ]
  %1868 = getelementptr inbounds nuw %struct.ct_data_s, ptr %1064, i64 %1867
  %1869 = getelementptr inbounds nuw i8, ptr %1868, i64 2
  %1870 = load i16, ptr %1869, align 2, !tbaa !28
  %1871 = icmp eq i16 %1870, 0
  br i1 %1871, label %1919, label %1872

1872:                                             ; preds = %1866
  %1873 = zext i16 %1870 to i32
  %1874 = zext i16 %1870 to i64
  %1875 = getelementptr inbounds nuw [16 x i16], ptr %6, i64 0, i64 %1874
  %1876 = load i16, ptr %1875, align 2, !tbaa !62
  %1877 = add i16 %1876, 1
  store i16 %1877, ptr %1875, align 2, !tbaa !62
  %1878 = and i32 %1873, 3
  %1879 = icmp ult i16 %1870, 4
  br i1 %1879, label %1902, label %1880

1880:                                             ; preds = %1872
  %1881 = and i32 %1873, 65532
  br label %1882

1882:                                             ; preds = %1882, %1880
  %1883 = phi i16 [ %1876, %1880 ], [ %1899, %1882 ]
  %1884 = phi i16 [ 0, %1880 ], [ %1898, %1882 ]
  %1885 = phi i32 [ 0, %1880 ], [ %1900, %1882 ]
  %1886 = and i16 %1883, 1
  %1887 = or disjoint i16 %1884, %1886
  %1888 = lshr i16 %1883, 2
  %1889 = shl i16 %1887, 2
  %1890 = and i16 %1883, 2
  %1891 = or disjoint i16 %1889, %1890
  %1892 = and i16 %1888, 1
  %1893 = or disjoint i16 %1891, %1892
  %1894 = shl i16 %1893, 1
  %1895 = lshr i16 %1883, 3
  %1896 = and i16 %1895, 1
  %1897 = or disjoint i16 %1894, %1896
  %1898 = shl i16 %1897, 1
  %1899 = lshr i16 %1883, 4
  %1900 = add i32 %1885, 4
  %1901 = icmp eq i32 %1900, %1881
  br i1 %1901, label %1902, label %1882, !llvm.loop !68

1902:                                             ; preds = %1882, %1872
  %1903 = phi i16 [ poison, %1872 ], [ %1897, %1882 ]
  %1904 = phi i16 [ %1876, %1872 ], [ %1899, %1882 ]
  %1905 = phi i16 [ 0, %1872 ], [ %1898, %1882 ]
  %1906 = icmp eq i32 %1878, 0
  br i1 %1906, label %1917, label %1907

1907:                                             ; preds = %1907, %1902
  %1908 = phi i16 [ %1914, %1907 ], [ %1904, %1902 ]
  %1909 = phi i16 [ %1913, %1907 ], [ %1905, %1902 ]
  %1910 = phi i32 [ %1915, %1907 ], [ 0, %1902 ]
  %1911 = and i16 %1908, 1
  %1912 = or disjoint i16 %1909, %1911
  %1913 = shl i16 %1912, 1
  %1914 = lshr i16 %1908, 1
  %1915 = add i32 %1910, 1
  %1916 = icmp eq i32 %1915, %1878
  br i1 %1916, label %1917, label %1907, !llvm.loop !72

1917:                                             ; preds = %1907, %1902
  %1918 = phi i16 [ %1903, %1902 ], [ %1912, %1907 ]
  store i16 %1918, ptr %1868, align 2, !tbaa !28
  br label %1919

1919:                                             ; preds = %1917, %1866
  %1920 = icmp eq i64 %1867, 2147483647
  br i1 %1920, label %1865, label %1921, !prof !34, !nosanitize !32

1921:                                             ; preds = %1919
  %1922 = add nuw nsw i64 %1867, 1
  %1923 = trunc i64 %1922 to i32
  %1924 = icmp slt i32 %1138, %1923
  br i1 %1924, label %1925, label %1866, !llvm.loop !71

1925:                                             ; preds = %1921, %1783
  call void @llvm.lifetime.end.p0(ptr %6)
  %1926 = load i32, ptr %229, align 8, !tbaa !73
  %1927 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1926, i32 1), !nosanitize !32
  %1928 = extractvalue { i32, i1 } %1927, 1, !nosanitize !32
  br i1 %1928, label %1929, label %1930, !prof !34, !nosanitize !32

1929:                                             ; preds = %1949, %1925
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

1930:                                             ; preds = %1925
  %1931 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %1932 = getelementptr i8, ptr %0, i64 214
  %1933 = load i16, ptr %1932, align 2, !tbaa !28
  %1934 = extractvalue { i32, i1 } %1927, 0, !nosanitize !32
  %1935 = sext i32 %1934 to i64
  %1936 = shl nsw i64 %1935, 2
  %1937 = getelementptr i8, ptr %1931, i64 %1936
  %1938 = getelementptr i8, ptr %1937, i64 2
  store i16 -1, ptr %1938, align 2, !tbaa !28
  %1939 = icmp slt i32 %1926, 0
  br i1 %1939, label %2008, label %1940

1940:                                             ; preds = %1930
  %1941 = zext i16 %1933 to i32
  %1942 = icmp eq i16 %1933, 0
  %1943 = select i1 %1942, i32 138, i32 7
  %1944 = select i1 %1942, i32 3, i32 4
  %1945 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1946 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1947 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1948 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %1949

1949:                                             ; preds = %2002, %1940
  %1950 = phi i32 [ %1944, %1940 ], [ %2006, %2002 ]
  %1951 = phi i32 [ %1943, %1940 ], [ %2005, %2002 ]
  %1952 = phi i32 [ 0, %1940 ], [ %2004, %2002 ]
  %1953 = phi i32 [ %1941, %1940 ], [ %1964, %2002 ]
  %1954 = phi i32 [ 0, %1940 ], [ %1957, %2002 ]
  %1955 = phi i32 [ -1, %1940 ], [ %2003, %2002 ]
  %1956 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1954, i32 1), !nosanitize !32
  %1957 = extractvalue { i32, i1 } %1956, 0, !nosanitize !32
  %1958 = extractvalue { i32, i1 } %1956, 1, !nosanitize !32
  br i1 false, label %1929, label %1959, !prof !34, !nosanitize !32

1959:                                             ; preds = %1949
  %1960 = sext i32 %1957 to i64
  %1961 = shl nsw i64 %1960, 2
  %1962 = getelementptr i8, ptr %1932, i64 %1961
  %1963 = load i16, ptr %1962, align 2, !tbaa !28
  %1964 = zext i16 %1963 to i32
  %1965 = add nsw i32 %1952, 1
  %1966 = icmp slt i32 %1965, %1951
  %1967 = icmp eq i32 %1953, %1964
  %1968 = select i1 %1966, i1 %1967, i1 false
  br i1 %1968, label %2002, label %1969

1969:                                             ; preds = %1959
  %1970 = icmp slt i32 %1965, %1950
  br i1 %1970, label %1971, label %1977

1971:                                             ; preds = %1969
  %1972 = zext nneg i32 %1953 to i64
  %1973 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %1945, i64 0, i64 %1972
  %1974 = load i16, ptr %1973, align 4, !tbaa !28
  %1975 = trunc i32 %1965 to i16
  %1976 = add i16 %1974, %1975
  store i16 %1976, ptr %1973, align 4, !tbaa !28
  br label %1997

1977:                                             ; preds = %1969
  %1978 = icmp eq i32 %1953, 0
  br i1 %1978, label %1989, label %1979

1979:                                             ; preds = %1977
  %1980 = icmp eq i32 %1953, %1955
  br i1 %1980, label %1986, label %1981

1981:                                             ; preds = %1979
  %1982 = zext nneg i32 %1953 to i64
  %1983 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %1945, i64 0, i64 %1982
  %1984 = load i16, ptr %1983, align 4, !tbaa !28
  %1985 = add i16 %1984, 1
  store i16 %1985, ptr %1983, align 4, !tbaa !28
  br label %1986

1986:                                             ; preds = %1981, %1979
  %1987 = load i16, ptr %1946, align 4, !tbaa !28
  %1988 = add i16 %1987, 1
  store i16 %1988, ptr %1946, align 4, !tbaa !28
  br label %1997

1989:                                             ; preds = %1977
  %1990 = icmp slt i32 %1952, 10
  br i1 %1990, label %1991, label %1994

1991:                                             ; preds = %1989
  %1992 = load i16, ptr %1948, align 4, !tbaa !28
  %1993 = add i16 %1992, 1
  store i16 %1993, ptr %1948, align 4, !tbaa !28
  br label %1997

1994:                                             ; preds = %1989
  %1995 = load i16, ptr %1947, align 4, !tbaa !28
  %1996 = add i16 %1995, 1
  store i16 %1996, ptr %1947, align 4, !tbaa !28
  br label %1997

1997:                                             ; preds = %1994, %1991, %1986, %1971
  %1998 = icmp eq i16 %1963, 0
  br i1 %1998, label %2002, label %1999

1999:                                             ; preds = %1997
  %2000 = select i1 %1967, i32 6, i32 7
  %2001 = select i1 %1967, i32 3, i32 4
  br label %2002

2002:                                             ; preds = %1999, %1997, %1959
  %2003 = phi i32 [ %1955, %1959 ], [ %1953, %1997 ], [ %1953, %1999 ]
  %2004 = phi i32 [ %1965, %1959 ], [ 0, %1997 ], [ 0, %1999 ]
  %2005 = phi i32 [ %1951, %1959 ], [ 138, %1997 ], [ %2000, %1999 ]
  %2006 = phi i32 [ %1950, %1959 ], [ 3, %1997 ], [ %2001, %1999 ]
  %2007 = icmp sgt i32 %1957, %1926
  br i1 %2007, label %2008, label %1949, !llvm.loop !74

2008:                                             ; preds = %2002, %1930
  %2009 = load i32, ptr %1140, align 8, !tbaa !75
  %2010 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2009, i32 1), !nosanitize !32
  %2011 = extractvalue { i32, i1 } %2010, 1, !nosanitize !32
  br i1 %2011, label %2012, label %2013, !prof !34, !nosanitize !32

2012:                                             ; preds = %2032, %2008
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

2013:                                             ; preds = %2008
  %2014 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %2015 = getelementptr i8, ptr %0, i64 2506
  %2016 = load i16, ptr %2015, align 2, !tbaa !28
  %2017 = extractvalue { i32, i1 } %2010, 0, !nosanitize !32
  %2018 = sext i32 %2017 to i64
  %2019 = shl nsw i64 %2018, 2
  %2020 = getelementptr i8, ptr %2014, i64 %2019
  %2021 = getelementptr i8, ptr %2020, i64 2
  store i16 -1, ptr %2021, align 2, !tbaa !28
  %2022 = icmp slt i32 %2009, 0
  br i1 %2022, label %2091, label %2023

2023:                                             ; preds = %2013
  %2024 = zext i16 %2016 to i32
  %2025 = icmp eq i16 %2016, 0
  %2026 = select i1 %2025, i32 138, i32 7
  %2027 = select i1 %2025, i32 3, i32 4
  %2028 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %2029 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %2030 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %2031 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %2032

2032:                                             ; preds = %2085, %2023
  %2033 = phi i32 [ %2027, %2023 ], [ %2089, %2085 ]
  %2034 = phi i32 [ %2026, %2023 ], [ %2088, %2085 ]
  %2035 = phi i32 [ 0, %2023 ], [ %2087, %2085 ]
  %2036 = phi i32 [ %2024, %2023 ], [ %2047, %2085 ]
  %2037 = phi i32 [ 0, %2023 ], [ %2040, %2085 ]
  %2038 = phi i32 [ -1, %2023 ], [ %2086, %2085 ]
  %2039 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2037, i32 1), !nosanitize !32
  %2040 = extractvalue { i32, i1 } %2039, 0, !nosanitize !32
  %2041 = extractvalue { i32, i1 } %2039, 1, !nosanitize !32
  br i1 false, label %2012, label %2042, !prof !34, !nosanitize !32

2042:                                             ; preds = %2032
  %2043 = sext i32 %2040 to i64
  %2044 = shl nsw i64 %2043, 2
  %2045 = getelementptr i8, ptr %2015, i64 %2044
  %2046 = load i16, ptr %2045, align 2, !tbaa !28
  %2047 = zext i16 %2046 to i32
  %2048 = add nsw i32 %2035, 1
  %2049 = icmp slt i32 %2048, %2034
  %2050 = icmp eq i32 %2036, %2047
  %2051 = select i1 %2049, i1 %2050, i1 false
  br i1 %2051, label %2085, label %2052

2052:                                             ; preds = %2042
  %2053 = icmp slt i32 %2048, %2033
  br i1 %2053, label %2054, label %2060

2054:                                             ; preds = %2052
  %2055 = zext nneg i32 %2036 to i64
  %2056 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %2028, i64 0, i64 %2055
  %2057 = load i16, ptr %2056, align 4, !tbaa !28
  %2058 = trunc i32 %2048 to i16
  %2059 = add i16 %2057, %2058
  store i16 %2059, ptr %2056, align 4, !tbaa !28
  br label %2080

2060:                                             ; preds = %2052
  %2061 = icmp eq i32 %2036, 0
  br i1 %2061, label %2072, label %2062

2062:                                             ; preds = %2060
  %2063 = icmp eq i32 %2036, %2038
  br i1 %2063, label %2069, label %2064

2064:                                             ; preds = %2062
  %2065 = zext nneg i32 %2036 to i64
  %2066 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %2028, i64 0, i64 %2065
  %2067 = load i16, ptr %2066, align 4, !tbaa !28
  %2068 = add i16 %2067, 1
  store i16 %2068, ptr %2066, align 4, !tbaa !28
  br label %2069

2069:                                             ; preds = %2064, %2062
  %2070 = load i16, ptr %2029, align 4, !tbaa !28
  %2071 = add i16 %2070, 1
  store i16 %2071, ptr %2029, align 4, !tbaa !28
  br label %2080

2072:                                             ; preds = %2060
  %2073 = icmp slt i32 %2035, 10
  br i1 %2073, label %2074, label %2077

2074:                                             ; preds = %2072
  %2075 = load i16, ptr %2031, align 4, !tbaa !28
  %2076 = add i16 %2075, 1
  store i16 %2076, ptr %2031, align 4, !tbaa !28
  br label %2080

2077:                                             ; preds = %2072
  %2078 = load i16, ptr %2030, align 4, !tbaa !28
  %2079 = add i16 %2078, 1
  store i16 %2079, ptr %2030, align 4, !tbaa !28
  br label %2080

2080:                                             ; preds = %2077, %2074, %2069, %2054
  %2081 = icmp eq i16 %2046, 0
  br i1 %2081, label %2085, label %2082

2082:                                             ; preds = %2080
  %2083 = select i1 %2050, i32 6, i32 7
  %2084 = select i1 %2050, i32 3, i32 4
  br label %2085

2085:                                             ; preds = %2082, %2080, %2042
  %2086 = phi i32 [ %2038, %2042 ], [ %2036, %2080 ], [ %2036, %2082 ]
  %2087 = phi i32 [ %2048, %2042 ], [ 0, %2080 ], [ 0, %2082 ]
  %2088 = phi i32 [ %2034, %2042 ], [ 138, %2080 ], [ %2083, %2082 ]
  %2089 = phi i32 [ %2033, %2042 ], [ 3, %2080 ], [ %2084, %2082 ]
  %2090 = icmp sgt i32 %2040, %2009
  br i1 %2090, label %2091, label %2032, !llvm.loop !74

2091:                                             ; preds = %2085, %2013
  %2092 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %2093 = load ptr, ptr %2092, align 8, !tbaa !42
  %2094 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %2095 = load ptr, ptr %2094, align 8, !tbaa !43
  %2096 = load ptr, ptr %2095, align 8, !tbaa !44
  %2097 = getelementptr inbounds nuw i8, ptr %2095, i64 20
  %2098 = load i32, ptr %2097, align 4, !tbaa !47
  store i32 0, ptr %153, align 4, !tbaa !48
  store i32 573, ptr %154, align 8, !tbaa !49
  %2099 = icmp sgt i32 %2098, 0
  br i1 %2099, label %2100, label %2105

2100:                                             ; preds = %2091
  %2101 = zext nneg i32 %2098 to i64
  br label %2111

2102:                                             ; preds = %2130
  %2103 = load i32, ptr %153, align 4, !tbaa !48
  %2104 = icmp slt i32 %2103, 2
  br i1 %2104, label %2105, label %2166

2105:                                             ; preds = %2102, %2091
  %2106 = phi i32 [ %2131, %2102 ], [ -1, %2091 ]
  %2107 = phi i32 [ %2103, %2102 ], [ 0, %2091 ]
  %2108 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2109 = icmp eq ptr %2096, null
  %2110 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %2134

2111:                                             ; preds = %2130, %2100
  %2112 = phi i64 [ 0, %2100 ], [ %2132, %2130 ]
  %2113 = phi i32 [ -1, %2100 ], [ %2131, %2130 ]
  %2114 = getelementptr inbounds nuw %struct.ct_data_s, ptr %2093, i64 %2112
  %2115 = load i16, ptr %2114, align 2, !tbaa !28
  %2116 = icmp eq i16 %2115, 0
  br i1 %2116, label %2128, label %2117

2117:                                             ; preds = %2111
  %2118 = load i32, ptr %153, align 4, !tbaa !48
  %2119 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2118, i32 1), !nosanitize !32
  %2120 = extractvalue { i32, i1 } %2119, 1, !nosanitize !32
  br i1 %2120, label %2121, label %2122, !prof !34, !nosanitize !32

.loopexit1:                                       ; preds = %2262, %2511
  br label %2121

2121:                                             ; preds = %.loopexit1, %2117
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

2122:                                             ; preds = %2117
  %2123 = extractvalue { i32, i1 } %2119, 0, !nosanitize !32
  store i32 %2123, ptr %153, align 4, !tbaa !48
  %2124 = sext i32 %2123 to i64
  %2125 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2124
  %2126 = trunc nuw nsw i64 %2112 to i32
  store i32 %2126, ptr %2125, align 4, !tbaa !50
  %2127 = getelementptr inbounds nuw [573 x i8], ptr %231, i64 0, i64 %2112
  store i8 0, ptr %2127, align 1, !tbaa !28
  br label %2130

2128:                                             ; preds = %2111
  %2129 = getelementptr inbounds nuw i8, ptr %2114, i64 2
  store i16 0, ptr %2129, align 2, !tbaa !28
  br label %2130

2130:                                             ; preds = %2128, %2122
  %2131 = phi i32 [ %2126, %2122 ], [ %2113, %2128 ]
  %2132 = add nuw nsw i64 %2112, 1
  %2133 = icmp eq i64 %2132, %2101
  br i1 %2133, label %2102, label %2111, !llvm.loop !51

2134:                                             ; preds = %2163, %2105
  %2135 = phi i32 [ %2107, %2105 ], [ %2164, %2163 ]
  %2136 = phi i32 [ %2106, %2105 ], [ %2139, %2163 ]
  %2137 = icmp slt i32 %2136, 2
  %2138 = add i32 %2136, 1
  %2139 = select i1 %2137, i32 %2138, i32 %2136
  %2140 = add nsw i32 %2135, 1
  %2141 = select i1 %2137, i32 %2138, i32 0
  store i32 %2140, ptr %153, align 4, !tbaa !48
  %2142 = sext i32 %2140 to i64
  %2143 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2142
  store i32 %2141, ptr %2143, align 4, !tbaa !50
  %2144 = sext i32 %2141 to i64
  %2145 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2144
  store i16 1, ptr %2145, align 2, !tbaa !28
  %2146 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2144
  store i8 0, ptr %2146, align 1, !tbaa !28
  %2147 = load i64, ptr %2108, align 8, !tbaa !52
  %2148 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2147, i64 1), !nosanitize !32
  %2149 = extractvalue { i64, i1 } %2148, 1, !nosanitize !32
  br i1 %2149, label %2150, label %2151, !prof !34, !nosanitize !32

2150:                                             ; preds = %2134
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

2151:                                             ; preds = %2134
  %2152 = extractvalue { i64, i1 } %2148, 0, !nosanitize !32
  store i64 %2152, ptr %2108, align 8, !tbaa !52
  br i1 %2109, label %2163, label %2153

2153:                                             ; preds = %2151
  %2154 = getelementptr inbounds %struct.ct_data_s, ptr %2096, i64 %2144, i32 1
  %2155 = load i16, ptr %2154, align 2, !tbaa !28
  %2156 = zext i16 %2155 to i64
  %2157 = load i64, ptr %2110, align 8, !tbaa !53
  %2158 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2157, i64 %2156), !nosanitize !32
  %2159 = extractvalue { i64, i1 } %2158, 1, !nosanitize !32
  br i1 %2159, label %2160, label %2161, !prof !34, !nosanitize !32

.loopexit:                                        ; preds = %2255, %2248, %2175, %2424, %2497, %2504
  br label %2160

2160:                                             ; preds = %.loopexit, %2601, %2153
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

2161:                                             ; preds = %2153
  %2162 = extractvalue { i64, i1 } %2158, 0, !nosanitize !32
  store i64 %2162, ptr %2110, align 8, !tbaa !53
  br label %2163

2163:                                             ; preds = %2161, %2151
  %2164 = load i32, ptr %153, align 4, !tbaa !48
  %2165 = icmp slt i32 %2164, 2
  br i1 %2165, label %2134, label %2166, !llvm.loop !54

2166:                                             ; preds = %2163, %2102
  %2167 = phi i32 [ %2131, %2102 ], [ %2139, %2163 ]
  %2168 = phi i32 [ %2103, %2102 ], [ %2164, %2163 ]
  %2169 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %2167, ptr %2169, align 8, !tbaa !55
  %2170 = lshr i32 %2168, 1
  %2171 = zext nneg i32 %2170 to i64
  br label %2352

2172:                                             ; preds = %2418
  %2173 = load i32, ptr %153, align 4, !tbaa !48
  %2174 = sext i32 %2098 to i64
  %mv.h = icmp sge i32 %2173, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %2172
  br label %2175

2175:                                             ; preds = %2347, %.mv.ph.mv.fast
  %2176 = phi i32 [ %2173, %.mv.ph.mv.fast ], [ %2350, %2347 ]
  %2177 = phi i64 [ %2174, %.mv.ph.mv.fast ], [ %2287, %2347 ]
  %2178 = load i32, ptr %236, align 4, !tbaa !50
  %2179 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2176, i32 -1)
  %2180 = extractvalue { i32, i1 } %2179, 1, !nosanitize !32
  br i1 false, label %.loopexit, label %2181, !prof !34, !nosanitize !32

2181:                                             ; preds = %2175
  %2182 = extractvalue { i32, i1 } %2179, 0, !nosanitize !32
  store i32 %2182, ptr %153, align 4, !tbaa !48
  %2183 = sext i32 %2176 to i64
  %2184 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2183
  %2185 = load i32, ptr %2184, align 4, !tbaa !50
  store i32 %2185, ptr %236, align 4, !tbaa !50
  %2186 = sext i32 %2185 to i64
  %2187 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2186
  %2188 = icmp slt i32 %2182, 2
  br i1 %2188, label %2248, label %2189

2189:                                             ; preds = %2181
  %2190 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2186
  br label %2191

2191:                                             ; preds = %2239, %2189
  %2192 = phi i32 [ %2182, %2189 ], [ %2243, %2239 ]
  %2193 = phi i32 [ 2, %2189 ], [ %2242, %2239 ]
  %2194 = phi i32 [ 1, %2189 ], [ %2224, %2239 ]
  %2195 = icmp slt i32 %2193, %2192
  br i1 %2195, label %2198, label %2196

2196:                                             ; preds = %2191
  %2197 = sext i32 %2193 to i64
  br label %2222

2198:                                             ; preds = %2191
  %2199 = or disjoint i32 %2193, 1
  %2200 = sext i32 %2199 to i64
  %2201 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2200
  %2202 = load i32, ptr %2201, align 4, !tbaa !50
  %2203 = sext i32 %2202 to i64
  %2204 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2203
  %2205 = load i16, ptr %2204, align 2, !tbaa !28
  %2206 = sext i32 %2193 to i64
  %2207 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2206
  %2208 = load i32, ptr %2207, align 4, !tbaa !50
  %2209 = sext i32 %2208 to i64
  %2210 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2209
  %2211 = load i16, ptr %2210, align 2, !tbaa !28
  %2212 = icmp ult i16 %2205, %2211
  br i1 %2212, label %2221, label %2213

2213:                                             ; preds = %2198
  %2214 = icmp eq i16 %2205, %2211
  br i1 %2214, label %2215, label %2222

2215:                                             ; preds = %2213
  %2216 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2203
  %2217 = load i8, ptr %2216, align 1, !tbaa !28
  %2218 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2209
  %2219 = load i8, ptr %2218, align 1, !tbaa !28
  %2220 = icmp ugt i8 %2217, %2219
  br i1 %2220, label %2222, label %2221

2221:                                             ; preds = %2215, %2198
  br label %2222

2222:                                             ; preds = %2221, %2215, %2213, %2196
  %2223 = phi i64 [ %2197, %2196 ], [ %2200, %2221 ], [ %2206, %2215 ], [ %2206, %2213 ]
  %2224 = phi i32 [ %2193, %2196 ], [ %2199, %2221 ], [ %2193, %2215 ], [ %2193, %2213 ]
  %2225 = load i16, ptr %2190, align 2, !tbaa !28
  %2226 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2223
  %2227 = load i32, ptr %2226, align 4, !tbaa !50
  %2228 = sext i32 %2227 to i64
  %2229 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2228
  %2230 = load i16, ptr %2229, align 2, !tbaa !28
  %2231 = icmp ult i16 %2225, %2230
  br i1 %2231, label %2245, label %2232

2232:                                             ; preds = %2222
  %2233 = icmp eq i16 %2225, %2230
  br i1 %2233, label %2234, label %2239

2234:                                             ; preds = %2232
  %2235 = load i8, ptr %2187, align 1, !tbaa !28
  %2236 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2228
  %2237 = load i8, ptr %2236, align 1, !tbaa !28
  %2238 = icmp ugt i8 %2235, %2237
  br i1 %2238, label %2239, label %2245

2239:                                             ; preds = %2234, %2232
  %2240 = sext i32 %2194 to i64
  %2241 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2240
  store i32 %2227, ptr %2241, align 4, !tbaa !50
  %2242 = shl i32 %2224, 1
  %2243 = load i32, ptr %153, align 4, !tbaa !48
  %2244 = icmp sgt i32 %2242, %2243
  br i1 %2244, label %2245, label %2191, !llvm.loop !56

2245:                                             ; preds = %2239, %2234, %2222
  %2246 = phi i32 [ %2194, %2222 ], [ %2194, %2234 ], [ %2224, %2239 ]
  %2247 = sext i32 %2246 to i64
  br label %2248

2248:                                             ; preds = %2245, %2181
  %2249 = phi i64 [ 1, %2181 ], [ %2247, %2245 ]
  %2250 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2249
  store i32 %2185, ptr %2250, align 4, !tbaa !50
  %2251 = load i32, ptr %236, align 4, !tbaa !50
  %2252 = load i32, ptr %154, align 8, !tbaa !49
  %2253 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2252, i32 -1)
  %2254 = extractvalue { i32, i1 } %2253, 1, !nosanitize !32
  br i1 %2254, label %.loopexit, label %2255, !prof !34, !nosanitize !32

2255:                                             ; preds = %2248
  %2256 = extractvalue { i32, i1 } %2253, 0, !nosanitize !32
  store i32 %2256, ptr %154, align 8, !tbaa !49
  %2257 = sext i32 %2256 to i64
  %2258 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2257
  store i32 %2178, ptr %2258, align 4, !tbaa !50
  %2259 = load i32, ptr %154, align 8, !tbaa !49
  %2260 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2259, i32 -1)
  %2261 = extractvalue { i32, i1 } %2260, 1, !nosanitize !32
  br i1 %2261, label %.loopexit, label %2262, !prof !34, !nosanitize !32

2262:                                             ; preds = %2255
  %2263 = extractvalue { i32, i1 } %2260, 0, !nosanitize !32
  store i32 %2263, ptr %154, align 8, !tbaa !49
  %2264 = sext i32 %2263 to i64
  %2265 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2264
  store i32 %2251, ptr %2265, align 4, !tbaa !50
  %2266 = sext i32 %2178 to i64
  %2267 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2266
  %2268 = load i16, ptr %2267, align 2, !tbaa !28
  %2269 = sext i32 %2251 to i64
  %2270 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2269
  %2271 = load i16, ptr %2270, align 2, !tbaa !28
  %2272 = add i16 %2271, %2268
  %2273 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2177
  store i16 %2272, ptr %2273, align 2, !tbaa !28
  %2274 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2266
  %2275 = load i8, ptr %2274, align 1, !tbaa !28
  %2276 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2269
  %2277 = load i8, ptr %2276, align 1, !tbaa !28
  %2278 = tail call i8 @llvm.umax.i8(i8 %2275, i8 %2277)
  %2279 = add i8 %2278, 1
  %2280 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2177
  store i8 %2279, ptr %2280, align 1, !tbaa !28
  %2281 = trunc nsw i64 %2177 to i32
  %2282 = trunc i64 %2177 to i16
  %2283 = getelementptr inbounds nuw i8, ptr %2270, i64 2
  store i16 %2282, ptr %2283, align 2, !tbaa !28
  %2284 = getelementptr inbounds nuw i8, ptr %2267, i64 2
  store i16 %2282, ptr %2284, align 2, !tbaa !28
  %2285 = icmp eq i64 %2177, 2147483647
  br i1 %2285, label %.loopexit1, label %2286, !prof !34, !nosanitize !32

2286:                                             ; preds = %2262
  %2287 = add nsw i64 %2177, 1
  store i32 %2281, ptr %236, align 4, !tbaa !50
  %2288 = load i32, ptr %153, align 4, !tbaa !48
  %2289 = icmp slt i32 %2288, 2
  br i1 %2289, label %2347, label %.preheader.mv.fast

2290:                                             ; preds = %.preheader.mv.fast, %2338
  %2291 = phi i32 [ %2342, %2338 ], [ %2288, %.preheader.mv.fast ]
  %2292 = phi i32 [ %2341, %2338 ], [ 2, %.preheader.mv.fast ]
  %2293 = phi i32 [ %2323, %2338 ], [ 1, %.preheader.mv.fast ]
  %2294 = icmp slt i32 %2292, %2291
  br i1 %2294, label %2297, label %2295

2295:                                             ; preds = %2290
  %2296 = sext i32 %2292 to i64
  br label %2321

2297:                                             ; preds = %2290
  %2298 = or disjoint i32 %2292, 1
  %2299 = sext i32 %2298 to i64
  %2300 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2299
  %2301 = load i32, ptr %2300, align 4, !tbaa !50
  %2302 = sext i32 %2301 to i64
  %2303 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2302
  %2304 = load i16, ptr %2303, align 2, !tbaa !28
  %2305 = sext i32 %2292 to i64
  %2306 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2305
  %2307 = load i32, ptr %2306, align 4, !tbaa !50
  %2308 = sext i32 %2307 to i64
  %2309 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2308
  %2310 = load i16, ptr %2309, align 2, !tbaa !28
  %2311 = icmp ult i16 %2304, %2310
  br i1 %2311, label %2320, label %2312

2312:                                             ; preds = %2297
  %2313 = icmp eq i16 %2304, %2310
  br i1 %2313, label %2314, label %2321

2314:                                             ; preds = %2312
  %2315 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2302
  %2316 = load i8, ptr %2315, align 1, !tbaa !28
  %2317 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2308
  %2318 = load i8, ptr %2317, align 1, !tbaa !28
  %2319 = icmp ugt i8 %2316, %2318
  br i1 %2319, label %2321, label %2320

2320:                                             ; preds = %2314, %2297
  br label %2321

2321:                                             ; preds = %2320, %2314, %2312, %2295
  %2322 = phi i64 [ %2296, %2295 ], [ %2299, %2320 ], [ %2305, %2314 ], [ %2305, %2312 ]
  %2323 = phi i32 [ %2292, %2295 ], [ %2298, %2320 ], [ %2292, %2314 ], [ %2292, %2312 ]
  %2324 = load i16, ptr %2273, align 2, !tbaa !28
  %2325 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2322
  %2326 = load i32, ptr %2325, align 4, !tbaa !50
  %2327 = sext i32 %2326 to i64
  %2328 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2327
  %2329 = load i16, ptr %2328, align 2, !tbaa !28
  %2330 = icmp ult i16 %2324, %2329
  br i1 %2330, label %2344, label %2331

2331:                                             ; preds = %2321
  %2332 = icmp eq i16 %2324, %2329
  br i1 %2332, label %2333, label %2338

2333:                                             ; preds = %2331
  %2334 = load i8, ptr %2280, align 1, !tbaa !28
  %2335 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2327
  %2336 = load i8, ptr %2335, align 1, !tbaa !28
  %2337 = icmp ugt i8 %2334, %2336
  br i1 %2337, label %2338, label %2344

2338:                                             ; preds = %2333, %2331
  %2339 = sext i32 %2293 to i64
  %2340 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2339
  store i32 %2326, ptr %2340, align 4, !tbaa !50
  %2341 = shl i32 %2323, 1
  %2342 = load i32, ptr %153, align 4, !tbaa !48
  %2343 = icmp sgt i32 %2341, %2342
  br i1 %2343, label %2344, label %2290, !llvm.loop !56

2344:                                             ; preds = %2338, %2333, %2321
  %2345 = phi i32 [ %2293, %2321 ], [ %2293, %2333 ], [ %2323, %2338 ]
  %2346 = sext i32 %2345 to i64
  br label %2347

2347:                                             ; preds = %2344, %2286
  %2348 = phi i64 [ 1, %2286 ], [ %2346, %2344 ]
  %2349 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2348
  store i32 %2281, ptr %2349, align 4, !tbaa !50
  %2350 = load i32, ptr %153, align 4, !tbaa !48
  %2351 = icmp sgt i32 %2350, 1
  br i1 %2351, label %2175, label %2601, !llvm.loop !57

.preheader.mv.fast:                               ; preds = %2286
  br label %2290

.mv.ph:                                           ; preds = %2172
  br label %2424

2352:                                             ; preds = %2418, %2166
  %2353 = phi i64 [ %2171, %2166 ], [ %2422, %2418 ]
  %2354 = getelementptr inbounds nuw [573 x i32], ptr %230, i64 0, i64 %2353
  %2355 = load i32, ptr %2354, align 4, !tbaa !50
  %2356 = sext i32 %2355 to i64
  %2357 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2356
  %2358 = load i32, ptr %153, align 4, !tbaa !48
  %2359 = trunc i64 %2353 to i32
  %2360 = shl i32 %2359, 1
  %2361 = icmp sgt i32 %2360, %2358
  br i1 %2361, label %2418, label %2362

2362:                                             ; preds = %2352
  %2363 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2356
  br label %2364

2364:                                             ; preds = %2412, %2362
  %2365 = phi i32 [ %2358, %2362 ], [ %2416, %2412 ]
  %2366 = phi i32 [ %2360, %2362 ], [ %2415, %2412 ]
  %2367 = phi i32 [ %2359, %2362 ], [ %2397, %2412 ]
  %2368 = icmp slt i32 %2366, %2365
  br i1 %2368, label %2371, label %2369

2369:                                             ; preds = %2364
  %2370 = sext i32 %2366 to i64
  br label %2395

2371:                                             ; preds = %2364
  %2372 = or disjoint i32 %2366, 1
  %2373 = sext i32 %2372 to i64
  %2374 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2373
  %2375 = load i32, ptr %2374, align 4, !tbaa !50
  %2376 = sext i32 %2375 to i64
  %2377 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2376
  %2378 = load i16, ptr %2377, align 2, !tbaa !28
  %2379 = sext i32 %2366 to i64
  %2380 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2379
  %2381 = load i32, ptr %2380, align 4, !tbaa !50
  %2382 = sext i32 %2381 to i64
  %2383 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2382
  %2384 = load i16, ptr %2383, align 2, !tbaa !28
  %2385 = icmp ult i16 %2378, %2384
  br i1 %2385, label %2394, label %2386

2386:                                             ; preds = %2371
  %2387 = icmp eq i16 %2378, %2384
  br i1 %2387, label %2388, label %2395

2388:                                             ; preds = %2386
  %2389 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2376
  %2390 = load i8, ptr %2389, align 1, !tbaa !28
  %2391 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2382
  %2392 = load i8, ptr %2391, align 1, !tbaa !28
  %2393 = icmp ugt i8 %2390, %2392
  br i1 %2393, label %2395, label %2394

2394:                                             ; preds = %2388, %2371
  br label %2395

2395:                                             ; preds = %2394, %2388, %2386, %2369
  %2396 = phi i64 [ %2370, %2369 ], [ %2373, %2394 ], [ %2379, %2388 ], [ %2379, %2386 ]
  %2397 = phi i32 [ %2366, %2369 ], [ %2372, %2394 ], [ %2366, %2388 ], [ %2366, %2386 ]
  %2398 = load i16, ptr %2363, align 2, !tbaa !28
  %2399 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2396
  %2400 = load i32, ptr %2399, align 4, !tbaa !50
  %2401 = sext i32 %2400 to i64
  %2402 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2401
  %2403 = load i16, ptr %2402, align 2, !tbaa !28
  %2404 = icmp ult i16 %2398, %2403
  br i1 %2404, label %2418, label %2405

2405:                                             ; preds = %2395
  %2406 = icmp eq i16 %2398, %2403
  br i1 %2406, label %2407, label %2412

2407:                                             ; preds = %2405
  %2408 = load i8, ptr %2357, align 1, !tbaa !28
  %2409 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2401
  %2410 = load i8, ptr %2409, align 1, !tbaa !28
  %2411 = icmp ugt i8 %2408, %2410
  br i1 %2411, label %2412, label %2418

2412:                                             ; preds = %2407, %2405
  %2413 = sext i32 %2367 to i64
  %2414 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2413
  store i32 %2400, ptr %2414, align 4, !tbaa !50
  %2415 = shl i32 %2397, 1
  %2416 = load i32, ptr %153, align 4, !tbaa !48
  %2417 = icmp sgt i32 %2415, %2416
  br i1 %2417, label %2418, label %2364, !llvm.loop !56

2418:                                             ; preds = %2412, %2407, %2395, %2352
  %2419 = phi i32 [ %2359, %2352 ], [ %2397, %2412 ], [ %2367, %2407 ], [ %2367, %2395 ]
  %2420 = sext i32 %2419 to i64
  %2421 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2420
  store i32 %2355, ptr %2421, align 4, !tbaa !50
  %2422 = add nsw i64 %2353, -1
  %2423 = icmp sgt i64 %2353, 1
  br i1 %2423, label %2352, label %2172, !llvm.loop !58

2424:                                             ; preds = %2596, %.mv.ph
  %2425 = phi i32 [ %2173, %.mv.ph ], [ %2599, %2596 ]
  %2426 = phi i64 [ %2174, %.mv.ph ], [ %2536, %2596 ]
  %2427 = load i32, ptr %236, align 4, !tbaa !50
  %2428 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2425, i32 -1)
  %2429 = extractvalue { i32, i1 } %2428, 1, !nosanitize !32
  br i1 %2429, label %.loopexit, label %2430, !prof !34, !nosanitize !32

2430:                                             ; preds = %2424
  %2431 = extractvalue { i32, i1 } %2428, 0, !nosanitize !32
  store i32 %2431, ptr %153, align 4, !tbaa !48
  %2432 = sext i32 %2425 to i64
  %2433 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2432
  %2434 = load i32, ptr %2433, align 4, !tbaa !50
  store i32 %2434, ptr %236, align 4, !tbaa !50
  %2435 = sext i32 %2434 to i64
  %2436 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2435
  %2437 = icmp slt i32 %2431, 2
  br i1 %2437, label %2497, label %2438

2438:                                             ; preds = %2430
  %2439 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2435
  br label %2440

2440:                                             ; preds = %2488, %2438
  %2441 = phi i32 [ %2431, %2438 ], [ %2492, %2488 ]
  %2442 = phi i32 [ 2, %2438 ], [ %2491, %2488 ]
  %2443 = phi i32 [ 1, %2438 ], [ %2473, %2488 ]
  %2444 = icmp slt i32 %2442, %2441
  br i1 %2444, label %2447, label %2445

2445:                                             ; preds = %2440
  %2446 = sext i32 %2442 to i64
  br label %2471

2447:                                             ; preds = %2440
  %2448 = or disjoint i32 %2442, 1
  %2449 = sext i32 %2448 to i64
  %2450 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2449
  %2451 = load i32, ptr %2450, align 4, !tbaa !50
  %2452 = sext i32 %2451 to i64
  %2453 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2452
  %2454 = load i16, ptr %2453, align 2, !tbaa !28
  %2455 = sext i32 %2442 to i64
  %2456 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2455
  %2457 = load i32, ptr %2456, align 4, !tbaa !50
  %2458 = sext i32 %2457 to i64
  %2459 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2458
  %2460 = load i16, ptr %2459, align 2, !tbaa !28
  %2461 = icmp ult i16 %2454, %2460
  br i1 %2461, label %2470, label %2462

2462:                                             ; preds = %2447
  %2463 = icmp eq i16 %2454, %2460
  br i1 %2463, label %2464, label %2471

2464:                                             ; preds = %2462
  %2465 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2452
  %2466 = load i8, ptr %2465, align 1, !tbaa !28
  %2467 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2458
  %2468 = load i8, ptr %2467, align 1, !tbaa !28
  %2469 = icmp ugt i8 %2466, %2468
  br i1 %2469, label %2471, label %2470

2470:                                             ; preds = %2464, %2447
  br label %2471

2471:                                             ; preds = %2470, %2464, %2462, %2445
  %2472 = phi i64 [ %2446, %2445 ], [ %2449, %2470 ], [ %2455, %2464 ], [ %2455, %2462 ]
  %2473 = phi i32 [ %2442, %2445 ], [ %2448, %2470 ], [ %2442, %2464 ], [ %2442, %2462 ]
  %2474 = load i16, ptr %2439, align 2, !tbaa !28
  %2475 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2472
  %2476 = load i32, ptr %2475, align 4, !tbaa !50
  %2477 = sext i32 %2476 to i64
  %2478 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2477
  %2479 = load i16, ptr %2478, align 2, !tbaa !28
  %2480 = icmp ult i16 %2474, %2479
  br i1 %2480, label %2494, label %2481

2481:                                             ; preds = %2471
  %2482 = icmp eq i16 %2474, %2479
  br i1 %2482, label %2483, label %2488

2483:                                             ; preds = %2481
  %2484 = load i8, ptr %2436, align 1, !tbaa !28
  %2485 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2477
  %2486 = load i8, ptr %2485, align 1, !tbaa !28
  %2487 = icmp ugt i8 %2484, %2486
  br i1 %2487, label %2488, label %2494

2488:                                             ; preds = %2483, %2481
  %2489 = sext i32 %2443 to i64
  %2490 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2489
  store i32 %2476, ptr %2490, align 4, !tbaa !50
  %2491 = shl i32 %2473, 1
  %2492 = load i32, ptr %153, align 4, !tbaa !48
  %2493 = icmp sgt i32 %2491, %2492
  br i1 %2493, label %2494, label %2440, !llvm.loop !56

2494:                                             ; preds = %2488, %2483, %2471
  %2495 = phi i32 [ %2443, %2471 ], [ %2443, %2483 ], [ %2473, %2488 ]
  %2496 = sext i32 %2495 to i64
  br label %2497

2497:                                             ; preds = %2494, %2430
  %2498 = phi i64 [ 1, %2430 ], [ %2496, %2494 ]
  %2499 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2498
  store i32 %2434, ptr %2499, align 4, !tbaa !50
  %2500 = load i32, ptr %236, align 4, !tbaa !50
  %2501 = load i32, ptr %154, align 8, !tbaa !49
  %2502 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2501, i32 -1)
  %2503 = extractvalue { i32, i1 } %2502, 1, !nosanitize !32
  br i1 %2503, label %.loopexit, label %2504, !prof !34, !nosanitize !32

2504:                                             ; preds = %2497
  %2505 = extractvalue { i32, i1 } %2502, 0, !nosanitize !32
  store i32 %2505, ptr %154, align 8, !tbaa !49
  %2506 = sext i32 %2505 to i64
  %2507 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2506
  store i32 %2427, ptr %2507, align 4, !tbaa !50
  %2508 = load i32, ptr %154, align 8, !tbaa !49
  %2509 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2508, i32 -1)
  %2510 = extractvalue { i32, i1 } %2509, 1, !nosanitize !32
  br i1 %2510, label %.loopexit, label %2511, !prof !34, !nosanitize !32

2511:                                             ; preds = %2504
  %2512 = extractvalue { i32, i1 } %2509, 0, !nosanitize !32
  store i32 %2512, ptr %154, align 8, !tbaa !49
  %2513 = sext i32 %2512 to i64
  %2514 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2513
  store i32 %2500, ptr %2514, align 4, !tbaa !50
  %2515 = sext i32 %2427 to i64
  %2516 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2515
  %2517 = load i16, ptr %2516, align 2, !tbaa !28
  %2518 = sext i32 %2500 to i64
  %2519 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2518
  %2520 = load i16, ptr %2519, align 2, !tbaa !28
  %2521 = add i16 %2520, %2517
  %2522 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2426
  store i16 %2521, ptr %2522, align 2, !tbaa !28
  %2523 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2515
  %2524 = load i8, ptr %2523, align 1, !tbaa !28
  %2525 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2518
  %2526 = load i8, ptr %2525, align 1, !tbaa !28
  %2527 = tail call i8 @llvm.umax.i8(i8 %2524, i8 %2526)
  %2528 = add i8 %2527, 1
  %2529 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2426
  store i8 %2528, ptr %2529, align 1, !tbaa !28
  %2530 = trunc nsw i64 %2426 to i32
  %2531 = trunc i64 %2426 to i16
  %2532 = getelementptr inbounds nuw i8, ptr %2519, i64 2
  store i16 %2531, ptr %2532, align 2, !tbaa !28
  %2533 = getelementptr inbounds nuw i8, ptr %2516, i64 2
  store i16 %2531, ptr %2533, align 2, !tbaa !28
  %2534 = icmp eq i64 %2426, 2147483647
  br i1 %2534, label %.loopexit1, label %2535, !prof !34, !nosanitize !32

2535:                                             ; preds = %2511
  %2536 = add nsw i64 %2426, 1
  store i32 %2530, ptr %236, align 4, !tbaa !50
  %2537 = load i32, ptr %153, align 4, !tbaa !48
  %2538 = icmp slt i32 %2537, 2
  br i1 %2538, label %2596, label %.preheader

.preheader:                                       ; preds = %2535
  br label %2539

2539:                                             ; preds = %.preheader, %2587
  %2540 = phi i32 [ %2591, %2587 ], [ %2537, %.preheader ]
  %2541 = phi i32 [ %2590, %2587 ], [ 2, %.preheader ]
  %2542 = phi i32 [ %2572, %2587 ], [ 1, %.preheader ]
  %2543 = icmp slt i32 %2541, %2540
  br i1 %2543, label %2546, label %2544

2544:                                             ; preds = %2539
  %2545 = sext i32 %2541 to i64
  br label %2570

2546:                                             ; preds = %2539
  %2547 = or disjoint i32 %2541, 1
  %2548 = sext i32 %2547 to i64
  %2549 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2548
  %2550 = load i32, ptr %2549, align 4, !tbaa !50
  %2551 = sext i32 %2550 to i64
  %2552 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2551
  %2553 = load i16, ptr %2552, align 2, !tbaa !28
  %2554 = sext i32 %2541 to i64
  %2555 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2554
  %2556 = load i32, ptr %2555, align 4, !tbaa !50
  %2557 = sext i32 %2556 to i64
  %2558 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2557
  %2559 = load i16, ptr %2558, align 2, !tbaa !28
  %2560 = icmp ult i16 %2553, %2559
  br i1 %2560, label %2569, label %2561

2561:                                             ; preds = %2546
  %2562 = icmp eq i16 %2553, %2559
  br i1 %2562, label %2563, label %2570

2563:                                             ; preds = %2561
  %2564 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2551
  %2565 = load i8, ptr %2564, align 1, !tbaa !28
  %2566 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2557
  %2567 = load i8, ptr %2566, align 1, !tbaa !28
  %2568 = icmp ugt i8 %2565, %2567
  br i1 %2568, label %2570, label %2569

2569:                                             ; preds = %2563, %2546
  br label %2570

2570:                                             ; preds = %2569, %2563, %2561, %2544
  %2571 = phi i64 [ %2545, %2544 ], [ %2548, %2569 ], [ %2554, %2563 ], [ %2554, %2561 ]
  %2572 = phi i32 [ %2541, %2544 ], [ %2547, %2569 ], [ %2541, %2563 ], [ %2541, %2561 ]
  %2573 = load i16, ptr %2522, align 2, !tbaa !28
  %2574 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2571
  %2575 = load i32, ptr %2574, align 4, !tbaa !50
  %2576 = sext i32 %2575 to i64
  %2577 = getelementptr inbounds %struct.ct_data_s, ptr %2093, i64 %2576
  %2578 = load i16, ptr %2577, align 2, !tbaa !28
  %2579 = icmp ult i16 %2573, %2578
  br i1 %2579, label %2593, label %2580

2580:                                             ; preds = %2570
  %2581 = icmp eq i16 %2573, %2578
  br i1 %2581, label %2582, label %2587

2582:                                             ; preds = %2580
  %2583 = load i8, ptr %2529, align 1, !tbaa !28
  %2584 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2576
  %2585 = load i8, ptr %2584, align 1, !tbaa !28
  %2586 = icmp ugt i8 %2583, %2585
  br i1 %2586, label %2587, label %2593

2587:                                             ; preds = %2582, %2580
  %2588 = sext i32 %2542 to i64
  %2589 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2588
  store i32 %2575, ptr %2589, align 4, !tbaa !50
  %2590 = shl i32 %2572, 1
  %2591 = load i32, ptr %153, align 4, !tbaa !48
  %2592 = icmp sgt i32 %2590, %2591
  br i1 %2592, label %2593, label %2539, !llvm.loop !56

2593:                                             ; preds = %2587, %2582, %2570
  %2594 = phi i32 [ %2542, %2570 ], [ %2542, %2582 ], [ %2572, %2587 ]
  %2595 = sext i32 %2594 to i64
  br label %2596

2596:                                             ; preds = %2593, %2535
  %2597 = phi i64 [ 1, %2535 ], [ %2595, %2593 ]
  %2598 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2597
  store i32 %2530, ptr %2598, align 4, !tbaa !50
  %2599 = load i32, ptr %153, align 4, !tbaa !48
  %2600 = icmp sgt i32 %2599, 1
  br i1 %2600, label %2424, label %2601, !llvm.loop !57

2601:                                             ; preds = %2347, %2596
  %2602 = load i32, ptr %154, align 8, !tbaa !49
  %2603 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2602, i32 -1)
  %2604 = extractvalue { i32, i1 } %2603, 1, !nosanitize !32
  br i1 %2604, label %2160, label %2605, !prof !34, !nosanitize !32

2605:                                             ; preds = %2601
  %2606 = extractvalue { i32, i1 } %2603, 0, !nosanitize !32
  %2607 = load i32, ptr %236, align 4, !tbaa !50
  store i32 %2606, ptr %154, align 8, !tbaa !49
  %2608 = sext i32 %2606 to i64
  %2609 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2608
  store i32 %2607, ptr %2609, align 4, !tbaa !50
  %2610 = load ptr, ptr %2092, align 8, !tbaa !42
  %2611 = load i32, ptr %2169, align 8, !tbaa !55
  %2612 = load ptr, ptr %2094, align 8, !tbaa !43
  %2613 = load ptr, ptr %2612, align 8, !tbaa !44
  %2614 = getelementptr inbounds nuw i8, ptr %2612, i64 8
  %2615 = load ptr, ptr %2614, align 8, !tbaa !59
  %2616 = getelementptr inbounds nuw i8, ptr %2612, i64 16
  %2617 = load i32, ptr %2616, align 8, !tbaa !60
  %2618 = getelementptr inbounds nuw i8, ptr %2612, i64 24
  %2619 = load i32, ptr %2618, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %683, i8 0, i64 32, i1 false), !tbaa !62
  %2620 = load i32, ptr %154, align 8, !tbaa !49
  %2621 = sext i32 %2620 to i64
  %2622 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2621
  %2623 = load i32, ptr %2622, align 4, !tbaa !50
  %2624 = sext i32 %2623 to i64
  %2625 = getelementptr inbounds %struct.ct_data_s, ptr %2610, i64 %2624, i32 1
  store i16 0, ptr %2625, align 2, !tbaa !28
  %2626 = load i32, ptr %154, align 8, !tbaa !49
  %2627 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2626, i32 1), !nosanitize !32
  %2628 = extractvalue { i32, i1 } %2627, 1, !nosanitize !32
  br i1 %2628, label %2629, label %2630, !prof !34, !nosanitize !32

2629:                                             ; preds = %2678, %2653, %2605
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

2630:                                             ; preds = %2605
  %2631 = extractvalue { i32, i1 } %2627, 0
  %2632 = icmp slt i32 %2631, 573
  br i1 %2632, label %2633, label %2812

2633:                                             ; preds = %2630
  %2634 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2635 = icmp eq ptr %2613, null
  %2636 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2637 = sext i32 %2631 to i64
  br label %2638

2638:                                             ; preds = %2710, %2633
  %2639 = phi i64 [ %2637, %2633 ], [ %2711, %2710 ]
  %2640 = phi i32 [ 0, %2633 ], [ %2660, %2710 ]
  %2641 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2639
  %2642 = load i32, ptr %2641, align 4, !tbaa !50
  %2643 = sext i32 %2642 to i64
  %2644 = getelementptr inbounds %struct.ct_data_s, ptr %2610, i64 %2643
  %2645 = getelementptr inbounds nuw i8, ptr %2644, i64 2
  %2646 = load i16, ptr %2645, align 2, !tbaa !28
  %2647 = zext i16 %2646 to i64
  %2648 = getelementptr inbounds nuw %struct.ct_data_s, ptr %2610, i64 %2647, i32 1
  %2649 = load i16, ptr %2648, align 2, !tbaa !28
  %2650 = zext i16 %2649 to i32
  %2651 = add nuw nsw i32 %2650, 1
  %2652 = icmp sgt i32 %2619, %2650
  br i1 %2652, label %2658, label %2653

2653:                                             ; preds = %2638
  %2654 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2640, i32 1), !nosanitize !32
  %2655 = extractvalue { i32, i1 } %2654, 1, !nosanitize !32
  br i1 %2655, label %2629, label %2656, !prof !34, !nosanitize !32

2656:                                             ; preds = %2653
  %2657 = extractvalue { i32, i1 } %2654, 0, !nosanitize !32
  br label %2658

2658:                                             ; preds = %2656, %2638
  %2659 = phi i32 [ %2619, %2656 ], [ %2651, %2638 ]
  %2660 = phi i32 [ %2657, %2656 ], [ %2640, %2638 ]
  %2661 = trunc i32 %2659 to i16
  store i16 %2661, ptr %2645, align 2, !tbaa !28
  %2662 = icmp sgt i32 %2642, %2611
  br i1 %2662, label %2710, label %2663

2663:                                             ; preds = %2658
  %2664 = sext i32 %2659 to i64
  %2665 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %2664
  %2666 = load i16, ptr %2665, align 2, !tbaa !62
  %2667 = add i16 %2666, 1
  store i16 %2667, ptr %2665, align 2, !tbaa !62
  %2668 = icmp slt i32 %2642, %2617
  br i1 %2668, label %2678, label %2669

2669:                                             ; preds = %2663
  %2670 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2642, i32 %2617), !nosanitize !32
  %2671 = extractvalue { i32, i1 } %2670, 1, !nosanitize !32
  br i1 %2671, label %2672, label %2673, !prof !34, !nosanitize !32

2672:                                             ; preds = %2769, %2738, %2730, %2716, %2669
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

2673:                                             ; preds = %2669
  %2674 = extractvalue { i32, i1 } %2670, 0, !nosanitize !32
  %2675 = sext i32 %2674 to i64
  %2676 = getelementptr inbounds i32, ptr %2615, i64 %2675
  %2677 = load i32, ptr %2676, align 4, !tbaa !50
  br label %2678

2678:                                             ; preds = %2673, %2663
  %2679 = phi i32 [ %2677, %2673 ], [ 0, %2663 ]
  %2680 = load i16, ptr %2644, align 2, !tbaa !28
  %2681 = zext i16 %2680 to i64
  %2682 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2659, i32 %2679), !nosanitize !32
  %2683 = extractvalue { i32, i1 } %2682, 1, !nosanitize !32
  br i1 %2683, label %2629, label %2684, !prof !34, !nosanitize !32

2684:                                             ; preds = %2678
  %2685 = extractvalue { i32, i1 } %2682, 0, !nosanitize !32
  %2686 = zext i32 %2685 to i64
  %2687 = mul nuw nsw i64 %2686, %2681
  %2688 = load i64, ptr %2634, align 8, !tbaa !52
  %2689 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2688, i64 %2687), !nosanitize !32
  %2690 = extractvalue { i64, i1 } %2689, 1, !nosanitize !32
  br i1 %2690, label %2691, label %2692, !prof !34, !nosanitize !32

2691:                                             ; preds = %2694, %2684
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2692:                                             ; preds = %2684
  %2693 = extractvalue { i64, i1 } %2689, 0, !nosanitize !32
  store i64 %2693, ptr %2634, align 8, !tbaa !52
  br i1 %2635, label %2710, label %2694

2694:                                             ; preds = %2692
  %2695 = getelementptr inbounds %struct.ct_data_s, ptr %2613, i64 %2643, i32 1
  %2696 = load i16, ptr %2695, align 2, !tbaa !28
  %2697 = zext i16 %2696 to i32
  %2698 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2697, i32 %2679), !nosanitize !32
  %2699 = extractvalue { i32, i1 } %2698, 1, !nosanitize !32
  br i1 %2699, label %2691, label %2700, !prof !34, !nosanitize !32

2700:                                             ; preds = %2694
  %2701 = extractvalue { i32, i1 } %2698, 0, !nosanitize !32
  %2702 = zext i32 %2701 to i64
  %2703 = mul nuw nsw i64 %2702, %2681
  %2704 = load i64, ptr %2636, align 8, !tbaa !53
  %2705 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2704, i64 %2703), !nosanitize !32
  %2706 = extractvalue { i64, i1 } %2705, 1, !nosanitize !32
  br i1 %2706, label %2707, label %2708, !prof !34, !nosanitize !32

2707:                                             ; preds = %2733, %2700
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2708:                                             ; preds = %2700
  %2709 = extractvalue { i64, i1 } %2705, 0, !nosanitize !32
  store i64 %2709, ptr %2636, align 8, !tbaa !53
  br label %2710

2710:                                             ; preds = %2708, %2692, %2658
  %2711 = add nsw i64 %2639, 1
  %2712 = and i64 %2711, 4294967295
  %2713 = icmp eq i64 %2712, 573
  br i1 %2713, label %2714, label %2638, !llvm.loop !63

2714:                                             ; preds = %2710
  %2715 = icmp eq i32 %2660, 0
  br i1 %2715, label %2812, label %2716

2716:                                             ; preds = %2714
  %2717 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2619, i32 -1)
  %2718 = extractvalue { i32, i1 } %2717, 1, !nosanitize !32
  %2719 = sext i32 %2619 to i64
  %2720 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %2719
  br i1 %2718, label %2672, label %2721, !prof !34, !nosanitize !32

2721:                                             ; preds = %2748, %2716
  %2722 = phi i32 [ %2749, %2748 ], [ %2660, %2716 ]
  br label %2723

2723:                                             ; preds = %2730, %2721
  %2724 = phi { i32, i1 } [ %2731, %2730 ], [ %2717, %2721 ]
  %2725 = extractvalue { i32, i1 } %2724, 0
  %2726 = sext i32 %2725 to i64
  %2727 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %2726
  %2728 = load i16, ptr %2727, align 2, !tbaa !62
  %2729 = icmp eq i16 %2728, 0
  br i1 %2729, label %2730, label %2733

2730:                                             ; preds = %2723
  %2731 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2725, i32 -1)
  %2732 = extractvalue { i32, i1 } %2731, 1, !nosanitize !32
  br i1 %2732, label %2672, label %2723, !prof !34, !llvm.loop !65, !nosanitize !32

2733:                                             ; preds = %2723
  %2734 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %2726
  %2735 = add i16 %2728, -1
  store i16 %2735, ptr %2734, align 2, !tbaa !62
  %2736 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2725, i32 1), !nosanitize !32
  %2737 = extractvalue { i32, i1 } %2736, 1, !nosanitize !32
  br i1 %2737, label %2707, label %2738, !prof !34, !nosanitize !32

2738:                                             ; preds = %2733
  %2739 = extractvalue { i32, i1 } %2736, 0, !nosanitize !32
  %2740 = sext i32 %2739 to i64
  %2741 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %2740
  %2742 = load i16, ptr %2741, align 2, !tbaa !62
  %2743 = add i16 %2742, 2
  store i16 %2743, ptr %2741, align 2, !tbaa !62
  %2744 = load i16, ptr %2720, align 2, !tbaa !62
  %2745 = add i16 %2744, -1
  store i16 %2745, ptr %2720, align 2, !tbaa !62
  %2746 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2722, i32 -2)
  %2747 = extractvalue { i32, i1 } %2746, 1, !nosanitize !32
  br i1 %2747, label %2672, label %2748, !prof !34, !nosanitize !32

2748:                                             ; preds = %2738
  %2749 = extractvalue { i32, i1 } %2746, 0, !nosanitize !32
  %2750 = icmp sgt i32 %2749, 0
  br i1 %2750, label %2721, label %2751, !llvm.loop !64

2751:                                             ; preds = %2748
  %2752 = icmp eq i32 %2619, 0
  br i1 %2752, label %2812, label %2753

2753:                                             ; preds = %2808, %2751
  %2754 = phi i64 [ %2809, %2808 ], [ %2719, %2751 ]
  %2755 = phi i32 [ %2763, %2808 ], [ 573, %2751 ]
  %2756 = getelementptr inbounds [16 x i16], ptr %683, i64 0, i64 %2754
  %2757 = load i16, ptr %2756, align 2, !tbaa !62
  %2758 = icmp eq i16 %2757, 0
  br i1 %2758, label %2762, label %2759

2759:                                             ; preds = %2753
  %2760 = zext i16 %2757 to i32
  %2761 = trunc i64 %2754 to i16
  br label %2766

2762:                                             ; preds = %2805, %2753
  %2763 = phi i32 [ %2755, %2753 ], [ %2774, %2805 ]
  %2764 = and i64 %2754, 4294967295
  %2765 = icmp eq i64 %2764, 2147483648
  br i1 %2765, label %2789, label %2808, !prof !34, !nosanitize !32

2766:                                             ; preds = %2805, %2759
  %2767 = phi i32 [ %2755, %2759 ], [ %2774, %2805 ]
  %2768 = phi i32 [ %2760, %2759 ], [ %2806, %2805 ]
  br label %2769

2769:                                             ; preds = %2773, %2766
  %2770 = phi i32 [ %2774, %2773 ], [ %2767, %2766 ]
  %2771 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2770, i32 -1)
  %2772 = extractvalue { i32, i1 } %2771, 1, !nosanitize !32
  br i1 %2772, label %2672, label %2773, !prof !34, !nosanitize !32

2773:                                             ; preds = %2769
  %2774 = extractvalue { i32, i1 } %2771, 0, !nosanitize !32
  %2775 = sext i32 %2774 to i64
  %2776 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2775
  %2777 = load i32, ptr %2776, align 4, !tbaa !50
  %2778 = icmp sgt i32 %2777, %2611
  br i1 %2778, label %2769, label %2779, !llvm.loop !66

2779:                                             ; preds = %2773
  %2780 = sext i32 %2777 to i64
  %2781 = getelementptr inbounds %struct.ct_data_s, ptr %2610, i64 %2780
  %2782 = getelementptr inbounds nuw i8, ptr %2781, i64 2
  %2783 = load i16, ptr %2782, align 2, !tbaa !28
  %2784 = zext i16 %2783 to i64
  %2785 = icmp eq i64 %2754, %2784
  br i1 %2785, label %2805, label %2786

2786:                                             ; preds = %2779
  %2787 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2754, i64 %2784), !nosanitize !32
  %2788 = extractvalue { i64, i1 } %2787, 1, !nosanitize !32
  br i1 %2788, label %2789, label %2790, !prof !34, !nosanitize !32

2789:                                             ; preds = %2786, %2762
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

2790:                                             ; preds = %2786
  %2791 = extractvalue { i64, i1 } %2787, 0, !nosanitize !32
  %2792 = load i16, ptr %2781, align 2, !tbaa !28
  %2793 = zext i16 %2792 to i64
  %2794 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2791, i64 %2793), !nosanitize !32
  %2795 = extractvalue { i64, i1 } %2794, 1, !nosanitize !32
  br i1 %2795, label %2796, label %2797, !prof !34, !nosanitize !32

2796:                                             ; preds = %2790
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !32
  unreachable, !nosanitize !32

2797:                                             ; preds = %2790
  %2798 = extractvalue { i64, i1 } %2794, 0, !nosanitize !32
  %2799 = load i64, ptr %2634, align 8, !tbaa !52
  %2800 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2799, i64 %2798), !nosanitize !32
  %2801 = extractvalue { i64, i1 } %2800, 1, !nosanitize !32
  br i1 %2801, label %2802, label %2803, !prof !34, !nosanitize !32

2802:                                             ; preds = %2797
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2803:                                             ; preds = %2797
  %2804 = extractvalue { i64, i1 } %2800, 0, !nosanitize !32
  store i64 %2804, ptr %2634, align 8, !tbaa !52
  store i16 %2761, ptr %2782, align 2, !tbaa !28
  br label %2805

2805:                                             ; preds = %2803, %2779
  %2806 = add nsw i32 %2768, -1
  %2807 = icmp eq i32 %2806, 0
  br i1 %2807, label %2762, label %2766, !llvm.loop !66

2808:                                             ; preds = %2762
  %2809 = add nsw i64 %2754, -1
  %2810 = and i64 %2809, 4294967295
  %2811 = icmp eq i64 %2810, 0
  br i1 %2811, label %2812, label %2753, !llvm.loop !67

2812:                                             ; preds = %2808, %2751, %2714, %2630
  call void @llvm.lifetime.start.p0(ptr %5)
  %2813 = load i16, ptr %683, align 2, !tbaa !62
  %2814 = zext i16 %2813 to i32
  %2815 = shl nuw nsw i32 %2814, 1
  %2816 = trunc i32 %2815 to i16
  %2817 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %2816, ptr %2817, align 2, !tbaa !62
  %2818 = load i16, ptr %912, align 2, !tbaa !62
  %2819 = zext i16 %2818 to i32
  %2820 = add nuw nsw i32 %2815, %2819
  %2821 = shl nuw nsw i32 %2820, 1
  %2822 = trunc i32 %2821 to i16
  %2823 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2822, ptr %2823, align 4, !tbaa !62
  %2824 = load i16, ptr %919, align 2, !tbaa !62
  %2825 = zext i16 %2824 to i32
  %2826 = add nuw nsw i32 %2821, %2825
  %2827 = shl nuw nsw i32 %2826, 1
  %2828 = trunc i32 %2827 to i16
  %2829 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2828, ptr %2829, align 2, !tbaa !62
  %2830 = load i16, ptr %926, align 2, !tbaa !62
  %2831 = zext i16 %2830 to i32
  %2832 = add nuw nsw i32 %2827, %2831
  %2833 = shl nuw nsw i32 %2832, 1
  %2834 = trunc i32 %2833 to i16
  %2835 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %2834, ptr %2835, align 8, !tbaa !62
  %2836 = load i16, ptr %933, align 2, !tbaa !62
  %2837 = zext i16 %2836 to i32
  %2838 = add nuw nsw i32 %2833, %2837
  %2839 = shl nuw nsw i32 %2838, 1
  %2840 = trunc i32 %2839 to i16
  %2841 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %2840, ptr %2841, align 2, !tbaa !62
  %2842 = load i16, ptr %940, align 2, !tbaa !62
  %2843 = zext i16 %2842 to i32
  %2844 = add nuw nsw i32 %2839, %2843
  %2845 = shl nuw nsw i32 %2844, 1
  %2846 = trunc i32 %2845 to i16
  %2847 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %2846, ptr %2847, align 4, !tbaa !62
  %2848 = load i16, ptr %947, align 2, !tbaa !62
  %2849 = zext i16 %2848 to i32
  %2850 = add nuw nsw i32 %2845, %2849
  %2851 = shl nuw nsw i32 %2850, 1
  %2852 = trunc i32 %2851 to i16
  %2853 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %2852, ptr %2853, align 2, !tbaa !62
  %2854 = load i16, ptr %954, align 2, !tbaa !62
  %2855 = zext i16 %2854 to i32
  %2856 = add nuw nsw i32 %2851, %2855
  %2857 = shl nuw nsw i32 %2856, 1
  %2858 = trunc i32 %2857 to i16
  %2859 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %2858, ptr %2859, align 16, !tbaa !62
  %2860 = load i16, ptr %961, align 2, !tbaa !62
  %2861 = trunc i32 %2857 to i16
  %2862 = add i16 %2860, %2861
  %2863 = shl i16 %2862, 1
  %2864 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %2863, ptr %2864, align 2, !tbaa !62
  %2865 = load i16, ptr %968, align 2, !tbaa !62
  %2866 = add i16 %2865, %2863
  %2867 = shl i16 %2866, 1
  %2868 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %2867, ptr %2868, align 4, !tbaa !62
  %2869 = load i16, ptr %975, align 2, !tbaa !62
  %2870 = add i16 %2867, %2869
  %2871 = shl i16 %2870, 1
  %2872 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %2871, ptr %2872, align 2, !tbaa !62
  %2873 = load i16, ptr %981, align 2, !tbaa !62
  %2874 = add i16 %2871, %2873
  %2875 = shl i16 %2874, 1
  %2876 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2875, ptr %2876, align 8, !tbaa !62
  %2877 = load i16, ptr %986, align 2, !tbaa !62
  %2878 = add i16 %2875, %2877
  %2879 = shl i16 %2878, 1
  %2880 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2879, ptr %2880, align 2, !tbaa !62
  %2881 = load i16, ptr %991, align 2, !tbaa !62
  %2882 = add i16 %2879, %2881
  %2883 = shl i16 %2882, 1
  %2884 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2883, ptr %2884, align 4, !tbaa !62
  %2885 = load i16, ptr %996, align 2, !tbaa !62
  %2886 = add i16 %2883, %2885
  %2887 = shl i16 %2886, 1
  %2888 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2887, ptr %2888, align 2, !tbaa !62
  %2889 = icmp slt i32 %2167, 0
  br i1 %2889, label %2950, label %2891

2890:                                             ; preds = %2944
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2891:                                             ; preds = %2946, %2812
  %2892 = phi i64 [ %2947, %2946 ], [ 0, %2812 ]
  %2893 = getelementptr inbounds nuw %struct.ct_data_s, ptr %2093, i64 %2892
  %2894 = getelementptr inbounds nuw i8, ptr %2893, i64 2
  %2895 = load i16, ptr %2894, align 2, !tbaa !28
  %2896 = icmp eq i16 %2895, 0
  br i1 %2896, label %2944, label %2897

2897:                                             ; preds = %2891
  %2898 = zext i16 %2895 to i32
  %2899 = zext i16 %2895 to i64
  %2900 = getelementptr inbounds nuw [16 x i16], ptr %5, i64 0, i64 %2899
  %2901 = load i16, ptr %2900, align 2, !tbaa !62
  %2902 = add i16 %2901, 1
  store i16 %2902, ptr %2900, align 2, !tbaa !62
  %2903 = and i32 %2898, 3
  %2904 = icmp ult i16 %2895, 4
  br i1 %2904, label %2927, label %2905

2905:                                             ; preds = %2897
  %2906 = and i32 %2898, 65532
  br label %2907

2907:                                             ; preds = %2907, %2905
  %2908 = phi i16 [ %2901, %2905 ], [ %2924, %2907 ]
  %2909 = phi i16 [ 0, %2905 ], [ %2923, %2907 ]
  %2910 = phi i32 [ 0, %2905 ], [ %2925, %2907 ]
  %2911 = and i16 %2908, 1
  %2912 = or disjoint i16 %2909, %2911
  %2913 = lshr i16 %2908, 2
  %2914 = shl i16 %2912, 2
  %2915 = and i16 %2908, 2
  %2916 = or disjoint i16 %2914, %2915
  %2917 = and i16 %2913, 1
  %2918 = or disjoint i16 %2916, %2917
  %2919 = shl i16 %2918, 1
  %2920 = lshr i16 %2908, 3
  %2921 = and i16 %2920, 1
  %2922 = or disjoint i16 %2919, %2921
  %2923 = shl i16 %2922, 1
  %2924 = lshr i16 %2908, 4
  %2925 = add i32 %2910, 4
  %2926 = icmp eq i32 %2925, %2906
  br i1 %2926, label %2927, label %2907, !llvm.loop !68

2927:                                             ; preds = %2907, %2897
  %2928 = phi i16 [ poison, %2897 ], [ %2922, %2907 ]
  %2929 = phi i16 [ %2901, %2897 ], [ %2924, %2907 ]
  %2930 = phi i16 [ 0, %2897 ], [ %2923, %2907 ]
  %2931 = icmp eq i32 %2903, 0
  br i1 %2931, label %2942, label %2932

2932:                                             ; preds = %2932, %2927
  %2933 = phi i16 [ %2939, %2932 ], [ %2929, %2927 ]
  %2934 = phi i16 [ %2938, %2932 ], [ %2930, %2927 ]
  %2935 = phi i32 [ %2940, %2932 ], [ 0, %2927 ]
  %2936 = and i16 %2933, 1
  %2937 = or disjoint i16 %2934, %2936
  %2938 = shl i16 %2937, 1
  %2939 = lshr i16 %2933, 1
  %2940 = add i32 %2935, 1
  %2941 = icmp eq i32 %2940, %2903
  br i1 %2941, label %2942, label %2932, !llvm.loop !76

2942:                                             ; preds = %2932, %2927
  %2943 = phi i16 [ %2928, %2927 ], [ %2937, %2932 ]
  store i16 %2943, ptr %2893, align 2, !tbaa !28
  br label %2944

2944:                                             ; preds = %2942, %2891
  %2945 = icmp eq i64 %2892, 2147483647
  br i1 %2945, label %2890, label %2946, !prof !34, !nosanitize !32

2946:                                             ; preds = %2944
  %2947 = add nuw nsw i64 %2892, 1
  %2948 = trunc i64 %2947 to i32
  %2949 = icmp slt i32 %2167, %2948
  br i1 %2949, label %2950, label %2891, !llvm.loop !71

2950:                                             ; preds = %2946, %2812
  call void @llvm.lifetime.end.p0(ptr %5)
  %2951 = getelementptr i8, ptr %0, i64 2750
  %2952 = getelementptr i8, ptr %0, i64 2810
  %2953 = load i16, ptr %2952, align 2, !tbaa !28
  %2954 = icmp eq i16 %2953, 0
  br i1 %2954, label %2955, label %3015

2955:                                             ; preds = %2950
  %2956 = getelementptr i8, ptr %0, i64 2754
  %2957 = load i16, ptr %2956, align 2, !tbaa !28
  %2958 = icmp eq i16 %2957, 0
  br i1 %2958, label %2959, label %3015

2959:                                             ; preds = %2955
  %2960 = getelementptr i8, ptr %0, i64 2806
  %2961 = load i16, ptr %2960, align 2, !tbaa !28
  %2962 = icmp eq i16 %2961, 0
  br i1 %2962, label %2963, label %3015

2963:                                             ; preds = %2959
  %2964 = getelementptr i8, ptr %0, i64 2758
  %2965 = load i16, ptr %2964, align 2, !tbaa !28
  %2966 = icmp eq i16 %2965, 0
  br i1 %2966, label %2967, label %3015

2967:                                             ; preds = %2963
  %2968 = getelementptr i8, ptr %0, i64 2802
  %2969 = load i16, ptr %2968, align 2, !tbaa !28
  %2970 = icmp eq i16 %2969, 0
  br i1 %2970, label %2971, label %3015

2971:                                             ; preds = %2967
  %2972 = getelementptr i8, ptr %0, i64 2762
  %2973 = load i16, ptr %2972, align 2, !tbaa !28
  %2974 = icmp eq i16 %2973, 0
  br i1 %2974, label %2975, label %3015

2975:                                             ; preds = %2971
  %2976 = getelementptr i8, ptr %0, i64 2798
  %2977 = load i16, ptr %2976, align 2, !tbaa !28
  %2978 = icmp eq i16 %2977, 0
  br i1 %2978, label %2979, label %3015

2979:                                             ; preds = %2975
  %2980 = getelementptr i8, ptr %0, i64 2766
  %2981 = load i16, ptr %2980, align 2, !tbaa !28
  %2982 = icmp eq i16 %2981, 0
  br i1 %2982, label %2983, label %3015

2983:                                             ; preds = %2979
  %2984 = getelementptr i8, ptr %0, i64 2794
  %2985 = load i16, ptr %2984, align 2, !tbaa !28
  %2986 = icmp eq i16 %2985, 0
  br i1 %2986, label %2987, label %3015

2987:                                             ; preds = %2983
  %2988 = getelementptr i8, ptr %0, i64 2770
  %2989 = load i16, ptr %2988, align 2, !tbaa !28
  %2990 = icmp eq i16 %2989, 0
  br i1 %2990, label %2991, label %3015

2991:                                             ; preds = %2987
  %2992 = getelementptr i8, ptr %0, i64 2790
  %2993 = load i16, ptr %2992, align 2, !tbaa !28
  %2994 = icmp eq i16 %2993, 0
  br i1 %2994, label %2995, label %3015

2995:                                             ; preds = %2991
  %2996 = getelementptr i8, ptr %0, i64 2774
  %2997 = load i16, ptr %2996, align 2, !tbaa !28
  %2998 = icmp eq i16 %2997, 0
  br i1 %2998, label %2999, label %3015

2999:                                             ; preds = %2995
  %3000 = getelementptr i8, ptr %0, i64 2786
  %3001 = load i16, ptr %3000, align 2, !tbaa !28
  %3002 = icmp eq i16 %3001, 0
  br i1 %3002, label %3003, label %3015

3003:                                             ; preds = %2999
  %3004 = getelementptr i8, ptr %0, i64 2778
  %3005 = load i16, ptr %3004, align 2, !tbaa !28
  %3006 = icmp eq i16 %3005, 0
  br i1 %3006, label %3007, label %3015

3007:                                             ; preds = %3003
  %3008 = getelementptr i8, ptr %0, i64 2782
  %3009 = load i16, ptr %3008, align 2, !tbaa !28
  %3010 = icmp eq i16 %3009, 0
  br i1 %3010, label %3011, label %3015

3011:                                             ; preds = %3007
  %3012 = load i16, ptr %2951, align 2, !tbaa !28
  %3013 = icmp eq i16 %3012, 0
  %3014 = select i1 %3013, i32 2, i32 3
  br label %3015

3015:                                             ; preds = %3011, %3007, %3003, %2999, %2995, %2991, %2987, %2983, %2979, %2975, %2971, %2967, %2963, %2959, %2955, %2950
  %3016 = phi i32 [ 18, %2950 ], [ 17, %2955 ], [ 16, %2959 ], [ 15, %2963 ], [ 14, %2967 ], [ 13, %2971 ], [ 12, %2975 ], [ 11, %2979 ], [ 10, %2983 ], [ 9, %2987 ], [ 8, %2991 ], [ 7, %2995 ], [ 6, %2999 ], [ 5, %3003 ], [ 4, %3007 ], [ %3014, %3011 ]
  %3017 = mul nuw nsw i32 %3016, 3
  %3018 = add nuw nsw i32 %3017, 17
  %3019 = zext nneg i32 %3018 to i64
  %3020 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %3021 = load i64, ptr %3020, align 8, !tbaa !52
  %3022 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3021, i64 %3019), !nosanitize !32
  %3023 = extractvalue { i64, i1 } %3022, 1, !nosanitize !32
  br i1 %3023, label %3024, label %3025, !prof !34, !nosanitize !32

3024:                                             ; preds = %3015
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3025:                                             ; preds = %3015
  %3026 = extractvalue { i64, i1 } %3022, 0, !nosanitize !32
  store i64 %3026, ptr %3020, align 8, !tbaa !52
  %3027 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3026, i64 3), !nosanitize !32
  %3028 = extractvalue { i64, i1 } %3027, 1, !nosanitize !32
  br i1 %3028, label %3029, label %3030, !prof !34, !nosanitize !32

3029:                                             ; preds = %3025
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3030:                                             ; preds = %3025
  %3031 = extractvalue { i64, i1 } %3027, 0, !nosanitize !32
  %3032 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3031, i64 7), !nosanitize !32
  %3033 = extractvalue { i64, i1 } %3032, 1, !nosanitize !32
  br i1 %3033, label %3034, label %3035, !prof !34, !nosanitize !32

3034:                                             ; preds = %3030
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3035:                                             ; preds = %3030
  %3036 = extractvalue { i64, i1 } %3032, 0, !nosanitize !32
  %3037 = lshr i64 %3036, 3
  %3038 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %3039 = load i64, ptr %3038, align 8, !tbaa !53
  %3040 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3039, i64 3), !nosanitize !32
  %3041 = extractvalue { i64, i1 } %3040, 1, !nosanitize !32
  br i1 %3041, label %3042, label %3043, !prof !34, !nosanitize !32

3042:                                             ; preds = %3035
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3043:                                             ; preds = %3035
  %3044 = extractvalue { i64, i1 } %3040, 0, !nosanitize !32
  %3045 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3044, i64 7), !nosanitize !32
  %3046 = extractvalue { i64, i1 } %3045, 1, !nosanitize !32
  br i1 %3046, label %3047, label %3048, !prof !34, !nosanitize !32

3047:                                             ; preds = %3043
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3048:                                             ; preds = %3043
  %3049 = extractvalue { i64, i1 } %3045, 0, !nosanitize !32
  %3050 = lshr i64 %3049, 3
  %3051 = icmp samesign ugt i64 %3050, %3037
  br i1 %3051, label %3052, label %3056

3052:                                             ; preds = %3048
  %3053 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %3054 = load i32, ptr %3053, align 8, !tbaa !77
  %3055 = icmp eq i32 %3054, 4
  br i1 %3055, label %3056, label %3063

3056:                                             ; preds = %3052, %3048
  br label %3063

3057:                                             ; preds = %4
  %3058 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 5), !nosanitize !32
  %3059 = extractvalue { i64, i1 } %3058, 1, !nosanitize !32
  br i1 %3059, label %3060, label %3061, !prof !34, !nosanitize !32

3060:                                             ; preds = %3057
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3061:                                             ; preds = %3057
  %3062 = extractvalue { i64, i1 } %3058, 0, !nosanitize !32
  br label %3063

3063:                                             ; preds = %3061, %3056, %3052
  %3064 = phi i32 [ %3016, %3056 ], [ %3016, %3052 ], [ 0, %3061 ]
  %3065 = phi i64 [ %3050, %3056 ], [ %3050, %3052 ], [ %3062, %3061 ]
  %3066 = phi i64 [ %3050, %3056 ], [ %3037, %3052 ], [ %3062, %3061 ]
  %3067 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 4), !nosanitize !32
  %3068 = extractvalue { i64, i1 } %3067, 1, !nosanitize !32
  br i1 %3068, label %3069, label %3070, !prof !34, !nosanitize !32

3069:                                             ; preds = %3243, %3063
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3070:                                             ; preds = %3063
  %3071 = extractvalue { i64, i1 } %3067, 0, !nosanitize !32
  %3072 = icmp ule i64 %3071, %3066
  %3073 = icmp ne ptr %1, null
  %3074 = and i1 %3073, %3072
  br i1 %3074, label %3075, label %3234

3075:                                             ; preds = %3070
  %3076 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %3077 = load i32, ptr %3076, align 4, !tbaa !26
  %3078 = icmp sgt i32 %3077, 13
  br i1 %3078, label %3080, label %3118

3079:                                             ; preds = %3102
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

3080:                                             ; preds = %3075
  %3081 = and i32 %3, 65535
  %3082 = shl i32 %3, %3077
  %3083 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3084 = load i16, ptr %3083, align 8, !tbaa !25
  %3085 = trunc i32 %3082 to i16
  %3086 = or i16 %3084, %3085
  store i16 %3086, ptr %3083, align 8, !tbaa !25
  %3087 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3088 = load i64, ptr %3087, align 8, !tbaa !33
  %3089 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3088, i64 1), !nosanitize !32
  %3090 = extractvalue { i64, i1 } %3089, 1, !nosanitize !32
  br i1 %3090, label %3091, label %3092, !prof !34, !nosanitize !32

3091:                                             ; preds = %3080
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3092:                                             ; preds = %3080
  %3093 = extractvalue { i64, i1 } %3089, 0, !nosanitize !32
  %3094 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3095 = load ptr, ptr %3094, align 8, !tbaa !35
  %3096 = trunc i16 %3086 to i8
  store i64 %3093, ptr %3087, align 8, !tbaa !33
  %3097 = getelementptr inbounds nuw i8, ptr %3095, i64 %3088
  store i8 %3096, ptr %3097, align 1, !tbaa !28
  %3098 = load i64, ptr %3087, align 8, !tbaa !33
  %3099 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3098, i64 1), !nosanitize !32
  %3100 = extractvalue { i64, i1 } %3099, 1, !nosanitize !32
  br i1 %3100, label %3101, label %3102, !prof !34, !nosanitize !32

3101:                                             ; preds = %3112, %3092
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3102:                                             ; preds = %3092
  %3103 = extractvalue { i64, i1 } %3099, 0, !nosanitize !32
  %3104 = load ptr, ptr %3094, align 8, !tbaa !35
  %3105 = load i16, ptr %3083, align 8, !tbaa !25
  %3106 = lshr i16 %3105, 8
  %3107 = trunc nuw i16 %3106 to i8
  store i64 %3103, ptr %3087, align 8, !tbaa !33
  %3108 = getelementptr inbounds nuw i8, ptr %3104, i64 %3098
  store i8 %3107, ptr %3108, align 1, !tbaa !28
  %3109 = load i32, ptr %3076, align 4, !tbaa !26
  %3110 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3109), !nosanitize !32
  %3111 = extractvalue { i32, i1 } %3110, 1, !nosanitize !32
  br i1 %3111, label %3079, label %3112, !prof !34, !nosanitize !32

3112:                                             ; preds = %3102
  %3113 = extractvalue { i32, i1 } %3110, 0, !nosanitize !32
  %3114 = lshr i32 %3081, %3113
  %3115 = trunc nuw i32 %3114 to i16
  store i16 %3115, ptr %3083, align 8, !tbaa !25
  %3116 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3109, i32 -13), !nosanitize !32
  %3117 = extractvalue { i32, i1 } %3116, 1, !nosanitize !32
  br i1 false, label %3101, label %3126, !prof !34, !nosanitize !32

3118:                                             ; preds = %3075
  %3119 = shl i32 %3, %3077
  %3120 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3121 = load i16, ptr %3120, align 8, !tbaa !25
  %3122 = trunc i32 %3119 to i16
  %3123 = or i16 %3121, %3122
  store i16 %3123, ptr %3120, align 8, !tbaa !25
  %3124 = add nsw i32 %3077, 3
  %3125 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3124, 0
  br label %3126

3126:                                             ; preds = %3118, %3112
  %3127 = phi i16 [ %3115, %3112 ], [ %3123, %3118 ]
  %3128 = phi { i32, i1 } [ %3116, %3112 ], [ %3125, %3118 ]
  %3129 = extractvalue { i32, i1 } %3128, 0
  store i32 %3129, ptr %3076, align 4, !tbaa !26
  %3130 = icmp sgt i32 %3129, 8
  br i1 %3130, label %3131, label %3155

3131:                                             ; preds = %3126
  %3132 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3133 = load i64, ptr %3132, align 8, !tbaa !33
  %3134 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3133, i64 1), !nosanitize !32
  %3135 = extractvalue { i64, i1 } %3134, 1, !nosanitize !32
  br i1 %3135, label %3136, label %3137, !prof !34, !nosanitize !32

3136:                                             ; preds = %3131
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3137:                                             ; preds = %3131
  %3138 = extractvalue { i64, i1 } %3134, 0, !nosanitize !32
  %3139 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3140 = load ptr, ptr %3139, align 8, !tbaa !35
  %3141 = trunc i16 %3127 to i8
  store i64 %3138, ptr %3132, align 8, !tbaa !33
  %3142 = getelementptr inbounds nuw i8, ptr %3140, i64 %3133
  store i8 %3141, ptr %3142, align 1, !tbaa !28
  %3143 = load i64, ptr %3132, align 8, !tbaa !33
  %3144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3143, i64 1), !nosanitize !32
  %3145 = extractvalue { i64, i1 } %3144, 1, !nosanitize !32
  br i1 %3145, label %3146, label %3147, !prof !34, !nosanitize !32

3146:                                             ; preds = %3137
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3147:                                             ; preds = %3137
  %3148 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3149 = extractvalue { i64, i1 } %3144, 0, !nosanitize !32
  %3150 = load ptr, ptr %3139, align 8, !tbaa !35
  %3151 = load i16, ptr %3148, align 8, !tbaa !25
  %3152 = lshr i16 %3151, 8
  %3153 = trunc nuw i16 %3152 to i8
  store i64 %3149, ptr %3132, align 8, !tbaa !33
  %3154 = getelementptr inbounds nuw i8, ptr %3150, i64 %3143
  store i8 %3153, ptr %3154, align 1, !tbaa !28
  br label %3169

3155:                                             ; preds = %3126
  %3156 = icmp sgt i32 %3129, 0
  br i1 %3156, label %3157, label %3169

3157:                                             ; preds = %3155
  %3158 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3159 = load i64, ptr %3158, align 8, !tbaa !33
  %3160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3159, i64 1), !nosanitize !32
  %3161 = extractvalue { i64, i1 } %3160, 1, !nosanitize !32
  br i1 %3161, label %3162, label %3163, !prof !34, !nosanitize !32

3162:                                             ; preds = %3157
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3163:                                             ; preds = %3157
  %3164 = extractvalue { i64, i1 } %3160, 0, !nosanitize !32
  %3165 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3166 = load ptr, ptr %3165, align 8, !tbaa !35
  %3167 = trunc i16 %3127 to i8
  store i64 %3164, ptr %3158, align 8, !tbaa !33
  %3168 = getelementptr inbounds nuw i8, ptr %3166, i64 %3159
  store i8 %3167, ptr %3168, align 1, !tbaa !28
  br label %3169

3169:                                             ; preds = %3163, %3155, %3147
  %3170 = load i32, ptr %3076, align 4, !tbaa !26
  %3171 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3170, i32 -1)
  %3172 = extractvalue { i32, i1 } %3171, 1, !nosanitize !32
  br i1 %3172, label %3173, label %3174, !prof !34, !nosanitize !32

3173:                                             ; preds = %3169
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

3174:                                             ; preds = %3169
  %3175 = extractvalue { i32, i1 } %3171, 0, !nosanitize !32
  %3176 = and i32 %3175, 7
  %3177 = add nuw nsw i32 %3176, 1
  %3178 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %3177, ptr %3178, align 8, !tbaa !27
  %3179 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %3179, align 8, !tbaa !25
  store i32 0, ptr %3076, align 4, !tbaa !26
  %3180 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3181 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3182 = load i64, ptr %3181, align 8, !tbaa !33
  %3183 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3182, i64 1), !nosanitize !32
  %3184 = extractvalue { i64, i1 } %3183, 1, !nosanitize !32
  br i1 %3184, label %3185, label %3186, !prof !34, !nosanitize !32

3185:                                             ; preds = %3174
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3186:                                             ; preds = %3174
  %3187 = extractvalue { i64, i1 } %3183, 0, !nosanitize !32
  %3188 = load ptr, ptr %3180, align 8, !tbaa !35
  %3189 = trunc i64 %2 to i8
  store i64 %3187, ptr %3181, align 8, !tbaa !33
  %3190 = getelementptr inbounds nuw i8, ptr %3188, i64 %3182
  store i8 %3189, ptr %3190, align 1, !tbaa !28
  %3191 = load i64, ptr %3181, align 8, !tbaa !33
  %3192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3191, i64 1), !nosanitize !32
  %3193 = extractvalue { i64, i1 } %3192, 1, !nosanitize !32
  br i1 %3193, label %3194, label %3195, !prof !34, !nosanitize !32

3194:                                             ; preds = %3186
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3195:                                             ; preds = %3186
  %3196 = extractvalue { i64, i1 } %3192, 0, !nosanitize !32
  %3197 = load ptr, ptr %3180, align 8, !tbaa !35
  %3198 = lshr i64 %2, 8
  %3199 = trunc i64 %3198 to i8
  store i64 %3196, ptr %3181, align 8, !tbaa !33
  %3200 = getelementptr inbounds nuw i8, ptr %3197, i64 %3191
  store i8 %3199, ptr %3200, align 1, !tbaa !28
  %3201 = load i64, ptr %3181, align 8, !tbaa !33
  %3202 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3201, i64 1), !nosanitize !32
  %3203 = extractvalue { i64, i1 } %3202, 1, !nosanitize !32
  br i1 %3203, label %3204, label %3205, !prof !34, !nosanitize !32

3204:                                             ; preds = %3195
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3205:                                             ; preds = %3195
  %3206 = extractvalue { i64, i1 } %3202, 0, !nosanitize !32
  %3207 = load ptr, ptr %3180, align 8, !tbaa !35
  %3208 = trunc i64 %2 to i32
  %3209 = xor i32 %3208, 65535
  %3210 = trunc i32 %3209 to i8
  store i64 %3206, ptr %3181, align 8, !tbaa !33
  %3211 = getelementptr inbounds nuw i8, ptr %3207, i64 %3201
  store i8 %3210, ptr %3211, align 1, !tbaa !28
  %3212 = load i64, ptr %3181, align 8, !tbaa !33
  %3213 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3212, i64 1), !nosanitize !32
  %3214 = extractvalue { i64, i1 } %3213, 1, !nosanitize !32
  br i1 %3214, label %3215, label %3216, !prof !34, !nosanitize !32

3215:                                             ; preds = %3205
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3216:                                             ; preds = %3205
  %3217 = extractvalue { i64, i1 } %3213, 0, !nosanitize !32
  %3218 = load ptr, ptr %3180, align 8, !tbaa !35
  %3219 = lshr i32 %3209, 8
  %3220 = trunc i32 %3219 to i8
  store i64 %3217, ptr %3181, align 8, !tbaa !33
  %3221 = getelementptr inbounds nuw i8, ptr %3218, i64 %3212
  store i8 %3220, ptr %3221, align 1, !tbaa !28
  %3222 = icmp eq i64 %2, 0
  br i1 %3222, label %3227, label %3223

3223:                                             ; preds = %3216
  %3224 = load ptr, ptr %3180, align 8, !tbaa !35
  %3225 = load i64, ptr %3181, align 8, !tbaa !33
  %3226 = getelementptr inbounds nuw i8, ptr %3224, i64 %3225
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3226, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %3227

3227:                                             ; preds = %3223, %3216
  %3228 = load i64, ptr %3181, align 8, !tbaa !33
  %3229 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3228, i64 %2), !nosanitize !32
  %3230 = extractvalue { i64, i1 } %3229, 1, !nosanitize !32
  br i1 %3230, label %3231, label %3232, !prof !34, !nosanitize !32

3231:                                             ; preds = %3227
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3232:                                             ; preds = %3227
  %3233 = extractvalue { i64, i1 } %3229, 0, !nosanitize !32
  store i64 %3233, ptr %3181, align 8, !tbaa !33
  br label %5256

3234:                                             ; preds = %3070
  %3235 = icmp eq i64 %3065, %3066
  %3236 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %3237 = load i32, ptr %3236, align 4, !tbaa !26
  %3238 = icmp sgt i32 %3237, 13
  br i1 %3235, label %3239, label %3668

3239:                                             ; preds = %3234
  %3240 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2), !nosanitize !32
  %3241 = extractvalue { i32, i1 } %3240, 1, !nosanitize !32
  br i1 %3238, label %3243, label %3283

3242:                                             ; preds = %3695, %3267
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

3243:                                             ; preds = %3239
  br i1 %3241, label %3069, label %3244, !prof !34, !nosanitize !32

3244:                                             ; preds = %3243
  %3245 = extractvalue { i32, i1 } %3240, 0, !nosanitize !32
  %3246 = and i32 %3245, 65535
  %3247 = shl i32 %3245, %3237
  %3248 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3249 = load i16, ptr %3248, align 8, !tbaa !25
  %3250 = trunc i32 %3247 to i16
  %3251 = or i16 %3249, %3250
  store i16 %3251, ptr %3248, align 8, !tbaa !25
  %3252 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3253 = load i64, ptr %3252, align 8, !tbaa !33
  %3254 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3253, i64 1), !nosanitize !32
  %3255 = extractvalue { i64, i1 } %3254, 1, !nosanitize !32
  br i1 %3255, label %3256, label %3257, !prof !34, !nosanitize !32

3256:                                             ; preds = %3244
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3257:                                             ; preds = %3244
  %3258 = extractvalue { i64, i1 } %3254, 0, !nosanitize !32
  %3259 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3260 = load ptr, ptr %3259, align 8, !tbaa !35
  %3261 = trunc i16 %3251 to i8
  store i64 %3258, ptr %3252, align 8, !tbaa !33
  %3262 = getelementptr inbounds nuw i8, ptr %3260, i64 %3253
  store i8 %3261, ptr %3262, align 1, !tbaa !28
  %3263 = load i64, ptr %3252, align 8, !tbaa !33
  %3264 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3263, i64 1), !nosanitize !32
  %3265 = extractvalue { i64, i1 } %3264, 1, !nosanitize !32
  br i1 %3265, label %3266, label %3267, !prof !34, !nosanitize !32

3266:                                             ; preds = %3671, %3283, %3277, %3257
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3267:                                             ; preds = %3257
  %3268 = extractvalue { i64, i1 } %3264, 0, !nosanitize !32
  %3269 = load ptr, ptr %3259, align 8, !tbaa !35
  %3270 = load i16, ptr %3248, align 8, !tbaa !25
  %3271 = lshr i16 %3270, 8
  %3272 = trunc nuw i16 %3271 to i8
  store i64 %3268, ptr %3252, align 8, !tbaa !33
  %3273 = getelementptr inbounds nuw i8, ptr %3269, i64 %3263
  store i8 %3272, ptr %3273, align 1, !tbaa !28
  %3274 = load i32, ptr %3236, align 4, !tbaa !26
  %3275 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3274), !nosanitize !32
  %3276 = extractvalue { i32, i1 } %3275, 1, !nosanitize !32
  br i1 %3276, label %3242, label %3277, !prof !34, !nosanitize !32

3277:                                             ; preds = %3267
  %3278 = extractvalue { i32, i1 } %3275, 0, !nosanitize !32
  %3279 = lshr i32 %3246, %3278
  %3280 = trunc nuw i32 %3279 to i16
  store i16 %3280, ptr %3248, align 8, !tbaa !25
  %3281 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3274, i32 -13), !nosanitize !32
  %3282 = extractvalue { i32, i1 } %3281, 1, !nosanitize !32
  br i1 false, label %3266, label %3293, !prof !34, !nosanitize !32

3283:                                             ; preds = %3239
  br i1 %3241, label %3266, label %3284, !prof !34, !nosanitize !32

3284:                                             ; preds = %3283
  %3285 = extractvalue { i32, i1 } %3240, 0, !nosanitize !32
  %3286 = shl i32 %3285, %3237
  %3287 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3288 = load i16, ptr %3287, align 8, !tbaa !25
  %3289 = trunc i32 %3286 to i16
  %3290 = or i16 %3288, %3289
  store i16 %3290, ptr %3287, align 8, !tbaa !25
  %3291 = add nsw i32 %3237, 3
  %3292 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3291, 0
  br label %3293

3293:                                             ; preds = %3284, %3277
  %3294 = phi i16 [ %3280, %3277 ], [ %3290, %3284 ]
  %3295 = phi { i32, i1 } [ %3281, %3277 ], [ %3292, %3284 ]
  %3296 = extractvalue { i32, i1 } %3295, 0
  store i32 %3296, ptr %3236, align 4, !tbaa !26
  %3297 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %3298 = load i32, ptr %3297, align 4, !tbaa !31
  %3299 = icmp eq i32 %3298, 0
  br i1 %3299, label %3628, label %3300

3300:                                             ; preds = %3293
  %3301 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %3302 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3303 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3304 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %3305

3305:                                             ; preds = %3623, %3300
  %3306 = phi i16 [ %3624, %3623 ], [ %3294, %3300 ]
  %3307 = phi i32 [ %3625, %3623 ], [ %3296, %3300 ]
  %3308 = phi i32 [ %3327, %3623 ], [ 0, %3300 ]
  %3309 = load ptr, ptr %3301, align 8, !tbaa !78
  %3310 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3308, i32 2)
  %3311 = extractvalue { i32, i1 } %3310, 0, !nosanitize !32
  %3312 = extractvalue { i32, i1 } %3310, 1, !nosanitize !32
  br i1 %3312, label %3313, label %3314, !prof !34, !nosanitize !32

3313:                                             ; preds = %3305
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3314:                                             ; preds = %3305
  %3315 = add nuw i32 %3308, 1
  %3316 = zext i32 %3308 to i64
  %3317 = getelementptr inbounds nuw i8, ptr %3309, i64 %3316
  %3318 = load i8, ptr %3317, align 1, !tbaa !28
  %3319 = zext i8 %3318 to i32
  %3320 = zext i32 %3315 to i64
  %3321 = getelementptr inbounds nuw i8, ptr %3309, i64 %3320
  %3322 = load i8, ptr %3321, align 1, !tbaa !28
  %3323 = zext i8 %3322 to i32
  %3324 = shl nuw nsw i32 %3323, 8
  %3325 = or disjoint i32 %3324, %3319
  %3326 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3311, i32 1), !nosanitize !32
  %3327 = extractvalue { i32, i1 } %3326, 0, !nosanitize !32
  %3328 = extractvalue { i32, i1 } %3326, 1, !nosanitize !32
  br i1 %3328, label %3329, label %3330, !prof !34, !nosanitize !32

3329:                                             ; preds = %3314
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3330:                                             ; preds = %3314
  %3331 = zext i32 %3311 to i64
  %3332 = getelementptr inbounds nuw i8, ptr %3309, i64 %3331
  %3333 = load i8, ptr %3332, align 1, !tbaa !28
  %3334 = zext i8 %3333 to i32
  %3335 = icmp eq i32 %3325, 0
  %3336 = zext i8 %3333 to i64
  br i1 %3335, label %3337, label %3384

3337:                                             ; preds = %3330
  %3338 = getelementptr inbounds nuw %struct.ct_data_s, ptr @static_ltree, i64 %3336
  %3339 = getelementptr inbounds nuw i8, ptr %3338, i64 2
  %3340 = load i16, ptr %3339, align 2, !tbaa !28
  %3341 = zext i16 %3340 to i32
  %3342 = sub nsw i32 16, %3341
  %3343 = icmp sgt i32 %3307, %3342
  %3344 = load i16, ptr %3338, align 4, !tbaa !28
  %3345 = zext i16 %3344 to i32
  %3346 = shl i32 %3345, %3307
  %3347 = trunc i32 %3346 to i16
  %3348 = or i16 %3306, %3347
  store i16 %3348, ptr %3302, align 8, !tbaa !25
  br i1 %3343, label %3350, label %3381

3349:                                             ; preds = %3482, %3472, %3448, %3442, %3414, %3364
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

3350:                                             ; preds = %3337
  %3351 = load i64, ptr %3303, align 8, !tbaa !33
  %3352 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3351, i64 1), !nosanitize !32
  %3353 = extractvalue { i64, i1 } %3352, 1, !nosanitize !32
  br i1 %3353, label %3354, label %3355, !prof !34, !nosanitize !32

3354:                                             ; preds = %3350
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3355:                                             ; preds = %3350
  %3356 = extractvalue { i64, i1 } %3352, 0, !nosanitize !32
  %3357 = load ptr, ptr %3304, align 8, !tbaa !35
  %3358 = trunc i16 %3348 to i8
  store i64 %3356, ptr %3303, align 8, !tbaa !33
  %3359 = getelementptr inbounds nuw i8, ptr %3357, i64 %3351
  store i8 %3358, ptr %3359, align 1, !tbaa !28
  %3360 = load i64, ptr %3303, align 8, !tbaa !33
  %3361 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3360, i64 1), !nosanitize !32
  %3362 = extractvalue { i64, i1 } %3361, 1, !nosanitize !32
  br i1 %3362, label %3363, label %3364, !prof !34, !nosanitize !32

3363:                                             ; preds = %3374, %3355
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3364:                                             ; preds = %3355
  %3365 = extractvalue { i64, i1 } %3361, 0, !nosanitize !32
  %3366 = load ptr, ptr %3304, align 8, !tbaa !35
  %3367 = load i16, ptr %3302, align 8, !tbaa !25
  %3368 = lshr i16 %3367, 8
  %3369 = trunc nuw i16 %3368 to i8
  store i64 %3365, ptr %3303, align 8, !tbaa !33
  %3370 = getelementptr inbounds nuw i8, ptr %3366, i64 %3360
  store i8 %3369, ptr %3370, align 1, !tbaa !28
  %3371 = load i32, ptr %3236, align 4, !tbaa !26
  %3372 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3371), !nosanitize !32
  %3373 = extractvalue { i32, i1 } %3372, 1, !nosanitize !32
  br i1 %3373, label %3349, label %3374, !prof !34, !nosanitize !32

3374:                                             ; preds = %3364
  %3375 = extractvalue { i32, i1 } %3372, 0, !nosanitize !32
  %3376 = lshr i32 %3345, %3375
  %3377 = trunc nuw i32 %3376 to i16
  store i16 %3377, ptr %3302, align 8, !tbaa !25
  %3378 = add nsw i32 %3341, -16
  %3379 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3371, i32 %3378), !nosanitize !32
  %3380 = extractvalue { i32, i1 } %3379, 1, !nosanitize !32
  br i1 %3380, label %3363, label %3619, !prof !34, !nosanitize !32

3381:                                             ; preds = %3337
  %3382 = add nsw i32 %3307, %3341
  %3383 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3382, 0
  br label %3619

3384:                                             ; preds = %3330
  %3385 = getelementptr inbounds nuw [256 x i8], ptr @_length_code, i64 0, i64 %3336
  %3386 = load i8, ptr %3385, align 1, !tbaa !28
  %3387 = zext i8 %3386 to i64
  %3388 = getelementptr inbounds nuw %struct.ct_data_s, ptr @static_ltree, i64 %3387
  %3389 = getelementptr inbounds nuw i8, ptr %3388, i64 1028
  %3390 = getelementptr inbounds nuw i8, ptr %3388, i64 1030
  %3391 = load i16, ptr %3390, align 2, !tbaa !28
  %3392 = zext i16 %3391 to i32
  %3393 = sub nsw i32 16, %3392
  %3394 = icmp sgt i32 %3307, %3393
  %3395 = load i16, ptr %3389, align 4, !tbaa !28
  %3396 = zext i16 %3395 to i32
  %3397 = shl i32 %3396, %3307
  %3398 = trunc i32 %3397 to i16
  %3399 = or i16 %3306, %3398
  store i16 %3399, ptr %3302, align 8, !tbaa !25
  br i1 %3394, label %3400, label %3431

3400:                                             ; preds = %3384
  %3401 = load i64, ptr %3303, align 8, !tbaa !33
  %3402 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3401, i64 1), !nosanitize !32
  %3403 = extractvalue { i64, i1 } %3402, 1, !nosanitize !32
  br i1 %3403, label %3404, label %3405, !prof !34, !nosanitize !32

3404:                                             ; preds = %3400
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3405:                                             ; preds = %3400
  %3406 = extractvalue { i64, i1 } %3402, 0, !nosanitize !32
  %3407 = load ptr, ptr %3304, align 8, !tbaa !35
  %3408 = trunc i16 %3399 to i8
  store i64 %3406, ptr %3303, align 8, !tbaa !33
  %3409 = getelementptr inbounds nuw i8, ptr %3407, i64 %3401
  store i8 %3408, ptr %3409, align 1, !tbaa !28
  %3410 = load i64, ptr %3303, align 8, !tbaa !33
  %3411 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3410, i64 1), !nosanitize !32
  %3412 = extractvalue { i64, i1 } %3411, 1, !nosanitize !32
  br i1 %3412, label %3413, label %3414, !prof !34, !nosanitize !32

3413:                                             ; preds = %3424, %3405
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3414:                                             ; preds = %3405
  %3415 = extractvalue { i64, i1 } %3411, 0, !nosanitize !32
  %3416 = load ptr, ptr %3304, align 8, !tbaa !35
  %3417 = load i16, ptr %3302, align 8, !tbaa !25
  %3418 = lshr i16 %3417, 8
  %3419 = trunc nuw i16 %3418 to i8
  store i64 %3415, ptr %3303, align 8, !tbaa !33
  %3420 = getelementptr inbounds nuw i8, ptr %3416, i64 %3410
  store i8 %3419, ptr %3420, align 1, !tbaa !28
  %3421 = load i32, ptr %3236, align 4, !tbaa !26
  %3422 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3421), !nosanitize !32
  %3423 = extractvalue { i32, i1 } %3422, 1, !nosanitize !32
  br i1 %3423, label %3349, label %3424, !prof !34, !nosanitize !32

3424:                                             ; preds = %3414
  %3425 = extractvalue { i32, i1 } %3422, 0, !nosanitize !32
  %3426 = lshr i32 %3396, %3425
  %3427 = trunc nuw i32 %3426 to i16
  store i16 %3427, ptr %3302, align 8, !tbaa !25
  %3428 = add nsw i32 %3392, -16
  %3429 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3421, i32 %3428), !nosanitize !32
  %3430 = extractvalue { i32, i1 } %3429, 1, !nosanitize !32
  br i1 %3430, label %3413, label %3434, !prof !34, !nosanitize !32

3431:                                             ; preds = %3384
  %3432 = add nsw i32 %3307, %3392
  %3433 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3432, 0
  br label %3434

3434:                                             ; preds = %3431, %3424
  %3435 = phi i16 [ %3427, %3424 ], [ %3399, %3431 ]
  %3436 = phi { i32, i1 } [ %3429, %3424 ], [ %3433, %3431 ]
  %3437 = extractvalue { i32, i1 } %3436, 0
  store i32 %3437, ptr %3236, align 4, !tbaa !26
  %3438 = getelementptr inbounds nuw [29 x i32], ptr @extra_lbits, i64 0, i64 %3387
  %3439 = load i32, ptr %3438, align 4, !tbaa !50
  %3440 = add nsw i64 %3387, -28
  %3441 = icmp ult i64 %3440, -20
  br i1 %3441, label %3502, label %3442

3442:                                             ; preds = %3434
  %3443 = getelementptr inbounds nuw [29 x i32], ptr @base_length, i64 0, i64 %3387
  %3444 = load i32, ptr %3443, align 4, !tbaa !50
  %3445 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3334, i32 %3444), !nosanitize !32
  %3446 = extractvalue { i32, i1 } %3445, 0, !nosanitize !32
  %3447 = extractvalue { i32, i1 } %3445, 1, !nosanitize !32
  br i1 %3447, label %3349, label %3448, !prof !34, !nosanitize !32

3448:                                             ; preds = %3442
  %3449 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3439), !nosanitize !32
  %3450 = extractvalue { i32, i1 } %3449, 1, !nosanitize !32
  br i1 %3450, label %3349, label %3451, !prof !34, !nosanitize !32

3451:                                             ; preds = %3448
  %3452 = extractvalue { i32, i1 } %3449, 0, !nosanitize !32
  %3453 = icmp sgt i32 %3437, %3452
  br i1 %3453, label %3454, label %3492

3454:                                             ; preds = %3451
  %3455 = and i32 %3446, 65535
  %3456 = shl i32 %3446, %3437
  %3457 = trunc i32 %3456 to i16
  %3458 = or i16 %3435, %3457
  store i16 %3458, ptr %3302, align 8, !tbaa !25
  %3459 = load i64, ptr %3303, align 8, !tbaa !33
  %3460 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3459, i64 1), !nosanitize !32
  %3461 = extractvalue { i64, i1 } %3460, 1, !nosanitize !32
  br i1 %3461, label %3462, label %3463, !prof !34, !nosanitize !32

3462:                                             ; preds = %3454
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3463:                                             ; preds = %3454
  %3464 = extractvalue { i64, i1 } %3460, 0, !nosanitize !32
  %3465 = load ptr, ptr %3304, align 8, !tbaa !35
  %3466 = trunc i16 %3458 to i8
  store i64 %3464, ptr %3303, align 8, !tbaa !33
  %3467 = getelementptr inbounds nuw i8, ptr %3465, i64 %3459
  store i8 %3466, ptr %3467, align 1, !tbaa !28
  %3468 = load i64, ptr %3303, align 8, !tbaa !33
  %3469 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3468, i64 1), !nosanitize !32
  %3470 = extractvalue { i64, i1 } %3469, 1, !nosanitize !32
  br i1 %3470, label %3471, label %3472, !prof !34, !nosanitize !32

3471:                                             ; preds = %3492, %3488, %3463
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3472:                                             ; preds = %3463
  %3473 = extractvalue { i64, i1 } %3469, 0, !nosanitize !32
  %3474 = load ptr, ptr %3304, align 8, !tbaa !35
  %3475 = load i16, ptr %3302, align 8, !tbaa !25
  %3476 = lshr i16 %3475, 8
  %3477 = trunc nuw i16 %3476 to i8
  store i64 %3473, ptr %3303, align 8, !tbaa !33
  %3478 = getelementptr inbounds nuw i8, ptr %3474, i64 %3468
  store i8 %3477, ptr %3478, align 1, !tbaa !28
  %3479 = load i32, ptr %3236, align 4, !tbaa !26
  %3480 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3479), !nosanitize !32
  %3481 = extractvalue { i32, i1 } %3480, 1, !nosanitize !32
  br i1 %3481, label %3349, label %3482, !prof !34, !nosanitize !32

3482:                                             ; preds = %3472
  %3483 = extractvalue { i32, i1 } %3480, 0, !nosanitize !32
  %3484 = lshr i32 %3455, %3483
  %3485 = trunc nuw i32 %3484 to i16
  store i16 %3485, ptr %3302, align 8, !tbaa !25
  %3486 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3439, i32 -16)
  %3487 = extractvalue { i32, i1 } %3486, 1, !nosanitize !32
  br i1 %3487, label %3349, label %3488, !prof !34, !nosanitize !32

3488:                                             ; preds = %3482
  %3489 = extractvalue { i32, i1 } %3486, 0, !nosanitize !32
  %3490 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3479, i32 %3489), !nosanitize !32
  %3491 = extractvalue { i32, i1 } %3490, 1, !nosanitize !32
  br i1 %3491, label %3471, label %3498, !prof !34, !nosanitize !32

3492:                                             ; preds = %3451
  %3493 = shl i32 %3446, %3437
  %3494 = trunc i32 %3493 to i16
  %3495 = or i16 %3435, %3494
  store i16 %3495, ptr %3302, align 8, !tbaa !25
  %3496 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3437, i32 %3439), !nosanitize !32
  %3497 = extractvalue { i32, i1 } %3496, 1, !nosanitize !32
  br i1 %3497, label %3471, label %3498, !prof !34, !nosanitize !32

3498:                                             ; preds = %3492, %3488
  %3499 = phi i16 [ %3485, %3488 ], [ %3495, %3492 ]
  %3500 = phi { i32, i1 } [ %3490, %3488 ], [ %3496, %3492 ]
  %3501 = extractvalue { i32, i1 } %3500, 0
  store i32 %3501, ptr %3236, align 4, !tbaa !26
  br label %3502

3502:                                             ; preds = %3498, %3434
  %3503 = phi i16 [ %3499, %3498 ], [ %3435, %3434 ]
  %3504 = phi i32 [ %3501, %3498 ], [ %3437, %3434 ]
  %3505 = add nsw i32 %3325, -1
  %3506 = icmp samesign ult i32 %3325, 257
  %3507 = lshr i32 %3505, 7
  %3508 = add nuw nsw i32 %3507, 256
  %3509 = select i1 %3506, i32 %3505, i32 %3508
  %3510 = zext nneg i32 %3509 to i64
  %3511 = getelementptr inbounds nuw [512 x i8], ptr @_dist_code, i64 0, i64 %3510
  %3512 = load i8, ptr %3511, align 1, !tbaa !28
  %3513 = zext i8 %3512 to i64
  %3514 = getelementptr inbounds nuw %struct.ct_data_s, ptr @static_dtree, i64 %3513
  %3515 = icmp sgt i32 %3504, 11
  %3516 = load i16, ptr %3514, align 4, !tbaa !28
  %3517 = zext i16 %3516 to i32
  %3518 = shl i32 %3517, %3504
  %3519 = trunc i32 %3518 to i16
  %3520 = or i16 %3503, %3519
  store i16 %3520, ptr %3302, align 8, !tbaa !25
  br i1 %3515, label %3522, label %3552

3521:                                             ; preds = %3536
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

3522:                                             ; preds = %3502
  %3523 = load i64, ptr %3303, align 8, !tbaa !33
  %3524 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3523, i64 1), !nosanitize !32
  %3525 = extractvalue { i64, i1 } %3524, 1, !nosanitize !32
  br i1 %3525, label %3526, label %3527, !prof !34, !nosanitize !32

3526:                                             ; preds = %3522
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3527:                                             ; preds = %3522
  %3528 = extractvalue { i64, i1 } %3524, 0, !nosanitize !32
  %3529 = load ptr, ptr %3304, align 8, !tbaa !35
  %3530 = trunc i16 %3520 to i8
  store i64 %3528, ptr %3303, align 8, !tbaa !33
  %3531 = getelementptr inbounds nuw i8, ptr %3529, i64 %3523
  store i8 %3530, ptr %3531, align 1, !tbaa !28
  %3532 = load i64, ptr %3303, align 8, !tbaa !33
  %3533 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3532, i64 1), !nosanitize !32
  %3534 = extractvalue { i64, i1 } %3533, 1, !nosanitize !32
  br i1 %3534, label %3535, label %3536, !prof !34, !nosanitize !32

3535:                                             ; preds = %3546, %3527
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3536:                                             ; preds = %3527
  %3537 = extractvalue { i64, i1 } %3533, 0, !nosanitize !32
  %3538 = load ptr, ptr %3304, align 8, !tbaa !35
  %3539 = load i16, ptr %3302, align 8, !tbaa !25
  %3540 = lshr i16 %3539, 8
  %3541 = trunc nuw i16 %3540 to i8
  store i64 %3537, ptr %3303, align 8, !tbaa !33
  %3542 = getelementptr inbounds nuw i8, ptr %3538, i64 %3532
  store i8 %3541, ptr %3542, align 1, !tbaa !28
  %3543 = load i32, ptr %3236, align 4, !tbaa !26
  %3544 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3543), !nosanitize !32
  %3545 = extractvalue { i32, i1 } %3544, 1, !nosanitize !32
  br i1 %3545, label %3521, label %3546, !prof !34, !nosanitize !32

3546:                                             ; preds = %3536
  %3547 = extractvalue { i32, i1 } %3544, 0, !nosanitize !32
  %3548 = lshr i32 %3517, %3547
  %3549 = trunc nuw i32 %3548 to i16
  store i16 %3549, ptr %3302, align 8, !tbaa !25
  %3550 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3543, i32 -11), !nosanitize !32
  %3551 = extractvalue { i32, i1 } %3550, 1, !nosanitize !32
  br i1 %3551, label %3535, label %3555, !prof !34, !nosanitize !32

3552:                                             ; preds = %3502
  %3553 = add nsw i32 %3504, 5
  %3554 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3553, 0
  br label %3555

3555:                                             ; preds = %3552, %3546
  %3556 = phi i16 [ %3549, %3546 ], [ %3520, %3552 ]
  %3557 = phi { i32, i1 } [ %3550, %3546 ], [ %3554, %3552 ]
  %3558 = extractvalue { i32, i1 } %3557, 0
  store i32 %3558, ptr %3236, align 4, !tbaa !26
  %3559 = getelementptr inbounds nuw [30 x i32], ptr @extra_dbits, i64 0, i64 %3513
  %3560 = load i32, ptr %3559, align 4, !tbaa !50
  %3561 = icmp ult i8 %3512, 4
  br i1 %3561, label %3623, label %3562

3562:                                             ; preds = %3555
  %3563 = getelementptr inbounds nuw [30 x i32], ptr @base_dist, i64 0, i64 %3513
  %3564 = load i32, ptr %3563, align 4, !tbaa !50
  %3565 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %3505, i32 %3564), !nosanitize !32
  %3566 = extractvalue { i32, i1 } %3565, 0, !nosanitize !32
  %3567 = extractvalue { i32, i1 } %3565, 1, !nosanitize !32
  br i1 %3567, label %3568, label %3569, !prof !34, !nosanitize !32

3568:                                             ; preds = %3649, %3603, %3593, %3569, %3562
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

3569:                                             ; preds = %3562
  %3570 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3560), !nosanitize !32
  %3571 = extractvalue { i32, i1 } %3570, 1, !nosanitize !32
  br i1 %3571, label %3568, label %3572, !prof !34, !nosanitize !32

3572:                                             ; preds = %3569
  %3573 = extractvalue { i32, i1 } %3570, 0, !nosanitize !32
  %3574 = icmp sgt i32 %3558, %3573
  br i1 %3574, label %3575, label %3613

3575:                                             ; preds = %3572
  %3576 = and i32 %3566, 65535
  %3577 = shl i32 %3566, %3558
  %3578 = trunc i32 %3577 to i16
  %3579 = or i16 %3556, %3578
  store i16 %3579, ptr %3302, align 8, !tbaa !25
  %3580 = load i64, ptr %3303, align 8, !tbaa !33
  %3581 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3580, i64 1), !nosanitize !32
  %3582 = extractvalue { i64, i1 } %3581, 1, !nosanitize !32
  br i1 %3582, label %3583, label %3584, !prof !34, !nosanitize !32

3583:                                             ; preds = %3575
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3584:                                             ; preds = %3575
  %3585 = extractvalue { i64, i1 } %3581, 0, !nosanitize !32
  %3586 = load ptr, ptr %3304, align 8, !tbaa !35
  %3587 = trunc i16 %3579 to i8
  store i64 %3585, ptr %3303, align 8, !tbaa !33
  %3588 = getelementptr inbounds nuw i8, ptr %3586, i64 %3580
  store i8 %3587, ptr %3588, align 1, !tbaa !28
  %3589 = load i64, ptr %3303, align 8, !tbaa !33
  %3590 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3589, i64 1), !nosanitize !32
  %3591 = extractvalue { i64, i1 } %3590, 1, !nosanitize !32
  br i1 %3591, label %3592, label %3593, !prof !34, !nosanitize !32

3592:                                             ; preds = %3613, %3609, %3584
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3593:                                             ; preds = %3584
  %3594 = extractvalue { i64, i1 } %3590, 0, !nosanitize !32
  %3595 = load ptr, ptr %3304, align 8, !tbaa !35
  %3596 = load i16, ptr %3302, align 8, !tbaa !25
  %3597 = lshr i16 %3596, 8
  %3598 = trunc nuw i16 %3597 to i8
  store i64 %3594, ptr %3303, align 8, !tbaa !33
  %3599 = getelementptr inbounds nuw i8, ptr %3595, i64 %3589
  store i8 %3598, ptr %3599, align 1, !tbaa !28
  %3600 = load i32, ptr %3236, align 4, !tbaa !26
  %3601 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3600), !nosanitize !32
  %3602 = extractvalue { i32, i1 } %3601, 1, !nosanitize !32
  br i1 %3602, label %3568, label %3603, !prof !34, !nosanitize !32

3603:                                             ; preds = %3593
  %3604 = extractvalue { i32, i1 } %3601, 0, !nosanitize !32
  %3605 = lshr i32 %3576, %3604
  %3606 = trunc nuw i32 %3605 to i16
  store i16 %3606, ptr %3302, align 8, !tbaa !25
  %3607 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3560, i32 -16)
  %3608 = extractvalue { i32, i1 } %3607, 1, !nosanitize !32
  br i1 %3608, label %3568, label %3609, !prof !34, !nosanitize !32

3609:                                             ; preds = %3603
  %3610 = extractvalue { i32, i1 } %3607, 0, !nosanitize !32
  %3611 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3600, i32 %3610), !nosanitize !32
  %3612 = extractvalue { i32, i1 } %3611, 1, !nosanitize !32
  br i1 %3612, label %3592, label %3619, !prof !34, !nosanitize !32

3613:                                             ; preds = %3572
  %3614 = shl i32 %3566, %3558
  %3615 = trunc i32 %3614 to i16
  %3616 = or i16 %3556, %3615
  store i16 %3616, ptr %3302, align 8, !tbaa !25
  %3617 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3558, i32 %3560), !nosanitize !32
  %3618 = extractvalue { i32, i1 } %3617, 1, !nosanitize !32
  br i1 %3618, label %3592, label %3619, !prof !34, !nosanitize !32

3619:                                             ; preds = %3613, %3609, %3381, %3374
  %3620 = phi i16 [ %3377, %3374 ], [ %3348, %3381 ], [ %3606, %3609 ], [ %3616, %3613 ]
  %3621 = phi { i32, i1 } [ %3379, %3374 ], [ %3383, %3381 ], [ %3611, %3609 ], [ %3617, %3613 ]
  %3622 = extractvalue { i32, i1 } %3621, 0
  store i32 %3622, ptr %3236, align 4, !tbaa !26
  br label %3623

3623:                                             ; preds = %3619, %3555
  %3624 = phi i16 [ %3556, %3555 ], [ %3620, %3619 ]
  %3625 = phi i32 [ %3558, %3555 ], [ %3622, %3619 ]
  %3626 = load i32, ptr %3297, align 4, !tbaa !31
  %3627 = icmp ult i32 %3327, %3626
  br i1 %3627, label %3305, label %3628, !llvm.loop !79

3628:                                             ; preds = %3623, %3293
  %3629 = phi i16 [ %3294, %3293 ], [ %3624, %3623 ]
  %3630 = phi i32 [ %3296, %3293 ], [ %3625, %3623 ]
  %3631 = icmp sgt i32 %3630, 9
  %3632 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %3631, label %3633, label %3662

3633:                                             ; preds = %3628
  %3634 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3635 = load i64, ptr %3634, align 8, !tbaa !33
  %3636 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3635, i64 1), !nosanitize !32
  %3637 = extractvalue { i64, i1 } %3636, 1, !nosanitize !32
  br i1 %3637, label %3638, label %3639, !prof !34, !nosanitize !32

3638:                                             ; preds = %3633
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3639:                                             ; preds = %3633
  %3640 = extractvalue { i64, i1 } %3636, 0, !nosanitize !32
  %3641 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3642 = load ptr, ptr %3641, align 8, !tbaa !35
  %3643 = trunc i16 %3629 to i8
  store i64 %3640, ptr %3634, align 8, !tbaa !33
  %3644 = getelementptr inbounds nuw i8, ptr %3642, i64 %3635
  store i8 %3643, ptr %3644, align 1, !tbaa !28
  %3645 = load i64, ptr %3634, align 8, !tbaa !33
  %3646 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3645, i64 1), !nosanitize !32
  %3647 = extractvalue { i64, i1 } %3646, 1, !nosanitize !32
  br i1 %3647, label %3648, label %3649, !prof !34, !nosanitize !32

3648:                                             ; preds = %3659, %3639
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3649:                                             ; preds = %3639
  %3650 = extractvalue { i64, i1 } %3646, 0, !nosanitize !32
  %3651 = load ptr, ptr %3641, align 8, !tbaa !35
  %3652 = load i16, ptr %3632, align 8, !tbaa !25
  %3653 = lshr i16 %3652, 8
  %3654 = trunc nuw i16 %3653 to i8
  store i64 %3650, ptr %3634, align 8, !tbaa !33
  %3655 = getelementptr inbounds nuw i8, ptr %3651, i64 %3645
  store i8 %3654, ptr %3655, align 1, !tbaa !28
  %3656 = load i32, ptr %3236, align 4, !tbaa !26
  %3657 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3656), !nosanitize !32
  %3658 = extractvalue { i32, i1 } %3657, 1, !nosanitize !32
  br i1 %3658, label %3568, label %3659, !prof !34, !nosanitize !32

3659:                                             ; preds = %3649
  store i16 0, ptr %3632, align 8, !tbaa !25
  %3660 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3656, i32 -9), !nosanitize !32
  %3661 = extractvalue { i32, i1 } %3660, 1, !nosanitize !32
  br i1 false, label %3648, label %3665, !prof !34, !nosanitize !32

3662:                                             ; preds = %3628
  %3663 = add nsw i32 %3630, 7
  %3664 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3663, 0
  br label %3665

3665:                                             ; preds = %3662, %3659
  %3666 = phi { i32, i1 } [ %3660, %3659 ], [ %3664, %3662 ]
  %3667 = extractvalue { i32, i1 } %3666, 0
  store i32 %3667, ptr %3236, align 4, !tbaa !26
  br label %5256

3668:                                             ; preds = %3234
  %3669 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 4), !nosanitize !32
  %3670 = extractvalue { i32, i1 } %3669, 1, !nosanitize !32
  br i1 %3238, label %3671, label %3711

3671:                                             ; preds = %3668
  br i1 %3670, label %3266, label %3672, !prof !34, !nosanitize !32

3672:                                             ; preds = %3671
  %3673 = extractvalue { i32, i1 } %3669, 0, !nosanitize !32
  %3674 = and i32 %3673, 65535
  %3675 = shl i32 %3673, %3237
  %3676 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3677 = load i16, ptr %3676, align 8, !tbaa !25
  %3678 = trunc i32 %3675 to i16
  %3679 = or i16 %3677, %3678
  store i16 %3679, ptr %3676, align 8, !tbaa !25
  %3680 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3681 = load i64, ptr %3680, align 8, !tbaa !33
  %3682 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3681, i64 1), !nosanitize !32
  %3683 = extractvalue { i64, i1 } %3682, 1, !nosanitize !32
  br i1 %3683, label %3684, label %3685, !prof !34, !nosanitize !32

3684:                                             ; preds = %3672
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3685:                                             ; preds = %3672
  %3686 = extractvalue { i64, i1 } %3682, 0, !nosanitize !32
  %3687 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3688 = load ptr, ptr %3687, align 8, !tbaa !35
  %3689 = trunc i16 %3679 to i8
  store i64 %3686, ptr %3680, align 8, !tbaa !33
  %3690 = getelementptr inbounds nuw i8, ptr %3688, i64 %3681
  store i8 %3689, ptr %3690, align 1, !tbaa !28
  %3691 = load i64, ptr %3680, align 8, !tbaa !33
  %3692 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3691, i64 1), !nosanitize !32
  %3693 = extractvalue { i64, i1 } %3692, 1, !nosanitize !32
  br i1 %3693, label %3694, label %3695, !prof !34, !nosanitize !32

3694:                                             ; preds = %3730, %3721, %3711, %3705, %3685
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3695:                                             ; preds = %3685
  %3696 = extractvalue { i64, i1 } %3692, 0, !nosanitize !32
  %3697 = load ptr, ptr %3687, align 8, !tbaa !35
  %3698 = load i16, ptr %3676, align 8, !tbaa !25
  %3699 = lshr i16 %3698, 8
  %3700 = trunc nuw i16 %3699 to i8
  store i64 %3696, ptr %3680, align 8, !tbaa !33
  %3701 = getelementptr inbounds nuw i8, ptr %3697, i64 %3691
  store i8 %3700, ptr %3701, align 1, !tbaa !28
  %3702 = load i32, ptr %3236, align 4, !tbaa !26
  %3703 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3702), !nosanitize !32
  %3704 = extractvalue { i32, i1 } %3703, 1, !nosanitize !32
  br i1 %3704, label %3242, label %3705, !prof !34, !nosanitize !32

3705:                                             ; preds = %3695
  %3706 = extractvalue { i32, i1 } %3703, 0, !nosanitize !32
  %3707 = lshr i32 %3674, %3706
  %3708 = trunc nuw i32 %3707 to i16
  store i16 %3708, ptr %3676, align 8, !tbaa !25
  %3709 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3702, i32 -13), !nosanitize !32
  %3710 = extractvalue { i32, i1 } %3709, 1, !nosanitize !32
  br i1 false, label %3694, label %3721, !prof !34, !nosanitize !32

3711:                                             ; preds = %3668
  br i1 %3670, label %3694, label %3712, !prof !34, !nosanitize !32

3712:                                             ; preds = %3711
  %3713 = extractvalue { i32, i1 } %3669, 0, !nosanitize !32
  %3714 = shl i32 %3713, %3237
  %3715 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3716 = load i16, ptr %3715, align 8, !tbaa !25
  %3717 = trunc i32 %3714 to i16
  %3718 = or i16 %3716, %3717
  store i16 %3718, ptr %3715, align 8, !tbaa !25
  %3719 = add nsw i32 %3237, 3
  %3720 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3719, 0
  br label %3721

3721:                                             ; preds = %3712, %3705
  %3722 = phi i16 [ %3708, %3705 ], [ %3718, %3712 ]
  %3723 = phi { i32, i1 } [ %3709, %3705 ], [ %3720, %3712 ]
  %3724 = extractvalue { i32, i1 } %3723, 0
  store i32 %3724, ptr %3236, align 4, !tbaa !26
  %3725 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %3726 = load i32, ptr %3725, align 8, !tbaa !73
  %3727 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3726, i32 1), !nosanitize !32
  %3728 = extractvalue { i32, i1 } %3727, 0, !nosanitize !32
  %3729 = extractvalue { i32, i1 } %3727, 1, !nosanitize !32
  br i1 %3729, label %3694, label %3730, !prof !34, !nosanitize !32

3730:                                             ; preds = %3721
  %3731 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %3732 = load i32, ptr %3731, align 8, !tbaa !75
  %3733 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3732, i32 1), !nosanitize !32
  %3734 = extractvalue { i32, i1 } %3733, 0, !nosanitize !32
  %3735 = extractvalue { i32, i1 } %3733, 1, !nosanitize !32
  br i1 %3735, label %3694, label %3736, !prof !34, !nosanitize !32

3736:                                             ; preds = %3730
  %3737 = add nuw nsw i32 %3064, 1
  %3738 = icmp sgt i32 %3724, 11
  %3739 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3728, i32 -257)
  %3740 = extractvalue { i32, i1 } %3739, 1, !nosanitize !32
  br i1 %3738, label %3742, label %3781

3741:                                             ; preds = %4412, %3957, %3932, %3872, %3836, %3820, %3797, %3781, %3765, %3742
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

3742:                                             ; preds = %3736
  br i1 %3740, label %3741, label %3743, !prof !34, !nosanitize !32

3743:                                             ; preds = %3742
  %3744 = extractvalue { i32, i1 } %3739, 0, !nosanitize !32
  %3745 = and i32 %3744, 65535
  %3746 = shl i32 %3744, %3724
  %3747 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3748 = trunc i32 %3746 to i16
  %3749 = or i16 %3722, %3748
  store i16 %3749, ptr %3747, align 8, !tbaa !25
  %3750 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3751 = load i64, ptr %3750, align 8, !tbaa !33
  %3752 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3751, i64 1), !nosanitize !32
  %3753 = extractvalue { i64, i1 } %3752, 1, !nosanitize !32
  br i1 %3753, label %3754, label %3755, !prof !34, !nosanitize !32

3754:                                             ; preds = %3743
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3755:                                             ; preds = %3743
  %3756 = extractvalue { i64, i1 } %3752, 0, !nosanitize !32
  %3757 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3758 = load ptr, ptr %3757, align 8, !tbaa !35
  %3759 = trunc i16 %3749 to i8
  store i64 %3756, ptr %3750, align 8, !tbaa !33
  %3760 = getelementptr inbounds nuw i8, ptr %3758, i64 %3751
  store i8 %3759, ptr %3760, align 1, !tbaa !28
  %3761 = load i64, ptr %3750, align 8, !tbaa !33
  %3762 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3761, i64 1), !nosanitize !32
  %3763 = extractvalue { i64, i1 } %3762, 1, !nosanitize !32
  br i1 %3763, label %3764, label %3765, !prof !34, !nosanitize !32

3764:                                             ; preds = %3775, %3755
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3765:                                             ; preds = %3755
  %3766 = extractvalue { i64, i1 } %3762, 0, !nosanitize !32
  %3767 = load ptr, ptr %3757, align 8, !tbaa !35
  %3768 = load i16, ptr %3747, align 8, !tbaa !25
  %3769 = lshr i16 %3768, 8
  %3770 = trunc nuw i16 %3769 to i8
  store i64 %3766, ptr %3750, align 8, !tbaa !33
  %3771 = getelementptr inbounds nuw i8, ptr %3767, i64 %3761
  store i8 %3770, ptr %3771, align 1, !tbaa !28
  %3772 = load i32, ptr %3236, align 4, !tbaa !26
  %3773 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3772), !nosanitize !32
  %3774 = extractvalue { i32, i1 } %3773, 1, !nosanitize !32
  br i1 %3774, label %3741, label %3775, !prof !34, !nosanitize !32

3775:                                             ; preds = %3765
  %3776 = extractvalue { i32, i1 } %3773, 0, !nosanitize !32
  %3777 = lshr i32 %3745, %3776
  %3778 = trunc nuw i32 %3777 to i16
  store i16 %3778, ptr %3747, align 8, !tbaa !25
  %3779 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3772, i32 -11), !nosanitize !32
  %3780 = extractvalue { i32, i1 } %3779, 1, !nosanitize !32
  br i1 %3780, label %3764, label %3790, !prof !34, !nosanitize !32

3781:                                             ; preds = %3736
  br i1 %3740, label %3741, label %3782, !prof !34, !nosanitize !32

3782:                                             ; preds = %3781
  %3783 = extractvalue { i32, i1 } %3739, 0, !nosanitize !32
  %3784 = shl i32 %3783, %3724
  %3785 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3786 = trunc i32 %3784 to i16
  %3787 = or i16 %3722, %3786
  store i16 %3787, ptr %3785, align 8, !tbaa !25
  %3788 = add nsw i32 %3724, 5
  %3789 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3788, 0
  br label %3790

3790:                                             ; preds = %3782, %3775
  %3791 = phi i16 [ %3778, %3775 ], [ %3787, %3782 ]
  %3792 = phi { i32, i1 } [ %3779, %3775 ], [ %3789, %3782 ]
  %3793 = extractvalue { i32, i1 } %3792, 0
  store i32 %3793, ptr %3236, align 4, !tbaa !26
  %3794 = icmp sgt i32 %3793, 11
  %3795 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3734, i32 -1)
  %3796 = extractvalue { i32, i1 } %3795, 1, !nosanitize !32
  br i1 %3794, label %3797, label %3836

3797:                                             ; preds = %3790
  br i1 false, label %3741, label %3798, !prof !34, !nosanitize !32

3798:                                             ; preds = %3797
  %3799 = extractvalue { i32, i1 } %3795, 0, !nosanitize !32
  %3800 = and i32 %3799, 65535
  %3801 = shl i32 %3799, %3793
  %3802 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3803 = trunc i32 %3801 to i16
  %3804 = or i16 %3791, %3803
  store i16 %3804, ptr %3802, align 8, !tbaa !25
  %3805 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3806 = load i64, ptr %3805, align 8, !tbaa !33
  %3807 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3806, i64 1), !nosanitize !32
  %3808 = extractvalue { i64, i1 } %3807, 1, !nosanitize !32
  br i1 %3808, label %3809, label %3810, !prof !34, !nosanitize !32

3809:                                             ; preds = %3798
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3810:                                             ; preds = %3798
  %3811 = extractvalue { i64, i1 } %3807, 0, !nosanitize !32
  %3812 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3813 = load ptr, ptr %3812, align 8, !tbaa !35
  %3814 = trunc i16 %3804 to i8
  store i64 %3811, ptr %3805, align 8, !tbaa !33
  %3815 = getelementptr inbounds nuw i8, ptr %3813, i64 %3806
  store i8 %3814, ptr %3815, align 1, !tbaa !28
  %3816 = load i64, ptr %3805, align 8, !tbaa !33
  %3817 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3816, i64 1), !nosanitize !32
  %3818 = extractvalue { i64, i1 } %3817, 1, !nosanitize !32
  br i1 %3818, label %3819, label %3820, !prof !34, !nosanitize !32

3819:                                             ; preds = %3830, %3810
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3820:                                             ; preds = %3810
  %3821 = extractvalue { i64, i1 } %3817, 0, !nosanitize !32
  %3822 = load ptr, ptr %3812, align 8, !tbaa !35
  %3823 = load i16, ptr %3802, align 8, !tbaa !25
  %3824 = lshr i16 %3823, 8
  %3825 = trunc nuw i16 %3824 to i8
  store i64 %3821, ptr %3805, align 8, !tbaa !33
  %3826 = getelementptr inbounds nuw i8, ptr %3822, i64 %3816
  store i8 %3825, ptr %3826, align 1, !tbaa !28
  %3827 = load i32, ptr %3236, align 4, !tbaa !26
  %3828 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3827), !nosanitize !32
  %3829 = extractvalue { i32, i1 } %3828, 1, !nosanitize !32
  br i1 %3829, label %3741, label %3830, !prof !34, !nosanitize !32

3830:                                             ; preds = %3820
  %3831 = extractvalue { i32, i1 } %3828, 0, !nosanitize !32
  %3832 = lshr i32 %3800, %3831
  %3833 = trunc nuw i32 %3832 to i16
  store i16 %3833, ptr %3802, align 8, !tbaa !25
  %3834 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3827, i32 -11), !nosanitize !32
  %3835 = extractvalue { i32, i1 } %3834, 1, !nosanitize !32
  br i1 %3835, label %3819, label %3845, !prof !34, !nosanitize !32

3836:                                             ; preds = %3790
  br i1 false, label %3741, label %3837, !prof !34, !nosanitize !32

3837:                                             ; preds = %3836
  %3838 = extractvalue { i32, i1 } %3795, 0, !nosanitize !32
  %3839 = shl i32 %3838, %3793
  %3840 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3841 = trunc i32 %3839 to i16
  %3842 = or i16 %3791, %3841
  store i16 %3842, ptr %3840, align 8, !tbaa !25
  %3843 = add nsw i32 %3793, 5
  %3844 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3843, 0
  br label %3845

3845:                                             ; preds = %3837, %3830
  %3846 = phi i16 [ %3833, %3830 ], [ %3842, %3837 ]
  %3847 = phi { i32, i1 } [ %3834, %3830 ], [ %3844, %3837 ]
  %3848 = extractvalue { i32, i1 } %3847, 0
  store i32 %3848, ptr %3236, align 4, !tbaa !26
  %3849 = icmp sgt i32 %3848, 12
  %3850 = add nsw i32 %3064, -3
  br i1 %3849, label %3851, label %3888

3851:                                             ; preds = %3845
  %3852 = and i32 %3850, 65535
  %3853 = shl i32 %3850, %3848
  %3854 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3855 = trunc i32 %3853 to i16
  %3856 = or i16 %3846, %3855
  store i16 %3856, ptr %3854, align 8, !tbaa !25
  %3857 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3858 = load i64, ptr %3857, align 8, !tbaa !33
  %3859 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3858, i64 1), !nosanitize !32
  %3860 = extractvalue { i64, i1 } %3859, 1, !nosanitize !32
  br i1 %3860, label %3861, label %3862, !prof !34, !nosanitize !32

3861:                                             ; preds = %3851
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3862:                                             ; preds = %3851
  %3863 = extractvalue { i64, i1 } %3859, 0, !nosanitize !32
  %3864 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3865 = load ptr, ptr %3864, align 8, !tbaa !35
  %3866 = trunc i16 %3856 to i8
  store i64 %3863, ptr %3857, align 8, !tbaa !33
  %3867 = getelementptr inbounds nuw i8, ptr %3865, i64 %3858
  store i8 %3866, ptr %3867, align 1, !tbaa !28
  %3868 = load i64, ptr %3857, align 8, !tbaa !33
  %3869 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3868, i64 1), !nosanitize !32
  %3870 = extractvalue { i64, i1 } %3869, 1, !nosanitize !32
  br i1 %3870, label %3871, label %3872, !prof !34, !nosanitize !32

3871:                                             ; preds = %3882, %3862
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3872:                                             ; preds = %3862
  %3873 = extractvalue { i64, i1 } %3869, 0, !nosanitize !32
  %3874 = load ptr, ptr %3864, align 8, !tbaa !35
  %3875 = load i16, ptr %3854, align 8, !tbaa !25
  %3876 = lshr i16 %3875, 8
  %3877 = trunc nuw i16 %3876 to i8
  store i64 %3873, ptr %3857, align 8, !tbaa !33
  %3878 = getelementptr inbounds nuw i8, ptr %3874, i64 %3868
  store i8 %3877, ptr %3878, align 1, !tbaa !28
  %3879 = load i32, ptr %3236, align 4, !tbaa !26
  %3880 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3879), !nosanitize !32
  %3881 = extractvalue { i32, i1 } %3880, 1, !nosanitize !32
  br i1 %3881, label %3741, label %3882, !prof !34, !nosanitize !32

3882:                                             ; preds = %3872
  %3883 = extractvalue { i32, i1 } %3880, 0, !nosanitize !32
  %3884 = lshr i32 %3852, %3883
  %3885 = trunc nuw i32 %3884 to i16
  store i16 %3885, ptr %3854, align 8, !tbaa !25
  %3886 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3879, i32 -12), !nosanitize !32
  %3887 = extractvalue { i32, i1 } %3886, 1, !nosanitize !32
  br i1 %3887, label %3871, label %3894, !prof !34, !nosanitize !32

3888:                                             ; preds = %3845
  %3889 = shl nsw i32 %3850, %3848
  %3890 = trunc i32 %3889 to i16
  %3891 = or i16 %3846, %3890
  %3892 = add nsw i32 %3848, 4
  %3893 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3892, 0
  br label %3894

3894:                                             ; preds = %3888, %3882
  %3895 = phi i16 [ %3885, %3882 ], [ %3891, %3888 ]
  %3896 = phi { i32, i1 } [ %3886, %3882 ], [ %3893, %3888 ]
  %3897 = extractvalue { i32, i1 } %3896, 0
  store i32 %3897, ptr %3236, align 4, !tbaa !26
  %3898 = getelementptr i8, ptr %0, i64 2750
  %3899 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3900 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3901 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3902 = zext nneg i32 %3737 to i64
  br label %3903

3903:                                             ; preds = %3951, %3894
  %3904 = phi i16 [ %3895, %3894 ], [ %3952, %3951 ]
  %3905 = phi i32 [ %3897, %3894 ], [ %3954, %3951 ]
  %3906 = phi i64 [ 0, %3894 ], [ %3955, %3951 ]
  %3907 = icmp sgt i32 %3905, 13
  %3908 = getelementptr inbounds nuw [19 x i8], ptr @bl_order, i64 0, i64 %3906
  %3909 = load i8, ptr %3908, align 1, !tbaa !28
  %3910 = zext i8 %3909 to i64
  %3911 = shl nuw nsw i64 %3910, 2
  %3912 = getelementptr i8, ptr %3898, i64 %3911
  %3913 = load i16, ptr %3912, align 2, !tbaa !28
  %3914 = zext i16 %3913 to i32
  %3915 = shl i32 %3914, %3905
  %3916 = trunc i32 %3915 to i16
  %3917 = or i16 %3904, %3916
  store i16 %3917, ptr %3899, align 8, !tbaa !25
  br i1 %3907, label %3918, label %3948

3918:                                             ; preds = %3903
  %3919 = load i64, ptr %3900, align 8, !tbaa !33
  %3920 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3919, i64 1), !nosanitize !32
  %3921 = extractvalue { i64, i1 } %3920, 1, !nosanitize !32
  br i1 %3921, label %3922, label %3923, !prof !34, !nosanitize !32

3922:                                             ; preds = %3918
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3923:                                             ; preds = %3918
  %3924 = extractvalue { i64, i1 } %3920, 0, !nosanitize !32
  %3925 = load ptr, ptr %3901, align 8, !tbaa !35
  %3926 = trunc i16 %3917 to i8
  store i64 %3924, ptr %3900, align 8, !tbaa !33
  %3927 = getelementptr inbounds nuw i8, ptr %3925, i64 %3919
  store i8 %3926, ptr %3927, align 1, !tbaa !28
  %3928 = load i64, ptr %3900, align 8, !tbaa !33
  %3929 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3928, i64 1), !nosanitize !32
  %3930 = extractvalue { i64, i1 } %3929, 1, !nosanitize !32
  br i1 %3930, label %3931, label %3932, !prof !34, !nosanitize !32

3931:                                             ; preds = %3942, %3923
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3932:                                             ; preds = %3923
  %3933 = extractvalue { i64, i1 } %3929, 0, !nosanitize !32
  %3934 = load ptr, ptr %3901, align 8, !tbaa !35
  %3935 = load i16, ptr %3899, align 8, !tbaa !25
  %3936 = lshr i16 %3935, 8
  %3937 = trunc nuw i16 %3936 to i8
  store i64 %3933, ptr %3900, align 8, !tbaa !33
  %3938 = getelementptr inbounds nuw i8, ptr %3934, i64 %3928
  store i8 %3937, ptr %3938, align 1, !tbaa !28
  %3939 = load i32, ptr %3236, align 4, !tbaa !26
  %3940 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3939), !nosanitize !32
  %3941 = extractvalue { i32, i1 } %3940, 1, !nosanitize !32
  br i1 %3941, label %3741, label %3942, !prof !34, !nosanitize !32

3942:                                             ; preds = %3932
  %3943 = extractvalue { i32, i1 } %3940, 0, !nosanitize !32
  %3944 = lshr i32 %3914, %3943
  %3945 = trunc nuw i32 %3944 to i16
  store i16 %3945, ptr %3899, align 8, !tbaa !25
  %3946 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3939, i32 -13), !nosanitize !32
  %3947 = extractvalue { i32, i1 } %3946, 1, !nosanitize !32
  br i1 false, label %3931, label %3951, !prof !34, !nosanitize !32

3948:                                             ; preds = %3903
  %3949 = add nsw i32 %3905, 3
  %3950 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3949, 0
  br label %3951

3951:                                             ; preds = %3948, %3942
  %3952 = phi i16 [ %3945, %3942 ], [ %3917, %3948 ]
  %3953 = phi { i32, i1 } [ %3946, %3942 ], [ %3950, %3948 ]
  %3954 = extractvalue { i32, i1 } %3953, 0
  store i32 %3954, ptr %3236, align 4, !tbaa !26
  %3955 = add nuw nsw i64 %3906, 1
  %3956 = icmp eq i64 %3955, %3902
  br i1 %3956, label %3957, label %3903, !llvm.loop !80

3957:                                             ; preds = %3951
  %3958 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3728, i32 -1)
  %3959 = extractvalue { i32, i1 } %3958, 1, !nosanitize !32
  br i1 false, label %3741, label %3960, !prof !34, !nosanitize !32

3960:                                             ; preds = %3957
  %3961 = extractvalue { i32, i1 } %3958, 0, !nosanitize !32
  %3962 = icmp slt i32 %3961, 0
  br i1 %3962, label %4412, label %3963

3963:                                             ; preds = %3960
  %3964 = getelementptr i8, ptr %0, i64 214
  %3965 = load i16, ptr %3964, align 2, !tbaa !28
  %3966 = icmp eq i16 %3965, 0
  %3967 = select i1 %3966, i32 138, i32 7
  %3968 = select i1 %3966, i32 3, i32 4
  %3969 = zext i16 %3965 to i32
  %3970 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3971 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3972 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3973 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3974 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3975 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3976 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3977

3977:                                             ; preds = %4404, %3963
  %3978 = phi i16 [ %3952, %3963 ], [ %4405, %4404 ]
  %3979 = phi i32 [ %3954, %3963 ], [ %4406, %4404 ]
  %3980 = phi i32 [ 0, %3963 ], [ %3987, %4404 ]
  %3981 = phi i32 [ -1, %3963 ], [ %4410, %4404 ]
  %3982 = phi i32 [ %3969, %3963 ], [ %3995, %4404 ]
  %3983 = phi i32 [ 0, %3963 ], [ %4409, %4404 ]
  %3984 = phi i32 [ %3967, %3963 ], [ %4408, %4404 ]
  %3985 = phi i32 [ %3968, %3963 ], [ %4407, %4404 ]
  %3986 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3980, i32 1), !nosanitize !32
  %3987 = extractvalue { i32, i1 } %3986, 0, !nosanitize !32
  %3988 = extractvalue { i32, i1 } %3986, 1, !nosanitize !32
  br i1 %3988, label %3989, label %3990, !prof !34, !nosanitize !32

3989:                                             ; preds = %3977
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

3990:                                             ; preds = %3977
  %3991 = sext i32 %3987 to i64
  %3992 = shl nsw i64 %3991, 2
  %3993 = getelementptr i8, ptr %3964, i64 %3992
  %3994 = load i16, ptr %3993, align 2, !tbaa !28
  %3995 = zext i16 %3994 to i32
  %3996 = add nsw i32 %3983, 1
  %3997 = icmp slt i32 %3996, %3984
  %3998 = icmp eq i32 %3982, %3995
  %3999 = select i1 %3997, i1 %3998, i1 false
  br i1 %3999, label %4404, label %4000

4000:                                             ; preds = %3990
  %4001 = icmp slt i32 %3996, %3985
  br i1 %4001, label %4002, label %4063

4002:                                             ; preds = %4000
  %4003 = zext nneg i32 %3982 to i64
  %4004 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %3970, i64 0, i64 %4003
  %4005 = getelementptr inbounds nuw i8, ptr %4004, i64 2
  br label %4006

4006:                                             ; preds = %4060, %4002
  %4007 = phi i16 [ %4055, %4060 ], [ %3978, %4002 ]
  %4008 = phi i32 [ %4057, %4060 ], [ %3979, %4002 ]
  %4009 = phi i32 [ %4061, %4060 ], [ %3996, %4002 ]
  %4010 = load i16, ptr %4005, align 2, !tbaa !28
  %4011 = zext i16 %4010 to i32
  %4012 = sub nsw i32 16, %4011
  %4013 = icmp sgt i32 %4008, %4012
  %4014 = load i16, ptr %4004, align 4, !tbaa !28
  %4015 = zext i16 %4014 to i32
  %4016 = shl i32 %4015, %4008
  %4017 = trunc i32 %4016 to i16
  %4018 = or i16 %4007, %4017
  store i16 %4018, ptr %3899, align 8, !tbaa !25
  br i1 %4013, label %4020, label %4051

4019:                                             ; preds = %4371, %4327, %4281, %4237, %4189, %4145, %4094, %4054, %4034
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

4020:                                             ; preds = %4006
  %4021 = load i64, ptr %3900, align 8, !tbaa !33
  %4022 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4021, i64 1), !nosanitize !32
  %4023 = extractvalue { i64, i1 } %4022, 1, !nosanitize !32
  br i1 %4023, label %4024, label %4025, !prof !34, !nosanitize !32

4024:                                             ; preds = %4020
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4025:                                             ; preds = %4020
  %4026 = extractvalue { i64, i1 } %4022, 0, !nosanitize !32
  %4027 = load ptr, ptr %3901, align 8, !tbaa !35
  %4028 = trunc i16 %4018 to i8
  store i64 %4026, ptr %3900, align 8, !tbaa !33
  %4029 = getelementptr inbounds nuw i8, ptr %4027, i64 %4021
  store i8 %4028, ptr %4029, align 1, !tbaa !28
  %4030 = load i64, ptr %3900, align 8, !tbaa !33
  %4031 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4030, i64 1), !nosanitize !32
  %4032 = extractvalue { i64, i1 } %4031, 1, !nosanitize !32
  br i1 %4032, label %4033, label %4034, !prof !34, !nosanitize !32

4033:                                             ; preds = %4044, %4025
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4034:                                             ; preds = %4025
  %4035 = extractvalue { i64, i1 } %4031, 0, !nosanitize !32
  %4036 = load ptr, ptr %3901, align 8, !tbaa !35
  %4037 = load i16, ptr %3899, align 8, !tbaa !25
  %4038 = lshr i16 %4037, 8
  %4039 = trunc nuw i16 %4038 to i8
  store i64 %4035, ptr %3900, align 8, !tbaa !33
  %4040 = getelementptr inbounds nuw i8, ptr %4036, i64 %4030
  store i8 %4039, ptr %4040, align 1, !tbaa !28
  %4041 = load i32, ptr %3236, align 4, !tbaa !26
  %4042 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4041), !nosanitize !32
  %4043 = extractvalue { i32, i1 } %4042, 1, !nosanitize !32
  br i1 %4043, label %4019, label %4044, !prof !34, !nosanitize !32

4044:                                             ; preds = %4034
  %4045 = extractvalue { i32, i1 } %4042, 0, !nosanitize !32
  %4046 = lshr i32 %4015, %4045
  %4047 = trunc nuw i32 %4046 to i16
  store i16 %4047, ptr %3899, align 8, !tbaa !25
  %4048 = add nsw i32 %4011, -16
  %4049 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4041, i32 %4048), !nosanitize !32
  %4050 = extractvalue { i32, i1 } %4049, 1, !nosanitize !32
  br i1 %4050, label %4033, label %4054, !prof !34, !nosanitize !32

4051:                                             ; preds = %4006
  %4052 = add nsw i32 %4008, %4011
  %4053 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4052, 0
  br label %4054

4054:                                             ; preds = %4051, %4044
  %4055 = phi i16 [ %4047, %4044 ], [ %4018, %4051 ]
  %4056 = phi { i32, i1 } [ %4049, %4044 ], [ %4053, %4051 ]
  %4057 = extractvalue { i32, i1 } %4056, 0
  store i32 %4057, ptr %3236, align 4, !tbaa !26
  %4058 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4009, i32 -1)
  %4059 = extractvalue { i32, i1 } %4058, 1, !nosanitize !32
  br i1 %4059, label %4019, label %4060, !prof !34, !nosanitize !32

4060:                                             ; preds = %4054
  %4061 = extractvalue { i32, i1 } %4058, 0, !nosanitize !32
  %4062 = icmp eq i32 %4061, 0
  br i1 %4062, label %4397, label %4006, !llvm.loop !81

4063:                                             ; preds = %4000
  %4064 = icmp eq i32 %3982, 0
  br i1 %4064, label %4211, label %4065

4065:                                             ; preds = %4063
  %4066 = icmp eq i32 %3982, %3981
  br i1 %4066, label %4118, label %4067

4067:                                             ; preds = %4065
  %4068 = zext nneg i32 %3982 to i64
  %4069 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %3970, i64 0, i64 %4068
  %4070 = getelementptr inbounds nuw i8, ptr %4069, i64 2
  %4071 = load i16, ptr %4070, align 2, !tbaa !28
  %4072 = zext i16 %4071 to i32
  %4073 = sub nsw i32 16, %4072
  %4074 = icmp sgt i32 %3979, %4073
  %4075 = load i16, ptr %4069, align 4, !tbaa !28
  %4076 = zext i16 %4075 to i32
  %4077 = shl i32 %4076, %3979
  %4078 = trunc i32 %4077 to i16
  %4079 = or i16 %3978, %4078
  store i16 %4079, ptr %3899, align 8, !tbaa !25
  br i1 %4074, label %4080, label %4111

4080:                                             ; preds = %4067
  %4081 = load i64, ptr %3900, align 8, !tbaa !33
  %4082 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4081, i64 1), !nosanitize !32
  %4083 = extractvalue { i64, i1 } %4082, 1, !nosanitize !32
  br i1 %4083, label %4084, label %4085, !prof !34, !nosanitize !32

4084:                                             ; preds = %4080
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4085:                                             ; preds = %4080
  %4086 = extractvalue { i64, i1 } %4082, 0, !nosanitize !32
  %4087 = load ptr, ptr %3901, align 8, !tbaa !35
  %4088 = trunc i16 %4079 to i8
  store i64 %4086, ptr %3900, align 8, !tbaa !33
  %4089 = getelementptr inbounds nuw i8, ptr %4087, i64 %4081
  store i8 %4088, ptr %4089, align 1, !tbaa !28
  %4090 = load i64, ptr %3900, align 8, !tbaa !33
  %4091 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4090, i64 1), !nosanitize !32
  %4092 = extractvalue { i64, i1 } %4091, 1, !nosanitize !32
  br i1 %4092, label %4093, label %4094, !prof !34, !nosanitize !32

4093:                                             ; preds = %4104, %4085
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4094:                                             ; preds = %4085
  %4095 = extractvalue { i64, i1 } %4091, 0, !nosanitize !32
  %4096 = load ptr, ptr %3901, align 8, !tbaa !35
  %4097 = load i16, ptr %3899, align 8, !tbaa !25
  %4098 = lshr i16 %4097, 8
  %4099 = trunc nuw i16 %4098 to i8
  store i64 %4095, ptr %3900, align 8, !tbaa !33
  %4100 = getelementptr inbounds nuw i8, ptr %4096, i64 %4090
  store i8 %4099, ptr %4100, align 1, !tbaa !28
  %4101 = load i32, ptr %3236, align 4, !tbaa !26
  %4102 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4101), !nosanitize !32
  %4103 = extractvalue { i32, i1 } %4102, 1, !nosanitize !32
  br i1 %4103, label %4019, label %4104, !prof !34, !nosanitize !32

4104:                                             ; preds = %4094
  %4105 = extractvalue { i32, i1 } %4102, 0, !nosanitize !32
  %4106 = lshr i32 %4076, %4105
  %4107 = trunc nuw i32 %4106 to i16
  store i16 %4107, ptr %3899, align 8, !tbaa !25
  %4108 = add nsw i32 %4072, -16
  %4109 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4101, i32 %4108), !nosanitize !32
  %4110 = extractvalue { i32, i1 } %4109, 1, !nosanitize !32
  br i1 %4110, label %4093, label %4114, !prof !34, !nosanitize !32

4111:                                             ; preds = %4067
  %4112 = add nsw i32 %3979, %4072
  %4113 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4112, 0
  br label %4114

4114:                                             ; preds = %4111, %4104
  %4115 = phi i16 [ %4107, %4104 ], [ %4079, %4111 ]
  %4116 = phi { i32, i1 } [ %4109, %4104 ], [ %4113, %4111 ]
  %4117 = extractvalue { i32, i1 } %4116, 0
  store i32 %4117, ptr %3236, align 4, !tbaa !26
  br label %4118

4118:                                             ; preds = %4114, %4065
  %4119 = phi i16 [ %4115, %4114 ], [ %3978, %4065 ]
  %4120 = phi i32 [ %4117, %4114 ], [ %3979, %4065 ]
  %4121 = phi i32 [ %3983, %4114 ], [ %3996, %4065 ]
  %4122 = load i16, ptr %3972, align 2, !tbaa !28
  %4123 = zext i16 %4122 to i32
  %4124 = sub nsw i32 16, %4123
  %4125 = icmp sgt i32 %4120, %4124
  %4126 = load i16, ptr %3971, align 4, !tbaa !28
  %4127 = zext i16 %4126 to i32
  %4128 = shl i32 %4127, %4120
  %4129 = trunc i32 %4128 to i16
  %4130 = or i16 %4119, %4129
  store i16 %4130, ptr %3899, align 8, !tbaa !25
  br i1 %4125, label %4131, label %4162

4131:                                             ; preds = %4118
  %4132 = load i64, ptr %3900, align 8, !tbaa !33
  %4133 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4132, i64 1), !nosanitize !32
  %4134 = extractvalue { i64, i1 } %4133, 1, !nosanitize !32
  br i1 %4134, label %4135, label %4136, !prof !34, !nosanitize !32

4135:                                             ; preds = %4131
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4136:                                             ; preds = %4131
  %4137 = extractvalue { i64, i1 } %4133, 0, !nosanitize !32
  %4138 = load ptr, ptr %3901, align 8, !tbaa !35
  %4139 = trunc i16 %4130 to i8
  store i64 %4137, ptr %3900, align 8, !tbaa !33
  %4140 = getelementptr inbounds nuw i8, ptr %4138, i64 %4132
  store i8 %4139, ptr %4140, align 1, !tbaa !28
  %4141 = load i64, ptr %3900, align 8, !tbaa !33
  %4142 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4141, i64 1), !nosanitize !32
  %4143 = extractvalue { i64, i1 } %4142, 1, !nosanitize !32
  br i1 %4143, label %4144, label %4145, !prof !34, !nosanitize !32

4144:                                             ; preds = %4155, %4136
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4145:                                             ; preds = %4136
  %4146 = extractvalue { i64, i1 } %4142, 0, !nosanitize !32
  %4147 = load ptr, ptr %3901, align 8, !tbaa !35
  %4148 = load i16, ptr %3899, align 8, !tbaa !25
  %4149 = lshr i16 %4148, 8
  %4150 = trunc nuw i16 %4149 to i8
  store i64 %4146, ptr %3900, align 8, !tbaa !33
  %4151 = getelementptr inbounds nuw i8, ptr %4147, i64 %4141
  store i8 %4150, ptr %4151, align 1, !tbaa !28
  %4152 = load i32, ptr %3236, align 4, !tbaa !26
  %4153 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4152), !nosanitize !32
  %4154 = extractvalue { i32, i1 } %4153, 1, !nosanitize !32
  br i1 %4154, label %4019, label %4155, !prof !34, !nosanitize !32

4155:                                             ; preds = %4145
  %4156 = extractvalue { i32, i1 } %4153, 0, !nosanitize !32
  %4157 = lshr i32 %4127, %4156
  %4158 = trunc nuw i32 %4157 to i16
  store i16 %4158, ptr %3899, align 8, !tbaa !25
  %4159 = add nsw i32 %4123, -16
  %4160 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4152, i32 %4159), !nosanitize !32
  %4161 = extractvalue { i32, i1 } %4160, 1, !nosanitize !32
  br i1 %4161, label %4144, label %4165, !prof !34, !nosanitize !32

4162:                                             ; preds = %4118
  %4163 = add nsw i32 %4120, %4123
  %4164 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4163, 0
  br label %4165

4165:                                             ; preds = %4162, %4155
  %4166 = phi i16 [ %4158, %4155 ], [ %4130, %4162 ]
  %4167 = phi { i32, i1 } [ %4160, %4155 ], [ %4164, %4162 ]
  %4168 = extractvalue { i32, i1 } %4167, 0
  store i32 %4168, ptr %3236, align 4, !tbaa !26
  %4169 = icmp sgt i32 %4168, 14
  %4170 = add i32 %4121, 65533
  br i1 %4169, label %4171, label %4205

4171:                                             ; preds = %4165
  %4172 = and i32 %4170, 65535
  %4173 = shl i32 %4170, %4168
  %4174 = trunc i32 %4173 to i16
  %4175 = or i16 %4166, %4174
  store i16 %4175, ptr %3899, align 8, !tbaa !25
  %4176 = load i64, ptr %3900, align 8, !tbaa !33
  %4177 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4176, i64 1), !nosanitize !32
  %4178 = extractvalue { i64, i1 } %4177, 1, !nosanitize !32
  br i1 %4178, label %4179, label %4180, !prof !34, !nosanitize !32

4179:                                             ; preds = %4171
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4180:                                             ; preds = %4171
  %4181 = extractvalue { i64, i1 } %4177, 0, !nosanitize !32
  %4182 = load ptr, ptr %3901, align 8, !tbaa !35
  %4183 = trunc i16 %4175 to i8
  store i64 %4181, ptr %3900, align 8, !tbaa !33
  %4184 = getelementptr inbounds nuw i8, ptr %4182, i64 %4176
  store i8 %4183, ptr %4184, align 1, !tbaa !28
  %4185 = load i64, ptr %3900, align 8, !tbaa !33
  %4186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4185, i64 1), !nosanitize !32
  %4187 = extractvalue { i64, i1 } %4186, 1, !nosanitize !32
  br i1 %4187, label %4188, label %4189, !prof !34, !nosanitize !32

4188:                                             ; preds = %4199, %4180
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4189:                                             ; preds = %4180
  %4190 = extractvalue { i64, i1 } %4186, 0, !nosanitize !32
  %4191 = load ptr, ptr %3901, align 8, !tbaa !35
  %4192 = load i16, ptr %3899, align 8, !tbaa !25
  %4193 = lshr i16 %4192, 8
  %4194 = trunc nuw i16 %4193 to i8
  store i64 %4190, ptr %3900, align 8, !tbaa !33
  %4195 = getelementptr inbounds nuw i8, ptr %4191, i64 %4185
  store i8 %4194, ptr %4195, align 1, !tbaa !28
  %4196 = load i32, ptr %3236, align 4, !tbaa !26
  %4197 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4196), !nosanitize !32
  %4198 = extractvalue { i32, i1 } %4197, 1, !nosanitize !32
  br i1 %4198, label %4019, label %4199, !prof !34, !nosanitize !32

4199:                                             ; preds = %4189
  %4200 = extractvalue { i32, i1 } %4197, 0, !nosanitize !32
  %4201 = lshr i32 %4172, %4200
  %4202 = trunc nuw i32 %4201 to i16
  store i16 %4202, ptr %3899, align 8, !tbaa !25
  %4203 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4196, i32 -14), !nosanitize !32
  %4204 = extractvalue { i32, i1 } %4203, 1, !nosanitize !32
  br i1 %4204, label %4188, label %4393, !prof !34, !nosanitize !32

4205:                                             ; preds = %4165
  %4206 = shl i32 %4170, %4168
  %4207 = trunc i32 %4206 to i16
  %4208 = or i16 %4166, %4207
  store i16 %4208, ptr %3899, align 8, !tbaa !25
  %4209 = add nsw i32 %4168, 2
  %4210 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4209, 0
  br label %4393

4211:                                             ; preds = %4063
  %4212 = icmp slt i32 %3983, 10
  br i1 %4212, label %4213, label %4303

4213:                                             ; preds = %4211
  %4214 = load i16, ptr %3976, align 2, !tbaa !28
  %4215 = zext i16 %4214 to i32
  %4216 = sub nsw i32 16, %4215
  %4217 = icmp sgt i32 %3979, %4216
  %4218 = load i16, ptr %3975, align 4, !tbaa !28
  %4219 = zext i16 %4218 to i32
  %4220 = shl i32 %4219, %3979
  %4221 = trunc i32 %4220 to i16
  %4222 = or i16 %3978, %4221
  store i16 %4222, ptr %3899, align 8, !tbaa !25
  br i1 %4217, label %4223, label %4254

4223:                                             ; preds = %4213
  %4224 = load i64, ptr %3900, align 8, !tbaa !33
  %4225 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4224, i64 1), !nosanitize !32
  %4226 = extractvalue { i64, i1 } %4225, 1, !nosanitize !32
  br i1 %4226, label %4227, label %4228, !prof !34, !nosanitize !32

4227:                                             ; preds = %4223
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4228:                                             ; preds = %4223
  %4229 = extractvalue { i64, i1 } %4225, 0, !nosanitize !32
  %4230 = load ptr, ptr %3901, align 8, !tbaa !35
  %4231 = trunc i16 %4222 to i8
  store i64 %4229, ptr %3900, align 8, !tbaa !33
  %4232 = getelementptr inbounds nuw i8, ptr %4230, i64 %4224
  store i8 %4231, ptr %4232, align 1, !tbaa !28
  %4233 = load i64, ptr %3900, align 8, !tbaa !33
  %4234 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4233, i64 1), !nosanitize !32
  %4235 = extractvalue { i64, i1 } %4234, 1, !nosanitize !32
  br i1 %4235, label %4236, label %4237, !prof !34, !nosanitize !32

4236:                                             ; preds = %4247, %4228
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4237:                                             ; preds = %4228
  %4238 = extractvalue { i64, i1 } %4234, 0, !nosanitize !32
  %4239 = load ptr, ptr %3901, align 8, !tbaa !35
  %4240 = load i16, ptr %3899, align 8, !tbaa !25
  %4241 = lshr i16 %4240, 8
  %4242 = trunc nuw i16 %4241 to i8
  store i64 %4238, ptr %3900, align 8, !tbaa !33
  %4243 = getelementptr inbounds nuw i8, ptr %4239, i64 %4233
  store i8 %4242, ptr %4243, align 1, !tbaa !28
  %4244 = load i32, ptr %3236, align 4, !tbaa !26
  %4245 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4244), !nosanitize !32
  %4246 = extractvalue { i32, i1 } %4245, 1, !nosanitize !32
  br i1 %4246, label %4019, label %4247, !prof !34, !nosanitize !32

4247:                                             ; preds = %4237
  %4248 = extractvalue { i32, i1 } %4245, 0, !nosanitize !32
  %4249 = lshr i32 %4219, %4248
  %4250 = trunc nuw i32 %4249 to i16
  store i16 %4250, ptr %3899, align 8, !tbaa !25
  %4251 = add nsw i32 %4215, -16
  %4252 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4244, i32 %4251), !nosanitize !32
  %4253 = extractvalue { i32, i1 } %4252, 1, !nosanitize !32
  br i1 %4253, label %4236, label %4257, !prof !34, !nosanitize !32

4254:                                             ; preds = %4213
  %4255 = add nsw i32 %3979, %4215
  %4256 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4255, 0
  br label %4257

4257:                                             ; preds = %4254, %4247
  %4258 = phi i16 [ %4250, %4247 ], [ %4222, %4254 ]
  %4259 = phi { i32, i1 } [ %4252, %4247 ], [ %4256, %4254 ]
  %4260 = extractvalue { i32, i1 } %4259, 0
  store i32 %4260, ptr %3236, align 4, !tbaa !26
  %4261 = icmp sgt i32 %4260, 13
  %4262 = add nsw i32 %3983, 65534
  br i1 %4261, label %4263, label %4297

4263:                                             ; preds = %4257
  %4264 = and i32 %4262, 65535
  %4265 = shl i32 %4262, %4260
  %4266 = trunc i32 %4265 to i16
  %4267 = or i16 %4258, %4266
  store i16 %4267, ptr %3899, align 8, !tbaa !25
  %4268 = load i64, ptr %3900, align 8, !tbaa !33
  %4269 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4268, i64 1), !nosanitize !32
  %4270 = extractvalue { i64, i1 } %4269, 1, !nosanitize !32
  br i1 %4270, label %4271, label %4272, !prof !34, !nosanitize !32

4271:                                             ; preds = %4263
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4272:                                             ; preds = %4263
  %4273 = extractvalue { i64, i1 } %4269, 0, !nosanitize !32
  %4274 = load ptr, ptr %3901, align 8, !tbaa !35
  %4275 = trunc i16 %4267 to i8
  store i64 %4273, ptr %3900, align 8, !tbaa !33
  %4276 = getelementptr inbounds nuw i8, ptr %4274, i64 %4268
  store i8 %4275, ptr %4276, align 1, !tbaa !28
  %4277 = load i64, ptr %3900, align 8, !tbaa !33
  %4278 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4277, i64 1), !nosanitize !32
  %4279 = extractvalue { i64, i1 } %4278, 1, !nosanitize !32
  br i1 %4279, label %4280, label %4281, !prof !34, !nosanitize !32

4280:                                             ; preds = %4291, %4272
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4281:                                             ; preds = %4272
  %4282 = extractvalue { i64, i1 } %4278, 0, !nosanitize !32
  %4283 = load ptr, ptr %3901, align 8, !tbaa !35
  %4284 = load i16, ptr %3899, align 8, !tbaa !25
  %4285 = lshr i16 %4284, 8
  %4286 = trunc nuw i16 %4285 to i8
  store i64 %4282, ptr %3900, align 8, !tbaa !33
  %4287 = getelementptr inbounds nuw i8, ptr %4283, i64 %4277
  store i8 %4286, ptr %4287, align 1, !tbaa !28
  %4288 = load i32, ptr %3236, align 4, !tbaa !26
  %4289 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4288), !nosanitize !32
  %4290 = extractvalue { i32, i1 } %4289, 1, !nosanitize !32
  br i1 %4290, label %4019, label %4291, !prof !34, !nosanitize !32

4291:                                             ; preds = %4281
  %4292 = extractvalue { i32, i1 } %4289, 0, !nosanitize !32
  %4293 = lshr i32 %4264, %4292
  %4294 = trunc nuw i32 %4293 to i16
  store i16 %4294, ptr %3899, align 8, !tbaa !25
  %4295 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4288, i32 -13), !nosanitize !32
  %4296 = extractvalue { i32, i1 } %4295, 1, !nosanitize !32
  br i1 false, label %4280, label %4393, !prof !34, !nosanitize !32

4297:                                             ; preds = %4257
  %4298 = shl i32 %4262, %4260
  %4299 = trunc i32 %4298 to i16
  %4300 = or i16 %4258, %4299
  store i16 %4300, ptr %3899, align 8, !tbaa !25
  %4301 = add nsw i32 %4260, 3
  %4302 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4301, 0
  br label %4393

4303:                                             ; preds = %4211
  %4304 = load i16, ptr %3974, align 2, !tbaa !28
  %4305 = zext i16 %4304 to i32
  %4306 = sub nsw i32 16, %4305
  %4307 = icmp sgt i32 %3979, %4306
  %4308 = load i16, ptr %3973, align 4, !tbaa !28
  %4309 = zext i16 %4308 to i32
  %4310 = shl i32 %4309, %3979
  %4311 = trunc i32 %4310 to i16
  %4312 = or i16 %3978, %4311
  store i16 %4312, ptr %3899, align 8, !tbaa !25
  br i1 %4307, label %4313, label %4344

4313:                                             ; preds = %4303
  %4314 = load i64, ptr %3900, align 8, !tbaa !33
  %4315 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4314, i64 1), !nosanitize !32
  %4316 = extractvalue { i64, i1 } %4315, 1, !nosanitize !32
  br i1 %4316, label %4317, label %4318, !prof !34, !nosanitize !32

4317:                                             ; preds = %4313
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4318:                                             ; preds = %4313
  %4319 = extractvalue { i64, i1 } %4315, 0, !nosanitize !32
  %4320 = load ptr, ptr %3901, align 8, !tbaa !35
  %4321 = trunc i16 %4312 to i8
  store i64 %4319, ptr %3900, align 8, !tbaa !33
  %4322 = getelementptr inbounds nuw i8, ptr %4320, i64 %4314
  store i8 %4321, ptr %4322, align 1, !tbaa !28
  %4323 = load i64, ptr %3900, align 8, !tbaa !33
  %4324 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4323, i64 1), !nosanitize !32
  %4325 = extractvalue { i64, i1 } %4324, 1, !nosanitize !32
  br i1 %4325, label %4326, label %4327, !prof !34, !nosanitize !32

4326:                                             ; preds = %4337, %4318
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4327:                                             ; preds = %4318
  %4328 = extractvalue { i64, i1 } %4324, 0, !nosanitize !32
  %4329 = load ptr, ptr %3901, align 8, !tbaa !35
  %4330 = load i16, ptr %3899, align 8, !tbaa !25
  %4331 = lshr i16 %4330, 8
  %4332 = trunc nuw i16 %4331 to i8
  store i64 %4328, ptr %3900, align 8, !tbaa !33
  %4333 = getelementptr inbounds nuw i8, ptr %4329, i64 %4323
  store i8 %4332, ptr %4333, align 1, !tbaa !28
  %4334 = load i32, ptr %3236, align 4, !tbaa !26
  %4335 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4334), !nosanitize !32
  %4336 = extractvalue { i32, i1 } %4335, 1, !nosanitize !32
  br i1 %4336, label %4019, label %4337, !prof !34, !nosanitize !32

4337:                                             ; preds = %4327
  %4338 = extractvalue { i32, i1 } %4335, 0, !nosanitize !32
  %4339 = lshr i32 %4309, %4338
  %4340 = trunc nuw i32 %4339 to i16
  store i16 %4340, ptr %3899, align 8, !tbaa !25
  %4341 = add nsw i32 %4305, -16
  %4342 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4334, i32 %4341), !nosanitize !32
  %4343 = extractvalue { i32, i1 } %4342, 1, !nosanitize !32
  br i1 %4343, label %4326, label %4347, !prof !34, !nosanitize !32

4344:                                             ; preds = %4303
  %4345 = add nsw i32 %3979, %4305
  %4346 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4345, 0
  br label %4347

4347:                                             ; preds = %4344, %4337
  %4348 = phi i16 [ %4340, %4337 ], [ %4312, %4344 ]
  %4349 = phi { i32, i1 } [ %4342, %4337 ], [ %4346, %4344 ]
  %4350 = extractvalue { i32, i1 } %4349, 0
  store i32 %4350, ptr %3236, align 4, !tbaa !26
  %4351 = icmp sgt i32 %4350, 9
  %4352 = add nuw i32 %3983, 65526
  br i1 %4351, label %4353, label %4387

4353:                                             ; preds = %4347
  %4354 = and i32 %4352, 65535
  %4355 = shl i32 %4352, %4350
  %4356 = trunc i32 %4355 to i16
  %4357 = or i16 %4348, %4356
  store i16 %4357, ptr %3899, align 8, !tbaa !25
  %4358 = load i64, ptr %3900, align 8, !tbaa !33
  %4359 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4358, i64 1), !nosanitize !32
  %4360 = extractvalue { i64, i1 } %4359, 1, !nosanitize !32
  br i1 %4360, label %4361, label %4362, !prof !34, !nosanitize !32

4361:                                             ; preds = %4353
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4362:                                             ; preds = %4353
  %4363 = extractvalue { i64, i1 } %4359, 0, !nosanitize !32
  %4364 = load ptr, ptr %3901, align 8, !tbaa !35
  %4365 = trunc i16 %4357 to i8
  store i64 %4363, ptr %3900, align 8, !tbaa !33
  %4366 = getelementptr inbounds nuw i8, ptr %4364, i64 %4358
  store i8 %4365, ptr %4366, align 1, !tbaa !28
  %4367 = load i64, ptr %3900, align 8, !tbaa !33
  %4368 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4367, i64 1), !nosanitize !32
  %4369 = extractvalue { i64, i1 } %4368, 1, !nosanitize !32
  br i1 %4369, label %4370, label %4371, !prof !34, !nosanitize !32

4370:                                             ; preds = %4381, %4362
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4371:                                             ; preds = %4362
  %4372 = extractvalue { i64, i1 } %4368, 0, !nosanitize !32
  %4373 = load ptr, ptr %3901, align 8, !tbaa !35
  %4374 = load i16, ptr %3899, align 8, !tbaa !25
  %4375 = lshr i16 %4374, 8
  %4376 = trunc nuw i16 %4375 to i8
  store i64 %4372, ptr %3900, align 8, !tbaa !33
  %4377 = getelementptr inbounds nuw i8, ptr %4373, i64 %4367
  store i8 %4376, ptr %4377, align 1, !tbaa !28
  %4378 = load i32, ptr %3236, align 4, !tbaa !26
  %4379 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4378), !nosanitize !32
  %4380 = extractvalue { i32, i1 } %4379, 1, !nosanitize !32
  br i1 %4380, label %4019, label %4381, !prof !34, !nosanitize !32

4381:                                             ; preds = %4371
  %4382 = extractvalue { i32, i1 } %4379, 0, !nosanitize !32
  %4383 = lshr i32 %4354, %4382
  %4384 = trunc nuw i32 %4383 to i16
  store i16 %4384, ptr %3899, align 8, !tbaa !25
  %4385 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4378, i32 -9), !nosanitize !32
  %4386 = extractvalue { i32, i1 } %4385, 1, !nosanitize !32
  br i1 false, label %4370, label %4393, !prof !34, !nosanitize !32

4387:                                             ; preds = %4347
  %4388 = shl i32 %4352, %4350
  %4389 = trunc i32 %4388 to i16
  %4390 = or i16 %4348, %4389
  store i16 %4390, ptr %3899, align 8, !tbaa !25
  %4391 = add nsw i32 %4350, 7
  %4392 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4391, 0
  br label %4393

4393:                                             ; preds = %4387, %4381, %4297, %4291, %4205, %4199
  %4394 = phi i16 [ %4202, %4199 ], [ %4208, %4205 ], [ %4294, %4291 ], [ %4300, %4297 ], [ %4384, %4381 ], [ %4390, %4387 ]
  %4395 = phi { i32, i1 } [ %4203, %4199 ], [ %4210, %4205 ], [ %4295, %4291 ], [ %4302, %4297 ], [ %4385, %4381 ], [ %4392, %4387 ]
  %4396 = extractvalue { i32, i1 } %4395, 0
  store i32 %4396, ptr %3236, align 4, !tbaa !26
  br label %4397

4397:                                             ; preds = %4393, %4060
  %4398 = phi i16 [ %4394, %4393 ], [ %4055, %4060 ]
  %4399 = phi i32 [ %4396, %4393 ], [ %4057, %4060 ]
  %4400 = icmp eq i16 %3994, 0
  br i1 %4400, label %4404, label %4401

4401:                                             ; preds = %4397
  %4402 = select i1 %3998, i32 3, i32 4
  %4403 = select i1 %3998, i32 6, i32 7
  br label %4404

4404:                                             ; preds = %4401, %4397, %3990
  %4405 = phi i16 [ %3978, %3990 ], [ %4398, %4397 ], [ %4398, %4401 ]
  %4406 = phi i32 [ %3979, %3990 ], [ %4399, %4397 ], [ %4399, %4401 ]
  %4407 = phi i32 [ %3985, %3990 ], [ 3, %4397 ], [ %4402, %4401 ]
  %4408 = phi i32 [ %3984, %3990 ], [ 138, %4397 ], [ %4403, %4401 ]
  %4409 = phi i32 [ %3996, %3990 ], [ 0, %4397 ], [ 0, %4401 ]
  %4410 = phi i32 [ %3981, %3990 ], [ %3982, %4397 ], [ %3982, %4401 ]
  %4411 = icmp sgt i32 %3987, %3961
  br i1 %4411, label %4412, label %3977, !llvm.loop !82

4412:                                             ; preds = %4404, %3960
  %4413 = phi i16 [ %3952, %3960 ], [ %4405, %4404 ]
  %4414 = phi i32 [ %3954, %3960 ], [ %4406, %4404 ]
  br i1 false, label %3741, label %4415, !prof !34, !nosanitize !32

4415:                                             ; preds = %4412
  %4416 = extractvalue { i32, i1 } %3795, 0, !nosanitize !32
  %4417 = icmp slt i32 %4416, 0
  br i1 %4417, label %4867, label %4418

4418:                                             ; preds = %4415
  %4419 = getelementptr i8, ptr %0, i64 2506
  %4420 = load i16, ptr %4419, align 2, !tbaa !28
  %4421 = icmp eq i16 %4420, 0
  %4422 = select i1 %4421, i32 138, i32 7
  %4423 = select i1 %4421, i32 3, i32 4
  %4424 = zext i16 %4420 to i32
  %4425 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %4426 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %4427 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %4428 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %4429 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %4430 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %4431 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %4432

4432:                                             ; preds = %4859, %4418
  %4433 = phi i16 [ %4413, %4418 ], [ %4860, %4859 ]
  %4434 = phi i32 [ %4414, %4418 ], [ %4861, %4859 ]
  %4435 = phi i32 [ 0, %4418 ], [ %4442, %4859 ]
  %4436 = phi i32 [ -1, %4418 ], [ %4865, %4859 ]
  %4437 = phi i32 [ %4424, %4418 ], [ %4450, %4859 ]
  %4438 = phi i32 [ 0, %4418 ], [ %4864, %4859 ]
  %4439 = phi i32 [ %4422, %4418 ], [ %4863, %4859 ]
  %4440 = phi i32 [ %4423, %4418 ], [ %4862, %4859 ]
  %4441 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4435, i32 1), !nosanitize !32
  %4442 = extractvalue { i32, i1 } %4441, 0, !nosanitize !32
  %4443 = extractvalue { i32, i1 } %4441, 1, !nosanitize !32
  br i1 %4443, label %4444, label %4445, !prof !34, !nosanitize !32

4444:                                             ; preds = %4432
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

4445:                                             ; preds = %4432
  %4446 = sext i32 %4442 to i64
  %4447 = shl nsw i64 %4446, 2
  %4448 = getelementptr i8, ptr %4419, i64 %4447
  %4449 = load i16, ptr %4448, align 2, !tbaa !28
  %4450 = zext i16 %4449 to i32
  %4451 = add nsw i32 %4438, 1
  %4452 = icmp slt i32 %4451, %4439
  %4453 = icmp eq i32 %4437, %4450
  %4454 = select i1 %4452, i1 %4453, i1 false
  br i1 %4454, label %4859, label %4455

4455:                                             ; preds = %4445
  %4456 = icmp slt i32 %4451, %4440
  br i1 %4456, label %4457, label %4518

4457:                                             ; preds = %4455
  %4458 = zext nneg i32 %4437 to i64
  %4459 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %4425, i64 0, i64 %4458
  %4460 = getelementptr inbounds nuw i8, ptr %4459, i64 2
  br label %4461

4461:                                             ; preds = %4515, %4457
  %4462 = phi i16 [ %4510, %4515 ], [ %4433, %4457 ]
  %4463 = phi i32 [ %4512, %4515 ], [ %4434, %4457 ]
  %4464 = phi i32 [ %4516, %4515 ], [ %4451, %4457 ]
  %4465 = load i16, ptr %4460, align 2, !tbaa !28
  %4466 = zext i16 %4465 to i32
  %4467 = sub nsw i32 16, %4466
  %4468 = icmp sgt i32 %4463, %4467
  %4469 = load i16, ptr %4459, align 4, !tbaa !28
  %4470 = zext i16 %4469 to i32
  %4471 = shl i32 %4470, %4463
  %4472 = trunc i32 %4471 to i16
  %4473 = or i16 %4462, %4472
  store i16 %4473, ptr %3899, align 8, !tbaa !25
  br i1 %4468, label %4475, label %4506

4474:                                             ; preds = %4826, %4782, %4736, %4692, %4644, %4600, %4549, %4509, %4489
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

4475:                                             ; preds = %4461
  %4476 = load i64, ptr %3900, align 8, !tbaa !33
  %4477 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4476, i64 1), !nosanitize !32
  %4478 = extractvalue { i64, i1 } %4477, 1, !nosanitize !32
  br i1 %4478, label %4479, label %4480, !prof !34, !nosanitize !32

4479:                                             ; preds = %4475
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4480:                                             ; preds = %4475
  %4481 = extractvalue { i64, i1 } %4477, 0, !nosanitize !32
  %4482 = load ptr, ptr %3901, align 8, !tbaa !35
  %4483 = trunc i16 %4473 to i8
  store i64 %4481, ptr %3900, align 8, !tbaa !33
  %4484 = getelementptr inbounds nuw i8, ptr %4482, i64 %4476
  store i8 %4483, ptr %4484, align 1, !tbaa !28
  %4485 = load i64, ptr %3900, align 8, !tbaa !33
  %4486 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4485, i64 1), !nosanitize !32
  %4487 = extractvalue { i64, i1 } %4486, 1, !nosanitize !32
  br i1 %4487, label %4488, label %4489, !prof !34, !nosanitize !32

4488:                                             ; preds = %4499, %4480
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4489:                                             ; preds = %4480
  %4490 = extractvalue { i64, i1 } %4486, 0, !nosanitize !32
  %4491 = load ptr, ptr %3901, align 8, !tbaa !35
  %4492 = load i16, ptr %3899, align 8, !tbaa !25
  %4493 = lshr i16 %4492, 8
  %4494 = trunc nuw i16 %4493 to i8
  store i64 %4490, ptr %3900, align 8, !tbaa !33
  %4495 = getelementptr inbounds nuw i8, ptr %4491, i64 %4485
  store i8 %4494, ptr %4495, align 1, !tbaa !28
  %4496 = load i32, ptr %3236, align 4, !tbaa !26
  %4497 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4496), !nosanitize !32
  %4498 = extractvalue { i32, i1 } %4497, 1, !nosanitize !32
  br i1 %4498, label %4474, label %4499, !prof !34, !nosanitize !32

4499:                                             ; preds = %4489
  %4500 = extractvalue { i32, i1 } %4497, 0, !nosanitize !32
  %4501 = lshr i32 %4470, %4500
  %4502 = trunc nuw i32 %4501 to i16
  store i16 %4502, ptr %3899, align 8, !tbaa !25
  %4503 = add nsw i32 %4466, -16
  %4504 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4496, i32 %4503), !nosanitize !32
  %4505 = extractvalue { i32, i1 } %4504, 1, !nosanitize !32
  br i1 %4505, label %4488, label %4509, !prof !34, !nosanitize !32

4506:                                             ; preds = %4461
  %4507 = add nsw i32 %4463, %4466
  %4508 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4507, 0
  br label %4509

4509:                                             ; preds = %4506, %4499
  %4510 = phi i16 [ %4502, %4499 ], [ %4473, %4506 ]
  %4511 = phi { i32, i1 } [ %4504, %4499 ], [ %4508, %4506 ]
  %4512 = extractvalue { i32, i1 } %4511, 0
  store i32 %4512, ptr %3236, align 4, !tbaa !26
  %4513 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4464, i32 -1)
  %4514 = extractvalue { i32, i1 } %4513, 1, !nosanitize !32
  br i1 %4514, label %4474, label %4515, !prof !34, !nosanitize !32

4515:                                             ; preds = %4509
  %4516 = extractvalue { i32, i1 } %4513, 0, !nosanitize !32
  %4517 = icmp eq i32 %4516, 0
  br i1 %4517, label %4852, label %4461, !llvm.loop !81

4518:                                             ; preds = %4455
  %4519 = icmp eq i32 %4437, 0
  br i1 %4519, label %4666, label %4520

4520:                                             ; preds = %4518
  %4521 = icmp eq i32 %4437, %4436
  br i1 %4521, label %4573, label %4522

4522:                                             ; preds = %4520
  %4523 = zext nneg i32 %4437 to i64
  %4524 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %4425, i64 0, i64 %4523
  %4525 = getelementptr inbounds nuw i8, ptr %4524, i64 2
  %4526 = load i16, ptr %4525, align 2, !tbaa !28
  %4527 = zext i16 %4526 to i32
  %4528 = sub nsw i32 16, %4527
  %4529 = icmp sgt i32 %4434, %4528
  %4530 = load i16, ptr %4524, align 4, !tbaa !28
  %4531 = zext i16 %4530 to i32
  %4532 = shl i32 %4531, %4434
  %4533 = trunc i32 %4532 to i16
  %4534 = or i16 %4433, %4533
  store i16 %4534, ptr %3899, align 8, !tbaa !25
  br i1 %4529, label %4535, label %4566

4535:                                             ; preds = %4522
  %4536 = load i64, ptr %3900, align 8, !tbaa !33
  %4537 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4536, i64 1), !nosanitize !32
  %4538 = extractvalue { i64, i1 } %4537, 1, !nosanitize !32
  br i1 %4538, label %4539, label %4540, !prof !34, !nosanitize !32

4539:                                             ; preds = %4535
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4540:                                             ; preds = %4535
  %4541 = extractvalue { i64, i1 } %4537, 0, !nosanitize !32
  %4542 = load ptr, ptr %3901, align 8, !tbaa !35
  %4543 = trunc i16 %4534 to i8
  store i64 %4541, ptr %3900, align 8, !tbaa !33
  %4544 = getelementptr inbounds nuw i8, ptr %4542, i64 %4536
  store i8 %4543, ptr %4544, align 1, !tbaa !28
  %4545 = load i64, ptr %3900, align 8, !tbaa !33
  %4546 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4545, i64 1), !nosanitize !32
  %4547 = extractvalue { i64, i1 } %4546, 1, !nosanitize !32
  br i1 %4547, label %4548, label %4549, !prof !34, !nosanitize !32

4548:                                             ; preds = %4559, %4540
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4549:                                             ; preds = %4540
  %4550 = extractvalue { i64, i1 } %4546, 0, !nosanitize !32
  %4551 = load ptr, ptr %3901, align 8, !tbaa !35
  %4552 = load i16, ptr %3899, align 8, !tbaa !25
  %4553 = lshr i16 %4552, 8
  %4554 = trunc nuw i16 %4553 to i8
  store i64 %4550, ptr %3900, align 8, !tbaa !33
  %4555 = getelementptr inbounds nuw i8, ptr %4551, i64 %4545
  store i8 %4554, ptr %4555, align 1, !tbaa !28
  %4556 = load i32, ptr %3236, align 4, !tbaa !26
  %4557 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4556), !nosanitize !32
  %4558 = extractvalue { i32, i1 } %4557, 1, !nosanitize !32
  br i1 %4558, label %4474, label %4559, !prof !34, !nosanitize !32

4559:                                             ; preds = %4549
  %4560 = extractvalue { i32, i1 } %4557, 0, !nosanitize !32
  %4561 = lshr i32 %4531, %4560
  %4562 = trunc nuw i32 %4561 to i16
  store i16 %4562, ptr %3899, align 8, !tbaa !25
  %4563 = add nsw i32 %4527, -16
  %4564 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4556, i32 %4563), !nosanitize !32
  %4565 = extractvalue { i32, i1 } %4564, 1, !nosanitize !32
  br i1 %4565, label %4548, label %4569, !prof !34, !nosanitize !32

4566:                                             ; preds = %4522
  %4567 = add nsw i32 %4434, %4527
  %4568 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4567, 0
  br label %4569

4569:                                             ; preds = %4566, %4559
  %4570 = phi i16 [ %4562, %4559 ], [ %4534, %4566 ]
  %4571 = phi { i32, i1 } [ %4564, %4559 ], [ %4568, %4566 ]
  %4572 = extractvalue { i32, i1 } %4571, 0
  store i32 %4572, ptr %3236, align 4, !tbaa !26
  br label %4573

4573:                                             ; preds = %4569, %4520
  %4574 = phi i16 [ %4570, %4569 ], [ %4433, %4520 ]
  %4575 = phi i32 [ %4572, %4569 ], [ %4434, %4520 ]
  %4576 = phi i32 [ %4438, %4569 ], [ %4451, %4520 ]
  %4577 = load i16, ptr %4427, align 2, !tbaa !28
  %4578 = zext i16 %4577 to i32
  %4579 = sub nsw i32 16, %4578
  %4580 = icmp sgt i32 %4575, %4579
  %4581 = load i16, ptr %4426, align 4, !tbaa !28
  %4582 = zext i16 %4581 to i32
  %4583 = shl i32 %4582, %4575
  %4584 = trunc i32 %4583 to i16
  %4585 = or i16 %4574, %4584
  store i16 %4585, ptr %3899, align 8, !tbaa !25
  br i1 %4580, label %4586, label %4617

4586:                                             ; preds = %4573
  %4587 = load i64, ptr %3900, align 8, !tbaa !33
  %4588 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4587, i64 1), !nosanitize !32
  %4589 = extractvalue { i64, i1 } %4588, 1, !nosanitize !32
  br i1 %4589, label %4590, label %4591, !prof !34, !nosanitize !32

4590:                                             ; preds = %4586
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4591:                                             ; preds = %4586
  %4592 = extractvalue { i64, i1 } %4588, 0, !nosanitize !32
  %4593 = load ptr, ptr %3901, align 8, !tbaa !35
  %4594 = trunc i16 %4585 to i8
  store i64 %4592, ptr %3900, align 8, !tbaa !33
  %4595 = getelementptr inbounds nuw i8, ptr %4593, i64 %4587
  store i8 %4594, ptr %4595, align 1, !tbaa !28
  %4596 = load i64, ptr %3900, align 8, !tbaa !33
  %4597 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4596, i64 1), !nosanitize !32
  %4598 = extractvalue { i64, i1 } %4597, 1, !nosanitize !32
  br i1 %4598, label %4599, label %4600, !prof !34, !nosanitize !32

4599:                                             ; preds = %4610, %4591
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4600:                                             ; preds = %4591
  %4601 = extractvalue { i64, i1 } %4597, 0, !nosanitize !32
  %4602 = load ptr, ptr %3901, align 8, !tbaa !35
  %4603 = load i16, ptr %3899, align 8, !tbaa !25
  %4604 = lshr i16 %4603, 8
  %4605 = trunc nuw i16 %4604 to i8
  store i64 %4601, ptr %3900, align 8, !tbaa !33
  %4606 = getelementptr inbounds nuw i8, ptr %4602, i64 %4596
  store i8 %4605, ptr %4606, align 1, !tbaa !28
  %4607 = load i32, ptr %3236, align 4, !tbaa !26
  %4608 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4607), !nosanitize !32
  %4609 = extractvalue { i32, i1 } %4608, 1, !nosanitize !32
  br i1 %4609, label %4474, label %4610, !prof !34, !nosanitize !32

4610:                                             ; preds = %4600
  %4611 = extractvalue { i32, i1 } %4608, 0, !nosanitize !32
  %4612 = lshr i32 %4582, %4611
  %4613 = trunc nuw i32 %4612 to i16
  store i16 %4613, ptr %3899, align 8, !tbaa !25
  %4614 = add nsw i32 %4578, -16
  %4615 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4607, i32 %4614), !nosanitize !32
  %4616 = extractvalue { i32, i1 } %4615, 1, !nosanitize !32
  br i1 %4616, label %4599, label %4620, !prof !34, !nosanitize !32

4617:                                             ; preds = %4573
  %4618 = add nsw i32 %4575, %4578
  %4619 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4618, 0
  br label %4620

4620:                                             ; preds = %4617, %4610
  %4621 = phi i16 [ %4613, %4610 ], [ %4585, %4617 ]
  %4622 = phi { i32, i1 } [ %4615, %4610 ], [ %4619, %4617 ]
  %4623 = extractvalue { i32, i1 } %4622, 0
  store i32 %4623, ptr %3236, align 4, !tbaa !26
  %4624 = icmp sgt i32 %4623, 14
  %4625 = add i32 %4576, 65533
  br i1 %4624, label %4626, label %4660

4626:                                             ; preds = %4620
  %4627 = and i32 %4625, 65535
  %4628 = shl i32 %4625, %4623
  %4629 = trunc i32 %4628 to i16
  %4630 = or i16 %4621, %4629
  store i16 %4630, ptr %3899, align 8, !tbaa !25
  %4631 = load i64, ptr %3900, align 8, !tbaa !33
  %4632 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4631, i64 1), !nosanitize !32
  %4633 = extractvalue { i64, i1 } %4632, 1, !nosanitize !32
  br i1 %4633, label %4634, label %4635, !prof !34, !nosanitize !32

4634:                                             ; preds = %4626
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4635:                                             ; preds = %4626
  %4636 = extractvalue { i64, i1 } %4632, 0, !nosanitize !32
  %4637 = load ptr, ptr %3901, align 8, !tbaa !35
  %4638 = trunc i16 %4630 to i8
  store i64 %4636, ptr %3900, align 8, !tbaa !33
  %4639 = getelementptr inbounds nuw i8, ptr %4637, i64 %4631
  store i8 %4638, ptr %4639, align 1, !tbaa !28
  %4640 = load i64, ptr %3900, align 8, !tbaa !33
  %4641 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4640, i64 1), !nosanitize !32
  %4642 = extractvalue { i64, i1 } %4641, 1, !nosanitize !32
  br i1 %4642, label %4643, label %4644, !prof !34, !nosanitize !32

4643:                                             ; preds = %4654, %4635
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4644:                                             ; preds = %4635
  %4645 = extractvalue { i64, i1 } %4641, 0, !nosanitize !32
  %4646 = load ptr, ptr %3901, align 8, !tbaa !35
  %4647 = load i16, ptr %3899, align 8, !tbaa !25
  %4648 = lshr i16 %4647, 8
  %4649 = trunc nuw i16 %4648 to i8
  store i64 %4645, ptr %3900, align 8, !tbaa !33
  %4650 = getelementptr inbounds nuw i8, ptr %4646, i64 %4640
  store i8 %4649, ptr %4650, align 1, !tbaa !28
  %4651 = load i32, ptr %3236, align 4, !tbaa !26
  %4652 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4651), !nosanitize !32
  %4653 = extractvalue { i32, i1 } %4652, 1, !nosanitize !32
  br i1 %4653, label %4474, label %4654, !prof !34, !nosanitize !32

4654:                                             ; preds = %4644
  %4655 = extractvalue { i32, i1 } %4652, 0, !nosanitize !32
  %4656 = lshr i32 %4627, %4655
  %4657 = trunc nuw i32 %4656 to i16
  store i16 %4657, ptr %3899, align 8, !tbaa !25
  %4658 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4651, i32 -14), !nosanitize !32
  %4659 = extractvalue { i32, i1 } %4658, 1, !nosanitize !32
  br i1 %4659, label %4643, label %4848, !prof !34, !nosanitize !32

4660:                                             ; preds = %4620
  %4661 = shl i32 %4625, %4623
  %4662 = trunc i32 %4661 to i16
  %4663 = or i16 %4621, %4662
  store i16 %4663, ptr %3899, align 8, !tbaa !25
  %4664 = add nsw i32 %4623, 2
  %4665 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4664, 0
  br label %4848

4666:                                             ; preds = %4518
  %4667 = icmp slt i32 %4438, 10
  br i1 %4667, label %4668, label %4758

4668:                                             ; preds = %4666
  %4669 = load i16, ptr %4431, align 2, !tbaa !28
  %4670 = zext i16 %4669 to i32
  %4671 = sub nsw i32 16, %4670
  %4672 = icmp sgt i32 %4434, %4671
  %4673 = load i16, ptr %4430, align 4, !tbaa !28
  %4674 = zext i16 %4673 to i32
  %4675 = shl i32 %4674, %4434
  %4676 = trunc i32 %4675 to i16
  %4677 = or i16 %4433, %4676
  store i16 %4677, ptr %3899, align 8, !tbaa !25
  br i1 %4672, label %4678, label %4709

4678:                                             ; preds = %4668
  %4679 = load i64, ptr %3900, align 8, !tbaa !33
  %4680 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4679, i64 1), !nosanitize !32
  %4681 = extractvalue { i64, i1 } %4680, 1, !nosanitize !32
  br i1 %4681, label %4682, label %4683, !prof !34, !nosanitize !32

4682:                                             ; preds = %4678
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4683:                                             ; preds = %4678
  %4684 = extractvalue { i64, i1 } %4680, 0, !nosanitize !32
  %4685 = load ptr, ptr %3901, align 8, !tbaa !35
  %4686 = trunc i16 %4677 to i8
  store i64 %4684, ptr %3900, align 8, !tbaa !33
  %4687 = getelementptr inbounds nuw i8, ptr %4685, i64 %4679
  store i8 %4686, ptr %4687, align 1, !tbaa !28
  %4688 = load i64, ptr %3900, align 8, !tbaa !33
  %4689 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4688, i64 1), !nosanitize !32
  %4690 = extractvalue { i64, i1 } %4689, 1, !nosanitize !32
  br i1 %4690, label %4691, label %4692, !prof !34, !nosanitize !32

4691:                                             ; preds = %4702, %4683
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4692:                                             ; preds = %4683
  %4693 = extractvalue { i64, i1 } %4689, 0, !nosanitize !32
  %4694 = load ptr, ptr %3901, align 8, !tbaa !35
  %4695 = load i16, ptr %3899, align 8, !tbaa !25
  %4696 = lshr i16 %4695, 8
  %4697 = trunc nuw i16 %4696 to i8
  store i64 %4693, ptr %3900, align 8, !tbaa !33
  %4698 = getelementptr inbounds nuw i8, ptr %4694, i64 %4688
  store i8 %4697, ptr %4698, align 1, !tbaa !28
  %4699 = load i32, ptr %3236, align 4, !tbaa !26
  %4700 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4699), !nosanitize !32
  %4701 = extractvalue { i32, i1 } %4700, 1, !nosanitize !32
  br i1 %4701, label %4474, label %4702, !prof !34, !nosanitize !32

4702:                                             ; preds = %4692
  %4703 = extractvalue { i32, i1 } %4700, 0, !nosanitize !32
  %4704 = lshr i32 %4674, %4703
  %4705 = trunc nuw i32 %4704 to i16
  store i16 %4705, ptr %3899, align 8, !tbaa !25
  %4706 = add nsw i32 %4670, -16
  %4707 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4699, i32 %4706), !nosanitize !32
  %4708 = extractvalue { i32, i1 } %4707, 1, !nosanitize !32
  br i1 %4708, label %4691, label %4712, !prof !34, !nosanitize !32

4709:                                             ; preds = %4668
  %4710 = add nsw i32 %4434, %4670
  %4711 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4710, 0
  br label %4712

4712:                                             ; preds = %4709, %4702
  %4713 = phi i16 [ %4705, %4702 ], [ %4677, %4709 ]
  %4714 = phi { i32, i1 } [ %4707, %4702 ], [ %4711, %4709 ]
  %4715 = extractvalue { i32, i1 } %4714, 0
  store i32 %4715, ptr %3236, align 4, !tbaa !26
  %4716 = icmp sgt i32 %4715, 13
  %4717 = add nsw i32 %4438, 65534
  br i1 %4716, label %4718, label %4752

4718:                                             ; preds = %4712
  %4719 = and i32 %4717, 65535
  %4720 = shl i32 %4717, %4715
  %4721 = trunc i32 %4720 to i16
  %4722 = or i16 %4713, %4721
  store i16 %4722, ptr %3899, align 8, !tbaa !25
  %4723 = load i64, ptr %3900, align 8, !tbaa !33
  %4724 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4723, i64 1), !nosanitize !32
  %4725 = extractvalue { i64, i1 } %4724, 1, !nosanitize !32
  br i1 %4725, label %4726, label %4727, !prof !34, !nosanitize !32

4726:                                             ; preds = %4718
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4727:                                             ; preds = %4718
  %4728 = extractvalue { i64, i1 } %4724, 0, !nosanitize !32
  %4729 = load ptr, ptr %3901, align 8, !tbaa !35
  %4730 = trunc i16 %4722 to i8
  store i64 %4728, ptr %3900, align 8, !tbaa !33
  %4731 = getelementptr inbounds nuw i8, ptr %4729, i64 %4723
  store i8 %4730, ptr %4731, align 1, !tbaa !28
  %4732 = load i64, ptr %3900, align 8, !tbaa !33
  %4733 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4732, i64 1), !nosanitize !32
  %4734 = extractvalue { i64, i1 } %4733, 1, !nosanitize !32
  br i1 %4734, label %4735, label %4736, !prof !34, !nosanitize !32

4735:                                             ; preds = %4746, %4727
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4736:                                             ; preds = %4727
  %4737 = extractvalue { i64, i1 } %4733, 0, !nosanitize !32
  %4738 = load ptr, ptr %3901, align 8, !tbaa !35
  %4739 = load i16, ptr %3899, align 8, !tbaa !25
  %4740 = lshr i16 %4739, 8
  %4741 = trunc nuw i16 %4740 to i8
  store i64 %4737, ptr %3900, align 8, !tbaa !33
  %4742 = getelementptr inbounds nuw i8, ptr %4738, i64 %4732
  store i8 %4741, ptr %4742, align 1, !tbaa !28
  %4743 = load i32, ptr %3236, align 4, !tbaa !26
  %4744 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4743), !nosanitize !32
  %4745 = extractvalue { i32, i1 } %4744, 1, !nosanitize !32
  br i1 %4745, label %4474, label %4746, !prof !34, !nosanitize !32

4746:                                             ; preds = %4736
  %4747 = extractvalue { i32, i1 } %4744, 0, !nosanitize !32
  %4748 = lshr i32 %4719, %4747
  %4749 = trunc nuw i32 %4748 to i16
  store i16 %4749, ptr %3899, align 8, !tbaa !25
  %4750 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4743, i32 -13), !nosanitize !32
  %4751 = extractvalue { i32, i1 } %4750, 1, !nosanitize !32
  br i1 false, label %4735, label %4848, !prof !34, !nosanitize !32

4752:                                             ; preds = %4712
  %4753 = shl i32 %4717, %4715
  %4754 = trunc i32 %4753 to i16
  %4755 = or i16 %4713, %4754
  store i16 %4755, ptr %3899, align 8, !tbaa !25
  %4756 = add nsw i32 %4715, 3
  %4757 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4756, 0
  br label %4848

4758:                                             ; preds = %4666
  %4759 = load i16, ptr %4429, align 2, !tbaa !28
  %4760 = zext i16 %4759 to i32
  %4761 = sub nsw i32 16, %4760
  %4762 = icmp sgt i32 %4434, %4761
  %4763 = load i16, ptr %4428, align 4, !tbaa !28
  %4764 = zext i16 %4763 to i32
  %4765 = shl i32 %4764, %4434
  %4766 = trunc i32 %4765 to i16
  %4767 = or i16 %4433, %4766
  store i16 %4767, ptr %3899, align 8, !tbaa !25
  br i1 %4762, label %4768, label %4799

4768:                                             ; preds = %4758
  %4769 = load i64, ptr %3900, align 8, !tbaa !33
  %4770 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4769, i64 1), !nosanitize !32
  %4771 = extractvalue { i64, i1 } %4770, 1, !nosanitize !32
  br i1 %4771, label %4772, label %4773, !prof !34, !nosanitize !32

4772:                                             ; preds = %4768
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4773:                                             ; preds = %4768
  %4774 = extractvalue { i64, i1 } %4770, 0, !nosanitize !32
  %4775 = load ptr, ptr %3901, align 8, !tbaa !35
  %4776 = trunc i16 %4767 to i8
  store i64 %4774, ptr %3900, align 8, !tbaa !33
  %4777 = getelementptr inbounds nuw i8, ptr %4775, i64 %4769
  store i8 %4776, ptr %4777, align 1, !tbaa !28
  %4778 = load i64, ptr %3900, align 8, !tbaa !33
  %4779 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4778, i64 1), !nosanitize !32
  %4780 = extractvalue { i64, i1 } %4779, 1, !nosanitize !32
  br i1 %4780, label %4781, label %4782, !prof !34, !nosanitize !32

4781:                                             ; preds = %4792, %4773
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4782:                                             ; preds = %4773
  %4783 = extractvalue { i64, i1 } %4779, 0, !nosanitize !32
  %4784 = load ptr, ptr %3901, align 8, !tbaa !35
  %4785 = load i16, ptr %3899, align 8, !tbaa !25
  %4786 = lshr i16 %4785, 8
  %4787 = trunc nuw i16 %4786 to i8
  store i64 %4783, ptr %3900, align 8, !tbaa !33
  %4788 = getelementptr inbounds nuw i8, ptr %4784, i64 %4778
  store i8 %4787, ptr %4788, align 1, !tbaa !28
  %4789 = load i32, ptr %3236, align 4, !tbaa !26
  %4790 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4789), !nosanitize !32
  %4791 = extractvalue { i32, i1 } %4790, 1, !nosanitize !32
  br i1 %4791, label %4474, label %4792, !prof !34, !nosanitize !32

4792:                                             ; preds = %4782
  %4793 = extractvalue { i32, i1 } %4790, 0, !nosanitize !32
  %4794 = lshr i32 %4764, %4793
  %4795 = trunc nuw i32 %4794 to i16
  store i16 %4795, ptr %3899, align 8, !tbaa !25
  %4796 = add nsw i32 %4760, -16
  %4797 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4789, i32 %4796), !nosanitize !32
  %4798 = extractvalue { i32, i1 } %4797, 1, !nosanitize !32
  br i1 %4798, label %4781, label %4802, !prof !34, !nosanitize !32

4799:                                             ; preds = %4758
  %4800 = add nsw i32 %4434, %4760
  %4801 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4800, 0
  br label %4802

4802:                                             ; preds = %4799, %4792
  %4803 = phi i16 [ %4795, %4792 ], [ %4767, %4799 ]
  %4804 = phi { i32, i1 } [ %4797, %4792 ], [ %4801, %4799 ]
  %4805 = extractvalue { i32, i1 } %4804, 0
  store i32 %4805, ptr %3236, align 4, !tbaa !26
  %4806 = icmp sgt i32 %4805, 9
  %4807 = add nuw i32 %4438, 65526
  br i1 %4806, label %4808, label %4842

4808:                                             ; preds = %4802
  %4809 = and i32 %4807, 65535
  %4810 = shl i32 %4807, %4805
  %4811 = trunc i32 %4810 to i16
  %4812 = or i16 %4803, %4811
  store i16 %4812, ptr %3899, align 8, !tbaa !25
  %4813 = load i64, ptr %3900, align 8, !tbaa !33
  %4814 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4813, i64 1), !nosanitize !32
  %4815 = extractvalue { i64, i1 } %4814, 1, !nosanitize !32
  br i1 %4815, label %4816, label %4817, !prof !34, !nosanitize !32

4816:                                             ; preds = %4808
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4817:                                             ; preds = %4808
  %4818 = extractvalue { i64, i1 } %4814, 0, !nosanitize !32
  %4819 = load ptr, ptr %3901, align 8, !tbaa !35
  %4820 = trunc i16 %4812 to i8
  store i64 %4818, ptr %3900, align 8, !tbaa !33
  %4821 = getelementptr inbounds nuw i8, ptr %4819, i64 %4813
  store i8 %4820, ptr %4821, align 1, !tbaa !28
  %4822 = load i64, ptr %3900, align 8, !tbaa !33
  %4823 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4822, i64 1), !nosanitize !32
  %4824 = extractvalue { i64, i1 } %4823, 1, !nosanitize !32
  br i1 %4824, label %4825, label %4826, !prof !34, !nosanitize !32

4825:                                             ; preds = %4836, %4817
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4826:                                             ; preds = %4817
  %4827 = extractvalue { i64, i1 } %4823, 0, !nosanitize !32
  %4828 = load ptr, ptr %3901, align 8, !tbaa !35
  %4829 = load i16, ptr %3899, align 8, !tbaa !25
  %4830 = lshr i16 %4829, 8
  %4831 = trunc nuw i16 %4830 to i8
  store i64 %4827, ptr %3900, align 8, !tbaa !33
  %4832 = getelementptr inbounds nuw i8, ptr %4828, i64 %4822
  store i8 %4831, ptr %4832, align 1, !tbaa !28
  %4833 = load i32, ptr %3236, align 4, !tbaa !26
  %4834 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4833), !nosanitize !32
  %4835 = extractvalue { i32, i1 } %4834, 1, !nosanitize !32
  br i1 %4835, label %4474, label %4836, !prof !34, !nosanitize !32

4836:                                             ; preds = %4826
  %4837 = extractvalue { i32, i1 } %4834, 0, !nosanitize !32
  %4838 = lshr i32 %4809, %4837
  %4839 = trunc nuw i32 %4838 to i16
  store i16 %4839, ptr %3899, align 8, !tbaa !25
  %4840 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4833, i32 -9), !nosanitize !32
  %4841 = extractvalue { i32, i1 } %4840, 1, !nosanitize !32
  br i1 false, label %4825, label %4848, !prof !34, !nosanitize !32

4842:                                             ; preds = %4802
  %4843 = shl i32 %4807, %4805
  %4844 = trunc i32 %4843 to i16
  %4845 = or i16 %4803, %4844
  store i16 %4845, ptr %3899, align 8, !tbaa !25
  %4846 = add nsw i32 %4805, 7
  %4847 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4846, 0
  br label %4848

4848:                                             ; preds = %4842, %4836, %4752, %4746, %4660, %4654
  %4849 = phi i16 [ %4657, %4654 ], [ %4663, %4660 ], [ %4749, %4746 ], [ %4755, %4752 ], [ %4839, %4836 ], [ %4845, %4842 ]
  %4850 = phi { i32, i1 } [ %4658, %4654 ], [ %4665, %4660 ], [ %4750, %4746 ], [ %4757, %4752 ], [ %4840, %4836 ], [ %4847, %4842 ]
  %4851 = extractvalue { i32, i1 } %4850, 0
  store i32 %4851, ptr %3236, align 4, !tbaa !26
  br label %4852

4852:                                             ; preds = %4848, %4515
  %4853 = phi i16 [ %4849, %4848 ], [ %4510, %4515 ]
  %4854 = phi i32 [ %4851, %4848 ], [ %4512, %4515 ]
  %4855 = icmp eq i16 %4449, 0
  br i1 %4855, label %4859, label %4856

4856:                                             ; preds = %4852
  %4857 = select i1 %4453, i32 3, i32 4
  %4858 = select i1 %4453, i32 6, i32 7
  br label %4859

4859:                                             ; preds = %4856, %4852, %4445
  %4860 = phi i16 [ %4433, %4445 ], [ %4853, %4852 ], [ %4853, %4856 ]
  %4861 = phi i32 [ %4434, %4445 ], [ %4854, %4852 ], [ %4854, %4856 ]
  %4862 = phi i32 [ %4440, %4445 ], [ 3, %4852 ], [ %4857, %4856 ]
  %4863 = phi i32 [ %4439, %4445 ], [ 138, %4852 ], [ %4858, %4856 ]
  %4864 = phi i32 [ %4451, %4445 ], [ 0, %4852 ], [ 0, %4856 ]
  %4865 = phi i32 [ %4436, %4445 ], [ %4437, %4852 ], [ %4437, %4856 ]
  %4866 = icmp sgt i32 %4442, %4416
  br i1 %4866, label %4867, label %4432, !llvm.loop !82

4867:                                             ; preds = %4859, %4415
  %4868 = phi i16 [ %4413, %4415 ], [ %4860, %4859 ]
  %4869 = phi i32 [ %4414, %4415 ], [ %4861, %4859 ]
  %4870 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %4871 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %4872 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %4873 = load i32, ptr %4872, align 4, !tbaa !31
  %4874 = icmp eq i32 %4873, 0
  br i1 %4874, label %5205, label %4875

4875:                                             ; preds = %4867
  %4876 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %4877

4877:                                             ; preds = %5200, %4875
  %4878 = phi i16 [ %5201, %5200 ], [ %4868, %4875 ]
  %4879 = phi i32 [ %5202, %5200 ], [ %4869, %4875 ]
  %4880 = phi i32 [ %4899, %5200 ], [ 0, %4875 ]
  %4881 = load ptr, ptr %4876, align 8, !tbaa !78
  %4882 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4880, i32 2)
  %4883 = extractvalue { i32, i1 } %4882, 0, !nosanitize !32
  %4884 = extractvalue { i32, i1 } %4882, 1, !nosanitize !32
  br i1 %4884, label %4885, label %4886, !prof !34, !nosanitize !32

4885:                                             ; preds = %4877
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4886:                                             ; preds = %4877
  %4887 = add nuw i32 %4880, 1
  %4888 = zext i32 %4880 to i64
  %4889 = getelementptr inbounds nuw i8, ptr %4881, i64 %4888
  %4890 = load i8, ptr %4889, align 1, !tbaa !28
  %4891 = zext i8 %4890 to i32
  %4892 = zext i32 %4887 to i64
  %4893 = getelementptr inbounds nuw i8, ptr %4881, i64 %4892
  %4894 = load i8, ptr %4893, align 1, !tbaa !28
  %4895 = zext i8 %4894 to i32
  %4896 = shl nuw nsw i32 %4895, 8
  %4897 = or disjoint i32 %4896, %4891
  %4898 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4883, i32 1), !nosanitize !32
  %4899 = extractvalue { i32, i1 } %4898, 0, !nosanitize !32
  %4900 = extractvalue { i32, i1 } %4898, 1, !nosanitize !32
  br i1 %4900, label %4901, label %4902, !prof !34, !nosanitize !32

4901:                                             ; preds = %4886
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4902:                                             ; preds = %4886
  %4903 = zext i32 %4883 to i64
  %4904 = getelementptr inbounds nuw i8, ptr %4881, i64 %4903
  %4905 = load i8, ptr %4904, align 1, !tbaa !28
  %4906 = zext i8 %4905 to i32
  %4907 = icmp eq i32 %4897, 0
  %4908 = zext i8 %4905 to i64
  br i1 %4907, label %4909, label %4956

4909:                                             ; preds = %4902
  %4910 = getelementptr inbounds nuw %struct.ct_data_s, ptr %4870, i64 %4908
  %4911 = getelementptr inbounds nuw i8, ptr %4910, i64 2
  %4912 = load i16, ptr %4911, align 2, !tbaa !28
  %4913 = zext i16 %4912 to i32
  %4914 = sub nsw i32 16, %4913
  %4915 = icmp sgt i32 %4879, %4914
  %4916 = load i16, ptr %4910, align 2, !tbaa !28
  %4917 = zext i16 %4916 to i32
  %4918 = shl i32 %4917, %4879
  %4919 = trunc i32 %4918 to i16
  %4920 = or i16 %4878, %4919
  store i16 %4920, ptr %3899, align 8, !tbaa !25
  br i1 %4915, label %4922, label %4953

4921:                                             ; preds = %5054, %5044, %5020, %5014, %4986, %4936
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

4922:                                             ; preds = %4909
  %4923 = load i64, ptr %3900, align 8, !tbaa !33
  %4924 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4923, i64 1), !nosanitize !32
  %4925 = extractvalue { i64, i1 } %4924, 1, !nosanitize !32
  br i1 %4925, label %4926, label %4927, !prof !34, !nosanitize !32

4926:                                             ; preds = %4922
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4927:                                             ; preds = %4922
  %4928 = extractvalue { i64, i1 } %4924, 0, !nosanitize !32
  %4929 = load ptr, ptr %3901, align 8, !tbaa !35
  %4930 = trunc i16 %4920 to i8
  store i64 %4928, ptr %3900, align 8, !tbaa !33
  %4931 = getelementptr inbounds nuw i8, ptr %4929, i64 %4923
  store i8 %4930, ptr %4931, align 1, !tbaa !28
  %4932 = load i64, ptr %3900, align 8, !tbaa !33
  %4933 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4932, i64 1), !nosanitize !32
  %4934 = extractvalue { i64, i1 } %4933, 1, !nosanitize !32
  br i1 %4934, label %4935, label %4936, !prof !34, !nosanitize !32

4935:                                             ; preds = %4946, %4927
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4936:                                             ; preds = %4927
  %4937 = extractvalue { i64, i1 } %4933, 0, !nosanitize !32
  %4938 = load ptr, ptr %3901, align 8, !tbaa !35
  %4939 = load i16, ptr %3899, align 8, !tbaa !25
  %4940 = lshr i16 %4939, 8
  %4941 = trunc nuw i16 %4940 to i8
  store i64 %4937, ptr %3900, align 8, !tbaa !33
  %4942 = getelementptr inbounds nuw i8, ptr %4938, i64 %4932
  store i8 %4941, ptr %4942, align 1, !tbaa !28
  %4943 = load i32, ptr %3236, align 4, !tbaa !26
  %4944 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4943), !nosanitize !32
  %4945 = extractvalue { i32, i1 } %4944, 1, !nosanitize !32
  br i1 %4945, label %4921, label %4946, !prof !34, !nosanitize !32

4946:                                             ; preds = %4936
  %4947 = extractvalue { i32, i1 } %4944, 0, !nosanitize !32
  %4948 = lshr i32 %4917, %4947
  %4949 = trunc nuw i32 %4948 to i16
  store i16 %4949, ptr %3899, align 8, !tbaa !25
  %4950 = add nsw i32 %4913, -16
  %4951 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4943, i32 %4950), !nosanitize !32
  %4952 = extractvalue { i32, i1 } %4951, 1, !nosanitize !32
  br i1 %4952, label %4935, label %5196, !prof !34, !nosanitize !32

4953:                                             ; preds = %4909
  %4954 = add nsw i32 %4879, %4913
  %4955 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4954, 0
  br label %5196

4956:                                             ; preds = %4902
  %4957 = getelementptr inbounds nuw [256 x i8], ptr @_length_code, i64 0, i64 %4908
  %4958 = load i8, ptr %4957, align 1, !tbaa !28
  %4959 = zext i8 %4958 to i64
  %4960 = getelementptr inbounds nuw %struct.ct_data_s, ptr %4870, i64 %4959
  %4961 = getelementptr inbounds nuw i8, ptr %4960, i64 1028
  %4962 = getelementptr inbounds nuw i8, ptr %4960, i64 1030
  %4963 = load i16, ptr %4962, align 2, !tbaa !28
  %4964 = zext i16 %4963 to i32
  %4965 = sub nsw i32 16, %4964
  %4966 = icmp sgt i32 %4879, %4965
  %4967 = load i16, ptr %4961, align 2, !tbaa !28
  %4968 = zext i16 %4967 to i32
  %4969 = shl i32 %4968, %4879
  %4970 = trunc i32 %4969 to i16
  %4971 = or i16 %4878, %4970
  store i16 %4971, ptr %3899, align 8, !tbaa !25
  br i1 %4966, label %4972, label %5003

4972:                                             ; preds = %4956
  %4973 = load i64, ptr %3900, align 8, !tbaa !33
  %4974 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4973, i64 1), !nosanitize !32
  %4975 = extractvalue { i64, i1 } %4974, 1, !nosanitize !32
  br i1 %4975, label %4976, label %4977, !prof !34, !nosanitize !32

4976:                                             ; preds = %4972
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4977:                                             ; preds = %4972
  %4978 = extractvalue { i64, i1 } %4974, 0, !nosanitize !32
  %4979 = load ptr, ptr %3901, align 8, !tbaa !35
  %4980 = trunc i16 %4971 to i8
  store i64 %4978, ptr %3900, align 8, !tbaa !33
  %4981 = getelementptr inbounds nuw i8, ptr %4979, i64 %4973
  store i8 %4980, ptr %4981, align 1, !tbaa !28
  %4982 = load i64, ptr %3900, align 8, !tbaa !33
  %4983 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4982, i64 1), !nosanitize !32
  %4984 = extractvalue { i64, i1 } %4983, 1, !nosanitize !32
  br i1 %4984, label %4985, label %4986, !prof !34, !nosanitize !32

4985:                                             ; preds = %4996, %4977
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4986:                                             ; preds = %4977
  %4987 = extractvalue { i64, i1 } %4983, 0, !nosanitize !32
  %4988 = load ptr, ptr %3901, align 8, !tbaa !35
  %4989 = load i16, ptr %3899, align 8, !tbaa !25
  %4990 = lshr i16 %4989, 8
  %4991 = trunc nuw i16 %4990 to i8
  store i64 %4987, ptr %3900, align 8, !tbaa !33
  %4992 = getelementptr inbounds nuw i8, ptr %4988, i64 %4982
  store i8 %4991, ptr %4992, align 1, !tbaa !28
  %4993 = load i32, ptr %3236, align 4, !tbaa !26
  %4994 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4993), !nosanitize !32
  %4995 = extractvalue { i32, i1 } %4994, 1, !nosanitize !32
  br i1 %4995, label %4921, label %4996, !prof !34, !nosanitize !32

4996:                                             ; preds = %4986
  %4997 = extractvalue { i32, i1 } %4994, 0, !nosanitize !32
  %4998 = lshr i32 %4968, %4997
  %4999 = trunc nuw i32 %4998 to i16
  store i16 %4999, ptr %3899, align 8, !tbaa !25
  %5000 = add nsw i32 %4964, -16
  %5001 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4993, i32 %5000), !nosanitize !32
  %5002 = extractvalue { i32, i1 } %5001, 1, !nosanitize !32
  br i1 %5002, label %4985, label %5006, !prof !34, !nosanitize !32

5003:                                             ; preds = %4956
  %5004 = add nsw i32 %4879, %4964
  %5005 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %5004, 0
  br label %5006

5006:                                             ; preds = %5003, %4996
  %5007 = phi i16 [ %4999, %4996 ], [ %4971, %5003 ]
  %5008 = phi { i32, i1 } [ %5001, %4996 ], [ %5005, %5003 ]
  %5009 = extractvalue { i32, i1 } %5008, 0
  store i32 %5009, ptr %3236, align 4, !tbaa !26
  %5010 = getelementptr inbounds nuw [29 x i32], ptr @extra_lbits, i64 0, i64 %4959
  %5011 = load i32, ptr %5010, align 4, !tbaa !50
  %5012 = add nsw i64 %4959, -28
  %5013 = icmp ult i64 %5012, -20
  br i1 %5013, label %5074, label %5014

5014:                                             ; preds = %5006
  %5015 = getelementptr inbounds nuw [29 x i32], ptr @base_length, i64 0, i64 %4959
  %5016 = load i32, ptr %5015, align 4, !tbaa !50
  %5017 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4906, i32 %5016), !nosanitize !32
  %5018 = extractvalue { i32, i1 } %5017, 0, !nosanitize !32
  %5019 = extractvalue { i32, i1 } %5017, 1, !nosanitize !32
  br i1 %5019, label %4921, label %5020, !prof !34, !nosanitize !32

5020:                                             ; preds = %5014
  %5021 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %5011), !nosanitize !32
  %5022 = extractvalue { i32, i1 } %5021, 1, !nosanitize !32
  br i1 %5022, label %4921, label %5023, !prof !34, !nosanitize !32

5023:                                             ; preds = %5020
  %5024 = extractvalue { i32, i1 } %5021, 0, !nosanitize !32
  %5025 = icmp sgt i32 %5009, %5024
  br i1 %5025, label %5026, label %5064

5026:                                             ; preds = %5023
  %5027 = and i32 %5018, 65535
  %5028 = shl i32 %5018, %5009
  %5029 = trunc i32 %5028 to i16
  %5030 = or i16 %5007, %5029
  store i16 %5030, ptr %3899, align 8, !tbaa !25
  %5031 = load i64, ptr %3900, align 8, !tbaa !33
  %5032 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5031, i64 1), !nosanitize !32
  %5033 = extractvalue { i64, i1 } %5032, 1, !nosanitize !32
  br i1 %5033, label %5034, label %5035, !prof !34, !nosanitize !32

5034:                                             ; preds = %5026
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

5035:                                             ; preds = %5026
  %5036 = extractvalue { i64, i1 } %5032, 0, !nosanitize !32
  %5037 = load ptr, ptr %3901, align 8, !tbaa !35
  %5038 = trunc i16 %5030 to i8
  store i64 %5036, ptr %3900, align 8, !tbaa !33
  %5039 = getelementptr inbounds nuw i8, ptr %5037, i64 %5031
  store i8 %5038, ptr %5039, align 1, !tbaa !28
  %5040 = load i64, ptr %3900, align 8, !tbaa !33
  %5041 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5040, i64 1), !nosanitize !32
  %5042 = extractvalue { i64, i1 } %5041, 1, !nosanitize !32
  br i1 %5042, label %5043, label %5044, !prof !34, !nosanitize !32

5043:                                             ; preds = %5064, %5060, %5035
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

5044:                                             ; preds = %5035
  %5045 = extractvalue { i64, i1 } %5041, 0, !nosanitize !32
  %5046 = load ptr, ptr %3901, align 8, !tbaa !35
  %5047 = load i16, ptr %3899, align 8, !tbaa !25
  %5048 = lshr i16 %5047, 8
  %5049 = trunc nuw i16 %5048 to i8
  store i64 %5045, ptr %3900, align 8, !tbaa !33
  %5050 = getelementptr inbounds nuw i8, ptr %5046, i64 %5040
  store i8 %5049, ptr %5050, align 1, !tbaa !28
  %5051 = load i32, ptr %3236, align 4, !tbaa !26
  %5052 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %5051), !nosanitize !32
  %5053 = extractvalue { i32, i1 } %5052, 1, !nosanitize !32
  br i1 %5053, label %4921, label %5054, !prof !34, !nosanitize !32

5054:                                             ; preds = %5044
  %5055 = extractvalue { i32, i1 } %5052, 0, !nosanitize !32
  %5056 = lshr i32 %5027, %5055
  %5057 = trunc nuw i32 %5056 to i16
  store i16 %5057, ptr %3899, align 8, !tbaa !25
  %5058 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5011, i32 -16)
  %5059 = extractvalue { i32, i1 } %5058, 1, !nosanitize !32
  br i1 %5059, label %4921, label %5060, !prof !34, !nosanitize !32

5060:                                             ; preds = %5054
  %5061 = extractvalue { i32, i1 } %5058, 0, !nosanitize !32
  %5062 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5051, i32 %5061), !nosanitize !32
  %5063 = extractvalue { i32, i1 } %5062, 1, !nosanitize !32
  br i1 %5063, label %5043, label %5070, !prof !34, !nosanitize !32

5064:                                             ; preds = %5023
  %5065 = shl i32 %5018, %5009
  %5066 = trunc i32 %5065 to i16
  %5067 = or i16 %5007, %5066
  store i16 %5067, ptr %3899, align 8, !tbaa !25
  %5068 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5009, i32 %5011), !nosanitize !32
  %5069 = extractvalue { i32, i1 } %5068, 1, !nosanitize !32
  br i1 %5069, label %5043, label %5070, !prof !34, !nosanitize !32

5070:                                             ; preds = %5064, %5060
  %5071 = phi i16 [ %5057, %5060 ], [ %5067, %5064 ]
  %5072 = phi { i32, i1 } [ %5062, %5060 ], [ %5068, %5064 ]
  %5073 = extractvalue { i32, i1 } %5072, 0
  store i32 %5073, ptr %3236, align 4, !tbaa !26
  br label %5074

5074:                                             ; preds = %5070, %5006
  %5075 = phi i16 [ %5071, %5070 ], [ %5007, %5006 ]
  %5076 = phi i32 [ %5073, %5070 ], [ %5009, %5006 ]
  %5077 = add nsw i32 %4897, -1
  %5078 = icmp samesign ult i32 %4897, 257
  %5079 = lshr i32 %5077, 7
  %5080 = add nuw nsw i32 %5079, 256
  %5081 = select i1 %5078, i32 %5077, i32 %5080
  %5082 = zext nneg i32 %5081 to i64
  %5083 = getelementptr inbounds nuw [512 x i8], ptr @_dist_code, i64 0, i64 %5082
  %5084 = load i8, ptr %5083, align 1, !tbaa !28
  %5085 = zext i8 %5084 to i64
  %5086 = getelementptr inbounds nuw %struct.ct_data_s, ptr %4871, i64 %5085
  %5087 = getelementptr inbounds nuw i8, ptr %5086, i64 2
  %5088 = load i16, ptr %5087, align 2, !tbaa !28
  %5089 = zext i16 %5088 to i32
  %5090 = sub nsw i32 16, %5089
  %5091 = icmp sgt i32 %5076, %5090
  %5092 = load i16, ptr %5086, align 2, !tbaa !28
  %5093 = zext i16 %5092 to i32
  %5094 = shl i32 %5093, %5076
  %5095 = trunc i32 %5094 to i16
  %5096 = or i16 %5075, %5095
  store i16 %5096, ptr %3899, align 8, !tbaa !25
  br i1 %5091, label %5098, label %5129

5097:                                             ; preds = %5112
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

5098:                                             ; preds = %5074
  %5099 = load i64, ptr %3900, align 8, !tbaa !33
  %5100 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5099, i64 1), !nosanitize !32
  %5101 = extractvalue { i64, i1 } %5100, 1, !nosanitize !32
  br i1 %5101, label %5102, label %5103, !prof !34, !nosanitize !32

5102:                                             ; preds = %5098
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

5103:                                             ; preds = %5098
  %5104 = extractvalue { i64, i1 } %5100, 0, !nosanitize !32
  %5105 = load ptr, ptr %3901, align 8, !tbaa !35
  %5106 = trunc i16 %5096 to i8
  store i64 %5104, ptr %3900, align 8, !tbaa !33
  %5107 = getelementptr inbounds nuw i8, ptr %5105, i64 %5099
  store i8 %5106, ptr %5107, align 1, !tbaa !28
  %5108 = load i64, ptr %3900, align 8, !tbaa !33
  %5109 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5108, i64 1), !nosanitize !32
  %5110 = extractvalue { i64, i1 } %5109, 1, !nosanitize !32
  br i1 %5110, label %5111, label %5112, !prof !34, !nosanitize !32

5111:                                             ; preds = %5122, %5103
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

5112:                                             ; preds = %5103
  %5113 = extractvalue { i64, i1 } %5109, 0, !nosanitize !32
  %5114 = load ptr, ptr %3901, align 8, !tbaa !35
  %5115 = load i16, ptr %3899, align 8, !tbaa !25
  %5116 = lshr i16 %5115, 8
  %5117 = trunc nuw i16 %5116 to i8
  store i64 %5113, ptr %3900, align 8, !tbaa !33
  %5118 = getelementptr inbounds nuw i8, ptr %5114, i64 %5108
  store i8 %5117, ptr %5118, align 1, !tbaa !28
  %5119 = load i32, ptr %3236, align 4, !tbaa !26
  %5120 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %5119), !nosanitize !32
  %5121 = extractvalue { i32, i1 } %5120, 1, !nosanitize !32
  br i1 %5121, label %5097, label %5122, !prof !34, !nosanitize !32

5122:                                             ; preds = %5112
  %5123 = extractvalue { i32, i1 } %5120, 0, !nosanitize !32
  %5124 = lshr i32 %5093, %5123
  %5125 = trunc nuw i32 %5124 to i16
  store i16 %5125, ptr %3899, align 8, !tbaa !25
  %5126 = add nsw i32 %5089, -16
  %5127 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5119, i32 %5126), !nosanitize !32
  %5128 = extractvalue { i32, i1 } %5127, 1, !nosanitize !32
  br i1 %5128, label %5111, label %5132, !prof !34, !nosanitize !32

5129:                                             ; preds = %5074
  %5130 = add nsw i32 %5076, %5089
  %5131 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %5130, 0
  br label %5132

5132:                                             ; preds = %5129, %5122
  %5133 = phi i16 [ %5125, %5122 ], [ %5096, %5129 ]
  %5134 = phi { i32, i1 } [ %5127, %5122 ], [ %5131, %5129 ]
  %5135 = extractvalue { i32, i1 } %5134, 0
  store i32 %5135, ptr %3236, align 4, !tbaa !26
  %5136 = getelementptr inbounds nuw [30 x i32], ptr @extra_dbits, i64 0, i64 %5085
  %5137 = load i32, ptr %5136, align 4, !tbaa !50
  %5138 = icmp ult i8 %5084, 4
  br i1 %5138, label %5200, label %5139

5139:                                             ; preds = %5132
  %5140 = getelementptr inbounds nuw [30 x i32], ptr @base_dist, i64 0, i64 %5085
  %5141 = load i32, ptr %5140, align 4, !tbaa !50
  %5142 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %5077, i32 %5141), !nosanitize !32
  %5143 = extractvalue { i32, i1 } %5142, 0, !nosanitize !32
  %5144 = extractvalue { i32, i1 } %5142, 1, !nosanitize !32
  br i1 %5144, label %5145, label %5146, !prof !34, !nosanitize !32

5145:                                             ; preds = %5233, %5180, %5170, %5146, %5139
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

5146:                                             ; preds = %5139
  %5147 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %5137), !nosanitize !32
  %5148 = extractvalue { i32, i1 } %5147, 1, !nosanitize !32
  br i1 %5148, label %5145, label %5149, !prof !34, !nosanitize !32

5149:                                             ; preds = %5146
  %5150 = extractvalue { i32, i1 } %5147, 0, !nosanitize !32
  %5151 = icmp sgt i32 %5135, %5150
  br i1 %5151, label %5152, label %5190

5152:                                             ; preds = %5149
  %5153 = and i32 %5143, 65535
  %5154 = shl i32 %5143, %5135
  %5155 = trunc i32 %5154 to i16
  %5156 = or i16 %5133, %5155
  store i16 %5156, ptr %3899, align 8, !tbaa !25
  %5157 = load i64, ptr %3900, align 8, !tbaa !33
  %5158 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5157, i64 1), !nosanitize !32
  %5159 = extractvalue { i64, i1 } %5158, 1, !nosanitize !32
  br i1 %5159, label %5160, label %5161, !prof !34, !nosanitize !32

5160:                                             ; preds = %5152
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

5161:                                             ; preds = %5152
  %5162 = extractvalue { i64, i1 } %5158, 0, !nosanitize !32
  %5163 = load ptr, ptr %3901, align 8, !tbaa !35
  %5164 = trunc i16 %5156 to i8
  store i64 %5162, ptr %3900, align 8, !tbaa !33
  %5165 = getelementptr inbounds nuw i8, ptr %5163, i64 %5157
  store i8 %5164, ptr %5165, align 1, !tbaa !28
  %5166 = load i64, ptr %3900, align 8, !tbaa !33
  %5167 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5166, i64 1), !nosanitize !32
  %5168 = extractvalue { i64, i1 } %5167, 1, !nosanitize !32
  br i1 %5168, label %5169, label %5170, !prof !34, !nosanitize !32

5169:                                             ; preds = %5190, %5186, %5161
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

5170:                                             ; preds = %5161
  %5171 = extractvalue { i64, i1 } %5167, 0, !nosanitize !32
  %5172 = load ptr, ptr %3901, align 8, !tbaa !35
  %5173 = load i16, ptr %3899, align 8, !tbaa !25
  %5174 = lshr i16 %5173, 8
  %5175 = trunc nuw i16 %5174 to i8
  store i64 %5171, ptr %3900, align 8, !tbaa !33
  %5176 = getelementptr inbounds nuw i8, ptr %5172, i64 %5166
  store i8 %5175, ptr %5176, align 1, !tbaa !28
  %5177 = load i32, ptr %3236, align 4, !tbaa !26
  %5178 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %5177), !nosanitize !32
  %5179 = extractvalue { i32, i1 } %5178, 1, !nosanitize !32
  br i1 %5179, label %5145, label %5180, !prof !34, !nosanitize !32

5180:                                             ; preds = %5170
  %5181 = extractvalue { i32, i1 } %5178, 0, !nosanitize !32
  %5182 = lshr i32 %5153, %5181
  %5183 = trunc nuw i32 %5182 to i16
  store i16 %5183, ptr %3899, align 8, !tbaa !25
  %5184 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5137, i32 -16)
  %5185 = extractvalue { i32, i1 } %5184, 1, !nosanitize !32
  br i1 %5185, label %5145, label %5186, !prof !34, !nosanitize !32

5186:                                             ; preds = %5180
  %5187 = extractvalue { i32, i1 } %5184, 0, !nosanitize !32
  %5188 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5177, i32 %5187), !nosanitize !32
  %5189 = extractvalue { i32, i1 } %5188, 1, !nosanitize !32
  br i1 %5189, label %5169, label %5196, !prof !34, !nosanitize !32

5190:                                             ; preds = %5149
  %5191 = shl i32 %5143, %5135
  %5192 = trunc i32 %5191 to i16
  %5193 = or i16 %5133, %5192
  store i16 %5193, ptr %3899, align 8, !tbaa !25
  %5194 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5135, i32 %5137), !nosanitize !32
  %5195 = extractvalue { i32, i1 } %5194, 1, !nosanitize !32
  br i1 %5195, label %5169, label %5196, !prof !34, !nosanitize !32

5196:                                             ; preds = %5190, %5186, %4953, %4946
  %5197 = phi i16 [ %4949, %4946 ], [ %4920, %4953 ], [ %5183, %5186 ], [ %5193, %5190 ]
  %5198 = phi { i32, i1 } [ %4951, %4946 ], [ %4955, %4953 ], [ %5188, %5186 ], [ %5194, %5190 ]
  %5199 = extractvalue { i32, i1 } %5198, 0
  store i32 %5199, ptr %3236, align 4, !tbaa !26
  br label %5200

5200:                                             ; preds = %5196, %5132
  %5201 = phi i16 [ %5133, %5132 ], [ %5197, %5196 ]
  %5202 = phi i32 [ %5135, %5132 ], [ %5199, %5196 ]
  %5203 = load i32, ptr %4872, align 4, !tbaa !31
  %5204 = icmp ult i32 %4899, %5203
  br i1 %5204, label %4877, label %5205, !llvm.loop !79

5205:                                             ; preds = %5200, %4867
  %5206 = phi i16 [ %4868, %4867 ], [ %5201, %5200 ]
  %5207 = phi i32 [ %4869, %4867 ], [ %5202, %5200 ]
  %5208 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %5209 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %5210 = load i16, ptr %5209, align 2, !tbaa !28
  %5211 = zext i16 %5210 to i32
  %5212 = sub nsw i32 16, %5211
  %5213 = icmp sgt i32 %5207, %5212
  %5214 = load i16, ptr %5208, align 2, !tbaa !28
  %5215 = zext i16 %5214 to i32
  %5216 = shl i32 %5215, %5207
  %5217 = trunc i32 %5216 to i16
  %5218 = or i16 %5206, %5217
  store i16 %5218, ptr %3899, align 8, !tbaa !25
  br i1 %5213, label %5219, label %5250

5219:                                             ; preds = %5205
  %5220 = load i64, ptr %3900, align 8, !tbaa !33
  %5221 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5220, i64 1), !nosanitize !32
  %5222 = extractvalue { i64, i1 } %5221, 1, !nosanitize !32
  br i1 %5222, label %5223, label %5224, !prof !34, !nosanitize !32

5223:                                             ; preds = %5219
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

5224:                                             ; preds = %5219
  %5225 = extractvalue { i64, i1 } %5221, 0, !nosanitize !32
  %5226 = load ptr, ptr %3901, align 8, !tbaa !35
  %5227 = trunc i16 %5218 to i8
  store i64 %5225, ptr %3900, align 8, !tbaa !33
  %5228 = getelementptr inbounds nuw i8, ptr %5226, i64 %5220
  store i8 %5227, ptr %5228, align 1, !tbaa !28
  %5229 = load i64, ptr %3900, align 8, !tbaa !33
  %5230 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5229, i64 1), !nosanitize !32
  %5231 = extractvalue { i64, i1 } %5230, 1, !nosanitize !32
  br i1 %5231, label %5232, label %5233, !prof !34, !nosanitize !32

5232:                                             ; preds = %5243, %5224
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

5233:                                             ; preds = %5224
  %5234 = extractvalue { i64, i1 } %5230, 0, !nosanitize !32
  %5235 = load ptr, ptr %3901, align 8, !tbaa !35
  %5236 = load i16, ptr %3899, align 8, !tbaa !25
  %5237 = lshr i16 %5236, 8
  %5238 = trunc nuw i16 %5237 to i8
  store i64 %5234, ptr %3900, align 8, !tbaa !33
  %5239 = getelementptr inbounds nuw i8, ptr %5235, i64 %5229
  store i8 %5238, ptr %5239, align 1, !tbaa !28
  %5240 = load i32, ptr %3236, align 4, !tbaa !26
  %5241 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %5240), !nosanitize !32
  %5242 = extractvalue { i32, i1 } %5241, 1, !nosanitize !32
  br i1 %5242, label %5145, label %5243, !prof !34, !nosanitize !32

5243:                                             ; preds = %5233
  %5244 = extractvalue { i32, i1 } %5241, 0, !nosanitize !32
  %5245 = lshr i32 %5215, %5244
  %5246 = trunc nuw i32 %5245 to i16
  store i16 %5246, ptr %3899, align 8, !tbaa !25
  %5247 = add nsw i32 %5211, -16
  %5248 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5240, i32 %5247), !nosanitize !32
  %5249 = extractvalue { i32, i1 } %5248, 1, !nosanitize !32
  br i1 %5249, label %5232, label %5253, !prof !34, !nosanitize !32

5250:                                             ; preds = %5205
  %5251 = add nsw i32 %5207, %5211
  %5252 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %5251, 0
  br label %5253

5253:                                             ; preds = %5250, %5243
  %5254 = phi { i32, i1 } [ %5248, %5243 ], [ %5252, %5250 ]
  %5255 = extractvalue { i32, i1 } %5254, 0
  store i32 %5255, ptr %3236, align 4, !tbaa !26
  br label %5256

5256:                                             ; preds = %5253, %3665, %3232
  %5257 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %5258

5258:                                             ; preds = %5258, %5256
  %5259 = phi i64 [ 0, %5256 ], [ %5263, %5258 ]
  %5260 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %5257, i64 0, i64 %5259
  store i16 0, ptr %5260, align 4, !tbaa !28
  %5261 = or disjoint i64 %5259, 1
  %5262 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %5257, i64 0, i64 %5261
  store i16 0, ptr %5262, align 4, !tbaa !28
  %5263 = add nuw nsw i64 %5259, 2
  %5264 = icmp eq i64 %5263, 286
  br i1 %5264, label %5265, label %5258, !llvm.loop !29

5265:                                             ; preds = %5258
  %5266 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %5266, align 4, !tbaa !28
  %5267 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %5267, align 4, !tbaa !28
  %5268 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %5268, align 4, !tbaa !28
  %5269 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %5269, align 4, !tbaa !28
  %5270 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %5270, align 4, !tbaa !28
  %5271 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %5271, align 4, !tbaa !28
  %5272 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %5272, align 4, !tbaa !28
  %5273 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %5273, align 4, !tbaa !28
  %5274 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %5274, align 4, !tbaa !28
  %5275 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %5275, align 4, !tbaa !28
  %5276 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %5276, align 4, !tbaa !28
  %5277 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %5277, align 4, !tbaa !28
  %5278 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %5278, align 4, !tbaa !28
  %5279 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %5279, align 4, !tbaa !28
  %5280 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %5280, align 4, !tbaa !28
  %5281 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %5281, align 4, !tbaa !28
  %5282 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %5282, align 4, !tbaa !28
  %5283 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %5283, align 4, !tbaa !28
  %5284 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %5284, align 4, !tbaa !28
  %5285 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %5285, align 4, !tbaa !28
  %5286 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %5286, align 4, !tbaa !28
  %5287 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %5287, align 4, !tbaa !28
  %5288 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %5288, align 4, !tbaa !28
  %5289 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %5289, align 4, !tbaa !28
  %5290 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %5290, align 4, !tbaa !28
  %5291 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %5291, align 4, !tbaa !28
  %5292 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %5292, align 4, !tbaa !28
  %5293 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %5293, align 4, !tbaa !28
  %5294 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %5294, align 4, !tbaa !28
  %5295 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %5295, align 4, !tbaa !28
  %5296 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %5296, align 4, !tbaa !28
  %5297 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %5297, align 4, !tbaa !28
  %5298 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %5298, align 4, !tbaa !28
  %5299 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %5299, align 4, !tbaa !28
  %5300 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %5300, align 4, !tbaa !28
  %5301 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %5301, align 4, !tbaa !28
  %5302 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %5302, align 4, !tbaa !28
  %5303 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %5303, align 4, !tbaa !28
  %5304 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %5304, align 4, !tbaa !28
  %5305 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %5305, align 4, !tbaa !28
  %5306 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %5306, align 4, !tbaa !28
  %5307 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %5307, align 4, !tbaa !28
  %5308 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %5308, align 4, !tbaa !28
  %5309 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %5309, align 4, !tbaa !28
  %5310 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %5310, align 4, !tbaa !28
  %5311 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %5311, align 4, !tbaa !28
  %5312 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %5312, align 4, !tbaa !28
  %5313 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %5313, align 4, !tbaa !28
  %5314 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %5314, align 4, !tbaa !28
  %5315 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %5315, align 4, !tbaa !28
  %5316 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %5317 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %5317, align 4, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5316, i8 0, i64 20, i1 false)
  %5318 = icmp eq i32 %3, 0
  br i1 %5318, label %5375, label %5319

5319:                                             ; preds = %5265
  %5320 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %5321 = load i32, ptr %5320, align 4, !tbaa !26
  %5322 = icmp sgt i32 %5321, 8
  br i1 %5322, label %5323, label %5348

5323:                                             ; preds = %5319
  %5324 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %5325 = load i64, ptr %5324, align 8, !tbaa !33
  %5326 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5325, i64 1), !nosanitize !32
  %5327 = extractvalue { i64, i1 } %5326, 1, !nosanitize !32
  br i1 %5327, label %5328, label %5329, !prof !34, !nosanitize !32

5328:                                             ; preds = %5323
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

5329:                                             ; preds = %5323
  %5330 = extractvalue { i64, i1 } %5326, 0, !nosanitize !32
  %5331 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5332 = load ptr, ptr %5331, align 8, !tbaa !35
  %5333 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %5334 = load i16, ptr %5333, align 8, !tbaa !25
  %5335 = trunc i16 %5334 to i8
  store i64 %5330, ptr %5324, align 8, !tbaa !33
  %5336 = getelementptr inbounds nuw i8, ptr %5332, i64 %5325
  store i8 %5335, ptr %5336, align 1, !tbaa !28
  %5337 = load i64, ptr %5324, align 8, !tbaa !33
  %5338 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5337, i64 1), !nosanitize !32
  %5339 = extractvalue { i64, i1 } %5338, 1, !nosanitize !32
  br i1 %5339, label %5340, label %5341, !prof !34, !nosanitize !32

5340:                                             ; preds = %5329
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

5341:                                             ; preds = %5329
  %5342 = extractvalue { i64, i1 } %5338, 0, !nosanitize !32
  %5343 = load ptr, ptr %5331, align 8, !tbaa !35
  %5344 = load i16, ptr %5333, align 8, !tbaa !25
  %5345 = lshr i16 %5344, 8
  %5346 = trunc nuw i16 %5345 to i8
  store i64 %5342, ptr %5324, align 8, !tbaa !33
  %5347 = getelementptr inbounds nuw i8, ptr %5343, i64 %5337
  store i8 %5346, ptr %5347, align 1, !tbaa !28
  br label %5364

5348:                                             ; preds = %5319
  %5349 = icmp sgt i32 %5321, 0
  br i1 %5349, label %5350, label %5364

5350:                                             ; preds = %5348
  %5351 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %5352 = load i64, ptr %5351, align 8, !tbaa !33
  %5353 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5352, i64 1), !nosanitize !32
  %5354 = extractvalue { i64, i1 } %5353, 1, !nosanitize !32
  br i1 %5354, label %5355, label %5356, !prof !34, !nosanitize !32

5355:                                             ; preds = %5350
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

5356:                                             ; preds = %5350
  %5357 = extractvalue { i64, i1 } %5353, 0, !nosanitize !32
  %5358 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5359 = load ptr, ptr %5358, align 8, !tbaa !35
  %5360 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %5361 = load i16, ptr %5360, align 8, !tbaa !25
  %5362 = trunc i16 %5361 to i8
  store i64 %5357, ptr %5351, align 8, !tbaa !33
  %5363 = getelementptr inbounds nuw i8, ptr %5359, i64 %5352
  store i8 %5362, ptr %5363, align 1, !tbaa !28
  br label %5364

5364:                                             ; preds = %5356, %5348, %5341
  %5365 = load i32, ptr %5320, align 4, !tbaa !26
  %5366 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5365, i32 -1)
  %5367 = extractvalue { i32, i1 } %5366, 1, !nosanitize !32
  br i1 %5367, label %5368, label %5369, !prof !34, !nosanitize !32

5368:                                             ; preds = %5364
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

5369:                                             ; preds = %5364
  %5370 = extractvalue { i32, i1 } %5366, 0, !nosanitize !32
  %5371 = and i32 %5370, 7
  %5372 = add nuw nsw i32 %5371, 1
  %5373 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %5372, ptr %5373, align 8, !tbaa !27
  %5374 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %5374, align 8, !tbaa !25
  store i32 0, ptr %5320, align 4, !tbaa !26
  br label %5375

5375:                                             ; preds = %5369, %5265
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @_tr_tally(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %6 = load i32, ptr %5, align 4, !tbaa !31
  %7 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %6, i32 1), !nosanitize !32
  %8 = extractvalue { i32, i1 } %7, 1, !nosanitize !32
  br i1 %8, label %9, label %10, !prof !34, !nosanitize !32

9:                                                ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

10:                                               ; preds = %3
  %11 = extractvalue { i32, i1 } %7, 0, !nosanitize !32
  %12 = load ptr, ptr %4, align 8, !tbaa !78
  %13 = trunc i32 %1 to i8
  store i32 %11, ptr %5, align 4, !tbaa !31
  %14 = zext i32 %6 to i64
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 %14
  store i8 %13, ptr %15, align 1, !tbaa !28
  %16 = load i32, ptr %5, align 4, !tbaa !31
  %17 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %16, i32 1), !nosanitize !32
  %18 = extractvalue { i32, i1 } %17, 1, !nosanitize !32
  br i1 %18, label %19, label %20, !prof !34, !nosanitize !32

19:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

20:                                               ; preds = %10
  %21 = extractvalue { i32, i1 } %17, 0, !nosanitize !32
  %22 = load ptr, ptr %4, align 8, !tbaa !78
  %23 = lshr i32 %1, 8
  %24 = trunc i32 %23 to i8
  store i32 %21, ptr %5, align 4, !tbaa !31
  %25 = zext i32 %16 to i64
  %26 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  store i8 %24, ptr %26, align 1, !tbaa !28
  %27 = load i32, ptr %5, align 4, !tbaa !31
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %27, i32 1), !nosanitize !32
  %29 = extractvalue { i32, i1 } %28, 1, !nosanitize !32
  br i1 %29, label %30, label %31, !prof !34, !nosanitize !32

30:                                               ; preds = %20
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

31:                                               ; preds = %20
  %32 = extractvalue { i32, i1 } %28, 0, !nosanitize !32
  %33 = load ptr, ptr %4, align 8, !tbaa !78
  %34 = trunc i32 %2 to i8
  store i32 %32, ptr %5, align 4, !tbaa !31
  %35 = zext i32 %27 to i64
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 %35
  store i8 %34, ptr %36, align 1, !tbaa !28
  %37 = icmp eq i32 %1, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %40 = zext i32 %2 to i64
  %41 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %39, i64 0, i64 %40
  %42 = load i16, ptr %41, align 4, !tbaa !28
  %43 = add i16 %42, 1
  store i16 %43, ptr %41, align 4, !tbaa !28
  br label %74

44:                                               ; preds = %31
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %46 = load i32, ptr %45, align 8, !tbaa !83
  %47 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %46, i32 1), !nosanitize !32
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !32
  br i1 %48, label %49, label %50, !prof !34, !nosanitize !32

49:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !32
  store i32 %51, ptr %45, align 8, !tbaa !83
  %52 = add i32 %1, -1
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %54 = zext i32 %2 to i64
  %55 = getelementptr inbounds nuw [256 x i8], ptr @_length_code, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !28
  %57 = zext i8 %56 to i64
  %58 = add nuw nsw i64 %57, 257
  %59 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %53, i64 0, i64 %58
  %60 = load i16, ptr %59, align 4, !tbaa !28
  %61 = add i16 %60, 1
  store i16 %61, ptr %59, align 4, !tbaa !28
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %63 = icmp ult i32 %1, 257
  %64 = lshr i32 %52, 7
  %65 = add nuw nsw i32 %64, 256
  %66 = select i1 %63, i32 %52, i32 %65
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds nuw [512 x i8], ptr @_dist_code, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !28
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds nuw [61 x %struct.ct_data_s], ptr %62, i64 0, i64 %70
  %72 = load i16, ptr %71, align 4, !tbaa !28
  %73 = add i16 %72, 1
  store i16 %73, ptr %71, align 4, !tbaa !28
  br label %74

74:                                               ; preds = %50, %38
  %75 = load i32, ptr %5, align 4, !tbaa !31
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %77 = load i32, ptr %76, align 8, !tbaa !84
  %78 = icmp eq i32 %75, %77
  %79 = zext i1 %78 to i32
  ret i32 %79
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #2

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare void @llvm.lifetime.end.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nomerge noreturn nounwind }

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
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!6, !11, i64 5900}
!32 = !{}
!33 = !{!6, !13, i64 40}
!34 = !{!"branch_weights", i32 1, i32 1048575}
!35 = !{!6, !12, i64 16}
!36 = !{!6, !11, i64 196}
!37 = !{!6, !7, i64 0}
!38 = !{!39, !11, i64 88}
!39 = !{!"z_stream_s", !12, i64 0, !11, i64 8, !13, i64 16, !12, i64 24, !11, i64 32, !13, i64 40, !12, i64 48, !40, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !11, i64 88, !13, i64 96, !13, i64 104}
!40 = !{!"p1 _ZTS14internal_state", !8, i64 0}
!41 = distinct !{!41, !30}
!42 = !{!16, !17, i64 0}
!43 = !{!16, !18, i64 16}
!44 = !{!45, !17, i64 0}
!45 = !{!"static_tree_desc_s", !17, i64 0, !46, i64 8, !11, i64 16, !11, i64 20, !11, i64 24}
!46 = !{!"p1 int", !8, i64 0}
!47 = !{!45, !11, i64 20}
!48 = !{!6, !11, i64 5300}
!49 = !{!6, !11, i64 5304}
!50 = !{!11, !11, i64 0}
!51 = distinct !{!51, !30}
!52 = !{!6, !13, i64 5912}
!53 = !{!6, !13, i64 5920}
!54 = distinct !{!54, !30}
!55 = !{!16, !11, i64 8}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !30}
!59 = !{!45, !46, i64 8}
!60 = !{!45, !11, i64 16}
!61 = !{!45, !11, i64 24}
!62 = !{!19, !19, i64 0}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30}
!66 = distinct !{!66, !30}
!67 = distinct !{!67, !30}
!68 = distinct !{!68, !30}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = distinct !{!71, !30}
!72 = distinct !{!72, !70}
!73 = !{!6, !11, i64 2912}
!74 = distinct !{!74, !30}
!75 = !{!6, !11, i64 2936}
!76 = distinct !{!76, !70}
!77 = !{!6, !11, i64 200}
!78 = !{!6, !12, i64 5888}
!79 = distinct !{!79, !30}
!80 = distinct !{!80, !30}
!81 = distinct !{!81, !30}
!82 = distinct !{!82, !30}
!83 = !{!6, !11, i64 5928}
!84 = !{!6, !11, i64 5904}
