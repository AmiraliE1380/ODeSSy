; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_trees.fast.mid.ll'
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
  br i1 %10, label %11, label %2948

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
  br i1 %19, label %20, label %.loopexit426

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %22 = load i16, ptr %21, align 4, !tbaa !28
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %.loopexit426

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %26 = load i16, ptr %25, align 4, !tbaa !28
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %.loopexit426

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %30 = load i16, ptr %29, align 4, !tbaa !28
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %.loopexit426

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 228
  %34 = load i16, ptr %33, align 4, !tbaa !28
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %.loopexit426

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %38 = load i16, ptr %37, align 4, !tbaa !28
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %.loopexit426

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %42 = load i16, ptr %41, align 4, !tbaa !28
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %.loopexit426

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %46 = load i16, ptr %45, align 4, !tbaa !28
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %.loopexit426

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %50 = load i16, ptr %49, align 4, !tbaa !28
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %.loopexit426

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %54 = load i16, ptr %53, align 4, !tbaa !28
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %.loopexit426

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %58 = load i16, ptr %57, align 4, !tbaa !28
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %.loopexit426

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %62 = load i16, ptr %61, align 4, !tbaa !28
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %.loopexit426

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %66 = load i16, ptr %65, align 4, !tbaa !28
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %.loopexit426

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 292
  %70 = load i16, ptr %69, align 4, !tbaa !28
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %.loopexit426

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %74 = load i16, ptr %73, align 4, !tbaa !28
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %.loopexit426

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %78 = load i16, ptr %77, align 4, !tbaa !28
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %.loopexit426

80:                                               ; preds = %76
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %82 = load i16, ptr %81, align 4, !tbaa !28
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %.loopexit426

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 308
  %86 = load i16, ptr %85, align 4, !tbaa !28
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %.loopexit426

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %90 = load i16, ptr %89, align 4, !tbaa !28
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %.loopexit426

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 324
  %94 = load i16, ptr %93, align 4, !tbaa !28
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %.loopexit426

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %98 = load i16, ptr %97, align 4, !tbaa !28
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %.loopexit426

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 332
  %102 = load i16, ptr %101, align 4, !tbaa !28
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %.loopexit426

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %106 = load i16, ptr %105, align 4, !tbaa !28
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %.loopexit426

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %110 = load i16, ptr %109, align 4, !tbaa !28
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %.loopexit426

112:                                              ; preds = %108
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 252
  %114 = load i16, ptr %113, align 4, !tbaa !28
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %.loopexit426

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %118 = load i16, ptr %117, align 4, !tbaa !28
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %.preheader425, label %.loopexit426

120:                                              ; preds = %.preheader425
  %121 = getelementptr inbounds nuw i8, ptr %152, i64 4
  %122 = load i16, ptr %121, align 4, !tbaa !28
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %.loopexit426

124:                                              ; preds = %120
  %125 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %126 = load i16, ptr %125, align 4, !tbaa !28
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %.loopexit426

128:                                              ; preds = %124
  %129 = getelementptr inbounds nuw i8, ptr %152, i64 12
  %130 = load i16, ptr %129, align 4, !tbaa !28
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %.preheader425.1, label %.loopexit426

.preheader425.1:                                  ; preds = %128
  %132 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %151
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %134 = load i16, ptr %133, align 4, !tbaa !28
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %.loopexit426

136:                                              ; preds = %.preheader425.1
  %137 = getelementptr inbounds nuw i8, ptr %132, i64 20
  %138 = load i16, ptr %137, align 4, !tbaa !28
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %.loopexit426

140:                                              ; preds = %136
  %141 = getelementptr inbounds nuw i8, ptr %132, i64 24
  %142 = load i16, ptr %141, align 4, !tbaa !28
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %.loopexit426

144:                                              ; preds = %140
  %145 = getelementptr inbounds nuw i8, ptr %132, i64 28
  %146 = load i16, ptr %145, align 4, !tbaa !28
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %.loopexit426

148:                                              ; preds = %144
  %149 = add nuw nsw i64 %151, 8
  %150 = icmp eq i64 %149, 256
  br i1 %150, label %.loopexit426, label %.preheader425, !llvm.loop !39

.preheader425:                                    ; preds = %116, %148
  %151 = phi i64 [ %149, %148 ], [ 32, %116 ]
  %152 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %151
  %153 = load i16, ptr %152, align 4, !tbaa !28
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %120, label %.loopexit426

.loopexit426:                                     ; preds = %.preheader425, %128, %124, %120, %.preheader425.1, %136, %140, %144, %148, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16
  %155 = phi i32 [ 1, %116 ], [ 1, %112 ], [ 1, %108 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ 0, %24 ], [ 0, %20 ], [ 0, %16 ], [ 0, %148 ], [ 1, %128 ], [ 1, %124 ], [ 1, %120 ], [ 1, %.preheader425 ], [ 1, %.preheader425.1 ], [ 1, %136 ], [ 1, %140 ], [ 1, %144 ]
  store i32 %155, ptr %13, align 8, !tbaa !36
  br label %156

156:                                              ; preds = %.loopexit426, %11
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
  br i1 %173, label %174, label %.loopexit423

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
  br i1 %191, label %.loopexit10, label %192, !prof !32, !nosanitize !30

.loopexit10:                                      ; preds = %188, %575, %329
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
  br i1 %229, label %.loopexit9, label %230, !prof !32, !nosanitize !30

.loopexit9:                                       ; preds = %223, %.mv.ph13, %561, %568, %315, %322, %.loopexit416
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

230:                                              ; preds = %223
  %231 = extractvalue { i64, i1 } %228, 0, !nosanitize !30
  store i64 %231, ptr %181, align 8, !tbaa !52
  br label %232

232:                                              ; preds = %230, %221
  %233 = load i32, ptr %164, align 4, !tbaa !47
  %234 = icmp slt i32 %233, 2
  br i1 %234, label %204, label %.loopexit423, !llvm.loop !53

.loopexit423:                                     ; preds = %232, %171
  %235 = phi i32 [ %201, %171 ], [ %209, %232 ]
  %236 = phi i32 [ %172, %171 ], [ %233, %232 ]
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 %235, ptr %237, align 8, !tbaa !54
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %240 = lshr i32 %236, 1
  %241 = zext nneg i32 %240 to i64
  br label %418

242:                                              ; preds = %.loopexit420
  %243 = load i32, ptr %164, align 4, !tbaa !47
  %.fr = freeze i32 %243
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %245 = sext i32 %163 to i64
  %mv.h11 = icmp sgt i32 %.fr, -1
  br i1 %mv.h11, label %.mv.ph13.mv.fast, label %.mv.ph13

.mv.ph13.mv.fast:                                 ; preds = %242, %413
  %246 = phi i32 [ %416, %413 ], [ %.fr, %242 ]
  %247 = phi i64 [ %354, %413 ], [ %245, %242 ]
  %248 = load i32, ptr %244, align 4, !tbaa !49
  %249 = add nsw i32 %246, -1
  store i32 %249, ptr %164, align 4, !tbaa !47
  %250 = zext nneg i32 %246 to i64
  %251 = getelementptr inbounds nuw [4 x i8], ptr %238, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !49
  store i32 %252, ptr %244, align 4, !tbaa !49
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, ptr %239, i64 %253
  %255 = icmp samesign ult i32 %246, 3
  br i1 %255, label %315, label %256

256:                                              ; preds = %.mv.ph13.mv.fast
  %257 = getelementptr inbounds [4 x i8], ptr %158, i64 %253
  br label %258

258:                                              ; preds = %306, %256
  %259 = phi i32 [ %249, %256 ], [ %310, %306 ]
  %260 = phi i32 [ 2, %256 ], [ %309, %306 ]
  %261 = phi i32 [ 1, %256 ], [ %291, %306 ]
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
  br i1 %298, label %312, label %299

299:                                              ; preds = %289
  %300 = icmp eq i16 %292, %297
  br i1 %300, label %301, label %306

301:                                              ; preds = %299
  %302 = load i8, ptr %254, align 1, !tbaa !28
  %303 = getelementptr inbounds i8, ptr %239, i64 %295
  %304 = load i8, ptr %303, align 1, !tbaa !28
  %305 = icmp ugt i8 %302, %304
  br i1 %305, label %306, label %312

306:                                              ; preds = %301, %299
  %307 = sext i32 %261 to i64
  %308 = getelementptr inbounds [4 x i8], ptr %238, i64 %307
  store i32 %294, ptr %308, align 4, !tbaa !49
  %309 = shl i32 %291, 1
  %310 = load i32, ptr %164, align 4, !tbaa !47
  %311 = icmp sgt i32 %309, %310
  br i1 %311, label %312, label %258, !llvm.loop !55

312:                                              ; preds = %306, %301, %289
  %313 = phi i32 [ %261, %289 ], [ %261, %301 ], [ %291, %306 ]
  %314 = sext i32 %313 to i64
  br label %315

315:                                              ; preds = %312, %.mv.ph13.mv.fast
  %316 = phi i64 [ 1, %.mv.ph13.mv.fast ], [ %314, %312 ]
  %317 = getelementptr inbounds [4 x i8], ptr %238, i64 %316
  store i32 %252, ptr %317, align 4, !tbaa !49
  %318 = load i32, ptr %244, align 4, !tbaa !49
  %319 = load i32, ptr %165, align 8, !tbaa !48
  %320 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %319, i32 -1)
  %321 = extractvalue { i32, i1 } %320, 1, !nosanitize !30
  br i1 %321, label %.loopexit9, label %322, !prof !32, !nosanitize !30

322:                                              ; preds = %315
  %323 = extractvalue { i32, i1 } %320, 0, !nosanitize !30
  store i32 %323, ptr %165, align 8, !tbaa !48
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [4 x i8], ptr %238, i64 %324
  store i32 %248, ptr %325, align 4, !tbaa !49
  %326 = load i32, ptr %165, align 8, !tbaa !48
  %327 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %326, i32 -1)
  %328 = extractvalue { i32, i1 } %327, 1, !nosanitize !30
  br i1 %328, label %.loopexit9, label %329, !prof !32, !nosanitize !30

329:                                              ; preds = %322
  %330 = extractvalue { i32, i1 } %327, 0, !nosanitize !30
  store i32 %330, ptr %165, align 8, !tbaa !48
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [4 x i8], ptr %238, i64 %331
  store i32 %318, ptr %332, align 4, !tbaa !49
  %333 = sext i32 %248 to i64
  %334 = getelementptr inbounds [4 x i8], ptr %158, i64 %333
  %335 = load i16, ptr %334, align 2, !tbaa !28
  %336 = sext i32 %318 to i64
  %337 = getelementptr inbounds [4 x i8], ptr %158, i64 %336
  %338 = load i16, ptr %337, align 2, !tbaa !28
  %339 = add i16 %338, %335
  %340 = getelementptr inbounds [4 x i8], ptr %158, i64 %247
  store i16 %339, ptr %340, align 2, !tbaa !28
  %341 = getelementptr inbounds i8, ptr %239, i64 %333
  %342 = load i8, ptr %341, align 1, !tbaa !28
  %343 = getelementptr inbounds i8, ptr %239, i64 %336
  %344 = load i8, ptr %343, align 1, !tbaa !28
  %345 = tail call i8 @llvm.umax.i8(i8 %342, i8 %344)
  %346 = add i8 %345, 1
  %347 = getelementptr inbounds i8, ptr %239, i64 %247
  store i8 %346, ptr %347, align 1, !tbaa !28
  %348 = trunc nsw i64 %247 to i32
  %349 = trunc i64 %247 to i16
  %350 = getelementptr inbounds nuw i8, ptr %337, i64 2
  store i16 %349, ptr %350, align 2, !tbaa !28
  %351 = getelementptr inbounds nuw i8, ptr %334, i64 2
  store i16 %349, ptr %351, align 2, !tbaa !28
  %352 = icmp eq i64 %247, 2147483647
  br i1 %352, label %.loopexit10, label %353, !prof !32, !nosanitize !30

353:                                              ; preds = %329
  %354 = add nsw i64 %247, 1
  store i32 %348, ptr %244, align 4, !tbaa !49
  %355 = load i32, ptr %164, align 4, !tbaa !47
  %356 = icmp slt i32 %355, 2
  br i1 %356, label %413, label %.preheader8.mv.fast

.preheader8.mv.fast:                              ; preds = %353, %404
  %357 = phi i32 [ %408, %404 ], [ %355, %353 ]
  %358 = phi i32 [ %407, %404 ], [ 2, %353 ]
  %359 = phi i32 [ %389, %404 ], [ 1, %353 ]
  %360 = icmp slt i32 %358, %357
  br i1 %360, label %363, label %361

361:                                              ; preds = %.preheader8.mv.fast
  %362 = sext i32 %358 to i64
  br label %387

363:                                              ; preds = %.preheader8.mv.fast
  %364 = or disjoint i32 %358, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [4 x i8], ptr %238, i64 %365
  %367 = load i32, ptr %366, align 4, !tbaa !49
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [4 x i8], ptr %158, i64 %368
  %370 = load i16, ptr %369, align 2, !tbaa !28
  %371 = sext i32 %358 to i64
  %372 = getelementptr inbounds [4 x i8], ptr %238, i64 %371
  %373 = load i32, ptr %372, align 4, !tbaa !49
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [4 x i8], ptr %158, i64 %374
  %376 = load i16, ptr %375, align 2, !tbaa !28
  %377 = icmp ult i16 %370, %376
  br i1 %377, label %386, label %378

378:                                              ; preds = %363
  %379 = icmp eq i16 %370, %376
  br i1 %379, label %380, label %387

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, ptr %239, i64 %368
  %382 = load i8, ptr %381, align 1, !tbaa !28
  %383 = getelementptr inbounds i8, ptr %239, i64 %374
  %384 = load i8, ptr %383, align 1, !tbaa !28
  %385 = icmp ugt i8 %382, %384
  br i1 %385, label %387, label %386

386:                                              ; preds = %380, %363
  br label %387

387:                                              ; preds = %386, %380, %378, %361
  %388 = phi i64 [ %362, %361 ], [ %365, %386 ], [ %371, %380 ], [ %371, %378 ]
  %389 = phi i32 [ %358, %361 ], [ %364, %386 ], [ %358, %380 ], [ %358, %378 ]
  %390 = load i16, ptr %340, align 2, !tbaa !28
  %391 = getelementptr inbounds [4 x i8], ptr %238, i64 %388
  %392 = load i32, ptr %391, align 4, !tbaa !49
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [4 x i8], ptr %158, i64 %393
  %395 = load i16, ptr %394, align 2, !tbaa !28
  %396 = icmp ult i16 %390, %395
  br i1 %396, label %410, label %397

397:                                              ; preds = %387
  %398 = icmp eq i16 %390, %395
  br i1 %398, label %399, label %404

399:                                              ; preds = %397
  %400 = load i8, ptr %347, align 1, !tbaa !28
  %401 = getelementptr inbounds i8, ptr %239, i64 %393
  %402 = load i8, ptr %401, align 1, !tbaa !28
  %403 = icmp ugt i8 %400, %402
  br i1 %403, label %404, label %410

404:                                              ; preds = %399, %397
  %405 = sext i32 %359 to i64
  %406 = getelementptr inbounds [4 x i8], ptr %238, i64 %405
  store i32 %392, ptr %406, align 4, !tbaa !49
  %407 = shl i32 %389, 1
  %408 = load i32, ptr %164, align 4, !tbaa !47
  %409 = icmp sgt i32 %407, %408
  br i1 %409, label %410, label %.preheader8.mv.fast, !llvm.loop !55

410:                                              ; preds = %404, %399, %387
  %411 = phi i32 [ %359, %387 ], [ %359, %399 ], [ %389, %404 ]
  %412 = sext i32 %411 to i64
  br label %413

413:                                              ; preds = %410, %353
  %414 = phi i64 [ 1, %353 ], [ %412, %410 ]
  %415 = getelementptr inbounds [4 x i8], ptr %238, i64 %414
  store i32 %348, ptr %415, align 4, !tbaa !49
  %416 = load i32, ptr %164, align 4, !tbaa !47
  %417 = icmp sgt i32 %416, 1
  br i1 %417, label %.mv.ph13.mv.fast, label %.loopexit416, !llvm.loop !56

418:                                              ; preds = %.loopexit420, %.loopexit423
  %419 = phi i64 [ %241, %.loopexit423 ], [ %487, %.loopexit420 ]
  %420 = getelementptr inbounds nuw [4 x i8], ptr %238, i64 %419
  %421 = load i32, ptr %420, align 4, !tbaa !49
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i8, ptr %239, i64 %422
  %424 = load i32, ptr %164, align 4, !tbaa !47
  %425 = trunc i64 %419 to i32
  %426 = shl i32 %425, 1
  %427 = icmp sgt i32 %426, %424
  br i1 %427, label %.loopexit420, label %428

428:                                              ; preds = %418
  %429 = getelementptr inbounds [4 x i8], ptr %158, i64 %422
  br label %430

430:                                              ; preds = %478, %428
  %431 = phi i32 [ %424, %428 ], [ %482, %478 ]
  %432 = phi i32 [ %426, %428 ], [ %481, %478 ]
  %433 = phi i32 [ %425, %428 ], [ %463, %478 ]
  %434 = icmp slt i32 %432, %431
  br i1 %434, label %437, label %435

435:                                              ; preds = %430
  %436 = sext i32 %432 to i64
  br label %461

437:                                              ; preds = %430
  %438 = or disjoint i32 %432, 1
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [4 x i8], ptr %238, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !49
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [4 x i8], ptr %158, i64 %442
  %444 = load i16, ptr %443, align 2, !tbaa !28
  %445 = sext i32 %432 to i64
  %446 = getelementptr inbounds [4 x i8], ptr %238, i64 %445
  %447 = load i32, ptr %446, align 4, !tbaa !49
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [4 x i8], ptr %158, i64 %448
  %450 = load i16, ptr %449, align 2, !tbaa !28
  %451 = icmp ult i16 %444, %450
  br i1 %451, label %460, label %452

452:                                              ; preds = %437
  %453 = icmp eq i16 %444, %450
  br i1 %453, label %454, label %461

454:                                              ; preds = %452
  %455 = getelementptr inbounds i8, ptr %239, i64 %442
  %456 = load i8, ptr %455, align 1, !tbaa !28
  %457 = getelementptr inbounds i8, ptr %239, i64 %448
  %458 = load i8, ptr %457, align 1, !tbaa !28
  %459 = icmp ugt i8 %456, %458
  br i1 %459, label %461, label %460

460:                                              ; preds = %454, %437
  br label %461

461:                                              ; preds = %460, %454, %452, %435
  %462 = phi i64 [ %436, %435 ], [ %439, %460 ], [ %445, %454 ], [ %445, %452 ]
  %463 = phi i32 [ %432, %435 ], [ %438, %460 ], [ %432, %454 ], [ %432, %452 ]
  %464 = load i16, ptr %429, align 2, !tbaa !28
  %465 = getelementptr inbounds [4 x i8], ptr %238, i64 %462
  %466 = load i32, ptr %465, align 4, !tbaa !49
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [4 x i8], ptr %158, i64 %467
  %469 = load i16, ptr %468, align 2, !tbaa !28
  %470 = icmp ult i16 %464, %469
  br i1 %470, label %.loopexit420, label %471

471:                                              ; preds = %461
  %472 = icmp eq i16 %464, %469
  br i1 %472, label %473, label %478

473:                                              ; preds = %471
  %474 = load i8, ptr %423, align 1, !tbaa !28
  %475 = getelementptr inbounds i8, ptr %239, i64 %467
  %476 = load i8, ptr %475, align 1, !tbaa !28
  %477 = icmp ugt i8 %474, %476
  br i1 %477, label %478, label %.loopexit420

478:                                              ; preds = %473, %471
  %479 = sext i32 %433 to i64
  %480 = getelementptr inbounds [4 x i8], ptr %238, i64 %479
  store i32 %466, ptr %480, align 4, !tbaa !49
  %481 = shl i32 %463, 1
  %482 = load i32, ptr %164, align 4, !tbaa !47
  %483 = icmp sgt i32 %481, %482
  br i1 %483, label %.loopexit420, label %430, !llvm.loop !55

.loopexit420:                                     ; preds = %478, %473, %461, %418
  %484 = phi i32 [ %425, %418 ], [ %463, %478 ], [ %433, %473 ], [ %433, %461 ]
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [4 x i8], ptr %238, i64 %485
  store i32 %421, ptr %486, align 4, !tbaa !49
  %487 = add nsw i64 %419, -1
  %488 = icmp sgt i64 %419, 1
  br i1 %488, label %418, label %242, !llvm.loop !57

.mv.ph13:                                         ; preds = %242, %659
  %489 = phi i32 [ %662, %659 ], [ %.fr, %242 ]
  %490 = phi i64 [ %600, %659 ], [ %245, %242 ]
  %491 = load i32, ptr %244, align 4, !tbaa !49
  %492 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %489, i32 -1)
  %493 = extractvalue { i32, i1 } %492, 1, !nosanitize !30
  br i1 %493, label %.loopexit9, label %494, !prof !32, !nosanitize !30

494:                                              ; preds = %.mv.ph13
  %495 = extractvalue { i32, i1 } %492, 0, !nosanitize !30
  store i32 %495, ptr %164, align 4, !tbaa !47
  %496 = sext i32 %489 to i64
  %497 = getelementptr inbounds [4 x i8], ptr %238, i64 %496
  %498 = load i32, ptr %497, align 4, !tbaa !49
  store i32 %498, ptr %244, align 4, !tbaa !49
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i8, ptr %239, i64 %499
  %501 = icmp slt i32 %495, 2
  br i1 %501, label %561, label %502

502:                                              ; preds = %494
  %503 = getelementptr inbounds [4 x i8], ptr %158, i64 %499
  br label %504

504:                                              ; preds = %552, %502
  %505 = phi i32 [ %495, %502 ], [ %556, %552 ]
  %506 = phi i32 [ 2, %502 ], [ %555, %552 ]
  %507 = phi i32 [ 1, %502 ], [ %537, %552 ]
  %508 = icmp slt i32 %506, %505
  br i1 %508, label %511, label %509

509:                                              ; preds = %504
  %510 = sext i32 %506 to i64
  br label %535

511:                                              ; preds = %504
  %512 = or disjoint i32 %506, 1
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds [4 x i8], ptr %238, i64 %513
  %515 = load i32, ptr %514, align 4, !tbaa !49
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [4 x i8], ptr %158, i64 %516
  %518 = load i16, ptr %517, align 2, !tbaa !28
  %519 = sext i32 %506 to i64
  %520 = getelementptr inbounds [4 x i8], ptr %238, i64 %519
  %521 = load i32, ptr %520, align 4, !tbaa !49
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds [4 x i8], ptr %158, i64 %522
  %524 = load i16, ptr %523, align 2, !tbaa !28
  %525 = icmp ult i16 %518, %524
  br i1 %525, label %534, label %526

526:                                              ; preds = %511
  %527 = icmp eq i16 %518, %524
  br i1 %527, label %528, label %535

528:                                              ; preds = %526
  %529 = getelementptr inbounds i8, ptr %239, i64 %516
  %530 = load i8, ptr %529, align 1, !tbaa !28
  %531 = getelementptr inbounds i8, ptr %239, i64 %522
  %532 = load i8, ptr %531, align 1, !tbaa !28
  %533 = icmp ugt i8 %530, %532
  br i1 %533, label %535, label %534

534:                                              ; preds = %528, %511
  br label %535

535:                                              ; preds = %534, %528, %526, %509
  %536 = phi i64 [ %510, %509 ], [ %513, %534 ], [ %519, %528 ], [ %519, %526 ]
  %537 = phi i32 [ %506, %509 ], [ %512, %534 ], [ %506, %528 ], [ %506, %526 ]
  %538 = load i16, ptr %503, align 2, !tbaa !28
  %539 = getelementptr inbounds [4 x i8], ptr %238, i64 %536
  %540 = load i32, ptr %539, align 4, !tbaa !49
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [4 x i8], ptr %158, i64 %541
  %543 = load i16, ptr %542, align 2, !tbaa !28
  %544 = icmp ult i16 %538, %543
  br i1 %544, label %558, label %545

545:                                              ; preds = %535
  %546 = icmp eq i16 %538, %543
  br i1 %546, label %547, label %552

547:                                              ; preds = %545
  %548 = load i8, ptr %500, align 1, !tbaa !28
  %549 = getelementptr inbounds i8, ptr %239, i64 %541
  %550 = load i8, ptr %549, align 1, !tbaa !28
  %551 = icmp ugt i8 %548, %550
  br i1 %551, label %552, label %558

552:                                              ; preds = %547, %545
  %553 = sext i32 %507 to i64
  %554 = getelementptr inbounds [4 x i8], ptr %238, i64 %553
  store i32 %540, ptr %554, align 4, !tbaa !49
  %555 = shl i32 %537, 1
  %556 = load i32, ptr %164, align 4, !tbaa !47
  %557 = icmp sgt i32 %555, %556
  br i1 %557, label %558, label %504, !llvm.loop !55

558:                                              ; preds = %552, %547, %535
  %559 = phi i32 [ %507, %535 ], [ %507, %547 ], [ %537, %552 ]
  %560 = sext i32 %559 to i64
  br label %561

561:                                              ; preds = %558, %494
  %562 = phi i64 [ 1, %494 ], [ %560, %558 ]
  %563 = getelementptr inbounds [4 x i8], ptr %238, i64 %562
  store i32 %498, ptr %563, align 4, !tbaa !49
  %564 = load i32, ptr %244, align 4, !tbaa !49
  %565 = load i32, ptr %165, align 8, !tbaa !48
  %566 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %565, i32 -1)
  %567 = extractvalue { i32, i1 } %566, 1, !nosanitize !30
  br i1 %567, label %.loopexit9, label %568, !prof !32, !nosanitize !30

568:                                              ; preds = %561
  %569 = extractvalue { i32, i1 } %566, 0, !nosanitize !30
  store i32 %569, ptr %165, align 8, !tbaa !48
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds [4 x i8], ptr %238, i64 %570
  store i32 %491, ptr %571, align 4, !tbaa !49
  %572 = load i32, ptr %165, align 8, !tbaa !48
  %573 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %572, i32 -1)
  %574 = extractvalue { i32, i1 } %573, 1, !nosanitize !30
  br i1 %574, label %.loopexit9, label %575, !prof !32, !nosanitize !30

575:                                              ; preds = %568
  %576 = extractvalue { i32, i1 } %573, 0, !nosanitize !30
  store i32 %576, ptr %165, align 8, !tbaa !48
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [4 x i8], ptr %238, i64 %577
  store i32 %564, ptr %578, align 4, !tbaa !49
  %579 = sext i32 %491 to i64
  %580 = getelementptr inbounds [4 x i8], ptr %158, i64 %579
  %581 = load i16, ptr %580, align 2, !tbaa !28
  %582 = sext i32 %564 to i64
  %583 = getelementptr inbounds [4 x i8], ptr %158, i64 %582
  %584 = load i16, ptr %583, align 2, !tbaa !28
  %585 = add i16 %584, %581
  %586 = getelementptr inbounds [4 x i8], ptr %158, i64 %490
  store i16 %585, ptr %586, align 2, !tbaa !28
  %587 = getelementptr inbounds i8, ptr %239, i64 %579
  %588 = load i8, ptr %587, align 1, !tbaa !28
  %589 = getelementptr inbounds i8, ptr %239, i64 %582
  %590 = load i8, ptr %589, align 1, !tbaa !28
  %591 = tail call i8 @llvm.umax.i8(i8 %588, i8 %590)
  %592 = add i8 %591, 1
  %593 = getelementptr inbounds i8, ptr %239, i64 %490
  store i8 %592, ptr %593, align 1, !tbaa !28
  %594 = trunc nsw i64 %490 to i32
  %595 = trunc i64 %490 to i16
  %596 = getelementptr inbounds nuw i8, ptr %583, i64 2
  store i16 %595, ptr %596, align 2, !tbaa !28
  %597 = getelementptr inbounds nuw i8, ptr %580, i64 2
  store i16 %595, ptr %597, align 2, !tbaa !28
  %598 = icmp eq i64 %490, 2147483647
  br i1 %598, label %.loopexit10, label %599, !prof !32, !nosanitize !30

599:                                              ; preds = %575
  %600 = add nsw i64 %490, 1
  store i32 %594, ptr %244, align 4, !tbaa !49
  %601 = load i32, ptr %164, align 4, !tbaa !47
  %602 = icmp slt i32 %601, 2
  br i1 %602, label %659, label %.preheader8

.preheader8:                                      ; preds = %599, %650
  %603 = phi i32 [ %654, %650 ], [ %601, %599 ]
  %604 = phi i32 [ %653, %650 ], [ 2, %599 ]
  %605 = phi i32 [ %635, %650 ], [ 1, %599 ]
  %606 = icmp slt i32 %604, %603
  br i1 %606, label %609, label %607

607:                                              ; preds = %.preheader8
  %608 = sext i32 %604 to i64
  br label %633

609:                                              ; preds = %.preheader8
  %610 = or disjoint i32 %604, 1
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds [4 x i8], ptr %238, i64 %611
  %613 = load i32, ptr %612, align 4, !tbaa !49
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds [4 x i8], ptr %158, i64 %614
  %616 = load i16, ptr %615, align 2, !tbaa !28
  %617 = sext i32 %604 to i64
  %618 = getelementptr inbounds [4 x i8], ptr %238, i64 %617
  %619 = load i32, ptr %618, align 4, !tbaa !49
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [4 x i8], ptr %158, i64 %620
  %622 = load i16, ptr %621, align 2, !tbaa !28
  %623 = icmp ult i16 %616, %622
  br i1 %623, label %632, label %624

624:                                              ; preds = %609
  %625 = icmp eq i16 %616, %622
  br i1 %625, label %626, label %633

626:                                              ; preds = %624
  %627 = getelementptr inbounds i8, ptr %239, i64 %614
  %628 = load i8, ptr %627, align 1, !tbaa !28
  %629 = getelementptr inbounds i8, ptr %239, i64 %620
  %630 = load i8, ptr %629, align 1, !tbaa !28
  %631 = icmp ugt i8 %628, %630
  br i1 %631, label %633, label %632

632:                                              ; preds = %626, %609
  br label %633

633:                                              ; preds = %632, %626, %624, %607
  %634 = phi i64 [ %608, %607 ], [ %611, %632 ], [ %617, %626 ], [ %617, %624 ]
  %635 = phi i32 [ %604, %607 ], [ %610, %632 ], [ %604, %626 ], [ %604, %624 ]
  %636 = load i16, ptr %586, align 2, !tbaa !28
  %637 = getelementptr inbounds [4 x i8], ptr %238, i64 %634
  %638 = load i32, ptr %637, align 4, !tbaa !49
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [4 x i8], ptr %158, i64 %639
  %641 = load i16, ptr %640, align 2, !tbaa !28
  %642 = icmp ult i16 %636, %641
  br i1 %642, label %656, label %643

643:                                              ; preds = %633
  %644 = icmp eq i16 %636, %641
  br i1 %644, label %645, label %650

645:                                              ; preds = %643
  %646 = load i8, ptr %593, align 1, !tbaa !28
  %647 = getelementptr inbounds i8, ptr %239, i64 %639
  %648 = load i8, ptr %647, align 1, !tbaa !28
  %649 = icmp ugt i8 %646, %648
  br i1 %649, label %650, label %656

650:                                              ; preds = %645, %643
  %651 = sext i32 %605 to i64
  %652 = getelementptr inbounds [4 x i8], ptr %238, i64 %651
  store i32 %638, ptr %652, align 4, !tbaa !49
  %653 = shl i32 %635, 1
  %654 = load i32, ptr %164, align 4, !tbaa !47
  %655 = icmp sgt i32 %653, %654
  br i1 %655, label %656, label %.preheader8, !llvm.loop !55

656:                                              ; preds = %650, %645, %633
  %657 = phi i32 [ %605, %633 ], [ %605, %645 ], [ %635, %650 ]
  %658 = sext i32 %657 to i64
  br label %659

659:                                              ; preds = %656, %599
  %660 = phi i64 [ 1, %599 ], [ %658, %656 ]
  %661 = getelementptr inbounds [4 x i8], ptr %238, i64 %660
  store i32 %594, ptr %661, align 4, !tbaa !49
  %662 = load i32, ptr %164, align 4, !tbaa !47
  %663 = icmp sgt i32 %662, 1
  br i1 %663, label %.mv.ph13, label %.loopexit416, !llvm.loop !56

.loopexit416:                                     ; preds = %659, %413
  %664 = load i32, ptr %165, align 8, !tbaa !48
  %665 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %664, i32 -1)
  %666 = extractvalue { i32, i1 } %665, 1, !nosanitize !30
  br i1 %666, label %.loopexit9, label %667, !prof !32, !nosanitize !30

667:                                              ; preds = %.loopexit416
  %668 = extractvalue { i32, i1 } %665, 0, !nosanitize !30
  %669 = load i32, ptr %244, align 4, !tbaa !49
  store i32 %668, ptr %165, align 8, !tbaa !48
  %670 = sext i32 %668 to i64
  %671 = getelementptr inbounds [4 x i8], ptr %238, i64 %670
  store i32 %669, ptr %671, align 4, !tbaa !49
  %672 = load ptr, ptr %157, align 8, !tbaa !41
  %673 = load i32, ptr %237, align 8, !tbaa !54
  %674 = load ptr, ptr %159, align 8, !tbaa !42
  %675 = load ptr, ptr %674, align 8, !tbaa !43
  %676 = getelementptr inbounds nuw i8, ptr %674, i64 8
  %677 = load ptr, ptr %676, align 8, !tbaa !58
  %678 = getelementptr inbounds nuw i8, ptr %674, i64 16
  %679 = load i32, ptr %678, align 8, !tbaa !59
  %680 = getelementptr inbounds nuw i8, ptr %674, i64 24
  %681 = load i32, ptr %680, align 8, !tbaa !60
  %682 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %682, i8 0, i64 32, i1 false), !tbaa !61
  %683 = load i32, ptr %165, align 8, !tbaa !48
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds [4 x i8], ptr %238, i64 %684
  %686 = load i32, ptr %685, align 4, !tbaa !49
  %687 = sext i32 %686 to i64
  %.split310 = getelementptr inbounds [4 x i8], ptr %672, i64 %687
  %688 = getelementptr inbounds nuw i8, ptr %.split310, i64 2
  store i16 0, ptr %688, align 2, !tbaa !28
  %689 = load i32, ptr %165, align 8, !tbaa !48
  %690 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %689, i32 1), !nosanitize !30
  %691 = extractvalue { i32, i1 } %690, 1, !nosanitize !30
  br i1 %691, label %.loopexit413, label %692, !prof !32, !nosanitize !30

.loopexit413:                                     ; preds = %739, %715, %667
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

692:                                              ; preds = %667
  %693 = extractvalue { i32, i1 } %690, 0
  %694 = icmp slt i32 %693, 573
  br i1 %694, label %695, label %.loopexit406

695:                                              ; preds = %692
  %696 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %697 = icmp eq ptr %675, null
  %698 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %699 = sext i32 %693 to i64
  br label %700

700:                                              ; preds = %770, %695
  %701 = phi i64 [ %699, %695 ], [ %771, %770 ]
  %702 = phi i32 [ 0, %695 ], [ %722, %770 ]
  %703 = getelementptr inbounds [4 x i8], ptr %238, i64 %701
  %704 = load i32, ptr %703, align 4, !tbaa !49
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds [4 x i8], ptr %672, i64 %705
  %707 = getelementptr inbounds nuw i8, ptr %706, i64 2
  %708 = load i16, ptr %707, align 2, !tbaa !28
  %709 = zext i16 %708 to i64
  %.split311 = getelementptr inbounds nuw [4 x i8], ptr %672, i64 %709
  %710 = getelementptr inbounds nuw i8, ptr %.split311, i64 2
  %711 = load i16, ptr %710, align 2, !tbaa !28
  %712 = zext i16 %711 to i32
  %713 = add nuw nsw i32 %712, 1
  %714 = icmp sgt i32 %681, %712
  br i1 %714, label %720, label %715

715:                                              ; preds = %700
  %716 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %702, i32 1), !nosanitize !30
  %717 = extractvalue { i32, i1 } %716, 1, !nosanitize !30
  br i1 %717, label %.loopexit413, label %718, !prof !32, !nosanitize !30

718:                                              ; preds = %715
  %719 = extractvalue { i32, i1 } %716, 0, !nosanitize !30
  br label %720

720:                                              ; preds = %718, %700
  %721 = phi i32 [ %681, %718 ], [ %713, %700 ]
  %722 = phi i32 [ %719, %718 ], [ %702, %700 ]
  %723 = trunc i32 %721 to i16
  store i16 %723, ptr %707, align 2, !tbaa !28
  %724 = icmp sgt i32 %704, %673
  br i1 %724, label %770, label %725

725:                                              ; preds = %720
  %726 = sext i32 %721 to i64
  %727 = getelementptr inbounds [2 x i8], ptr %682, i64 %726
  %728 = load i16, ptr %727, align 2, !tbaa !61
  %729 = add i16 %728, 1
  store i16 %729, ptr %727, align 2, !tbaa !61
  %730 = icmp slt i32 %704, %679
  br i1 %730, label %739, label %731

731:                                              ; preds = %725
  %732 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %704, i32 %679), !nosanitize !30
  %733 = extractvalue { i32, i1 } %732, 1, !nosanitize !30
  br i1 %733, label %.loopexit14, label %734, !prof !32, !nosanitize !30

.loopexit14:                                      ; preds = %731, %823, %815, %804, %848, %853, %776
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

734:                                              ; preds = %731
  %735 = extractvalue { i32, i1 } %732, 0, !nosanitize !30
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds [4 x i8], ptr %677, i64 %736
  %738 = load i32, ptr %737, align 4, !tbaa !49
  br label %739

739:                                              ; preds = %734, %725
  %740 = phi i32 [ %738, %734 ], [ 0, %725 ]
  %741 = load i16, ptr %706, align 2, !tbaa !28
  %742 = zext i16 %741 to i64
  %743 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %721, i32 %740), !nosanitize !30
  %744 = extractvalue { i32, i1 } %743, 1, !nosanitize !30
  br i1 %744, label %.loopexit413, label %745, !prof !32, !nosanitize !30

745:                                              ; preds = %739
  %746 = extractvalue { i32, i1 } %743, 0, !nosanitize !30
  %747 = zext i32 %746 to i64
  %748 = mul nuw nsw i64 %747, %742
  %749 = load i64, ptr %696, align 8, !tbaa !51
  %750 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %749, i64 %748), !nosanitize !30
  %751 = extractvalue { i64, i1 } %750, 1, !nosanitize !30
  br i1 %751, label %752, label %753, !prof !32, !nosanitize !30

752:                                              ; preds = %755, %745
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

753:                                              ; preds = %745
  %754 = extractvalue { i64, i1 } %750, 0, !nosanitize !30
  store i64 %754, ptr %696, align 8, !tbaa !51
  br i1 %697, label %770, label %755

755:                                              ; preds = %753
  %.split312 = getelementptr inbounds [4 x i8], ptr %675, i64 %705
  %756 = getelementptr inbounds nuw i8, ptr %.split312, i64 2
  %757 = load i16, ptr %756, align 2, !tbaa !28
  %758 = zext i16 %757 to i32
  %759 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %758, i32 %740), !nosanitize !30
  %760 = extractvalue { i32, i1 } %759, 1, !nosanitize !30
  br i1 %760, label %752, label %761, !prof !32, !nosanitize !30

761:                                              ; preds = %755
  %762 = extractvalue { i32, i1 } %759, 0, !nosanitize !30
  %763 = zext i32 %762 to i64
  %764 = mul nuw nsw i64 %763, %742
  %765 = load i64, ptr %698, align 8, !tbaa !52
  %766 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %765, i64 %764), !nosanitize !30
  %767 = extractvalue { i64, i1 } %766, 1, !nosanitize !30
  br i1 %767, label %.loopexit16, label %768, !prof !32, !nosanitize !30

.loopexit16:                                      ; preds = %761, %818, %789
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

768:                                              ; preds = %761
  %769 = extractvalue { i64, i1 } %766, 0, !nosanitize !30
  store i64 %769, ptr %698, align 8, !tbaa !52
  br label %770

770:                                              ; preds = %768, %753, %720
  %771 = add nsw i64 %701, 1
  %772 = and i64 %771, 4294967295
  %773 = icmp eq i64 %772, 573
  br i1 %773, label %774, label %700, !llvm.loop !62

774:                                              ; preds = %770
  %775 = icmp eq i32 %722, 0
  br i1 %775, label %.loopexit406, label %776

776:                                              ; preds = %774
  %777 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %681, i32 -1)
  %778 = extractvalue { i32, i1 } %777, 1, !nosanitize !30
  %779 = sext i32 %681 to i64
  %780 = getelementptr inbounds [2 x i8], ptr %682, i64 %779
  br i1 %778, label %.loopexit14, label %.preheader15, !prof !32, !nosanitize !30

.preheader15:                                     ; preds = %776
  %mv.h25 = icmp ult i32 %702, 1073741825
  br i1 %mv.h25, label %.mv.ph27.mv.fast, label %.mv.ph27

.mv.ph27.mv.fast:                                 ; preds = %.preheader15, %794
  %781 = phi i32 [ %802, %794 ], [ %722, %.preheader15 ]
  br label %782

782:                                              ; preds = %804, %.mv.ph27.mv.fast
  %783 = phi { i32, i1 } [ %805, %804 ], [ %777, %.mv.ph27.mv.fast ]
  %784 = extractvalue { i32, i1 } %783, 0
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds [2 x i8], ptr %682, i64 %785
  %787 = load i16, ptr %786, align 2, !tbaa !61
  %788 = icmp eq i16 %787, 0
  br i1 %788, label %804, label %789

789:                                              ; preds = %782
  %790 = getelementptr inbounds [2 x i8], ptr %682, i64 %785
  %791 = add i16 %787, -1
  store i16 %791, ptr %790, align 2, !tbaa !61
  %792 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %784, i32 1), !nosanitize !30
  %793 = extractvalue { i32, i1 } %792, 1, !nosanitize !30
  br i1 %793, label %.loopexit16, label %794, !prof !32, !nosanitize !30

794:                                              ; preds = %789
  %795 = extractvalue { i32, i1 } %792, 0, !nosanitize !30
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds [2 x i8], ptr %682, i64 %796
  %798 = load i16, ptr %797, align 2, !tbaa !61
  %799 = add i16 %798, 2
  store i16 %799, ptr %797, align 2, !tbaa !61
  %800 = load i16, ptr %780, align 2, !tbaa !61
  %801 = add i16 %800, -1
  store i16 %801, ptr %780, align 2, !tbaa !61
  %802 = add i32 %781, -2
  %803 = icmp sgt i32 %802, 0
  br i1 %803, label %.mv.ph27.mv.fast, label %.loopexit408, !llvm.loop !63

804:                                              ; preds = %782
  %805 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %784, i32 -1)
  %806 = extractvalue { i32, i1 } %805, 1, !nosanitize !30
  br i1 %806, label %.loopexit14, label %782, !prof !32, !llvm.loop !64, !nosanitize !30

.mv.ph27:                                         ; preds = %.preheader15, %833
  %807 = phi i32 [ %834, %833 ], [ %722, %.preheader15 ]
  br label %808

808:                                              ; preds = %815, %.mv.ph27
  %809 = phi { i32, i1 } [ %816, %815 ], [ %777, %.mv.ph27 ]
  %810 = extractvalue { i32, i1 } %809, 0
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds [2 x i8], ptr %682, i64 %811
  %813 = load i16, ptr %812, align 2, !tbaa !61
  %814 = icmp eq i16 %813, 0
  br i1 %814, label %815, label %818

815:                                              ; preds = %808
  %816 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %810, i32 -1)
  %817 = extractvalue { i32, i1 } %816, 1, !nosanitize !30
  br i1 %817, label %.loopexit14, label %808, !prof !32, !llvm.loop !64, !nosanitize !30

818:                                              ; preds = %808
  %819 = getelementptr inbounds [2 x i8], ptr %682, i64 %811
  %820 = add i16 %813, -1
  store i16 %820, ptr %819, align 2, !tbaa !61
  %821 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %810, i32 1), !nosanitize !30
  %822 = extractvalue { i32, i1 } %821, 1, !nosanitize !30
  br i1 %822, label %.loopexit16, label %823, !prof !32, !nosanitize !30

823:                                              ; preds = %818
  %824 = extractvalue { i32, i1 } %821, 0, !nosanitize !30
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds [2 x i8], ptr %682, i64 %825
  %827 = load i16, ptr %826, align 2, !tbaa !61
  %828 = add i16 %827, 2
  store i16 %828, ptr %826, align 2, !tbaa !61
  %829 = load i16, ptr %780, align 2, !tbaa !61
  %830 = add i16 %829, -1
  store i16 %830, ptr %780, align 2, !tbaa !61
  %831 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %807, i32 -2)
  %832 = extractvalue { i32, i1 } %831, 1, !nosanitize !30
  br i1 %832, label %.loopexit14, label %833, !prof !32, !nosanitize !30

833:                                              ; preds = %823
  %834 = extractvalue { i32, i1 } %831, 0, !nosanitize !30
  %835 = icmp sgt i32 %834, 0
  br i1 %835, label %.mv.ph27, label %.loopexit408, !llvm.loop !63

.loopexit408:                                     ; preds = %833, %794
  %836 = icmp eq i32 %681, 0
  br i1 %836, label %.loopexit406, label %.preheader404

.preheader404:                                    ; preds = %.loopexit408, %890
  %837 = phi i64 [ %891, %890 ], [ %779, %.loopexit408 ]
  %838 = phi i32 [ %845, %890 ], [ 573, %.loopexit408 ]
  %839 = getelementptr inbounds [2 x i8], ptr %682, i64 %837
  %840 = load i16, ptr %839, align 2, !tbaa !61
  %841 = icmp eq i16 %840, 0
  br i1 %841, label %.loopexit403, label %842

842:                                              ; preds = %.preheader404
  %843 = zext i16 %840 to i32
  %844 = trunc i64 %837 to i16
  br label %848

.loopexit403:                                     ; preds = %887, %.preheader404
  %845 = phi i32 [ %838, %.preheader404 ], [ %857, %887 ]
  %846 = and i64 %837, 4294967295
  %847 = icmp eq i64 %846, 2147483648
  br i1 %847, label %.loopexit402, label %890, !prof !32, !nosanitize !30

848:                                              ; preds = %887, %842
  %849 = phi i32 [ %838, %842 ], [ %857, %887 ]
  %850 = phi i32 [ %843, %842 ], [ %888, %887 ]
  %851 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %849, i32 -1)
  %852 = extractvalue { i32, i1 } %851, 1, !nosanitize !30
  br i1 %852, label %.loopexit14, label %.lr.ph, !prof !65, !nosanitize !30

853:                                              ; preds = %.lr.ph
  %854 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %857, i32 -1)
  %855 = extractvalue { i32, i1 } %854, 1, !nosanitize !30
  br i1 %855, label %.loopexit14, label %.lr.ph, !prof !66, !llvm.loop !67, !nosanitize !30

.lr.ph:                                           ; preds = %848, %853
  %856 = phi { i32, i1 } [ %854, %853 ], [ %851, %848 ]
  %857 = extractvalue { i32, i1 } %856, 0, !nosanitize !30
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds [4 x i8], ptr %238, i64 %858
  %860 = load i32, ptr %859, align 4, !tbaa !49
  %861 = icmp sgt i32 %860, %673
  br i1 %861, label %853, label %862, !llvm.loop !67

862:                                              ; preds = %.lr.ph
  %863 = sext i32 %860 to i64
  %864 = getelementptr inbounds [4 x i8], ptr %672, i64 %863
  %865 = getelementptr inbounds nuw i8, ptr %864, i64 2
  %866 = load i16, ptr %865, align 2, !tbaa !28
  %867 = zext i16 %866 to i64
  %868 = icmp eq i64 %837, %867
  br i1 %868, label %887, label %869

869:                                              ; preds = %862
  %870 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %837, i64 %867), !nosanitize !30
  %871 = extractvalue { i64, i1 } %870, 1, !nosanitize !30
  br i1 %871, label %.loopexit402, label %872, !prof !32, !nosanitize !30

.loopexit402:                                     ; preds = %.loopexit403, %869
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

872:                                              ; preds = %869
  %873 = extractvalue { i64, i1 } %870, 0, !nosanitize !30
  %874 = load i16, ptr %864, align 2, !tbaa !28
  %875 = zext i16 %874 to i64
  %876 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %873, i64 %875), !nosanitize !30
  %877 = extractvalue { i64, i1 } %876, 1, !nosanitize !30
  br i1 %877, label %878, label %879, !prof !32, !nosanitize !30

878:                                              ; preds = %872
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !30
  unreachable, !nosanitize !30

879:                                              ; preds = %872
  %880 = extractvalue { i64, i1 } %876, 0, !nosanitize !30
  %881 = load i64, ptr %696, align 8, !tbaa !51
  %882 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %881, i64 %880), !nosanitize !30
  %883 = extractvalue { i64, i1 } %882, 1, !nosanitize !30
  br i1 %883, label %884, label %885, !prof !32, !nosanitize !30

884:                                              ; preds = %879
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

885:                                              ; preds = %879
  %886 = extractvalue { i64, i1 } %882, 0, !nosanitize !30
  store i64 %886, ptr %696, align 8, !tbaa !51
  store i16 %844, ptr %865, align 2, !tbaa !28
  br label %887

887:                                              ; preds = %885, %862
  %888 = add nsw i32 %850, -1
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %.loopexit403, label %848, !llvm.loop !67

890:                                              ; preds = %.loopexit403
  %891 = add nsw i64 %837, -1
  %892 = and i64 %891, 4294967295
  %893 = icmp eq i64 %892, 0
  br i1 %893, label %.loopexit406, label %.preheader404, !llvm.loop !68

.loopexit406:                                     ; preds = %890, %.loopexit408, %774, %692
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %894 = load i16, ptr %682, align 2, !tbaa !61
  %895 = zext i16 %894 to i32
  %896 = shl nuw nsw i32 %895, 1
  %897 = trunc i32 %896 to i16
  %898 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %897, ptr %898, align 2, !tbaa !61
  %899 = getelementptr i8, ptr %0, i64 2978
  %900 = load i16, ptr %899, align 2, !tbaa !61
  %901 = zext i16 %900 to i32
  %902 = add nuw nsw i32 %896, %901
  %903 = shl nuw nsw i32 %902, 1
  %904 = trunc i32 %903 to i16
  %905 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %904, ptr %905, align 4, !tbaa !61
  %906 = getelementptr i8, ptr %0, i64 2980
  %907 = load i16, ptr %906, align 2, !tbaa !61
  %908 = zext i16 %907 to i32
  %909 = add nuw nsw i32 %903, %908
  %910 = shl nuw nsw i32 %909, 1
  %911 = trunc i32 %910 to i16
  %912 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %911, ptr %912, align 2, !tbaa !61
  %913 = getelementptr i8, ptr %0, i64 2982
  %914 = load i16, ptr %913, align 2, !tbaa !61
  %915 = zext i16 %914 to i32
  %916 = add nuw nsw i32 %910, %915
  %917 = shl nuw nsw i32 %916, 1
  %918 = trunc i32 %917 to i16
  %919 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %918, ptr %919, align 8, !tbaa !61
  %920 = getelementptr i8, ptr %0, i64 2984
  %921 = load i16, ptr %920, align 2, !tbaa !61
  %922 = zext i16 %921 to i32
  %923 = add nuw nsw i32 %917, %922
  %924 = shl nuw nsw i32 %923, 1
  %925 = trunc i32 %924 to i16
  %926 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %925, ptr %926, align 2, !tbaa !61
  %927 = getelementptr i8, ptr %0, i64 2986
  %928 = load i16, ptr %927, align 2, !tbaa !61
  %929 = zext i16 %928 to i32
  %930 = add nuw nsw i32 %924, %929
  %931 = shl nuw nsw i32 %930, 1
  %932 = trunc i32 %931 to i16
  %933 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %932, ptr %933, align 4, !tbaa !61
  %934 = getelementptr i8, ptr %0, i64 2988
  %935 = load i16, ptr %934, align 2, !tbaa !61
  %936 = zext i16 %935 to i32
  %937 = add nuw nsw i32 %931, %936
  %938 = shl nuw nsw i32 %937, 1
  %939 = trunc i32 %938 to i16
  %940 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %939, ptr %940, align 2, !tbaa !61
  %941 = getelementptr i8, ptr %0, i64 2990
  %942 = load i16, ptr %941, align 2, !tbaa !61
  %943 = trunc i32 %938 to i16
  %.tr978 = add i16 %942, %943
  %944 = shl i16 %.tr978, 1
  %945 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %944, ptr %945, align 16, !tbaa !61
  %946 = getelementptr i8, ptr %0, i64 2992
  %947 = load i16, ptr %946, align 2, !tbaa !61
  %.tr326 = add i16 %947, %944
  %948 = shl i16 %.tr326, 1
  %949 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %948, ptr %949, align 2, !tbaa !61
  %950 = getelementptr i8, ptr %0, i64 2994
  %951 = load i16, ptr %950, align 2, !tbaa !61
  %.tr = add i16 %948, %951
  %952 = shl i16 %.tr, 1
  %953 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %952, ptr %953, align 4, !tbaa !61
  %954 = getelementptr i8, ptr %0, i64 2996
  %955 = load i16, ptr %954, align 2, !tbaa !61
  %956 = add i16 %952, %955
  %957 = shl i16 %956, 1
  %958 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %957, ptr %958, align 2, !tbaa !61
  %959 = getelementptr i8, ptr %0, i64 2998
  %960 = load i16, ptr %959, align 2, !tbaa !61
  %961 = add i16 %957, %960
  %962 = shl i16 %961, 1
  %963 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %962, ptr %963, align 8, !tbaa !61
  %964 = getelementptr i8, ptr %0, i64 3000
  %965 = load i16, ptr %964, align 2, !tbaa !61
  %966 = add i16 %962, %965
  %967 = shl i16 %966, 1
  %968 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %967, ptr %968, align 2, !tbaa !61
  %969 = getelementptr i8, ptr %0, i64 3002
  %970 = load i16, ptr %969, align 2, !tbaa !61
  %971 = add i16 %967, %970
  %972 = shl i16 %971, 1
  %973 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %972, ptr %973, align 4, !tbaa !61
  %974 = getelementptr i8, ptr %0, i64 3004
  %975 = load i16, ptr %974, align 2, !tbaa !61
  %976 = add i16 %972, %975
  %977 = shl i16 %976, 1
  %978 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %977, ptr %978, align 2, !tbaa !61
  %979 = icmp slt i32 %235, 0
  br i1 %979, label %.loopexit401, label %.preheader400

980:                                              ; preds = %1030
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

.preheader400:                                    ; preds = %.loopexit406, %1032
  %981 = phi i64 [ %1033, %1032 ], [ 0, %.loopexit406 ]
  %982 = getelementptr inbounds nuw [4 x i8], ptr %158, i64 %981
  %983 = getelementptr inbounds nuw i8, ptr %982, i64 2
  %984 = load i16, ptr %983, align 2, !tbaa !28
  %985 = icmp eq i16 %984, 0
  br i1 %985, label %1030, label %986

986:                                              ; preds = %.preheader400
  %987 = zext i16 %984 to i32
  %988 = zext i16 %984 to i64
  %989 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %988
  %990 = load i16, ptr %989, align 2, !tbaa !61
  %991 = add i16 %990, 1
  store i16 %991, ptr %989, align 2, !tbaa !61
  %992 = and i32 %987, 3
  %993 = icmp ult i16 %984, 4
  br i1 %993, label %.loopexit399, label %994

994:                                              ; preds = %986
  %995 = and i32 %987, 65532
  br label %996

996:                                              ; preds = %996, %994
  %997 = phi i16 [ %990, %994 ], [ %1013, %996 ]
  %998 = phi i16 [ 0, %994 ], [ %1012, %996 ]
  %999 = phi i32 [ 0, %994 ], [ %1014, %996 ]
  %1000 = and i16 %997, 1
  %1001 = or disjoint i16 %998, %1000
  %1002 = lshr i16 %997, 2
  %1003 = shl i16 %1001, 2
  %1004 = and i16 %997, 2
  %1005 = or disjoint i16 %1003, %1004
  %1006 = and i16 %1002, 1
  %1007 = or disjoint i16 %1005, %1006
  %1008 = shl i16 %1007, 1
  %1009 = lshr i16 %997, 3
  %1010 = and i16 %1009, 1
  %1011 = or disjoint i16 %1008, %1010
  %1012 = shl i16 %1011, 1
  %1013 = lshr i16 %997, 4
  %1014 = add nuw nsw i32 %999, 4
  %1015 = icmp eq i32 %1014, %995
  br i1 %1015, label %.loopexit399, label %996, !llvm.loop !69

.loopexit399:                                     ; preds = %996, %986
  %1016 = phi i16 [ poison, %986 ], [ %1011, %996 ]
  %1017 = phi i16 [ %990, %986 ], [ %1013, %996 ]
  %1018 = phi i16 [ 0, %986 ], [ %1012, %996 ]
  %1019 = icmp eq i32 %992, 0
  br i1 %1019, label %.loopexit398, label %.preheader397

.preheader397:                                    ; preds = %.loopexit399, %.preheader397
  %1020 = phi i16 [ %1026, %.preheader397 ], [ %1017, %.loopexit399 ]
  %1021 = phi i16 [ %1025, %.preheader397 ], [ %1018, %.loopexit399 ]
  %1022 = phi i32 [ %1027, %.preheader397 ], [ 0, %.loopexit399 ]
  %1023 = and i16 %1020, 1
  %1024 = or disjoint i16 %1021, %1023
  %1025 = shl i16 %1024, 1
  %1026 = lshr i16 %1020, 1
  %1027 = add nuw nsw i32 %1022, 1
  %1028 = icmp eq i32 %1027, %992
  br i1 %1028, label %.loopexit398, label %.preheader397, !llvm.loop !70

.loopexit398:                                     ; preds = %.preheader397, %.loopexit399
  %1029 = phi i16 [ %1016, %.loopexit399 ], [ %1024, %.preheader397 ]
  store i16 %1029, ptr %982, align 2, !tbaa !28
  br label %1030

1030:                                             ; preds = %.loopexit398, %.preheader400
  %1031 = icmp eq i64 %981, 2147483647
  br i1 %1031, label %980, label %1032, !prof !32, !nosanitize !30

1032:                                             ; preds = %1030
  %1033 = add nuw nsw i64 %981, 1
  %1034 = trunc i64 %1033 to i32
  %1035 = icmp slt i32 %235, %1034
  br i1 %1035, label %.loopexit401, label %.preheader400, !llvm.loop !72

.loopexit401:                                     ; preds = %1032, %.loopexit406
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %1036 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %1037 = load ptr, ptr %1036, align 8, !tbaa !41
  %1038 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %1039 = load ptr, ptr %1038, align 8, !tbaa !42
  %1040 = load ptr, ptr %1039, align 8, !tbaa !43
  %1041 = getelementptr inbounds nuw i8, ptr %1039, i64 20
  %1042 = load i32, ptr %1041, align 4, !tbaa !46
  store i32 0, ptr %164, align 4, !tbaa !47
  store i32 573, ptr %165, align 8, !tbaa !48
  %1043 = icmp sgt i32 %1042, 0
  br i1 %1043, label %1044, label %1049

1044:                                             ; preds = %.loopexit401
  %1045 = zext nneg i32 %1042 to i64
  br label %1055

1046:                                             ; preds = %1073
  %1047 = load i32, ptr %164, align 4, !tbaa !47
  %1048 = icmp slt i32 %1047, 2
  br i1 %1048, label %1049, label %.loopexit395

1049:                                             ; preds = %1046, %.loopexit401
  %1050 = phi i32 [ %1074, %1046 ], [ -1, %.loopexit401 ]
  %1051 = phi i32 [ %1047, %1046 ], [ 0, %.loopexit401 ]
  %1052 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1053 = icmp eq ptr %1040, null
  %1054 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1077

1055:                                             ; preds = %1073, %1044
  %1056 = phi i64 [ 0, %1044 ], [ %1075, %1073 ]
  %1057 = phi i32 [ -1, %1044 ], [ %1074, %1073 ]
  %1058 = getelementptr inbounds nuw [4 x i8], ptr %1037, i64 %1056
  %1059 = load i16, ptr %1058, align 2, !tbaa !28
  %1060 = icmp eq i16 %1059, 0
  br i1 %1060, label %1071, label %1061

1061:                                             ; preds = %1055
  %1062 = load i32, ptr %164, align 4, !tbaa !47
  %1063 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1062, i32 1), !nosanitize !30
  %1064 = extractvalue { i32, i1 } %1063, 1, !nosanitize !30
  br i1 %1064, label %.loopexit4, label %1065, !prof !32, !nosanitize !30

.loopexit4:                                       ; preds = %1061, %1445, %1199
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

1065:                                             ; preds = %1061
  %1066 = extractvalue { i32, i1 } %1063, 0, !nosanitize !30
  store i32 %1066, ptr %164, align 4, !tbaa !47
  %1067 = sext i32 %1066 to i64
  %1068 = getelementptr inbounds [4 x i8], ptr %238, i64 %1067
  %1069 = trunc nuw nsw i64 %1056 to i32
  store i32 %1069, ptr %1068, align 4, !tbaa !49
  %1070 = getelementptr inbounds nuw i8, ptr %239, i64 %1056
  store i8 0, ptr %1070, align 1, !tbaa !28
  br label %1073

1071:                                             ; preds = %1055
  %1072 = getelementptr inbounds nuw i8, ptr %1058, i64 2
  store i16 0, ptr %1072, align 2, !tbaa !28
  br label %1073

1073:                                             ; preds = %1071, %1065
  %1074 = phi i32 [ %1069, %1065 ], [ %1057, %1071 ]
  %1075 = add nuw nsw i64 %1056, 1
  %1076 = icmp eq i64 %1075, %1045
  br i1 %1076, label %1046, label %1055, !llvm.loop !50

1077:                                             ; preds = %1105, %1049
  %1078 = phi i32 [ %1051, %1049 ], [ %1106, %1105 ]
  %1079 = phi i32 [ %1050, %1049 ], [ %1082, %1105 ]
  %1080 = icmp slt i32 %1079, 2
  %1081 = add i32 %1079, 1
  %1082 = select i1 %1080, i32 %1081, i32 %1079
  %1083 = add nsw i32 %1078, 1
  %1084 = select i1 %1080, i32 %1081, i32 0
  store i32 %1083, ptr %164, align 4, !tbaa !47
  %1085 = sext i32 %1083 to i64
  %1086 = getelementptr inbounds [4 x i8], ptr %238, i64 %1085
  store i32 %1084, ptr %1086, align 4, !tbaa !49
  %1087 = sext i32 %1084 to i64
  %1088 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1087
  store i16 1, ptr %1088, align 2, !tbaa !28
  %1089 = getelementptr inbounds i8, ptr %239, i64 %1087
  store i8 0, ptr %1089, align 1, !tbaa !28
  %1090 = load i64, ptr %1052, align 8, !tbaa !51
  %1091 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1090, i64 1), !nosanitize !30
  %1092 = extractvalue { i64, i1 } %1091, 1, !nosanitize !30
  br i1 %1092, label %1093, label %1094, !prof !32, !nosanitize !30

1093:                                             ; preds = %1077
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

1094:                                             ; preds = %1077
  %1095 = extractvalue { i64, i1 } %1091, 0, !nosanitize !30
  store i64 %1095, ptr %1052, align 8, !tbaa !51
  br i1 %1053, label %1105, label %1096

1096:                                             ; preds = %1094
  %.split314 = getelementptr inbounds [4 x i8], ptr %1040, i64 %1087
  %1097 = getelementptr inbounds nuw i8, ptr %.split314, i64 2
  %1098 = load i16, ptr %1097, align 2, !tbaa !28
  %1099 = zext i16 %1098 to i64
  %1100 = load i64, ptr %1054, align 8, !tbaa !52
  %1101 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1100, i64 %1099), !nosanitize !30
  %1102 = extractvalue { i64, i1 } %1101, 1, !nosanitize !30
  br i1 %1102, label %.loopexit3, label %1103, !prof !32, !nosanitize !30

.loopexit3:                                       ; preds = %1096, %.mv.ph7, %1431, %1438, %1185, %1192, %.loopexit388
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

1103:                                             ; preds = %1096
  %1104 = extractvalue { i64, i1 } %1101, 0, !nosanitize !30
  store i64 %1104, ptr %1054, align 8, !tbaa !52
  br label %1105

1105:                                             ; preds = %1103, %1094
  %1106 = load i32, ptr %164, align 4, !tbaa !47
  %1107 = icmp slt i32 %1106, 2
  br i1 %1107, label %1077, label %.loopexit395, !llvm.loop !53

.loopexit395:                                     ; preds = %1105, %1046
  %1108 = phi i32 [ %1074, %1046 ], [ %1082, %1105 ]
  %1109 = phi i32 [ %1047, %1046 ], [ %1106, %1105 ]
  %1110 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %1108, ptr %1110, align 8, !tbaa !54
  %1111 = lshr i32 %1109, 1
  %1112 = zext nneg i32 %1111 to i64
  br label %1288

1113:                                             ; preds = %.loopexit392
  %1114 = load i32, ptr %164, align 4, !tbaa !47
  %.fr315 = freeze i32 %1114
  %1115 = sext i32 %1042 to i64
  %mv.h5 = icmp sgt i32 %.fr315, -1
  br i1 %mv.h5, label %.mv.ph7.mv.fast, label %.mv.ph7

.mv.ph7.mv.fast:                                  ; preds = %1113, %1283
  %1116 = phi i32 [ %1286, %1283 ], [ %.fr315, %1113 ]
  %1117 = phi i64 [ %1224, %1283 ], [ %1115, %1113 ]
  %1118 = load i32, ptr %244, align 4, !tbaa !49
  %1119 = add nsw i32 %1116, -1
  store i32 %1119, ptr %164, align 4, !tbaa !47
  %1120 = zext nneg i32 %1116 to i64
  %1121 = getelementptr inbounds nuw [4 x i8], ptr %238, i64 %1120
  %1122 = load i32, ptr %1121, align 4, !tbaa !49
  store i32 %1122, ptr %244, align 4, !tbaa !49
  %1123 = sext i32 %1122 to i64
  %1124 = getelementptr inbounds i8, ptr %239, i64 %1123
  %1125 = icmp samesign ult i32 %1116, 3
  br i1 %1125, label %1185, label %1126

1126:                                             ; preds = %.mv.ph7.mv.fast
  %1127 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1123
  br label %1128

1128:                                             ; preds = %1176, %1126
  %1129 = phi i32 [ %1119, %1126 ], [ %1180, %1176 ]
  %1130 = phi i32 [ 2, %1126 ], [ %1179, %1176 ]
  %1131 = phi i32 [ 1, %1126 ], [ %1161, %1176 ]
  %1132 = icmp slt i32 %1130, %1129
  br i1 %1132, label %1135, label %1133

1133:                                             ; preds = %1128
  %1134 = sext i32 %1130 to i64
  br label %1159

1135:                                             ; preds = %1128
  %1136 = or disjoint i32 %1130, 1
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds [4 x i8], ptr %238, i64 %1137
  %1139 = load i32, ptr %1138, align 4, !tbaa !49
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1140
  %1142 = load i16, ptr %1141, align 2, !tbaa !28
  %1143 = sext i32 %1130 to i64
  %1144 = getelementptr inbounds [4 x i8], ptr %238, i64 %1143
  %1145 = load i32, ptr %1144, align 4, !tbaa !49
  %1146 = sext i32 %1145 to i64
  %1147 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1146
  %1148 = load i16, ptr %1147, align 2, !tbaa !28
  %1149 = icmp ult i16 %1142, %1148
  br i1 %1149, label %1158, label %1150

1150:                                             ; preds = %1135
  %1151 = icmp eq i16 %1142, %1148
  br i1 %1151, label %1152, label %1159

1152:                                             ; preds = %1150
  %1153 = getelementptr inbounds i8, ptr %239, i64 %1140
  %1154 = load i8, ptr %1153, align 1, !tbaa !28
  %1155 = getelementptr inbounds i8, ptr %239, i64 %1146
  %1156 = load i8, ptr %1155, align 1, !tbaa !28
  %1157 = icmp ugt i8 %1154, %1156
  br i1 %1157, label %1159, label %1158

1158:                                             ; preds = %1152, %1135
  br label %1159

1159:                                             ; preds = %1158, %1152, %1150, %1133
  %1160 = phi i64 [ %1134, %1133 ], [ %1137, %1158 ], [ %1143, %1152 ], [ %1143, %1150 ]
  %1161 = phi i32 [ %1130, %1133 ], [ %1136, %1158 ], [ %1130, %1152 ], [ %1130, %1150 ]
  %1162 = load i16, ptr %1127, align 2, !tbaa !28
  %1163 = getelementptr inbounds [4 x i8], ptr %238, i64 %1160
  %1164 = load i32, ptr %1163, align 4, !tbaa !49
  %1165 = sext i32 %1164 to i64
  %1166 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1165
  %1167 = load i16, ptr %1166, align 2, !tbaa !28
  %1168 = icmp ult i16 %1162, %1167
  br i1 %1168, label %1182, label %1169

1169:                                             ; preds = %1159
  %1170 = icmp eq i16 %1162, %1167
  br i1 %1170, label %1171, label %1176

1171:                                             ; preds = %1169
  %1172 = load i8, ptr %1124, align 1, !tbaa !28
  %1173 = getelementptr inbounds i8, ptr %239, i64 %1165
  %1174 = load i8, ptr %1173, align 1, !tbaa !28
  %1175 = icmp ugt i8 %1172, %1174
  br i1 %1175, label %1176, label %1182

1176:                                             ; preds = %1171, %1169
  %1177 = sext i32 %1131 to i64
  %1178 = getelementptr inbounds [4 x i8], ptr %238, i64 %1177
  store i32 %1164, ptr %1178, align 4, !tbaa !49
  %1179 = shl i32 %1161, 1
  %1180 = load i32, ptr %164, align 4, !tbaa !47
  %1181 = icmp sgt i32 %1179, %1180
  br i1 %1181, label %1182, label %1128, !llvm.loop !55

1182:                                             ; preds = %1176, %1171, %1159
  %1183 = phi i32 [ %1131, %1159 ], [ %1131, %1171 ], [ %1161, %1176 ]
  %1184 = sext i32 %1183 to i64
  br label %1185

1185:                                             ; preds = %1182, %.mv.ph7.mv.fast
  %1186 = phi i64 [ 1, %.mv.ph7.mv.fast ], [ %1184, %1182 ]
  %1187 = getelementptr inbounds [4 x i8], ptr %238, i64 %1186
  store i32 %1122, ptr %1187, align 4, !tbaa !49
  %1188 = load i32, ptr %244, align 4, !tbaa !49
  %1189 = load i32, ptr %165, align 8, !tbaa !48
  %1190 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1189, i32 -1)
  %1191 = extractvalue { i32, i1 } %1190, 1, !nosanitize !30
  br i1 %1191, label %.loopexit3, label %1192, !prof !32, !nosanitize !30

1192:                                             ; preds = %1185
  %1193 = extractvalue { i32, i1 } %1190, 0, !nosanitize !30
  store i32 %1193, ptr %165, align 8, !tbaa !48
  %1194 = sext i32 %1193 to i64
  %1195 = getelementptr inbounds [4 x i8], ptr %238, i64 %1194
  store i32 %1118, ptr %1195, align 4, !tbaa !49
  %1196 = load i32, ptr %165, align 8, !tbaa !48
  %1197 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1196, i32 -1)
  %1198 = extractvalue { i32, i1 } %1197, 1, !nosanitize !30
  br i1 %1198, label %.loopexit3, label %1199, !prof !32, !nosanitize !30

1199:                                             ; preds = %1192
  %1200 = extractvalue { i32, i1 } %1197, 0, !nosanitize !30
  store i32 %1200, ptr %165, align 8, !tbaa !48
  %1201 = sext i32 %1200 to i64
  %1202 = getelementptr inbounds [4 x i8], ptr %238, i64 %1201
  store i32 %1188, ptr %1202, align 4, !tbaa !49
  %1203 = sext i32 %1118 to i64
  %1204 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1203
  %1205 = load i16, ptr %1204, align 2, !tbaa !28
  %1206 = sext i32 %1188 to i64
  %1207 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1206
  %1208 = load i16, ptr %1207, align 2, !tbaa !28
  %1209 = add i16 %1208, %1205
  %1210 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1117
  store i16 %1209, ptr %1210, align 2, !tbaa !28
  %1211 = getelementptr inbounds i8, ptr %239, i64 %1203
  %1212 = load i8, ptr %1211, align 1, !tbaa !28
  %1213 = getelementptr inbounds i8, ptr %239, i64 %1206
  %1214 = load i8, ptr %1213, align 1, !tbaa !28
  %1215 = tail call i8 @llvm.umax.i8(i8 %1212, i8 %1214)
  %1216 = add i8 %1215, 1
  %1217 = getelementptr inbounds i8, ptr %239, i64 %1117
  store i8 %1216, ptr %1217, align 1, !tbaa !28
  %1218 = trunc nsw i64 %1117 to i32
  %1219 = trunc i64 %1117 to i16
  %1220 = getelementptr inbounds nuw i8, ptr %1207, i64 2
  store i16 %1219, ptr %1220, align 2, !tbaa !28
  %1221 = getelementptr inbounds nuw i8, ptr %1204, i64 2
  store i16 %1219, ptr %1221, align 2, !tbaa !28
  %1222 = icmp eq i64 %1117, 2147483647
  br i1 %1222, label %.loopexit4, label %1223, !prof !32, !nosanitize !30

1223:                                             ; preds = %1199
  %1224 = add nsw i64 %1117, 1
  store i32 %1218, ptr %244, align 4, !tbaa !49
  %1225 = load i32, ptr %164, align 4, !tbaa !47
  %1226 = icmp slt i32 %1225, 2
  br i1 %1226, label %1283, label %.preheader2.mv.fast

.preheader2.mv.fast:                              ; preds = %1223, %1274
  %1227 = phi i32 [ %1278, %1274 ], [ %1225, %1223 ]
  %1228 = phi i32 [ %1277, %1274 ], [ 2, %1223 ]
  %1229 = phi i32 [ %1259, %1274 ], [ 1, %1223 ]
  %1230 = icmp slt i32 %1228, %1227
  br i1 %1230, label %1233, label %1231

1231:                                             ; preds = %.preheader2.mv.fast
  %1232 = sext i32 %1228 to i64
  br label %1257

1233:                                             ; preds = %.preheader2.mv.fast
  %1234 = or disjoint i32 %1228, 1
  %1235 = sext i32 %1234 to i64
  %1236 = getelementptr inbounds [4 x i8], ptr %238, i64 %1235
  %1237 = load i32, ptr %1236, align 4, !tbaa !49
  %1238 = sext i32 %1237 to i64
  %1239 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1238
  %1240 = load i16, ptr %1239, align 2, !tbaa !28
  %1241 = sext i32 %1228 to i64
  %1242 = getelementptr inbounds [4 x i8], ptr %238, i64 %1241
  %1243 = load i32, ptr %1242, align 4, !tbaa !49
  %1244 = sext i32 %1243 to i64
  %1245 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1244
  %1246 = load i16, ptr %1245, align 2, !tbaa !28
  %1247 = icmp ult i16 %1240, %1246
  br i1 %1247, label %1256, label %1248

1248:                                             ; preds = %1233
  %1249 = icmp eq i16 %1240, %1246
  br i1 %1249, label %1250, label %1257

1250:                                             ; preds = %1248
  %1251 = getelementptr inbounds i8, ptr %239, i64 %1238
  %1252 = load i8, ptr %1251, align 1, !tbaa !28
  %1253 = getelementptr inbounds i8, ptr %239, i64 %1244
  %1254 = load i8, ptr %1253, align 1, !tbaa !28
  %1255 = icmp ugt i8 %1252, %1254
  br i1 %1255, label %1257, label %1256

1256:                                             ; preds = %1250, %1233
  br label %1257

1257:                                             ; preds = %1256, %1250, %1248, %1231
  %1258 = phi i64 [ %1232, %1231 ], [ %1235, %1256 ], [ %1241, %1250 ], [ %1241, %1248 ]
  %1259 = phi i32 [ %1228, %1231 ], [ %1234, %1256 ], [ %1228, %1250 ], [ %1228, %1248 ]
  %1260 = load i16, ptr %1210, align 2, !tbaa !28
  %1261 = getelementptr inbounds [4 x i8], ptr %238, i64 %1258
  %1262 = load i32, ptr %1261, align 4, !tbaa !49
  %1263 = sext i32 %1262 to i64
  %1264 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1263
  %1265 = load i16, ptr %1264, align 2, !tbaa !28
  %1266 = icmp ult i16 %1260, %1265
  br i1 %1266, label %1280, label %1267

1267:                                             ; preds = %1257
  %1268 = icmp eq i16 %1260, %1265
  br i1 %1268, label %1269, label %1274

1269:                                             ; preds = %1267
  %1270 = load i8, ptr %1217, align 1, !tbaa !28
  %1271 = getelementptr inbounds i8, ptr %239, i64 %1263
  %1272 = load i8, ptr %1271, align 1, !tbaa !28
  %1273 = icmp ugt i8 %1270, %1272
  br i1 %1273, label %1274, label %1280

1274:                                             ; preds = %1269, %1267
  %1275 = sext i32 %1229 to i64
  %1276 = getelementptr inbounds [4 x i8], ptr %238, i64 %1275
  store i32 %1262, ptr %1276, align 4, !tbaa !49
  %1277 = shl i32 %1259, 1
  %1278 = load i32, ptr %164, align 4, !tbaa !47
  %1279 = icmp sgt i32 %1277, %1278
  br i1 %1279, label %1280, label %.preheader2.mv.fast, !llvm.loop !55

1280:                                             ; preds = %1274, %1269, %1257
  %1281 = phi i32 [ %1229, %1257 ], [ %1229, %1269 ], [ %1259, %1274 ]
  %1282 = sext i32 %1281 to i64
  br label %1283

1283:                                             ; preds = %1280, %1223
  %1284 = phi i64 [ 1, %1223 ], [ %1282, %1280 ]
  %1285 = getelementptr inbounds [4 x i8], ptr %238, i64 %1284
  store i32 %1218, ptr %1285, align 4, !tbaa !49
  %1286 = load i32, ptr %164, align 4, !tbaa !47
  %1287 = icmp sgt i32 %1286, 1
  br i1 %1287, label %.mv.ph7.mv.fast, label %.loopexit388, !llvm.loop !56

1288:                                             ; preds = %.loopexit392, %.loopexit395
  %1289 = phi i64 [ %1112, %.loopexit395 ], [ %1357, %.loopexit392 ]
  %1290 = getelementptr inbounds nuw [4 x i8], ptr %238, i64 %1289
  %1291 = load i32, ptr %1290, align 4, !tbaa !49
  %1292 = sext i32 %1291 to i64
  %1293 = getelementptr inbounds i8, ptr %239, i64 %1292
  %1294 = load i32, ptr %164, align 4, !tbaa !47
  %1295 = trunc i64 %1289 to i32
  %1296 = shl i32 %1295, 1
  %1297 = icmp sgt i32 %1296, %1294
  br i1 %1297, label %.loopexit392, label %1298

1298:                                             ; preds = %1288
  %1299 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1292
  br label %1300

1300:                                             ; preds = %1348, %1298
  %1301 = phi i32 [ %1294, %1298 ], [ %1352, %1348 ]
  %1302 = phi i32 [ %1296, %1298 ], [ %1351, %1348 ]
  %1303 = phi i32 [ %1295, %1298 ], [ %1333, %1348 ]
  %1304 = icmp slt i32 %1302, %1301
  br i1 %1304, label %1307, label %1305

1305:                                             ; preds = %1300
  %1306 = sext i32 %1302 to i64
  br label %1331

1307:                                             ; preds = %1300
  %1308 = or disjoint i32 %1302, 1
  %1309 = sext i32 %1308 to i64
  %1310 = getelementptr inbounds [4 x i8], ptr %238, i64 %1309
  %1311 = load i32, ptr %1310, align 4, !tbaa !49
  %1312 = sext i32 %1311 to i64
  %1313 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1312
  %1314 = load i16, ptr %1313, align 2, !tbaa !28
  %1315 = sext i32 %1302 to i64
  %1316 = getelementptr inbounds [4 x i8], ptr %238, i64 %1315
  %1317 = load i32, ptr %1316, align 4, !tbaa !49
  %1318 = sext i32 %1317 to i64
  %1319 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1318
  %1320 = load i16, ptr %1319, align 2, !tbaa !28
  %1321 = icmp ult i16 %1314, %1320
  br i1 %1321, label %1330, label %1322

1322:                                             ; preds = %1307
  %1323 = icmp eq i16 %1314, %1320
  br i1 %1323, label %1324, label %1331

1324:                                             ; preds = %1322
  %1325 = getelementptr inbounds i8, ptr %239, i64 %1312
  %1326 = load i8, ptr %1325, align 1, !tbaa !28
  %1327 = getelementptr inbounds i8, ptr %239, i64 %1318
  %1328 = load i8, ptr %1327, align 1, !tbaa !28
  %1329 = icmp ugt i8 %1326, %1328
  br i1 %1329, label %1331, label %1330

1330:                                             ; preds = %1324, %1307
  br label %1331

1331:                                             ; preds = %1330, %1324, %1322, %1305
  %1332 = phi i64 [ %1306, %1305 ], [ %1309, %1330 ], [ %1315, %1324 ], [ %1315, %1322 ]
  %1333 = phi i32 [ %1302, %1305 ], [ %1308, %1330 ], [ %1302, %1324 ], [ %1302, %1322 ]
  %1334 = load i16, ptr %1299, align 2, !tbaa !28
  %1335 = getelementptr inbounds [4 x i8], ptr %238, i64 %1332
  %1336 = load i32, ptr %1335, align 4, !tbaa !49
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1337
  %1339 = load i16, ptr %1338, align 2, !tbaa !28
  %1340 = icmp ult i16 %1334, %1339
  br i1 %1340, label %.loopexit392, label %1341

1341:                                             ; preds = %1331
  %1342 = icmp eq i16 %1334, %1339
  br i1 %1342, label %1343, label %1348

1343:                                             ; preds = %1341
  %1344 = load i8, ptr %1293, align 1, !tbaa !28
  %1345 = getelementptr inbounds i8, ptr %239, i64 %1337
  %1346 = load i8, ptr %1345, align 1, !tbaa !28
  %1347 = icmp ugt i8 %1344, %1346
  br i1 %1347, label %1348, label %.loopexit392

1348:                                             ; preds = %1343, %1341
  %1349 = sext i32 %1303 to i64
  %1350 = getelementptr inbounds [4 x i8], ptr %238, i64 %1349
  store i32 %1336, ptr %1350, align 4, !tbaa !49
  %1351 = shl i32 %1333, 1
  %1352 = load i32, ptr %164, align 4, !tbaa !47
  %1353 = icmp sgt i32 %1351, %1352
  br i1 %1353, label %.loopexit392, label %1300, !llvm.loop !55

.loopexit392:                                     ; preds = %1348, %1343, %1331, %1288
  %1354 = phi i32 [ %1295, %1288 ], [ %1333, %1348 ], [ %1303, %1343 ], [ %1303, %1331 ]
  %1355 = sext i32 %1354 to i64
  %1356 = getelementptr inbounds [4 x i8], ptr %238, i64 %1355
  store i32 %1291, ptr %1356, align 4, !tbaa !49
  %1357 = add nsw i64 %1289, -1
  %1358 = icmp sgt i64 %1289, 1
  br i1 %1358, label %1288, label %1113, !llvm.loop !57

.mv.ph7:                                          ; preds = %1113, %1529
  %1359 = phi i32 [ %1532, %1529 ], [ %.fr315, %1113 ]
  %1360 = phi i64 [ %1470, %1529 ], [ %1115, %1113 ]
  %1361 = load i32, ptr %244, align 4, !tbaa !49
  %1362 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1359, i32 -1)
  %1363 = extractvalue { i32, i1 } %1362, 1, !nosanitize !30
  br i1 %1363, label %.loopexit3, label %1364, !prof !32, !nosanitize !30

1364:                                             ; preds = %.mv.ph7
  %1365 = extractvalue { i32, i1 } %1362, 0, !nosanitize !30
  store i32 %1365, ptr %164, align 4, !tbaa !47
  %1366 = sext i32 %1359 to i64
  %1367 = getelementptr inbounds [4 x i8], ptr %238, i64 %1366
  %1368 = load i32, ptr %1367, align 4, !tbaa !49
  store i32 %1368, ptr %244, align 4, !tbaa !49
  %1369 = sext i32 %1368 to i64
  %1370 = getelementptr inbounds i8, ptr %239, i64 %1369
  %1371 = icmp slt i32 %1365, 2
  br i1 %1371, label %1431, label %1372

1372:                                             ; preds = %1364
  %1373 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1369
  br label %1374

1374:                                             ; preds = %1422, %1372
  %1375 = phi i32 [ %1365, %1372 ], [ %1426, %1422 ]
  %1376 = phi i32 [ 2, %1372 ], [ %1425, %1422 ]
  %1377 = phi i32 [ 1, %1372 ], [ %1407, %1422 ]
  %1378 = icmp slt i32 %1376, %1375
  br i1 %1378, label %1381, label %1379

1379:                                             ; preds = %1374
  %1380 = sext i32 %1376 to i64
  br label %1405

1381:                                             ; preds = %1374
  %1382 = or disjoint i32 %1376, 1
  %1383 = sext i32 %1382 to i64
  %1384 = getelementptr inbounds [4 x i8], ptr %238, i64 %1383
  %1385 = load i32, ptr %1384, align 4, !tbaa !49
  %1386 = sext i32 %1385 to i64
  %1387 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1386
  %1388 = load i16, ptr %1387, align 2, !tbaa !28
  %1389 = sext i32 %1376 to i64
  %1390 = getelementptr inbounds [4 x i8], ptr %238, i64 %1389
  %1391 = load i32, ptr %1390, align 4, !tbaa !49
  %1392 = sext i32 %1391 to i64
  %1393 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1392
  %1394 = load i16, ptr %1393, align 2, !tbaa !28
  %1395 = icmp ult i16 %1388, %1394
  br i1 %1395, label %1404, label %1396

1396:                                             ; preds = %1381
  %1397 = icmp eq i16 %1388, %1394
  br i1 %1397, label %1398, label %1405

1398:                                             ; preds = %1396
  %1399 = getelementptr inbounds i8, ptr %239, i64 %1386
  %1400 = load i8, ptr %1399, align 1, !tbaa !28
  %1401 = getelementptr inbounds i8, ptr %239, i64 %1392
  %1402 = load i8, ptr %1401, align 1, !tbaa !28
  %1403 = icmp ugt i8 %1400, %1402
  br i1 %1403, label %1405, label %1404

1404:                                             ; preds = %1398, %1381
  br label %1405

1405:                                             ; preds = %1404, %1398, %1396, %1379
  %1406 = phi i64 [ %1380, %1379 ], [ %1383, %1404 ], [ %1389, %1398 ], [ %1389, %1396 ]
  %1407 = phi i32 [ %1376, %1379 ], [ %1382, %1404 ], [ %1376, %1398 ], [ %1376, %1396 ]
  %1408 = load i16, ptr %1373, align 2, !tbaa !28
  %1409 = getelementptr inbounds [4 x i8], ptr %238, i64 %1406
  %1410 = load i32, ptr %1409, align 4, !tbaa !49
  %1411 = sext i32 %1410 to i64
  %1412 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1411
  %1413 = load i16, ptr %1412, align 2, !tbaa !28
  %1414 = icmp ult i16 %1408, %1413
  br i1 %1414, label %1428, label %1415

1415:                                             ; preds = %1405
  %1416 = icmp eq i16 %1408, %1413
  br i1 %1416, label %1417, label %1422

1417:                                             ; preds = %1415
  %1418 = load i8, ptr %1370, align 1, !tbaa !28
  %1419 = getelementptr inbounds i8, ptr %239, i64 %1411
  %1420 = load i8, ptr %1419, align 1, !tbaa !28
  %1421 = icmp ugt i8 %1418, %1420
  br i1 %1421, label %1422, label %1428

1422:                                             ; preds = %1417, %1415
  %1423 = sext i32 %1377 to i64
  %1424 = getelementptr inbounds [4 x i8], ptr %238, i64 %1423
  store i32 %1410, ptr %1424, align 4, !tbaa !49
  %1425 = shl i32 %1407, 1
  %1426 = load i32, ptr %164, align 4, !tbaa !47
  %1427 = icmp sgt i32 %1425, %1426
  br i1 %1427, label %1428, label %1374, !llvm.loop !55

1428:                                             ; preds = %1422, %1417, %1405
  %1429 = phi i32 [ %1377, %1405 ], [ %1377, %1417 ], [ %1407, %1422 ]
  %1430 = sext i32 %1429 to i64
  br label %1431

1431:                                             ; preds = %1428, %1364
  %1432 = phi i64 [ 1, %1364 ], [ %1430, %1428 ]
  %1433 = getelementptr inbounds [4 x i8], ptr %238, i64 %1432
  store i32 %1368, ptr %1433, align 4, !tbaa !49
  %1434 = load i32, ptr %244, align 4, !tbaa !49
  %1435 = load i32, ptr %165, align 8, !tbaa !48
  %1436 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1435, i32 -1)
  %1437 = extractvalue { i32, i1 } %1436, 1, !nosanitize !30
  br i1 %1437, label %.loopexit3, label %1438, !prof !32, !nosanitize !30

1438:                                             ; preds = %1431
  %1439 = extractvalue { i32, i1 } %1436, 0, !nosanitize !30
  store i32 %1439, ptr %165, align 8, !tbaa !48
  %1440 = sext i32 %1439 to i64
  %1441 = getelementptr inbounds [4 x i8], ptr %238, i64 %1440
  store i32 %1361, ptr %1441, align 4, !tbaa !49
  %1442 = load i32, ptr %165, align 8, !tbaa !48
  %1443 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1442, i32 -1)
  %1444 = extractvalue { i32, i1 } %1443, 1, !nosanitize !30
  br i1 %1444, label %.loopexit3, label %1445, !prof !32, !nosanitize !30

1445:                                             ; preds = %1438
  %1446 = extractvalue { i32, i1 } %1443, 0, !nosanitize !30
  store i32 %1446, ptr %165, align 8, !tbaa !48
  %1447 = sext i32 %1446 to i64
  %1448 = getelementptr inbounds [4 x i8], ptr %238, i64 %1447
  store i32 %1434, ptr %1448, align 4, !tbaa !49
  %1449 = sext i32 %1361 to i64
  %1450 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1449
  %1451 = load i16, ptr %1450, align 2, !tbaa !28
  %1452 = sext i32 %1434 to i64
  %1453 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1452
  %1454 = load i16, ptr %1453, align 2, !tbaa !28
  %1455 = add i16 %1454, %1451
  %1456 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1360
  store i16 %1455, ptr %1456, align 2, !tbaa !28
  %1457 = getelementptr inbounds i8, ptr %239, i64 %1449
  %1458 = load i8, ptr %1457, align 1, !tbaa !28
  %1459 = getelementptr inbounds i8, ptr %239, i64 %1452
  %1460 = load i8, ptr %1459, align 1, !tbaa !28
  %1461 = tail call i8 @llvm.umax.i8(i8 %1458, i8 %1460)
  %1462 = add i8 %1461, 1
  %1463 = getelementptr inbounds i8, ptr %239, i64 %1360
  store i8 %1462, ptr %1463, align 1, !tbaa !28
  %1464 = trunc nsw i64 %1360 to i32
  %1465 = trunc i64 %1360 to i16
  %1466 = getelementptr inbounds nuw i8, ptr %1453, i64 2
  store i16 %1465, ptr %1466, align 2, !tbaa !28
  %1467 = getelementptr inbounds nuw i8, ptr %1450, i64 2
  store i16 %1465, ptr %1467, align 2, !tbaa !28
  %1468 = icmp eq i64 %1360, 2147483647
  br i1 %1468, label %.loopexit4, label %1469, !prof !32, !nosanitize !30

1469:                                             ; preds = %1445
  %1470 = add nsw i64 %1360, 1
  store i32 %1464, ptr %244, align 4, !tbaa !49
  %1471 = load i32, ptr %164, align 4, !tbaa !47
  %1472 = icmp slt i32 %1471, 2
  br i1 %1472, label %1529, label %.preheader2

.preheader2:                                      ; preds = %1469, %1520
  %1473 = phi i32 [ %1524, %1520 ], [ %1471, %1469 ]
  %1474 = phi i32 [ %1523, %1520 ], [ 2, %1469 ]
  %1475 = phi i32 [ %1505, %1520 ], [ 1, %1469 ]
  %1476 = icmp slt i32 %1474, %1473
  br i1 %1476, label %1479, label %1477

1477:                                             ; preds = %.preheader2
  %1478 = sext i32 %1474 to i64
  br label %1503

1479:                                             ; preds = %.preheader2
  %1480 = or disjoint i32 %1474, 1
  %1481 = sext i32 %1480 to i64
  %1482 = getelementptr inbounds [4 x i8], ptr %238, i64 %1481
  %1483 = load i32, ptr %1482, align 4, !tbaa !49
  %1484 = sext i32 %1483 to i64
  %1485 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1484
  %1486 = load i16, ptr %1485, align 2, !tbaa !28
  %1487 = sext i32 %1474 to i64
  %1488 = getelementptr inbounds [4 x i8], ptr %238, i64 %1487
  %1489 = load i32, ptr %1488, align 4, !tbaa !49
  %1490 = sext i32 %1489 to i64
  %1491 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1490
  %1492 = load i16, ptr %1491, align 2, !tbaa !28
  %1493 = icmp ult i16 %1486, %1492
  br i1 %1493, label %1502, label %1494

1494:                                             ; preds = %1479
  %1495 = icmp eq i16 %1486, %1492
  br i1 %1495, label %1496, label %1503

1496:                                             ; preds = %1494
  %1497 = getelementptr inbounds i8, ptr %239, i64 %1484
  %1498 = load i8, ptr %1497, align 1, !tbaa !28
  %1499 = getelementptr inbounds i8, ptr %239, i64 %1490
  %1500 = load i8, ptr %1499, align 1, !tbaa !28
  %1501 = icmp ugt i8 %1498, %1500
  br i1 %1501, label %1503, label %1502

1502:                                             ; preds = %1496, %1479
  br label %1503

1503:                                             ; preds = %1502, %1496, %1494, %1477
  %1504 = phi i64 [ %1478, %1477 ], [ %1481, %1502 ], [ %1487, %1496 ], [ %1487, %1494 ]
  %1505 = phi i32 [ %1474, %1477 ], [ %1480, %1502 ], [ %1474, %1496 ], [ %1474, %1494 ]
  %1506 = load i16, ptr %1456, align 2, !tbaa !28
  %1507 = getelementptr inbounds [4 x i8], ptr %238, i64 %1504
  %1508 = load i32, ptr %1507, align 4, !tbaa !49
  %1509 = sext i32 %1508 to i64
  %1510 = getelementptr inbounds [4 x i8], ptr %1037, i64 %1509
  %1511 = load i16, ptr %1510, align 2, !tbaa !28
  %1512 = icmp ult i16 %1506, %1511
  br i1 %1512, label %1526, label %1513

1513:                                             ; preds = %1503
  %1514 = icmp eq i16 %1506, %1511
  br i1 %1514, label %1515, label %1520

1515:                                             ; preds = %1513
  %1516 = load i8, ptr %1463, align 1, !tbaa !28
  %1517 = getelementptr inbounds i8, ptr %239, i64 %1509
  %1518 = load i8, ptr %1517, align 1, !tbaa !28
  %1519 = icmp ugt i8 %1516, %1518
  br i1 %1519, label %1520, label %1526

1520:                                             ; preds = %1515, %1513
  %1521 = sext i32 %1475 to i64
  %1522 = getelementptr inbounds [4 x i8], ptr %238, i64 %1521
  store i32 %1508, ptr %1522, align 4, !tbaa !49
  %1523 = shl i32 %1505, 1
  %1524 = load i32, ptr %164, align 4, !tbaa !47
  %1525 = icmp sgt i32 %1523, %1524
  br i1 %1525, label %1526, label %.preheader2, !llvm.loop !55

1526:                                             ; preds = %1520, %1515, %1503
  %1527 = phi i32 [ %1475, %1503 ], [ %1475, %1515 ], [ %1505, %1520 ]
  %1528 = sext i32 %1527 to i64
  br label %1529

1529:                                             ; preds = %1526, %1469
  %1530 = phi i64 [ 1, %1469 ], [ %1528, %1526 ]
  %1531 = getelementptr inbounds [4 x i8], ptr %238, i64 %1530
  store i32 %1464, ptr %1531, align 4, !tbaa !49
  %1532 = load i32, ptr %164, align 4, !tbaa !47
  %1533 = icmp sgt i32 %1532, 1
  br i1 %1533, label %.mv.ph7, label %.loopexit388, !llvm.loop !56

.loopexit388:                                     ; preds = %1529, %1283
  %1534 = load i32, ptr %165, align 8, !tbaa !48
  %1535 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1534, i32 -1)
  %1536 = extractvalue { i32, i1 } %1535, 1, !nosanitize !30
  br i1 %1536, label %.loopexit3, label %1537, !prof !32, !nosanitize !30

1537:                                             ; preds = %.loopexit388
  %1538 = extractvalue { i32, i1 } %1535, 0, !nosanitize !30
  %1539 = load i32, ptr %244, align 4, !tbaa !49
  store i32 %1538, ptr %165, align 8, !tbaa !48
  %1540 = sext i32 %1538 to i64
  %1541 = getelementptr inbounds [4 x i8], ptr %238, i64 %1540
  store i32 %1539, ptr %1541, align 4, !tbaa !49
  %1542 = load ptr, ptr %1036, align 8, !tbaa !41
  %1543 = load i32, ptr %1110, align 8, !tbaa !54
  %1544 = load ptr, ptr %1038, align 8, !tbaa !42
  %1545 = load ptr, ptr %1544, align 8, !tbaa !43
  %1546 = getelementptr inbounds nuw i8, ptr %1544, i64 8
  %1547 = load ptr, ptr %1546, align 8, !tbaa !58
  %1548 = getelementptr inbounds nuw i8, ptr %1544, i64 16
  %1549 = load i32, ptr %1548, align 8, !tbaa !59
  %1550 = getelementptr inbounds nuw i8, ptr %1544, i64 24
  %1551 = load i32, ptr %1550, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %682, i8 0, i64 32, i1 false), !tbaa !61
  %1552 = load i32, ptr %165, align 8, !tbaa !48
  %1553 = sext i32 %1552 to i64
  %1554 = getelementptr inbounds [4 x i8], ptr %238, i64 %1553
  %1555 = load i32, ptr %1554, align 4, !tbaa !49
  %1556 = sext i32 %1555 to i64
  %.split316 = getelementptr inbounds [4 x i8], ptr %1542, i64 %1556
  %1557 = getelementptr inbounds nuw i8, ptr %.split316, i64 2
  store i16 0, ptr %1557, align 2, !tbaa !28
  %1558 = load i32, ptr %165, align 8, !tbaa !48
  %1559 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1558, i32 1), !nosanitize !30
  %1560 = extractvalue { i32, i1 } %1559, 1, !nosanitize !30
  br i1 %1560, label %.loopexit385, label %1561, !prof !32, !nosanitize !30

.loopexit385:                                     ; preds = %1608, %1584, %1537
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

1561:                                             ; preds = %1537
  %1562 = extractvalue { i32, i1 } %1559, 0
  %1563 = icmp slt i32 %1562, 573
  br i1 %1563, label %1564, label %.loopexit380

1564:                                             ; preds = %1561
  %1565 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1566 = icmp eq ptr %1545, null
  %1567 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1568 = sext i32 %1562 to i64
  br label %1569

1569:                                             ; preds = %1639, %1564
  %1570 = phi i64 [ %1568, %1564 ], [ %1640, %1639 ]
  %1571 = phi i32 [ 0, %1564 ], [ %1591, %1639 ]
  %1572 = getelementptr inbounds [4 x i8], ptr %238, i64 %1570
  %1573 = load i32, ptr %1572, align 4, !tbaa !49
  %1574 = sext i32 %1573 to i64
  %1575 = getelementptr inbounds [4 x i8], ptr %1542, i64 %1574
  %1576 = getelementptr inbounds nuw i8, ptr %1575, i64 2
  %1577 = load i16, ptr %1576, align 2, !tbaa !28
  %1578 = zext i16 %1577 to i64
  %.split317 = getelementptr inbounds nuw [4 x i8], ptr %1542, i64 %1578
  %1579 = getelementptr inbounds nuw i8, ptr %.split317, i64 2
  %1580 = load i16, ptr %1579, align 2, !tbaa !28
  %1581 = zext i16 %1580 to i32
  %1582 = add nuw nsw i32 %1581, 1
  %1583 = icmp sgt i32 %1551, %1581
  br i1 %1583, label %1589, label %1584

1584:                                             ; preds = %1569
  %1585 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1571, i32 1), !nosanitize !30
  %1586 = extractvalue { i32, i1 } %1585, 1, !nosanitize !30
  br i1 %1586, label %.loopexit385, label %1587, !prof !32, !nosanitize !30

1587:                                             ; preds = %1584
  %1588 = extractvalue { i32, i1 } %1585, 0, !nosanitize !30
  br label %1589

1589:                                             ; preds = %1587, %1569
  %1590 = phi i32 [ %1551, %1587 ], [ %1582, %1569 ]
  %1591 = phi i32 [ %1588, %1587 ], [ %1571, %1569 ]
  %1592 = trunc i32 %1590 to i16
  store i16 %1592, ptr %1576, align 2, !tbaa !28
  %1593 = icmp sgt i32 %1573, %1543
  br i1 %1593, label %1639, label %1594

1594:                                             ; preds = %1589
  %1595 = sext i32 %1590 to i64
  %1596 = getelementptr inbounds [2 x i8], ptr %682, i64 %1595
  %1597 = load i16, ptr %1596, align 2, !tbaa !61
  %1598 = add i16 %1597, 1
  store i16 %1598, ptr %1596, align 2, !tbaa !61
  %1599 = icmp slt i32 %1573, %1549
  br i1 %1599, label %1608, label %1600

1600:                                             ; preds = %1594
  %1601 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1573, i32 %1549), !nosanitize !30
  %1602 = extractvalue { i32, i1 } %1601, 1, !nosanitize !30
  br i1 %1602, label %.loopexit375, label %1603, !prof !32, !nosanitize !30

.loopexit375:                                     ; preds = %1600, %1666, %1658, %1692, %1697, %1645
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

1603:                                             ; preds = %1600
  %1604 = extractvalue { i32, i1 } %1601, 0, !nosanitize !30
  %1605 = sext i32 %1604 to i64
  %1606 = getelementptr inbounds [4 x i8], ptr %1547, i64 %1605
  %1607 = load i32, ptr %1606, align 4, !tbaa !49
  br label %1608

1608:                                             ; preds = %1603, %1594
  %1609 = phi i32 [ %1607, %1603 ], [ 0, %1594 ]
  %1610 = load i16, ptr %1575, align 2, !tbaa !28
  %1611 = zext i16 %1610 to i64
  %1612 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1590, i32 %1609), !nosanitize !30
  %1613 = extractvalue { i32, i1 } %1612, 1, !nosanitize !30
  br i1 %1613, label %.loopexit385, label %1614, !prof !32, !nosanitize !30

1614:                                             ; preds = %1608
  %1615 = extractvalue { i32, i1 } %1612, 0, !nosanitize !30
  %1616 = zext i32 %1615 to i64
  %1617 = mul nuw nsw i64 %1616, %1611
  %1618 = load i64, ptr %1565, align 8, !tbaa !51
  %1619 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1618, i64 %1617), !nosanitize !30
  %1620 = extractvalue { i64, i1 } %1619, 1, !nosanitize !30
  br i1 %1620, label %1621, label %1622, !prof !32, !nosanitize !30

1621:                                             ; preds = %1624, %1614
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

1622:                                             ; preds = %1614
  %1623 = extractvalue { i64, i1 } %1619, 0, !nosanitize !30
  store i64 %1623, ptr %1565, align 8, !tbaa !51
  br i1 %1566, label %1639, label %1624

1624:                                             ; preds = %1622
  %.split318 = getelementptr inbounds [4 x i8], ptr %1545, i64 %1574
  %1625 = getelementptr inbounds nuw i8, ptr %.split318, i64 2
  %1626 = load i16, ptr %1625, align 2, !tbaa !28
  %1627 = zext i16 %1626 to i32
  %1628 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1627, i32 %1609), !nosanitize !30
  %1629 = extractvalue { i32, i1 } %1628, 1, !nosanitize !30
  br i1 %1629, label %1621, label %1630, !prof !32, !nosanitize !30

1630:                                             ; preds = %1624
  %1631 = extractvalue { i32, i1 } %1628, 0, !nosanitize !30
  %1632 = zext i32 %1631 to i64
  %1633 = mul nuw nsw i64 %1632, %1611
  %1634 = load i64, ptr %1567, align 8, !tbaa !52
  %1635 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1634, i64 %1633), !nosanitize !30
  %1636 = extractvalue { i64, i1 } %1635, 1, !nosanitize !30
  br i1 %1636, label %.loopexit383, label %1637, !prof !32, !nosanitize !30

.loopexit383:                                     ; preds = %1630, %1661
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

1637:                                             ; preds = %1630
  %1638 = extractvalue { i64, i1 } %1635, 0, !nosanitize !30
  store i64 %1638, ptr %1567, align 8, !tbaa !52
  br label %1639

1639:                                             ; preds = %1637, %1622, %1589
  %1640 = add nsw i64 %1570, 1
  %1641 = and i64 %1640, 4294967295
  %1642 = icmp eq i64 %1641, 573
  br i1 %1642, label %1643, label %1569, !llvm.loop !62

1643:                                             ; preds = %1639
  %1644 = icmp eq i32 %1591, 0
  br i1 %1644, label %.loopexit380, label %1645

1645:                                             ; preds = %1643
  %1646 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1551, i32 -1)
  %1647 = extractvalue { i32, i1 } %1646, 1, !nosanitize !30
  %1648 = sext i32 %1551 to i64
  %1649 = getelementptr inbounds [2 x i8], ptr %682, i64 %1648
  br i1 %1647, label %.loopexit375, label %.preheader382, !prof !32, !nosanitize !30

.preheader382:                                    ; preds = %1645, %1676
  %1650 = phi i32 [ %1677, %1676 ], [ %1591, %1645 ]
  br label %1651

1651:                                             ; preds = %1658, %.preheader382
  %1652 = phi { i32, i1 } [ %1659, %1658 ], [ %1646, %.preheader382 ]
  %1653 = extractvalue { i32, i1 } %1652, 0
  %1654 = sext i32 %1653 to i64
  %1655 = getelementptr inbounds [2 x i8], ptr %682, i64 %1654
  %1656 = load i16, ptr %1655, align 2, !tbaa !61
  %1657 = icmp eq i16 %1656, 0
  br i1 %1657, label %1658, label %1661

1658:                                             ; preds = %1651
  %1659 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1653, i32 -1)
  %1660 = extractvalue { i32, i1 } %1659, 1, !nosanitize !30
  br i1 %1660, label %.loopexit375, label %1651, !prof !32, !llvm.loop !64, !nosanitize !30

1661:                                             ; preds = %1651
  %1662 = getelementptr inbounds [2 x i8], ptr %682, i64 %1654
  %1663 = add i16 %1656, -1
  store i16 %1663, ptr %1662, align 2, !tbaa !61
  %1664 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1653, i32 1), !nosanitize !30
  %1665 = extractvalue { i32, i1 } %1664, 1, !nosanitize !30
  br i1 %1665, label %.loopexit383, label %1666, !prof !32, !nosanitize !30

1666:                                             ; preds = %1661
  %1667 = extractvalue { i32, i1 } %1664, 0, !nosanitize !30
  %1668 = sext i32 %1667 to i64
  %1669 = getelementptr inbounds [2 x i8], ptr %682, i64 %1668
  %1670 = load i16, ptr %1669, align 2, !tbaa !61
  %1671 = add i16 %1670, 2
  store i16 %1671, ptr %1669, align 2, !tbaa !61
  %1672 = load i16, ptr %1649, align 2, !tbaa !61
  %1673 = add i16 %1672, -1
  store i16 %1673, ptr %1649, align 2, !tbaa !61
  %1674 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1650, i32 -2)
  %1675 = extractvalue { i32, i1 } %1674, 1, !nosanitize !30
  br i1 %1675, label %.loopexit375, label %1676, !prof !32, !nosanitize !30

1676:                                             ; preds = %1666
  %1677 = extractvalue { i32, i1 } %1674, 0, !nosanitize !30
  %1678 = icmp sgt i32 %1677, 0
  br i1 %1678, label %.preheader382, label %1679, !llvm.loop !63

1679:                                             ; preds = %1676
  %1680 = icmp eq i32 %1551, 0
  br i1 %1680, label %.loopexit380, label %.preheader378

.preheader378:                                    ; preds = %1679, %1734
  %1681 = phi i64 [ %1735, %1734 ], [ %1648, %1679 ]
  %1682 = phi i32 [ %1689, %1734 ], [ 573, %1679 ]
  %1683 = getelementptr inbounds [2 x i8], ptr %682, i64 %1681
  %1684 = load i16, ptr %1683, align 2, !tbaa !61
  %1685 = icmp eq i16 %1684, 0
  br i1 %1685, label %.loopexit377, label %1686

1686:                                             ; preds = %.preheader378
  %1687 = zext i16 %1684 to i32
  %1688 = trunc i64 %1681 to i16
  br label %1692

.loopexit377:                                     ; preds = %1731, %.preheader378
  %1689 = phi i32 [ %1682, %.preheader378 ], [ %1701, %1731 ]
  %1690 = and i64 %1681, 4294967295
  %1691 = icmp eq i64 %1690, 2147483648
  br i1 %1691, label %.loopexit376, label %1734, !prof !32, !nosanitize !30

1692:                                             ; preds = %1731, %1686
  %1693 = phi i32 [ %1682, %1686 ], [ %1701, %1731 ]
  %1694 = phi i32 [ %1687, %1686 ], [ %1732, %1731 ]
  %1695 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1693, i32 -1)
  %1696 = extractvalue { i32, i1 } %1695, 1, !nosanitize !30
  br i1 %1696, label %.loopexit375, label %.lr.ph1254, !prof !65, !nosanitize !30

1697:                                             ; preds = %.lr.ph1254
  %1698 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1701, i32 -1)
  %1699 = extractvalue { i32, i1 } %1698, 1, !nosanitize !30
  br i1 %1699, label %.loopexit375, label %.lr.ph1254, !prof !66, !llvm.loop !67, !nosanitize !30

.lr.ph1254:                                       ; preds = %1692, %1697
  %1700 = phi { i32, i1 } [ %1698, %1697 ], [ %1695, %1692 ]
  %1701 = extractvalue { i32, i1 } %1700, 0, !nosanitize !30
  %1702 = sext i32 %1701 to i64
  %1703 = getelementptr inbounds [4 x i8], ptr %238, i64 %1702
  %1704 = load i32, ptr %1703, align 4, !tbaa !49
  %1705 = icmp sgt i32 %1704, %1543
  br i1 %1705, label %1697, label %1706, !llvm.loop !67

1706:                                             ; preds = %.lr.ph1254
  %1707 = sext i32 %1704 to i64
  %1708 = getelementptr inbounds [4 x i8], ptr %1542, i64 %1707
  %1709 = getelementptr inbounds nuw i8, ptr %1708, i64 2
  %1710 = load i16, ptr %1709, align 2, !tbaa !28
  %1711 = zext i16 %1710 to i64
  %1712 = icmp eq i64 %1681, %1711
  br i1 %1712, label %1731, label %1713

1713:                                             ; preds = %1706
  %1714 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1681, i64 %1711), !nosanitize !30
  %1715 = extractvalue { i64, i1 } %1714, 1, !nosanitize !30
  br i1 %1715, label %.loopexit376, label %1716, !prof !32, !nosanitize !30

.loopexit376:                                     ; preds = %.loopexit377, %1713
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

1716:                                             ; preds = %1713
  %1717 = extractvalue { i64, i1 } %1714, 0, !nosanitize !30
  %1718 = load i16, ptr %1708, align 2, !tbaa !28
  %1719 = zext i16 %1718 to i64
  %1720 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1717, i64 %1719), !nosanitize !30
  %1721 = extractvalue { i64, i1 } %1720, 1, !nosanitize !30
  br i1 %1721, label %1722, label %1723, !prof !32, !nosanitize !30

1722:                                             ; preds = %1716
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !30
  unreachable, !nosanitize !30

1723:                                             ; preds = %1716
  %1724 = extractvalue { i64, i1 } %1720, 0, !nosanitize !30
  %1725 = load i64, ptr %1565, align 8, !tbaa !51
  %1726 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1725, i64 %1724), !nosanitize !30
  %1727 = extractvalue { i64, i1 } %1726, 1, !nosanitize !30
  br i1 %1727, label %1728, label %1729, !prof !32, !nosanitize !30

1728:                                             ; preds = %1723
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

1729:                                             ; preds = %1723
  %1730 = extractvalue { i64, i1 } %1726, 0, !nosanitize !30
  store i64 %1730, ptr %1565, align 8, !tbaa !51
  store i16 %1688, ptr %1709, align 2, !tbaa !28
  br label %1731

1731:                                             ; preds = %1729, %1706
  %1732 = add nsw i32 %1694, -1
  %1733 = icmp eq i32 %1732, 0
  br i1 %1733, label %.loopexit377, label %1692, !llvm.loop !67

1734:                                             ; preds = %.loopexit377
  %1735 = add nsw i64 %1681, -1
  %1736 = and i64 %1735, 4294967295
  %1737 = icmp eq i64 %1736, 0
  br i1 %1737, label %.loopexit380, label %.preheader378, !llvm.loop !68

.loopexit380:                                     ; preds = %1734, %1679, %1643, %1561
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %1738 = load i16, ptr %682, align 2, !tbaa !61
  %1739 = zext i16 %1738 to i32
  %1740 = shl nuw nsw i32 %1739, 1
  %1741 = trunc i32 %1740 to i16
  %1742 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1741, ptr %1742, align 2, !tbaa !61
  %1743 = load i16, ptr %899, align 2, !tbaa !61
  %1744 = zext i16 %1743 to i32
  %1745 = add nuw nsw i32 %1740, %1744
  %1746 = shl nuw nsw i32 %1745, 1
  %1747 = trunc i32 %1746 to i16
  %1748 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1747, ptr %1748, align 4, !tbaa !61
  %1749 = load i16, ptr %906, align 2, !tbaa !61
  %1750 = zext i16 %1749 to i32
  %1751 = add nuw nsw i32 %1746, %1750
  %1752 = shl nuw nsw i32 %1751, 1
  %1753 = trunc i32 %1752 to i16
  %1754 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1753, ptr %1754, align 2, !tbaa !61
  %1755 = load i16, ptr %913, align 2, !tbaa !61
  %1756 = zext i16 %1755 to i32
  %1757 = add nuw nsw i32 %1752, %1756
  %1758 = shl nuw nsw i32 %1757, 1
  %1759 = trunc i32 %1758 to i16
  %1760 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1759, ptr %1760, align 8, !tbaa !61
  %1761 = load i16, ptr %920, align 2, !tbaa !61
  %1762 = zext i16 %1761 to i32
  %1763 = add nuw nsw i32 %1758, %1762
  %1764 = shl nuw nsw i32 %1763, 1
  %1765 = trunc i32 %1764 to i16
  %1766 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1765, ptr %1766, align 2, !tbaa !61
  %1767 = load i16, ptr %927, align 2, !tbaa !61
  %1768 = zext i16 %1767 to i32
  %1769 = add nuw nsw i32 %1764, %1768
  %1770 = shl nuw nsw i32 %1769, 1
  %1771 = trunc i32 %1770 to i16
  %1772 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1771, ptr %1772, align 4, !tbaa !61
  %1773 = load i16, ptr %934, align 2, !tbaa !61
  %1774 = zext i16 %1773 to i32
  %1775 = add nuw nsw i32 %1770, %1774
  %1776 = shl nuw nsw i32 %1775, 1
  %1777 = trunc i32 %1776 to i16
  %1778 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1777, ptr %1778, align 2, !tbaa !61
  %1779 = load i16, ptr %941, align 2, !tbaa !61
  %1780 = trunc i32 %1776 to i16
  %.tr979 = add i16 %1779, %1780
  %1781 = shl i16 %.tr979, 1
  %1782 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1781, ptr %1782, align 16, !tbaa !61
  %1783 = load i16, ptr %946, align 2, !tbaa !61
  %.tr327 = add i16 %1783, %1781
  %1784 = shl i16 %.tr327, 1
  %1785 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1784, ptr %1785, align 2, !tbaa !61
  %1786 = load i16, ptr %950, align 2, !tbaa !61
  %.tr319 = add i16 %1784, %1786
  %1787 = shl i16 %.tr319, 1
  %1788 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1787, ptr %1788, align 4, !tbaa !61
  %1789 = load i16, ptr %954, align 2, !tbaa !61
  %1790 = add i16 %1787, %1789
  %1791 = shl i16 %1790, 1
  %1792 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1791, ptr %1792, align 2, !tbaa !61
  %1793 = load i16, ptr %959, align 2, !tbaa !61
  %1794 = add i16 %1791, %1793
  %1795 = shl i16 %1794, 1
  %1796 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1795, ptr %1796, align 8, !tbaa !61
  %1797 = load i16, ptr %964, align 2, !tbaa !61
  %1798 = add i16 %1795, %1797
  %1799 = shl i16 %1798, 1
  %1800 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1799, ptr %1800, align 2, !tbaa !61
  %1801 = load i16, ptr %969, align 2, !tbaa !61
  %1802 = add i16 %1799, %1801
  %1803 = shl i16 %1802, 1
  %1804 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1803, ptr %1804, align 4, !tbaa !61
  %1805 = load i16, ptr %974, align 2, !tbaa !61
  %1806 = add i16 %1803, %1805
  %1807 = shl i16 %1806, 1
  %1808 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1807, ptr %1808, align 2, !tbaa !61
  %1809 = icmp slt i32 %1108, 0
  br i1 %1809, label %.loopexit374, label %.preheader373

1810:                                             ; preds = %1860
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

.preheader373:                                    ; preds = %.loopexit380, %1862
  %1811 = phi i64 [ %1863, %1862 ], [ 0, %.loopexit380 ]
  %1812 = getelementptr inbounds nuw [4 x i8], ptr %1037, i64 %1811
  %1813 = getelementptr inbounds nuw i8, ptr %1812, i64 2
  %1814 = load i16, ptr %1813, align 2, !tbaa !28
  %1815 = icmp eq i16 %1814, 0
  br i1 %1815, label %1860, label %1816

1816:                                             ; preds = %.preheader373
  %1817 = zext i16 %1814 to i32
  %1818 = zext i16 %1814 to i64
  %1819 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %1818
  %1820 = load i16, ptr %1819, align 2, !tbaa !61
  %1821 = add i16 %1820, 1
  store i16 %1821, ptr %1819, align 2, !tbaa !61
  %1822 = and i32 %1817, 3
  %1823 = icmp ult i16 %1814, 4
  br i1 %1823, label %.loopexit372, label %1824

1824:                                             ; preds = %1816
  %1825 = and i32 %1817, 65532
  br label %1826

1826:                                             ; preds = %1826, %1824
  %1827 = phi i16 [ %1820, %1824 ], [ %1843, %1826 ]
  %1828 = phi i16 [ 0, %1824 ], [ %1842, %1826 ]
  %1829 = phi i32 [ 0, %1824 ], [ %1844, %1826 ]
  %1830 = and i16 %1827, 1
  %1831 = or disjoint i16 %1828, %1830
  %1832 = lshr i16 %1827, 2
  %1833 = shl i16 %1831, 2
  %1834 = and i16 %1827, 2
  %1835 = or disjoint i16 %1833, %1834
  %1836 = and i16 %1832, 1
  %1837 = or disjoint i16 %1835, %1836
  %1838 = shl i16 %1837, 1
  %1839 = lshr i16 %1827, 3
  %1840 = and i16 %1839, 1
  %1841 = or disjoint i16 %1838, %1840
  %1842 = shl i16 %1841, 1
  %1843 = lshr i16 %1827, 4
  %1844 = add nuw nsw i32 %1829, 4
  %1845 = icmp eq i32 %1844, %1825
  br i1 %1845, label %.loopexit372, label %1826, !llvm.loop !69

.loopexit372:                                     ; preds = %1826, %1816
  %1846 = phi i16 [ poison, %1816 ], [ %1841, %1826 ]
  %1847 = phi i16 [ %1820, %1816 ], [ %1843, %1826 ]
  %1848 = phi i16 [ 0, %1816 ], [ %1842, %1826 ]
  %1849 = icmp eq i32 %1822, 0
  br i1 %1849, label %.loopexit371, label %.preheader370

.preheader370:                                    ; preds = %.loopexit372, %.preheader370
  %1850 = phi i16 [ %1856, %.preheader370 ], [ %1847, %.loopexit372 ]
  %1851 = phi i16 [ %1855, %.preheader370 ], [ %1848, %.loopexit372 ]
  %1852 = phi i32 [ %1857, %.preheader370 ], [ 0, %.loopexit372 ]
  %1853 = and i16 %1850, 1
  %1854 = or disjoint i16 %1851, %1853
  %1855 = shl i16 %1854, 1
  %1856 = lshr i16 %1850, 1
  %1857 = add nuw nsw i32 %1852, 1
  %1858 = icmp eq i32 %1857, %1822
  br i1 %1858, label %.loopexit371, label %.preheader370, !llvm.loop !73

.loopexit371:                                     ; preds = %.preheader370, %.loopexit372
  %1859 = phi i16 [ %1846, %.loopexit372 ], [ %1854, %.preheader370 ]
  store i16 %1859, ptr %1812, align 2, !tbaa !28
  br label %1860

1860:                                             ; preds = %.loopexit371, %.preheader373
  %1861 = icmp eq i64 %1811, 2147483647
  br i1 %1861, label %1810, label %1862, !prof !32, !nosanitize !30

1862:                                             ; preds = %1860
  %1863 = add nuw nsw i64 %1811, 1
  %1864 = trunc i64 %1863 to i32
  %1865 = icmp slt i32 %1108, %1864
  br i1 %1865, label %.loopexit374, label %.preheader373, !llvm.loop !72

.loopexit374:                                     ; preds = %1862, %.loopexit380
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %1866 = load i32, ptr %237, align 8, !tbaa !74
  %1867 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1866, i32 1), !nosanitize !30
  %1868 = extractvalue { i32, i1 } %1867, 1, !nosanitize !30
  br i1 %1868, label %1869, label %1870, !prof !32, !nosanitize !30

1869:                                             ; preds = %.loopexit374
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

1870:                                             ; preds = %.loopexit374
  %1871 = getelementptr i8, ptr %0, i64 214
  %1872 = load i16, ptr %1871, align 2, !tbaa !28
  %1873 = extractvalue { i32, i1 } %1867, 0, !nosanitize !30
  %1874 = sext i32 %1873 to i64
  %1875 = shl nsw i64 %1874, 2
  %1876 = getelementptr i8, ptr %0, i64 %1875
  %1877 = getelementptr i8, ptr %1876, i64 214
  store i16 -1, ptr %1877, align 2, !tbaa !28
  %1878 = icmp slt i32 %1866, 0
  br i1 %1878, label %.loopexit369, label %1879

1879:                                             ; preds = %1870
  %1880 = zext i16 %1872 to i32
  %1881 = icmp eq i16 %1872, 0
  %1882 = select i1 %1881, i32 138, i32 7
  %1883 = select i1 %1881, i32 3, i32 4
  %1884 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1885 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1886 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1887 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1888 = add nuw nsw i32 %1866, 1
  %wide.trip.count = zext nneg i32 %1888 to i64
  br label %1889

1889:                                             ; preds = %1936, %1879
  %indvars.iv = phi i64 [ %indvars.iv.next, %1936 ], [ 0, %1879 ]
  %1890 = phi i32 [ %1940, %1936 ], [ %1883, %1879 ]
  %1891 = phi i32 [ %1939, %1936 ], [ %1882, %1879 ]
  %1892 = phi i32 [ %1938, %1936 ], [ 0, %1879 ]
  %1893 = phi i32 [ %1898, %1936 ], [ %1880, %1879 ]
  %1894 = phi i32 [ %1937, %1936 ], [ -1, %1879 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1895 = shl nsw i64 %indvars.iv.next, 2
  %1896 = getelementptr i8, ptr %1871, i64 %1895
  %1897 = load i16, ptr %1896, align 2, !tbaa !28
  %1898 = zext i16 %1897 to i32
  %1899 = add nsw i32 %1892, 1
  %1900 = icmp slt i32 %1899, %1891
  %1901 = icmp eq i32 %1893, %1898
  %1902 = select i1 %1900, i1 %1901, i1 false
  br i1 %1902, label %1936, label %1903

1903:                                             ; preds = %1889
  %1904 = icmp slt i32 %1899, %1890
  br i1 %1904, label %1905, label %1911

1905:                                             ; preds = %1903
  %1906 = zext nneg i32 %1893 to i64
  %1907 = getelementptr inbounds nuw [4 x i8], ptr %1884, i64 %1906
  %1908 = load i16, ptr %1907, align 4, !tbaa !28
  %1909 = trunc i32 %1899 to i16
  %1910 = add i16 %1908, %1909
  store i16 %1910, ptr %1907, align 4, !tbaa !28
  br label %1931

1911:                                             ; preds = %1903
  %1912 = icmp eq i32 %1893, 0
  br i1 %1912, label %1923, label %1913

1913:                                             ; preds = %1911
  %1914 = icmp eq i32 %1893, %1894
  br i1 %1914, label %1920, label %1915

1915:                                             ; preds = %1913
  %1916 = zext nneg i32 %1893 to i64
  %1917 = getelementptr inbounds nuw [4 x i8], ptr %1884, i64 %1916
  %1918 = load i16, ptr %1917, align 4, !tbaa !28
  %1919 = add i16 %1918, 1
  store i16 %1919, ptr %1917, align 4, !tbaa !28
  br label %1920

1920:                                             ; preds = %1915, %1913
  %1921 = load i16, ptr %1885, align 4, !tbaa !28
  %1922 = add i16 %1921, 1
  store i16 %1922, ptr %1885, align 4, !tbaa !28
  br label %1931

1923:                                             ; preds = %1911
  %1924 = icmp slt i32 %1892, 10
  br i1 %1924, label %1925, label %1928

1925:                                             ; preds = %1923
  %1926 = load i16, ptr %1887, align 4, !tbaa !28
  %1927 = add i16 %1926, 1
  store i16 %1927, ptr %1887, align 4, !tbaa !28
  br label %1931

1928:                                             ; preds = %1923
  %1929 = load i16, ptr %1886, align 4, !tbaa !28
  %1930 = add i16 %1929, 1
  store i16 %1930, ptr %1886, align 4, !tbaa !28
  br label %1931

1931:                                             ; preds = %1928, %1925, %1920, %1905
  %1932 = icmp eq i16 %1897, 0
  br i1 %1932, label %1936, label %1933

1933:                                             ; preds = %1931
  %1934 = select i1 %1901, i32 6, i32 7
  %1935 = select i1 %1901, i32 3, i32 4
  br label %1936

1936:                                             ; preds = %1933, %1931, %1889
  %1937 = phi i32 [ %1894, %1889 ], [ %1893, %1931 ], [ %1893, %1933 ]
  %1938 = phi i32 [ %1899, %1889 ], [ 0, %1931 ], [ 0, %1933 ]
  %1939 = phi i32 [ %1891, %1889 ], [ 138, %1931 ], [ %1934, %1933 ]
  %1940 = phi i32 [ %1890, %1889 ], [ 3, %1931 ], [ %1935, %1933 ]
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.loopexit369, label %1889, !llvm.loop !75

.loopexit369:                                     ; preds = %1936, %1870
  %1941 = load i32, ptr %1110, align 8, !tbaa !76
  %1942 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1941, i32 1), !nosanitize !30
  %1943 = extractvalue { i32, i1 } %1942, 1, !nosanitize !30
  br i1 %1943, label %1944, label %1945, !prof !32, !nosanitize !30

1944:                                             ; preds = %.loopexit369
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

1945:                                             ; preds = %.loopexit369
  %1946 = getelementptr i8, ptr %0, i64 2506
  %1947 = load i16, ptr %1946, align 2, !tbaa !28
  %1948 = extractvalue { i32, i1 } %1942, 0, !nosanitize !30
  %1949 = sext i32 %1948 to i64
  %1950 = shl nsw i64 %1949, 2
  %1951 = getelementptr i8, ptr %0, i64 %1950
  %1952 = getelementptr i8, ptr %1951, i64 2506
  store i16 -1, ptr %1952, align 2, !tbaa !28
  %1953 = icmp slt i32 %1941, 0
  br i1 %1953, label %.loopexit368, label %1954

1954:                                             ; preds = %1945
  %1955 = zext i16 %1947 to i32
  %1956 = icmp eq i16 %1947, 0
  %1957 = select i1 %1956, i32 138, i32 7
  %1958 = select i1 %1956, i32 3, i32 4
  %1959 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1960 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1961 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1962 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1963 = add nuw nsw i32 %1941, 1
  %wide.trip.count667 = zext nneg i32 %1963 to i64
  br label %1964

1964:                                             ; preds = %2011, %1954
  %indvars.iv663 = phi i64 [ %indvars.iv.next664, %2011 ], [ 0, %1954 ]
  %1965 = phi i32 [ %2015, %2011 ], [ %1958, %1954 ]
  %1966 = phi i32 [ %2014, %2011 ], [ %1957, %1954 ]
  %1967 = phi i32 [ %2013, %2011 ], [ 0, %1954 ]
  %1968 = phi i32 [ %1973, %2011 ], [ %1955, %1954 ]
  %1969 = phi i32 [ %2012, %2011 ], [ -1, %1954 ]
  %indvars.iv.next664 = add nuw nsw i64 %indvars.iv663, 1
  %1970 = shl nsw i64 %indvars.iv.next664, 2
  %1971 = getelementptr i8, ptr %1946, i64 %1970
  %1972 = load i16, ptr %1971, align 2, !tbaa !28
  %1973 = zext i16 %1972 to i32
  %1974 = add nsw i32 %1967, 1
  %1975 = icmp slt i32 %1974, %1966
  %1976 = icmp eq i32 %1968, %1973
  %1977 = select i1 %1975, i1 %1976, i1 false
  br i1 %1977, label %2011, label %1978

1978:                                             ; preds = %1964
  %1979 = icmp slt i32 %1974, %1965
  br i1 %1979, label %1980, label %1986

1980:                                             ; preds = %1978
  %1981 = zext nneg i32 %1968 to i64
  %1982 = getelementptr inbounds nuw [4 x i8], ptr %1959, i64 %1981
  %1983 = load i16, ptr %1982, align 4, !tbaa !28
  %1984 = trunc i32 %1974 to i16
  %1985 = add i16 %1983, %1984
  store i16 %1985, ptr %1982, align 4, !tbaa !28
  br label %2006

1986:                                             ; preds = %1978
  %1987 = icmp eq i32 %1968, 0
  br i1 %1987, label %1998, label %1988

1988:                                             ; preds = %1986
  %1989 = icmp eq i32 %1968, %1969
  br i1 %1989, label %1995, label %1990

1990:                                             ; preds = %1988
  %1991 = zext nneg i32 %1968 to i64
  %1992 = getelementptr inbounds nuw [4 x i8], ptr %1959, i64 %1991
  %1993 = load i16, ptr %1992, align 4, !tbaa !28
  %1994 = add i16 %1993, 1
  store i16 %1994, ptr %1992, align 4, !tbaa !28
  br label %1995

1995:                                             ; preds = %1990, %1988
  %1996 = load i16, ptr %1960, align 4, !tbaa !28
  %1997 = add i16 %1996, 1
  store i16 %1997, ptr %1960, align 4, !tbaa !28
  br label %2006

1998:                                             ; preds = %1986
  %1999 = icmp slt i32 %1967, 10
  br i1 %1999, label %2000, label %2003

2000:                                             ; preds = %1998
  %2001 = load i16, ptr %1962, align 4, !tbaa !28
  %2002 = add i16 %2001, 1
  store i16 %2002, ptr %1962, align 4, !tbaa !28
  br label %2006

2003:                                             ; preds = %1998
  %2004 = load i16, ptr %1961, align 4, !tbaa !28
  %2005 = add i16 %2004, 1
  store i16 %2005, ptr %1961, align 4, !tbaa !28
  br label %2006

2006:                                             ; preds = %2003, %2000, %1995, %1980
  %2007 = icmp eq i16 %1972, 0
  br i1 %2007, label %2011, label %2008

2008:                                             ; preds = %2006
  %2009 = select i1 %1976, i32 6, i32 7
  %2010 = select i1 %1976, i32 3, i32 4
  br label %2011

2011:                                             ; preds = %2008, %2006, %1964
  %2012 = phi i32 [ %1969, %1964 ], [ %1968, %2006 ], [ %1968, %2008 ]
  %2013 = phi i32 [ %1974, %1964 ], [ 0, %2006 ], [ 0, %2008 ]
  %2014 = phi i32 [ %1966, %1964 ], [ 138, %2006 ], [ %2009, %2008 ]
  %2015 = phi i32 [ %1965, %1964 ], [ 3, %2006 ], [ %2010, %2008 ]
  %exitcond668 = icmp eq i64 %indvars.iv.next664, %wide.trip.count667
  br i1 %exitcond668, label %.loopexit368, label %1964, !llvm.loop !75

.loopexit368:                                     ; preds = %2011, %1945
  %2016 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %2017 = load ptr, ptr %2016, align 8, !tbaa !41
  %2018 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %2019 = load ptr, ptr %2018, align 8, !tbaa !42
  %2020 = load ptr, ptr %2019, align 8, !tbaa !43
  %2021 = getelementptr inbounds nuw i8, ptr %2019, i64 20
  %2022 = load i32, ptr %2021, align 4, !tbaa !46
  store i32 0, ptr %164, align 4, !tbaa !47
  store i32 573, ptr %165, align 8, !tbaa !48
  %2023 = icmp sgt i32 %2022, 0
  br i1 %2023, label %2024, label %2029

2024:                                             ; preds = %.loopexit368
  %2025 = zext nneg i32 %2022 to i64
  br label %2035

2026:                                             ; preds = %2053
  %2027 = load i32, ptr %164, align 4, !tbaa !47
  %2028 = icmp slt i32 %2027, 2
  br i1 %2028, label %2029, label %.loopexit366

2029:                                             ; preds = %2026, %.loopexit368
  %2030 = phi i32 [ %2054, %2026 ], [ -1, %.loopexit368 ]
  %2031 = phi i32 [ %2027, %2026 ], [ 0, %.loopexit368 ]
  %2032 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2033 = icmp eq ptr %2020, null
  %2034 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %2057

2035:                                             ; preds = %2053, %2024
  %2036 = phi i64 [ 0, %2024 ], [ %2055, %2053 ]
  %2037 = phi i32 [ -1, %2024 ], [ %2054, %2053 ]
  %2038 = getelementptr inbounds nuw [4 x i8], ptr %2017, i64 %2036
  %2039 = load i16, ptr %2038, align 2, !tbaa !28
  %2040 = icmp eq i16 %2039, 0
  br i1 %2040, label %2051, label %2041

2041:                                             ; preds = %2035
  %2042 = load i32, ptr %164, align 4, !tbaa !47
  %2043 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2042, i32 1), !nosanitize !30
  %2044 = extractvalue { i32, i1 } %2043, 1, !nosanitize !30
  br i1 %2044, label %.loopexit1, label %2045, !prof !32, !nosanitize !30

.loopexit1:                                       ; preds = %2041, %2425, %2179
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

2045:                                             ; preds = %2041
  %2046 = extractvalue { i32, i1 } %2043, 0, !nosanitize !30
  store i32 %2046, ptr %164, align 4, !tbaa !47
  %2047 = sext i32 %2046 to i64
  %2048 = getelementptr inbounds [4 x i8], ptr %238, i64 %2047
  %2049 = trunc nuw nsw i64 %2036 to i32
  store i32 %2049, ptr %2048, align 4, !tbaa !49
  %2050 = getelementptr inbounds nuw i8, ptr %239, i64 %2036
  store i8 0, ptr %2050, align 1, !tbaa !28
  br label %2053

2051:                                             ; preds = %2035
  %2052 = getelementptr inbounds nuw i8, ptr %2038, i64 2
  store i16 0, ptr %2052, align 2, !tbaa !28
  br label %2053

2053:                                             ; preds = %2051, %2045
  %2054 = phi i32 [ %2049, %2045 ], [ %2037, %2051 ]
  %2055 = add nuw nsw i64 %2036, 1
  %2056 = icmp eq i64 %2055, %2025
  br i1 %2056, label %2026, label %2035, !llvm.loop !50

2057:                                             ; preds = %2085, %2029
  %2058 = phi i32 [ %2031, %2029 ], [ %2086, %2085 ]
  %2059 = phi i32 [ %2030, %2029 ], [ %2062, %2085 ]
  %2060 = icmp slt i32 %2059, 2
  %2061 = add i32 %2059, 1
  %2062 = select i1 %2060, i32 %2061, i32 %2059
  %2063 = add nsw i32 %2058, 1
  %2064 = select i1 %2060, i32 %2061, i32 0
  store i32 %2063, ptr %164, align 4, !tbaa !47
  %2065 = sext i32 %2063 to i64
  %2066 = getelementptr inbounds [4 x i8], ptr %238, i64 %2065
  store i32 %2064, ptr %2066, align 4, !tbaa !49
  %2067 = sext i32 %2064 to i64
  %2068 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2067
  store i16 1, ptr %2068, align 2, !tbaa !28
  %2069 = getelementptr inbounds i8, ptr %239, i64 %2067
  store i8 0, ptr %2069, align 1, !tbaa !28
  %2070 = load i64, ptr %2032, align 8, !tbaa !51
  %2071 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2070, i64 1), !nosanitize !30
  %2072 = extractvalue { i64, i1 } %2071, 1, !nosanitize !30
  br i1 %2072, label %2073, label %2074, !prof !32, !nosanitize !30

2073:                                             ; preds = %2057
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

2074:                                             ; preds = %2057
  %2075 = extractvalue { i64, i1 } %2071, 0, !nosanitize !30
  store i64 %2075, ptr %2032, align 8, !tbaa !51
  br i1 %2033, label %2085, label %2076

2076:                                             ; preds = %2074
  %.split320 = getelementptr inbounds [4 x i8], ptr %2020, i64 %2067
  %2077 = getelementptr inbounds nuw i8, ptr %.split320, i64 2
  %2078 = load i16, ptr %2077, align 2, !tbaa !28
  %2079 = zext i16 %2078 to i64
  %2080 = load i64, ptr %2034, align 8, !tbaa !52
  %2081 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2080, i64 %2079), !nosanitize !30
  %2082 = extractvalue { i64, i1 } %2081, 1, !nosanitize !30
  br i1 %2082, label %.loopexit, label %2083, !prof !32, !nosanitize !30

.loopexit:                                        ; preds = %2076, %.mv.ph, %2411, %2418, %2165, %2172, %.loopexit360
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

2083:                                             ; preds = %2076
  %2084 = extractvalue { i64, i1 } %2081, 0, !nosanitize !30
  store i64 %2084, ptr %2034, align 8, !tbaa !52
  br label %2085

2085:                                             ; preds = %2083, %2074
  %2086 = load i32, ptr %164, align 4, !tbaa !47
  %2087 = icmp slt i32 %2086, 2
  br i1 %2087, label %2057, label %.loopexit366, !llvm.loop !53

.loopexit366:                                     ; preds = %2085, %2026
  %2088 = phi i32 [ %2054, %2026 ], [ %2062, %2085 ]
  %2089 = phi i32 [ %2027, %2026 ], [ %2086, %2085 ]
  %2090 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %2088, ptr %2090, align 8, !tbaa !54
  %2091 = lshr i32 %2089, 1
  %2092 = zext nneg i32 %2091 to i64
  br label %2268

2093:                                             ; preds = %.loopexit364
  %2094 = load i32, ptr %164, align 4, !tbaa !47
  %.fr321 = freeze i32 %2094
  %2095 = sext i32 %2022 to i64
  %mv.h = icmp sgt i32 %.fr321, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %2093, %2263
  %2096 = phi i32 [ %2266, %2263 ], [ %.fr321, %2093 ]
  %2097 = phi i64 [ %2204, %2263 ], [ %2095, %2093 ]
  %2098 = load i32, ptr %244, align 4, !tbaa !49
  %2099 = add nsw i32 %2096, -1
  store i32 %2099, ptr %164, align 4, !tbaa !47
  %2100 = zext nneg i32 %2096 to i64
  %2101 = getelementptr inbounds nuw [4 x i8], ptr %238, i64 %2100
  %2102 = load i32, ptr %2101, align 4, !tbaa !49
  store i32 %2102, ptr %244, align 4, !tbaa !49
  %2103 = sext i32 %2102 to i64
  %2104 = getelementptr inbounds i8, ptr %239, i64 %2103
  %2105 = icmp samesign ult i32 %2096, 3
  br i1 %2105, label %2165, label %2106

2106:                                             ; preds = %.mv.ph.mv.fast
  %2107 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2103
  br label %2108

2108:                                             ; preds = %2156, %2106
  %2109 = phi i32 [ %2099, %2106 ], [ %2160, %2156 ]
  %2110 = phi i32 [ 2, %2106 ], [ %2159, %2156 ]
  %2111 = phi i32 [ 1, %2106 ], [ %2141, %2156 ]
  %2112 = icmp slt i32 %2110, %2109
  br i1 %2112, label %2115, label %2113

2113:                                             ; preds = %2108
  %2114 = sext i32 %2110 to i64
  br label %2139

2115:                                             ; preds = %2108
  %2116 = or disjoint i32 %2110, 1
  %2117 = sext i32 %2116 to i64
  %2118 = getelementptr inbounds [4 x i8], ptr %238, i64 %2117
  %2119 = load i32, ptr %2118, align 4, !tbaa !49
  %2120 = sext i32 %2119 to i64
  %2121 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2120
  %2122 = load i16, ptr %2121, align 2, !tbaa !28
  %2123 = sext i32 %2110 to i64
  %2124 = getelementptr inbounds [4 x i8], ptr %238, i64 %2123
  %2125 = load i32, ptr %2124, align 4, !tbaa !49
  %2126 = sext i32 %2125 to i64
  %2127 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2126
  %2128 = load i16, ptr %2127, align 2, !tbaa !28
  %2129 = icmp ult i16 %2122, %2128
  br i1 %2129, label %2138, label %2130

2130:                                             ; preds = %2115
  %2131 = icmp eq i16 %2122, %2128
  br i1 %2131, label %2132, label %2139

2132:                                             ; preds = %2130
  %2133 = getelementptr inbounds i8, ptr %239, i64 %2120
  %2134 = load i8, ptr %2133, align 1, !tbaa !28
  %2135 = getelementptr inbounds i8, ptr %239, i64 %2126
  %2136 = load i8, ptr %2135, align 1, !tbaa !28
  %2137 = icmp ugt i8 %2134, %2136
  br i1 %2137, label %2139, label %2138

2138:                                             ; preds = %2132, %2115
  br label %2139

2139:                                             ; preds = %2138, %2132, %2130, %2113
  %2140 = phi i64 [ %2114, %2113 ], [ %2117, %2138 ], [ %2123, %2132 ], [ %2123, %2130 ]
  %2141 = phi i32 [ %2110, %2113 ], [ %2116, %2138 ], [ %2110, %2132 ], [ %2110, %2130 ]
  %2142 = load i16, ptr %2107, align 2, !tbaa !28
  %2143 = getelementptr inbounds [4 x i8], ptr %238, i64 %2140
  %2144 = load i32, ptr %2143, align 4, !tbaa !49
  %2145 = sext i32 %2144 to i64
  %2146 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2145
  %2147 = load i16, ptr %2146, align 2, !tbaa !28
  %2148 = icmp ult i16 %2142, %2147
  br i1 %2148, label %2162, label %2149

2149:                                             ; preds = %2139
  %2150 = icmp eq i16 %2142, %2147
  br i1 %2150, label %2151, label %2156

2151:                                             ; preds = %2149
  %2152 = load i8, ptr %2104, align 1, !tbaa !28
  %2153 = getelementptr inbounds i8, ptr %239, i64 %2145
  %2154 = load i8, ptr %2153, align 1, !tbaa !28
  %2155 = icmp ugt i8 %2152, %2154
  br i1 %2155, label %2156, label %2162

2156:                                             ; preds = %2151, %2149
  %2157 = sext i32 %2111 to i64
  %2158 = getelementptr inbounds [4 x i8], ptr %238, i64 %2157
  store i32 %2144, ptr %2158, align 4, !tbaa !49
  %2159 = shl i32 %2141, 1
  %2160 = load i32, ptr %164, align 4, !tbaa !47
  %2161 = icmp sgt i32 %2159, %2160
  br i1 %2161, label %2162, label %2108, !llvm.loop !55

2162:                                             ; preds = %2156, %2151, %2139
  %2163 = phi i32 [ %2111, %2139 ], [ %2111, %2151 ], [ %2141, %2156 ]
  %2164 = sext i32 %2163 to i64
  br label %2165

2165:                                             ; preds = %2162, %.mv.ph.mv.fast
  %2166 = phi i64 [ 1, %.mv.ph.mv.fast ], [ %2164, %2162 ]
  %2167 = getelementptr inbounds [4 x i8], ptr %238, i64 %2166
  store i32 %2102, ptr %2167, align 4, !tbaa !49
  %2168 = load i32, ptr %244, align 4, !tbaa !49
  %2169 = load i32, ptr %165, align 8, !tbaa !48
  %2170 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2169, i32 -1)
  %2171 = extractvalue { i32, i1 } %2170, 1, !nosanitize !30
  br i1 %2171, label %.loopexit, label %2172, !prof !32, !nosanitize !30

2172:                                             ; preds = %2165
  %2173 = extractvalue { i32, i1 } %2170, 0, !nosanitize !30
  store i32 %2173, ptr %165, align 8, !tbaa !48
  %2174 = sext i32 %2173 to i64
  %2175 = getelementptr inbounds [4 x i8], ptr %238, i64 %2174
  store i32 %2098, ptr %2175, align 4, !tbaa !49
  %2176 = load i32, ptr %165, align 8, !tbaa !48
  %2177 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2176, i32 -1)
  %2178 = extractvalue { i32, i1 } %2177, 1, !nosanitize !30
  br i1 %2178, label %.loopexit, label %2179, !prof !32, !nosanitize !30

2179:                                             ; preds = %2172
  %2180 = extractvalue { i32, i1 } %2177, 0, !nosanitize !30
  store i32 %2180, ptr %165, align 8, !tbaa !48
  %2181 = sext i32 %2180 to i64
  %2182 = getelementptr inbounds [4 x i8], ptr %238, i64 %2181
  store i32 %2168, ptr %2182, align 4, !tbaa !49
  %2183 = sext i32 %2098 to i64
  %2184 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2183
  %2185 = load i16, ptr %2184, align 2, !tbaa !28
  %2186 = sext i32 %2168 to i64
  %2187 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2186
  %2188 = load i16, ptr %2187, align 2, !tbaa !28
  %2189 = add i16 %2188, %2185
  %2190 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2097
  store i16 %2189, ptr %2190, align 2, !tbaa !28
  %2191 = getelementptr inbounds i8, ptr %239, i64 %2183
  %2192 = load i8, ptr %2191, align 1, !tbaa !28
  %2193 = getelementptr inbounds i8, ptr %239, i64 %2186
  %2194 = load i8, ptr %2193, align 1, !tbaa !28
  %2195 = tail call i8 @llvm.umax.i8(i8 %2192, i8 %2194)
  %2196 = add i8 %2195, 1
  %2197 = getelementptr inbounds i8, ptr %239, i64 %2097
  store i8 %2196, ptr %2197, align 1, !tbaa !28
  %2198 = trunc nsw i64 %2097 to i32
  %2199 = trunc i64 %2097 to i16
  %2200 = getelementptr inbounds nuw i8, ptr %2187, i64 2
  store i16 %2199, ptr %2200, align 2, !tbaa !28
  %2201 = getelementptr inbounds nuw i8, ptr %2184, i64 2
  store i16 %2199, ptr %2201, align 2, !tbaa !28
  %2202 = icmp eq i64 %2097, 2147483647
  br i1 %2202, label %.loopexit1, label %2203, !prof !32, !nosanitize !30

2203:                                             ; preds = %2179
  %2204 = add nsw i64 %2097, 1
  store i32 %2198, ptr %244, align 4, !tbaa !49
  %2205 = load i32, ptr %164, align 4, !tbaa !47
  %2206 = icmp slt i32 %2205, 2
  br i1 %2206, label %2263, label %.preheader.mv.fast

.preheader.mv.fast:                               ; preds = %2203, %2254
  %2207 = phi i32 [ %2258, %2254 ], [ %2205, %2203 ]
  %2208 = phi i32 [ %2257, %2254 ], [ 2, %2203 ]
  %2209 = phi i32 [ %2239, %2254 ], [ 1, %2203 ]
  %2210 = icmp slt i32 %2208, %2207
  br i1 %2210, label %2213, label %2211

2211:                                             ; preds = %.preheader.mv.fast
  %2212 = sext i32 %2208 to i64
  br label %2237

2213:                                             ; preds = %.preheader.mv.fast
  %2214 = or disjoint i32 %2208, 1
  %2215 = sext i32 %2214 to i64
  %2216 = getelementptr inbounds [4 x i8], ptr %238, i64 %2215
  %2217 = load i32, ptr %2216, align 4, !tbaa !49
  %2218 = sext i32 %2217 to i64
  %2219 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2218
  %2220 = load i16, ptr %2219, align 2, !tbaa !28
  %2221 = sext i32 %2208 to i64
  %2222 = getelementptr inbounds [4 x i8], ptr %238, i64 %2221
  %2223 = load i32, ptr %2222, align 4, !tbaa !49
  %2224 = sext i32 %2223 to i64
  %2225 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2224
  %2226 = load i16, ptr %2225, align 2, !tbaa !28
  %2227 = icmp ult i16 %2220, %2226
  br i1 %2227, label %2236, label %2228

2228:                                             ; preds = %2213
  %2229 = icmp eq i16 %2220, %2226
  br i1 %2229, label %2230, label %2237

2230:                                             ; preds = %2228
  %2231 = getelementptr inbounds i8, ptr %239, i64 %2218
  %2232 = load i8, ptr %2231, align 1, !tbaa !28
  %2233 = getelementptr inbounds i8, ptr %239, i64 %2224
  %2234 = load i8, ptr %2233, align 1, !tbaa !28
  %2235 = icmp ugt i8 %2232, %2234
  br i1 %2235, label %2237, label %2236

2236:                                             ; preds = %2230, %2213
  br label %2237

2237:                                             ; preds = %2236, %2230, %2228, %2211
  %2238 = phi i64 [ %2212, %2211 ], [ %2215, %2236 ], [ %2221, %2230 ], [ %2221, %2228 ]
  %2239 = phi i32 [ %2208, %2211 ], [ %2214, %2236 ], [ %2208, %2230 ], [ %2208, %2228 ]
  %2240 = load i16, ptr %2190, align 2, !tbaa !28
  %2241 = getelementptr inbounds [4 x i8], ptr %238, i64 %2238
  %2242 = load i32, ptr %2241, align 4, !tbaa !49
  %2243 = sext i32 %2242 to i64
  %2244 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2243
  %2245 = load i16, ptr %2244, align 2, !tbaa !28
  %2246 = icmp ult i16 %2240, %2245
  br i1 %2246, label %2260, label %2247

2247:                                             ; preds = %2237
  %2248 = icmp eq i16 %2240, %2245
  br i1 %2248, label %2249, label %2254

2249:                                             ; preds = %2247
  %2250 = load i8, ptr %2197, align 1, !tbaa !28
  %2251 = getelementptr inbounds i8, ptr %239, i64 %2243
  %2252 = load i8, ptr %2251, align 1, !tbaa !28
  %2253 = icmp ugt i8 %2250, %2252
  br i1 %2253, label %2254, label %2260

2254:                                             ; preds = %2249, %2247
  %2255 = sext i32 %2209 to i64
  %2256 = getelementptr inbounds [4 x i8], ptr %238, i64 %2255
  store i32 %2242, ptr %2256, align 4, !tbaa !49
  %2257 = shl i32 %2239, 1
  %2258 = load i32, ptr %164, align 4, !tbaa !47
  %2259 = icmp sgt i32 %2257, %2258
  br i1 %2259, label %2260, label %.preheader.mv.fast, !llvm.loop !55

2260:                                             ; preds = %2254, %2249, %2237
  %2261 = phi i32 [ %2209, %2237 ], [ %2209, %2249 ], [ %2239, %2254 ]
  %2262 = sext i32 %2261 to i64
  br label %2263

2263:                                             ; preds = %2260, %2203
  %2264 = phi i64 [ 1, %2203 ], [ %2262, %2260 ]
  %2265 = getelementptr inbounds [4 x i8], ptr %238, i64 %2264
  store i32 %2198, ptr %2265, align 4, !tbaa !49
  %2266 = load i32, ptr %164, align 4, !tbaa !47
  %2267 = icmp sgt i32 %2266, 1
  br i1 %2267, label %.mv.ph.mv.fast, label %.loopexit360, !llvm.loop !56

2268:                                             ; preds = %.loopexit364, %.loopexit366
  %2269 = phi i64 [ %2092, %.loopexit366 ], [ %2337, %.loopexit364 ]
  %2270 = getelementptr inbounds nuw [4 x i8], ptr %238, i64 %2269
  %2271 = load i32, ptr %2270, align 4, !tbaa !49
  %2272 = sext i32 %2271 to i64
  %2273 = getelementptr inbounds i8, ptr %239, i64 %2272
  %2274 = load i32, ptr %164, align 4, !tbaa !47
  %2275 = trunc i64 %2269 to i32
  %2276 = shl i32 %2275, 1
  %2277 = icmp sgt i32 %2276, %2274
  br i1 %2277, label %.loopexit364, label %2278

2278:                                             ; preds = %2268
  %2279 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2272
  br label %2280

2280:                                             ; preds = %2328, %2278
  %2281 = phi i32 [ %2274, %2278 ], [ %2332, %2328 ]
  %2282 = phi i32 [ %2276, %2278 ], [ %2331, %2328 ]
  %2283 = phi i32 [ %2275, %2278 ], [ %2313, %2328 ]
  %2284 = icmp slt i32 %2282, %2281
  br i1 %2284, label %2287, label %2285

2285:                                             ; preds = %2280
  %2286 = sext i32 %2282 to i64
  br label %2311

2287:                                             ; preds = %2280
  %2288 = or disjoint i32 %2282, 1
  %2289 = sext i32 %2288 to i64
  %2290 = getelementptr inbounds [4 x i8], ptr %238, i64 %2289
  %2291 = load i32, ptr %2290, align 4, !tbaa !49
  %2292 = sext i32 %2291 to i64
  %2293 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2292
  %2294 = load i16, ptr %2293, align 2, !tbaa !28
  %2295 = sext i32 %2282 to i64
  %2296 = getelementptr inbounds [4 x i8], ptr %238, i64 %2295
  %2297 = load i32, ptr %2296, align 4, !tbaa !49
  %2298 = sext i32 %2297 to i64
  %2299 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2298
  %2300 = load i16, ptr %2299, align 2, !tbaa !28
  %2301 = icmp ult i16 %2294, %2300
  br i1 %2301, label %2310, label %2302

2302:                                             ; preds = %2287
  %2303 = icmp eq i16 %2294, %2300
  br i1 %2303, label %2304, label %2311

2304:                                             ; preds = %2302
  %2305 = getelementptr inbounds i8, ptr %239, i64 %2292
  %2306 = load i8, ptr %2305, align 1, !tbaa !28
  %2307 = getelementptr inbounds i8, ptr %239, i64 %2298
  %2308 = load i8, ptr %2307, align 1, !tbaa !28
  %2309 = icmp ugt i8 %2306, %2308
  br i1 %2309, label %2311, label %2310

2310:                                             ; preds = %2304, %2287
  br label %2311

2311:                                             ; preds = %2310, %2304, %2302, %2285
  %2312 = phi i64 [ %2286, %2285 ], [ %2289, %2310 ], [ %2295, %2304 ], [ %2295, %2302 ]
  %2313 = phi i32 [ %2282, %2285 ], [ %2288, %2310 ], [ %2282, %2304 ], [ %2282, %2302 ]
  %2314 = load i16, ptr %2279, align 2, !tbaa !28
  %2315 = getelementptr inbounds [4 x i8], ptr %238, i64 %2312
  %2316 = load i32, ptr %2315, align 4, !tbaa !49
  %2317 = sext i32 %2316 to i64
  %2318 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2317
  %2319 = load i16, ptr %2318, align 2, !tbaa !28
  %2320 = icmp ult i16 %2314, %2319
  br i1 %2320, label %.loopexit364, label %2321

2321:                                             ; preds = %2311
  %2322 = icmp eq i16 %2314, %2319
  br i1 %2322, label %2323, label %2328

2323:                                             ; preds = %2321
  %2324 = load i8, ptr %2273, align 1, !tbaa !28
  %2325 = getelementptr inbounds i8, ptr %239, i64 %2317
  %2326 = load i8, ptr %2325, align 1, !tbaa !28
  %2327 = icmp ugt i8 %2324, %2326
  br i1 %2327, label %2328, label %.loopexit364

2328:                                             ; preds = %2323, %2321
  %2329 = sext i32 %2283 to i64
  %2330 = getelementptr inbounds [4 x i8], ptr %238, i64 %2329
  store i32 %2316, ptr %2330, align 4, !tbaa !49
  %2331 = shl i32 %2313, 1
  %2332 = load i32, ptr %164, align 4, !tbaa !47
  %2333 = icmp sgt i32 %2331, %2332
  br i1 %2333, label %.loopexit364, label %2280, !llvm.loop !55

.loopexit364:                                     ; preds = %2328, %2323, %2311, %2268
  %2334 = phi i32 [ %2275, %2268 ], [ %2283, %2311 ], [ %2283, %2323 ], [ %2313, %2328 ]
  %2335 = sext i32 %2334 to i64
  %2336 = getelementptr inbounds [4 x i8], ptr %238, i64 %2335
  store i32 %2271, ptr %2336, align 4, !tbaa !49
  %2337 = add nsw i64 %2269, -1
  %2338 = icmp sgt i64 %2269, 1
  br i1 %2338, label %2268, label %2093, !llvm.loop !57

.mv.ph:                                           ; preds = %2093, %2509
  %2339 = phi i32 [ %2512, %2509 ], [ %.fr321, %2093 ]
  %2340 = phi i64 [ %2450, %2509 ], [ %2095, %2093 ]
  %2341 = load i32, ptr %244, align 4, !tbaa !49
  %2342 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2339, i32 -1)
  %2343 = extractvalue { i32, i1 } %2342, 1, !nosanitize !30
  br i1 %2343, label %.loopexit, label %2344, !prof !32, !nosanitize !30

2344:                                             ; preds = %.mv.ph
  %2345 = extractvalue { i32, i1 } %2342, 0, !nosanitize !30
  store i32 %2345, ptr %164, align 4, !tbaa !47
  %2346 = sext i32 %2339 to i64
  %2347 = getelementptr inbounds [4 x i8], ptr %238, i64 %2346
  %2348 = load i32, ptr %2347, align 4, !tbaa !49
  store i32 %2348, ptr %244, align 4, !tbaa !49
  %2349 = sext i32 %2348 to i64
  %2350 = getelementptr inbounds i8, ptr %239, i64 %2349
  %2351 = icmp slt i32 %2345, 2
  br i1 %2351, label %2411, label %2352

2352:                                             ; preds = %2344
  %2353 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2349
  br label %2354

2354:                                             ; preds = %2402, %2352
  %2355 = phi i32 [ %2345, %2352 ], [ %2406, %2402 ]
  %2356 = phi i32 [ 2, %2352 ], [ %2405, %2402 ]
  %2357 = phi i32 [ 1, %2352 ], [ %2387, %2402 ]
  %2358 = icmp slt i32 %2356, %2355
  br i1 %2358, label %2361, label %2359

2359:                                             ; preds = %2354
  %2360 = sext i32 %2356 to i64
  br label %2385

2361:                                             ; preds = %2354
  %2362 = or disjoint i32 %2356, 1
  %2363 = sext i32 %2362 to i64
  %2364 = getelementptr inbounds [4 x i8], ptr %238, i64 %2363
  %2365 = load i32, ptr %2364, align 4, !tbaa !49
  %2366 = sext i32 %2365 to i64
  %2367 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2366
  %2368 = load i16, ptr %2367, align 2, !tbaa !28
  %2369 = sext i32 %2356 to i64
  %2370 = getelementptr inbounds [4 x i8], ptr %238, i64 %2369
  %2371 = load i32, ptr %2370, align 4, !tbaa !49
  %2372 = sext i32 %2371 to i64
  %2373 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2372
  %2374 = load i16, ptr %2373, align 2, !tbaa !28
  %2375 = icmp ult i16 %2368, %2374
  br i1 %2375, label %2384, label %2376

2376:                                             ; preds = %2361
  %2377 = icmp eq i16 %2368, %2374
  br i1 %2377, label %2378, label %2385

2378:                                             ; preds = %2376
  %2379 = getelementptr inbounds i8, ptr %239, i64 %2366
  %2380 = load i8, ptr %2379, align 1, !tbaa !28
  %2381 = getelementptr inbounds i8, ptr %239, i64 %2372
  %2382 = load i8, ptr %2381, align 1, !tbaa !28
  %2383 = icmp ugt i8 %2380, %2382
  br i1 %2383, label %2385, label %2384

2384:                                             ; preds = %2378, %2361
  br label %2385

2385:                                             ; preds = %2384, %2378, %2376, %2359
  %2386 = phi i64 [ %2360, %2359 ], [ %2363, %2384 ], [ %2369, %2378 ], [ %2369, %2376 ]
  %2387 = phi i32 [ %2356, %2359 ], [ %2362, %2384 ], [ %2356, %2378 ], [ %2356, %2376 ]
  %2388 = load i16, ptr %2353, align 2, !tbaa !28
  %2389 = getelementptr inbounds [4 x i8], ptr %238, i64 %2386
  %2390 = load i32, ptr %2389, align 4, !tbaa !49
  %2391 = sext i32 %2390 to i64
  %2392 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2391
  %2393 = load i16, ptr %2392, align 2, !tbaa !28
  %2394 = icmp ult i16 %2388, %2393
  br i1 %2394, label %2408, label %2395

2395:                                             ; preds = %2385
  %2396 = icmp eq i16 %2388, %2393
  br i1 %2396, label %2397, label %2402

2397:                                             ; preds = %2395
  %2398 = load i8, ptr %2350, align 1, !tbaa !28
  %2399 = getelementptr inbounds i8, ptr %239, i64 %2391
  %2400 = load i8, ptr %2399, align 1, !tbaa !28
  %2401 = icmp ugt i8 %2398, %2400
  br i1 %2401, label %2402, label %2408

2402:                                             ; preds = %2397, %2395
  %2403 = sext i32 %2357 to i64
  %2404 = getelementptr inbounds [4 x i8], ptr %238, i64 %2403
  store i32 %2390, ptr %2404, align 4, !tbaa !49
  %2405 = shl i32 %2387, 1
  %2406 = load i32, ptr %164, align 4, !tbaa !47
  %2407 = icmp sgt i32 %2405, %2406
  br i1 %2407, label %2408, label %2354, !llvm.loop !55

2408:                                             ; preds = %2402, %2397, %2385
  %2409 = phi i32 [ %2357, %2385 ], [ %2357, %2397 ], [ %2387, %2402 ]
  %2410 = sext i32 %2409 to i64
  br label %2411

2411:                                             ; preds = %2408, %2344
  %2412 = phi i64 [ 1, %2344 ], [ %2410, %2408 ]
  %2413 = getelementptr inbounds [4 x i8], ptr %238, i64 %2412
  store i32 %2348, ptr %2413, align 4, !tbaa !49
  %2414 = load i32, ptr %244, align 4, !tbaa !49
  %2415 = load i32, ptr %165, align 8, !tbaa !48
  %2416 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2415, i32 -1)
  %2417 = extractvalue { i32, i1 } %2416, 1, !nosanitize !30
  br i1 %2417, label %.loopexit, label %2418, !prof !32, !nosanitize !30

2418:                                             ; preds = %2411
  %2419 = extractvalue { i32, i1 } %2416, 0, !nosanitize !30
  store i32 %2419, ptr %165, align 8, !tbaa !48
  %2420 = sext i32 %2419 to i64
  %2421 = getelementptr inbounds [4 x i8], ptr %238, i64 %2420
  store i32 %2341, ptr %2421, align 4, !tbaa !49
  %2422 = load i32, ptr %165, align 8, !tbaa !48
  %2423 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2422, i32 -1)
  %2424 = extractvalue { i32, i1 } %2423, 1, !nosanitize !30
  br i1 %2424, label %.loopexit, label %2425, !prof !32, !nosanitize !30

2425:                                             ; preds = %2418
  %2426 = extractvalue { i32, i1 } %2423, 0, !nosanitize !30
  store i32 %2426, ptr %165, align 8, !tbaa !48
  %2427 = sext i32 %2426 to i64
  %2428 = getelementptr inbounds [4 x i8], ptr %238, i64 %2427
  store i32 %2414, ptr %2428, align 4, !tbaa !49
  %2429 = sext i32 %2341 to i64
  %2430 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2429
  %2431 = load i16, ptr %2430, align 2, !tbaa !28
  %2432 = sext i32 %2414 to i64
  %2433 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2432
  %2434 = load i16, ptr %2433, align 2, !tbaa !28
  %2435 = add i16 %2434, %2431
  %2436 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2340
  store i16 %2435, ptr %2436, align 2, !tbaa !28
  %2437 = getelementptr inbounds i8, ptr %239, i64 %2429
  %2438 = load i8, ptr %2437, align 1, !tbaa !28
  %2439 = getelementptr inbounds i8, ptr %239, i64 %2432
  %2440 = load i8, ptr %2439, align 1, !tbaa !28
  %2441 = tail call i8 @llvm.umax.i8(i8 %2438, i8 %2440)
  %2442 = add i8 %2441, 1
  %2443 = getelementptr inbounds i8, ptr %239, i64 %2340
  store i8 %2442, ptr %2443, align 1, !tbaa !28
  %2444 = trunc nsw i64 %2340 to i32
  %2445 = trunc i64 %2340 to i16
  %2446 = getelementptr inbounds nuw i8, ptr %2433, i64 2
  store i16 %2445, ptr %2446, align 2, !tbaa !28
  %2447 = getelementptr inbounds nuw i8, ptr %2430, i64 2
  store i16 %2445, ptr %2447, align 2, !tbaa !28
  %2448 = icmp eq i64 %2340, 2147483647
  br i1 %2448, label %.loopexit1, label %2449, !prof !32, !nosanitize !30

2449:                                             ; preds = %2425
  %2450 = add nsw i64 %2340, 1
  store i32 %2444, ptr %244, align 4, !tbaa !49
  %2451 = load i32, ptr %164, align 4, !tbaa !47
  %2452 = icmp slt i32 %2451, 2
  br i1 %2452, label %2509, label %.preheader

.preheader:                                       ; preds = %2449, %2500
  %2453 = phi i32 [ %2504, %2500 ], [ %2451, %2449 ]
  %2454 = phi i32 [ %2503, %2500 ], [ 2, %2449 ]
  %2455 = phi i32 [ %2485, %2500 ], [ 1, %2449 ]
  %2456 = icmp slt i32 %2454, %2453
  br i1 %2456, label %2459, label %2457

2457:                                             ; preds = %.preheader
  %2458 = sext i32 %2454 to i64
  br label %2483

2459:                                             ; preds = %.preheader
  %2460 = or disjoint i32 %2454, 1
  %2461 = sext i32 %2460 to i64
  %2462 = getelementptr inbounds [4 x i8], ptr %238, i64 %2461
  %2463 = load i32, ptr %2462, align 4, !tbaa !49
  %2464 = sext i32 %2463 to i64
  %2465 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2464
  %2466 = load i16, ptr %2465, align 2, !tbaa !28
  %2467 = sext i32 %2454 to i64
  %2468 = getelementptr inbounds [4 x i8], ptr %238, i64 %2467
  %2469 = load i32, ptr %2468, align 4, !tbaa !49
  %2470 = sext i32 %2469 to i64
  %2471 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2470
  %2472 = load i16, ptr %2471, align 2, !tbaa !28
  %2473 = icmp ult i16 %2466, %2472
  br i1 %2473, label %2482, label %2474

2474:                                             ; preds = %2459
  %2475 = icmp eq i16 %2466, %2472
  br i1 %2475, label %2476, label %2483

2476:                                             ; preds = %2474
  %2477 = getelementptr inbounds i8, ptr %239, i64 %2464
  %2478 = load i8, ptr %2477, align 1, !tbaa !28
  %2479 = getelementptr inbounds i8, ptr %239, i64 %2470
  %2480 = load i8, ptr %2479, align 1, !tbaa !28
  %2481 = icmp ugt i8 %2478, %2480
  br i1 %2481, label %2483, label %2482

2482:                                             ; preds = %2476, %2459
  br label %2483

2483:                                             ; preds = %2482, %2476, %2474, %2457
  %2484 = phi i64 [ %2458, %2457 ], [ %2461, %2482 ], [ %2467, %2476 ], [ %2467, %2474 ]
  %2485 = phi i32 [ %2454, %2457 ], [ %2460, %2482 ], [ %2454, %2476 ], [ %2454, %2474 ]
  %2486 = load i16, ptr %2436, align 2, !tbaa !28
  %2487 = getelementptr inbounds [4 x i8], ptr %238, i64 %2484
  %2488 = load i32, ptr %2487, align 4, !tbaa !49
  %2489 = sext i32 %2488 to i64
  %2490 = getelementptr inbounds [4 x i8], ptr %2017, i64 %2489
  %2491 = load i16, ptr %2490, align 2, !tbaa !28
  %2492 = icmp ult i16 %2486, %2491
  br i1 %2492, label %2506, label %2493

2493:                                             ; preds = %2483
  %2494 = icmp eq i16 %2486, %2491
  br i1 %2494, label %2495, label %2500

2495:                                             ; preds = %2493
  %2496 = load i8, ptr %2443, align 1, !tbaa !28
  %2497 = getelementptr inbounds i8, ptr %239, i64 %2489
  %2498 = load i8, ptr %2497, align 1, !tbaa !28
  %2499 = icmp ugt i8 %2496, %2498
  br i1 %2499, label %2500, label %2506

2500:                                             ; preds = %2495, %2493
  %2501 = sext i32 %2455 to i64
  %2502 = getelementptr inbounds [4 x i8], ptr %238, i64 %2501
  store i32 %2488, ptr %2502, align 4, !tbaa !49
  %2503 = shl i32 %2485, 1
  %2504 = load i32, ptr %164, align 4, !tbaa !47
  %2505 = icmp sgt i32 %2503, %2504
  br i1 %2505, label %2506, label %.preheader, !llvm.loop !55

2506:                                             ; preds = %2500, %2495, %2483
  %2507 = phi i32 [ %2455, %2483 ], [ %2455, %2495 ], [ %2485, %2500 ]
  %2508 = sext i32 %2507 to i64
  br label %2509

2509:                                             ; preds = %2506, %2449
  %2510 = phi i64 [ 1, %2449 ], [ %2508, %2506 ]
  %2511 = getelementptr inbounds [4 x i8], ptr %238, i64 %2510
  store i32 %2444, ptr %2511, align 4, !tbaa !49
  %2512 = load i32, ptr %164, align 4, !tbaa !47
  %2513 = icmp sgt i32 %2512, 1
  br i1 %2513, label %.mv.ph, label %.loopexit360, !llvm.loop !56

.loopexit360:                                     ; preds = %2509, %2263
  %2514 = load i32, ptr %165, align 8, !tbaa !48
  %2515 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2514, i32 -1)
  %2516 = extractvalue { i32, i1 } %2515, 1, !nosanitize !30
  br i1 %2516, label %.loopexit, label %2517, !prof !32, !nosanitize !30

2517:                                             ; preds = %.loopexit360
  %2518 = extractvalue { i32, i1 } %2515, 0, !nosanitize !30
  %2519 = load i32, ptr %244, align 4, !tbaa !49
  store i32 %2518, ptr %165, align 8, !tbaa !48
  %2520 = sext i32 %2518 to i64
  %2521 = getelementptr inbounds [4 x i8], ptr %238, i64 %2520
  store i32 %2519, ptr %2521, align 4, !tbaa !49
  %2522 = load ptr, ptr %2016, align 8, !tbaa !41
  %2523 = load i32, ptr %2090, align 8, !tbaa !54
  %2524 = load ptr, ptr %2018, align 8, !tbaa !42
  %2525 = load ptr, ptr %2524, align 8, !tbaa !43
  %2526 = getelementptr inbounds nuw i8, ptr %2524, i64 8
  %2527 = load ptr, ptr %2526, align 8, !tbaa !58
  %2528 = getelementptr inbounds nuw i8, ptr %2524, i64 16
  %2529 = load i32, ptr %2528, align 8, !tbaa !59
  %2530 = getelementptr inbounds nuw i8, ptr %2524, i64 24
  %2531 = load i32, ptr %2530, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %682, i8 0, i64 32, i1 false), !tbaa !61
  %2532 = load i32, ptr %165, align 8, !tbaa !48
  %2533 = sext i32 %2532 to i64
  %2534 = getelementptr inbounds [4 x i8], ptr %238, i64 %2533
  %2535 = load i32, ptr %2534, align 4, !tbaa !49
  %2536 = sext i32 %2535 to i64
  %.split322 = getelementptr inbounds [4 x i8], ptr %2522, i64 %2536
  %2537 = getelementptr inbounds nuw i8, ptr %.split322, i64 2
  store i16 0, ptr %2537, align 2, !tbaa !28
  %2538 = load i32, ptr %165, align 8, !tbaa !48
  %2539 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2538, i32 1), !nosanitize !30
  %2540 = extractvalue { i32, i1 } %2539, 1, !nosanitize !30
  br i1 %2540, label %.loopexit357, label %2541, !prof !32, !nosanitize !30

.loopexit357:                                     ; preds = %2588, %2564, %2517
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

2541:                                             ; preds = %2517
  %2542 = extractvalue { i32, i1 } %2539, 0
  %2543 = icmp slt i32 %2542, 573
  br i1 %2543, label %2544, label %.loopexit352

2544:                                             ; preds = %2541
  %2545 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2546 = icmp eq ptr %2525, null
  %2547 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2548 = sext i32 %2542 to i64
  br label %2549

2549:                                             ; preds = %2619, %2544
  %2550 = phi i64 [ %2548, %2544 ], [ %2620, %2619 ]
  %2551 = phi i32 [ 0, %2544 ], [ %2571, %2619 ]
  %2552 = getelementptr inbounds [4 x i8], ptr %238, i64 %2550
  %2553 = load i32, ptr %2552, align 4, !tbaa !49
  %2554 = sext i32 %2553 to i64
  %2555 = getelementptr inbounds [4 x i8], ptr %2522, i64 %2554
  %2556 = getelementptr inbounds nuw i8, ptr %2555, i64 2
  %2557 = load i16, ptr %2556, align 2, !tbaa !28
  %2558 = zext i16 %2557 to i64
  %.split323 = getelementptr inbounds nuw [4 x i8], ptr %2522, i64 %2558
  %2559 = getelementptr inbounds nuw i8, ptr %.split323, i64 2
  %2560 = load i16, ptr %2559, align 2, !tbaa !28
  %2561 = zext i16 %2560 to i32
  %2562 = add nuw nsw i32 %2561, 1
  %2563 = icmp sgt i32 %2531, %2561
  br i1 %2563, label %2569, label %2564

2564:                                             ; preds = %2549
  %2565 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2551, i32 1), !nosanitize !30
  %2566 = extractvalue { i32, i1 } %2565, 1, !nosanitize !30
  br i1 %2566, label %.loopexit357, label %2567, !prof !32, !nosanitize !30

2567:                                             ; preds = %2564
  %2568 = extractvalue { i32, i1 } %2565, 0, !nosanitize !30
  br label %2569

2569:                                             ; preds = %2567, %2549
  %2570 = phi i32 [ %2531, %2567 ], [ %2562, %2549 ]
  %2571 = phi i32 [ %2568, %2567 ], [ %2551, %2549 ]
  %2572 = trunc i32 %2570 to i16
  store i16 %2572, ptr %2556, align 2, !tbaa !28
  %2573 = icmp sgt i32 %2553, %2523
  br i1 %2573, label %2619, label %2574

2574:                                             ; preds = %2569
  %2575 = sext i32 %2570 to i64
  %2576 = getelementptr inbounds [2 x i8], ptr %682, i64 %2575
  %2577 = load i16, ptr %2576, align 2, !tbaa !61
  %2578 = add i16 %2577, 1
  store i16 %2578, ptr %2576, align 2, !tbaa !61
  %2579 = icmp slt i32 %2553, %2529
  br i1 %2579, label %2588, label %2580

2580:                                             ; preds = %2574
  %2581 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2553, i32 %2529), !nosanitize !30
  %2582 = extractvalue { i32, i1 } %2581, 1, !nosanitize !30
  br i1 %2582, label %.loopexit347, label %2583, !prof !32, !nosanitize !30

.loopexit347:                                     ; preds = %2580, %2646, %2638, %2672, %2677, %2625
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2583:                                             ; preds = %2580
  %2584 = extractvalue { i32, i1 } %2581, 0, !nosanitize !30
  %2585 = sext i32 %2584 to i64
  %2586 = getelementptr inbounds [4 x i8], ptr %2527, i64 %2585
  %2587 = load i32, ptr %2586, align 4, !tbaa !49
  br label %2588

2588:                                             ; preds = %2583, %2574
  %2589 = phi i32 [ %2587, %2583 ], [ 0, %2574 ]
  %2590 = load i16, ptr %2555, align 2, !tbaa !28
  %2591 = zext i16 %2590 to i64
  %2592 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2570, i32 %2589), !nosanitize !30
  %2593 = extractvalue { i32, i1 } %2592, 1, !nosanitize !30
  br i1 %2593, label %.loopexit357, label %2594, !prof !32, !nosanitize !30

2594:                                             ; preds = %2588
  %2595 = extractvalue { i32, i1 } %2592, 0, !nosanitize !30
  %2596 = zext i32 %2595 to i64
  %2597 = mul nuw nsw i64 %2596, %2591
  %2598 = load i64, ptr %2545, align 8, !tbaa !51
  %2599 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2598, i64 %2597), !nosanitize !30
  %2600 = extractvalue { i64, i1 } %2599, 1, !nosanitize !30
  br i1 %2600, label %2601, label %2602, !prof !32, !nosanitize !30

2601:                                             ; preds = %2604, %2594
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2602:                                             ; preds = %2594
  %2603 = extractvalue { i64, i1 } %2599, 0, !nosanitize !30
  store i64 %2603, ptr %2545, align 8, !tbaa !51
  br i1 %2546, label %2619, label %2604

2604:                                             ; preds = %2602
  %.split324 = getelementptr inbounds [4 x i8], ptr %2525, i64 %2554
  %2605 = getelementptr inbounds nuw i8, ptr %.split324, i64 2
  %2606 = load i16, ptr %2605, align 2, !tbaa !28
  %2607 = zext i16 %2606 to i32
  %2608 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2607, i32 %2589), !nosanitize !30
  %2609 = extractvalue { i32, i1 } %2608, 1, !nosanitize !30
  br i1 %2609, label %2601, label %2610, !prof !32, !nosanitize !30

2610:                                             ; preds = %2604
  %2611 = extractvalue { i32, i1 } %2608, 0, !nosanitize !30
  %2612 = zext i32 %2611 to i64
  %2613 = mul nuw nsw i64 %2612, %2591
  %2614 = load i64, ptr %2547, align 8, !tbaa !52
  %2615 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2614, i64 %2613), !nosanitize !30
  %2616 = extractvalue { i64, i1 } %2615, 1, !nosanitize !30
  br i1 %2616, label %.loopexit355, label %2617, !prof !32, !nosanitize !30

.loopexit355:                                     ; preds = %2610, %2641
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2617:                                             ; preds = %2610
  %2618 = extractvalue { i64, i1 } %2615, 0, !nosanitize !30
  store i64 %2618, ptr %2547, align 8, !tbaa !52
  br label %2619

2619:                                             ; preds = %2617, %2602, %2569
  %2620 = add nsw i64 %2550, 1
  %2621 = and i64 %2620, 4294967295
  %2622 = icmp eq i64 %2621, 573
  br i1 %2622, label %2623, label %2549, !llvm.loop !62

2623:                                             ; preds = %2619
  %2624 = icmp eq i32 %2571, 0
  br i1 %2624, label %.loopexit352, label %2625

2625:                                             ; preds = %2623
  %2626 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2531, i32 -1)
  %2627 = extractvalue { i32, i1 } %2626, 1, !nosanitize !30
  %2628 = sext i32 %2531 to i64
  %2629 = getelementptr inbounds [2 x i8], ptr %682, i64 %2628
  br i1 %2627, label %.loopexit347, label %.preheader354, !prof !32, !nosanitize !30

.preheader354:                                    ; preds = %2625, %2656
  %2630 = phi i32 [ %2657, %2656 ], [ %2571, %2625 ]
  br label %2631

2631:                                             ; preds = %2638, %.preheader354
  %2632 = phi { i32, i1 } [ %2639, %2638 ], [ %2626, %.preheader354 ]
  %2633 = extractvalue { i32, i1 } %2632, 0
  %2634 = sext i32 %2633 to i64
  %2635 = getelementptr inbounds [2 x i8], ptr %682, i64 %2634
  %2636 = load i16, ptr %2635, align 2, !tbaa !61
  %2637 = icmp eq i16 %2636, 0
  br i1 %2637, label %2638, label %2641

2638:                                             ; preds = %2631
  %2639 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2633, i32 -1)
  %2640 = extractvalue { i32, i1 } %2639, 1, !nosanitize !30
  br i1 %2640, label %.loopexit347, label %2631, !prof !32, !llvm.loop !64, !nosanitize !30

2641:                                             ; preds = %2631
  %2642 = getelementptr inbounds [2 x i8], ptr %682, i64 %2634
  %2643 = add i16 %2636, -1
  store i16 %2643, ptr %2642, align 2, !tbaa !61
  %2644 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2633, i32 1), !nosanitize !30
  %2645 = extractvalue { i32, i1 } %2644, 1, !nosanitize !30
  br i1 %2645, label %.loopexit355, label %2646, !prof !32, !nosanitize !30

2646:                                             ; preds = %2641
  %2647 = extractvalue { i32, i1 } %2644, 0, !nosanitize !30
  %2648 = sext i32 %2647 to i64
  %2649 = getelementptr inbounds [2 x i8], ptr %682, i64 %2648
  %2650 = load i16, ptr %2649, align 2, !tbaa !61
  %2651 = add i16 %2650, 2
  store i16 %2651, ptr %2649, align 2, !tbaa !61
  %2652 = load i16, ptr %2629, align 2, !tbaa !61
  %2653 = add i16 %2652, -1
  store i16 %2653, ptr %2629, align 2, !tbaa !61
  %2654 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2630, i32 -2)
  %2655 = extractvalue { i32, i1 } %2654, 1, !nosanitize !30
  br i1 %2655, label %.loopexit347, label %2656, !prof !32, !nosanitize !30

2656:                                             ; preds = %2646
  %2657 = extractvalue { i32, i1 } %2654, 0, !nosanitize !30
  %2658 = icmp sgt i32 %2657, 0
  br i1 %2658, label %.preheader354, label %2659, !llvm.loop !63

2659:                                             ; preds = %2656
  %2660 = icmp eq i32 %2531, 0
  br i1 %2660, label %.loopexit352, label %.preheader350

.preheader350:                                    ; preds = %2659, %2714
  %2661 = phi i64 [ %2715, %2714 ], [ %2628, %2659 ]
  %2662 = phi i32 [ %2669, %2714 ], [ 573, %2659 ]
  %2663 = getelementptr inbounds [2 x i8], ptr %682, i64 %2661
  %2664 = load i16, ptr %2663, align 2, !tbaa !61
  %2665 = icmp eq i16 %2664, 0
  br i1 %2665, label %.loopexit349, label %2666

2666:                                             ; preds = %.preheader350
  %2667 = zext i16 %2664 to i32
  %2668 = trunc i64 %2661 to i16
  br label %2672

.loopexit349:                                     ; preds = %2711, %.preheader350
  %2669 = phi i32 [ %2662, %.preheader350 ], [ %2681, %2711 ]
  %2670 = and i64 %2661, 4294967295
  %2671 = icmp eq i64 %2670, 2147483648
  br i1 %2671, label %.loopexit348, label %2714, !prof !32, !nosanitize !30

2672:                                             ; preds = %2711, %2666
  %2673 = phi i32 [ %2662, %2666 ], [ %2681, %2711 ]
  %2674 = phi i32 [ %2667, %2666 ], [ %2712, %2711 ]
  %2675 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2673, i32 -1)
  %2676 = extractvalue { i32, i1 } %2675, 1, !nosanitize !30
  br i1 %2676, label %.loopexit347, label %.lr.ph1256, !prof !65, !nosanitize !30

2677:                                             ; preds = %.lr.ph1256
  %2678 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2681, i32 -1)
  %2679 = extractvalue { i32, i1 } %2678, 1, !nosanitize !30
  br i1 %2679, label %.loopexit347, label %.lr.ph1256, !prof !66, !llvm.loop !67, !nosanitize !30

.lr.ph1256:                                       ; preds = %2672, %2677
  %2680 = phi { i32, i1 } [ %2678, %2677 ], [ %2675, %2672 ]
  %2681 = extractvalue { i32, i1 } %2680, 0, !nosanitize !30
  %2682 = sext i32 %2681 to i64
  %2683 = getelementptr inbounds [4 x i8], ptr %238, i64 %2682
  %2684 = load i32, ptr %2683, align 4, !tbaa !49
  %2685 = icmp sgt i32 %2684, %2523
  br i1 %2685, label %2677, label %2686, !llvm.loop !67

2686:                                             ; preds = %.lr.ph1256
  %2687 = sext i32 %2684 to i64
  %2688 = getelementptr inbounds [4 x i8], ptr %2522, i64 %2687
  %2689 = getelementptr inbounds nuw i8, ptr %2688, i64 2
  %2690 = load i16, ptr %2689, align 2, !tbaa !28
  %2691 = zext i16 %2690 to i64
  %2692 = icmp eq i64 %2661, %2691
  br i1 %2692, label %2711, label %2693

2693:                                             ; preds = %2686
  %2694 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2661, i64 %2691), !nosanitize !30
  %2695 = extractvalue { i64, i1 } %2694, 1, !nosanitize !30
  br i1 %2695, label %.loopexit348, label %2696, !prof !32, !nosanitize !30

.loopexit348:                                     ; preds = %.loopexit349, %2693
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

2696:                                             ; preds = %2693
  %2697 = extractvalue { i64, i1 } %2694, 0, !nosanitize !30
  %2698 = load i16, ptr %2688, align 2, !tbaa !28
  %2699 = zext i16 %2698 to i64
  %2700 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2697, i64 %2699), !nosanitize !30
  %2701 = extractvalue { i64, i1 } %2700, 1, !nosanitize !30
  br i1 %2701, label %2702, label %2703, !prof !32, !nosanitize !30

2702:                                             ; preds = %2696
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !30
  unreachable, !nosanitize !30

2703:                                             ; preds = %2696
  %2704 = extractvalue { i64, i1 } %2700, 0, !nosanitize !30
  %2705 = load i64, ptr %2545, align 8, !tbaa !51
  %2706 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2705, i64 %2704), !nosanitize !30
  %2707 = extractvalue { i64, i1 } %2706, 1, !nosanitize !30
  br i1 %2707, label %2708, label %2709, !prof !32, !nosanitize !30

2708:                                             ; preds = %2703
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2709:                                             ; preds = %2703
  %2710 = extractvalue { i64, i1 } %2706, 0, !nosanitize !30
  store i64 %2710, ptr %2545, align 8, !tbaa !51
  store i16 %2668, ptr %2689, align 2, !tbaa !28
  br label %2711

2711:                                             ; preds = %2709, %2686
  %2712 = add nsw i32 %2674, -1
  %2713 = icmp eq i32 %2712, 0
  br i1 %2713, label %.loopexit349, label %2672, !llvm.loop !67

2714:                                             ; preds = %.loopexit349
  %2715 = add nsw i64 %2661, -1
  %2716 = and i64 %2715, 4294967295
  %2717 = icmp eq i64 %2716, 0
  br i1 %2717, label %.loopexit352, label %.preheader350, !llvm.loop !68

.loopexit352:                                     ; preds = %2714, %2659, %2623, %2541
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %2718 = load i16, ptr %682, align 2, !tbaa !61
  %2719 = zext i16 %2718 to i32
  %2720 = shl nuw nsw i32 %2719, 1
  %2721 = trunc i32 %2720 to i16
  %2722 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %2721, ptr %2722, align 2, !tbaa !61
  %2723 = load i16, ptr %899, align 2, !tbaa !61
  %2724 = zext i16 %2723 to i32
  %2725 = add nuw nsw i32 %2720, %2724
  %2726 = shl nuw nsw i32 %2725, 1
  %2727 = trunc i32 %2726 to i16
  %2728 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2727, ptr %2728, align 4, !tbaa !61
  %2729 = load i16, ptr %906, align 2, !tbaa !61
  %2730 = zext i16 %2729 to i32
  %2731 = add nuw nsw i32 %2726, %2730
  %2732 = shl nuw nsw i32 %2731, 1
  %2733 = trunc i32 %2732 to i16
  %2734 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2733, ptr %2734, align 2, !tbaa !61
  %2735 = load i16, ptr %913, align 2, !tbaa !61
  %2736 = zext i16 %2735 to i32
  %2737 = add nuw nsw i32 %2732, %2736
  %2738 = shl nuw nsw i32 %2737, 1
  %2739 = trunc i32 %2738 to i16
  %2740 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %2739, ptr %2740, align 8, !tbaa !61
  %2741 = load i16, ptr %920, align 2, !tbaa !61
  %2742 = zext i16 %2741 to i32
  %2743 = add nuw nsw i32 %2738, %2742
  %2744 = shl nuw nsw i32 %2743, 1
  %2745 = trunc i32 %2744 to i16
  %2746 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %2745, ptr %2746, align 2, !tbaa !61
  %2747 = load i16, ptr %927, align 2, !tbaa !61
  %2748 = trunc i32 %2744 to i16
  %.tr980 = add i16 %2747, %2748
  %2749 = shl i16 %.tr980, 1
  %2750 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %2749, ptr %2750, align 4, !tbaa !61
  %2751 = load i16, ptr %934, align 2, !tbaa !61
  %.tr328 = add i16 %2751, %2749
  %2752 = shl i16 %.tr328, 1
  %2753 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %2752, ptr %2753, align 2, !tbaa !61
  %2754 = load i16, ptr %941, align 2, !tbaa !61
  %.tr325 = add i16 %2752, %2754
  %2755 = shl i16 %.tr325, 1
  %2756 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %2755, ptr %2756, align 16, !tbaa !61
  %2757 = load i16, ptr %946, align 2, !tbaa !61
  %2758 = add i16 %2755, %2757
  %2759 = shl i16 %2758, 1
  %2760 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %2759, ptr %2760, align 2, !tbaa !61
  %2761 = load i16, ptr %950, align 2, !tbaa !61
  %2762 = add i16 %2759, %2761
  %2763 = shl i16 %2762, 1
  %2764 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %2763, ptr %2764, align 4, !tbaa !61
  %2765 = load i16, ptr %954, align 2, !tbaa !61
  %2766 = add i16 %2763, %2765
  %2767 = shl i16 %2766, 1
  %2768 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %2767, ptr %2768, align 2, !tbaa !61
  %2769 = load i16, ptr %959, align 2, !tbaa !61
  %2770 = add i16 %2767, %2769
  %2771 = shl i16 %2770, 1
  %2772 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2771, ptr %2772, align 8, !tbaa !61
  %2773 = load i16, ptr %964, align 2, !tbaa !61
  %2774 = add i16 %2771, %2773
  %2775 = shl i16 %2774, 1
  %2776 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2775, ptr %2776, align 2, !tbaa !61
  %2777 = load i16, ptr %969, align 2, !tbaa !61
  %2778 = add i16 %2775, %2777
  %2779 = shl i16 %2778, 1
  %2780 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2779, ptr %2780, align 4, !tbaa !61
  %2781 = load i16, ptr %974, align 2, !tbaa !61
  %2782 = add i16 %2779, %2781
  %2783 = shl i16 %2782, 1
  %2784 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2783, ptr %2784, align 2, !tbaa !61
  %2785 = icmp slt i32 %2088, 0
  br i1 %2785, label %.loopexit346, label %.preheader345

2786:                                             ; preds = %2836
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

.preheader345:                                    ; preds = %.loopexit352, %2838
  %2787 = phi i64 [ %2839, %2838 ], [ 0, %.loopexit352 ]
  %2788 = getelementptr inbounds nuw [4 x i8], ptr %2017, i64 %2787
  %2789 = getelementptr inbounds nuw i8, ptr %2788, i64 2
  %2790 = load i16, ptr %2789, align 2, !tbaa !28
  %2791 = icmp eq i16 %2790, 0
  br i1 %2791, label %2836, label %2792

2792:                                             ; preds = %.preheader345
  %2793 = zext i16 %2790 to i32
  %2794 = zext i16 %2790 to i64
  %2795 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %2794
  %2796 = load i16, ptr %2795, align 2, !tbaa !61
  %2797 = add i16 %2796, 1
  store i16 %2797, ptr %2795, align 2, !tbaa !61
  %2798 = and i32 %2793, 3
  %2799 = icmp ult i16 %2790, 4
  br i1 %2799, label %.loopexit344, label %2800

2800:                                             ; preds = %2792
  %2801 = and i32 %2793, 65532
  br label %2802

2802:                                             ; preds = %2802, %2800
  %2803 = phi i16 [ %2796, %2800 ], [ %2819, %2802 ]
  %2804 = phi i16 [ 0, %2800 ], [ %2818, %2802 ]
  %2805 = phi i32 [ 0, %2800 ], [ %2820, %2802 ]
  %2806 = and i16 %2803, 1
  %2807 = or disjoint i16 %2804, %2806
  %2808 = lshr i16 %2803, 2
  %2809 = shl i16 %2807, 2
  %2810 = and i16 %2803, 2
  %2811 = or disjoint i16 %2809, %2810
  %2812 = and i16 %2808, 1
  %2813 = or disjoint i16 %2811, %2812
  %2814 = shl i16 %2813, 1
  %2815 = lshr i16 %2803, 3
  %2816 = and i16 %2815, 1
  %2817 = or disjoint i16 %2814, %2816
  %2818 = shl i16 %2817, 1
  %2819 = lshr i16 %2803, 4
  %2820 = add nuw nsw i32 %2805, 4
  %2821 = icmp eq i32 %2820, %2801
  br i1 %2821, label %.loopexit344, label %2802, !llvm.loop !69

.loopexit344:                                     ; preds = %2802, %2792
  %2822 = phi i16 [ poison, %2792 ], [ %2817, %2802 ]
  %2823 = phi i16 [ %2796, %2792 ], [ %2819, %2802 ]
  %2824 = phi i16 [ 0, %2792 ], [ %2818, %2802 ]
  %2825 = icmp eq i32 %2798, 0
  br i1 %2825, label %.loopexit343, label %.preheader342

.preheader342:                                    ; preds = %.loopexit344, %.preheader342
  %2826 = phi i16 [ %2832, %.preheader342 ], [ %2823, %.loopexit344 ]
  %2827 = phi i16 [ %2831, %.preheader342 ], [ %2824, %.loopexit344 ]
  %2828 = phi i32 [ %2833, %.preheader342 ], [ 0, %.loopexit344 ]
  %2829 = and i16 %2826, 1
  %2830 = or disjoint i16 %2827, %2829
  %2831 = shl i16 %2830, 1
  %2832 = lshr i16 %2826, 1
  %2833 = add nuw nsw i32 %2828, 1
  %2834 = icmp eq i32 %2833, %2798
  br i1 %2834, label %.loopexit343, label %.preheader342, !llvm.loop !77

.loopexit343:                                     ; preds = %.preheader342, %.loopexit344
  %2835 = phi i16 [ %2822, %.loopexit344 ], [ %2830, %.preheader342 ]
  store i16 %2835, ptr %2788, align 2, !tbaa !28
  br label %2836

2836:                                             ; preds = %.loopexit343, %.preheader345
  %2837 = icmp eq i64 %2787, 2147483647
  br i1 %2837, label %2786, label %2838, !prof !32, !nosanitize !30

2838:                                             ; preds = %2836
  %2839 = add nuw nsw i64 %2787, 1
  %2840 = trunc i64 %2839 to i32
  %2841 = icmp slt i32 %2088, %2840
  br i1 %2841, label %.loopexit346, label %.preheader345, !llvm.loop !72

.loopexit346:                                     ; preds = %2838, %.loopexit352
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %2842 = getelementptr i8, ptr %0, i64 2750
  %2843 = getelementptr i8, ptr %0, i64 2810
  %2844 = load i16, ptr %2843, align 2, !tbaa !28
  %2845 = icmp eq i16 %2844, 0
  br i1 %2845, label %2846, label %2906

2846:                                             ; preds = %.loopexit346
  %2847 = getelementptr i8, ptr %0, i64 2754
  %2848 = load i16, ptr %2847, align 2, !tbaa !28
  %2849 = icmp eq i16 %2848, 0
  br i1 %2849, label %2850, label %2906

2850:                                             ; preds = %2846
  %2851 = getelementptr i8, ptr %0, i64 2806
  %2852 = load i16, ptr %2851, align 2, !tbaa !28
  %2853 = icmp eq i16 %2852, 0
  br i1 %2853, label %2854, label %2906

2854:                                             ; preds = %2850
  %2855 = getelementptr i8, ptr %0, i64 2758
  %2856 = load i16, ptr %2855, align 2, !tbaa !28
  %2857 = icmp eq i16 %2856, 0
  br i1 %2857, label %2858, label %2906

2858:                                             ; preds = %2854
  %2859 = getelementptr i8, ptr %0, i64 2802
  %2860 = load i16, ptr %2859, align 2, !tbaa !28
  %2861 = icmp eq i16 %2860, 0
  br i1 %2861, label %2862, label %2906

2862:                                             ; preds = %2858
  %2863 = getelementptr i8, ptr %0, i64 2762
  %2864 = load i16, ptr %2863, align 2, !tbaa !28
  %2865 = icmp eq i16 %2864, 0
  br i1 %2865, label %2866, label %2906

2866:                                             ; preds = %2862
  %2867 = getelementptr i8, ptr %0, i64 2798
  %2868 = load i16, ptr %2867, align 2, !tbaa !28
  %2869 = icmp eq i16 %2868, 0
  br i1 %2869, label %2870, label %2906

2870:                                             ; preds = %2866
  %2871 = getelementptr i8, ptr %0, i64 2766
  %2872 = load i16, ptr %2871, align 2, !tbaa !28
  %2873 = icmp eq i16 %2872, 0
  br i1 %2873, label %2874, label %2906

2874:                                             ; preds = %2870
  %2875 = getelementptr i8, ptr %0, i64 2794
  %2876 = load i16, ptr %2875, align 2, !tbaa !28
  %2877 = icmp eq i16 %2876, 0
  br i1 %2877, label %2878, label %2906

2878:                                             ; preds = %2874
  %2879 = getelementptr i8, ptr %0, i64 2770
  %2880 = load i16, ptr %2879, align 2, !tbaa !28
  %2881 = icmp eq i16 %2880, 0
  br i1 %2881, label %2882, label %2906

2882:                                             ; preds = %2878
  %2883 = getelementptr i8, ptr %0, i64 2790
  %2884 = load i16, ptr %2883, align 2, !tbaa !28
  %2885 = icmp eq i16 %2884, 0
  br i1 %2885, label %2886, label %2906

2886:                                             ; preds = %2882
  %2887 = getelementptr i8, ptr %0, i64 2774
  %2888 = load i16, ptr %2887, align 2, !tbaa !28
  %2889 = icmp eq i16 %2888, 0
  br i1 %2889, label %2890, label %2906

2890:                                             ; preds = %2886
  %2891 = getelementptr i8, ptr %0, i64 2786
  %2892 = load i16, ptr %2891, align 2, !tbaa !28
  %2893 = icmp eq i16 %2892, 0
  br i1 %2893, label %2894, label %2906

2894:                                             ; preds = %2890
  %2895 = getelementptr i8, ptr %0, i64 2778
  %2896 = load i16, ptr %2895, align 2, !tbaa !28
  %2897 = icmp eq i16 %2896, 0
  br i1 %2897, label %2898, label %2906

2898:                                             ; preds = %2894
  %2899 = getelementptr i8, ptr %0, i64 2782
  %2900 = load i16, ptr %2899, align 2, !tbaa !28
  %2901 = icmp eq i16 %2900, 0
  br i1 %2901, label %2902, label %2906

2902:                                             ; preds = %2898
  %2903 = load i16, ptr %2842, align 2, !tbaa !28
  %2904 = icmp eq i16 %2903, 0
  %2905 = select i1 %2904, i32 2, i32 3
  br label %2906

2906:                                             ; preds = %2902, %2898, %2894, %2890, %2886, %2882, %2878, %2874, %2870, %2866, %2862, %2858, %2854, %2850, %2846, %.loopexit346
  %2907 = phi i32 [ 18, %.loopexit346 ], [ 17, %2846 ], [ 16, %2850 ], [ 15, %2854 ], [ 14, %2858 ], [ 13, %2862 ], [ 12, %2866 ], [ 11, %2870 ], [ 10, %2874 ], [ 9, %2878 ], [ 8, %2882 ], [ 7, %2886 ], [ 6, %2890 ], [ 5, %2894 ], [ 4, %2898 ], [ %2905, %2902 ]
  %2908 = mul nuw nsw i32 %2907, 3
  %2909 = add nuw nsw i32 %2908, 17
  %2910 = zext nneg i32 %2909 to i64
  %2911 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2912 = load i64, ptr %2911, align 8, !tbaa !51
  %2913 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2912, i64 %2910), !nosanitize !30
  %2914 = extractvalue { i64, i1 } %2913, 1, !nosanitize !30
  br i1 %2914, label %2915, label %2916, !prof !32, !nosanitize !30

2915:                                             ; preds = %2906
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2916:                                             ; preds = %2906
  %2917 = extractvalue { i64, i1 } %2913, 0, !nosanitize !30
  store i64 %2917, ptr %2911, align 8, !tbaa !51
  %2918 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2917, i64 3), !nosanitize !30
  %2919 = extractvalue { i64, i1 } %2918, 1, !nosanitize !30
  br i1 %2919, label %2920, label %2921, !prof !32, !nosanitize !30

2920:                                             ; preds = %2916
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2921:                                             ; preds = %2916
  %2922 = extractvalue { i64, i1 } %2918, 0, !nosanitize !30
  %2923 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2922, i64 7), !nosanitize !30
  %2924 = extractvalue { i64, i1 } %2923, 1, !nosanitize !30
  br i1 %2924, label %2925, label %2926, !prof !32, !nosanitize !30

2925:                                             ; preds = %2921
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2926:                                             ; preds = %2921
  %2927 = extractvalue { i64, i1 } %2923, 0, !nosanitize !30
  %2928 = lshr i64 %2927, 3
  %2929 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2930 = load i64, ptr %2929, align 8, !tbaa !52
  %2931 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2930, i64 3), !nosanitize !30
  %2932 = extractvalue { i64, i1 } %2931, 1, !nosanitize !30
  br i1 %2932, label %2933, label %2934, !prof !32, !nosanitize !30

2933:                                             ; preds = %2926
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2934:                                             ; preds = %2926
  %2935 = extractvalue { i64, i1 } %2931, 0, !nosanitize !30
  %2936 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2935, i64 7), !nosanitize !30
  %2937 = extractvalue { i64, i1 } %2936, 1, !nosanitize !30
  br i1 %2937, label %2938, label %2939, !prof !32, !nosanitize !30

2938:                                             ; preds = %2934
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2939:                                             ; preds = %2934
  %2940 = extractvalue { i64, i1 } %2936, 0, !nosanitize !30
  %2941 = lshr i64 %2940, 3
  %2942 = icmp samesign ugt i64 %2941, %2928
  br i1 %2942, label %2943, label %2947

2943:                                             ; preds = %2939
  %2944 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2945 = load i32, ptr %2944, align 8, !tbaa !78
  %2946 = icmp eq i32 %2945, 4
  br i1 %2946, label %2947, label %2954

2947:                                             ; preds = %2943, %2939
  br label %2954

2948:                                             ; preds = %4
  %2949 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 5), !nosanitize !30
  %2950 = extractvalue { i64, i1 } %2949, 1, !nosanitize !30
  br i1 %2950, label %2951, label %2952, !prof !32, !nosanitize !30

2951:                                             ; preds = %2948
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2952:                                             ; preds = %2948
  %2953 = extractvalue { i64, i1 } %2949, 0, !nosanitize !30
  br label %2954

2954:                                             ; preds = %2952, %2947, %2943
  %2955 = phi i32 [ %2907, %2947 ], [ %2907, %2943 ], [ 0, %2952 ]
  %2956 = phi i1 [ true, %2947 ], [ false, %2943 ], [ true, %2952 ]
  %2957 = phi i64 [ %2941, %2947 ], [ %2928, %2943 ], [ %2953, %2952 ]
  %2958 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 4), !nosanitize !30
  %2959 = extractvalue { i64, i1 } %2958, 1, !nosanitize !30
  br i1 %2959, label %2960, label %2961, !prof !32, !nosanitize !30

2960:                                             ; preds = %3127, %2954
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2961:                                             ; preds = %2954
  %2962 = extractvalue { i64, i1 } %2958, 0, !nosanitize !30
  %2963 = icmp ule i64 %2962, %2957
  %2964 = icmp ne ptr %1, null
  %2965 = and i1 %2964, %2963
  %2966 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2967 = load i32, ptr %2966, align 4, !tbaa !26
  %2968 = icmp sgt i32 %2967, 13
  br i1 %2965, label %2969, label %3122

2969:                                             ; preds = %2961
  br i1 %2968, label %2971, label %3008

2970:                                             ; preds = %2993
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2971:                                             ; preds = %2969
  %2972 = and i32 %3, 65535
  %2973 = shl i32 %3, %2967
  %2974 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2975 = load i16, ptr %2974, align 8, !tbaa !25
  %2976 = trunc i32 %2973 to i16
  %2977 = or i16 %2975, %2976
  store i16 %2977, ptr %2974, align 8, !tbaa !25
  %2978 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2979 = load i64, ptr %2978, align 8, !tbaa !31
  %2980 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2979, i64 1), !nosanitize !30
  %2981 = extractvalue { i64, i1 } %2980, 1, !nosanitize !30
  br i1 %2981, label %2982, label %2983, !prof !32, !nosanitize !30

2982:                                             ; preds = %2971
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2983:                                             ; preds = %2971
  %2984 = extractvalue { i64, i1 } %2980, 0, !nosanitize !30
  %2985 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2986 = load ptr, ptr %2985, align 8, !tbaa !33
  %2987 = trunc i16 %2977 to i8
  store i64 %2984, ptr %2978, align 8, !tbaa !31
  %2988 = getelementptr inbounds nuw i8, ptr %2986, i64 %2979
  store i8 %2987, ptr %2988, align 1, !tbaa !28
  %2989 = load i64, ptr %2978, align 8, !tbaa !31
  %2990 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2989, i64 1), !nosanitize !30
  %2991 = extractvalue { i64, i1 } %2990, 1, !nosanitize !30
  br i1 %2991, label %2992, label %2993, !prof !32, !nosanitize !30

2992:                                             ; preds = %2983
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2993:                                             ; preds = %2983
  %2994 = extractvalue { i64, i1 } %2990, 0, !nosanitize !30
  %2995 = load ptr, ptr %2985, align 8, !tbaa !33
  %2996 = load i16, ptr %2974, align 8, !tbaa !25
  %2997 = lshr i16 %2996, 8
  %2998 = trunc nuw i16 %2997 to i8
  store i64 %2994, ptr %2978, align 8, !tbaa !31
  %2999 = getelementptr inbounds nuw i8, ptr %2995, i64 %2989
  store i8 %2998, ptr %2999, align 1, !tbaa !28
  %3000 = load i32, ptr %2966, align 4, !tbaa !26
  %3001 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3000), !nosanitize !30
  %3002 = extractvalue { i32, i1 } %3001, 1, !nosanitize !30
  br i1 %3002, label %2970, label %3003, !prof !32, !nosanitize !30

3003:                                             ; preds = %2993
  %3004 = extractvalue { i32, i1 } %3001, 0, !nosanitize !30
  %3005 = lshr i32 %2972, %3004
  %3006 = trunc nuw i32 %3005 to i16
  store i16 %3006, ptr %2974, align 8, !tbaa !25
  %3007 = add i32 %3000, -13
  br label %3015

3008:                                             ; preds = %2969
  %3009 = shl i32 %3, %2967
  %3010 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3011 = load i16, ptr %3010, align 8, !tbaa !25
  %3012 = trunc i32 %3009 to i16
  %3013 = or i16 %3011, %3012
  store i16 %3013, ptr %3010, align 8, !tbaa !25
  %3014 = add nsw i32 %2967, 3
  br label %3015

3015:                                             ; preds = %3003, %3008
  %3016 = phi i16 [ %3006, %3003 ], [ %3013, %3008 ]
  %3017 = phi i32 [ %3007, %3003 ], [ %3014, %3008 ]
  store i32 %3017, ptr %2966, align 4, !tbaa !26
  %3018 = icmp sgt i32 %3017, 8
  br i1 %3018, label %3019, label %3043

3019:                                             ; preds = %3015
  %3020 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3021 = load i64, ptr %3020, align 8, !tbaa !31
  %3022 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3021, i64 1), !nosanitize !30
  %3023 = extractvalue { i64, i1 } %3022, 1, !nosanitize !30
  br i1 %3023, label %3024, label %3025, !prof !32, !nosanitize !30

3024:                                             ; preds = %3019
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3025:                                             ; preds = %3019
  %3026 = extractvalue { i64, i1 } %3022, 0, !nosanitize !30
  %3027 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3028 = load ptr, ptr %3027, align 8, !tbaa !33
  %3029 = trunc i16 %3016 to i8
  store i64 %3026, ptr %3020, align 8, !tbaa !31
  %3030 = getelementptr inbounds nuw i8, ptr %3028, i64 %3021
  store i8 %3029, ptr %3030, align 1, !tbaa !28
  %3031 = load i64, ptr %3020, align 8, !tbaa !31
  %3032 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3031, i64 1), !nosanitize !30
  %3033 = extractvalue { i64, i1 } %3032, 1, !nosanitize !30
  br i1 %3033, label %3034, label %3035, !prof !32, !nosanitize !30

3034:                                             ; preds = %3025
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3035:                                             ; preds = %3025
  %3036 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3037 = extractvalue { i64, i1 } %3032, 0, !nosanitize !30
  %3038 = load ptr, ptr %3027, align 8, !tbaa !33
  %3039 = load i16, ptr %3036, align 8, !tbaa !25
  %3040 = lshr i16 %3039, 8
  %3041 = trunc nuw i16 %3040 to i8
  store i64 %3037, ptr %3020, align 8, !tbaa !31
  %3042 = getelementptr inbounds nuw i8, ptr %3038, i64 %3031
  store i8 %3041, ptr %3042, align 1, !tbaa !28
  br label %3057

3043:                                             ; preds = %3015
  %3044 = icmp sgt i32 %3017, 0
  br i1 %3044, label %3045, label %3057

3045:                                             ; preds = %3043
  %3046 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3047 = load i64, ptr %3046, align 8, !tbaa !31
  %3048 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3047, i64 1), !nosanitize !30
  %3049 = extractvalue { i64, i1 } %3048, 1, !nosanitize !30
  br i1 %3049, label %3050, label %3051, !prof !32, !nosanitize !30

3050:                                             ; preds = %3045
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3051:                                             ; preds = %3045
  %3052 = extractvalue { i64, i1 } %3048, 0, !nosanitize !30
  %3053 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3054 = load ptr, ptr %3053, align 8, !tbaa !33
  %3055 = trunc i16 %3016 to i8
  store i64 %3052, ptr %3046, align 8, !tbaa !31
  %3056 = getelementptr inbounds nuw i8, ptr %3054, i64 %3047
  store i8 %3055, ptr %3056, align 1, !tbaa !28
  br label %3057

3057:                                             ; preds = %3051, %3043, %3035
  %3058 = load i32, ptr %2966, align 4, !tbaa !26
  %3059 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3058, i32 -1)
  %3060 = extractvalue { i32, i1 } %3059, 1, !nosanitize !30
  br i1 %3060, label %3061, label %3062, !prof !32, !nosanitize !30

3061:                                             ; preds = %3057
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

3062:                                             ; preds = %3057
  %3063 = extractvalue { i32, i1 } %3059, 0, !nosanitize !30
  %3064 = and i32 %3063, 7
  %3065 = add nuw nsw i32 %3064, 1
  %3066 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %3065, ptr %3066, align 8, !tbaa !27
  %3067 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %3067, align 8, !tbaa !25
  store i32 0, ptr %2966, align 4, !tbaa !26
  %3068 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3069 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3070 = load i64, ptr %3069, align 8, !tbaa !31
  %3071 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3070, i64 1), !nosanitize !30
  %3072 = extractvalue { i64, i1 } %3071, 1, !nosanitize !30
  br i1 %3072, label %3073, label %3074, !prof !32, !nosanitize !30

3073:                                             ; preds = %3062
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3074:                                             ; preds = %3062
  %3075 = extractvalue { i64, i1 } %3071, 0, !nosanitize !30
  %3076 = load ptr, ptr %3068, align 8, !tbaa !33
  %3077 = trunc i64 %2 to i8
  store i64 %3075, ptr %3069, align 8, !tbaa !31
  %3078 = getelementptr inbounds nuw i8, ptr %3076, i64 %3070
  store i8 %3077, ptr %3078, align 1, !tbaa !28
  %3079 = load i64, ptr %3069, align 8, !tbaa !31
  %3080 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3079, i64 1), !nosanitize !30
  %3081 = extractvalue { i64, i1 } %3080, 1, !nosanitize !30
  br i1 %3081, label %3082, label %3083, !prof !32, !nosanitize !30

3082:                                             ; preds = %3074
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3083:                                             ; preds = %3074
  %3084 = extractvalue { i64, i1 } %3080, 0, !nosanitize !30
  %3085 = load ptr, ptr %3068, align 8, !tbaa !33
  %3086 = lshr i64 %2, 8
  %3087 = trunc i64 %3086 to i8
  store i64 %3084, ptr %3069, align 8, !tbaa !31
  %3088 = getelementptr inbounds nuw i8, ptr %3085, i64 %3079
  store i8 %3087, ptr %3088, align 1, !tbaa !28
  %3089 = load i64, ptr %3069, align 8, !tbaa !31
  %3090 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3089, i64 1), !nosanitize !30
  %3091 = extractvalue { i64, i1 } %3090, 1, !nosanitize !30
  br i1 %3091, label %3092, label %3093, !prof !32, !nosanitize !30

3092:                                             ; preds = %3083
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3093:                                             ; preds = %3083
  %3094 = extractvalue { i64, i1 } %3090, 0, !nosanitize !30
  %3095 = load ptr, ptr %3068, align 8, !tbaa !33
  %3096 = trunc i64 %2 to i32
  %3097 = xor i32 %3096, 65535
  %3098 = trunc i32 %3097 to i8
  store i64 %3094, ptr %3069, align 8, !tbaa !31
  %3099 = getelementptr inbounds nuw i8, ptr %3095, i64 %3089
  store i8 %3098, ptr %3099, align 1, !tbaa !28
  %3100 = load i64, ptr %3069, align 8, !tbaa !31
  %3101 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3100, i64 1), !nosanitize !30
  %3102 = extractvalue { i64, i1 } %3101, 1, !nosanitize !30
  br i1 %3102, label %3103, label %3104, !prof !32, !nosanitize !30

3103:                                             ; preds = %3093
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3104:                                             ; preds = %3093
  %3105 = extractvalue { i64, i1 } %3101, 0, !nosanitize !30
  %3106 = load ptr, ptr %3068, align 8, !tbaa !33
  %3107 = lshr i32 %3097, 8
  %3108 = trunc i32 %3107 to i8
  store i64 %3105, ptr %3069, align 8, !tbaa !31
  %3109 = getelementptr inbounds nuw i8, ptr %3106, i64 %3100
  store i8 %3108, ptr %3109, align 1, !tbaa !28
  %3110 = icmp eq i64 %2, 0
  br i1 %3110, label %3115, label %3111

3111:                                             ; preds = %3104
  %3112 = load ptr, ptr %3068, align 8, !tbaa !33
  %3113 = load i64, ptr %3069, align 8, !tbaa !31
  %3114 = getelementptr inbounds nuw i8, ptr %3112, i64 %3113
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3114, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %3115

3115:                                             ; preds = %3111, %3104
  %3116 = load i64, ptr %3069, align 8, !tbaa !31
  %3117 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3116, i64 %2), !nosanitize !30
  %3118 = extractvalue { i64, i1 } %3117, 1, !nosanitize !30
  br i1 %3118, label %3119, label %3120, !prof !32, !nosanitize !30

3119:                                             ; preds = %3115
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3120:                                             ; preds = %3115
  %3121 = extractvalue { i64, i1 } %3117, 0, !nosanitize !30
  store i64 %3121, ptr %3069, align 8, !tbaa !31
  br label %5105

3122:                                             ; preds = %2961
  br i1 %2956, label %3123, label %3544

3123:                                             ; preds = %3122
  %3124 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2), !nosanitize !30
  %3125 = extractvalue { i32, i1 } %3124, 1, !nosanitize !30
  br i1 %2968, label %3127, label %3166

3126:                                             ; preds = %3571, %3151
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

3127:                                             ; preds = %3123
  br i1 %3125, label %2960, label %3128, !prof !32, !nosanitize !30

3128:                                             ; preds = %3127
  %3129 = extractvalue { i32, i1 } %3124, 0, !nosanitize !30
  %3130 = and i32 %3129, 65535
  %3131 = shl i32 %3129, %2967
  %3132 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3133 = load i16, ptr %3132, align 8, !tbaa !25
  %3134 = trunc i32 %3131 to i16
  %3135 = or i16 %3133, %3134
  store i16 %3135, ptr %3132, align 8, !tbaa !25
  %3136 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3137 = load i64, ptr %3136, align 8, !tbaa !31
  %3138 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3137, i64 1), !nosanitize !30
  %3139 = extractvalue { i64, i1 } %3138, 1, !nosanitize !30
  br i1 %3139, label %3140, label %3141, !prof !32, !nosanitize !30

3140:                                             ; preds = %3128
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3141:                                             ; preds = %3128
  %3142 = extractvalue { i64, i1 } %3138, 0, !nosanitize !30
  %3143 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3144 = load ptr, ptr %3143, align 8, !tbaa !33
  %3145 = trunc i16 %3135 to i8
  store i64 %3142, ptr %3136, align 8, !tbaa !31
  %3146 = getelementptr inbounds nuw i8, ptr %3144, i64 %3137
  store i8 %3145, ptr %3146, align 1, !tbaa !28
  %3147 = load i64, ptr %3136, align 8, !tbaa !31
  %3148 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3147, i64 1), !nosanitize !30
  %3149 = extractvalue { i64, i1 } %3148, 1, !nosanitize !30
  br i1 %3149, label %3150, label %3151, !prof !32, !nosanitize !30

3150:                                             ; preds = %3547, %3166, %3141
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3151:                                             ; preds = %3141
  %3152 = extractvalue { i64, i1 } %3148, 0, !nosanitize !30
  %3153 = load ptr, ptr %3143, align 8, !tbaa !33
  %3154 = load i16, ptr %3132, align 8, !tbaa !25
  %3155 = lshr i16 %3154, 8
  %3156 = trunc nuw i16 %3155 to i8
  store i64 %3152, ptr %3136, align 8, !tbaa !31
  %3157 = getelementptr inbounds nuw i8, ptr %3153, i64 %3147
  store i8 %3156, ptr %3157, align 1, !tbaa !28
  %3158 = load i32, ptr %2966, align 4, !tbaa !26
  %3159 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3158), !nosanitize !30
  %3160 = extractvalue { i32, i1 } %3159, 1, !nosanitize !30
  br i1 %3160, label %3126, label %3161, !prof !32, !nosanitize !30

3161:                                             ; preds = %3151
  %3162 = extractvalue { i32, i1 } %3159, 0, !nosanitize !30
  %3163 = lshr i32 %3130, %3162
  %3164 = trunc nuw i32 %3163 to i16
  store i16 %3164, ptr %3132, align 8, !tbaa !25
  %3165 = add i32 %3158, -13
  br label %3175

3166:                                             ; preds = %3123
  br i1 %3125, label %3150, label %3167, !prof !32, !nosanitize !30

3167:                                             ; preds = %3166
  %3168 = extractvalue { i32, i1 } %3124, 0, !nosanitize !30
  %3169 = shl i32 %3168, %2967
  %3170 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3171 = load i16, ptr %3170, align 8, !tbaa !25
  %3172 = trunc i32 %3169 to i16
  %3173 = or i16 %3171, %3172
  store i16 %3173, ptr %3170, align 8, !tbaa !25
  %3174 = add nsw i32 %2967, 3
  br label %3175

3175:                                             ; preds = %3161, %3167
  %3176 = phi i16 [ %3164, %3161 ], [ %3173, %3167 ]
  %3177 = phi i32 [ %3165, %3161 ], [ %3174, %3167 ]
  store i32 %3177, ptr %2966, align 4, !tbaa !26
  %3178 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %3179 = load i32, ptr %3178, align 4, !tbaa !29
  %3180 = icmp eq i32 %3179, 0
  br i1 %3180, label %.loopexit330, label %3181

3181:                                             ; preds = %3175
  %3182 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %3183 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3184 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3185 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %3186

3186:                                             ; preds = %3503, %3181
  %3187 = phi i16 [ %3504, %3503 ], [ %3176, %3181 ]
  %3188 = phi i32 [ %3505, %3503 ], [ %3177, %3181 ]
  %3189 = phi i32 [ %3208, %3503 ], [ 0, %3181 ]
  %3190 = load ptr, ptr %3182, align 8, !tbaa !79
  %3191 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3189, i32 2)
  %3192 = extractvalue { i32, i1 } %3191, 0, !nosanitize !30
  %3193 = extractvalue { i32, i1 } %3191, 1, !nosanitize !30
  br i1 %3193, label %3194, label %3195, !prof !32, !nosanitize !30

3194:                                             ; preds = %3186
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3195:                                             ; preds = %3186
  %3196 = add nuw i32 %3189, 1
  %3197 = zext i32 %3189 to i64
  %3198 = getelementptr inbounds nuw i8, ptr %3190, i64 %3197
  %3199 = load i8, ptr %3198, align 1, !tbaa !28
  %3200 = zext i8 %3199 to i32
  %3201 = zext i32 %3196 to i64
  %3202 = getelementptr inbounds nuw i8, ptr %3190, i64 %3201
  %3203 = load i8, ptr %3202, align 1, !tbaa !28
  %3204 = zext i8 %3203 to i32
  %3205 = shl nuw nsw i32 %3204, 8
  %3206 = or disjoint i32 %3205, %3200
  %3207 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3192, i32 1), !nosanitize !30
  %3208 = extractvalue { i32, i1 } %3207, 0, !nosanitize !30
  %3209 = extractvalue { i32, i1 } %3207, 1, !nosanitize !30
  br i1 %3209, label %3210, label %3211, !prof !32, !nosanitize !30

3210:                                             ; preds = %3195
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3211:                                             ; preds = %3195
  %3212 = zext i32 %3192 to i64
  %3213 = getelementptr inbounds nuw i8, ptr %3190, i64 %3212
  %3214 = load i8, ptr %3213, align 1, !tbaa !28
  %3215 = zext i8 %3214 to i32
  %3216 = icmp eq i32 %3206, 0
  %3217 = zext i8 %3214 to i64
  br i1 %3216, label %3218, label %3265

3218:                                             ; preds = %3211
  %3219 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %3217
  %3220 = getelementptr inbounds nuw i8, ptr %3219, i64 2
  %3221 = load i16, ptr %3220, align 2, !tbaa !28
  %3222 = zext i16 %3221 to i32
  %3223 = sub nsw i32 16, %3222
  %3224 = icmp sgt i32 %3188, %3223
  %3225 = load i16, ptr %3219, align 4, !tbaa !28
  %3226 = zext i16 %3225 to i32
  %3227 = shl i32 %3226, %3188
  %3228 = trunc i32 %3227 to i16
  %3229 = or i16 %3187, %3228
  store i16 %3229, ptr %3183, align 8, !tbaa !25
  br i1 %3224, label %3231, label %3262

3230:                                             ; preds = %3363, %3353, %3329, %3323, %3295, %3245
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

3231:                                             ; preds = %3218
  %3232 = load i64, ptr %3184, align 8, !tbaa !31
  %3233 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3232, i64 1), !nosanitize !30
  %3234 = extractvalue { i64, i1 } %3233, 1, !nosanitize !30
  br i1 %3234, label %3235, label %3236, !prof !32, !nosanitize !30

3235:                                             ; preds = %3231
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3236:                                             ; preds = %3231
  %3237 = extractvalue { i64, i1 } %3233, 0, !nosanitize !30
  %3238 = load ptr, ptr %3185, align 8, !tbaa !33
  %3239 = trunc i16 %3229 to i8
  store i64 %3237, ptr %3184, align 8, !tbaa !31
  %3240 = getelementptr inbounds nuw i8, ptr %3238, i64 %3232
  store i8 %3239, ptr %3240, align 1, !tbaa !28
  %3241 = load i64, ptr %3184, align 8, !tbaa !31
  %3242 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3241, i64 1), !nosanitize !30
  %3243 = extractvalue { i64, i1 } %3242, 1, !nosanitize !30
  br i1 %3243, label %3244, label %3245, !prof !32, !nosanitize !30

3244:                                             ; preds = %3255, %3236
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3245:                                             ; preds = %3236
  %3246 = extractvalue { i64, i1 } %3242, 0, !nosanitize !30
  %3247 = load ptr, ptr %3185, align 8, !tbaa !33
  %3248 = load i16, ptr %3183, align 8, !tbaa !25
  %3249 = lshr i16 %3248, 8
  %3250 = trunc nuw i16 %3249 to i8
  store i64 %3246, ptr %3184, align 8, !tbaa !31
  %3251 = getelementptr inbounds nuw i8, ptr %3247, i64 %3241
  store i8 %3250, ptr %3251, align 1, !tbaa !28
  %3252 = load i32, ptr %2966, align 4, !tbaa !26
  %3253 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3252), !nosanitize !30
  %3254 = extractvalue { i32, i1 } %3253, 1, !nosanitize !30
  br i1 %3254, label %3230, label %3255, !prof !32, !nosanitize !30

3255:                                             ; preds = %3245
  %3256 = extractvalue { i32, i1 } %3253, 0, !nosanitize !30
  %3257 = lshr i32 %3226, %3256
  %3258 = trunc nuw i32 %3257 to i16
  store i16 %3258, ptr %3183, align 8, !tbaa !25
  %3259 = add nsw i32 %3222, -16
  %3260 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3252, i32 %3259), !nosanitize !30
  %3261 = extractvalue { i32, i1 } %3260, 1, !nosanitize !30
  br i1 %3261, label %3244, label %3499, !prof !32, !nosanitize !30

3262:                                             ; preds = %3218
  %3263 = add nsw i32 %3188, %3222
  %3264 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3263, 0
  br label %3499

3265:                                             ; preds = %3211
  %3266 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %3217
  %3267 = load i8, ptr %3266, align 1, !tbaa !28
  %3268 = zext i8 %3267 to i64
  %3269 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %3268
  %3270 = getelementptr inbounds nuw i8, ptr %3269, i64 1028
  %3271 = getelementptr inbounds nuw i8, ptr %3269, i64 1030
  %3272 = load i16, ptr %3271, align 2, !tbaa !28
  %3273 = zext i16 %3272 to i32
  %3274 = sub nsw i32 16, %3273
  %3275 = icmp sgt i32 %3188, %3274
  %3276 = load i16, ptr %3270, align 4, !tbaa !28
  %3277 = zext i16 %3276 to i32
  %3278 = shl i32 %3277, %3188
  %3279 = trunc i32 %3278 to i16
  %3280 = or i16 %3187, %3279
  store i16 %3280, ptr %3183, align 8, !tbaa !25
  br i1 %3275, label %3281, label %3312

3281:                                             ; preds = %3265
  %3282 = load i64, ptr %3184, align 8, !tbaa !31
  %3283 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3282, i64 1), !nosanitize !30
  %3284 = extractvalue { i64, i1 } %3283, 1, !nosanitize !30
  br i1 %3284, label %3285, label %3286, !prof !32, !nosanitize !30

3285:                                             ; preds = %3281
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3286:                                             ; preds = %3281
  %3287 = extractvalue { i64, i1 } %3283, 0, !nosanitize !30
  %3288 = load ptr, ptr %3185, align 8, !tbaa !33
  %3289 = trunc i16 %3280 to i8
  store i64 %3287, ptr %3184, align 8, !tbaa !31
  %3290 = getelementptr inbounds nuw i8, ptr %3288, i64 %3282
  store i8 %3289, ptr %3290, align 1, !tbaa !28
  %3291 = load i64, ptr %3184, align 8, !tbaa !31
  %3292 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3291, i64 1), !nosanitize !30
  %3293 = extractvalue { i64, i1 } %3292, 1, !nosanitize !30
  br i1 %3293, label %3294, label %3295, !prof !32, !nosanitize !30

3294:                                             ; preds = %3305, %3286
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3295:                                             ; preds = %3286
  %3296 = extractvalue { i64, i1 } %3292, 0, !nosanitize !30
  %3297 = load ptr, ptr %3185, align 8, !tbaa !33
  %3298 = load i16, ptr %3183, align 8, !tbaa !25
  %3299 = lshr i16 %3298, 8
  %3300 = trunc nuw i16 %3299 to i8
  store i64 %3296, ptr %3184, align 8, !tbaa !31
  %3301 = getelementptr inbounds nuw i8, ptr %3297, i64 %3291
  store i8 %3300, ptr %3301, align 1, !tbaa !28
  %3302 = load i32, ptr %2966, align 4, !tbaa !26
  %3303 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3302), !nosanitize !30
  %3304 = extractvalue { i32, i1 } %3303, 1, !nosanitize !30
  br i1 %3304, label %3230, label %3305, !prof !32, !nosanitize !30

3305:                                             ; preds = %3295
  %3306 = extractvalue { i32, i1 } %3303, 0, !nosanitize !30
  %3307 = lshr i32 %3277, %3306
  %3308 = trunc nuw i32 %3307 to i16
  store i16 %3308, ptr %3183, align 8, !tbaa !25
  %3309 = add nsw i32 %3273, -16
  %3310 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3302, i32 %3309), !nosanitize !30
  %3311 = extractvalue { i32, i1 } %3310, 1, !nosanitize !30
  br i1 %3311, label %3294, label %3315, !prof !32, !nosanitize !30

3312:                                             ; preds = %3265
  %3313 = add nsw i32 %3188, %3273
  %3314 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3313, 0
  br label %3315

3315:                                             ; preds = %3312, %3305
  %3316 = phi i16 [ %3308, %3305 ], [ %3280, %3312 ]
  %3317 = phi { i32, i1 } [ %3310, %3305 ], [ %3314, %3312 ]
  %3318 = extractvalue { i32, i1 } %3317, 0
  store i32 %3318, ptr %2966, align 4, !tbaa !26
  %3319 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %3268
  %3320 = load i32, ptr %3319, align 4, !tbaa !49
  %3321 = add i8 %3267, -28
  %3322 = icmp ult i8 %3321, -20
  br i1 %3322, label %3383, label %3323

3323:                                             ; preds = %3315
  %3324 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %3268
  %3325 = load i32, ptr %3324, align 4, !tbaa !49
  %3326 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3215, i32 %3325), !nosanitize !30
  %3327 = extractvalue { i32, i1 } %3326, 0, !nosanitize !30
  %3328 = extractvalue { i32, i1 } %3326, 1, !nosanitize !30
  br i1 %3328, label %3230, label %3329, !prof !32, !nosanitize !30

3329:                                             ; preds = %3323
  %3330 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3320), !nosanitize !30
  %3331 = extractvalue { i32, i1 } %3330, 1, !nosanitize !30
  br i1 %3331, label %3230, label %3332, !prof !32, !nosanitize !30

3332:                                             ; preds = %3329
  %3333 = extractvalue { i32, i1 } %3330, 0, !nosanitize !30
  %3334 = icmp sgt i32 %3318, %3333
  br i1 %3334, label %3335, label %3373

3335:                                             ; preds = %3332
  %3336 = and i32 %3327, 65535
  %3337 = shl i32 %3327, %3318
  %3338 = trunc i32 %3337 to i16
  %3339 = or i16 %3316, %3338
  store i16 %3339, ptr %3183, align 8, !tbaa !25
  %3340 = load i64, ptr %3184, align 8, !tbaa !31
  %3341 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3340, i64 1), !nosanitize !30
  %3342 = extractvalue { i64, i1 } %3341, 1, !nosanitize !30
  br i1 %3342, label %3343, label %3344, !prof !32, !nosanitize !30

3343:                                             ; preds = %3335
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3344:                                             ; preds = %3335
  %3345 = extractvalue { i64, i1 } %3341, 0, !nosanitize !30
  %3346 = load ptr, ptr %3185, align 8, !tbaa !33
  %3347 = trunc i16 %3339 to i8
  store i64 %3345, ptr %3184, align 8, !tbaa !31
  %3348 = getelementptr inbounds nuw i8, ptr %3346, i64 %3340
  store i8 %3347, ptr %3348, align 1, !tbaa !28
  %3349 = load i64, ptr %3184, align 8, !tbaa !31
  %3350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3349, i64 1), !nosanitize !30
  %3351 = extractvalue { i64, i1 } %3350, 1, !nosanitize !30
  br i1 %3351, label %3352, label %3353, !prof !32, !nosanitize !30

3352:                                             ; preds = %3373, %3369, %3344
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3353:                                             ; preds = %3344
  %3354 = extractvalue { i64, i1 } %3350, 0, !nosanitize !30
  %3355 = load ptr, ptr %3185, align 8, !tbaa !33
  %3356 = load i16, ptr %3183, align 8, !tbaa !25
  %3357 = lshr i16 %3356, 8
  %3358 = trunc nuw i16 %3357 to i8
  store i64 %3354, ptr %3184, align 8, !tbaa !31
  %3359 = getelementptr inbounds nuw i8, ptr %3355, i64 %3349
  store i8 %3358, ptr %3359, align 1, !tbaa !28
  %3360 = load i32, ptr %2966, align 4, !tbaa !26
  %3361 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3360), !nosanitize !30
  %3362 = extractvalue { i32, i1 } %3361, 1, !nosanitize !30
  br i1 %3362, label %3230, label %3363, !prof !32, !nosanitize !30

3363:                                             ; preds = %3353
  %3364 = extractvalue { i32, i1 } %3361, 0, !nosanitize !30
  %3365 = lshr i32 %3336, %3364
  %3366 = trunc nuw i32 %3365 to i16
  store i16 %3366, ptr %3183, align 8, !tbaa !25
  %3367 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3320, i32 -16)
  %3368 = extractvalue { i32, i1 } %3367, 1, !nosanitize !30
  br i1 %3368, label %3230, label %3369, !prof !32, !nosanitize !30

3369:                                             ; preds = %3363
  %3370 = extractvalue { i32, i1 } %3367, 0, !nosanitize !30
  %3371 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3360, i32 %3370), !nosanitize !30
  %3372 = extractvalue { i32, i1 } %3371, 1, !nosanitize !30
  br i1 %3372, label %3352, label %3379, !prof !32, !nosanitize !30

3373:                                             ; preds = %3332
  %3374 = shl i32 %3327, %3318
  %3375 = trunc i32 %3374 to i16
  %3376 = or i16 %3316, %3375
  store i16 %3376, ptr %3183, align 8, !tbaa !25
  %3377 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3318, i32 %3320), !nosanitize !30
  %3378 = extractvalue { i32, i1 } %3377, 1, !nosanitize !30
  br i1 %3378, label %3352, label %3379, !prof !32, !nosanitize !30

3379:                                             ; preds = %3373, %3369
  %3380 = phi i16 [ %3366, %3369 ], [ %3376, %3373 ]
  %3381 = phi { i32, i1 } [ %3371, %3369 ], [ %3377, %3373 ]
  %3382 = extractvalue { i32, i1 } %3381, 0
  store i32 %3382, ptr %2966, align 4, !tbaa !26
  br label %3383

3383:                                             ; preds = %3379, %3315
  %3384 = phi i16 [ %3380, %3379 ], [ %3316, %3315 ]
  %3385 = phi i32 [ %3382, %3379 ], [ %3318, %3315 ]
  %3386 = add nsw i32 %3206, -1
  %3387 = icmp samesign ult i32 %3206, 257
  %3388 = lshr i32 %3386, 7
  %3389 = add nuw nsw i32 %3388, 256
  %3390 = select i1 %3387, i32 %3386, i32 %3389
  %3391 = zext nneg i32 %3390 to i64
  %3392 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %3391
  %3393 = load i8, ptr %3392, align 1, !tbaa !28
  %3394 = zext i8 %3393 to i64
  %3395 = getelementptr inbounds nuw [4 x i8], ptr @static_dtree, i64 %3394
  %3396 = icmp sgt i32 %3385, 11
  %3397 = load i16, ptr %3395, align 4, !tbaa !28
  %3398 = zext i16 %3397 to i32
  %3399 = shl i32 %3398, %3385
  %3400 = trunc i32 %3399 to i16
  %3401 = or i16 %3384, %3400
  store i16 %3401, ptr %3183, align 8, !tbaa !25
  br i1 %3396, label %3403, label %3433

3402:                                             ; preds = %3417
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

3403:                                             ; preds = %3383
  %3404 = load i64, ptr %3184, align 8, !tbaa !31
  %3405 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3404, i64 1), !nosanitize !30
  %3406 = extractvalue { i64, i1 } %3405, 1, !nosanitize !30
  br i1 %3406, label %3407, label %3408, !prof !32, !nosanitize !30

3407:                                             ; preds = %3403
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3408:                                             ; preds = %3403
  %3409 = extractvalue { i64, i1 } %3405, 0, !nosanitize !30
  %3410 = load ptr, ptr %3185, align 8, !tbaa !33
  %3411 = trunc i16 %3401 to i8
  store i64 %3409, ptr %3184, align 8, !tbaa !31
  %3412 = getelementptr inbounds nuw i8, ptr %3410, i64 %3404
  store i8 %3411, ptr %3412, align 1, !tbaa !28
  %3413 = load i64, ptr %3184, align 8, !tbaa !31
  %3414 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3413, i64 1), !nosanitize !30
  %3415 = extractvalue { i64, i1 } %3414, 1, !nosanitize !30
  br i1 %3415, label %3416, label %3417, !prof !32, !nosanitize !30

3416:                                             ; preds = %3427, %3408
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3417:                                             ; preds = %3408
  %3418 = extractvalue { i64, i1 } %3414, 0, !nosanitize !30
  %3419 = load ptr, ptr %3185, align 8, !tbaa !33
  %3420 = load i16, ptr %3183, align 8, !tbaa !25
  %3421 = lshr i16 %3420, 8
  %3422 = trunc nuw i16 %3421 to i8
  store i64 %3418, ptr %3184, align 8, !tbaa !31
  %3423 = getelementptr inbounds nuw i8, ptr %3419, i64 %3413
  store i8 %3422, ptr %3423, align 1, !tbaa !28
  %3424 = load i32, ptr %2966, align 4, !tbaa !26
  %3425 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3424), !nosanitize !30
  %3426 = extractvalue { i32, i1 } %3425, 1, !nosanitize !30
  br i1 %3426, label %3402, label %3427, !prof !32, !nosanitize !30

3427:                                             ; preds = %3417
  %3428 = extractvalue { i32, i1 } %3425, 0, !nosanitize !30
  %3429 = lshr i32 %3398, %3428
  %3430 = trunc nuw i32 %3429 to i16
  store i16 %3430, ptr %3183, align 8, !tbaa !25
  %3431 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3424, i32 -11), !nosanitize !30
  %3432 = extractvalue { i32, i1 } %3431, 1, !nosanitize !30
  br i1 %3432, label %3416, label %3436, !prof !32, !nosanitize !30

3433:                                             ; preds = %3383
  %3434 = add nsw i32 %3385, 5
  %3435 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3434, 0
  br label %3436

3436:                                             ; preds = %3433, %3427
  %3437 = phi i16 [ %3430, %3427 ], [ %3401, %3433 ]
  %3438 = phi { i32, i1 } [ %3431, %3427 ], [ %3435, %3433 ]
  %3439 = extractvalue { i32, i1 } %3438, 0
  store i32 %3439, ptr %2966, align 4, !tbaa !26
  %3440 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %3394
  %3441 = load i32, ptr %3440, align 4, !tbaa !49
  %3442 = icmp ult i8 %3393, 4
  br i1 %3442, label %3503, label %3443

3443:                                             ; preds = %3436
  %3444 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %3394
  %3445 = load i32, ptr %3444, align 4, !tbaa !49
  %3446 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %3386, i32 %3445), !nosanitize !30
  %3447 = extractvalue { i32, i1 } %3446, 0, !nosanitize !30
  %3448 = extractvalue { i32, i1 } %3446, 1, !nosanitize !30
  br i1 %3448, label %.loopexit329, label %3449, !prof !32, !nosanitize !30

.loopexit329:                                     ; preds = %3483, %3473, %3449, %3443, %3528
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

3449:                                             ; preds = %3443
  %3450 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3441), !nosanitize !30
  %3451 = extractvalue { i32, i1 } %3450, 1, !nosanitize !30
  br i1 %3451, label %.loopexit329, label %3452, !prof !32, !nosanitize !30

3452:                                             ; preds = %3449
  %3453 = extractvalue { i32, i1 } %3450, 0, !nosanitize !30
  %3454 = icmp sgt i32 %3439, %3453
  br i1 %3454, label %3455, label %3493

3455:                                             ; preds = %3452
  %3456 = and i32 %3447, 65535
  %3457 = shl i32 %3447, %3439
  %3458 = trunc i32 %3457 to i16
  %3459 = or i16 %3437, %3458
  store i16 %3459, ptr %3183, align 8, !tbaa !25
  %3460 = load i64, ptr %3184, align 8, !tbaa !31
  %3461 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3460, i64 1), !nosanitize !30
  %3462 = extractvalue { i64, i1 } %3461, 1, !nosanitize !30
  br i1 %3462, label %3463, label %3464, !prof !32, !nosanitize !30

3463:                                             ; preds = %3455
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3464:                                             ; preds = %3455
  %3465 = extractvalue { i64, i1 } %3461, 0, !nosanitize !30
  %3466 = load ptr, ptr %3185, align 8, !tbaa !33
  %3467 = trunc i16 %3459 to i8
  store i64 %3465, ptr %3184, align 8, !tbaa !31
  %3468 = getelementptr inbounds nuw i8, ptr %3466, i64 %3460
  store i8 %3467, ptr %3468, align 1, !tbaa !28
  %3469 = load i64, ptr %3184, align 8, !tbaa !31
  %3470 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3469, i64 1), !nosanitize !30
  %3471 = extractvalue { i64, i1 } %3470, 1, !nosanitize !30
  br i1 %3471, label %3472, label %3473, !prof !32, !nosanitize !30

3472:                                             ; preds = %3493, %3489, %3464
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3473:                                             ; preds = %3464
  %3474 = extractvalue { i64, i1 } %3470, 0, !nosanitize !30
  %3475 = load ptr, ptr %3185, align 8, !tbaa !33
  %3476 = load i16, ptr %3183, align 8, !tbaa !25
  %3477 = lshr i16 %3476, 8
  %3478 = trunc nuw i16 %3477 to i8
  store i64 %3474, ptr %3184, align 8, !tbaa !31
  %3479 = getelementptr inbounds nuw i8, ptr %3475, i64 %3469
  store i8 %3478, ptr %3479, align 1, !tbaa !28
  %3480 = load i32, ptr %2966, align 4, !tbaa !26
  %3481 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3480), !nosanitize !30
  %3482 = extractvalue { i32, i1 } %3481, 1, !nosanitize !30
  br i1 %3482, label %.loopexit329, label %3483, !prof !32, !nosanitize !30

3483:                                             ; preds = %3473
  %3484 = extractvalue { i32, i1 } %3481, 0, !nosanitize !30
  %3485 = lshr i32 %3456, %3484
  %3486 = trunc nuw i32 %3485 to i16
  store i16 %3486, ptr %3183, align 8, !tbaa !25
  %3487 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3441, i32 -16)
  %3488 = extractvalue { i32, i1 } %3487, 1, !nosanitize !30
  br i1 %3488, label %.loopexit329, label %3489, !prof !32, !nosanitize !30

3489:                                             ; preds = %3483
  %3490 = extractvalue { i32, i1 } %3487, 0, !nosanitize !30
  %3491 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3480, i32 %3490), !nosanitize !30
  %3492 = extractvalue { i32, i1 } %3491, 1, !nosanitize !30
  br i1 %3492, label %3472, label %3499, !prof !32, !nosanitize !30

3493:                                             ; preds = %3452
  %3494 = shl i32 %3447, %3439
  %3495 = trunc i32 %3494 to i16
  %3496 = or i16 %3437, %3495
  store i16 %3496, ptr %3183, align 8, !tbaa !25
  %3497 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3439, i32 %3441), !nosanitize !30
  %3498 = extractvalue { i32, i1 } %3497, 1, !nosanitize !30
  br i1 %3498, label %3472, label %3499, !prof !32, !nosanitize !30

3499:                                             ; preds = %3493, %3489, %3262, %3255
  %3500 = phi i16 [ %3258, %3255 ], [ %3229, %3262 ], [ %3486, %3489 ], [ %3496, %3493 ]
  %3501 = phi { i32, i1 } [ %3260, %3255 ], [ %3264, %3262 ], [ %3491, %3489 ], [ %3497, %3493 ]
  %3502 = extractvalue { i32, i1 } %3501, 0
  store i32 %3502, ptr %2966, align 4, !tbaa !26
  br label %3503

3503:                                             ; preds = %3499, %3436
  %3504 = phi i16 [ %3437, %3436 ], [ %3500, %3499 ]
  %3505 = phi i32 [ %3439, %3436 ], [ %3502, %3499 ]
  %3506 = load i32, ptr %3178, align 4, !tbaa !29
  %3507 = icmp ult i32 %3208, %3506
  br i1 %3507, label %3186, label %.loopexit330, !llvm.loop !80

.loopexit330:                                     ; preds = %3503, %3175
  %3508 = phi i16 [ %3176, %3175 ], [ %3504, %3503 ]
  %3509 = phi i32 [ %3177, %3175 ], [ %3505, %3503 ]
  %3510 = icmp sgt i32 %3509, 9
  %3511 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %3510, label %3512, label %3540

3512:                                             ; preds = %.loopexit330
  %3513 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3514 = load i64, ptr %3513, align 8, !tbaa !31
  %3515 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3514, i64 1), !nosanitize !30
  %3516 = extractvalue { i64, i1 } %3515, 1, !nosanitize !30
  br i1 %3516, label %3517, label %3518, !prof !32, !nosanitize !30

3517:                                             ; preds = %3512
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3518:                                             ; preds = %3512
  %3519 = extractvalue { i64, i1 } %3515, 0, !nosanitize !30
  %3520 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3521 = load ptr, ptr %3520, align 8, !tbaa !33
  %3522 = trunc i16 %3508 to i8
  store i64 %3519, ptr %3513, align 8, !tbaa !31
  %3523 = getelementptr inbounds nuw i8, ptr %3521, i64 %3514
  store i8 %3522, ptr %3523, align 1, !tbaa !28
  %3524 = load i64, ptr %3513, align 8, !tbaa !31
  %3525 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3524, i64 1), !nosanitize !30
  %3526 = extractvalue { i64, i1 } %3525, 1, !nosanitize !30
  br i1 %3526, label %3527, label %3528, !prof !32, !nosanitize !30

3527:                                             ; preds = %3518
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3528:                                             ; preds = %3518
  %3529 = extractvalue { i64, i1 } %3525, 0, !nosanitize !30
  %3530 = load ptr, ptr %3520, align 8, !tbaa !33
  %3531 = load i16, ptr %3511, align 8, !tbaa !25
  %3532 = lshr i16 %3531, 8
  %3533 = trunc nuw i16 %3532 to i8
  store i64 %3529, ptr %3513, align 8, !tbaa !31
  %3534 = getelementptr inbounds nuw i8, ptr %3530, i64 %3524
  store i8 %3533, ptr %3534, align 1, !tbaa !28
  %3535 = load i32, ptr %2966, align 4, !tbaa !26
  %3536 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3535), !nosanitize !30
  %3537 = extractvalue { i32, i1 } %3536, 1, !nosanitize !30
  br i1 %3537, label %.loopexit329, label %3538, !prof !32, !nosanitize !30

3538:                                             ; preds = %3528
  store i16 0, ptr %3511, align 8, !tbaa !25
  %3539 = add i32 %3535, -9
  br label %3542

3540:                                             ; preds = %.loopexit330
  %3541 = add nsw i32 %3509, 7
  br label %3542

3542:                                             ; preds = %3538, %3540
  %3543 = phi i32 [ %3539, %3538 ], [ %3541, %3540 ]
  store i32 %3543, ptr %2966, align 4, !tbaa !26
  br label %5105

3544:                                             ; preds = %3122
  %3545 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 4), !nosanitize !30
  %3546 = extractvalue { i32, i1 } %3545, 1, !nosanitize !30
  br i1 %2968, label %3547, label %3586

3547:                                             ; preds = %3544
  br i1 %3546, label %3150, label %3548, !prof !32, !nosanitize !30

3548:                                             ; preds = %3547
  %3549 = extractvalue { i32, i1 } %3545, 0, !nosanitize !30
  %3550 = and i32 %3549, 65535
  %3551 = shl i32 %3549, %2967
  %3552 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3553 = load i16, ptr %3552, align 8, !tbaa !25
  %3554 = trunc i32 %3551 to i16
  %3555 = or i16 %3553, %3554
  store i16 %3555, ptr %3552, align 8, !tbaa !25
  %3556 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3557 = load i64, ptr %3556, align 8, !tbaa !31
  %3558 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3557, i64 1), !nosanitize !30
  %3559 = extractvalue { i64, i1 } %3558, 1, !nosanitize !30
  br i1 %3559, label %3560, label %3561, !prof !32, !nosanitize !30

3560:                                             ; preds = %3548
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3561:                                             ; preds = %3548
  %3562 = extractvalue { i64, i1 } %3558, 0, !nosanitize !30
  %3563 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3564 = load ptr, ptr %3563, align 8, !tbaa !33
  %3565 = trunc i16 %3555 to i8
  store i64 %3562, ptr %3556, align 8, !tbaa !31
  %3566 = getelementptr inbounds nuw i8, ptr %3564, i64 %3557
  store i8 %3565, ptr %3566, align 1, !tbaa !28
  %3567 = load i64, ptr %3556, align 8, !tbaa !31
  %3568 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3567, i64 1), !nosanitize !30
  %3569 = extractvalue { i64, i1 } %3568, 1, !nosanitize !30
  br i1 %3569, label %3570, label %3571, !prof !32, !nosanitize !30

3570:                                             ; preds = %3603, %3595, %3586, %3561
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3571:                                             ; preds = %3561
  %3572 = extractvalue { i64, i1 } %3568, 0, !nosanitize !30
  %3573 = load ptr, ptr %3563, align 8, !tbaa !33
  %3574 = load i16, ptr %3552, align 8, !tbaa !25
  %3575 = lshr i16 %3574, 8
  %3576 = trunc nuw i16 %3575 to i8
  store i64 %3572, ptr %3556, align 8, !tbaa !31
  %3577 = getelementptr inbounds nuw i8, ptr %3573, i64 %3567
  store i8 %3576, ptr %3577, align 1, !tbaa !28
  %3578 = load i32, ptr %2966, align 4, !tbaa !26
  %3579 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3578), !nosanitize !30
  %3580 = extractvalue { i32, i1 } %3579, 1, !nosanitize !30
  br i1 %3580, label %3126, label %3581, !prof !32, !nosanitize !30

3581:                                             ; preds = %3571
  %3582 = extractvalue { i32, i1 } %3579, 0, !nosanitize !30
  %3583 = lshr i32 %3550, %3582
  %3584 = trunc nuw i32 %3583 to i16
  store i16 %3584, ptr %3552, align 8, !tbaa !25
  %3585 = add i32 %3578, -13
  br label %3595

3586:                                             ; preds = %3544
  br i1 %3546, label %3570, label %3587, !prof !32, !nosanitize !30

3587:                                             ; preds = %3586
  %3588 = extractvalue { i32, i1 } %3545, 0, !nosanitize !30
  %3589 = shl i32 %3588, %2967
  %3590 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3591 = load i16, ptr %3590, align 8, !tbaa !25
  %3592 = trunc i32 %3589 to i16
  %3593 = or i16 %3591, %3592
  store i16 %3593, ptr %3590, align 8, !tbaa !25
  %3594 = add nsw i32 %2967, 3
  br label %3595

3595:                                             ; preds = %3581, %3587
  %3596 = phi i16 [ %3584, %3581 ], [ %3593, %3587 ]
  %3597 = phi i32 [ %3585, %3581 ], [ %3594, %3587 ]
  store i32 %3597, ptr %2966, align 4, !tbaa !26
  %3598 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %3599 = load i32, ptr %3598, align 8, !tbaa !74
  %3600 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3599, i32 1), !nosanitize !30
  %3601 = extractvalue { i32, i1 } %3600, 0, !nosanitize !30
  %3602 = extractvalue { i32, i1 } %3600, 1, !nosanitize !30
  br i1 %3602, label %3570, label %3603, !prof !32, !nosanitize !30

3603:                                             ; preds = %3595
  %3604 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %3605 = load i32, ptr %3604, align 8, !tbaa !76
  %3606 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3605, i32 1), !nosanitize !30
  %3607 = extractvalue { i32, i1 } %3606, 0, !nosanitize !30
  %3608 = extractvalue { i32, i1 } %3606, 1, !nosanitize !30
  br i1 %3608, label %3570, label %3609, !prof !32, !nosanitize !30

3609:                                             ; preds = %3603
  %3610 = add nuw nsw i32 %2955, 1
  %3611 = icmp sgt i32 %3597, 11
  %3612 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3601, i32 -257)
  %3613 = extractvalue { i32, i1 } %3612, 1, !nosanitize !30
  br i1 %3611, label %3614, label %3653

.loopexit341:                                     ; preds = %3800, %3740, %3690, %3653, %3637, %3614
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

3614:                                             ; preds = %3609
  br i1 %3613, label %.loopexit341, label %3615, !prof !32, !nosanitize !30

3615:                                             ; preds = %3614
  %3616 = extractvalue { i32, i1 } %3612, 0, !nosanitize !30
  %3617 = and i32 %3616, 65535
  %3618 = shl i32 %3616, %3597
  %3619 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3620 = trunc i32 %3618 to i16
  %3621 = or i16 %3596, %3620
  store i16 %3621, ptr %3619, align 8, !tbaa !25
  %3622 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3623 = load i64, ptr %3622, align 8, !tbaa !31
  %3624 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3623, i64 1), !nosanitize !30
  %3625 = extractvalue { i64, i1 } %3624, 1, !nosanitize !30
  br i1 %3625, label %3626, label %3627, !prof !32, !nosanitize !30

3626:                                             ; preds = %3615
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3627:                                             ; preds = %3615
  %3628 = extractvalue { i64, i1 } %3624, 0, !nosanitize !30
  %3629 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3630 = load ptr, ptr %3629, align 8, !tbaa !33
  %3631 = trunc i16 %3621 to i8
  store i64 %3628, ptr %3622, align 8, !tbaa !31
  %3632 = getelementptr inbounds nuw i8, ptr %3630, i64 %3623
  store i8 %3631, ptr %3632, align 1, !tbaa !28
  %3633 = load i64, ptr %3622, align 8, !tbaa !31
  %3634 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3633, i64 1), !nosanitize !30
  %3635 = extractvalue { i64, i1 } %3634, 1, !nosanitize !30
  br i1 %3635, label %3636, label %3637, !prof !32, !nosanitize !30

3636:                                             ; preds = %3647, %3627
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3637:                                             ; preds = %3627
  %3638 = extractvalue { i64, i1 } %3634, 0, !nosanitize !30
  %3639 = load ptr, ptr %3629, align 8, !tbaa !33
  %3640 = load i16, ptr %3619, align 8, !tbaa !25
  %3641 = lshr i16 %3640, 8
  %3642 = trunc nuw i16 %3641 to i8
  store i64 %3638, ptr %3622, align 8, !tbaa !31
  %3643 = getelementptr inbounds nuw i8, ptr %3639, i64 %3633
  store i8 %3642, ptr %3643, align 1, !tbaa !28
  %3644 = load i32, ptr %2966, align 4, !tbaa !26
  %3645 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3644), !nosanitize !30
  %3646 = extractvalue { i32, i1 } %3645, 1, !nosanitize !30
  br i1 %3646, label %.loopexit341, label %3647, !prof !32, !nosanitize !30

3647:                                             ; preds = %3637
  %3648 = extractvalue { i32, i1 } %3645, 0, !nosanitize !30
  %3649 = lshr i32 %3617, %3648
  %3650 = trunc nuw i32 %3649 to i16
  store i16 %3650, ptr %3619, align 8, !tbaa !25
  %3651 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3644, i32 -11), !nosanitize !30
  %3652 = extractvalue { i32, i1 } %3651, 1, !nosanitize !30
  br i1 %3652, label %3636, label %3662, !prof !32, !nosanitize !30

3653:                                             ; preds = %3609
  br i1 %3613, label %.loopexit341, label %3654, !prof !32, !nosanitize !30

3654:                                             ; preds = %3653
  %3655 = extractvalue { i32, i1 } %3612, 0, !nosanitize !30
  %3656 = shl i32 %3655, %3597
  %3657 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3658 = trunc i32 %3656 to i16
  %3659 = or i16 %3596, %3658
  store i16 %3659, ptr %3657, align 8, !tbaa !25
  %3660 = add nsw i32 %3597, 5
  %3661 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3660, 0
  br label %3662

3662:                                             ; preds = %3654, %3647
  %3663 = phi i16 [ %3650, %3647 ], [ %3659, %3654 ]
  %3664 = phi { i32, i1 } [ %3651, %3647 ], [ %3661, %3654 ]
  %3665 = extractvalue { i32, i1 } %3664, 0
  store i32 %3665, ptr %2966, align 4, !tbaa !26
  %3666 = icmp sgt i32 %3665, 11
  %3667 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3607, i32 -1)
  %3668 = extractvalue { i32, i1 } %3667, 0, !nosanitize !30
  br i1 %3666, label %3669, label %3706

3669:                                             ; preds = %3662
  %3670 = and i32 %3668, 65535
  %3671 = shl i32 %3668, %3665
  %3672 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3673 = trunc i32 %3671 to i16
  %3674 = or i16 %3663, %3673
  store i16 %3674, ptr %3672, align 8, !tbaa !25
  %3675 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3676 = load i64, ptr %3675, align 8, !tbaa !31
  %3677 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3676, i64 1), !nosanitize !30
  %3678 = extractvalue { i64, i1 } %3677, 1, !nosanitize !30
  br i1 %3678, label %3679, label %3680, !prof !32, !nosanitize !30

3679:                                             ; preds = %3669
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3680:                                             ; preds = %3669
  %3681 = extractvalue { i64, i1 } %3677, 0, !nosanitize !30
  %3682 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3683 = load ptr, ptr %3682, align 8, !tbaa !33
  %3684 = trunc i16 %3674 to i8
  store i64 %3681, ptr %3675, align 8, !tbaa !31
  %3685 = getelementptr inbounds nuw i8, ptr %3683, i64 %3676
  store i8 %3684, ptr %3685, align 1, !tbaa !28
  %3686 = load i64, ptr %3675, align 8, !tbaa !31
  %3687 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3686, i64 1), !nosanitize !30
  %3688 = extractvalue { i64, i1 } %3687, 1, !nosanitize !30
  br i1 %3688, label %3689, label %3690, !prof !32, !nosanitize !30

3689:                                             ; preds = %3700, %3680
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3690:                                             ; preds = %3680
  %3691 = extractvalue { i64, i1 } %3687, 0, !nosanitize !30
  %3692 = load ptr, ptr %3682, align 8, !tbaa !33
  %3693 = load i16, ptr %3672, align 8, !tbaa !25
  %3694 = lshr i16 %3693, 8
  %3695 = trunc nuw i16 %3694 to i8
  store i64 %3691, ptr %3675, align 8, !tbaa !31
  %3696 = getelementptr inbounds nuw i8, ptr %3692, i64 %3686
  store i8 %3695, ptr %3696, align 1, !tbaa !28
  %3697 = load i32, ptr %2966, align 4, !tbaa !26
  %3698 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3697), !nosanitize !30
  %3699 = extractvalue { i32, i1 } %3698, 1, !nosanitize !30
  br i1 %3699, label %.loopexit341, label %3700, !prof !32, !nosanitize !30

3700:                                             ; preds = %3690
  %3701 = extractvalue { i32, i1 } %3698, 0, !nosanitize !30
  %3702 = lshr i32 %3670, %3701
  %3703 = trunc nuw i32 %3702 to i16
  store i16 %3703, ptr %3672, align 8, !tbaa !25
  %3704 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3697, i32 -11), !nosanitize !30
  %3705 = extractvalue { i32, i1 } %3704, 1, !nosanitize !30
  br i1 %3705, label %3689, label %3713, !prof !32, !nosanitize !30

3706:                                             ; preds = %3662
  %3707 = shl i32 %3668, %3665
  %3708 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3709 = trunc i32 %3707 to i16
  %3710 = or i16 %3663, %3709
  store i16 %3710, ptr %3708, align 8, !tbaa !25
  %3711 = add nsw i32 %3665, 5
  %3712 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3711, 0
  br label %3713

3713:                                             ; preds = %3706, %3700
  %3714 = phi i16 [ %3703, %3700 ], [ %3710, %3706 ]
  %3715 = phi { i32, i1 } [ %3704, %3700 ], [ %3712, %3706 ]
  %3716 = extractvalue { i32, i1 } %3715, 0
  store i32 %3716, ptr %2966, align 4, !tbaa !26
  %3717 = icmp sgt i32 %3716, 12
  %3718 = add nsw i32 %2955, -3
  br i1 %3717, label %3719, label %3756

3719:                                             ; preds = %3713
  %3720 = and i32 %3718, 65535
  %3721 = shl i32 %3718, %3716
  %3722 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3723 = trunc i32 %3721 to i16
  %3724 = or i16 %3714, %3723
  store i16 %3724, ptr %3722, align 8, !tbaa !25
  %3725 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3726 = load i64, ptr %3725, align 8, !tbaa !31
  %3727 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3726, i64 1), !nosanitize !30
  %3728 = extractvalue { i64, i1 } %3727, 1, !nosanitize !30
  br i1 %3728, label %3729, label %3730, !prof !32, !nosanitize !30

3729:                                             ; preds = %3719
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3730:                                             ; preds = %3719
  %3731 = extractvalue { i64, i1 } %3727, 0, !nosanitize !30
  %3732 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3733 = load ptr, ptr %3732, align 8, !tbaa !33
  %3734 = trunc i16 %3724 to i8
  store i64 %3731, ptr %3725, align 8, !tbaa !31
  %3735 = getelementptr inbounds nuw i8, ptr %3733, i64 %3726
  store i8 %3734, ptr %3735, align 1, !tbaa !28
  %3736 = load i64, ptr %3725, align 8, !tbaa !31
  %3737 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3736, i64 1), !nosanitize !30
  %3738 = extractvalue { i64, i1 } %3737, 1, !nosanitize !30
  br i1 %3738, label %3739, label %3740, !prof !32, !nosanitize !30

3739:                                             ; preds = %3750, %3730
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3740:                                             ; preds = %3730
  %3741 = extractvalue { i64, i1 } %3737, 0, !nosanitize !30
  %3742 = load ptr, ptr %3732, align 8, !tbaa !33
  %3743 = load i16, ptr %3722, align 8, !tbaa !25
  %3744 = lshr i16 %3743, 8
  %3745 = trunc nuw i16 %3744 to i8
  store i64 %3741, ptr %3725, align 8, !tbaa !31
  %3746 = getelementptr inbounds nuw i8, ptr %3742, i64 %3736
  store i8 %3745, ptr %3746, align 1, !tbaa !28
  %3747 = load i32, ptr %2966, align 4, !tbaa !26
  %3748 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3747), !nosanitize !30
  %3749 = extractvalue { i32, i1 } %3748, 1, !nosanitize !30
  br i1 %3749, label %.loopexit341, label %3750, !prof !32, !nosanitize !30

3750:                                             ; preds = %3740
  %3751 = extractvalue { i32, i1 } %3748, 0, !nosanitize !30
  %3752 = lshr i32 %3720, %3751
  %3753 = trunc nuw i32 %3752 to i16
  store i16 %3753, ptr %3722, align 8, !tbaa !25
  %3754 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3747, i32 -12), !nosanitize !30
  %3755 = extractvalue { i32, i1 } %3754, 1, !nosanitize !30
  br i1 %3755, label %3739, label %3762, !prof !32, !nosanitize !30

3756:                                             ; preds = %3713
  %3757 = shl nsw i32 %3718, %3716
  %3758 = trunc i32 %3757 to i16
  %3759 = or i16 %3714, %3758
  %3760 = add nsw i32 %3716, 4
  %3761 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3760, 0
  br label %3762

3762:                                             ; preds = %3756, %3750
  %3763 = phi i16 [ %3753, %3750 ], [ %3759, %3756 ]
  %3764 = phi { i32, i1 } [ %3754, %3750 ], [ %3761, %3756 ]
  %3765 = extractvalue { i32, i1 } %3764, 0
  store i32 %3765, ptr %2966, align 4, !tbaa !26
  %3766 = getelementptr i8, ptr %0, i64 2750
  %3767 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3768 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3769 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3770 = zext nneg i32 %3610 to i64
  br label %3771

3771:                                             ; preds = %3817, %3762
  %3772 = phi i16 [ %3763, %3762 ], [ %3818, %3817 ]
  %3773 = phi i32 [ %3765, %3762 ], [ %3819, %3817 ]
  %3774 = phi i64 [ 0, %3762 ], [ %3820, %3817 ]
  %3775 = icmp sgt i32 %3773, 13
  %3776 = getelementptr inbounds nuw i8, ptr @bl_order, i64 %3774
  %3777 = load i8, ptr %3776, align 1, !tbaa !28
  %3778 = zext i8 %3777 to i64
  %3779 = shl nuw nsw i64 %3778, 2
  %3780 = getelementptr i8, ptr %3766, i64 %3779
  %3781 = load i16, ptr %3780, align 2, !tbaa !28
  %3782 = zext i16 %3781 to i32
  %3783 = shl i32 %3782, %3773
  %3784 = trunc i32 %3783 to i16
  %3785 = or i16 %3772, %3784
  store i16 %3785, ptr %3767, align 8, !tbaa !25
  br i1 %3775, label %3786, label %3815

3786:                                             ; preds = %3771
  %3787 = load i64, ptr %3768, align 8, !tbaa !31
  %3788 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3787, i64 1), !nosanitize !30
  %3789 = extractvalue { i64, i1 } %3788, 1, !nosanitize !30
  br i1 %3789, label %3790, label %3791, !prof !32, !nosanitize !30

3790:                                             ; preds = %3786
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3791:                                             ; preds = %3786
  %3792 = extractvalue { i64, i1 } %3788, 0, !nosanitize !30
  %3793 = load ptr, ptr %3769, align 8, !tbaa !33
  %3794 = trunc i16 %3785 to i8
  store i64 %3792, ptr %3768, align 8, !tbaa !31
  %3795 = getelementptr inbounds nuw i8, ptr %3793, i64 %3787
  store i8 %3794, ptr %3795, align 1, !tbaa !28
  %3796 = load i64, ptr %3768, align 8, !tbaa !31
  %3797 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3796, i64 1), !nosanitize !30
  %3798 = extractvalue { i64, i1 } %3797, 1, !nosanitize !30
  br i1 %3798, label %3799, label %3800, !prof !32, !nosanitize !30

3799:                                             ; preds = %3791
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3800:                                             ; preds = %3791
  %3801 = extractvalue { i64, i1 } %3797, 0, !nosanitize !30
  %3802 = load ptr, ptr %3769, align 8, !tbaa !33
  %3803 = load i16, ptr %3767, align 8, !tbaa !25
  %3804 = lshr i16 %3803, 8
  %3805 = trunc nuw i16 %3804 to i8
  store i64 %3801, ptr %3768, align 8, !tbaa !31
  %3806 = getelementptr inbounds nuw i8, ptr %3802, i64 %3796
  store i8 %3805, ptr %3806, align 1, !tbaa !28
  %3807 = load i32, ptr %2966, align 4, !tbaa !26
  %3808 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3807), !nosanitize !30
  %3809 = extractvalue { i32, i1 } %3808, 1, !nosanitize !30
  br i1 %3809, label %.loopexit341, label %3810, !prof !32, !nosanitize !30

3810:                                             ; preds = %3800
  %3811 = extractvalue { i32, i1 } %3808, 0, !nosanitize !30
  %3812 = lshr i32 %3782, %3811
  %3813 = trunc nuw i32 %3812 to i16
  store i16 %3813, ptr %3767, align 8, !tbaa !25
  %3814 = add i32 %3807, -13
  br label %3817

3815:                                             ; preds = %3771
  %3816 = add nsw i32 %3773, 3
  br label %3817

3817:                                             ; preds = %3810, %3815
  %3818 = phi i16 [ %3813, %3810 ], [ %3785, %3815 ]
  %3819 = phi i32 [ %3814, %3810 ], [ %3816, %3815 ]
  store i32 %3819, ptr %2966, align 4, !tbaa !26
  %3820 = add nuw nsw i64 %3774, 1
  %3821 = icmp eq i64 %3820, %3770
  br i1 %3821, label %3822, label %3771, !llvm.loop !81

3822:                                             ; preds = %3817
  %3823 = add i32 %3601, -1
  %3824 = icmp slt i32 %3823, 0
  br i1 %3824, label %.loopexit340, label %3825

3825:                                             ; preds = %3822
  %3826 = getelementptr i8, ptr %0, i64 214
  %3827 = load i16, ptr %3826, align 2, !tbaa !28
  %3828 = icmp eq i16 %3827, 0
  %3829 = select i1 %3828, i32 138, i32 7
  %3830 = select i1 %3828, i32 3, i32 4
  %3831 = zext i16 %3827 to i32
  %3832 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3833 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3834 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3835 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3836 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3837 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3838 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3844

3839:                                             ; preds = %4262
  %3840 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3845, i32 1), !nosanitize !30
  %3841 = extractvalue { i32, i1 } %3840, 0, !nosanitize !30
  %3842 = extractvalue { i32, i1 } %3840, 1, !nosanitize !30
  br i1 %3842, label %3843, label %3844, !prof !82, !llvm.loop !83, !nosanitize !30

3843:                                             ; preds = %3839
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

3844:                                             ; preds = %3825, %3839
  %3845 = phi i32 [ 1, %3825 ], [ %3841, %3839 ]
  %3846 = phi i32 [ %3830, %3825 ], [ %4265, %3839 ]
  %3847 = phi i32 [ %3829, %3825 ], [ %4266, %3839 ]
  %3848 = phi i32 [ 0, %3825 ], [ %4267, %3839 ]
  %3849 = phi i32 [ %3831, %3825 ], [ %3857, %3839 ]
  %3850 = phi i32 [ -1, %3825 ], [ %4268, %3839 ]
  %3851 = phi i32 [ %3819, %3825 ], [ %4264, %3839 ]
  %3852 = phi i16 [ %3818, %3825 ], [ %4263, %3839 ]
  %3853 = sext i32 %3845 to i64
  %3854 = shl nsw i64 %3853, 2
  %3855 = getelementptr i8, ptr %3826, i64 %3854
  %3856 = load i16, ptr %3855, align 2, !tbaa !28
  %3857 = zext i16 %3856 to i32
  %3858 = add nsw i32 %3848, 1
  %3859 = icmp slt i32 %3858, %3847
  %3860 = icmp eq i32 %3849, %3857
  %3861 = select i1 %3859, i1 %3860, i1 false
  br i1 %3861, label %4262, label %3862

3862:                                             ; preds = %3844
  %3863 = icmp slt i32 %3858, %3846
  br i1 %3863, label %3864, label %3924

3864:                                             ; preds = %3862
  %3865 = zext nneg i32 %3849 to i64
  %3866 = getelementptr inbounds nuw [4 x i8], ptr %3832, i64 %3865
  %3867 = getelementptr inbounds nuw i8, ptr %3866, i64 2
  br label %3868

3868:                                             ; preds = %3921, %3864
  %3869 = phi i16 [ %3916, %3921 ], [ %3852, %3864 ]
  %3870 = phi i32 [ %3918, %3921 ], [ %3851, %3864 ]
  %3871 = phi i32 [ %3922, %3921 ], [ %3858, %3864 ]
  %3872 = load i16, ptr %3867, align 2, !tbaa !28
  %3873 = zext i16 %3872 to i32
  %3874 = sub nsw i32 16, %3873
  %3875 = icmp sgt i32 %3870, %3874
  %3876 = load i16, ptr %3866, align 4, !tbaa !28
  %3877 = zext i16 %3876 to i32
  %3878 = shl i32 %3877, %3870
  %3879 = trunc i32 %3878 to i16
  %3880 = or i16 %3869, %3879
  store i16 %3880, ptr %3767, align 8, !tbaa !25
  br i1 %3875, label %3881, label %3912

.loopexit337:                                     ; preds = %4231, %4187, %4142, %4098, %4050, %4006, %3955, %3915, %3895
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

3881:                                             ; preds = %3868
  %3882 = load i64, ptr %3768, align 8, !tbaa !31
  %3883 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3882, i64 1), !nosanitize !30
  %3884 = extractvalue { i64, i1 } %3883, 1, !nosanitize !30
  br i1 %3884, label %3885, label %3886, !prof !32, !nosanitize !30

3885:                                             ; preds = %3881
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3886:                                             ; preds = %3881
  %3887 = extractvalue { i64, i1 } %3883, 0, !nosanitize !30
  %3888 = load ptr, ptr %3769, align 8, !tbaa !33
  %3889 = trunc i16 %3880 to i8
  store i64 %3887, ptr %3768, align 8, !tbaa !31
  %3890 = getelementptr inbounds nuw i8, ptr %3888, i64 %3882
  store i8 %3889, ptr %3890, align 1, !tbaa !28
  %3891 = load i64, ptr %3768, align 8, !tbaa !31
  %3892 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3891, i64 1), !nosanitize !30
  %3893 = extractvalue { i64, i1 } %3892, 1, !nosanitize !30
  br i1 %3893, label %3894, label %3895, !prof !32, !nosanitize !30

3894:                                             ; preds = %3905, %3886
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3895:                                             ; preds = %3886
  %3896 = extractvalue { i64, i1 } %3892, 0, !nosanitize !30
  %3897 = load ptr, ptr %3769, align 8, !tbaa !33
  %3898 = load i16, ptr %3767, align 8, !tbaa !25
  %3899 = lshr i16 %3898, 8
  %3900 = trunc nuw i16 %3899 to i8
  store i64 %3896, ptr %3768, align 8, !tbaa !31
  %3901 = getelementptr inbounds nuw i8, ptr %3897, i64 %3891
  store i8 %3900, ptr %3901, align 1, !tbaa !28
  %3902 = load i32, ptr %2966, align 4, !tbaa !26
  %3903 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3902), !nosanitize !30
  %3904 = extractvalue { i32, i1 } %3903, 1, !nosanitize !30
  br i1 %3904, label %.loopexit337, label %3905, !prof !32, !nosanitize !30

3905:                                             ; preds = %3895
  %3906 = extractvalue { i32, i1 } %3903, 0, !nosanitize !30
  %3907 = lshr i32 %3877, %3906
  %3908 = trunc nuw i32 %3907 to i16
  store i16 %3908, ptr %3767, align 8, !tbaa !25
  %3909 = add nsw i32 %3873, -16
  %3910 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3902, i32 %3909), !nosanitize !30
  %3911 = extractvalue { i32, i1 } %3910, 1, !nosanitize !30
  br i1 %3911, label %3894, label %3915, !prof !32, !nosanitize !30

3912:                                             ; preds = %3868
  %3913 = add nsw i32 %3870, %3873
  %3914 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3913, 0
  br label %3915

3915:                                             ; preds = %3912, %3905
  %3916 = phi i16 [ %3908, %3905 ], [ %3880, %3912 ]
  %3917 = phi { i32, i1 } [ %3910, %3905 ], [ %3914, %3912 ]
  %3918 = extractvalue { i32, i1 } %3917, 0
  store i32 %3918, ptr %2966, align 4, !tbaa !26
  %3919 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3871, i32 -1)
  %3920 = extractvalue { i32, i1 } %3919, 1, !nosanitize !30
  br i1 %3920, label %.loopexit337, label %3921, !prof !32, !nosanitize !30

3921:                                             ; preds = %3915
  %3922 = extractvalue { i32, i1 } %3919, 0, !nosanitize !30
  %3923 = icmp eq i32 %3922, 0
  br i1 %3923, label %.loopexit338, label %3868, !llvm.loop !84

3924:                                             ; preds = %3862
  %3925 = icmp eq i32 %3849, 0
  br i1 %3925, label %4072, label %3926

3926:                                             ; preds = %3924
  %3927 = icmp eq i32 %3849, %3850
  br i1 %3927, label %3979, label %3928

3928:                                             ; preds = %3926
  %3929 = zext nneg i32 %3849 to i64
  %3930 = getelementptr inbounds nuw [4 x i8], ptr %3832, i64 %3929
  %3931 = getelementptr inbounds nuw i8, ptr %3930, i64 2
  %3932 = load i16, ptr %3931, align 2, !tbaa !28
  %3933 = zext i16 %3932 to i32
  %3934 = sub nsw i32 16, %3933
  %3935 = icmp sgt i32 %3851, %3934
  %3936 = load i16, ptr %3930, align 4, !tbaa !28
  %3937 = zext i16 %3936 to i32
  %3938 = shl i32 %3937, %3851
  %3939 = trunc i32 %3938 to i16
  %3940 = or i16 %3852, %3939
  store i16 %3940, ptr %3767, align 8, !tbaa !25
  br i1 %3935, label %3941, label %3972

3941:                                             ; preds = %3928
  %3942 = load i64, ptr %3768, align 8, !tbaa !31
  %3943 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3942, i64 1), !nosanitize !30
  %3944 = extractvalue { i64, i1 } %3943, 1, !nosanitize !30
  br i1 %3944, label %3945, label %3946, !prof !32, !nosanitize !30

3945:                                             ; preds = %3941
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3946:                                             ; preds = %3941
  %3947 = extractvalue { i64, i1 } %3943, 0, !nosanitize !30
  %3948 = load ptr, ptr %3769, align 8, !tbaa !33
  %3949 = trunc i16 %3940 to i8
  store i64 %3947, ptr %3768, align 8, !tbaa !31
  %3950 = getelementptr inbounds nuw i8, ptr %3948, i64 %3942
  store i8 %3949, ptr %3950, align 1, !tbaa !28
  %3951 = load i64, ptr %3768, align 8, !tbaa !31
  %3952 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3951, i64 1), !nosanitize !30
  %3953 = extractvalue { i64, i1 } %3952, 1, !nosanitize !30
  br i1 %3953, label %3954, label %3955, !prof !32, !nosanitize !30

3954:                                             ; preds = %3965, %3946
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3955:                                             ; preds = %3946
  %3956 = extractvalue { i64, i1 } %3952, 0, !nosanitize !30
  %3957 = load ptr, ptr %3769, align 8, !tbaa !33
  %3958 = load i16, ptr %3767, align 8, !tbaa !25
  %3959 = lshr i16 %3958, 8
  %3960 = trunc nuw i16 %3959 to i8
  store i64 %3956, ptr %3768, align 8, !tbaa !31
  %3961 = getelementptr inbounds nuw i8, ptr %3957, i64 %3951
  store i8 %3960, ptr %3961, align 1, !tbaa !28
  %3962 = load i32, ptr %2966, align 4, !tbaa !26
  %3963 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3962), !nosanitize !30
  %3964 = extractvalue { i32, i1 } %3963, 1, !nosanitize !30
  br i1 %3964, label %.loopexit337, label %3965, !prof !32, !nosanitize !30

3965:                                             ; preds = %3955
  %3966 = extractvalue { i32, i1 } %3963, 0, !nosanitize !30
  %3967 = lshr i32 %3937, %3966
  %3968 = trunc nuw i32 %3967 to i16
  store i16 %3968, ptr %3767, align 8, !tbaa !25
  %3969 = add nsw i32 %3933, -16
  %3970 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3962, i32 %3969), !nosanitize !30
  %3971 = extractvalue { i32, i1 } %3970, 1, !nosanitize !30
  br i1 %3971, label %3954, label %3975, !prof !32, !nosanitize !30

3972:                                             ; preds = %3928
  %3973 = add nsw i32 %3851, %3933
  %3974 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3973, 0
  br label %3975

3975:                                             ; preds = %3972, %3965
  %3976 = phi i16 [ %3968, %3965 ], [ %3940, %3972 ]
  %3977 = phi { i32, i1 } [ %3970, %3965 ], [ %3974, %3972 ]
  %3978 = extractvalue { i32, i1 } %3977, 0
  store i32 %3978, ptr %2966, align 4, !tbaa !26
  br label %3979

3979:                                             ; preds = %3975, %3926
  %3980 = phi i16 [ %3976, %3975 ], [ %3852, %3926 ]
  %3981 = phi i32 [ %3978, %3975 ], [ %3851, %3926 ]
  %3982 = phi i32 [ %3848, %3975 ], [ %3858, %3926 ]
  %3983 = load i16, ptr %3834, align 2, !tbaa !28
  %3984 = zext i16 %3983 to i32
  %3985 = sub nsw i32 16, %3984
  %3986 = icmp sgt i32 %3981, %3985
  %3987 = load i16, ptr %3833, align 4, !tbaa !28
  %3988 = zext i16 %3987 to i32
  %3989 = shl i32 %3988, %3981
  %3990 = trunc i32 %3989 to i16
  %3991 = or i16 %3980, %3990
  store i16 %3991, ptr %3767, align 8, !tbaa !25
  br i1 %3986, label %3992, label %4023

3992:                                             ; preds = %3979
  %3993 = load i64, ptr %3768, align 8, !tbaa !31
  %3994 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3993, i64 1), !nosanitize !30
  %3995 = extractvalue { i64, i1 } %3994, 1, !nosanitize !30
  br i1 %3995, label %3996, label %3997, !prof !32, !nosanitize !30

3996:                                             ; preds = %3992
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3997:                                             ; preds = %3992
  %3998 = extractvalue { i64, i1 } %3994, 0, !nosanitize !30
  %3999 = load ptr, ptr %3769, align 8, !tbaa !33
  %4000 = trunc i16 %3991 to i8
  store i64 %3998, ptr %3768, align 8, !tbaa !31
  %4001 = getelementptr inbounds nuw i8, ptr %3999, i64 %3993
  store i8 %4000, ptr %4001, align 1, !tbaa !28
  %4002 = load i64, ptr %3768, align 8, !tbaa !31
  %4003 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4002, i64 1), !nosanitize !30
  %4004 = extractvalue { i64, i1 } %4003, 1, !nosanitize !30
  br i1 %4004, label %4005, label %4006, !prof !32, !nosanitize !30

4005:                                             ; preds = %4016, %3997
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4006:                                             ; preds = %3997
  %4007 = extractvalue { i64, i1 } %4003, 0, !nosanitize !30
  %4008 = load ptr, ptr %3769, align 8, !tbaa !33
  %4009 = load i16, ptr %3767, align 8, !tbaa !25
  %4010 = lshr i16 %4009, 8
  %4011 = trunc nuw i16 %4010 to i8
  store i64 %4007, ptr %3768, align 8, !tbaa !31
  %4012 = getelementptr inbounds nuw i8, ptr %4008, i64 %4002
  store i8 %4011, ptr %4012, align 1, !tbaa !28
  %4013 = load i32, ptr %2966, align 4, !tbaa !26
  %4014 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4013), !nosanitize !30
  %4015 = extractvalue { i32, i1 } %4014, 1, !nosanitize !30
  br i1 %4015, label %.loopexit337, label %4016, !prof !32, !nosanitize !30

4016:                                             ; preds = %4006
  %4017 = extractvalue { i32, i1 } %4014, 0, !nosanitize !30
  %4018 = lshr i32 %3988, %4017
  %4019 = trunc nuw i32 %4018 to i16
  store i16 %4019, ptr %3767, align 8, !tbaa !25
  %4020 = add nsw i32 %3984, -16
  %4021 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4013, i32 %4020), !nosanitize !30
  %4022 = extractvalue { i32, i1 } %4021, 1, !nosanitize !30
  br i1 %4022, label %4005, label %4026, !prof !32, !nosanitize !30

4023:                                             ; preds = %3979
  %4024 = add nsw i32 %3981, %3984
  %4025 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4024, 0
  br label %4026

4026:                                             ; preds = %4023, %4016
  %4027 = phi i16 [ %4019, %4016 ], [ %3991, %4023 ]
  %4028 = phi { i32, i1 } [ %4021, %4016 ], [ %4025, %4023 ]
  %4029 = extractvalue { i32, i1 } %4028, 0
  store i32 %4029, ptr %2966, align 4, !tbaa !26
  %4030 = icmp sgt i32 %4029, 14
  %4031 = add i32 %3982, 65533
  br i1 %4030, label %4032, label %4066

4032:                                             ; preds = %4026
  %4033 = and i32 %4031, 65535
  %4034 = shl i32 %4031, %4029
  %4035 = trunc i32 %4034 to i16
  %4036 = or i16 %4027, %4035
  store i16 %4036, ptr %3767, align 8, !tbaa !25
  %4037 = load i64, ptr %3768, align 8, !tbaa !31
  %4038 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4037, i64 1), !nosanitize !30
  %4039 = extractvalue { i64, i1 } %4038, 1, !nosanitize !30
  br i1 %4039, label %4040, label %4041, !prof !32, !nosanitize !30

4040:                                             ; preds = %4032
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4041:                                             ; preds = %4032
  %4042 = extractvalue { i64, i1 } %4038, 0, !nosanitize !30
  %4043 = load ptr, ptr %3769, align 8, !tbaa !33
  %4044 = trunc i16 %4036 to i8
  store i64 %4042, ptr %3768, align 8, !tbaa !31
  %4045 = getelementptr inbounds nuw i8, ptr %4043, i64 %4037
  store i8 %4044, ptr %4045, align 1, !tbaa !28
  %4046 = load i64, ptr %3768, align 8, !tbaa !31
  %4047 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4046, i64 1), !nosanitize !30
  %4048 = extractvalue { i64, i1 } %4047, 1, !nosanitize !30
  br i1 %4048, label %4049, label %4050, !prof !32, !nosanitize !30

4049:                                             ; preds = %4060, %4041
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4050:                                             ; preds = %4041
  %4051 = extractvalue { i64, i1 } %4047, 0, !nosanitize !30
  %4052 = load ptr, ptr %3769, align 8, !tbaa !33
  %4053 = load i16, ptr %3767, align 8, !tbaa !25
  %4054 = lshr i16 %4053, 8
  %4055 = trunc nuw i16 %4054 to i8
  store i64 %4051, ptr %3768, align 8, !tbaa !31
  %4056 = getelementptr inbounds nuw i8, ptr %4052, i64 %4046
  store i8 %4055, ptr %4056, align 1, !tbaa !28
  %4057 = load i32, ptr %2966, align 4, !tbaa !26
  %4058 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4057), !nosanitize !30
  %4059 = extractvalue { i32, i1 } %4058, 1, !nosanitize !30
  br i1 %4059, label %.loopexit337, label %4060, !prof !32, !nosanitize !30

4060:                                             ; preds = %4050
  %4061 = extractvalue { i32, i1 } %4058, 0, !nosanitize !30
  %4062 = lshr i32 %4033, %4061
  %4063 = trunc nuw i32 %4062 to i16
  store i16 %4063, ptr %3767, align 8, !tbaa !25
  %4064 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4057, i32 -14), !nosanitize !30
  %4065 = extractvalue { i32, i1 } %4064, 1, !nosanitize !30
  br i1 %4065, label %4049, label %4252, !prof !32, !nosanitize !30

4066:                                             ; preds = %4026
  %4067 = shl i32 %4031, %4029
  %4068 = trunc i32 %4067 to i16
  %4069 = or i16 %4027, %4068
  store i16 %4069, ptr %3767, align 8, !tbaa !25
  %4070 = add nsw i32 %4029, 2
  %4071 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4070, 0
  br label %4252

4072:                                             ; preds = %3924
  %4073 = icmp slt i32 %3848, 10
  br i1 %4073, label %4074, label %4163

4074:                                             ; preds = %4072
  %4075 = load i16, ptr %3838, align 2, !tbaa !28
  %4076 = zext i16 %4075 to i32
  %4077 = sub nsw i32 16, %4076
  %4078 = icmp sgt i32 %3851, %4077
  %4079 = load i16, ptr %3837, align 4, !tbaa !28
  %4080 = zext i16 %4079 to i32
  %4081 = shl i32 %4080, %3851
  %4082 = trunc i32 %4081 to i16
  %4083 = or i16 %3852, %4082
  store i16 %4083, ptr %3767, align 8, !tbaa !25
  br i1 %4078, label %4084, label %4115

4084:                                             ; preds = %4074
  %4085 = load i64, ptr %3768, align 8, !tbaa !31
  %4086 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4085, i64 1), !nosanitize !30
  %4087 = extractvalue { i64, i1 } %4086, 1, !nosanitize !30
  br i1 %4087, label %4088, label %4089, !prof !32, !nosanitize !30

4088:                                             ; preds = %4084
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4089:                                             ; preds = %4084
  %4090 = extractvalue { i64, i1 } %4086, 0, !nosanitize !30
  %4091 = load ptr, ptr %3769, align 8, !tbaa !33
  %4092 = trunc i16 %4083 to i8
  store i64 %4090, ptr %3768, align 8, !tbaa !31
  %4093 = getelementptr inbounds nuw i8, ptr %4091, i64 %4085
  store i8 %4092, ptr %4093, align 1, !tbaa !28
  %4094 = load i64, ptr %3768, align 8, !tbaa !31
  %4095 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4094, i64 1), !nosanitize !30
  %4096 = extractvalue { i64, i1 } %4095, 1, !nosanitize !30
  br i1 %4096, label %4097, label %4098, !prof !32, !nosanitize !30

4097:                                             ; preds = %4108, %4089
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4098:                                             ; preds = %4089
  %4099 = extractvalue { i64, i1 } %4095, 0, !nosanitize !30
  %4100 = load ptr, ptr %3769, align 8, !tbaa !33
  %4101 = load i16, ptr %3767, align 8, !tbaa !25
  %4102 = lshr i16 %4101, 8
  %4103 = trunc nuw i16 %4102 to i8
  store i64 %4099, ptr %3768, align 8, !tbaa !31
  %4104 = getelementptr inbounds nuw i8, ptr %4100, i64 %4094
  store i8 %4103, ptr %4104, align 1, !tbaa !28
  %4105 = load i32, ptr %2966, align 4, !tbaa !26
  %4106 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4105), !nosanitize !30
  %4107 = extractvalue { i32, i1 } %4106, 1, !nosanitize !30
  br i1 %4107, label %.loopexit337, label %4108, !prof !32, !nosanitize !30

4108:                                             ; preds = %4098
  %4109 = extractvalue { i32, i1 } %4106, 0, !nosanitize !30
  %4110 = lshr i32 %4080, %4109
  %4111 = trunc nuw i32 %4110 to i16
  store i16 %4111, ptr %3767, align 8, !tbaa !25
  %4112 = add nsw i32 %4076, -16
  %4113 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4105, i32 %4112), !nosanitize !30
  %4114 = extractvalue { i32, i1 } %4113, 1, !nosanitize !30
  br i1 %4114, label %4097, label %4118, !prof !32, !nosanitize !30

4115:                                             ; preds = %4074
  %4116 = add nsw i32 %3851, %4076
  %4117 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4116, 0
  br label %4118

4118:                                             ; preds = %4115, %4108
  %4119 = phi i16 [ %4111, %4108 ], [ %4083, %4115 ]
  %4120 = phi { i32, i1 } [ %4113, %4108 ], [ %4117, %4115 ]
  %4121 = extractvalue { i32, i1 } %4120, 0
  store i32 %4121, ptr %2966, align 4, !tbaa !26
  %4122 = icmp sgt i32 %4121, 13
  %4123 = add nsw i32 %3848, 65534
  br i1 %4122, label %4124, label %4157

4124:                                             ; preds = %4118
  %4125 = and i32 %4123, 65535
  %4126 = shl i32 %4123, %4121
  %4127 = trunc i32 %4126 to i16
  %4128 = or i16 %4119, %4127
  store i16 %4128, ptr %3767, align 8, !tbaa !25
  %4129 = load i64, ptr %3768, align 8, !tbaa !31
  %4130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4129, i64 1), !nosanitize !30
  %4131 = extractvalue { i64, i1 } %4130, 1, !nosanitize !30
  br i1 %4131, label %4132, label %4133, !prof !32, !nosanitize !30

4132:                                             ; preds = %4124
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4133:                                             ; preds = %4124
  %4134 = extractvalue { i64, i1 } %4130, 0, !nosanitize !30
  %4135 = load ptr, ptr %3769, align 8, !tbaa !33
  %4136 = trunc i16 %4128 to i8
  store i64 %4134, ptr %3768, align 8, !tbaa !31
  %4137 = getelementptr inbounds nuw i8, ptr %4135, i64 %4129
  store i8 %4136, ptr %4137, align 1, !tbaa !28
  %4138 = load i64, ptr %3768, align 8, !tbaa !31
  %4139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4138, i64 1), !nosanitize !30
  %4140 = extractvalue { i64, i1 } %4139, 1, !nosanitize !30
  br i1 %4140, label %4141, label %4142, !prof !32, !nosanitize !30

4141:                                             ; preds = %4133
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4142:                                             ; preds = %4133
  %4143 = extractvalue { i64, i1 } %4139, 0, !nosanitize !30
  %4144 = load ptr, ptr %3769, align 8, !tbaa !33
  %4145 = load i16, ptr %3767, align 8, !tbaa !25
  %4146 = lshr i16 %4145, 8
  %4147 = trunc nuw i16 %4146 to i8
  store i64 %4143, ptr %3768, align 8, !tbaa !31
  %4148 = getelementptr inbounds nuw i8, ptr %4144, i64 %4138
  store i8 %4147, ptr %4148, align 1, !tbaa !28
  %4149 = load i32, ptr %2966, align 4, !tbaa !26
  %4150 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4149), !nosanitize !30
  %4151 = extractvalue { i32, i1 } %4150, 1, !nosanitize !30
  br i1 %4151, label %.loopexit337, label %4152, !prof !32, !nosanitize !30

4152:                                             ; preds = %4142
  %4153 = extractvalue { i32, i1 } %4150, 0, !nosanitize !30
  %4154 = lshr i32 %4125, %4153
  %4155 = trunc nuw i32 %4154 to i16
  store i16 %4155, ptr %3767, align 8, !tbaa !25
  %4156 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4149, i32 -13), !nosanitize !30
  br label %4252

4157:                                             ; preds = %4118
  %4158 = shl i32 %4123, %4121
  %4159 = trunc i32 %4158 to i16
  %4160 = or i16 %4119, %4159
  store i16 %4160, ptr %3767, align 8, !tbaa !25
  %4161 = add nsw i32 %4121, 3
  %4162 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4161, 0
  br label %4252

4163:                                             ; preds = %4072
  %4164 = load i16, ptr %3836, align 2, !tbaa !28
  %4165 = zext i16 %4164 to i32
  %4166 = sub nsw i32 16, %4165
  %4167 = icmp sgt i32 %3851, %4166
  %4168 = load i16, ptr %3835, align 4, !tbaa !28
  %4169 = zext i16 %4168 to i32
  %4170 = shl i32 %4169, %3851
  %4171 = trunc i32 %4170 to i16
  %4172 = or i16 %3852, %4171
  store i16 %4172, ptr %3767, align 8, !tbaa !25
  br i1 %4167, label %4173, label %4204

4173:                                             ; preds = %4163
  %4174 = load i64, ptr %3768, align 8, !tbaa !31
  %4175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4174, i64 1), !nosanitize !30
  %4176 = extractvalue { i64, i1 } %4175, 1, !nosanitize !30
  br i1 %4176, label %4177, label %4178, !prof !32, !nosanitize !30

4177:                                             ; preds = %4173
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4178:                                             ; preds = %4173
  %4179 = extractvalue { i64, i1 } %4175, 0, !nosanitize !30
  %4180 = load ptr, ptr %3769, align 8, !tbaa !33
  %4181 = trunc i16 %4172 to i8
  store i64 %4179, ptr %3768, align 8, !tbaa !31
  %4182 = getelementptr inbounds nuw i8, ptr %4180, i64 %4174
  store i8 %4181, ptr %4182, align 1, !tbaa !28
  %4183 = load i64, ptr %3768, align 8, !tbaa !31
  %4184 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4183, i64 1), !nosanitize !30
  %4185 = extractvalue { i64, i1 } %4184, 1, !nosanitize !30
  br i1 %4185, label %4186, label %4187, !prof !32, !nosanitize !30

4186:                                             ; preds = %4197, %4178
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4187:                                             ; preds = %4178
  %4188 = extractvalue { i64, i1 } %4184, 0, !nosanitize !30
  %4189 = load ptr, ptr %3769, align 8, !tbaa !33
  %4190 = load i16, ptr %3767, align 8, !tbaa !25
  %4191 = lshr i16 %4190, 8
  %4192 = trunc nuw i16 %4191 to i8
  store i64 %4188, ptr %3768, align 8, !tbaa !31
  %4193 = getelementptr inbounds nuw i8, ptr %4189, i64 %4183
  store i8 %4192, ptr %4193, align 1, !tbaa !28
  %4194 = load i32, ptr %2966, align 4, !tbaa !26
  %4195 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4194), !nosanitize !30
  %4196 = extractvalue { i32, i1 } %4195, 1, !nosanitize !30
  br i1 %4196, label %.loopexit337, label %4197, !prof !32, !nosanitize !30

4197:                                             ; preds = %4187
  %4198 = extractvalue { i32, i1 } %4195, 0, !nosanitize !30
  %4199 = lshr i32 %4169, %4198
  %4200 = trunc nuw i32 %4199 to i16
  store i16 %4200, ptr %3767, align 8, !tbaa !25
  %4201 = add nsw i32 %4165, -16
  %4202 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4194, i32 %4201), !nosanitize !30
  %4203 = extractvalue { i32, i1 } %4202, 1, !nosanitize !30
  br i1 %4203, label %4186, label %4207, !prof !32, !nosanitize !30

4204:                                             ; preds = %4163
  %4205 = add nsw i32 %3851, %4165
  %4206 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4205, 0
  br label %4207

4207:                                             ; preds = %4204, %4197
  %4208 = phi i16 [ %4200, %4197 ], [ %4172, %4204 ]
  %4209 = phi { i32, i1 } [ %4202, %4197 ], [ %4206, %4204 ]
  %4210 = extractvalue { i32, i1 } %4209, 0
  store i32 %4210, ptr %2966, align 4, !tbaa !26
  %4211 = icmp sgt i32 %4210, 9
  %4212 = add nuw i32 %3848, 65526
  br i1 %4211, label %4213, label %4246

4213:                                             ; preds = %4207
  %4214 = and i32 %4212, 65535
  %4215 = shl i32 %4212, %4210
  %4216 = trunc i32 %4215 to i16
  %4217 = or i16 %4208, %4216
  store i16 %4217, ptr %3767, align 8, !tbaa !25
  %4218 = load i64, ptr %3768, align 8, !tbaa !31
  %4219 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4218, i64 1), !nosanitize !30
  %4220 = extractvalue { i64, i1 } %4219, 1, !nosanitize !30
  br i1 %4220, label %4221, label %4222, !prof !32, !nosanitize !30

4221:                                             ; preds = %4213
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4222:                                             ; preds = %4213
  %4223 = extractvalue { i64, i1 } %4219, 0, !nosanitize !30
  %4224 = load ptr, ptr %3769, align 8, !tbaa !33
  %4225 = trunc i16 %4217 to i8
  store i64 %4223, ptr %3768, align 8, !tbaa !31
  %4226 = getelementptr inbounds nuw i8, ptr %4224, i64 %4218
  store i8 %4225, ptr %4226, align 1, !tbaa !28
  %4227 = load i64, ptr %3768, align 8, !tbaa !31
  %4228 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4227, i64 1), !nosanitize !30
  %4229 = extractvalue { i64, i1 } %4228, 1, !nosanitize !30
  br i1 %4229, label %4230, label %4231, !prof !32, !nosanitize !30

4230:                                             ; preds = %4222
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4231:                                             ; preds = %4222
  %4232 = extractvalue { i64, i1 } %4228, 0, !nosanitize !30
  %4233 = load ptr, ptr %3769, align 8, !tbaa !33
  %4234 = load i16, ptr %3767, align 8, !tbaa !25
  %4235 = lshr i16 %4234, 8
  %4236 = trunc nuw i16 %4235 to i8
  store i64 %4232, ptr %3768, align 8, !tbaa !31
  %4237 = getelementptr inbounds nuw i8, ptr %4233, i64 %4227
  store i8 %4236, ptr %4237, align 1, !tbaa !28
  %4238 = load i32, ptr %2966, align 4, !tbaa !26
  %4239 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4238), !nosanitize !30
  %4240 = extractvalue { i32, i1 } %4239, 1, !nosanitize !30
  br i1 %4240, label %.loopexit337, label %4241, !prof !32, !nosanitize !30

4241:                                             ; preds = %4231
  %4242 = extractvalue { i32, i1 } %4239, 0, !nosanitize !30
  %4243 = lshr i32 %4214, %4242
  %4244 = trunc nuw i32 %4243 to i16
  store i16 %4244, ptr %3767, align 8, !tbaa !25
  %4245 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4238, i32 -9), !nosanitize !30
  br label %4252

4246:                                             ; preds = %4207
  %4247 = shl i32 %4212, %4210
  %4248 = trunc i32 %4247 to i16
  %4249 = or i16 %4208, %4248
  store i16 %4249, ptr %3767, align 8, !tbaa !25
  %4250 = add nsw i32 %4210, 7
  %4251 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4250, 0
  br label %4252

4252:                                             ; preds = %4152, %4241, %4246, %4157, %4066, %4060
  %4253 = phi i16 [ %4063, %4060 ], [ %4069, %4066 ], [ %4155, %4152 ], [ %4160, %4157 ], [ %4244, %4241 ], [ %4249, %4246 ]
  %4254 = phi { i32, i1 } [ %4064, %4060 ], [ %4071, %4066 ], [ %4156, %4152 ], [ %4162, %4157 ], [ %4245, %4241 ], [ %4251, %4246 ]
  %4255 = extractvalue { i32, i1 } %4254, 0
  store i32 %4255, ptr %2966, align 4, !tbaa !26
  br label %.loopexit338

.loopexit338:                                     ; preds = %3921, %4252
  %4256 = phi i16 [ %4253, %4252 ], [ %3916, %3921 ]
  %4257 = phi i32 [ %4255, %4252 ], [ %3918, %3921 ]
  %4258 = icmp eq i16 %3856, 0
  br i1 %4258, label %4262, label %4259

4259:                                             ; preds = %.loopexit338
  %4260 = select i1 %3860, i32 3, i32 4
  %4261 = select i1 %3860, i32 6, i32 7
  br label %4262

4262:                                             ; preds = %4259, %.loopexit338, %3844
  %4263 = phi i16 [ %3852, %3844 ], [ %4256, %.loopexit338 ], [ %4256, %4259 ]
  %4264 = phi i32 [ %3851, %3844 ], [ %4257, %.loopexit338 ], [ %4257, %4259 ]
  %4265 = phi i32 [ %3846, %3844 ], [ 3, %.loopexit338 ], [ %4260, %4259 ]
  %4266 = phi i32 [ %3847, %3844 ], [ 138, %.loopexit338 ], [ %4261, %4259 ]
  %4267 = phi i32 [ %3858, %3844 ], [ 0, %.loopexit338 ], [ 0, %4259 ]
  %4268 = phi i32 [ %3850, %3844 ], [ %3849, %.loopexit338 ], [ %3849, %4259 ]
  %4269 = icmp sgt i32 %3845, %3823
  br i1 %4269, label %.loopexit340, label %3839, !llvm.loop !83

.loopexit340:                                     ; preds = %4262, %3822
  %4270 = phi i16 [ %3818, %3822 ], [ %4263, %4262 ]
  %4271 = phi i32 [ %3819, %3822 ], [ %4264, %4262 ]
  %4272 = extractvalue { i32, i1 } %3667, 0, !nosanitize !30
  %4273 = icmp slt i32 %4272, 0
  br i1 %4273, label %.loopexit336, label %4274

4274:                                             ; preds = %.loopexit340
  %4275 = getelementptr i8, ptr %0, i64 2506
  %4276 = load i16, ptr %4275, align 2, !tbaa !28
  %4277 = icmp eq i16 %4276, 0
  %4278 = select i1 %4277, i32 138, i32 7
  %4279 = select i1 %4277, i32 3, i32 4
  %4280 = zext i16 %4276 to i32
  %4281 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %4282 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %4283 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %4284 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %4285 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %4286 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %4287 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %4293

4288:                                             ; preds = %4711
  %4289 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4294, i32 1), !nosanitize !30
  %4290 = extractvalue { i32, i1 } %4289, 0, !nosanitize !30
  %4291 = extractvalue { i32, i1 } %4289, 1, !nosanitize !30
  br i1 %4291, label %4292, label %4293, !prof !82, !llvm.loop !83, !nosanitize !30

4292:                                             ; preds = %4288
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

4293:                                             ; preds = %4274, %4288
  %4294 = phi i32 [ 1, %4274 ], [ %4290, %4288 ]
  %4295 = phi i32 [ %4279, %4274 ], [ %4714, %4288 ]
  %4296 = phi i32 [ %4278, %4274 ], [ %4715, %4288 ]
  %4297 = phi i32 [ 0, %4274 ], [ %4716, %4288 ]
  %4298 = phi i32 [ %4280, %4274 ], [ %4306, %4288 ]
  %4299 = phi i32 [ -1, %4274 ], [ %4717, %4288 ]
  %4300 = phi i32 [ %4271, %4274 ], [ %4713, %4288 ]
  %4301 = phi i16 [ %4270, %4274 ], [ %4712, %4288 ]
  %4302 = sext i32 %4294 to i64
  %4303 = shl nsw i64 %4302, 2
  %4304 = getelementptr i8, ptr %4275, i64 %4303
  %4305 = load i16, ptr %4304, align 2, !tbaa !28
  %4306 = zext i16 %4305 to i32
  %4307 = add nsw i32 %4297, 1
  %4308 = icmp slt i32 %4307, %4296
  %4309 = icmp eq i32 %4298, %4306
  %4310 = select i1 %4308, i1 %4309, i1 false
  br i1 %4310, label %4711, label %4311

4311:                                             ; preds = %4293
  %4312 = icmp slt i32 %4307, %4295
  br i1 %4312, label %4313, label %4373

4313:                                             ; preds = %4311
  %4314 = zext nneg i32 %4298 to i64
  %4315 = getelementptr inbounds nuw [4 x i8], ptr %4281, i64 %4314
  %4316 = getelementptr inbounds nuw i8, ptr %4315, i64 2
  br label %4317

4317:                                             ; preds = %4370, %4313
  %4318 = phi i16 [ %4365, %4370 ], [ %4301, %4313 ]
  %4319 = phi i32 [ %4367, %4370 ], [ %4300, %4313 ]
  %4320 = phi i32 [ %4371, %4370 ], [ %4307, %4313 ]
  %4321 = load i16, ptr %4316, align 2, !tbaa !28
  %4322 = zext i16 %4321 to i32
  %4323 = sub nsw i32 16, %4322
  %4324 = icmp sgt i32 %4319, %4323
  %4325 = load i16, ptr %4315, align 4, !tbaa !28
  %4326 = zext i16 %4325 to i32
  %4327 = shl i32 %4326, %4319
  %4328 = trunc i32 %4327 to i16
  %4329 = or i16 %4318, %4328
  store i16 %4329, ptr %3767, align 8, !tbaa !25
  br i1 %4324, label %4330, label %4361

.loopexit333:                                     ; preds = %4680, %4636, %4591, %4547, %4499, %4455, %4404, %4364, %4344
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

4330:                                             ; preds = %4317
  %4331 = load i64, ptr %3768, align 8, !tbaa !31
  %4332 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4331, i64 1), !nosanitize !30
  %4333 = extractvalue { i64, i1 } %4332, 1, !nosanitize !30
  br i1 %4333, label %4334, label %4335, !prof !32, !nosanitize !30

4334:                                             ; preds = %4330
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4335:                                             ; preds = %4330
  %4336 = extractvalue { i64, i1 } %4332, 0, !nosanitize !30
  %4337 = load ptr, ptr %3769, align 8, !tbaa !33
  %4338 = trunc i16 %4329 to i8
  store i64 %4336, ptr %3768, align 8, !tbaa !31
  %4339 = getelementptr inbounds nuw i8, ptr %4337, i64 %4331
  store i8 %4338, ptr %4339, align 1, !tbaa !28
  %4340 = load i64, ptr %3768, align 8, !tbaa !31
  %4341 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4340, i64 1), !nosanitize !30
  %4342 = extractvalue { i64, i1 } %4341, 1, !nosanitize !30
  br i1 %4342, label %4343, label %4344, !prof !32, !nosanitize !30

4343:                                             ; preds = %4354, %4335
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4344:                                             ; preds = %4335
  %4345 = extractvalue { i64, i1 } %4341, 0, !nosanitize !30
  %4346 = load ptr, ptr %3769, align 8, !tbaa !33
  %4347 = load i16, ptr %3767, align 8, !tbaa !25
  %4348 = lshr i16 %4347, 8
  %4349 = trunc nuw i16 %4348 to i8
  store i64 %4345, ptr %3768, align 8, !tbaa !31
  %4350 = getelementptr inbounds nuw i8, ptr %4346, i64 %4340
  store i8 %4349, ptr %4350, align 1, !tbaa !28
  %4351 = load i32, ptr %2966, align 4, !tbaa !26
  %4352 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4351), !nosanitize !30
  %4353 = extractvalue { i32, i1 } %4352, 1, !nosanitize !30
  br i1 %4353, label %.loopexit333, label %4354, !prof !32, !nosanitize !30

4354:                                             ; preds = %4344
  %4355 = extractvalue { i32, i1 } %4352, 0, !nosanitize !30
  %4356 = lshr i32 %4326, %4355
  %4357 = trunc nuw i32 %4356 to i16
  store i16 %4357, ptr %3767, align 8, !tbaa !25
  %4358 = add nsw i32 %4322, -16
  %4359 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4351, i32 %4358), !nosanitize !30
  %4360 = extractvalue { i32, i1 } %4359, 1, !nosanitize !30
  br i1 %4360, label %4343, label %4364, !prof !32, !nosanitize !30

4361:                                             ; preds = %4317
  %4362 = add nsw i32 %4319, %4322
  %4363 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4362, 0
  br label %4364

4364:                                             ; preds = %4361, %4354
  %4365 = phi i16 [ %4357, %4354 ], [ %4329, %4361 ]
  %4366 = phi { i32, i1 } [ %4359, %4354 ], [ %4363, %4361 ]
  %4367 = extractvalue { i32, i1 } %4366, 0
  store i32 %4367, ptr %2966, align 4, !tbaa !26
  %4368 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4320, i32 -1)
  %4369 = extractvalue { i32, i1 } %4368, 1, !nosanitize !30
  br i1 %4369, label %.loopexit333, label %4370, !prof !32, !nosanitize !30

4370:                                             ; preds = %4364
  %4371 = extractvalue { i32, i1 } %4368, 0, !nosanitize !30
  %4372 = icmp eq i32 %4371, 0
  br i1 %4372, label %.loopexit334, label %4317, !llvm.loop !84

4373:                                             ; preds = %4311
  %4374 = icmp eq i32 %4298, 0
  br i1 %4374, label %4521, label %4375

4375:                                             ; preds = %4373
  %4376 = icmp eq i32 %4298, %4299
  br i1 %4376, label %4428, label %4377

4377:                                             ; preds = %4375
  %4378 = zext nneg i32 %4298 to i64
  %4379 = getelementptr inbounds nuw [4 x i8], ptr %4281, i64 %4378
  %4380 = getelementptr inbounds nuw i8, ptr %4379, i64 2
  %4381 = load i16, ptr %4380, align 2, !tbaa !28
  %4382 = zext i16 %4381 to i32
  %4383 = sub nsw i32 16, %4382
  %4384 = icmp sgt i32 %4300, %4383
  %4385 = load i16, ptr %4379, align 4, !tbaa !28
  %4386 = zext i16 %4385 to i32
  %4387 = shl i32 %4386, %4300
  %4388 = trunc i32 %4387 to i16
  %4389 = or i16 %4301, %4388
  store i16 %4389, ptr %3767, align 8, !tbaa !25
  br i1 %4384, label %4390, label %4421

4390:                                             ; preds = %4377
  %4391 = load i64, ptr %3768, align 8, !tbaa !31
  %4392 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4391, i64 1), !nosanitize !30
  %4393 = extractvalue { i64, i1 } %4392, 1, !nosanitize !30
  br i1 %4393, label %4394, label %4395, !prof !32, !nosanitize !30

4394:                                             ; preds = %4390
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4395:                                             ; preds = %4390
  %4396 = extractvalue { i64, i1 } %4392, 0, !nosanitize !30
  %4397 = load ptr, ptr %3769, align 8, !tbaa !33
  %4398 = trunc i16 %4389 to i8
  store i64 %4396, ptr %3768, align 8, !tbaa !31
  %4399 = getelementptr inbounds nuw i8, ptr %4397, i64 %4391
  store i8 %4398, ptr %4399, align 1, !tbaa !28
  %4400 = load i64, ptr %3768, align 8, !tbaa !31
  %4401 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4400, i64 1), !nosanitize !30
  %4402 = extractvalue { i64, i1 } %4401, 1, !nosanitize !30
  br i1 %4402, label %4403, label %4404, !prof !32, !nosanitize !30

4403:                                             ; preds = %4414, %4395
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4404:                                             ; preds = %4395
  %4405 = extractvalue { i64, i1 } %4401, 0, !nosanitize !30
  %4406 = load ptr, ptr %3769, align 8, !tbaa !33
  %4407 = load i16, ptr %3767, align 8, !tbaa !25
  %4408 = lshr i16 %4407, 8
  %4409 = trunc nuw i16 %4408 to i8
  store i64 %4405, ptr %3768, align 8, !tbaa !31
  %4410 = getelementptr inbounds nuw i8, ptr %4406, i64 %4400
  store i8 %4409, ptr %4410, align 1, !tbaa !28
  %4411 = load i32, ptr %2966, align 4, !tbaa !26
  %4412 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4411), !nosanitize !30
  %4413 = extractvalue { i32, i1 } %4412, 1, !nosanitize !30
  br i1 %4413, label %.loopexit333, label %4414, !prof !32, !nosanitize !30

4414:                                             ; preds = %4404
  %4415 = extractvalue { i32, i1 } %4412, 0, !nosanitize !30
  %4416 = lshr i32 %4386, %4415
  %4417 = trunc nuw i32 %4416 to i16
  store i16 %4417, ptr %3767, align 8, !tbaa !25
  %4418 = add nsw i32 %4382, -16
  %4419 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4411, i32 %4418), !nosanitize !30
  %4420 = extractvalue { i32, i1 } %4419, 1, !nosanitize !30
  br i1 %4420, label %4403, label %4424, !prof !32, !nosanitize !30

4421:                                             ; preds = %4377
  %4422 = add nsw i32 %4300, %4382
  %4423 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4422, 0
  br label %4424

4424:                                             ; preds = %4421, %4414
  %4425 = phi i16 [ %4417, %4414 ], [ %4389, %4421 ]
  %4426 = phi { i32, i1 } [ %4419, %4414 ], [ %4423, %4421 ]
  %4427 = extractvalue { i32, i1 } %4426, 0
  store i32 %4427, ptr %2966, align 4, !tbaa !26
  br label %4428

4428:                                             ; preds = %4424, %4375
  %4429 = phi i16 [ %4425, %4424 ], [ %4301, %4375 ]
  %4430 = phi i32 [ %4427, %4424 ], [ %4300, %4375 ]
  %4431 = phi i32 [ %4297, %4424 ], [ %4307, %4375 ]
  %4432 = load i16, ptr %4283, align 2, !tbaa !28
  %4433 = zext i16 %4432 to i32
  %4434 = sub nsw i32 16, %4433
  %4435 = icmp sgt i32 %4430, %4434
  %4436 = load i16, ptr %4282, align 4, !tbaa !28
  %4437 = zext i16 %4436 to i32
  %4438 = shl i32 %4437, %4430
  %4439 = trunc i32 %4438 to i16
  %4440 = or i16 %4429, %4439
  store i16 %4440, ptr %3767, align 8, !tbaa !25
  br i1 %4435, label %4441, label %4472

4441:                                             ; preds = %4428
  %4442 = load i64, ptr %3768, align 8, !tbaa !31
  %4443 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4442, i64 1), !nosanitize !30
  %4444 = extractvalue { i64, i1 } %4443, 1, !nosanitize !30
  br i1 %4444, label %4445, label %4446, !prof !32, !nosanitize !30

4445:                                             ; preds = %4441
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4446:                                             ; preds = %4441
  %4447 = extractvalue { i64, i1 } %4443, 0, !nosanitize !30
  %4448 = load ptr, ptr %3769, align 8, !tbaa !33
  %4449 = trunc i16 %4440 to i8
  store i64 %4447, ptr %3768, align 8, !tbaa !31
  %4450 = getelementptr inbounds nuw i8, ptr %4448, i64 %4442
  store i8 %4449, ptr %4450, align 1, !tbaa !28
  %4451 = load i64, ptr %3768, align 8, !tbaa !31
  %4452 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4451, i64 1), !nosanitize !30
  %4453 = extractvalue { i64, i1 } %4452, 1, !nosanitize !30
  br i1 %4453, label %4454, label %4455, !prof !32, !nosanitize !30

4454:                                             ; preds = %4465, %4446
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4455:                                             ; preds = %4446
  %4456 = extractvalue { i64, i1 } %4452, 0, !nosanitize !30
  %4457 = load ptr, ptr %3769, align 8, !tbaa !33
  %4458 = load i16, ptr %3767, align 8, !tbaa !25
  %4459 = lshr i16 %4458, 8
  %4460 = trunc nuw i16 %4459 to i8
  store i64 %4456, ptr %3768, align 8, !tbaa !31
  %4461 = getelementptr inbounds nuw i8, ptr %4457, i64 %4451
  store i8 %4460, ptr %4461, align 1, !tbaa !28
  %4462 = load i32, ptr %2966, align 4, !tbaa !26
  %4463 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4462), !nosanitize !30
  %4464 = extractvalue { i32, i1 } %4463, 1, !nosanitize !30
  br i1 %4464, label %.loopexit333, label %4465, !prof !32, !nosanitize !30

4465:                                             ; preds = %4455
  %4466 = extractvalue { i32, i1 } %4463, 0, !nosanitize !30
  %4467 = lshr i32 %4437, %4466
  %4468 = trunc nuw i32 %4467 to i16
  store i16 %4468, ptr %3767, align 8, !tbaa !25
  %4469 = add nsw i32 %4433, -16
  %4470 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4462, i32 %4469), !nosanitize !30
  %4471 = extractvalue { i32, i1 } %4470, 1, !nosanitize !30
  br i1 %4471, label %4454, label %4475, !prof !32, !nosanitize !30

4472:                                             ; preds = %4428
  %4473 = add nsw i32 %4430, %4433
  %4474 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4473, 0
  br label %4475

4475:                                             ; preds = %4472, %4465
  %4476 = phi i16 [ %4468, %4465 ], [ %4440, %4472 ]
  %4477 = phi { i32, i1 } [ %4470, %4465 ], [ %4474, %4472 ]
  %4478 = extractvalue { i32, i1 } %4477, 0
  store i32 %4478, ptr %2966, align 4, !tbaa !26
  %4479 = icmp sgt i32 %4478, 14
  %4480 = add i32 %4431, 65533
  br i1 %4479, label %4481, label %4515

4481:                                             ; preds = %4475
  %4482 = and i32 %4480, 65535
  %4483 = shl i32 %4480, %4478
  %4484 = trunc i32 %4483 to i16
  %4485 = or i16 %4476, %4484
  store i16 %4485, ptr %3767, align 8, !tbaa !25
  %4486 = load i64, ptr %3768, align 8, !tbaa !31
  %4487 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4486, i64 1), !nosanitize !30
  %4488 = extractvalue { i64, i1 } %4487, 1, !nosanitize !30
  br i1 %4488, label %4489, label %4490, !prof !32, !nosanitize !30

4489:                                             ; preds = %4481
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4490:                                             ; preds = %4481
  %4491 = extractvalue { i64, i1 } %4487, 0, !nosanitize !30
  %4492 = load ptr, ptr %3769, align 8, !tbaa !33
  %4493 = trunc i16 %4485 to i8
  store i64 %4491, ptr %3768, align 8, !tbaa !31
  %4494 = getelementptr inbounds nuw i8, ptr %4492, i64 %4486
  store i8 %4493, ptr %4494, align 1, !tbaa !28
  %4495 = load i64, ptr %3768, align 8, !tbaa !31
  %4496 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4495, i64 1), !nosanitize !30
  %4497 = extractvalue { i64, i1 } %4496, 1, !nosanitize !30
  br i1 %4497, label %4498, label %4499, !prof !32, !nosanitize !30

4498:                                             ; preds = %4509, %4490
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4499:                                             ; preds = %4490
  %4500 = extractvalue { i64, i1 } %4496, 0, !nosanitize !30
  %4501 = load ptr, ptr %3769, align 8, !tbaa !33
  %4502 = load i16, ptr %3767, align 8, !tbaa !25
  %4503 = lshr i16 %4502, 8
  %4504 = trunc nuw i16 %4503 to i8
  store i64 %4500, ptr %3768, align 8, !tbaa !31
  %4505 = getelementptr inbounds nuw i8, ptr %4501, i64 %4495
  store i8 %4504, ptr %4505, align 1, !tbaa !28
  %4506 = load i32, ptr %2966, align 4, !tbaa !26
  %4507 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4506), !nosanitize !30
  %4508 = extractvalue { i32, i1 } %4507, 1, !nosanitize !30
  br i1 %4508, label %.loopexit333, label %4509, !prof !32, !nosanitize !30

4509:                                             ; preds = %4499
  %4510 = extractvalue { i32, i1 } %4507, 0, !nosanitize !30
  %4511 = lshr i32 %4482, %4510
  %4512 = trunc nuw i32 %4511 to i16
  store i16 %4512, ptr %3767, align 8, !tbaa !25
  %4513 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4506, i32 -14), !nosanitize !30
  %4514 = extractvalue { i32, i1 } %4513, 1, !nosanitize !30
  br i1 %4514, label %4498, label %4701, !prof !32, !nosanitize !30

4515:                                             ; preds = %4475
  %4516 = shl i32 %4480, %4478
  %4517 = trunc i32 %4516 to i16
  %4518 = or i16 %4476, %4517
  store i16 %4518, ptr %3767, align 8, !tbaa !25
  %4519 = add nsw i32 %4478, 2
  %4520 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4519, 0
  br label %4701

4521:                                             ; preds = %4373
  %4522 = icmp slt i32 %4297, 10
  br i1 %4522, label %4523, label %4612

4523:                                             ; preds = %4521
  %4524 = load i16, ptr %4287, align 2, !tbaa !28
  %4525 = zext i16 %4524 to i32
  %4526 = sub nsw i32 16, %4525
  %4527 = icmp sgt i32 %4300, %4526
  %4528 = load i16, ptr %4286, align 4, !tbaa !28
  %4529 = zext i16 %4528 to i32
  %4530 = shl i32 %4529, %4300
  %4531 = trunc i32 %4530 to i16
  %4532 = or i16 %4301, %4531
  store i16 %4532, ptr %3767, align 8, !tbaa !25
  br i1 %4527, label %4533, label %4564

4533:                                             ; preds = %4523
  %4534 = load i64, ptr %3768, align 8, !tbaa !31
  %4535 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4534, i64 1), !nosanitize !30
  %4536 = extractvalue { i64, i1 } %4535, 1, !nosanitize !30
  br i1 %4536, label %4537, label %4538, !prof !32, !nosanitize !30

4537:                                             ; preds = %4533
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4538:                                             ; preds = %4533
  %4539 = extractvalue { i64, i1 } %4535, 0, !nosanitize !30
  %4540 = load ptr, ptr %3769, align 8, !tbaa !33
  %4541 = trunc i16 %4532 to i8
  store i64 %4539, ptr %3768, align 8, !tbaa !31
  %4542 = getelementptr inbounds nuw i8, ptr %4540, i64 %4534
  store i8 %4541, ptr %4542, align 1, !tbaa !28
  %4543 = load i64, ptr %3768, align 8, !tbaa !31
  %4544 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4543, i64 1), !nosanitize !30
  %4545 = extractvalue { i64, i1 } %4544, 1, !nosanitize !30
  br i1 %4545, label %4546, label %4547, !prof !32, !nosanitize !30

4546:                                             ; preds = %4557, %4538
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4547:                                             ; preds = %4538
  %4548 = extractvalue { i64, i1 } %4544, 0, !nosanitize !30
  %4549 = load ptr, ptr %3769, align 8, !tbaa !33
  %4550 = load i16, ptr %3767, align 8, !tbaa !25
  %4551 = lshr i16 %4550, 8
  %4552 = trunc nuw i16 %4551 to i8
  store i64 %4548, ptr %3768, align 8, !tbaa !31
  %4553 = getelementptr inbounds nuw i8, ptr %4549, i64 %4543
  store i8 %4552, ptr %4553, align 1, !tbaa !28
  %4554 = load i32, ptr %2966, align 4, !tbaa !26
  %4555 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4554), !nosanitize !30
  %4556 = extractvalue { i32, i1 } %4555, 1, !nosanitize !30
  br i1 %4556, label %.loopexit333, label %4557, !prof !32, !nosanitize !30

4557:                                             ; preds = %4547
  %4558 = extractvalue { i32, i1 } %4555, 0, !nosanitize !30
  %4559 = lshr i32 %4529, %4558
  %4560 = trunc nuw i32 %4559 to i16
  store i16 %4560, ptr %3767, align 8, !tbaa !25
  %4561 = add nsw i32 %4525, -16
  %4562 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4554, i32 %4561), !nosanitize !30
  %4563 = extractvalue { i32, i1 } %4562, 1, !nosanitize !30
  br i1 %4563, label %4546, label %4567, !prof !32, !nosanitize !30

4564:                                             ; preds = %4523
  %4565 = add nsw i32 %4300, %4525
  %4566 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4565, 0
  br label %4567

4567:                                             ; preds = %4564, %4557
  %4568 = phi i16 [ %4560, %4557 ], [ %4532, %4564 ]
  %4569 = phi { i32, i1 } [ %4562, %4557 ], [ %4566, %4564 ]
  %4570 = extractvalue { i32, i1 } %4569, 0
  store i32 %4570, ptr %2966, align 4, !tbaa !26
  %4571 = icmp sgt i32 %4570, 13
  %4572 = add nsw i32 %4297, 65534
  br i1 %4571, label %4573, label %4606

4573:                                             ; preds = %4567
  %4574 = and i32 %4572, 65535
  %4575 = shl i32 %4572, %4570
  %4576 = trunc i32 %4575 to i16
  %4577 = or i16 %4568, %4576
  store i16 %4577, ptr %3767, align 8, !tbaa !25
  %4578 = load i64, ptr %3768, align 8, !tbaa !31
  %4579 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4578, i64 1), !nosanitize !30
  %4580 = extractvalue { i64, i1 } %4579, 1, !nosanitize !30
  br i1 %4580, label %4581, label %4582, !prof !32, !nosanitize !30

4581:                                             ; preds = %4573
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4582:                                             ; preds = %4573
  %4583 = extractvalue { i64, i1 } %4579, 0, !nosanitize !30
  %4584 = load ptr, ptr %3769, align 8, !tbaa !33
  %4585 = trunc i16 %4577 to i8
  store i64 %4583, ptr %3768, align 8, !tbaa !31
  %4586 = getelementptr inbounds nuw i8, ptr %4584, i64 %4578
  store i8 %4585, ptr %4586, align 1, !tbaa !28
  %4587 = load i64, ptr %3768, align 8, !tbaa !31
  %4588 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4587, i64 1), !nosanitize !30
  %4589 = extractvalue { i64, i1 } %4588, 1, !nosanitize !30
  br i1 %4589, label %4590, label %4591, !prof !32, !nosanitize !30

4590:                                             ; preds = %4582
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4591:                                             ; preds = %4582
  %4592 = extractvalue { i64, i1 } %4588, 0, !nosanitize !30
  %4593 = load ptr, ptr %3769, align 8, !tbaa !33
  %4594 = load i16, ptr %3767, align 8, !tbaa !25
  %4595 = lshr i16 %4594, 8
  %4596 = trunc nuw i16 %4595 to i8
  store i64 %4592, ptr %3768, align 8, !tbaa !31
  %4597 = getelementptr inbounds nuw i8, ptr %4593, i64 %4587
  store i8 %4596, ptr %4597, align 1, !tbaa !28
  %4598 = load i32, ptr %2966, align 4, !tbaa !26
  %4599 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4598), !nosanitize !30
  %4600 = extractvalue { i32, i1 } %4599, 1, !nosanitize !30
  br i1 %4600, label %.loopexit333, label %4601, !prof !32, !nosanitize !30

4601:                                             ; preds = %4591
  %4602 = extractvalue { i32, i1 } %4599, 0, !nosanitize !30
  %4603 = lshr i32 %4574, %4602
  %4604 = trunc nuw i32 %4603 to i16
  store i16 %4604, ptr %3767, align 8, !tbaa !25
  %4605 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4598, i32 -13), !nosanitize !30
  br label %4701

4606:                                             ; preds = %4567
  %4607 = shl i32 %4572, %4570
  %4608 = trunc i32 %4607 to i16
  %4609 = or i16 %4568, %4608
  store i16 %4609, ptr %3767, align 8, !tbaa !25
  %4610 = add nsw i32 %4570, 3
  %4611 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4610, 0
  br label %4701

4612:                                             ; preds = %4521
  %4613 = load i16, ptr %4285, align 2, !tbaa !28
  %4614 = zext i16 %4613 to i32
  %4615 = sub nsw i32 16, %4614
  %4616 = icmp sgt i32 %4300, %4615
  %4617 = load i16, ptr %4284, align 4, !tbaa !28
  %4618 = zext i16 %4617 to i32
  %4619 = shl i32 %4618, %4300
  %4620 = trunc i32 %4619 to i16
  %4621 = or i16 %4301, %4620
  store i16 %4621, ptr %3767, align 8, !tbaa !25
  br i1 %4616, label %4622, label %4653

4622:                                             ; preds = %4612
  %4623 = load i64, ptr %3768, align 8, !tbaa !31
  %4624 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4623, i64 1), !nosanitize !30
  %4625 = extractvalue { i64, i1 } %4624, 1, !nosanitize !30
  br i1 %4625, label %4626, label %4627, !prof !32, !nosanitize !30

4626:                                             ; preds = %4622
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4627:                                             ; preds = %4622
  %4628 = extractvalue { i64, i1 } %4624, 0, !nosanitize !30
  %4629 = load ptr, ptr %3769, align 8, !tbaa !33
  %4630 = trunc i16 %4621 to i8
  store i64 %4628, ptr %3768, align 8, !tbaa !31
  %4631 = getelementptr inbounds nuw i8, ptr %4629, i64 %4623
  store i8 %4630, ptr %4631, align 1, !tbaa !28
  %4632 = load i64, ptr %3768, align 8, !tbaa !31
  %4633 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4632, i64 1), !nosanitize !30
  %4634 = extractvalue { i64, i1 } %4633, 1, !nosanitize !30
  br i1 %4634, label %4635, label %4636, !prof !32, !nosanitize !30

4635:                                             ; preds = %4646, %4627
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4636:                                             ; preds = %4627
  %4637 = extractvalue { i64, i1 } %4633, 0, !nosanitize !30
  %4638 = load ptr, ptr %3769, align 8, !tbaa !33
  %4639 = load i16, ptr %3767, align 8, !tbaa !25
  %4640 = lshr i16 %4639, 8
  %4641 = trunc nuw i16 %4640 to i8
  store i64 %4637, ptr %3768, align 8, !tbaa !31
  %4642 = getelementptr inbounds nuw i8, ptr %4638, i64 %4632
  store i8 %4641, ptr %4642, align 1, !tbaa !28
  %4643 = load i32, ptr %2966, align 4, !tbaa !26
  %4644 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4643), !nosanitize !30
  %4645 = extractvalue { i32, i1 } %4644, 1, !nosanitize !30
  br i1 %4645, label %.loopexit333, label %4646, !prof !32, !nosanitize !30

4646:                                             ; preds = %4636
  %4647 = extractvalue { i32, i1 } %4644, 0, !nosanitize !30
  %4648 = lshr i32 %4618, %4647
  %4649 = trunc nuw i32 %4648 to i16
  store i16 %4649, ptr %3767, align 8, !tbaa !25
  %4650 = add nsw i32 %4614, -16
  %4651 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4643, i32 %4650), !nosanitize !30
  %4652 = extractvalue { i32, i1 } %4651, 1, !nosanitize !30
  br i1 %4652, label %4635, label %4656, !prof !32, !nosanitize !30

4653:                                             ; preds = %4612
  %4654 = add nsw i32 %4300, %4614
  %4655 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4654, 0
  br label %4656

4656:                                             ; preds = %4653, %4646
  %4657 = phi i16 [ %4649, %4646 ], [ %4621, %4653 ]
  %4658 = phi { i32, i1 } [ %4651, %4646 ], [ %4655, %4653 ]
  %4659 = extractvalue { i32, i1 } %4658, 0
  store i32 %4659, ptr %2966, align 4, !tbaa !26
  %4660 = icmp sgt i32 %4659, 9
  %4661 = add nuw i32 %4297, 65526
  br i1 %4660, label %4662, label %4695

4662:                                             ; preds = %4656
  %4663 = and i32 %4661, 65535
  %4664 = shl i32 %4661, %4659
  %4665 = trunc i32 %4664 to i16
  %4666 = or i16 %4657, %4665
  store i16 %4666, ptr %3767, align 8, !tbaa !25
  %4667 = load i64, ptr %3768, align 8, !tbaa !31
  %4668 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4667, i64 1), !nosanitize !30
  %4669 = extractvalue { i64, i1 } %4668, 1, !nosanitize !30
  br i1 %4669, label %4670, label %4671, !prof !32, !nosanitize !30

4670:                                             ; preds = %4662
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4671:                                             ; preds = %4662
  %4672 = extractvalue { i64, i1 } %4668, 0, !nosanitize !30
  %4673 = load ptr, ptr %3769, align 8, !tbaa !33
  %4674 = trunc i16 %4666 to i8
  store i64 %4672, ptr %3768, align 8, !tbaa !31
  %4675 = getelementptr inbounds nuw i8, ptr %4673, i64 %4667
  store i8 %4674, ptr %4675, align 1, !tbaa !28
  %4676 = load i64, ptr %3768, align 8, !tbaa !31
  %4677 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4676, i64 1), !nosanitize !30
  %4678 = extractvalue { i64, i1 } %4677, 1, !nosanitize !30
  br i1 %4678, label %4679, label %4680, !prof !32, !nosanitize !30

4679:                                             ; preds = %4671
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4680:                                             ; preds = %4671
  %4681 = extractvalue { i64, i1 } %4677, 0, !nosanitize !30
  %4682 = load ptr, ptr %3769, align 8, !tbaa !33
  %4683 = load i16, ptr %3767, align 8, !tbaa !25
  %4684 = lshr i16 %4683, 8
  %4685 = trunc nuw i16 %4684 to i8
  store i64 %4681, ptr %3768, align 8, !tbaa !31
  %4686 = getelementptr inbounds nuw i8, ptr %4682, i64 %4676
  store i8 %4685, ptr %4686, align 1, !tbaa !28
  %4687 = load i32, ptr %2966, align 4, !tbaa !26
  %4688 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4687), !nosanitize !30
  %4689 = extractvalue { i32, i1 } %4688, 1, !nosanitize !30
  br i1 %4689, label %.loopexit333, label %4690, !prof !32, !nosanitize !30

4690:                                             ; preds = %4680
  %4691 = extractvalue { i32, i1 } %4688, 0, !nosanitize !30
  %4692 = lshr i32 %4663, %4691
  %4693 = trunc nuw i32 %4692 to i16
  store i16 %4693, ptr %3767, align 8, !tbaa !25
  %4694 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4687, i32 -9), !nosanitize !30
  br label %4701

4695:                                             ; preds = %4656
  %4696 = shl i32 %4661, %4659
  %4697 = trunc i32 %4696 to i16
  %4698 = or i16 %4657, %4697
  store i16 %4698, ptr %3767, align 8, !tbaa !25
  %4699 = add nsw i32 %4659, 7
  %4700 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4699, 0
  br label %4701

4701:                                             ; preds = %4601, %4690, %4695, %4606, %4515, %4509
  %4702 = phi i16 [ %4512, %4509 ], [ %4518, %4515 ], [ %4604, %4601 ], [ %4609, %4606 ], [ %4693, %4690 ], [ %4698, %4695 ]
  %4703 = phi { i32, i1 } [ %4513, %4509 ], [ %4520, %4515 ], [ %4605, %4601 ], [ %4611, %4606 ], [ %4694, %4690 ], [ %4700, %4695 ]
  %4704 = extractvalue { i32, i1 } %4703, 0
  store i32 %4704, ptr %2966, align 4, !tbaa !26
  br label %.loopexit334

.loopexit334:                                     ; preds = %4370, %4701
  %4705 = phi i16 [ %4702, %4701 ], [ %4365, %4370 ]
  %4706 = phi i32 [ %4704, %4701 ], [ %4367, %4370 ]
  %4707 = icmp eq i16 %4305, 0
  br i1 %4707, label %4711, label %4708

4708:                                             ; preds = %.loopexit334
  %4709 = select i1 %4309, i32 3, i32 4
  %4710 = select i1 %4309, i32 6, i32 7
  br label %4711

4711:                                             ; preds = %4708, %.loopexit334, %4293
  %4712 = phi i16 [ %4301, %4293 ], [ %4705, %.loopexit334 ], [ %4705, %4708 ]
  %4713 = phi i32 [ %4300, %4293 ], [ %4706, %.loopexit334 ], [ %4706, %4708 ]
  %4714 = phi i32 [ %4295, %4293 ], [ 3, %.loopexit334 ], [ %4709, %4708 ]
  %4715 = phi i32 [ %4296, %4293 ], [ 138, %.loopexit334 ], [ %4710, %4708 ]
  %4716 = phi i32 [ %4307, %4293 ], [ 0, %.loopexit334 ], [ 0, %4708 ]
  %4717 = phi i32 [ %4299, %4293 ], [ %4298, %.loopexit334 ], [ %4298, %4708 ]
  %4718 = icmp sgt i32 %4294, %4272
  br i1 %4718, label %.loopexit336, label %4288, !llvm.loop !83

.loopexit336:                                     ; preds = %4711, %.loopexit340
  %4719 = phi i16 [ %4270, %.loopexit340 ], [ %4712, %4711 ]
  %4720 = phi i32 [ %4271, %.loopexit340 ], [ %4713, %4711 ]
  %4721 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %4722 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %4723 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %4724 = load i32, ptr %4723, align 4, !tbaa !29
  %4725 = icmp eq i32 %4724, 0
  br i1 %4725, label %.loopexit332, label %4726

4726:                                             ; preds = %.loopexit336
  %4727 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %4728

4728:                                             ; preds = %5050, %4726
  %4729 = phi i16 [ %5051, %5050 ], [ %4719, %4726 ]
  %4730 = phi i32 [ %5052, %5050 ], [ %4720, %4726 ]
  %4731 = phi i32 [ %4750, %5050 ], [ 0, %4726 ]
  %4732 = load ptr, ptr %4727, align 8, !tbaa !79
  %4733 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4731, i32 2)
  %4734 = extractvalue { i32, i1 } %4733, 0, !nosanitize !30
  %4735 = extractvalue { i32, i1 } %4733, 1, !nosanitize !30
  br i1 %4735, label %4736, label %4737, !prof !32, !nosanitize !30

4736:                                             ; preds = %4728
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4737:                                             ; preds = %4728
  %4738 = add nuw i32 %4731, 1
  %4739 = zext i32 %4731 to i64
  %4740 = getelementptr inbounds nuw i8, ptr %4732, i64 %4739
  %4741 = load i8, ptr %4740, align 1, !tbaa !28
  %4742 = zext i8 %4741 to i32
  %4743 = zext i32 %4738 to i64
  %4744 = getelementptr inbounds nuw i8, ptr %4732, i64 %4743
  %4745 = load i8, ptr %4744, align 1, !tbaa !28
  %4746 = zext i8 %4745 to i32
  %4747 = shl nuw nsw i32 %4746, 8
  %4748 = or disjoint i32 %4747, %4742
  %4749 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4734, i32 1), !nosanitize !30
  %4750 = extractvalue { i32, i1 } %4749, 0, !nosanitize !30
  %4751 = extractvalue { i32, i1 } %4749, 1, !nosanitize !30
  br i1 %4751, label %4752, label %4753, !prof !32, !nosanitize !30

4752:                                             ; preds = %4737
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4753:                                             ; preds = %4737
  %4754 = zext i32 %4734 to i64
  %4755 = getelementptr inbounds nuw i8, ptr %4732, i64 %4754
  %4756 = load i8, ptr %4755, align 1, !tbaa !28
  %4757 = zext i8 %4756 to i32
  %4758 = icmp eq i32 %4748, 0
  %4759 = zext i8 %4756 to i64
  br i1 %4758, label %4760, label %4807

4760:                                             ; preds = %4753
  %4761 = getelementptr inbounds nuw [4 x i8], ptr %4721, i64 %4759
  %4762 = getelementptr inbounds nuw i8, ptr %4761, i64 2
  %4763 = load i16, ptr %4762, align 2, !tbaa !28
  %4764 = zext i16 %4763 to i32
  %4765 = sub nsw i32 16, %4764
  %4766 = icmp sgt i32 %4730, %4765
  %4767 = load i16, ptr %4761, align 2, !tbaa !28
  %4768 = zext i16 %4767 to i32
  %4769 = shl i32 %4768, %4730
  %4770 = trunc i32 %4769 to i16
  %4771 = or i16 %4729, %4770
  store i16 %4771, ptr %3767, align 8, !tbaa !25
  br i1 %4766, label %4773, label %4804

4772:                                             ; preds = %4905, %4895, %4871, %4865, %4837, %4787
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

4773:                                             ; preds = %4760
  %4774 = load i64, ptr %3768, align 8, !tbaa !31
  %4775 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4774, i64 1), !nosanitize !30
  %4776 = extractvalue { i64, i1 } %4775, 1, !nosanitize !30
  br i1 %4776, label %4777, label %4778, !prof !32, !nosanitize !30

4777:                                             ; preds = %4773
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4778:                                             ; preds = %4773
  %4779 = extractvalue { i64, i1 } %4775, 0, !nosanitize !30
  %4780 = load ptr, ptr %3769, align 8, !tbaa !33
  %4781 = trunc i16 %4771 to i8
  store i64 %4779, ptr %3768, align 8, !tbaa !31
  %4782 = getelementptr inbounds nuw i8, ptr %4780, i64 %4774
  store i8 %4781, ptr %4782, align 1, !tbaa !28
  %4783 = load i64, ptr %3768, align 8, !tbaa !31
  %4784 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4783, i64 1), !nosanitize !30
  %4785 = extractvalue { i64, i1 } %4784, 1, !nosanitize !30
  br i1 %4785, label %4786, label %4787, !prof !32, !nosanitize !30

4786:                                             ; preds = %4797, %4778
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4787:                                             ; preds = %4778
  %4788 = extractvalue { i64, i1 } %4784, 0, !nosanitize !30
  %4789 = load ptr, ptr %3769, align 8, !tbaa !33
  %4790 = load i16, ptr %3767, align 8, !tbaa !25
  %4791 = lshr i16 %4790, 8
  %4792 = trunc nuw i16 %4791 to i8
  store i64 %4788, ptr %3768, align 8, !tbaa !31
  %4793 = getelementptr inbounds nuw i8, ptr %4789, i64 %4783
  store i8 %4792, ptr %4793, align 1, !tbaa !28
  %4794 = load i32, ptr %2966, align 4, !tbaa !26
  %4795 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4794), !nosanitize !30
  %4796 = extractvalue { i32, i1 } %4795, 1, !nosanitize !30
  br i1 %4796, label %4772, label %4797, !prof !32, !nosanitize !30

4797:                                             ; preds = %4787
  %4798 = extractvalue { i32, i1 } %4795, 0, !nosanitize !30
  %4799 = lshr i32 %4768, %4798
  %4800 = trunc nuw i32 %4799 to i16
  store i16 %4800, ptr %3767, align 8, !tbaa !25
  %4801 = add nsw i32 %4764, -16
  %4802 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4794, i32 %4801), !nosanitize !30
  %4803 = extractvalue { i32, i1 } %4802, 1, !nosanitize !30
  br i1 %4803, label %4786, label %5046, !prof !32, !nosanitize !30

4804:                                             ; preds = %4760
  %4805 = add nsw i32 %4730, %4764
  %4806 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4805, 0
  br label %5046

4807:                                             ; preds = %4753
  %4808 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %4759
  %4809 = load i8, ptr %4808, align 1, !tbaa !28
  %4810 = zext i8 %4809 to i64
  %4811 = getelementptr inbounds nuw [4 x i8], ptr %4721, i64 %4810
  %4812 = getelementptr inbounds nuw i8, ptr %4811, i64 1028
  %4813 = getelementptr inbounds nuw i8, ptr %4811, i64 1030
  %4814 = load i16, ptr %4813, align 2, !tbaa !28
  %4815 = zext i16 %4814 to i32
  %4816 = sub nsw i32 16, %4815
  %4817 = icmp sgt i32 %4730, %4816
  %4818 = load i16, ptr %4812, align 2, !tbaa !28
  %4819 = zext i16 %4818 to i32
  %4820 = shl i32 %4819, %4730
  %4821 = trunc i32 %4820 to i16
  %4822 = or i16 %4729, %4821
  store i16 %4822, ptr %3767, align 8, !tbaa !25
  br i1 %4817, label %4823, label %4854

4823:                                             ; preds = %4807
  %4824 = load i64, ptr %3768, align 8, !tbaa !31
  %4825 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4824, i64 1), !nosanitize !30
  %4826 = extractvalue { i64, i1 } %4825, 1, !nosanitize !30
  br i1 %4826, label %4827, label %4828, !prof !32, !nosanitize !30

4827:                                             ; preds = %4823
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4828:                                             ; preds = %4823
  %4829 = extractvalue { i64, i1 } %4825, 0, !nosanitize !30
  %4830 = load ptr, ptr %3769, align 8, !tbaa !33
  %4831 = trunc i16 %4822 to i8
  store i64 %4829, ptr %3768, align 8, !tbaa !31
  %4832 = getelementptr inbounds nuw i8, ptr %4830, i64 %4824
  store i8 %4831, ptr %4832, align 1, !tbaa !28
  %4833 = load i64, ptr %3768, align 8, !tbaa !31
  %4834 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4833, i64 1), !nosanitize !30
  %4835 = extractvalue { i64, i1 } %4834, 1, !nosanitize !30
  br i1 %4835, label %4836, label %4837, !prof !32, !nosanitize !30

4836:                                             ; preds = %4847, %4828
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4837:                                             ; preds = %4828
  %4838 = extractvalue { i64, i1 } %4834, 0, !nosanitize !30
  %4839 = load ptr, ptr %3769, align 8, !tbaa !33
  %4840 = load i16, ptr %3767, align 8, !tbaa !25
  %4841 = lshr i16 %4840, 8
  %4842 = trunc nuw i16 %4841 to i8
  store i64 %4838, ptr %3768, align 8, !tbaa !31
  %4843 = getelementptr inbounds nuw i8, ptr %4839, i64 %4833
  store i8 %4842, ptr %4843, align 1, !tbaa !28
  %4844 = load i32, ptr %2966, align 4, !tbaa !26
  %4845 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4844), !nosanitize !30
  %4846 = extractvalue { i32, i1 } %4845, 1, !nosanitize !30
  br i1 %4846, label %4772, label %4847, !prof !32, !nosanitize !30

4847:                                             ; preds = %4837
  %4848 = extractvalue { i32, i1 } %4845, 0, !nosanitize !30
  %4849 = lshr i32 %4819, %4848
  %4850 = trunc nuw i32 %4849 to i16
  store i16 %4850, ptr %3767, align 8, !tbaa !25
  %4851 = add nsw i32 %4815, -16
  %4852 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4844, i32 %4851), !nosanitize !30
  %4853 = extractvalue { i32, i1 } %4852, 1, !nosanitize !30
  br i1 %4853, label %4836, label %4857, !prof !32, !nosanitize !30

4854:                                             ; preds = %4807
  %4855 = add nsw i32 %4730, %4815
  %4856 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4855, 0
  br label %4857

4857:                                             ; preds = %4854, %4847
  %4858 = phi i16 [ %4850, %4847 ], [ %4822, %4854 ]
  %4859 = phi { i32, i1 } [ %4852, %4847 ], [ %4856, %4854 ]
  %4860 = extractvalue { i32, i1 } %4859, 0
  store i32 %4860, ptr %2966, align 4, !tbaa !26
  %4861 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %4810
  %4862 = load i32, ptr %4861, align 4, !tbaa !49
  %4863 = add i8 %4809, -28
  %4864 = icmp ult i8 %4863, -20
  br i1 %4864, label %4925, label %4865

4865:                                             ; preds = %4857
  %4866 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %4810
  %4867 = load i32, ptr %4866, align 4, !tbaa !49
  %4868 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4757, i32 %4867), !nosanitize !30
  %4869 = extractvalue { i32, i1 } %4868, 0, !nosanitize !30
  %4870 = extractvalue { i32, i1 } %4868, 1, !nosanitize !30
  br i1 %4870, label %4772, label %4871, !prof !32, !nosanitize !30

4871:                                             ; preds = %4865
  %4872 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4862), !nosanitize !30
  %4873 = extractvalue { i32, i1 } %4872, 1, !nosanitize !30
  br i1 %4873, label %4772, label %4874, !prof !32, !nosanitize !30

4874:                                             ; preds = %4871
  %4875 = extractvalue { i32, i1 } %4872, 0, !nosanitize !30
  %4876 = icmp sgt i32 %4860, %4875
  br i1 %4876, label %4877, label %4915

4877:                                             ; preds = %4874
  %4878 = and i32 %4869, 65535
  %4879 = shl i32 %4869, %4860
  %4880 = trunc i32 %4879 to i16
  %4881 = or i16 %4858, %4880
  store i16 %4881, ptr %3767, align 8, !tbaa !25
  %4882 = load i64, ptr %3768, align 8, !tbaa !31
  %4883 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4882, i64 1), !nosanitize !30
  %4884 = extractvalue { i64, i1 } %4883, 1, !nosanitize !30
  br i1 %4884, label %4885, label %4886, !prof !32, !nosanitize !30

4885:                                             ; preds = %4877
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4886:                                             ; preds = %4877
  %4887 = extractvalue { i64, i1 } %4883, 0, !nosanitize !30
  %4888 = load ptr, ptr %3769, align 8, !tbaa !33
  %4889 = trunc i16 %4881 to i8
  store i64 %4887, ptr %3768, align 8, !tbaa !31
  %4890 = getelementptr inbounds nuw i8, ptr %4888, i64 %4882
  store i8 %4889, ptr %4890, align 1, !tbaa !28
  %4891 = load i64, ptr %3768, align 8, !tbaa !31
  %4892 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4891, i64 1), !nosanitize !30
  %4893 = extractvalue { i64, i1 } %4892, 1, !nosanitize !30
  br i1 %4893, label %4894, label %4895, !prof !32, !nosanitize !30

4894:                                             ; preds = %4915, %4911, %4886
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4895:                                             ; preds = %4886
  %4896 = extractvalue { i64, i1 } %4892, 0, !nosanitize !30
  %4897 = load ptr, ptr %3769, align 8, !tbaa !33
  %4898 = load i16, ptr %3767, align 8, !tbaa !25
  %4899 = lshr i16 %4898, 8
  %4900 = trunc nuw i16 %4899 to i8
  store i64 %4896, ptr %3768, align 8, !tbaa !31
  %4901 = getelementptr inbounds nuw i8, ptr %4897, i64 %4891
  store i8 %4900, ptr %4901, align 1, !tbaa !28
  %4902 = load i32, ptr %2966, align 4, !tbaa !26
  %4903 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4902), !nosanitize !30
  %4904 = extractvalue { i32, i1 } %4903, 1, !nosanitize !30
  br i1 %4904, label %4772, label %4905, !prof !32, !nosanitize !30

4905:                                             ; preds = %4895
  %4906 = extractvalue { i32, i1 } %4903, 0, !nosanitize !30
  %4907 = lshr i32 %4878, %4906
  %4908 = trunc nuw i32 %4907 to i16
  store i16 %4908, ptr %3767, align 8, !tbaa !25
  %4909 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4862, i32 -16)
  %4910 = extractvalue { i32, i1 } %4909, 1, !nosanitize !30
  br i1 %4910, label %4772, label %4911, !prof !32, !nosanitize !30

4911:                                             ; preds = %4905
  %4912 = extractvalue { i32, i1 } %4909, 0, !nosanitize !30
  %4913 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4902, i32 %4912), !nosanitize !30
  %4914 = extractvalue { i32, i1 } %4913, 1, !nosanitize !30
  br i1 %4914, label %4894, label %4921, !prof !32, !nosanitize !30

4915:                                             ; preds = %4874
  %4916 = shl i32 %4869, %4860
  %4917 = trunc i32 %4916 to i16
  %4918 = or i16 %4858, %4917
  store i16 %4918, ptr %3767, align 8, !tbaa !25
  %4919 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4860, i32 %4862), !nosanitize !30
  %4920 = extractvalue { i32, i1 } %4919, 1, !nosanitize !30
  br i1 %4920, label %4894, label %4921, !prof !32, !nosanitize !30

4921:                                             ; preds = %4915, %4911
  %4922 = phi i16 [ %4908, %4911 ], [ %4918, %4915 ]
  %4923 = phi { i32, i1 } [ %4913, %4911 ], [ %4919, %4915 ]
  %4924 = extractvalue { i32, i1 } %4923, 0
  store i32 %4924, ptr %2966, align 4, !tbaa !26
  br label %4925

4925:                                             ; preds = %4921, %4857
  %4926 = phi i16 [ %4922, %4921 ], [ %4858, %4857 ]
  %4927 = phi i32 [ %4924, %4921 ], [ %4860, %4857 ]
  %4928 = add nsw i32 %4748, -1
  %4929 = icmp samesign ult i32 %4748, 257
  %4930 = lshr i32 %4928, 7
  %4931 = add nuw nsw i32 %4930, 256
  %4932 = select i1 %4929, i32 %4928, i32 %4931
  %4933 = zext nneg i32 %4932 to i64
  %4934 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4933
  %4935 = load i8, ptr %4934, align 1, !tbaa !28
  %4936 = zext i8 %4935 to i64
  %4937 = getelementptr inbounds nuw [4 x i8], ptr %4722, i64 %4936
  %4938 = getelementptr inbounds nuw i8, ptr %4937, i64 2
  %4939 = load i16, ptr %4938, align 2, !tbaa !28
  %4940 = zext i16 %4939 to i32
  %4941 = sub nsw i32 16, %4940
  %4942 = icmp sgt i32 %4927, %4941
  %4943 = load i16, ptr %4937, align 2, !tbaa !28
  %4944 = zext i16 %4943 to i32
  %4945 = shl i32 %4944, %4927
  %4946 = trunc i32 %4945 to i16
  %4947 = or i16 %4926, %4946
  store i16 %4947, ptr %3767, align 8, !tbaa !25
  br i1 %4942, label %4949, label %4980

4948:                                             ; preds = %4963
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

4949:                                             ; preds = %4925
  %4950 = load i64, ptr %3768, align 8, !tbaa !31
  %4951 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4950, i64 1), !nosanitize !30
  %4952 = extractvalue { i64, i1 } %4951, 1, !nosanitize !30
  br i1 %4952, label %4953, label %4954, !prof !32, !nosanitize !30

4953:                                             ; preds = %4949
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4954:                                             ; preds = %4949
  %4955 = extractvalue { i64, i1 } %4951, 0, !nosanitize !30
  %4956 = load ptr, ptr %3769, align 8, !tbaa !33
  %4957 = trunc i16 %4947 to i8
  store i64 %4955, ptr %3768, align 8, !tbaa !31
  %4958 = getelementptr inbounds nuw i8, ptr %4956, i64 %4950
  store i8 %4957, ptr %4958, align 1, !tbaa !28
  %4959 = load i64, ptr %3768, align 8, !tbaa !31
  %4960 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4959, i64 1), !nosanitize !30
  %4961 = extractvalue { i64, i1 } %4960, 1, !nosanitize !30
  br i1 %4961, label %4962, label %4963, !prof !32, !nosanitize !30

4962:                                             ; preds = %4973, %4954
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4963:                                             ; preds = %4954
  %4964 = extractvalue { i64, i1 } %4960, 0, !nosanitize !30
  %4965 = load ptr, ptr %3769, align 8, !tbaa !33
  %4966 = load i16, ptr %3767, align 8, !tbaa !25
  %4967 = lshr i16 %4966, 8
  %4968 = trunc nuw i16 %4967 to i8
  store i64 %4964, ptr %3768, align 8, !tbaa !31
  %4969 = getelementptr inbounds nuw i8, ptr %4965, i64 %4959
  store i8 %4968, ptr %4969, align 1, !tbaa !28
  %4970 = load i32, ptr %2966, align 4, !tbaa !26
  %4971 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4970), !nosanitize !30
  %4972 = extractvalue { i32, i1 } %4971, 1, !nosanitize !30
  br i1 %4972, label %4948, label %4973, !prof !32, !nosanitize !30

4973:                                             ; preds = %4963
  %4974 = extractvalue { i32, i1 } %4971, 0, !nosanitize !30
  %4975 = lshr i32 %4944, %4974
  %4976 = trunc nuw i32 %4975 to i16
  store i16 %4976, ptr %3767, align 8, !tbaa !25
  %4977 = add nsw i32 %4940, -16
  %4978 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4970, i32 %4977), !nosanitize !30
  %4979 = extractvalue { i32, i1 } %4978, 1, !nosanitize !30
  br i1 %4979, label %4962, label %4983, !prof !32, !nosanitize !30

4980:                                             ; preds = %4925
  %4981 = add nsw i32 %4927, %4940
  %4982 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4981, 0
  br label %4983

4983:                                             ; preds = %4980, %4973
  %4984 = phi i16 [ %4976, %4973 ], [ %4947, %4980 ]
  %4985 = phi { i32, i1 } [ %4978, %4973 ], [ %4982, %4980 ]
  %4986 = extractvalue { i32, i1 } %4985, 0
  store i32 %4986, ptr %2966, align 4, !tbaa !26
  %4987 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %4936
  %4988 = load i32, ptr %4987, align 4, !tbaa !49
  %4989 = icmp ult i8 %4935, 4
  br i1 %4989, label %5050, label %4990

4990:                                             ; preds = %4983
  %4991 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %4936
  %4992 = load i32, ptr %4991, align 4, !tbaa !49
  %4993 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %4928, i32 %4992), !nosanitize !30
  %4994 = extractvalue { i32, i1 } %4993, 0, !nosanitize !30
  %4995 = extractvalue { i32, i1 } %4993, 1, !nosanitize !30
  br i1 %4995, label %.loopexit331, label %4996, !prof !32, !nosanitize !30

.loopexit331:                                     ; preds = %5030, %5020, %4996, %4990, %5082
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

4996:                                             ; preds = %4990
  %4997 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4988), !nosanitize !30
  %4998 = extractvalue { i32, i1 } %4997, 1, !nosanitize !30
  br i1 %4998, label %.loopexit331, label %4999, !prof !32, !nosanitize !30

4999:                                             ; preds = %4996
  %5000 = extractvalue { i32, i1 } %4997, 0, !nosanitize !30
  %5001 = icmp sgt i32 %4986, %5000
  br i1 %5001, label %5002, label %5040

5002:                                             ; preds = %4999
  %5003 = and i32 %4994, 65535
  %5004 = shl i32 %4994, %4986
  %5005 = trunc i32 %5004 to i16
  %5006 = or i16 %4984, %5005
  store i16 %5006, ptr %3767, align 8, !tbaa !25
  %5007 = load i64, ptr %3768, align 8, !tbaa !31
  %5008 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5007, i64 1), !nosanitize !30
  %5009 = extractvalue { i64, i1 } %5008, 1, !nosanitize !30
  br i1 %5009, label %5010, label %5011, !prof !32, !nosanitize !30

5010:                                             ; preds = %5002
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

5011:                                             ; preds = %5002
  %5012 = extractvalue { i64, i1 } %5008, 0, !nosanitize !30
  %5013 = load ptr, ptr %3769, align 8, !tbaa !33
  %5014 = trunc i16 %5006 to i8
  store i64 %5012, ptr %3768, align 8, !tbaa !31
  %5015 = getelementptr inbounds nuw i8, ptr %5013, i64 %5007
  store i8 %5014, ptr %5015, align 1, !tbaa !28
  %5016 = load i64, ptr %3768, align 8, !tbaa !31
  %5017 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5016, i64 1), !nosanitize !30
  %5018 = extractvalue { i64, i1 } %5017, 1, !nosanitize !30
  br i1 %5018, label %5019, label %5020, !prof !32, !nosanitize !30

5019:                                             ; preds = %5040, %5036, %5011
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

5020:                                             ; preds = %5011
  %5021 = extractvalue { i64, i1 } %5017, 0, !nosanitize !30
  %5022 = load ptr, ptr %3769, align 8, !tbaa !33
  %5023 = load i16, ptr %3767, align 8, !tbaa !25
  %5024 = lshr i16 %5023, 8
  %5025 = trunc nuw i16 %5024 to i8
  store i64 %5021, ptr %3768, align 8, !tbaa !31
  %5026 = getelementptr inbounds nuw i8, ptr %5022, i64 %5016
  store i8 %5025, ptr %5026, align 1, !tbaa !28
  %5027 = load i32, ptr %2966, align 4, !tbaa !26
  %5028 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %5027), !nosanitize !30
  %5029 = extractvalue { i32, i1 } %5028, 1, !nosanitize !30
  br i1 %5029, label %.loopexit331, label %5030, !prof !32, !nosanitize !30

5030:                                             ; preds = %5020
  %5031 = extractvalue { i32, i1 } %5028, 0, !nosanitize !30
  %5032 = lshr i32 %5003, %5031
  %5033 = trunc nuw i32 %5032 to i16
  store i16 %5033, ptr %3767, align 8, !tbaa !25
  %5034 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4988, i32 -16)
  %5035 = extractvalue { i32, i1 } %5034, 1, !nosanitize !30
  br i1 %5035, label %.loopexit331, label %5036, !prof !32, !nosanitize !30

5036:                                             ; preds = %5030
  %5037 = extractvalue { i32, i1 } %5034, 0, !nosanitize !30
  %5038 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5027, i32 %5037), !nosanitize !30
  %5039 = extractvalue { i32, i1 } %5038, 1, !nosanitize !30
  br i1 %5039, label %5019, label %5046, !prof !32, !nosanitize !30

5040:                                             ; preds = %4999
  %5041 = shl i32 %4994, %4986
  %5042 = trunc i32 %5041 to i16
  %5043 = or i16 %4984, %5042
  store i16 %5043, ptr %3767, align 8, !tbaa !25
  %5044 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4986, i32 %4988), !nosanitize !30
  %5045 = extractvalue { i32, i1 } %5044, 1, !nosanitize !30
  br i1 %5045, label %5019, label %5046, !prof !32, !nosanitize !30

5046:                                             ; preds = %5040, %5036, %4804, %4797
  %5047 = phi i16 [ %4800, %4797 ], [ %4771, %4804 ], [ %5033, %5036 ], [ %5043, %5040 ]
  %5048 = phi { i32, i1 } [ %4802, %4797 ], [ %4806, %4804 ], [ %5038, %5036 ], [ %5044, %5040 ]
  %5049 = extractvalue { i32, i1 } %5048, 0
  store i32 %5049, ptr %2966, align 4, !tbaa !26
  br label %5050

5050:                                             ; preds = %5046, %4983
  %5051 = phi i16 [ %4984, %4983 ], [ %5047, %5046 ]
  %5052 = phi i32 [ %4986, %4983 ], [ %5049, %5046 ]
  %5053 = load i32, ptr %4723, align 4, !tbaa !29
  %5054 = icmp ult i32 %4750, %5053
  br i1 %5054, label %4728, label %.loopexit332, !llvm.loop !80

.loopexit332:                                     ; preds = %5050, %.loopexit336
  %5055 = phi i16 [ %4719, %.loopexit336 ], [ %5051, %5050 ]
  %5056 = phi i32 [ %4720, %.loopexit336 ], [ %5052, %5050 ]
  %5057 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %5058 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %5059 = load i16, ptr %5058, align 2, !tbaa !28
  %5060 = zext i16 %5059 to i32
  %5061 = sub nsw i32 16, %5060
  %5062 = icmp sgt i32 %5056, %5061
  %5063 = load i16, ptr %5057, align 2, !tbaa !28
  %5064 = zext i16 %5063 to i32
  %5065 = shl i32 %5064, %5056
  %5066 = trunc i32 %5065 to i16
  %5067 = or i16 %5055, %5066
  store i16 %5067, ptr %3767, align 8, !tbaa !25
  br i1 %5062, label %5068, label %5099

5068:                                             ; preds = %.loopexit332
  %5069 = load i64, ptr %3768, align 8, !tbaa !31
  %5070 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5069, i64 1), !nosanitize !30
  %5071 = extractvalue { i64, i1 } %5070, 1, !nosanitize !30
  br i1 %5071, label %5072, label %5073, !prof !32, !nosanitize !30

5072:                                             ; preds = %5068
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

5073:                                             ; preds = %5068
  %5074 = extractvalue { i64, i1 } %5070, 0, !nosanitize !30
  %5075 = load ptr, ptr %3769, align 8, !tbaa !33
  %5076 = trunc i16 %5067 to i8
  store i64 %5074, ptr %3768, align 8, !tbaa !31
  %5077 = getelementptr inbounds nuw i8, ptr %5075, i64 %5069
  store i8 %5076, ptr %5077, align 1, !tbaa !28
  %5078 = load i64, ptr %3768, align 8, !tbaa !31
  %5079 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5078, i64 1), !nosanitize !30
  %5080 = extractvalue { i64, i1 } %5079, 1, !nosanitize !30
  br i1 %5080, label %5081, label %5082, !prof !32, !nosanitize !30

5081:                                             ; preds = %5092, %5073
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

5082:                                             ; preds = %5073
  %5083 = extractvalue { i64, i1 } %5079, 0, !nosanitize !30
  %5084 = load ptr, ptr %3769, align 8, !tbaa !33
  %5085 = load i16, ptr %3767, align 8, !tbaa !25
  %5086 = lshr i16 %5085, 8
  %5087 = trunc nuw i16 %5086 to i8
  store i64 %5083, ptr %3768, align 8, !tbaa !31
  %5088 = getelementptr inbounds nuw i8, ptr %5084, i64 %5078
  store i8 %5087, ptr %5088, align 1, !tbaa !28
  %5089 = load i32, ptr %2966, align 4, !tbaa !26
  %5090 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %5089), !nosanitize !30
  %5091 = extractvalue { i32, i1 } %5090, 1, !nosanitize !30
  br i1 %5091, label %.loopexit331, label %5092, !prof !32, !nosanitize !30

5092:                                             ; preds = %5082
  %5093 = extractvalue { i32, i1 } %5090, 0, !nosanitize !30
  %5094 = lshr i32 %5064, %5093
  %5095 = trunc nuw i32 %5094 to i16
  store i16 %5095, ptr %3767, align 8, !tbaa !25
  %5096 = add nsw i32 %5060, -16
  %5097 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5089, i32 %5096), !nosanitize !30
  %5098 = extractvalue { i32, i1 } %5097, 1, !nosanitize !30
  br i1 %5098, label %5081, label %5102, !prof !32, !nosanitize !30

5099:                                             ; preds = %.loopexit332
  %5100 = add nsw i32 %5056, %5060
  %5101 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %5100, 0
  br label %5102

5102:                                             ; preds = %5099, %5092
  %5103 = phi { i32, i1 } [ %5097, %5092 ], [ %5101, %5099 ]
  %5104 = extractvalue { i32, i1 } %5103, 0
  store i32 %5104, ptr %2966, align 4, !tbaa !26
  br label %5105

5105:                                             ; preds = %5102, %3542, %3120
  %5106 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %5107

5107:                                             ; preds = %5118, %5105
  %5108 = phi i64 [ 0, %5105 ], [ %5122, %5118 ]
  %5109 = getelementptr inbounds nuw [4 x i8], ptr %5106, i64 %5108
  store i16 0, ptr %5109, align 4, !tbaa !28
  %5110 = getelementptr inbounds nuw i8, ptr %5109, i64 4
  store i16 0, ptr %5110, align 4, !tbaa !28
  %5111 = getelementptr inbounds nuw [4 x i8], ptr %5106, i64 %5108
  %5112 = getelementptr inbounds nuw i8, ptr %5111, i64 8
  store i16 0, ptr %5112, align 4, !tbaa !28
  %5113 = getelementptr inbounds nuw i8, ptr %5111, i64 12
  store i16 0, ptr %5113, align 4, !tbaa !28
  %5114 = getelementptr inbounds nuw [4 x i8], ptr %5106, i64 %5108
  %5115 = getelementptr inbounds nuw i8, ptr %5114, i64 16
  store i16 0, ptr %5115, align 4, !tbaa !28
  %5116 = getelementptr inbounds nuw i8, ptr %5114, i64 20
  store i16 0, ptr %5116, align 4, !tbaa !28
  %5117 = icmp eq i64 %5108, 280
  br i1 %5117, label %5123, label %5118

5118:                                             ; preds = %5107
  %5119 = getelementptr inbounds nuw [4 x i8], ptr %5106, i64 %5108
  %5120 = getelementptr inbounds nuw i8, ptr %5119, i64 24
  store i16 0, ptr %5120, align 4, !tbaa !28
  %5121 = getelementptr inbounds nuw i8, ptr %5119, i64 28
  store i16 0, ptr %5121, align 4, !tbaa !28
  %5122 = add nuw nsw i64 %5108, 8
  br label %5107

5123:                                             ; preds = %5107
  %5124 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %5124, align 4, !tbaa !28
  %5125 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %5125, align 4, !tbaa !28
  %5126 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %5126, align 4, !tbaa !28
  %5127 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %5127, align 4, !tbaa !28
  %5128 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %5128, align 4, !tbaa !28
  %5129 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %5129, align 4, !tbaa !28
  %5130 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %5130, align 4, !tbaa !28
  %5131 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %5131, align 4, !tbaa !28
  %5132 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %5132, align 4, !tbaa !28
  %5133 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %5133, align 4, !tbaa !28
  %5134 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %5134, align 4, !tbaa !28
  %5135 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %5135, align 4, !tbaa !28
  %5136 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %5136, align 4, !tbaa !28
  %5137 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %5137, align 4, !tbaa !28
  %5138 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %5138, align 4, !tbaa !28
  %5139 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %5139, align 4, !tbaa !28
  %5140 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %5140, align 4, !tbaa !28
  %5141 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %5141, align 4, !tbaa !28
  %5142 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %5142, align 4, !tbaa !28
  %5143 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %5143, align 4, !tbaa !28
  %5144 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %5144, align 4, !tbaa !28
  %5145 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %5145, align 4, !tbaa !28
  %5146 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %5146, align 4, !tbaa !28
  %5147 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %5147, align 4, !tbaa !28
  %5148 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %5148, align 4, !tbaa !28
  %5149 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %5149, align 4, !tbaa !28
  %5150 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %5150, align 4, !tbaa !28
  %5151 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %5151, align 4, !tbaa !28
  %5152 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %5152, align 4, !tbaa !28
  %5153 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %5153, align 4, !tbaa !28
  %5154 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %5154, align 4, !tbaa !28
  %5155 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %5155, align 4, !tbaa !28
  %5156 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %5156, align 4, !tbaa !28
  %5157 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %5157, align 4, !tbaa !28
  %5158 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %5158, align 4, !tbaa !28
  %5159 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %5159, align 4, !tbaa !28
  %5160 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %5160, align 4, !tbaa !28
  %5161 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %5161, align 4, !tbaa !28
  %5162 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %5162, align 4, !tbaa !28
  %5163 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %5163, align 4, !tbaa !28
  %5164 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %5164, align 4, !tbaa !28
  %5165 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %5165, align 4, !tbaa !28
  %5166 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %5166, align 4, !tbaa !28
  %5167 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %5167, align 4, !tbaa !28
  %5168 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %5168, align 4, !tbaa !28
  %5169 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %5169, align 4, !tbaa !28
  %5170 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %5170, align 4, !tbaa !28
  %5171 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %5171, align 4, !tbaa !28
  %5172 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %5172, align 4, !tbaa !28
  %5173 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %5173, align 4, !tbaa !28
  %5174 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %5175 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %5175, align 4, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5174, i8 0, i64 20, i1 false)
  %5176 = icmp eq i32 %3, 0
  br i1 %5176, label %5233, label %5177

5177:                                             ; preds = %5123
  %5178 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %5179 = load i32, ptr %5178, align 4, !tbaa !26
  %5180 = icmp sgt i32 %5179, 8
  br i1 %5180, label %5181, label %5206

5181:                                             ; preds = %5177
  %5182 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %5183 = load i64, ptr %5182, align 8, !tbaa !31
  %5184 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5183, i64 1), !nosanitize !30
  %5185 = extractvalue { i64, i1 } %5184, 1, !nosanitize !30
  br i1 %5185, label %5186, label %5187, !prof !32, !nosanitize !30

5186:                                             ; preds = %5181
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

5187:                                             ; preds = %5181
  %5188 = extractvalue { i64, i1 } %5184, 0, !nosanitize !30
  %5189 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5190 = load ptr, ptr %5189, align 8, !tbaa !33
  %5191 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %5192 = load i16, ptr %5191, align 8, !tbaa !25
  %5193 = trunc i16 %5192 to i8
  store i64 %5188, ptr %5182, align 8, !tbaa !31
  %5194 = getelementptr inbounds nuw i8, ptr %5190, i64 %5183
  store i8 %5193, ptr %5194, align 1, !tbaa !28
  %5195 = load i64, ptr %5182, align 8, !tbaa !31
  %5196 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5195, i64 1), !nosanitize !30
  %5197 = extractvalue { i64, i1 } %5196, 1, !nosanitize !30
  br i1 %5197, label %5198, label %5199, !prof !32, !nosanitize !30

5198:                                             ; preds = %5187
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

5199:                                             ; preds = %5187
  %5200 = extractvalue { i64, i1 } %5196, 0, !nosanitize !30
  %5201 = load ptr, ptr %5189, align 8, !tbaa !33
  %5202 = load i16, ptr %5191, align 8, !tbaa !25
  %5203 = lshr i16 %5202, 8
  %5204 = trunc nuw i16 %5203 to i8
  store i64 %5200, ptr %5182, align 8, !tbaa !31
  %5205 = getelementptr inbounds nuw i8, ptr %5201, i64 %5195
  store i8 %5204, ptr %5205, align 1, !tbaa !28
  br label %5222

5206:                                             ; preds = %5177
  %5207 = icmp sgt i32 %5179, 0
  br i1 %5207, label %5208, label %5222

5208:                                             ; preds = %5206
  %5209 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %5210 = load i64, ptr %5209, align 8, !tbaa !31
  %5211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5210, i64 1), !nosanitize !30
  %5212 = extractvalue { i64, i1 } %5211, 1, !nosanitize !30
  br i1 %5212, label %5213, label %5214, !prof !32, !nosanitize !30

5213:                                             ; preds = %5208
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

5214:                                             ; preds = %5208
  %5215 = extractvalue { i64, i1 } %5211, 0, !nosanitize !30
  %5216 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5217 = load ptr, ptr %5216, align 8, !tbaa !33
  %5218 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %5219 = load i16, ptr %5218, align 8, !tbaa !25
  %5220 = trunc i16 %5219 to i8
  store i64 %5215, ptr %5209, align 8, !tbaa !31
  %5221 = getelementptr inbounds nuw i8, ptr %5217, i64 %5210
  store i8 %5220, ptr %5221, align 1, !tbaa !28
  br label %5222

5222:                                             ; preds = %5214, %5206, %5199
  %5223 = load i32, ptr %5178, align 4, !tbaa !26
  %5224 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5223, i32 -1)
  %5225 = extractvalue { i32, i1 } %5224, 1, !nosanitize !30
  br i1 %5225, label %5226, label %5227, !prof !32, !nosanitize !30

5226:                                             ; preds = %5222
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

5227:                                             ; preds = %5222
  %5228 = extractvalue { i32, i1 } %5224, 0, !nosanitize !30
  %5229 = and i32 %5228, 7
  %5230 = add nuw nsw i32 %5229, 1
  %5231 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %5230, ptr %5231, align 8, !tbaa !27
  %5232 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %5232, align 8, !tbaa !25
  store i32 0, ptr %5178, align 4, !tbaa !26
  br label %5233

5233:                                             ; preds = %5227, %5123
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
!75 = distinct !{!75, !40}
!76 = !{!6, !11, i64 2936}
!77 = distinct !{!77, !71}
!78 = !{!6, !11, i64 200}
!79 = !{!6, !12, i64 5888}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = !{!"branch_weights", i32 1, i32 1048574}
!83 = distinct !{!83, !40}
!84 = distinct !{!84, !40}
!85 = !{!6, !11, i64 5928}
!86 = !{!6, !11, i64 5904}
