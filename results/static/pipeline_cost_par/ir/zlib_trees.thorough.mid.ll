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
  br i1 %10, label %11, label %2790

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

181:                                              ; preds = %397, %177
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

220:                                              ; preds = %487, %390, %383, %310, %213
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
  br label %238

234:                                              ; preds = %304
  %235 = load i32, ptr %153, align 4, !tbaa !48
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %237 = sext i32 %152 to i64
  br label %310

238:                                              ; preds = %304, %226
  %239 = phi i64 [ %233, %226 ], [ %308, %304 ]
  %240 = getelementptr inbounds nuw [573 x i32], ptr %230, i64 0, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !50
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %242
  %244 = load i32, ptr %153, align 4, !tbaa !48
  %245 = trunc i64 %239 to i32
  %246 = shl i32 %245, 1
  %247 = icmp sgt i32 %246, %244
  br i1 %247, label %304, label %248

248:                                              ; preds = %238
  %249 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %242
  br label %250

250:                                              ; preds = %298, %248
  %251 = phi i32 [ %244, %248 ], [ %302, %298 ]
  %252 = phi i32 [ %246, %248 ], [ %301, %298 ]
  %253 = phi i32 [ %245, %248 ], [ %283, %298 ]
  %254 = icmp slt i32 %252, %251
  br i1 %254, label %257, label %255

255:                                              ; preds = %250
  %256 = sext i32 %252 to i64
  br label %281

257:                                              ; preds = %250
  %258 = or disjoint i32 %252, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %259
  %261 = load i32, ptr %260, align 4, !tbaa !50
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %262
  %264 = load i16, ptr %263, align 2, !tbaa !28
  %265 = sext i32 %252 to i64
  %266 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %265
  %267 = load i32, ptr %266, align 4, !tbaa !50
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %268
  %270 = load i16, ptr %269, align 2, !tbaa !28
  %271 = icmp ult i16 %264, %270
  br i1 %271, label %280, label %272

272:                                              ; preds = %257
  %273 = icmp eq i16 %264, %270
  br i1 %273, label %274, label %281

274:                                              ; preds = %272
  %275 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %262
  %276 = load i8, ptr %275, align 1, !tbaa !28
  %277 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %268
  %278 = load i8, ptr %277, align 1, !tbaa !28
  %279 = icmp ugt i8 %276, %278
  br i1 %279, label %281, label %280

280:                                              ; preds = %274, %257
  br label %281

281:                                              ; preds = %280, %274, %272, %255
  %282 = phi i64 [ %256, %255 ], [ %259, %280 ], [ %265, %274 ], [ %265, %272 ]
  %283 = phi i32 [ %252, %255 ], [ %258, %280 ], [ %252, %274 ], [ %252, %272 ]
  %284 = load i16, ptr %249, align 2, !tbaa !28
  %285 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %282
  %286 = load i32, ptr %285, align 4, !tbaa !50
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %287
  %289 = load i16, ptr %288, align 2, !tbaa !28
  %290 = icmp ult i16 %284, %289
  br i1 %290, label %304, label %291

291:                                              ; preds = %281
  %292 = icmp eq i16 %284, %289
  br i1 %292, label %293, label %298

293:                                              ; preds = %291
  %294 = load i8, ptr %243, align 1, !tbaa !28
  %295 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %287
  %296 = load i8, ptr %295, align 1, !tbaa !28
  %297 = icmp ugt i8 %294, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %293, %291
  %299 = sext i32 %253 to i64
  %300 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %299
  store i32 %286, ptr %300, align 4, !tbaa !50
  %301 = shl i32 %283, 1
  %302 = load i32, ptr %153, align 4, !tbaa !48
  %303 = icmp sgt i32 %301, %302
  br i1 %303, label %304, label %250, !llvm.loop !56

304:                                              ; preds = %298, %293, %281, %238
  %305 = phi i32 [ %245, %238 ], [ %253, %281 ], [ %253, %293 ], [ %283, %298 ]
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %306
  store i32 %241, ptr %307, align 4, !tbaa !50
  %308 = add nsw i64 %239, -1
  %309 = icmp sgt i64 %239, 1
  br i1 %309, label %238, label %234, !llvm.loop !57

310:                                              ; preds = %482, %234
  %311 = phi i32 [ %235, %234 ], [ %485, %482 ]
  %312 = phi i64 [ %237, %234 ], [ %422, %482 ]
  %313 = load i32, ptr %236, align 4, !tbaa !50
  %314 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %311, i32 -1)
  %315 = extractvalue { i32, i1 } %314, 1, !nosanitize !32
  br i1 %315, label %220, label %316, !prof !34, !nosanitize !32

316:                                              ; preds = %310
  %317 = extractvalue { i32, i1 } %314, 0, !nosanitize !32
  store i32 %317, ptr %153, align 4, !tbaa !48
  %318 = sext i32 %311 to i64
  %319 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %318
  %320 = load i32, ptr %319, align 4, !tbaa !50
  store i32 %320, ptr %236, align 4, !tbaa !50
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %321
  %323 = icmp slt i32 %317, 2
  br i1 %323, label %383, label %324

324:                                              ; preds = %316
  %325 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %321
  br label %326

326:                                              ; preds = %374, %324
  %327 = phi i32 [ %317, %324 ], [ %378, %374 ]
  %328 = phi i32 [ 2, %324 ], [ %377, %374 ]
  %329 = phi i32 [ 1, %324 ], [ %359, %374 ]
  %330 = icmp slt i32 %328, %327
  br i1 %330, label %333, label %331

331:                                              ; preds = %326
  %332 = sext i32 %328 to i64
  br label %357

333:                                              ; preds = %326
  %334 = or disjoint i32 %328, 1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %335
  %337 = load i32, ptr %336, align 4, !tbaa !50
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %338
  %340 = load i16, ptr %339, align 2, !tbaa !28
  %341 = sext i32 %328 to i64
  %342 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %341
  %343 = load i32, ptr %342, align 4, !tbaa !50
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %344
  %346 = load i16, ptr %345, align 2, !tbaa !28
  %347 = icmp ult i16 %340, %346
  br i1 %347, label %356, label %348

348:                                              ; preds = %333
  %349 = icmp eq i16 %340, %346
  br i1 %349, label %350, label %357

350:                                              ; preds = %348
  %351 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %338
  %352 = load i8, ptr %351, align 1, !tbaa !28
  %353 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %344
  %354 = load i8, ptr %353, align 1, !tbaa !28
  %355 = icmp ugt i8 %352, %354
  br i1 %355, label %357, label %356

356:                                              ; preds = %350, %333
  br label %357

357:                                              ; preds = %356, %350, %348, %331
  %358 = phi i64 [ %332, %331 ], [ %335, %356 ], [ %341, %350 ], [ %341, %348 ]
  %359 = phi i32 [ %328, %331 ], [ %334, %356 ], [ %328, %350 ], [ %328, %348 ]
  %360 = load i16, ptr %325, align 2, !tbaa !28
  %361 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %358
  %362 = load i32, ptr %361, align 4, !tbaa !50
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %363
  %365 = load i16, ptr %364, align 2, !tbaa !28
  %366 = icmp ult i16 %360, %365
  br i1 %366, label %380, label %367

367:                                              ; preds = %357
  %368 = icmp eq i16 %360, %365
  br i1 %368, label %369, label %374

369:                                              ; preds = %367
  %370 = load i8, ptr %322, align 1, !tbaa !28
  %371 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %363
  %372 = load i8, ptr %371, align 1, !tbaa !28
  %373 = icmp ugt i8 %370, %372
  br i1 %373, label %374, label %380

374:                                              ; preds = %369, %367
  %375 = sext i32 %329 to i64
  %376 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %375
  store i32 %362, ptr %376, align 4, !tbaa !50
  %377 = shl i32 %359, 1
  %378 = load i32, ptr %153, align 4, !tbaa !48
  %379 = icmp sgt i32 %377, %378
  br i1 %379, label %380, label %326, !llvm.loop !56

380:                                              ; preds = %374, %369, %357
  %381 = phi i32 [ %329, %357 ], [ %329, %369 ], [ %359, %374 ]
  %382 = sext i32 %381 to i64
  br label %383

383:                                              ; preds = %380, %316
  %384 = phi i64 [ 1, %316 ], [ %382, %380 ]
  %385 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %384
  store i32 %320, ptr %385, align 4, !tbaa !50
  %386 = load i32, ptr %236, align 4, !tbaa !50
  %387 = load i32, ptr %154, align 8, !tbaa !49
  %388 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %387, i32 -1)
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !32
  br i1 %389, label %220, label %390, !prof !34, !nosanitize !32

390:                                              ; preds = %383
  %391 = extractvalue { i32, i1 } %388, 0, !nosanitize !32
  store i32 %391, ptr %154, align 8, !tbaa !49
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %392
  store i32 %313, ptr %393, align 4, !tbaa !50
  %394 = load i32, ptr %154, align 8, !tbaa !49
  %395 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %394, i32 -1)
  %396 = extractvalue { i32, i1 } %395, 1, !nosanitize !32
  br i1 %396, label %220, label %397, !prof !34, !nosanitize !32

397:                                              ; preds = %390
  %398 = extractvalue { i32, i1 } %395, 0, !nosanitize !32
  store i32 %398, ptr %154, align 8, !tbaa !49
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %399
  store i32 %386, ptr %400, align 4, !tbaa !50
  %401 = sext i32 %313 to i64
  %402 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %401
  %403 = load i16, ptr %402, align 2, !tbaa !28
  %404 = sext i32 %386 to i64
  %405 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %404
  %406 = load i16, ptr %405, align 2, !tbaa !28
  %407 = add i16 %406, %403
  %408 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %312
  store i16 %407, ptr %408, align 2, !tbaa !28
  %409 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %401
  %410 = load i8, ptr %409, align 1, !tbaa !28
  %411 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %404
  %412 = load i8, ptr %411, align 1, !tbaa !28
  %413 = tail call i8 @llvm.umax.i8(i8 %410, i8 %412)
  %414 = add i8 %413, 1
  %415 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %312
  store i8 %414, ptr %415, align 1, !tbaa !28
  %416 = trunc nsw i64 %312 to i32
  %417 = trunc i64 %312 to i16
  %418 = getelementptr inbounds nuw i8, ptr %405, i64 2
  store i16 %417, ptr %418, align 2, !tbaa !28
  %419 = getelementptr inbounds nuw i8, ptr %402, i64 2
  store i16 %417, ptr %419, align 2, !tbaa !28
  %420 = icmp eq i64 %312, 2147483647
  br i1 %420, label %181, label %421, !prof !34, !nosanitize !32

421:                                              ; preds = %397
  %422 = add nsw i64 %312, 1
  store i32 %416, ptr %236, align 4, !tbaa !50
  %423 = load i32, ptr %153, align 4, !tbaa !48
  %424 = icmp slt i32 %423, 2
  br i1 %424, label %482, label %425

425:                                              ; preds = %473, %421
  %426 = phi i32 [ %477, %473 ], [ %423, %421 ]
  %427 = phi i32 [ %476, %473 ], [ 2, %421 ]
  %428 = phi i32 [ %458, %473 ], [ 1, %421 ]
  %429 = icmp slt i32 %427, %426
  br i1 %429, label %432, label %430

430:                                              ; preds = %425
  %431 = sext i32 %427 to i64
  br label %456

432:                                              ; preds = %425
  %433 = or disjoint i32 %427, 1
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %434
  %436 = load i32, ptr %435, align 4, !tbaa !50
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %437
  %439 = load i16, ptr %438, align 2, !tbaa !28
  %440 = sext i32 %427 to i64
  %441 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %440
  %442 = load i32, ptr %441, align 4, !tbaa !50
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %443
  %445 = load i16, ptr %444, align 2, !tbaa !28
  %446 = icmp ult i16 %439, %445
  br i1 %446, label %455, label %447

447:                                              ; preds = %432
  %448 = icmp eq i16 %439, %445
  br i1 %448, label %449, label %456

449:                                              ; preds = %447
  %450 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %437
  %451 = load i8, ptr %450, align 1, !tbaa !28
  %452 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %443
  %453 = load i8, ptr %452, align 1, !tbaa !28
  %454 = icmp ugt i8 %451, %453
  br i1 %454, label %456, label %455

455:                                              ; preds = %449, %432
  br label %456

456:                                              ; preds = %455, %449, %447, %430
  %457 = phi i64 [ %431, %430 ], [ %434, %455 ], [ %440, %449 ], [ %440, %447 ]
  %458 = phi i32 [ %427, %430 ], [ %433, %455 ], [ %427, %449 ], [ %427, %447 ]
  %459 = load i16, ptr %408, align 2, !tbaa !28
  %460 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %457
  %461 = load i32, ptr %460, align 4, !tbaa !50
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %462
  %464 = load i16, ptr %463, align 2, !tbaa !28
  %465 = icmp ult i16 %459, %464
  br i1 %465, label %479, label %466

466:                                              ; preds = %456
  %467 = icmp eq i16 %459, %464
  br i1 %467, label %468, label %473

468:                                              ; preds = %466
  %469 = load i8, ptr %415, align 1, !tbaa !28
  %470 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %462
  %471 = load i8, ptr %470, align 1, !tbaa !28
  %472 = icmp ugt i8 %469, %471
  br i1 %472, label %473, label %479

473:                                              ; preds = %468, %466
  %474 = sext i32 %428 to i64
  %475 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %474
  store i32 %461, ptr %475, align 4, !tbaa !50
  %476 = shl i32 %458, 1
  %477 = load i32, ptr %153, align 4, !tbaa !48
  %478 = icmp sgt i32 %476, %477
  br i1 %478, label %479, label %425, !llvm.loop !56

479:                                              ; preds = %473, %468, %456
  %480 = phi i32 [ %428, %456 ], [ %428, %468 ], [ %458, %473 ]
  %481 = sext i32 %480 to i64
  br label %482

482:                                              ; preds = %479, %421
  %483 = phi i64 [ 1, %421 ], [ %481, %479 ]
  %484 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %483
  store i32 %416, ptr %484, align 4, !tbaa !50
  %485 = load i32, ptr %153, align 4, !tbaa !48
  %486 = icmp sgt i32 %485, 1
  br i1 %486, label %310, label %487, !llvm.loop !58

487:                                              ; preds = %482
  %488 = load i32, ptr %154, align 8, !tbaa !49
  %489 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %488, i32 -1)
  %490 = extractvalue { i32, i1 } %489, 1, !nosanitize !32
  br i1 %490, label %220, label %491, !prof !34, !nosanitize !32

491:                                              ; preds = %487
  %492 = extractvalue { i32, i1 } %489, 0, !nosanitize !32
  %493 = load i32, ptr %236, align 4, !tbaa !50
  store i32 %492, ptr %154, align 8, !tbaa !49
  %494 = sext i32 %492 to i64
  %495 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %494
  store i32 %493, ptr %495, align 4, !tbaa !50
  %496 = load ptr, ptr %146, align 8, !tbaa !42
  %497 = load i32, ptr %229, align 8, !tbaa !55
  %498 = load ptr, ptr %148, align 8, !tbaa !43
  %499 = load ptr, ptr %498, align 8, !tbaa !44
  %500 = getelementptr inbounds nuw i8, ptr %498, i64 8
  %501 = load ptr, ptr %500, align 8, !tbaa !59
  %502 = getelementptr inbounds nuw i8, ptr %498, i64 16
  %503 = load i32, ptr %502, align 8, !tbaa !60
  %504 = getelementptr inbounds nuw i8, ptr %498, i64 24
  %505 = load i32, ptr %504, align 8, !tbaa !61
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %506, i8 0, i64 32, i1 false), !tbaa !62
  %507 = load i32, ptr %154, align 8, !tbaa !49
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %508
  %510 = load i32, ptr %509, align 4, !tbaa !50
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.ct_data_s, ptr %496, i64 %511, i32 1
  store i16 0, ptr %512, align 2, !tbaa !28
  %513 = load i32, ptr %154, align 8, !tbaa !49
  %514 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %513, i32 1), !nosanitize !32
  %515 = extractvalue { i32, i1 } %514, 1, !nosanitize !32
  br i1 %515, label %516, label %517, !prof !34, !nosanitize !32

516:                                              ; preds = %565, %540, %491
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

517:                                              ; preds = %491
  %518 = extractvalue { i32, i1 } %514, 0
  %519 = icmp slt i32 %518, 573
  br i1 %519, label %520, label %738

520:                                              ; preds = %517
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %522 = icmp eq ptr %499, null
  %523 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %524 = sext i32 %518 to i64
  br label %525

525:                                              ; preds = %597, %520
  %526 = phi i64 [ %524, %520 ], [ %598, %597 ]
  %527 = phi i32 [ 0, %520 ], [ %547, %597 ]
  %528 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %526
  %529 = load i32, ptr %528, align 4, !tbaa !50
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.ct_data_s, ptr %496, i64 %530
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 2
  %533 = load i16, ptr %532, align 2, !tbaa !28
  %534 = zext i16 %533 to i64
  %535 = getelementptr inbounds nuw %struct.ct_data_s, ptr %496, i64 %534, i32 1
  %536 = load i16, ptr %535, align 2, !tbaa !28
  %537 = zext i16 %536 to i32
  %538 = add nuw nsw i32 %537, 1
  %539 = icmp sgt i32 %505, %537
  br i1 %539, label %545, label %540

540:                                              ; preds = %525
  %541 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %527, i32 1), !nosanitize !32
  %542 = extractvalue { i32, i1 } %541, 1, !nosanitize !32
  br i1 %542, label %516, label %543, !prof !34, !nosanitize !32

543:                                              ; preds = %540
  %544 = extractvalue { i32, i1 } %541, 0, !nosanitize !32
  br label %545

545:                                              ; preds = %543, %525
  %546 = phi i32 [ %505, %543 ], [ %538, %525 ]
  %547 = phi i32 [ %544, %543 ], [ %527, %525 ]
  %548 = trunc i32 %546 to i16
  store i16 %548, ptr %532, align 2, !tbaa !28
  %549 = icmp sgt i32 %529, %497
  br i1 %549, label %597, label %550

550:                                              ; preds = %545
  %551 = sext i32 %546 to i64
  %552 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %551
  %553 = load i16, ptr %552, align 2, !tbaa !62
  %554 = add i16 %553, 1
  store i16 %554, ptr %552, align 2, !tbaa !62
  %555 = icmp slt i32 %529, %503
  br i1 %555, label %565, label %556

556:                                              ; preds = %550
  %557 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %529, i32 %503), !nosanitize !32
  %558 = extractvalue { i32, i1 } %557, 1, !nosanitize !32
  br i1 %558, label %559, label %560, !prof !34, !nosanitize !32

.loopexit:                                        ; preds = %652, %695
  br label %559

559:                                              ; preds = %.loopexit, %625, %617, %603, %556
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

560:                                              ; preds = %556
  %561 = extractvalue { i32, i1 } %557, 0, !nosanitize !32
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32, ptr %501, i64 %562
  %564 = load i32, ptr %563, align 4, !tbaa !50
  br label %565

565:                                              ; preds = %560, %550
  %566 = phi i32 [ %564, %560 ], [ 0, %550 ]
  %567 = load i16, ptr %531, align 2, !tbaa !28
  %568 = zext i16 %567 to i64
  %569 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %546, i32 %566), !nosanitize !32
  %570 = extractvalue { i32, i1 } %569, 1, !nosanitize !32
  br i1 %570, label %516, label %571, !prof !34, !nosanitize !32

571:                                              ; preds = %565
  %572 = extractvalue { i32, i1 } %569, 0, !nosanitize !32
  %573 = zext i32 %572 to i64
  %574 = mul nuw nsw i64 %573, %568
  %575 = load i64, ptr %521, align 8, !tbaa !52
  %576 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %575, i64 %574), !nosanitize !32
  %577 = extractvalue { i64, i1 } %576, 1, !nosanitize !32
  br i1 %577, label %578, label %579, !prof !34, !nosanitize !32

578:                                              ; preds = %581, %571
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

579:                                              ; preds = %571
  %580 = extractvalue { i64, i1 } %576, 0, !nosanitize !32
  store i64 %580, ptr %521, align 8, !tbaa !52
  br i1 %522, label %597, label %581

581:                                              ; preds = %579
  %582 = getelementptr inbounds %struct.ct_data_s, ptr %499, i64 %530, i32 1
  %583 = load i16, ptr %582, align 2, !tbaa !28
  %584 = zext i16 %583 to i32
  %585 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %584, i32 %566), !nosanitize !32
  %586 = extractvalue { i32, i1 } %585, 1, !nosanitize !32
  br i1 %586, label %578, label %587, !prof !34, !nosanitize !32

587:                                              ; preds = %581
  %588 = extractvalue { i32, i1 } %585, 0, !nosanitize !32
  %589 = zext i32 %588 to i64
  %590 = mul nuw nsw i64 %589, %568
  %591 = load i64, ptr %523, align 8, !tbaa !53
  %592 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %591, i64 %590), !nosanitize !32
  %593 = extractvalue { i64, i1 } %592, 1, !nosanitize !32
  br i1 %593, label %594, label %595, !prof !34, !nosanitize !32

594:                                              ; preds = %620, %587
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

595:                                              ; preds = %587
  %596 = extractvalue { i64, i1 } %592, 0, !nosanitize !32
  store i64 %596, ptr %523, align 8, !tbaa !53
  br label %597

597:                                              ; preds = %595, %579, %545
  %598 = add nsw i64 %526, 1
  %599 = and i64 %598, 4294967295
  %600 = icmp eq i64 %599, 573
  br i1 %600, label %601, label %525, !llvm.loop !63

601:                                              ; preds = %597
  %602 = icmp eq i32 %547, 0
  br i1 %602, label %738, label %603

603:                                              ; preds = %601
  %604 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %505, i32 -1)
  %605 = extractvalue { i32, i1 } %604, 1, !nosanitize !32
  %606 = sext i32 %505 to i64
  %607 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %606
  br i1 %605, label %559, label %608, !prof !34, !nosanitize !32

608:                                              ; preds = %635, %603
  %609 = phi i32 [ %636, %635 ], [ %547, %603 ]
  br label %610

610:                                              ; preds = %617, %608
  %611 = phi { i32, i1 } [ %618, %617 ], [ %604, %608 ]
  %612 = extractvalue { i32, i1 } %611, 0
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %613
  %615 = load i16, ptr %614, align 2, !tbaa !62
  %616 = icmp eq i16 %615, 0
  br i1 %616, label %617, label %620

617:                                              ; preds = %610
  %618 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %612, i32 -1)
  %619 = extractvalue { i32, i1 } %618, 1, !nosanitize !32
  br i1 %619, label %559, label %610, !prof !34, !llvm.loop !64, !nosanitize !32

620:                                              ; preds = %610
  %621 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %613
  %622 = add i16 %615, -1
  store i16 %622, ptr %621, align 2, !tbaa !62
  %623 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %612, i32 1), !nosanitize !32
  %624 = extractvalue { i32, i1 } %623, 1, !nosanitize !32
  br i1 %624, label %594, label %625, !prof !34, !nosanitize !32

625:                                              ; preds = %620
  %626 = extractvalue { i32, i1 } %623, 0, !nosanitize !32
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %627
  %629 = load i16, ptr %628, align 2, !tbaa !62
  %630 = add i16 %629, 2
  store i16 %630, ptr %628, align 2, !tbaa !62
  %631 = load i16, ptr %607, align 2, !tbaa !62
  %632 = add i16 %631, -1
  store i16 %632, ptr %607, align 2, !tbaa !62
  %633 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %609, i32 -2)
  %634 = extractvalue { i32, i1 } %633, 1, !nosanitize !32
  br i1 %634, label %559, label %635, !prof !34, !nosanitize !32

635:                                              ; preds = %625
  %636 = extractvalue { i32, i1 } %633, 0, !nosanitize !32
  %637 = icmp sgt i32 %636, 0
  br i1 %637, label %608, label %638, !llvm.loop !65

638:                                              ; preds = %635
  %639 = icmp eq i32 %505, 0
  br i1 %639, label %738, label %640

640:                                              ; preds = %734, %638
  %641 = phi i64 [ %735, %734 ], [ %606, %638 ]
  %642 = phi i32 [ %689, %734 ], [ 573, %638 ]
  %643 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %641
  %644 = load i16, ptr %643, align 2, !tbaa !62
  %645 = icmp eq i16 %644, 0
  br i1 %645, label %688, label %646

646:                                              ; preds = %640
  %647 = zext i16 %644 to i32
  %648 = trunc i64 %641 to i16
  %mv.h = icmp sge i64 %641, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %646
  br label %649

649:                                              ; preds = %685, %.mv.ph.mv.fast
  %650 = phi i32 [ %642, %.mv.ph.mv.fast ], [ %.lcssa3.mv.fast, %685 ]
  %651 = phi i32 [ %647, %.mv.ph.mv.fast ], [ %686, %685 ]
  br label %652

652:                                              ; preds = %656, %649
  %653 = phi i32 [ %657, %656 ], [ %650, %649 ]
  %654 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %653, i32 -1)
  %655 = extractvalue { i32, i1 } %654, 1, !nosanitize !32
  br i1 %655, label %.loopexit, label %656, !prof !34, !nosanitize !32

656:                                              ; preds = %652
  %657 = extractvalue { i32, i1 } %654, 0, !nosanitize !32
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %658
  %660 = load i32, ptr %659, align 4, !tbaa !50
  %661 = icmp sgt i32 %660, %497
  br i1 %661, label %652, label %662, !llvm.loop !66

662:                                              ; preds = %656
  %.lcssa3.mv.fast = phi i32 [ %657, %656 ]
  %.lcssa.mv.fast = phi i32 [ %660, %656 ]
  %663 = sext i32 %.lcssa.mv.fast to i64
  %664 = getelementptr inbounds %struct.ct_data_s, ptr %496, i64 %663
  %665 = getelementptr inbounds nuw i8, ptr %664, i64 2
  %666 = load i16, ptr %665, align 2, !tbaa !28
  %667 = zext i16 %666 to i64
  %668 = icmp eq i64 %641, %667
  br i1 %668, label %685, label %669

669:                                              ; preds = %662
  %670 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %641, i64 %667), !nosanitize !32
  %671 = extractvalue { i64, i1 } %670, 1, !nosanitize !32
  br i1 %671, label %.loopexit1, label %672, !prof !34, !nosanitize !32

672:                                              ; preds = %669
  %673 = extractvalue { i64, i1 } %670, 0, !nosanitize !32
  %674 = load i16, ptr %664, align 2, !tbaa !28
  %675 = zext i16 %674 to i64
  %676 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %673, i64 %675), !nosanitize !32
  %677 = extractvalue { i64, i1 } %676, 1, !nosanitize !32
  br i1 false, label %722, label %678, !prof !34, !nosanitize !32

678:                                              ; preds = %672
  %679 = extractvalue { i64, i1 } %676, 0, !nosanitize !32
  %680 = load i64, ptr %521, align 8, !tbaa !52
  %681 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %680, i64 %679), !nosanitize !32
  %682 = extractvalue { i64, i1 } %681, 1, !nosanitize !32
  br i1 %682, label %728, label %683, !prof !34, !nosanitize !32

683:                                              ; preds = %678
  %684 = extractvalue { i64, i1 } %681, 0, !nosanitize !32
  store i64 %684, ptr %521, align 8, !tbaa !52
  store i16 %648, ptr %665, align 2, !tbaa !28
  br label %685

685:                                              ; preds = %683, %662
  %686 = add nsw i32 %651, -1
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %.loopexit2, label %649, !llvm.loop !66

.mv.ph:                                           ; preds = %646
  br label %692

.loopexit2:                                       ; preds = %685, %731
  %.lcssa3.lcssa6 = phi i32 [ %.lcssa3, %731 ], [ %.lcssa3.mv.fast, %685 ]
  br label %688

688:                                              ; preds = %.loopexit2, %640
  %689 = phi i32 [ %642, %640 ], [ %.lcssa3.lcssa6, %.loopexit2 ]
  %690 = and i64 %641, 4294967295
  %691 = icmp eq i64 %690, 2147483648
  br i1 %691, label %715, label %734, !prof !34, !nosanitize !32

692:                                              ; preds = %731, %.mv.ph
  %693 = phi i32 [ %642, %.mv.ph ], [ %.lcssa3, %731 ]
  %694 = phi i32 [ %647, %.mv.ph ], [ %732, %731 ]
  br label %695

695:                                              ; preds = %699, %692
  %696 = phi i32 [ %700, %699 ], [ %693, %692 ]
  %697 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %696, i32 -1)
  %698 = extractvalue { i32, i1 } %697, 1, !nosanitize !32
  br i1 %698, label %.loopexit, label %699, !prof !34, !nosanitize !32

699:                                              ; preds = %695
  %700 = extractvalue { i32, i1 } %697, 0, !nosanitize !32
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %701
  %703 = load i32, ptr %702, align 4, !tbaa !50
  %704 = icmp sgt i32 %703, %497
  br i1 %704, label %695, label %705, !llvm.loop !66

705:                                              ; preds = %699
  %.lcssa3 = phi i32 [ %700, %699 ]
  %.lcssa = phi i32 [ %703, %699 ]
  %706 = sext i32 %.lcssa to i64
  %707 = getelementptr inbounds %struct.ct_data_s, ptr %496, i64 %706
  %708 = getelementptr inbounds nuw i8, ptr %707, i64 2
  %709 = load i16, ptr %708, align 2, !tbaa !28
  %710 = zext i16 %709 to i64
  %711 = icmp eq i64 %641, %710
  br i1 %711, label %731, label %712

712:                                              ; preds = %705
  %713 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %641, i64 %710), !nosanitize !32
  %714 = extractvalue { i64, i1 } %713, 1, !nosanitize !32
  br i1 %714, label %.loopexit1, label %716, !prof !34, !nosanitize !32

.loopexit1:                                       ; preds = %669, %712
  br label %715

715:                                              ; preds = %.loopexit1, %688
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

716:                                              ; preds = %712
  %717 = extractvalue { i64, i1 } %713, 0, !nosanitize !32
  %718 = load i16, ptr %707, align 2, !tbaa !28
  %719 = zext i16 %718 to i64
  %720 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %717, i64 %719), !nosanitize !32
  %721 = extractvalue { i64, i1 } %720, 1, !nosanitize !32
  br i1 %721, label %722, label %723, !prof !34, !nosanitize !32

722:                                              ; preds = %672, %716
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !32
  unreachable, !nosanitize !32

723:                                              ; preds = %716
  %724 = extractvalue { i64, i1 } %720, 0, !nosanitize !32
  %725 = load i64, ptr %521, align 8, !tbaa !52
  %726 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %725, i64 %724), !nosanitize !32
  %727 = extractvalue { i64, i1 } %726, 1, !nosanitize !32
  br i1 %727, label %728, label %729, !prof !34, !nosanitize !32

728:                                              ; preds = %678, %723
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

729:                                              ; preds = %723
  %730 = extractvalue { i64, i1 } %726, 0, !nosanitize !32
  store i64 %730, ptr %521, align 8, !tbaa !52
  store i16 %648, ptr %708, align 2, !tbaa !28
  br label %731

731:                                              ; preds = %729, %705
  %732 = add nsw i32 %694, -1
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %.loopexit2, label %692, !llvm.loop !66

734:                                              ; preds = %688
  %735 = add nsw i64 %641, -1
  %736 = and i64 %735, 4294967295
  %737 = icmp eq i64 %736, 0
  br i1 %737, label %738, label %640, !llvm.loop !67

738:                                              ; preds = %734, %638, %601, %517
  call void @llvm.lifetime.start.p0(ptr %7)
  %739 = load i16, ptr %506, align 2, !tbaa !62
  %740 = zext i16 %739 to i32
  %741 = shl nuw nsw i32 %740, 1
  %742 = trunc i32 %741 to i16
  %743 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %742, ptr %743, align 2, !tbaa !62
  %744 = getelementptr i8, ptr %0, i64 2978
  %745 = load i16, ptr %744, align 2, !tbaa !62
  %746 = zext i16 %745 to i32
  %747 = add nuw nsw i32 %741, %746
  %748 = shl nuw nsw i32 %747, 1
  %749 = trunc i32 %748 to i16
  %750 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %749, ptr %750, align 4, !tbaa !62
  %751 = getelementptr i8, ptr %0, i64 2980
  %752 = load i16, ptr %751, align 2, !tbaa !62
  %753 = zext i16 %752 to i32
  %754 = add nuw nsw i32 %748, %753
  %755 = shl nuw nsw i32 %754, 1
  %756 = trunc i32 %755 to i16
  %757 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %756, ptr %757, align 2, !tbaa !62
  %758 = getelementptr i8, ptr %0, i64 2982
  %759 = load i16, ptr %758, align 2, !tbaa !62
  %760 = zext i16 %759 to i32
  %761 = add nuw nsw i32 %755, %760
  %762 = shl nuw nsw i32 %761, 1
  %763 = trunc i32 %762 to i16
  %764 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %763, ptr %764, align 8, !tbaa !62
  %765 = getelementptr i8, ptr %0, i64 2984
  %766 = load i16, ptr %765, align 2, !tbaa !62
  %767 = zext i16 %766 to i32
  %768 = add nuw nsw i32 %762, %767
  %769 = shl nuw nsw i32 %768, 1
  %770 = trunc i32 %769 to i16
  %771 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %770, ptr %771, align 2, !tbaa !62
  %772 = getelementptr i8, ptr %0, i64 2986
  %773 = load i16, ptr %772, align 2, !tbaa !62
  %774 = zext i16 %773 to i32
  %775 = add nuw nsw i32 %769, %774
  %776 = shl nuw nsw i32 %775, 1
  %777 = trunc i32 %776 to i16
  %778 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %777, ptr %778, align 4, !tbaa !62
  %779 = getelementptr i8, ptr %0, i64 2988
  %780 = load i16, ptr %779, align 2, !tbaa !62
  %781 = zext i16 %780 to i32
  %782 = add nuw nsw i32 %776, %781
  %783 = shl nuw nsw i32 %782, 1
  %784 = trunc i32 %783 to i16
  %785 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %784, ptr %785, align 2, !tbaa !62
  %786 = getelementptr i8, ptr %0, i64 2990
  %787 = load i16, ptr %786, align 2, !tbaa !62
  %788 = zext i16 %787 to i32
  %789 = add nuw nsw i32 %783, %788
  %790 = shl nuw nsw i32 %789, 1
  %791 = trunc i32 %790 to i16
  %792 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %791, ptr %792, align 16, !tbaa !62
  %793 = getelementptr i8, ptr %0, i64 2992
  %794 = load i16, ptr %793, align 2, !tbaa !62
  %795 = zext i16 %794 to i32
  %796 = add nuw nsw i32 %790, %795
  %797 = shl nuw nsw i32 %796, 1
  %798 = trunc i32 %797 to i16
  %799 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %798, ptr %799, align 2, !tbaa !62
  %800 = getelementptr i8, ptr %0, i64 2994
  %801 = load i16, ptr %800, align 2, !tbaa !62
  %802 = zext i16 %801 to i32
  %803 = add nuw nsw i32 %797, %802
  %804 = shl nuw nsw i32 %803, 1
  %805 = trunc i32 %804 to i16
  %806 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %805, ptr %806, align 4, !tbaa !62
  %807 = getelementptr i8, ptr %0, i64 2996
  %808 = load i16, ptr %807, align 2, !tbaa !62
  %809 = trunc i32 %804 to i16
  %810 = add i16 %808, %809
  %811 = shl i16 %810, 1
  %812 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %811, ptr %812, align 2, !tbaa !62
  %813 = getelementptr i8, ptr %0, i64 2998
  %814 = load i16, ptr %813, align 2, !tbaa !62
  %815 = add i16 %814, %811
  %816 = shl i16 %815, 1
  %817 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %816, ptr %817, align 8, !tbaa !62
  %818 = getelementptr i8, ptr %0, i64 3000
  %819 = load i16, ptr %818, align 2, !tbaa !62
  %820 = add i16 %816, %819
  %821 = shl i16 %820, 1
  %822 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %821, ptr %822, align 2, !tbaa !62
  %823 = getelementptr i8, ptr %0, i64 3002
  %824 = load i16, ptr %823, align 2, !tbaa !62
  %825 = add i16 %821, %824
  %826 = shl i16 %825, 1
  %827 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %826, ptr %827, align 4, !tbaa !62
  %828 = getelementptr i8, ptr %0, i64 3004
  %829 = load i16, ptr %828, align 2, !tbaa !62
  %830 = add i16 %826, %829
  %831 = shl i16 %830, 1
  %832 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %831, ptr %832, align 2, !tbaa !62
  %833 = icmp slt i32 %227, 0
  br i1 %833, label %894, label %835

834:                                              ; preds = %888
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

835:                                              ; preds = %890, %738
  %836 = phi i64 [ %891, %890 ], [ 0, %738 ]
  %837 = getelementptr inbounds nuw %struct.ct_data_s, ptr %147, i64 %836
  %838 = getelementptr inbounds nuw i8, ptr %837, i64 2
  %839 = load i16, ptr %838, align 2, !tbaa !28
  %840 = icmp eq i16 %839, 0
  br i1 %840, label %888, label %841

841:                                              ; preds = %835
  %842 = zext i16 %839 to i32
  %843 = zext i16 %839 to i64
  %844 = getelementptr inbounds nuw [16 x i16], ptr %7, i64 0, i64 %843
  %845 = load i16, ptr %844, align 2, !tbaa !62
  %846 = add i16 %845, 1
  store i16 %846, ptr %844, align 2, !tbaa !62
  %847 = and i32 %842, 3
  %848 = icmp ult i16 %839, 4
  br i1 %848, label %871, label %849

849:                                              ; preds = %841
  %850 = and i32 %842, 65532
  br label %851

851:                                              ; preds = %851, %849
  %852 = phi i16 [ %845, %849 ], [ %868, %851 ]
  %853 = phi i16 [ 0, %849 ], [ %867, %851 ]
  %854 = phi i32 [ 0, %849 ], [ %869, %851 ]
  %855 = and i16 %852, 1
  %856 = or disjoint i16 %853, %855
  %857 = lshr i16 %852, 2
  %858 = shl i16 %856, 2
  %859 = and i16 %852, 2
  %860 = or disjoint i16 %858, %859
  %861 = and i16 %857, 1
  %862 = or disjoint i16 %860, %861
  %863 = shl i16 %862, 1
  %864 = lshr i16 %852, 3
  %865 = and i16 %864, 1
  %866 = or disjoint i16 %863, %865
  %867 = shl i16 %866, 1
  %868 = lshr i16 %852, 4
  %869 = add i32 %854, 4
  %870 = icmp eq i32 %869, %850
  br i1 %870, label %871, label %851, !llvm.loop !68

871:                                              ; preds = %851, %841
  %872 = phi i16 [ poison, %841 ], [ %866, %851 ]
  %873 = phi i16 [ %845, %841 ], [ %868, %851 ]
  %874 = phi i16 [ 0, %841 ], [ %867, %851 ]
  %875 = icmp eq i32 %847, 0
  br i1 %875, label %886, label %876

876:                                              ; preds = %876, %871
  %877 = phi i16 [ %883, %876 ], [ %873, %871 ]
  %878 = phi i16 [ %882, %876 ], [ %874, %871 ]
  %879 = phi i32 [ %884, %876 ], [ 0, %871 ]
  %880 = and i16 %877, 1
  %881 = or disjoint i16 %878, %880
  %882 = shl i16 %881, 1
  %883 = lshr i16 %877, 1
  %884 = add i32 %879, 1
  %885 = icmp eq i32 %884, %847
  br i1 %885, label %886, label %876, !llvm.loop !69

886:                                              ; preds = %876, %871
  %887 = phi i16 [ %872, %871 ], [ %881, %876 ]
  store i16 %887, ptr %837, align 2, !tbaa !28
  br label %888

888:                                              ; preds = %886, %835
  %889 = icmp eq i64 %836, 2147483647
  br i1 %889, label %834, label %890, !prof !34, !nosanitize !32

890:                                              ; preds = %888
  %891 = add nuw nsw i64 %836, 1
  %892 = trunc i64 %891 to i32
  %893 = icmp slt i32 %227, %892
  br i1 %893, label %894, label %835, !llvm.loop !71

894:                                              ; preds = %890, %738
  call void @llvm.lifetime.end.p0(ptr %7)
  %895 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %896 = load ptr, ptr %895, align 8, !tbaa !42
  %897 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %898 = load ptr, ptr %897, align 8, !tbaa !43
  %899 = load ptr, ptr %898, align 8, !tbaa !44
  %900 = getelementptr inbounds nuw i8, ptr %898, i64 20
  %901 = load i32, ptr %900, align 4, !tbaa !47
  store i32 0, ptr %153, align 4, !tbaa !48
  store i32 573, ptr %154, align 8, !tbaa !49
  %902 = icmp sgt i32 %901, 0
  br i1 %902, label %903, label %908

903:                                              ; preds = %894
  %904 = zext nneg i32 %901 to i64
  br label %914

905:                                              ; preds = %933
  %906 = load i32, ptr %153, align 4, !tbaa !48
  %907 = icmp slt i32 %906, 2
  br i1 %907, label %908, label %969

908:                                              ; preds = %905, %894
  %909 = phi i32 [ %934, %905 ], [ -1, %894 ]
  %910 = phi i32 [ %906, %905 ], [ 0, %894 ]
  %911 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %912 = icmp eq ptr %899, null
  %913 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %937

914:                                              ; preds = %933, %903
  %915 = phi i64 [ 0, %903 ], [ %935, %933 ]
  %916 = phi i32 [ -1, %903 ], [ %934, %933 ]
  %917 = getelementptr inbounds nuw %struct.ct_data_s, ptr %896, i64 %915
  %918 = load i16, ptr %917, align 2, !tbaa !28
  %919 = icmp eq i16 %918, 0
  br i1 %919, label %931, label %920

920:                                              ; preds = %914
  %921 = load i32, ptr %153, align 4, !tbaa !48
  %922 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %921, i32 1), !nosanitize !32
  %923 = extractvalue { i32, i1 } %922, 1, !nosanitize !32
  br i1 %923, label %924, label %925, !prof !34, !nosanitize !32

924:                                              ; preds = %1137, %920
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

925:                                              ; preds = %920
  %926 = extractvalue { i32, i1 } %922, 0, !nosanitize !32
  store i32 %926, ptr %153, align 4, !tbaa !48
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %927
  %929 = trunc nuw nsw i64 %915 to i32
  store i32 %929, ptr %928, align 4, !tbaa !50
  %930 = getelementptr inbounds nuw [573 x i8], ptr %231, i64 0, i64 %915
  store i8 0, ptr %930, align 1, !tbaa !28
  br label %933

931:                                              ; preds = %914
  %932 = getelementptr inbounds nuw i8, ptr %917, i64 2
  store i16 0, ptr %932, align 2, !tbaa !28
  br label %933

933:                                              ; preds = %931, %925
  %934 = phi i32 [ %929, %925 ], [ %916, %931 ]
  %935 = add nuw nsw i64 %915, 1
  %936 = icmp eq i64 %935, %904
  br i1 %936, label %905, label %914, !llvm.loop !51

937:                                              ; preds = %966, %908
  %938 = phi i32 [ %910, %908 ], [ %967, %966 ]
  %939 = phi i32 [ %909, %908 ], [ %942, %966 ]
  %940 = icmp slt i32 %939, 2
  %941 = add i32 %939, 1
  %942 = select i1 %940, i32 %941, i32 %939
  %943 = add nsw i32 %938, 1
  %944 = select i1 %940, i32 %941, i32 0
  store i32 %943, ptr %153, align 4, !tbaa !48
  %945 = sext i32 %943 to i64
  %946 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %945
  store i32 %944, ptr %946, align 4, !tbaa !50
  %947 = sext i32 %944 to i64
  %948 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %947
  store i16 1, ptr %948, align 2, !tbaa !28
  %949 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %947
  store i8 0, ptr %949, align 1, !tbaa !28
  %950 = load i64, ptr %911, align 8, !tbaa !52
  %951 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %950, i64 1), !nosanitize !32
  %952 = extractvalue { i64, i1 } %951, 1, !nosanitize !32
  br i1 %952, label %953, label %954, !prof !34, !nosanitize !32

953:                                              ; preds = %937
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

954:                                              ; preds = %937
  %955 = extractvalue { i64, i1 } %951, 0, !nosanitize !32
  store i64 %955, ptr %911, align 8, !tbaa !52
  br i1 %912, label %966, label %956

956:                                              ; preds = %954
  %957 = getelementptr inbounds %struct.ct_data_s, ptr %899, i64 %947, i32 1
  %958 = load i16, ptr %957, align 2, !tbaa !28
  %959 = zext i16 %958 to i64
  %960 = load i64, ptr %913, align 8, !tbaa !53
  %961 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %960, i64 %959), !nosanitize !32
  %962 = extractvalue { i64, i1 } %961, 1, !nosanitize !32
  br i1 %962, label %963, label %964, !prof !34, !nosanitize !32

963:                                              ; preds = %1227, %1130, %1123, %1050, %956
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

964:                                              ; preds = %956
  %965 = extractvalue { i64, i1 } %961, 0, !nosanitize !32
  store i64 %965, ptr %913, align 8, !tbaa !53
  br label %966

966:                                              ; preds = %964, %954
  %967 = load i32, ptr %153, align 4, !tbaa !48
  %968 = icmp slt i32 %967, 2
  br i1 %968, label %937, label %969, !llvm.loop !54

969:                                              ; preds = %966, %905
  %970 = phi i32 [ %934, %905 ], [ %942, %966 ]
  %971 = phi i32 [ %906, %905 ], [ %967, %966 ]
  %972 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %970, ptr %972, align 8, !tbaa !55
  %973 = lshr i32 %971, 1
  %974 = zext nneg i32 %973 to i64
  br label %978

975:                                              ; preds = %1044
  %976 = load i32, ptr %153, align 4, !tbaa !48
  %977 = sext i32 %901 to i64
  br label %1050

978:                                              ; preds = %1044, %969
  %979 = phi i64 [ %974, %969 ], [ %1048, %1044 ]
  %980 = getelementptr inbounds nuw [573 x i32], ptr %230, i64 0, i64 %979
  %981 = load i32, ptr %980, align 4, !tbaa !50
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %982
  %984 = load i32, ptr %153, align 4, !tbaa !48
  %985 = trunc i64 %979 to i32
  %986 = shl i32 %985, 1
  %987 = icmp sgt i32 %986, %984
  br i1 %987, label %1044, label %988

988:                                              ; preds = %978
  %989 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %982
  br label %990

990:                                              ; preds = %1038, %988
  %991 = phi i32 [ %984, %988 ], [ %1042, %1038 ]
  %992 = phi i32 [ %986, %988 ], [ %1041, %1038 ]
  %993 = phi i32 [ %985, %988 ], [ %1023, %1038 ]
  %994 = icmp slt i32 %992, %991
  br i1 %994, label %997, label %995

995:                                              ; preds = %990
  %996 = sext i32 %992 to i64
  br label %1021

997:                                              ; preds = %990
  %998 = or disjoint i32 %992, 1
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %999
  %1001 = load i32, ptr %1000, align 4, !tbaa !50
  %1002 = sext i32 %1001 to i64
  %1003 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %1002
  %1004 = load i16, ptr %1003, align 2, !tbaa !28
  %1005 = sext i32 %992 to i64
  %1006 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1005
  %1007 = load i32, ptr %1006, align 4, !tbaa !50
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %1008
  %1010 = load i16, ptr %1009, align 2, !tbaa !28
  %1011 = icmp ult i16 %1004, %1010
  br i1 %1011, label %1020, label %1012

1012:                                             ; preds = %997
  %1013 = icmp eq i16 %1004, %1010
  br i1 %1013, label %1014, label %1021

1014:                                             ; preds = %1012
  %1015 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1002
  %1016 = load i8, ptr %1015, align 1, !tbaa !28
  %1017 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1008
  %1018 = load i8, ptr %1017, align 1, !tbaa !28
  %1019 = icmp ugt i8 %1016, %1018
  br i1 %1019, label %1021, label %1020

1020:                                             ; preds = %1014, %997
  br label %1021

1021:                                             ; preds = %1020, %1014, %1012, %995
  %1022 = phi i64 [ %996, %995 ], [ %999, %1020 ], [ %1005, %1014 ], [ %1005, %1012 ]
  %1023 = phi i32 [ %992, %995 ], [ %998, %1020 ], [ %992, %1014 ], [ %992, %1012 ]
  %1024 = load i16, ptr %989, align 2, !tbaa !28
  %1025 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1022
  %1026 = load i32, ptr %1025, align 4, !tbaa !50
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %1027
  %1029 = load i16, ptr %1028, align 2, !tbaa !28
  %1030 = icmp ult i16 %1024, %1029
  br i1 %1030, label %1044, label %1031

1031:                                             ; preds = %1021
  %1032 = icmp eq i16 %1024, %1029
  br i1 %1032, label %1033, label %1038

1033:                                             ; preds = %1031
  %1034 = load i8, ptr %983, align 1, !tbaa !28
  %1035 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1027
  %1036 = load i8, ptr %1035, align 1, !tbaa !28
  %1037 = icmp ugt i8 %1034, %1036
  br i1 %1037, label %1038, label %1044

1038:                                             ; preds = %1033, %1031
  %1039 = sext i32 %993 to i64
  %1040 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1039
  store i32 %1026, ptr %1040, align 4, !tbaa !50
  %1041 = shl i32 %1023, 1
  %1042 = load i32, ptr %153, align 4, !tbaa !48
  %1043 = icmp sgt i32 %1041, %1042
  br i1 %1043, label %1044, label %990, !llvm.loop !56

1044:                                             ; preds = %1038, %1033, %1021, %978
  %1045 = phi i32 [ %985, %978 ], [ %993, %1021 ], [ %993, %1033 ], [ %1023, %1038 ]
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1046
  store i32 %981, ptr %1047, align 4, !tbaa !50
  %1048 = add nsw i64 %979, -1
  %1049 = icmp sgt i64 %979, 1
  br i1 %1049, label %978, label %975, !llvm.loop !57

1050:                                             ; preds = %1222, %975
  %1051 = phi i32 [ %976, %975 ], [ %1225, %1222 ]
  %1052 = phi i64 [ %977, %975 ], [ %1162, %1222 ]
  %1053 = load i32, ptr %236, align 4, !tbaa !50
  %1054 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1051, i32 -1)
  %1055 = extractvalue { i32, i1 } %1054, 1, !nosanitize !32
  br i1 %1055, label %963, label %1056, !prof !34, !nosanitize !32

1056:                                             ; preds = %1050
  %1057 = extractvalue { i32, i1 } %1054, 0, !nosanitize !32
  store i32 %1057, ptr %153, align 4, !tbaa !48
  %1058 = sext i32 %1051 to i64
  %1059 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1058
  %1060 = load i32, ptr %1059, align 4, !tbaa !50
  store i32 %1060, ptr %236, align 4, !tbaa !50
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1061
  %1063 = icmp slt i32 %1057, 2
  br i1 %1063, label %1123, label %1064

1064:                                             ; preds = %1056
  %1065 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %1061
  br label %1066

1066:                                             ; preds = %1114, %1064
  %1067 = phi i32 [ %1057, %1064 ], [ %1118, %1114 ]
  %1068 = phi i32 [ 2, %1064 ], [ %1117, %1114 ]
  %1069 = phi i32 [ 1, %1064 ], [ %1099, %1114 ]
  %1070 = icmp slt i32 %1068, %1067
  br i1 %1070, label %1073, label %1071

1071:                                             ; preds = %1066
  %1072 = sext i32 %1068 to i64
  br label %1097

1073:                                             ; preds = %1066
  %1074 = or disjoint i32 %1068, 1
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1075
  %1077 = load i32, ptr %1076, align 4, !tbaa !50
  %1078 = sext i32 %1077 to i64
  %1079 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %1078
  %1080 = load i16, ptr %1079, align 2, !tbaa !28
  %1081 = sext i32 %1068 to i64
  %1082 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1081
  %1083 = load i32, ptr %1082, align 4, !tbaa !50
  %1084 = sext i32 %1083 to i64
  %1085 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %1084
  %1086 = load i16, ptr %1085, align 2, !tbaa !28
  %1087 = icmp ult i16 %1080, %1086
  br i1 %1087, label %1096, label %1088

1088:                                             ; preds = %1073
  %1089 = icmp eq i16 %1080, %1086
  br i1 %1089, label %1090, label %1097

1090:                                             ; preds = %1088
  %1091 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1078
  %1092 = load i8, ptr %1091, align 1, !tbaa !28
  %1093 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1084
  %1094 = load i8, ptr %1093, align 1, !tbaa !28
  %1095 = icmp ugt i8 %1092, %1094
  br i1 %1095, label %1097, label %1096

1096:                                             ; preds = %1090, %1073
  br label %1097

1097:                                             ; preds = %1096, %1090, %1088, %1071
  %1098 = phi i64 [ %1072, %1071 ], [ %1075, %1096 ], [ %1081, %1090 ], [ %1081, %1088 ]
  %1099 = phi i32 [ %1068, %1071 ], [ %1074, %1096 ], [ %1068, %1090 ], [ %1068, %1088 ]
  %1100 = load i16, ptr %1065, align 2, !tbaa !28
  %1101 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1098
  %1102 = load i32, ptr %1101, align 4, !tbaa !50
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %1103
  %1105 = load i16, ptr %1104, align 2, !tbaa !28
  %1106 = icmp ult i16 %1100, %1105
  br i1 %1106, label %1120, label %1107

1107:                                             ; preds = %1097
  %1108 = icmp eq i16 %1100, %1105
  br i1 %1108, label %1109, label %1114

1109:                                             ; preds = %1107
  %1110 = load i8, ptr %1062, align 1, !tbaa !28
  %1111 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1103
  %1112 = load i8, ptr %1111, align 1, !tbaa !28
  %1113 = icmp ugt i8 %1110, %1112
  br i1 %1113, label %1114, label %1120

1114:                                             ; preds = %1109, %1107
  %1115 = sext i32 %1069 to i64
  %1116 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1115
  store i32 %1102, ptr %1116, align 4, !tbaa !50
  %1117 = shl i32 %1099, 1
  %1118 = load i32, ptr %153, align 4, !tbaa !48
  %1119 = icmp sgt i32 %1117, %1118
  br i1 %1119, label %1120, label %1066, !llvm.loop !56

1120:                                             ; preds = %1114, %1109, %1097
  %1121 = phi i32 [ %1069, %1097 ], [ %1069, %1109 ], [ %1099, %1114 ]
  %1122 = sext i32 %1121 to i64
  br label %1123

1123:                                             ; preds = %1120, %1056
  %1124 = phi i64 [ 1, %1056 ], [ %1122, %1120 ]
  %1125 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1124
  store i32 %1060, ptr %1125, align 4, !tbaa !50
  %1126 = load i32, ptr %236, align 4, !tbaa !50
  %1127 = load i32, ptr %154, align 8, !tbaa !49
  %1128 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1127, i32 -1)
  %1129 = extractvalue { i32, i1 } %1128, 1, !nosanitize !32
  br i1 %1129, label %963, label %1130, !prof !34, !nosanitize !32

1130:                                             ; preds = %1123
  %1131 = extractvalue { i32, i1 } %1128, 0, !nosanitize !32
  store i32 %1131, ptr %154, align 8, !tbaa !49
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1132
  store i32 %1053, ptr %1133, align 4, !tbaa !50
  %1134 = load i32, ptr %154, align 8, !tbaa !49
  %1135 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1134, i32 -1)
  %1136 = extractvalue { i32, i1 } %1135, 1, !nosanitize !32
  br i1 %1136, label %963, label %1137, !prof !34, !nosanitize !32

1137:                                             ; preds = %1130
  %1138 = extractvalue { i32, i1 } %1135, 0, !nosanitize !32
  store i32 %1138, ptr %154, align 8, !tbaa !49
  %1139 = sext i32 %1138 to i64
  %1140 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1139
  store i32 %1126, ptr %1140, align 4, !tbaa !50
  %1141 = sext i32 %1053 to i64
  %1142 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %1141
  %1143 = load i16, ptr %1142, align 2, !tbaa !28
  %1144 = sext i32 %1126 to i64
  %1145 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %1144
  %1146 = load i16, ptr %1145, align 2, !tbaa !28
  %1147 = add i16 %1146, %1143
  %1148 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %1052
  store i16 %1147, ptr %1148, align 2, !tbaa !28
  %1149 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1141
  %1150 = load i8, ptr %1149, align 1, !tbaa !28
  %1151 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1144
  %1152 = load i8, ptr %1151, align 1, !tbaa !28
  %1153 = tail call i8 @llvm.umax.i8(i8 %1150, i8 %1152)
  %1154 = add i8 %1153, 1
  %1155 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1052
  store i8 %1154, ptr %1155, align 1, !tbaa !28
  %1156 = trunc nsw i64 %1052 to i32
  %1157 = trunc i64 %1052 to i16
  %1158 = getelementptr inbounds nuw i8, ptr %1145, i64 2
  store i16 %1157, ptr %1158, align 2, !tbaa !28
  %1159 = getelementptr inbounds nuw i8, ptr %1142, i64 2
  store i16 %1157, ptr %1159, align 2, !tbaa !28
  %1160 = icmp eq i64 %1052, 2147483647
  br i1 %1160, label %924, label %1161, !prof !34, !nosanitize !32

1161:                                             ; preds = %1137
  %1162 = add nsw i64 %1052, 1
  store i32 %1156, ptr %236, align 4, !tbaa !50
  %1163 = load i32, ptr %153, align 4, !tbaa !48
  %1164 = icmp slt i32 %1163, 2
  br i1 %1164, label %1222, label %1165

1165:                                             ; preds = %1213, %1161
  %1166 = phi i32 [ %1217, %1213 ], [ %1163, %1161 ]
  %1167 = phi i32 [ %1216, %1213 ], [ 2, %1161 ]
  %1168 = phi i32 [ %1198, %1213 ], [ 1, %1161 ]
  %1169 = icmp slt i32 %1167, %1166
  br i1 %1169, label %1172, label %1170

1170:                                             ; preds = %1165
  %1171 = sext i32 %1167 to i64
  br label %1196

1172:                                             ; preds = %1165
  %1173 = or disjoint i32 %1167, 1
  %1174 = sext i32 %1173 to i64
  %1175 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1174
  %1176 = load i32, ptr %1175, align 4, !tbaa !50
  %1177 = sext i32 %1176 to i64
  %1178 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %1177
  %1179 = load i16, ptr %1178, align 2, !tbaa !28
  %1180 = sext i32 %1167 to i64
  %1181 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1180
  %1182 = load i32, ptr %1181, align 4, !tbaa !50
  %1183 = sext i32 %1182 to i64
  %1184 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %1183
  %1185 = load i16, ptr %1184, align 2, !tbaa !28
  %1186 = icmp ult i16 %1179, %1185
  br i1 %1186, label %1195, label %1187

1187:                                             ; preds = %1172
  %1188 = icmp eq i16 %1179, %1185
  br i1 %1188, label %1189, label %1196

1189:                                             ; preds = %1187
  %1190 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1177
  %1191 = load i8, ptr %1190, align 1, !tbaa !28
  %1192 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1183
  %1193 = load i8, ptr %1192, align 1, !tbaa !28
  %1194 = icmp ugt i8 %1191, %1193
  br i1 %1194, label %1196, label %1195

1195:                                             ; preds = %1189, %1172
  br label %1196

1196:                                             ; preds = %1195, %1189, %1187, %1170
  %1197 = phi i64 [ %1171, %1170 ], [ %1174, %1195 ], [ %1180, %1189 ], [ %1180, %1187 ]
  %1198 = phi i32 [ %1167, %1170 ], [ %1173, %1195 ], [ %1167, %1189 ], [ %1167, %1187 ]
  %1199 = load i16, ptr %1148, align 2, !tbaa !28
  %1200 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1197
  %1201 = load i32, ptr %1200, align 4, !tbaa !50
  %1202 = sext i32 %1201 to i64
  %1203 = getelementptr inbounds %struct.ct_data_s, ptr %896, i64 %1202
  %1204 = load i16, ptr %1203, align 2, !tbaa !28
  %1205 = icmp ult i16 %1199, %1204
  br i1 %1205, label %1219, label %1206

1206:                                             ; preds = %1196
  %1207 = icmp eq i16 %1199, %1204
  br i1 %1207, label %1208, label %1213

1208:                                             ; preds = %1206
  %1209 = load i8, ptr %1155, align 1, !tbaa !28
  %1210 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1202
  %1211 = load i8, ptr %1210, align 1, !tbaa !28
  %1212 = icmp ugt i8 %1209, %1211
  br i1 %1212, label %1213, label %1219

1213:                                             ; preds = %1208, %1206
  %1214 = sext i32 %1168 to i64
  %1215 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1214
  store i32 %1201, ptr %1215, align 4, !tbaa !50
  %1216 = shl i32 %1198, 1
  %1217 = load i32, ptr %153, align 4, !tbaa !48
  %1218 = icmp sgt i32 %1216, %1217
  br i1 %1218, label %1219, label %1165, !llvm.loop !56

1219:                                             ; preds = %1213, %1208, %1196
  %1220 = phi i32 [ %1168, %1196 ], [ %1168, %1208 ], [ %1198, %1213 ]
  %1221 = sext i32 %1220 to i64
  br label %1222

1222:                                             ; preds = %1219, %1161
  %1223 = phi i64 [ 1, %1161 ], [ %1221, %1219 ]
  %1224 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1223
  store i32 %1156, ptr %1224, align 4, !tbaa !50
  %1225 = load i32, ptr %153, align 4, !tbaa !48
  %1226 = icmp sgt i32 %1225, 1
  br i1 %1226, label %1050, label %1227, !llvm.loop !58

1227:                                             ; preds = %1222
  %1228 = load i32, ptr %154, align 8, !tbaa !49
  %1229 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1228, i32 -1)
  %1230 = extractvalue { i32, i1 } %1229, 1, !nosanitize !32
  br i1 %1230, label %963, label %1231, !prof !34, !nosanitize !32

1231:                                             ; preds = %1227
  %1232 = extractvalue { i32, i1 } %1229, 0, !nosanitize !32
  %1233 = load i32, ptr %236, align 4, !tbaa !50
  store i32 %1232, ptr %154, align 8, !tbaa !49
  %1234 = sext i32 %1232 to i64
  %1235 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1234
  store i32 %1233, ptr %1235, align 4, !tbaa !50
  %1236 = load ptr, ptr %895, align 8, !tbaa !42
  %1237 = load i32, ptr %972, align 8, !tbaa !55
  %1238 = load ptr, ptr %897, align 8, !tbaa !43
  %1239 = load ptr, ptr %1238, align 8, !tbaa !44
  %1240 = getelementptr inbounds nuw i8, ptr %1238, i64 8
  %1241 = load ptr, ptr %1240, align 8, !tbaa !59
  %1242 = getelementptr inbounds nuw i8, ptr %1238, i64 16
  %1243 = load i32, ptr %1242, align 8, !tbaa !60
  %1244 = getelementptr inbounds nuw i8, ptr %1238, i64 24
  %1245 = load i32, ptr %1244, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %506, i8 0, i64 32, i1 false), !tbaa !62
  %1246 = load i32, ptr %154, align 8, !tbaa !49
  %1247 = sext i32 %1246 to i64
  %1248 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1247
  %1249 = load i32, ptr %1248, align 4, !tbaa !50
  %1250 = sext i32 %1249 to i64
  %1251 = getelementptr inbounds %struct.ct_data_s, ptr %1236, i64 %1250, i32 1
  store i16 0, ptr %1251, align 2, !tbaa !28
  %1252 = load i32, ptr %154, align 8, !tbaa !49
  %1253 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1252, i32 1), !nosanitize !32
  %1254 = extractvalue { i32, i1 } %1253, 1, !nosanitize !32
  br i1 %1254, label %1255, label %1256, !prof !34, !nosanitize !32

1255:                                             ; preds = %1304, %1279, %1231
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

1256:                                             ; preds = %1231
  %1257 = extractvalue { i32, i1 } %1253, 0
  %1258 = icmp slt i32 %1257, 573
  br i1 %1258, label %1259, label %1477

1259:                                             ; preds = %1256
  %1260 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1261 = icmp eq ptr %1239, null
  %1262 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1263 = sext i32 %1257 to i64
  br label %1264

1264:                                             ; preds = %1336, %1259
  %1265 = phi i64 [ %1263, %1259 ], [ %1337, %1336 ]
  %1266 = phi i32 [ 0, %1259 ], [ %1286, %1336 ]
  %1267 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1265
  %1268 = load i32, ptr %1267, align 4, !tbaa !50
  %1269 = sext i32 %1268 to i64
  %1270 = getelementptr inbounds %struct.ct_data_s, ptr %1236, i64 %1269
  %1271 = getelementptr inbounds nuw i8, ptr %1270, i64 2
  %1272 = load i16, ptr %1271, align 2, !tbaa !28
  %1273 = zext i16 %1272 to i64
  %1274 = getelementptr inbounds nuw %struct.ct_data_s, ptr %1236, i64 %1273, i32 1
  %1275 = load i16, ptr %1274, align 2, !tbaa !28
  %1276 = zext i16 %1275 to i32
  %1277 = add nuw nsw i32 %1276, 1
  %1278 = icmp sgt i32 %1245, %1276
  br i1 %1278, label %1284, label %1279

1279:                                             ; preds = %1264
  %1280 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1266, i32 1), !nosanitize !32
  %1281 = extractvalue { i32, i1 } %1280, 1, !nosanitize !32
  br i1 %1281, label %1255, label %1282, !prof !34, !nosanitize !32

1282:                                             ; preds = %1279
  %1283 = extractvalue { i32, i1 } %1280, 0, !nosanitize !32
  br label %1284

1284:                                             ; preds = %1282, %1264
  %1285 = phi i32 [ %1245, %1282 ], [ %1277, %1264 ]
  %1286 = phi i32 [ %1283, %1282 ], [ %1266, %1264 ]
  %1287 = trunc i32 %1285 to i16
  store i16 %1287, ptr %1271, align 2, !tbaa !28
  %1288 = icmp sgt i32 %1268, %1237
  br i1 %1288, label %1336, label %1289

1289:                                             ; preds = %1284
  %1290 = sext i32 %1285 to i64
  %1291 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %1290
  %1292 = load i16, ptr %1291, align 2, !tbaa !62
  %1293 = add i16 %1292, 1
  store i16 %1293, ptr %1291, align 2, !tbaa !62
  %1294 = icmp slt i32 %1268, %1243
  br i1 %1294, label %1304, label %1295

1295:                                             ; preds = %1289
  %1296 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1268, i32 %1243), !nosanitize !32
  %1297 = extractvalue { i32, i1 } %1296, 1, !nosanitize !32
  br i1 %1297, label %1298, label %1299, !prof !34, !nosanitize !32

.loopexit7:                                       ; preds = %1391, %1434
  br label %1298

1298:                                             ; preds = %.loopexit7, %1364, %1356, %1342, %1295
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

1299:                                             ; preds = %1295
  %1300 = extractvalue { i32, i1 } %1296, 0, !nosanitize !32
  %1301 = sext i32 %1300 to i64
  %1302 = getelementptr inbounds i32, ptr %1241, i64 %1301
  %1303 = load i32, ptr %1302, align 4, !tbaa !50
  br label %1304

1304:                                             ; preds = %1299, %1289
  %1305 = phi i32 [ %1303, %1299 ], [ 0, %1289 ]
  %1306 = load i16, ptr %1270, align 2, !tbaa !28
  %1307 = zext i16 %1306 to i64
  %1308 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1285, i32 %1305), !nosanitize !32
  %1309 = extractvalue { i32, i1 } %1308, 1, !nosanitize !32
  br i1 %1309, label %1255, label %1310, !prof !34, !nosanitize !32

1310:                                             ; preds = %1304
  %1311 = extractvalue { i32, i1 } %1308, 0, !nosanitize !32
  %1312 = zext i32 %1311 to i64
  %1313 = mul nuw nsw i64 %1312, %1307
  %1314 = load i64, ptr %1260, align 8, !tbaa !52
  %1315 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1314, i64 %1313), !nosanitize !32
  %1316 = extractvalue { i64, i1 } %1315, 1, !nosanitize !32
  br i1 %1316, label %1317, label %1318, !prof !34, !nosanitize !32

1317:                                             ; preds = %1320, %1310
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

1318:                                             ; preds = %1310
  %1319 = extractvalue { i64, i1 } %1315, 0, !nosanitize !32
  store i64 %1319, ptr %1260, align 8, !tbaa !52
  br i1 %1261, label %1336, label %1320

1320:                                             ; preds = %1318
  %1321 = getelementptr inbounds %struct.ct_data_s, ptr %1239, i64 %1269, i32 1
  %1322 = load i16, ptr %1321, align 2, !tbaa !28
  %1323 = zext i16 %1322 to i32
  %1324 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1323, i32 %1305), !nosanitize !32
  %1325 = extractvalue { i32, i1 } %1324, 1, !nosanitize !32
  br i1 %1325, label %1317, label %1326, !prof !34, !nosanitize !32

1326:                                             ; preds = %1320
  %1327 = extractvalue { i32, i1 } %1324, 0, !nosanitize !32
  %1328 = zext i32 %1327 to i64
  %1329 = mul nuw nsw i64 %1328, %1307
  %1330 = load i64, ptr %1262, align 8, !tbaa !53
  %1331 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1330, i64 %1329), !nosanitize !32
  %1332 = extractvalue { i64, i1 } %1331, 1, !nosanitize !32
  br i1 %1332, label %1333, label %1334, !prof !34, !nosanitize !32

1333:                                             ; preds = %1359, %1326
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

1334:                                             ; preds = %1326
  %1335 = extractvalue { i64, i1 } %1331, 0, !nosanitize !32
  store i64 %1335, ptr %1262, align 8, !tbaa !53
  br label %1336

1336:                                             ; preds = %1334, %1318, %1284
  %1337 = add nsw i64 %1265, 1
  %1338 = and i64 %1337, 4294967295
  %1339 = icmp eq i64 %1338, 573
  br i1 %1339, label %1340, label %1264, !llvm.loop !63

1340:                                             ; preds = %1336
  %1341 = icmp eq i32 %1286, 0
  br i1 %1341, label %1477, label %1342

1342:                                             ; preds = %1340
  %1343 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1245, i32 -1)
  %1344 = extractvalue { i32, i1 } %1343, 1, !nosanitize !32
  %1345 = sext i32 %1245 to i64
  %1346 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %1345
  br i1 %1344, label %1298, label %1347, !prof !34, !nosanitize !32

1347:                                             ; preds = %1374, %1342
  %1348 = phi i32 [ %1375, %1374 ], [ %1286, %1342 ]
  br label %1349

1349:                                             ; preds = %1356, %1347
  %1350 = phi { i32, i1 } [ %1357, %1356 ], [ %1343, %1347 ]
  %1351 = extractvalue { i32, i1 } %1350, 0
  %1352 = sext i32 %1351 to i64
  %1353 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %1352
  %1354 = load i16, ptr %1353, align 2, !tbaa !62
  %1355 = icmp eq i16 %1354, 0
  br i1 %1355, label %1356, label %1359

1356:                                             ; preds = %1349
  %1357 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1351, i32 -1)
  %1358 = extractvalue { i32, i1 } %1357, 1, !nosanitize !32
  br i1 %1358, label %1298, label %1349, !prof !34, !llvm.loop !64, !nosanitize !32

1359:                                             ; preds = %1349
  %1360 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %1352
  %1361 = add i16 %1354, -1
  store i16 %1361, ptr %1360, align 2, !tbaa !62
  %1362 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1351, i32 1), !nosanitize !32
  %1363 = extractvalue { i32, i1 } %1362, 1, !nosanitize !32
  br i1 %1363, label %1333, label %1364, !prof !34, !nosanitize !32

1364:                                             ; preds = %1359
  %1365 = extractvalue { i32, i1 } %1362, 0, !nosanitize !32
  %1366 = sext i32 %1365 to i64
  %1367 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %1366
  %1368 = load i16, ptr %1367, align 2, !tbaa !62
  %1369 = add i16 %1368, 2
  store i16 %1369, ptr %1367, align 2, !tbaa !62
  %1370 = load i16, ptr %1346, align 2, !tbaa !62
  %1371 = add i16 %1370, -1
  store i16 %1371, ptr %1346, align 2, !tbaa !62
  %1372 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1348, i32 -2)
  %1373 = extractvalue { i32, i1 } %1372, 1, !nosanitize !32
  br i1 %1373, label %1298, label %1374, !prof !34, !nosanitize !32

1374:                                             ; preds = %1364
  %1375 = extractvalue { i32, i1 } %1372, 0, !nosanitize !32
  %1376 = icmp sgt i32 %1375, 0
  br i1 %1376, label %1347, label %1377, !llvm.loop !65

1377:                                             ; preds = %1374
  %1378 = icmp eq i32 %1245, 0
  br i1 %1378, label %1477, label %1379

1379:                                             ; preds = %1473, %1377
  %1380 = phi i64 [ %1474, %1473 ], [ %1345, %1377 ]
  %1381 = phi i32 [ %1428, %1473 ], [ 573, %1377 ]
  %1382 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %1380
  %1383 = load i16, ptr %1382, align 2, !tbaa !62
  %1384 = icmp eq i16 %1383, 0
  br i1 %1384, label %1427, label %1385

1385:                                             ; preds = %1379
  %1386 = zext i16 %1383 to i32
  %1387 = trunc i64 %1380 to i16
  %mv.h15 = icmp sge i64 %1380, 0
  %mv.h.fr16 = freeze i1 %mv.h15
  br i1 %mv.h.fr16, label %.mv.ph17.mv.fast, label %.mv.ph17

.mv.ph17.mv.fast:                                 ; preds = %1385
  br label %1388

1388:                                             ; preds = %1424, %.mv.ph17.mv.fast
  %1389 = phi i32 [ %1381, %.mv.ph17.mv.fast ], [ %.lcssa11.mv.fast, %1424 ]
  %1390 = phi i32 [ %1386, %.mv.ph17.mv.fast ], [ %1425, %1424 ]
  br label %1391

1391:                                             ; preds = %1395, %1388
  %1392 = phi i32 [ %1396, %1395 ], [ %1389, %1388 ]
  %1393 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1392, i32 -1)
  %1394 = extractvalue { i32, i1 } %1393, 1, !nosanitize !32
  br i1 %1394, label %.loopexit7, label %1395, !prof !34, !nosanitize !32

1395:                                             ; preds = %1391
  %1396 = extractvalue { i32, i1 } %1393, 0, !nosanitize !32
  %1397 = sext i32 %1396 to i64
  %1398 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1397
  %1399 = load i32, ptr %1398, align 4, !tbaa !50
  %1400 = icmp sgt i32 %1399, %1237
  br i1 %1400, label %1391, label %1401, !llvm.loop !66

1401:                                             ; preds = %1395
  %.lcssa11.mv.fast = phi i32 [ %1396, %1395 ]
  %.lcssa10.mv.fast = phi i32 [ %1399, %1395 ]
  %1402 = sext i32 %.lcssa10.mv.fast to i64
  %1403 = getelementptr inbounds %struct.ct_data_s, ptr %1236, i64 %1402
  %1404 = getelementptr inbounds nuw i8, ptr %1403, i64 2
  %1405 = load i16, ptr %1404, align 2, !tbaa !28
  %1406 = zext i16 %1405 to i64
  %1407 = icmp eq i64 %1380, %1406
  br i1 %1407, label %1424, label %1408

1408:                                             ; preds = %1401
  %1409 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1380, i64 %1406), !nosanitize !32
  %1410 = extractvalue { i64, i1 } %1409, 1, !nosanitize !32
  br i1 %1410, label %.loopexit8, label %1411, !prof !34, !nosanitize !32

1411:                                             ; preds = %1408
  %1412 = extractvalue { i64, i1 } %1409, 0, !nosanitize !32
  %1413 = load i16, ptr %1403, align 2, !tbaa !28
  %1414 = zext i16 %1413 to i64
  %1415 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1412, i64 %1414), !nosanitize !32
  %1416 = extractvalue { i64, i1 } %1415, 1, !nosanitize !32
  br i1 false, label %1461, label %1417, !prof !34, !nosanitize !32

1417:                                             ; preds = %1411
  %1418 = extractvalue { i64, i1 } %1415, 0, !nosanitize !32
  %1419 = load i64, ptr %1260, align 8, !tbaa !52
  %1420 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1419, i64 %1418), !nosanitize !32
  %1421 = extractvalue { i64, i1 } %1420, 1, !nosanitize !32
  br i1 %1421, label %1467, label %1422, !prof !34, !nosanitize !32

1422:                                             ; preds = %1417
  %1423 = extractvalue { i64, i1 } %1420, 0, !nosanitize !32
  store i64 %1423, ptr %1260, align 8, !tbaa !52
  store i16 %1387, ptr %1404, align 2, !tbaa !28
  br label %1424

1424:                                             ; preds = %1422, %1401
  %1425 = add nsw i32 %1390, -1
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %.loopexit9, label %1388, !llvm.loop !66

.mv.ph17:                                         ; preds = %1385
  br label %1431

.loopexit9:                                       ; preds = %1424, %1470
  %.lcssa11.lcssa14 = phi i32 [ %.lcssa11, %1470 ], [ %.lcssa11.mv.fast, %1424 ]
  br label %1427

1427:                                             ; preds = %.loopexit9, %1379
  %1428 = phi i32 [ %1381, %1379 ], [ %.lcssa11.lcssa14, %.loopexit9 ]
  %1429 = and i64 %1380, 4294967295
  %1430 = icmp eq i64 %1429, 2147483648
  br i1 %1430, label %1454, label %1473, !prof !34, !nosanitize !32

1431:                                             ; preds = %1470, %.mv.ph17
  %1432 = phi i32 [ %1381, %.mv.ph17 ], [ %.lcssa11, %1470 ]
  %1433 = phi i32 [ %1386, %.mv.ph17 ], [ %1471, %1470 ]
  br label %1434

1434:                                             ; preds = %1438, %1431
  %1435 = phi i32 [ %1439, %1438 ], [ %1432, %1431 ]
  %1436 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1435, i32 -1)
  %1437 = extractvalue { i32, i1 } %1436, 1, !nosanitize !32
  br i1 %1437, label %.loopexit7, label %1438, !prof !34, !nosanitize !32

1438:                                             ; preds = %1434
  %1439 = extractvalue { i32, i1 } %1436, 0, !nosanitize !32
  %1440 = sext i32 %1439 to i64
  %1441 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1440
  %1442 = load i32, ptr %1441, align 4, !tbaa !50
  %1443 = icmp sgt i32 %1442, %1237
  br i1 %1443, label %1434, label %1444, !llvm.loop !66

1444:                                             ; preds = %1438
  %.lcssa11 = phi i32 [ %1439, %1438 ]
  %.lcssa10 = phi i32 [ %1442, %1438 ]
  %1445 = sext i32 %.lcssa10 to i64
  %1446 = getelementptr inbounds %struct.ct_data_s, ptr %1236, i64 %1445
  %1447 = getelementptr inbounds nuw i8, ptr %1446, i64 2
  %1448 = load i16, ptr %1447, align 2, !tbaa !28
  %1449 = zext i16 %1448 to i64
  %1450 = icmp eq i64 %1380, %1449
  br i1 %1450, label %1470, label %1451

1451:                                             ; preds = %1444
  %1452 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1380, i64 %1449), !nosanitize !32
  %1453 = extractvalue { i64, i1 } %1452, 1, !nosanitize !32
  br i1 %1453, label %.loopexit8, label %1455, !prof !34, !nosanitize !32

.loopexit8:                                       ; preds = %1408, %1451
  br label %1454

1454:                                             ; preds = %.loopexit8, %1427
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

1455:                                             ; preds = %1451
  %1456 = extractvalue { i64, i1 } %1452, 0, !nosanitize !32
  %1457 = load i16, ptr %1446, align 2, !tbaa !28
  %1458 = zext i16 %1457 to i64
  %1459 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1456, i64 %1458), !nosanitize !32
  %1460 = extractvalue { i64, i1 } %1459, 1, !nosanitize !32
  br i1 %1460, label %1461, label %1462, !prof !34, !nosanitize !32

1461:                                             ; preds = %1411, %1455
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !32
  unreachable, !nosanitize !32

1462:                                             ; preds = %1455
  %1463 = extractvalue { i64, i1 } %1459, 0, !nosanitize !32
  %1464 = load i64, ptr %1260, align 8, !tbaa !52
  %1465 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1464, i64 %1463), !nosanitize !32
  %1466 = extractvalue { i64, i1 } %1465, 1, !nosanitize !32
  br i1 %1466, label %1467, label %1468, !prof !34, !nosanitize !32

1467:                                             ; preds = %1417, %1462
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

1468:                                             ; preds = %1462
  %1469 = extractvalue { i64, i1 } %1465, 0, !nosanitize !32
  store i64 %1469, ptr %1260, align 8, !tbaa !52
  store i16 %1387, ptr %1447, align 2, !tbaa !28
  br label %1470

1470:                                             ; preds = %1468, %1444
  %1471 = add nsw i32 %1433, -1
  %1472 = icmp eq i32 %1471, 0
  br i1 %1472, label %.loopexit9, label %1431, !llvm.loop !66

1473:                                             ; preds = %1427
  %1474 = add nsw i64 %1380, -1
  %1475 = and i64 %1474, 4294967295
  %1476 = icmp eq i64 %1475, 0
  br i1 %1476, label %1477, label %1379, !llvm.loop !67

1477:                                             ; preds = %1473, %1377, %1340, %1256
  call void @llvm.lifetime.start.p0(ptr %6)
  %1478 = load i16, ptr %506, align 2, !tbaa !62
  %1479 = zext i16 %1478 to i32
  %1480 = shl nuw nsw i32 %1479, 1
  %1481 = trunc i32 %1480 to i16
  %1482 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1481, ptr %1482, align 2, !tbaa !62
  %1483 = load i16, ptr %744, align 2, !tbaa !62
  %1484 = zext i16 %1483 to i32
  %1485 = add nuw nsw i32 %1480, %1484
  %1486 = shl nuw nsw i32 %1485, 1
  %1487 = trunc i32 %1486 to i16
  %1488 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1487, ptr %1488, align 4, !tbaa !62
  %1489 = load i16, ptr %751, align 2, !tbaa !62
  %1490 = zext i16 %1489 to i32
  %1491 = add nuw nsw i32 %1486, %1490
  %1492 = shl nuw nsw i32 %1491, 1
  %1493 = trunc i32 %1492 to i16
  %1494 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1493, ptr %1494, align 2, !tbaa !62
  %1495 = load i16, ptr %758, align 2, !tbaa !62
  %1496 = zext i16 %1495 to i32
  %1497 = add nuw nsw i32 %1492, %1496
  %1498 = shl nuw nsw i32 %1497, 1
  %1499 = trunc i32 %1498 to i16
  %1500 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1499, ptr %1500, align 8, !tbaa !62
  %1501 = load i16, ptr %765, align 2, !tbaa !62
  %1502 = zext i16 %1501 to i32
  %1503 = add nuw nsw i32 %1498, %1502
  %1504 = shl nuw nsw i32 %1503, 1
  %1505 = trunc i32 %1504 to i16
  %1506 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1505, ptr %1506, align 2, !tbaa !62
  %1507 = load i16, ptr %772, align 2, !tbaa !62
  %1508 = zext i16 %1507 to i32
  %1509 = add nuw nsw i32 %1504, %1508
  %1510 = shl nuw nsw i32 %1509, 1
  %1511 = trunc i32 %1510 to i16
  %1512 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1511, ptr %1512, align 4, !tbaa !62
  %1513 = load i16, ptr %779, align 2, !tbaa !62
  %1514 = zext i16 %1513 to i32
  %1515 = add nuw nsw i32 %1510, %1514
  %1516 = shl nuw nsw i32 %1515, 1
  %1517 = trunc i32 %1516 to i16
  %1518 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1517, ptr %1518, align 2, !tbaa !62
  %1519 = load i16, ptr %786, align 2, !tbaa !62
  %1520 = zext i16 %1519 to i32
  %1521 = add nuw nsw i32 %1516, %1520
  %1522 = shl nuw nsw i32 %1521, 1
  %1523 = trunc i32 %1522 to i16
  %1524 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1523, ptr %1524, align 16, !tbaa !62
  %1525 = load i16, ptr %793, align 2, !tbaa !62
  %1526 = zext i16 %1525 to i32
  %1527 = add nuw nsw i32 %1522, %1526
  %1528 = shl nuw nsw i32 %1527, 1
  %1529 = trunc i32 %1528 to i16
  %1530 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1529, ptr %1530, align 2, !tbaa !62
  %1531 = load i16, ptr %800, align 2, !tbaa !62
  %1532 = zext i16 %1531 to i32
  %1533 = add nuw nsw i32 %1528, %1532
  %1534 = shl nuw nsw i32 %1533, 1
  %1535 = trunc i32 %1534 to i16
  %1536 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1535, ptr %1536, align 4, !tbaa !62
  %1537 = load i16, ptr %807, align 2, !tbaa !62
  %1538 = trunc i32 %1534 to i16
  %1539 = add i16 %1537, %1538
  %1540 = shl i16 %1539, 1
  %1541 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1540, ptr %1541, align 2, !tbaa !62
  %1542 = load i16, ptr %813, align 2, !tbaa !62
  %1543 = add i16 %1542, %1540
  %1544 = shl i16 %1543, 1
  %1545 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1544, ptr %1545, align 8, !tbaa !62
  %1546 = load i16, ptr %818, align 2, !tbaa !62
  %1547 = add i16 %1544, %1546
  %1548 = shl i16 %1547, 1
  %1549 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1548, ptr %1549, align 2, !tbaa !62
  %1550 = load i16, ptr %823, align 2, !tbaa !62
  %1551 = add i16 %1548, %1550
  %1552 = shl i16 %1551, 1
  %1553 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1552, ptr %1553, align 4, !tbaa !62
  %1554 = load i16, ptr %828, align 2, !tbaa !62
  %1555 = add i16 %1552, %1554
  %1556 = shl i16 %1555, 1
  %1557 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1556, ptr %1557, align 2, !tbaa !62
  %1558 = icmp slt i32 %970, 0
  br i1 %1558, label %1619, label %1560

1559:                                             ; preds = %1613
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

1560:                                             ; preds = %1615, %1477
  %1561 = phi i64 [ %1616, %1615 ], [ 0, %1477 ]
  %1562 = getelementptr inbounds nuw %struct.ct_data_s, ptr %896, i64 %1561
  %1563 = getelementptr inbounds nuw i8, ptr %1562, i64 2
  %1564 = load i16, ptr %1563, align 2, !tbaa !28
  %1565 = icmp eq i16 %1564, 0
  br i1 %1565, label %1613, label %1566

1566:                                             ; preds = %1560
  %1567 = zext i16 %1564 to i32
  %1568 = zext i16 %1564 to i64
  %1569 = getelementptr inbounds nuw [16 x i16], ptr %6, i64 0, i64 %1568
  %1570 = load i16, ptr %1569, align 2, !tbaa !62
  %1571 = add i16 %1570, 1
  store i16 %1571, ptr %1569, align 2, !tbaa !62
  %1572 = and i32 %1567, 3
  %1573 = icmp ult i16 %1564, 4
  br i1 %1573, label %1596, label %1574

1574:                                             ; preds = %1566
  %1575 = and i32 %1567, 65532
  br label %1576

1576:                                             ; preds = %1576, %1574
  %1577 = phi i16 [ %1570, %1574 ], [ %1593, %1576 ]
  %1578 = phi i16 [ 0, %1574 ], [ %1592, %1576 ]
  %1579 = phi i32 [ 0, %1574 ], [ %1594, %1576 ]
  %1580 = and i16 %1577, 1
  %1581 = or disjoint i16 %1578, %1580
  %1582 = lshr i16 %1577, 2
  %1583 = shl i16 %1581, 2
  %1584 = and i16 %1577, 2
  %1585 = or disjoint i16 %1583, %1584
  %1586 = and i16 %1582, 1
  %1587 = or disjoint i16 %1585, %1586
  %1588 = shl i16 %1587, 1
  %1589 = lshr i16 %1577, 3
  %1590 = and i16 %1589, 1
  %1591 = or disjoint i16 %1588, %1590
  %1592 = shl i16 %1591, 1
  %1593 = lshr i16 %1577, 4
  %1594 = add i32 %1579, 4
  %1595 = icmp eq i32 %1594, %1575
  br i1 %1595, label %1596, label %1576, !llvm.loop !68

1596:                                             ; preds = %1576, %1566
  %1597 = phi i16 [ poison, %1566 ], [ %1591, %1576 ]
  %1598 = phi i16 [ %1570, %1566 ], [ %1593, %1576 ]
  %1599 = phi i16 [ 0, %1566 ], [ %1592, %1576 ]
  %1600 = icmp eq i32 %1572, 0
  br i1 %1600, label %1611, label %1601

1601:                                             ; preds = %1601, %1596
  %1602 = phi i16 [ %1608, %1601 ], [ %1598, %1596 ]
  %1603 = phi i16 [ %1607, %1601 ], [ %1599, %1596 ]
  %1604 = phi i32 [ %1609, %1601 ], [ 0, %1596 ]
  %1605 = and i16 %1602, 1
  %1606 = or disjoint i16 %1603, %1605
  %1607 = shl i16 %1606, 1
  %1608 = lshr i16 %1602, 1
  %1609 = add i32 %1604, 1
  %1610 = icmp eq i32 %1609, %1572
  br i1 %1610, label %1611, label %1601, !llvm.loop !72

1611:                                             ; preds = %1601, %1596
  %1612 = phi i16 [ %1597, %1596 ], [ %1606, %1601 ]
  store i16 %1612, ptr %1562, align 2, !tbaa !28
  br label %1613

1613:                                             ; preds = %1611, %1560
  %1614 = icmp eq i64 %1561, 2147483647
  br i1 %1614, label %1559, label %1615, !prof !34, !nosanitize !32

1615:                                             ; preds = %1613
  %1616 = add nuw nsw i64 %1561, 1
  %1617 = trunc i64 %1616 to i32
  %1618 = icmp slt i32 %970, %1617
  br i1 %1618, label %1619, label %1560, !llvm.loop !71

1619:                                             ; preds = %1615, %1477
  call void @llvm.lifetime.end.p0(ptr %6)
  %1620 = load i32, ptr %229, align 8, !tbaa !73
  %1621 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1620, i32 1), !nosanitize !32
  %1622 = extractvalue { i32, i1 } %1621, 1, !nosanitize !32
  br i1 %1622, label %1623, label %1624, !prof !34, !nosanitize !32

1623:                                             ; preds = %1643, %1619
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

1624:                                             ; preds = %1619
  %1625 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %1626 = getelementptr i8, ptr %0, i64 214
  %1627 = load i16, ptr %1626, align 2, !tbaa !28
  %1628 = extractvalue { i32, i1 } %1621, 0, !nosanitize !32
  %1629 = sext i32 %1628 to i64
  %1630 = shl nsw i64 %1629, 2
  %1631 = getelementptr i8, ptr %1625, i64 %1630
  %1632 = getelementptr i8, ptr %1631, i64 2
  store i16 -1, ptr %1632, align 2, !tbaa !28
  %1633 = icmp slt i32 %1620, 0
  br i1 %1633, label %1702, label %1634

1634:                                             ; preds = %1624
  %1635 = zext i16 %1627 to i32
  %1636 = icmp eq i16 %1627, 0
  %1637 = select i1 %1636, i32 138, i32 7
  %1638 = select i1 %1636, i32 3, i32 4
  %1639 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1640 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1641 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1642 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %1643

1643:                                             ; preds = %1696, %1634
  %1644 = phi i32 [ %1638, %1634 ], [ %1700, %1696 ]
  %1645 = phi i32 [ %1637, %1634 ], [ %1699, %1696 ]
  %1646 = phi i32 [ 0, %1634 ], [ %1698, %1696 ]
  %1647 = phi i32 [ %1635, %1634 ], [ %1658, %1696 ]
  %1648 = phi i32 [ 0, %1634 ], [ %1651, %1696 ]
  %1649 = phi i32 [ -1, %1634 ], [ %1697, %1696 ]
  %1650 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1648, i32 1), !nosanitize !32
  %1651 = extractvalue { i32, i1 } %1650, 0, !nosanitize !32
  %1652 = extractvalue { i32, i1 } %1650, 1, !nosanitize !32
  br i1 false, label %1623, label %1653, !prof !34, !nosanitize !32

1653:                                             ; preds = %1643
  %1654 = sext i32 %1651 to i64
  %1655 = shl nsw i64 %1654, 2
  %1656 = getelementptr i8, ptr %1626, i64 %1655
  %1657 = load i16, ptr %1656, align 2, !tbaa !28
  %1658 = zext i16 %1657 to i32
  %1659 = add nsw i32 %1646, 1
  %1660 = icmp slt i32 %1659, %1645
  %1661 = icmp eq i32 %1647, %1658
  %1662 = select i1 %1660, i1 %1661, i1 false
  br i1 %1662, label %1696, label %1663

1663:                                             ; preds = %1653
  %1664 = icmp slt i32 %1659, %1644
  br i1 %1664, label %1665, label %1671

1665:                                             ; preds = %1663
  %1666 = zext nneg i32 %1647 to i64
  %1667 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %1639, i64 0, i64 %1666
  %1668 = load i16, ptr %1667, align 4, !tbaa !28
  %1669 = trunc i32 %1659 to i16
  %1670 = add i16 %1668, %1669
  store i16 %1670, ptr %1667, align 4, !tbaa !28
  br label %1691

1671:                                             ; preds = %1663
  %1672 = icmp eq i32 %1647, 0
  br i1 %1672, label %1683, label %1673

1673:                                             ; preds = %1671
  %1674 = icmp eq i32 %1647, %1649
  br i1 %1674, label %1680, label %1675

1675:                                             ; preds = %1673
  %1676 = zext nneg i32 %1647 to i64
  %1677 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %1639, i64 0, i64 %1676
  %1678 = load i16, ptr %1677, align 4, !tbaa !28
  %1679 = add i16 %1678, 1
  store i16 %1679, ptr %1677, align 4, !tbaa !28
  br label %1680

1680:                                             ; preds = %1675, %1673
  %1681 = load i16, ptr %1640, align 4, !tbaa !28
  %1682 = add i16 %1681, 1
  store i16 %1682, ptr %1640, align 4, !tbaa !28
  br label %1691

1683:                                             ; preds = %1671
  %1684 = icmp slt i32 %1646, 10
  br i1 %1684, label %1685, label %1688

1685:                                             ; preds = %1683
  %1686 = load i16, ptr %1642, align 4, !tbaa !28
  %1687 = add i16 %1686, 1
  store i16 %1687, ptr %1642, align 4, !tbaa !28
  br label %1691

1688:                                             ; preds = %1683
  %1689 = load i16, ptr %1641, align 4, !tbaa !28
  %1690 = add i16 %1689, 1
  store i16 %1690, ptr %1641, align 4, !tbaa !28
  br label %1691

1691:                                             ; preds = %1688, %1685, %1680, %1665
  %1692 = icmp eq i16 %1657, 0
  br i1 %1692, label %1696, label %1693

1693:                                             ; preds = %1691
  %1694 = select i1 %1661, i32 6, i32 7
  %1695 = select i1 %1661, i32 3, i32 4
  br label %1696

1696:                                             ; preds = %1693, %1691, %1653
  %1697 = phi i32 [ %1649, %1653 ], [ %1647, %1691 ], [ %1647, %1693 ]
  %1698 = phi i32 [ %1659, %1653 ], [ 0, %1691 ], [ 0, %1693 ]
  %1699 = phi i32 [ %1645, %1653 ], [ 138, %1691 ], [ %1694, %1693 ]
  %1700 = phi i32 [ %1644, %1653 ], [ 3, %1691 ], [ %1695, %1693 ]
  %1701 = icmp sgt i32 %1651, %1620
  br i1 %1701, label %1702, label %1643, !llvm.loop !74

1702:                                             ; preds = %1696, %1624
  %1703 = load i32, ptr %972, align 8, !tbaa !75
  %1704 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1703, i32 1), !nosanitize !32
  %1705 = extractvalue { i32, i1 } %1704, 1, !nosanitize !32
  br i1 %1705, label %1706, label %1707, !prof !34, !nosanitize !32

1706:                                             ; preds = %1726, %1702
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

1707:                                             ; preds = %1702
  %1708 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %1709 = getelementptr i8, ptr %0, i64 2506
  %1710 = load i16, ptr %1709, align 2, !tbaa !28
  %1711 = extractvalue { i32, i1 } %1704, 0, !nosanitize !32
  %1712 = sext i32 %1711 to i64
  %1713 = shl nsw i64 %1712, 2
  %1714 = getelementptr i8, ptr %1708, i64 %1713
  %1715 = getelementptr i8, ptr %1714, i64 2
  store i16 -1, ptr %1715, align 2, !tbaa !28
  %1716 = icmp slt i32 %1703, 0
  br i1 %1716, label %1785, label %1717

1717:                                             ; preds = %1707
  %1718 = zext i16 %1710 to i32
  %1719 = icmp eq i16 %1710, 0
  %1720 = select i1 %1719, i32 138, i32 7
  %1721 = select i1 %1719, i32 3, i32 4
  %1722 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1723 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1724 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1725 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %1726

1726:                                             ; preds = %1779, %1717
  %1727 = phi i32 [ %1721, %1717 ], [ %1783, %1779 ]
  %1728 = phi i32 [ %1720, %1717 ], [ %1782, %1779 ]
  %1729 = phi i32 [ 0, %1717 ], [ %1781, %1779 ]
  %1730 = phi i32 [ %1718, %1717 ], [ %1741, %1779 ]
  %1731 = phi i32 [ 0, %1717 ], [ %1734, %1779 ]
  %1732 = phi i32 [ -1, %1717 ], [ %1780, %1779 ]
  %1733 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1731, i32 1), !nosanitize !32
  %1734 = extractvalue { i32, i1 } %1733, 0, !nosanitize !32
  %1735 = extractvalue { i32, i1 } %1733, 1, !nosanitize !32
  br i1 false, label %1706, label %1736, !prof !34, !nosanitize !32

1736:                                             ; preds = %1726
  %1737 = sext i32 %1734 to i64
  %1738 = shl nsw i64 %1737, 2
  %1739 = getelementptr i8, ptr %1709, i64 %1738
  %1740 = load i16, ptr %1739, align 2, !tbaa !28
  %1741 = zext i16 %1740 to i32
  %1742 = add nsw i32 %1729, 1
  %1743 = icmp slt i32 %1742, %1728
  %1744 = icmp eq i32 %1730, %1741
  %1745 = select i1 %1743, i1 %1744, i1 false
  br i1 %1745, label %1779, label %1746

1746:                                             ; preds = %1736
  %1747 = icmp slt i32 %1742, %1727
  br i1 %1747, label %1748, label %1754

1748:                                             ; preds = %1746
  %1749 = zext nneg i32 %1730 to i64
  %1750 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %1722, i64 0, i64 %1749
  %1751 = load i16, ptr %1750, align 4, !tbaa !28
  %1752 = trunc i32 %1742 to i16
  %1753 = add i16 %1751, %1752
  store i16 %1753, ptr %1750, align 4, !tbaa !28
  br label %1774

1754:                                             ; preds = %1746
  %1755 = icmp eq i32 %1730, 0
  br i1 %1755, label %1766, label %1756

1756:                                             ; preds = %1754
  %1757 = icmp eq i32 %1730, %1732
  br i1 %1757, label %1763, label %1758

1758:                                             ; preds = %1756
  %1759 = zext nneg i32 %1730 to i64
  %1760 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %1722, i64 0, i64 %1759
  %1761 = load i16, ptr %1760, align 4, !tbaa !28
  %1762 = add i16 %1761, 1
  store i16 %1762, ptr %1760, align 4, !tbaa !28
  br label %1763

1763:                                             ; preds = %1758, %1756
  %1764 = load i16, ptr %1723, align 4, !tbaa !28
  %1765 = add i16 %1764, 1
  store i16 %1765, ptr %1723, align 4, !tbaa !28
  br label %1774

1766:                                             ; preds = %1754
  %1767 = icmp slt i32 %1729, 10
  br i1 %1767, label %1768, label %1771

1768:                                             ; preds = %1766
  %1769 = load i16, ptr %1725, align 4, !tbaa !28
  %1770 = add i16 %1769, 1
  store i16 %1770, ptr %1725, align 4, !tbaa !28
  br label %1774

1771:                                             ; preds = %1766
  %1772 = load i16, ptr %1724, align 4, !tbaa !28
  %1773 = add i16 %1772, 1
  store i16 %1773, ptr %1724, align 4, !tbaa !28
  br label %1774

1774:                                             ; preds = %1771, %1768, %1763, %1748
  %1775 = icmp eq i16 %1740, 0
  br i1 %1775, label %1779, label %1776

1776:                                             ; preds = %1774
  %1777 = select i1 %1744, i32 6, i32 7
  %1778 = select i1 %1744, i32 3, i32 4
  br label %1779

1779:                                             ; preds = %1776, %1774, %1736
  %1780 = phi i32 [ %1732, %1736 ], [ %1730, %1774 ], [ %1730, %1776 ]
  %1781 = phi i32 [ %1742, %1736 ], [ 0, %1774 ], [ 0, %1776 ]
  %1782 = phi i32 [ %1728, %1736 ], [ 138, %1774 ], [ %1777, %1776 ]
  %1783 = phi i32 [ %1727, %1736 ], [ 3, %1774 ], [ %1778, %1776 ]
  %1784 = icmp sgt i32 %1734, %1703
  br i1 %1784, label %1785, label %1726, !llvm.loop !74

1785:                                             ; preds = %1779, %1707
  %1786 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %1787 = load ptr, ptr %1786, align 8, !tbaa !42
  %1788 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %1789 = load ptr, ptr %1788, align 8, !tbaa !43
  %1790 = load ptr, ptr %1789, align 8, !tbaa !44
  %1791 = getelementptr inbounds nuw i8, ptr %1789, i64 20
  %1792 = load i32, ptr %1791, align 4, !tbaa !47
  store i32 0, ptr %153, align 4, !tbaa !48
  store i32 573, ptr %154, align 8, !tbaa !49
  %1793 = icmp sgt i32 %1792, 0
  br i1 %1793, label %1794, label %1799

1794:                                             ; preds = %1785
  %1795 = zext nneg i32 %1792 to i64
  br label %1805

1796:                                             ; preds = %1824
  %1797 = load i32, ptr %153, align 4, !tbaa !48
  %1798 = icmp slt i32 %1797, 2
  br i1 %1798, label %1799, label %1860

1799:                                             ; preds = %1796, %1785
  %1800 = phi i32 [ %1825, %1796 ], [ -1, %1785 ]
  %1801 = phi i32 [ %1797, %1796 ], [ 0, %1785 ]
  %1802 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1803 = icmp eq ptr %1790, null
  %1804 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1828

1805:                                             ; preds = %1824, %1794
  %1806 = phi i64 [ 0, %1794 ], [ %1826, %1824 ]
  %1807 = phi i32 [ -1, %1794 ], [ %1825, %1824 ]
  %1808 = getelementptr inbounds nuw %struct.ct_data_s, ptr %1787, i64 %1806
  %1809 = load i16, ptr %1808, align 2, !tbaa !28
  %1810 = icmp eq i16 %1809, 0
  br i1 %1810, label %1822, label %1811

1811:                                             ; preds = %1805
  %1812 = load i32, ptr %153, align 4, !tbaa !48
  %1813 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1812, i32 1), !nosanitize !32
  %1814 = extractvalue { i32, i1 } %1813, 1, !nosanitize !32
  br i1 %1814, label %1815, label %1816, !prof !34, !nosanitize !32

.loopexit30:                                      ; preds = %1956, %2205
  br label %1815

1815:                                             ; preds = %.loopexit30, %1811
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

1816:                                             ; preds = %1811
  %1817 = extractvalue { i32, i1 } %1813, 0, !nosanitize !32
  store i32 %1817, ptr %153, align 4, !tbaa !48
  %1818 = sext i32 %1817 to i64
  %1819 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1818
  %1820 = trunc nuw nsw i64 %1806 to i32
  store i32 %1820, ptr %1819, align 4, !tbaa !50
  %1821 = getelementptr inbounds nuw [573 x i8], ptr %231, i64 0, i64 %1806
  store i8 0, ptr %1821, align 1, !tbaa !28
  br label %1824

1822:                                             ; preds = %1805
  %1823 = getelementptr inbounds nuw i8, ptr %1808, i64 2
  store i16 0, ptr %1823, align 2, !tbaa !28
  br label %1824

1824:                                             ; preds = %1822, %1816
  %1825 = phi i32 [ %1820, %1816 ], [ %1807, %1822 ]
  %1826 = add nuw nsw i64 %1806, 1
  %1827 = icmp eq i64 %1826, %1795
  br i1 %1827, label %1796, label %1805, !llvm.loop !51

1828:                                             ; preds = %1857, %1799
  %1829 = phi i32 [ %1801, %1799 ], [ %1858, %1857 ]
  %1830 = phi i32 [ %1800, %1799 ], [ %1833, %1857 ]
  %1831 = icmp slt i32 %1830, 2
  %1832 = add i32 %1830, 1
  %1833 = select i1 %1831, i32 %1832, i32 %1830
  %1834 = add nsw i32 %1829, 1
  %1835 = select i1 %1831, i32 %1832, i32 0
  store i32 %1834, ptr %153, align 4, !tbaa !48
  %1836 = sext i32 %1834 to i64
  %1837 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1836
  store i32 %1835, ptr %1837, align 4, !tbaa !50
  %1838 = sext i32 %1835 to i64
  %1839 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %1838
  store i16 1, ptr %1839, align 2, !tbaa !28
  %1840 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1838
  store i8 0, ptr %1840, align 1, !tbaa !28
  %1841 = load i64, ptr %1802, align 8, !tbaa !52
  %1842 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1841, i64 1), !nosanitize !32
  %1843 = extractvalue { i64, i1 } %1842, 1, !nosanitize !32
  br i1 %1843, label %1844, label %1845, !prof !34, !nosanitize !32

1844:                                             ; preds = %1828
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

1845:                                             ; preds = %1828
  %1846 = extractvalue { i64, i1 } %1842, 0, !nosanitize !32
  store i64 %1846, ptr %1802, align 8, !tbaa !52
  br i1 %1803, label %1857, label %1847

1847:                                             ; preds = %1845
  %1848 = getelementptr inbounds %struct.ct_data_s, ptr %1790, i64 %1838, i32 1
  %1849 = load i16, ptr %1848, align 2, !tbaa !28
  %1850 = zext i16 %1849 to i64
  %1851 = load i64, ptr %1804, align 8, !tbaa !53
  %1852 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1851, i64 %1850), !nosanitize !32
  %1853 = extractvalue { i64, i1 } %1852, 1, !nosanitize !32
  br i1 %1853, label %1854, label %1855, !prof !34, !nosanitize !32

.loopexit29:                                      ; preds = %1949, %1942, %1869, %2118, %2191, %2198
  br label %1854

1854:                                             ; preds = %.loopexit29, %2295, %1847
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

1855:                                             ; preds = %1847
  %1856 = extractvalue { i64, i1 } %1852, 0, !nosanitize !32
  store i64 %1856, ptr %1804, align 8, !tbaa !53
  br label %1857

1857:                                             ; preds = %1855, %1845
  %1858 = load i32, ptr %153, align 4, !tbaa !48
  %1859 = icmp slt i32 %1858, 2
  br i1 %1859, label %1828, label %1860, !llvm.loop !54

1860:                                             ; preds = %1857, %1796
  %1861 = phi i32 [ %1825, %1796 ], [ %1833, %1857 ]
  %1862 = phi i32 [ %1797, %1796 ], [ %1858, %1857 ]
  %1863 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %1861, ptr %1863, align 8, !tbaa !55
  %1864 = lshr i32 %1862, 1
  %1865 = zext nneg i32 %1864 to i64
  br label %2046

1866:                                             ; preds = %2112
  %1867 = load i32, ptr %153, align 4, !tbaa !48
  %1868 = sext i32 %1792 to i64
  %mv.h31 = icmp sge i32 %1867, 0
  %mv.h.fr32 = freeze i1 %mv.h31
  br i1 %mv.h.fr32, label %.mv.ph33.mv.fast, label %.mv.ph33

.mv.ph33.mv.fast:                                 ; preds = %1866
  br label %1869

1869:                                             ; preds = %2041, %.mv.ph33.mv.fast
  %1870 = phi i32 [ %1867, %.mv.ph33.mv.fast ], [ %2044, %2041 ]
  %1871 = phi i64 [ %1868, %.mv.ph33.mv.fast ], [ %1981, %2041 ]
  %1872 = load i32, ptr %236, align 4, !tbaa !50
  %1873 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1870, i32 -1)
  %1874 = extractvalue { i32, i1 } %1873, 1, !nosanitize !32
  br i1 false, label %.loopexit29, label %1875, !prof !34, !nosanitize !32

1875:                                             ; preds = %1869
  %1876 = extractvalue { i32, i1 } %1873, 0, !nosanitize !32
  store i32 %1876, ptr %153, align 4, !tbaa !48
  %1877 = sext i32 %1870 to i64
  %1878 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1877
  %1879 = load i32, ptr %1878, align 4, !tbaa !50
  store i32 %1879, ptr %236, align 4, !tbaa !50
  %1880 = sext i32 %1879 to i64
  %1881 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1880
  %1882 = icmp slt i32 %1876, 2
  br i1 %1882, label %1942, label %1883

1883:                                             ; preds = %1875
  %1884 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %1880
  br label %1885

1885:                                             ; preds = %1933, %1883
  %1886 = phi i32 [ %1876, %1883 ], [ %1937, %1933 ]
  %1887 = phi i32 [ 2, %1883 ], [ %1936, %1933 ]
  %1888 = phi i32 [ 1, %1883 ], [ %1918, %1933 ]
  %1889 = icmp slt i32 %1887, %1886
  br i1 %1889, label %1892, label %1890

1890:                                             ; preds = %1885
  %1891 = sext i32 %1887 to i64
  br label %1916

1892:                                             ; preds = %1885
  %1893 = or disjoint i32 %1887, 1
  %1894 = sext i32 %1893 to i64
  %1895 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1894
  %1896 = load i32, ptr %1895, align 4, !tbaa !50
  %1897 = sext i32 %1896 to i64
  %1898 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %1897
  %1899 = load i16, ptr %1898, align 2, !tbaa !28
  %1900 = sext i32 %1887 to i64
  %1901 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1900
  %1902 = load i32, ptr %1901, align 4, !tbaa !50
  %1903 = sext i32 %1902 to i64
  %1904 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %1903
  %1905 = load i16, ptr %1904, align 2, !tbaa !28
  %1906 = icmp ult i16 %1899, %1905
  br i1 %1906, label %1915, label %1907

1907:                                             ; preds = %1892
  %1908 = icmp eq i16 %1899, %1905
  br i1 %1908, label %1909, label %1916

1909:                                             ; preds = %1907
  %1910 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1897
  %1911 = load i8, ptr %1910, align 1, !tbaa !28
  %1912 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1903
  %1913 = load i8, ptr %1912, align 1, !tbaa !28
  %1914 = icmp ugt i8 %1911, %1913
  br i1 %1914, label %1916, label %1915

1915:                                             ; preds = %1909, %1892
  br label %1916

1916:                                             ; preds = %1915, %1909, %1907, %1890
  %1917 = phi i64 [ %1891, %1890 ], [ %1894, %1915 ], [ %1900, %1909 ], [ %1900, %1907 ]
  %1918 = phi i32 [ %1887, %1890 ], [ %1893, %1915 ], [ %1887, %1909 ], [ %1887, %1907 ]
  %1919 = load i16, ptr %1884, align 2, !tbaa !28
  %1920 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1917
  %1921 = load i32, ptr %1920, align 4, !tbaa !50
  %1922 = sext i32 %1921 to i64
  %1923 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %1922
  %1924 = load i16, ptr %1923, align 2, !tbaa !28
  %1925 = icmp ult i16 %1919, %1924
  br i1 %1925, label %1939, label %1926

1926:                                             ; preds = %1916
  %1927 = icmp eq i16 %1919, %1924
  br i1 %1927, label %1928, label %1933

1928:                                             ; preds = %1926
  %1929 = load i8, ptr %1881, align 1, !tbaa !28
  %1930 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1922
  %1931 = load i8, ptr %1930, align 1, !tbaa !28
  %1932 = icmp ugt i8 %1929, %1931
  br i1 %1932, label %1933, label %1939

1933:                                             ; preds = %1928, %1926
  %1934 = sext i32 %1888 to i64
  %1935 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1934
  store i32 %1921, ptr %1935, align 4, !tbaa !50
  %1936 = shl i32 %1918, 1
  %1937 = load i32, ptr %153, align 4, !tbaa !48
  %1938 = icmp sgt i32 %1936, %1937
  br i1 %1938, label %1939, label %1885, !llvm.loop !56

1939:                                             ; preds = %1933, %1928, %1916
  %1940 = phi i32 [ %1888, %1916 ], [ %1888, %1928 ], [ %1918, %1933 ]
  %1941 = sext i32 %1940 to i64
  br label %1942

1942:                                             ; preds = %1939, %1875
  %1943 = phi i64 [ 1, %1875 ], [ %1941, %1939 ]
  %1944 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1943
  store i32 %1879, ptr %1944, align 4, !tbaa !50
  %1945 = load i32, ptr %236, align 4, !tbaa !50
  %1946 = load i32, ptr %154, align 8, !tbaa !49
  %1947 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1946, i32 -1)
  %1948 = extractvalue { i32, i1 } %1947, 1, !nosanitize !32
  br i1 %1948, label %.loopexit29, label %1949, !prof !34, !nosanitize !32

1949:                                             ; preds = %1942
  %1950 = extractvalue { i32, i1 } %1947, 0, !nosanitize !32
  store i32 %1950, ptr %154, align 8, !tbaa !49
  %1951 = sext i32 %1950 to i64
  %1952 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1951
  store i32 %1872, ptr %1952, align 4, !tbaa !50
  %1953 = load i32, ptr %154, align 8, !tbaa !49
  %1954 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1953, i32 -1)
  %1955 = extractvalue { i32, i1 } %1954, 1, !nosanitize !32
  br i1 %1955, label %.loopexit29, label %1956, !prof !34, !nosanitize !32

1956:                                             ; preds = %1949
  %1957 = extractvalue { i32, i1 } %1954, 0, !nosanitize !32
  store i32 %1957, ptr %154, align 8, !tbaa !49
  %1958 = sext i32 %1957 to i64
  %1959 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1958
  store i32 %1945, ptr %1959, align 4, !tbaa !50
  %1960 = sext i32 %1872 to i64
  %1961 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %1960
  %1962 = load i16, ptr %1961, align 2, !tbaa !28
  %1963 = sext i32 %1945 to i64
  %1964 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %1963
  %1965 = load i16, ptr %1964, align 2, !tbaa !28
  %1966 = add i16 %1965, %1962
  %1967 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %1871
  store i16 %1966, ptr %1967, align 2, !tbaa !28
  %1968 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1960
  %1969 = load i8, ptr %1968, align 1, !tbaa !28
  %1970 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1963
  %1971 = load i8, ptr %1970, align 1, !tbaa !28
  %1972 = tail call i8 @llvm.umax.i8(i8 %1969, i8 %1971)
  %1973 = add i8 %1972, 1
  %1974 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1871
  store i8 %1973, ptr %1974, align 1, !tbaa !28
  %1975 = trunc nsw i64 %1871 to i32
  %1976 = trunc i64 %1871 to i16
  %1977 = getelementptr inbounds nuw i8, ptr %1964, i64 2
  store i16 %1976, ptr %1977, align 2, !tbaa !28
  %1978 = getelementptr inbounds nuw i8, ptr %1961, i64 2
  store i16 %1976, ptr %1978, align 2, !tbaa !28
  %1979 = icmp eq i64 %1871, 2147483647
  br i1 %1979, label %.loopexit30, label %1980, !prof !34, !nosanitize !32

1980:                                             ; preds = %1956
  %1981 = add nsw i64 %1871, 1
  store i32 %1975, ptr %236, align 4, !tbaa !50
  %1982 = load i32, ptr %153, align 4, !tbaa !48
  %1983 = icmp slt i32 %1982, 2
  br i1 %1983, label %2041, label %.preheader.mv.fast

1984:                                             ; preds = %.preheader.mv.fast, %2032
  %1985 = phi i32 [ %2036, %2032 ], [ %1982, %.preheader.mv.fast ]
  %1986 = phi i32 [ %2035, %2032 ], [ 2, %.preheader.mv.fast ]
  %1987 = phi i32 [ %2017, %2032 ], [ 1, %.preheader.mv.fast ]
  %1988 = icmp slt i32 %1986, %1985
  br i1 %1988, label %1991, label %1989

1989:                                             ; preds = %1984
  %1990 = sext i32 %1986 to i64
  br label %2015

1991:                                             ; preds = %1984
  %1992 = or disjoint i32 %1986, 1
  %1993 = sext i32 %1992 to i64
  %1994 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1993
  %1995 = load i32, ptr %1994, align 4, !tbaa !50
  %1996 = sext i32 %1995 to i64
  %1997 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %1996
  %1998 = load i16, ptr %1997, align 2, !tbaa !28
  %1999 = sext i32 %1986 to i64
  %2000 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1999
  %2001 = load i32, ptr %2000, align 4, !tbaa !50
  %2002 = sext i32 %2001 to i64
  %2003 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2002
  %2004 = load i16, ptr %2003, align 2, !tbaa !28
  %2005 = icmp ult i16 %1998, %2004
  br i1 %2005, label %2014, label %2006

2006:                                             ; preds = %1991
  %2007 = icmp eq i16 %1998, %2004
  br i1 %2007, label %2008, label %2015

2008:                                             ; preds = %2006
  %2009 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1996
  %2010 = load i8, ptr %2009, align 1, !tbaa !28
  %2011 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2002
  %2012 = load i8, ptr %2011, align 1, !tbaa !28
  %2013 = icmp ugt i8 %2010, %2012
  br i1 %2013, label %2015, label %2014

2014:                                             ; preds = %2008, %1991
  br label %2015

2015:                                             ; preds = %2014, %2008, %2006, %1989
  %2016 = phi i64 [ %1990, %1989 ], [ %1993, %2014 ], [ %1999, %2008 ], [ %1999, %2006 ]
  %2017 = phi i32 [ %1986, %1989 ], [ %1992, %2014 ], [ %1986, %2008 ], [ %1986, %2006 ]
  %2018 = load i16, ptr %1967, align 2, !tbaa !28
  %2019 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2016
  %2020 = load i32, ptr %2019, align 4, !tbaa !50
  %2021 = sext i32 %2020 to i64
  %2022 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2021
  %2023 = load i16, ptr %2022, align 2, !tbaa !28
  %2024 = icmp ult i16 %2018, %2023
  br i1 %2024, label %2038, label %2025

2025:                                             ; preds = %2015
  %2026 = icmp eq i16 %2018, %2023
  br i1 %2026, label %2027, label %2032

2027:                                             ; preds = %2025
  %2028 = load i8, ptr %1974, align 1, !tbaa !28
  %2029 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2021
  %2030 = load i8, ptr %2029, align 1, !tbaa !28
  %2031 = icmp ugt i8 %2028, %2030
  br i1 %2031, label %2032, label %2038

2032:                                             ; preds = %2027, %2025
  %2033 = sext i32 %1987 to i64
  %2034 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2033
  store i32 %2020, ptr %2034, align 4, !tbaa !50
  %2035 = shl i32 %2017, 1
  %2036 = load i32, ptr %153, align 4, !tbaa !48
  %2037 = icmp sgt i32 %2035, %2036
  br i1 %2037, label %2038, label %1984, !llvm.loop !56

2038:                                             ; preds = %2032, %2027, %2015
  %2039 = phi i32 [ %1987, %2015 ], [ %1987, %2027 ], [ %2017, %2032 ]
  %2040 = sext i32 %2039 to i64
  br label %2041

2041:                                             ; preds = %2038, %1980
  %2042 = phi i64 [ 1, %1980 ], [ %2040, %2038 ]
  %2043 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2042
  store i32 %1975, ptr %2043, align 4, !tbaa !50
  %2044 = load i32, ptr %153, align 4, !tbaa !48
  %2045 = icmp sgt i32 %2044, 1
  br i1 %2045, label %1869, label %2295, !llvm.loop !58

.preheader.mv.fast:                               ; preds = %1980
  br label %1984

.mv.ph33:                                         ; preds = %1866
  br label %2118

2046:                                             ; preds = %2112, %1860
  %2047 = phi i64 [ %1865, %1860 ], [ %2116, %2112 ]
  %2048 = getelementptr inbounds nuw [573 x i32], ptr %230, i64 0, i64 %2047
  %2049 = load i32, ptr %2048, align 4, !tbaa !50
  %2050 = sext i32 %2049 to i64
  %2051 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2050
  %2052 = load i32, ptr %153, align 4, !tbaa !48
  %2053 = trunc i64 %2047 to i32
  %2054 = shl i32 %2053, 1
  %2055 = icmp sgt i32 %2054, %2052
  br i1 %2055, label %2112, label %2056

2056:                                             ; preds = %2046
  %2057 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2050
  br label %2058

2058:                                             ; preds = %2106, %2056
  %2059 = phi i32 [ %2052, %2056 ], [ %2110, %2106 ]
  %2060 = phi i32 [ %2054, %2056 ], [ %2109, %2106 ]
  %2061 = phi i32 [ %2053, %2056 ], [ %2091, %2106 ]
  %2062 = icmp slt i32 %2060, %2059
  br i1 %2062, label %2065, label %2063

2063:                                             ; preds = %2058
  %2064 = sext i32 %2060 to i64
  br label %2089

2065:                                             ; preds = %2058
  %2066 = or disjoint i32 %2060, 1
  %2067 = sext i32 %2066 to i64
  %2068 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2067
  %2069 = load i32, ptr %2068, align 4, !tbaa !50
  %2070 = sext i32 %2069 to i64
  %2071 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2070
  %2072 = load i16, ptr %2071, align 2, !tbaa !28
  %2073 = sext i32 %2060 to i64
  %2074 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2073
  %2075 = load i32, ptr %2074, align 4, !tbaa !50
  %2076 = sext i32 %2075 to i64
  %2077 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2076
  %2078 = load i16, ptr %2077, align 2, !tbaa !28
  %2079 = icmp ult i16 %2072, %2078
  br i1 %2079, label %2088, label %2080

2080:                                             ; preds = %2065
  %2081 = icmp eq i16 %2072, %2078
  br i1 %2081, label %2082, label %2089

2082:                                             ; preds = %2080
  %2083 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2070
  %2084 = load i8, ptr %2083, align 1, !tbaa !28
  %2085 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2076
  %2086 = load i8, ptr %2085, align 1, !tbaa !28
  %2087 = icmp ugt i8 %2084, %2086
  br i1 %2087, label %2089, label %2088

2088:                                             ; preds = %2082, %2065
  br label %2089

2089:                                             ; preds = %2088, %2082, %2080, %2063
  %2090 = phi i64 [ %2064, %2063 ], [ %2067, %2088 ], [ %2073, %2082 ], [ %2073, %2080 ]
  %2091 = phi i32 [ %2060, %2063 ], [ %2066, %2088 ], [ %2060, %2082 ], [ %2060, %2080 ]
  %2092 = load i16, ptr %2057, align 2, !tbaa !28
  %2093 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2090
  %2094 = load i32, ptr %2093, align 4, !tbaa !50
  %2095 = sext i32 %2094 to i64
  %2096 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2095
  %2097 = load i16, ptr %2096, align 2, !tbaa !28
  %2098 = icmp ult i16 %2092, %2097
  br i1 %2098, label %2112, label %2099

2099:                                             ; preds = %2089
  %2100 = icmp eq i16 %2092, %2097
  br i1 %2100, label %2101, label %2106

2101:                                             ; preds = %2099
  %2102 = load i8, ptr %2051, align 1, !tbaa !28
  %2103 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2095
  %2104 = load i8, ptr %2103, align 1, !tbaa !28
  %2105 = icmp ugt i8 %2102, %2104
  br i1 %2105, label %2106, label %2112

2106:                                             ; preds = %2101, %2099
  %2107 = sext i32 %2061 to i64
  %2108 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2107
  store i32 %2094, ptr %2108, align 4, !tbaa !50
  %2109 = shl i32 %2091, 1
  %2110 = load i32, ptr %153, align 4, !tbaa !48
  %2111 = icmp sgt i32 %2109, %2110
  br i1 %2111, label %2112, label %2058, !llvm.loop !56

2112:                                             ; preds = %2106, %2101, %2089, %2046
  %2113 = phi i32 [ %2053, %2046 ], [ %2091, %2106 ], [ %2061, %2101 ], [ %2061, %2089 ]
  %2114 = sext i32 %2113 to i64
  %2115 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2114
  store i32 %2049, ptr %2115, align 4, !tbaa !50
  %2116 = add nsw i64 %2047, -1
  %2117 = icmp sgt i64 %2047, 1
  br i1 %2117, label %2046, label %1866, !llvm.loop !57

2118:                                             ; preds = %2290, %.mv.ph33
  %2119 = phi i32 [ %1867, %.mv.ph33 ], [ %2293, %2290 ]
  %2120 = phi i64 [ %1868, %.mv.ph33 ], [ %2230, %2290 ]
  %2121 = load i32, ptr %236, align 4, !tbaa !50
  %2122 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2119, i32 -1)
  %2123 = extractvalue { i32, i1 } %2122, 1, !nosanitize !32
  br i1 %2123, label %.loopexit29, label %2124, !prof !34, !nosanitize !32

2124:                                             ; preds = %2118
  %2125 = extractvalue { i32, i1 } %2122, 0, !nosanitize !32
  store i32 %2125, ptr %153, align 4, !tbaa !48
  %2126 = sext i32 %2119 to i64
  %2127 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2126
  %2128 = load i32, ptr %2127, align 4, !tbaa !50
  store i32 %2128, ptr %236, align 4, !tbaa !50
  %2129 = sext i32 %2128 to i64
  %2130 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2129
  %2131 = icmp slt i32 %2125, 2
  br i1 %2131, label %2191, label %2132

2132:                                             ; preds = %2124
  %2133 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2129
  br label %2134

2134:                                             ; preds = %2182, %2132
  %2135 = phi i32 [ %2125, %2132 ], [ %2186, %2182 ]
  %2136 = phi i32 [ 2, %2132 ], [ %2185, %2182 ]
  %2137 = phi i32 [ 1, %2132 ], [ %2167, %2182 ]
  %2138 = icmp slt i32 %2136, %2135
  br i1 %2138, label %2141, label %2139

2139:                                             ; preds = %2134
  %2140 = sext i32 %2136 to i64
  br label %2165

2141:                                             ; preds = %2134
  %2142 = or disjoint i32 %2136, 1
  %2143 = sext i32 %2142 to i64
  %2144 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2143
  %2145 = load i32, ptr %2144, align 4, !tbaa !50
  %2146 = sext i32 %2145 to i64
  %2147 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2146
  %2148 = load i16, ptr %2147, align 2, !tbaa !28
  %2149 = sext i32 %2136 to i64
  %2150 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2149
  %2151 = load i32, ptr %2150, align 4, !tbaa !50
  %2152 = sext i32 %2151 to i64
  %2153 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2152
  %2154 = load i16, ptr %2153, align 2, !tbaa !28
  %2155 = icmp ult i16 %2148, %2154
  br i1 %2155, label %2164, label %2156

2156:                                             ; preds = %2141
  %2157 = icmp eq i16 %2148, %2154
  br i1 %2157, label %2158, label %2165

2158:                                             ; preds = %2156
  %2159 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2146
  %2160 = load i8, ptr %2159, align 1, !tbaa !28
  %2161 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2152
  %2162 = load i8, ptr %2161, align 1, !tbaa !28
  %2163 = icmp ugt i8 %2160, %2162
  br i1 %2163, label %2165, label %2164

2164:                                             ; preds = %2158, %2141
  br label %2165

2165:                                             ; preds = %2164, %2158, %2156, %2139
  %2166 = phi i64 [ %2140, %2139 ], [ %2143, %2164 ], [ %2149, %2158 ], [ %2149, %2156 ]
  %2167 = phi i32 [ %2136, %2139 ], [ %2142, %2164 ], [ %2136, %2158 ], [ %2136, %2156 ]
  %2168 = load i16, ptr %2133, align 2, !tbaa !28
  %2169 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2166
  %2170 = load i32, ptr %2169, align 4, !tbaa !50
  %2171 = sext i32 %2170 to i64
  %2172 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2171
  %2173 = load i16, ptr %2172, align 2, !tbaa !28
  %2174 = icmp ult i16 %2168, %2173
  br i1 %2174, label %2188, label %2175

2175:                                             ; preds = %2165
  %2176 = icmp eq i16 %2168, %2173
  br i1 %2176, label %2177, label %2182

2177:                                             ; preds = %2175
  %2178 = load i8, ptr %2130, align 1, !tbaa !28
  %2179 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2171
  %2180 = load i8, ptr %2179, align 1, !tbaa !28
  %2181 = icmp ugt i8 %2178, %2180
  br i1 %2181, label %2182, label %2188

2182:                                             ; preds = %2177, %2175
  %2183 = sext i32 %2137 to i64
  %2184 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2183
  store i32 %2170, ptr %2184, align 4, !tbaa !50
  %2185 = shl i32 %2167, 1
  %2186 = load i32, ptr %153, align 4, !tbaa !48
  %2187 = icmp sgt i32 %2185, %2186
  br i1 %2187, label %2188, label %2134, !llvm.loop !56

2188:                                             ; preds = %2182, %2177, %2165
  %2189 = phi i32 [ %2137, %2165 ], [ %2137, %2177 ], [ %2167, %2182 ]
  %2190 = sext i32 %2189 to i64
  br label %2191

2191:                                             ; preds = %2188, %2124
  %2192 = phi i64 [ 1, %2124 ], [ %2190, %2188 ]
  %2193 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2192
  store i32 %2128, ptr %2193, align 4, !tbaa !50
  %2194 = load i32, ptr %236, align 4, !tbaa !50
  %2195 = load i32, ptr %154, align 8, !tbaa !49
  %2196 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2195, i32 -1)
  %2197 = extractvalue { i32, i1 } %2196, 1, !nosanitize !32
  br i1 %2197, label %.loopexit29, label %2198, !prof !34, !nosanitize !32

2198:                                             ; preds = %2191
  %2199 = extractvalue { i32, i1 } %2196, 0, !nosanitize !32
  store i32 %2199, ptr %154, align 8, !tbaa !49
  %2200 = sext i32 %2199 to i64
  %2201 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2200
  store i32 %2121, ptr %2201, align 4, !tbaa !50
  %2202 = load i32, ptr %154, align 8, !tbaa !49
  %2203 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2202, i32 -1)
  %2204 = extractvalue { i32, i1 } %2203, 1, !nosanitize !32
  br i1 %2204, label %.loopexit29, label %2205, !prof !34, !nosanitize !32

2205:                                             ; preds = %2198
  %2206 = extractvalue { i32, i1 } %2203, 0, !nosanitize !32
  store i32 %2206, ptr %154, align 8, !tbaa !49
  %2207 = sext i32 %2206 to i64
  %2208 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2207
  store i32 %2194, ptr %2208, align 4, !tbaa !50
  %2209 = sext i32 %2121 to i64
  %2210 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2209
  %2211 = load i16, ptr %2210, align 2, !tbaa !28
  %2212 = sext i32 %2194 to i64
  %2213 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2212
  %2214 = load i16, ptr %2213, align 2, !tbaa !28
  %2215 = add i16 %2214, %2211
  %2216 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2120
  store i16 %2215, ptr %2216, align 2, !tbaa !28
  %2217 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2209
  %2218 = load i8, ptr %2217, align 1, !tbaa !28
  %2219 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2212
  %2220 = load i8, ptr %2219, align 1, !tbaa !28
  %2221 = tail call i8 @llvm.umax.i8(i8 %2218, i8 %2220)
  %2222 = add i8 %2221, 1
  %2223 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2120
  store i8 %2222, ptr %2223, align 1, !tbaa !28
  %2224 = trunc nsw i64 %2120 to i32
  %2225 = trunc i64 %2120 to i16
  %2226 = getelementptr inbounds nuw i8, ptr %2213, i64 2
  store i16 %2225, ptr %2226, align 2, !tbaa !28
  %2227 = getelementptr inbounds nuw i8, ptr %2210, i64 2
  store i16 %2225, ptr %2227, align 2, !tbaa !28
  %2228 = icmp eq i64 %2120, 2147483647
  br i1 %2228, label %.loopexit30, label %2229, !prof !34, !nosanitize !32

2229:                                             ; preds = %2205
  %2230 = add nsw i64 %2120, 1
  store i32 %2224, ptr %236, align 4, !tbaa !50
  %2231 = load i32, ptr %153, align 4, !tbaa !48
  %2232 = icmp slt i32 %2231, 2
  br i1 %2232, label %2290, label %.preheader

.preheader:                                       ; preds = %2229
  br label %2233

2233:                                             ; preds = %.preheader, %2281
  %2234 = phi i32 [ %2285, %2281 ], [ %2231, %.preheader ]
  %2235 = phi i32 [ %2284, %2281 ], [ 2, %.preheader ]
  %2236 = phi i32 [ %2266, %2281 ], [ 1, %.preheader ]
  %2237 = icmp slt i32 %2235, %2234
  br i1 %2237, label %2240, label %2238

2238:                                             ; preds = %2233
  %2239 = sext i32 %2235 to i64
  br label %2264

2240:                                             ; preds = %2233
  %2241 = or disjoint i32 %2235, 1
  %2242 = sext i32 %2241 to i64
  %2243 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2242
  %2244 = load i32, ptr %2243, align 4, !tbaa !50
  %2245 = sext i32 %2244 to i64
  %2246 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2245
  %2247 = load i16, ptr %2246, align 2, !tbaa !28
  %2248 = sext i32 %2235 to i64
  %2249 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2248
  %2250 = load i32, ptr %2249, align 4, !tbaa !50
  %2251 = sext i32 %2250 to i64
  %2252 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2251
  %2253 = load i16, ptr %2252, align 2, !tbaa !28
  %2254 = icmp ult i16 %2247, %2253
  br i1 %2254, label %2263, label %2255

2255:                                             ; preds = %2240
  %2256 = icmp eq i16 %2247, %2253
  br i1 %2256, label %2257, label %2264

2257:                                             ; preds = %2255
  %2258 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2245
  %2259 = load i8, ptr %2258, align 1, !tbaa !28
  %2260 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2251
  %2261 = load i8, ptr %2260, align 1, !tbaa !28
  %2262 = icmp ugt i8 %2259, %2261
  br i1 %2262, label %2264, label %2263

2263:                                             ; preds = %2257, %2240
  br label %2264

2264:                                             ; preds = %2263, %2257, %2255, %2238
  %2265 = phi i64 [ %2239, %2238 ], [ %2242, %2263 ], [ %2248, %2257 ], [ %2248, %2255 ]
  %2266 = phi i32 [ %2235, %2238 ], [ %2241, %2263 ], [ %2235, %2257 ], [ %2235, %2255 ]
  %2267 = load i16, ptr %2216, align 2, !tbaa !28
  %2268 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2265
  %2269 = load i32, ptr %2268, align 4, !tbaa !50
  %2270 = sext i32 %2269 to i64
  %2271 = getelementptr inbounds %struct.ct_data_s, ptr %1787, i64 %2270
  %2272 = load i16, ptr %2271, align 2, !tbaa !28
  %2273 = icmp ult i16 %2267, %2272
  br i1 %2273, label %2287, label %2274

2274:                                             ; preds = %2264
  %2275 = icmp eq i16 %2267, %2272
  br i1 %2275, label %2276, label %2281

2276:                                             ; preds = %2274
  %2277 = load i8, ptr %2223, align 1, !tbaa !28
  %2278 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2270
  %2279 = load i8, ptr %2278, align 1, !tbaa !28
  %2280 = icmp ugt i8 %2277, %2279
  br i1 %2280, label %2281, label %2287

2281:                                             ; preds = %2276, %2274
  %2282 = sext i32 %2236 to i64
  %2283 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2282
  store i32 %2269, ptr %2283, align 4, !tbaa !50
  %2284 = shl i32 %2266, 1
  %2285 = load i32, ptr %153, align 4, !tbaa !48
  %2286 = icmp sgt i32 %2284, %2285
  br i1 %2286, label %2287, label %2233, !llvm.loop !56

2287:                                             ; preds = %2281, %2276, %2264
  %2288 = phi i32 [ %2236, %2264 ], [ %2236, %2276 ], [ %2266, %2281 ]
  %2289 = sext i32 %2288 to i64
  br label %2290

2290:                                             ; preds = %2287, %2229
  %2291 = phi i64 [ 1, %2229 ], [ %2289, %2287 ]
  %2292 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2291
  store i32 %2224, ptr %2292, align 4, !tbaa !50
  %2293 = load i32, ptr %153, align 4, !tbaa !48
  %2294 = icmp sgt i32 %2293, 1
  br i1 %2294, label %2118, label %2295, !llvm.loop !58

2295:                                             ; preds = %2041, %2290
  %2296 = load i32, ptr %154, align 8, !tbaa !49
  %2297 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2296, i32 -1)
  %2298 = extractvalue { i32, i1 } %2297, 1, !nosanitize !32
  br i1 %2298, label %1854, label %2299, !prof !34, !nosanitize !32

2299:                                             ; preds = %2295
  %2300 = extractvalue { i32, i1 } %2297, 0, !nosanitize !32
  %2301 = load i32, ptr %236, align 4, !tbaa !50
  store i32 %2300, ptr %154, align 8, !tbaa !49
  %2302 = sext i32 %2300 to i64
  %2303 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2302
  store i32 %2301, ptr %2303, align 4, !tbaa !50
  %2304 = load ptr, ptr %1786, align 8, !tbaa !42
  %2305 = load i32, ptr %1863, align 8, !tbaa !55
  %2306 = load ptr, ptr %1788, align 8, !tbaa !43
  %2307 = load ptr, ptr %2306, align 8, !tbaa !44
  %2308 = getelementptr inbounds nuw i8, ptr %2306, i64 8
  %2309 = load ptr, ptr %2308, align 8, !tbaa !59
  %2310 = getelementptr inbounds nuw i8, ptr %2306, i64 16
  %2311 = load i32, ptr %2310, align 8, !tbaa !60
  %2312 = getelementptr inbounds nuw i8, ptr %2306, i64 24
  %2313 = load i32, ptr %2312, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %506, i8 0, i64 32, i1 false), !tbaa !62
  %2314 = load i32, ptr %154, align 8, !tbaa !49
  %2315 = sext i32 %2314 to i64
  %2316 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2315
  %2317 = load i32, ptr %2316, align 4, !tbaa !50
  %2318 = sext i32 %2317 to i64
  %2319 = getelementptr inbounds %struct.ct_data_s, ptr %2304, i64 %2318, i32 1
  store i16 0, ptr %2319, align 2, !tbaa !28
  %2320 = load i32, ptr %154, align 8, !tbaa !49
  %2321 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2320, i32 1), !nosanitize !32
  %2322 = extractvalue { i32, i1 } %2321, 1, !nosanitize !32
  br i1 %2322, label %2323, label %2324, !prof !34, !nosanitize !32

2323:                                             ; preds = %2372, %2347, %2299
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

2324:                                             ; preds = %2299
  %2325 = extractvalue { i32, i1 } %2321, 0
  %2326 = icmp slt i32 %2325, 573
  br i1 %2326, label %2327, label %2545

2327:                                             ; preds = %2324
  %2328 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2329 = icmp eq ptr %2307, null
  %2330 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2331 = sext i32 %2325 to i64
  br label %2332

2332:                                             ; preds = %2404, %2327
  %2333 = phi i64 [ %2331, %2327 ], [ %2405, %2404 ]
  %2334 = phi i32 [ 0, %2327 ], [ %2354, %2404 ]
  %2335 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2333
  %2336 = load i32, ptr %2335, align 4, !tbaa !50
  %2337 = sext i32 %2336 to i64
  %2338 = getelementptr inbounds %struct.ct_data_s, ptr %2304, i64 %2337
  %2339 = getelementptr inbounds nuw i8, ptr %2338, i64 2
  %2340 = load i16, ptr %2339, align 2, !tbaa !28
  %2341 = zext i16 %2340 to i64
  %2342 = getelementptr inbounds nuw %struct.ct_data_s, ptr %2304, i64 %2341, i32 1
  %2343 = load i16, ptr %2342, align 2, !tbaa !28
  %2344 = zext i16 %2343 to i32
  %2345 = add nuw nsw i32 %2344, 1
  %2346 = icmp sgt i32 %2313, %2344
  br i1 %2346, label %2352, label %2347

2347:                                             ; preds = %2332
  %2348 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2334, i32 1), !nosanitize !32
  %2349 = extractvalue { i32, i1 } %2348, 1, !nosanitize !32
  br i1 %2349, label %2323, label %2350, !prof !34, !nosanitize !32

2350:                                             ; preds = %2347
  %2351 = extractvalue { i32, i1 } %2348, 0, !nosanitize !32
  br label %2352

2352:                                             ; preds = %2350, %2332
  %2353 = phi i32 [ %2313, %2350 ], [ %2345, %2332 ]
  %2354 = phi i32 [ %2351, %2350 ], [ %2334, %2332 ]
  %2355 = trunc i32 %2353 to i16
  store i16 %2355, ptr %2339, align 2, !tbaa !28
  %2356 = icmp sgt i32 %2336, %2305
  br i1 %2356, label %2404, label %2357

2357:                                             ; preds = %2352
  %2358 = sext i32 %2353 to i64
  %2359 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %2358
  %2360 = load i16, ptr %2359, align 2, !tbaa !62
  %2361 = add i16 %2360, 1
  store i16 %2361, ptr %2359, align 2, !tbaa !62
  %2362 = icmp slt i32 %2336, %2311
  br i1 %2362, label %2372, label %2363

2363:                                             ; preds = %2357
  %2364 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2336, i32 %2311), !nosanitize !32
  %2365 = extractvalue { i32, i1 } %2364, 1, !nosanitize !32
  br i1 %2365, label %2366, label %2367, !prof !34, !nosanitize !32

.loopexit18:                                      ; preds = %2459, %2502
  br label %2366

2366:                                             ; preds = %.loopexit18, %2432, %2424, %2410, %2363
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

2367:                                             ; preds = %2363
  %2368 = extractvalue { i32, i1 } %2364, 0, !nosanitize !32
  %2369 = sext i32 %2368 to i64
  %2370 = getelementptr inbounds i32, ptr %2309, i64 %2369
  %2371 = load i32, ptr %2370, align 4, !tbaa !50
  br label %2372

2372:                                             ; preds = %2367, %2357
  %2373 = phi i32 [ %2371, %2367 ], [ 0, %2357 ]
  %2374 = load i16, ptr %2338, align 2, !tbaa !28
  %2375 = zext i16 %2374 to i64
  %2376 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2353, i32 %2373), !nosanitize !32
  %2377 = extractvalue { i32, i1 } %2376, 1, !nosanitize !32
  br i1 %2377, label %2323, label %2378, !prof !34, !nosanitize !32

2378:                                             ; preds = %2372
  %2379 = extractvalue { i32, i1 } %2376, 0, !nosanitize !32
  %2380 = zext i32 %2379 to i64
  %2381 = mul nuw nsw i64 %2380, %2375
  %2382 = load i64, ptr %2328, align 8, !tbaa !52
  %2383 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2382, i64 %2381), !nosanitize !32
  %2384 = extractvalue { i64, i1 } %2383, 1, !nosanitize !32
  br i1 %2384, label %2385, label %2386, !prof !34, !nosanitize !32

2385:                                             ; preds = %2388, %2378
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2386:                                             ; preds = %2378
  %2387 = extractvalue { i64, i1 } %2383, 0, !nosanitize !32
  store i64 %2387, ptr %2328, align 8, !tbaa !52
  br i1 %2329, label %2404, label %2388

2388:                                             ; preds = %2386
  %2389 = getelementptr inbounds %struct.ct_data_s, ptr %2307, i64 %2337, i32 1
  %2390 = load i16, ptr %2389, align 2, !tbaa !28
  %2391 = zext i16 %2390 to i32
  %2392 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2391, i32 %2373), !nosanitize !32
  %2393 = extractvalue { i32, i1 } %2392, 1, !nosanitize !32
  br i1 %2393, label %2385, label %2394, !prof !34, !nosanitize !32

2394:                                             ; preds = %2388
  %2395 = extractvalue { i32, i1 } %2392, 0, !nosanitize !32
  %2396 = zext i32 %2395 to i64
  %2397 = mul nuw nsw i64 %2396, %2375
  %2398 = load i64, ptr %2330, align 8, !tbaa !53
  %2399 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2398, i64 %2397), !nosanitize !32
  %2400 = extractvalue { i64, i1 } %2399, 1, !nosanitize !32
  br i1 %2400, label %2401, label %2402, !prof !34, !nosanitize !32

2401:                                             ; preds = %2427, %2394
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2402:                                             ; preds = %2394
  %2403 = extractvalue { i64, i1 } %2399, 0, !nosanitize !32
  store i64 %2403, ptr %2330, align 8, !tbaa !53
  br label %2404

2404:                                             ; preds = %2402, %2386, %2352
  %2405 = add nsw i64 %2333, 1
  %2406 = and i64 %2405, 4294967295
  %2407 = icmp eq i64 %2406, 573
  br i1 %2407, label %2408, label %2332, !llvm.loop !63

2408:                                             ; preds = %2404
  %2409 = icmp eq i32 %2354, 0
  br i1 %2409, label %2545, label %2410

2410:                                             ; preds = %2408
  %2411 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2313, i32 -1)
  %2412 = extractvalue { i32, i1 } %2411, 1, !nosanitize !32
  %2413 = sext i32 %2313 to i64
  %2414 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %2413
  br i1 %2412, label %2366, label %2415, !prof !34, !nosanitize !32

2415:                                             ; preds = %2442, %2410
  %2416 = phi i32 [ %2443, %2442 ], [ %2354, %2410 ]
  br label %2417

2417:                                             ; preds = %2424, %2415
  %2418 = phi { i32, i1 } [ %2425, %2424 ], [ %2411, %2415 ]
  %2419 = extractvalue { i32, i1 } %2418, 0
  %2420 = sext i32 %2419 to i64
  %2421 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %2420
  %2422 = load i16, ptr %2421, align 2, !tbaa !62
  %2423 = icmp eq i16 %2422, 0
  br i1 %2423, label %2424, label %2427

2424:                                             ; preds = %2417
  %2425 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2419, i32 -1)
  %2426 = extractvalue { i32, i1 } %2425, 1, !nosanitize !32
  br i1 %2426, label %2366, label %2417, !prof !34, !llvm.loop !64, !nosanitize !32

2427:                                             ; preds = %2417
  %2428 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %2420
  %2429 = add i16 %2422, -1
  store i16 %2429, ptr %2428, align 2, !tbaa !62
  %2430 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2419, i32 1), !nosanitize !32
  %2431 = extractvalue { i32, i1 } %2430, 1, !nosanitize !32
  br i1 %2431, label %2401, label %2432, !prof !34, !nosanitize !32

2432:                                             ; preds = %2427
  %2433 = extractvalue { i32, i1 } %2430, 0, !nosanitize !32
  %2434 = sext i32 %2433 to i64
  %2435 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %2434
  %2436 = load i16, ptr %2435, align 2, !tbaa !62
  %2437 = add i16 %2436, 2
  store i16 %2437, ptr %2435, align 2, !tbaa !62
  %2438 = load i16, ptr %2414, align 2, !tbaa !62
  %2439 = add i16 %2438, -1
  store i16 %2439, ptr %2414, align 2, !tbaa !62
  %2440 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2416, i32 -2)
  %2441 = extractvalue { i32, i1 } %2440, 1, !nosanitize !32
  br i1 %2441, label %2366, label %2442, !prof !34, !nosanitize !32

2442:                                             ; preds = %2432
  %2443 = extractvalue { i32, i1 } %2440, 0, !nosanitize !32
  %2444 = icmp sgt i32 %2443, 0
  br i1 %2444, label %2415, label %2445, !llvm.loop !65

2445:                                             ; preds = %2442
  %2446 = icmp eq i32 %2313, 0
  br i1 %2446, label %2545, label %2447

2447:                                             ; preds = %2541, %2445
  %2448 = phi i64 [ %2542, %2541 ], [ %2413, %2445 ]
  %2449 = phi i32 [ %2496, %2541 ], [ 573, %2445 ]
  %2450 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %2448
  %2451 = load i16, ptr %2450, align 2, !tbaa !62
  %2452 = icmp eq i16 %2451, 0
  br i1 %2452, label %2495, label %2453

2453:                                             ; preds = %2447
  %2454 = zext i16 %2451 to i32
  %2455 = trunc i64 %2448 to i16
  %mv.h26 = icmp sge i64 %2448, 0
  %mv.h.fr27 = freeze i1 %mv.h26
  br i1 %mv.h.fr27, label %.mv.ph28.mv.fast, label %.mv.ph28

.mv.ph28.mv.fast:                                 ; preds = %2453
  br label %2456

2456:                                             ; preds = %2492, %.mv.ph28.mv.fast
  %2457 = phi i32 [ %2449, %.mv.ph28.mv.fast ], [ %.lcssa22.mv.fast, %2492 ]
  %2458 = phi i32 [ %2454, %.mv.ph28.mv.fast ], [ %2493, %2492 ]
  br label %2459

2459:                                             ; preds = %2463, %2456
  %2460 = phi i32 [ %2464, %2463 ], [ %2457, %2456 ]
  %2461 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2460, i32 -1)
  %2462 = extractvalue { i32, i1 } %2461, 1, !nosanitize !32
  br i1 %2462, label %.loopexit18, label %2463, !prof !34, !nosanitize !32

2463:                                             ; preds = %2459
  %2464 = extractvalue { i32, i1 } %2461, 0, !nosanitize !32
  %2465 = sext i32 %2464 to i64
  %2466 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2465
  %2467 = load i32, ptr %2466, align 4, !tbaa !50
  %2468 = icmp sgt i32 %2467, %2305
  br i1 %2468, label %2459, label %2469, !llvm.loop !66

2469:                                             ; preds = %2463
  %.lcssa22.mv.fast = phi i32 [ %2464, %2463 ]
  %.lcssa21.mv.fast = phi i32 [ %2467, %2463 ]
  %2470 = sext i32 %.lcssa21.mv.fast to i64
  %2471 = getelementptr inbounds %struct.ct_data_s, ptr %2304, i64 %2470
  %2472 = getelementptr inbounds nuw i8, ptr %2471, i64 2
  %2473 = load i16, ptr %2472, align 2, !tbaa !28
  %2474 = zext i16 %2473 to i64
  %2475 = icmp eq i64 %2448, %2474
  br i1 %2475, label %2492, label %2476

2476:                                             ; preds = %2469
  %2477 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2448, i64 %2474), !nosanitize !32
  %2478 = extractvalue { i64, i1 } %2477, 1, !nosanitize !32
  br i1 %2478, label %.loopexit19, label %2479, !prof !34, !nosanitize !32

2479:                                             ; preds = %2476
  %2480 = extractvalue { i64, i1 } %2477, 0, !nosanitize !32
  %2481 = load i16, ptr %2471, align 2, !tbaa !28
  %2482 = zext i16 %2481 to i64
  %2483 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2480, i64 %2482), !nosanitize !32
  %2484 = extractvalue { i64, i1 } %2483, 1, !nosanitize !32
  br i1 false, label %2529, label %2485, !prof !34, !nosanitize !32

2485:                                             ; preds = %2479
  %2486 = extractvalue { i64, i1 } %2483, 0, !nosanitize !32
  %2487 = load i64, ptr %2328, align 8, !tbaa !52
  %2488 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2487, i64 %2486), !nosanitize !32
  %2489 = extractvalue { i64, i1 } %2488, 1, !nosanitize !32
  br i1 %2489, label %2535, label %2490, !prof !34, !nosanitize !32

2490:                                             ; preds = %2485
  %2491 = extractvalue { i64, i1 } %2488, 0, !nosanitize !32
  store i64 %2491, ptr %2328, align 8, !tbaa !52
  store i16 %2455, ptr %2472, align 2, !tbaa !28
  br label %2492

2492:                                             ; preds = %2490, %2469
  %2493 = add nsw i32 %2458, -1
  %2494 = icmp eq i32 %2493, 0
  br i1 %2494, label %.loopexit20, label %2456, !llvm.loop !66

.mv.ph28:                                         ; preds = %2453
  br label %2499

.loopexit20:                                      ; preds = %2492, %2538
  %.lcssa22.lcssa25 = phi i32 [ %.lcssa22, %2538 ], [ %.lcssa22.mv.fast, %2492 ]
  br label %2495

2495:                                             ; preds = %.loopexit20, %2447
  %2496 = phi i32 [ %2449, %2447 ], [ %.lcssa22.lcssa25, %.loopexit20 ]
  %2497 = and i64 %2448, 4294967295
  %2498 = icmp eq i64 %2497, 2147483648
  br i1 %2498, label %2522, label %2541, !prof !34, !nosanitize !32

2499:                                             ; preds = %2538, %.mv.ph28
  %2500 = phi i32 [ %2449, %.mv.ph28 ], [ %.lcssa22, %2538 ]
  %2501 = phi i32 [ %2454, %.mv.ph28 ], [ %2539, %2538 ]
  br label %2502

2502:                                             ; preds = %2506, %2499
  %2503 = phi i32 [ %2507, %2506 ], [ %2500, %2499 ]
  %2504 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2503, i32 -1)
  %2505 = extractvalue { i32, i1 } %2504, 1, !nosanitize !32
  br i1 %2505, label %.loopexit18, label %2506, !prof !34, !nosanitize !32

2506:                                             ; preds = %2502
  %2507 = extractvalue { i32, i1 } %2504, 0, !nosanitize !32
  %2508 = sext i32 %2507 to i64
  %2509 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2508
  %2510 = load i32, ptr %2509, align 4, !tbaa !50
  %2511 = icmp sgt i32 %2510, %2305
  br i1 %2511, label %2502, label %2512, !llvm.loop !66

2512:                                             ; preds = %2506
  %.lcssa22 = phi i32 [ %2507, %2506 ]
  %.lcssa21 = phi i32 [ %2510, %2506 ]
  %2513 = sext i32 %.lcssa21 to i64
  %2514 = getelementptr inbounds %struct.ct_data_s, ptr %2304, i64 %2513
  %2515 = getelementptr inbounds nuw i8, ptr %2514, i64 2
  %2516 = load i16, ptr %2515, align 2, !tbaa !28
  %2517 = zext i16 %2516 to i64
  %2518 = icmp eq i64 %2448, %2517
  br i1 %2518, label %2538, label %2519

2519:                                             ; preds = %2512
  %2520 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2448, i64 %2517), !nosanitize !32
  %2521 = extractvalue { i64, i1 } %2520, 1, !nosanitize !32
  br i1 %2521, label %.loopexit19, label %2523, !prof !34, !nosanitize !32

.loopexit19:                                      ; preds = %2476, %2519
  br label %2522

2522:                                             ; preds = %.loopexit19, %2495
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

2523:                                             ; preds = %2519
  %2524 = extractvalue { i64, i1 } %2520, 0, !nosanitize !32
  %2525 = load i16, ptr %2514, align 2, !tbaa !28
  %2526 = zext i16 %2525 to i64
  %2527 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2524, i64 %2526), !nosanitize !32
  %2528 = extractvalue { i64, i1 } %2527, 1, !nosanitize !32
  br i1 %2528, label %2529, label %2530, !prof !34, !nosanitize !32

2529:                                             ; preds = %2479, %2523
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !32
  unreachable, !nosanitize !32

2530:                                             ; preds = %2523
  %2531 = extractvalue { i64, i1 } %2527, 0, !nosanitize !32
  %2532 = load i64, ptr %2328, align 8, !tbaa !52
  %2533 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2532, i64 %2531), !nosanitize !32
  %2534 = extractvalue { i64, i1 } %2533, 1, !nosanitize !32
  br i1 %2534, label %2535, label %2536, !prof !34, !nosanitize !32

2535:                                             ; preds = %2485, %2530
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2536:                                             ; preds = %2530
  %2537 = extractvalue { i64, i1 } %2533, 0, !nosanitize !32
  store i64 %2537, ptr %2328, align 8, !tbaa !52
  store i16 %2455, ptr %2515, align 2, !tbaa !28
  br label %2538

2538:                                             ; preds = %2536, %2512
  %2539 = add nsw i32 %2501, -1
  %2540 = icmp eq i32 %2539, 0
  br i1 %2540, label %.loopexit20, label %2499, !llvm.loop !66

2541:                                             ; preds = %2495
  %2542 = add nsw i64 %2448, -1
  %2543 = and i64 %2542, 4294967295
  %2544 = icmp eq i64 %2543, 0
  br i1 %2544, label %2545, label %2447, !llvm.loop !67

2545:                                             ; preds = %2541, %2445, %2408, %2324
  call void @llvm.lifetime.start.p0(ptr %5)
  %2546 = load i16, ptr %506, align 2, !tbaa !62
  %2547 = zext i16 %2546 to i32
  %2548 = shl nuw nsw i32 %2547, 1
  %2549 = trunc i32 %2548 to i16
  %2550 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %2549, ptr %2550, align 2, !tbaa !62
  %2551 = load i16, ptr %744, align 2, !tbaa !62
  %2552 = zext i16 %2551 to i32
  %2553 = add nuw nsw i32 %2548, %2552
  %2554 = shl nuw nsw i32 %2553, 1
  %2555 = trunc i32 %2554 to i16
  %2556 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2555, ptr %2556, align 4, !tbaa !62
  %2557 = load i16, ptr %751, align 2, !tbaa !62
  %2558 = zext i16 %2557 to i32
  %2559 = add nuw nsw i32 %2554, %2558
  %2560 = shl nuw nsw i32 %2559, 1
  %2561 = trunc i32 %2560 to i16
  %2562 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2561, ptr %2562, align 2, !tbaa !62
  %2563 = load i16, ptr %758, align 2, !tbaa !62
  %2564 = zext i16 %2563 to i32
  %2565 = add nuw nsw i32 %2560, %2564
  %2566 = shl nuw nsw i32 %2565, 1
  %2567 = trunc i32 %2566 to i16
  %2568 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %2567, ptr %2568, align 8, !tbaa !62
  %2569 = load i16, ptr %765, align 2, !tbaa !62
  %2570 = zext i16 %2569 to i32
  %2571 = add nuw nsw i32 %2566, %2570
  %2572 = shl nuw nsw i32 %2571, 1
  %2573 = trunc i32 %2572 to i16
  %2574 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %2573, ptr %2574, align 2, !tbaa !62
  %2575 = load i16, ptr %772, align 2, !tbaa !62
  %2576 = zext i16 %2575 to i32
  %2577 = add nuw nsw i32 %2572, %2576
  %2578 = shl nuw nsw i32 %2577, 1
  %2579 = trunc i32 %2578 to i16
  %2580 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %2579, ptr %2580, align 4, !tbaa !62
  %2581 = load i16, ptr %779, align 2, !tbaa !62
  %2582 = zext i16 %2581 to i32
  %2583 = add nuw nsw i32 %2578, %2582
  %2584 = shl nuw nsw i32 %2583, 1
  %2585 = trunc i32 %2584 to i16
  %2586 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %2585, ptr %2586, align 2, !tbaa !62
  %2587 = load i16, ptr %786, align 2, !tbaa !62
  %2588 = zext i16 %2587 to i32
  %2589 = add nuw nsw i32 %2584, %2588
  %2590 = shl nuw nsw i32 %2589, 1
  %2591 = trunc i32 %2590 to i16
  %2592 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %2591, ptr %2592, align 16, !tbaa !62
  %2593 = load i16, ptr %793, align 2, !tbaa !62
  %2594 = trunc i32 %2590 to i16
  %2595 = add i16 %2593, %2594
  %2596 = shl i16 %2595, 1
  %2597 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %2596, ptr %2597, align 2, !tbaa !62
  %2598 = load i16, ptr %800, align 2, !tbaa !62
  %2599 = add i16 %2598, %2596
  %2600 = shl i16 %2599, 1
  %2601 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %2600, ptr %2601, align 4, !tbaa !62
  %2602 = load i16, ptr %807, align 2, !tbaa !62
  %2603 = add i16 %2600, %2602
  %2604 = shl i16 %2603, 1
  %2605 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %2604, ptr %2605, align 2, !tbaa !62
  %2606 = load i16, ptr %813, align 2, !tbaa !62
  %2607 = add i16 %2604, %2606
  %2608 = shl i16 %2607, 1
  %2609 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2608, ptr %2609, align 8, !tbaa !62
  %2610 = load i16, ptr %818, align 2, !tbaa !62
  %2611 = add i16 %2608, %2610
  %2612 = shl i16 %2611, 1
  %2613 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2612, ptr %2613, align 2, !tbaa !62
  %2614 = load i16, ptr %823, align 2, !tbaa !62
  %2615 = add i16 %2612, %2614
  %2616 = shl i16 %2615, 1
  %2617 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2616, ptr %2617, align 4, !tbaa !62
  %2618 = load i16, ptr %828, align 2, !tbaa !62
  %2619 = add i16 %2616, %2618
  %2620 = shl i16 %2619, 1
  %2621 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2620, ptr %2621, align 2, !tbaa !62
  %2622 = icmp slt i32 %1861, 0
  br i1 %2622, label %2683, label %2624

2623:                                             ; preds = %2677
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2624:                                             ; preds = %2679, %2545
  %2625 = phi i64 [ %2680, %2679 ], [ 0, %2545 ]
  %2626 = getelementptr inbounds nuw %struct.ct_data_s, ptr %1787, i64 %2625
  %2627 = getelementptr inbounds nuw i8, ptr %2626, i64 2
  %2628 = load i16, ptr %2627, align 2, !tbaa !28
  %2629 = icmp eq i16 %2628, 0
  br i1 %2629, label %2677, label %2630

2630:                                             ; preds = %2624
  %2631 = zext i16 %2628 to i32
  %2632 = zext i16 %2628 to i64
  %2633 = getelementptr inbounds nuw [16 x i16], ptr %5, i64 0, i64 %2632
  %2634 = load i16, ptr %2633, align 2, !tbaa !62
  %2635 = add i16 %2634, 1
  store i16 %2635, ptr %2633, align 2, !tbaa !62
  %2636 = and i32 %2631, 3
  %2637 = icmp ult i16 %2628, 4
  br i1 %2637, label %2660, label %2638

2638:                                             ; preds = %2630
  %2639 = and i32 %2631, 65532
  br label %2640

2640:                                             ; preds = %2640, %2638
  %2641 = phi i16 [ %2634, %2638 ], [ %2657, %2640 ]
  %2642 = phi i16 [ 0, %2638 ], [ %2656, %2640 ]
  %2643 = phi i32 [ 0, %2638 ], [ %2658, %2640 ]
  %2644 = and i16 %2641, 1
  %2645 = or disjoint i16 %2642, %2644
  %2646 = lshr i16 %2641, 2
  %2647 = shl i16 %2645, 2
  %2648 = and i16 %2641, 2
  %2649 = or disjoint i16 %2647, %2648
  %2650 = and i16 %2646, 1
  %2651 = or disjoint i16 %2649, %2650
  %2652 = shl i16 %2651, 1
  %2653 = lshr i16 %2641, 3
  %2654 = and i16 %2653, 1
  %2655 = or disjoint i16 %2652, %2654
  %2656 = shl i16 %2655, 1
  %2657 = lshr i16 %2641, 4
  %2658 = add i32 %2643, 4
  %2659 = icmp eq i32 %2658, %2639
  br i1 %2659, label %2660, label %2640, !llvm.loop !68

2660:                                             ; preds = %2640, %2630
  %2661 = phi i16 [ poison, %2630 ], [ %2655, %2640 ]
  %2662 = phi i16 [ %2634, %2630 ], [ %2657, %2640 ]
  %2663 = phi i16 [ 0, %2630 ], [ %2656, %2640 ]
  %2664 = icmp eq i32 %2636, 0
  br i1 %2664, label %2675, label %2665

2665:                                             ; preds = %2665, %2660
  %2666 = phi i16 [ %2672, %2665 ], [ %2662, %2660 ]
  %2667 = phi i16 [ %2671, %2665 ], [ %2663, %2660 ]
  %2668 = phi i32 [ %2673, %2665 ], [ 0, %2660 ]
  %2669 = and i16 %2666, 1
  %2670 = or disjoint i16 %2667, %2669
  %2671 = shl i16 %2670, 1
  %2672 = lshr i16 %2666, 1
  %2673 = add i32 %2668, 1
  %2674 = icmp eq i32 %2673, %2636
  br i1 %2674, label %2675, label %2665, !llvm.loop !76

2675:                                             ; preds = %2665, %2660
  %2676 = phi i16 [ %2661, %2660 ], [ %2670, %2665 ]
  store i16 %2676, ptr %2626, align 2, !tbaa !28
  br label %2677

2677:                                             ; preds = %2675, %2624
  %2678 = icmp eq i64 %2625, 2147483647
  br i1 %2678, label %2623, label %2679, !prof !34, !nosanitize !32

2679:                                             ; preds = %2677
  %2680 = add nuw nsw i64 %2625, 1
  %2681 = trunc i64 %2680 to i32
  %2682 = icmp slt i32 %1861, %2681
  br i1 %2682, label %2683, label %2624, !llvm.loop !71

2683:                                             ; preds = %2679, %2545
  call void @llvm.lifetime.end.p0(ptr %5)
  %2684 = getelementptr i8, ptr %0, i64 2750
  %2685 = getelementptr i8, ptr %0, i64 2810
  %2686 = load i16, ptr %2685, align 2, !tbaa !28
  %2687 = icmp eq i16 %2686, 0
  br i1 %2687, label %2688, label %2748

2688:                                             ; preds = %2683
  %2689 = getelementptr i8, ptr %0, i64 2754
  %2690 = load i16, ptr %2689, align 2, !tbaa !28
  %2691 = icmp eq i16 %2690, 0
  br i1 %2691, label %2692, label %2748

2692:                                             ; preds = %2688
  %2693 = getelementptr i8, ptr %0, i64 2806
  %2694 = load i16, ptr %2693, align 2, !tbaa !28
  %2695 = icmp eq i16 %2694, 0
  br i1 %2695, label %2696, label %2748

2696:                                             ; preds = %2692
  %2697 = getelementptr i8, ptr %0, i64 2758
  %2698 = load i16, ptr %2697, align 2, !tbaa !28
  %2699 = icmp eq i16 %2698, 0
  br i1 %2699, label %2700, label %2748

2700:                                             ; preds = %2696
  %2701 = getelementptr i8, ptr %0, i64 2802
  %2702 = load i16, ptr %2701, align 2, !tbaa !28
  %2703 = icmp eq i16 %2702, 0
  br i1 %2703, label %2704, label %2748

2704:                                             ; preds = %2700
  %2705 = getelementptr i8, ptr %0, i64 2762
  %2706 = load i16, ptr %2705, align 2, !tbaa !28
  %2707 = icmp eq i16 %2706, 0
  br i1 %2707, label %2708, label %2748

2708:                                             ; preds = %2704
  %2709 = getelementptr i8, ptr %0, i64 2798
  %2710 = load i16, ptr %2709, align 2, !tbaa !28
  %2711 = icmp eq i16 %2710, 0
  br i1 %2711, label %2712, label %2748

2712:                                             ; preds = %2708
  %2713 = getelementptr i8, ptr %0, i64 2766
  %2714 = load i16, ptr %2713, align 2, !tbaa !28
  %2715 = icmp eq i16 %2714, 0
  br i1 %2715, label %2716, label %2748

2716:                                             ; preds = %2712
  %2717 = getelementptr i8, ptr %0, i64 2794
  %2718 = load i16, ptr %2717, align 2, !tbaa !28
  %2719 = icmp eq i16 %2718, 0
  br i1 %2719, label %2720, label %2748

2720:                                             ; preds = %2716
  %2721 = getelementptr i8, ptr %0, i64 2770
  %2722 = load i16, ptr %2721, align 2, !tbaa !28
  %2723 = icmp eq i16 %2722, 0
  br i1 %2723, label %2724, label %2748

2724:                                             ; preds = %2720
  %2725 = getelementptr i8, ptr %0, i64 2790
  %2726 = load i16, ptr %2725, align 2, !tbaa !28
  %2727 = icmp eq i16 %2726, 0
  br i1 %2727, label %2728, label %2748

2728:                                             ; preds = %2724
  %2729 = getelementptr i8, ptr %0, i64 2774
  %2730 = load i16, ptr %2729, align 2, !tbaa !28
  %2731 = icmp eq i16 %2730, 0
  br i1 %2731, label %2732, label %2748

2732:                                             ; preds = %2728
  %2733 = getelementptr i8, ptr %0, i64 2786
  %2734 = load i16, ptr %2733, align 2, !tbaa !28
  %2735 = icmp eq i16 %2734, 0
  br i1 %2735, label %2736, label %2748

2736:                                             ; preds = %2732
  %2737 = getelementptr i8, ptr %0, i64 2778
  %2738 = load i16, ptr %2737, align 2, !tbaa !28
  %2739 = icmp eq i16 %2738, 0
  br i1 %2739, label %2740, label %2748

2740:                                             ; preds = %2736
  %2741 = getelementptr i8, ptr %0, i64 2782
  %2742 = load i16, ptr %2741, align 2, !tbaa !28
  %2743 = icmp eq i16 %2742, 0
  br i1 %2743, label %2744, label %2748

2744:                                             ; preds = %2740
  %2745 = load i16, ptr %2684, align 2, !tbaa !28
  %2746 = icmp eq i16 %2745, 0
  %2747 = select i1 %2746, i32 2, i32 3
  br label %2748

2748:                                             ; preds = %2744, %2740, %2736, %2732, %2728, %2724, %2720, %2716, %2712, %2708, %2704, %2700, %2696, %2692, %2688, %2683
  %2749 = phi i32 [ 18, %2683 ], [ 17, %2688 ], [ 16, %2692 ], [ 15, %2696 ], [ 14, %2700 ], [ 13, %2704 ], [ 12, %2708 ], [ 11, %2712 ], [ 10, %2716 ], [ 9, %2720 ], [ 8, %2724 ], [ 7, %2728 ], [ 6, %2732 ], [ 5, %2736 ], [ 4, %2740 ], [ %2747, %2744 ]
  %2750 = mul nuw nsw i32 %2749, 3
  %2751 = add nuw nsw i32 %2750, 17
  %2752 = zext nneg i32 %2751 to i64
  %2753 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2754 = load i64, ptr %2753, align 8, !tbaa !52
  %2755 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2754, i64 %2752), !nosanitize !32
  %2756 = extractvalue { i64, i1 } %2755, 1, !nosanitize !32
  br i1 %2756, label %2757, label %2758, !prof !34, !nosanitize !32

2757:                                             ; preds = %2748
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2758:                                             ; preds = %2748
  %2759 = extractvalue { i64, i1 } %2755, 0, !nosanitize !32
  store i64 %2759, ptr %2753, align 8, !tbaa !52
  %2760 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2759, i64 3), !nosanitize !32
  %2761 = extractvalue { i64, i1 } %2760, 1, !nosanitize !32
  br i1 %2761, label %2762, label %2763, !prof !34, !nosanitize !32

2762:                                             ; preds = %2758
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2763:                                             ; preds = %2758
  %2764 = extractvalue { i64, i1 } %2760, 0, !nosanitize !32
  %2765 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2764, i64 7), !nosanitize !32
  %2766 = extractvalue { i64, i1 } %2765, 1, !nosanitize !32
  br i1 %2766, label %2767, label %2768, !prof !34, !nosanitize !32

2767:                                             ; preds = %2763
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2768:                                             ; preds = %2763
  %2769 = extractvalue { i64, i1 } %2765, 0, !nosanitize !32
  %2770 = lshr i64 %2769, 3
  %2771 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2772 = load i64, ptr %2771, align 8, !tbaa !53
  %2773 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2772, i64 3), !nosanitize !32
  %2774 = extractvalue { i64, i1 } %2773, 1, !nosanitize !32
  br i1 %2774, label %2775, label %2776, !prof !34, !nosanitize !32

2775:                                             ; preds = %2768
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2776:                                             ; preds = %2768
  %2777 = extractvalue { i64, i1 } %2773, 0, !nosanitize !32
  %2778 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2777, i64 7), !nosanitize !32
  %2779 = extractvalue { i64, i1 } %2778, 1, !nosanitize !32
  br i1 %2779, label %2780, label %2781, !prof !34, !nosanitize !32

2780:                                             ; preds = %2776
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2781:                                             ; preds = %2776
  %2782 = extractvalue { i64, i1 } %2778, 0, !nosanitize !32
  %2783 = lshr i64 %2782, 3
  %2784 = icmp samesign ugt i64 %2783, %2770
  br i1 %2784, label %2785, label %2789

2785:                                             ; preds = %2781
  %2786 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2787 = load i32, ptr %2786, align 8, !tbaa !77
  %2788 = icmp eq i32 %2787, 4
  br i1 %2788, label %2789, label %2796

2789:                                             ; preds = %2785, %2781
  br label %2796

2790:                                             ; preds = %4
  %2791 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 5), !nosanitize !32
  %2792 = extractvalue { i64, i1 } %2791, 1, !nosanitize !32
  br i1 %2792, label %2793, label %2794, !prof !34, !nosanitize !32

2793:                                             ; preds = %2790
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2794:                                             ; preds = %2790
  %2795 = extractvalue { i64, i1 } %2791, 0, !nosanitize !32
  br label %2796

2796:                                             ; preds = %2794, %2789, %2785
  %2797 = phi i32 [ %2749, %2789 ], [ %2749, %2785 ], [ 0, %2794 ]
  %2798 = phi i64 [ %2783, %2789 ], [ %2783, %2785 ], [ %2795, %2794 ]
  %2799 = phi i64 [ %2783, %2789 ], [ %2770, %2785 ], [ %2795, %2794 ]
  %2800 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 4), !nosanitize !32
  %2801 = extractvalue { i64, i1 } %2800, 1, !nosanitize !32
  br i1 %2801, label %2802, label %2803, !prof !34, !nosanitize !32

2802:                                             ; preds = %2976, %2796
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2803:                                             ; preds = %2796
  %2804 = extractvalue { i64, i1 } %2800, 0, !nosanitize !32
  %2805 = icmp ule i64 %2804, %2799
  %2806 = icmp ne ptr %1, null
  %2807 = and i1 %2806, %2805
  br i1 %2807, label %2808, label %2967

2808:                                             ; preds = %2803
  %2809 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2810 = load i32, ptr %2809, align 4, !tbaa !26
  %2811 = icmp sgt i32 %2810, 13
  br i1 %2811, label %2813, label %2851

2812:                                             ; preds = %2835
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

2813:                                             ; preds = %2808
  %2814 = and i32 %3, 65535
  %2815 = shl i32 %3, %2810
  %2816 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2817 = load i16, ptr %2816, align 8, !tbaa !25
  %2818 = trunc i32 %2815 to i16
  %2819 = or i16 %2817, %2818
  store i16 %2819, ptr %2816, align 8, !tbaa !25
  %2820 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2821 = load i64, ptr %2820, align 8, !tbaa !33
  %2822 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2821, i64 1), !nosanitize !32
  %2823 = extractvalue { i64, i1 } %2822, 1, !nosanitize !32
  br i1 %2823, label %2824, label %2825, !prof !34, !nosanitize !32

2824:                                             ; preds = %2813
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2825:                                             ; preds = %2813
  %2826 = extractvalue { i64, i1 } %2822, 0, !nosanitize !32
  %2827 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2828 = load ptr, ptr %2827, align 8, !tbaa !35
  %2829 = trunc i16 %2819 to i8
  store i64 %2826, ptr %2820, align 8, !tbaa !33
  %2830 = getelementptr inbounds nuw i8, ptr %2828, i64 %2821
  store i8 %2829, ptr %2830, align 1, !tbaa !28
  %2831 = load i64, ptr %2820, align 8, !tbaa !33
  %2832 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2831, i64 1), !nosanitize !32
  %2833 = extractvalue { i64, i1 } %2832, 1, !nosanitize !32
  br i1 %2833, label %2834, label %2835, !prof !34, !nosanitize !32

2834:                                             ; preds = %2845, %2825
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2835:                                             ; preds = %2825
  %2836 = extractvalue { i64, i1 } %2832, 0, !nosanitize !32
  %2837 = load ptr, ptr %2827, align 8, !tbaa !35
  %2838 = load i16, ptr %2816, align 8, !tbaa !25
  %2839 = lshr i16 %2838, 8
  %2840 = trunc nuw i16 %2839 to i8
  store i64 %2836, ptr %2820, align 8, !tbaa !33
  %2841 = getelementptr inbounds nuw i8, ptr %2837, i64 %2831
  store i8 %2840, ptr %2841, align 1, !tbaa !28
  %2842 = load i32, ptr %2809, align 4, !tbaa !26
  %2843 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2842), !nosanitize !32
  %2844 = extractvalue { i32, i1 } %2843, 1, !nosanitize !32
  br i1 %2844, label %2812, label %2845, !prof !34, !nosanitize !32

2845:                                             ; preds = %2835
  %2846 = extractvalue { i32, i1 } %2843, 0, !nosanitize !32
  %2847 = lshr i32 %2814, %2846
  %2848 = trunc nuw i32 %2847 to i16
  store i16 %2848, ptr %2816, align 8, !tbaa !25
  %2849 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2842, i32 -13), !nosanitize !32
  %2850 = extractvalue { i32, i1 } %2849, 1, !nosanitize !32
  br i1 false, label %2834, label %2859, !prof !34, !nosanitize !32

2851:                                             ; preds = %2808
  %2852 = shl i32 %3, %2810
  %2853 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2854 = load i16, ptr %2853, align 8, !tbaa !25
  %2855 = trunc i32 %2852 to i16
  %2856 = or i16 %2854, %2855
  store i16 %2856, ptr %2853, align 8, !tbaa !25
  %2857 = add nsw i32 %2810, 3
  %2858 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2857, 0
  br label %2859

2859:                                             ; preds = %2851, %2845
  %2860 = phi i16 [ %2848, %2845 ], [ %2856, %2851 ]
  %2861 = phi { i32, i1 } [ %2849, %2845 ], [ %2858, %2851 ]
  %2862 = extractvalue { i32, i1 } %2861, 0
  store i32 %2862, ptr %2809, align 4, !tbaa !26
  %2863 = icmp sgt i32 %2862, 8
  br i1 %2863, label %2864, label %2888

2864:                                             ; preds = %2859
  %2865 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2866 = load i64, ptr %2865, align 8, !tbaa !33
  %2867 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2866, i64 1), !nosanitize !32
  %2868 = extractvalue { i64, i1 } %2867, 1, !nosanitize !32
  br i1 %2868, label %2869, label %2870, !prof !34, !nosanitize !32

2869:                                             ; preds = %2864
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2870:                                             ; preds = %2864
  %2871 = extractvalue { i64, i1 } %2867, 0, !nosanitize !32
  %2872 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2873 = load ptr, ptr %2872, align 8, !tbaa !35
  %2874 = trunc i16 %2860 to i8
  store i64 %2871, ptr %2865, align 8, !tbaa !33
  %2875 = getelementptr inbounds nuw i8, ptr %2873, i64 %2866
  store i8 %2874, ptr %2875, align 1, !tbaa !28
  %2876 = load i64, ptr %2865, align 8, !tbaa !33
  %2877 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2876, i64 1), !nosanitize !32
  %2878 = extractvalue { i64, i1 } %2877, 1, !nosanitize !32
  br i1 %2878, label %2879, label %2880, !prof !34, !nosanitize !32

2879:                                             ; preds = %2870
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2880:                                             ; preds = %2870
  %2881 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2882 = extractvalue { i64, i1 } %2877, 0, !nosanitize !32
  %2883 = load ptr, ptr %2872, align 8, !tbaa !35
  %2884 = load i16, ptr %2881, align 8, !tbaa !25
  %2885 = lshr i16 %2884, 8
  %2886 = trunc nuw i16 %2885 to i8
  store i64 %2882, ptr %2865, align 8, !tbaa !33
  %2887 = getelementptr inbounds nuw i8, ptr %2883, i64 %2876
  store i8 %2886, ptr %2887, align 1, !tbaa !28
  br label %2902

2888:                                             ; preds = %2859
  %2889 = icmp sgt i32 %2862, 0
  br i1 %2889, label %2890, label %2902

2890:                                             ; preds = %2888
  %2891 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2892 = load i64, ptr %2891, align 8, !tbaa !33
  %2893 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2892, i64 1), !nosanitize !32
  %2894 = extractvalue { i64, i1 } %2893, 1, !nosanitize !32
  br i1 %2894, label %2895, label %2896, !prof !34, !nosanitize !32

2895:                                             ; preds = %2890
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2896:                                             ; preds = %2890
  %2897 = extractvalue { i64, i1 } %2893, 0, !nosanitize !32
  %2898 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2899 = load ptr, ptr %2898, align 8, !tbaa !35
  %2900 = trunc i16 %2860 to i8
  store i64 %2897, ptr %2891, align 8, !tbaa !33
  %2901 = getelementptr inbounds nuw i8, ptr %2899, i64 %2892
  store i8 %2900, ptr %2901, align 1, !tbaa !28
  br label %2902

2902:                                             ; preds = %2896, %2888, %2880
  %2903 = load i32, ptr %2809, align 4, !tbaa !26
  %2904 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2903, i32 -1)
  %2905 = extractvalue { i32, i1 } %2904, 1, !nosanitize !32
  br i1 %2905, label %2906, label %2907, !prof !34, !nosanitize !32

2906:                                             ; preds = %2902
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

2907:                                             ; preds = %2902
  %2908 = extractvalue { i32, i1 } %2904, 0, !nosanitize !32
  %2909 = and i32 %2908, 7
  %2910 = add nuw nsw i32 %2909, 1
  %2911 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %2910, ptr %2911, align 8, !tbaa !27
  %2912 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %2912, align 8, !tbaa !25
  store i32 0, ptr %2809, align 4, !tbaa !26
  %2913 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2914 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2915 = load i64, ptr %2914, align 8, !tbaa !33
  %2916 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2915, i64 1), !nosanitize !32
  %2917 = extractvalue { i64, i1 } %2916, 1, !nosanitize !32
  br i1 %2917, label %2918, label %2919, !prof !34, !nosanitize !32

2918:                                             ; preds = %2907
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2919:                                             ; preds = %2907
  %2920 = extractvalue { i64, i1 } %2916, 0, !nosanitize !32
  %2921 = load ptr, ptr %2913, align 8, !tbaa !35
  %2922 = trunc i64 %2 to i8
  store i64 %2920, ptr %2914, align 8, !tbaa !33
  %2923 = getelementptr inbounds nuw i8, ptr %2921, i64 %2915
  store i8 %2922, ptr %2923, align 1, !tbaa !28
  %2924 = load i64, ptr %2914, align 8, !tbaa !33
  %2925 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2924, i64 1), !nosanitize !32
  %2926 = extractvalue { i64, i1 } %2925, 1, !nosanitize !32
  br i1 %2926, label %2927, label %2928, !prof !34, !nosanitize !32

2927:                                             ; preds = %2919
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2928:                                             ; preds = %2919
  %2929 = extractvalue { i64, i1 } %2925, 0, !nosanitize !32
  %2930 = load ptr, ptr %2913, align 8, !tbaa !35
  %2931 = lshr i64 %2, 8
  %2932 = trunc i64 %2931 to i8
  store i64 %2929, ptr %2914, align 8, !tbaa !33
  %2933 = getelementptr inbounds nuw i8, ptr %2930, i64 %2924
  store i8 %2932, ptr %2933, align 1, !tbaa !28
  %2934 = load i64, ptr %2914, align 8, !tbaa !33
  %2935 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2934, i64 1), !nosanitize !32
  %2936 = extractvalue { i64, i1 } %2935, 1, !nosanitize !32
  br i1 %2936, label %2937, label %2938, !prof !34, !nosanitize !32

2937:                                             ; preds = %2928
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2938:                                             ; preds = %2928
  %2939 = extractvalue { i64, i1 } %2935, 0, !nosanitize !32
  %2940 = load ptr, ptr %2913, align 8, !tbaa !35
  %2941 = trunc i64 %2 to i32
  %2942 = xor i32 %2941, 65535
  %2943 = trunc i32 %2942 to i8
  store i64 %2939, ptr %2914, align 8, !tbaa !33
  %2944 = getelementptr inbounds nuw i8, ptr %2940, i64 %2934
  store i8 %2943, ptr %2944, align 1, !tbaa !28
  %2945 = load i64, ptr %2914, align 8, !tbaa !33
  %2946 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2945, i64 1), !nosanitize !32
  %2947 = extractvalue { i64, i1 } %2946, 1, !nosanitize !32
  br i1 %2947, label %2948, label %2949, !prof !34, !nosanitize !32

2948:                                             ; preds = %2938
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2949:                                             ; preds = %2938
  %2950 = extractvalue { i64, i1 } %2946, 0, !nosanitize !32
  %2951 = load ptr, ptr %2913, align 8, !tbaa !35
  %2952 = lshr i32 %2942, 8
  %2953 = trunc i32 %2952 to i8
  store i64 %2950, ptr %2914, align 8, !tbaa !33
  %2954 = getelementptr inbounds nuw i8, ptr %2951, i64 %2945
  store i8 %2953, ptr %2954, align 1, !tbaa !28
  %2955 = icmp eq i64 %2, 0
  br i1 %2955, label %2960, label %2956

2956:                                             ; preds = %2949
  %2957 = load ptr, ptr %2913, align 8, !tbaa !35
  %2958 = load i64, ptr %2914, align 8, !tbaa !33
  %2959 = getelementptr inbounds nuw i8, ptr %2957, i64 %2958
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2959, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %2960

2960:                                             ; preds = %2956, %2949
  %2961 = load i64, ptr %2914, align 8, !tbaa !33
  %2962 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2961, i64 %2), !nosanitize !32
  %2963 = extractvalue { i64, i1 } %2962, 1, !nosanitize !32
  br i1 %2963, label %2964, label %2965, !prof !34, !nosanitize !32

2964:                                             ; preds = %2960
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2965:                                             ; preds = %2960
  %2966 = extractvalue { i64, i1 } %2962, 0, !nosanitize !32
  store i64 %2966, ptr %2914, align 8, !tbaa !33
  br label %4989

2967:                                             ; preds = %2803
  %2968 = icmp eq i64 %2798, %2799
  %2969 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2970 = load i32, ptr %2969, align 4, !tbaa !26
  %2971 = icmp sgt i32 %2970, 13
  br i1 %2968, label %2972, label %3401

2972:                                             ; preds = %2967
  %2973 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2), !nosanitize !32
  %2974 = extractvalue { i32, i1 } %2973, 1, !nosanitize !32
  br i1 %2971, label %2976, label %3016

2975:                                             ; preds = %3428, %3000
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

2976:                                             ; preds = %2972
  br i1 %2974, label %2802, label %2977, !prof !34, !nosanitize !32

2977:                                             ; preds = %2976
  %2978 = extractvalue { i32, i1 } %2973, 0, !nosanitize !32
  %2979 = and i32 %2978, 65535
  %2980 = shl i32 %2978, %2970
  %2981 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2982 = load i16, ptr %2981, align 8, !tbaa !25
  %2983 = trunc i32 %2980 to i16
  %2984 = or i16 %2982, %2983
  store i16 %2984, ptr %2981, align 8, !tbaa !25
  %2985 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2986 = load i64, ptr %2985, align 8, !tbaa !33
  %2987 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2986, i64 1), !nosanitize !32
  %2988 = extractvalue { i64, i1 } %2987, 1, !nosanitize !32
  br i1 %2988, label %2989, label %2990, !prof !34, !nosanitize !32

2989:                                             ; preds = %2977
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2990:                                             ; preds = %2977
  %2991 = extractvalue { i64, i1 } %2987, 0, !nosanitize !32
  %2992 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2993 = load ptr, ptr %2992, align 8, !tbaa !35
  %2994 = trunc i16 %2984 to i8
  store i64 %2991, ptr %2985, align 8, !tbaa !33
  %2995 = getelementptr inbounds nuw i8, ptr %2993, i64 %2986
  store i8 %2994, ptr %2995, align 1, !tbaa !28
  %2996 = load i64, ptr %2985, align 8, !tbaa !33
  %2997 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2996, i64 1), !nosanitize !32
  %2998 = extractvalue { i64, i1 } %2997, 1, !nosanitize !32
  br i1 %2998, label %2999, label %3000, !prof !34, !nosanitize !32

2999:                                             ; preds = %3404, %3016, %3010, %2990
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3000:                                             ; preds = %2990
  %3001 = extractvalue { i64, i1 } %2997, 0, !nosanitize !32
  %3002 = load ptr, ptr %2992, align 8, !tbaa !35
  %3003 = load i16, ptr %2981, align 8, !tbaa !25
  %3004 = lshr i16 %3003, 8
  %3005 = trunc nuw i16 %3004 to i8
  store i64 %3001, ptr %2985, align 8, !tbaa !33
  %3006 = getelementptr inbounds nuw i8, ptr %3002, i64 %2996
  store i8 %3005, ptr %3006, align 1, !tbaa !28
  %3007 = load i32, ptr %2969, align 4, !tbaa !26
  %3008 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3007), !nosanitize !32
  %3009 = extractvalue { i32, i1 } %3008, 1, !nosanitize !32
  br i1 %3009, label %2975, label %3010, !prof !34, !nosanitize !32

3010:                                             ; preds = %3000
  %3011 = extractvalue { i32, i1 } %3008, 0, !nosanitize !32
  %3012 = lshr i32 %2979, %3011
  %3013 = trunc nuw i32 %3012 to i16
  store i16 %3013, ptr %2981, align 8, !tbaa !25
  %3014 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3007, i32 -13), !nosanitize !32
  %3015 = extractvalue { i32, i1 } %3014, 1, !nosanitize !32
  br i1 false, label %2999, label %3026, !prof !34, !nosanitize !32

3016:                                             ; preds = %2972
  br i1 %2974, label %2999, label %3017, !prof !34, !nosanitize !32

3017:                                             ; preds = %3016
  %3018 = extractvalue { i32, i1 } %2973, 0, !nosanitize !32
  %3019 = shl i32 %3018, %2970
  %3020 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3021 = load i16, ptr %3020, align 8, !tbaa !25
  %3022 = trunc i32 %3019 to i16
  %3023 = or i16 %3021, %3022
  store i16 %3023, ptr %3020, align 8, !tbaa !25
  %3024 = add nsw i32 %2970, 3
  %3025 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3024, 0
  br label %3026

3026:                                             ; preds = %3017, %3010
  %3027 = phi i16 [ %3013, %3010 ], [ %3023, %3017 ]
  %3028 = phi { i32, i1 } [ %3014, %3010 ], [ %3025, %3017 ]
  %3029 = extractvalue { i32, i1 } %3028, 0
  store i32 %3029, ptr %2969, align 4, !tbaa !26
  %3030 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %3031 = load i32, ptr %3030, align 4, !tbaa !31
  %3032 = icmp eq i32 %3031, 0
  br i1 %3032, label %3361, label %3033

3033:                                             ; preds = %3026
  %3034 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %3035 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3036 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3037 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %3038

3038:                                             ; preds = %3356, %3033
  %3039 = phi i16 [ %3357, %3356 ], [ %3027, %3033 ]
  %3040 = phi i32 [ %3358, %3356 ], [ %3029, %3033 ]
  %3041 = phi i32 [ %3060, %3356 ], [ 0, %3033 ]
  %3042 = load ptr, ptr %3034, align 8, !tbaa !78
  %3043 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3041, i32 2)
  %3044 = extractvalue { i32, i1 } %3043, 0, !nosanitize !32
  %3045 = extractvalue { i32, i1 } %3043, 1, !nosanitize !32
  br i1 %3045, label %3046, label %3047, !prof !34, !nosanitize !32

3046:                                             ; preds = %3038
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3047:                                             ; preds = %3038
  %3048 = add nuw i32 %3041, 1
  %3049 = zext i32 %3041 to i64
  %3050 = getelementptr inbounds nuw i8, ptr %3042, i64 %3049
  %3051 = load i8, ptr %3050, align 1, !tbaa !28
  %3052 = zext i8 %3051 to i32
  %3053 = zext i32 %3048 to i64
  %3054 = getelementptr inbounds nuw i8, ptr %3042, i64 %3053
  %3055 = load i8, ptr %3054, align 1, !tbaa !28
  %3056 = zext i8 %3055 to i32
  %3057 = shl nuw nsw i32 %3056, 8
  %3058 = or disjoint i32 %3057, %3052
  %3059 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3044, i32 1), !nosanitize !32
  %3060 = extractvalue { i32, i1 } %3059, 0, !nosanitize !32
  %3061 = extractvalue { i32, i1 } %3059, 1, !nosanitize !32
  br i1 %3061, label %3062, label %3063, !prof !34, !nosanitize !32

3062:                                             ; preds = %3047
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3063:                                             ; preds = %3047
  %3064 = zext i32 %3044 to i64
  %3065 = getelementptr inbounds nuw i8, ptr %3042, i64 %3064
  %3066 = load i8, ptr %3065, align 1, !tbaa !28
  %3067 = zext i8 %3066 to i32
  %3068 = icmp eq i32 %3058, 0
  %3069 = zext i8 %3066 to i64
  br i1 %3068, label %3070, label %3117

3070:                                             ; preds = %3063
  %3071 = getelementptr inbounds nuw %struct.ct_data_s, ptr @static_ltree, i64 %3069
  %3072 = getelementptr inbounds nuw i8, ptr %3071, i64 2
  %3073 = load i16, ptr %3072, align 2, !tbaa !28
  %3074 = zext i16 %3073 to i32
  %3075 = sub nsw i32 16, %3074
  %3076 = icmp sgt i32 %3040, %3075
  %3077 = load i16, ptr %3071, align 4, !tbaa !28
  %3078 = zext i16 %3077 to i32
  %3079 = shl i32 %3078, %3040
  %3080 = trunc i32 %3079 to i16
  %3081 = or i16 %3039, %3080
  store i16 %3081, ptr %3035, align 8, !tbaa !25
  br i1 %3076, label %3083, label %3114

3082:                                             ; preds = %3215, %3205, %3181, %3175, %3147, %3097
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

3083:                                             ; preds = %3070
  %3084 = load i64, ptr %3036, align 8, !tbaa !33
  %3085 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3084, i64 1), !nosanitize !32
  %3086 = extractvalue { i64, i1 } %3085, 1, !nosanitize !32
  br i1 %3086, label %3087, label %3088, !prof !34, !nosanitize !32

3087:                                             ; preds = %3083
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3088:                                             ; preds = %3083
  %3089 = extractvalue { i64, i1 } %3085, 0, !nosanitize !32
  %3090 = load ptr, ptr %3037, align 8, !tbaa !35
  %3091 = trunc i16 %3081 to i8
  store i64 %3089, ptr %3036, align 8, !tbaa !33
  %3092 = getelementptr inbounds nuw i8, ptr %3090, i64 %3084
  store i8 %3091, ptr %3092, align 1, !tbaa !28
  %3093 = load i64, ptr %3036, align 8, !tbaa !33
  %3094 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3093, i64 1), !nosanitize !32
  %3095 = extractvalue { i64, i1 } %3094, 1, !nosanitize !32
  br i1 %3095, label %3096, label %3097, !prof !34, !nosanitize !32

3096:                                             ; preds = %3107, %3088
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3097:                                             ; preds = %3088
  %3098 = extractvalue { i64, i1 } %3094, 0, !nosanitize !32
  %3099 = load ptr, ptr %3037, align 8, !tbaa !35
  %3100 = load i16, ptr %3035, align 8, !tbaa !25
  %3101 = lshr i16 %3100, 8
  %3102 = trunc nuw i16 %3101 to i8
  store i64 %3098, ptr %3036, align 8, !tbaa !33
  %3103 = getelementptr inbounds nuw i8, ptr %3099, i64 %3093
  store i8 %3102, ptr %3103, align 1, !tbaa !28
  %3104 = load i32, ptr %2969, align 4, !tbaa !26
  %3105 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3104), !nosanitize !32
  %3106 = extractvalue { i32, i1 } %3105, 1, !nosanitize !32
  br i1 %3106, label %3082, label %3107, !prof !34, !nosanitize !32

3107:                                             ; preds = %3097
  %3108 = extractvalue { i32, i1 } %3105, 0, !nosanitize !32
  %3109 = lshr i32 %3078, %3108
  %3110 = trunc nuw i32 %3109 to i16
  store i16 %3110, ptr %3035, align 8, !tbaa !25
  %3111 = add nsw i32 %3074, -16
  %3112 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3104, i32 %3111), !nosanitize !32
  %3113 = extractvalue { i32, i1 } %3112, 1, !nosanitize !32
  br i1 %3113, label %3096, label %3352, !prof !34, !nosanitize !32

3114:                                             ; preds = %3070
  %3115 = add nsw i32 %3040, %3074
  %3116 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3115, 0
  br label %3352

3117:                                             ; preds = %3063
  %3118 = getelementptr inbounds nuw [256 x i8], ptr @_length_code, i64 0, i64 %3069
  %3119 = load i8, ptr %3118, align 1, !tbaa !28
  %3120 = zext i8 %3119 to i64
  %3121 = getelementptr inbounds nuw %struct.ct_data_s, ptr @static_ltree, i64 %3120
  %3122 = getelementptr inbounds nuw i8, ptr %3121, i64 1028
  %3123 = getelementptr inbounds nuw i8, ptr %3121, i64 1030
  %3124 = load i16, ptr %3123, align 2, !tbaa !28
  %3125 = zext i16 %3124 to i32
  %3126 = sub nsw i32 16, %3125
  %3127 = icmp sgt i32 %3040, %3126
  %3128 = load i16, ptr %3122, align 4, !tbaa !28
  %3129 = zext i16 %3128 to i32
  %3130 = shl i32 %3129, %3040
  %3131 = trunc i32 %3130 to i16
  %3132 = or i16 %3039, %3131
  store i16 %3132, ptr %3035, align 8, !tbaa !25
  br i1 %3127, label %3133, label %3164

3133:                                             ; preds = %3117
  %3134 = load i64, ptr %3036, align 8, !tbaa !33
  %3135 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3134, i64 1), !nosanitize !32
  %3136 = extractvalue { i64, i1 } %3135, 1, !nosanitize !32
  br i1 %3136, label %3137, label %3138, !prof !34, !nosanitize !32

3137:                                             ; preds = %3133
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3138:                                             ; preds = %3133
  %3139 = extractvalue { i64, i1 } %3135, 0, !nosanitize !32
  %3140 = load ptr, ptr %3037, align 8, !tbaa !35
  %3141 = trunc i16 %3132 to i8
  store i64 %3139, ptr %3036, align 8, !tbaa !33
  %3142 = getelementptr inbounds nuw i8, ptr %3140, i64 %3134
  store i8 %3141, ptr %3142, align 1, !tbaa !28
  %3143 = load i64, ptr %3036, align 8, !tbaa !33
  %3144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3143, i64 1), !nosanitize !32
  %3145 = extractvalue { i64, i1 } %3144, 1, !nosanitize !32
  br i1 %3145, label %3146, label %3147, !prof !34, !nosanitize !32

3146:                                             ; preds = %3157, %3138
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3147:                                             ; preds = %3138
  %3148 = extractvalue { i64, i1 } %3144, 0, !nosanitize !32
  %3149 = load ptr, ptr %3037, align 8, !tbaa !35
  %3150 = load i16, ptr %3035, align 8, !tbaa !25
  %3151 = lshr i16 %3150, 8
  %3152 = trunc nuw i16 %3151 to i8
  store i64 %3148, ptr %3036, align 8, !tbaa !33
  %3153 = getelementptr inbounds nuw i8, ptr %3149, i64 %3143
  store i8 %3152, ptr %3153, align 1, !tbaa !28
  %3154 = load i32, ptr %2969, align 4, !tbaa !26
  %3155 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3154), !nosanitize !32
  %3156 = extractvalue { i32, i1 } %3155, 1, !nosanitize !32
  br i1 %3156, label %3082, label %3157, !prof !34, !nosanitize !32

3157:                                             ; preds = %3147
  %3158 = extractvalue { i32, i1 } %3155, 0, !nosanitize !32
  %3159 = lshr i32 %3129, %3158
  %3160 = trunc nuw i32 %3159 to i16
  store i16 %3160, ptr %3035, align 8, !tbaa !25
  %3161 = add nsw i32 %3125, -16
  %3162 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3154, i32 %3161), !nosanitize !32
  %3163 = extractvalue { i32, i1 } %3162, 1, !nosanitize !32
  br i1 %3163, label %3146, label %3167, !prof !34, !nosanitize !32

3164:                                             ; preds = %3117
  %3165 = add nsw i32 %3040, %3125
  %3166 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3165, 0
  br label %3167

3167:                                             ; preds = %3164, %3157
  %3168 = phi i16 [ %3160, %3157 ], [ %3132, %3164 ]
  %3169 = phi { i32, i1 } [ %3162, %3157 ], [ %3166, %3164 ]
  %3170 = extractvalue { i32, i1 } %3169, 0
  store i32 %3170, ptr %2969, align 4, !tbaa !26
  %3171 = getelementptr inbounds nuw [29 x i32], ptr @extra_lbits, i64 0, i64 %3120
  %3172 = load i32, ptr %3171, align 4, !tbaa !50
  %3173 = add nsw i64 %3120, -28
  %3174 = icmp ult i64 %3173, -20
  br i1 %3174, label %3235, label %3175

3175:                                             ; preds = %3167
  %3176 = getelementptr inbounds nuw [29 x i32], ptr @base_length, i64 0, i64 %3120
  %3177 = load i32, ptr %3176, align 4, !tbaa !50
  %3178 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3067, i32 %3177), !nosanitize !32
  %3179 = extractvalue { i32, i1 } %3178, 0, !nosanitize !32
  %3180 = extractvalue { i32, i1 } %3178, 1, !nosanitize !32
  br i1 %3180, label %3082, label %3181, !prof !34, !nosanitize !32

3181:                                             ; preds = %3175
  %3182 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3172), !nosanitize !32
  %3183 = extractvalue { i32, i1 } %3182, 1, !nosanitize !32
  br i1 %3183, label %3082, label %3184, !prof !34, !nosanitize !32

3184:                                             ; preds = %3181
  %3185 = extractvalue { i32, i1 } %3182, 0, !nosanitize !32
  %3186 = icmp sgt i32 %3170, %3185
  br i1 %3186, label %3187, label %3225

3187:                                             ; preds = %3184
  %3188 = and i32 %3179, 65535
  %3189 = shl i32 %3179, %3170
  %3190 = trunc i32 %3189 to i16
  %3191 = or i16 %3168, %3190
  store i16 %3191, ptr %3035, align 8, !tbaa !25
  %3192 = load i64, ptr %3036, align 8, !tbaa !33
  %3193 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3192, i64 1), !nosanitize !32
  %3194 = extractvalue { i64, i1 } %3193, 1, !nosanitize !32
  br i1 %3194, label %3195, label %3196, !prof !34, !nosanitize !32

3195:                                             ; preds = %3187
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3196:                                             ; preds = %3187
  %3197 = extractvalue { i64, i1 } %3193, 0, !nosanitize !32
  %3198 = load ptr, ptr %3037, align 8, !tbaa !35
  %3199 = trunc i16 %3191 to i8
  store i64 %3197, ptr %3036, align 8, !tbaa !33
  %3200 = getelementptr inbounds nuw i8, ptr %3198, i64 %3192
  store i8 %3199, ptr %3200, align 1, !tbaa !28
  %3201 = load i64, ptr %3036, align 8, !tbaa !33
  %3202 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3201, i64 1), !nosanitize !32
  %3203 = extractvalue { i64, i1 } %3202, 1, !nosanitize !32
  br i1 %3203, label %3204, label %3205, !prof !34, !nosanitize !32

3204:                                             ; preds = %3225, %3221, %3196
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3205:                                             ; preds = %3196
  %3206 = extractvalue { i64, i1 } %3202, 0, !nosanitize !32
  %3207 = load ptr, ptr %3037, align 8, !tbaa !35
  %3208 = load i16, ptr %3035, align 8, !tbaa !25
  %3209 = lshr i16 %3208, 8
  %3210 = trunc nuw i16 %3209 to i8
  store i64 %3206, ptr %3036, align 8, !tbaa !33
  %3211 = getelementptr inbounds nuw i8, ptr %3207, i64 %3201
  store i8 %3210, ptr %3211, align 1, !tbaa !28
  %3212 = load i32, ptr %2969, align 4, !tbaa !26
  %3213 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3212), !nosanitize !32
  %3214 = extractvalue { i32, i1 } %3213, 1, !nosanitize !32
  br i1 %3214, label %3082, label %3215, !prof !34, !nosanitize !32

3215:                                             ; preds = %3205
  %3216 = extractvalue { i32, i1 } %3213, 0, !nosanitize !32
  %3217 = lshr i32 %3188, %3216
  %3218 = trunc nuw i32 %3217 to i16
  store i16 %3218, ptr %3035, align 8, !tbaa !25
  %3219 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3172, i32 -16)
  %3220 = extractvalue { i32, i1 } %3219, 1, !nosanitize !32
  br i1 false, label %3082, label %3221, !prof !34, !nosanitize !32

3221:                                             ; preds = %3215
  %3222 = extractvalue { i32, i1 } %3219, 0, !nosanitize !32
  %3223 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3212, i32 %3222), !nosanitize !32
  %3224 = extractvalue { i32, i1 } %3223, 1, !nosanitize !32
  br i1 %3224, label %3204, label %3231, !prof !34, !nosanitize !32

3225:                                             ; preds = %3184
  %3226 = shl i32 %3179, %3170
  %3227 = trunc i32 %3226 to i16
  %3228 = or i16 %3168, %3227
  store i16 %3228, ptr %3035, align 8, !tbaa !25
  %3229 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3170, i32 %3172), !nosanitize !32
  %3230 = extractvalue { i32, i1 } %3229, 1, !nosanitize !32
  br i1 %3230, label %3204, label %3231, !prof !34, !nosanitize !32

3231:                                             ; preds = %3225, %3221
  %3232 = phi i16 [ %3218, %3221 ], [ %3228, %3225 ]
  %3233 = phi { i32, i1 } [ %3223, %3221 ], [ %3229, %3225 ]
  %3234 = extractvalue { i32, i1 } %3233, 0
  store i32 %3234, ptr %2969, align 4, !tbaa !26
  br label %3235

3235:                                             ; preds = %3231, %3167
  %3236 = phi i16 [ %3232, %3231 ], [ %3168, %3167 ]
  %3237 = phi i32 [ %3234, %3231 ], [ %3170, %3167 ]
  %3238 = add nsw i32 %3058, -1
  %3239 = icmp samesign ult i32 %3058, 257
  %3240 = lshr i32 %3238, 7
  %3241 = add nuw nsw i32 %3240, 256
  %3242 = select i1 %3239, i32 %3238, i32 %3241
  %3243 = zext nneg i32 %3242 to i64
  %3244 = getelementptr inbounds nuw [512 x i8], ptr @_dist_code, i64 0, i64 %3243
  %3245 = load i8, ptr %3244, align 1, !tbaa !28
  %3246 = zext i8 %3245 to i64
  %3247 = getelementptr inbounds nuw %struct.ct_data_s, ptr @static_dtree, i64 %3246
  %3248 = icmp sgt i32 %3237, 11
  %3249 = load i16, ptr %3247, align 4, !tbaa !28
  %3250 = zext i16 %3249 to i32
  %3251 = shl i32 %3250, %3237
  %3252 = trunc i32 %3251 to i16
  %3253 = or i16 %3236, %3252
  store i16 %3253, ptr %3035, align 8, !tbaa !25
  br i1 %3248, label %3255, label %3285

3254:                                             ; preds = %3269
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

3255:                                             ; preds = %3235
  %3256 = load i64, ptr %3036, align 8, !tbaa !33
  %3257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3256, i64 1), !nosanitize !32
  %3258 = extractvalue { i64, i1 } %3257, 1, !nosanitize !32
  br i1 %3258, label %3259, label %3260, !prof !34, !nosanitize !32

3259:                                             ; preds = %3255
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3260:                                             ; preds = %3255
  %3261 = extractvalue { i64, i1 } %3257, 0, !nosanitize !32
  %3262 = load ptr, ptr %3037, align 8, !tbaa !35
  %3263 = trunc i16 %3253 to i8
  store i64 %3261, ptr %3036, align 8, !tbaa !33
  %3264 = getelementptr inbounds nuw i8, ptr %3262, i64 %3256
  store i8 %3263, ptr %3264, align 1, !tbaa !28
  %3265 = load i64, ptr %3036, align 8, !tbaa !33
  %3266 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3265, i64 1), !nosanitize !32
  %3267 = extractvalue { i64, i1 } %3266, 1, !nosanitize !32
  br i1 %3267, label %3268, label %3269, !prof !34, !nosanitize !32

3268:                                             ; preds = %3279, %3260
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3269:                                             ; preds = %3260
  %3270 = extractvalue { i64, i1 } %3266, 0, !nosanitize !32
  %3271 = load ptr, ptr %3037, align 8, !tbaa !35
  %3272 = load i16, ptr %3035, align 8, !tbaa !25
  %3273 = lshr i16 %3272, 8
  %3274 = trunc nuw i16 %3273 to i8
  store i64 %3270, ptr %3036, align 8, !tbaa !33
  %3275 = getelementptr inbounds nuw i8, ptr %3271, i64 %3265
  store i8 %3274, ptr %3275, align 1, !tbaa !28
  %3276 = load i32, ptr %2969, align 4, !tbaa !26
  %3277 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3276), !nosanitize !32
  %3278 = extractvalue { i32, i1 } %3277, 1, !nosanitize !32
  br i1 %3278, label %3254, label %3279, !prof !34, !nosanitize !32

3279:                                             ; preds = %3269
  %3280 = extractvalue { i32, i1 } %3277, 0, !nosanitize !32
  %3281 = lshr i32 %3250, %3280
  %3282 = trunc nuw i32 %3281 to i16
  store i16 %3282, ptr %3035, align 8, !tbaa !25
  %3283 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3276, i32 -11), !nosanitize !32
  %3284 = extractvalue { i32, i1 } %3283, 1, !nosanitize !32
  br i1 false, label %3268, label %3288, !prof !34, !nosanitize !32

3285:                                             ; preds = %3235
  %3286 = add nsw i32 %3237, 5
  %3287 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3286, 0
  br label %3288

3288:                                             ; preds = %3285, %3279
  %3289 = phi i16 [ %3282, %3279 ], [ %3253, %3285 ]
  %3290 = phi { i32, i1 } [ %3283, %3279 ], [ %3287, %3285 ]
  %3291 = extractvalue { i32, i1 } %3290, 0
  store i32 %3291, ptr %2969, align 4, !tbaa !26
  %3292 = getelementptr inbounds nuw [30 x i32], ptr @extra_dbits, i64 0, i64 %3246
  %3293 = load i32, ptr %3292, align 4, !tbaa !50
  %3294 = icmp ult i8 %3245, 4
  br i1 %3294, label %3356, label %3295

3295:                                             ; preds = %3288
  %3296 = getelementptr inbounds nuw [30 x i32], ptr @base_dist, i64 0, i64 %3246
  %3297 = load i32, ptr %3296, align 4, !tbaa !50
  %3298 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %3238, i32 %3297), !nosanitize !32
  %3299 = extractvalue { i32, i1 } %3298, 0, !nosanitize !32
  %3300 = extractvalue { i32, i1 } %3298, 1, !nosanitize !32
  br i1 %3300, label %3301, label %3302, !prof !34, !nosanitize !32

3301:                                             ; preds = %3382, %3336, %3326, %3302, %3295
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

3302:                                             ; preds = %3295
  %3303 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3293), !nosanitize !32
  %3304 = extractvalue { i32, i1 } %3303, 1, !nosanitize !32
  br i1 %3304, label %3301, label %3305, !prof !34, !nosanitize !32

3305:                                             ; preds = %3302
  %3306 = extractvalue { i32, i1 } %3303, 0, !nosanitize !32
  %3307 = icmp sgt i32 %3291, %3306
  br i1 %3307, label %3308, label %3346

3308:                                             ; preds = %3305
  %3309 = and i32 %3299, 65535
  %3310 = shl i32 %3299, %3291
  %3311 = trunc i32 %3310 to i16
  %3312 = or i16 %3289, %3311
  store i16 %3312, ptr %3035, align 8, !tbaa !25
  %3313 = load i64, ptr %3036, align 8, !tbaa !33
  %3314 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3313, i64 1), !nosanitize !32
  %3315 = extractvalue { i64, i1 } %3314, 1, !nosanitize !32
  br i1 %3315, label %3316, label %3317, !prof !34, !nosanitize !32

3316:                                             ; preds = %3308
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3317:                                             ; preds = %3308
  %3318 = extractvalue { i64, i1 } %3314, 0, !nosanitize !32
  %3319 = load ptr, ptr %3037, align 8, !tbaa !35
  %3320 = trunc i16 %3312 to i8
  store i64 %3318, ptr %3036, align 8, !tbaa !33
  %3321 = getelementptr inbounds nuw i8, ptr %3319, i64 %3313
  store i8 %3320, ptr %3321, align 1, !tbaa !28
  %3322 = load i64, ptr %3036, align 8, !tbaa !33
  %3323 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3322, i64 1), !nosanitize !32
  %3324 = extractvalue { i64, i1 } %3323, 1, !nosanitize !32
  br i1 %3324, label %3325, label %3326, !prof !34, !nosanitize !32

3325:                                             ; preds = %3346, %3342, %3317
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3326:                                             ; preds = %3317
  %3327 = extractvalue { i64, i1 } %3323, 0, !nosanitize !32
  %3328 = load ptr, ptr %3037, align 8, !tbaa !35
  %3329 = load i16, ptr %3035, align 8, !tbaa !25
  %3330 = lshr i16 %3329, 8
  %3331 = trunc nuw i16 %3330 to i8
  store i64 %3327, ptr %3036, align 8, !tbaa !33
  %3332 = getelementptr inbounds nuw i8, ptr %3328, i64 %3322
  store i8 %3331, ptr %3332, align 1, !tbaa !28
  %3333 = load i32, ptr %2969, align 4, !tbaa !26
  %3334 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3333), !nosanitize !32
  %3335 = extractvalue { i32, i1 } %3334, 1, !nosanitize !32
  br i1 %3335, label %3301, label %3336, !prof !34, !nosanitize !32

3336:                                             ; preds = %3326
  %3337 = extractvalue { i32, i1 } %3334, 0, !nosanitize !32
  %3338 = lshr i32 %3309, %3337
  %3339 = trunc nuw i32 %3338 to i16
  store i16 %3339, ptr %3035, align 8, !tbaa !25
  %3340 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3293, i32 -16)
  %3341 = extractvalue { i32, i1 } %3340, 1, !nosanitize !32
  br i1 false, label %3301, label %3342, !prof !34, !nosanitize !32

3342:                                             ; preds = %3336
  %3343 = extractvalue { i32, i1 } %3340, 0, !nosanitize !32
  %3344 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3333, i32 %3343), !nosanitize !32
  %3345 = extractvalue { i32, i1 } %3344, 1, !nosanitize !32
  br i1 %3345, label %3325, label %3352, !prof !34, !nosanitize !32

3346:                                             ; preds = %3305
  %3347 = shl i32 %3299, %3291
  %3348 = trunc i32 %3347 to i16
  %3349 = or i16 %3289, %3348
  store i16 %3349, ptr %3035, align 8, !tbaa !25
  %3350 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3291, i32 %3293), !nosanitize !32
  %3351 = extractvalue { i32, i1 } %3350, 1, !nosanitize !32
  br i1 %3351, label %3325, label %3352, !prof !34, !nosanitize !32

3352:                                             ; preds = %3346, %3342, %3114, %3107
  %3353 = phi i16 [ %3110, %3107 ], [ %3081, %3114 ], [ %3339, %3342 ], [ %3349, %3346 ]
  %3354 = phi { i32, i1 } [ %3112, %3107 ], [ %3116, %3114 ], [ %3344, %3342 ], [ %3350, %3346 ]
  %3355 = extractvalue { i32, i1 } %3354, 0
  store i32 %3355, ptr %2969, align 4, !tbaa !26
  br label %3356

3356:                                             ; preds = %3352, %3288
  %3357 = phi i16 [ %3289, %3288 ], [ %3353, %3352 ]
  %3358 = phi i32 [ %3291, %3288 ], [ %3355, %3352 ]
  %3359 = load i32, ptr %3030, align 4, !tbaa !31
  %3360 = icmp ult i32 %3060, %3359
  br i1 %3360, label %3038, label %3361, !llvm.loop !79

3361:                                             ; preds = %3356, %3026
  %3362 = phi i16 [ %3027, %3026 ], [ %3357, %3356 ]
  %3363 = phi i32 [ %3029, %3026 ], [ %3358, %3356 ]
  %3364 = icmp sgt i32 %3363, 9
  %3365 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %3364, label %3366, label %3395

3366:                                             ; preds = %3361
  %3367 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3368 = load i64, ptr %3367, align 8, !tbaa !33
  %3369 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3368, i64 1), !nosanitize !32
  %3370 = extractvalue { i64, i1 } %3369, 1, !nosanitize !32
  br i1 %3370, label %3371, label %3372, !prof !34, !nosanitize !32

3371:                                             ; preds = %3366
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3372:                                             ; preds = %3366
  %3373 = extractvalue { i64, i1 } %3369, 0, !nosanitize !32
  %3374 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3375 = load ptr, ptr %3374, align 8, !tbaa !35
  %3376 = trunc i16 %3362 to i8
  store i64 %3373, ptr %3367, align 8, !tbaa !33
  %3377 = getelementptr inbounds nuw i8, ptr %3375, i64 %3368
  store i8 %3376, ptr %3377, align 1, !tbaa !28
  %3378 = load i64, ptr %3367, align 8, !tbaa !33
  %3379 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3378, i64 1), !nosanitize !32
  %3380 = extractvalue { i64, i1 } %3379, 1, !nosanitize !32
  br i1 %3380, label %3381, label %3382, !prof !34, !nosanitize !32

3381:                                             ; preds = %3392, %3372
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3382:                                             ; preds = %3372
  %3383 = extractvalue { i64, i1 } %3379, 0, !nosanitize !32
  %3384 = load ptr, ptr %3374, align 8, !tbaa !35
  %3385 = load i16, ptr %3365, align 8, !tbaa !25
  %3386 = lshr i16 %3385, 8
  %3387 = trunc nuw i16 %3386 to i8
  store i64 %3383, ptr %3367, align 8, !tbaa !33
  %3388 = getelementptr inbounds nuw i8, ptr %3384, i64 %3378
  store i8 %3387, ptr %3388, align 1, !tbaa !28
  %3389 = load i32, ptr %2969, align 4, !tbaa !26
  %3390 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3389), !nosanitize !32
  %3391 = extractvalue { i32, i1 } %3390, 1, !nosanitize !32
  br i1 %3391, label %3301, label %3392, !prof !34, !nosanitize !32

3392:                                             ; preds = %3382
  store i16 0, ptr %3365, align 8, !tbaa !25
  %3393 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3389, i32 -9), !nosanitize !32
  %3394 = extractvalue { i32, i1 } %3393, 1, !nosanitize !32
  br i1 false, label %3381, label %3398, !prof !34, !nosanitize !32

3395:                                             ; preds = %3361
  %3396 = add nsw i32 %3363, 7
  %3397 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3396, 0
  br label %3398

3398:                                             ; preds = %3395, %3392
  %3399 = phi { i32, i1 } [ %3393, %3392 ], [ %3397, %3395 ]
  %3400 = extractvalue { i32, i1 } %3399, 0
  store i32 %3400, ptr %2969, align 4, !tbaa !26
  br label %4989

3401:                                             ; preds = %2967
  %3402 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 4), !nosanitize !32
  %3403 = extractvalue { i32, i1 } %3402, 1, !nosanitize !32
  br i1 %2971, label %3404, label %3444

3404:                                             ; preds = %3401
  br i1 %3403, label %2999, label %3405, !prof !34, !nosanitize !32

3405:                                             ; preds = %3404
  %3406 = extractvalue { i32, i1 } %3402, 0, !nosanitize !32
  %3407 = and i32 %3406, 65535
  %3408 = shl i32 %3406, %2970
  %3409 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3410 = load i16, ptr %3409, align 8, !tbaa !25
  %3411 = trunc i32 %3408 to i16
  %3412 = or i16 %3410, %3411
  store i16 %3412, ptr %3409, align 8, !tbaa !25
  %3413 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3414 = load i64, ptr %3413, align 8, !tbaa !33
  %3415 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3414, i64 1), !nosanitize !32
  %3416 = extractvalue { i64, i1 } %3415, 1, !nosanitize !32
  br i1 %3416, label %3417, label %3418, !prof !34, !nosanitize !32

3417:                                             ; preds = %3405
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3418:                                             ; preds = %3405
  %3419 = extractvalue { i64, i1 } %3415, 0, !nosanitize !32
  %3420 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3421 = load ptr, ptr %3420, align 8, !tbaa !35
  %3422 = trunc i16 %3412 to i8
  store i64 %3419, ptr %3413, align 8, !tbaa !33
  %3423 = getelementptr inbounds nuw i8, ptr %3421, i64 %3414
  store i8 %3422, ptr %3423, align 1, !tbaa !28
  %3424 = load i64, ptr %3413, align 8, !tbaa !33
  %3425 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3424, i64 1), !nosanitize !32
  %3426 = extractvalue { i64, i1 } %3425, 1, !nosanitize !32
  br i1 %3426, label %3427, label %3428, !prof !34, !nosanitize !32

3427:                                             ; preds = %3463, %3454, %3444, %3438, %3418
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3428:                                             ; preds = %3418
  %3429 = extractvalue { i64, i1 } %3425, 0, !nosanitize !32
  %3430 = load ptr, ptr %3420, align 8, !tbaa !35
  %3431 = load i16, ptr %3409, align 8, !tbaa !25
  %3432 = lshr i16 %3431, 8
  %3433 = trunc nuw i16 %3432 to i8
  store i64 %3429, ptr %3413, align 8, !tbaa !33
  %3434 = getelementptr inbounds nuw i8, ptr %3430, i64 %3424
  store i8 %3433, ptr %3434, align 1, !tbaa !28
  %3435 = load i32, ptr %2969, align 4, !tbaa !26
  %3436 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3435), !nosanitize !32
  %3437 = extractvalue { i32, i1 } %3436, 1, !nosanitize !32
  br i1 %3437, label %2975, label %3438, !prof !34, !nosanitize !32

3438:                                             ; preds = %3428
  %3439 = extractvalue { i32, i1 } %3436, 0, !nosanitize !32
  %3440 = lshr i32 %3407, %3439
  %3441 = trunc nuw i32 %3440 to i16
  store i16 %3441, ptr %3409, align 8, !tbaa !25
  %3442 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3435, i32 -13), !nosanitize !32
  %3443 = extractvalue { i32, i1 } %3442, 1, !nosanitize !32
  br i1 false, label %3427, label %3454, !prof !34, !nosanitize !32

3444:                                             ; preds = %3401
  br i1 %3403, label %3427, label %3445, !prof !34, !nosanitize !32

3445:                                             ; preds = %3444
  %3446 = extractvalue { i32, i1 } %3402, 0, !nosanitize !32
  %3447 = shl i32 %3446, %2970
  %3448 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3449 = load i16, ptr %3448, align 8, !tbaa !25
  %3450 = trunc i32 %3447 to i16
  %3451 = or i16 %3449, %3450
  store i16 %3451, ptr %3448, align 8, !tbaa !25
  %3452 = add nsw i32 %2970, 3
  %3453 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3452, 0
  br label %3454

3454:                                             ; preds = %3445, %3438
  %3455 = phi i16 [ %3441, %3438 ], [ %3451, %3445 ]
  %3456 = phi { i32, i1 } [ %3442, %3438 ], [ %3453, %3445 ]
  %3457 = extractvalue { i32, i1 } %3456, 0
  store i32 %3457, ptr %2969, align 4, !tbaa !26
  %3458 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %3459 = load i32, ptr %3458, align 8, !tbaa !73
  %3460 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3459, i32 1), !nosanitize !32
  %3461 = extractvalue { i32, i1 } %3460, 0, !nosanitize !32
  %3462 = extractvalue { i32, i1 } %3460, 1, !nosanitize !32
  br i1 %3462, label %3427, label %3463, !prof !34, !nosanitize !32

3463:                                             ; preds = %3454
  %3464 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %3465 = load i32, ptr %3464, align 8, !tbaa !75
  %3466 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3465, i32 1), !nosanitize !32
  %3467 = extractvalue { i32, i1 } %3466, 0, !nosanitize !32
  %3468 = extractvalue { i32, i1 } %3466, 1, !nosanitize !32
  br i1 %3468, label %3427, label %3469, !prof !34, !nosanitize !32

3469:                                             ; preds = %3463
  %3470 = add nuw nsw i32 %2797, 1
  %3471 = icmp sgt i32 %3457, 11
  %3472 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3461, i32 -257)
  %3473 = extractvalue { i32, i1 } %3472, 1, !nosanitize !32
  br i1 %3471, label %3475, label %3514

3474:                                             ; preds = %4145, %3690, %3665, %3605, %3569, %3553, %3530, %3514, %3498, %3475
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

3475:                                             ; preds = %3469
  br i1 %3473, label %3474, label %3476, !prof !34, !nosanitize !32

3476:                                             ; preds = %3475
  %3477 = extractvalue { i32, i1 } %3472, 0, !nosanitize !32
  %3478 = and i32 %3477, 65535
  %3479 = shl i32 %3477, %3457
  %3480 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3481 = trunc i32 %3479 to i16
  %3482 = or i16 %3455, %3481
  store i16 %3482, ptr %3480, align 8, !tbaa !25
  %3483 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3484 = load i64, ptr %3483, align 8, !tbaa !33
  %3485 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3484, i64 1), !nosanitize !32
  %3486 = extractvalue { i64, i1 } %3485, 1, !nosanitize !32
  br i1 %3486, label %3487, label %3488, !prof !34, !nosanitize !32

3487:                                             ; preds = %3476
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3488:                                             ; preds = %3476
  %3489 = extractvalue { i64, i1 } %3485, 0, !nosanitize !32
  %3490 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3491 = load ptr, ptr %3490, align 8, !tbaa !35
  %3492 = trunc i16 %3482 to i8
  store i64 %3489, ptr %3483, align 8, !tbaa !33
  %3493 = getelementptr inbounds nuw i8, ptr %3491, i64 %3484
  store i8 %3492, ptr %3493, align 1, !tbaa !28
  %3494 = load i64, ptr %3483, align 8, !tbaa !33
  %3495 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3494, i64 1), !nosanitize !32
  %3496 = extractvalue { i64, i1 } %3495, 1, !nosanitize !32
  br i1 %3496, label %3497, label %3498, !prof !34, !nosanitize !32

3497:                                             ; preds = %3508, %3488
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3498:                                             ; preds = %3488
  %3499 = extractvalue { i64, i1 } %3495, 0, !nosanitize !32
  %3500 = load ptr, ptr %3490, align 8, !tbaa !35
  %3501 = load i16, ptr %3480, align 8, !tbaa !25
  %3502 = lshr i16 %3501, 8
  %3503 = trunc nuw i16 %3502 to i8
  store i64 %3499, ptr %3483, align 8, !tbaa !33
  %3504 = getelementptr inbounds nuw i8, ptr %3500, i64 %3494
  store i8 %3503, ptr %3504, align 1, !tbaa !28
  %3505 = load i32, ptr %2969, align 4, !tbaa !26
  %3506 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3505), !nosanitize !32
  %3507 = extractvalue { i32, i1 } %3506, 1, !nosanitize !32
  br i1 %3507, label %3474, label %3508, !prof !34, !nosanitize !32

3508:                                             ; preds = %3498
  %3509 = extractvalue { i32, i1 } %3506, 0, !nosanitize !32
  %3510 = lshr i32 %3478, %3509
  %3511 = trunc nuw i32 %3510 to i16
  store i16 %3511, ptr %3480, align 8, !tbaa !25
  %3512 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3505, i32 -11), !nosanitize !32
  %3513 = extractvalue { i32, i1 } %3512, 1, !nosanitize !32
  br i1 false, label %3497, label %3523, !prof !34, !nosanitize !32

3514:                                             ; preds = %3469
  br i1 %3473, label %3474, label %3515, !prof !34, !nosanitize !32

3515:                                             ; preds = %3514
  %3516 = extractvalue { i32, i1 } %3472, 0, !nosanitize !32
  %3517 = shl i32 %3516, %3457
  %3518 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3519 = trunc i32 %3517 to i16
  %3520 = or i16 %3455, %3519
  store i16 %3520, ptr %3518, align 8, !tbaa !25
  %3521 = add nsw i32 %3457, 5
  %3522 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3521, 0
  br label %3523

3523:                                             ; preds = %3515, %3508
  %3524 = phi i16 [ %3511, %3508 ], [ %3520, %3515 ]
  %3525 = phi { i32, i1 } [ %3512, %3508 ], [ %3522, %3515 ]
  %3526 = extractvalue { i32, i1 } %3525, 0
  store i32 %3526, ptr %2969, align 4, !tbaa !26
  %3527 = icmp sgt i32 %3526, 11
  %3528 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3467, i32 -1)
  %3529 = extractvalue { i32, i1 } %3528, 1, !nosanitize !32
  br i1 %3527, label %3530, label %3569

3530:                                             ; preds = %3523
  br i1 false, label %3474, label %3531, !prof !34, !nosanitize !32

3531:                                             ; preds = %3530
  %3532 = extractvalue { i32, i1 } %3528, 0, !nosanitize !32
  %3533 = and i32 %3532, 65535
  %3534 = shl i32 %3532, %3526
  %3535 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3536 = trunc i32 %3534 to i16
  %3537 = or i16 %3524, %3536
  store i16 %3537, ptr %3535, align 8, !tbaa !25
  %3538 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3539 = load i64, ptr %3538, align 8, !tbaa !33
  %3540 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3539, i64 1), !nosanitize !32
  %3541 = extractvalue { i64, i1 } %3540, 1, !nosanitize !32
  br i1 %3541, label %3542, label %3543, !prof !34, !nosanitize !32

3542:                                             ; preds = %3531
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3543:                                             ; preds = %3531
  %3544 = extractvalue { i64, i1 } %3540, 0, !nosanitize !32
  %3545 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3546 = load ptr, ptr %3545, align 8, !tbaa !35
  %3547 = trunc i16 %3537 to i8
  store i64 %3544, ptr %3538, align 8, !tbaa !33
  %3548 = getelementptr inbounds nuw i8, ptr %3546, i64 %3539
  store i8 %3547, ptr %3548, align 1, !tbaa !28
  %3549 = load i64, ptr %3538, align 8, !tbaa !33
  %3550 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3549, i64 1), !nosanitize !32
  %3551 = extractvalue { i64, i1 } %3550, 1, !nosanitize !32
  br i1 %3551, label %3552, label %3553, !prof !34, !nosanitize !32

3552:                                             ; preds = %3563, %3543
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3553:                                             ; preds = %3543
  %3554 = extractvalue { i64, i1 } %3550, 0, !nosanitize !32
  %3555 = load ptr, ptr %3545, align 8, !tbaa !35
  %3556 = load i16, ptr %3535, align 8, !tbaa !25
  %3557 = lshr i16 %3556, 8
  %3558 = trunc nuw i16 %3557 to i8
  store i64 %3554, ptr %3538, align 8, !tbaa !33
  %3559 = getelementptr inbounds nuw i8, ptr %3555, i64 %3549
  store i8 %3558, ptr %3559, align 1, !tbaa !28
  %3560 = load i32, ptr %2969, align 4, !tbaa !26
  %3561 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3560), !nosanitize !32
  %3562 = extractvalue { i32, i1 } %3561, 1, !nosanitize !32
  br i1 %3562, label %3474, label %3563, !prof !34, !nosanitize !32

3563:                                             ; preds = %3553
  %3564 = extractvalue { i32, i1 } %3561, 0, !nosanitize !32
  %3565 = lshr i32 %3533, %3564
  %3566 = trunc nuw i32 %3565 to i16
  store i16 %3566, ptr %3535, align 8, !tbaa !25
  %3567 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3560, i32 -11), !nosanitize !32
  %3568 = extractvalue { i32, i1 } %3567, 1, !nosanitize !32
  br i1 false, label %3552, label %3578, !prof !34, !nosanitize !32

3569:                                             ; preds = %3523
  br i1 false, label %3474, label %3570, !prof !34, !nosanitize !32

3570:                                             ; preds = %3569
  %3571 = extractvalue { i32, i1 } %3528, 0, !nosanitize !32
  %3572 = shl i32 %3571, %3526
  %3573 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3574 = trunc i32 %3572 to i16
  %3575 = or i16 %3524, %3574
  store i16 %3575, ptr %3573, align 8, !tbaa !25
  %3576 = add nsw i32 %3526, 5
  %3577 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3576, 0
  br label %3578

3578:                                             ; preds = %3570, %3563
  %3579 = phi i16 [ %3566, %3563 ], [ %3575, %3570 ]
  %3580 = phi { i32, i1 } [ %3567, %3563 ], [ %3577, %3570 ]
  %3581 = extractvalue { i32, i1 } %3580, 0
  store i32 %3581, ptr %2969, align 4, !tbaa !26
  %3582 = icmp sgt i32 %3581, 12
  %3583 = add nsw i32 %2797, -3
  br i1 %3582, label %3584, label %3621

3584:                                             ; preds = %3578
  %3585 = and i32 %3583, 65535
  %3586 = shl i32 %3583, %3581
  %3587 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3588 = trunc i32 %3586 to i16
  %3589 = or i16 %3579, %3588
  store i16 %3589, ptr %3587, align 8, !tbaa !25
  %3590 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3591 = load i64, ptr %3590, align 8, !tbaa !33
  %3592 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3591, i64 1), !nosanitize !32
  %3593 = extractvalue { i64, i1 } %3592, 1, !nosanitize !32
  br i1 %3593, label %3594, label %3595, !prof !34, !nosanitize !32

3594:                                             ; preds = %3584
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3595:                                             ; preds = %3584
  %3596 = extractvalue { i64, i1 } %3592, 0, !nosanitize !32
  %3597 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3598 = load ptr, ptr %3597, align 8, !tbaa !35
  %3599 = trunc i16 %3589 to i8
  store i64 %3596, ptr %3590, align 8, !tbaa !33
  %3600 = getelementptr inbounds nuw i8, ptr %3598, i64 %3591
  store i8 %3599, ptr %3600, align 1, !tbaa !28
  %3601 = load i64, ptr %3590, align 8, !tbaa !33
  %3602 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3601, i64 1), !nosanitize !32
  %3603 = extractvalue { i64, i1 } %3602, 1, !nosanitize !32
  br i1 %3603, label %3604, label %3605, !prof !34, !nosanitize !32

3604:                                             ; preds = %3615, %3595
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3605:                                             ; preds = %3595
  %3606 = extractvalue { i64, i1 } %3602, 0, !nosanitize !32
  %3607 = load ptr, ptr %3597, align 8, !tbaa !35
  %3608 = load i16, ptr %3587, align 8, !tbaa !25
  %3609 = lshr i16 %3608, 8
  %3610 = trunc nuw i16 %3609 to i8
  store i64 %3606, ptr %3590, align 8, !tbaa !33
  %3611 = getelementptr inbounds nuw i8, ptr %3607, i64 %3601
  store i8 %3610, ptr %3611, align 1, !tbaa !28
  %3612 = load i32, ptr %2969, align 4, !tbaa !26
  %3613 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3612), !nosanitize !32
  %3614 = extractvalue { i32, i1 } %3613, 1, !nosanitize !32
  br i1 %3614, label %3474, label %3615, !prof !34, !nosanitize !32

3615:                                             ; preds = %3605
  %3616 = extractvalue { i32, i1 } %3613, 0, !nosanitize !32
  %3617 = lshr i32 %3585, %3616
  %3618 = trunc nuw i32 %3617 to i16
  store i16 %3618, ptr %3587, align 8, !tbaa !25
  %3619 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3612, i32 -12), !nosanitize !32
  %3620 = extractvalue { i32, i1 } %3619, 1, !nosanitize !32
  br i1 false, label %3604, label %3627, !prof !34, !nosanitize !32

3621:                                             ; preds = %3578
  %3622 = shl nsw i32 %3583, %3581
  %3623 = trunc i32 %3622 to i16
  %3624 = or i16 %3579, %3623
  %3625 = add nsw i32 %3581, 4
  %3626 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3625, 0
  br label %3627

3627:                                             ; preds = %3621, %3615
  %3628 = phi i16 [ %3618, %3615 ], [ %3624, %3621 ]
  %3629 = phi { i32, i1 } [ %3619, %3615 ], [ %3626, %3621 ]
  %3630 = extractvalue { i32, i1 } %3629, 0
  store i32 %3630, ptr %2969, align 4, !tbaa !26
  %3631 = getelementptr i8, ptr %0, i64 2750
  %3632 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3633 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3634 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3635 = zext nneg i32 %3470 to i64
  br label %3636

3636:                                             ; preds = %3684, %3627
  %3637 = phi i16 [ %3628, %3627 ], [ %3685, %3684 ]
  %3638 = phi i32 [ %3630, %3627 ], [ %3687, %3684 ]
  %3639 = phi i64 [ 0, %3627 ], [ %3688, %3684 ]
  %3640 = icmp sgt i32 %3638, 13
  %3641 = getelementptr inbounds nuw [19 x i8], ptr @bl_order, i64 0, i64 %3639
  %3642 = load i8, ptr %3641, align 1, !tbaa !28
  %3643 = zext i8 %3642 to i64
  %3644 = shl nuw nsw i64 %3643, 2
  %3645 = getelementptr i8, ptr %3631, i64 %3644
  %3646 = load i16, ptr %3645, align 2, !tbaa !28
  %3647 = zext i16 %3646 to i32
  %3648 = shl i32 %3647, %3638
  %3649 = trunc i32 %3648 to i16
  %3650 = or i16 %3637, %3649
  store i16 %3650, ptr %3632, align 8, !tbaa !25
  br i1 %3640, label %3651, label %3681

3651:                                             ; preds = %3636
  %3652 = load i64, ptr %3633, align 8, !tbaa !33
  %3653 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3652, i64 1), !nosanitize !32
  %3654 = extractvalue { i64, i1 } %3653, 1, !nosanitize !32
  br i1 %3654, label %3655, label %3656, !prof !34, !nosanitize !32

3655:                                             ; preds = %3651
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3656:                                             ; preds = %3651
  %3657 = extractvalue { i64, i1 } %3653, 0, !nosanitize !32
  %3658 = load ptr, ptr %3634, align 8, !tbaa !35
  %3659 = trunc i16 %3650 to i8
  store i64 %3657, ptr %3633, align 8, !tbaa !33
  %3660 = getelementptr inbounds nuw i8, ptr %3658, i64 %3652
  store i8 %3659, ptr %3660, align 1, !tbaa !28
  %3661 = load i64, ptr %3633, align 8, !tbaa !33
  %3662 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3661, i64 1), !nosanitize !32
  %3663 = extractvalue { i64, i1 } %3662, 1, !nosanitize !32
  br i1 %3663, label %3664, label %3665, !prof !34, !nosanitize !32

3664:                                             ; preds = %3675, %3656
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3665:                                             ; preds = %3656
  %3666 = extractvalue { i64, i1 } %3662, 0, !nosanitize !32
  %3667 = load ptr, ptr %3634, align 8, !tbaa !35
  %3668 = load i16, ptr %3632, align 8, !tbaa !25
  %3669 = lshr i16 %3668, 8
  %3670 = trunc nuw i16 %3669 to i8
  store i64 %3666, ptr %3633, align 8, !tbaa !33
  %3671 = getelementptr inbounds nuw i8, ptr %3667, i64 %3661
  store i8 %3670, ptr %3671, align 1, !tbaa !28
  %3672 = load i32, ptr %2969, align 4, !tbaa !26
  %3673 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3672), !nosanitize !32
  %3674 = extractvalue { i32, i1 } %3673, 1, !nosanitize !32
  br i1 %3674, label %3474, label %3675, !prof !34, !nosanitize !32

3675:                                             ; preds = %3665
  %3676 = extractvalue { i32, i1 } %3673, 0, !nosanitize !32
  %3677 = lshr i32 %3647, %3676
  %3678 = trunc nuw i32 %3677 to i16
  store i16 %3678, ptr %3632, align 8, !tbaa !25
  %3679 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3672, i32 -13), !nosanitize !32
  %3680 = extractvalue { i32, i1 } %3679, 1, !nosanitize !32
  br i1 false, label %3664, label %3684, !prof !34, !nosanitize !32

3681:                                             ; preds = %3636
  %3682 = add nsw i32 %3638, 3
  %3683 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3682, 0
  br label %3684

3684:                                             ; preds = %3681, %3675
  %3685 = phi i16 [ %3678, %3675 ], [ %3650, %3681 ]
  %3686 = phi { i32, i1 } [ %3679, %3675 ], [ %3683, %3681 ]
  %3687 = extractvalue { i32, i1 } %3686, 0
  store i32 %3687, ptr %2969, align 4, !tbaa !26
  %3688 = add nuw nsw i64 %3639, 1
  %3689 = icmp eq i64 %3688, %3635
  br i1 %3689, label %3690, label %3636, !llvm.loop !80

3690:                                             ; preds = %3684
  %3691 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3461, i32 -1)
  %3692 = extractvalue { i32, i1 } %3691, 1, !nosanitize !32
  br i1 false, label %3474, label %3693, !prof !34, !nosanitize !32

3693:                                             ; preds = %3690
  %3694 = extractvalue { i32, i1 } %3691, 0, !nosanitize !32
  %3695 = icmp slt i32 %3694, 0
  br i1 %3695, label %4145, label %3696

3696:                                             ; preds = %3693
  %3697 = getelementptr i8, ptr %0, i64 214
  %3698 = load i16, ptr %3697, align 2, !tbaa !28
  %3699 = icmp eq i16 %3698, 0
  %3700 = select i1 %3699, i32 138, i32 7
  %3701 = select i1 %3699, i32 3, i32 4
  %3702 = zext i16 %3698 to i32
  %3703 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3704 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3705 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3706 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3707 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3708 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3709 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3710

3710:                                             ; preds = %4137, %3696
  %3711 = phi i16 [ %3685, %3696 ], [ %4138, %4137 ]
  %3712 = phi i32 [ %3687, %3696 ], [ %4139, %4137 ]
  %3713 = phi i32 [ 0, %3696 ], [ %3720, %4137 ]
  %3714 = phi i32 [ -1, %3696 ], [ %4143, %4137 ]
  %3715 = phi i32 [ %3702, %3696 ], [ %3728, %4137 ]
  %3716 = phi i32 [ 0, %3696 ], [ %4142, %4137 ]
  %3717 = phi i32 [ %3700, %3696 ], [ %4141, %4137 ]
  %3718 = phi i32 [ %3701, %3696 ], [ %4140, %4137 ]
  %3719 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3713, i32 1), !nosanitize !32
  %3720 = extractvalue { i32, i1 } %3719, 0, !nosanitize !32
  %3721 = extractvalue { i32, i1 } %3719, 1, !nosanitize !32
  br i1 false, label %3722, label %3723, !prof !34, !nosanitize !32

3722:                                             ; preds = %3710
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

3723:                                             ; preds = %3710
  %3724 = sext i32 %3720 to i64
  %3725 = shl nsw i64 %3724, 2
  %3726 = getelementptr i8, ptr %3697, i64 %3725
  %3727 = load i16, ptr %3726, align 2, !tbaa !28
  %3728 = zext i16 %3727 to i32
  %3729 = add nsw i32 %3716, 1
  %3730 = icmp slt i32 %3729, %3717
  %3731 = icmp eq i32 %3715, %3728
  %3732 = select i1 %3730, i1 %3731, i1 false
  br i1 %3732, label %4137, label %3733

3733:                                             ; preds = %3723
  %3734 = icmp slt i32 %3729, %3718
  br i1 %3734, label %3735, label %3796

3735:                                             ; preds = %3733
  %3736 = zext nneg i32 %3715 to i64
  %3737 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %3703, i64 0, i64 %3736
  %3738 = getelementptr inbounds nuw i8, ptr %3737, i64 2
  br label %3739

3739:                                             ; preds = %3793, %3735
  %3740 = phi i16 [ %3788, %3793 ], [ %3711, %3735 ]
  %3741 = phi i32 [ %3790, %3793 ], [ %3712, %3735 ]
  %3742 = phi i32 [ %3794, %3793 ], [ %3729, %3735 ]
  %3743 = load i16, ptr %3738, align 2, !tbaa !28
  %3744 = zext i16 %3743 to i32
  %3745 = sub nsw i32 16, %3744
  %3746 = icmp sgt i32 %3741, %3745
  %3747 = load i16, ptr %3737, align 4, !tbaa !28
  %3748 = zext i16 %3747 to i32
  %3749 = shl i32 %3748, %3741
  %3750 = trunc i32 %3749 to i16
  %3751 = or i16 %3740, %3750
  store i16 %3751, ptr %3632, align 8, !tbaa !25
  br i1 %3746, label %3753, label %3784

3752:                                             ; preds = %4104, %4060, %4014, %3970, %3922, %3878, %3827, %3787, %3767
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

3753:                                             ; preds = %3739
  %3754 = load i64, ptr %3633, align 8, !tbaa !33
  %3755 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3754, i64 1), !nosanitize !32
  %3756 = extractvalue { i64, i1 } %3755, 1, !nosanitize !32
  br i1 %3756, label %3757, label %3758, !prof !34, !nosanitize !32

3757:                                             ; preds = %3753
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3758:                                             ; preds = %3753
  %3759 = extractvalue { i64, i1 } %3755, 0, !nosanitize !32
  %3760 = load ptr, ptr %3634, align 8, !tbaa !35
  %3761 = trunc i16 %3751 to i8
  store i64 %3759, ptr %3633, align 8, !tbaa !33
  %3762 = getelementptr inbounds nuw i8, ptr %3760, i64 %3754
  store i8 %3761, ptr %3762, align 1, !tbaa !28
  %3763 = load i64, ptr %3633, align 8, !tbaa !33
  %3764 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3763, i64 1), !nosanitize !32
  %3765 = extractvalue { i64, i1 } %3764, 1, !nosanitize !32
  br i1 %3765, label %3766, label %3767, !prof !34, !nosanitize !32

3766:                                             ; preds = %3777, %3758
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3767:                                             ; preds = %3758
  %3768 = extractvalue { i64, i1 } %3764, 0, !nosanitize !32
  %3769 = load ptr, ptr %3634, align 8, !tbaa !35
  %3770 = load i16, ptr %3632, align 8, !tbaa !25
  %3771 = lshr i16 %3770, 8
  %3772 = trunc nuw i16 %3771 to i8
  store i64 %3768, ptr %3633, align 8, !tbaa !33
  %3773 = getelementptr inbounds nuw i8, ptr %3769, i64 %3763
  store i8 %3772, ptr %3773, align 1, !tbaa !28
  %3774 = load i32, ptr %2969, align 4, !tbaa !26
  %3775 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3774), !nosanitize !32
  %3776 = extractvalue { i32, i1 } %3775, 1, !nosanitize !32
  br i1 %3776, label %3752, label %3777, !prof !34, !nosanitize !32

3777:                                             ; preds = %3767
  %3778 = extractvalue { i32, i1 } %3775, 0, !nosanitize !32
  %3779 = lshr i32 %3748, %3778
  %3780 = trunc nuw i32 %3779 to i16
  store i16 %3780, ptr %3632, align 8, !tbaa !25
  %3781 = add nsw i32 %3744, -16
  %3782 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3774, i32 %3781), !nosanitize !32
  %3783 = extractvalue { i32, i1 } %3782, 1, !nosanitize !32
  br i1 %3783, label %3766, label %3787, !prof !34, !nosanitize !32

3784:                                             ; preds = %3739
  %3785 = add nsw i32 %3741, %3744
  %3786 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3785, 0
  br label %3787

3787:                                             ; preds = %3784, %3777
  %3788 = phi i16 [ %3780, %3777 ], [ %3751, %3784 ]
  %3789 = phi { i32, i1 } [ %3782, %3777 ], [ %3786, %3784 ]
  %3790 = extractvalue { i32, i1 } %3789, 0
  store i32 %3790, ptr %2969, align 4, !tbaa !26
  %3791 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3742, i32 -1)
  %3792 = extractvalue { i32, i1 } %3791, 1, !nosanitize !32
  br i1 %3792, label %3752, label %3793, !prof !34, !nosanitize !32

3793:                                             ; preds = %3787
  %3794 = extractvalue { i32, i1 } %3791, 0, !nosanitize !32
  %3795 = icmp eq i32 %3794, 0
  br i1 %3795, label %4130, label %3739, !llvm.loop !81

3796:                                             ; preds = %3733
  %3797 = icmp eq i32 %3715, 0
  br i1 %3797, label %3944, label %3798

3798:                                             ; preds = %3796
  %3799 = icmp eq i32 %3715, %3714
  br i1 %3799, label %3851, label %3800

3800:                                             ; preds = %3798
  %3801 = zext nneg i32 %3715 to i64
  %3802 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %3703, i64 0, i64 %3801
  %3803 = getelementptr inbounds nuw i8, ptr %3802, i64 2
  %3804 = load i16, ptr %3803, align 2, !tbaa !28
  %3805 = zext i16 %3804 to i32
  %3806 = sub nsw i32 16, %3805
  %3807 = icmp sgt i32 %3712, %3806
  %3808 = load i16, ptr %3802, align 4, !tbaa !28
  %3809 = zext i16 %3808 to i32
  %3810 = shl i32 %3809, %3712
  %3811 = trunc i32 %3810 to i16
  %3812 = or i16 %3711, %3811
  store i16 %3812, ptr %3632, align 8, !tbaa !25
  br i1 %3807, label %3813, label %3844

3813:                                             ; preds = %3800
  %3814 = load i64, ptr %3633, align 8, !tbaa !33
  %3815 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3814, i64 1), !nosanitize !32
  %3816 = extractvalue { i64, i1 } %3815, 1, !nosanitize !32
  br i1 %3816, label %3817, label %3818, !prof !34, !nosanitize !32

3817:                                             ; preds = %3813
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3818:                                             ; preds = %3813
  %3819 = extractvalue { i64, i1 } %3815, 0, !nosanitize !32
  %3820 = load ptr, ptr %3634, align 8, !tbaa !35
  %3821 = trunc i16 %3812 to i8
  store i64 %3819, ptr %3633, align 8, !tbaa !33
  %3822 = getelementptr inbounds nuw i8, ptr %3820, i64 %3814
  store i8 %3821, ptr %3822, align 1, !tbaa !28
  %3823 = load i64, ptr %3633, align 8, !tbaa !33
  %3824 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3823, i64 1), !nosanitize !32
  %3825 = extractvalue { i64, i1 } %3824, 1, !nosanitize !32
  br i1 %3825, label %3826, label %3827, !prof !34, !nosanitize !32

3826:                                             ; preds = %3837, %3818
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3827:                                             ; preds = %3818
  %3828 = extractvalue { i64, i1 } %3824, 0, !nosanitize !32
  %3829 = load ptr, ptr %3634, align 8, !tbaa !35
  %3830 = load i16, ptr %3632, align 8, !tbaa !25
  %3831 = lshr i16 %3830, 8
  %3832 = trunc nuw i16 %3831 to i8
  store i64 %3828, ptr %3633, align 8, !tbaa !33
  %3833 = getelementptr inbounds nuw i8, ptr %3829, i64 %3823
  store i8 %3832, ptr %3833, align 1, !tbaa !28
  %3834 = load i32, ptr %2969, align 4, !tbaa !26
  %3835 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3834), !nosanitize !32
  %3836 = extractvalue { i32, i1 } %3835, 1, !nosanitize !32
  br i1 %3836, label %3752, label %3837, !prof !34, !nosanitize !32

3837:                                             ; preds = %3827
  %3838 = extractvalue { i32, i1 } %3835, 0, !nosanitize !32
  %3839 = lshr i32 %3809, %3838
  %3840 = trunc nuw i32 %3839 to i16
  store i16 %3840, ptr %3632, align 8, !tbaa !25
  %3841 = add nsw i32 %3805, -16
  %3842 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3834, i32 %3841), !nosanitize !32
  %3843 = extractvalue { i32, i1 } %3842, 1, !nosanitize !32
  br i1 %3843, label %3826, label %3847, !prof !34, !nosanitize !32

3844:                                             ; preds = %3800
  %3845 = add nsw i32 %3712, %3805
  %3846 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3845, 0
  br label %3847

3847:                                             ; preds = %3844, %3837
  %3848 = phi i16 [ %3840, %3837 ], [ %3812, %3844 ]
  %3849 = phi { i32, i1 } [ %3842, %3837 ], [ %3846, %3844 ]
  %3850 = extractvalue { i32, i1 } %3849, 0
  store i32 %3850, ptr %2969, align 4, !tbaa !26
  br label %3851

3851:                                             ; preds = %3847, %3798
  %3852 = phi i16 [ %3848, %3847 ], [ %3711, %3798 ]
  %3853 = phi i32 [ %3850, %3847 ], [ %3712, %3798 ]
  %3854 = phi i32 [ %3716, %3847 ], [ %3729, %3798 ]
  %3855 = load i16, ptr %3705, align 2, !tbaa !28
  %3856 = zext i16 %3855 to i32
  %3857 = sub nsw i32 16, %3856
  %3858 = icmp sgt i32 %3853, %3857
  %3859 = load i16, ptr %3704, align 4, !tbaa !28
  %3860 = zext i16 %3859 to i32
  %3861 = shl i32 %3860, %3853
  %3862 = trunc i32 %3861 to i16
  %3863 = or i16 %3852, %3862
  store i16 %3863, ptr %3632, align 8, !tbaa !25
  br i1 %3858, label %3864, label %3895

3864:                                             ; preds = %3851
  %3865 = load i64, ptr %3633, align 8, !tbaa !33
  %3866 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3865, i64 1), !nosanitize !32
  %3867 = extractvalue { i64, i1 } %3866, 1, !nosanitize !32
  br i1 %3867, label %3868, label %3869, !prof !34, !nosanitize !32

3868:                                             ; preds = %3864
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3869:                                             ; preds = %3864
  %3870 = extractvalue { i64, i1 } %3866, 0, !nosanitize !32
  %3871 = load ptr, ptr %3634, align 8, !tbaa !35
  %3872 = trunc i16 %3863 to i8
  store i64 %3870, ptr %3633, align 8, !tbaa !33
  %3873 = getelementptr inbounds nuw i8, ptr %3871, i64 %3865
  store i8 %3872, ptr %3873, align 1, !tbaa !28
  %3874 = load i64, ptr %3633, align 8, !tbaa !33
  %3875 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3874, i64 1), !nosanitize !32
  %3876 = extractvalue { i64, i1 } %3875, 1, !nosanitize !32
  br i1 %3876, label %3877, label %3878, !prof !34, !nosanitize !32

3877:                                             ; preds = %3888, %3869
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3878:                                             ; preds = %3869
  %3879 = extractvalue { i64, i1 } %3875, 0, !nosanitize !32
  %3880 = load ptr, ptr %3634, align 8, !tbaa !35
  %3881 = load i16, ptr %3632, align 8, !tbaa !25
  %3882 = lshr i16 %3881, 8
  %3883 = trunc nuw i16 %3882 to i8
  store i64 %3879, ptr %3633, align 8, !tbaa !33
  %3884 = getelementptr inbounds nuw i8, ptr %3880, i64 %3874
  store i8 %3883, ptr %3884, align 1, !tbaa !28
  %3885 = load i32, ptr %2969, align 4, !tbaa !26
  %3886 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3885), !nosanitize !32
  %3887 = extractvalue { i32, i1 } %3886, 1, !nosanitize !32
  br i1 %3887, label %3752, label %3888, !prof !34, !nosanitize !32

3888:                                             ; preds = %3878
  %3889 = extractvalue { i32, i1 } %3886, 0, !nosanitize !32
  %3890 = lshr i32 %3860, %3889
  %3891 = trunc nuw i32 %3890 to i16
  store i16 %3891, ptr %3632, align 8, !tbaa !25
  %3892 = add nsw i32 %3856, -16
  %3893 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3885, i32 %3892), !nosanitize !32
  %3894 = extractvalue { i32, i1 } %3893, 1, !nosanitize !32
  br i1 %3894, label %3877, label %3898, !prof !34, !nosanitize !32

3895:                                             ; preds = %3851
  %3896 = add nsw i32 %3853, %3856
  %3897 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3896, 0
  br label %3898

3898:                                             ; preds = %3895, %3888
  %3899 = phi i16 [ %3891, %3888 ], [ %3863, %3895 ]
  %3900 = phi { i32, i1 } [ %3893, %3888 ], [ %3897, %3895 ]
  %3901 = extractvalue { i32, i1 } %3900, 0
  store i32 %3901, ptr %2969, align 4, !tbaa !26
  %3902 = icmp sgt i32 %3901, 14
  %3903 = add i32 %3854, 65533
  br i1 %3902, label %3904, label %3938

3904:                                             ; preds = %3898
  %3905 = and i32 %3903, 65535
  %3906 = shl i32 %3903, %3901
  %3907 = trunc i32 %3906 to i16
  %3908 = or i16 %3899, %3907
  store i16 %3908, ptr %3632, align 8, !tbaa !25
  %3909 = load i64, ptr %3633, align 8, !tbaa !33
  %3910 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3909, i64 1), !nosanitize !32
  %3911 = extractvalue { i64, i1 } %3910, 1, !nosanitize !32
  br i1 %3911, label %3912, label %3913, !prof !34, !nosanitize !32

3912:                                             ; preds = %3904
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3913:                                             ; preds = %3904
  %3914 = extractvalue { i64, i1 } %3910, 0, !nosanitize !32
  %3915 = load ptr, ptr %3634, align 8, !tbaa !35
  %3916 = trunc i16 %3908 to i8
  store i64 %3914, ptr %3633, align 8, !tbaa !33
  %3917 = getelementptr inbounds nuw i8, ptr %3915, i64 %3909
  store i8 %3916, ptr %3917, align 1, !tbaa !28
  %3918 = load i64, ptr %3633, align 8, !tbaa !33
  %3919 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3918, i64 1), !nosanitize !32
  %3920 = extractvalue { i64, i1 } %3919, 1, !nosanitize !32
  br i1 %3920, label %3921, label %3922, !prof !34, !nosanitize !32

3921:                                             ; preds = %3932, %3913
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3922:                                             ; preds = %3913
  %3923 = extractvalue { i64, i1 } %3919, 0, !nosanitize !32
  %3924 = load ptr, ptr %3634, align 8, !tbaa !35
  %3925 = load i16, ptr %3632, align 8, !tbaa !25
  %3926 = lshr i16 %3925, 8
  %3927 = trunc nuw i16 %3926 to i8
  store i64 %3923, ptr %3633, align 8, !tbaa !33
  %3928 = getelementptr inbounds nuw i8, ptr %3924, i64 %3918
  store i8 %3927, ptr %3928, align 1, !tbaa !28
  %3929 = load i32, ptr %2969, align 4, !tbaa !26
  %3930 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3929), !nosanitize !32
  %3931 = extractvalue { i32, i1 } %3930, 1, !nosanitize !32
  br i1 %3931, label %3752, label %3932, !prof !34, !nosanitize !32

3932:                                             ; preds = %3922
  %3933 = extractvalue { i32, i1 } %3930, 0, !nosanitize !32
  %3934 = lshr i32 %3905, %3933
  %3935 = trunc nuw i32 %3934 to i16
  store i16 %3935, ptr %3632, align 8, !tbaa !25
  %3936 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3929, i32 -14), !nosanitize !32
  %3937 = extractvalue { i32, i1 } %3936, 1, !nosanitize !32
  br i1 false, label %3921, label %4126, !prof !34, !nosanitize !32

3938:                                             ; preds = %3898
  %3939 = shl i32 %3903, %3901
  %3940 = trunc i32 %3939 to i16
  %3941 = or i16 %3899, %3940
  store i16 %3941, ptr %3632, align 8, !tbaa !25
  %3942 = add nsw i32 %3901, 2
  %3943 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3942, 0
  br label %4126

3944:                                             ; preds = %3796
  %3945 = icmp slt i32 %3716, 10
  br i1 %3945, label %3946, label %4036

3946:                                             ; preds = %3944
  %3947 = load i16, ptr %3709, align 2, !tbaa !28
  %3948 = zext i16 %3947 to i32
  %3949 = sub nsw i32 16, %3948
  %3950 = icmp sgt i32 %3712, %3949
  %3951 = load i16, ptr %3708, align 4, !tbaa !28
  %3952 = zext i16 %3951 to i32
  %3953 = shl i32 %3952, %3712
  %3954 = trunc i32 %3953 to i16
  %3955 = or i16 %3711, %3954
  store i16 %3955, ptr %3632, align 8, !tbaa !25
  br i1 %3950, label %3956, label %3987

3956:                                             ; preds = %3946
  %3957 = load i64, ptr %3633, align 8, !tbaa !33
  %3958 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3957, i64 1), !nosanitize !32
  %3959 = extractvalue { i64, i1 } %3958, 1, !nosanitize !32
  br i1 %3959, label %3960, label %3961, !prof !34, !nosanitize !32

3960:                                             ; preds = %3956
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3961:                                             ; preds = %3956
  %3962 = extractvalue { i64, i1 } %3958, 0, !nosanitize !32
  %3963 = load ptr, ptr %3634, align 8, !tbaa !35
  %3964 = trunc i16 %3955 to i8
  store i64 %3962, ptr %3633, align 8, !tbaa !33
  %3965 = getelementptr inbounds nuw i8, ptr %3963, i64 %3957
  store i8 %3964, ptr %3965, align 1, !tbaa !28
  %3966 = load i64, ptr %3633, align 8, !tbaa !33
  %3967 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3966, i64 1), !nosanitize !32
  %3968 = extractvalue { i64, i1 } %3967, 1, !nosanitize !32
  br i1 %3968, label %3969, label %3970, !prof !34, !nosanitize !32

3969:                                             ; preds = %3980, %3961
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3970:                                             ; preds = %3961
  %3971 = extractvalue { i64, i1 } %3967, 0, !nosanitize !32
  %3972 = load ptr, ptr %3634, align 8, !tbaa !35
  %3973 = load i16, ptr %3632, align 8, !tbaa !25
  %3974 = lshr i16 %3973, 8
  %3975 = trunc nuw i16 %3974 to i8
  store i64 %3971, ptr %3633, align 8, !tbaa !33
  %3976 = getelementptr inbounds nuw i8, ptr %3972, i64 %3966
  store i8 %3975, ptr %3976, align 1, !tbaa !28
  %3977 = load i32, ptr %2969, align 4, !tbaa !26
  %3978 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3977), !nosanitize !32
  %3979 = extractvalue { i32, i1 } %3978, 1, !nosanitize !32
  br i1 %3979, label %3752, label %3980, !prof !34, !nosanitize !32

3980:                                             ; preds = %3970
  %3981 = extractvalue { i32, i1 } %3978, 0, !nosanitize !32
  %3982 = lshr i32 %3952, %3981
  %3983 = trunc nuw i32 %3982 to i16
  store i16 %3983, ptr %3632, align 8, !tbaa !25
  %3984 = add nsw i32 %3948, -16
  %3985 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3977, i32 %3984), !nosanitize !32
  %3986 = extractvalue { i32, i1 } %3985, 1, !nosanitize !32
  br i1 %3986, label %3969, label %3990, !prof !34, !nosanitize !32

3987:                                             ; preds = %3946
  %3988 = add nsw i32 %3712, %3948
  %3989 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3988, 0
  br label %3990

3990:                                             ; preds = %3987, %3980
  %3991 = phi i16 [ %3983, %3980 ], [ %3955, %3987 ]
  %3992 = phi { i32, i1 } [ %3985, %3980 ], [ %3989, %3987 ]
  %3993 = extractvalue { i32, i1 } %3992, 0
  store i32 %3993, ptr %2969, align 4, !tbaa !26
  %3994 = icmp sgt i32 %3993, 13
  %3995 = add nsw i32 %3716, 65534
  br i1 %3994, label %3996, label %4030

3996:                                             ; preds = %3990
  %3997 = and i32 %3995, 65535
  %3998 = shl i32 %3995, %3993
  %3999 = trunc i32 %3998 to i16
  %4000 = or i16 %3991, %3999
  store i16 %4000, ptr %3632, align 8, !tbaa !25
  %4001 = load i64, ptr %3633, align 8, !tbaa !33
  %4002 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4001, i64 1), !nosanitize !32
  %4003 = extractvalue { i64, i1 } %4002, 1, !nosanitize !32
  br i1 %4003, label %4004, label %4005, !prof !34, !nosanitize !32

4004:                                             ; preds = %3996
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4005:                                             ; preds = %3996
  %4006 = extractvalue { i64, i1 } %4002, 0, !nosanitize !32
  %4007 = load ptr, ptr %3634, align 8, !tbaa !35
  %4008 = trunc i16 %4000 to i8
  store i64 %4006, ptr %3633, align 8, !tbaa !33
  %4009 = getelementptr inbounds nuw i8, ptr %4007, i64 %4001
  store i8 %4008, ptr %4009, align 1, !tbaa !28
  %4010 = load i64, ptr %3633, align 8, !tbaa !33
  %4011 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4010, i64 1), !nosanitize !32
  %4012 = extractvalue { i64, i1 } %4011, 1, !nosanitize !32
  br i1 %4012, label %4013, label %4014, !prof !34, !nosanitize !32

4013:                                             ; preds = %4024, %4005
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4014:                                             ; preds = %4005
  %4015 = extractvalue { i64, i1 } %4011, 0, !nosanitize !32
  %4016 = load ptr, ptr %3634, align 8, !tbaa !35
  %4017 = load i16, ptr %3632, align 8, !tbaa !25
  %4018 = lshr i16 %4017, 8
  %4019 = trunc nuw i16 %4018 to i8
  store i64 %4015, ptr %3633, align 8, !tbaa !33
  %4020 = getelementptr inbounds nuw i8, ptr %4016, i64 %4010
  store i8 %4019, ptr %4020, align 1, !tbaa !28
  %4021 = load i32, ptr %2969, align 4, !tbaa !26
  %4022 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4021), !nosanitize !32
  %4023 = extractvalue { i32, i1 } %4022, 1, !nosanitize !32
  br i1 %4023, label %3752, label %4024, !prof !34, !nosanitize !32

4024:                                             ; preds = %4014
  %4025 = extractvalue { i32, i1 } %4022, 0, !nosanitize !32
  %4026 = lshr i32 %3997, %4025
  %4027 = trunc nuw i32 %4026 to i16
  store i16 %4027, ptr %3632, align 8, !tbaa !25
  %4028 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4021, i32 -13), !nosanitize !32
  %4029 = extractvalue { i32, i1 } %4028, 1, !nosanitize !32
  br i1 false, label %4013, label %4126, !prof !34, !nosanitize !32

4030:                                             ; preds = %3990
  %4031 = shl i32 %3995, %3993
  %4032 = trunc i32 %4031 to i16
  %4033 = or i16 %3991, %4032
  store i16 %4033, ptr %3632, align 8, !tbaa !25
  %4034 = add nsw i32 %3993, 3
  %4035 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4034, 0
  br label %4126

4036:                                             ; preds = %3944
  %4037 = load i16, ptr %3707, align 2, !tbaa !28
  %4038 = zext i16 %4037 to i32
  %4039 = sub nsw i32 16, %4038
  %4040 = icmp sgt i32 %3712, %4039
  %4041 = load i16, ptr %3706, align 4, !tbaa !28
  %4042 = zext i16 %4041 to i32
  %4043 = shl i32 %4042, %3712
  %4044 = trunc i32 %4043 to i16
  %4045 = or i16 %3711, %4044
  store i16 %4045, ptr %3632, align 8, !tbaa !25
  br i1 %4040, label %4046, label %4077

4046:                                             ; preds = %4036
  %4047 = load i64, ptr %3633, align 8, !tbaa !33
  %4048 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4047, i64 1), !nosanitize !32
  %4049 = extractvalue { i64, i1 } %4048, 1, !nosanitize !32
  br i1 %4049, label %4050, label %4051, !prof !34, !nosanitize !32

4050:                                             ; preds = %4046
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4051:                                             ; preds = %4046
  %4052 = extractvalue { i64, i1 } %4048, 0, !nosanitize !32
  %4053 = load ptr, ptr %3634, align 8, !tbaa !35
  %4054 = trunc i16 %4045 to i8
  store i64 %4052, ptr %3633, align 8, !tbaa !33
  %4055 = getelementptr inbounds nuw i8, ptr %4053, i64 %4047
  store i8 %4054, ptr %4055, align 1, !tbaa !28
  %4056 = load i64, ptr %3633, align 8, !tbaa !33
  %4057 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4056, i64 1), !nosanitize !32
  %4058 = extractvalue { i64, i1 } %4057, 1, !nosanitize !32
  br i1 %4058, label %4059, label %4060, !prof !34, !nosanitize !32

4059:                                             ; preds = %4070, %4051
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4060:                                             ; preds = %4051
  %4061 = extractvalue { i64, i1 } %4057, 0, !nosanitize !32
  %4062 = load ptr, ptr %3634, align 8, !tbaa !35
  %4063 = load i16, ptr %3632, align 8, !tbaa !25
  %4064 = lshr i16 %4063, 8
  %4065 = trunc nuw i16 %4064 to i8
  store i64 %4061, ptr %3633, align 8, !tbaa !33
  %4066 = getelementptr inbounds nuw i8, ptr %4062, i64 %4056
  store i8 %4065, ptr %4066, align 1, !tbaa !28
  %4067 = load i32, ptr %2969, align 4, !tbaa !26
  %4068 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4067), !nosanitize !32
  %4069 = extractvalue { i32, i1 } %4068, 1, !nosanitize !32
  br i1 %4069, label %3752, label %4070, !prof !34, !nosanitize !32

4070:                                             ; preds = %4060
  %4071 = extractvalue { i32, i1 } %4068, 0, !nosanitize !32
  %4072 = lshr i32 %4042, %4071
  %4073 = trunc nuw i32 %4072 to i16
  store i16 %4073, ptr %3632, align 8, !tbaa !25
  %4074 = add nsw i32 %4038, -16
  %4075 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4067, i32 %4074), !nosanitize !32
  %4076 = extractvalue { i32, i1 } %4075, 1, !nosanitize !32
  br i1 %4076, label %4059, label %4080, !prof !34, !nosanitize !32

4077:                                             ; preds = %4036
  %4078 = add nsw i32 %3712, %4038
  %4079 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4078, 0
  br label %4080

4080:                                             ; preds = %4077, %4070
  %4081 = phi i16 [ %4073, %4070 ], [ %4045, %4077 ]
  %4082 = phi { i32, i1 } [ %4075, %4070 ], [ %4079, %4077 ]
  %4083 = extractvalue { i32, i1 } %4082, 0
  store i32 %4083, ptr %2969, align 4, !tbaa !26
  %4084 = icmp sgt i32 %4083, 9
  %4085 = add nuw i32 %3716, 65526
  br i1 %4084, label %4086, label %4120

4086:                                             ; preds = %4080
  %4087 = and i32 %4085, 65535
  %4088 = shl i32 %4085, %4083
  %4089 = trunc i32 %4088 to i16
  %4090 = or i16 %4081, %4089
  store i16 %4090, ptr %3632, align 8, !tbaa !25
  %4091 = load i64, ptr %3633, align 8, !tbaa !33
  %4092 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4091, i64 1), !nosanitize !32
  %4093 = extractvalue { i64, i1 } %4092, 1, !nosanitize !32
  br i1 %4093, label %4094, label %4095, !prof !34, !nosanitize !32

4094:                                             ; preds = %4086
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4095:                                             ; preds = %4086
  %4096 = extractvalue { i64, i1 } %4092, 0, !nosanitize !32
  %4097 = load ptr, ptr %3634, align 8, !tbaa !35
  %4098 = trunc i16 %4090 to i8
  store i64 %4096, ptr %3633, align 8, !tbaa !33
  %4099 = getelementptr inbounds nuw i8, ptr %4097, i64 %4091
  store i8 %4098, ptr %4099, align 1, !tbaa !28
  %4100 = load i64, ptr %3633, align 8, !tbaa !33
  %4101 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4100, i64 1), !nosanitize !32
  %4102 = extractvalue { i64, i1 } %4101, 1, !nosanitize !32
  br i1 %4102, label %4103, label %4104, !prof !34, !nosanitize !32

4103:                                             ; preds = %4114, %4095
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4104:                                             ; preds = %4095
  %4105 = extractvalue { i64, i1 } %4101, 0, !nosanitize !32
  %4106 = load ptr, ptr %3634, align 8, !tbaa !35
  %4107 = load i16, ptr %3632, align 8, !tbaa !25
  %4108 = lshr i16 %4107, 8
  %4109 = trunc nuw i16 %4108 to i8
  store i64 %4105, ptr %3633, align 8, !tbaa !33
  %4110 = getelementptr inbounds nuw i8, ptr %4106, i64 %4100
  store i8 %4109, ptr %4110, align 1, !tbaa !28
  %4111 = load i32, ptr %2969, align 4, !tbaa !26
  %4112 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4111), !nosanitize !32
  %4113 = extractvalue { i32, i1 } %4112, 1, !nosanitize !32
  br i1 %4113, label %3752, label %4114, !prof !34, !nosanitize !32

4114:                                             ; preds = %4104
  %4115 = extractvalue { i32, i1 } %4112, 0, !nosanitize !32
  %4116 = lshr i32 %4087, %4115
  %4117 = trunc nuw i32 %4116 to i16
  store i16 %4117, ptr %3632, align 8, !tbaa !25
  %4118 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4111, i32 -9), !nosanitize !32
  %4119 = extractvalue { i32, i1 } %4118, 1, !nosanitize !32
  br i1 false, label %4103, label %4126, !prof !34, !nosanitize !32

4120:                                             ; preds = %4080
  %4121 = shl i32 %4085, %4083
  %4122 = trunc i32 %4121 to i16
  %4123 = or i16 %4081, %4122
  store i16 %4123, ptr %3632, align 8, !tbaa !25
  %4124 = add nsw i32 %4083, 7
  %4125 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4124, 0
  br label %4126

4126:                                             ; preds = %4120, %4114, %4030, %4024, %3938, %3932
  %4127 = phi i16 [ %3935, %3932 ], [ %3941, %3938 ], [ %4027, %4024 ], [ %4033, %4030 ], [ %4117, %4114 ], [ %4123, %4120 ]
  %4128 = phi { i32, i1 } [ %3936, %3932 ], [ %3943, %3938 ], [ %4028, %4024 ], [ %4035, %4030 ], [ %4118, %4114 ], [ %4125, %4120 ]
  %4129 = extractvalue { i32, i1 } %4128, 0
  store i32 %4129, ptr %2969, align 4, !tbaa !26
  br label %4130

4130:                                             ; preds = %4126, %3793
  %4131 = phi i16 [ %4127, %4126 ], [ %3788, %3793 ]
  %4132 = phi i32 [ %4129, %4126 ], [ %3790, %3793 ]
  %4133 = icmp eq i16 %3727, 0
  br i1 %4133, label %4137, label %4134

4134:                                             ; preds = %4130
  %4135 = select i1 %3731, i32 3, i32 4
  %4136 = select i1 %3731, i32 6, i32 7
  br label %4137

4137:                                             ; preds = %4134, %4130, %3723
  %4138 = phi i16 [ %3711, %3723 ], [ %4131, %4130 ], [ %4131, %4134 ]
  %4139 = phi i32 [ %3712, %3723 ], [ %4132, %4130 ], [ %4132, %4134 ]
  %4140 = phi i32 [ %3718, %3723 ], [ 3, %4130 ], [ %4135, %4134 ]
  %4141 = phi i32 [ %3717, %3723 ], [ 138, %4130 ], [ %4136, %4134 ]
  %4142 = phi i32 [ %3729, %3723 ], [ 0, %4130 ], [ 0, %4134 ]
  %4143 = phi i32 [ %3714, %3723 ], [ %3715, %4130 ], [ %3715, %4134 ]
  %4144 = icmp sgt i32 %3720, %3694
  br i1 %4144, label %4145, label %3710, !llvm.loop !82

4145:                                             ; preds = %4137, %3693
  %4146 = phi i16 [ %3685, %3693 ], [ %4138, %4137 ]
  %4147 = phi i32 [ %3687, %3693 ], [ %4139, %4137 ]
  br i1 false, label %3474, label %4148, !prof !34, !nosanitize !32

4148:                                             ; preds = %4145
  %4149 = extractvalue { i32, i1 } %3528, 0, !nosanitize !32
  %4150 = icmp slt i32 %4149, 0
  br i1 %4150, label %4600, label %4151

4151:                                             ; preds = %4148
  %4152 = getelementptr i8, ptr %0, i64 2506
  %4153 = load i16, ptr %4152, align 2, !tbaa !28
  %4154 = icmp eq i16 %4153, 0
  %4155 = select i1 %4154, i32 138, i32 7
  %4156 = select i1 %4154, i32 3, i32 4
  %4157 = zext i16 %4153 to i32
  %4158 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %4159 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %4160 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %4161 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %4162 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %4163 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %4164 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %4165

4165:                                             ; preds = %4592, %4151
  %4166 = phi i16 [ %4146, %4151 ], [ %4593, %4592 ]
  %4167 = phi i32 [ %4147, %4151 ], [ %4594, %4592 ]
  %4168 = phi i32 [ 0, %4151 ], [ %4175, %4592 ]
  %4169 = phi i32 [ -1, %4151 ], [ %4598, %4592 ]
  %4170 = phi i32 [ %4157, %4151 ], [ %4183, %4592 ]
  %4171 = phi i32 [ 0, %4151 ], [ %4597, %4592 ]
  %4172 = phi i32 [ %4155, %4151 ], [ %4596, %4592 ]
  %4173 = phi i32 [ %4156, %4151 ], [ %4595, %4592 ]
  %4174 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4168, i32 1), !nosanitize !32
  %4175 = extractvalue { i32, i1 } %4174, 0, !nosanitize !32
  %4176 = extractvalue { i32, i1 } %4174, 1, !nosanitize !32
  br i1 false, label %4177, label %4178, !prof !34, !nosanitize !32

4177:                                             ; preds = %4165
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !32
  unreachable, !nosanitize !32

4178:                                             ; preds = %4165
  %4179 = sext i32 %4175 to i64
  %4180 = shl nsw i64 %4179, 2
  %4181 = getelementptr i8, ptr %4152, i64 %4180
  %4182 = load i16, ptr %4181, align 2, !tbaa !28
  %4183 = zext i16 %4182 to i32
  %4184 = add nsw i32 %4171, 1
  %4185 = icmp slt i32 %4184, %4172
  %4186 = icmp eq i32 %4170, %4183
  %4187 = select i1 %4185, i1 %4186, i1 false
  br i1 %4187, label %4592, label %4188

4188:                                             ; preds = %4178
  %4189 = icmp slt i32 %4184, %4173
  br i1 %4189, label %4190, label %4251

4190:                                             ; preds = %4188
  %4191 = zext nneg i32 %4170 to i64
  %4192 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %4158, i64 0, i64 %4191
  %4193 = getelementptr inbounds nuw i8, ptr %4192, i64 2
  br label %4194

4194:                                             ; preds = %4248, %4190
  %4195 = phi i16 [ %4243, %4248 ], [ %4166, %4190 ]
  %4196 = phi i32 [ %4245, %4248 ], [ %4167, %4190 ]
  %4197 = phi i32 [ %4249, %4248 ], [ %4184, %4190 ]
  %4198 = load i16, ptr %4193, align 2, !tbaa !28
  %4199 = zext i16 %4198 to i32
  %4200 = sub nsw i32 16, %4199
  %4201 = icmp sgt i32 %4196, %4200
  %4202 = load i16, ptr %4192, align 4, !tbaa !28
  %4203 = zext i16 %4202 to i32
  %4204 = shl i32 %4203, %4196
  %4205 = trunc i32 %4204 to i16
  %4206 = or i16 %4195, %4205
  store i16 %4206, ptr %3632, align 8, !tbaa !25
  br i1 %4201, label %4208, label %4239

4207:                                             ; preds = %4559, %4515, %4469, %4425, %4377, %4333, %4282, %4242, %4222
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

4208:                                             ; preds = %4194
  %4209 = load i64, ptr %3633, align 8, !tbaa !33
  %4210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4209, i64 1), !nosanitize !32
  %4211 = extractvalue { i64, i1 } %4210, 1, !nosanitize !32
  br i1 %4211, label %4212, label %4213, !prof !34, !nosanitize !32

4212:                                             ; preds = %4208
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4213:                                             ; preds = %4208
  %4214 = extractvalue { i64, i1 } %4210, 0, !nosanitize !32
  %4215 = load ptr, ptr %3634, align 8, !tbaa !35
  %4216 = trunc i16 %4206 to i8
  store i64 %4214, ptr %3633, align 8, !tbaa !33
  %4217 = getelementptr inbounds nuw i8, ptr %4215, i64 %4209
  store i8 %4216, ptr %4217, align 1, !tbaa !28
  %4218 = load i64, ptr %3633, align 8, !tbaa !33
  %4219 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4218, i64 1), !nosanitize !32
  %4220 = extractvalue { i64, i1 } %4219, 1, !nosanitize !32
  br i1 %4220, label %4221, label %4222, !prof !34, !nosanitize !32

4221:                                             ; preds = %4232, %4213
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4222:                                             ; preds = %4213
  %4223 = extractvalue { i64, i1 } %4219, 0, !nosanitize !32
  %4224 = load ptr, ptr %3634, align 8, !tbaa !35
  %4225 = load i16, ptr %3632, align 8, !tbaa !25
  %4226 = lshr i16 %4225, 8
  %4227 = trunc nuw i16 %4226 to i8
  store i64 %4223, ptr %3633, align 8, !tbaa !33
  %4228 = getelementptr inbounds nuw i8, ptr %4224, i64 %4218
  store i8 %4227, ptr %4228, align 1, !tbaa !28
  %4229 = load i32, ptr %2969, align 4, !tbaa !26
  %4230 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4229), !nosanitize !32
  %4231 = extractvalue { i32, i1 } %4230, 1, !nosanitize !32
  br i1 %4231, label %4207, label %4232, !prof !34, !nosanitize !32

4232:                                             ; preds = %4222
  %4233 = extractvalue { i32, i1 } %4230, 0, !nosanitize !32
  %4234 = lshr i32 %4203, %4233
  %4235 = trunc nuw i32 %4234 to i16
  store i16 %4235, ptr %3632, align 8, !tbaa !25
  %4236 = add nsw i32 %4199, -16
  %4237 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4229, i32 %4236), !nosanitize !32
  %4238 = extractvalue { i32, i1 } %4237, 1, !nosanitize !32
  br i1 %4238, label %4221, label %4242, !prof !34, !nosanitize !32

4239:                                             ; preds = %4194
  %4240 = add nsw i32 %4196, %4199
  %4241 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4240, 0
  br label %4242

4242:                                             ; preds = %4239, %4232
  %4243 = phi i16 [ %4235, %4232 ], [ %4206, %4239 ]
  %4244 = phi { i32, i1 } [ %4237, %4232 ], [ %4241, %4239 ]
  %4245 = extractvalue { i32, i1 } %4244, 0
  store i32 %4245, ptr %2969, align 4, !tbaa !26
  %4246 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4197, i32 -1)
  %4247 = extractvalue { i32, i1 } %4246, 1, !nosanitize !32
  br i1 %4247, label %4207, label %4248, !prof !34, !nosanitize !32

4248:                                             ; preds = %4242
  %4249 = extractvalue { i32, i1 } %4246, 0, !nosanitize !32
  %4250 = icmp eq i32 %4249, 0
  br i1 %4250, label %4585, label %4194, !llvm.loop !81

4251:                                             ; preds = %4188
  %4252 = icmp eq i32 %4170, 0
  br i1 %4252, label %4399, label %4253

4253:                                             ; preds = %4251
  %4254 = icmp eq i32 %4170, %4169
  br i1 %4254, label %4306, label %4255

4255:                                             ; preds = %4253
  %4256 = zext nneg i32 %4170 to i64
  %4257 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %4158, i64 0, i64 %4256
  %4258 = getelementptr inbounds nuw i8, ptr %4257, i64 2
  %4259 = load i16, ptr %4258, align 2, !tbaa !28
  %4260 = zext i16 %4259 to i32
  %4261 = sub nsw i32 16, %4260
  %4262 = icmp sgt i32 %4167, %4261
  %4263 = load i16, ptr %4257, align 4, !tbaa !28
  %4264 = zext i16 %4263 to i32
  %4265 = shl i32 %4264, %4167
  %4266 = trunc i32 %4265 to i16
  %4267 = or i16 %4166, %4266
  store i16 %4267, ptr %3632, align 8, !tbaa !25
  br i1 %4262, label %4268, label %4299

4268:                                             ; preds = %4255
  %4269 = load i64, ptr %3633, align 8, !tbaa !33
  %4270 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4269, i64 1), !nosanitize !32
  %4271 = extractvalue { i64, i1 } %4270, 1, !nosanitize !32
  br i1 %4271, label %4272, label %4273, !prof !34, !nosanitize !32

4272:                                             ; preds = %4268
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4273:                                             ; preds = %4268
  %4274 = extractvalue { i64, i1 } %4270, 0, !nosanitize !32
  %4275 = load ptr, ptr %3634, align 8, !tbaa !35
  %4276 = trunc i16 %4267 to i8
  store i64 %4274, ptr %3633, align 8, !tbaa !33
  %4277 = getelementptr inbounds nuw i8, ptr %4275, i64 %4269
  store i8 %4276, ptr %4277, align 1, !tbaa !28
  %4278 = load i64, ptr %3633, align 8, !tbaa !33
  %4279 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4278, i64 1), !nosanitize !32
  %4280 = extractvalue { i64, i1 } %4279, 1, !nosanitize !32
  br i1 %4280, label %4281, label %4282, !prof !34, !nosanitize !32

4281:                                             ; preds = %4292, %4273
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4282:                                             ; preds = %4273
  %4283 = extractvalue { i64, i1 } %4279, 0, !nosanitize !32
  %4284 = load ptr, ptr %3634, align 8, !tbaa !35
  %4285 = load i16, ptr %3632, align 8, !tbaa !25
  %4286 = lshr i16 %4285, 8
  %4287 = trunc nuw i16 %4286 to i8
  store i64 %4283, ptr %3633, align 8, !tbaa !33
  %4288 = getelementptr inbounds nuw i8, ptr %4284, i64 %4278
  store i8 %4287, ptr %4288, align 1, !tbaa !28
  %4289 = load i32, ptr %2969, align 4, !tbaa !26
  %4290 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4289), !nosanitize !32
  %4291 = extractvalue { i32, i1 } %4290, 1, !nosanitize !32
  br i1 %4291, label %4207, label %4292, !prof !34, !nosanitize !32

4292:                                             ; preds = %4282
  %4293 = extractvalue { i32, i1 } %4290, 0, !nosanitize !32
  %4294 = lshr i32 %4264, %4293
  %4295 = trunc nuw i32 %4294 to i16
  store i16 %4295, ptr %3632, align 8, !tbaa !25
  %4296 = add nsw i32 %4260, -16
  %4297 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4289, i32 %4296), !nosanitize !32
  %4298 = extractvalue { i32, i1 } %4297, 1, !nosanitize !32
  br i1 %4298, label %4281, label %4302, !prof !34, !nosanitize !32

4299:                                             ; preds = %4255
  %4300 = add nsw i32 %4167, %4260
  %4301 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4300, 0
  br label %4302

4302:                                             ; preds = %4299, %4292
  %4303 = phi i16 [ %4295, %4292 ], [ %4267, %4299 ]
  %4304 = phi { i32, i1 } [ %4297, %4292 ], [ %4301, %4299 ]
  %4305 = extractvalue { i32, i1 } %4304, 0
  store i32 %4305, ptr %2969, align 4, !tbaa !26
  br label %4306

4306:                                             ; preds = %4302, %4253
  %4307 = phi i16 [ %4303, %4302 ], [ %4166, %4253 ]
  %4308 = phi i32 [ %4305, %4302 ], [ %4167, %4253 ]
  %4309 = phi i32 [ %4171, %4302 ], [ %4184, %4253 ]
  %4310 = load i16, ptr %4160, align 2, !tbaa !28
  %4311 = zext i16 %4310 to i32
  %4312 = sub nsw i32 16, %4311
  %4313 = icmp sgt i32 %4308, %4312
  %4314 = load i16, ptr %4159, align 4, !tbaa !28
  %4315 = zext i16 %4314 to i32
  %4316 = shl i32 %4315, %4308
  %4317 = trunc i32 %4316 to i16
  %4318 = or i16 %4307, %4317
  store i16 %4318, ptr %3632, align 8, !tbaa !25
  br i1 %4313, label %4319, label %4350

4319:                                             ; preds = %4306
  %4320 = load i64, ptr %3633, align 8, !tbaa !33
  %4321 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4320, i64 1), !nosanitize !32
  %4322 = extractvalue { i64, i1 } %4321, 1, !nosanitize !32
  br i1 %4322, label %4323, label %4324, !prof !34, !nosanitize !32

4323:                                             ; preds = %4319
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4324:                                             ; preds = %4319
  %4325 = extractvalue { i64, i1 } %4321, 0, !nosanitize !32
  %4326 = load ptr, ptr %3634, align 8, !tbaa !35
  %4327 = trunc i16 %4318 to i8
  store i64 %4325, ptr %3633, align 8, !tbaa !33
  %4328 = getelementptr inbounds nuw i8, ptr %4326, i64 %4320
  store i8 %4327, ptr %4328, align 1, !tbaa !28
  %4329 = load i64, ptr %3633, align 8, !tbaa !33
  %4330 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4329, i64 1), !nosanitize !32
  %4331 = extractvalue { i64, i1 } %4330, 1, !nosanitize !32
  br i1 %4331, label %4332, label %4333, !prof !34, !nosanitize !32

4332:                                             ; preds = %4343, %4324
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4333:                                             ; preds = %4324
  %4334 = extractvalue { i64, i1 } %4330, 0, !nosanitize !32
  %4335 = load ptr, ptr %3634, align 8, !tbaa !35
  %4336 = load i16, ptr %3632, align 8, !tbaa !25
  %4337 = lshr i16 %4336, 8
  %4338 = trunc nuw i16 %4337 to i8
  store i64 %4334, ptr %3633, align 8, !tbaa !33
  %4339 = getelementptr inbounds nuw i8, ptr %4335, i64 %4329
  store i8 %4338, ptr %4339, align 1, !tbaa !28
  %4340 = load i32, ptr %2969, align 4, !tbaa !26
  %4341 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4340), !nosanitize !32
  %4342 = extractvalue { i32, i1 } %4341, 1, !nosanitize !32
  br i1 %4342, label %4207, label %4343, !prof !34, !nosanitize !32

4343:                                             ; preds = %4333
  %4344 = extractvalue { i32, i1 } %4341, 0, !nosanitize !32
  %4345 = lshr i32 %4315, %4344
  %4346 = trunc nuw i32 %4345 to i16
  store i16 %4346, ptr %3632, align 8, !tbaa !25
  %4347 = add nsw i32 %4311, -16
  %4348 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4340, i32 %4347), !nosanitize !32
  %4349 = extractvalue { i32, i1 } %4348, 1, !nosanitize !32
  br i1 %4349, label %4332, label %4353, !prof !34, !nosanitize !32

4350:                                             ; preds = %4306
  %4351 = add nsw i32 %4308, %4311
  %4352 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4351, 0
  br label %4353

4353:                                             ; preds = %4350, %4343
  %4354 = phi i16 [ %4346, %4343 ], [ %4318, %4350 ]
  %4355 = phi { i32, i1 } [ %4348, %4343 ], [ %4352, %4350 ]
  %4356 = extractvalue { i32, i1 } %4355, 0
  store i32 %4356, ptr %2969, align 4, !tbaa !26
  %4357 = icmp sgt i32 %4356, 14
  %4358 = add i32 %4309, 65533
  br i1 %4357, label %4359, label %4393

4359:                                             ; preds = %4353
  %4360 = and i32 %4358, 65535
  %4361 = shl i32 %4358, %4356
  %4362 = trunc i32 %4361 to i16
  %4363 = or i16 %4354, %4362
  store i16 %4363, ptr %3632, align 8, !tbaa !25
  %4364 = load i64, ptr %3633, align 8, !tbaa !33
  %4365 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4364, i64 1), !nosanitize !32
  %4366 = extractvalue { i64, i1 } %4365, 1, !nosanitize !32
  br i1 %4366, label %4367, label %4368, !prof !34, !nosanitize !32

4367:                                             ; preds = %4359
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4368:                                             ; preds = %4359
  %4369 = extractvalue { i64, i1 } %4365, 0, !nosanitize !32
  %4370 = load ptr, ptr %3634, align 8, !tbaa !35
  %4371 = trunc i16 %4363 to i8
  store i64 %4369, ptr %3633, align 8, !tbaa !33
  %4372 = getelementptr inbounds nuw i8, ptr %4370, i64 %4364
  store i8 %4371, ptr %4372, align 1, !tbaa !28
  %4373 = load i64, ptr %3633, align 8, !tbaa !33
  %4374 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4373, i64 1), !nosanitize !32
  %4375 = extractvalue { i64, i1 } %4374, 1, !nosanitize !32
  br i1 %4375, label %4376, label %4377, !prof !34, !nosanitize !32

4376:                                             ; preds = %4387, %4368
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4377:                                             ; preds = %4368
  %4378 = extractvalue { i64, i1 } %4374, 0, !nosanitize !32
  %4379 = load ptr, ptr %3634, align 8, !tbaa !35
  %4380 = load i16, ptr %3632, align 8, !tbaa !25
  %4381 = lshr i16 %4380, 8
  %4382 = trunc nuw i16 %4381 to i8
  store i64 %4378, ptr %3633, align 8, !tbaa !33
  %4383 = getelementptr inbounds nuw i8, ptr %4379, i64 %4373
  store i8 %4382, ptr %4383, align 1, !tbaa !28
  %4384 = load i32, ptr %2969, align 4, !tbaa !26
  %4385 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4384), !nosanitize !32
  %4386 = extractvalue { i32, i1 } %4385, 1, !nosanitize !32
  br i1 %4386, label %4207, label %4387, !prof !34, !nosanitize !32

4387:                                             ; preds = %4377
  %4388 = extractvalue { i32, i1 } %4385, 0, !nosanitize !32
  %4389 = lshr i32 %4360, %4388
  %4390 = trunc nuw i32 %4389 to i16
  store i16 %4390, ptr %3632, align 8, !tbaa !25
  %4391 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4384, i32 -14), !nosanitize !32
  %4392 = extractvalue { i32, i1 } %4391, 1, !nosanitize !32
  br i1 false, label %4376, label %4581, !prof !34, !nosanitize !32

4393:                                             ; preds = %4353
  %4394 = shl i32 %4358, %4356
  %4395 = trunc i32 %4394 to i16
  %4396 = or i16 %4354, %4395
  store i16 %4396, ptr %3632, align 8, !tbaa !25
  %4397 = add nsw i32 %4356, 2
  %4398 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4397, 0
  br label %4581

4399:                                             ; preds = %4251
  %4400 = icmp slt i32 %4171, 10
  br i1 %4400, label %4401, label %4491

4401:                                             ; preds = %4399
  %4402 = load i16, ptr %4164, align 2, !tbaa !28
  %4403 = zext i16 %4402 to i32
  %4404 = sub nsw i32 16, %4403
  %4405 = icmp sgt i32 %4167, %4404
  %4406 = load i16, ptr %4163, align 4, !tbaa !28
  %4407 = zext i16 %4406 to i32
  %4408 = shl i32 %4407, %4167
  %4409 = trunc i32 %4408 to i16
  %4410 = or i16 %4166, %4409
  store i16 %4410, ptr %3632, align 8, !tbaa !25
  br i1 %4405, label %4411, label %4442

4411:                                             ; preds = %4401
  %4412 = load i64, ptr %3633, align 8, !tbaa !33
  %4413 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4412, i64 1), !nosanitize !32
  %4414 = extractvalue { i64, i1 } %4413, 1, !nosanitize !32
  br i1 %4414, label %4415, label %4416, !prof !34, !nosanitize !32

4415:                                             ; preds = %4411
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4416:                                             ; preds = %4411
  %4417 = extractvalue { i64, i1 } %4413, 0, !nosanitize !32
  %4418 = load ptr, ptr %3634, align 8, !tbaa !35
  %4419 = trunc i16 %4410 to i8
  store i64 %4417, ptr %3633, align 8, !tbaa !33
  %4420 = getelementptr inbounds nuw i8, ptr %4418, i64 %4412
  store i8 %4419, ptr %4420, align 1, !tbaa !28
  %4421 = load i64, ptr %3633, align 8, !tbaa !33
  %4422 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4421, i64 1), !nosanitize !32
  %4423 = extractvalue { i64, i1 } %4422, 1, !nosanitize !32
  br i1 %4423, label %4424, label %4425, !prof !34, !nosanitize !32

4424:                                             ; preds = %4435, %4416
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4425:                                             ; preds = %4416
  %4426 = extractvalue { i64, i1 } %4422, 0, !nosanitize !32
  %4427 = load ptr, ptr %3634, align 8, !tbaa !35
  %4428 = load i16, ptr %3632, align 8, !tbaa !25
  %4429 = lshr i16 %4428, 8
  %4430 = trunc nuw i16 %4429 to i8
  store i64 %4426, ptr %3633, align 8, !tbaa !33
  %4431 = getelementptr inbounds nuw i8, ptr %4427, i64 %4421
  store i8 %4430, ptr %4431, align 1, !tbaa !28
  %4432 = load i32, ptr %2969, align 4, !tbaa !26
  %4433 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4432), !nosanitize !32
  %4434 = extractvalue { i32, i1 } %4433, 1, !nosanitize !32
  br i1 %4434, label %4207, label %4435, !prof !34, !nosanitize !32

4435:                                             ; preds = %4425
  %4436 = extractvalue { i32, i1 } %4433, 0, !nosanitize !32
  %4437 = lshr i32 %4407, %4436
  %4438 = trunc nuw i32 %4437 to i16
  store i16 %4438, ptr %3632, align 8, !tbaa !25
  %4439 = add nsw i32 %4403, -16
  %4440 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4432, i32 %4439), !nosanitize !32
  %4441 = extractvalue { i32, i1 } %4440, 1, !nosanitize !32
  br i1 %4441, label %4424, label %4445, !prof !34, !nosanitize !32

4442:                                             ; preds = %4401
  %4443 = add nsw i32 %4167, %4403
  %4444 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4443, 0
  br label %4445

4445:                                             ; preds = %4442, %4435
  %4446 = phi i16 [ %4438, %4435 ], [ %4410, %4442 ]
  %4447 = phi { i32, i1 } [ %4440, %4435 ], [ %4444, %4442 ]
  %4448 = extractvalue { i32, i1 } %4447, 0
  store i32 %4448, ptr %2969, align 4, !tbaa !26
  %4449 = icmp sgt i32 %4448, 13
  %4450 = add nsw i32 %4171, 65534
  br i1 %4449, label %4451, label %4485

4451:                                             ; preds = %4445
  %4452 = and i32 %4450, 65535
  %4453 = shl i32 %4450, %4448
  %4454 = trunc i32 %4453 to i16
  %4455 = or i16 %4446, %4454
  store i16 %4455, ptr %3632, align 8, !tbaa !25
  %4456 = load i64, ptr %3633, align 8, !tbaa !33
  %4457 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4456, i64 1), !nosanitize !32
  %4458 = extractvalue { i64, i1 } %4457, 1, !nosanitize !32
  br i1 %4458, label %4459, label %4460, !prof !34, !nosanitize !32

4459:                                             ; preds = %4451
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4460:                                             ; preds = %4451
  %4461 = extractvalue { i64, i1 } %4457, 0, !nosanitize !32
  %4462 = load ptr, ptr %3634, align 8, !tbaa !35
  %4463 = trunc i16 %4455 to i8
  store i64 %4461, ptr %3633, align 8, !tbaa !33
  %4464 = getelementptr inbounds nuw i8, ptr %4462, i64 %4456
  store i8 %4463, ptr %4464, align 1, !tbaa !28
  %4465 = load i64, ptr %3633, align 8, !tbaa !33
  %4466 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4465, i64 1), !nosanitize !32
  %4467 = extractvalue { i64, i1 } %4466, 1, !nosanitize !32
  br i1 %4467, label %4468, label %4469, !prof !34, !nosanitize !32

4468:                                             ; preds = %4479, %4460
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4469:                                             ; preds = %4460
  %4470 = extractvalue { i64, i1 } %4466, 0, !nosanitize !32
  %4471 = load ptr, ptr %3634, align 8, !tbaa !35
  %4472 = load i16, ptr %3632, align 8, !tbaa !25
  %4473 = lshr i16 %4472, 8
  %4474 = trunc nuw i16 %4473 to i8
  store i64 %4470, ptr %3633, align 8, !tbaa !33
  %4475 = getelementptr inbounds nuw i8, ptr %4471, i64 %4465
  store i8 %4474, ptr %4475, align 1, !tbaa !28
  %4476 = load i32, ptr %2969, align 4, !tbaa !26
  %4477 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4476), !nosanitize !32
  %4478 = extractvalue { i32, i1 } %4477, 1, !nosanitize !32
  br i1 %4478, label %4207, label %4479, !prof !34, !nosanitize !32

4479:                                             ; preds = %4469
  %4480 = extractvalue { i32, i1 } %4477, 0, !nosanitize !32
  %4481 = lshr i32 %4452, %4480
  %4482 = trunc nuw i32 %4481 to i16
  store i16 %4482, ptr %3632, align 8, !tbaa !25
  %4483 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4476, i32 -13), !nosanitize !32
  %4484 = extractvalue { i32, i1 } %4483, 1, !nosanitize !32
  br i1 false, label %4468, label %4581, !prof !34, !nosanitize !32

4485:                                             ; preds = %4445
  %4486 = shl i32 %4450, %4448
  %4487 = trunc i32 %4486 to i16
  %4488 = or i16 %4446, %4487
  store i16 %4488, ptr %3632, align 8, !tbaa !25
  %4489 = add nsw i32 %4448, 3
  %4490 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4489, 0
  br label %4581

4491:                                             ; preds = %4399
  %4492 = load i16, ptr %4162, align 2, !tbaa !28
  %4493 = zext i16 %4492 to i32
  %4494 = sub nsw i32 16, %4493
  %4495 = icmp sgt i32 %4167, %4494
  %4496 = load i16, ptr %4161, align 4, !tbaa !28
  %4497 = zext i16 %4496 to i32
  %4498 = shl i32 %4497, %4167
  %4499 = trunc i32 %4498 to i16
  %4500 = or i16 %4166, %4499
  store i16 %4500, ptr %3632, align 8, !tbaa !25
  br i1 %4495, label %4501, label %4532

4501:                                             ; preds = %4491
  %4502 = load i64, ptr %3633, align 8, !tbaa !33
  %4503 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4502, i64 1), !nosanitize !32
  %4504 = extractvalue { i64, i1 } %4503, 1, !nosanitize !32
  br i1 %4504, label %4505, label %4506, !prof !34, !nosanitize !32

4505:                                             ; preds = %4501
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4506:                                             ; preds = %4501
  %4507 = extractvalue { i64, i1 } %4503, 0, !nosanitize !32
  %4508 = load ptr, ptr %3634, align 8, !tbaa !35
  %4509 = trunc i16 %4500 to i8
  store i64 %4507, ptr %3633, align 8, !tbaa !33
  %4510 = getelementptr inbounds nuw i8, ptr %4508, i64 %4502
  store i8 %4509, ptr %4510, align 1, !tbaa !28
  %4511 = load i64, ptr %3633, align 8, !tbaa !33
  %4512 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4511, i64 1), !nosanitize !32
  %4513 = extractvalue { i64, i1 } %4512, 1, !nosanitize !32
  br i1 %4513, label %4514, label %4515, !prof !34, !nosanitize !32

4514:                                             ; preds = %4525, %4506
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4515:                                             ; preds = %4506
  %4516 = extractvalue { i64, i1 } %4512, 0, !nosanitize !32
  %4517 = load ptr, ptr %3634, align 8, !tbaa !35
  %4518 = load i16, ptr %3632, align 8, !tbaa !25
  %4519 = lshr i16 %4518, 8
  %4520 = trunc nuw i16 %4519 to i8
  store i64 %4516, ptr %3633, align 8, !tbaa !33
  %4521 = getelementptr inbounds nuw i8, ptr %4517, i64 %4511
  store i8 %4520, ptr %4521, align 1, !tbaa !28
  %4522 = load i32, ptr %2969, align 4, !tbaa !26
  %4523 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4522), !nosanitize !32
  %4524 = extractvalue { i32, i1 } %4523, 1, !nosanitize !32
  br i1 %4524, label %4207, label %4525, !prof !34, !nosanitize !32

4525:                                             ; preds = %4515
  %4526 = extractvalue { i32, i1 } %4523, 0, !nosanitize !32
  %4527 = lshr i32 %4497, %4526
  %4528 = trunc nuw i32 %4527 to i16
  store i16 %4528, ptr %3632, align 8, !tbaa !25
  %4529 = add nsw i32 %4493, -16
  %4530 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4522, i32 %4529), !nosanitize !32
  %4531 = extractvalue { i32, i1 } %4530, 1, !nosanitize !32
  br i1 %4531, label %4514, label %4535, !prof !34, !nosanitize !32

4532:                                             ; preds = %4491
  %4533 = add nsw i32 %4167, %4493
  %4534 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4533, 0
  br label %4535

4535:                                             ; preds = %4532, %4525
  %4536 = phi i16 [ %4528, %4525 ], [ %4500, %4532 ]
  %4537 = phi { i32, i1 } [ %4530, %4525 ], [ %4534, %4532 ]
  %4538 = extractvalue { i32, i1 } %4537, 0
  store i32 %4538, ptr %2969, align 4, !tbaa !26
  %4539 = icmp sgt i32 %4538, 9
  %4540 = add nuw i32 %4171, 65526
  br i1 %4539, label %4541, label %4575

4541:                                             ; preds = %4535
  %4542 = and i32 %4540, 65535
  %4543 = shl i32 %4540, %4538
  %4544 = trunc i32 %4543 to i16
  %4545 = or i16 %4536, %4544
  store i16 %4545, ptr %3632, align 8, !tbaa !25
  %4546 = load i64, ptr %3633, align 8, !tbaa !33
  %4547 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4546, i64 1), !nosanitize !32
  %4548 = extractvalue { i64, i1 } %4547, 1, !nosanitize !32
  br i1 %4548, label %4549, label %4550, !prof !34, !nosanitize !32

4549:                                             ; preds = %4541
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4550:                                             ; preds = %4541
  %4551 = extractvalue { i64, i1 } %4547, 0, !nosanitize !32
  %4552 = load ptr, ptr %3634, align 8, !tbaa !35
  %4553 = trunc i16 %4545 to i8
  store i64 %4551, ptr %3633, align 8, !tbaa !33
  %4554 = getelementptr inbounds nuw i8, ptr %4552, i64 %4546
  store i8 %4553, ptr %4554, align 1, !tbaa !28
  %4555 = load i64, ptr %3633, align 8, !tbaa !33
  %4556 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4555, i64 1), !nosanitize !32
  %4557 = extractvalue { i64, i1 } %4556, 1, !nosanitize !32
  br i1 %4557, label %4558, label %4559, !prof !34, !nosanitize !32

4558:                                             ; preds = %4569, %4550
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4559:                                             ; preds = %4550
  %4560 = extractvalue { i64, i1 } %4556, 0, !nosanitize !32
  %4561 = load ptr, ptr %3634, align 8, !tbaa !35
  %4562 = load i16, ptr %3632, align 8, !tbaa !25
  %4563 = lshr i16 %4562, 8
  %4564 = trunc nuw i16 %4563 to i8
  store i64 %4560, ptr %3633, align 8, !tbaa !33
  %4565 = getelementptr inbounds nuw i8, ptr %4561, i64 %4555
  store i8 %4564, ptr %4565, align 1, !tbaa !28
  %4566 = load i32, ptr %2969, align 4, !tbaa !26
  %4567 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4566), !nosanitize !32
  %4568 = extractvalue { i32, i1 } %4567, 1, !nosanitize !32
  br i1 %4568, label %4207, label %4569, !prof !34, !nosanitize !32

4569:                                             ; preds = %4559
  %4570 = extractvalue { i32, i1 } %4567, 0, !nosanitize !32
  %4571 = lshr i32 %4542, %4570
  %4572 = trunc nuw i32 %4571 to i16
  store i16 %4572, ptr %3632, align 8, !tbaa !25
  %4573 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4566, i32 -9), !nosanitize !32
  %4574 = extractvalue { i32, i1 } %4573, 1, !nosanitize !32
  br i1 false, label %4558, label %4581, !prof !34, !nosanitize !32

4575:                                             ; preds = %4535
  %4576 = shl i32 %4540, %4538
  %4577 = trunc i32 %4576 to i16
  %4578 = or i16 %4536, %4577
  store i16 %4578, ptr %3632, align 8, !tbaa !25
  %4579 = add nsw i32 %4538, 7
  %4580 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4579, 0
  br label %4581

4581:                                             ; preds = %4575, %4569, %4485, %4479, %4393, %4387
  %4582 = phi i16 [ %4390, %4387 ], [ %4396, %4393 ], [ %4482, %4479 ], [ %4488, %4485 ], [ %4572, %4569 ], [ %4578, %4575 ]
  %4583 = phi { i32, i1 } [ %4391, %4387 ], [ %4398, %4393 ], [ %4483, %4479 ], [ %4490, %4485 ], [ %4573, %4569 ], [ %4580, %4575 ]
  %4584 = extractvalue { i32, i1 } %4583, 0
  store i32 %4584, ptr %2969, align 4, !tbaa !26
  br label %4585

4585:                                             ; preds = %4581, %4248
  %4586 = phi i16 [ %4582, %4581 ], [ %4243, %4248 ]
  %4587 = phi i32 [ %4584, %4581 ], [ %4245, %4248 ]
  %4588 = icmp eq i16 %4182, 0
  br i1 %4588, label %4592, label %4589

4589:                                             ; preds = %4585
  %4590 = select i1 %4186, i32 3, i32 4
  %4591 = select i1 %4186, i32 6, i32 7
  br label %4592

4592:                                             ; preds = %4589, %4585, %4178
  %4593 = phi i16 [ %4166, %4178 ], [ %4586, %4585 ], [ %4586, %4589 ]
  %4594 = phi i32 [ %4167, %4178 ], [ %4587, %4585 ], [ %4587, %4589 ]
  %4595 = phi i32 [ %4173, %4178 ], [ 3, %4585 ], [ %4590, %4589 ]
  %4596 = phi i32 [ %4172, %4178 ], [ 138, %4585 ], [ %4591, %4589 ]
  %4597 = phi i32 [ %4184, %4178 ], [ 0, %4585 ], [ 0, %4589 ]
  %4598 = phi i32 [ %4169, %4178 ], [ %4170, %4585 ], [ %4170, %4589 ]
  %4599 = icmp sgt i32 %4175, %4149
  br i1 %4599, label %4600, label %4165, !llvm.loop !82

4600:                                             ; preds = %4592, %4148
  %4601 = phi i16 [ %4146, %4148 ], [ %4593, %4592 ]
  %4602 = phi i32 [ %4147, %4148 ], [ %4594, %4592 ]
  %4603 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %4604 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %4605 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %4606 = load i32, ptr %4605, align 4, !tbaa !31
  %4607 = icmp eq i32 %4606, 0
  br i1 %4607, label %4938, label %4608

4608:                                             ; preds = %4600
  %4609 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %4610

4610:                                             ; preds = %4933, %4608
  %4611 = phi i16 [ %4934, %4933 ], [ %4601, %4608 ]
  %4612 = phi i32 [ %4935, %4933 ], [ %4602, %4608 ]
  %4613 = phi i32 [ %4632, %4933 ], [ 0, %4608 ]
  %4614 = load ptr, ptr %4609, align 8, !tbaa !78
  %4615 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4613, i32 2)
  %4616 = extractvalue { i32, i1 } %4615, 0, !nosanitize !32
  %4617 = extractvalue { i32, i1 } %4615, 1, !nosanitize !32
  br i1 %4617, label %4618, label %4619, !prof !34, !nosanitize !32

4618:                                             ; preds = %4610
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4619:                                             ; preds = %4610
  %4620 = add nuw i32 %4613, 1
  %4621 = zext i32 %4613 to i64
  %4622 = getelementptr inbounds nuw i8, ptr %4614, i64 %4621
  %4623 = load i8, ptr %4622, align 1, !tbaa !28
  %4624 = zext i8 %4623 to i32
  %4625 = zext i32 %4620 to i64
  %4626 = getelementptr inbounds nuw i8, ptr %4614, i64 %4625
  %4627 = load i8, ptr %4626, align 1, !tbaa !28
  %4628 = zext i8 %4627 to i32
  %4629 = shl nuw nsw i32 %4628, 8
  %4630 = or disjoint i32 %4629, %4624
  %4631 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4616, i32 1), !nosanitize !32
  %4632 = extractvalue { i32, i1 } %4631, 0, !nosanitize !32
  %4633 = extractvalue { i32, i1 } %4631, 1, !nosanitize !32
  br i1 %4633, label %4634, label %4635, !prof !34, !nosanitize !32

4634:                                             ; preds = %4619
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4635:                                             ; preds = %4619
  %4636 = zext i32 %4616 to i64
  %4637 = getelementptr inbounds nuw i8, ptr %4614, i64 %4636
  %4638 = load i8, ptr %4637, align 1, !tbaa !28
  %4639 = zext i8 %4638 to i32
  %4640 = icmp eq i32 %4630, 0
  %4641 = zext i8 %4638 to i64
  br i1 %4640, label %4642, label %4689

4642:                                             ; preds = %4635
  %4643 = getelementptr inbounds nuw %struct.ct_data_s, ptr %4603, i64 %4641
  %4644 = getelementptr inbounds nuw i8, ptr %4643, i64 2
  %4645 = load i16, ptr %4644, align 2, !tbaa !28
  %4646 = zext i16 %4645 to i32
  %4647 = sub nsw i32 16, %4646
  %4648 = icmp sgt i32 %4612, %4647
  %4649 = load i16, ptr %4643, align 2, !tbaa !28
  %4650 = zext i16 %4649 to i32
  %4651 = shl i32 %4650, %4612
  %4652 = trunc i32 %4651 to i16
  %4653 = or i16 %4611, %4652
  store i16 %4653, ptr %3632, align 8, !tbaa !25
  br i1 %4648, label %4655, label %4686

4654:                                             ; preds = %4787, %4777, %4753, %4747, %4719, %4669
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

4655:                                             ; preds = %4642
  %4656 = load i64, ptr %3633, align 8, !tbaa !33
  %4657 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4656, i64 1), !nosanitize !32
  %4658 = extractvalue { i64, i1 } %4657, 1, !nosanitize !32
  br i1 %4658, label %4659, label %4660, !prof !34, !nosanitize !32

4659:                                             ; preds = %4655
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4660:                                             ; preds = %4655
  %4661 = extractvalue { i64, i1 } %4657, 0, !nosanitize !32
  %4662 = load ptr, ptr %3634, align 8, !tbaa !35
  %4663 = trunc i16 %4653 to i8
  store i64 %4661, ptr %3633, align 8, !tbaa !33
  %4664 = getelementptr inbounds nuw i8, ptr %4662, i64 %4656
  store i8 %4663, ptr %4664, align 1, !tbaa !28
  %4665 = load i64, ptr %3633, align 8, !tbaa !33
  %4666 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4665, i64 1), !nosanitize !32
  %4667 = extractvalue { i64, i1 } %4666, 1, !nosanitize !32
  br i1 %4667, label %4668, label %4669, !prof !34, !nosanitize !32

4668:                                             ; preds = %4679, %4660
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4669:                                             ; preds = %4660
  %4670 = extractvalue { i64, i1 } %4666, 0, !nosanitize !32
  %4671 = load ptr, ptr %3634, align 8, !tbaa !35
  %4672 = load i16, ptr %3632, align 8, !tbaa !25
  %4673 = lshr i16 %4672, 8
  %4674 = trunc nuw i16 %4673 to i8
  store i64 %4670, ptr %3633, align 8, !tbaa !33
  %4675 = getelementptr inbounds nuw i8, ptr %4671, i64 %4665
  store i8 %4674, ptr %4675, align 1, !tbaa !28
  %4676 = load i32, ptr %2969, align 4, !tbaa !26
  %4677 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4676), !nosanitize !32
  %4678 = extractvalue { i32, i1 } %4677, 1, !nosanitize !32
  br i1 %4678, label %4654, label %4679, !prof !34, !nosanitize !32

4679:                                             ; preds = %4669
  %4680 = extractvalue { i32, i1 } %4677, 0, !nosanitize !32
  %4681 = lshr i32 %4650, %4680
  %4682 = trunc nuw i32 %4681 to i16
  store i16 %4682, ptr %3632, align 8, !tbaa !25
  %4683 = add nsw i32 %4646, -16
  %4684 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4676, i32 %4683), !nosanitize !32
  %4685 = extractvalue { i32, i1 } %4684, 1, !nosanitize !32
  br i1 %4685, label %4668, label %4929, !prof !34, !nosanitize !32

4686:                                             ; preds = %4642
  %4687 = add nsw i32 %4612, %4646
  %4688 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4687, 0
  br label %4929

4689:                                             ; preds = %4635
  %4690 = getelementptr inbounds nuw [256 x i8], ptr @_length_code, i64 0, i64 %4641
  %4691 = load i8, ptr %4690, align 1, !tbaa !28
  %4692 = zext i8 %4691 to i64
  %4693 = getelementptr inbounds nuw %struct.ct_data_s, ptr %4603, i64 %4692
  %4694 = getelementptr inbounds nuw i8, ptr %4693, i64 1028
  %4695 = getelementptr inbounds nuw i8, ptr %4693, i64 1030
  %4696 = load i16, ptr %4695, align 2, !tbaa !28
  %4697 = zext i16 %4696 to i32
  %4698 = sub nsw i32 16, %4697
  %4699 = icmp sgt i32 %4612, %4698
  %4700 = load i16, ptr %4694, align 2, !tbaa !28
  %4701 = zext i16 %4700 to i32
  %4702 = shl i32 %4701, %4612
  %4703 = trunc i32 %4702 to i16
  %4704 = or i16 %4611, %4703
  store i16 %4704, ptr %3632, align 8, !tbaa !25
  br i1 %4699, label %4705, label %4736

4705:                                             ; preds = %4689
  %4706 = load i64, ptr %3633, align 8, !tbaa !33
  %4707 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4706, i64 1), !nosanitize !32
  %4708 = extractvalue { i64, i1 } %4707, 1, !nosanitize !32
  br i1 %4708, label %4709, label %4710, !prof !34, !nosanitize !32

4709:                                             ; preds = %4705
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4710:                                             ; preds = %4705
  %4711 = extractvalue { i64, i1 } %4707, 0, !nosanitize !32
  %4712 = load ptr, ptr %3634, align 8, !tbaa !35
  %4713 = trunc i16 %4704 to i8
  store i64 %4711, ptr %3633, align 8, !tbaa !33
  %4714 = getelementptr inbounds nuw i8, ptr %4712, i64 %4706
  store i8 %4713, ptr %4714, align 1, !tbaa !28
  %4715 = load i64, ptr %3633, align 8, !tbaa !33
  %4716 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4715, i64 1), !nosanitize !32
  %4717 = extractvalue { i64, i1 } %4716, 1, !nosanitize !32
  br i1 %4717, label %4718, label %4719, !prof !34, !nosanitize !32

4718:                                             ; preds = %4729, %4710
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4719:                                             ; preds = %4710
  %4720 = extractvalue { i64, i1 } %4716, 0, !nosanitize !32
  %4721 = load ptr, ptr %3634, align 8, !tbaa !35
  %4722 = load i16, ptr %3632, align 8, !tbaa !25
  %4723 = lshr i16 %4722, 8
  %4724 = trunc nuw i16 %4723 to i8
  store i64 %4720, ptr %3633, align 8, !tbaa !33
  %4725 = getelementptr inbounds nuw i8, ptr %4721, i64 %4715
  store i8 %4724, ptr %4725, align 1, !tbaa !28
  %4726 = load i32, ptr %2969, align 4, !tbaa !26
  %4727 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4726), !nosanitize !32
  %4728 = extractvalue { i32, i1 } %4727, 1, !nosanitize !32
  br i1 %4728, label %4654, label %4729, !prof !34, !nosanitize !32

4729:                                             ; preds = %4719
  %4730 = extractvalue { i32, i1 } %4727, 0, !nosanitize !32
  %4731 = lshr i32 %4701, %4730
  %4732 = trunc nuw i32 %4731 to i16
  store i16 %4732, ptr %3632, align 8, !tbaa !25
  %4733 = add nsw i32 %4697, -16
  %4734 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4726, i32 %4733), !nosanitize !32
  %4735 = extractvalue { i32, i1 } %4734, 1, !nosanitize !32
  br i1 %4735, label %4718, label %4739, !prof !34, !nosanitize !32

4736:                                             ; preds = %4689
  %4737 = add nsw i32 %4612, %4697
  %4738 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4737, 0
  br label %4739

4739:                                             ; preds = %4736, %4729
  %4740 = phi i16 [ %4732, %4729 ], [ %4704, %4736 ]
  %4741 = phi { i32, i1 } [ %4734, %4729 ], [ %4738, %4736 ]
  %4742 = extractvalue { i32, i1 } %4741, 0
  store i32 %4742, ptr %2969, align 4, !tbaa !26
  %4743 = getelementptr inbounds nuw [29 x i32], ptr @extra_lbits, i64 0, i64 %4692
  %4744 = load i32, ptr %4743, align 4, !tbaa !50
  %4745 = add nsw i64 %4692, -28
  %4746 = icmp ult i64 %4745, -20
  br i1 %4746, label %4807, label %4747

4747:                                             ; preds = %4739
  %4748 = getelementptr inbounds nuw [29 x i32], ptr @base_length, i64 0, i64 %4692
  %4749 = load i32, ptr %4748, align 4, !tbaa !50
  %4750 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4639, i32 %4749), !nosanitize !32
  %4751 = extractvalue { i32, i1 } %4750, 0, !nosanitize !32
  %4752 = extractvalue { i32, i1 } %4750, 1, !nosanitize !32
  br i1 %4752, label %4654, label %4753, !prof !34, !nosanitize !32

4753:                                             ; preds = %4747
  %4754 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4744), !nosanitize !32
  %4755 = extractvalue { i32, i1 } %4754, 1, !nosanitize !32
  br i1 %4755, label %4654, label %4756, !prof !34, !nosanitize !32

4756:                                             ; preds = %4753
  %4757 = extractvalue { i32, i1 } %4754, 0, !nosanitize !32
  %4758 = icmp sgt i32 %4742, %4757
  br i1 %4758, label %4759, label %4797

4759:                                             ; preds = %4756
  %4760 = and i32 %4751, 65535
  %4761 = shl i32 %4751, %4742
  %4762 = trunc i32 %4761 to i16
  %4763 = or i16 %4740, %4762
  store i16 %4763, ptr %3632, align 8, !tbaa !25
  %4764 = load i64, ptr %3633, align 8, !tbaa !33
  %4765 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4764, i64 1), !nosanitize !32
  %4766 = extractvalue { i64, i1 } %4765, 1, !nosanitize !32
  br i1 %4766, label %4767, label %4768, !prof !34, !nosanitize !32

4767:                                             ; preds = %4759
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4768:                                             ; preds = %4759
  %4769 = extractvalue { i64, i1 } %4765, 0, !nosanitize !32
  %4770 = load ptr, ptr %3634, align 8, !tbaa !35
  %4771 = trunc i16 %4763 to i8
  store i64 %4769, ptr %3633, align 8, !tbaa !33
  %4772 = getelementptr inbounds nuw i8, ptr %4770, i64 %4764
  store i8 %4771, ptr %4772, align 1, !tbaa !28
  %4773 = load i64, ptr %3633, align 8, !tbaa !33
  %4774 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4773, i64 1), !nosanitize !32
  %4775 = extractvalue { i64, i1 } %4774, 1, !nosanitize !32
  br i1 %4775, label %4776, label %4777, !prof !34, !nosanitize !32

4776:                                             ; preds = %4797, %4793, %4768
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4777:                                             ; preds = %4768
  %4778 = extractvalue { i64, i1 } %4774, 0, !nosanitize !32
  %4779 = load ptr, ptr %3634, align 8, !tbaa !35
  %4780 = load i16, ptr %3632, align 8, !tbaa !25
  %4781 = lshr i16 %4780, 8
  %4782 = trunc nuw i16 %4781 to i8
  store i64 %4778, ptr %3633, align 8, !tbaa !33
  %4783 = getelementptr inbounds nuw i8, ptr %4779, i64 %4773
  store i8 %4782, ptr %4783, align 1, !tbaa !28
  %4784 = load i32, ptr %2969, align 4, !tbaa !26
  %4785 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4784), !nosanitize !32
  %4786 = extractvalue { i32, i1 } %4785, 1, !nosanitize !32
  br i1 %4786, label %4654, label %4787, !prof !34, !nosanitize !32

4787:                                             ; preds = %4777
  %4788 = extractvalue { i32, i1 } %4785, 0, !nosanitize !32
  %4789 = lshr i32 %4760, %4788
  %4790 = trunc nuw i32 %4789 to i16
  store i16 %4790, ptr %3632, align 8, !tbaa !25
  %4791 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4744, i32 -16)
  %4792 = extractvalue { i32, i1 } %4791, 1, !nosanitize !32
  br i1 false, label %4654, label %4793, !prof !34, !nosanitize !32

4793:                                             ; preds = %4787
  %4794 = extractvalue { i32, i1 } %4791, 0, !nosanitize !32
  %4795 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4784, i32 %4794), !nosanitize !32
  %4796 = extractvalue { i32, i1 } %4795, 1, !nosanitize !32
  br i1 %4796, label %4776, label %4803, !prof !34, !nosanitize !32

4797:                                             ; preds = %4756
  %4798 = shl i32 %4751, %4742
  %4799 = trunc i32 %4798 to i16
  %4800 = or i16 %4740, %4799
  store i16 %4800, ptr %3632, align 8, !tbaa !25
  %4801 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4742, i32 %4744), !nosanitize !32
  %4802 = extractvalue { i32, i1 } %4801, 1, !nosanitize !32
  br i1 %4802, label %4776, label %4803, !prof !34, !nosanitize !32

4803:                                             ; preds = %4797, %4793
  %4804 = phi i16 [ %4790, %4793 ], [ %4800, %4797 ]
  %4805 = phi { i32, i1 } [ %4795, %4793 ], [ %4801, %4797 ]
  %4806 = extractvalue { i32, i1 } %4805, 0
  store i32 %4806, ptr %2969, align 4, !tbaa !26
  br label %4807

4807:                                             ; preds = %4803, %4739
  %4808 = phi i16 [ %4804, %4803 ], [ %4740, %4739 ]
  %4809 = phi i32 [ %4806, %4803 ], [ %4742, %4739 ]
  %4810 = add nsw i32 %4630, -1
  %4811 = icmp samesign ult i32 %4630, 257
  %4812 = lshr i32 %4810, 7
  %4813 = add nuw nsw i32 %4812, 256
  %4814 = select i1 %4811, i32 %4810, i32 %4813
  %4815 = zext nneg i32 %4814 to i64
  %4816 = getelementptr inbounds nuw [512 x i8], ptr @_dist_code, i64 0, i64 %4815
  %4817 = load i8, ptr %4816, align 1, !tbaa !28
  %4818 = zext i8 %4817 to i64
  %4819 = getelementptr inbounds nuw %struct.ct_data_s, ptr %4604, i64 %4818
  %4820 = getelementptr inbounds nuw i8, ptr %4819, i64 2
  %4821 = load i16, ptr %4820, align 2, !tbaa !28
  %4822 = zext i16 %4821 to i32
  %4823 = sub nsw i32 16, %4822
  %4824 = icmp sgt i32 %4809, %4823
  %4825 = load i16, ptr %4819, align 2, !tbaa !28
  %4826 = zext i16 %4825 to i32
  %4827 = shl i32 %4826, %4809
  %4828 = trunc i32 %4827 to i16
  %4829 = or i16 %4808, %4828
  store i16 %4829, ptr %3632, align 8, !tbaa !25
  br i1 %4824, label %4831, label %4862

4830:                                             ; preds = %4845
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

4831:                                             ; preds = %4807
  %4832 = load i64, ptr %3633, align 8, !tbaa !33
  %4833 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4832, i64 1), !nosanitize !32
  %4834 = extractvalue { i64, i1 } %4833, 1, !nosanitize !32
  br i1 %4834, label %4835, label %4836, !prof !34, !nosanitize !32

4835:                                             ; preds = %4831
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4836:                                             ; preds = %4831
  %4837 = extractvalue { i64, i1 } %4833, 0, !nosanitize !32
  %4838 = load ptr, ptr %3634, align 8, !tbaa !35
  %4839 = trunc i16 %4829 to i8
  store i64 %4837, ptr %3633, align 8, !tbaa !33
  %4840 = getelementptr inbounds nuw i8, ptr %4838, i64 %4832
  store i8 %4839, ptr %4840, align 1, !tbaa !28
  %4841 = load i64, ptr %3633, align 8, !tbaa !33
  %4842 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4841, i64 1), !nosanitize !32
  %4843 = extractvalue { i64, i1 } %4842, 1, !nosanitize !32
  br i1 %4843, label %4844, label %4845, !prof !34, !nosanitize !32

4844:                                             ; preds = %4855, %4836
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4845:                                             ; preds = %4836
  %4846 = extractvalue { i64, i1 } %4842, 0, !nosanitize !32
  %4847 = load ptr, ptr %3634, align 8, !tbaa !35
  %4848 = load i16, ptr %3632, align 8, !tbaa !25
  %4849 = lshr i16 %4848, 8
  %4850 = trunc nuw i16 %4849 to i8
  store i64 %4846, ptr %3633, align 8, !tbaa !33
  %4851 = getelementptr inbounds nuw i8, ptr %4847, i64 %4841
  store i8 %4850, ptr %4851, align 1, !tbaa !28
  %4852 = load i32, ptr %2969, align 4, !tbaa !26
  %4853 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4852), !nosanitize !32
  %4854 = extractvalue { i32, i1 } %4853, 1, !nosanitize !32
  br i1 %4854, label %4830, label %4855, !prof !34, !nosanitize !32

4855:                                             ; preds = %4845
  %4856 = extractvalue { i32, i1 } %4853, 0, !nosanitize !32
  %4857 = lshr i32 %4826, %4856
  %4858 = trunc nuw i32 %4857 to i16
  store i16 %4858, ptr %3632, align 8, !tbaa !25
  %4859 = add nsw i32 %4822, -16
  %4860 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4852, i32 %4859), !nosanitize !32
  %4861 = extractvalue { i32, i1 } %4860, 1, !nosanitize !32
  br i1 %4861, label %4844, label %4865, !prof !34, !nosanitize !32

4862:                                             ; preds = %4807
  %4863 = add nsw i32 %4809, %4822
  %4864 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4863, 0
  br label %4865

4865:                                             ; preds = %4862, %4855
  %4866 = phi i16 [ %4858, %4855 ], [ %4829, %4862 ]
  %4867 = phi { i32, i1 } [ %4860, %4855 ], [ %4864, %4862 ]
  %4868 = extractvalue { i32, i1 } %4867, 0
  store i32 %4868, ptr %2969, align 4, !tbaa !26
  %4869 = getelementptr inbounds nuw [30 x i32], ptr @extra_dbits, i64 0, i64 %4818
  %4870 = load i32, ptr %4869, align 4, !tbaa !50
  %4871 = icmp ult i8 %4817, 4
  br i1 %4871, label %4933, label %4872

4872:                                             ; preds = %4865
  %4873 = getelementptr inbounds nuw [30 x i32], ptr @base_dist, i64 0, i64 %4818
  %4874 = load i32, ptr %4873, align 4, !tbaa !50
  %4875 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %4810, i32 %4874), !nosanitize !32
  %4876 = extractvalue { i32, i1 } %4875, 0, !nosanitize !32
  %4877 = extractvalue { i32, i1 } %4875, 1, !nosanitize !32
  br i1 %4877, label %4878, label %4879, !prof !34, !nosanitize !32

4878:                                             ; preds = %4966, %4913, %4903, %4879, %4872
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

4879:                                             ; preds = %4872
  %4880 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4870), !nosanitize !32
  %4881 = extractvalue { i32, i1 } %4880, 1, !nosanitize !32
  br i1 %4881, label %4878, label %4882, !prof !34, !nosanitize !32

4882:                                             ; preds = %4879
  %4883 = extractvalue { i32, i1 } %4880, 0, !nosanitize !32
  %4884 = icmp sgt i32 %4868, %4883
  br i1 %4884, label %4885, label %4923

4885:                                             ; preds = %4882
  %4886 = and i32 %4876, 65535
  %4887 = shl i32 %4876, %4868
  %4888 = trunc i32 %4887 to i16
  %4889 = or i16 %4866, %4888
  store i16 %4889, ptr %3632, align 8, !tbaa !25
  %4890 = load i64, ptr %3633, align 8, !tbaa !33
  %4891 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4890, i64 1), !nosanitize !32
  %4892 = extractvalue { i64, i1 } %4891, 1, !nosanitize !32
  br i1 %4892, label %4893, label %4894, !prof !34, !nosanitize !32

4893:                                             ; preds = %4885
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4894:                                             ; preds = %4885
  %4895 = extractvalue { i64, i1 } %4891, 0, !nosanitize !32
  %4896 = load ptr, ptr %3634, align 8, !tbaa !35
  %4897 = trunc i16 %4889 to i8
  store i64 %4895, ptr %3633, align 8, !tbaa !33
  %4898 = getelementptr inbounds nuw i8, ptr %4896, i64 %4890
  store i8 %4897, ptr %4898, align 1, !tbaa !28
  %4899 = load i64, ptr %3633, align 8, !tbaa !33
  %4900 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4899, i64 1), !nosanitize !32
  %4901 = extractvalue { i64, i1 } %4900, 1, !nosanitize !32
  br i1 %4901, label %4902, label %4903, !prof !34, !nosanitize !32

4902:                                             ; preds = %4923, %4919, %4894
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4903:                                             ; preds = %4894
  %4904 = extractvalue { i64, i1 } %4900, 0, !nosanitize !32
  %4905 = load ptr, ptr %3634, align 8, !tbaa !35
  %4906 = load i16, ptr %3632, align 8, !tbaa !25
  %4907 = lshr i16 %4906, 8
  %4908 = trunc nuw i16 %4907 to i8
  store i64 %4904, ptr %3633, align 8, !tbaa !33
  %4909 = getelementptr inbounds nuw i8, ptr %4905, i64 %4899
  store i8 %4908, ptr %4909, align 1, !tbaa !28
  %4910 = load i32, ptr %2969, align 4, !tbaa !26
  %4911 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4910), !nosanitize !32
  %4912 = extractvalue { i32, i1 } %4911, 1, !nosanitize !32
  br i1 %4912, label %4878, label %4913, !prof !34, !nosanitize !32

4913:                                             ; preds = %4903
  %4914 = extractvalue { i32, i1 } %4911, 0, !nosanitize !32
  %4915 = lshr i32 %4886, %4914
  %4916 = trunc nuw i32 %4915 to i16
  store i16 %4916, ptr %3632, align 8, !tbaa !25
  %4917 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4870, i32 -16)
  %4918 = extractvalue { i32, i1 } %4917, 1, !nosanitize !32
  br i1 false, label %4878, label %4919, !prof !34, !nosanitize !32

4919:                                             ; preds = %4913
  %4920 = extractvalue { i32, i1 } %4917, 0, !nosanitize !32
  %4921 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4910, i32 %4920), !nosanitize !32
  %4922 = extractvalue { i32, i1 } %4921, 1, !nosanitize !32
  br i1 %4922, label %4902, label %4929, !prof !34, !nosanitize !32

4923:                                             ; preds = %4882
  %4924 = shl i32 %4876, %4868
  %4925 = trunc i32 %4924 to i16
  %4926 = or i16 %4866, %4925
  store i16 %4926, ptr %3632, align 8, !tbaa !25
  %4927 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4868, i32 %4870), !nosanitize !32
  %4928 = extractvalue { i32, i1 } %4927, 1, !nosanitize !32
  br i1 %4928, label %4902, label %4929, !prof !34, !nosanitize !32

4929:                                             ; preds = %4923, %4919, %4686, %4679
  %4930 = phi i16 [ %4682, %4679 ], [ %4653, %4686 ], [ %4916, %4919 ], [ %4926, %4923 ]
  %4931 = phi { i32, i1 } [ %4684, %4679 ], [ %4688, %4686 ], [ %4921, %4919 ], [ %4927, %4923 ]
  %4932 = extractvalue { i32, i1 } %4931, 0
  store i32 %4932, ptr %2969, align 4, !tbaa !26
  br label %4933

4933:                                             ; preds = %4929, %4865
  %4934 = phi i16 [ %4866, %4865 ], [ %4930, %4929 ]
  %4935 = phi i32 [ %4868, %4865 ], [ %4932, %4929 ]
  %4936 = load i32, ptr %4605, align 4, !tbaa !31
  %4937 = icmp ult i32 %4632, %4936
  br i1 %4937, label %4610, label %4938, !llvm.loop !79

4938:                                             ; preds = %4933, %4600
  %4939 = phi i16 [ %4601, %4600 ], [ %4934, %4933 ]
  %4940 = phi i32 [ %4602, %4600 ], [ %4935, %4933 ]
  %4941 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %4942 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %4943 = load i16, ptr %4942, align 2, !tbaa !28
  %4944 = zext i16 %4943 to i32
  %4945 = sub nsw i32 16, %4944
  %4946 = icmp sgt i32 %4940, %4945
  %4947 = load i16, ptr %4941, align 2, !tbaa !28
  %4948 = zext i16 %4947 to i32
  %4949 = shl i32 %4948, %4940
  %4950 = trunc i32 %4949 to i16
  %4951 = or i16 %4939, %4950
  store i16 %4951, ptr %3632, align 8, !tbaa !25
  br i1 %4946, label %4952, label %4983

4952:                                             ; preds = %4938
  %4953 = load i64, ptr %3633, align 8, !tbaa !33
  %4954 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4953, i64 1), !nosanitize !32
  %4955 = extractvalue { i64, i1 } %4954, 1, !nosanitize !32
  br i1 %4955, label %4956, label %4957, !prof !34, !nosanitize !32

4956:                                             ; preds = %4952
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4957:                                             ; preds = %4952
  %4958 = extractvalue { i64, i1 } %4954, 0, !nosanitize !32
  %4959 = load ptr, ptr %3634, align 8, !tbaa !35
  %4960 = trunc i16 %4951 to i8
  store i64 %4958, ptr %3633, align 8, !tbaa !33
  %4961 = getelementptr inbounds nuw i8, ptr %4959, i64 %4953
  store i8 %4960, ptr %4961, align 1, !tbaa !28
  %4962 = load i64, ptr %3633, align 8, !tbaa !33
  %4963 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4962, i64 1), !nosanitize !32
  %4964 = extractvalue { i64, i1 } %4963, 1, !nosanitize !32
  br i1 %4964, label %4965, label %4966, !prof !34, !nosanitize !32

4965:                                             ; preds = %4976, %4957
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

4966:                                             ; preds = %4957
  %4967 = extractvalue { i64, i1 } %4963, 0, !nosanitize !32
  %4968 = load ptr, ptr %3634, align 8, !tbaa !35
  %4969 = load i16, ptr %3632, align 8, !tbaa !25
  %4970 = lshr i16 %4969, 8
  %4971 = trunc nuw i16 %4970 to i8
  store i64 %4967, ptr %3633, align 8, !tbaa !33
  %4972 = getelementptr inbounds nuw i8, ptr %4968, i64 %4962
  store i8 %4971, ptr %4972, align 1, !tbaa !28
  %4973 = load i32, ptr %2969, align 4, !tbaa !26
  %4974 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4973), !nosanitize !32
  %4975 = extractvalue { i32, i1 } %4974, 1, !nosanitize !32
  br i1 %4975, label %4878, label %4976, !prof !34, !nosanitize !32

4976:                                             ; preds = %4966
  %4977 = extractvalue { i32, i1 } %4974, 0, !nosanitize !32
  %4978 = lshr i32 %4948, %4977
  %4979 = trunc nuw i32 %4978 to i16
  store i16 %4979, ptr %3632, align 8, !tbaa !25
  %4980 = add nsw i32 %4944, -16
  %4981 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4973, i32 %4980), !nosanitize !32
  %4982 = extractvalue { i32, i1 } %4981, 1, !nosanitize !32
  br i1 %4982, label %4965, label %4986, !prof !34, !nosanitize !32

4983:                                             ; preds = %4938
  %4984 = add nsw i32 %4940, %4944
  %4985 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4984, 0
  br label %4986

4986:                                             ; preds = %4983, %4976
  %4987 = phi { i32, i1 } [ %4981, %4976 ], [ %4985, %4983 ]
  %4988 = extractvalue { i32, i1 } %4987, 0
  store i32 %4988, ptr %2969, align 4, !tbaa !26
  br label %4989

4989:                                             ; preds = %4986, %3398, %2965
  %4990 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %4991

4991:                                             ; preds = %4991, %4989
  %4992 = phi i64 [ 0, %4989 ], [ %4996, %4991 ]
  %4993 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %4990, i64 0, i64 %4992
  store i16 0, ptr %4993, align 4, !tbaa !28
  %4994 = or disjoint i64 %4992, 1
  %4995 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %4990, i64 0, i64 %4994
  store i16 0, ptr %4995, align 4, !tbaa !28
  %4996 = add nuw nsw i64 %4992, 2
  %4997 = icmp eq i64 %4996, 286
  br i1 %4997, label %4998, label %4991, !llvm.loop !29

4998:                                             ; preds = %4991
  %4999 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %4999, align 4, !tbaa !28
  %5000 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %5000, align 4, !tbaa !28
  %5001 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %5001, align 4, !tbaa !28
  %5002 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %5002, align 4, !tbaa !28
  %5003 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %5003, align 4, !tbaa !28
  %5004 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %5004, align 4, !tbaa !28
  %5005 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %5005, align 4, !tbaa !28
  %5006 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %5006, align 4, !tbaa !28
  %5007 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %5007, align 4, !tbaa !28
  %5008 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %5008, align 4, !tbaa !28
  %5009 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %5009, align 4, !tbaa !28
  %5010 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %5010, align 4, !tbaa !28
  %5011 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %5011, align 4, !tbaa !28
  %5012 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %5012, align 4, !tbaa !28
  %5013 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %5013, align 4, !tbaa !28
  %5014 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %5014, align 4, !tbaa !28
  %5015 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %5015, align 4, !tbaa !28
  %5016 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %5016, align 4, !tbaa !28
  %5017 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %5017, align 4, !tbaa !28
  %5018 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %5018, align 4, !tbaa !28
  %5019 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %5019, align 4, !tbaa !28
  %5020 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %5020, align 4, !tbaa !28
  %5021 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %5021, align 4, !tbaa !28
  %5022 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %5022, align 4, !tbaa !28
  %5023 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %5023, align 4, !tbaa !28
  %5024 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %5024, align 4, !tbaa !28
  %5025 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %5025, align 4, !tbaa !28
  %5026 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %5026, align 4, !tbaa !28
  %5027 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %5027, align 4, !tbaa !28
  %5028 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %5028, align 4, !tbaa !28
  %5029 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %5029, align 4, !tbaa !28
  %5030 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %5030, align 4, !tbaa !28
  %5031 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %5031, align 4, !tbaa !28
  %5032 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %5032, align 4, !tbaa !28
  %5033 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %5033, align 4, !tbaa !28
  %5034 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %5034, align 4, !tbaa !28
  %5035 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %5035, align 4, !tbaa !28
  %5036 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %5036, align 4, !tbaa !28
  %5037 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %5037, align 4, !tbaa !28
  %5038 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %5038, align 4, !tbaa !28
  %5039 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %5039, align 4, !tbaa !28
  %5040 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %5040, align 4, !tbaa !28
  %5041 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %5041, align 4, !tbaa !28
  %5042 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %5042, align 4, !tbaa !28
  %5043 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %5043, align 4, !tbaa !28
  %5044 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %5044, align 4, !tbaa !28
  %5045 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %5045, align 4, !tbaa !28
  %5046 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %5046, align 4, !tbaa !28
  %5047 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %5047, align 4, !tbaa !28
  %5048 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %5048, align 4, !tbaa !28
  %5049 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %5050 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %5050, align 4, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5049, i8 0, i64 20, i1 false)
  %5051 = icmp eq i32 %3, 0
  br i1 %5051, label %5108, label %5052

5052:                                             ; preds = %4998
  %5053 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %5054 = load i32, ptr %5053, align 4, !tbaa !26
  %5055 = icmp sgt i32 %5054, 8
  br i1 %5055, label %5056, label %5081

5056:                                             ; preds = %5052
  %5057 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %5058 = load i64, ptr %5057, align 8, !tbaa !33
  %5059 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5058, i64 1), !nosanitize !32
  %5060 = extractvalue { i64, i1 } %5059, 1, !nosanitize !32
  br i1 %5060, label %5061, label %5062, !prof !34, !nosanitize !32

5061:                                             ; preds = %5056
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

5062:                                             ; preds = %5056
  %5063 = extractvalue { i64, i1 } %5059, 0, !nosanitize !32
  %5064 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5065 = load ptr, ptr %5064, align 8, !tbaa !35
  %5066 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %5067 = load i16, ptr %5066, align 8, !tbaa !25
  %5068 = trunc i16 %5067 to i8
  store i64 %5063, ptr %5057, align 8, !tbaa !33
  %5069 = getelementptr inbounds nuw i8, ptr %5065, i64 %5058
  store i8 %5068, ptr %5069, align 1, !tbaa !28
  %5070 = load i64, ptr %5057, align 8, !tbaa !33
  %5071 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5070, i64 1), !nosanitize !32
  %5072 = extractvalue { i64, i1 } %5071, 1, !nosanitize !32
  br i1 %5072, label %5073, label %5074, !prof !34, !nosanitize !32

5073:                                             ; preds = %5062
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

5074:                                             ; preds = %5062
  %5075 = extractvalue { i64, i1 } %5071, 0, !nosanitize !32
  %5076 = load ptr, ptr %5064, align 8, !tbaa !35
  %5077 = load i16, ptr %5066, align 8, !tbaa !25
  %5078 = lshr i16 %5077, 8
  %5079 = trunc nuw i16 %5078 to i8
  store i64 %5075, ptr %5057, align 8, !tbaa !33
  %5080 = getelementptr inbounds nuw i8, ptr %5076, i64 %5070
  store i8 %5079, ptr %5080, align 1, !tbaa !28
  br label %5097

5081:                                             ; preds = %5052
  %5082 = icmp sgt i32 %5054, 0
  br i1 %5082, label %5083, label %5097

5083:                                             ; preds = %5081
  %5084 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %5085 = load i64, ptr %5084, align 8, !tbaa !33
  %5086 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5085, i64 1), !nosanitize !32
  %5087 = extractvalue { i64, i1 } %5086, 1, !nosanitize !32
  br i1 %5087, label %5088, label %5089, !prof !34, !nosanitize !32

5088:                                             ; preds = %5083
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

5089:                                             ; preds = %5083
  %5090 = extractvalue { i64, i1 } %5086, 0, !nosanitize !32
  %5091 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5092 = load ptr, ptr %5091, align 8, !tbaa !35
  %5093 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %5094 = load i16, ptr %5093, align 8, !tbaa !25
  %5095 = trunc i16 %5094 to i8
  store i64 %5090, ptr %5084, align 8, !tbaa !33
  %5096 = getelementptr inbounds nuw i8, ptr %5092, i64 %5085
  store i8 %5095, ptr %5096, align 1, !tbaa !28
  br label %5097

5097:                                             ; preds = %5089, %5081, %5074
  %5098 = load i32, ptr %5053, align 4, !tbaa !26
  %5099 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5098, i32 -1)
  %5100 = extractvalue { i32, i1 } %5099, 1, !nosanitize !32
  br i1 %5100, label %5101, label %5102, !prof !34, !nosanitize !32

5101:                                             ; preds = %5097
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !32
  unreachable, !nosanitize !32

5102:                                             ; preds = %5097
  %5103 = extractvalue { i32, i1 } %5099, 0, !nosanitize !32
  %5104 = and i32 %5103, 7
  %5105 = add nuw nsw i32 %5104, 1
  %5106 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %5105, ptr %5106, align 8, !tbaa !27
  %5107 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %5107, align 8, !tbaa !25
  store i32 0, ptr %5053, align 4, !tbaa !26
  br label %5108

5108:                                             ; preds = %5102, %4998
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
