; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_trees.thorough.mid.ll'
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
  br i1 %7, label %9, label %46

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

30:                                               ; preds = %21
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
  %45 = add i32 %38, -13
  br label %53

46:                                               ; preds = %4
  %47 = shl i32 %3, %6
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %49 = load i16, ptr %48, align 8, !tbaa !25
  %50 = trunc i32 %47 to i16
  %51 = or i16 %49, %50
  store i16 %51, ptr %48, align 8, !tbaa !25
  %52 = add nsw i32 %6, 3
  br label %53

53:                                               ; preds = %41, %46
  %54 = phi i16 [ %44, %41 ], [ %51, %46 ]
  %55 = phi i32 [ %45, %41 ], [ %52, %46 ]
  store i32 %55, ptr %5, align 4, !tbaa !26
  %56 = icmp sgt i32 %55, 8
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %59 = load i64, ptr %58, align 8, !tbaa !31
  %60 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %59, i64 1), !nosanitize !30
  %61 = extractvalue { i64, i1 } %60, 1, !nosanitize !30
  br i1 %61, label %62, label %63, !prof !32, !nosanitize !30

62:                                               ; preds = %57
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

63:                                               ; preds = %57
  %64 = extractvalue { i64, i1 } %60, 0, !nosanitize !30
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %66 = load ptr, ptr %65, align 8, !tbaa !33
  %67 = trunc i16 %54 to i8
  store i64 %64, ptr %58, align 8, !tbaa !31
  %68 = getelementptr inbounds nuw i8, ptr %66, i64 %59
  store i8 %67, ptr %68, align 1, !tbaa !28
  %69 = load i64, ptr %58, align 8, !tbaa !31
  %70 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %69, i64 1), !nosanitize !30
  %71 = extractvalue { i64, i1 } %70, 1, !nosanitize !30
  br i1 %71, label %72, label %73, !prof !32, !nosanitize !30

72:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

73:                                               ; preds = %63
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %75 = extractvalue { i64, i1 } %70, 0, !nosanitize !30
  %76 = load ptr, ptr %65, align 8, !tbaa !33
  %77 = load i16, ptr %74, align 8, !tbaa !25
  %78 = lshr i16 %77, 8
  %79 = trunc nuw i16 %78 to i8
  store i64 %75, ptr %58, align 8, !tbaa !31
  %80 = getelementptr inbounds nuw i8, ptr %76, i64 %69
  store i8 %79, ptr %80, align 1, !tbaa !28
  br label %95

81:                                               ; preds = %53
  %82 = icmp sgt i32 %55, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %81
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %85 = load i64, ptr %84, align 8, !tbaa !31
  %86 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %85, i64 1), !nosanitize !30
  %87 = extractvalue { i64, i1 } %86, 1, !nosanitize !30
  br i1 %87, label %88, label %89, !prof !32, !nosanitize !30

88:                                               ; preds = %83
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

89:                                               ; preds = %83
  %90 = extractvalue { i64, i1 } %86, 0, !nosanitize !30
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %92 = load ptr, ptr %91, align 8, !tbaa !33
  %93 = trunc i16 %54 to i8
  store i64 %90, ptr %84, align 8, !tbaa !31
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 %85
  store i8 %93, ptr %94, align 1, !tbaa !28
  br label %95

95:                                               ; preds = %89, %81, %73
  %96 = load i32, ptr %5, align 4, !tbaa !26
  %97 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %96, i32 -1)
  %98 = extractvalue { i32, i1 } %97, 1, !nosanitize !30
  br i1 %98, label %99, label %100, !prof !32, !nosanitize !30

99:                                               ; preds = %95
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

100:                                              ; preds = %95
  %101 = extractvalue { i32, i1 } %97, 0, !nosanitize !30
  %102 = and i32 %101, 7
  %103 = add nuw nsw i32 %102, 1
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %103, ptr %104, align 8, !tbaa !27
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %105, align 8, !tbaa !25
  store i32 0, ptr %5, align 4, !tbaa !26
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %108 = load i64, ptr %107, align 8, !tbaa !31
  %109 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %108, i64 1), !nosanitize !30
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !30
  br i1 %110, label %111, label %112, !prof !32, !nosanitize !30

111:                                              ; preds = %100
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

112:                                              ; preds = %100
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !30
  %114 = load ptr, ptr %106, align 8, !tbaa !33
  %115 = trunc i64 %2 to i8
  store i64 %113, ptr %107, align 8, !tbaa !31
  %116 = getelementptr inbounds nuw i8, ptr %114, i64 %108
  store i8 %115, ptr %116, align 1, !tbaa !28
  %117 = load i64, ptr %107, align 8, !tbaa !31
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %117, i64 1), !nosanitize !30
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !30
  br i1 %119, label %120, label %121, !prof !32, !nosanitize !30

120:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

121:                                              ; preds = %112
  %122 = extractvalue { i64, i1 } %118, 0, !nosanitize !30
  %123 = load ptr, ptr %106, align 8, !tbaa !33
  %124 = lshr i64 %2, 8
  %125 = trunc i64 %124 to i8
  store i64 %122, ptr %107, align 8, !tbaa !31
  %126 = getelementptr inbounds nuw i8, ptr %123, i64 %117
  store i8 %125, ptr %126, align 1, !tbaa !28
  %127 = load i64, ptr %107, align 8, !tbaa !31
  %128 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %127, i64 1), !nosanitize !30
  %129 = extractvalue { i64, i1 } %128, 1, !nosanitize !30
  br i1 %129, label %130, label %131, !prof !32, !nosanitize !30

130:                                              ; preds = %121
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

131:                                              ; preds = %121
  %132 = extractvalue { i64, i1 } %128, 0, !nosanitize !30
  %133 = load ptr, ptr %106, align 8, !tbaa !33
  %134 = trunc i64 %2 to i32
  %135 = xor i32 %134, 65535
  %136 = trunc i32 %135 to i8
  store i64 %132, ptr %107, align 8, !tbaa !31
  %137 = getelementptr inbounds nuw i8, ptr %133, i64 %127
  store i8 %136, ptr %137, align 1, !tbaa !28
  %138 = load i64, ptr %107, align 8, !tbaa !31
  %139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %138, i64 1), !nosanitize !30
  %140 = extractvalue { i64, i1 } %139, 1, !nosanitize !30
  br i1 %140, label %141, label %142, !prof !32, !nosanitize !30

141:                                              ; preds = %131
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

142:                                              ; preds = %131
  %143 = extractvalue { i64, i1 } %139, 0, !nosanitize !30
  %144 = load ptr, ptr %106, align 8, !tbaa !33
  %145 = lshr i32 %135, 8
  %146 = trunc i32 %145 to i8
  store i64 %143, ptr %107, align 8, !tbaa !31
  %147 = getelementptr inbounds nuw i8, ptr %144, i64 %138
  store i8 %146, ptr %147, align 1, !tbaa !28
  %148 = icmp eq i64 %2, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %142
  %150 = load ptr, ptr %106, align 8, !tbaa !33
  %151 = load i64, ptr %107, align 8, !tbaa !31
  %152 = getelementptr inbounds nuw i8, ptr %150, i64 %151
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %152, ptr align 1 %1, i64 %2, i1 false)
  br label %153

153:                                              ; preds = %149, %142
  %154 = load i64, ptr %107, align 8, !tbaa !31
  %155 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %154, i64 %2), !nosanitize !30
  %156 = extractvalue { i64, i1 } %155, 1, !nosanitize !30
  br i1 %156, label %157, label %158, !prof !32, !nosanitize !30

157:                                              ; preds = %153
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

158:                                              ; preds = %153
  %159 = extractvalue { i64, i1 } %155, 0, !nosanitize !30
  store i64 %159, ptr %107, align 8, !tbaa !31
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
  br i1 %4, label %11, label %42

10:                                               ; preds = %64, %27
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

26:                                               ; preds = %17
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
  %41 = add i32 %34, -13
  br label %44

42:                                               ; preds = %1
  %43 = add nsw i32 %3, 3
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi i16 [ %40, %37 ], [ %9, %42 ]
  %46 = phi i32 [ %41, %37 ], [ %43, %42 ]
  store i32 %46, ptr %2, align 4, !tbaa !26
  %47 = icmp sgt i32 %46, 9
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %50 = load i64, ptr %49, align 8, !tbaa !31
  %51 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %50, i64 1), !nosanitize !30
  %52 = extractvalue { i64, i1 } %51, 1, !nosanitize !30
  br i1 %52, label %53, label %54, !prof !32, !nosanitize !30

53:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

54:                                               ; preds = %48
  %55 = extractvalue { i64, i1 } %51, 0, !nosanitize !30
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %57 = load ptr, ptr %56, align 8, !tbaa !33
  %58 = trunc i16 %45 to i8
  store i64 %55, ptr %49, align 8, !tbaa !31
  %59 = getelementptr inbounds nuw i8, ptr %57, i64 %50
  store i8 %58, ptr %59, align 1, !tbaa !28
  %60 = load i64, ptr %49, align 8, !tbaa !31
  %61 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %60, i64 1), !nosanitize !30
  %62 = extractvalue { i64, i1 } %61, 1, !nosanitize !30
  br i1 %62, label %63, label %64, !prof !32, !nosanitize !30

63:                                               ; preds = %54
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

64:                                               ; preds = %54
  %65 = extractvalue { i64, i1 } %61, 0, !nosanitize !30
  %66 = load ptr, ptr %56, align 8, !tbaa !33
  %67 = load i16, ptr %6, align 8, !tbaa !25
  %68 = lshr i16 %67, 8
  %69 = trunc nuw i16 %68 to i8
  store i64 %65, ptr %49, align 8, !tbaa !31
  %70 = getelementptr inbounds nuw i8, ptr %66, i64 %60
  store i8 %69, ptr %70, align 1, !tbaa !28
  %71 = load i32, ptr %2, align 4, !tbaa !26
  %72 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %71), !nosanitize !30
  %73 = extractvalue { i32, i1 } %72, 1, !nosanitize !30
  br i1 %73, label %10, label %74, !prof !32, !nosanitize !30

74:                                               ; preds = %64
  store i16 0, ptr %6, align 8, !tbaa !25
  %75 = add i32 %71, -9
  br label %79

76:                                               ; preds = %44
  %77 = add nsw i32 %46, 7
  %78 = trunc i16 %45 to i8
  br label %79

79:                                               ; preds = %76, %74
  %80 = phi i8 [ %78, %76 ], [ 0, %74 ]
  %81 = phi i32 [ %77, %76 ], [ %75, %74 ]
  store i32 %81, ptr %2, align 4, !tbaa !26
  %82 = icmp eq i32 %81, 16
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %85 = load i64, ptr %84, align 8, !tbaa !31
  %86 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %85, i64 1), !nosanitize !30
  %87 = extractvalue { i64, i1 } %86, 1, !nosanitize !30
  br i1 %87, label %88, label %89, !prof !32, !nosanitize !30

88:                                               ; preds = %83
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

89:                                               ; preds = %83
  %90 = extractvalue { i64, i1 } %86, 0, !nosanitize !30
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %92 = load ptr, ptr %91, align 8, !tbaa !33
  store i64 %90, ptr %84, align 8, !tbaa !31
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 %85
  store i8 %80, ptr %93, align 1, !tbaa !28
  %94 = load i64, ptr %84, align 8, !tbaa !31
  %95 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 1), !nosanitize !30
  %96 = extractvalue { i64, i1 } %95, 1, !nosanitize !30
  br i1 %96, label %97, label %98, !prof !32, !nosanitize !30

97:                                               ; preds = %89
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

98:                                               ; preds = %89
  %99 = extractvalue { i64, i1 } %95, 0, !nosanitize !30
  %100 = load ptr, ptr %91, align 8, !tbaa !33
  %101 = load i16, ptr %6, align 8, !tbaa !25
  %102 = lshr i16 %101, 8
  %103 = trunc nuw i16 %102 to i8
  store i64 %99, ptr %84, align 8, !tbaa !31
  %104 = getelementptr inbounds nuw i8, ptr %100, i64 %94
  store i8 %103, ptr %104, align 1, !tbaa !28
  store i16 0, ptr %6, align 8, !tbaa !25
  br label %126

105:                                              ; preds = %79
  %106 = icmp sgt i32 %81, 7
  br i1 %106, label %107, label %128

107:                                              ; preds = %105
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %109 = load i64, ptr %108, align 8, !tbaa !31
  %110 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %109, i64 1), !nosanitize !30
  %111 = extractvalue { i64, i1 } %110, 1, !nosanitize !30
  br i1 %111, label %112, label %113, !prof !32, !nosanitize !30

112:                                              ; preds = %107
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

113:                                              ; preds = %107
  %114 = extractvalue { i64, i1 } %110, 0, !nosanitize !30
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %116 = load ptr, ptr %115, align 8, !tbaa !33
  store i64 %114, ptr %108, align 8, !tbaa !31
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 %109
  store i8 %80, ptr %117, align 1, !tbaa !28
  %118 = load i16, ptr %6, align 8, !tbaa !25
  %119 = lshr i16 %118, 8
  store i16 %119, ptr %6, align 8, !tbaa !25
  %120 = load i32, ptr %2, align 4, !tbaa !26
  %121 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %120, i32 -8)
  %122 = extractvalue { i32, i1 } %121, 1, !nosanitize !30
  br i1 %122, label %123, label %124, !prof !32, !nosanitize !30

123:                                              ; preds = %113
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

124:                                              ; preds = %113
  %125 = extractvalue { i32, i1 } %121, 0, !nosanitize !30
  br label %126

126:                                              ; preds = %124, %98
  %127 = phi i32 [ %125, %124 ], [ 0, %98 ]
  store i32 %127, ptr %2, align 4, !tbaa !26
  br label %128

128:                                              ; preds = %126, %105
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
  br i1 %10, label %11, label %2667

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
  br i1 %19, label %20, label %.loopexit401

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %22 = load i16, ptr %21, align 4, !tbaa !28
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %.loopexit401

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %26 = load i16, ptr %25, align 4, !tbaa !28
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %.loopexit401

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %30 = load i16, ptr %29, align 4, !tbaa !28
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %.loopexit401

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 228
  %34 = load i16, ptr %33, align 4, !tbaa !28
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %.loopexit401

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %38 = load i16, ptr %37, align 4, !tbaa !28
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %.loopexit401

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %42 = load i16, ptr %41, align 4, !tbaa !28
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %.loopexit401

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %46 = load i16, ptr %45, align 4, !tbaa !28
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %.loopexit401

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %50 = load i16, ptr %49, align 4, !tbaa !28
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %.loopexit401

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %54 = load i16, ptr %53, align 4, !tbaa !28
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %.loopexit401

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %58 = load i16, ptr %57, align 4, !tbaa !28
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %.loopexit401

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %62 = load i16, ptr %61, align 4, !tbaa !28
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %.loopexit401

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %66 = load i16, ptr %65, align 4, !tbaa !28
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %.loopexit401

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 292
  %70 = load i16, ptr %69, align 4, !tbaa !28
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %.loopexit401

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %74 = load i16, ptr %73, align 4, !tbaa !28
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %.loopexit401

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %78 = load i16, ptr %77, align 4, !tbaa !28
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %.loopexit401

80:                                               ; preds = %76
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %82 = load i16, ptr %81, align 4, !tbaa !28
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %.loopexit401

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 308
  %86 = load i16, ptr %85, align 4, !tbaa !28
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %.loopexit401

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %90 = load i16, ptr %89, align 4, !tbaa !28
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %.loopexit401

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 324
  %94 = load i16, ptr %93, align 4, !tbaa !28
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %.loopexit401

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %98 = load i16, ptr %97, align 4, !tbaa !28
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %.loopexit401

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 332
  %102 = load i16, ptr %101, align 4, !tbaa !28
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %.loopexit401

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %106 = load i16, ptr %105, align 4, !tbaa !28
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %.loopexit401

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %110 = load i16, ptr %109, align 4, !tbaa !28
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %.loopexit401

112:                                              ; preds = %108
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 252
  %114 = load i16, ptr %113, align 4, !tbaa !28
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %.loopexit401

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %118 = load i16, ptr %117, align 4, !tbaa !28
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %.preheader400, label %.loopexit401

120:                                              ; preds = %.preheader400
  %121 = getelementptr inbounds nuw i8, ptr %152, i64 4
  %122 = load i16, ptr %121, align 4, !tbaa !28
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %.loopexit401

124:                                              ; preds = %120
  %125 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %126 = load i16, ptr %125, align 4, !tbaa !28
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %.loopexit401

128:                                              ; preds = %124
  %129 = getelementptr inbounds nuw i8, ptr %152, i64 12
  %130 = load i16, ptr %129, align 4, !tbaa !28
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %.preheader400.1, label %.loopexit401

.preheader400.1:                                  ; preds = %128
  %132 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %151
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %134 = load i16, ptr %133, align 4, !tbaa !28
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %.loopexit401

136:                                              ; preds = %.preheader400.1
  %137 = getelementptr inbounds nuw i8, ptr %132, i64 20
  %138 = load i16, ptr %137, align 4, !tbaa !28
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %.loopexit401

140:                                              ; preds = %136
  %141 = getelementptr inbounds nuw i8, ptr %132, i64 24
  %142 = load i16, ptr %141, align 4, !tbaa !28
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %.loopexit401

144:                                              ; preds = %140
  %145 = getelementptr inbounds nuw i8, ptr %132, i64 28
  %146 = load i16, ptr %145, align 4, !tbaa !28
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %.loopexit401

148:                                              ; preds = %144
  %149 = add nuw nsw i64 %151, 8
  %150 = icmp eq i64 %149, 256
  br i1 %150, label %.loopexit401, label %.preheader400, !llvm.loop !39

.preheader400:                                    ; preds = %116, %148
  %151 = phi i64 [ %149, %148 ], [ 32, %116 ]
  %152 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %151
  %153 = load i16, ptr %152, align 4, !tbaa !28
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %120, label %.loopexit401

.loopexit401:                                     ; preds = %.preheader400, %128, %124, %120, %.preheader400.1, %136, %140, %144, %148, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16
  %155 = phi i32 [ 1, %116 ], [ 1, %112 ], [ 1, %108 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ 0, %24 ], [ 0, %20 ], [ 0, %16 ], [ 0, %148 ], [ 1, %128 ], [ 1, %124 ], [ 1, %120 ], [ 1, %.preheader400 ], [ 1, %.preheader400.1 ], [ 1, %136 ], [ 1, %140 ], [ 1, %144 ]
  store i32 %155, ptr %13, align 8, !tbaa !36
  br label %156

156:                                              ; preds = %.loopexit401, %11
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
  br i1 %173, label %174, label %.loopexit398

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
  br i1 %191, label %.loopexit394, label %192, !prof !32, !nosanitize !30

.loopexit394:                                     ; preds = %188, %404
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
  br i1 %229, label %.loopexit393, label %230, !prof !32, !nosanitize !30

.loopexit393:                                     ; preds = %223, %397, %390, %317, %493
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

230:                                              ; preds = %223
  %231 = extractvalue { i64, i1 } %228, 0, !nosanitize !30
  store i64 %231, ptr %181, align 8, !tbaa !52
  br label %232

232:                                              ; preds = %230, %221
  %233 = load i32, ptr %164, align 4, !tbaa !47
  %234 = icmp slt i32 %233, 2
  br i1 %234, label %204, label %.loopexit398, !llvm.loop !53

.loopexit398:                                     ; preds = %232, %171
  %235 = phi i32 [ %201, %171 ], [ %209, %232 ]
  %236 = phi i32 [ %172, %171 ], [ %233, %232 ]
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 %235, ptr %237, align 8, !tbaa !54
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %240 = lshr i32 %236, 1
  %241 = zext nneg i32 %240 to i64
  br label %246

242:                                              ; preds = %.loopexit395
  %243 = load i32, ptr %164, align 4, !tbaa !47
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %245 = sext i32 %163 to i64
  br label %317

246:                                              ; preds = %.loopexit395, %.loopexit398
  %247 = phi i64 [ %241, %.loopexit398 ], [ %315, %.loopexit395 ]
  %248 = getelementptr inbounds nuw [4 x i8], ptr %238, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !49
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, ptr %239, i64 %250
  %252 = load i32, ptr %164, align 4, !tbaa !47
  %253 = trunc i64 %247 to i32
  %254 = shl i32 %253, 1
  %255 = icmp sgt i32 %254, %252
  br i1 %255, label %.loopexit395, label %256

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
  br i1 %298, label %.loopexit395, label %299

299:                                              ; preds = %289
  %300 = icmp eq i16 %292, %297
  br i1 %300, label %301, label %306

301:                                              ; preds = %299
  %302 = load i8, ptr %251, align 1, !tbaa !28
  %303 = getelementptr inbounds i8, ptr %239, i64 %295
  %304 = load i8, ptr %303, align 1, !tbaa !28
  %305 = icmp ugt i8 %302, %304
  br i1 %305, label %306, label %.loopexit395

306:                                              ; preds = %301, %299
  %307 = sext i32 %261 to i64
  %308 = getelementptr inbounds [4 x i8], ptr %238, i64 %307
  store i32 %294, ptr %308, align 4, !tbaa !49
  %309 = shl i32 %291, 1
  %310 = load i32, ptr %164, align 4, !tbaa !47
  %311 = icmp sgt i32 %309, %310
  br i1 %311, label %.loopexit395, label %258, !llvm.loop !55

.loopexit395:                                     ; preds = %306, %301, %289, %246
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
  br i1 %322, label %.loopexit393, label %323, !prof !32, !nosanitize !30

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
  br i1 %396, label %.loopexit393, label %397, !prof !32, !nosanitize !30

397:                                              ; preds = %390
  %398 = extractvalue { i32, i1 } %395, 0, !nosanitize !30
  store i32 %398, ptr %165, align 8, !tbaa !48
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [4 x i8], ptr %238, i64 %399
  store i32 %320, ptr %400, align 4, !tbaa !49
  %401 = load i32, ptr %165, align 8, !tbaa !48
  %402 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %401, i32 -1)
  %403 = extractvalue { i32, i1 } %402, 1, !nosanitize !30
  br i1 %403, label %.loopexit393, label %404, !prof !32, !nosanitize !30

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
  br i1 %427, label %.loopexit394, label %428, !prof !32, !nosanitize !30

428:                                              ; preds = %404
  %429 = add nsw i64 %319, 1
  store i32 %423, ptr %244, align 4, !tbaa !49
  %430 = load i32, ptr %164, align 4, !tbaa !47
  %431 = icmp slt i32 %430, 2
  br i1 %431, label %488, label %.preheader392

.preheader392:                                    ; preds = %428, %479
  %432 = phi i32 [ %483, %479 ], [ %430, %428 ]
  %433 = phi i32 [ %482, %479 ], [ 2, %428 ]
  %434 = phi i32 [ %464, %479 ], [ 1, %428 ]
  %435 = icmp slt i32 %433, %432
  br i1 %435, label %438, label %436

436:                                              ; preds = %.preheader392
  %437 = sext i32 %433 to i64
  br label %462

438:                                              ; preds = %.preheader392
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
  br i1 %484, label %485, label %.preheader392, !llvm.loop !55

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
  br i1 %496, label %.loopexit393, label %497, !prof !32, !nosanitize !30

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
  %.fr = freeze i32 %511
  %512 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %512, i8 0, i64 32, i1 false), !tbaa !61
  %513 = load i32, ptr %165, align 8, !tbaa !48
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [4 x i8], ptr %238, i64 %514
  %516 = load i32, ptr %515, align 4, !tbaa !49
  %517 = sext i32 %516 to i64
  %.split280 = getelementptr inbounds [4 x i8], ptr %502, i64 %517
  %518 = getelementptr inbounds nuw i8, ptr %.split280, i64 2
  store i16 0, ptr %518, align 2, !tbaa !28
  %519 = load i32, ptr %165, align 8, !tbaa !48
  %520 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %519, i32 1), !nosanitize !30
  %521 = extractvalue { i32, i1 } %520, 1, !nosanitize !30
  br i1 %521, label %.loopexit389, label %522, !prof !32, !nosanitize !30

.loopexit389:                                     ; preds = %569, %545, %497
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

522:                                              ; preds = %497
  %523 = extractvalue { i32, i1 } %520, 0
  %524 = icmp slt i32 %523, 573
  br i1 %524, label %525, label %.loopexit384

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
  %.split281 = getelementptr inbounds nuw [4 x i8], ptr %502, i64 %539
  %540 = getelementptr inbounds nuw i8, ptr %.split281, i64 2
  %541 = load i16, ptr %540, align 2, !tbaa !28
  %542 = zext i16 %541 to i32
  %543 = add nuw nsw i32 %542, 1
  %544 = icmp sgt i32 %.fr, %542
  br i1 %544, label %550, label %545

545:                                              ; preds = %530
  %546 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %532, i32 1), !nosanitize !30
  %547 = extractvalue { i32, i1 } %546, 1, !nosanitize !30
  br i1 %547, label %.loopexit389, label %548, !prof !32, !nosanitize !30

548:                                              ; preds = %545
  %549 = extractvalue { i32, i1 } %546, 0, !nosanitize !30
  br label %550

550:                                              ; preds = %548, %530
  %551 = phi i32 [ %.fr, %548 ], [ %543, %530 ]
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
  br i1 %563, label %.loopexit, label %564, !prof !32, !nosanitize !30

.loopexit:                                        ; preds = %561, %627, %619, %.mv.ph, %.mv.ph.mv.fast, %693, %654, %606
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
  br i1 %574, label %.loopexit389, label %575, !prof !32, !nosanitize !30

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
  %.split282 = getelementptr inbounds [4 x i8], ptr %505, i64 %535
  %586 = getelementptr inbounds nuw i8, ptr %.split282, i64 2
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
  br i1 %597, label %.loopexit387, label %598, !prof !32, !nosanitize !30

.loopexit387:                                     ; preds = %591, %622
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
  br i1 %605, label %.loopexit384, label %606

606:                                              ; preds = %604
  %607 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.fr, i32 -1)
  %608 = extractvalue { i32, i1 } %607, 1, !nosanitize !30
  %609 = sext i32 %.fr to i64
  %610 = getelementptr inbounds [2 x i8], ptr %512, i64 %609
  br i1 %608, label %.loopexit, label %.preheader386, !prof !32, !nosanitize !30

.preheader386:                                    ; preds = %606, %637
  %611 = phi i32 [ %638, %637 ], [ %552, %606 ]
  br label %612

612:                                              ; preds = %619, %.preheader386
  %613 = phi { i32, i1 } [ %620, %619 ], [ %607, %.preheader386 ]
  %614 = extractvalue { i32, i1 } %613, 0
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [2 x i8], ptr %512, i64 %615
  %617 = load i16, ptr %616, align 2, !tbaa !61
  %618 = icmp eq i16 %617, 0
  br i1 %618, label %619, label %622

619:                                              ; preds = %612
  %620 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %614, i32 -1)
  %621 = extractvalue { i32, i1 } %620, 1, !nosanitize !30
  br i1 %621, label %.loopexit, label %612, !prof !32, !llvm.loop !63, !nosanitize !30

622:                                              ; preds = %612
  %623 = getelementptr inbounds [2 x i8], ptr %512, i64 %615
  %624 = add i16 %617, -1
  store i16 %624, ptr %623, align 2, !tbaa !61
  %625 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %614, i32 1), !nosanitize !30
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !30
  br i1 %626, label %.loopexit387, label %627, !prof !32, !nosanitize !30

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
  br i1 %636, label %.loopexit, label %637, !prof !32, !nosanitize !30

637:                                              ; preds = %627
  %638 = extractvalue { i32, i1 } %635, 0, !nosanitize !30
  %639 = icmp sgt i32 %638, 0
  br i1 %639, label %.preheader386, label %640, !llvm.loop !64

640:                                              ; preds = %637
  %641 = icmp eq i32 %.fr, 0
  br i1 %641, label %.loopexit384, label %.preheader382

.preheader382:                                    ; preds = %640, %723
  %642 = phi i64 [ %724, %723 ], [ %609, %640 ]
  %643 = phi i32 [ %686, %723 ], [ 573, %640 ]
  %644 = getelementptr inbounds [2 x i8], ptr %512, i64 %642
  %645 = load i16, ptr %644, align 2, !tbaa !61
  %646 = icmp eq i16 %645, 0
  br i1 %646, label %.loopexit2, label %647

647:                                              ; preds = %.preheader382
  %648 = zext i16 %645 to i32
  %649 = trunc i64 %642 to i16
  %mv.h = icmp sgt i64 %642, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %647, %683
  %650 = phi i32 [ %658, %683 ], [ %643, %647 ]
  %651 = phi i32 [ %684, %683 ], [ %648, %647 ]
  %652 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %650, i32 -1)
  %653 = extractvalue { i32, i1 } %652, 1, !nosanitize !30
  br i1 %653, label %.loopexit, label %.lr.ph1184, !prof !65, !nosanitize !30

654:                                              ; preds = %.lr.ph1184
  %655 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %658, i32 -1)
  %656 = extractvalue { i32, i1 } %655, 1, !nosanitize !30
  br i1 %656, label %.loopexit, label %.lr.ph1184, !prof !66, !llvm.loop !67, !nosanitize !30

.lr.ph1184:                                       ; preds = %.mv.ph.mv.fast, %654
  %657 = phi { i32, i1 } [ %655, %654 ], [ %652, %.mv.ph.mv.fast ]
  %658 = extractvalue { i32, i1 } %657, 0, !nosanitize !30
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [4 x i8], ptr %238, i64 %659
  %661 = load i32, ptr %660, align 4, !tbaa !49
  %662 = icmp sgt i32 %661, %503
  br i1 %662, label %654, label %663, !llvm.loop !67

663:                                              ; preds = %.lr.ph1184
  %664 = sext i32 %661 to i64
  %665 = getelementptr inbounds [4 x i8], ptr %502, i64 %664
  %666 = getelementptr inbounds nuw i8, ptr %665, i64 2
  %667 = load i16, ptr %666, align 2, !tbaa !28
  %668 = zext i16 %667 to i64
  %669 = icmp eq i64 %642, %668
  br i1 %669, label %683, label %670

670:                                              ; preds = %663
  %671 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %642, i64 %668), !nosanitize !30
  %672 = extractvalue { i64, i1 } %671, 1, !nosanitize !30
  br i1 %672, label %.loopexit1, label %673, !prof !32, !nosanitize !30

673:                                              ; preds = %670
  %674 = extractvalue { i64, i1 } %671, 0, !nosanitize !30
  %675 = load i16, ptr %665, align 2, !tbaa !28
  %676 = zext i16 %675 to i64
  %677 = mul i64 %674, %676
  %678 = load i64, ptr %526, align 8, !tbaa !51
  %679 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %678, i64 %677), !nosanitize !30
  %680 = extractvalue { i64, i1 } %679, 1, !nosanitize !30
  br i1 %680, label %.loopexit379, label %681, !prof !32, !nosanitize !30

681:                                              ; preds = %673
  %682 = extractvalue { i64, i1 } %679, 0, !nosanitize !30
  store i64 %682, ptr %526, align 8, !tbaa !51
  store i16 %649, ptr %666, align 2, !tbaa !28
  br label %683

683:                                              ; preds = %681, %663
  %684 = add nsw i32 %651, -1
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %.loopexit2, label %.mv.ph.mv.fast, !llvm.loop !67

.loopexit2:                                       ; preds = %719, %683, %.preheader382
  %686 = phi i32 [ %643, %.preheader382 ], [ %658, %683 ], [ %697, %719 ]
  %687 = and i64 %642, 4294967295
  %688 = icmp eq i64 %687, 2147483648
  br i1 %688, label %.loopexit1, label %723, !prof !32, !nosanitize !30

.mv.ph:                                           ; preds = %647, %719
  %689 = phi i32 [ %697, %719 ], [ %643, %647 ]
  %690 = phi i32 [ %721, %719 ], [ %648, %647 ]
  %691 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %689, i32 -1)
  %692 = extractvalue { i32, i1 } %691, 1, !nosanitize !30
  br i1 %692, label %.loopexit, label %.lr.ph, !prof !65, !nosanitize !30

693:                                              ; preds = %.lr.ph
  %694 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %697, i32 -1)
  %695 = extractvalue { i32, i1 } %694, 1, !nosanitize !30
  br i1 %695, label %.loopexit, label %.lr.ph, !prof !66, !llvm.loop !67, !nosanitize !30

.lr.ph:                                           ; preds = %.mv.ph, %693
  %696 = phi { i32, i1 } [ %694, %693 ], [ %691, %.mv.ph ]
  %697 = extractvalue { i32, i1 } %696, 0, !nosanitize !30
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds [4 x i8], ptr %238, i64 %698
  %700 = load i32, ptr %699, align 4, !tbaa !49
  %701 = icmp sgt i32 %700, %503
  br i1 %701, label %693, label %702, !llvm.loop !67

702:                                              ; preds = %.lr.ph
  %703 = sext i32 %700 to i64
  %704 = getelementptr inbounds [4 x i8], ptr %502, i64 %703
  %705 = getelementptr inbounds nuw i8, ptr %704, i64 2
  %706 = load i16, ptr %705, align 2, !tbaa !28
  %707 = zext i16 %706 to i64
  %708 = sub nuw i64 %642, %707
  %709 = load i16, ptr %704, align 2, !tbaa !28
  %710 = zext i16 %709 to i64
  %711 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %708, i64 %710), !nosanitize !30
  %712 = extractvalue { i64, i1 } %711, 1, !nosanitize !30
  br i1 %712, label %713, label %714, !prof !32, !nosanitize !30

.loopexit1:                                       ; preds = %.loopexit2, %670
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

713:                                              ; preds = %702
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !30
  unreachable, !nosanitize !30

714:                                              ; preds = %702
  %715 = extractvalue { i64, i1 } %711, 0, !nosanitize !30
  %716 = load i64, ptr %526, align 8, !tbaa !51
  %717 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %716, i64 %715), !nosanitize !30
  %718 = extractvalue { i64, i1 } %717, 1, !nosanitize !30
  br i1 %718, label %.loopexit379, label %719, !prof !32, !nosanitize !30

.loopexit379:                                     ; preds = %714, %673
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

719:                                              ; preds = %714
  %720 = extractvalue { i64, i1 } %717, 0, !nosanitize !30
  store i64 %720, ptr %526, align 8, !tbaa !51
  store i16 %649, ptr %705, align 2, !tbaa !28
  %721 = add nsw i32 %690, -1
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %.loopexit2, label %.mv.ph, !llvm.loop !67

723:                                              ; preds = %.loopexit2
  %724 = add nsw i64 %642, -1
  %725 = and i64 %724, 4294967295
  %726 = icmp eq i64 %725, 0
  br i1 %726, label %.loopexit384, label %.preheader382, !llvm.loop !68

.loopexit384:                                     ; preds = %723, %640, %604, %522
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %727 = load i16, ptr %512, align 2, !tbaa !61
  %728 = zext i16 %727 to i32
  %729 = shl nuw nsw i32 %728, 1
  %730 = trunc i32 %729 to i16
  %731 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %730, ptr %731, align 2, !tbaa !61
  %732 = getelementptr i8, ptr %0, i64 2978
  %733 = load i16, ptr %732, align 2, !tbaa !61
  %734 = zext i16 %733 to i32
  %735 = add nuw nsw i32 %729, %734
  %736 = shl nuw nsw i32 %735, 1
  %737 = trunc i32 %736 to i16
  %738 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %737, ptr %738, align 4, !tbaa !61
  %739 = getelementptr i8, ptr %0, i64 2980
  %740 = load i16, ptr %739, align 2, !tbaa !61
  %741 = zext i16 %740 to i32
  %742 = add nuw nsw i32 %736, %741
  %743 = shl nuw nsw i32 %742, 1
  %744 = trunc i32 %743 to i16
  %745 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %744, ptr %745, align 2, !tbaa !61
  %746 = getelementptr i8, ptr %0, i64 2982
  %747 = load i16, ptr %746, align 2, !tbaa !61
  %748 = zext i16 %747 to i32
  %749 = add nuw nsw i32 %743, %748
  %750 = shl nuw nsw i32 %749, 1
  %751 = trunc i32 %750 to i16
  %752 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %751, ptr %752, align 8, !tbaa !61
  %753 = getelementptr i8, ptr %0, i64 2984
  %754 = load i16, ptr %753, align 2, !tbaa !61
  %755 = zext i16 %754 to i32
  %756 = add nuw nsw i32 %750, %755
  %757 = shl nuw nsw i32 %756, 1
  %758 = trunc i32 %757 to i16
  %759 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %758, ptr %759, align 2, !tbaa !61
  %760 = getelementptr i8, ptr %0, i64 2986
  %761 = load i16, ptr %760, align 2, !tbaa !61
  %762 = zext i16 %761 to i32
  %763 = add nuw nsw i32 %757, %762
  %764 = shl nuw nsw i32 %763, 1
  %765 = trunc i32 %764 to i16
  %766 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %765, ptr %766, align 4, !tbaa !61
  %767 = getelementptr i8, ptr %0, i64 2988
  %768 = load i16, ptr %767, align 2, !tbaa !61
  %769 = zext i16 %768 to i32
  %770 = add nuw nsw i32 %764, %769
  %771 = shl nuw nsw i32 %770, 1
  %772 = trunc i32 %771 to i16
  %773 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %772, ptr %773, align 2, !tbaa !61
  %774 = getelementptr i8, ptr %0, i64 2990
  %775 = load i16, ptr %774, align 2, !tbaa !61
  %776 = trunc i32 %771 to i16
  %.tr914 = add i16 %775, %776
  %777 = shl i16 %.tr914, 1
  %778 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %777, ptr %778, align 16, !tbaa !61
  %779 = getelementptr i8, ptr %0, i64 2992
  %780 = load i16, ptr %779, align 2, !tbaa !61
  %.tr301 = add i16 %780, %777
  %781 = shl i16 %.tr301, 1
  %782 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %781, ptr %782, align 2, !tbaa !61
  %783 = getelementptr i8, ptr %0, i64 2994
  %784 = load i16, ptr %783, align 2, !tbaa !61
  %.tr = add i16 %781, %784
  %785 = shl i16 %.tr, 1
  %786 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %785, ptr %786, align 4, !tbaa !61
  %787 = getelementptr i8, ptr %0, i64 2996
  %788 = load i16, ptr %787, align 2, !tbaa !61
  %789 = add i16 %785, %788
  %790 = shl i16 %789, 1
  %791 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %790, ptr %791, align 2, !tbaa !61
  %792 = getelementptr i8, ptr %0, i64 2998
  %793 = load i16, ptr %792, align 2, !tbaa !61
  %794 = add i16 %790, %793
  %795 = shl i16 %794, 1
  %796 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %795, ptr %796, align 8, !tbaa !61
  %797 = getelementptr i8, ptr %0, i64 3000
  %798 = load i16, ptr %797, align 2, !tbaa !61
  %799 = add i16 %795, %798
  %800 = shl i16 %799, 1
  %801 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %800, ptr %801, align 2, !tbaa !61
  %802 = getelementptr i8, ptr %0, i64 3002
  %803 = load i16, ptr %802, align 2, !tbaa !61
  %804 = add i16 %800, %803
  %805 = shl i16 %804, 1
  %806 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %805, ptr %806, align 4, !tbaa !61
  %807 = getelementptr i8, ptr %0, i64 3004
  %808 = load i16, ptr %807, align 2, !tbaa !61
  %809 = add i16 %805, %808
  %810 = shl i16 %809, 1
  %811 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %810, ptr %811, align 2, !tbaa !61
  %812 = icmp slt i32 %235, 0
  br i1 %812, label %.loopexit377, label %.preheader376

813:                                              ; preds = %863
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

.preheader376:                                    ; preds = %.loopexit384, %865
  %814 = phi i64 [ %866, %865 ], [ 0, %.loopexit384 ]
  %815 = getelementptr inbounds nuw [4 x i8], ptr %158, i64 %814
  %816 = getelementptr inbounds nuw i8, ptr %815, i64 2
  %817 = load i16, ptr %816, align 2, !tbaa !28
  %818 = icmp eq i16 %817, 0
  br i1 %818, label %863, label %819

819:                                              ; preds = %.preheader376
  %820 = zext i16 %817 to i32
  %821 = zext i16 %817 to i64
  %822 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %821
  %823 = load i16, ptr %822, align 2, !tbaa !61
  %824 = add i16 %823, 1
  store i16 %824, ptr %822, align 2, !tbaa !61
  %825 = and i32 %820, 3
  %826 = icmp ult i16 %817, 4
  br i1 %826, label %.loopexit375, label %827

827:                                              ; preds = %819
  %828 = and i32 %820, 65532
  br label %829

829:                                              ; preds = %829, %827
  %830 = phi i16 [ %823, %827 ], [ %846, %829 ]
  %831 = phi i16 [ 0, %827 ], [ %845, %829 ]
  %832 = phi i32 [ 0, %827 ], [ %847, %829 ]
  %833 = and i16 %830, 1
  %834 = or disjoint i16 %831, %833
  %835 = lshr i16 %830, 2
  %836 = shl i16 %834, 2
  %837 = and i16 %830, 2
  %838 = or disjoint i16 %836, %837
  %839 = and i16 %835, 1
  %840 = or disjoint i16 %838, %839
  %841 = shl i16 %840, 1
  %842 = lshr i16 %830, 3
  %843 = and i16 %842, 1
  %844 = or disjoint i16 %841, %843
  %845 = shl i16 %844, 1
  %846 = lshr i16 %830, 4
  %847 = add nuw nsw i32 %832, 4
  %848 = icmp eq i32 %847, %828
  br i1 %848, label %.loopexit375, label %829, !llvm.loop !69

.loopexit375:                                     ; preds = %829, %819
  %849 = phi i16 [ poison, %819 ], [ %844, %829 ]
  %850 = phi i16 [ %823, %819 ], [ %846, %829 ]
  %851 = phi i16 [ 0, %819 ], [ %845, %829 ]
  %852 = icmp eq i32 %825, 0
  br i1 %852, label %.loopexit374, label %.preheader373

.preheader373:                                    ; preds = %.loopexit375, %.preheader373
  %853 = phi i16 [ %859, %.preheader373 ], [ %850, %.loopexit375 ]
  %854 = phi i16 [ %858, %.preheader373 ], [ %851, %.loopexit375 ]
  %855 = phi i32 [ %860, %.preheader373 ], [ 0, %.loopexit375 ]
  %856 = and i16 %853, 1
  %857 = or disjoint i16 %854, %856
  %858 = shl i16 %857, 1
  %859 = lshr i16 %853, 1
  %860 = add nuw nsw i32 %855, 1
  %861 = icmp eq i32 %860, %825
  br i1 %861, label %.loopexit374, label %.preheader373, !llvm.loop !70

.loopexit374:                                     ; preds = %.preheader373, %.loopexit375
  %862 = phi i16 [ %849, %.loopexit375 ], [ %857, %.preheader373 ]
  store i16 %862, ptr %815, align 2, !tbaa !28
  br label %863

863:                                              ; preds = %.loopexit374, %.preheader376
  %864 = icmp eq i64 %814, 2147483647
  br i1 %864, label %813, label %865, !prof !32, !nosanitize !30

865:                                              ; preds = %863
  %866 = add nuw nsw i64 %814, 1
  %867 = trunc i64 %866 to i32
  %868 = icmp slt i32 %235, %867
  br i1 %868, label %.loopexit377, label %.preheader376, !llvm.loop !72

.loopexit377:                                     ; preds = %865, %.loopexit384
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %869 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %870 = load ptr, ptr %869, align 8, !tbaa !41
  %871 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %872 = load ptr, ptr %871, align 8, !tbaa !42
  %873 = load ptr, ptr %872, align 8, !tbaa !43
  %874 = getelementptr inbounds nuw i8, ptr %872, i64 20
  %875 = load i32, ptr %874, align 4, !tbaa !46
  store i32 0, ptr %164, align 4, !tbaa !47
  store i32 573, ptr %165, align 8, !tbaa !48
  %876 = icmp sgt i32 %875, 0
  br i1 %876, label %877, label %882

877:                                              ; preds = %.loopexit377
  %878 = zext nneg i32 %875 to i64
  br label %888

879:                                              ; preds = %906
  %880 = load i32, ptr %164, align 4, !tbaa !47
  %881 = icmp slt i32 %880, 2
  br i1 %881, label %882, label %.loopexit371

882:                                              ; preds = %879, %.loopexit377
  %883 = phi i32 [ %907, %879 ], [ -1, %.loopexit377 ]
  %884 = phi i32 [ %880, %879 ], [ 0, %.loopexit377 ]
  %885 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %886 = icmp eq ptr %873, null
  %887 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %910

888:                                              ; preds = %906, %877
  %889 = phi i64 [ 0, %877 ], [ %908, %906 ]
  %890 = phi i32 [ -1, %877 ], [ %907, %906 ]
  %891 = getelementptr inbounds nuw [4 x i8], ptr %870, i64 %889
  %892 = load i16, ptr %891, align 2, !tbaa !28
  %893 = icmp eq i16 %892, 0
  br i1 %893, label %904, label %894

894:                                              ; preds = %888
  %895 = load i32, ptr %164, align 4, !tbaa !47
  %896 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %895, i32 1), !nosanitize !30
  %897 = extractvalue { i32, i1 } %896, 1, !nosanitize !30
  br i1 %897, label %.loopexit367, label %898, !prof !32, !nosanitize !30

.loopexit367:                                     ; preds = %894, %1107
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

898:                                              ; preds = %894
  %899 = extractvalue { i32, i1 } %896, 0, !nosanitize !30
  store i32 %899, ptr %164, align 4, !tbaa !47
  %900 = sext i32 %899 to i64
  %901 = getelementptr inbounds [4 x i8], ptr %238, i64 %900
  %902 = trunc nuw nsw i64 %889 to i32
  store i32 %902, ptr %901, align 4, !tbaa !49
  %903 = getelementptr inbounds nuw i8, ptr %239, i64 %889
  store i8 0, ptr %903, align 1, !tbaa !28
  br label %906

904:                                              ; preds = %888
  %905 = getelementptr inbounds nuw i8, ptr %891, i64 2
  store i16 0, ptr %905, align 2, !tbaa !28
  br label %906

906:                                              ; preds = %904, %898
  %907 = phi i32 [ %902, %898 ], [ %890, %904 ]
  %908 = add nuw nsw i64 %889, 1
  %909 = icmp eq i64 %908, %878
  br i1 %909, label %879, label %888, !llvm.loop !50

910:                                              ; preds = %938, %882
  %911 = phi i32 [ %884, %882 ], [ %939, %938 ]
  %912 = phi i32 [ %883, %882 ], [ %915, %938 ]
  %913 = icmp slt i32 %912, 2
  %914 = add i32 %912, 1
  %915 = select i1 %913, i32 %914, i32 %912
  %916 = add nsw i32 %911, 1
  %917 = select i1 %913, i32 %914, i32 0
  store i32 %916, ptr %164, align 4, !tbaa !47
  %918 = sext i32 %916 to i64
  %919 = getelementptr inbounds [4 x i8], ptr %238, i64 %918
  store i32 %917, ptr %919, align 4, !tbaa !49
  %920 = sext i32 %917 to i64
  %921 = getelementptr inbounds [4 x i8], ptr %870, i64 %920
  store i16 1, ptr %921, align 2, !tbaa !28
  %922 = getelementptr inbounds i8, ptr %239, i64 %920
  store i8 0, ptr %922, align 1, !tbaa !28
  %923 = load i64, ptr %885, align 8, !tbaa !51
  %924 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %923, i64 1), !nosanitize !30
  %925 = extractvalue { i64, i1 } %924, 1, !nosanitize !30
  br i1 %925, label %926, label %927, !prof !32, !nosanitize !30

926:                                              ; preds = %910
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

927:                                              ; preds = %910
  %928 = extractvalue { i64, i1 } %924, 0, !nosanitize !30
  store i64 %928, ptr %885, align 8, !tbaa !51
  br i1 %886, label %938, label %929

929:                                              ; preds = %927
  %.split284 = getelementptr inbounds [4 x i8], ptr %873, i64 %920
  %930 = getelementptr inbounds nuw i8, ptr %.split284, i64 2
  %931 = load i16, ptr %930, align 2, !tbaa !28
  %932 = zext i16 %931 to i64
  %933 = load i64, ptr %887, align 8, !tbaa !52
  %934 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %933, i64 %932), !nosanitize !30
  %935 = extractvalue { i64, i1 } %934, 1, !nosanitize !30
  br i1 %935, label %.loopexit366, label %936, !prof !32, !nosanitize !30

.loopexit366:                                     ; preds = %929, %1100, %1093, %1020, %1196
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

936:                                              ; preds = %929
  %937 = extractvalue { i64, i1 } %934, 0, !nosanitize !30
  store i64 %937, ptr %887, align 8, !tbaa !52
  br label %938

938:                                              ; preds = %936, %927
  %939 = load i32, ptr %164, align 4, !tbaa !47
  %940 = icmp slt i32 %939, 2
  br i1 %940, label %910, label %.loopexit371, !llvm.loop !53

.loopexit371:                                     ; preds = %938, %879
  %941 = phi i32 [ %907, %879 ], [ %915, %938 ]
  %942 = phi i32 [ %880, %879 ], [ %939, %938 ]
  %943 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %941, ptr %943, align 8, !tbaa !54
  %944 = lshr i32 %942, 1
  %945 = zext nneg i32 %944 to i64
  br label %949

946:                                              ; preds = %.loopexit368
  %947 = load i32, ptr %164, align 4, !tbaa !47
  %948 = sext i32 %875 to i64
  br label %1020

949:                                              ; preds = %.loopexit368, %.loopexit371
  %950 = phi i64 [ %945, %.loopexit371 ], [ %1018, %.loopexit368 ]
  %951 = getelementptr inbounds nuw [4 x i8], ptr %238, i64 %950
  %952 = load i32, ptr %951, align 4, !tbaa !49
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds i8, ptr %239, i64 %953
  %955 = load i32, ptr %164, align 4, !tbaa !47
  %956 = trunc i64 %950 to i32
  %957 = shl i32 %956, 1
  %958 = icmp sgt i32 %957, %955
  br i1 %958, label %.loopexit368, label %959

959:                                              ; preds = %949
  %960 = getelementptr inbounds [4 x i8], ptr %870, i64 %953
  br label %961

961:                                              ; preds = %1009, %959
  %962 = phi i32 [ %955, %959 ], [ %1013, %1009 ]
  %963 = phi i32 [ %957, %959 ], [ %1012, %1009 ]
  %964 = phi i32 [ %956, %959 ], [ %994, %1009 ]
  %965 = icmp slt i32 %963, %962
  br i1 %965, label %968, label %966

966:                                              ; preds = %961
  %967 = sext i32 %963 to i64
  br label %992

968:                                              ; preds = %961
  %969 = or disjoint i32 %963, 1
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds [4 x i8], ptr %238, i64 %970
  %972 = load i32, ptr %971, align 4, !tbaa !49
  %973 = sext i32 %972 to i64
  %974 = getelementptr inbounds [4 x i8], ptr %870, i64 %973
  %975 = load i16, ptr %974, align 2, !tbaa !28
  %976 = sext i32 %963 to i64
  %977 = getelementptr inbounds [4 x i8], ptr %238, i64 %976
  %978 = load i32, ptr %977, align 4, !tbaa !49
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds [4 x i8], ptr %870, i64 %979
  %981 = load i16, ptr %980, align 2, !tbaa !28
  %982 = icmp ult i16 %975, %981
  br i1 %982, label %991, label %983

983:                                              ; preds = %968
  %984 = icmp eq i16 %975, %981
  br i1 %984, label %985, label %992

985:                                              ; preds = %983
  %986 = getelementptr inbounds i8, ptr %239, i64 %973
  %987 = load i8, ptr %986, align 1, !tbaa !28
  %988 = getelementptr inbounds i8, ptr %239, i64 %979
  %989 = load i8, ptr %988, align 1, !tbaa !28
  %990 = icmp ugt i8 %987, %989
  br i1 %990, label %992, label %991

991:                                              ; preds = %985, %968
  br label %992

992:                                              ; preds = %991, %985, %983, %966
  %993 = phi i64 [ %967, %966 ], [ %970, %991 ], [ %976, %985 ], [ %976, %983 ]
  %994 = phi i32 [ %963, %966 ], [ %969, %991 ], [ %963, %985 ], [ %963, %983 ]
  %995 = load i16, ptr %960, align 2, !tbaa !28
  %996 = getelementptr inbounds [4 x i8], ptr %238, i64 %993
  %997 = load i32, ptr %996, align 4, !tbaa !49
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds [4 x i8], ptr %870, i64 %998
  %1000 = load i16, ptr %999, align 2, !tbaa !28
  %1001 = icmp ult i16 %995, %1000
  br i1 %1001, label %.loopexit368, label %1002

1002:                                             ; preds = %992
  %1003 = icmp eq i16 %995, %1000
  br i1 %1003, label %1004, label %1009

1004:                                             ; preds = %1002
  %1005 = load i8, ptr %954, align 1, !tbaa !28
  %1006 = getelementptr inbounds i8, ptr %239, i64 %998
  %1007 = load i8, ptr %1006, align 1, !tbaa !28
  %1008 = icmp ugt i8 %1005, %1007
  br i1 %1008, label %1009, label %.loopexit368

1009:                                             ; preds = %1004, %1002
  %1010 = sext i32 %964 to i64
  %1011 = getelementptr inbounds [4 x i8], ptr %238, i64 %1010
  store i32 %997, ptr %1011, align 4, !tbaa !49
  %1012 = shl i32 %994, 1
  %1013 = load i32, ptr %164, align 4, !tbaa !47
  %1014 = icmp sgt i32 %1012, %1013
  br i1 %1014, label %.loopexit368, label %961, !llvm.loop !55

.loopexit368:                                     ; preds = %1009, %1004, %992, %949
  %1015 = phi i32 [ %956, %949 ], [ %994, %1009 ], [ %964, %1004 ], [ %964, %992 ]
  %1016 = sext i32 %1015 to i64
  %1017 = getelementptr inbounds [4 x i8], ptr %238, i64 %1016
  store i32 %952, ptr %1017, align 4, !tbaa !49
  %1018 = add nsw i64 %950, -1
  %1019 = icmp sgt i64 %950, 1
  br i1 %1019, label %949, label %946, !llvm.loop !56

1020:                                             ; preds = %1191, %946
  %1021 = phi i32 [ %947, %946 ], [ %1194, %1191 ]
  %1022 = phi i64 [ %948, %946 ], [ %1132, %1191 ]
  %1023 = load i32, ptr %244, align 4, !tbaa !49
  %1024 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1021, i32 -1)
  %1025 = extractvalue { i32, i1 } %1024, 1, !nosanitize !30
  br i1 %1025, label %.loopexit366, label %1026, !prof !32, !nosanitize !30

1026:                                             ; preds = %1020
  %1027 = extractvalue { i32, i1 } %1024, 0, !nosanitize !30
  store i32 %1027, ptr %164, align 4, !tbaa !47
  %1028 = sext i32 %1021 to i64
  %1029 = getelementptr inbounds [4 x i8], ptr %238, i64 %1028
  %1030 = load i32, ptr %1029, align 4, !tbaa !49
  store i32 %1030, ptr %244, align 4, !tbaa !49
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds i8, ptr %239, i64 %1031
  %1033 = icmp slt i32 %1027, 2
  br i1 %1033, label %1093, label %1034

1034:                                             ; preds = %1026
  %1035 = getelementptr inbounds [4 x i8], ptr %870, i64 %1031
  br label %1036

1036:                                             ; preds = %1084, %1034
  %1037 = phi i32 [ %1027, %1034 ], [ %1088, %1084 ]
  %1038 = phi i32 [ 2, %1034 ], [ %1087, %1084 ]
  %1039 = phi i32 [ 1, %1034 ], [ %1069, %1084 ]
  %1040 = icmp slt i32 %1038, %1037
  br i1 %1040, label %1043, label %1041

1041:                                             ; preds = %1036
  %1042 = sext i32 %1038 to i64
  br label %1067

1043:                                             ; preds = %1036
  %1044 = or disjoint i32 %1038, 1
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds [4 x i8], ptr %238, i64 %1045
  %1047 = load i32, ptr %1046, align 4, !tbaa !49
  %1048 = sext i32 %1047 to i64
  %1049 = getelementptr inbounds [4 x i8], ptr %870, i64 %1048
  %1050 = load i16, ptr %1049, align 2, !tbaa !28
  %1051 = sext i32 %1038 to i64
  %1052 = getelementptr inbounds [4 x i8], ptr %238, i64 %1051
  %1053 = load i32, ptr %1052, align 4, !tbaa !49
  %1054 = sext i32 %1053 to i64
  %1055 = getelementptr inbounds [4 x i8], ptr %870, i64 %1054
  %1056 = load i16, ptr %1055, align 2, !tbaa !28
  %1057 = icmp ult i16 %1050, %1056
  br i1 %1057, label %1066, label %1058

1058:                                             ; preds = %1043
  %1059 = icmp eq i16 %1050, %1056
  br i1 %1059, label %1060, label %1067

1060:                                             ; preds = %1058
  %1061 = getelementptr inbounds i8, ptr %239, i64 %1048
  %1062 = load i8, ptr %1061, align 1, !tbaa !28
  %1063 = getelementptr inbounds i8, ptr %239, i64 %1054
  %1064 = load i8, ptr %1063, align 1, !tbaa !28
  %1065 = icmp ugt i8 %1062, %1064
  br i1 %1065, label %1067, label %1066

1066:                                             ; preds = %1060, %1043
  br label %1067

1067:                                             ; preds = %1066, %1060, %1058, %1041
  %1068 = phi i64 [ %1042, %1041 ], [ %1045, %1066 ], [ %1051, %1060 ], [ %1051, %1058 ]
  %1069 = phi i32 [ %1038, %1041 ], [ %1044, %1066 ], [ %1038, %1060 ], [ %1038, %1058 ]
  %1070 = load i16, ptr %1035, align 2, !tbaa !28
  %1071 = getelementptr inbounds [4 x i8], ptr %238, i64 %1068
  %1072 = load i32, ptr %1071, align 4, !tbaa !49
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds [4 x i8], ptr %870, i64 %1073
  %1075 = load i16, ptr %1074, align 2, !tbaa !28
  %1076 = icmp ult i16 %1070, %1075
  br i1 %1076, label %1090, label %1077

1077:                                             ; preds = %1067
  %1078 = icmp eq i16 %1070, %1075
  br i1 %1078, label %1079, label %1084

1079:                                             ; preds = %1077
  %1080 = load i8, ptr %1032, align 1, !tbaa !28
  %1081 = getelementptr inbounds i8, ptr %239, i64 %1073
  %1082 = load i8, ptr %1081, align 1, !tbaa !28
  %1083 = icmp ugt i8 %1080, %1082
  br i1 %1083, label %1084, label %1090

1084:                                             ; preds = %1079, %1077
  %1085 = sext i32 %1039 to i64
  %1086 = getelementptr inbounds [4 x i8], ptr %238, i64 %1085
  store i32 %1072, ptr %1086, align 4, !tbaa !49
  %1087 = shl i32 %1069, 1
  %1088 = load i32, ptr %164, align 4, !tbaa !47
  %1089 = icmp sgt i32 %1087, %1088
  br i1 %1089, label %1090, label %1036, !llvm.loop !55

1090:                                             ; preds = %1084, %1079, %1067
  %1091 = phi i32 [ %1039, %1067 ], [ %1039, %1079 ], [ %1069, %1084 ]
  %1092 = sext i32 %1091 to i64
  br label %1093

1093:                                             ; preds = %1090, %1026
  %1094 = phi i64 [ 1, %1026 ], [ %1092, %1090 ]
  %1095 = getelementptr inbounds [4 x i8], ptr %238, i64 %1094
  store i32 %1030, ptr %1095, align 4, !tbaa !49
  %1096 = load i32, ptr %244, align 4, !tbaa !49
  %1097 = load i32, ptr %165, align 8, !tbaa !48
  %1098 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1097, i32 -1)
  %1099 = extractvalue { i32, i1 } %1098, 1, !nosanitize !30
  br i1 %1099, label %.loopexit366, label %1100, !prof !32, !nosanitize !30

1100:                                             ; preds = %1093
  %1101 = extractvalue { i32, i1 } %1098, 0, !nosanitize !30
  store i32 %1101, ptr %165, align 8, !tbaa !48
  %1102 = sext i32 %1101 to i64
  %1103 = getelementptr inbounds [4 x i8], ptr %238, i64 %1102
  store i32 %1023, ptr %1103, align 4, !tbaa !49
  %1104 = load i32, ptr %165, align 8, !tbaa !48
  %1105 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1104, i32 -1)
  %1106 = extractvalue { i32, i1 } %1105, 1, !nosanitize !30
  br i1 %1106, label %.loopexit366, label %1107, !prof !32, !nosanitize !30

1107:                                             ; preds = %1100
  %1108 = extractvalue { i32, i1 } %1105, 0, !nosanitize !30
  store i32 %1108, ptr %165, align 8, !tbaa !48
  %1109 = sext i32 %1108 to i64
  %1110 = getelementptr inbounds [4 x i8], ptr %238, i64 %1109
  store i32 %1096, ptr %1110, align 4, !tbaa !49
  %1111 = sext i32 %1023 to i64
  %1112 = getelementptr inbounds [4 x i8], ptr %870, i64 %1111
  %1113 = load i16, ptr %1112, align 2, !tbaa !28
  %1114 = sext i32 %1096 to i64
  %1115 = getelementptr inbounds [4 x i8], ptr %870, i64 %1114
  %1116 = load i16, ptr %1115, align 2, !tbaa !28
  %1117 = add i16 %1116, %1113
  %1118 = getelementptr inbounds [4 x i8], ptr %870, i64 %1022
  store i16 %1117, ptr %1118, align 2, !tbaa !28
  %1119 = getelementptr inbounds i8, ptr %239, i64 %1111
  %1120 = load i8, ptr %1119, align 1, !tbaa !28
  %1121 = getelementptr inbounds i8, ptr %239, i64 %1114
  %1122 = load i8, ptr %1121, align 1, !tbaa !28
  %1123 = tail call i8 @llvm.umax.i8(i8 %1120, i8 %1122)
  %1124 = add i8 %1123, 1
  %1125 = getelementptr inbounds i8, ptr %239, i64 %1022
  store i8 %1124, ptr %1125, align 1, !tbaa !28
  %1126 = trunc nsw i64 %1022 to i32
  %1127 = trunc i64 %1022 to i16
  %1128 = getelementptr inbounds nuw i8, ptr %1115, i64 2
  store i16 %1127, ptr %1128, align 2, !tbaa !28
  %1129 = getelementptr inbounds nuw i8, ptr %1112, i64 2
  store i16 %1127, ptr %1129, align 2, !tbaa !28
  %1130 = icmp eq i64 %1022, 2147483647
  br i1 %1130, label %.loopexit367, label %1131, !prof !32, !nosanitize !30

1131:                                             ; preds = %1107
  %1132 = add nsw i64 %1022, 1
  store i32 %1126, ptr %244, align 4, !tbaa !49
  %1133 = load i32, ptr %164, align 4, !tbaa !47
  %1134 = icmp slt i32 %1133, 2
  br i1 %1134, label %1191, label %.preheader365

.preheader365:                                    ; preds = %1131, %1182
  %1135 = phi i32 [ %1186, %1182 ], [ %1133, %1131 ]
  %1136 = phi i32 [ %1185, %1182 ], [ 2, %1131 ]
  %1137 = phi i32 [ %1167, %1182 ], [ 1, %1131 ]
  %1138 = icmp slt i32 %1136, %1135
  br i1 %1138, label %1141, label %1139

1139:                                             ; preds = %.preheader365
  %1140 = sext i32 %1136 to i64
  br label %1165

1141:                                             ; preds = %.preheader365
  %1142 = or disjoint i32 %1136, 1
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds [4 x i8], ptr %238, i64 %1143
  %1145 = load i32, ptr %1144, align 4, !tbaa !49
  %1146 = sext i32 %1145 to i64
  %1147 = getelementptr inbounds [4 x i8], ptr %870, i64 %1146
  %1148 = load i16, ptr %1147, align 2, !tbaa !28
  %1149 = sext i32 %1136 to i64
  %1150 = getelementptr inbounds [4 x i8], ptr %238, i64 %1149
  %1151 = load i32, ptr %1150, align 4, !tbaa !49
  %1152 = sext i32 %1151 to i64
  %1153 = getelementptr inbounds [4 x i8], ptr %870, i64 %1152
  %1154 = load i16, ptr %1153, align 2, !tbaa !28
  %1155 = icmp ult i16 %1148, %1154
  br i1 %1155, label %1164, label %1156

1156:                                             ; preds = %1141
  %1157 = icmp eq i16 %1148, %1154
  br i1 %1157, label %1158, label %1165

1158:                                             ; preds = %1156
  %1159 = getelementptr inbounds i8, ptr %239, i64 %1146
  %1160 = load i8, ptr %1159, align 1, !tbaa !28
  %1161 = getelementptr inbounds i8, ptr %239, i64 %1152
  %1162 = load i8, ptr %1161, align 1, !tbaa !28
  %1163 = icmp ugt i8 %1160, %1162
  br i1 %1163, label %1165, label %1164

1164:                                             ; preds = %1158, %1141
  br label %1165

1165:                                             ; preds = %1164, %1158, %1156, %1139
  %1166 = phi i64 [ %1140, %1139 ], [ %1143, %1164 ], [ %1149, %1158 ], [ %1149, %1156 ]
  %1167 = phi i32 [ %1136, %1139 ], [ %1142, %1164 ], [ %1136, %1158 ], [ %1136, %1156 ]
  %1168 = load i16, ptr %1118, align 2, !tbaa !28
  %1169 = getelementptr inbounds [4 x i8], ptr %238, i64 %1166
  %1170 = load i32, ptr %1169, align 4, !tbaa !49
  %1171 = sext i32 %1170 to i64
  %1172 = getelementptr inbounds [4 x i8], ptr %870, i64 %1171
  %1173 = load i16, ptr %1172, align 2, !tbaa !28
  %1174 = icmp ult i16 %1168, %1173
  br i1 %1174, label %1188, label %1175

1175:                                             ; preds = %1165
  %1176 = icmp eq i16 %1168, %1173
  br i1 %1176, label %1177, label %1182

1177:                                             ; preds = %1175
  %1178 = load i8, ptr %1125, align 1, !tbaa !28
  %1179 = getelementptr inbounds i8, ptr %239, i64 %1171
  %1180 = load i8, ptr %1179, align 1, !tbaa !28
  %1181 = icmp ugt i8 %1178, %1180
  br i1 %1181, label %1182, label %1188

1182:                                             ; preds = %1177, %1175
  %1183 = sext i32 %1137 to i64
  %1184 = getelementptr inbounds [4 x i8], ptr %238, i64 %1183
  store i32 %1170, ptr %1184, align 4, !tbaa !49
  %1185 = shl i32 %1167, 1
  %1186 = load i32, ptr %164, align 4, !tbaa !47
  %1187 = icmp sgt i32 %1185, %1186
  br i1 %1187, label %1188, label %.preheader365, !llvm.loop !55

1188:                                             ; preds = %1182, %1177, %1165
  %1189 = phi i32 [ %1137, %1165 ], [ %1137, %1177 ], [ %1167, %1182 ]
  %1190 = sext i32 %1189 to i64
  br label %1191

1191:                                             ; preds = %1188, %1131
  %1192 = phi i64 [ 1, %1131 ], [ %1190, %1188 ]
  %1193 = getelementptr inbounds [4 x i8], ptr %238, i64 %1192
  store i32 %1126, ptr %1193, align 4, !tbaa !49
  %1194 = load i32, ptr %164, align 4, !tbaa !47
  %1195 = icmp sgt i32 %1194, 1
  br i1 %1195, label %1020, label %1196, !llvm.loop !57

1196:                                             ; preds = %1191
  %1197 = load i32, ptr %165, align 8, !tbaa !48
  %1198 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1197, i32 -1)
  %1199 = extractvalue { i32, i1 } %1198, 1, !nosanitize !30
  br i1 %1199, label %.loopexit366, label %1200, !prof !32, !nosanitize !30

1200:                                             ; preds = %1196
  %1201 = extractvalue { i32, i1 } %1198, 0, !nosanitize !30
  %1202 = load i32, ptr %244, align 4, !tbaa !49
  store i32 %1201, ptr %165, align 8, !tbaa !48
  %1203 = sext i32 %1201 to i64
  %1204 = getelementptr inbounds [4 x i8], ptr %238, i64 %1203
  store i32 %1202, ptr %1204, align 4, !tbaa !49
  %1205 = load ptr, ptr %869, align 8, !tbaa !41
  %1206 = load i32, ptr %943, align 8, !tbaa !54
  %1207 = load ptr, ptr %871, align 8, !tbaa !42
  %1208 = load ptr, ptr %1207, align 8, !tbaa !43
  %1209 = getelementptr inbounds nuw i8, ptr %1207, i64 8
  %1210 = load ptr, ptr %1209, align 8, !tbaa !58
  %1211 = getelementptr inbounds nuw i8, ptr %1207, i64 16
  %1212 = load i32, ptr %1211, align 8, !tbaa !59
  %1213 = getelementptr inbounds nuw i8, ptr %1207, i64 24
  %1214 = load i32, ptr %1213, align 8, !tbaa !60
  %.fr290 = freeze i32 %1214
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %512, i8 0, i64 32, i1 false), !tbaa !61
  %1215 = load i32, ptr %165, align 8, !tbaa !48
  %1216 = sext i32 %1215 to i64
  %1217 = getelementptr inbounds [4 x i8], ptr %238, i64 %1216
  %1218 = load i32, ptr %1217, align 4, !tbaa !49
  %1219 = sext i32 %1218 to i64
  %.split285 = getelementptr inbounds [4 x i8], ptr %1205, i64 %1219
  %1220 = getelementptr inbounds nuw i8, ptr %.split285, i64 2
  store i16 0, ptr %1220, align 2, !tbaa !28
  %1221 = load i32, ptr %165, align 8, !tbaa !48
  %1222 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1221, i32 1), !nosanitize !30
  %1223 = extractvalue { i32, i1 } %1222, 1, !nosanitize !30
  br i1 %1223, label %.loopexit362, label %1224, !prof !32, !nosanitize !30

.loopexit362:                                     ; preds = %1271, %1247, %1200
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

1224:                                             ; preds = %1200
  %1225 = extractvalue { i32, i1 } %1222, 0
  %1226 = icmp slt i32 %1225, 573
  br i1 %1226, label %1227, label %.loopexit357

1227:                                             ; preds = %1224
  %1228 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1229 = icmp eq ptr %1208, null
  %1230 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1231 = sext i32 %1225 to i64
  br label %1232

1232:                                             ; preds = %1302, %1227
  %1233 = phi i64 [ %1231, %1227 ], [ %1303, %1302 ]
  %1234 = phi i32 [ 0, %1227 ], [ %1254, %1302 ]
  %1235 = getelementptr inbounds [4 x i8], ptr %238, i64 %1233
  %1236 = load i32, ptr %1235, align 4, !tbaa !49
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr inbounds [4 x i8], ptr %1205, i64 %1237
  %1239 = getelementptr inbounds nuw i8, ptr %1238, i64 2
  %1240 = load i16, ptr %1239, align 2, !tbaa !28
  %1241 = zext i16 %1240 to i64
  %.split286 = getelementptr inbounds nuw [4 x i8], ptr %1205, i64 %1241
  %1242 = getelementptr inbounds nuw i8, ptr %.split286, i64 2
  %1243 = load i16, ptr %1242, align 2, !tbaa !28
  %1244 = zext i16 %1243 to i32
  %1245 = add nuw nsw i32 %1244, 1
  %1246 = icmp sgt i32 %.fr290, %1244
  br i1 %1246, label %1252, label %1247

1247:                                             ; preds = %1232
  %1248 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1234, i32 1), !nosanitize !30
  %1249 = extractvalue { i32, i1 } %1248, 1, !nosanitize !30
  br i1 %1249, label %.loopexit362, label %1250, !prof !32, !nosanitize !30

1250:                                             ; preds = %1247
  %1251 = extractvalue { i32, i1 } %1248, 0, !nosanitize !30
  br label %1252

1252:                                             ; preds = %1250, %1232
  %1253 = phi i32 [ %.fr290, %1250 ], [ %1245, %1232 ]
  %1254 = phi i32 [ %1251, %1250 ], [ %1234, %1232 ]
  %1255 = trunc i32 %1253 to i16
  store i16 %1255, ptr %1239, align 2, !tbaa !28
  %1256 = icmp sgt i32 %1236, %1206
  br i1 %1256, label %1302, label %1257

1257:                                             ; preds = %1252
  %1258 = sext i32 %1253 to i64
  %1259 = getelementptr inbounds [2 x i8], ptr %512, i64 %1258
  %1260 = load i16, ptr %1259, align 2, !tbaa !61
  %1261 = add i16 %1260, 1
  store i16 %1261, ptr %1259, align 2, !tbaa !61
  %1262 = icmp slt i32 %1236, %1212
  br i1 %1262, label %1271, label %1263

1263:                                             ; preds = %1257
  %1264 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1236, i32 %1212), !nosanitize !30
  %1265 = extractvalue { i32, i1 } %1264, 1, !nosanitize !30
  br i1 %1265, label %.loopexit7, label %1266, !prof !32, !nosanitize !30

.loopexit7:                                       ; preds = %1263, %1329, %1321, %.mv.ph17, %.mv.ph17.mv.fast, %1395, %1356, %1308
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

1266:                                             ; preds = %1263
  %1267 = extractvalue { i32, i1 } %1264, 0, !nosanitize !30
  %1268 = sext i32 %1267 to i64
  %1269 = getelementptr inbounds [4 x i8], ptr %1210, i64 %1268
  %1270 = load i32, ptr %1269, align 4, !tbaa !49
  br label %1271

1271:                                             ; preds = %1266, %1257
  %1272 = phi i32 [ %1270, %1266 ], [ 0, %1257 ]
  %1273 = load i16, ptr %1238, align 2, !tbaa !28
  %1274 = zext i16 %1273 to i64
  %1275 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1253, i32 %1272), !nosanitize !30
  %1276 = extractvalue { i32, i1 } %1275, 1, !nosanitize !30
  br i1 %1276, label %.loopexit362, label %1277, !prof !32, !nosanitize !30

1277:                                             ; preds = %1271
  %1278 = extractvalue { i32, i1 } %1275, 0, !nosanitize !30
  %1279 = zext i32 %1278 to i64
  %1280 = mul nuw nsw i64 %1279, %1274
  %1281 = load i64, ptr %1228, align 8, !tbaa !51
  %1282 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1281, i64 %1280), !nosanitize !30
  %1283 = extractvalue { i64, i1 } %1282, 1, !nosanitize !30
  br i1 %1283, label %1284, label %1285, !prof !32, !nosanitize !30

1284:                                             ; preds = %1287, %1277
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

1285:                                             ; preds = %1277
  %1286 = extractvalue { i64, i1 } %1282, 0, !nosanitize !30
  store i64 %1286, ptr %1228, align 8, !tbaa !51
  br i1 %1229, label %1302, label %1287

1287:                                             ; preds = %1285
  %.split287 = getelementptr inbounds [4 x i8], ptr %1208, i64 %1237
  %1288 = getelementptr inbounds nuw i8, ptr %.split287, i64 2
  %1289 = load i16, ptr %1288, align 2, !tbaa !28
  %1290 = zext i16 %1289 to i32
  %1291 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1290, i32 %1272), !nosanitize !30
  %1292 = extractvalue { i32, i1 } %1291, 1, !nosanitize !30
  br i1 %1292, label %1284, label %1293, !prof !32, !nosanitize !30

1293:                                             ; preds = %1287
  %1294 = extractvalue { i32, i1 } %1291, 0, !nosanitize !30
  %1295 = zext i32 %1294 to i64
  %1296 = mul nuw nsw i64 %1295, %1274
  %1297 = load i64, ptr %1230, align 8, !tbaa !52
  %1298 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1297, i64 %1296), !nosanitize !30
  %1299 = extractvalue { i64, i1 } %1298, 1, !nosanitize !30
  br i1 %1299, label %.loopexit360, label %1300, !prof !32, !nosanitize !30

.loopexit360:                                     ; preds = %1293, %1324
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

1300:                                             ; preds = %1293
  %1301 = extractvalue { i64, i1 } %1298, 0, !nosanitize !30
  store i64 %1301, ptr %1230, align 8, !tbaa !52
  br label %1302

1302:                                             ; preds = %1300, %1285, %1252
  %1303 = add nsw i64 %1233, 1
  %1304 = and i64 %1303, 4294967295
  %1305 = icmp eq i64 %1304, 573
  br i1 %1305, label %1306, label %1232, !llvm.loop !62

1306:                                             ; preds = %1302
  %1307 = icmp eq i32 %1254, 0
  br i1 %1307, label %.loopexit357, label %1308

1308:                                             ; preds = %1306
  %1309 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.fr290, i32 -1)
  %1310 = extractvalue { i32, i1 } %1309, 1, !nosanitize !30
  %1311 = sext i32 %.fr290 to i64
  %1312 = getelementptr inbounds [2 x i8], ptr %512, i64 %1311
  br i1 %1310, label %.loopexit7, label %.preheader359, !prof !32, !nosanitize !30

.preheader359:                                    ; preds = %1308, %1339
  %1313 = phi i32 [ %1340, %1339 ], [ %1254, %1308 ]
  br label %1314

1314:                                             ; preds = %1321, %.preheader359
  %1315 = phi { i32, i1 } [ %1322, %1321 ], [ %1309, %.preheader359 ]
  %1316 = extractvalue { i32, i1 } %1315, 0
  %1317 = sext i32 %1316 to i64
  %1318 = getelementptr inbounds [2 x i8], ptr %512, i64 %1317
  %1319 = load i16, ptr %1318, align 2, !tbaa !61
  %1320 = icmp eq i16 %1319, 0
  br i1 %1320, label %1321, label %1324

1321:                                             ; preds = %1314
  %1322 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1316, i32 -1)
  %1323 = extractvalue { i32, i1 } %1322, 1, !nosanitize !30
  br i1 %1323, label %.loopexit7, label %1314, !prof !32, !llvm.loop !63, !nosanitize !30

1324:                                             ; preds = %1314
  %1325 = getelementptr inbounds [2 x i8], ptr %512, i64 %1317
  %1326 = add i16 %1319, -1
  store i16 %1326, ptr %1325, align 2, !tbaa !61
  %1327 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1316, i32 1), !nosanitize !30
  %1328 = extractvalue { i32, i1 } %1327, 1, !nosanitize !30
  br i1 %1328, label %.loopexit360, label %1329, !prof !32, !nosanitize !30

1329:                                             ; preds = %1324
  %1330 = extractvalue { i32, i1 } %1327, 0, !nosanitize !30
  %1331 = sext i32 %1330 to i64
  %1332 = getelementptr inbounds [2 x i8], ptr %512, i64 %1331
  %1333 = load i16, ptr %1332, align 2, !tbaa !61
  %1334 = add i16 %1333, 2
  store i16 %1334, ptr %1332, align 2, !tbaa !61
  %1335 = load i16, ptr %1312, align 2, !tbaa !61
  %1336 = add i16 %1335, -1
  store i16 %1336, ptr %1312, align 2, !tbaa !61
  %1337 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1313, i32 -2)
  %1338 = extractvalue { i32, i1 } %1337, 1, !nosanitize !30
  br i1 %1338, label %.loopexit7, label %1339, !prof !32, !nosanitize !30

1339:                                             ; preds = %1329
  %1340 = extractvalue { i32, i1 } %1337, 0, !nosanitize !30
  %1341 = icmp sgt i32 %1340, 0
  br i1 %1341, label %.preheader359, label %1342, !llvm.loop !64

1342:                                             ; preds = %1339
  %1343 = icmp eq i32 %.fr290, 0
  br i1 %1343, label %.loopexit357, label %.preheader355

.preheader355:                                    ; preds = %1342, %1425
  %1344 = phi i64 [ %1426, %1425 ], [ %1311, %1342 ]
  %1345 = phi i32 [ %1388, %1425 ], [ 573, %1342 ]
  %1346 = getelementptr inbounds [2 x i8], ptr %512, i64 %1344
  %1347 = load i16, ptr %1346, align 2, !tbaa !61
  %1348 = icmp eq i16 %1347, 0
  br i1 %1348, label %.loopexit9, label %1349

1349:                                             ; preds = %.preheader355
  %1350 = zext i16 %1347 to i32
  %1351 = trunc i64 %1344 to i16
  %mv.h15 = icmp sgt i64 %1344, -1
  br i1 %mv.h15, label %.mv.ph17.mv.fast, label %.mv.ph17

.mv.ph17.mv.fast:                                 ; preds = %1349, %1385
  %1352 = phi i32 [ %1360, %1385 ], [ %1345, %1349 ]
  %1353 = phi i32 [ %1386, %1385 ], [ %1350, %1349 ]
  %1354 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1352, i32 -1)
  %1355 = extractvalue { i32, i1 } %1354, 1, !nosanitize !30
  br i1 %1355, label %.loopexit7, label %.lr.ph1186, !prof !65, !nosanitize !30

1356:                                             ; preds = %.lr.ph1186
  %1357 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1360, i32 -1)
  %1358 = extractvalue { i32, i1 } %1357, 1, !nosanitize !30
  br i1 %1358, label %.loopexit7, label %.lr.ph1186, !prof !66, !llvm.loop !67, !nosanitize !30

.lr.ph1186:                                       ; preds = %.mv.ph17.mv.fast, %1356
  %1359 = phi { i32, i1 } [ %1357, %1356 ], [ %1354, %.mv.ph17.mv.fast ]
  %1360 = extractvalue { i32, i1 } %1359, 0, !nosanitize !30
  %1361 = sext i32 %1360 to i64
  %1362 = getelementptr inbounds [4 x i8], ptr %238, i64 %1361
  %1363 = load i32, ptr %1362, align 4, !tbaa !49
  %1364 = icmp sgt i32 %1363, %1206
  br i1 %1364, label %1356, label %1365, !llvm.loop !67

1365:                                             ; preds = %.lr.ph1186
  %1366 = sext i32 %1363 to i64
  %1367 = getelementptr inbounds [4 x i8], ptr %1205, i64 %1366
  %1368 = getelementptr inbounds nuw i8, ptr %1367, i64 2
  %1369 = load i16, ptr %1368, align 2, !tbaa !28
  %1370 = zext i16 %1369 to i64
  %1371 = icmp eq i64 %1344, %1370
  br i1 %1371, label %1385, label %1372

1372:                                             ; preds = %1365
  %1373 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1344, i64 %1370), !nosanitize !30
  %1374 = extractvalue { i64, i1 } %1373, 1, !nosanitize !30
  br i1 %1374, label %.loopexit8, label %1375, !prof !32, !nosanitize !30

1375:                                             ; preds = %1372
  %1376 = extractvalue { i64, i1 } %1373, 0, !nosanitize !30
  %1377 = load i16, ptr %1367, align 2, !tbaa !28
  %1378 = zext i16 %1377 to i64
  %1379 = mul i64 %1376, %1378
  %1380 = load i64, ptr %1228, align 8, !tbaa !51
  %1381 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1380, i64 %1379), !nosanitize !30
  %1382 = extractvalue { i64, i1 } %1381, 1, !nosanitize !30
  br i1 %1382, label %.loopexit352, label %1383, !prof !32, !nosanitize !30

1383:                                             ; preds = %1375
  %1384 = extractvalue { i64, i1 } %1381, 0, !nosanitize !30
  store i64 %1384, ptr %1228, align 8, !tbaa !51
  store i16 %1351, ptr %1368, align 2, !tbaa !28
  br label %1385

1385:                                             ; preds = %1383, %1365
  %1386 = add nsw i32 %1353, -1
  %1387 = icmp eq i32 %1386, 0
  br i1 %1387, label %.loopexit9, label %.mv.ph17.mv.fast, !llvm.loop !67

.loopexit9:                                       ; preds = %1421, %1385, %.preheader355
  %1388 = phi i32 [ %1345, %.preheader355 ], [ %1360, %1385 ], [ %1399, %1421 ]
  %1389 = and i64 %1344, 4294967295
  %1390 = icmp eq i64 %1389, 2147483648
  br i1 %1390, label %.loopexit8, label %1425, !prof !32, !nosanitize !30

.mv.ph17:                                         ; preds = %1349, %1421
  %1391 = phi i32 [ %1399, %1421 ], [ %1345, %1349 ]
  %1392 = phi i32 [ %1423, %1421 ], [ %1350, %1349 ]
  %1393 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1391, i32 -1)
  %1394 = extractvalue { i32, i1 } %1393, 1, !nosanitize !30
  br i1 %1394, label %.loopexit7, label %.lr.ph1185, !prof !65, !nosanitize !30

1395:                                             ; preds = %.lr.ph1185
  %1396 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1399, i32 -1)
  %1397 = extractvalue { i32, i1 } %1396, 1, !nosanitize !30
  br i1 %1397, label %.loopexit7, label %.lr.ph1185, !prof !66, !llvm.loop !67, !nosanitize !30

.lr.ph1185:                                       ; preds = %.mv.ph17, %1395
  %1398 = phi { i32, i1 } [ %1396, %1395 ], [ %1393, %.mv.ph17 ]
  %1399 = extractvalue { i32, i1 } %1398, 0, !nosanitize !30
  %1400 = sext i32 %1399 to i64
  %1401 = getelementptr inbounds [4 x i8], ptr %238, i64 %1400
  %1402 = load i32, ptr %1401, align 4, !tbaa !49
  %1403 = icmp sgt i32 %1402, %1206
  br i1 %1403, label %1395, label %1404, !llvm.loop !67

1404:                                             ; preds = %.lr.ph1185
  %1405 = sext i32 %1402 to i64
  %1406 = getelementptr inbounds [4 x i8], ptr %1205, i64 %1405
  %1407 = getelementptr inbounds nuw i8, ptr %1406, i64 2
  %1408 = load i16, ptr %1407, align 2, !tbaa !28
  %1409 = zext i16 %1408 to i64
  %1410 = sub nuw i64 %1344, %1409
  %1411 = load i16, ptr %1406, align 2, !tbaa !28
  %1412 = zext i16 %1411 to i64
  %1413 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1410, i64 %1412), !nosanitize !30
  %1414 = extractvalue { i64, i1 } %1413, 1, !nosanitize !30
  br i1 %1414, label %1415, label %1416, !prof !32, !nosanitize !30

.loopexit8:                                       ; preds = %.loopexit9, %1372
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

1415:                                             ; preds = %1404
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !30
  unreachable, !nosanitize !30

1416:                                             ; preds = %1404
  %1417 = extractvalue { i64, i1 } %1413, 0, !nosanitize !30
  %1418 = load i64, ptr %1228, align 8, !tbaa !51
  %1419 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1418, i64 %1417), !nosanitize !30
  %1420 = extractvalue { i64, i1 } %1419, 1, !nosanitize !30
  br i1 %1420, label %.loopexit352, label %1421, !prof !32, !nosanitize !30

.loopexit352:                                     ; preds = %1416, %1375
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

1421:                                             ; preds = %1416
  %1422 = extractvalue { i64, i1 } %1419, 0, !nosanitize !30
  store i64 %1422, ptr %1228, align 8, !tbaa !51
  store i16 %1351, ptr %1407, align 2, !tbaa !28
  %1423 = add nsw i32 %1392, -1
  %1424 = icmp eq i32 %1423, 0
  br i1 %1424, label %.loopexit9, label %.mv.ph17, !llvm.loop !67

1425:                                             ; preds = %.loopexit9
  %1426 = add nsw i64 %1344, -1
  %1427 = and i64 %1426, 4294967295
  %1428 = icmp eq i64 %1427, 0
  br i1 %1428, label %.loopexit357, label %.preheader355, !llvm.loop !68

.loopexit357:                                     ; preds = %1425, %1342, %1306, %1224
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %1429 = load i16, ptr %512, align 2, !tbaa !61
  %1430 = zext i16 %1429 to i32
  %1431 = shl nuw nsw i32 %1430, 1
  %1432 = trunc i32 %1431 to i16
  %1433 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1432, ptr %1433, align 2, !tbaa !61
  %1434 = load i16, ptr %732, align 2, !tbaa !61
  %1435 = zext i16 %1434 to i32
  %1436 = add nuw nsw i32 %1431, %1435
  %1437 = shl nuw nsw i32 %1436, 1
  %1438 = trunc i32 %1437 to i16
  %1439 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1438, ptr %1439, align 4, !tbaa !61
  %1440 = load i16, ptr %739, align 2, !tbaa !61
  %1441 = zext i16 %1440 to i32
  %1442 = add nuw nsw i32 %1437, %1441
  %1443 = shl nuw nsw i32 %1442, 1
  %1444 = trunc i32 %1443 to i16
  %1445 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1444, ptr %1445, align 2, !tbaa !61
  %1446 = load i16, ptr %746, align 2, !tbaa !61
  %1447 = zext i16 %1446 to i32
  %1448 = add nuw nsw i32 %1443, %1447
  %1449 = shl nuw nsw i32 %1448, 1
  %1450 = trunc i32 %1449 to i16
  %1451 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1450, ptr %1451, align 8, !tbaa !61
  %1452 = load i16, ptr %753, align 2, !tbaa !61
  %1453 = zext i16 %1452 to i32
  %1454 = add nuw nsw i32 %1449, %1453
  %1455 = shl nuw nsw i32 %1454, 1
  %1456 = trunc i32 %1455 to i16
  %1457 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1456, ptr %1457, align 2, !tbaa !61
  %1458 = load i16, ptr %760, align 2, !tbaa !61
  %1459 = zext i16 %1458 to i32
  %1460 = add nuw nsw i32 %1455, %1459
  %1461 = shl nuw nsw i32 %1460, 1
  %1462 = trunc i32 %1461 to i16
  %1463 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1462, ptr %1463, align 4, !tbaa !61
  %1464 = load i16, ptr %767, align 2, !tbaa !61
  %1465 = zext i16 %1464 to i32
  %1466 = add nuw nsw i32 %1461, %1465
  %1467 = shl nuw nsw i32 %1466, 1
  %1468 = trunc i32 %1467 to i16
  %1469 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1468, ptr %1469, align 2, !tbaa !61
  %1470 = load i16, ptr %774, align 2, !tbaa !61
  %1471 = trunc i32 %1467 to i16
  %.tr915 = add i16 %1470, %1471
  %1472 = shl i16 %.tr915, 1
  %1473 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1472, ptr %1473, align 16, !tbaa !61
  %1474 = load i16, ptr %779, align 2, !tbaa !61
  %.tr302 = add i16 %1474, %1472
  %1475 = shl i16 %.tr302, 1
  %1476 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1475, ptr %1476, align 2, !tbaa !61
  %1477 = load i16, ptr %783, align 2, !tbaa !61
  %.tr291 = add i16 %1475, %1477
  %1478 = shl i16 %.tr291, 1
  %1479 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1478, ptr %1479, align 4, !tbaa !61
  %1480 = load i16, ptr %787, align 2, !tbaa !61
  %1481 = add i16 %1478, %1480
  %1482 = shl i16 %1481, 1
  %1483 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1482, ptr %1483, align 2, !tbaa !61
  %1484 = load i16, ptr %792, align 2, !tbaa !61
  %1485 = add i16 %1482, %1484
  %1486 = shl i16 %1485, 1
  %1487 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1486, ptr %1487, align 8, !tbaa !61
  %1488 = load i16, ptr %797, align 2, !tbaa !61
  %1489 = add i16 %1486, %1488
  %1490 = shl i16 %1489, 1
  %1491 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1490, ptr %1491, align 2, !tbaa !61
  %1492 = load i16, ptr %802, align 2, !tbaa !61
  %1493 = add i16 %1490, %1492
  %1494 = shl i16 %1493, 1
  %1495 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1494, ptr %1495, align 4, !tbaa !61
  %1496 = load i16, ptr %807, align 2, !tbaa !61
  %1497 = add i16 %1494, %1496
  %1498 = shl i16 %1497, 1
  %1499 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1498, ptr %1499, align 2, !tbaa !61
  %1500 = icmp slt i32 %941, 0
  br i1 %1500, label %.loopexit350, label %.preheader349

1501:                                             ; preds = %1551
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

.preheader349:                                    ; preds = %.loopexit357, %1553
  %1502 = phi i64 [ %1554, %1553 ], [ 0, %.loopexit357 ]
  %1503 = getelementptr inbounds nuw [4 x i8], ptr %870, i64 %1502
  %1504 = getelementptr inbounds nuw i8, ptr %1503, i64 2
  %1505 = load i16, ptr %1504, align 2, !tbaa !28
  %1506 = icmp eq i16 %1505, 0
  br i1 %1506, label %1551, label %1507

1507:                                             ; preds = %.preheader349
  %1508 = zext i16 %1505 to i32
  %1509 = zext i16 %1505 to i64
  %1510 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %1509
  %1511 = load i16, ptr %1510, align 2, !tbaa !61
  %1512 = add i16 %1511, 1
  store i16 %1512, ptr %1510, align 2, !tbaa !61
  %1513 = and i32 %1508, 3
  %1514 = icmp ult i16 %1505, 4
  br i1 %1514, label %.loopexit348, label %1515

1515:                                             ; preds = %1507
  %1516 = and i32 %1508, 65532
  br label %1517

1517:                                             ; preds = %1517, %1515
  %1518 = phi i16 [ %1511, %1515 ], [ %1534, %1517 ]
  %1519 = phi i16 [ 0, %1515 ], [ %1533, %1517 ]
  %1520 = phi i32 [ 0, %1515 ], [ %1535, %1517 ]
  %1521 = and i16 %1518, 1
  %1522 = or disjoint i16 %1519, %1521
  %1523 = lshr i16 %1518, 2
  %1524 = shl i16 %1522, 2
  %1525 = and i16 %1518, 2
  %1526 = or disjoint i16 %1524, %1525
  %1527 = and i16 %1523, 1
  %1528 = or disjoint i16 %1526, %1527
  %1529 = shl i16 %1528, 1
  %1530 = lshr i16 %1518, 3
  %1531 = and i16 %1530, 1
  %1532 = or disjoint i16 %1529, %1531
  %1533 = shl i16 %1532, 1
  %1534 = lshr i16 %1518, 4
  %1535 = add nuw nsw i32 %1520, 4
  %1536 = icmp eq i32 %1535, %1516
  br i1 %1536, label %.loopexit348, label %1517, !llvm.loop !69

.loopexit348:                                     ; preds = %1517, %1507
  %1537 = phi i16 [ poison, %1507 ], [ %1532, %1517 ]
  %1538 = phi i16 [ %1511, %1507 ], [ %1534, %1517 ]
  %1539 = phi i16 [ 0, %1507 ], [ %1533, %1517 ]
  %1540 = icmp eq i32 %1513, 0
  br i1 %1540, label %.loopexit347, label %.preheader346

.preheader346:                                    ; preds = %.loopexit348, %.preheader346
  %1541 = phi i16 [ %1547, %.preheader346 ], [ %1538, %.loopexit348 ]
  %1542 = phi i16 [ %1546, %.preheader346 ], [ %1539, %.loopexit348 ]
  %1543 = phi i32 [ %1548, %.preheader346 ], [ 0, %.loopexit348 ]
  %1544 = and i16 %1541, 1
  %1545 = or disjoint i16 %1542, %1544
  %1546 = shl i16 %1545, 1
  %1547 = lshr i16 %1541, 1
  %1548 = add nuw nsw i32 %1543, 1
  %1549 = icmp eq i32 %1548, %1513
  br i1 %1549, label %.loopexit347, label %.preheader346, !llvm.loop !73

.loopexit347:                                     ; preds = %.preheader346, %.loopexit348
  %1550 = phi i16 [ %1537, %.loopexit348 ], [ %1545, %.preheader346 ]
  store i16 %1550, ptr %1503, align 2, !tbaa !28
  br label %1551

1551:                                             ; preds = %.loopexit347, %.preheader349
  %1552 = icmp eq i64 %1502, 2147483647
  br i1 %1552, label %1501, label %1553, !prof !32, !nosanitize !30

1553:                                             ; preds = %1551
  %1554 = add nuw nsw i64 %1502, 1
  %1555 = trunc i64 %1554 to i32
  %1556 = icmp slt i32 %941, %1555
  br i1 %1556, label %.loopexit350, label %.preheader349, !llvm.loop !72

.loopexit350:                                     ; preds = %1553, %.loopexit357
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %1557 = load i32, ptr %237, align 8, !tbaa !74
  %1558 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1557, i32 1), !nosanitize !30
  %1559 = extractvalue { i32, i1 } %1558, 1, !nosanitize !30
  br i1 %1559, label %1560, label %1561, !prof !32, !nosanitize !30

1560:                                             ; preds = %.loopexit350
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

1561:                                             ; preds = %.loopexit350
  %1562 = getelementptr i8, ptr %0, i64 214
  %1563 = load i16, ptr %1562, align 2, !tbaa !28
  %1564 = extractvalue { i32, i1 } %1558, 0, !nosanitize !30
  %1565 = sext i32 %1564 to i64
  %1566 = shl nsw i64 %1565, 2
  %1567 = getelementptr i8, ptr %0, i64 %1566
  %1568 = getelementptr i8, ptr %1567, i64 214
  store i16 -1, ptr %1568, align 2, !tbaa !28
  %1569 = icmp slt i32 %1557, 0
  br i1 %1569, label %.loopexit345, label %1570

1570:                                             ; preds = %1561
  %1571 = zext i16 %1563 to i32
  %1572 = icmp eq i16 %1563, 0
  %1573 = select i1 %1572, i32 138, i32 7
  %1574 = select i1 %1572, i32 3, i32 4
  %1575 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1576 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1577 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1578 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1579 = add nuw nsw i32 %1557, 1
  %wide.trip.count = zext nneg i32 %1579 to i64
  br label %1580

1580:                                             ; preds = %1627, %1570
  %indvars.iv = phi i64 [ %indvars.iv.next, %1627 ], [ 0, %1570 ]
  %1581 = phi i32 [ %1631, %1627 ], [ %1574, %1570 ]
  %1582 = phi i32 [ %1630, %1627 ], [ %1573, %1570 ]
  %1583 = phi i32 [ %1629, %1627 ], [ 0, %1570 ]
  %1584 = phi i32 [ %1589, %1627 ], [ %1571, %1570 ]
  %1585 = phi i32 [ %1628, %1627 ], [ -1, %1570 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1586 = shl nsw i64 %indvars.iv.next, 2
  %1587 = getelementptr i8, ptr %1562, i64 %1586
  %1588 = load i16, ptr %1587, align 2, !tbaa !28
  %1589 = zext i16 %1588 to i32
  %1590 = add nsw i32 %1583, 1
  %1591 = icmp slt i32 %1590, %1582
  %1592 = icmp eq i32 %1584, %1589
  %1593 = select i1 %1591, i1 %1592, i1 false
  br i1 %1593, label %1627, label %1594

1594:                                             ; preds = %1580
  %1595 = icmp slt i32 %1590, %1581
  br i1 %1595, label %1596, label %1602

1596:                                             ; preds = %1594
  %1597 = zext nneg i32 %1584 to i64
  %1598 = getelementptr inbounds nuw [4 x i8], ptr %1575, i64 %1597
  %1599 = load i16, ptr %1598, align 4, !tbaa !28
  %1600 = trunc i32 %1590 to i16
  %1601 = add i16 %1599, %1600
  store i16 %1601, ptr %1598, align 4, !tbaa !28
  br label %1622

1602:                                             ; preds = %1594
  %1603 = icmp eq i32 %1584, 0
  br i1 %1603, label %1614, label %1604

1604:                                             ; preds = %1602
  %1605 = icmp eq i32 %1584, %1585
  br i1 %1605, label %1611, label %1606

1606:                                             ; preds = %1604
  %1607 = zext nneg i32 %1584 to i64
  %1608 = getelementptr inbounds nuw [4 x i8], ptr %1575, i64 %1607
  %1609 = load i16, ptr %1608, align 4, !tbaa !28
  %1610 = add i16 %1609, 1
  store i16 %1610, ptr %1608, align 4, !tbaa !28
  br label %1611

1611:                                             ; preds = %1606, %1604
  %1612 = load i16, ptr %1576, align 4, !tbaa !28
  %1613 = add i16 %1612, 1
  store i16 %1613, ptr %1576, align 4, !tbaa !28
  br label %1622

1614:                                             ; preds = %1602
  %1615 = icmp slt i32 %1583, 10
  br i1 %1615, label %1616, label %1619

1616:                                             ; preds = %1614
  %1617 = load i16, ptr %1578, align 4, !tbaa !28
  %1618 = add i16 %1617, 1
  store i16 %1618, ptr %1578, align 4, !tbaa !28
  br label %1622

1619:                                             ; preds = %1614
  %1620 = load i16, ptr %1577, align 4, !tbaa !28
  %1621 = add i16 %1620, 1
  store i16 %1621, ptr %1577, align 4, !tbaa !28
  br label %1622

1622:                                             ; preds = %1619, %1616, %1611, %1596
  %1623 = icmp eq i16 %1588, 0
  br i1 %1623, label %1627, label %1624

1624:                                             ; preds = %1622
  %1625 = select i1 %1592, i32 6, i32 7
  %1626 = select i1 %1592, i32 3, i32 4
  br label %1627

1627:                                             ; preds = %1624, %1622, %1580
  %1628 = phi i32 [ %1585, %1580 ], [ %1584, %1622 ], [ %1584, %1624 ]
  %1629 = phi i32 [ %1590, %1580 ], [ 0, %1622 ], [ 0, %1624 ]
  %1630 = phi i32 [ %1582, %1580 ], [ 138, %1622 ], [ %1625, %1624 ]
  %1631 = phi i32 [ %1581, %1580 ], [ 3, %1622 ], [ %1626, %1624 ]
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.loopexit345, label %1580, !llvm.loop !75

.loopexit345:                                     ; preds = %1627, %1561
  %1632 = load i32, ptr %943, align 8, !tbaa !76
  %1633 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1632, i32 1), !nosanitize !30
  %1634 = extractvalue { i32, i1 } %1633, 1, !nosanitize !30
  br i1 %1634, label %1635, label %1636, !prof !32, !nosanitize !30

1635:                                             ; preds = %.loopexit345
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

1636:                                             ; preds = %.loopexit345
  %1637 = getelementptr i8, ptr %0, i64 2506
  %1638 = load i16, ptr %1637, align 2, !tbaa !28
  %1639 = extractvalue { i32, i1 } %1633, 0, !nosanitize !30
  %1640 = sext i32 %1639 to i64
  %1641 = shl nsw i64 %1640, 2
  %1642 = getelementptr i8, ptr %0, i64 %1641
  %1643 = getelementptr i8, ptr %1642, i64 2506
  store i16 -1, ptr %1643, align 2, !tbaa !28
  %1644 = icmp slt i32 %1632, 0
  br i1 %1644, label %.loopexit344, label %1645

1645:                                             ; preds = %1636
  %1646 = zext i16 %1638 to i32
  %1647 = icmp eq i16 %1638, 0
  %1648 = select i1 %1647, i32 138, i32 7
  %1649 = select i1 %1647, i32 3, i32 4
  %1650 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1651 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1652 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1653 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1654 = add nuw nsw i32 %1632, 1
  %wide.trip.count637 = zext nneg i32 %1654 to i64
  br label %1655

1655:                                             ; preds = %1702, %1645
  %indvars.iv633 = phi i64 [ %indvars.iv.next634, %1702 ], [ 0, %1645 ]
  %1656 = phi i32 [ %1706, %1702 ], [ %1649, %1645 ]
  %1657 = phi i32 [ %1705, %1702 ], [ %1648, %1645 ]
  %1658 = phi i32 [ %1704, %1702 ], [ 0, %1645 ]
  %1659 = phi i32 [ %1664, %1702 ], [ %1646, %1645 ]
  %1660 = phi i32 [ %1703, %1702 ], [ -1, %1645 ]
  %indvars.iv.next634 = add nuw nsw i64 %indvars.iv633, 1
  %1661 = shl nsw i64 %indvars.iv.next634, 2
  %1662 = getelementptr i8, ptr %1637, i64 %1661
  %1663 = load i16, ptr %1662, align 2, !tbaa !28
  %1664 = zext i16 %1663 to i32
  %1665 = add nsw i32 %1658, 1
  %1666 = icmp slt i32 %1665, %1657
  %1667 = icmp eq i32 %1659, %1664
  %1668 = select i1 %1666, i1 %1667, i1 false
  br i1 %1668, label %1702, label %1669

1669:                                             ; preds = %1655
  %1670 = icmp slt i32 %1665, %1656
  br i1 %1670, label %1671, label %1677

1671:                                             ; preds = %1669
  %1672 = zext nneg i32 %1659 to i64
  %1673 = getelementptr inbounds nuw [4 x i8], ptr %1650, i64 %1672
  %1674 = load i16, ptr %1673, align 4, !tbaa !28
  %1675 = trunc i32 %1665 to i16
  %1676 = add i16 %1674, %1675
  store i16 %1676, ptr %1673, align 4, !tbaa !28
  br label %1697

1677:                                             ; preds = %1669
  %1678 = icmp eq i32 %1659, 0
  br i1 %1678, label %1689, label %1679

1679:                                             ; preds = %1677
  %1680 = icmp eq i32 %1659, %1660
  br i1 %1680, label %1686, label %1681

1681:                                             ; preds = %1679
  %1682 = zext nneg i32 %1659 to i64
  %1683 = getelementptr inbounds nuw [4 x i8], ptr %1650, i64 %1682
  %1684 = load i16, ptr %1683, align 4, !tbaa !28
  %1685 = add i16 %1684, 1
  store i16 %1685, ptr %1683, align 4, !tbaa !28
  br label %1686

1686:                                             ; preds = %1681, %1679
  %1687 = load i16, ptr %1651, align 4, !tbaa !28
  %1688 = add i16 %1687, 1
  store i16 %1688, ptr %1651, align 4, !tbaa !28
  br label %1697

1689:                                             ; preds = %1677
  %1690 = icmp slt i32 %1658, 10
  br i1 %1690, label %1691, label %1694

1691:                                             ; preds = %1689
  %1692 = load i16, ptr %1653, align 4, !tbaa !28
  %1693 = add i16 %1692, 1
  store i16 %1693, ptr %1653, align 4, !tbaa !28
  br label %1697

1694:                                             ; preds = %1689
  %1695 = load i16, ptr %1652, align 4, !tbaa !28
  %1696 = add i16 %1695, 1
  store i16 %1696, ptr %1652, align 4, !tbaa !28
  br label %1697

1697:                                             ; preds = %1694, %1691, %1686, %1671
  %1698 = icmp eq i16 %1663, 0
  br i1 %1698, label %1702, label %1699

1699:                                             ; preds = %1697
  %1700 = select i1 %1667, i32 6, i32 7
  %1701 = select i1 %1667, i32 3, i32 4
  br label %1702

1702:                                             ; preds = %1699, %1697, %1655
  %1703 = phi i32 [ %1660, %1655 ], [ %1659, %1697 ], [ %1659, %1699 ]
  %1704 = phi i32 [ %1665, %1655 ], [ 0, %1697 ], [ 0, %1699 ]
  %1705 = phi i32 [ %1657, %1655 ], [ 138, %1697 ], [ %1700, %1699 ]
  %1706 = phi i32 [ %1656, %1655 ], [ 3, %1697 ], [ %1701, %1699 ]
  %exitcond638 = icmp eq i64 %indvars.iv.next634, %wide.trip.count637
  br i1 %exitcond638, label %.loopexit344, label %1655, !llvm.loop !75

.loopexit344:                                     ; preds = %1702, %1636
  %1707 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %1708 = load ptr, ptr %1707, align 8, !tbaa !41
  %1709 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %1710 = load ptr, ptr %1709, align 8, !tbaa !42
  %1711 = load ptr, ptr %1710, align 8, !tbaa !43
  %1712 = getelementptr inbounds nuw i8, ptr %1710, i64 20
  %1713 = load i32, ptr %1712, align 4, !tbaa !46
  store i32 0, ptr %164, align 4, !tbaa !47
  store i32 573, ptr %165, align 8, !tbaa !48
  %1714 = icmp sgt i32 %1713, 0
  br i1 %1714, label %1715, label %1720

1715:                                             ; preds = %.loopexit344
  %1716 = zext nneg i32 %1713 to i64
  br label %1726

1717:                                             ; preds = %1744
  %1718 = load i32, ptr %164, align 4, !tbaa !47
  %1719 = icmp slt i32 %1718, 2
  br i1 %1719, label %1720, label %.loopexit342

1720:                                             ; preds = %1717, %.loopexit344
  %1721 = phi i32 [ %1745, %1717 ], [ -1, %.loopexit344 ]
  %1722 = phi i32 [ %1718, %1717 ], [ 0, %.loopexit344 ]
  %1723 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1724 = icmp eq ptr %1711, null
  %1725 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1748

1726:                                             ; preds = %1744, %1715
  %1727 = phi i64 [ 0, %1715 ], [ %1746, %1744 ]
  %1728 = phi i32 [ -1, %1715 ], [ %1745, %1744 ]
  %1729 = getelementptr inbounds nuw [4 x i8], ptr %1708, i64 %1727
  %1730 = load i16, ptr %1729, align 2, !tbaa !28
  %1731 = icmp eq i16 %1730, 0
  br i1 %1731, label %1742, label %1732

1732:                                             ; preds = %1726
  %1733 = load i32, ptr %164, align 4, !tbaa !47
  %1734 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1733, i32 1), !nosanitize !30
  %1735 = extractvalue { i32, i1 } %1734, 1, !nosanitize !30
  br i1 %1735, label %.loopexit30, label %1736, !prof !32, !nosanitize !30

.loopexit30:                                      ; preds = %1732, %2116, %1870
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

1736:                                             ; preds = %1732
  %1737 = extractvalue { i32, i1 } %1734, 0, !nosanitize !30
  store i32 %1737, ptr %164, align 4, !tbaa !47
  %1738 = sext i32 %1737 to i64
  %1739 = getelementptr inbounds [4 x i8], ptr %238, i64 %1738
  %1740 = trunc nuw nsw i64 %1727 to i32
  store i32 %1740, ptr %1739, align 4, !tbaa !49
  %1741 = getelementptr inbounds nuw i8, ptr %239, i64 %1727
  store i8 0, ptr %1741, align 1, !tbaa !28
  br label %1744

1742:                                             ; preds = %1726
  %1743 = getelementptr inbounds nuw i8, ptr %1729, i64 2
  store i16 0, ptr %1743, align 2, !tbaa !28
  br label %1744

1744:                                             ; preds = %1742, %1736
  %1745 = phi i32 [ %1740, %1736 ], [ %1728, %1742 ]
  %1746 = add nuw nsw i64 %1727, 1
  %1747 = icmp eq i64 %1746, %1716
  br i1 %1747, label %1717, label %1726, !llvm.loop !50

1748:                                             ; preds = %1776, %1720
  %1749 = phi i32 [ %1722, %1720 ], [ %1777, %1776 ]
  %1750 = phi i32 [ %1721, %1720 ], [ %1753, %1776 ]
  %1751 = icmp slt i32 %1750, 2
  %1752 = add i32 %1750, 1
  %1753 = select i1 %1751, i32 %1752, i32 %1750
  %1754 = add nsw i32 %1749, 1
  %1755 = select i1 %1751, i32 %1752, i32 0
  store i32 %1754, ptr %164, align 4, !tbaa !47
  %1756 = sext i32 %1754 to i64
  %1757 = getelementptr inbounds [4 x i8], ptr %238, i64 %1756
  store i32 %1755, ptr %1757, align 4, !tbaa !49
  %1758 = sext i32 %1755 to i64
  %1759 = getelementptr inbounds [4 x i8], ptr %1708, i64 %1758
  store i16 1, ptr %1759, align 2, !tbaa !28
  %1760 = getelementptr inbounds i8, ptr %239, i64 %1758
  store i8 0, ptr %1760, align 1, !tbaa !28
  %1761 = load i64, ptr %1723, align 8, !tbaa !51
  %1762 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1761, i64 1), !nosanitize !30
  %1763 = extractvalue { i64, i1 } %1762, 1, !nosanitize !30
  br i1 %1763, label %1764, label %1765, !prof !32, !nosanitize !30

1764:                                             ; preds = %1748
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

1765:                                             ; preds = %1748
  %1766 = extractvalue { i64, i1 } %1762, 0, !nosanitize !30
  store i64 %1766, ptr %1723, align 8, !tbaa !51
  br i1 %1724, label %1776, label %1767

1767:                                             ; preds = %1765
  %.split292 = getelementptr inbounds [4 x i8], ptr %1711, i64 %1758
  %1768 = getelementptr inbounds nuw i8, ptr %.split292, i64 2
  %1769 = load i16, ptr %1768, align 2, !tbaa !28
  %1770 = zext i16 %1769 to i64
  %1771 = load i64, ptr %1725, align 8, !tbaa !52
  %1772 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1771, i64 %1770), !nosanitize !30
  %1773 = extractvalue { i64, i1 } %1772, 1, !nosanitize !30
  br i1 %1773, label %.loopexit29, label %1774, !prof !32, !nosanitize !30

.loopexit29:                                      ; preds = %1767, %.mv.ph33, %2102, %2109, %1856, %1863, %.loopexit336
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

1774:                                             ; preds = %1767
  %1775 = extractvalue { i64, i1 } %1772, 0, !nosanitize !30
  store i64 %1775, ptr %1725, align 8, !tbaa !52
  br label %1776

1776:                                             ; preds = %1774, %1765
  %1777 = load i32, ptr %164, align 4, !tbaa !47
  %1778 = icmp slt i32 %1777, 2
  br i1 %1778, label %1748, label %.loopexit342, !llvm.loop !53

.loopexit342:                                     ; preds = %1776, %1717
  %1779 = phi i32 [ %1745, %1717 ], [ %1753, %1776 ]
  %1780 = phi i32 [ %1718, %1717 ], [ %1777, %1776 ]
  %1781 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %1779, ptr %1781, align 8, !tbaa !54
  %1782 = lshr i32 %1780, 1
  %1783 = zext nneg i32 %1782 to i64
  br label %1959

1784:                                             ; preds = %.loopexit340
  %1785 = load i32, ptr %164, align 4, !tbaa !47
  %.fr293 = freeze i32 %1785
  %1786 = sext i32 %1713 to i64
  %mv.h31 = icmp sgt i32 %.fr293, -1
  br i1 %mv.h31, label %.mv.ph33.mv.fast, label %.mv.ph33

.mv.ph33.mv.fast:                                 ; preds = %1784, %1954
  %1787 = phi i32 [ %1957, %1954 ], [ %.fr293, %1784 ]
  %1788 = phi i64 [ %1895, %1954 ], [ %1786, %1784 ]
  %1789 = load i32, ptr %244, align 4, !tbaa !49
  %1790 = add nsw i32 %1787, -1
  store i32 %1790, ptr %164, align 4, !tbaa !47
  %1791 = zext nneg i32 %1787 to i64
  %1792 = getelementptr inbounds nuw [4 x i8], ptr %238, i64 %1791
  %1793 = load i32, ptr %1792, align 4, !tbaa !49
  store i32 %1793, ptr %244, align 4, !tbaa !49
  %1794 = sext i32 %1793 to i64
  %1795 = getelementptr inbounds i8, ptr %239, i64 %1794
  %1796 = icmp samesign ult i32 %1787, 3
  br i1 %1796, label %1856, label %1797

1797:                                             ; preds = %.mv.ph33.mv.fast
  %1798 = getelementptr inbounds [4 x i8], ptr %1708, i64 %1794
  br label %1799

1799:                                             ; preds = %1847, %1797
  %1800 = phi i32 [ %1790, %1797 ], [ %1851, %1847 ]
  %1801 = phi i32 [ 2, %1797 ], [ %1850, %1847 ]
  %1802 = phi i32 [ 1, %1797 ], [ %1832, %1847 ]
  %1803 = icmp slt i32 %1801, %1800
  br i1 %1803, label %1806, label %1804

1804:                                             ; preds = %1799
  %1805 = sext i32 %1801 to i64
  br label %1830

1806:                                             ; preds = %1799
  %1807 = or disjoint i32 %1801, 1
  %1808 = sext i32 %1807 to i64
  %1809 = getelementptr inbounds [4 x i8], ptr %238, i64 %1808
  %1810 = load i32, ptr %1809, align 4, !tbaa !49
  %1811 = sext i32 %1810 to i64
  %1812 = getelementptr inbounds [4 x i8], ptr %1708, i64 %1811
  %1813 = load i16, ptr %1812, align 2, !tbaa !28
  %1814 = sext i32 %1801 to i64
  %1815 = getelementptr inbounds [4 x i8], ptr %238, i64 %1814
  %1816 = load i32, ptr %1815, align 4, !tbaa !49
  %1817 = sext i32 %1816 to i64
  %1818 = getelementptr inbounds [4 x i8], ptr %1708, i64 %1817
  %1819 = load i16, ptr %1818, align 2, !tbaa !28
  %1820 = icmp ult i16 %1813, %1819
  br i1 %1820, label %1829, label %1821

1821:                                             ; preds = %1806
  %1822 = icmp eq i16 %1813, %1819
  br i1 %1822, label %1823, label %1830

1823:                                             ; preds = %1821
  %1824 = getelementptr inbounds i8, ptr %239, i64 %1811
  %1825 = load i8, ptr %1824, align 1, !tbaa !28
  %1826 = getelementptr inbounds i8, ptr %239, i64 %1817
  %1827 = load i8, ptr %1826, align 1, !tbaa !28
  %1828 = icmp ugt i8 %1825, %1827
  br i1 %1828, label %1830, label %1829

1829:                                             ; preds = %1823, %1806
  br label %1830

1830:                                             ; preds = %1829, %1823, %1821, %1804
  %1831 = phi i64 [ %1805, %1804 ], [ %1808, %1829 ], [ %1814, %1823 ], [ %1814, %1821 ]
  %1832 = phi i32 [ %1801, %1804 ], [ %1807, %1829 ], [ %1801, %1823 ], [ %1801, %1821 ]
  %1833 = load i16, ptr %1798, align 2, !tbaa !28
  %1834 = getelementptr inbounds [4 x i8], ptr %238, i64 %1831
  %1835 = load i32, ptr %1834, align 4, !tbaa !49
  %1836 = sext i32 %1835 to i64
  %1837 = getelementptr inbounds [4 x i8], ptr %1708, i64 %1836
  %1838 = load i16, ptr %1837, align 2, !tbaa !28
  %1839 = icmp ult i16 %1833, %1838
  br i1 %1839, label %1853, label %1840

1840:                                             ; preds = %1830
  %1841 = icmp eq i16 %1833, %1838
  br i1 %1841, label %1842, label %1847

1842:                                             ; preds = %1840
  %1843 = load i8, ptr %1795, align 1, !tbaa !28
  %1844 = getelementptr inbounds i8, ptr %239, i64 %1836
  %1845 = load i8, ptr %1844, align 1, !tbaa !28
  %1846 = icmp ugt i8 %1843, %1845
  br i1 %1846, label %1847, label %1853

1847:                                             ; preds = %1842, %1840
  %1848 = sext i32 %1802 to i64
  %1849 = getelementptr inbounds [4 x i8], ptr %238, i64 %1848
  store i32 %1835, ptr %1849, align 4, !tbaa !49
  %1850 = shl i32 %1832, 1
  %1851 = load i32, ptr %164, align 4, !tbaa !47
  %1852 = icmp sgt i32 %1850, %1851
  br i1 %1852, label %1853, label %1799, !llvm.loop !55

1853:                                             ; preds = %1847, %1842, %1830
  %1854 = phi i32 [ %1802, %1830 ], [ %1802, %1842 ], [ %1832, %1847 ]
  %1855 = sext i32 %1854 to i64
  br label %1856

1856:                                             ; preds = %1853, %.mv.ph33.mv.fast
  %1857 = phi i64 [ 1, %.mv.ph33.mv.fast ], [ %1855, %1853 ]
  %1858 = getelementptr inbounds [4 x i8], ptr %238, i64 %1857
  store i32 %1793, ptr %1858, align 4, !tbaa !49
  %1859 = load i32, ptr %244, align 4, !tbaa !49
  %1860 = load i32, ptr %165, align 8, !tbaa !48
  %1861 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1860, i32 -1)
  %1862 = extractvalue { i32, i1 } %1861, 1, !nosanitize !30
  br i1 %1862, label %.loopexit29, label %1863, !prof !32, !nosanitize !30

1863:                                             ; preds = %1856
  %1864 = extractvalue { i32, i1 } %1861, 0, !nosanitize !30
  store i32 %1864, ptr %165, align 8, !tbaa !48
  %1865 = sext i32 %1864 to i64
  %1866 = getelementptr inbounds [4 x i8], ptr %238, i64 %1865
  store i32 %1789, ptr %1866, align 4, !tbaa !49
  %1867 = load i32, ptr %165, align 8, !tbaa !48
  %1868 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1867, i32 -1)
  %1869 = extractvalue { i32, i1 } %1868, 1, !nosanitize !30
  br i1 %1869, label %.loopexit29, label %1870, !prof !32, !nosanitize !30

1870:                                             ; preds = %1863
  %1871 = extractvalue { i32, i1 } %1868, 0, !nosanitize !30
  store i32 %1871, ptr %165, align 8, !tbaa !48
  %1872 = sext i32 %1871 to i64
  %1873 = getelementptr inbounds [4 x i8], ptr %238, i64 %1872
  store i32 %1859, ptr %1873, align 4, !tbaa !49
  %1874 = sext i32 %1789 to i64
  %1875 = getelementptr inbounds [4 x i8], ptr %1708, i64 %1874
  %1876 = load i16, ptr %1875, align 2, !tbaa !28
  %1877 = sext i32 %1859 to i64
  %1878 = getelementptr inbounds [4 x i8], ptr %1708, i64 %1877
  %1879 = load i16, ptr %1878, align 2, !tbaa !28
  %1880 = add i16 %1879, %1876
  %1881 = getelementptr inbounds [4 x i8], ptr %1708, i64 %1788
  store i16 %1880, ptr %1881, align 2, !tbaa !28
  %1882 = getelementptr inbounds i8, ptr %239, i64 %1874
  %1883 = load i8, ptr %1882, align 1, !tbaa !28
  %1884 = getelementptr inbounds i8, ptr %239, i64 %1877
  %1885 = load i8, ptr %1884, align 1, !tbaa !28
  %1886 = tail call i8 @llvm.umax.i8(i8 %1883, i8 %1885)
  %1887 = add i8 %1886, 1
  %1888 = getelementptr inbounds i8, ptr %239, i64 %1788
  store i8 %1887, ptr %1888, align 1, !tbaa !28
  %1889 = trunc nsw i64 %1788 to i32
  %1890 = trunc i64 %1788 to i16
  %1891 = getelementptr inbounds nuw i8, ptr %1878, i64 2
  store i16 %1890, ptr %1891, align 2, !tbaa !28
  %1892 = getelementptr inbounds nuw i8, ptr %1875, i64 2
  store i16 %1890, ptr %1892, align 2, !tbaa !28
  %1893 = icmp eq i64 %1788, 2147483647
  br i1 %1893, label %.loopexit30, label %1894, !prof !32, !nosanitize !30

1894:                                             ; preds = %1870
  %1895 = add nsw i64 %1788, 1
  store i32 %1889, ptr %244, align 4, !tbaa !49
  %1896 = load i32, ptr %164, align 4, !tbaa !47
  %1897 = icmp slt i32 %1896, 2
  br i1 %1897, label %1954, label %.preheader.mv.fast

.preheader.mv.fast:                               ; preds = %1894, %1945
  %1898 = phi i32 [ %1949, %1945 ], [ %1896, %1894 ]
  %1899 = phi i32 [ %1948, %1945 ], [ 2, %1894 ]
  %1900 = phi i32 [ %1930, %1945 ], [ 1, %1894 ]
  %1901 = icmp slt i32 %1899, %1898
  br i1 %1901, label %1904, label %1902

1902:                                             ; preds = %.preheader.mv.fast
  %1903 = sext i32 %1899 to i64
  br label %1928

1904:                                             ; preds = %.preheader.mv.fast
  %1905 = or disjoint i32 %1899, 1
  %1906 = sext i32 %1905 to i64
  %1907 = getelementptr inbounds [4 x i8], ptr %238, i64 %1906
  %1908 = load i32, ptr %1907, align 4, !tbaa !49
  %1909 = sext i32 %1908 to i64
  %1910 = getelementptr inbounds [4 x i8], ptr %1708, i64 %1909
  %1911 = load i16, ptr %1910, align 2, !tbaa !28
  %1912 = sext i32 %1899 to i64
  %1913 = getelementptr inbounds [4 x i8], ptr %238, i64 %1912
  %1914 = load i32, ptr %1913, align 4, !tbaa !49
  %1915 = sext i32 %1914 to i64
  %1916 = getelementptr inbounds [4 x i8], ptr %1708, i64 %1915
  %1917 = load i16, ptr %1916, align 2, !tbaa !28
  %1918 = icmp ult i16 %1911, %1917
  br i1 %1918, label %1927, label %1919

1919:                                             ; preds = %1904
  %1920 = icmp eq i16 %1911, %1917
  br i1 %1920, label %1921, label %1928

1921:                                             ; preds = %1919
  %1922 = getelementptr inbounds i8, ptr %239, i64 %1909
  %1923 = load i8, ptr %1922, align 1, !tbaa !28
  %1924 = getelementptr inbounds i8, ptr %239, i64 %1915
  %1925 = load i8, ptr %1924, align 1, !tbaa !28
  %1926 = icmp ugt i8 %1923, %1925
  br i1 %1926, label %1928, label %1927

1927:                                             ; preds = %1921, %1904
  br label %1928

1928:                                             ; preds = %1927, %1921, %1919, %1902
  %1929 = phi i64 [ %1903, %1902 ], [ %1906, %1927 ], [ %1912, %1921 ], [ %1912, %1919 ]
  %1930 = phi i32 [ %1899, %1902 ], [ %1905, %1927 ], [ %1899, %1921 ], [ %1899, %1919 ]
  %1931 = load i16, ptr %1881, align 2, !tbaa !28
  %1932 = getelementptr inbounds [4 x i8], ptr %238, i64 %1929
  %1933 = load i32, ptr %1932, align 4, !tbaa !49
  %1934 = sext i32 %1933 to i64
  %1935 = getelementptr inbounds [4 x i8], ptr %1708, i64 %1934
  %1936 = load i16, ptr %1935, align 2, !tbaa !28
  %1937 = icmp ult i16 %1931, %1936
  br i1 %1937, label %1951, label %1938

1938:                                             ; preds = %1928
  %1939 = icmp eq i16 %1931, %1936
  br i1 %1939, label %1940, label %1945

1940:                                             ; preds = %1938
  %1941 = load i8, ptr %1888, align 1, !tbaa !28
  %1942 = getelementptr inbounds i8, ptr %239, i64 %1934
  %1943 = load i8, ptr %1942, align 1, !tbaa !28
  %1944 = icmp ugt i8 %1941, %1943
  br i1 %1944, label %1945, label %1951

1945:                                             ; preds = %1940, %1938
  %1946 = sext i32 %1900 to i64
  %1947 = getelementptr inbounds [4 x i8], ptr %238, i64 %1946
  store i32 %1933, ptr %1947, align 4, !tbaa !49
  %1948 = shl i32 %1930, 1
  %1949 = load i32, ptr %164, align 4, !tbaa !47
  %1950 = icmp sgt i32 %1948, %1949
  br i1 %1950, label %1951, label %.preheader.mv.fast, !llvm.loop !55

1951:                                             ; preds = %1945, %1940, %1928
  %1952 = phi i32 [ %1900, %1928 ], [ %1900, %1940 ], [ %1930, %1945 ]
  %1953 = sext i32 %1952 to i64
  br label %1954

1954:                                             ; preds = %1951, %1894
  %1955 = phi i64 [ 1, %1894 ], [ %1953, %1951 ]
  %1956 = getelementptr inbounds [4 x i8], ptr %238, i64 %1955
  store i32 %1889, ptr %1956, align 4, !tbaa !49
  %1957 = load i32, ptr %164, align 4, !tbaa !47
  %1958 = icmp sgt i32 %1957, 1
  br i1 %1958, label %.mv.ph33.mv.fast, label %.loopexit336, !llvm.loop !57

1959:                                             ; preds = %.loopexit340, %.loopexit342
  %1960 = phi i64 [ %1783, %.loopexit342 ], [ %2028, %.loopexit340 ]
  %1961 = getelementptr inbounds nuw [4 x i8], ptr %238, i64 %1960
  %1962 = load i32, ptr %1961, align 4, !tbaa !49
  %1963 = sext i32 %1962 to i64
  %1964 = getelementptr inbounds i8, ptr %239, i64 %1963
  %1965 = load i32, ptr %164, align 4, !tbaa !47
  %1966 = trunc i64 %1960 to i32
  %1967 = shl i32 %1966, 1
  %1968 = icmp sgt i32 %1967, %1965
  br i1 %1968, label %.loopexit340, label %1969

1969:                                             ; preds = %1959
  %1970 = getelementptr inbounds [4 x i8], ptr %1708, i64 %1963
  br label %1971

1971:                                             ; preds = %2019, %1969
  %1972 = phi i32 [ %1965, %1969 ], [ %2023, %2019 ]
  %1973 = phi i32 [ %1967, %1969 ], [ %2022, %2019 ]
  %1974 = phi i32 [ %1966, %1969 ], [ %2004, %2019 ]
  %1975 = icmp slt i32 %1973, %1972
  br i1 %1975, label %1978, label %1976

1976:                                             ; preds = %1971
  %1977 = sext i32 %1973 to i64
  br label %2002

1978:                                             ; preds = %1971
  %1979 = or disjoint i32 %1973, 1
  %1980 = sext i32 %1979 to i64
  %1981 = getelementptr inbounds [4 x i8], ptr %238, i64 %1980
  %1982 = load i32, ptr %1981, align 4, !tbaa !49
  %1983 = sext i32 %1982 to i64
  %1984 = getelementptr inbounds [4 x i8], ptr %1708, i64 %1983
  %1985 = load i16, ptr %1984, align 2, !tbaa !28
  %1986 = sext i32 %1973 to i64
  %1987 = getelementptr inbounds [4 x i8], ptr %238, i64 %1986
  %1988 = load i32, ptr %1987, align 4, !tbaa !49
  %1989 = sext i32 %1988 to i64
  %1990 = getelementptr inbounds [4 x i8], ptr %1708, i64 %1989
  %1991 = load i16, ptr %1990, align 2, !tbaa !28
  %1992 = icmp ult i16 %1985, %1991
  br i1 %1992, label %2001, label %1993

1993:                                             ; preds = %1978
  %1994 = icmp eq i16 %1985, %1991
  br i1 %1994, label %1995, label %2002

1995:                                             ; preds = %1993
  %1996 = getelementptr inbounds i8, ptr %239, i64 %1983
  %1997 = load i8, ptr %1996, align 1, !tbaa !28
  %1998 = getelementptr inbounds i8, ptr %239, i64 %1989
  %1999 = load i8, ptr %1998, align 1, !tbaa !28
  %2000 = icmp ugt i8 %1997, %1999
  br i1 %2000, label %2002, label %2001

2001:                                             ; preds = %1995, %1978
  br label %2002

2002:                                             ; preds = %2001, %1995, %1993, %1976
  %2003 = phi i64 [ %1977, %1976 ], [ %1980, %2001 ], [ %1986, %1995 ], [ %1986, %1993 ]
  %2004 = phi i32 [ %1973, %1976 ], [ %1979, %2001 ], [ %1973, %1995 ], [ %1973, %1993 ]
  %2005 = load i16, ptr %1970, align 2, !tbaa !28
  %2006 = getelementptr inbounds [4 x i8], ptr %238, i64 %2003
  %2007 = load i32, ptr %2006, align 4, !tbaa !49
  %2008 = sext i32 %2007 to i64
  %2009 = getelementptr inbounds [4 x i8], ptr %1708, i64 %2008
  %2010 = load i16, ptr %2009, align 2, !tbaa !28
  %2011 = icmp ult i16 %2005, %2010
  br i1 %2011, label %.loopexit340, label %2012

2012:                                             ; preds = %2002
  %2013 = icmp eq i16 %2005, %2010
  br i1 %2013, label %2014, label %2019

2014:                                             ; preds = %2012
  %2015 = load i8, ptr %1964, align 1, !tbaa !28
  %2016 = getelementptr inbounds i8, ptr %239, i64 %2008
  %2017 = load i8, ptr %2016, align 1, !tbaa !28
  %2018 = icmp ugt i8 %2015, %2017
  br i1 %2018, label %2019, label %.loopexit340

2019:                                             ; preds = %2014, %2012
  %2020 = sext i32 %1974 to i64
  %2021 = getelementptr inbounds [4 x i8], ptr %238, i64 %2020
  store i32 %2007, ptr %2021, align 4, !tbaa !49
  %2022 = shl i32 %2004, 1
  %2023 = load i32, ptr %164, align 4, !tbaa !47
  %2024 = icmp sgt i32 %2022, %2023
  br i1 %2024, label %.loopexit340, label %1971, !llvm.loop !55

.loopexit340:                                     ; preds = %2019, %2014, %2002, %1959
  %2025 = phi i32 [ %1966, %1959 ], [ %1974, %2002 ], [ %1974, %2014 ], [ %2004, %2019 ]
  %2026 = sext i32 %2025 to i64
  %2027 = getelementptr inbounds [4 x i8], ptr %238, i64 %2026
  store i32 %1962, ptr %2027, align 4, !tbaa !49
  %2028 = add nsw i64 %1960, -1
  %2029 = icmp sgt i64 %1960, 1
  br i1 %2029, label %1959, label %1784, !llvm.loop !56

.mv.ph33:                                         ; preds = %1784, %2200
  %2030 = phi i32 [ %2203, %2200 ], [ %.fr293, %1784 ]
  %2031 = phi i64 [ %2141, %2200 ], [ %1786, %1784 ]
  %2032 = load i32, ptr %244, align 4, !tbaa !49
  %2033 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2030, i32 -1)
  %2034 = extractvalue { i32, i1 } %2033, 1, !nosanitize !30
  br i1 %2034, label %.loopexit29, label %2035, !prof !32, !nosanitize !30

2035:                                             ; preds = %.mv.ph33
  %2036 = extractvalue { i32, i1 } %2033, 0, !nosanitize !30
  store i32 %2036, ptr %164, align 4, !tbaa !47
  %2037 = sext i32 %2030 to i64
  %2038 = getelementptr inbounds [4 x i8], ptr %238, i64 %2037
  %2039 = load i32, ptr %2038, align 4, !tbaa !49
  store i32 %2039, ptr %244, align 4, !tbaa !49
  %2040 = sext i32 %2039 to i64
  %2041 = getelementptr inbounds i8, ptr %239, i64 %2040
  %2042 = icmp slt i32 %2036, 2
  br i1 %2042, label %2102, label %2043

2043:                                             ; preds = %2035
  %2044 = getelementptr inbounds [4 x i8], ptr %1708, i64 %2040
  br label %2045

2045:                                             ; preds = %2093, %2043
  %2046 = phi i32 [ %2036, %2043 ], [ %2097, %2093 ]
  %2047 = phi i32 [ 2, %2043 ], [ %2096, %2093 ]
  %2048 = phi i32 [ 1, %2043 ], [ %2078, %2093 ]
  %2049 = icmp slt i32 %2047, %2046
  br i1 %2049, label %2052, label %2050

2050:                                             ; preds = %2045
  %2051 = sext i32 %2047 to i64
  br label %2076

2052:                                             ; preds = %2045
  %2053 = or disjoint i32 %2047, 1
  %2054 = sext i32 %2053 to i64
  %2055 = getelementptr inbounds [4 x i8], ptr %238, i64 %2054
  %2056 = load i32, ptr %2055, align 4, !tbaa !49
  %2057 = sext i32 %2056 to i64
  %2058 = getelementptr inbounds [4 x i8], ptr %1708, i64 %2057
  %2059 = load i16, ptr %2058, align 2, !tbaa !28
  %2060 = sext i32 %2047 to i64
  %2061 = getelementptr inbounds [4 x i8], ptr %238, i64 %2060
  %2062 = load i32, ptr %2061, align 4, !tbaa !49
  %2063 = sext i32 %2062 to i64
  %2064 = getelementptr inbounds [4 x i8], ptr %1708, i64 %2063
  %2065 = load i16, ptr %2064, align 2, !tbaa !28
  %2066 = icmp ult i16 %2059, %2065
  br i1 %2066, label %2075, label %2067

2067:                                             ; preds = %2052
  %2068 = icmp eq i16 %2059, %2065
  br i1 %2068, label %2069, label %2076

2069:                                             ; preds = %2067
  %2070 = getelementptr inbounds i8, ptr %239, i64 %2057
  %2071 = load i8, ptr %2070, align 1, !tbaa !28
  %2072 = getelementptr inbounds i8, ptr %239, i64 %2063
  %2073 = load i8, ptr %2072, align 1, !tbaa !28
  %2074 = icmp ugt i8 %2071, %2073
  br i1 %2074, label %2076, label %2075

2075:                                             ; preds = %2069, %2052
  br label %2076

2076:                                             ; preds = %2075, %2069, %2067, %2050
  %2077 = phi i64 [ %2051, %2050 ], [ %2054, %2075 ], [ %2060, %2069 ], [ %2060, %2067 ]
  %2078 = phi i32 [ %2047, %2050 ], [ %2053, %2075 ], [ %2047, %2069 ], [ %2047, %2067 ]
  %2079 = load i16, ptr %2044, align 2, !tbaa !28
  %2080 = getelementptr inbounds [4 x i8], ptr %238, i64 %2077
  %2081 = load i32, ptr %2080, align 4, !tbaa !49
  %2082 = sext i32 %2081 to i64
  %2083 = getelementptr inbounds [4 x i8], ptr %1708, i64 %2082
  %2084 = load i16, ptr %2083, align 2, !tbaa !28
  %2085 = icmp ult i16 %2079, %2084
  br i1 %2085, label %2099, label %2086

2086:                                             ; preds = %2076
  %2087 = icmp eq i16 %2079, %2084
  br i1 %2087, label %2088, label %2093

2088:                                             ; preds = %2086
  %2089 = load i8, ptr %2041, align 1, !tbaa !28
  %2090 = getelementptr inbounds i8, ptr %239, i64 %2082
  %2091 = load i8, ptr %2090, align 1, !tbaa !28
  %2092 = icmp ugt i8 %2089, %2091
  br i1 %2092, label %2093, label %2099

2093:                                             ; preds = %2088, %2086
  %2094 = sext i32 %2048 to i64
  %2095 = getelementptr inbounds [4 x i8], ptr %238, i64 %2094
  store i32 %2081, ptr %2095, align 4, !tbaa !49
  %2096 = shl i32 %2078, 1
  %2097 = load i32, ptr %164, align 4, !tbaa !47
  %2098 = icmp sgt i32 %2096, %2097
  br i1 %2098, label %2099, label %2045, !llvm.loop !55

2099:                                             ; preds = %2093, %2088, %2076
  %2100 = phi i32 [ %2048, %2076 ], [ %2048, %2088 ], [ %2078, %2093 ]
  %2101 = sext i32 %2100 to i64
  br label %2102

2102:                                             ; preds = %2099, %2035
  %2103 = phi i64 [ 1, %2035 ], [ %2101, %2099 ]
  %2104 = getelementptr inbounds [4 x i8], ptr %238, i64 %2103
  store i32 %2039, ptr %2104, align 4, !tbaa !49
  %2105 = load i32, ptr %244, align 4, !tbaa !49
  %2106 = load i32, ptr %165, align 8, !tbaa !48
  %2107 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2106, i32 -1)
  %2108 = extractvalue { i32, i1 } %2107, 1, !nosanitize !30
  br i1 %2108, label %.loopexit29, label %2109, !prof !32, !nosanitize !30

2109:                                             ; preds = %2102
  %2110 = extractvalue { i32, i1 } %2107, 0, !nosanitize !30
  store i32 %2110, ptr %165, align 8, !tbaa !48
  %2111 = sext i32 %2110 to i64
  %2112 = getelementptr inbounds [4 x i8], ptr %238, i64 %2111
  store i32 %2032, ptr %2112, align 4, !tbaa !49
  %2113 = load i32, ptr %165, align 8, !tbaa !48
  %2114 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2113, i32 -1)
  %2115 = extractvalue { i32, i1 } %2114, 1, !nosanitize !30
  br i1 %2115, label %.loopexit29, label %2116, !prof !32, !nosanitize !30

2116:                                             ; preds = %2109
  %2117 = extractvalue { i32, i1 } %2114, 0, !nosanitize !30
  store i32 %2117, ptr %165, align 8, !tbaa !48
  %2118 = sext i32 %2117 to i64
  %2119 = getelementptr inbounds [4 x i8], ptr %238, i64 %2118
  store i32 %2105, ptr %2119, align 4, !tbaa !49
  %2120 = sext i32 %2032 to i64
  %2121 = getelementptr inbounds [4 x i8], ptr %1708, i64 %2120
  %2122 = load i16, ptr %2121, align 2, !tbaa !28
  %2123 = sext i32 %2105 to i64
  %2124 = getelementptr inbounds [4 x i8], ptr %1708, i64 %2123
  %2125 = load i16, ptr %2124, align 2, !tbaa !28
  %2126 = add i16 %2125, %2122
  %2127 = getelementptr inbounds [4 x i8], ptr %1708, i64 %2031
  store i16 %2126, ptr %2127, align 2, !tbaa !28
  %2128 = getelementptr inbounds i8, ptr %239, i64 %2120
  %2129 = load i8, ptr %2128, align 1, !tbaa !28
  %2130 = getelementptr inbounds i8, ptr %239, i64 %2123
  %2131 = load i8, ptr %2130, align 1, !tbaa !28
  %2132 = tail call i8 @llvm.umax.i8(i8 %2129, i8 %2131)
  %2133 = add i8 %2132, 1
  %2134 = getelementptr inbounds i8, ptr %239, i64 %2031
  store i8 %2133, ptr %2134, align 1, !tbaa !28
  %2135 = trunc nsw i64 %2031 to i32
  %2136 = trunc i64 %2031 to i16
  %2137 = getelementptr inbounds nuw i8, ptr %2124, i64 2
  store i16 %2136, ptr %2137, align 2, !tbaa !28
  %2138 = getelementptr inbounds nuw i8, ptr %2121, i64 2
  store i16 %2136, ptr %2138, align 2, !tbaa !28
  %2139 = icmp eq i64 %2031, 2147483647
  br i1 %2139, label %.loopexit30, label %2140, !prof !32, !nosanitize !30

2140:                                             ; preds = %2116
  %2141 = add nsw i64 %2031, 1
  store i32 %2135, ptr %244, align 4, !tbaa !49
  %2142 = load i32, ptr %164, align 4, !tbaa !47
  %2143 = icmp slt i32 %2142, 2
  br i1 %2143, label %2200, label %.preheader

.preheader:                                       ; preds = %2140, %2191
  %2144 = phi i32 [ %2195, %2191 ], [ %2142, %2140 ]
  %2145 = phi i32 [ %2194, %2191 ], [ 2, %2140 ]
  %2146 = phi i32 [ %2176, %2191 ], [ 1, %2140 ]
  %2147 = icmp slt i32 %2145, %2144
  br i1 %2147, label %2150, label %2148

2148:                                             ; preds = %.preheader
  %2149 = sext i32 %2145 to i64
  br label %2174

2150:                                             ; preds = %.preheader
  %2151 = or disjoint i32 %2145, 1
  %2152 = sext i32 %2151 to i64
  %2153 = getelementptr inbounds [4 x i8], ptr %238, i64 %2152
  %2154 = load i32, ptr %2153, align 4, !tbaa !49
  %2155 = sext i32 %2154 to i64
  %2156 = getelementptr inbounds [4 x i8], ptr %1708, i64 %2155
  %2157 = load i16, ptr %2156, align 2, !tbaa !28
  %2158 = sext i32 %2145 to i64
  %2159 = getelementptr inbounds [4 x i8], ptr %238, i64 %2158
  %2160 = load i32, ptr %2159, align 4, !tbaa !49
  %2161 = sext i32 %2160 to i64
  %2162 = getelementptr inbounds [4 x i8], ptr %1708, i64 %2161
  %2163 = load i16, ptr %2162, align 2, !tbaa !28
  %2164 = icmp ult i16 %2157, %2163
  br i1 %2164, label %2173, label %2165

2165:                                             ; preds = %2150
  %2166 = icmp eq i16 %2157, %2163
  br i1 %2166, label %2167, label %2174

2167:                                             ; preds = %2165
  %2168 = getelementptr inbounds i8, ptr %239, i64 %2155
  %2169 = load i8, ptr %2168, align 1, !tbaa !28
  %2170 = getelementptr inbounds i8, ptr %239, i64 %2161
  %2171 = load i8, ptr %2170, align 1, !tbaa !28
  %2172 = icmp ugt i8 %2169, %2171
  br i1 %2172, label %2174, label %2173

2173:                                             ; preds = %2167, %2150
  br label %2174

2174:                                             ; preds = %2173, %2167, %2165, %2148
  %2175 = phi i64 [ %2149, %2148 ], [ %2152, %2173 ], [ %2158, %2167 ], [ %2158, %2165 ]
  %2176 = phi i32 [ %2145, %2148 ], [ %2151, %2173 ], [ %2145, %2167 ], [ %2145, %2165 ]
  %2177 = load i16, ptr %2127, align 2, !tbaa !28
  %2178 = getelementptr inbounds [4 x i8], ptr %238, i64 %2175
  %2179 = load i32, ptr %2178, align 4, !tbaa !49
  %2180 = sext i32 %2179 to i64
  %2181 = getelementptr inbounds [4 x i8], ptr %1708, i64 %2180
  %2182 = load i16, ptr %2181, align 2, !tbaa !28
  %2183 = icmp ult i16 %2177, %2182
  br i1 %2183, label %2197, label %2184

2184:                                             ; preds = %2174
  %2185 = icmp eq i16 %2177, %2182
  br i1 %2185, label %2186, label %2191

2186:                                             ; preds = %2184
  %2187 = load i8, ptr %2134, align 1, !tbaa !28
  %2188 = getelementptr inbounds i8, ptr %239, i64 %2180
  %2189 = load i8, ptr %2188, align 1, !tbaa !28
  %2190 = icmp ugt i8 %2187, %2189
  br i1 %2190, label %2191, label %2197

2191:                                             ; preds = %2186, %2184
  %2192 = sext i32 %2146 to i64
  %2193 = getelementptr inbounds [4 x i8], ptr %238, i64 %2192
  store i32 %2179, ptr %2193, align 4, !tbaa !49
  %2194 = shl i32 %2176, 1
  %2195 = load i32, ptr %164, align 4, !tbaa !47
  %2196 = icmp sgt i32 %2194, %2195
  br i1 %2196, label %2197, label %.preheader, !llvm.loop !55

2197:                                             ; preds = %2191, %2186, %2174
  %2198 = phi i32 [ %2146, %2174 ], [ %2146, %2186 ], [ %2176, %2191 ]
  %2199 = sext i32 %2198 to i64
  br label %2200

2200:                                             ; preds = %2197, %2140
  %2201 = phi i64 [ 1, %2140 ], [ %2199, %2197 ]
  %2202 = getelementptr inbounds [4 x i8], ptr %238, i64 %2201
  store i32 %2135, ptr %2202, align 4, !tbaa !49
  %2203 = load i32, ptr %164, align 4, !tbaa !47
  %2204 = icmp sgt i32 %2203, 1
  br i1 %2204, label %.mv.ph33, label %.loopexit336, !llvm.loop !57

.loopexit336:                                     ; preds = %2200, %1954
  %2205 = load i32, ptr %165, align 8, !tbaa !48
  %2206 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2205, i32 -1)
  %2207 = extractvalue { i32, i1 } %2206, 1, !nosanitize !30
  br i1 %2207, label %.loopexit29, label %2208, !prof !32, !nosanitize !30

2208:                                             ; preds = %.loopexit336
  %2209 = extractvalue { i32, i1 } %2206, 0, !nosanitize !30
  %2210 = load i32, ptr %244, align 4, !tbaa !49
  store i32 %2209, ptr %165, align 8, !tbaa !48
  %2211 = sext i32 %2209 to i64
  %2212 = getelementptr inbounds [4 x i8], ptr %238, i64 %2211
  store i32 %2210, ptr %2212, align 4, !tbaa !49
  %2213 = load ptr, ptr %1707, align 8, !tbaa !41
  %2214 = load i32, ptr %1781, align 8, !tbaa !54
  %2215 = load ptr, ptr %1709, align 8, !tbaa !42
  %2216 = load ptr, ptr %2215, align 8, !tbaa !43
  %2217 = getelementptr inbounds nuw i8, ptr %2215, i64 8
  %2218 = load ptr, ptr %2217, align 8, !tbaa !58
  %2219 = getelementptr inbounds nuw i8, ptr %2215, i64 16
  %2220 = load i32, ptr %2219, align 8, !tbaa !59
  %2221 = getelementptr inbounds nuw i8, ptr %2215, i64 24
  %2222 = load i32, ptr %2221, align 8, !tbaa !60
  %.fr299 = freeze i32 %2222
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %512, i8 0, i64 32, i1 false), !tbaa !61
  %2223 = load i32, ptr %165, align 8, !tbaa !48
  %2224 = sext i32 %2223 to i64
  %2225 = getelementptr inbounds [4 x i8], ptr %238, i64 %2224
  %2226 = load i32, ptr %2225, align 4, !tbaa !49
  %2227 = sext i32 %2226 to i64
  %.split294 = getelementptr inbounds [4 x i8], ptr %2213, i64 %2227
  %2228 = getelementptr inbounds nuw i8, ptr %.split294, i64 2
  store i16 0, ptr %2228, align 2, !tbaa !28
  %2229 = load i32, ptr %165, align 8, !tbaa !48
  %2230 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2229, i32 1), !nosanitize !30
  %2231 = extractvalue { i32, i1 } %2230, 1, !nosanitize !30
  br i1 %2231, label %.loopexit333, label %2232, !prof !32, !nosanitize !30

.loopexit333:                                     ; preds = %2279, %2255, %2208
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

2232:                                             ; preds = %2208
  %2233 = extractvalue { i32, i1 } %2230, 0
  %2234 = icmp slt i32 %2233, 573
  br i1 %2234, label %2235, label %.loopexit328

2235:                                             ; preds = %2232
  %2236 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2237 = icmp eq ptr %2216, null
  %2238 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2239 = sext i32 %2233 to i64
  br label %2240

2240:                                             ; preds = %2310, %2235
  %2241 = phi i64 [ %2239, %2235 ], [ %2311, %2310 ]
  %2242 = phi i32 [ 0, %2235 ], [ %2262, %2310 ]
  %2243 = getelementptr inbounds [4 x i8], ptr %238, i64 %2241
  %2244 = load i32, ptr %2243, align 4, !tbaa !49
  %2245 = sext i32 %2244 to i64
  %2246 = getelementptr inbounds [4 x i8], ptr %2213, i64 %2245
  %2247 = getelementptr inbounds nuw i8, ptr %2246, i64 2
  %2248 = load i16, ptr %2247, align 2, !tbaa !28
  %2249 = zext i16 %2248 to i64
  %.split295 = getelementptr inbounds nuw [4 x i8], ptr %2213, i64 %2249
  %2250 = getelementptr inbounds nuw i8, ptr %.split295, i64 2
  %2251 = load i16, ptr %2250, align 2, !tbaa !28
  %2252 = zext i16 %2251 to i32
  %2253 = add nuw nsw i32 %2252, 1
  %2254 = icmp sgt i32 %.fr299, %2252
  br i1 %2254, label %2260, label %2255

2255:                                             ; preds = %2240
  %2256 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2242, i32 1), !nosanitize !30
  %2257 = extractvalue { i32, i1 } %2256, 1, !nosanitize !30
  br i1 %2257, label %.loopexit333, label %2258, !prof !32, !nosanitize !30

2258:                                             ; preds = %2255
  %2259 = extractvalue { i32, i1 } %2256, 0, !nosanitize !30
  br label %2260

2260:                                             ; preds = %2258, %2240
  %2261 = phi i32 [ %.fr299, %2258 ], [ %2253, %2240 ]
  %2262 = phi i32 [ %2259, %2258 ], [ %2242, %2240 ]
  %2263 = trunc i32 %2261 to i16
  store i16 %2263, ptr %2247, align 2, !tbaa !28
  %2264 = icmp sgt i32 %2244, %2214
  br i1 %2264, label %2310, label %2265

2265:                                             ; preds = %2260
  %2266 = sext i32 %2261 to i64
  %2267 = getelementptr inbounds [2 x i8], ptr %512, i64 %2266
  %2268 = load i16, ptr %2267, align 2, !tbaa !61
  %2269 = add i16 %2268, 1
  store i16 %2269, ptr %2267, align 2, !tbaa !61
  %2270 = icmp slt i32 %2244, %2220
  br i1 %2270, label %2279, label %2271

2271:                                             ; preds = %2265
  %2272 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2244, i32 %2220), !nosanitize !30
  %2273 = extractvalue { i32, i1 } %2272, 1, !nosanitize !30
  br i1 %2273, label %.loopexit18, label %2274, !prof !32, !nosanitize !30

.loopexit18:                                      ; preds = %2271, %2337, %2329, %.mv.ph28, %.mv.ph28.mv.fast, %2403, %2364, %2316
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2274:                                             ; preds = %2271
  %2275 = extractvalue { i32, i1 } %2272, 0, !nosanitize !30
  %2276 = sext i32 %2275 to i64
  %2277 = getelementptr inbounds [4 x i8], ptr %2218, i64 %2276
  %2278 = load i32, ptr %2277, align 4, !tbaa !49
  br label %2279

2279:                                             ; preds = %2274, %2265
  %2280 = phi i32 [ %2278, %2274 ], [ 0, %2265 ]
  %2281 = load i16, ptr %2246, align 2, !tbaa !28
  %2282 = zext i16 %2281 to i64
  %2283 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2261, i32 %2280), !nosanitize !30
  %2284 = extractvalue { i32, i1 } %2283, 1, !nosanitize !30
  br i1 %2284, label %.loopexit333, label %2285, !prof !32, !nosanitize !30

2285:                                             ; preds = %2279
  %2286 = extractvalue { i32, i1 } %2283, 0, !nosanitize !30
  %2287 = zext i32 %2286 to i64
  %2288 = mul nuw nsw i64 %2287, %2282
  %2289 = load i64, ptr %2236, align 8, !tbaa !51
  %2290 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2289, i64 %2288), !nosanitize !30
  %2291 = extractvalue { i64, i1 } %2290, 1, !nosanitize !30
  br i1 %2291, label %2292, label %2293, !prof !32, !nosanitize !30

2292:                                             ; preds = %2295, %2285
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2293:                                             ; preds = %2285
  %2294 = extractvalue { i64, i1 } %2290, 0, !nosanitize !30
  store i64 %2294, ptr %2236, align 8, !tbaa !51
  br i1 %2237, label %2310, label %2295

2295:                                             ; preds = %2293
  %.split296 = getelementptr inbounds [4 x i8], ptr %2216, i64 %2245
  %2296 = getelementptr inbounds nuw i8, ptr %.split296, i64 2
  %2297 = load i16, ptr %2296, align 2, !tbaa !28
  %2298 = zext i16 %2297 to i32
  %2299 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2298, i32 %2280), !nosanitize !30
  %2300 = extractvalue { i32, i1 } %2299, 1, !nosanitize !30
  br i1 %2300, label %2292, label %2301, !prof !32, !nosanitize !30

2301:                                             ; preds = %2295
  %2302 = extractvalue { i32, i1 } %2299, 0, !nosanitize !30
  %2303 = zext i32 %2302 to i64
  %2304 = mul nuw nsw i64 %2303, %2282
  %2305 = load i64, ptr %2238, align 8, !tbaa !52
  %2306 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2305, i64 %2304), !nosanitize !30
  %2307 = extractvalue { i64, i1 } %2306, 1, !nosanitize !30
  br i1 %2307, label %.loopexit331, label %2308, !prof !32, !nosanitize !30

.loopexit331:                                     ; preds = %2301, %2332
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2308:                                             ; preds = %2301
  %2309 = extractvalue { i64, i1 } %2306, 0, !nosanitize !30
  store i64 %2309, ptr %2238, align 8, !tbaa !52
  br label %2310

2310:                                             ; preds = %2308, %2293, %2260
  %2311 = add nsw i64 %2241, 1
  %2312 = and i64 %2311, 4294967295
  %2313 = icmp eq i64 %2312, 573
  br i1 %2313, label %2314, label %2240, !llvm.loop !62

2314:                                             ; preds = %2310
  %2315 = icmp eq i32 %2262, 0
  br i1 %2315, label %.loopexit328, label %2316

2316:                                             ; preds = %2314
  %2317 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.fr299, i32 -1)
  %2318 = extractvalue { i32, i1 } %2317, 1, !nosanitize !30
  %2319 = sext i32 %.fr299 to i64
  %2320 = getelementptr inbounds [2 x i8], ptr %512, i64 %2319
  br i1 %2318, label %.loopexit18, label %.preheader330, !prof !32, !nosanitize !30

.preheader330:                                    ; preds = %2316, %2347
  %2321 = phi i32 [ %2348, %2347 ], [ %2262, %2316 ]
  br label %2322

2322:                                             ; preds = %2329, %.preheader330
  %2323 = phi { i32, i1 } [ %2330, %2329 ], [ %2317, %.preheader330 ]
  %2324 = extractvalue { i32, i1 } %2323, 0
  %2325 = sext i32 %2324 to i64
  %2326 = getelementptr inbounds [2 x i8], ptr %512, i64 %2325
  %2327 = load i16, ptr %2326, align 2, !tbaa !61
  %2328 = icmp eq i16 %2327, 0
  br i1 %2328, label %2329, label %2332

2329:                                             ; preds = %2322
  %2330 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2324, i32 -1)
  %2331 = extractvalue { i32, i1 } %2330, 1, !nosanitize !30
  br i1 %2331, label %.loopexit18, label %2322, !prof !32, !llvm.loop !63, !nosanitize !30

2332:                                             ; preds = %2322
  %2333 = getelementptr inbounds [2 x i8], ptr %512, i64 %2325
  %2334 = add i16 %2327, -1
  store i16 %2334, ptr %2333, align 2, !tbaa !61
  %2335 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2324, i32 1), !nosanitize !30
  %2336 = extractvalue { i32, i1 } %2335, 1, !nosanitize !30
  br i1 %2336, label %.loopexit331, label %2337, !prof !32, !nosanitize !30

2337:                                             ; preds = %2332
  %2338 = extractvalue { i32, i1 } %2335, 0, !nosanitize !30
  %2339 = sext i32 %2338 to i64
  %2340 = getelementptr inbounds [2 x i8], ptr %512, i64 %2339
  %2341 = load i16, ptr %2340, align 2, !tbaa !61
  %2342 = add i16 %2341, 2
  store i16 %2342, ptr %2340, align 2, !tbaa !61
  %2343 = load i16, ptr %2320, align 2, !tbaa !61
  %2344 = add i16 %2343, -1
  store i16 %2344, ptr %2320, align 2, !tbaa !61
  %2345 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2321, i32 -2)
  %2346 = extractvalue { i32, i1 } %2345, 1, !nosanitize !30
  br i1 %2346, label %.loopexit18, label %2347, !prof !32, !nosanitize !30

2347:                                             ; preds = %2337
  %2348 = extractvalue { i32, i1 } %2345, 0, !nosanitize !30
  %2349 = icmp sgt i32 %2348, 0
  br i1 %2349, label %.preheader330, label %2350, !llvm.loop !64

2350:                                             ; preds = %2347
  %2351 = icmp eq i32 %.fr299, 0
  br i1 %2351, label %.loopexit328, label %.preheader326

.preheader326:                                    ; preds = %2350, %2433
  %2352 = phi i64 [ %2434, %2433 ], [ %2319, %2350 ]
  %2353 = phi i32 [ %2396, %2433 ], [ 573, %2350 ]
  %2354 = getelementptr inbounds [2 x i8], ptr %512, i64 %2352
  %2355 = load i16, ptr %2354, align 2, !tbaa !61
  %2356 = icmp eq i16 %2355, 0
  br i1 %2356, label %.loopexit20, label %2357

2357:                                             ; preds = %.preheader326
  %2358 = zext i16 %2355 to i32
  %2359 = trunc i64 %2352 to i16
  %mv.h26 = icmp sgt i64 %2352, -1
  br i1 %mv.h26, label %.mv.ph28.mv.fast, label %.mv.ph28

.mv.ph28.mv.fast:                                 ; preds = %2357, %2393
  %2360 = phi i32 [ %2368, %2393 ], [ %2353, %2357 ]
  %2361 = phi i32 [ %2394, %2393 ], [ %2358, %2357 ]
  %2362 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2360, i32 -1)
  %2363 = extractvalue { i32, i1 } %2362, 1, !nosanitize !30
  br i1 %2363, label %.loopexit18, label %.lr.ph1188, !prof !65, !nosanitize !30

2364:                                             ; preds = %.lr.ph1188
  %2365 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2368, i32 -1)
  %2366 = extractvalue { i32, i1 } %2365, 1, !nosanitize !30
  br i1 %2366, label %.loopexit18, label %.lr.ph1188, !prof !66, !llvm.loop !67, !nosanitize !30

.lr.ph1188:                                       ; preds = %.mv.ph28.mv.fast, %2364
  %2367 = phi { i32, i1 } [ %2365, %2364 ], [ %2362, %.mv.ph28.mv.fast ]
  %2368 = extractvalue { i32, i1 } %2367, 0, !nosanitize !30
  %2369 = sext i32 %2368 to i64
  %2370 = getelementptr inbounds [4 x i8], ptr %238, i64 %2369
  %2371 = load i32, ptr %2370, align 4, !tbaa !49
  %2372 = icmp sgt i32 %2371, %2214
  br i1 %2372, label %2364, label %2373, !llvm.loop !67

2373:                                             ; preds = %.lr.ph1188
  %2374 = sext i32 %2371 to i64
  %2375 = getelementptr inbounds [4 x i8], ptr %2213, i64 %2374
  %2376 = getelementptr inbounds nuw i8, ptr %2375, i64 2
  %2377 = load i16, ptr %2376, align 2, !tbaa !28
  %2378 = zext i16 %2377 to i64
  %2379 = icmp eq i64 %2352, %2378
  br i1 %2379, label %2393, label %2380

2380:                                             ; preds = %2373
  %2381 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2352, i64 %2378), !nosanitize !30
  %2382 = extractvalue { i64, i1 } %2381, 1, !nosanitize !30
  br i1 %2382, label %.loopexit19, label %2383, !prof !32, !nosanitize !30

2383:                                             ; preds = %2380
  %2384 = extractvalue { i64, i1 } %2381, 0, !nosanitize !30
  %2385 = load i16, ptr %2375, align 2, !tbaa !28
  %2386 = zext i16 %2385 to i64
  %2387 = mul i64 %2384, %2386
  %2388 = load i64, ptr %2236, align 8, !tbaa !51
  %2389 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2388, i64 %2387), !nosanitize !30
  %2390 = extractvalue { i64, i1 } %2389, 1, !nosanitize !30
  br i1 %2390, label %.loopexit323, label %2391, !prof !32, !nosanitize !30

2391:                                             ; preds = %2383
  %2392 = extractvalue { i64, i1 } %2389, 0, !nosanitize !30
  store i64 %2392, ptr %2236, align 8, !tbaa !51
  store i16 %2359, ptr %2376, align 2, !tbaa !28
  br label %2393

2393:                                             ; preds = %2391, %2373
  %2394 = add nsw i32 %2361, -1
  %2395 = icmp eq i32 %2394, 0
  br i1 %2395, label %.loopexit20, label %.mv.ph28.mv.fast, !llvm.loop !67

.loopexit20:                                      ; preds = %2429, %2393, %.preheader326
  %2396 = phi i32 [ %2353, %.preheader326 ], [ %2368, %2393 ], [ %2407, %2429 ]
  %2397 = and i64 %2352, 4294967295
  %2398 = icmp eq i64 %2397, 2147483648
  br i1 %2398, label %.loopexit19, label %2433, !prof !32, !nosanitize !30

.mv.ph28:                                         ; preds = %2357, %2429
  %2399 = phi i32 [ %2407, %2429 ], [ %2353, %2357 ]
  %2400 = phi i32 [ %2431, %2429 ], [ %2358, %2357 ]
  %2401 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2399, i32 -1)
  %2402 = extractvalue { i32, i1 } %2401, 1, !nosanitize !30
  br i1 %2402, label %.loopexit18, label %.lr.ph1187, !prof !65, !nosanitize !30

2403:                                             ; preds = %.lr.ph1187
  %2404 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2407, i32 -1)
  %2405 = extractvalue { i32, i1 } %2404, 1, !nosanitize !30
  br i1 %2405, label %.loopexit18, label %.lr.ph1187, !prof !66, !llvm.loop !67, !nosanitize !30

.lr.ph1187:                                       ; preds = %.mv.ph28, %2403
  %2406 = phi { i32, i1 } [ %2404, %2403 ], [ %2401, %.mv.ph28 ]
  %2407 = extractvalue { i32, i1 } %2406, 0, !nosanitize !30
  %2408 = sext i32 %2407 to i64
  %2409 = getelementptr inbounds [4 x i8], ptr %238, i64 %2408
  %2410 = load i32, ptr %2409, align 4, !tbaa !49
  %2411 = icmp sgt i32 %2410, %2214
  br i1 %2411, label %2403, label %2412, !llvm.loop !67

2412:                                             ; preds = %.lr.ph1187
  %2413 = sext i32 %2410 to i64
  %2414 = getelementptr inbounds [4 x i8], ptr %2213, i64 %2413
  %2415 = getelementptr inbounds nuw i8, ptr %2414, i64 2
  %2416 = load i16, ptr %2415, align 2, !tbaa !28
  %2417 = zext i16 %2416 to i64
  %2418 = sub nuw i64 %2352, %2417
  %2419 = load i16, ptr %2414, align 2, !tbaa !28
  %2420 = zext i16 %2419 to i64
  %2421 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2418, i64 %2420), !nosanitize !30
  %2422 = extractvalue { i64, i1 } %2421, 1, !nosanitize !30
  br i1 %2422, label %2423, label %2424, !prof !32, !nosanitize !30

.loopexit19:                                      ; preds = %.loopexit20, %2380
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

2423:                                             ; preds = %2412
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !30
  unreachable, !nosanitize !30

2424:                                             ; preds = %2412
  %2425 = extractvalue { i64, i1 } %2421, 0, !nosanitize !30
  %2426 = load i64, ptr %2236, align 8, !tbaa !51
  %2427 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2426, i64 %2425), !nosanitize !30
  %2428 = extractvalue { i64, i1 } %2427, 1, !nosanitize !30
  br i1 %2428, label %.loopexit323, label %2429, !prof !32, !nosanitize !30

.loopexit323:                                     ; preds = %2424, %2383
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2429:                                             ; preds = %2424
  %2430 = extractvalue { i64, i1 } %2427, 0, !nosanitize !30
  store i64 %2430, ptr %2236, align 8, !tbaa !51
  store i16 %2359, ptr %2415, align 2, !tbaa !28
  %2431 = add nsw i32 %2400, -1
  %2432 = icmp eq i32 %2431, 0
  br i1 %2432, label %.loopexit20, label %.mv.ph28, !llvm.loop !67

2433:                                             ; preds = %.loopexit20
  %2434 = add nsw i64 %2352, -1
  %2435 = and i64 %2434, 4294967295
  %2436 = icmp eq i64 %2435, 0
  br i1 %2436, label %.loopexit328, label %.preheader326, !llvm.loop !68

.loopexit328:                                     ; preds = %2433, %2350, %2314, %2232
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %2437 = load i16, ptr %512, align 2, !tbaa !61
  %2438 = zext i16 %2437 to i32
  %2439 = shl nuw nsw i32 %2438, 1
  %2440 = trunc i32 %2439 to i16
  %2441 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %2440, ptr %2441, align 2, !tbaa !61
  %2442 = load i16, ptr %732, align 2, !tbaa !61
  %2443 = zext i16 %2442 to i32
  %2444 = add nuw nsw i32 %2439, %2443
  %2445 = shl nuw nsw i32 %2444, 1
  %2446 = trunc i32 %2445 to i16
  %2447 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2446, ptr %2447, align 4, !tbaa !61
  %2448 = load i16, ptr %739, align 2, !tbaa !61
  %2449 = zext i16 %2448 to i32
  %2450 = add nuw nsw i32 %2445, %2449
  %2451 = shl nuw nsw i32 %2450, 1
  %2452 = trunc i32 %2451 to i16
  %2453 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2452, ptr %2453, align 2, !tbaa !61
  %2454 = load i16, ptr %746, align 2, !tbaa !61
  %2455 = zext i16 %2454 to i32
  %2456 = add nuw nsw i32 %2451, %2455
  %2457 = shl nuw nsw i32 %2456, 1
  %2458 = trunc i32 %2457 to i16
  %2459 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %2458, ptr %2459, align 8, !tbaa !61
  %2460 = load i16, ptr %753, align 2, !tbaa !61
  %2461 = zext i16 %2460 to i32
  %2462 = add nuw nsw i32 %2457, %2461
  %2463 = shl nuw nsw i32 %2462, 1
  %2464 = trunc i32 %2463 to i16
  %2465 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %2464, ptr %2465, align 2, !tbaa !61
  %2466 = load i16, ptr %760, align 2, !tbaa !61
  %2467 = trunc i32 %2463 to i16
  %.tr916 = add i16 %2466, %2467
  %2468 = shl i16 %.tr916, 1
  %2469 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %2468, ptr %2469, align 4, !tbaa !61
  %2470 = load i16, ptr %767, align 2, !tbaa !61
  %.tr303 = add i16 %2470, %2468
  %2471 = shl i16 %.tr303, 1
  %2472 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %2471, ptr %2472, align 2, !tbaa !61
  %2473 = load i16, ptr %774, align 2, !tbaa !61
  %.tr300 = add i16 %2471, %2473
  %2474 = shl i16 %.tr300, 1
  %2475 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %2474, ptr %2475, align 16, !tbaa !61
  %2476 = load i16, ptr %779, align 2, !tbaa !61
  %2477 = add i16 %2474, %2476
  %2478 = shl i16 %2477, 1
  %2479 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %2478, ptr %2479, align 2, !tbaa !61
  %2480 = load i16, ptr %783, align 2, !tbaa !61
  %2481 = add i16 %2478, %2480
  %2482 = shl i16 %2481, 1
  %2483 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %2482, ptr %2483, align 4, !tbaa !61
  %2484 = load i16, ptr %787, align 2, !tbaa !61
  %2485 = add i16 %2482, %2484
  %2486 = shl i16 %2485, 1
  %2487 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %2486, ptr %2487, align 2, !tbaa !61
  %2488 = load i16, ptr %792, align 2, !tbaa !61
  %2489 = add i16 %2486, %2488
  %2490 = shl i16 %2489, 1
  %2491 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2490, ptr %2491, align 8, !tbaa !61
  %2492 = load i16, ptr %797, align 2, !tbaa !61
  %2493 = add i16 %2490, %2492
  %2494 = shl i16 %2493, 1
  %2495 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2494, ptr %2495, align 2, !tbaa !61
  %2496 = load i16, ptr %802, align 2, !tbaa !61
  %2497 = add i16 %2494, %2496
  %2498 = shl i16 %2497, 1
  %2499 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2498, ptr %2499, align 4, !tbaa !61
  %2500 = load i16, ptr %807, align 2, !tbaa !61
  %2501 = add i16 %2498, %2500
  %2502 = shl i16 %2501, 1
  %2503 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2502, ptr %2503, align 2, !tbaa !61
  %2504 = icmp slt i32 %1779, 0
  br i1 %2504, label %.loopexit321, label %.preheader320

2505:                                             ; preds = %2555
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

.preheader320:                                    ; preds = %.loopexit328, %2557
  %2506 = phi i64 [ %2558, %2557 ], [ 0, %.loopexit328 ]
  %2507 = getelementptr inbounds nuw [4 x i8], ptr %1708, i64 %2506
  %2508 = getelementptr inbounds nuw i8, ptr %2507, i64 2
  %2509 = load i16, ptr %2508, align 2, !tbaa !28
  %2510 = icmp eq i16 %2509, 0
  br i1 %2510, label %2555, label %2511

2511:                                             ; preds = %.preheader320
  %2512 = zext i16 %2509 to i32
  %2513 = zext i16 %2509 to i64
  %2514 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %2513
  %2515 = load i16, ptr %2514, align 2, !tbaa !61
  %2516 = add i16 %2515, 1
  store i16 %2516, ptr %2514, align 2, !tbaa !61
  %2517 = and i32 %2512, 3
  %2518 = icmp ult i16 %2509, 4
  br i1 %2518, label %.loopexit319, label %2519

2519:                                             ; preds = %2511
  %2520 = and i32 %2512, 65532
  br label %2521

2521:                                             ; preds = %2521, %2519
  %2522 = phi i16 [ %2515, %2519 ], [ %2538, %2521 ]
  %2523 = phi i16 [ 0, %2519 ], [ %2537, %2521 ]
  %2524 = phi i32 [ 0, %2519 ], [ %2539, %2521 ]
  %2525 = and i16 %2522, 1
  %2526 = or disjoint i16 %2523, %2525
  %2527 = lshr i16 %2522, 2
  %2528 = shl i16 %2526, 2
  %2529 = and i16 %2522, 2
  %2530 = or disjoint i16 %2528, %2529
  %2531 = and i16 %2527, 1
  %2532 = or disjoint i16 %2530, %2531
  %2533 = shl i16 %2532, 1
  %2534 = lshr i16 %2522, 3
  %2535 = and i16 %2534, 1
  %2536 = or disjoint i16 %2533, %2535
  %2537 = shl i16 %2536, 1
  %2538 = lshr i16 %2522, 4
  %2539 = add nuw nsw i32 %2524, 4
  %2540 = icmp eq i32 %2539, %2520
  br i1 %2540, label %.loopexit319, label %2521, !llvm.loop !69

.loopexit319:                                     ; preds = %2521, %2511
  %2541 = phi i16 [ poison, %2511 ], [ %2536, %2521 ]
  %2542 = phi i16 [ %2515, %2511 ], [ %2538, %2521 ]
  %2543 = phi i16 [ 0, %2511 ], [ %2537, %2521 ]
  %2544 = icmp eq i32 %2517, 0
  br i1 %2544, label %.loopexit318, label %.preheader317

.preheader317:                                    ; preds = %.loopexit319, %.preheader317
  %2545 = phi i16 [ %2551, %.preheader317 ], [ %2542, %.loopexit319 ]
  %2546 = phi i16 [ %2550, %.preheader317 ], [ %2543, %.loopexit319 ]
  %2547 = phi i32 [ %2552, %.preheader317 ], [ 0, %.loopexit319 ]
  %2548 = and i16 %2545, 1
  %2549 = or disjoint i16 %2546, %2548
  %2550 = shl i16 %2549, 1
  %2551 = lshr i16 %2545, 1
  %2552 = add nuw nsw i32 %2547, 1
  %2553 = icmp eq i32 %2552, %2517
  br i1 %2553, label %.loopexit318, label %.preheader317, !llvm.loop !77

.loopexit318:                                     ; preds = %.preheader317, %.loopexit319
  %2554 = phi i16 [ %2541, %.loopexit319 ], [ %2549, %.preheader317 ]
  store i16 %2554, ptr %2507, align 2, !tbaa !28
  br label %2555

2555:                                             ; preds = %.loopexit318, %.preheader320
  %2556 = icmp eq i64 %2506, 2147483647
  br i1 %2556, label %2505, label %2557, !prof !32, !nosanitize !30

2557:                                             ; preds = %2555
  %2558 = add nuw nsw i64 %2506, 1
  %2559 = trunc i64 %2558 to i32
  %2560 = icmp slt i32 %1779, %2559
  br i1 %2560, label %.loopexit321, label %.preheader320, !llvm.loop !72

.loopexit321:                                     ; preds = %2557, %.loopexit328
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %2561 = getelementptr i8, ptr %0, i64 2750
  %2562 = getelementptr i8, ptr %0, i64 2810
  %2563 = load i16, ptr %2562, align 2, !tbaa !28
  %2564 = icmp eq i16 %2563, 0
  br i1 %2564, label %2565, label %2625

2565:                                             ; preds = %.loopexit321
  %2566 = getelementptr i8, ptr %0, i64 2754
  %2567 = load i16, ptr %2566, align 2, !tbaa !28
  %2568 = icmp eq i16 %2567, 0
  br i1 %2568, label %2569, label %2625

2569:                                             ; preds = %2565
  %2570 = getelementptr i8, ptr %0, i64 2806
  %2571 = load i16, ptr %2570, align 2, !tbaa !28
  %2572 = icmp eq i16 %2571, 0
  br i1 %2572, label %2573, label %2625

2573:                                             ; preds = %2569
  %2574 = getelementptr i8, ptr %0, i64 2758
  %2575 = load i16, ptr %2574, align 2, !tbaa !28
  %2576 = icmp eq i16 %2575, 0
  br i1 %2576, label %2577, label %2625

2577:                                             ; preds = %2573
  %2578 = getelementptr i8, ptr %0, i64 2802
  %2579 = load i16, ptr %2578, align 2, !tbaa !28
  %2580 = icmp eq i16 %2579, 0
  br i1 %2580, label %2581, label %2625

2581:                                             ; preds = %2577
  %2582 = getelementptr i8, ptr %0, i64 2762
  %2583 = load i16, ptr %2582, align 2, !tbaa !28
  %2584 = icmp eq i16 %2583, 0
  br i1 %2584, label %2585, label %2625

2585:                                             ; preds = %2581
  %2586 = getelementptr i8, ptr %0, i64 2798
  %2587 = load i16, ptr %2586, align 2, !tbaa !28
  %2588 = icmp eq i16 %2587, 0
  br i1 %2588, label %2589, label %2625

2589:                                             ; preds = %2585
  %2590 = getelementptr i8, ptr %0, i64 2766
  %2591 = load i16, ptr %2590, align 2, !tbaa !28
  %2592 = icmp eq i16 %2591, 0
  br i1 %2592, label %2593, label %2625

2593:                                             ; preds = %2589
  %2594 = getelementptr i8, ptr %0, i64 2794
  %2595 = load i16, ptr %2594, align 2, !tbaa !28
  %2596 = icmp eq i16 %2595, 0
  br i1 %2596, label %2597, label %2625

2597:                                             ; preds = %2593
  %2598 = getelementptr i8, ptr %0, i64 2770
  %2599 = load i16, ptr %2598, align 2, !tbaa !28
  %2600 = icmp eq i16 %2599, 0
  br i1 %2600, label %2601, label %2625

2601:                                             ; preds = %2597
  %2602 = getelementptr i8, ptr %0, i64 2790
  %2603 = load i16, ptr %2602, align 2, !tbaa !28
  %2604 = icmp eq i16 %2603, 0
  br i1 %2604, label %2605, label %2625

2605:                                             ; preds = %2601
  %2606 = getelementptr i8, ptr %0, i64 2774
  %2607 = load i16, ptr %2606, align 2, !tbaa !28
  %2608 = icmp eq i16 %2607, 0
  br i1 %2608, label %2609, label %2625

2609:                                             ; preds = %2605
  %2610 = getelementptr i8, ptr %0, i64 2786
  %2611 = load i16, ptr %2610, align 2, !tbaa !28
  %2612 = icmp eq i16 %2611, 0
  br i1 %2612, label %2613, label %2625

2613:                                             ; preds = %2609
  %2614 = getelementptr i8, ptr %0, i64 2778
  %2615 = load i16, ptr %2614, align 2, !tbaa !28
  %2616 = icmp eq i16 %2615, 0
  br i1 %2616, label %2617, label %2625

2617:                                             ; preds = %2613
  %2618 = getelementptr i8, ptr %0, i64 2782
  %2619 = load i16, ptr %2618, align 2, !tbaa !28
  %2620 = icmp eq i16 %2619, 0
  br i1 %2620, label %2621, label %2625

2621:                                             ; preds = %2617
  %2622 = load i16, ptr %2561, align 2, !tbaa !28
  %2623 = icmp eq i16 %2622, 0
  %2624 = select i1 %2623, i32 2, i32 3
  br label %2625

2625:                                             ; preds = %2621, %2617, %2613, %2609, %2605, %2601, %2597, %2593, %2589, %2585, %2581, %2577, %2573, %2569, %2565, %.loopexit321
  %2626 = phi i32 [ 18, %.loopexit321 ], [ 17, %2565 ], [ 16, %2569 ], [ 15, %2573 ], [ 14, %2577 ], [ 13, %2581 ], [ 12, %2585 ], [ 11, %2589 ], [ 10, %2593 ], [ 9, %2597 ], [ 8, %2601 ], [ 7, %2605 ], [ 6, %2609 ], [ 5, %2613 ], [ 4, %2617 ], [ %2624, %2621 ]
  %2627 = mul nuw nsw i32 %2626, 3
  %2628 = add nuw nsw i32 %2627, 17
  %2629 = zext nneg i32 %2628 to i64
  %2630 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2631 = load i64, ptr %2630, align 8, !tbaa !51
  %2632 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2631, i64 %2629), !nosanitize !30
  %2633 = extractvalue { i64, i1 } %2632, 1, !nosanitize !30
  br i1 %2633, label %2634, label %2635, !prof !32, !nosanitize !30

2634:                                             ; preds = %2625
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2635:                                             ; preds = %2625
  %2636 = extractvalue { i64, i1 } %2632, 0, !nosanitize !30
  store i64 %2636, ptr %2630, align 8, !tbaa !51
  %2637 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2636, i64 3), !nosanitize !30
  %2638 = extractvalue { i64, i1 } %2637, 1, !nosanitize !30
  br i1 %2638, label %2639, label %2640, !prof !32, !nosanitize !30

2639:                                             ; preds = %2635
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2640:                                             ; preds = %2635
  %2641 = extractvalue { i64, i1 } %2637, 0, !nosanitize !30
  %2642 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2641, i64 7), !nosanitize !30
  %2643 = extractvalue { i64, i1 } %2642, 1, !nosanitize !30
  br i1 %2643, label %2644, label %2645, !prof !32, !nosanitize !30

2644:                                             ; preds = %2640
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2645:                                             ; preds = %2640
  %2646 = extractvalue { i64, i1 } %2642, 0, !nosanitize !30
  %2647 = lshr i64 %2646, 3
  %2648 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2649 = load i64, ptr %2648, align 8, !tbaa !52
  %2650 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2649, i64 3), !nosanitize !30
  %2651 = extractvalue { i64, i1 } %2650, 1, !nosanitize !30
  br i1 %2651, label %2652, label %2653, !prof !32, !nosanitize !30

2652:                                             ; preds = %2645
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2653:                                             ; preds = %2645
  %2654 = extractvalue { i64, i1 } %2650, 0, !nosanitize !30
  %2655 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2654, i64 7), !nosanitize !30
  %2656 = extractvalue { i64, i1 } %2655, 1, !nosanitize !30
  br i1 %2656, label %2657, label %2658, !prof !32, !nosanitize !30

2657:                                             ; preds = %2653
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2658:                                             ; preds = %2653
  %2659 = extractvalue { i64, i1 } %2655, 0, !nosanitize !30
  %2660 = lshr i64 %2659, 3
  %2661 = icmp samesign ugt i64 %2660, %2647
  br i1 %2661, label %2662, label %2666

2662:                                             ; preds = %2658
  %2663 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2664 = load i32, ptr %2663, align 8, !tbaa !78
  %2665 = icmp eq i32 %2664, 4
  br i1 %2665, label %2666, label %2673

2666:                                             ; preds = %2662, %2658
  br label %2673

2667:                                             ; preds = %4
  %2668 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 5), !nosanitize !30
  %2669 = extractvalue { i64, i1 } %2668, 1, !nosanitize !30
  br i1 %2669, label %2670, label %2671, !prof !32, !nosanitize !30

2670:                                             ; preds = %2667
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2671:                                             ; preds = %2667
  %2672 = extractvalue { i64, i1 } %2668, 0, !nosanitize !30
  br label %2673

2673:                                             ; preds = %2671, %2666, %2662
  %2674 = phi i32 [ %2626, %2666 ], [ %2626, %2662 ], [ 0, %2671 ]
  %2675 = phi i1 [ true, %2666 ], [ false, %2662 ], [ true, %2671 ]
  %2676 = phi i64 [ %2660, %2666 ], [ %2647, %2662 ], [ %2672, %2671 ]
  %2677 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 4), !nosanitize !30
  %2678 = extractvalue { i64, i1 } %2677, 1, !nosanitize !30
  br i1 %2678, label %2679, label %2680, !prof !32, !nosanitize !30

2679:                                             ; preds = %2846, %2673
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2680:                                             ; preds = %2673
  %2681 = extractvalue { i64, i1 } %2677, 0, !nosanitize !30
  %2682 = icmp ule i64 %2681, %2676
  %2683 = icmp ne ptr %1, null
  %2684 = and i1 %2683, %2682
  %2685 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2686 = load i32, ptr %2685, align 4, !tbaa !26
  %2687 = icmp sgt i32 %2686, 13
  br i1 %2684, label %2688, label %2841

2688:                                             ; preds = %2680
  br i1 %2687, label %2690, label %2727

2689:                                             ; preds = %2712
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2690:                                             ; preds = %2688
  %2691 = and i32 %3, 65535
  %2692 = shl i32 %3, %2686
  %2693 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2694 = load i16, ptr %2693, align 8, !tbaa !25
  %2695 = trunc i32 %2692 to i16
  %2696 = or i16 %2694, %2695
  store i16 %2696, ptr %2693, align 8, !tbaa !25
  %2697 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2698 = load i64, ptr %2697, align 8, !tbaa !31
  %2699 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2698, i64 1), !nosanitize !30
  %2700 = extractvalue { i64, i1 } %2699, 1, !nosanitize !30
  br i1 %2700, label %2701, label %2702, !prof !32, !nosanitize !30

2701:                                             ; preds = %2690
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2702:                                             ; preds = %2690
  %2703 = extractvalue { i64, i1 } %2699, 0, !nosanitize !30
  %2704 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2705 = load ptr, ptr %2704, align 8, !tbaa !33
  %2706 = trunc i16 %2696 to i8
  store i64 %2703, ptr %2697, align 8, !tbaa !31
  %2707 = getelementptr inbounds nuw i8, ptr %2705, i64 %2698
  store i8 %2706, ptr %2707, align 1, !tbaa !28
  %2708 = load i64, ptr %2697, align 8, !tbaa !31
  %2709 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2708, i64 1), !nosanitize !30
  %2710 = extractvalue { i64, i1 } %2709, 1, !nosanitize !30
  br i1 %2710, label %2711, label %2712, !prof !32, !nosanitize !30

2711:                                             ; preds = %2702
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2712:                                             ; preds = %2702
  %2713 = extractvalue { i64, i1 } %2709, 0, !nosanitize !30
  %2714 = load ptr, ptr %2704, align 8, !tbaa !33
  %2715 = load i16, ptr %2693, align 8, !tbaa !25
  %2716 = lshr i16 %2715, 8
  %2717 = trunc nuw i16 %2716 to i8
  store i64 %2713, ptr %2697, align 8, !tbaa !31
  %2718 = getelementptr inbounds nuw i8, ptr %2714, i64 %2708
  store i8 %2717, ptr %2718, align 1, !tbaa !28
  %2719 = load i32, ptr %2685, align 4, !tbaa !26
  %2720 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2719), !nosanitize !30
  %2721 = extractvalue { i32, i1 } %2720, 1, !nosanitize !30
  br i1 %2721, label %2689, label %2722, !prof !32, !nosanitize !30

2722:                                             ; preds = %2712
  %2723 = extractvalue { i32, i1 } %2720, 0, !nosanitize !30
  %2724 = lshr i32 %2691, %2723
  %2725 = trunc nuw i32 %2724 to i16
  store i16 %2725, ptr %2693, align 8, !tbaa !25
  %2726 = add i32 %2719, -13
  br label %2734

2727:                                             ; preds = %2688
  %2728 = shl i32 %3, %2686
  %2729 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2730 = load i16, ptr %2729, align 8, !tbaa !25
  %2731 = trunc i32 %2728 to i16
  %2732 = or i16 %2730, %2731
  store i16 %2732, ptr %2729, align 8, !tbaa !25
  %2733 = add nsw i32 %2686, 3
  br label %2734

2734:                                             ; preds = %2722, %2727
  %2735 = phi i16 [ %2725, %2722 ], [ %2732, %2727 ]
  %2736 = phi i32 [ %2726, %2722 ], [ %2733, %2727 ]
  store i32 %2736, ptr %2685, align 4, !tbaa !26
  %2737 = icmp sgt i32 %2736, 8
  br i1 %2737, label %2738, label %2762

2738:                                             ; preds = %2734
  %2739 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2740 = load i64, ptr %2739, align 8, !tbaa !31
  %2741 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2740, i64 1), !nosanitize !30
  %2742 = extractvalue { i64, i1 } %2741, 1, !nosanitize !30
  br i1 %2742, label %2743, label %2744, !prof !32, !nosanitize !30

2743:                                             ; preds = %2738
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2744:                                             ; preds = %2738
  %2745 = extractvalue { i64, i1 } %2741, 0, !nosanitize !30
  %2746 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2747 = load ptr, ptr %2746, align 8, !tbaa !33
  %2748 = trunc i16 %2735 to i8
  store i64 %2745, ptr %2739, align 8, !tbaa !31
  %2749 = getelementptr inbounds nuw i8, ptr %2747, i64 %2740
  store i8 %2748, ptr %2749, align 1, !tbaa !28
  %2750 = load i64, ptr %2739, align 8, !tbaa !31
  %2751 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2750, i64 1), !nosanitize !30
  %2752 = extractvalue { i64, i1 } %2751, 1, !nosanitize !30
  br i1 %2752, label %2753, label %2754, !prof !32, !nosanitize !30

2753:                                             ; preds = %2744
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2754:                                             ; preds = %2744
  %2755 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2756 = extractvalue { i64, i1 } %2751, 0, !nosanitize !30
  %2757 = load ptr, ptr %2746, align 8, !tbaa !33
  %2758 = load i16, ptr %2755, align 8, !tbaa !25
  %2759 = lshr i16 %2758, 8
  %2760 = trunc nuw i16 %2759 to i8
  store i64 %2756, ptr %2739, align 8, !tbaa !31
  %2761 = getelementptr inbounds nuw i8, ptr %2757, i64 %2750
  store i8 %2760, ptr %2761, align 1, !tbaa !28
  br label %2776

2762:                                             ; preds = %2734
  %2763 = icmp sgt i32 %2736, 0
  br i1 %2763, label %2764, label %2776

2764:                                             ; preds = %2762
  %2765 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2766 = load i64, ptr %2765, align 8, !tbaa !31
  %2767 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2766, i64 1), !nosanitize !30
  %2768 = extractvalue { i64, i1 } %2767, 1, !nosanitize !30
  br i1 %2768, label %2769, label %2770, !prof !32, !nosanitize !30

2769:                                             ; preds = %2764
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2770:                                             ; preds = %2764
  %2771 = extractvalue { i64, i1 } %2767, 0, !nosanitize !30
  %2772 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2773 = load ptr, ptr %2772, align 8, !tbaa !33
  %2774 = trunc i16 %2735 to i8
  store i64 %2771, ptr %2765, align 8, !tbaa !31
  %2775 = getelementptr inbounds nuw i8, ptr %2773, i64 %2766
  store i8 %2774, ptr %2775, align 1, !tbaa !28
  br label %2776

2776:                                             ; preds = %2770, %2762, %2754
  %2777 = load i32, ptr %2685, align 4, !tbaa !26
  %2778 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2777, i32 -1)
  %2779 = extractvalue { i32, i1 } %2778, 1, !nosanitize !30
  br i1 %2779, label %2780, label %2781, !prof !32, !nosanitize !30

2780:                                             ; preds = %2776
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2781:                                             ; preds = %2776
  %2782 = extractvalue { i32, i1 } %2778, 0, !nosanitize !30
  %2783 = and i32 %2782, 7
  %2784 = add nuw nsw i32 %2783, 1
  %2785 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %2784, ptr %2785, align 8, !tbaa !27
  %2786 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %2786, align 8, !tbaa !25
  store i32 0, ptr %2685, align 4, !tbaa !26
  %2787 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2788 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2789 = load i64, ptr %2788, align 8, !tbaa !31
  %2790 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2789, i64 1), !nosanitize !30
  %2791 = extractvalue { i64, i1 } %2790, 1, !nosanitize !30
  br i1 %2791, label %2792, label %2793, !prof !32, !nosanitize !30

2792:                                             ; preds = %2781
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2793:                                             ; preds = %2781
  %2794 = extractvalue { i64, i1 } %2790, 0, !nosanitize !30
  %2795 = load ptr, ptr %2787, align 8, !tbaa !33
  %2796 = trunc i64 %2 to i8
  store i64 %2794, ptr %2788, align 8, !tbaa !31
  %2797 = getelementptr inbounds nuw i8, ptr %2795, i64 %2789
  store i8 %2796, ptr %2797, align 1, !tbaa !28
  %2798 = load i64, ptr %2788, align 8, !tbaa !31
  %2799 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2798, i64 1), !nosanitize !30
  %2800 = extractvalue { i64, i1 } %2799, 1, !nosanitize !30
  br i1 %2800, label %2801, label %2802, !prof !32, !nosanitize !30

2801:                                             ; preds = %2793
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2802:                                             ; preds = %2793
  %2803 = extractvalue { i64, i1 } %2799, 0, !nosanitize !30
  %2804 = load ptr, ptr %2787, align 8, !tbaa !33
  %2805 = lshr i64 %2, 8
  %2806 = trunc i64 %2805 to i8
  store i64 %2803, ptr %2788, align 8, !tbaa !31
  %2807 = getelementptr inbounds nuw i8, ptr %2804, i64 %2798
  store i8 %2806, ptr %2807, align 1, !tbaa !28
  %2808 = load i64, ptr %2788, align 8, !tbaa !31
  %2809 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2808, i64 1), !nosanitize !30
  %2810 = extractvalue { i64, i1 } %2809, 1, !nosanitize !30
  br i1 %2810, label %2811, label %2812, !prof !32, !nosanitize !30

2811:                                             ; preds = %2802
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2812:                                             ; preds = %2802
  %2813 = extractvalue { i64, i1 } %2809, 0, !nosanitize !30
  %2814 = load ptr, ptr %2787, align 8, !tbaa !33
  %2815 = trunc i64 %2 to i32
  %2816 = xor i32 %2815, 65535
  %2817 = trunc i32 %2816 to i8
  store i64 %2813, ptr %2788, align 8, !tbaa !31
  %2818 = getelementptr inbounds nuw i8, ptr %2814, i64 %2808
  store i8 %2817, ptr %2818, align 1, !tbaa !28
  %2819 = load i64, ptr %2788, align 8, !tbaa !31
  %2820 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2819, i64 1), !nosanitize !30
  %2821 = extractvalue { i64, i1 } %2820, 1, !nosanitize !30
  br i1 %2821, label %2822, label %2823, !prof !32, !nosanitize !30

2822:                                             ; preds = %2812
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2823:                                             ; preds = %2812
  %2824 = extractvalue { i64, i1 } %2820, 0, !nosanitize !30
  %2825 = load ptr, ptr %2787, align 8, !tbaa !33
  %2826 = lshr i32 %2816, 8
  %2827 = trunc i32 %2826 to i8
  store i64 %2824, ptr %2788, align 8, !tbaa !31
  %2828 = getelementptr inbounds nuw i8, ptr %2825, i64 %2819
  store i8 %2827, ptr %2828, align 1, !tbaa !28
  %2829 = icmp eq i64 %2, 0
  br i1 %2829, label %2834, label %2830

2830:                                             ; preds = %2823
  %2831 = load ptr, ptr %2787, align 8, !tbaa !33
  %2832 = load i64, ptr %2788, align 8, !tbaa !31
  %2833 = getelementptr inbounds nuw i8, ptr %2831, i64 %2832
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2833, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %2834

2834:                                             ; preds = %2830, %2823
  %2835 = load i64, ptr %2788, align 8, !tbaa !31
  %2836 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2835, i64 %2), !nosanitize !30
  %2837 = extractvalue { i64, i1 } %2836, 1, !nosanitize !30
  br i1 %2837, label %2838, label %2839, !prof !32, !nosanitize !30

2838:                                             ; preds = %2834
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2839:                                             ; preds = %2834
  %2840 = extractvalue { i64, i1 } %2836, 0, !nosanitize !30
  store i64 %2840, ptr %2788, align 8, !tbaa !31
  br label %4790

2841:                                             ; preds = %2680
  br i1 %2675, label %2842, label %3254

2842:                                             ; preds = %2841
  %2843 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2), !nosanitize !30
  %2844 = extractvalue { i32, i1 } %2843, 1, !nosanitize !30
  br i1 %2687, label %2846, label %2885

2845:                                             ; preds = %3281, %2870
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2846:                                             ; preds = %2842
  br i1 %2844, label %2679, label %2847, !prof !32, !nosanitize !30

2847:                                             ; preds = %2846
  %2848 = extractvalue { i32, i1 } %2843, 0, !nosanitize !30
  %2849 = and i32 %2848, 65535
  %2850 = shl i32 %2848, %2686
  %2851 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2852 = load i16, ptr %2851, align 8, !tbaa !25
  %2853 = trunc i32 %2850 to i16
  %2854 = or i16 %2852, %2853
  store i16 %2854, ptr %2851, align 8, !tbaa !25
  %2855 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2856 = load i64, ptr %2855, align 8, !tbaa !31
  %2857 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2856, i64 1), !nosanitize !30
  %2858 = extractvalue { i64, i1 } %2857, 1, !nosanitize !30
  br i1 %2858, label %2859, label %2860, !prof !32, !nosanitize !30

2859:                                             ; preds = %2847
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2860:                                             ; preds = %2847
  %2861 = extractvalue { i64, i1 } %2857, 0, !nosanitize !30
  %2862 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2863 = load ptr, ptr %2862, align 8, !tbaa !33
  %2864 = trunc i16 %2854 to i8
  store i64 %2861, ptr %2855, align 8, !tbaa !31
  %2865 = getelementptr inbounds nuw i8, ptr %2863, i64 %2856
  store i8 %2864, ptr %2865, align 1, !tbaa !28
  %2866 = load i64, ptr %2855, align 8, !tbaa !31
  %2867 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2866, i64 1), !nosanitize !30
  %2868 = extractvalue { i64, i1 } %2867, 1, !nosanitize !30
  br i1 %2868, label %2869, label %2870, !prof !32, !nosanitize !30

2869:                                             ; preds = %3257, %2885, %2860
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2870:                                             ; preds = %2860
  %2871 = extractvalue { i64, i1 } %2867, 0, !nosanitize !30
  %2872 = load ptr, ptr %2862, align 8, !tbaa !33
  %2873 = load i16, ptr %2851, align 8, !tbaa !25
  %2874 = lshr i16 %2873, 8
  %2875 = trunc nuw i16 %2874 to i8
  store i64 %2871, ptr %2855, align 8, !tbaa !31
  %2876 = getelementptr inbounds nuw i8, ptr %2872, i64 %2866
  store i8 %2875, ptr %2876, align 1, !tbaa !28
  %2877 = load i32, ptr %2685, align 4, !tbaa !26
  %2878 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2877), !nosanitize !30
  %2879 = extractvalue { i32, i1 } %2878, 1, !nosanitize !30
  br i1 %2879, label %2845, label %2880, !prof !32, !nosanitize !30

2880:                                             ; preds = %2870
  %2881 = extractvalue { i32, i1 } %2878, 0, !nosanitize !30
  %2882 = lshr i32 %2849, %2881
  %2883 = trunc nuw i32 %2882 to i16
  store i16 %2883, ptr %2851, align 8, !tbaa !25
  %2884 = add i32 %2877, -13
  br label %2894

2885:                                             ; preds = %2842
  br i1 %2844, label %2869, label %2886, !prof !32, !nosanitize !30

2886:                                             ; preds = %2885
  %2887 = extractvalue { i32, i1 } %2843, 0, !nosanitize !30
  %2888 = shl i32 %2887, %2686
  %2889 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2890 = load i16, ptr %2889, align 8, !tbaa !25
  %2891 = trunc i32 %2888 to i16
  %2892 = or i16 %2890, %2891
  store i16 %2892, ptr %2889, align 8, !tbaa !25
  %2893 = add nsw i32 %2686, 3
  br label %2894

2894:                                             ; preds = %2880, %2886
  %2895 = phi i16 [ %2883, %2880 ], [ %2892, %2886 ]
  %2896 = phi i32 [ %2884, %2880 ], [ %2893, %2886 ]
  store i32 %2896, ptr %2685, align 4, !tbaa !26
  %2897 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %2898 = load i32, ptr %2897, align 4, !tbaa !29
  %2899 = icmp eq i32 %2898, 0
  br i1 %2899, label %.loopexit305, label %2900

2900:                                             ; preds = %2894
  %2901 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %2902 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2903 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2904 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %2905

2905:                                             ; preds = %3213, %2900
  %2906 = phi i16 [ %3214, %3213 ], [ %2895, %2900 ]
  %2907 = phi i32 [ %3215, %3213 ], [ %2896, %2900 ]
  %2908 = phi i32 [ %2927, %3213 ], [ 0, %2900 ]
  %2909 = load ptr, ptr %2901, align 8, !tbaa !79
  %2910 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2908, i32 2)
  %2911 = extractvalue { i32, i1 } %2910, 0, !nosanitize !30
  %2912 = extractvalue { i32, i1 } %2910, 1, !nosanitize !30
  br i1 %2912, label %2913, label %2914, !prof !32, !nosanitize !30

2913:                                             ; preds = %2905
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2914:                                             ; preds = %2905
  %2915 = add nuw i32 %2908, 1
  %2916 = zext i32 %2908 to i64
  %2917 = getelementptr inbounds nuw i8, ptr %2909, i64 %2916
  %2918 = load i8, ptr %2917, align 1, !tbaa !28
  %2919 = zext i8 %2918 to i32
  %2920 = zext i32 %2915 to i64
  %2921 = getelementptr inbounds nuw i8, ptr %2909, i64 %2920
  %2922 = load i8, ptr %2921, align 1, !tbaa !28
  %2923 = zext i8 %2922 to i32
  %2924 = shl nuw nsw i32 %2923, 8
  %2925 = or disjoint i32 %2924, %2919
  %2926 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2911, i32 1), !nosanitize !30
  %2927 = extractvalue { i32, i1 } %2926, 0, !nosanitize !30
  %2928 = extractvalue { i32, i1 } %2926, 1, !nosanitize !30
  br i1 %2928, label %2929, label %2930, !prof !32, !nosanitize !30

2929:                                             ; preds = %2914
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2930:                                             ; preds = %2914
  %2931 = zext i32 %2911 to i64
  %2932 = getelementptr inbounds nuw i8, ptr %2909, i64 %2931
  %2933 = load i8, ptr %2932, align 1, !tbaa !28
  %2934 = zext i8 %2933 to i32
  %2935 = icmp eq i32 %2925, 0
  %2936 = zext i8 %2933 to i64
  br i1 %2935, label %2937, label %2984

2937:                                             ; preds = %2930
  %2938 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2936
  %2939 = getelementptr inbounds nuw i8, ptr %2938, i64 2
  %2940 = load i16, ptr %2939, align 2, !tbaa !28
  %2941 = zext i16 %2940 to i32
  %2942 = sub nsw i32 16, %2941
  %2943 = icmp sgt i32 %2907, %2942
  %2944 = load i16, ptr %2938, align 4, !tbaa !28
  %2945 = zext i16 %2944 to i32
  %2946 = shl i32 %2945, %2907
  %2947 = trunc i32 %2946 to i16
  %2948 = or i16 %2906, %2947
  store i16 %2948, ptr %2902, align 8, !tbaa !25
  br i1 %2943, label %2950, label %2981

2949:                                             ; preds = %3072, %3048, %3042, %3014, %2964
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2950:                                             ; preds = %2937
  %2951 = load i64, ptr %2903, align 8, !tbaa !31
  %2952 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2951, i64 1), !nosanitize !30
  %2953 = extractvalue { i64, i1 } %2952, 1, !nosanitize !30
  br i1 %2953, label %2954, label %2955, !prof !32, !nosanitize !30

2954:                                             ; preds = %2950
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2955:                                             ; preds = %2950
  %2956 = extractvalue { i64, i1 } %2952, 0, !nosanitize !30
  %2957 = load ptr, ptr %2904, align 8, !tbaa !33
  %2958 = trunc i16 %2948 to i8
  store i64 %2956, ptr %2903, align 8, !tbaa !31
  %2959 = getelementptr inbounds nuw i8, ptr %2957, i64 %2951
  store i8 %2958, ptr %2959, align 1, !tbaa !28
  %2960 = load i64, ptr %2903, align 8, !tbaa !31
  %2961 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2960, i64 1), !nosanitize !30
  %2962 = extractvalue { i64, i1 } %2961, 1, !nosanitize !30
  br i1 %2962, label %2963, label %2964, !prof !32, !nosanitize !30

2963:                                             ; preds = %2974, %2955
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2964:                                             ; preds = %2955
  %2965 = extractvalue { i64, i1 } %2961, 0, !nosanitize !30
  %2966 = load ptr, ptr %2904, align 8, !tbaa !33
  %2967 = load i16, ptr %2902, align 8, !tbaa !25
  %2968 = lshr i16 %2967, 8
  %2969 = trunc nuw i16 %2968 to i8
  store i64 %2965, ptr %2903, align 8, !tbaa !31
  %2970 = getelementptr inbounds nuw i8, ptr %2966, i64 %2960
  store i8 %2969, ptr %2970, align 1, !tbaa !28
  %2971 = load i32, ptr %2685, align 4, !tbaa !26
  %2972 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2971), !nosanitize !30
  %2973 = extractvalue { i32, i1 } %2972, 1, !nosanitize !30
  br i1 %2973, label %2949, label %2974, !prof !32, !nosanitize !30

2974:                                             ; preds = %2964
  %2975 = extractvalue { i32, i1 } %2972, 0, !nosanitize !30
  %2976 = lshr i32 %2945, %2975
  %2977 = trunc nuw i32 %2976 to i16
  store i16 %2977, ptr %2902, align 8, !tbaa !25
  %2978 = add nsw i32 %2941, -16
  %2979 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2971, i32 %2978), !nosanitize !30
  %2980 = extractvalue { i32, i1 } %2979, 1, !nosanitize !30
  br i1 %2980, label %2963, label %3209, !prof !32, !nosanitize !30

2981:                                             ; preds = %2937
  %2982 = add nsw i32 %2907, %2941
  %2983 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2982, 0
  br label %3209

2984:                                             ; preds = %2930
  %2985 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %2936
  %2986 = load i8, ptr %2985, align 1, !tbaa !28
  %2987 = zext i8 %2986 to i64
  %2988 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2987
  %2989 = getelementptr inbounds nuw i8, ptr %2988, i64 1028
  %2990 = getelementptr inbounds nuw i8, ptr %2988, i64 1030
  %2991 = load i16, ptr %2990, align 2, !tbaa !28
  %2992 = zext i16 %2991 to i32
  %2993 = sub nsw i32 16, %2992
  %2994 = icmp sgt i32 %2907, %2993
  %2995 = load i16, ptr %2989, align 4, !tbaa !28
  %2996 = zext i16 %2995 to i32
  %2997 = shl i32 %2996, %2907
  %2998 = trunc i32 %2997 to i16
  %2999 = or i16 %2906, %2998
  store i16 %2999, ptr %2902, align 8, !tbaa !25
  br i1 %2994, label %3000, label %3031

3000:                                             ; preds = %2984
  %3001 = load i64, ptr %2903, align 8, !tbaa !31
  %3002 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3001, i64 1), !nosanitize !30
  %3003 = extractvalue { i64, i1 } %3002, 1, !nosanitize !30
  br i1 %3003, label %3004, label %3005, !prof !32, !nosanitize !30

3004:                                             ; preds = %3000
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3005:                                             ; preds = %3000
  %3006 = extractvalue { i64, i1 } %3002, 0, !nosanitize !30
  %3007 = load ptr, ptr %2904, align 8, !tbaa !33
  %3008 = trunc i16 %2999 to i8
  store i64 %3006, ptr %2903, align 8, !tbaa !31
  %3009 = getelementptr inbounds nuw i8, ptr %3007, i64 %3001
  store i8 %3008, ptr %3009, align 1, !tbaa !28
  %3010 = load i64, ptr %2903, align 8, !tbaa !31
  %3011 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3010, i64 1), !nosanitize !30
  %3012 = extractvalue { i64, i1 } %3011, 1, !nosanitize !30
  br i1 %3012, label %3013, label %3014, !prof !32, !nosanitize !30

3013:                                             ; preds = %3024, %3005
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3014:                                             ; preds = %3005
  %3015 = extractvalue { i64, i1 } %3011, 0, !nosanitize !30
  %3016 = load ptr, ptr %2904, align 8, !tbaa !33
  %3017 = load i16, ptr %2902, align 8, !tbaa !25
  %3018 = lshr i16 %3017, 8
  %3019 = trunc nuw i16 %3018 to i8
  store i64 %3015, ptr %2903, align 8, !tbaa !31
  %3020 = getelementptr inbounds nuw i8, ptr %3016, i64 %3010
  store i8 %3019, ptr %3020, align 1, !tbaa !28
  %3021 = load i32, ptr %2685, align 4, !tbaa !26
  %3022 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3021), !nosanitize !30
  %3023 = extractvalue { i32, i1 } %3022, 1, !nosanitize !30
  br i1 %3023, label %2949, label %3024, !prof !32, !nosanitize !30

3024:                                             ; preds = %3014
  %3025 = extractvalue { i32, i1 } %3022, 0, !nosanitize !30
  %3026 = lshr i32 %2996, %3025
  %3027 = trunc nuw i32 %3026 to i16
  store i16 %3027, ptr %2902, align 8, !tbaa !25
  %3028 = add nsw i32 %2992, -16
  %3029 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3021, i32 %3028), !nosanitize !30
  %3030 = extractvalue { i32, i1 } %3029, 1, !nosanitize !30
  br i1 %3030, label %3013, label %3034, !prof !32, !nosanitize !30

3031:                                             ; preds = %2984
  %3032 = add nsw i32 %2907, %2992
  %3033 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3032, 0
  br label %3034

3034:                                             ; preds = %3031, %3024
  %3035 = phi i16 [ %3027, %3024 ], [ %2999, %3031 ]
  %3036 = phi { i32, i1 } [ %3029, %3024 ], [ %3033, %3031 ]
  %3037 = extractvalue { i32, i1 } %3036, 0
  store i32 %3037, ptr %2685, align 4, !tbaa !26
  %3038 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %2987
  %3039 = load i32, ptr %3038, align 4, !tbaa !49
  %3040 = add i8 %2986, -28
  %3041 = icmp ult i8 %3040, -20
  br i1 %3041, label %3099, label %3042

3042:                                             ; preds = %3034
  %3043 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %2987
  %3044 = load i32, ptr %3043, align 4, !tbaa !49
  %3045 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2934, i32 %3044), !nosanitize !30
  %3046 = extractvalue { i32, i1 } %3045, 0, !nosanitize !30
  %3047 = extractvalue { i32, i1 } %3045, 1, !nosanitize !30
  br i1 %3047, label %2949, label %3048, !prof !32, !nosanitize !30

3048:                                             ; preds = %3042
  %3049 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3039), !nosanitize !30
  %3050 = extractvalue { i32, i1 } %3049, 1, !nosanitize !30
  br i1 %3050, label %2949, label %3051, !prof !32, !nosanitize !30

3051:                                             ; preds = %3048
  %3052 = extractvalue { i32, i1 } %3049, 0, !nosanitize !30
  %3053 = icmp sgt i32 %3037, %3052
  br i1 %3053, label %3054, label %3089

3054:                                             ; preds = %3051
  %3055 = and i32 %3046, 65535
  %3056 = shl i32 %3046, %3037
  %3057 = trunc i32 %3056 to i16
  %3058 = or i16 %3035, %3057
  store i16 %3058, ptr %2902, align 8, !tbaa !25
  %3059 = load i64, ptr %2903, align 8, !tbaa !31
  %3060 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3059, i64 1), !nosanitize !30
  %3061 = extractvalue { i64, i1 } %3060, 1, !nosanitize !30
  br i1 %3061, label %3062, label %3063, !prof !32, !nosanitize !30

3062:                                             ; preds = %3054
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3063:                                             ; preds = %3054
  %3064 = extractvalue { i64, i1 } %3060, 0, !nosanitize !30
  %3065 = load ptr, ptr %2904, align 8, !tbaa !33
  %3066 = trunc i16 %3058 to i8
  store i64 %3064, ptr %2903, align 8, !tbaa !31
  %3067 = getelementptr inbounds nuw i8, ptr %3065, i64 %3059
  store i8 %3066, ptr %3067, align 1, !tbaa !28
  %3068 = load i64, ptr %2903, align 8, !tbaa !31
  %3069 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3068, i64 1), !nosanitize !30
  %3070 = extractvalue { i64, i1 } %3069, 1, !nosanitize !30
  br i1 %3070, label %3071, label %3072, !prof !32, !nosanitize !30

3071:                                             ; preds = %3089, %3082, %3063
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3072:                                             ; preds = %3063
  %3073 = extractvalue { i64, i1 } %3069, 0, !nosanitize !30
  %3074 = load ptr, ptr %2904, align 8, !tbaa !33
  %3075 = load i16, ptr %2902, align 8, !tbaa !25
  %3076 = lshr i16 %3075, 8
  %3077 = trunc nuw i16 %3076 to i8
  store i64 %3073, ptr %2903, align 8, !tbaa !31
  %3078 = getelementptr inbounds nuw i8, ptr %3074, i64 %3068
  store i8 %3077, ptr %3078, align 1, !tbaa !28
  %3079 = load i32, ptr %2685, align 4, !tbaa !26
  %3080 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3079), !nosanitize !30
  %3081 = extractvalue { i32, i1 } %3080, 1, !nosanitize !30
  br i1 %3081, label %2949, label %3082, !prof !32, !nosanitize !30

3082:                                             ; preds = %3072
  %3083 = extractvalue { i32, i1 } %3080, 0, !nosanitize !30
  %3084 = lshr i32 %3055, %3083
  %3085 = trunc nuw i32 %3084 to i16
  store i16 %3085, ptr %2902, align 8, !tbaa !25
  %3086 = add i32 %3039, -16
  %3087 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3079, i32 %3086), !nosanitize !30
  %3088 = extractvalue { i32, i1 } %3087, 1, !nosanitize !30
  br i1 %3088, label %3071, label %3095, !prof !32, !nosanitize !30

3089:                                             ; preds = %3051
  %3090 = shl i32 %3046, %3037
  %3091 = trunc i32 %3090 to i16
  %3092 = or i16 %3035, %3091
  store i16 %3092, ptr %2902, align 8, !tbaa !25
  %3093 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3037, i32 %3039), !nosanitize !30
  %3094 = extractvalue { i32, i1 } %3093, 1, !nosanitize !30
  br i1 %3094, label %3071, label %3095, !prof !32, !nosanitize !30

3095:                                             ; preds = %3089, %3082
  %3096 = phi i16 [ %3085, %3082 ], [ %3092, %3089 ]
  %3097 = phi { i32, i1 } [ %3087, %3082 ], [ %3093, %3089 ]
  %3098 = extractvalue { i32, i1 } %3097, 0
  store i32 %3098, ptr %2685, align 4, !tbaa !26
  br label %3099

3099:                                             ; preds = %3095, %3034
  %3100 = phi i16 [ %3096, %3095 ], [ %3035, %3034 ]
  %3101 = phi i32 [ %3098, %3095 ], [ %3037, %3034 ]
  %3102 = add nsw i32 %2925, -1
  %3103 = icmp samesign ult i32 %2925, 257
  %3104 = lshr i32 %3102, 7
  %3105 = add nuw nsw i32 %3104, 256
  %3106 = select i1 %3103, i32 %3102, i32 %3105
  %3107 = zext nneg i32 %3106 to i64
  %3108 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %3107
  %3109 = load i8, ptr %3108, align 1, !tbaa !28
  %3110 = zext i8 %3109 to i64
  %3111 = getelementptr inbounds nuw [4 x i8], ptr @static_dtree, i64 %3110
  %3112 = icmp sgt i32 %3101, 11
  %3113 = load i16, ptr %3111, align 4, !tbaa !28
  %3114 = zext i16 %3113 to i32
  %3115 = shl i32 %3114, %3101
  %3116 = trunc i32 %3115 to i16
  %3117 = or i16 %3100, %3116
  store i16 %3117, ptr %2902, align 8, !tbaa !25
  br i1 %3112, label %3119, label %3148

3118:                                             ; preds = %3133
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

3119:                                             ; preds = %3099
  %3120 = load i64, ptr %2903, align 8, !tbaa !31
  %3121 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3120, i64 1), !nosanitize !30
  %3122 = extractvalue { i64, i1 } %3121, 1, !nosanitize !30
  br i1 %3122, label %3123, label %3124, !prof !32, !nosanitize !30

3123:                                             ; preds = %3119
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3124:                                             ; preds = %3119
  %3125 = extractvalue { i64, i1 } %3121, 0, !nosanitize !30
  %3126 = load ptr, ptr %2904, align 8, !tbaa !33
  %3127 = trunc i16 %3117 to i8
  store i64 %3125, ptr %2903, align 8, !tbaa !31
  %3128 = getelementptr inbounds nuw i8, ptr %3126, i64 %3120
  store i8 %3127, ptr %3128, align 1, !tbaa !28
  %3129 = load i64, ptr %2903, align 8, !tbaa !31
  %3130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3129, i64 1), !nosanitize !30
  %3131 = extractvalue { i64, i1 } %3130, 1, !nosanitize !30
  br i1 %3131, label %3132, label %3133, !prof !32, !nosanitize !30

3132:                                             ; preds = %3124
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3133:                                             ; preds = %3124
  %3134 = extractvalue { i64, i1 } %3130, 0, !nosanitize !30
  %3135 = load ptr, ptr %2904, align 8, !tbaa !33
  %3136 = load i16, ptr %2902, align 8, !tbaa !25
  %3137 = lshr i16 %3136, 8
  %3138 = trunc nuw i16 %3137 to i8
  store i64 %3134, ptr %2903, align 8, !tbaa !31
  %3139 = getelementptr inbounds nuw i8, ptr %3135, i64 %3129
  store i8 %3138, ptr %3139, align 1, !tbaa !28
  %3140 = load i32, ptr %2685, align 4, !tbaa !26
  %3141 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3140), !nosanitize !30
  %3142 = extractvalue { i32, i1 } %3141, 1, !nosanitize !30
  br i1 %3142, label %3118, label %3143, !prof !32, !nosanitize !30

3143:                                             ; preds = %3133
  %3144 = extractvalue { i32, i1 } %3141, 0, !nosanitize !30
  %3145 = lshr i32 %3114, %3144
  %3146 = trunc nuw i32 %3145 to i16
  store i16 %3146, ptr %2902, align 8, !tbaa !25
  %3147 = add i32 %3140, -11
  br label %3150

3148:                                             ; preds = %3099
  %3149 = add nsw i32 %3101, 5
  br label %3150

3150:                                             ; preds = %3143, %3148
  %3151 = phi i16 [ %3146, %3143 ], [ %3117, %3148 ]
  %3152 = phi i32 [ %3147, %3143 ], [ %3149, %3148 ]
  store i32 %3152, ptr %2685, align 4, !tbaa !26
  %3153 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %3110
  %3154 = load i32, ptr %3153, align 4, !tbaa !49
  %3155 = icmp ult i8 %3109, 4
  br i1 %3155, label %3213, label %3156

3156:                                             ; preds = %3150
  %3157 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %3110
  %3158 = load i32, ptr %3157, align 4, !tbaa !49
  %3159 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %3102, i32 %3158), !nosanitize !30
  %3160 = extractvalue { i32, i1 } %3159, 0, !nosanitize !30
  %3161 = extractvalue { i32, i1 } %3159, 1, !nosanitize !30
  br i1 %3161, label %.loopexit304, label %3162, !prof !32, !nosanitize !30

.loopexit304:                                     ; preds = %3186, %3162, %3156, %3238
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

3162:                                             ; preds = %3156
  %3163 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3154), !nosanitize !30
  %3164 = extractvalue { i32, i1 } %3163, 1, !nosanitize !30
  br i1 %3164, label %.loopexit304, label %3165, !prof !32, !nosanitize !30

3165:                                             ; preds = %3162
  %3166 = extractvalue { i32, i1 } %3163, 0, !nosanitize !30
  %3167 = icmp sgt i32 %3152, %3166
  br i1 %3167, label %3168, label %3203

3168:                                             ; preds = %3165
  %3169 = and i32 %3160, 65535
  %3170 = shl i32 %3160, %3152
  %3171 = trunc i32 %3170 to i16
  %3172 = or i16 %3151, %3171
  store i16 %3172, ptr %2902, align 8, !tbaa !25
  %3173 = load i64, ptr %2903, align 8, !tbaa !31
  %3174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3173, i64 1), !nosanitize !30
  %3175 = extractvalue { i64, i1 } %3174, 1, !nosanitize !30
  br i1 %3175, label %3176, label %3177, !prof !32, !nosanitize !30

3176:                                             ; preds = %3168
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3177:                                             ; preds = %3168
  %3178 = extractvalue { i64, i1 } %3174, 0, !nosanitize !30
  %3179 = load ptr, ptr %2904, align 8, !tbaa !33
  %3180 = trunc i16 %3172 to i8
  store i64 %3178, ptr %2903, align 8, !tbaa !31
  %3181 = getelementptr inbounds nuw i8, ptr %3179, i64 %3173
  store i8 %3180, ptr %3181, align 1, !tbaa !28
  %3182 = load i64, ptr %2903, align 8, !tbaa !31
  %3183 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3182, i64 1), !nosanitize !30
  %3184 = extractvalue { i64, i1 } %3183, 1, !nosanitize !30
  br i1 %3184, label %3185, label %3186, !prof !32, !nosanitize !30

3185:                                             ; preds = %3203, %3196, %3177
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3186:                                             ; preds = %3177
  %3187 = extractvalue { i64, i1 } %3183, 0, !nosanitize !30
  %3188 = load ptr, ptr %2904, align 8, !tbaa !33
  %3189 = load i16, ptr %2902, align 8, !tbaa !25
  %3190 = lshr i16 %3189, 8
  %3191 = trunc nuw i16 %3190 to i8
  store i64 %3187, ptr %2903, align 8, !tbaa !31
  %3192 = getelementptr inbounds nuw i8, ptr %3188, i64 %3182
  store i8 %3191, ptr %3192, align 1, !tbaa !28
  %3193 = load i32, ptr %2685, align 4, !tbaa !26
  %3194 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3193), !nosanitize !30
  %3195 = extractvalue { i32, i1 } %3194, 1, !nosanitize !30
  br i1 %3195, label %.loopexit304, label %3196, !prof !32, !nosanitize !30

3196:                                             ; preds = %3186
  %3197 = extractvalue { i32, i1 } %3194, 0, !nosanitize !30
  %3198 = lshr i32 %3169, %3197
  %3199 = trunc nuw i32 %3198 to i16
  store i16 %3199, ptr %2902, align 8, !tbaa !25
  %3200 = add i32 %3154, -16
  %3201 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3193, i32 %3200), !nosanitize !30
  %3202 = extractvalue { i32, i1 } %3201, 1, !nosanitize !30
  br i1 %3202, label %3185, label %3209, !prof !32, !nosanitize !30

3203:                                             ; preds = %3165
  %3204 = shl i32 %3160, %3152
  %3205 = trunc i32 %3204 to i16
  %3206 = or i16 %3151, %3205
  store i16 %3206, ptr %2902, align 8, !tbaa !25
  %3207 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3152, i32 %3154), !nosanitize !30
  %3208 = extractvalue { i32, i1 } %3207, 1, !nosanitize !30
  br i1 %3208, label %3185, label %3209, !prof !32, !nosanitize !30

3209:                                             ; preds = %3203, %3196, %2981, %2974
  %3210 = phi i16 [ %2977, %2974 ], [ %2948, %2981 ], [ %3199, %3196 ], [ %3206, %3203 ]
  %3211 = phi { i32, i1 } [ %2979, %2974 ], [ %2983, %2981 ], [ %3201, %3196 ], [ %3207, %3203 ]
  %3212 = extractvalue { i32, i1 } %3211, 0
  store i32 %3212, ptr %2685, align 4, !tbaa !26
  br label %3213

3213:                                             ; preds = %3209, %3150
  %3214 = phi i16 [ %3151, %3150 ], [ %3210, %3209 ]
  %3215 = phi i32 [ %3152, %3150 ], [ %3212, %3209 ]
  %3216 = load i32, ptr %2897, align 4, !tbaa !29
  %3217 = icmp ult i32 %2927, %3216
  br i1 %3217, label %2905, label %.loopexit305, !llvm.loop !80

.loopexit305:                                     ; preds = %3213, %2894
  %3218 = phi i16 [ %2895, %2894 ], [ %3214, %3213 ]
  %3219 = phi i32 [ %2896, %2894 ], [ %3215, %3213 ]
  %3220 = icmp sgt i32 %3219, 9
  %3221 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %3220, label %3222, label %3250

3222:                                             ; preds = %.loopexit305
  %3223 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3224 = load i64, ptr %3223, align 8, !tbaa !31
  %3225 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3224, i64 1), !nosanitize !30
  %3226 = extractvalue { i64, i1 } %3225, 1, !nosanitize !30
  br i1 %3226, label %3227, label %3228, !prof !32, !nosanitize !30

3227:                                             ; preds = %3222
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3228:                                             ; preds = %3222
  %3229 = extractvalue { i64, i1 } %3225, 0, !nosanitize !30
  %3230 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3231 = load ptr, ptr %3230, align 8, !tbaa !33
  %3232 = trunc i16 %3218 to i8
  store i64 %3229, ptr %3223, align 8, !tbaa !31
  %3233 = getelementptr inbounds nuw i8, ptr %3231, i64 %3224
  store i8 %3232, ptr %3233, align 1, !tbaa !28
  %3234 = load i64, ptr %3223, align 8, !tbaa !31
  %3235 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3234, i64 1), !nosanitize !30
  %3236 = extractvalue { i64, i1 } %3235, 1, !nosanitize !30
  br i1 %3236, label %3237, label %3238, !prof !32, !nosanitize !30

3237:                                             ; preds = %3228
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3238:                                             ; preds = %3228
  %3239 = extractvalue { i64, i1 } %3235, 0, !nosanitize !30
  %3240 = load ptr, ptr %3230, align 8, !tbaa !33
  %3241 = load i16, ptr %3221, align 8, !tbaa !25
  %3242 = lshr i16 %3241, 8
  %3243 = trunc nuw i16 %3242 to i8
  store i64 %3239, ptr %3223, align 8, !tbaa !31
  %3244 = getelementptr inbounds nuw i8, ptr %3240, i64 %3234
  store i8 %3243, ptr %3244, align 1, !tbaa !28
  %3245 = load i32, ptr %2685, align 4, !tbaa !26
  %3246 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3245), !nosanitize !30
  %3247 = extractvalue { i32, i1 } %3246, 1, !nosanitize !30
  br i1 %3247, label %.loopexit304, label %3248, !prof !32, !nosanitize !30

3248:                                             ; preds = %3238
  store i16 0, ptr %3221, align 8, !tbaa !25
  %3249 = add i32 %3245, -9
  br label %3252

3250:                                             ; preds = %.loopexit305
  %3251 = add nsw i32 %3219, 7
  br label %3252

3252:                                             ; preds = %3248, %3250
  %3253 = phi i32 [ %3249, %3248 ], [ %3251, %3250 ]
  store i32 %3253, ptr %2685, align 4, !tbaa !26
  br label %4790

3254:                                             ; preds = %2841
  %3255 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 4), !nosanitize !30
  %3256 = extractvalue { i32, i1 } %3255, 1, !nosanitize !30
  br i1 %2687, label %3257, label %3296

3257:                                             ; preds = %3254
  br i1 %3256, label %2869, label %3258, !prof !32, !nosanitize !30

3258:                                             ; preds = %3257
  %3259 = extractvalue { i32, i1 } %3255, 0, !nosanitize !30
  %3260 = and i32 %3259, 65535
  %3261 = shl i32 %3259, %2686
  %3262 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3263 = load i16, ptr %3262, align 8, !tbaa !25
  %3264 = trunc i32 %3261 to i16
  %3265 = or i16 %3263, %3264
  store i16 %3265, ptr %3262, align 8, !tbaa !25
  %3266 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3267 = load i64, ptr %3266, align 8, !tbaa !31
  %3268 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3267, i64 1), !nosanitize !30
  %3269 = extractvalue { i64, i1 } %3268, 1, !nosanitize !30
  br i1 %3269, label %3270, label %3271, !prof !32, !nosanitize !30

3270:                                             ; preds = %3258
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3271:                                             ; preds = %3258
  %3272 = extractvalue { i64, i1 } %3268, 0, !nosanitize !30
  %3273 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3274 = load ptr, ptr %3273, align 8, !tbaa !33
  %3275 = trunc i16 %3265 to i8
  store i64 %3272, ptr %3266, align 8, !tbaa !31
  %3276 = getelementptr inbounds nuw i8, ptr %3274, i64 %3267
  store i8 %3275, ptr %3276, align 1, !tbaa !28
  %3277 = load i64, ptr %3266, align 8, !tbaa !31
  %3278 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3277, i64 1), !nosanitize !30
  %3279 = extractvalue { i64, i1 } %3278, 1, !nosanitize !30
  br i1 %3279, label %3280, label %3281, !prof !32, !nosanitize !30

3280:                                             ; preds = %3313, %3305, %3296, %3271
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3281:                                             ; preds = %3271
  %3282 = extractvalue { i64, i1 } %3278, 0, !nosanitize !30
  %3283 = load ptr, ptr %3273, align 8, !tbaa !33
  %3284 = load i16, ptr %3262, align 8, !tbaa !25
  %3285 = lshr i16 %3284, 8
  %3286 = trunc nuw i16 %3285 to i8
  store i64 %3282, ptr %3266, align 8, !tbaa !31
  %3287 = getelementptr inbounds nuw i8, ptr %3283, i64 %3277
  store i8 %3286, ptr %3287, align 1, !tbaa !28
  %3288 = load i32, ptr %2685, align 4, !tbaa !26
  %3289 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3288), !nosanitize !30
  %3290 = extractvalue { i32, i1 } %3289, 1, !nosanitize !30
  br i1 %3290, label %2845, label %3291, !prof !32, !nosanitize !30

3291:                                             ; preds = %3281
  %3292 = extractvalue { i32, i1 } %3289, 0, !nosanitize !30
  %3293 = lshr i32 %3260, %3292
  %3294 = trunc nuw i32 %3293 to i16
  store i16 %3294, ptr %3262, align 8, !tbaa !25
  %3295 = add i32 %3288, -13
  br label %3305

3296:                                             ; preds = %3254
  br i1 %3256, label %3280, label %3297, !prof !32, !nosanitize !30

3297:                                             ; preds = %3296
  %3298 = extractvalue { i32, i1 } %3255, 0, !nosanitize !30
  %3299 = shl i32 %3298, %2686
  %3300 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3301 = load i16, ptr %3300, align 8, !tbaa !25
  %3302 = trunc i32 %3299 to i16
  %3303 = or i16 %3301, %3302
  store i16 %3303, ptr %3300, align 8, !tbaa !25
  %3304 = add nsw i32 %2686, 3
  br label %3305

3305:                                             ; preds = %3291, %3297
  %3306 = phi i16 [ %3294, %3291 ], [ %3303, %3297 ]
  %3307 = phi i32 [ %3295, %3291 ], [ %3304, %3297 ]
  store i32 %3307, ptr %2685, align 4, !tbaa !26
  %3308 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %3309 = load i32, ptr %3308, align 8, !tbaa !74
  %3310 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3309, i32 1), !nosanitize !30
  %3311 = extractvalue { i32, i1 } %3310, 0, !nosanitize !30
  %3312 = extractvalue { i32, i1 } %3310, 1, !nosanitize !30
  br i1 %3312, label %3280, label %3313, !prof !32, !nosanitize !30

3313:                                             ; preds = %3305
  %3314 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %3315 = load i32, ptr %3314, align 8, !tbaa !76
  %3316 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3315, i32 1), !nosanitize !30
  %3317 = extractvalue { i32, i1 } %3316, 0, !nosanitize !30
  %3318 = extractvalue { i32, i1 } %3316, 1, !nosanitize !30
  br i1 %3318, label %3280, label %3319, !prof !32, !nosanitize !30

3319:                                             ; preds = %3313
  %3320 = add nuw nsw i32 %2674, 1
  %3321 = icmp sgt i32 %3307, 11
  %3322 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3311, i32 -257)
  %3323 = extractvalue { i32, i1 } %3322, 1, !nosanitize !30
  br i1 %3321, label %3324, label %3362

.loopexit316:                                     ; preds = %3501, %3444, %3397, %3362, %3347, %3324
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

3324:                                             ; preds = %3319
  br i1 %3323, label %.loopexit316, label %3325, !prof !32, !nosanitize !30

3325:                                             ; preds = %3324
  %3326 = extractvalue { i32, i1 } %3322, 0, !nosanitize !30
  %3327 = and i32 %3326, 65535
  %3328 = shl i32 %3326, %3307
  %3329 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3330 = trunc i32 %3328 to i16
  %3331 = or i16 %3306, %3330
  store i16 %3331, ptr %3329, align 8, !tbaa !25
  %3332 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3333 = load i64, ptr %3332, align 8, !tbaa !31
  %3334 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3333, i64 1), !nosanitize !30
  %3335 = extractvalue { i64, i1 } %3334, 1, !nosanitize !30
  br i1 %3335, label %3336, label %3337, !prof !32, !nosanitize !30

3336:                                             ; preds = %3325
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3337:                                             ; preds = %3325
  %3338 = extractvalue { i64, i1 } %3334, 0, !nosanitize !30
  %3339 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3340 = load ptr, ptr %3339, align 8, !tbaa !33
  %3341 = trunc i16 %3331 to i8
  store i64 %3338, ptr %3332, align 8, !tbaa !31
  %3342 = getelementptr inbounds nuw i8, ptr %3340, i64 %3333
  store i8 %3341, ptr %3342, align 1, !tbaa !28
  %3343 = load i64, ptr %3332, align 8, !tbaa !31
  %3344 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3343, i64 1), !nosanitize !30
  %3345 = extractvalue { i64, i1 } %3344, 1, !nosanitize !30
  br i1 %3345, label %3346, label %3347, !prof !32, !nosanitize !30

3346:                                             ; preds = %3337
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3347:                                             ; preds = %3337
  %3348 = extractvalue { i64, i1 } %3344, 0, !nosanitize !30
  %3349 = load ptr, ptr %3339, align 8, !tbaa !33
  %3350 = load i16, ptr %3329, align 8, !tbaa !25
  %3351 = lshr i16 %3350, 8
  %3352 = trunc nuw i16 %3351 to i8
  store i64 %3348, ptr %3332, align 8, !tbaa !31
  %3353 = getelementptr inbounds nuw i8, ptr %3349, i64 %3343
  store i8 %3352, ptr %3353, align 1, !tbaa !28
  %3354 = load i32, ptr %2685, align 4, !tbaa !26
  %3355 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3354), !nosanitize !30
  %3356 = extractvalue { i32, i1 } %3355, 1, !nosanitize !30
  br i1 %3356, label %.loopexit316, label %3357, !prof !32, !nosanitize !30

3357:                                             ; preds = %3347
  %3358 = extractvalue { i32, i1 } %3355, 0, !nosanitize !30
  %3359 = lshr i32 %3327, %3358
  %3360 = trunc nuw i32 %3359 to i16
  store i16 %3360, ptr %3329, align 8, !tbaa !25
  %3361 = add i32 %3354, -11
  br label %3370

3362:                                             ; preds = %3319
  br i1 %3323, label %.loopexit316, label %3363, !prof !32, !nosanitize !30

3363:                                             ; preds = %3362
  %3364 = extractvalue { i32, i1 } %3322, 0, !nosanitize !30
  %3365 = shl i32 %3364, %3307
  %3366 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3367 = trunc i32 %3365 to i16
  %3368 = or i16 %3306, %3367
  store i16 %3368, ptr %3366, align 8, !tbaa !25
  %3369 = add nsw i32 %3307, 5
  br label %3370

3370:                                             ; preds = %3357, %3363
  %3371 = phi i16 [ %3360, %3357 ], [ %3368, %3363 ]
  %3372 = phi i32 [ %3361, %3357 ], [ %3369, %3363 ]
  store i32 %3372, ptr %2685, align 4, !tbaa !26
  %3373 = icmp sgt i32 %3372, 11
  %3374 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3317, i32 -1)
  %3375 = extractvalue { i32, i1 } %3374, 0, !nosanitize !30
  br i1 %3373, label %3376, label %3412

3376:                                             ; preds = %3370
  %3377 = and i32 %3375, 65535
  %3378 = shl i32 %3375, %3372
  %3379 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3380 = trunc i32 %3378 to i16
  %3381 = or i16 %3371, %3380
  store i16 %3381, ptr %3379, align 8, !tbaa !25
  %3382 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3383 = load i64, ptr %3382, align 8, !tbaa !31
  %3384 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3383, i64 1), !nosanitize !30
  %3385 = extractvalue { i64, i1 } %3384, 1, !nosanitize !30
  br i1 %3385, label %3386, label %3387, !prof !32, !nosanitize !30

3386:                                             ; preds = %3376
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3387:                                             ; preds = %3376
  %3388 = extractvalue { i64, i1 } %3384, 0, !nosanitize !30
  %3389 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3390 = load ptr, ptr %3389, align 8, !tbaa !33
  %3391 = trunc i16 %3381 to i8
  store i64 %3388, ptr %3382, align 8, !tbaa !31
  %3392 = getelementptr inbounds nuw i8, ptr %3390, i64 %3383
  store i8 %3391, ptr %3392, align 1, !tbaa !28
  %3393 = load i64, ptr %3382, align 8, !tbaa !31
  %3394 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3393, i64 1), !nosanitize !30
  %3395 = extractvalue { i64, i1 } %3394, 1, !nosanitize !30
  br i1 %3395, label %3396, label %3397, !prof !32, !nosanitize !30

3396:                                             ; preds = %3387
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3397:                                             ; preds = %3387
  %3398 = extractvalue { i64, i1 } %3394, 0, !nosanitize !30
  %3399 = load ptr, ptr %3389, align 8, !tbaa !33
  %3400 = load i16, ptr %3379, align 8, !tbaa !25
  %3401 = lshr i16 %3400, 8
  %3402 = trunc nuw i16 %3401 to i8
  store i64 %3398, ptr %3382, align 8, !tbaa !31
  %3403 = getelementptr inbounds nuw i8, ptr %3399, i64 %3393
  store i8 %3402, ptr %3403, align 1, !tbaa !28
  %3404 = load i32, ptr %2685, align 4, !tbaa !26
  %3405 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3404), !nosanitize !30
  %3406 = extractvalue { i32, i1 } %3405, 1, !nosanitize !30
  br i1 %3406, label %.loopexit316, label %3407, !prof !32, !nosanitize !30

3407:                                             ; preds = %3397
  %3408 = extractvalue { i32, i1 } %3405, 0, !nosanitize !30
  %3409 = lshr i32 %3377, %3408
  %3410 = trunc nuw i32 %3409 to i16
  store i16 %3410, ptr %3379, align 8, !tbaa !25
  %3411 = add i32 %3404, -11
  br label %3418

3412:                                             ; preds = %3370
  %3413 = shl i32 %3375, %3372
  %3414 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3415 = trunc i32 %3413 to i16
  %3416 = or i16 %3371, %3415
  store i16 %3416, ptr %3414, align 8, !tbaa !25
  %3417 = add nsw i32 %3372, 5
  br label %3418

3418:                                             ; preds = %3407, %3412
  %3419 = phi i16 [ %3410, %3407 ], [ %3416, %3412 ]
  %3420 = phi i32 [ %3411, %3407 ], [ %3417, %3412 ]
  store i32 %3420, ptr %2685, align 4, !tbaa !26
  %3421 = icmp sgt i32 %3420, 12
  %3422 = add nsw i32 %2674, -3
  br i1 %3421, label %3423, label %3459

3423:                                             ; preds = %3418
  %3424 = and i32 %3422, 65535
  %3425 = shl i32 %3422, %3420
  %3426 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3427 = trunc i32 %3425 to i16
  %3428 = or i16 %3419, %3427
  store i16 %3428, ptr %3426, align 8, !tbaa !25
  %3429 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3430 = load i64, ptr %3429, align 8, !tbaa !31
  %3431 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3430, i64 1), !nosanitize !30
  %3432 = extractvalue { i64, i1 } %3431, 1, !nosanitize !30
  br i1 %3432, label %3433, label %3434, !prof !32, !nosanitize !30

3433:                                             ; preds = %3423
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3434:                                             ; preds = %3423
  %3435 = extractvalue { i64, i1 } %3431, 0, !nosanitize !30
  %3436 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3437 = load ptr, ptr %3436, align 8, !tbaa !33
  %3438 = trunc i16 %3428 to i8
  store i64 %3435, ptr %3429, align 8, !tbaa !31
  %3439 = getelementptr inbounds nuw i8, ptr %3437, i64 %3430
  store i8 %3438, ptr %3439, align 1, !tbaa !28
  %3440 = load i64, ptr %3429, align 8, !tbaa !31
  %3441 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3440, i64 1), !nosanitize !30
  %3442 = extractvalue { i64, i1 } %3441, 1, !nosanitize !30
  br i1 %3442, label %3443, label %3444, !prof !32, !nosanitize !30

3443:                                             ; preds = %3434
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3444:                                             ; preds = %3434
  %3445 = extractvalue { i64, i1 } %3441, 0, !nosanitize !30
  %3446 = load ptr, ptr %3436, align 8, !tbaa !33
  %3447 = load i16, ptr %3426, align 8, !tbaa !25
  %3448 = lshr i16 %3447, 8
  %3449 = trunc nuw i16 %3448 to i8
  store i64 %3445, ptr %3429, align 8, !tbaa !31
  %3450 = getelementptr inbounds nuw i8, ptr %3446, i64 %3440
  store i8 %3449, ptr %3450, align 1, !tbaa !28
  %3451 = load i32, ptr %2685, align 4, !tbaa !26
  %3452 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3451), !nosanitize !30
  %3453 = extractvalue { i32, i1 } %3452, 1, !nosanitize !30
  br i1 %3453, label %.loopexit316, label %3454, !prof !32, !nosanitize !30

3454:                                             ; preds = %3444
  %3455 = extractvalue { i32, i1 } %3452, 0, !nosanitize !30
  %3456 = lshr i32 %3424, %3455
  %3457 = trunc nuw i32 %3456 to i16
  %3458 = add i32 %3451, -12
  br label %3464

3459:                                             ; preds = %3418
  %3460 = shl nsw i32 %3422, %3420
  %3461 = trunc i32 %3460 to i16
  %3462 = or i16 %3419, %3461
  %3463 = add nsw i32 %3420, 4
  br label %3464

3464:                                             ; preds = %3454, %3459
  %3465 = phi i16 [ %3457, %3454 ], [ %3462, %3459 ]
  %3466 = phi i32 [ %3458, %3454 ], [ %3463, %3459 ]
  store i32 %3466, ptr %2685, align 4, !tbaa !26
  %3467 = getelementptr i8, ptr %0, i64 2750
  %3468 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3469 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3470 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3471 = zext nneg i32 %3320 to i64
  br label %3472

3472:                                             ; preds = %3518, %3464
  %3473 = phi i16 [ %3465, %3464 ], [ %3519, %3518 ]
  %3474 = phi i32 [ %3466, %3464 ], [ %3520, %3518 ]
  %3475 = phi i64 [ 0, %3464 ], [ %3521, %3518 ]
  %3476 = icmp sgt i32 %3474, 13
  %3477 = getelementptr inbounds nuw i8, ptr @bl_order, i64 %3475
  %3478 = load i8, ptr %3477, align 1, !tbaa !28
  %3479 = zext i8 %3478 to i64
  %3480 = shl nuw nsw i64 %3479, 2
  %3481 = getelementptr i8, ptr %3467, i64 %3480
  %3482 = load i16, ptr %3481, align 2, !tbaa !28
  %3483 = zext i16 %3482 to i32
  %3484 = shl i32 %3483, %3474
  %3485 = trunc i32 %3484 to i16
  %3486 = or i16 %3473, %3485
  store i16 %3486, ptr %3468, align 8, !tbaa !25
  br i1 %3476, label %3487, label %3516

3487:                                             ; preds = %3472
  %3488 = load i64, ptr %3469, align 8, !tbaa !31
  %3489 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3488, i64 1), !nosanitize !30
  %3490 = extractvalue { i64, i1 } %3489, 1, !nosanitize !30
  br i1 %3490, label %3491, label %3492, !prof !32, !nosanitize !30

3491:                                             ; preds = %3487
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3492:                                             ; preds = %3487
  %3493 = extractvalue { i64, i1 } %3489, 0, !nosanitize !30
  %3494 = load ptr, ptr %3470, align 8, !tbaa !33
  %3495 = trunc i16 %3486 to i8
  store i64 %3493, ptr %3469, align 8, !tbaa !31
  %3496 = getelementptr inbounds nuw i8, ptr %3494, i64 %3488
  store i8 %3495, ptr %3496, align 1, !tbaa !28
  %3497 = load i64, ptr %3469, align 8, !tbaa !31
  %3498 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3497, i64 1), !nosanitize !30
  %3499 = extractvalue { i64, i1 } %3498, 1, !nosanitize !30
  br i1 %3499, label %3500, label %3501, !prof !32, !nosanitize !30

3500:                                             ; preds = %3492
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3501:                                             ; preds = %3492
  %3502 = extractvalue { i64, i1 } %3498, 0, !nosanitize !30
  %3503 = load ptr, ptr %3470, align 8, !tbaa !33
  %3504 = load i16, ptr %3468, align 8, !tbaa !25
  %3505 = lshr i16 %3504, 8
  %3506 = trunc nuw i16 %3505 to i8
  store i64 %3502, ptr %3469, align 8, !tbaa !31
  %3507 = getelementptr inbounds nuw i8, ptr %3503, i64 %3497
  store i8 %3506, ptr %3507, align 1, !tbaa !28
  %3508 = load i32, ptr %2685, align 4, !tbaa !26
  %3509 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3508), !nosanitize !30
  %3510 = extractvalue { i32, i1 } %3509, 1, !nosanitize !30
  br i1 %3510, label %.loopexit316, label %3511, !prof !32, !nosanitize !30

3511:                                             ; preds = %3501
  %3512 = extractvalue { i32, i1 } %3509, 0, !nosanitize !30
  %3513 = lshr i32 %3483, %3512
  %3514 = trunc nuw i32 %3513 to i16
  store i16 %3514, ptr %3468, align 8, !tbaa !25
  %3515 = add i32 %3508, -13
  br label %3518

3516:                                             ; preds = %3472
  %3517 = add nsw i32 %3474, 3
  br label %3518

3518:                                             ; preds = %3511, %3516
  %3519 = phi i16 [ %3514, %3511 ], [ %3486, %3516 ]
  %3520 = phi i32 [ %3515, %3511 ], [ %3517, %3516 ]
  store i32 %3520, ptr %2685, align 4, !tbaa !26
  %3521 = add nuw nsw i64 %3475, 1
  %3522 = icmp eq i64 %3521, %3471
  br i1 %3522, label %3523, label %3472, !llvm.loop !81

3523:                                             ; preds = %3518
  %3524 = add i32 %3311, -1
  %3525 = icmp slt i32 %3524, 0
  br i1 %3525, label %.loopexit315, label %3526

3526:                                             ; preds = %3523
  %3527 = getelementptr i8, ptr %0, i64 214
  %3528 = load i16, ptr %3527, align 2, !tbaa !28
  %3529 = icmp eq i16 %3528, 0
  %3530 = select i1 %3529, i32 138, i32 7
  %3531 = select i1 %3529, i32 3, i32 4
  %3532 = zext i16 %3528 to i32
  %3533 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3534 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3535 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3536 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3537 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3538 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3539 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3540

3540:                                             ; preds = %3958, %3526
  %3541 = phi i16 [ %3519, %3526 ], [ %3959, %3958 ]
  %3542 = phi i32 [ %3520, %3526 ], [ %3960, %3958 ]
  %3543 = phi i32 [ 0, %3526 ], [ %3549, %3958 ]
  %3544 = phi i32 [ -1, %3526 ], [ %3964, %3958 ]
  %3545 = phi i32 [ %3532, %3526 ], [ %3554, %3958 ]
  %3546 = phi i32 [ 0, %3526 ], [ %3963, %3958 ]
  %3547 = phi i32 [ %3530, %3526 ], [ %3962, %3958 ]
  %3548 = phi i32 [ %3531, %3526 ], [ %3961, %3958 ]
  %3549 = add i32 %3543, 1
  %3550 = sext i32 %3549 to i64
  %3551 = shl nsw i64 %3550, 2
  %3552 = getelementptr i8, ptr %3527, i64 %3551
  %3553 = load i16, ptr %3552, align 2, !tbaa !28
  %3554 = zext i16 %3553 to i32
  %3555 = add nsw i32 %3546, 1
  %3556 = icmp slt i32 %3555, %3547
  %3557 = icmp eq i32 %3545, %3554
  %3558 = select i1 %3556, i1 %3557, i1 false
  br i1 %3558, label %3958, label %3559

3559:                                             ; preds = %3540
  %3560 = icmp slt i32 %3555, %3548
  br i1 %3560, label %3561, label %3621

3561:                                             ; preds = %3559
  %3562 = zext nneg i32 %3545 to i64
  %3563 = getelementptr inbounds nuw [4 x i8], ptr %3533, i64 %3562
  %3564 = getelementptr inbounds nuw i8, ptr %3563, i64 2
  br label %3565

3565:                                             ; preds = %3618, %3561
  %3566 = phi i16 [ %3613, %3618 ], [ %3541, %3561 ]
  %3567 = phi i32 [ %3615, %3618 ], [ %3542, %3561 ]
  %3568 = phi i32 [ %3619, %3618 ], [ %3555, %3561 ]
  %3569 = load i16, ptr %3564, align 2, !tbaa !28
  %3570 = zext i16 %3569 to i32
  %3571 = sub nsw i32 16, %3570
  %3572 = icmp sgt i32 %3567, %3571
  %3573 = load i16, ptr %3563, align 4, !tbaa !28
  %3574 = zext i16 %3573 to i32
  %3575 = shl i32 %3574, %3567
  %3576 = trunc i32 %3575 to i16
  %3577 = or i16 %3566, %3576
  store i16 %3577, ptr %3468, align 8, !tbaa !25
  br i1 %3572, label %3578, label %3609

.loopexit312:                                     ; preds = %3927, %3883, %3838, %3794, %3747, %3703, %3652, %3612, %3592
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

3578:                                             ; preds = %3565
  %3579 = load i64, ptr %3469, align 8, !tbaa !31
  %3580 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3579, i64 1), !nosanitize !30
  %3581 = extractvalue { i64, i1 } %3580, 1, !nosanitize !30
  br i1 %3581, label %3582, label %3583, !prof !32, !nosanitize !30

3582:                                             ; preds = %3578
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3583:                                             ; preds = %3578
  %3584 = extractvalue { i64, i1 } %3580, 0, !nosanitize !30
  %3585 = load ptr, ptr %3470, align 8, !tbaa !33
  %3586 = trunc i16 %3577 to i8
  store i64 %3584, ptr %3469, align 8, !tbaa !31
  %3587 = getelementptr inbounds nuw i8, ptr %3585, i64 %3579
  store i8 %3586, ptr %3587, align 1, !tbaa !28
  %3588 = load i64, ptr %3469, align 8, !tbaa !31
  %3589 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3588, i64 1), !nosanitize !30
  %3590 = extractvalue { i64, i1 } %3589, 1, !nosanitize !30
  br i1 %3590, label %3591, label %3592, !prof !32, !nosanitize !30

3591:                                             ; preds = %3602, %3583
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3592:                                             ; preds = %3583
  %3593 = extractvalue { i64, i1 } %3589, 0, !nosanitize !30
  %3594 = load ptr, ptr %3470, align 8, !tbaa !33
  %3595 = load i16, ptr %3468, align 8, !tbaa !25
  %3596 = lshr i16 %3595, 8
  %3597 = trunc nuw i16 %3596 to i8
  store i64 %3593, ptr %3469, align 8, !tbaa !31
  %3598 = getelementptr inbounds nuw i8, ptr %3594, i64 %3588
  store i8 %3597, ptr %3598, align 1, !tbaa !28
  %3599 = load i32, ptr %2685, align 4, !tbaa !26
  %3600 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3599), !nosanitize !30
  %3601 = extractvalue { i32, i1 } %3600, 1, !nosanitize !30
  br i1 %3601, label %.loopexit312, label %3602, !prof !32, !nosanitize !30

3602:                                             ; preds = %3592
  %3603 = extractvalue { i32, i1 } %3600, 0, !nosanitize !30
  %3604 = lshr i32 %3574, %3603
  %3605 = trunc nuw i32 %3604 to i16
  store i16 %3605, ptr %3468, align 8, !tbaa !25
  %3606 = add nsw i32 %3570, -16
  %3607 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3599, i32 %3606), !nosanitize !30
  %3608 = extractvalue { i32, i1 } %3607, 1, !nosanitize !30
  br i1 %3608, label %3591, label %3612, !prof !32, !nosanitize !30

3609:                                             ; preds = %3565
  %3610 = add nsw i32 %3567, %3570
  %3611 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3610, 0
  br label %3612

3612:                                             ; preds = %3609, %3602
  %3613 = phi i16 [ %3605, %3602 ], [ %3577, %3609 ]
  %3614 = phi { i32, i1 } [ %3607, %3602 ], [ %3611, %3609 ]
  %3615 = extractvalue { i32, i1 } %3614, 0
  store i32 %3615, ptr %2685, align 4, !tbaa !26
  %3616 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3568, i32 -1)
  %3617 = extractvalue { i32, i1 } %3616, 1, !nosanitize !30
  br i1 %3617, label %.loopexit312, label %3618, !prof !32, !nosanitize !30

3618:                                             ; preds = %3612
  %3619 = extractvalue { i32, i1 } %3616, 0, !nosanitize !30
  %3620 = icmp eq i32 %3619, 0
  br i1 %3620, label %.loopexit313, label %3565, !llvm.loop !82

3621:                                             ; preds = %3559
  %3622 = icmp eq i32 %3545, 0
  br i1 %3622, label %3768, label %3623

3623:                                             ; preds = %3621
  %3624 = icmp eq i32 %3545, %3544
  br i1 %3624, label %3676, label %3625

3625:                                             ; preds = %3623
  %3626 = zext nneg i32 %3545 to i64
  %3627 = getelementptr inbounds nuw [4 x i8], ptr %3533, i64 %3626
  %3628 = getelementptr inbounds nuw i8, ptr %3627, i64 2
  %3629 = load i16, ptr %3628, align 2, !tbaa !28
  %3630 = zext i16 %3629 to i32
  %3631 = sub nsw i32 16, %3630
  %3632 = icmp sgt i32 %3542, %3631
  %3633 = load i16, ptr %3627, align 4, !tbaa !28
  %3634 = zext i16 %3633 to i32
  %3635 = shl i32 %3634, %3542
  %3636 = trunc i32 %3635 to i16
  %3637 = or i16 %3541, %3636
  store i16 %3637, ptr %3468, align 8, !tbaa !25
  br i1 %3632, label %3638, label %3669

3638:                                             ; preds = %3625
  %3639 = load i64, ptr %3469, align 8, !tbaa !31
  %3640 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3639, i64 1), !nosanitize !30
  %3641 = extractvalue { i64, i1 } %3640, 1, !nosanitize !30
  br i1 %3641, label %3642, label %3643, !prof !32, !nosanitize !30

3642:                                             ; preds = %3638
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3643:                                             ; preds = %3638
  %3644 = extractvalue { i64, i1 } %3640, 0, !nosanitize !30
  %3645 = load ptr, ptr %3470, align 8, !tbaa !33
  %3646 = trunc i16 %3637 to i8
  store i64 %3644, ptr %3469, align 8, !tbaa !31
  %3647 = getelementptr inbounds nuw i8, ptr %3645, i64 %3639
  store i8 %3646, ptr %3647, align 1, !tbaa !28
  %3648 = load i64, ptr %3469, align 8, !tbaa !31
  %3649 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3648, i64 1), !nosanitize !30
  %3650 = extractvalue { i64, i1 } %3649, 1, !nosanitize !30
  br i1 %3650, label %3651, label %3652, !prof !32, !nosanitize !30

3651:                                             ; preds = %3662, %3643
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3652:                                             ; preds = %3643
  %3653 = extractvalue { i64, i1 } %3649, 0, !nosanitize !30
  %3654 = load ptr, ptr %3470, align 8, !tbaa !33
  %3655 = load i16, ptr %3468, align 8, !tbaa !25
  %3656 = lshr i16 %3655, 8
  %3657 = trunc nuw i16 %3656 to i8
  store i64 %3653, ptr %3469, align 8, !tbaa !31
  %3658 = getelementptr inbounds nuw i8, ptr %3654, i64 %3648
  store i8 %3657, ptr %3658, align 1, !tbaa !28
  %3659 = load i32, ptr %2685, align 4, !tbaa !26
  %3660 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3659), !nosanitize !30
  %3661 = extractvalue { i32, i1 } %3660, 1, !nosanitize !30
  br i1 %3661, label %.loopexit312, label %3662, !prof !32, !nosanitize !30

3662:                                             ; preds = %3652
  %3663 = extractvalue { i32, i1 } %3660, 0, !nosanitize !30
  %3664 = lshr i32 %3634, %3663
  %3665 = trunc nuw i32 %3664 to i16
  store i16 %3665, ptr %3468, align 8, !tbaa !25
  %3666 = add nsw i32 %3630, -16
  %3667 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3659, i32 %3666), !nosanitize !30
  %3668 = extractvalue { i32, i1 } %3667, 1, !nosanitize !30
  br i1 %3668, label %3651, label %3672, !prof !32, !nosanitize !30

3669:                                             ; preds = %3625
  %3670 = add nsw i32 %3542, %3630
  %3671 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3670, 0
  br label %3672

3672:                                             ; preds = %3669, %3662
  %3673 = phi i16 [ %3665, %3662 ], [ %3637, %3669 ]
  %3674 = phi { i32, i1 } [ %3667, %3662 ], [ %3671, %3669 ]
  %3675 = extractvalue { i32, i1 } %3674, 0
  store i32 %3675, ptr %2685, align 4, !tbaa !26
  br label %3676

3676:                                             ; preds = %3672, %3623
  %3677 = phi i16 [ %3673, %3672 ], [ %3541, %3623 ]
  %3678 = phi i32 [ %3675, %3672 ], [ %3542, %3623 ]
  %3679 = phi i32 [ %3546, %3672 ], [ %3555, %3623 ]
  %3680 = load i16, ptr %3535, align 2, !tbaa !28
  %3681 = zext i16 %3680 to i32
  %3682 = sub nsw i32 16, %3681
  %3683 = icmp sgt i32 %3678, %3682
  %3684 = load i16, ptr %3534, align 4, !tbaa !28
  %3685 = zext i16 %3684 to i32
  %3686 = shl i32 %3685, %3678
  %3687 = trunc i32 %3686 to i16
  %3688 = or i16 %3677, %3687
  store i16 %3688, ptr %3468, align 8, !tbaa !25
  br i1 %3683, label %3689, label %3720

3689:                                             ; preds = %3676
  %3690 = load i64, ptr %3469, align 8, !tbaa !31
  %3691 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3690, i64 1), !nosanitize !30
  %3692 = extractvalue { i64, i1 } %3691, 1, !nosanitize !30
  br i1 %3692, label %3693, label %3694, !prof !32, !nosanitize !30

3693:                                             ; preds = %3689
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3694:                                             ; preds = %3689
  %3695 = extractvalue { i64, i1 } %3691, 0, !nosanitize !30
  %3696 = load ptr, ptr %3470, align 8, !tbaa !33
  %3697 = trunc i16 %3688 to i8
  store i64 %3695, ptr %3469, align 8, !tbaa !31
  %3698 = getelementptr inbounds nuw i8, ptr %3696, i64 %3690
  store i8 %3697, ptr %3698, align 1, !tbaa !28
  %3699 = load i64, ptr %3469, align 8, !tbaa !31
  %3700 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3699, i64 1), !nosanitize !30
  %3701 = extractvalue { i64, i1 } %3700, 1, !nosanitize !30
  br i1 %3701, label %3702, label %3703, !prof !32, !nosanitize !30

3702:                                             ; preds = %3713, %3694
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3703:                                             ; preds = %3694
  %3704 = extractvalue { i64, i1 } %3700, 0, !nosanitize !30
  %3705 = load ptr, ptr %3470, align 8, !tbaa !33
  %3706 = load i16, ptr %3468, align 8, !tbaa !25
  %3707 = lshr i16 %3706, 8
  %3708 = trunc nuw i16 %3707 to i8
  store i64 %3704, ptr %3469, align 8, !tbaa !31
  %3709 = getelementptr inbounds nuw i8, ptr %3705, i64 %3699
  store i8 %3708, ptr %3709, align 1, !tbaa !28
  %3710 = load i32, ptr %2685, align 4, !tbaa !26
  %3711 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3710), !nosanitize !30
  %3712 = extractvalue { i32, i1 } %3711, 1, !nosanitize !30
  br i1 %3712, label %.loopexit312, label %3713, !prof !32, !nosanitize !30

3713:                                             ; preds = %3703
  %3714 = extractvalue { i32, i1 } %3711, 0, !nosanitize !30
  %3715 = lshr i32 %3685, %3714
  %3716 = trunc nuw i32 %3715 to i16
  store i16 %3716, ptr %3468, align 8, !tbaa !25
  %3717 = add nsw i32 %3681, -16
  %3718 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3710, i32 %3717), !nosanitize !30
  %3719 = extractvalue { i32, i1 } %3718, 1, !nosanitize !30
  br i1 %3719, label %3702, label %3723, !prof !32, !nosanitize !30

3720:                                             ; preds = %3676
  %3721 = add nsw i32 %3678, %3681
  %3722 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3721, 0
  br label %3723

3723:                                             ; preds = %3720, %3713
  %3724 = phi i16 [ %3716, %3713 ], [ %3688, %3720 ]
  %3725 = phi { i32, i1 } [ %3718, %3713 ], [ %3722, %3720 ]
  %3726 = extractvalue { i32, i1 } %3725, 0
  store i32 %3726, ptr %2685, align 4, !tbaa !26
  %3727 = icmp sgt i32 %3726, 14
  %3728 = add i32 %3679, 65533
  br i1 %3727, label %3729, label %3762

3729:                                             ; preds = %3723
  %3730 = and i32 %3728, 65535
  %3731 = shl i32 %3728, %3726
  %3732 = trunc i32 %3731 to i16
  %3733 = or i16 %3724, %3732
  store i16 %3733, ptr %3468, align 8, !tbaa !25
  %3734 = load i64, ptr %3469, align 8, !tbaa !31
  %3735 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3734, i64 1), !nosanitize !30
  %3736 = extractvalue { i64, i1 } %3735, 1, !nosanitize !30
  br i1 %3736, label %3737, label %3738, !prof !32, !nosanitize !30

3737:                                             ; preds = %3729
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3738:                                             ; preds = %3729
  %3739 = extractvalue { i64, i1 } %3735, 0, !nosanitize !30
  %3740 = load ptr, ptr %3470, align 8, !tbaa !33
  %3741 = trunc i16 %3733 to i8
  store i64 %3739, ptr %3469, align 8, !tbaa !31
  %3742 = getelementptr inbounds nuw i8, ptr %3740, i64 %3734
  store i8 %3741, ptr %3742, align 1, !tbaa !28
  %3743 = load i64, ptr %3469, align 8, !tbaa !31
  %3744 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3743, i64 1), !nosanitize !30
  %3745 = extractvalue { i64, i1 } %3744, 1, !nosanitize !30
  br i1 %3745, label %3746, label %3747, !prof !32, !nosanitize !30

3746:                                             ; preds = %3738
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3747:                                             ; preds = %3738
  %3748 = extractvalue { i64, i1 } %3744, 0, !nosanitize !30
  %3749 = load ptr, ptr %3470, align 8, !tbaa !33
  %3750 = load i16, ptr %3468, align 8, !tbaa !25
  %3751 = lshr i16 %3750, 8
  %3752 = trunc nuw i16 %3751 to i8
  store i64 %3748, ptr %3469, align 8, !tbaa !31
  %3753 = getelementptr inbounds nuw i8, ptr %3749, i64 %3743
  store i8 %3752, ptr %3753, align 1, !tbaa !28
  %3754 = load i32, ptr %2685, align 4, !tbaa !26
  %3755 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3754), !nosanitize !30
  %3756 = extractvalue { i32, i1 } %3755, 1, !nosanitize !30
  br i1 %3756, label %.loopexit312, label %3757, !prof !32, !nosanitize !30

3757:                                             ; preds = %3747
  %3758 = extractvalue { i32, i1 } %3755, 0, !nosanitize !30
  %3759 = lshr i32 %3730, %3758
  %3760 = trunc nuw i32 %3759 to i16
  store i16 %3760, ptr %3468, align 8, !tbaa !25
  %3761 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3754, i32 -14), !nosanitize !30
  br label %3948

3762:                                             ; preds = %3723
  %3763 = shl i32 %3728, %3726
  %3764 = trunc i32 %3763 to i16
  %3765 = or i16 %3724, %3764
  store i16 %3765, ptr %3468, align 8, !tbaa !25
  %3766 = add nsw i32 %3726, 2
  %3767 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3766, 0
  br label %3948

3768:                                             ; preds = %3621
  %3769 = icmp slt i32 %3546, 10
  br i1 %3769, label %3770, label %3859

3770:                                             ; preds = %3768
  %3771 = load i16, ptr %3539, align 2, !tbaa !28
  %3772 = zext i16 %3771 to i32
  %3773 = sub nsw i32 16, %3772
  %3774 = icmp sgt i32 %3542, %3773
  %3775 = load i16, ptr %3538, align 4, !tbaa !28
  %3776 = zext i16 %3775 to i32
  %3777 = shl i32 %3776, %3542
  %3778 = trunc i32 %3777 to i16
  %3779 = or i16 %3541, %3778
  store i16 %3779, ptr %3468, align 8, !tbaa !25
  br i1 %3774, label %3780, label %3811

3780:                                             ; preds = %3770
  %3781 = load i64, ptr %3469, align 8, !tbaa !31
  %3782 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3781, i64 1), !nosanitize !30
  %3783 = extractvalue { i64, i1 } %3782, 1, !nosanitize !30
  br i1 %3783, label %3784, label %3785, !prof !32, !nosanitize !30

3784:                                             ; preds = %3780
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3785:                                             ; preds = %3780
  %3786 = extractvalue { i64, i1 } %3782, 0, !nosanitize !30
  %3787 = load ptr, ptr %3470, align 8, !tbaa !33
  %3788 = trunc i16 %3779 to i8
  store i64 %3786, ptr %3469, align 8, !tbaa !31
  %3789 = getelementptr inbounds nuw i8, ptr %3787, i64 %3781
  store i8 %3788, ptr %3789, align 1, !tbaa !28
  %3790 = load i64, ptr %3469, align 8, !tbaa !31
  %3791 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3790, i64 1), !nosanitize !30
  %3792 = extractvalue { i64, i1 } %3791, 1, !nosanitize !30
  br i1 %3792, label %3793, label %3794, !prof !32, !nosanitize !30

3793:                                             ; preds = %3804, %3785
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3794:                                             ; preds = %3785
  %3795 = extractvalue { i64, i1 } %3791, 0, !nosanitize !30
  %3796 = load ptr, ptr %3470, align 8, !tbaa !33
  %3797 = load i16, ptr %3468, align 8, !tbaa !25
  %3798 = lshr i16 %3797, 8
  %3799 = trunc nuw i16 %3798 to i8
  store i64 %3795, ptr %3469, align 8, !tbaa !31
  %3800 = getelementptr inbounds nuw i8, ptr %3796, i64 %3790
  store i8 %3799, ptr %3800, align 1, !tbaa !28
  %3801 = load i32, ptr %2685, align 4, !tbaa !26
  %3802 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3801), !nosanitize !30
  %3803 = extractvalue { i32, i1 } %3802, 1, !nosanitize !30
  br i1 %3803, label %.loopexit312, label %3804, !prof !32, !nosanitize !30

3804:                                             ; preds = %3794
  %3805 = extractvalue { i32, i1 } %3802, 0, !nosanitize !30
  %3806 = lshr i32 %3776, %3805
  %3807 = trunc nuw i32 %3806 to i16
  store i16 %3807, ptr %3468, align 8, !tbaa !25
  %3808 = add nsw i32 %3772, -16
  %3809 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3801, i32 %3808), !nosanitize !30
  %3810 = extractvalue { i32, i1 } %3809, 1, !nosanitize !30
  br i1 %3810, label %3793, label %3814, !prof !32, !nosanitize !30

3811:                                             ; preds = %3770
  %3812 = add nsw i32 %3542, %3772
  %3813 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3812, 0
  br label %3814

3814:                                             ; preds = %3811, %3804
  %3815 = phi i16 [ %3807, %3804 ], [ %3779, %3811 ]
  %3816 = phi { i32, i1 } [ %3809, %3804 ], [ %3813, %3811 ]
  %3817 = extractvalue { i32, i1 } %3816, 0
  store i32 %3817, ptr %2685, align 4, !tbaa !26
  %3818 = icmp sgt i32 %3817, 13
  %3819 = add nsw i32 %3546, 65534
  br i1 %3818, label %3820, label %3853

3820:                                             ; preds = %3814
  %3821 = and i32 %3819, 65535
  %3822 = shl i32 %3819, %3817
  %3823 = trunc i32 %3822 to i16
  %3824 = or i16 %3815, %3823
  store i16 %3824, ptr %3468, align 8, !tbaa !25
  %3825 = load i64, ptr %3469, align 8, !tbaa !31
  %3826 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3825, i64 1), !nosanitize !30
  %3827 = extractvalue { i64, i1 } %3826, 1, !nosanitize !30
  br i1 %3827, label %3828, label %3829, !prof !32, !nosanitize !30

3828:                                             ; preds = %3820
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3829:                                             ; preds = %3820
  %3830 = extractvalue { i64, i1 } %3826, 0, !nosanitize !30
  %3831 = load ptr, ptr %3470, align 8, !tbaa !33
  %3832 = trunc i16 %3824 to i8
  store i64 %3830, ptr %3469, align 8, !tbaa !31
  %3833 = getelementptr inbounds nuw i8, ptr %3831, i64 %3825
  store i8 %3832, ptr %3833, align 1, !tbaa !28
  %3834 = load i64, ptr %3469, align 8, !tbaa !31
  %3835 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3834, i64 1), !nosanitize !30
  %3836 = extractvalue { i64, i1 } %3835, 1, !nosanitize !30
  br i1 %3836, label %3837, label %3838, !prof !32, !nosanitize !30

3837:                                             ; preds = %3829
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3838:                                             ; preds = %3829
  %3839 = extractvalue { i64, i1 } %3835, 0, !nosanitize !30
  %3840 = load ptr, ptr %3470, align 8, !tbaa !33
  %3841 = load i16, ptr %3468, align 8, !tbaa !25
  %3842 = lshr i16 %3841, 8
  %3843 = trunc nuw i16 %3842 to i8
  store i64 %3839, ptr %3469, align 8, !tbaa !31
  %3844 = getelementptr inbounds nuw i8, ptr %3840, i64 %3834
  store i8 %3843, ptr %3844, align 1, !tbaa !28
  %3845 = load i32, ptr %2685, align 4, !tbaa !26
  %3846 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3845), !nosanitize !30
  %3847 = extractvalue { i32, i1 } %3846, 1, !nosanitize !30
  br i1 %3847, label %.loopexit312, label %3848, !prof !32, !nosanitize !30

3848:                                             ; preds = %3838
  %3849 = extractvalue { i32, i1 } %3846, 0, !nosanitize !30
  %3850 = lshr i32 %3821, %3849
  %3851 = trunc nuw i32 %3850 to i16
  store i16 %3851, ptr %3468, align 8, !tbaa !25
  %3852 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3845, i32 -13), !nosanitize !30
  br label %3948

3853:                                             ; preds = %3814
  %3854 = shl i32 %3819, %3817
  %3855 = trunc i32 %3854 to i16
  %3856 = or i16 %3815, %3855
  store i16 %3856, ptr %3468, align 8, !tbaa !25
  %3857 = add nsw i32 %3817, 3
  %3858 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3857, 0
  br label %3948

3859:                                             ; preds = %3768
  %3860 = load i16, ptr %3537, align 2, !tbaa !28
  %3861 = zext i16 %3860 to i32
  %3862 = sub nsw i32 16, %3861
  %3863 = icmp sgt i32 %3542, %3862
  %3864 = load i16, ptr %3536, align 4, !tbaa !28
  %3865 = zext i16 %3864 to i32
  %3866 = shl i32 %3865, %3542
  %3867 = trunc i32 %3866 to i16
  %3868 = or i16 %3541, %3867
  store i16 %3868, ptr %3468, align 8, !tbaa !25
  br i1 %3863, label %3869, label %3900

3869:                                             ; preds = %3859
  %3870 = load i64, ptr %3469, align 8, !tbaa !31
  %3871 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3870, i64 1), !nosanitize !30
  %3872 = extractvalue { i64, i1 } %3871, 1, !nosanitize !30
  br i1 %3872, label %3873, label %3874, !prof !32, !nosanitize !30

3873:                                             ; preds = %3869
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3874:                                             ; preds = %3869
  %3875 = extractvalue { i64, i1 } %3871, 0, !nosanitize !30
  %3876 = load ptr, ptr %3470, align 8, !tbaa !33
  %3877 = trunc i16 %3868 to i8
  store i64 %3875, ptr %3469, align 8, !tbaa !31
  %3878 = getelementptr inbounds nuw i8, ptr %3876, i64 %3870
  store i8 %3877, ptr %3878, align 1, !tbaa !28
  %3879 = load i64, ptr %3469, align 8, !tbaa !31
  %3880 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3879, i64 1), !nosanitize !30
  %3881 = extractvalue { i64, i1 } %3880, 1, !nosanitize !30
  br i1 %3881, label %3882, label %3883, !prof !32, !nosanitize !30

3882:                                             ; preds = %3893, %3874
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3883:                                             ; preds = %3874
  %3884 = extractvalue { i64, i1 } %3880, 0, !nosanitize !30
  %3885 = load ptr, ptr %3470, align 8, !tbaa !33
  %3886 = load i16, ptr %3468, align 8, !tbaa !25
  %3887 = lshr i16 %3886, 8
  %3888 = trunc nuw i16 %3887 to i8
  store i64 %3884, ptr %3469, align 8, !tbaa !31
  %3889 = getelementptr inbounds nuw i8, ptr %3885, i64 %3879
  store i8 %3888, ptr %3889, align 1, !tbaa !28
  %3890 = load i32, ptr %2685, align 4, !tbaa !26
  %3891 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3890), !nosanitize !30
  %3892 = extractvalue { i32, i1 } %3891, 1, !nosanitize !30
  br i1 %3892, label %.loopexit312, label %3893, !prof !32, !nosanitize !30

3893:                                             ; preds = %3883
  %3894 = extractvalue { i32, i1 } %3891, 0, !nosanitize !30
  %3895 = lshr i32 %3865, %3894
  %3896 = trunc nuw i32 %3895 to i16
  store i16 %3896, ptr %3468, align 8, !tbaa !25
  %3897 = add nsw i32 %3861, -16
  %3898 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3890, i32 %3897), !nosanitize !30
  %3899 = extractvalue { i32, i1 } %3898, 1, !nosanitize !30
  br i1 %3899, label %3882, label %3903, !prof !32, !nosanitize !30

3900:                                             ; preds = %3859
  %3901 = add nsw i32 %3542, %3861
  %3902 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3901, 0
  br label %3903

3903:                                             ; preds = %3900, %3893
  %3904 = phi i16 [ %3896, %3893 ], [ %3868, %3900 ]
  %3905 = phi { i32, i1 } [ %3898, %3893 ], [ %3902, %3900 ]
  %3906 = extractvalue { i32, i1 } %3905, 0
  store i32 %3906, ptr %2685, align 4, !tbaa !26
  %3907 = icmp sgt i32 %3906, 9
  %3908 = add nuw i32 %3546, 65526
  br i1 %3907, label %3909, label %3942

3909:                                             ; preds = %3903
  %3910 = and i32 %3908, 65535
  %3911 = shl i32 %3908, %3906
  %3912 = trunc i32 %3911 to i16
  %3913 = or i16 %3904, %3912
  store i16 %3913, ptr %3468, align 8, !tbaa !25
  %3914 = load i64, ptr %3469, align 8, !tbaa !31
  %3915 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3914, i64 1), !nosanitize !30
  %3916 = extractvalue { i64, i1 } %3915, 1, !nosanitize !30
  br i1 %3916, label %3917, label %3918, !prof !32, !nosanitize !30

3917:                                             ; preds = %3909
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3918:                                             ; preds = %3909
  %3919 = extractvalue { i64, i1 } %3915, 0, !nosanitize !30
  %3920 = load ptr, ptr %3470, align 8, !tbaa !33
  %3921 = trunc i16 %3913 to i8
  store i64 %3919, ptr %3469, align 8, !tbaa !31
  %3922 = getelementptr inbounds nuw i8, ptr %3920, i64 %3914
  store i8 %3921, ptr %3922, align 1, !tbaa !28
  %3923 = load i64, ptr %3469, align 8, !tbaa !31
  %3924 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3923, i64 1), !nosanitize !30
  %3925 = extractvalue { i64, i1 } %3924, 1, !nosanitize !30
  br i1 %3925, label %3926, label %3927, !prof !32, !nosanitize !30

3926:                                             ; preds = %3918
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3927:                                             ; preds = %3918
  %3928 = extractvalue { i64, i1 } %3924, 0, !nosanitize !30
  %3929 = load ptr, ptr %3470, align 8, !tbaa !33
  %3930 = load i16, ptr %3468, align 8, !tbaa !25
  %3931 = lshr i16 %3930, 8
  %3932 = trunc nuw i16 %3931 to i8
  store i64 %3928, ptr %3469, align 8, !tbaa !31
  %3933 = getelementptr inbounds nuw i8, ptr %3929, i64 %3923
  store i8 %3932, ptr %3933, align 1, !tbaa !28
  %3934 = load i32, ptr %2685, align 4, !tbaa !26
  %3935 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3934), !nosanitize !30
  %3936 = extractvalue { i32, i1 } %3935, 1, !nosanitize !30
  br i1 %3936, label %.loopexit312, label %3937, !prof !32, !nosanitize !30

3937:                                             ; preds = %3927
  %3938 = extractvalue { i32, i1 } %3935, 0, !nosanitize !30
  %3939 = lshr i32 %3910, %3938
  %3940 = trunc nuw i32 %3939 to i16
  store i16 %3940, ptr %3468, align 8, !tbaa !25
  %3941 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3934, i32 -9), !nosanitize !30
  br label %3948

3942:                                             ; preds = %3903
  %3943 = shl i32 %3908, %3906
  %3944 = trunc i32 %3943 to i16
  %3945 = or i16 %3904, %3944
  store i16 %3945, ptr %3468, align 8, !tbaa !25
  %3946 = add nsw i32 %3906, 7
  %3947 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3946, 0
  br label %3948

3948:                                             ; preds = %3848, %3937, %3757, %3942, %3853, %3762
  %3949 = phi i16 [ %3760, %3757 ], [ %3765, %3762 ], [ %3851, %3848 ], [ %3856, %3853 ], [ %3940, %3937 ], [ %3945, %3942 ]
  %3950 = phi { i32, i1 } [ %3761, %3757 ], [ %3767, %3762 ], [ %3852, %3848 ], [ %3858, %3853 ], [ %3941, %3937 ], [ %3947, %3942 ]
  %3951 = extractvalue { i32, i1 } %3950, 0
  store i32 %3951, ptr %2685, align 4, !tbaa !26
  br label %.loopexit313

.loopexit313:                                     ; preds = %3618, %3948
  %3952 = phi i16 [ %3949, %3948 ], [ %3613, %3618 ]
  %3953 = phi i32 [ %3951, %3948 ], [ %3615, %3618 ]
  %3954 = icmp eq i16 %3553, 0
  br i1 %3954, label %3958, label %3955

3955:                                             ; preds = %.loopexit313
  %3956 = select i1 %3557, i32 3, i32 4
  %3957 = select i1 %3557, i32 6, i32 7
  br label %3958

3958:                                             ; preds = %3955, %.loopexit313, %3540
  %3959 = phi i16 [ %3541, %3540 ], [ %3952, %.loopexit313 ], [ %3952, %3955 ]
  %3960 = phi i32 [ %3542, %3540 ], [ %3953, %.loopexit313 ], [ %3953, %3955 ]
  %3961 = phi i32 [ %3548, %3540 ], [ 3, %.loopexit313 ], [ %3956, %3955 ]
  %3962 = phi i32 [ %3547, %3540 ], [ 138, %.loopexit313 ], [ %3957, %3955 ]
  %3963 = phi i32 [ %3555, %3540 ], [ 0, %.loopexit313 ], [ 0, %3955 ]
  %3964 = phi i32 [ %3544, %3540 ], [ %3545, %.loopexit313 ], [ %3545, %3955 ]
  %3965 = icmp sgt i32 %3549, %3524
  br i1 %3965, label %.loopexit315, label %3540, !llvm.loop !83

.loopexit315:                                     ; preds = %3958, %3523
  %3966 = phi i16 [ %3519, %3523 ], [ %3959, %3958 ]
  %3967 = phi i32 [ %3520, %3523 ], [ %3960, %3958 ]
  %3968 = extractvalue { i32, i1 } %3374, 0, !nosanitize !30
  %3969 = icmp slt i32 %3968, 0
  br i1 %3969, label %.loopexit311, label %3970

3970:                                             ; preds = %.loopexit315
  %3971 = getelementptr i8, ptr %0, i64 2506
  %3972 = load i16, ptr %3971, align 2, !tbaa !28
  %3973 = icmp eq i16 %3972, 0
  %3974 = select i1 %3973, i32 138, i32 7
  %3975 = select i1 %3973, i32 3, i32 4
  %3976 = zext i16 %3972 to i32
  %3977 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3978 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3979 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3980 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3981 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3982 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3983 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3984

3984:                                             ; preds = %4402, %3970
  %3985 = phi i16 [ %3966, %3970 ], [ %4403, %4402 ]
  %3986 = phi i32 [ %3967, %3970 ], [ %4404, %4402 ]
  %3987 = phi i32 [ 0, %3970 ], [ %3993, %4402 ]
  %3988 = phi i32 [ -1, %3970 ], [ %4408, %4402 ]
  %3989 = phi i32 [ %3976, %3970 ], [ %3998, %4402 ]
  %3990 = phi i32 [ 0, %3970 ], [ %4407, %4402 ]
  %3991 = phi i32 [ %3974, %3970 ], [ %4406, %4402 ]
  %3992 = phi i32 [ %3975, %3970 ], [ %4405, %4402 ]
  %3993 = add i32 %3987, 1
  %3994 = sext i32 %3993 to i64
  %3995 = shl nsw i64 %3994, 2
  %3996 = getelementptr i8, ptr %3971, i64 %3995
  %3997 = load i16, ptr %3996, align 2, !tbaa !28
  %3998 = zext i16 %3997 to i32
  %3999 = add nsw i32 %3990, 1
  %4000 = icmp slt i32 %3999, %3991
  %4001 = icmp eq i32 %3989, %3998
  %4002 = select i1 %4000, i1 %4001, i1 false
  br i1 %4002, label %4402, label %4003

4003:                                             ; preds = %3984
  %4004 = icmp slt i32 %3999, %3992
  br i1 %4004, label %4005, label %4065

4005:                                             ; preds = %4003
  %4006 = zext nneg i32 %3989 to i64
  %4007 = getelementptr inbounds nuw [4 x i8], ptr %3977, i64 %4006
  %4008 = getelementptr inbounds nuw i8, ptr %4007, i64 2
  br label %4009

4009:                                             ; preds = %4062, %4005
  %4010 = phi i16 [ %4057, %4062 ], [ %3985, %4005 ]
  %4011 = phi i32 [ %4059, %4062 ], [ %3986, %4005 ]
  %4012 = phi i32 [ %4063, %4062 ], [ %3999, %4005 ]
  %4013 = load i16, ptr %4008, align 2, !tbaa !28
  %4014 = zext i16 %4013 to i32
  %4015 = sub nsw i32 16, %4014
  %4016 = icmp sgt i32 %4011, %4015
  %4017 = load i16, ptr %4007, align 4, !tbaa !28
  %4018 = zext i16 %4017 to i32
  %4019 = shl i32 %4018, %4011
  %4020 = trunc i32 %4019 to i16
  %4021 = or i16 %4010, %4020
  store i16 %4021, ptr %3468, align 8, !tbaa !25
  br i1 %4016, label %4022, label %4053

.loopexit308:                                     ; preds = %4371, %4327, %4282, %4238, %4191, %4147, %4096, %4056, %4036
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

4022:                                             ; preds = %4009
  %4023 = load i64, ptr %3469, align 8, !tbaa !31
  %4024 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4023, i64 1), !nosanitize !30
  %4025 = extractvalue { i64, i1 } %4024, 1, !nosanitize !30
  br i1 %4025, label %4026, label %4027, !prof !32, !nosanitize !30

4026:                                             ; preds = %4022
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4027:                                             ; preds = %4022
  %4028 = extractvalue { i64, i1 } %4024, 0, !nosanitize !30
  %4029 = load ptr, ptr %3470, align 8, !tbaa !33
  %4030 = trunc i16 %4021 to i8
  store i64 %4028, ptr %3469, align 8, !tbaa !31
  %4031 = getelementptr inbounds nuw i8, ptr %4029, i64 %4023
  store i8 %4030, ptr %4031, align 1, !tbaa !28
  %4032 = load i64, ptr %3469, align 8, !tbaa !31
  %4033 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4032, i64 1), !nosanitize !30
  %4034 = extractvalue { i64, i1 } %4033, 1, !nosanitize !30
  br i1 %4034, label %4035, label %4036, !prof !32, !nosanitize !30

4035:                                             ; preds = %4046, %4027
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4036:                                             ; preds = %4027
  %4037 = extractvalue { i64, i1 } %4033, 0, !nosanitize !30
  %4038 = load ptr, ptr %3470, align 8, !tbaa !33
  %4039 = load i16, ptr %3468, align 8, !tbaa !25
  %4040 = lshr i16 %4039, 8
  %4041 = trunc nuw i16 %4040 to i8
  store i64 %4037, ptr %3469, align 8, !tbaa !31
  %4042 = getelementptr inbounds nuw i8, ptr %4038, i64 %4032
  store i8 %4041, ptr %4042, align 1, !tbaa !28
  %4043 = load i32, ptr %2685, align 4, !tbaa !26
  %4044 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4043), !nosanitize !30
  %4045 = extractvalue { i32, i1 } %4044, 1, !nosanitize !30
  br i1 %4045, label %.loopexit308, label %4046, !prof !32, !nosanitize !30

4046:                                             ; preds = %4036
  %4047 = extractvalue { i32, i1 } %4044, 0, !nosanitize !30
  %4048 = lshr i32 %4018, %4047
  %4049 = trunc nuw i32 %4048 to i16
  store i16 %4049, ptr %3468, align 8, !tbaa !25
  %4050 = add nsw i32 %4014, -16
  %4051 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4043, i32 %4050), !nosanitize !30
  %4052 = extractvalue { i32, i1 } %4051, 1, !nosanitize !30
  br i1 %4052, label %4035, label %4056, !prof !32, !nosanitize !30

4053:                                             ; preds = %4009
  %4054 = add nsw i32 %4011, %4014
  %4055 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4054, 0
  br label %4056

4056:                                             ; preds = %4053, %4046
  %4057 = phi i16 [ %4049, %4046 ], [ %4021, %4053 ]
  %4058 = phi { i32, i1 } [ %4051, %4046 ], [ %4055, %4053 ]
  %4059 = extractvalue { i32, i1 } %4058, 0
  store i32 %4059, ptr %2685, align 4, !tbaa !26
  %4060 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4012, i32 -1)
  %4061 = extractvalue { i32, i1 } %4060, 1, !nosanitize !30
  br i1 %4061, label %.loopexit308, label %4062, !prof !32, !nosanitize !30

4062:                                             ; preds = %4056
  %4063 = extractvalue { i32, i1 } %4060, 0, !nosanitize !30
  %4064 = icmp eq i32 %4063, 0
  br i1 %4064, label %.loopexit309, label %4009, !llvm.loop !82

4065:                                             ; preds = %4003
  %4066 = icmp eq i32 %3989, 0
  br i1 %4066, label %4212, label %4067

4067:                                             ; preds = %4065
  %4068 = icmp eq i32 %3989, %3988
  br i1 %4068, label %4120, label %4069

4069:                                             ; preds = %4067
  %4070 = zext nneg i32 %3989 to i64
  %4071 = getelementptr inbounds nuw [4 x i8], ptr %3977, i64 %4070
  %4072 = getelementptr inbounds nuw i8, ptr %4071, i64 2
  %4073 = load i16, ptr %4072, align 2, !tbaa !28
  %4074 = zext i16 %4073 to i32
  %4075 = sub nsw i32 16, %4074
  %4076 = icmp sgt i32 %3986, %4075
  %4077 = load i16, ptr %4071, align 4, !tbaa !28
  %4078 = zext i16 %4077 to i32
  %4079 = shl i32 %4078, %3986
  %4080 = trunc i32 %4079 to i16
  %4081 = or i16 %3985, %4080
  store i16 %4081, ptr %3468, align 8, !tbaa !25
  br i1 %4076, label %4082, label %4113

4082:                                             ; preds = %4069
  %4083 = load i64, ptr %3469, align 8, !tbaa !31
  %4084 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4083, i64 1), !nosanitize !30
  %4085 = extractvalue { i64, i1 } %4084, 1, !nosanitize !30
  br i1 %4085, label %4086, label %4087, !prof !32, !nosanitize !30

4086:                                             ; preds = %4082
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4087:                                             ; preds = %4082
  %4088 = extractvalue { i64, i1 } %4084, 0, !nosanitize !30
  %4089 = load ptr, ptr %3470, align 8, !tbaa !33
  %4090 = trunc i16 %4081 to i8
  store i64 %4088, ptr %3469, align 8, !tbaa !31
  %4091 = getelementptr inbounds nuw i8, ptr %4089, i64 %4083
  store i8 %4090, ptr %4091, align 1, !tbaa !28
  %4092 = load i64, ptr %3469, align 8, !tbaa !31
  %4093 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4092, i64 1), !nosanitize !30
  %4094 = extractvalue { i64, i1 } %4093, 1, !nosanitize !30
  br i1 %4094, label %4095, label %4096, !prof !32, !nosanitize !30

4095:                                             ; preds = %4106, %4087
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4096:                                             ; preds = %4087
  %4097 = extractvalue { i64, i1 } %4093, 0, !nosanitize !30
  %4098 = load ptr, ptr %3470, align 8, !tbaa !33
  %4099 = load i16, ptr %3468, align 8, !tbaa !25
  %4100 = lshr i16 %4099, 8
  %4101 = trunc nuw i16 %4100 to i8
  store i64 %4097, ptr %3469, align 8, !tbaa !31
  %4102 = getelementptr inbounds nuw i8, ptr %4098, i64 %4092
  store i8 %4101, ptr %4102, align 1, !tbaa !28
  %4103 = load i32, ptr %2685, align 4, !tbaa !26
  %4104 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4103), !nosanitize !30
  %4105 = extractvalue { i32, i1 } %4104, 1, !nosanitize !30
  br i1 %4105, label %.loopexit308, label %4106, !prof !32, !nosanitize !30

4106:                                             ; preds = %4096
  %4107 = extractvalue { i32, i1 } %4104, 0, !nosanitize !30
  %4108 = lshr i32 %4078, %4107
  %4109 = trunc nuw i32 %4108 to i16
  store i16 %4109, ptr %3468, align 8, !tbaa !25
  %4110 = add nsw i32 %4074, -16
  %4111 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4103, i32 %4110), !nosanitize !30
  %4112 = extractvalue { i32, i1 } %4111, 1, !nosanitize !30
  br i1 %4112, label %4095, label %4116, !prof !32, !nosanitize !30

4113:                                             ; preds = %4069
  %4114 = add nsw i32 %3986, %4074
  %4115 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4114, 0
  br label %4116

4116:                                             ; preds = %4113, %4106
  %4117 = phi i16 [ %4109, %4106 ], [ %4081, %4113 ]
  %4118 = phi { i32, i1 } [ %4111, %4106 ], [ %4115, %4113 ]
  %4119 = extractvalue { i32, i1 } %4118, 0
  store i32 %4119, ptr %2685, align 4, !tbaa !26
  br label %4120

4120:                                             ; preds = %4116, %4067
  %4121 = phi i16 [ %4117, %4116 ], [ %3985, %4067 ]
  %4122 = phi i32 [ %4119, %4116 ], [ %3986, %4067 ]
  %4123 = phi i32 [ %3990, %4116 ], [ %3999, %4067 ]
  %4124 = load i16, ptr %3979, align 2, !tbaa !28
  %4125 = zext i16 %4124 to i32
  %4126 = sub nsw i32 16, %4125
  %4127 = icmp sgt i32 %4122, %4126
  %4128 = load i16, ptr %3978, align 4, !tbaa !28
  %4129 = zext i16 %4128 to i32
  %4130 = shl i32 %4129, %4122
  %4131 = trunc i32 %4130 to i16
  %4132 = or i16 %4121, %4131
  store i16 %4132, ptr %3468, align 8, !tbaa !25
  br i1 %4127, label %4133, label %4164

4133:                                             ; preds = %4120
  %4134 = load i64, ptr %3469, align 8, !tbaa !31
  %4135 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4134, i64 1), !nosanitize !30
  %4136 = extractvalue { i64, i1 } %4135, 1, !nosanitize !30
  br i1 %4136, label %4137, label %4138, !prof !32, !nosanitize !30

4137:                                             ; preds = %4133
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4138:                                             ; preds = %4133
  %4139 = extractvalue { i64, i1 } %4135, 0, !nosanitize !30
  %4140 = load ptr, ptr %3470, align 8, !tbaa !33
  %4141 = trunc i16 %4132 to i8
  store i64 %4139, ptr %3469, align 8, !tbaa !31
  %4142 = getelementptr inbounds nuw i8, ptr %4140, i64 %4134
  store i8 %4141, ptr %4142, align 1, !tbaa !28
  %4143 = load i64, ptr %3469, align 8, !tbaa !31
  %4144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4143, i64 1), !nosanitize !30
  %4145 = extractvalue { i64, i1 } %4144, 1, !nosanitize !30
  br i1 %4145, label %4146, label %4147, !prof !32, !nosanitize !30

4146:                                             ; preds = %4157, %4138
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4147:                                             ; preds = %4138
  %4148 = extractvalue { i64, i1 } %4144, 0, !nosanitize !30
  %4149 = load ptr, ptr %3470, align 8, !tbaa !33
  %4150 = load i16, ptr %3468, align 8, !tbaa !25
  %4151 = lshr i16 %4150, 8
  %4152 = trunc nuw i16 %4151 to i8
  store i64 %4148, ptr %3469, align 8, !tbaa !31
  %4153 = getelementptr inbounds nuw i8, ptr %4149, i64 %4143
  store i8 %4152, ptr %4153, align 1, !tbaa !28
  %4154 = load i32, ptr %2685, align 4, !tbaa !26
  %4155 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4154), !nosanitize !30
  %4156 = extractvalue { i32, i1 } %4155, 1, !nosanitize !30
  br i1 %4156, label %.loopexit308, label %4157, !prof !32, !nosanitize !30

4157:                                             ; preds = %4147
  %4158 = extractvalue { i32, i1 } %4155, 0, !nosanitize !30
  %4159 = lshr i32 %4129, %4158
  %4160 = trunc nuw i32 %4159 to i16
  store i16 %4160, ptr %3468, align 8, !tbaa !25
  %4161 = add nsw i32 %4125, -16
  %4162 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4154, i32 %4161), !nosanitize !30
  %4163 = extractvalue { i32, i1 } %4162, 1, !nosanitize !30
  br i1 %4163, label %4146, label %4167, !prof !32, !nosanitize !30

4164:                                             ; preds = %4120
  %4165 = add nsw i32 %4122, %4125
  %4166 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4165, 0
  br label %4167

4167:                                             ; preds = %4164, %4157
  %4168 = phi i16 [ %4160, %4157 ], [ %4132, %4164 ]
  %4169 = phi { i32, i1 } [ %4162, %4157 ], [ %4166, %4164 ]
  %4170 = extractvalue { i32, i1 } %4169, 0
  store i32 %4170, ptr %2685, align 4, !tbaa !26
  %4171 = icmp sgt i32 %4170, 14
  %4172 = add i32 %4123, 65533
  br i1 %4171, label %4173, label %4206

4173:                                             ; preds = %4167
  %4174 = and i32 %4172, 65535
  %4175 = shl i32 %4172, %4170
  %4176 = trunc i32 %4175 to i16
  %4177 = or i16 %4168, %4176
  store i16 %4177, ptr %3468, align 8, !tbaa !25
  %4178 = load i64, ptr %3469, align 8, !tbaa !31
  %4179 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4178, i64 1), !nosanitize !30
  %4180 = extractvalue { i64, i1 } %4179, 1, !nosanitize !30
  br i1 %4180, label %4181, label %4182, !prof !32, !nosanitize !30

4181:                                             ; preds = %4173
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4182:                                             ; preds = %4173
  %4183 = extractvalue { i64, i1 } %4179, 0, !nosanitize !30
  %4184 = load ptr, ptr %3470, align 8, !tbaa !33
  %4185 = trunc i16 %4177 to i8
  store i64 %4183, ptr %3469, align 8, !tbaa !31
  %4186 = getelementptr inbounds nuw i8, ptr %4184, i64 %4178
  store i8 %4185, ptr %4186, align 1, !tbaa !28
  %4187 = load i64, ptr %3469, align 8, !tbaa !31
  %4188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4187, i64 1), !nosanitize !30
  %4189 = extractvalue { i64, i1 } %4188, 1, !nosanitize !30
  br i1 %4189, label %4190, label %4191, !prof !32, !nosanitize !30

4190:                                             ; preds = %4182
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4191:                                             ; preds = %4182
  %4192 = extractvalue { i64, i1 } %4188, 0, !nosanitize !30
  %4193 = load ptr, ptr %3470, align 8, !tbaa !33
  %4194 = load i16, ptr %3468, align 8, !tbaa !25
  %4195 = lshr i16 %4194, 8
  %4196 = trunc nuw i16 %4195 to i8
  store i64 %4192, ptr %3469, align 8, !tbaa !31
  %4197 = getelementptr inbounds nuw i8, ptr %4193, i64 %4187
  store i8 %4196, ptr %4197, align 1, !tbaa !28
  %4198 = load i32, ptr %2685, align 4, !tbaa !26
  %4199 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4198), !nosanitize !30
  %4200 = extractvalue { i32, i1 } %4199, 1, !nosanitize !30
  br i1 %4200, label %.loopexit308, label %4201, !prof !32, !nosanitize !30

4201:                                             ; preds = %4191
  %4202 = extractvalue { i32, i1 } %4199, 0, !nosanitize !30
  %4203 = lshr i32 %4174, %4202
  %4204 = trunc nuw i32 %4203 to i16
  store i16 %4204, ptr %3468, align 8, !tbaa !25
  %4205 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4198, i32 -14), !nosanitize !30
  br label %4392

4206:                                             ; preds = %4167
  %4207 = shl i32 %4172, %4170
  %4208 = trunc i32 %4207 to i16
  %4209 = or i16 %4168, %4208
  store i16 %4209, ptr %3468, align 8, !tbaa !25
  %4210 = add nsw i32 %4170, 2
  %4211 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4210, 0
  br label %4392

4212:                                             ; preds = %4065
  %4213 = icmp slt i32 %3990, 10
  br i1 %4213, label %4214, label %4303

4214:                                             ; preds = %4212
  %4215 = load i16, ptr %3983, align 2, !tbaa !28
  %4216 = zext i16 %4215 to i32
  %4217 = sub nsw i32 16, %4216
  %4218 = icmp sgt i32 %3986, %4217
  %4219 = load i16, ptr %3982, align 4, !tbaa !28
  %4220 = zext i16 %4219 to i32
  %4221 = shl i32 %4220, %3986
  %4222 = trunc i32 %4221 to i16
  %4223 = or i16 %3985, %4222
  store i16 %4223, ptr %3468, align 8, !tbaa !25
  br i1 %4218, label %4224, label %4255

4224:                                             ; preds = %4214
  %4225 = load i64, ptr %3469, align 8, !tbaa !31
  %4226 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4225, i64 1), !nosanitize !30
  %4227 = extractvalue { i64, i1 } %4226, 1, !nosanitize !30
  br i1 %4227, label %4228, label %4229, !prof !32, !nosanitize !30

4228:                                             ; preds = %4224
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4229:                                             ; preds = %4224
  %4230 = extractvalue { i64, i1 } %4226, 0, !nosanitize !30
  %4231 = load ptr, ptr %3470, align 8, !tbaa !33
  %4232 = trunc i16 %4223 to i8
  store i64 %4230, ptr %3469, align 8, !tbaa !31
  %4233 = getelementptr inbounds nuw i8, ptr %4231, i64 %4225
  store i8 %4232, ptr %4233, align 1, !tbaa !28
  %4234 = load i64, ptr %3469, align 8, !tbaa !31
  %4235 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4234, i64 1), !nosanitize !30
  %4236 = extractvalue { i64, i1 } %4235, 1, !nosanitize !30
  br i1 %4236, label %4237, label %4238, !prof !32, !nosanitize !30

4237:                                             ; preds = %4248, %4229
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4238:                                             ; preds = %4229
  %4239 = extractvalue { i64, i1 } %4235, 0, !nosanitize !30
  %4240 = load ptr, ptr %3470, align 8, !tbaa !33
  %4241 = load i16, ptr %3468, align 8, !tbaa !25
  %4242 = lshr i16 %4241, 8
  %4243 = trunc nuw i16 %4242 to i8
  store i64 %4239, ptr %3469, align 8, !tbaa !31
  %4244 = getelementptr inbounds nuw i8, ptr %4240, i64 %4234
  store i8 %4243, ptr %4244, align 1, !tbaa !28
  %4245 = load i32, ptr %2685, align 4, !tbaa !26
  %4246 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4245), !nosanitize !30
  %4247 = extractvalue { i32, i1 } %4246, 1, !nosanitize !30
  br i1 %4247, label %.loopexit308, label %4248, !prof !32, !nosanitize !30

4248:                                             ; preds = %4238
  %4249 = extractvalue { i32, i1 } %4246, 0, !nosanitize !30
  %4250 = lshr i32 %4220, %4249
  %4251 = trunc nuw i32 %4250 to i16
  store i16 %4251, ptr %3468, align 8, !tbaa !25
  %4252 = add nsw i32 %4216, -16
  %4253 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4245, i32 %4252), !nosanitize !30
  %4254 = extractvalue { i32, i1 } %4253, 1, !nosanitize !30
  br i1 %4254, label %4237, label %4258, !prof !32, !nosanitize !30

4255:                                             ; preds = %4214
  %4256 = add nsw i32 %3986, %4216
  %4257 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4256, 0
  br label %4258

4258:                                             ; preds = %4255, %4248
  %4259 = phi i16 [ %4251, %4248 ], [ %4223, %4255 ]
  %4260 = phi { i32, i1 } [ %4253, %4248 ], [ %4257, %4255 ]
  %4261 = extractvalue { i32, i1 } %4260, 0
  store i32 %4261, ptr %2685, align 4, !tbaa !26
  %4262 = icmp sgt i32 %4261, 13
  %4263 = add nsw i32 %3990, 65534
  br i1 %4262, label %4264, label %4297

4264:                                             ; preds = %4258
  %4265 = and i32 %4263, 65535
  %4266 = shl i32 %4263, %4261
  %4267 = trunc i32 %4266 to i16
  %4268 = or i16 %4259, %4267
  store i16 %4268, ptr %3468, align 8, !tbaa !25
  %4269 = load i64, ptr %3469, align 8, !tbaa !31
  %4270 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4269, i64 1), !nosanitize !30
  %4271 = extractvalue { i64, i1 } %4270, 1, !nosanitize !30
  br i1 %4271, label %4272, label %4273, !prof !32, !nosanitize !30

4272:                                             ; preds = %4264
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4273:                                             ; preds = %4264
  %4274 = extractvalue { i64, i1 } %4270, 0, !nosanitize !30
  %4275 = load ptr, ptr %3470, align 8, !tbaa !33
  %4276 = trunc i16 %4268 to i8
  store i64 %4274, ptr %3469, align 8, !tbaa !31
  %4277 = getelementptr inbounds nuw i8, ptr %4275, i64 %4269
  store i8 %4276, ptr %4277, align 1, !tbaa !28
  %4278 = load i64, ptr %3469, align 8, !tbaa !31
  %4279 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4278, i64 1), !nosanitize !30
  %4280 = extractvalue { i64, i1 } %4279, 1, !nosanitize !30
  br i1 %4280, label %4281, label %4282, !prof !32, !nosanitize !30

4281:                                             ; preds = %4273
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4282:                                             ; preds = %4273
  %4283 = extractvalue { i64, i1 } %4279, 0, !nosanitize !30
  %4284 = load ptr, ptr %3470, align 8, !tbaa !33
  %4285 = load i16, ptr %3468, align 8, !tbaa !25
  %4286 = lshr i16 %4285, 8
  %4287 = trunc nuw i16 %4286 to i8
  store i64 %4283, ptr %3469, align 8, !tbaa !31
  %4288 = getelementptr inbounds nuw i8, ptr %4284, i64 %4278
  store i8 %4287, ptr %4288, align 1, !tbaa !28
  %4289 = load i32, ptr %2685, align 4, !tbaa !26
  %4290 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4289), !nosanitize !30
  %4291 = extractvalue { i32, i1 } %4290, 1, !nosanitize !30
  br i1 %4291, label %.loopexit308, label %4292, !prof !32, !nosanitize !30

4292:                                             ; preds = %4282
  %4293 = extractvalue { i32, i1 } %4290, 0, !nosanitize !30
  %4294 = lshr i32 %4265, %4293
  %4295 = trunc nuw i32 %4294 to i16
  store i16 %4295, ptr %3468, align 8, !tbaa !25
  %4296 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4289, i32 -13), !nosanitize !30
  br label %4392

4297:                                             ; preds = %4258
  %4298 = shl i32 %4263, %4261
  %4299 = trunc i32 %4298 to i16
  %4300 = or i16 %4259, %4299
  store i16 %4300, ptr %3468, align 8, !tbaa !25
  %4301 = add nsw i32 %4261, 3
  %4302 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4301, 0
  br label %4392

4303:                                             ; preds = %4212
  %4304 = load i16, ptr %3981, align 2, !tbaa !28
  %4305 = zext i16 %4304 to i32
  %4306 = sub nsw i32 16, %4305
  %4307 = icmp sgt i32 %3986, %4306
  %4308 = load i16, ptr %3980, align 4, !tbaa !28
  %4309 = zext i16 %4308 to i32
  %4310 = shl i32 %4309, %3986
  %4311 = trunc i32 %4310 to i16
  %4312 = or i16 %3985, %4311
  store i16 %4312, ptr %3468, align 8, !tbaa !25
  br i1 %4307, label %4313, label %4344

4313:                                             ; preds = %4303
  %4314 = load i64, ptr %3469, align 8, !tbaa !31
  %4315 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4314, i64 1), !nosanitize !30
  %4316 = extractvalue { i64, i1 } %4315, 1, !nosanitize !30
  br i1 %4316, label %4317, label %4318, !prof !32, !nosanitize !30

4317:                                             ; preds = %4313
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4318:                                             ; preds = %4313
  %4319 = extractvalue { i64, i1 } %4315, 0, !nosanitize !30
  %4320 = load ptr, ptr %3470, align 8, !tbaa !33
  %4321 = trunc i16 %4312 to i8
  store i64 %4319, ptr %3469, align 8, !tbaa !31
  %4322 = getelementptr inbounds nuw i8, ptr %4320, i64 %4314
  store i8 %4321, ptr %4322, align 1, !tbaa !28
  %4323 = load i64, ptr %3469, align 8, !tbaa !31
  %4324 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4323, i64 1), !nosanitize !30
  %4325 = extractvalue { i64, i1 } %4324, 1, !nosanitize !30
  br i1 %4325, label %4326, label %4327, !prof !32, !nosanitize !30

4326:                                             ; preds = %4337, %4318
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4327:                                             ; preds = %4318
  %4328 = extractvalue { i64, i1 } %4324, 0, !nosanitize !30
  %4329 = load ptr, ptr %3470, align 8, !tbaa !33
  %4330 = load i16, ptr %3468, align 8, !tbaa !25
  %4331 = lshr i16 %4330, 8
  %4332 = trunc nuw i16 %4331 to i8
  store i64 %4328, ptr %3469, align 8, !tbaa !31
  %4333 = getelementptr inbounds nuw i8, ptr %4329, i64 %4323
  store i8 %4332, ptr %4333, align 1, !tbaa !28
  %4334 = load i32, ptr %2685, align 4, !tbaa !26
  %4335 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4334), !nosanitize !30
  %4336 = extractvalue { i32, i1 } %4335, 1, !nosanitize !30
  br i1 %4336, label %.loopexit308, label %4337, !prof !32, !nosanitize !30

4337:                                             ; preds = %4327
  %4338 = extractvalue { i32, i1 } %4335, 0, !nosanitize !30
  %4339 = lshr i32 %4309, %4338
  %4340 = trunc nuw i32 %4339 to i16
  store i16 %4340, ptr %3468, align 8, !tbaa !25
  %4341 = add nsw i32 %4305, -16
  %4342 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4334, i32 %4341), !nosanitize !30
  %4343 = extractvalue { i32, i1 } %4342, 1, !nosanitize !30
  br i1 %4343, label %4326, label %4347, !prof !32, !nosanitize !30

4344:                                             ; preds = %4303
  %4345 = add nsw i32 %3986, %4305
  %4346 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4345, 0
  br label %4347

4347:                                             ; preds = %4344, %4337
  %4348 = phi i16 [ %4340, %4337 ], [ %4312, %4344 ]
  %4349 = phi { i32, i1 } [ %4342, %4337 ], [ %4346, %4344 ]
  %4350 = extractvalue { i32, i1 } %4349, 0
  store i32 %4350, ptr %2685, align 4, !tbaa !26
  %4351 = icmp sgt i32 %4350, 9
  %4352 = add nuw i32 %3990, 65526
  br i1 %4351, label %4353, label %4386

4353:                                             ; preds = %4347
  %4354 = and i32 %4352, 65535
  %4355 = shl i32 %4352, %4350
  %4356 = trunc i32 %4355 to i16
  %4357 = or i16 %4348, %4356
  store i16 %4357, ptr %3468, align 8, !tbaa !25
  %4358 = load i64, ptr %3469, align 8, !tbaa !31
  %4359 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4358, i64 1), !nosanitize !30
  %4360 = extractvalue { i64, i1 } %4359, 1, !nosanitize !30
  br i1 %4360, label %4361, label %4362, !prof !32, !nosanitize !30

4361:                                             ; preds = %4353
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4362:                                             ; preds = %4353
  %4363 = extractvalue { i64, i1 } %4359, 0, !nosanitize !30
  %4364 = load ptr, ptr %3470, align 8, !tbaa !33
  %4365 = trunc i16 %4357 to i8
  store i64 %4363, ptr %3469, align 8, !tbaa !31
  %4366 = getelementptr inbounds nuw i8, ptr %4364, i64 %4358
  store i8 %4365, ptr %4366, align 1, !tbaa !28
  %4367 = load i64, ptr %3469, align 8, !tbaa !31
  %4368 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4367, i64 1), !nosanitize !30
  %4369 = extractvalue { i64, i1 } %4368, 1, !nosanitize !30
  br i1 %4369, label %4370, label %4371, !prof !32, !nosanitize !30

4370:                                             ; preds = %4362
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4371:                                             ; preds = %4362
  %4372 = extractvalue { i64, i1 } %4368, 0, !nosanitize !30
  %4373 = load ptr, ptr %3470, align 8, !tbaa !33
  %4374 = load i16, ptr %3468, align 8, !tbaa !25
  %4375 = lshr i16 %4374, 8
  %4376 = trunc nuw i16 %4375 to i8
  store i64 %4372, ptr %3469, align 8, !tbaa !31
  %4377 = getelementptr inbounds nuw i8, ptr %4373, i64 %4367
  store i8 %4376, ptr %4377, align 1, !tbaa !28
  %4378 = load i32, ptr %2685, align 4, !tbaa !26
  %4379 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4378), !nosanitize !30
  %4380 = extractvalue { i32, i1 } %4379, 1, !nosanitize !30
  br i1 %4380, label %.loopexit308, label %4381, !prof !32, !nosanitize !30

4381:                                             ; preds = %4371
  %4382 = extractvalue { i32, i1 } %4379, 0, !nosanitize !30
  %4383 = lshr i32 %4354, %4382
  %4384 = trunc nuw i32 %4383 to i16
  store i16 %4384, ptr %3468, align 8, !tbaa !25
  %4385 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4378, i32 -9), !nosanitize !30
  br label %4392

4386:                                             ; preds = %4347
  %4387 = shl i32 %4352, %4350
  %4388 = trunc i32 %4387 to i16
  %4389 = or i16 %4348, %4388
  store i16 %4389, ptr %3468, align 8, !tbaa !25
  %4390 = add nsw i32 %4350, 7
  %4391 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4390, 0
  br label %4392

4392:                                             ; preds = %4292, %4381, %4201, %4386, %4297, %4206
  %4393 = phi i16 [ %4204, %4201 ], [ %4209, %4206 ], [ %4295, %4292 ], [ %4300, %4297 ], [ %4384, %4381 ], [ %4389, %4386 ]
  %4394 = phi { i32, i1 } [ %4205, %4201 ], [ %4211, %4206 ], [ %4296, %4292 ], [ %4302, %4297 ], [ %4385, %4381 ], [ %4391, %4386 ]
  %4395 = extractvalue { i32, i1 } %4394, 0
  store i32 %4395, ptr %2685, align 4, !tbaa !26
  br label %.loopexit309

.loopexit309:                                     ; preds = %4062, %4392
  %4396 = phi i16 [ %4393, %4392 ], [ %4057, %4062 ]
  %4397 = phi i32 [ %4395, %4392 ], [ %4059, %4062 ]
  %4398 = icmp eq i16 %3997, 0
  br i1 %4398, label %4402, label %4399

4399:                                             ; preds = %.loopexit309
  %4400 = select i1 %4001, i32 3, i32 4
  %4401 = select i1 %4001, i32 6, i32 7
  br label %4402

4402:                                             ; preds = %4399, %.loopexit309, %3984
  %4403 = phi i16 [ %3985, %3984 ], [ %4396, %.loopexit309 ], [ %4396, %4399 ]
  %4404 = phi i32 [ %3986, %3984 ], [ %4397, %.loopexit309 ], [ %4397, %4399 ]
  %4405 = phi i32 [ %3992, %3984 ], [ 3, %.loopexit309 ], [ %4400, %4399 ]
  %4406 = phi i32 [ %3991, %3984 ], [ 138, %.loopexit309 ], [ %4401, %4399 ]
  %4407 = phi i32 [ %3999, %3984 ], [ 0, %.loopexit309 ], [ 0, %4399 ]
  %4408 = phi i32 [ %3988, %3984 ], [ %3989, %.loopexit309 ], [ %3989, %4399 ]
  %4409 = icmp sgt i32 %3993, %3968
  br i1 %4409, label %.loopexit311, label %3984, !llvm.loop !83

.loopexit311:                                     ; preds = %4402, %.loopexit315
  %4410 = phi i16 [ %3966, %.loopexit315 ], [ %4403, %4402 ]
  %4411 = phi i32 [ %3967, %.loopexit315 ], [ %4404, %4402 ]
  %4412 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %4413 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %4414 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %4415 = load i32, ptr %4414, align 4, !tbaa !29
  %4416 = icmp eq i32 %4415, 0
  br i1 %4416, label %.loopexit307, label %4417

4417:                                             ; preds = %.loopexit311
  %4418 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %4419

4419:                                             ; preds = %4735, %4417
  %4420 = phi i16 [ %4736, %4735 ], [ %4410, %4417 ]
  %4421 = phi i32 [ %4737, %4735 ], [ %4411, %4417 ]
  %4422 = phi i32 [ %4441, %4735 ], [ 0, %4417 ]
  %4423 = load ptr, ptr %4418, align 8, !tbaa !79
  %4424 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4422, i32 2)
  %4425 = extractvalue { i32, i1 } %4424, 0, !nosanitize !30
  %4426 = extractvalue { i32, i1 } %4424, 1, !nosanitize !30
  br i1 %4426, label %4427, label %4428, !prof !32, !nosanitize !30

4427:                                             ; preds = %4419
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4428:                                             ; preds = %4419
  %4429 = add nuw i32 %4422, 1
  %4430 = zext i32 %4422 to i64
  %4431 = getelementptr inbounds nuw i8, ptr %4423, i64 %4430
  %4432 = load i8, ptr %4431, align 1, !tbaa !28
  %4433 = zext i8 %4432 to i32
  %4434 = zext i32 %4429 to i64
  %4435 = getelementptr inbounds nuw i8, ptr %4423, i64 %4434
  %4436 = load i8, ptr %4435, align 1, !tbaa !28
  %4437 = zext i8 %4436 to i32
  %4438 = shl nuw nsw i32 %4437, 8
  %4439 = or disjoint i32 %4438, %4433
  %4440 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4425, i32 1), !nosanitize !30
  %4441 = extractvalue { i32, i1 } %4440, 0, !nosanitize !30
  %4442 = extractvalue { i32, i1 } %4440, 1, !nosanitize !30
  br i1 %4442, label %4443, label %4444, !prof !32, !nosanitize !30

4443:                                             ; preds = %4428
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4444:                                             ; preds = %4428
  %4445 = zext i32 %4425 to i64
  %4446 = getelementptr inbounds nuw i8, ptr %4423, i64 %4445
  %4447 = load i8, ptr %4446, align 1, !tbaa !28
  %4448 = zext i8 %4447 to i32
  %4449 = icmp eq i32 %4439, 0
  %4450 = zext i8 %4447 to i64
  br i1 %4449, label %4451, label %4498

4451:                                             ; preds = %4444
  %4452 = getelementptr inbounds nuw [4 x i8], ptr %4412, i64 %4450
  %4453 = getelementptr inbounds nuw i8, ptr %4452, i64 2
  %4454 = load i16, ptr %4453, align 2, !tbaa !28
  %4455 = zext i16 %4454 to i32
  %4456 = sub nsw i32 16, %4455
  %4457 = icmp sgt i32 %4421, %4456
  %4458 = load i16, ptr %4452, align 2, !tbaa !28
  %4459 = zext i16 %4458 to i32
  %4460 = shl i32 %4459, %4421
  %4461 = trunc i32 %4460 to i16
  %4462 = or i16 %4420, %4461
  store i16 %4462, ptr %3468, align 8, !tbaa !25
  br i1 %4457, label %4464, label %4495

4463:                                             ; preds = %4586, %4562, %4556, %4528, %4478
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

4464:                                             ; preds = %4451
  %4465 = load i64, ptr %3469, align 8, !tbaa !31
  %4466 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4465, i64 1), !nosanitize !30
  %4467 = extractvalue { i64, i1 } %4466, 1, !nosanitize !30
  br i1 %4467, label %4468, label %4469, !prof !32, !nosanitize !30

4468:                                             ; preds = %4464
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4469:                                             ; preds = %4464
  %4470 = extractvalue { i64, i1 } %4466, 0, !nosanitize !30
  %4471 = load ptr, ptr %3470, align 8, !tbaa !33
  %4472 = trunc i16 %4462 to i8
  store i64 %4470, ptr %3469, align 8, !tbaa !31
  %4473 = getelementptr inbounds nuw i8, ptr %4471, i64 %4465
  store i8 %4472, ptr %4473, align 1, !tbaa !28
  %4474 = load i64, ptr %3469, align 8, !tbaa !31
  %4475 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4474, i64 1), !nosanitize !30
  %4476 = extractvalue { i64, i1 } %4475, 1, !nosanitize !30
  br i1 %4476, label %4477, label %4478, !prof !32, !nosanitize !30

4477:                                             ; preds = %4488, %4469
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4478:                                             ; preds = %4469
  %4479 = extractvalue { i64, i1 } %4475, 0, !nosanitize !30
  %4480 = load ptr, ptr %3470, align 8, !tbaa !33
  %4481 = load i16, ptr %3468, align 8, !tbaa !25
  %4482 = lshr i16 %4481, 8
  %4483 = trunc nuw i16 %4482 to i8
  store i64 %4479, ptr %3469, align 8, !tbaa !31
  %4484 = getelementptr inbounds nuw i8, ptr %4480, i64 %4474
  store i8 %4483, ptr %4484, align 1, !tbaa !28
  %4485 = load i32, ptr %2685, align 4, !tbaa !26
  %4486 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4485), !nosanitize !30
  %4487 = extractvalue { i32, i1 } %4486, 1, !nosanitize !30
  br i1 %4487, label %4463, label %4488, !prof !32, !nosanitize !30

4488:                                             ; preds = %4478
  %4489 = extractvalue { i32, i1 } %4486, 0, !nosanitize !30
  %4490 = lshr i32 %4459, %4489
  %4491 = trunc nuw i32 %4490 to i16
  store i16 %4491, ptr %3468, align 8, !tbaa !25
  %4492 = add nsw i32 %4455, -16
  %4493 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4485, i32 %4492), !nosanitize !30
  %4494 = extractvalue { i32, i1 } %4493, 1, !nosanitize !30
  br i1 %4494, label %4477, label %4731, !prof !32, !nosanitize !30

4495:                                             ; preds = %4451
  %4496 = add nsw i32 %4421, %4455
  %4497 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4496, 0
  br label %4731

4498:                                             ; preds = %4444
  %4499 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %4450
  %4500 = load i8, ptr %4499, align 1, !tbaa !28
  %4501 = zext i8 %4500 to i64
  %4502 = getelementptr inbounds nuw [4 x i8], ptr %4412, i64 %4501
  %4503 = getelementptr inbounds nuw i8, ptr %4502, i64 1028
  %4504 = getelementptr inbounds nuw i8, ptr %4502, i64 1030
  %4505 = load i16, ptr %4504, align 2, !tbaa !28
  %4506 = zext i16 %4505 to i32
  %4507 = sub nsw i32 16, %4506
  %4508 = icmp sgt i32 %4421, %4507
  %4509 = load i16, ptr %4503, align 2, !tbaa !28
  %4510 = zext i16 %4509 to i32
  %4511 = shl i32 %4510, %4421
  %4512 = trunc i32 %4511 to i16
  %4513 = or i16 %4420, %4512
  store i16 %4513, ptr %3468, align 8, !tbaa !25
  br i1 %4508, label %4514, label %4545

4514:                                             ; preds = %4498
  %4515 = load i64, ptr %3469, align 8, !tbaa !31
  %4516 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4515, i64 1), !nosanitize !30
  %4517 = extractvalue { i64, i1 } %4516, 1, !nosanitize !30
  br i1 %4517, label %4518, label %4519, !prof !32, !nosanitize !30

4518:                                             ; preds = %4514
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4519:                                             ; preds = %4514
  %4520 = extractvalue { i64, i1 } %4516, 0, !nosanitize !30
  %4521 = load ptr, ptr %3470, align 8, !tbaa !33
  %4522 = trunc i16 %4513 to i8
  store i64 %4520, ptr %3469, align 8, !tbaa !31
  %4523 = getelementptr inbounds nuw i8, ptr %4521, i64 %4515
  store i8 %4522, ptr %4523, align 1, !tbaa !28
  %4524 = load i64, ptr %3469, align 8, !tbaa !31
  %4525 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4524, i64 1), !nosanitize !30
  %4526 = extractvalue { i64, i1 } %4525, 1, !nosanitize !30
  br i1 %4526, label %4527, label %4528, !prof !32, !nosanitize !30

4527:                                             ; preds = %4538, %4519
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4528:                                             ; preds = %4519
  %4529 = extractvalue { i64, i1 } %4525, 0, !nosanitize !30
  %4530 = load ptr, ptr %3470, align 8, !tbaa !33
  %4531 = load i16, ptr %3468, align 8, !tbaa !25
  %4532 = lshr i16 %4531, 8
  %4533 = trunc nuw i16 %4532 to i8
  store i64 %4529, ptr %3469, align 8, !tbaa !31
  %4534 = getelementptr inbounds nuw i8, ptr %4530, i64 %4524
  store i8 %4533, ptr %4534, align 1, !tbaa !28
  %4535 = load i32, ptr %2685, align 4, !tbaa !26
  %4536 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4535), !nosanitize !30
  %4537 = extractvalue { i32, i1 } %4536, 1, !nosanitize !30
  br i1 %4537, label %4463, label %4538, !prof !32, !nosanitize !30

4538:                                             ; preds = %4528
  %4539 = extractvalue { i32, i1 } %4536, 0, !nosanitize !30
  %4540 = lshr i32 %4510, %4539
  %4541 = trunc nuw i32 %4540 to i16
  store i16 %4541, ptr %3468, align 8, !tbaa !25
  %4542 = add nsw i32 %4506, -16
  %4543 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4535, i32 %4542), !nosanitize !30
  %4544 = extractvalue { i32, i1 } %4543, 1, !nosanitize !30
  br i1 %4544, label %4527, label %4548, !prof !32, !nosanitize !30

4545:                                             ; preds = %4498
  %4546 = add nsw i32 %4421, %4506
  %4547 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4546, 0
  br label %4548

4548:                                             ; preds = %4545, %4538
  %4549 = phi i16 [ %4541, %4538 ], [ %4513, %4545 ]
  %4550 = phi { i32, i1 } [ %4543, %4538 ], [ %4547, %4545 ]
  %4551 = extractvalue { i32, i1 } %4550, 0
  store i32 %4551, ptr %2685, align 4, !tbaa !26
  %4552 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %4501
  %4553 = load i32, ptr %4552, align 4, !tbaa !49
  %4554 = add i8 %4500, -28
  %4555 = icmp ult i8 %4554, -20
  br i1 %4555, label %4613, label %4556

4556:                                             ; preds = %4548
  %4557 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %4501
  %4558 = load i32, ptr %4557, align 4, !tbaa !49
  %4559 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4448, i32 %4558), !nosanitize !30
  %4560 = extractvalue { i32, i1 } %4559, 0, !nosanitize !30
  %4561 = extractvalue { i32, i1 } %4559, 1, !nosanitize !30
  br i1 %4561, label %4463, label %4562, !prof !32, !nosanitize !30

4562:                                             ; preds = %4556
  %4563 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4553), !nosanitize !30
  %4564 = extractvalue { i32, i1 } %4563, 1, !nosanitize !30
  br i1 %4564, label %4463, label %4565, !prof !32, !nosanitize !30

4565:                                             ; preds = %4562
  %4566 = extractvalue { i32, i1 } %4563, 0, !nosanitize !30
  %4567 = icmp sgt i32 %4551, %4566
  br i1 %4567, label %4568, label %4603

4568:                                             ; preds = %4565
  %4569 = and i32 %4560, 65535
  %4570 = shl i32 %4560, %4551
  %4571 = trunc i32 %4570 to i16
  %4572 = or i16 %4549, %4571
  store i16 %4572, ptr %3468, align 8, !tbaa !25
  %4573 = load i64, ptr %3469, align 8, !tbaa !31
  %4574 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4573, i64 1), !nosanitize !30
  %4575 = extractvalue { i64, i1 } %4574, 1, !nosanitize !30
  br i1 %4575, label %4576, label %4577, !prof !32, !nosanitize !30

4576:                                             ; preds = %4568
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4577:                                             ; preds = %4568
  %4578 = extractvalue { i64, i1 } %4574, 0, !nosanitize !30
  %4579 = load ptr, ptr %3470, align 8, !tbaa !33
  %4580 = trunc i16 %4572 to i8
  store i64 %4578, ptr %3469, align 8, !tbaa !31
  %4581 = getelementptr inbounds nuw i8, ptr %4579, i64 %4573
  store i8 %4580, ptr %4581, align 1, !tbaa !28
  %4582 = load i64, ptr %3469, align 8, !tbaa !31
  %4583 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4582, i64 1), !nosanitize !30
  %4584 = extractvalue { i64, i1 } %4583, 1, !nosanitize !30
  br i1 %4584, label %4585, label %4586, !prof !32, !nosanitize !30

4585:                                             ; preds = %4603, %4596, %4577
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4586:                                             ; preds = %4577
  %4587 = extractvalue { i64, i1 } %4583, 0, !nosanitize !30
  %4588 = load ptr, ptr %3470, align 8, !tbaa !33
  %4589 = load i16, ptr %3468, align 8, !tbaa !25
  %4590 = lshr i16 %4589, 8
  %4591 = trunc nuw i16 %4590 to i8
  store i64 %4587, ptr %3469, align 8, !tbaa !31
  %4592 = getelementptr inbounds nuw i8, ptr %4588, i64 %4582
  store i8 %4591, ptr %4592, align 1, !tbaa !28
  %4593 = load i32, ptr %2685, align 4, !tbaa !26
  %4594 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4593), !nosanitize !30
  %4595 = extractvalue { i32, i1 } %4594, 1, !nosanitize !30
  br i1 %4595, label %4463, label %4596, !prof !32, !nosanitize !30

4596:                                             ; preds = %4586
  %4597 = extractvalue { i32, i1 } %4594, 0, !nosanitize !30
  %4598 = lshr i32 %4569, %4597
  %4599 = trunc nuw i32 %4598 to i16
  store i16 %4599, ptr %3468, align 8, !tbaa !25
  %4600 = add i32 %4553, -16
  %4601 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4593, i32 %4600), !nosanitize !30
  %4602 = extractvalue { i32, i1 } %4601, 1, !nosanitize !30
  br i1 %4602, label %4585, label %4609, !prof !32, !nosanitize !30

4603:                                             ; preds = %4565
  %4604 = shl i32 %4560, %4551
  %4605 = trunc i32 %4604 to i16
  %4606 = or i16 %4549, %4605
  store i16 %4606, ptr %3468, align 8, !tbaa !25
  %4607 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4551, i32 %4553), !nosanitize !30
  %4608 = extractvalue { i32, i1 } %4607, 1, !nosanitize !30
  br i1 %4608, label %4585, label %4609, !prof !32, !nosanitize !30

4609:                                             ; preds = %4603, %4596
  %4610 = phi i16 [ %4599, %4596 ], [ %4606, %4603 ]
  %4611 = phi { i32, i1 } [ %4601, %4596 ], [ %4607, %4603 ]
  %4612 = extractvalue { i32, i1 } %4611, 0
  store i32 %4612, ptr %2685, align 4, !tbaa !26
  br label %4613

4613:                                             ; preds = %4609, %4548
  %4614 = phi i16 [ %4610, %4609 ], [ %4549, %4548 ]
  %4615 = phi i32 [ %4612, %4609 ], [ %4551, %4548 ]
  %4616 = add nsw i32 %4439, -1
  %4617 = icmp samesign ult i32 %4439, 257
  %4618 = lshr i32 %4616, 7
  %4619 = add nuw nsw i32 %4618, 256
  %4620 = select i1 %4617, i32 %4616, i32 %4619
  %4621 = zext nneg i32 %4620 to i64
  %4622 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4621
  %4623 = load i8, ptr %4622, align 1, !tbaa !28
  %4624 = zext i8 %4623 to i64
  %4625 = getelementptr inbounds nuw [4 x i8], ptr %4413, i64 %4624
  %4626 = getelementptr inbounds nuw i8, ptr %4625, i64 2
  %4627 = load i16, ptr %4626, align 2, !tbaa !28
  %4628 = zext i16 %4627 to i32
  %4629 = sub nsw i32 16, %4628
  %4630 = icmp sgt i32 %4615, %4629
  %4631 = load i16, ptr %4625, align 2, !tbaa !28
  %4632 = zext i16 %4631 to i32
  %4633 = shl i32 %4632, %4615
  %4634 = trunc i32 %4633 to i16
  %4635 = or i16 %4614, %4634
  store i16 %4635, ptr %3468, align 8, !tbaa !25
  br i1 %4630, label %4637, label %4668

4636:                                             ; preds = %4651
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

4637:                                             ; preds = %4613
  %4638 = load i64, ptr %3469, align 8, !tbaa !31
  %4639 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4638, i64 1), !nosanitize !30
  %4640 = extractvalue { i64, i1 } %4639, 1, !nosanitize !30
  br i1 %4640, label %4641, label %4642, !prof !32, !nosanitize !30

4641:                                             ; preds = %4637
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4642:                                             ; preds = %4637
  %4643 = extractvalue { i64, i1 } %4639, 0, !nosanitize !30
  %4644 = load ptr, ptr %3470, align 8, !tbaa !33
  %4645 = trunc i16 %4635 to i8
  store i64 %4643, ptr %3469, align 8, !tbaa !31
  %4646 = getelementptr inbounds nuw i8, ptr %4644, i64 %4638
  store i8 %4645, ptr %4646, align 1, !tbaa !28
  %4647 = load i64, ptr %3469, align 8, !tbaa !31
  %4648 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4647, i64 1), !nosanitize !30
  %4649 = extractvalue { i64, i1 } %4648, 1, !nosanitize !30
  br i1 %4649, label %4650, label %4651, !prof !32, !nosanitize !30

4650:                                             ; preds = %4661, %4642
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4651:                                             ; preds = %4642
  %4652 = extractvalue { i64, i1 } %4648, 0, !nosanitize !30
  %4653 = load ptr, ptr %3470, align 8, !tbaa !33
  %4654 = load i16, ptr %3468, align 8, !tbaa !25
  %4655 = lshr i16 %4654, 8
  %4656 = trunc nuw i16 %4655 to i8
  store i64 %4652, ptr %3469, align 8, !tbaa !31
  %4657 = getelementptr inbounds nuw i8, ptr %4653, i64 %4647
  store i8 %4656, ptr %4657, align 1, !tbaa !28
  %4658 = load i32, ptr %2685, align 4, !tbaa !26
  %4659 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4658), !nosanitize !30
  %4660 = extractvalue { i32, i1 } %4659, 1, !nosanitize !30
  br i1 %4660, label %4636, label %4661, !prof !32, !nosanitize !30

4661:                                             ; preds = %4651
  %4662 = extractvalue { i32, i1 } %4659, 0, !nosanitize !30
  %4663 = lshr i32 %4632, %4662
  %4664 = trunc nuw i32 %4663 to i16
  store i16 %4664, ptr %3468, align 8, !tbaa !25
  %4665 = add nsw i32 %4628, -16
  %4666 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4658, i32 %4665), !nosanitize !30
  %4667 = extractvalue { i32, i1 } %4666, 1, !nosanitize !30
  br i1 %4667, label %4650, label %4671, !prof !32, !nosanitize !30

4668:                                             ; preds = %4613
  %4669 = add nsw i32 %4615, %4628
  %4670 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4669, 0
  br label %4671

4671:                                             ; preds = %4668, %4661
  %4672 = phi i16 [ %4664, %4661 ], [ %4635, %4668 ]
  %4673 = phi { i32, i1 } [ %4666, %4661 ], [ %4670, %4668 ]
  %4674 = extractvalue { i32, i1 } %4673, 0
  store i32 %4674, ptr %2685, align 4, !tbaa !26
  %4675 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %4624
  %4676 = load i32, ptr %4675, align 4, !tbaa !49
  %4677 = icmp ult i8 %4623, 4
  br i1 %4677, label %4735, label %4678

4678:                                             ; preds = %4671
  %4679 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %4624
  %4680 = load i32, ptr %4679, align 4, !tbaa !49
  %4681 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %4616, i32 %4680), !nosanitize !30
  %4682 = extractvalue { i32, i1 } %4681, 0, !nosanitize !30
  %4683 = extractvalue { i32, i1 } %4681, 1, !nosanitize !30
  br i1 %4683, label %.loopexit306, label %4684, !prof !32, !nosanitize !30

.loopexit306:                                     ; preds = %4708, %4684, %4678, %4767
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

4684:                                             ; preds = %4678
  %4685 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4676), !nosanitize !30
  %4686 = extractvalue { i32, i1 } %4685, 1, !nosanitize !30
  br i1 %4686, label %.loopexit306, label %4687, !prof !32, !nosanitize !30

4687:                                             ; preds = %4684
  %4688 = extractvalue { i32, i1 } %4685, 0, !nosanitize !30
  %4689 = icmp sgt i32 %4674, %4688
  br i1 %4689, label %4690, label %4725

4690:                                             ; preds = %4687
  %4691 = and i32 %4682, 65535
  %4692 = shl i32 %4682, %4674
  %4693 = trunc i32 %4692 to i16
  %4694 = or i16 %4672, %4693
  store i16 %4694, ptr %3468, align 8, !tbaa !25
  %4695 = load i64, ptr %3469, align 8, !tbaa !31
  %4696 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4695, i64 1), !nosanitize !30
  %4697 = extractvalue { i64, i1 } %4696, 1, !nosanitize !30
  br i1 %4697, label %4698, label %4699, !prof !32, !nosanitize !30

4698:                                             ; preds = %4690
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4699:                                             ; preds = %4690
  %4700 = extractvalue { i64, i1 } %4696, 0, !nosanitize !30
  %4701 = load ptr, ptr %3470, align 8, !tbaa !33
  %4702 = trunc i16 %4694 to i8
  store i64 %4700, ptr %3469, align 8, !tbaa !31
  %4703 = getelementptr inbounds nuw i8, ptr %4701, i64 %4695
  store i8 %4702, ptr %4703, align 1, !tbaa !28
  %4704 = load i64, ptr %3469, align 8, !tbaa !31
  %4705 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4704, i64 1), !nosanitize !30
  %4706 = extractvalue { i64, i1 } %4705, 1, !nosanitize !30
  br i1 %4706, label %4707, label %4708, !prof !32, !nosanitize !30

4707:                                             ; preds = %4725, %4718, %4699
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4708:                                             ; preds = %4699
  %4709 = extractvalue { i64, i1 } %4705, 0, !nosanitize !30
  %4710 = load ptr, ptr %3470, align 8, !tbaa !33
  %4711 = load i16, ptr %3468, align 8, !tbaa !25
  %4712 = lshr i16 %4711, 8
  %4713 = trunc nuw i16 %4712 to i8
  store i64 %4709, ptr %3469, align 8, !tbaa !31
  %4714 = getelementptr inbounds nuw i8, ptr %4710, i64 %4704
  store i8 %4713, ptr %4714, align 1, !tbaa !28
  %4715 = load i32, ptr %2685, align 4, !tbaa !26
  %4716 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4715), !nosanitize !30
  %4717 = extractvalue { i32, i1 } %4716, 1, !nosanitize !30
  br i1 %4717, label %.loopexit306, label %4718, !prof !32, !nosanitize !30

4718:                                             ; preds = %4708
  %4719 = extractvalue { i32, i1 } %4716, 0, !nosanitize !30
  %4720 = lshr i32 %4691, %4719
  %4721 = trunc nuw i32 %4720 to i16
  store i16 %4721, ptr %3468, align 8, !tbaa !25
  %4722 = add i32 %4676, -16
  %4723 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4715, i32 %4722), !nosanitize !30
  %4724 = extractvalue { i32, i1 } %4723, 1, !nosanitize !30
  br i1 %4724, label %4707, label %4731, !prof !32, !nosanitize !30

4725:                                             ; preds = %4687
  %4726 = shl i32 %4682, %4674
  %4727 = trunc i32 %4726 to i16
  %4728 = or i16 %4672, %4727
  store i16 %4728, ptr %3468, align 8, !tbaa !25
  %4729 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4674, i32 %4676), !nosanitize !30
  %4730 = extractvalue { i32, i1 } %4729, 1, !nosanitize !30
  br i1 %4730, label %4707, label %4731, !prof !32, !nosanitize !30

4731:                                             ; preds = %4725, %4718, %4495, %4488
  %4732 = phi i16 [ %4491, %4488 ], [ %4462, %4495 ], [ %4721, %4718 ], [ %4728, %4725 ]
  %4733 = phi { i32, i1 } [ %4493, %4488 ], [ %4497, %4495 ], [ %4723, %4718 ], [ %4729, %4725 ]
  %4734 = extractvalue { i32, i1 } %4733, 0
  store i32 %4734, ptr %2685, align 4, !tbaa !26
  br label %4735

4735:                                             ; preds = %4731, %4671
  %4736 = phi i16 [ %4672, %4671 ], [ %4732, %4731 ]
  %4737 = phi i32 [ %4674, %4671 ], [ %4734, %4731 ]
  %4738 = load i32, ptr %4414, align 4, !tbaa !29
  %4739 = icmp ult i32 %4441, %4738
  br i1 %4739, label %4419, label %.loopexit307, !llvm.loop !80

.loopexit307:                                     ; preds = %4735, %.loopexit311
  %4740 = phi i16 [ %4410, %.loopexit311 ], [ %4736, %4735 ]
  %4741 = phi i32 [ %4411, %.loopexit311 ], [ %4737, %4735 ]
  %4742 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %4743 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %4744 = load i16, ptr %4743, align 2, !tbaa !28
  %4745 = zext i16 %4744 to i32
  %4746 = sub nsw i32 16, %4745
  %4747 = icmp sgt i32 %4741, %4746
  %4748 = load i16, ptr %4742, align 2, !tbaa !28
  %4749 = zext i16 %4748 to i32
  %4750 = shl i32 %4749, %4741
  %4751 = trunc i32 %4750 to i16
  %4752 = or i16 %4740, %4751
  store i16 %4752, ptr %3468, align 8, !tbaa !25
  br i1 %4747, label %4753, label %4784

4753:                                             ; preds = %.loopexit307
  %4754 = load i64, ptr %3469, align 8, !tbaa !31
  %4755 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4754, i64 1), !nosanitize !30
  %4756 = extractvalue { i64, i1 } %4755, 1, !nosanitize !30
  br i1 %4756, label %4757, label %4758, !prof !32, !nosanitize !30

4757:                                             ; preds = %4753
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4758:                                             ; preds = %4753
  %4759 = extractvalue { i64, i1 } %4755, 0, !nosanitize !30
  %4760 = load ptr, ptr %3470, align 8, !tbaa !33
  %4761 = trunc i16 %4752 to i8
  store i64 %4759, ptr %3469, align 8, !tbaa !31
  %4762 = getelementptr inbounds nuw i8, ptr %4760, i64 %4754
  store i8 %4761, ptr %4762, align 1, !tbaa !28
  %4763 = load i64, ptr %3469, align 8, !tbaa !31
  %4764 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4763, i64 1), !nosanitize !30
  %4765 = extractvalue { i64, i1 } %4764, 1, !nosanitize !30
  br i1 %4765, label %4766, label %4767, !prof !32, !nosanitize !30

4766:                                             ; preds = %4777, %4758
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4767:                                             ; preds = %4758
  %4768 = extractvalue { i64, i1 } %4764, 0, !nosanitize !30
  %4769 = load ptr, ptr %3470, align 8, !tbaa !33
  %4770 = load i16, ptr %3468, align 8, !tbaa !25
  %4771 = lshr i16 %4770, 8
  %4772 = trunc nuw i16 %4771 to i8
  store i64 %4768, ptr %3469, align 8, !tbaa !31
  %4773 = getelementptr inbounds nuw i8, ptr %4769, i64 %4763
  store i8 %4772, ptr %4773, align 1, !tbaa !28
  %4774 = load i32, ptr %2685, align 4, !tbaa !26
  %4775 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4774), !nosanitize !30
  %4776 = extractvalue { i32, i1 } %4775, 1, !nosanitize !30
  br i1 %4776, label %.loopexit306, label %4777, !prof !32, !nosanitize !30

4777:                                             ; preds = %4767
  %4778 = extractvalue { i32, i1 } %4775, 0, !nosanitize !30
  %4779 = lshr i32 %4749, %4778
  %4780 = trunc nuw i32 %4779 to i16
  store i16 %4780, ptr %3468, align 8, !tbaa !25
  %4781 = add nsw i32 %4745, -16
  %4782 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4774, i32 %4781), !nosanitize !30
  %4783 = extractvalue { i32, i1 } %4782, 1, !nosanitize !30
  br i1 %4783, label %4766, label %4787, !prof !32, !nosanitize !30

4784:                                             ; preds = %.loopexit307
  %4785 = add nsw i32 %4741, %4745
  %4786 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4785, 0
  br label %4787

4787:                                             ; preds = %4784, %4777
  %4788 = phi { i32, i1 } [ %4782, %4777 ], [ %4786, %4784 ]
  %4789 = extractvalue { i32, i1 } %4788, 0
  store i32 %4789, ptr %2685, align 4, !tbaa !26
  br label %4790

4790:                                             ; preds = %4787, %3252, %2839
  %4791 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %4792

4792:                                             ; preds = %4803, %4790
  %4793 = phi i64 [ 0, %4790 ], [ %4807, %4803 ]
  %4794 = getelementptr inbounds nuw [4 x i8], ptr %4791, i64 %4793
  store i16 0, ptr %4794, align 4, !tbaa !28
  %4795 = getelementptr inbounds nuw i8, ptr %4794, i64 4
  store i16 0, ptr %4795, align 4, !tbaa !28
  %4796 = getelementptr inbounds nuw [4 x i8], ptr %4791, i64 %4793
  %4797 = getelementptr inbounds nuw i8, ptr %4796, i64 8
  store i16 0, ptr %4797, align 4, !tbaa !28
  %4798 = getelementptr inbounds nuw i8, ptr %4796, i64 12
  store i16 0, ptr %4798, align 4, !tbaa !28
  %4799 = getelementptr inbounds nuw [4 x i8], ptr %4791, i64 %4793
  %4800 = getelementptr inbounds nuw i8, ptr %4799, i64 16
  store i16 0, ptr %4800, align 4, !tbaa !28
  %4801 = getelementptr inbounds nuw i8, ptr %4799, i64 20
  store i16 0, ptr %4801, align 4, !tbaa !28
  %4802 = icmp eq i64 %4793, 280
  br i1 %4802, label %4808, label %4803

4803:                                             ; preds = %4792
  %4804 = getelementptr inbounds nuw [4 x i8], ptr %4791, i64 %4793
  %4805 = getelementptr inbounds nuw i8, ptr %4804, i64 24
  store i16 0, ptr %4805, align 4, !tbaa !28
  %4806 = getelementptr inbounds nuw i8, ptr %4804, i64 28
  store i16 0, ptr %4806, align 4, !tbaa !28
  %4807 = add nuw nsw i64 %4793, 8
  br label %4792

4808:                                             ; preds = %4792
  %4809 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %4809, align 4, !tbaa !28
  %4810 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %4810, align 4, !tbaa !28
  %4811 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %4811, align 4, !tbaa !28
  %4812 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %4812, align 4, !tbaa !28
  %4813 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %4813, align 4, !tbaa !28
  %4814 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %4814, align 4, !tbaa !28
  %4815 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %4815, align 4, !tbaa !28
  %4816 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %4816, align 4, !tbaa !28
  %4817 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %4817, align 4, !tbaa !28
  %4818 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %4818, align 4, !tbaa !28
  %4819 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %4819, align 4, !tbaa !28
  %4820 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %4820, align 4, !tbaa !28
  %4821 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %4821, align 4, !tbaa !28
  %4822 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %4822, align 4, !tbaa !28
  %4823 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %4823, align 4, !tbaa !28
  %4824 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %4824, align 4, !tbaa !28
  %4825 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %4825, align 4, !tbaa !28
  %4826 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %4826, align 4, !tbaa !28
  %4827 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %4827, align 4, !tbaa !28
  %4828 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %4828, align 4, !tbaa !28
  %4829 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %4829, align 4, !tbaa !28
  %4830 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %4830, align 4, !tbaa !28
  %4831 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %4831, align 4, !tbaa !28
  %4832 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %4832, align 4, !tbaa !28
  %4833 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %4833, align 4, !tbaa !28
  %4834 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %4834, align 4, !tbaa !28
  %4835 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %4835, align 4, !tbaa !28
  %4836 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %4836, align 4, !tbaa !28
  %4837 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %4837, align 4, !tbaa !28
  %4838 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %4838, align 4, !tbaa !28
  %4839 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %4839, align 4, !tbaa !28
  %4840 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %4840, align 4, !tbaa !28
  %4841 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %4841, align 4, !tbaa !28
  %4842 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %4842, align 4, !tbaa !28
  %4843 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %4843, align 4, !tbaa !28
  %4844 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %4844, align 4, !tbaa !28
  %4845 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %4845, align 4, !tbaa !28
  %4846 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %4846, align 4, !tbaa !28
  %4847 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %4847, align 4, !tbaa !28
  %4848 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %4848, align 4, !tbaa !28
  %4849 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %4849, align 4, !tbaa !28
  %4850 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %4850, align 4, !tbaa !28
  %4851 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %4851, align 4, !tbaa !28
  %4852 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %4852, align 4, !tbaa !28
  %4853 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %4853, align 4, !tbaa !28
  %4854 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %4854, align 4, !tbaa !28
  %4855 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %4855, align 4, !tbaa !28
  %4856 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %4856, align 4, !tbaa !28
  %4857 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %4857, align 4, !tbaa !28
  %4858 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %4858, align 4, !tbaa !28
  %4859 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %4860 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %4860, align 4, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4859, i8 0, i64 20, i1 false)
  %4861 = icmp eq i32 %3, 0
  br i1 %4861, label %4918, label %4862

4862:                                             ; preds = %4808
  %4863 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %4864 = load i32, ptr %4863, align 4, !tbaa !26
  %4865 = icmp sgt i32 %4864, 8
  br i1 %4865, label %4866, label %4891

4866:                                             ; preds = %4862
  %4867 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4868 = load i64, ptr %4867, align 8, !tbaa !31
  %4869 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4868, i64 1), !nosanitize !30
  %4870 = extractvalue { i64, i1 } %4869, 1, !nosanitize !30
  br i1 %4870, label %4871, label %4872, !prof !32, !nosanitize !30

4871:                                             ; preds = %4866
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4872:                                             ; preds = %4866
  %4873 = extractvalue { i64, i1 } %4869, 0, !nosanitize !30
  %4874 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4875 = load ptr, ptr %4874, align 8, !tbaa !33
  %4876 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4877 = load i16, ptr %4876, align 8, !tbaa !25
  %4878 = trunc i16 %4877 to i8
  store i64 %4873, ptr %4867, align 8, !tbaa !31
  %4879 = getelementptr inbounds nuw i8, ptr %4875, i64 %4868
  store i8 %4878, ptr %4879, align 1, !tbaa !28
  %4880 = load i64, ptr %4867, align 8, !tbaa !31
  %4881 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4880, i64 1), !nosanitize !30
  %4882 = extractvalue { i64, i1 } %4881, 1, !nosanitize !30
  br i1 %4882, label %4883, label %4884, !prof !32, !nosanitize !30

4883:                                             ; preds = %4872
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4884:                                             ; preds = %4872
  %4885 = extractvalue { i64, i1 } %4881, 0, !nosanitize !30
  %4886 = load ptr, ptr %4874, align 8, !tbaa !33
  %4887 = load i16, ptr %4876, align 8, !tbaa !25
  %4888 = lshr i16 %4887, 8
  %4889 = trunc nuw i16 %4888 to i8
  store i64 %4885, ptr %4867, align 8, !tbaa !31
  %4890 = getelementptr inbounds nuw i8, ptr %4886, i64 %4880
  store i8 %4889, ptr %4890, align 1, !tbaa !28
  br label %4907

4891:                                             ; preds = %4862
  %4892 = icmp sgt i32 %4864, 0
  br i1 %4892, label %4893, label %4907

4893:                                             ; preds = %4891
  %4894 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4895 = load i64, ptr %4894, align 8, !tbaa !31
  %4896 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4895, i64 1), !nosanitize !30
  %4897 = extractvalue { i64, i1 } %4896, 1, !nosanitize !30
  br i1 %4897, label %4898, label %4899, !prof !32, !nosanitize !30

4898:                                             ; preds = %4893
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4899:                                             ; preds = %4893
  %4900 = extractvalue { i64, i1 } %4896, 0, !nosanitize !30
  %4901 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4902 = load ptr, ptr %4901, align 8, !tbaa !33
  %4903 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4904 = load i16, ptr %4903, align 8, !tbaa !25
  %4905 = trunc i16 %4904 to i8
  store i64 %4900, ptr %4894, align 8, !tbaa !31
  %4906 = getelementptr inbounds nuw i8, ptr %4902, i64 %4895
  store i8 %4905, ptr %4906, align 1, !tbaa !28
  br label %4907

4907:                                             ; preds = %4899, %4891, %4884
  %4908 = load i32, ptr %4863, align 4, !tbaa !26
  %4909 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4908, i32 -1)
  %4910 = extractvalue { i32, i1 } %4909, 1, !nosanitize !30
  br i1 %4910, label %4911, label %4912, !prof !32, !nosanitize !30

4911:                                             ; preds = %4907
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

4912:                                             ; preds = %4907
  %4913 = extractvalue { i32, i1 } %4909, 0, !nosanitize !30
  %4914 = and i32 %4913, 7
  %4915 = add nuw nsw i32 %4914, 1
  %4916 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %4915, ptr %4916, align 8, !tbaa !27
  %4917 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %4917, align 8, !tbaa !25
  store i32 0, ptr %4863, align 4, !tbaa !26
  br label %4918

4918:                                             ; preds = %4912, %4808
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
  %12 = load ptr, ptr %4, align 8, !tbaa !79
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
  %22 = load ptr, ptr %4, align 8, !tbaa !79
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
  %33 = load ptr, ptr %4, align 8, !tbaa !79
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
  %46 = load i32, ptr %45, align 8, !tbaa !84
  %47 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %46, i32 1), !nosanitize !30
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !30
  br i1 %48, label %49, label %50, !prof !32, !nosanitize !30

49:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !30
  store i32 %51, ptr %45, align 8, !tbaa !84
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
  %76 = load i32, ptr %75, align 8, !tbaa !85
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
!75 = distinct !{!75, !40}
!76 = !{!6, !11, i64 2936}
!77 = distinct !{!77, !71}
!78 = !{!6, !11, i64 200}
!79 = !{!6, !12, i64 5888}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = distinct !{!82, !40}
!83 = distinct !{!83, !40}
!84 = !{!6, !11, i64 5928}
!85 = !{!6, !11, i64 5904}
