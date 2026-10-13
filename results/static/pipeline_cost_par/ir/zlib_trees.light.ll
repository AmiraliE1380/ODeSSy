; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_trees.light.mid.ll'
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

2435:                                             ; preds = %2602, %2429
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
  br i1 %2440, label %2444, label %2597

2444:                                             ; preds = %2436
  br i1 %2443, label %2446, label %2483

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

2467:                                             ; preds = %2458
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
  %2482 = add i32 %2475, -13
  br label %2490

2483:                                             ; preds = %2444
  %2484 = shl i32 %3, %2442
  %2485 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2486 = load i16, ptr %2485, align 8, !tbaa !25
  %2487 = trunc i32 %2484 to i16
  %2488 = or i16 %2486, %2487
  store i16 %2488, ptr %2485, align 8, !tbaa !25
  %2489 = add nsw i32 %2442, 3
  br label %2490

2490:                                             ; preds = %2478, %2483
  %2491 = phi i16 [ %2481, %2478 ], [ %2488, %2483 ]
  %2492 = phi i32 [ %2482, %2478 ], [ %2489, %2483 ]
  store i32 %2492, ptr %2441, align 4, !tbaa !26
  %2493 = icmp sgt i32 %2492, 8
  br i1 %2493, label %2494, label %2518

2494:                                             ; preds = %2490
  %2495 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2496 = load i64, ptr %2495, align 8, !tbaa !31
  %2497 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2496, i64 1), !nosanitize !30
  %2498 = extractvalue { i64, i1 } %2497, 1, !nosanitize !30
  br i1 %2498, label %2499, label %2500, !prof !32, !nosanitize !30

2499:                                             ; preds = %2494
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2500:                                             ; preds = %2494
  %2501 = extractvalue { i64, i1 } %2497, 0, !nosanitize !30
  %2502 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2503 = load ptr, ptr %2502, align 8, !tbaa !33
  %2504 = trunc i16 %2491 to i8
  store i64 %2501, ptr %2495, align 8, !tbaa !31
  %2505 = getelementptr inbounds nuw i8, ptr %2503, i64 %2496
  store i8 %2504, ptr %2505, align 1, !tbaa !28
  %2506 = load i64, ptr %2495, align 8, !tbaa !31
  %2507 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2506, i64 1), !nosanitize !30
  %2508 = extractvalue { i64, i1 } %2507, 1, !nosanitize !30
  br i1 %2508, label %2509, label %2510, !prof !32, !nosanitize !30

2509:                                             ; preds = %2500
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2510:                                             ; preds = %2500
  %2511 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2512 = extractvalue { i64, i1 } %2507, 0, !nosanitize !30
  %2513 = load ptr, ptr %2502, align 8, !tbaa !33
  %2514 = load i16, ptr %2511, align 8, !tbaa !25
  %2515 = lshr i16 %2514, 8
  %2516 = trunc nuw i16 %2515 to i8
  store i64 %2512, ptr %2495, align 8, !tbaa !31
  %2517 = getelementptr inbounds nuw i8, ptr %2513, i64 %2506
  store i8 %2516, ptr %2517, align 1, !tbaa !28
  br label %2532

2518:                                             ; preds = %2490
  %2519 = icmp sgt i32 %2492, 0
  br i1 %2519, label %2520, label %2532

2520:                                             ; preds = %2518
  %2521 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2522 = load i64, ptr %2521, align 8, !tbaa !31
  %2523 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2522, i64 1), !nosanitize !30
  %2524 = extractvalue { i64, i1 } %2523, 1, !nosanitize !30
  br i1 %2524, label %2525, label %2526, !prof !32, !nosanitize !30

2525:                                             ; preds = %2520
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2526:                                             ; preds = %2520
  %2527 = extractvalue { i64, i1 } %2523, 0, !nosanitize !30
  %2528 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2529 = load ptr, ptr %2528, align 8, !tbaa !33
  %2530 = trunc i16 %2491 to i8
  store i64 %2527, ptr %2521, align 8, !tbaa !31
  %2531 = getelementptr inbounds nuw i8, ptr %2529, i64 %2522
  store i8 %2530, ptr %2531, align 1, !tbaa !28
  br label %2532

2532:                                             ; preds = %2526, %2518, %2510
  %2533 = load i32, ptr %2441, align 4, !tbaa !26
  %2534 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2533, i32 -1)
  %2535 = extractvalue { i32, i1 } %2534, 1, !nosanitize !30
  br i1 %2535, label %2536, label %2537, !prof !32, !nosanitize !30

2536:                                             ; preds = %2532
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2537:                                             ; preds = %2532
  %2538 = extractvalue { i32, i1 } %2534, 0, !nosanitize !30
  %2539 = and i32 %2538, 7
  %2540 = add nuw nsw i32 %2539, 1
  %2541 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %2540, ptr %2541, align 8, !tbaa !27
  %2542 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %2542, align 8, !tbaa !25
  store i32 0, ptr %2441, align 4, !tbaa !26
  %2543 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2544 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2545 = load i64, ptr %2544, align 8, !tbaa !31
  %2546 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2545, i64 1), !nosanitize !30
  %2547 = extractvalue { i64, i1 } %2546, 1, !nosanitize !30
  br i1 %2547, label %2548, label %2549, !prof !32, !nosanitize !30

2548:                                             ; preds = %2537
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2549:                                             ; preds = %2537
  %2550 = extractvalue { i64, i1 } %2546, 0, !nosanitize !30
  %2551 = load ptr, ptr %2543, align 8, !tbaa !33
  %2552 = trunc i64 %2 to i8
  store i64 %2550, ptr %2544, align 8, !tbaa !31
  %2553 = getelementptr inbounds nuw i8, ptr %2551, i64 %2545
  store i8 %2552, ptr %2553, align 1, !tbaa !28
  %2554 = load i64, ptr %2544, align 8, !tbaa !31
  %2555 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2554, i64 1), !nosanitize !30
  %2556 = extractvalue { i64, i1 } %2555, 1, !nosanitize !30
  br i1 %2556, label %2557, label %2558, !prof !32, !nosanitize !30

2557:                                             ; preds = %2549
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2558:                                             ; preds = %2549
  %2559 = extractvalue { i64, i1 } %2555, 0, !nosanitize !30
  %2560 = load ptr, ptr %2543, align 8, !tbaa !33
  %2561 = lshr i64 %2, 8
  %2562 = trunc i64 %2561 to i8
  store i64 %2559, ptr %2544, align 8, !tbaa !31
  %2563 = getelementptr inbounds nuw i8, ptr %2560, i64 %2554
  store i8 %2562, ptr %2563, align 1, !tbaa !28
  %2564 = load i64, ptr %2544, align 8, !tbaa !31
  %2565 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2564, i64 1), !nosanitize !30
  %2566 = extractvalue { i64, i1 } %2565, 1, !nosanitize !30
  br i1 %2566, label %2567, label %2568, !prof !32, !nosanitize !30

2567:                                             ; preds = %2558
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2568:                                             ; preds = %2558
  %2569 = extractvalue { i64, i1 } %2565, 0, !nosanitize !30
  %2570 = load ptr, ptr %2543, align 8, !tbaa !33
  %2571 = trunc i64 %2 to i32
  %2572 = xor i32 %2571, 65535
  %2573 = trunc i32 %2572 to i8
  store i64 %2569, ptr %2544, align 8, !tbaa !31
  %2574 = getelementptr inbounds nuw i8, ptr %2570, i64 %2564
  store i8 %2573, ptr %2574, align 1, !tbaa !28
  %2575 = load i64, ptr %2544, align 8, !tbaa !31
  %2576 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2575, i64 1), !nosanitize !30
  %2577 = extractvalue { i64, i1 } %2576, 1, !nosanitize !30
  br i1 %2577, label %2578, label %2579, !prof !32, !nosanitize !30

2578:                                             ; preds = %2568
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2579:                                             ; preds = %2568
  %2580 = extractvalue { i64, i1 } %2576, 0, !nosanitize !30
  %2581 = load ptr, ptr %2543, align 8, !tbaa !33
  %2582 = lshr i32 %2572, 8
  %2583 = trunc i32 %2582 to i8
  store i64 %2580, ptr %2544, align 8, !tbaa !31
  %2584 = getelementptr inbounds nuw i8, ptr %2581, i64 %2575
  store i8 %2583, ptr %2584, align 1, !tbaa !28
  %2585 = icmp eq i64 %2, 0
  br i1 %2585, label %2590, label %2586

2586:                                             ; preds = %2579
  %2587 = load ptr, ptr %2543, align 8, !tbaa !33
  %2588 = load i64, ptr %2544, align 8, !tbaa !31
  %2589 = getelementptr inbounds nuw i8, ptr %2587, i64 %2588
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2589, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %2590

2590:                                             ; preds = %2586, %2579
  %2591 = load i64, ptr %2544, align 8, !tbaa !31
  %2592 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2591, i64 %2), !nosanitize !30
  %2593 = extractvalue { i64, i1 } %2592, 1, !nosanitize !30
  br i1 %2593, label %2594, label %2595, !prof !32, !nosanitize !30

2594:                                             ; preds = %2590
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2595:                                             ; preds = %2590
  %2596 = extractvalue { i64, i1 } %2592, 0, !nosanitize !30
  store i64 %2596, ptr %2544, align 8, !tbaa !31
  br label %4570

2597:                                             ; preds = %2436
  br i1 %2431, label %2598, label %3016

2598:                                             ; preds = %2597
  %2599 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2), !nosanitize !30
  %2600 = extractvalue { i32, i1 } %2599, 1, !nosanitize !30
  br i1 %2443, label %2602, label %2641

2601:                                             ; preds = %3043, %2626
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2602:                                             ; preds = %2598
  br i1 %2600, label %2435, label %2603, !prof !32, !nosanitize !30

2603:                                             ; preds = %2602
  %2604 = extractvalue { i32, i1 } %2599, 0, !nosanitize !30
  %2605 = and i32 %2604, 65535
  %2606 = shl i32 %2604, %2442
  %2607 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2608 = load i16, ptr %2607, align 8, !tbaa !25
  %2609 = trunc i32 %2606 to i16
  %2610 = or i16 %2608, %2609
  store i16 %2610, ptr %2607, align 8, !tbaa !25
  %2611 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2612 = load i64, ptr %2611, align 8, !tbaa !31
  %2613 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2612, i64 1), !nosanitize !30
  %2614 = extractvalue { i64, i1 } %2613, 1, !nosanitize !30
  br i1 %2614, label %2615, label %2616, !prof !32, !nosanitize !30

2615:                                             ; preds = %2603
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2616:                                             ; preds = %2603
  %2617 = extractvalue { i64, i1 } %2613, 0, !nosanitize !30
  %2618 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2619 = load ptr, ptr %2618, align 8, !tbaa !33
  %2620 = trunc i16 %2610 to i8
  store i64 %2617, ptr %2611, align 8, !tbaa !31
  %2621 = getelementptr inbounds nuw i8, ptr %2619, i64 %2612
  store i8 %2620, ptr %2621, align 1, !tbaa !28
  %2622 = load i64, ptr %2611, align 8, !tbaa !31
  %2623 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2622, i64 1), !nosanitize !30
  %2624 = extractvalue { i64, i1 } %2623, 1, !nosanitize !30
  br i1 %2624, label %2625, label %2626, !prof !32, !nosanitize !30

2625:                                             ; preds = %3019, %2641, %2616
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2626:                                             ; preds = %2616
  %2627 = extractvalue { i64, i1 } %2623, 0, !nosanitize !30
  %2628 = load ptr, ptr %2618, align 8, !tbaa !33
  %2629 = load i16, ptr %2607, align 8, !tbaa !25
  %2630 = lshr i16 %2629, 8
  %2631 = trunc nuw i16 %2630 to i8
  store i64 %2627, ptr %2611, align 8, !tbaa !31
  %2632 = getelementptr inbounds nuw i8, ptr %2628, i64 %2622
  store i8 %2631, ptr %2632, align 1, !tbaa !28
  %2633 = load i32, ptr %2441, align 4, !tbaa !26
  %2634 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2633), !nosanitize !30
  %2635 = extractvalue { i32, i1 } %2634, 1, !nosanitize !30
  br i1 %2635, label %2601, label %2636, !prof !32, !nosanitize !30

2636:                                             ; preds = %2626
  %2637 = extractvalue { i32, i1 } %2634, 0, !nosanitize !30
  %2638 = lshr i32 %2605, %2637
  %2639 = trunc nuw i32 %2638 to i16
  store i16 %2639, ptr %2607, align 8, !tbaa !25
  %2640 = add i32 %2633, -13
  br label %2650

2641:                                             ; preds = %2598
  br i1 %2600, label %2625, label %2642, !prof !32, !nosanitize !30

2642:                                             ; preds = %2641
  %2643 = extractvalue { i32, i1 } %2599, 0, !nosanitize !30
  %2644 = shl i32 %2643, %2442
  %2645 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2646 = load i16, ptr %2645, align 8, !tbaa !25
  %2647 = trunc i32 %2644 to i16
  %2648 = or i16 %2646, %2647
  store i16 %2648, ptr %2645, align 8, !tbaa !25
  %2649 = add nsw i32 %2442, 3
  br label %2650

2650:                                             ; preds = %2636, %2642
  %2651 = phi i16 [ %2639, %2636 ], [ %2648, %2642 ]
  %2652 = phi i32 [ %2640, %2636 ], [ %2649, %2642 ]
  store i32 %2652, ptr %2441, align 4, !tbaa !26
  %2653 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %2654 = load i32, ptr %2653, align 4, !tbaa !29
  %2655 = icmp eq i32 %2654, 0
  br i1 %2655, label %.loopexit264, label %2656

2656:                                             ; preds = %2650
  %2657 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %2658 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2659 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2660 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %2661

2661:                                             ; preds = %2975, %2656
  %2662 = phi i16 [ %2976, %2975 ], [ %2651, %2656 ]
  %2663 = phi i32 [ %2977, %2975 ], [ %2652, %2656 ]
  %2664 = phi i32 [ %2683, %2975 ], [ 0, %2656 ]
  %2665 = load ptr, ptr %2657, align 8, !tbaa !80
  %2666 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2664, i32 2)
  %2667 = extractvalue { i32, i1 } %2666, 0, !nosanitize !30
  %2668 = extractvalue { i32, i1 } %2666, 1, !nosanitize !30
  br i1 %2668, label %2669, label %2670, !prof !32, !nosanitize !30

2669:                                             ; preds = %2661
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2670:                                             ; preds = %2661
  %2671 = add nuw i32 %2664, 1
  %2672 = zext i32 %2664 to i64
  %2673 = getelementptr inbounds nuw i8, ptr %2665, i64 %2672
  %2674 = load i8, ptr %2673, align 1, !tbaa !28
  %2675 = zext i8 %2674 to i32
  %2676 = zext i32 %2671 to i64
  %2677 = getelementptr inbounds nuw i8, ptr %2665, i64 %2676
  %2678 = load i8, ptr %2677, align 1, !tbaa !28
  %2679 = zext i8 %2678 to i32
  %2680 = shl nuw nsw i32 %2679, 8
  %2681 = or disjoint i32 %2680, %2675
  %2682 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2667, i32 1), !nosanitize !30
  %2683 = extractvalue { i32, i1 } %2682, 0, !nosanitize !30
  %2684 = extractvalue { i32, i1 } %2682, 1, !nosanitize !30
  br i1 %2684, label %2685, label %2686, !prof !32, !nosanitize !30

2685:                                             ; preds = %2670
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2686:                                             ; preds = %2670
  %2687 = zext i32 %2667 to i64
  %2688 = getelementptr inbounds nuw i8, ptr %2665, i64 %2687
  %2689 = load i8, ptr %2688, align 1, !tbaa !28
  %2690 = zext i8 %2689 to i32
  %2691 = icmp eq i32 %2681, 0
  %2692 = zext i8 %2689 to i64
  br i1 %2691, label %2693, label %2740

2693:                                             ; preds = %2686
  %2694 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2692
  %2695 = getelementptr inbounds nuw i8, ptr %2694, i64 2
  %2696 = load i16, ptr %2695, align 2, !tbaa !28
  %2697 = zext i16 %2696 to i32
  %2698 = sub nsw i32 16, %2697
  %2699 = icmp sgt i32 %2663, %2698
  %2700 = load i16, ptr %2694, align 4, !tbaa !28
  %2701 = zext i16 %2700 to i32
  %2702 = shl i32 %2701, %2663
  %2703 = trunc i32 %2702 to i16
  %2704 = or i16 %2662, %2703
  store i16 %2704, ptr %2658, align 8, !tbaa !25
  br i1 %2699, label %2706, label %2737

2705:                                             ; preds = %2838, %2828, %2804, %2798, %2770, %2720
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

2706:                                             ; preds = %2693
  %2707 = load i64, ptr %2659, align 8, !tbaa !31
  %2708 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2707, i64 1), !nosanitize !30
  %2709 = extractvalue { i64, i1 } %2708, 1, !nosanitize !30
  br i1 %2709, label %2710, label %2711, !prof !32, !nosanitize !30

2710:                                             ; preds = %2706
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2711:                                             ; preds = %2706
  %2712 = extractvalue { i64, i1 } %2708, 0, !nosanitize !30
  %2713 = load ptr, ptr %2660, align 8, !tbaa !33
  %2714 = trunc i16 %2704 to i8
  store i64 %2712, ptr %2659, align 8, !tbaa !31
  %2715 = getelementptr inbounds nuw i8, ptr %2713, i64 %2707
  store i8 %2714, ptr %2715, align 1, !tbaa !28
  %2716 = load i64, ptr %2659, align 8, !tbaa !31
  %2717 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2716, i64 1), !nosanitize !30
  %2718 = extractvalue { i64, i1 } %2717, 1, !nosanitize !30
  br i1 %2718, label %2719, label %2720, !prof !32, !nosanitize !30

2719:                                             ; preds = %2730, %2711
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2720:                                             ; preds = %2711
  %2721 = extractvalue { i64, i1 } %2717, 0, !nosanitize !30
  %2722 = load ptr, ptr %2660, align 8, !tbaa !33
  %2723 = load i16, ptr %2658, align 8, !tbaa !25
  %2724 = lshr i16 %2723, 8
  %2725 = trunc nuw i16 %2724 to i8
  store i64 %2721, ptr %2659, align 8, !tbaa !31
  %2726 = getelementptr inbounds nuw i8, ptr %2722, i64 %2716
  store i8 %2725, ptr %2726, align 1, !tbaa !28
  %2727 = load i32, ptr %2441, align 4, !tbaa !26
  %2728 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2727), !nosanitize !30
  %2729 = extractvalue { i32, i1 } %2728, 1, !nosanitize !30
  br i1 %2729, label %2705, label %2730, !prof !32, !nosanitize !30

2730:                                             ; preds = %2720
  %2731 = extractvalue { i32, i1 } %2728, 0, !nosanitize !30
  %2732 = lshr i32 %2701, %2731
  %2733 = trunc nuw i32 %2732 to i16
  store i16 %2733, ptr %2658, align 8, !tbaa !25
  %2734 = add nsw i32 %2697, -16
  %2735 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2727, i32 %2734), !nosanitize !30
  %2736 = extractvalue { i32, i1 } %2735, 1, !nosanitize !30
  br i1 %2736, label %2719, label %2971, !prof !32, !nosanitize !30

2737:                                             ; preds = %2693
  %2738 = add nsw i32 %2663, %2697
  %2739 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2738, 0
  br label %2971

2740:                                             ; preds = %2686
  %2741 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %2692
  %2742 = load i8, ptr %2741, align 1, !tbaa !28
  %2743 = zext i8 %2742 to i64
  %2744 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2743
  %2745 = getelementptr inbounds nuw i8, ptr %2744, i64 1028
  %2746 = getelementptr inbounds nuw i8, ptr %2744, i64 1030
  %2747 = load i16, ptr %2746, align 2, !tbaa !28
  %2748 = zext i16 %2747 to i32
  %2749 = sub nsw i32 16, %2748
  %2750 = icmp sgt i32 %2663, %2749
  %2751 = load i16, ptr %2745, align 4, !tbaa !28
  %2752 = zext i16 %2751 to i32
  %2753 = shl i32 %2752, %2663
  %2754 = trunc i32 %2753 to i16
  %2755 = or i16 %2662, %2754
  store i16 %2755, ptr %2658, align 8, !tbaa !25
  br i1 %2750, label %2756, label %2787

2756:                                             ; preds = %2740
  %2757 = load i64, ptr %2659, align 8, !tbaa !31
  %2758 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2757, i64 1), !nosanitize !30
  %2759 = extractvalue { i64, i1 } %2758, 1, !nosanitize !30
  br i1 %2759, label %2760, label %2761, !prof !32, !nosanitize !30

2760:                                             ; preds = %2756
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2761:                                             ; preds = %2756
  %2762 = extractvalue { i64, i1 } %2758, 0, !nosanitize !30
  %2763 = load ptr, ptr %2660, align 8, !tbaa !33
  %2764 = trunc i16 %2755 to i8
  store i64 %2762, ptr %2659, align 8, !tbaa !31
  %2765 = getelementptr inbounds nuw i8, ptr %2763, i64 %2757
  store i8 %2764, ptr %2765, align 1, !tbaa !28
  %2766 = load i64, ptr %2659, align 8, !tbaa !31
  %2767 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2766, i64 1), !nosanitize !30
  %2768 = extractvalue { i64, i1 } %2767, 1, !nosanitize !30
  br i1 %2768, label %2769, label %2770, !prof !32, !nosanitize !30

2769:                                             ; preds = %2780, %2761
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2770:                                             ; preds = %2761
  %2771 = extractvalue { i64, i1 } %2767, 0, !nosanitize !30
  %2772 = load ptr, ptr %2660, align 8, !tbaa !33
  %2773 = load i16, ptr %2658, align 8, !tbaa !25
  %2774 = lshr i16 %2773, 8
  %2775 = trunc nuw i16 %2774 to i8
  store i64 %2771, ptr %2659, align 8, !tbaa !31
  %2776 = getelementptr inbounds nuw i8, ptr %2772, i64 %2766
  store i8 %2775, ptr %2776, align 1, !tbaa !28
  %2777 = load i32, ptr %2441, align 4, !tbaa !26
  %2778 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2777), !nosanitize !30
  %2779 = extractvalue { i32, i1 } %2778, 1, !nosanitize !30
  br i1 %2779, label %2705, label %2780, !prof !32, !nosanitize !30

2780:                                             ; preds = %2770
  %2781 = extractvalue { i32, i1 } %2778, 0, !nosanitize !30
  %2782 = lshr i32 %2752, %2781
  %2783 = trunc nuw i32 %2782 to i16
  store i16 %2783, ptr %2658, align 8, !tbaa !25
  %2784 = add nsw i32 %2748, -16
  %2785 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2777, i32 %2784), !nosanitize !30
  %2786 = extractvalue { i32, i1 } %2785, 1, !nosanitize !30
  br i1 %2786, label %2769, label %2790, !prof !32, !nosanitize !30

2787:                                             ; preds = %2740
  %2788 = add nsw i32 %2663, %2748
  %2789 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2788, 0
  br label %2790

2790:                                             ; preds = %2787, %2780
  %2791 = phi i16 [ %2783, %2780 ], [ %2755, %2787 ]
  %2792 = phi { i32, i1 } [ %2785, %2780 ], [ %2789, %2787 ]
  %2793 = extractvalue { i32, i1 } %2792, 0
  store i32 %2793, ptr %2441, align 4, !tbaa !26
  %2794 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %2743
  %2795 = load i32, ptr %2794, align 4, !tbaa !49
  %2796 = add i8 %2742, -28
  %2797 = icmp ult i8 %2796, -20
  br i1 %2797, label %2858, label %2798

2798:                                             ; preds = %2790
  %2799 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %2743
  %2800 = load i32, ptr %2799, align 4, !tbaa !49
  %2801 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2690, i32 %2800), !nosanitize !30
  %2802 = extractvalue { i32, i1 } %2801, 0, !nosanitize !30
  %2803 = extractvalue { i32, i1 } %2801, 1, !nosanitize !30
  br i1 %2803, label %2705, label %2804, !prof !32, !nosanitize !30

2804:                                             ; preds = %2798
  %2805 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2795), !nosanitize !30
  %2806 = extractvalue { i32, i1 } %2805, 1, !nosanitize !30
  br i1 %2806, label %2705, label %2807, !prof !32, !nosanitize !30

2807:                                             ; preds = %2804
  %2808 = extractvalue { i32, i1 } %2805, 0, !nosanitize !30
  %2809 = icmp sgt i32 %2793, %2808
  br i1 %2809, label %2810, label %2848

2810:                                             ; preds = %2807
  %2811 = and i32 %2802, 65535
  %2812 = shl i32 %2802, %2793
  %2813 = trunc i32 %2812 to i16
  %2814 = or i16 %2791, %2813
  store i16 %2814, ptr %2658, align 8, !tbaa !25
  %2815 = load i64, ptr %2659, align 8, !tbaa !31
  %2816 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2815, i64 1), !nosanitize !30
  %2817 = extractvalue { i64, i1 } %2816, 1, !nosanitize !30
  br i1 %2817, label %2818, label %2819, !prof !32, !nosanitize !30

2818:                                             ; preds = %2810
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2819:                                             ; preds = %2810
  %2820 = extractvalue { i64, i1 } %2816, 0, !nosanitize !30
  %2821 = load ptr, ptr %2660, align 8, !tbaa !33
  %2822 = trunc i16 %2814 to i8
  store i64 %2820, ptr %2659, align 8, !tbaa !31
  %2823 = getelementptr inbounds nuw i8, ptr %2821, i64 %2815
  store i8 %2822, ptr %2823, align 1, !tbaa !28
  %2824 = load i64, ptr %2659, align 8, !tbaa !31
  %2825 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2824, i64 1), !nosanitize !30
  %2826 = extractvalue { i64, i1 } %2825, 1, !nosanitize !30
  br i1 %2826, label %2827, label %2828, !prof !32, !nosanitize !30

2827:                                             ; preds = %2848, %2844, %2819
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2828:                                             ; preds = %2819
  %2829 = extractvalue { i64, i1 } %2825, 0, !nosanitize !30
  %2830 = load ptr, ptr %2660, align 8, !tbaa !33
  %2831 = load i16, ptr %2658, align 8, !tbaa !25
  %2832 = lshr i16 %2831, 8
  %2833 = trunc nuw i16 %2832 to i8
  store i64 %2829, ptr %2659, align 8, !tbaa !31
  %2834 = getelementptr inbounds nuw i8, ptr %2830, i64 %2824
  store i8 %2833, ptr %2834, align 1, !tbaa !28
  %2835 = load i32, ptr %2441, align 4, !tbaa !26
  %2836 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2835), !nosanitize !30
  %2837 = extractvalue { i32, i1 } %2836, 1, !nosanitize !30
  br i1 %2837, label %2705, label %2838, !prof !32, !nosanitize !30

2838:                                             ; preds = %2828
  %2839 = extractvalue { i32, i1 } %2836, 0, !nosanitize !30
  %2840 = lshr i32 %2811, %2839
  %2841 = trunc nuw i32 %2840 to i16
  store i16 %2841, ptr %2658, align 8, !tbaa !25
  %2842 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2795, i32 -16)
  %2843 = extractvalue { i32, i1 } %2842, 1, !nosanitize !30
  br i1 %2843, label %2705, label %2844, !prof !32, !nosanitize !30

2844:                                             ; preds = %2838
  %2845 = extractvalue { i32, i1 } %2842, 0, !nosanitize !30
  %2846 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2835, i32 %2845), !nosanitize !30
  %2847 = extractvalue { i32, i1 } %2846, 1, !nosanitize !30
  br i1 %2847, label %2827, label %2854, !prof !32, !nosanitize !30

2848:                                             ; preds = %2807
  %2849 = shl i32 %2802, %2793
  %2850 = trunc i32 %2849 to i16
  %2851 = or i16 %2791, %2850
  store i16 %2851, ptr %2658, align 8, !tbaa !25
  %2852 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2793, i32 %2795), !nosanitize !30
  %2853 = extractvalue { i32, i1 } %2852, 1, !nosanitize !30
  br i1 %2853, label %2827, label %2854, !prof !32, !nosanitize !30

2854:                                             ; preds = %2848, %2844
  %2855 = phi i16 [ %2841, %2844 ], [ %2851, %2848 ]
  %2856 = phi { i32, i1 } [ %2846, %2844 ], [ %2852, %2848 ]
  %2857 = extractvalue { i32, i1 } %2856, 0
  store i32 %2857, ptr %2441, align 4, !tbaa !26
  br label %2858

2858:                                             ; preds = %2854, %2790
  %2859 = phi i16 [ %2855, %2854 ], [ %2791, %2790 ]
  %2860 = phi i32 [ %2857, %2854 ], [ %2793, %2790 ]
  %2861 = add nsw i32 %2681, -1
  %2862 = icmp samesign ult i32 %2681, 257
  %2863 = lshr i32 %2861, 7
  %2864 = add nuw nsw i32 %2863, 256
  %2865 = select i1 %2862, i32 %2861, i32 %2864
  %2866 = zext nneg i32 %2865 to i64
  %2867 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2866
  %2868 = load i8, ptr %2867, align 1, !tbaa !28
  %2869 = zext i8 %2868 to i64
  %2870 = getelementptr inbounds nuw [4 x i8], ptr @static_dtree, i64 %2869
  %2871 = icmp sgt i32 %2860, 11
  %2872 = load i16, ptr %2870, align 4, !tbaa !28
  %2873 = zext i16 %2872 to i32
  %2874 = shl i32 %2873, %2860
  %2875 = trunc i32 %2874 to i16
  %2876 = or i16 %2859, %2875
  store i16 %2876, ptr %2658, align 8, !tbaa !25
  br i1 %2871, label %2878, label %2908

2877:                                             ; preds = %2892
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

2878:                                             ; preds = %2858
  %2879 = load i64, ptr %2659, align 8, !tbaa !31
  %2880 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2879, i64 1), !nosanitize !30
  %2881 = extractvalue { i64, i1 } %2880, 1, !nosanitize !30
  br i1 %2881, label %2882, label %2883, !prof !32, !nosanitize !30

2882:                                             ; preds = %2878
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2883:                                             ; preds = %2878
  %2884 = extractvalue { i64, i1 } %2880, 0, !nosanitize !30
  %2885 = load ptr, ptr %2660, align 8, !tbaa !33
  %2886 = trunc i16 %2876 to i8
  store i64 %2884, ptr %2659, align 8, !tbaa !31
  %2887 = getelementptr inbounds nuw i8, ptr %2885, i64 %2879
  store i8 %2886, ptr %2887, align 1, !tbaa !28
  %2888 = load i64, ptr %2659, align 8, !tbaa !31
  %2889 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2888, i64 1), !nosanitize !30
  %2890 = extractvalue { i64, i1 } %2889, 1, !nosanitize !30
  br i1 %2890, label %2891, label %2892, !prof !32, !nosanitize !30

2891:                                             ; preds = %2902, %2883
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2892:                                             ; preds = %2883
  %2893 = extractvalue { i64, i1 } %2889, 0, !nosanitize !30
  %2894 = load ptr, ptr %2660, align 8, !tbaa !33
  %2895 = load i16, ptr %2658, align 8, !tbaa !25
  %2896 = lshr i16 %2895, 8
  %2897 = trunc nuw i16 %2896 to i8
  store i64 %2893, ptr %2659, align 8, !tbaa !31
  %2898 = getelementptr inbounds nuw i8, ptr %2894, i64 %2888
  store i8 %2897, ptr %2898, align 1, !tbaa !28
  %2899 = load i32, ptr %2441, align 4, !tbaa !26
  %2900 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2899), !nosanitize !30
  %2901 = extractvalue { i32, i1 } %2900, 1, !nosanitize !30
  br i1 %2901, label %2877, label %2902, !prof !32, !nosanitize !30

2902:                                             ; preds = %2892
  %2903 = extractvalue { i32, i1 } %2900, 0, !nosanitize !30
  %2904 = lshr i32 %2873, %2903
  %2905 = trunc nuw i32 %2904 to i16
  store i16 %2905, ptr %2658, align 8, !tbaa !25
  %2906 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2899, i32 -11), !nosanitize !30
  %2907 = extractvalue { i32, i1 } %2906, 1, !nosanitize !30
  br i1 %2907, label %2891, label %2911, !prof !32, !nosanitize !30

2908:                                             ; preds = %2858
  %2909 = add nsw i32 %2860, 5
  %2910 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2909, 0
  br label %2911

2911:                                             ; preds = %2908, %2902
  %2912 = phi i16 [ %2905, %2902 ], [ %2876, %2908 ]
  %2913 = phi { i32, i1 } [ %2906, %2902 ], [ %2910, %2908 ]
  %2914 = extractvalue { i32, i1 } %2913, 0
  store i32 %2914, ptr %2441, align 4, !tbaa !26
  %2915 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %2869
  %2916 = load i32, ptr %2915, align 4, !tbaa !49
  %2917 = icmp ult i8 %2868, 4
  br i1 %2917, label %2975, label %2918

2918:                                             ; preds = %2911
  %2919 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %2869
  %2920 = load i32, ptr %2919, align 4, !tbaa !49
  %2921 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2861, i32 %2920), !nosanitize !30
  %2922 = extractvalue { i32, i1 } %2921, 0, !nosanitize !30
  %2923 = extractvalue { i32, i1 } %2921, 1, !nosanitize !30
  br i1 %2923, label %.loopexit, label %2924, !prof !32, !nosanitize !30

.loopexit:                                        ; preds = %2948, %2924, %2918, %3000
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

2924:                                             ; preds = %2918
  %2925 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2916), !nosanitize !30
  %2926 = extractvalue { i32, i1 } %2925, 1, !nosanitize !30
  br i1 %2926, label %.loopexit, label %2927, !prof !32, !nosanitize !30

2927:                                             ; preds = %2924
  %2928 = extractvalue { i32, i1 } %2925, 0, !nosanitize !30
  %2929 = icmp sgt i32 %2914, %2928
  br i1 %2929, label %2930, label %2965

2930:                                             ; preds = %2927
  %2931 = and i32 %2922, 65535
  %2932 = shl i32 %2922, %2914
  %2933 = trunc i32 %2932 to i16
  %2934 = or i16 %2912, %2933
  store i16 %2934, ptr %2658, align 8, !tbaa !25
  %2935 = load i64, ptr %2659, align 8, !tbaa !31
  %2936 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2935, i64 1), !nosanitize !30
  %2937 = extractvalue { i64, i1 } %2936, 1, !nosanitize !30
  br i1 %2937, label %2938, label %2939, !prof !32, !nosanitize !30

2938:                                             ; preds = %2930
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2939:                                             ; preds = %2930
  %2940 = extractvalue { i64, i1 } %2936, 0, !nosanitize !30
  %2941 = load ptr, ptr %2660, align 8, !tbaa !33
  %2942 = trunc i16 %2934 to i8
  store i64 %2940, ptr %2659, align 8, !tbaa !31
  %2943 = getelementptr inbounds nuw i8, ptr %2941, i64 %2935
  store i8 %2942, ptr %2943, align 1, !tbaa !28
  %2944 = load i64, ptr %2659, align 8, !tbaa !31
  %2945 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2944, i64 1), !nosanitize !30
  %2946 = extractvalue { i64, i1 } %2945, 1, !nosanitize !30
  br i1 %2946, label %2947, label %2948, !prof !32, !nosanitize !30

2947:                                             ; preds = %2965, %2958, %2939
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2948:                                             ; preds = %2939
  %2949 = extractvalue { i64, i1 } %2945, 0, !nosanitize !30
  %2950 = load ptr, ptr %2660, align 8, !tbaa !33
  %2951 = load i16, ptr %2658, align 8, !tbaa !25
  %2952 = lshr i16 %2951, 8
  %2953 = trunc nuw i16 %2952 to i8
  store i64 %2949, ptr %2659, align 8, !tbaa !31
  %2954 = getelementptr inbounds nuw i8, ptr %2950, i64 %2944
  store i8 %2953, ptr %2954, align 1, !tbaa !28
  %2955 = load i32, ptr %2441, align 4, !tbaa !26
  %2956 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2955), !nosanitize !30
  %2957 = extractvalue { i32, i1 } %2956, 1, !nosanitize !30
  br i1 %2957, label %.loopexit, label %2958, !prof !32, !nosanitize !30

2958:                                             ; preds = %2948
  %2959 = extractvalue { i32, i1 } %2956, 0, !nosanitize !30
  %2960 = lshr i32 %2931, %2959
  %2961 = trunc nuw i32 %2960 to i16
  store i16 %2961, ptr %2658, align 8, !tbaa !25
  %2962 = add i32 %2916, -16
  %2963 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2955, i32 %2962), !nosanitize !30
  %2964 = extractvalue { i32, i1 } %2963, 1, !nosanitize !30
  br i1 %2964, label %2947, label %2971, !prof !32, !nosanitize !30

2965:                                             ; preds = %2927
  %2966 = shl i32 %2922, %2914
  %2967 = trunc i32 %2966 to i16
  %2968 = or i16 %2912, %2967
  store i16 %2968, ptr %2658, align 8, !tbaa !25
  %2969 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2914, i32 %2916), !nosanitize !30
  %2970 = extractvalue { i32, i1 } %2969, 1, !nosanitize !30
  br i1 %2970, label %2947, label %2971, !prof !32, !nosanitize !30

2971:                                             ; preds = %2965, %2958, %2737, %2730
  %2972 = phi i16 [ %2733, %2730 ], [ %2704, %2737 ], [ %2961, %2958 ], [ %2968, %2965 ]
  %2973 = phi { i32, i1 } [ %2735, %2730 ], [ %2739, %2737 ], [ %2963, %2958 ], [ %2969, %2965 ]
  %2974 = extractvalue { i32, i1 } %2973, 0
  store i32 %2974, ptr %2441, align 4, !tbaa !26
  br label %2975

2975:                                             ; preds = %2971, %2911
  %2976 = phi i16 [ %2912, %2911 ], [ %2972, %2971 ]
  %2977 = phi i32 [ %2914, %2911 ], [ %2974, %2971 ]
  %2978 = load i32, ptr %2653, align 4, !tbaa !29
  %2979 = icmp ult i32 %2683, %2978
  br i1 %2979, label %2661, label %.loopexit264, !llvm.loop !81

.loopexit264:                                     ; preds = %2975, %2650
  %2980 = phi i16 [ %2651, %2650 ], [ %2976, %2975 ]
  %2981 = phi i32 [ %2652, %2650 ], [ %2977, %2975 ]
  %2982 = icmp sgt i32 %2981, 9
  %2983 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %2982, label %2984, label %3012

2984:                                             ; preds = %.loopexit264
  %2985 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2986 = load i64, ptr %2985, align 8, !tbaa !31
  %2987 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2986, i64 1), !nosanitize !30
  %2988 = extractvalue { i64, i1 } %2987, 1, !nosanitize !30
  br i1 %2988, label %2989, label %2990, !prof !32, !nosanitize !30

2989:                                             ; preds = %2984
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2990:                                             ; preds = %2984
  %2991 = extractvalue { i64, i1 } %2987, 0, !nosanitize !30
  %2992 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2993 = load ptr, ptr %2992, align 8, !tbaa !33
  %2994 = trunc i16 %2980 to i8
  store i64 %2991, ptr %2985, align 8, !tbaa !31
  %2995 = getelementptr inbounds nuw i8, ptr %2993, i64 %2986
  store i8 %2994, ptr %2995, align 1, !tbaa !28
  %2996 = load i64, ptr %2985, align 8, !tbaa !31
  %2997 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2996, i64 1), !nosanitize !30
  %2998 = extractvalue { i64, i1 } %2997, 1, !nosanitize !30
  br i1 %2998, label %2999, label %3000, !prof !32, !nosanitize !30

2999:                                             ; preds = %2990
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3000:                                             ; preds = %2990
  %3001 = extractvalue { i64, i1 } %2997, 0, !nosanitize !30
  %3002 = load ptr, ptr %2992, align 8, !tbaa !33
  %3003 = load i16, ptr %2983, align 8, !tbaa !25
  %3004 = lshr i16 %3003, 8
  %3005 = trunc nuw i16 %3004 to i8
  store i64 %3001, ptr %2985, align 8, !tbaa !31
  %3006 = getelementptr inbounds nuw i8, ptr %3002, i64 %2996
  store i8 %3005, ptr %3006, align 1, !tbaa !28
  %3007 = load i32, ptr %2441, align 4, !tbaa !26
  %3008 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3007), !nosanitize !30
  %3009 = extractvalue { i32, i1 } %3008, 1, !nosanitize !30
  br i1 %3009, label %.loopexit, label %3010, !prof !32, !nosanitize !30

3010:                                             ; preds = %3000
  store i16 0, ptr %2983, align 8, !tbaa !25
  %3011 = add i32 %3007, -9
  br label %3014

3012:                                             ; preds = %.loopexit264
  %3013 = add nsw i32 %2981, 7
  br label %3014

3014:                                             ; preds = %3010, %3012
  %3015 = phi i32 [ %3011, %3010 ], [ %3013, %3012 ]
  store i32 %3015, ptr %2441, align 4, !tbaa !26
  br label %4570

3016:                                             ; preds = %2597
  %3017 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 4), !nosanitize !30
  %3018 = extractvalue { i32, i1 } %3017, 1, !nosanitize !30
  br i1 %2443, label %3019, label %3058

3019:                                             ; preds = %3016
  br i1 %3018, label %2625, label %3020, !prof !32, !nosanitize !30

3020:                                             ; preds = %3019
  %3021 = extractvalue { i32, i1 } %3017, 0, !nosanitize !30
  %3022 = and i32 %3021, 65535
  %3023 = shl i32 %3021, %2442
  %3024 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3025 = load i16, ptr %3024, align 8, !tbaa !25
  %3026 = trunc i32 %3023 to i16
  %3027 = or i16 %3025, %3026
  store i16 %3027, ptr %3024, align 8, !tbaa !25
  %3028 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3029 = load i64, ptr %3028, align 8, !tbaa !31
  %3030 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3029, i64 1), !nosanitize !30
  %3031 = extractvalue { i64, i1 } %3030, 1, !nosanitize !30
  br i1 %3031, label %3032, label %3033, !prof !32, !nosanitize !30

3032:                                             ; preds = %3020
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3033:                                             ; preds = %3020
  %3034 = extractvalue { i64, i1 } %3030, 0, !nosanitize !30
  %3035 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3036 = load ptr, ptr %3035, align 8, !tbaa !33
  %3037 = trunc i16 %3027 to i8
  store i64 %3034, ptr %3028, align 8, !tbaa !31
  %3038 = getelementptr inbounds nuw i8, ptr %3036, i64 %3029
  store i8 %3037, ptr %3038, align 1, !tbaa !28
  %3039 = load i64, ptr %3028, align 8, !tbaa !31
  %3040 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3039, i64 1), !nosanitize !30
  %3041 = extractvalue { i64, i1 } %3040, 1, !nosanitize !30
  br i1 %3041, label %3042, label %3043, !prof !32, !nosanitize !30

3042:                                             ; preds = %3075, %3067, %3058, %3033
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3043:                                             ; preds = %3033
  %3044 = extractvalue { i64, i1 } %3040, 0, !nosanitize !30
  %3045 = load ptr, ptr %3035, align 8, !tbaa !33
  %3046 = load i16, ptr %3024, align 8, !tbaa !25
  %3047 = lshr i16 %3046, 8
  %3048 = trunc nuw i16 %3047 to i8
  store i64 %3044, ptr %3028, align 8, !tbaa !31
  %3049 = getelementptr inbounds nuw i8, ptr %3045, i64 %3039
  store i8 %3048, ptr %3049, align 1, !tbaa !28
  %3050 = load i32, ptr %2441, align 4, !tbaa !26
  %3051 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3050), !nosanitize !30
  %3052 = extractvalue { i32, i1 } %3051, 1, !nosanitize !30
  br i1 %3052, label %2601, label %3053, !prof !32, !nosanitize !30

3053:                                             ; preds = %3043
  %3054 = extractvalue { i32, i1 } %3051, 0, !nosanitize !30
  %3055 = lshr i32 %3022, %3054
  %3056 = trunc nuw i32 %3055 to i16
  store i16 %3056, ptr %3024, align 8, !tbaa !25
  %3057 = add i32 %3050, -13
  br label %3067

3058:                                             ; preds = %3016
  br i1 %3018, label %3042, label %3059, !prof !32, !nosanitize !30

3059:                                             ; preds = %3058
  %3060 = extractvalue { i32, i1 } %3017, 0, !nosanitize !30
  %3061 = shl i32 %3060, %2442
  %3062 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3063 = load i16, ptr %3062, align 8, !tbaa !25
  %3064 = trunc i32 %3061 to i16
  %3065 = or i16 %3063, %3064
  store i16 %3065, ptr %3062, align 8, !tbaa !25
  %3066 = add nsw i32 %2442, 3
  br label %3067

3067:                                             ; preds = %3053, %3059
  %3068 = phi i16 [ %3056, %3053 ], [ %3065, %3059 ]
  %3069 = phi i32 [ %3057, %3053 ], [ %3066, %3059 ]
  store i32 %3069, ptr %2441, align 4, !tbaa !26
  %3070 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %3071 = load i32, ptr %3070, align 8, !tbaa !74
  %3072 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3071, i32 1), !nosanitize !30
  %3073 = extractvalue { i32, i1 } %3072, 0, !nosanitize !30
  %3074 = extractvalue { i32, i1 } %3072, 1, !nosanitize !30
  br i1 %3074, label %3042, label %3075, !prof !32, !nosanitize !30

3075:                                             ; preds = %3067
  %3076 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %3077 = load i32, ptr %3076, align 8, !tbaa !77
  %3078 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3077, i32 1), !nosanitize !30
  %3079 = extractvalue { i32, i1 } %3078, 0, !nosanitize !30
  %3080 = extractvalue { i32, i1 } %3078, 1, !nosanitize !30
  br i1 %3080, label %3042, label %3081, !prof !32, !nosanitize !30

3081:                                             ; preds = %3075
  %3082 = add nuw nsw i32 %2430, 1
  %3083 = icmp sgt i32 %3069, 11
  %3084 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3073, i32 -257)
  %3085 = extractvalue { i32, i1 } %3084, 1, !nosanitize !30
  br i1 %3083, label %3086, label %3124

.loopexit275:                                     ; preds = %3266, %3209, %3159, %3124, %3109, %3086
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

3086:                                             ; preds = %3081
  br i1 %3085, label %.loopexit275, label %3087, !prof !32, !nosanitize !30

3087:                                             ; preds = %3086
  %3088 = extractvalue { i32, i1 } %3084, 0, !nosanitize !30
  %3089 = and i32 %3088, 65535
  %3090 = shl i32 %3088, %3069
  %3091 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3092 = trunc i32 %3090 to i16
  %3093 = or i16 %3068, %3092
  store i16 %3093, ptr %3091, align 8, !tbaa !25
  %3094 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3095 = load i64, ptr %3094, align 8, !tbaa !31
  %3096 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3095, i64 1), !nosanitize !30
  %3097 = extractvalue { i64, i1 } %3096, 1, !nosanitize !30
  br i1 %3097, label %3098, label %3099, !prof !32, !nosanitize !30

3098:                                             ; preds = %3087
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3099:                                             ; preds = %3087
  %3100 = extractvalue { i64, i1 } %3096, 0, !nosanitize !30
  %3101 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3102 = load ptr, ptr %3101, align 8, !tbaa !33
  %3103 = trunc i16 %3093 to i8
  store i64 %3100, ptr %3094, align 8, !tbaa !31
  %3104 = getelementptr inbounds nuw i8, ptr %3102, i64 %3095
  store i8 %3103, ptr %3104, align 1, !tbaa !28
  %3105 = load i64, ptr %3094, align 8, !tbaa !31
  %3106 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3105, i64 1), !nosanitize !30
  %3107 = extractvalue { i64, i1 } %3106, 1, !nosanitize !30
  br i1 %3107, label %3108, label %3109, !prof !32, !nosanitize !30

3108:                                             ; preds = %3099
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3109:                                             ; preds = %3099
  %3110 = extractvalue { i64, i1 } %3106, 0, !nosanitize !30
  %3111 = load ptr, ptr %3101, align 8, !tbaa !33
  %3112 = load i16, ptr %3091, align 8, !tbaa !25
  %3113 = lshr i16 %3112, 8
  %3114 = trunc nuw i16 %3113 to i8
  store i64 %3110, ptr %3094, align 8, !tbaa !31
  %3115 = getelementptr inbounds nuw i8, ptr %3111, i64 %3105
  store i8 %3114, ptr %3115, align 1, !tbaa !28
  %3116 = load i32, ptr %2441, align 4, !tbaa !26
  %3117 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3116), !nosanitize !30
  %3118 = extractvalue { i32, i1 } %3117, 1, !nosanitize !30
  br i1 %3118, label %.loopexit275, label %3119, !prof !32, !nosanitize !30

3119:                                             ; preds = %3109
  %3120 = extractvalue { i32, i1 } %3117, 0, !nosanitize !30
  %3121 = lshr i32 %3089, %3120
  %3122 = trunc nuw i32 %3121 to i16
  store i16 %3122, ptr %3091, align 8, !tbaa !25
  %3123 = add i32 %3116, -11
  br label %3132

3124:                                             ; preds = %3081
  br i1 %3085, label %.loopexit275, label %3125, !prof !32, !nosanitize !30

3125:                                             ; preds = %3124
  %3126 = extractvalue { i32, i1 } %3084, 0, !nosanitize !30
  %3127 = shl i32 %3126, %3069
  %3128 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3129 = trunc i32 %3127 to i16
  %3130 = or i16 %3068, %3129
  store i16 %3130, ptr %3128, align 8, !tbaa !25
  %3131 = add nsw i32 %3069, 5
  br label %3132

3132:                                             ; preds = %3119, %3125
  %3133 = phi i16 [ %3122, %3119 ], [ %3130, %3125 ]
  %3134 = phi i32 [ %3123, %3119 ], [ %3131, %3125 ]
  store i32 %3134, ptr %2441, align 4, !tbaa !26
  %3135 = icmp sgt i32 %3134, 11
  %3136 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3079, i32 -1)
  %3137 = extractvalue { i32, i1 } %3136, 0, !nosanitize !30
  br i1 %3135, label %3138, label %3175

3138:                                             ; preds = %3132
  %3139 = and i32 %3137, 65535
  %3140 = shl i32 %3137, %3134
  %3141 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3142 = trunc i32 %3140 to i16
  %3143 = or i16 %3133, %3142
  store i16 %3143, ptr %3141, align 8, !tbaa !25
  %3144 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3145 = load i64, ptr %3144, align 8, !tbaa !31
  %3146 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3145, i64 1), !nosanitize !30
  %3147 = extractvalue { i64, i1 } %3146, 1, !nosanitize !30
  br i1 %3147, label %3148, label %3149, !prof !32, !nosanitize !30

3148:                                             ; preds = %3138
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3149:                                             ; preds = %3138
  %3150 = extractvalue { i64, i1 } %3146, 0, !nosanitize !30
  %3151 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3152 = load ptr, ptr %3151, align 8, !tbaa !33
  %3153 = trunc i16 %3143 to i8
  store i64 %3150, ptr %3144, align 8, !tbaa !31
  %3154 = getelementptr inbounds nuw i8, ptr %3152, i64 %3145
  store i8 %3153, ptr %3154, align 1, !tbaa !28
  %3155 = load i64, ptr %3144, align 8, !tbaa !31
  %3156 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3155, i64 1), !nosanitize !30
  %3157 = extractvalue { i64, i1 } %3156, 1, !nosanitize !30
  br i1 %3157, label %3158, label %3159, !prof !32, !nosanitize !30

3158:                                             ; preds = %3169, %3149
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3159:                                             ; preds = %3149
  %3160 = extractvalue { i64, i1 } %3156, 0, !nosanitize !30
  %3161 = load ptr, ptr %3151, align 8, !tbaa !33
  %3162 = load i16, ptr %3141, align 8, !tbaa !25
  %3163 = lshr i16 %3162, 8
  %3164 = trunc nuw i16 %3163 to i8
  store i64 %3160, ptr %3144, align 8, !tbaa !31
  %3165 = getelementptr inbounds nuw i8, ptr %3161, i64 %3155
  store i8 %3164, ptr %3165, align 1, !tbaa !28
  %3166 = load i32, ptr %2441, align 4, !tbaa !26
  %3167 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3166), !nosanitize !30
  %3168 = extractvalue { i32, i1 } %3167, 1, !nosanitize !30
  br i1 %3168, label %.loopexit275, label %3169, !prof !32, !nosanitize !30

3169:                                             ; preds = %3159
  %3170 = extractvalue { i32, i1 } %3167, 0, !nosanitize !30
  %3171 = lshr i32 %3139, %3170
  %3172 = trunc nuw i32 %3171 to i16
  store i16 %3172, ptr %3141, align 8, !tbaa !25
  %3173 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3166, i32 -11), !nosanitize !30
  %3174 = extractvalue { i32, i1 } %3173, 1, !nosanitize !30
  br i1 %3174, label %3158, label %3182, !prof !32, !nosanitize !30

3175:                                             ; preds = %3132
  %3176 = shl i32 %3137, %3134
  %3177 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3178 = trunc i32 %3176 to i16
  %3179 = or i16 %3133, %3178
  store i16 %3179, ptr %3177, align 8, !tbaa !25
  %3180 = add nsw i32 %3134, 5
  %3181 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3180, 0
  br label %3182

3182:                                             ; preds = %3175, %3169
  %3183 = phi i16 [ %3172, %3169 ], [ %3179, %3175 ]
  %3184 = phi { i32, i1 } [ %3173, %3169 ], [ %3181, %3175 ]
  %3185 = extractvalue { i32, i1 } %3184, 0
  store i32 %3185, ptr %2441, align 4, !tbaa !26
  %3186 = icmp sgt i32 %3185, 12
  %3187 = add nsw i32 %2430, -3
  br i1 %3186, label %3188, label %3224

3188:                                             ; preds = %3182
  %3189 = and i32 %3187, 65535
  %3190 = shl i32 %3187, %3185
  %3191 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3192 = trunc i32 %3190 to i16
  %3193 = or i16 %3183, %3192
  store i16 %3193, ptr %3191, align 8, !tbaa !25
  %3194 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3195 = load i64, ptr %3194, align 8, !tbaa !31
  %3196 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3195, i64 1), !nosanitize !30
  %3197 = extractvalue { i64, i1 } %3196, 1, !nosanitize !30
  br i1 %3197, label %3198, label %3199, !prof !32, !nosanitize !30

3198:                                             ; preds = %3188
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3199:                                             ; preds = %3188
  %3200 = extractvalue { i64, i1 } %3196, 0, !nosanitize !30
  %3201 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3202 = load ptr, ptr %3201, align 8, !tbaa !33
  %3203 = trunc i16 %3193 to i8
  store i64 %3200, ptr %3194, align 8, !tbaa !31
  %3204 = getelementptr inbounds nuw i8, ptr %3202, i64 %3195
  store i8 %3203, ptr %3204, align 1, !tbaa !28
  %3205 = load i64, ptr %3194, align 8, !tbaa !31
  %3206 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3205, i64 1), !nosanitize !30
  %3207 = extractvalue { i64, i1 } %3206, 1, !nosanitize !30
  br i1 %3207, label %3208, label %3209, !prof !32, !nosanitize !30

3208:                                             ; preds = %3199
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3209:                                             ; preds = %3199
  %3210 = extractvalue { i64, i1 } %3206, 0, !nosanitize !30
  %3211 = load ptr, ptr %3201, align 8, !tbaa !33
  %3212 = load i16, ptr %3191, align 8, !tbaa !25
  %3213 = lshr i16 %3212, 8
  %3214 = trunc nuw i16 %3213 to i8
  store i64 %3210, ptr %3194, align 8, !tbaa !31
  %3215 = getelementptr inbounds nuw i8, ptr %3211, i64 %3205
  store i8 %3214, ptr %3215, align 1, !tbaa !28
  %3216 = load i32, ptr %2441, align 4, !tbaa !26
  %3217 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3216), !nosanitize !30
  %3218 = extractvalue { i32, i1 } %3217, 1, !nosanitize !30
  br i1 %3218, label %.loopexit275, label %3219, !prof !32, !nosanitize !30

3219:                                             ; preds = %3209
  %3220 = extractvalue { i32, i1 } %3217, 0, !nosanitize !30
  %3221 = lshr i32 %3189, %3220
  %3222 = trunc nuw i32 %3221 to i16
  %3223 = add i32 %3216, -12
  br label %3229

3224:                                             ; preds = %3182
  %3225 = shl nsw i32 %3187, %3185
  %3226 = trunc i32 %3225 to i16
  %3227 = or i16 %3183, %3226
  %3228 = add nsw i32 %3185, 4
  br label %3229

3229:                                             ; preds = %3219, %3224
  %3230 = phi i16 [ %3222, %3219 ], [ %3227, %3224 ]
  %3231 = phi i32 [ %3223, %3219 ], [ %3228, %3224 ]
  store i32 %3231, ptr %2441, align 4, !tbaa !26
  %3232 = getelementptr i8, ptr %0, i64 2750
  %3233 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3234 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3235 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3236 = zext nneg i32 %3082 to i64
  br label %3237

3237:                                             ; preds = %3283, %3229
  %3238 = phi i16 [ %3230, %3229 ], [ %3284, %3283 ]
  %3239 = phi i32 [ %3231, %3229 ], [ %3285, %3283 ]
  %3240 = phi i64 [ 0, %3229 ], [ %3286, %3283 ]
  %3241 = icmp sgt i32 %3239, 13
  %3242 = getelementptr inbounds nuw i8, ptr @bl_order, i64 %3240
  %3243 = load i8, ptr %3242, align 1, !tbaa !28
  %3244 = zext i8 %3243 to i64
  %3245 = shl nuw nsw i64 %3244, 2
  %3246 = getelementptr i8, ptr %3232, i64 %3245
  %3247 = load i16, ptr %3246, align 2, !tbaa !28
  %3248 = zext i16 %3247 to i32
  %3249 = shl i32 %3248, %3239
  %3250 = trunc i32 %3249 to i16
  %3251 = or i16 %3238, %3250
  store i16 %3251, ptr %3233, align 8, !tbaa !25
  br i1 %3241, label %3252, label %3281

3252:                                             ; preds = %3237
  %3253 = load i64, ptr %3234, align 8, !tbaa !31
  %3254 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3253, i64 1), !nosanitize !30
  %3255 = extractvalue { i64, i1 } %3254, 1, !nosanitize !30
  br i1 %3255, label %3256, label %3257, !prof !32, !nosanitize !30

3256:                                             ; preds = %3252
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3257:                                             ; preds = %3252
  %3258 = extractvalue { i64, i1 } %3254, 0, !nosanitize !30
  %3259 = load ptr, ptr %3235, align 8, !tbaa !33
  %3260 = trunc i16 %3251 to i8
  store i64 %3258, ptr %3234, align 8, !tbaa !31
  %3261 = getelementptr inbounds nuw i8, ptr %3259, i64 %3253
  store i8 %3260, ptr %3261, align 1, !tbaa !28
  %3262 = load i64, ptr %3234, align 8, !tbaa !31
  %3263 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3262, i64 1), !nosanitize !30
  %3264 = extractvalue { i64, i1 } %3263, 1, !nosanitize !30
  br i1 %3264, label %3265, label %3266, !prof !32, !nosanitize !30

3265:                                             ; preds = %3257
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3266:                                             ; preds = %3257
  %3267 = extractvalue { i64, i1 } %3263, 0, !nosanitize !30
  %3268 = load ptr, ptr %3235, align 8, !tbaa !33
  %3269 = load i16, ptr %3233, align 8, !tbaa !25
  %3270 = lshr i16 %3269, 8
  %3271 = trunc nuw i16 %3270 to i8
  store i64 %3267, ptr %3234, align 8, !tbaa !31
  %3272 = getelementptr inbounds nuw i8, ptr %3268, i64 %3262
  store i8 %3271, ptr %3272, align 1, !tbaa !28
  %3273 = load i32, ptr %2441, align 4, !tbaa !26
  %3274 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3273), !nosanitize !30
  %3275 = extractvalue { i32, i1 } %3274, 1, !nosanitize !30
  br i1 %3275, label %.loopexit275, label %3276, !prof !32, !nosanitize !30

3276:                                             ; preds = %3266
  %3277 = extractvalue { i32, i1 } %3274, 0, !nosanitize !30
  %3278 = lshr i32 %3248, %3277
  %3279 = trunc nuw i32 %3278 to i16
  store i16 %3279, ptr %3233, align 8, !tbaa !25
  %3280 = add i32 %3273, -13
  br label %3283

3281:                                             ; preds = %3237
  %3282 = add nsw i32 %3239, 3
  br label %3283

3283:                                             ; preds = %3276, %3281
  %3284 = phi i16 [ %3279, %3276 ], [ %3251, %3281 ]
  %3285 = phi i32 [ %3280, %3276 ], [ %3282, %3281 ]
  store i32 %3285, ptr %2441, align 4, !tbaa !26
  %3286 = add nuw nsw i64 %3240, 1
  %3287 = icmp eq i64 %3286, %3236
  br i1 %3287, label %3288, label %3237, !llvm.loop !82

3288:                                             ; preds = %3283
  %3289 = add i32 %3073, -1
  %3290 = icmp slt i32 %3289, 0
  br i1 %3290, label %.loopexit274, label %3291

3291:                                             ; preds = %3288
  %3292 = getelementptr i8, ptr %0, i64 214
  %3293 = load i16, ptr %3292, align 2, !tbaa !28
  %3294 = icmp eq i16 %3293, 0
  %3295 = select i1 %3294, i32 138, i32 7
  %3296 = select i1 %3294, i32 3, i32 4
  %3297 = zext i16 %3293 to i32
  %3298 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3299 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3300 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3301 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3302 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3303 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3304 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3310

3305:                                             ; preds = %3727
  %3306 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3311, i32 1), !nosanitize !30
  %3307 = extractvalue { i32, i1 } %3306, 0, !nosanitize !30
  %3308 = extractvalue { i32, i1 } %3306, 1, !nosanitize !30
  br i1 %3308, label %3309, label %3310, !prof !75, !llvm.loop !83, !nosanitize !30

3309:                                             ; preds = %3305
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

3310:                                             ; preds = %3291, %3305
  %3311 = phi i32 [ 1, %3291 ], [ %3307, %3305 ]
  %3312 = phi i32 [ %3296, %3291 ], [ %3730, %3305 ]
  %3313 = phi i32 [ %3295, %3291 ], [ %3731, %3305 ]
  %3314 = phi i32 [ 0, %3291 ], [ %3732, %3305 ]
  %3315 = phi i32 [ %3297, %3291 ], [ %3323, %3305 ]
  %3316 = phi i32 [ -1, %3291 ], [ %3733, %3305 ]
  %3317 = phi i32 [ %3285, %3291 ], [ %3729, %3305 ]
  %3318 = phi i16 [ %3284, %3291 ], [ %3728, %3305 ]
  %3319 = sext i32 %3311 to i64
  %3320 = shl nsw i64 %3319, 2
  %3321 = getelementptr i8, ptr %3292, i64 %3320
  %3322 = load i16, ptr %3321, align 2, !tbaa !28
  %3323 = zext i16 %3322 to i32
  %3324 = add nsw i32 %3314, 1
  %3325 = icmp slt i32 %3324, %3313
  %3326 = icmp eq i32 %3315, %3323
  %3327 = select i1 %3325, i1 %3326, i1 false
  br i1 %3327, label %3727, label %3328

3328:                                             ; preds = %3310
  %3329 = icmp slt i32 %3324, %3312
  br i1 %3329, label %3330, label %3390

3330:                                             ; preds = %3328
  %3331 = zext nneg i32 %3315 to i64
  %3332 = getelementptr inbounds nuw [4 x i8], ptr %3298, i64 %3331
  %3333 = getelementptr inbounds nuw i8, ptr %3332, i64 2
  br label %3334

3334:                                             ; preds = %3387, %3330
  %3335 = phi i16 [ %3382, %3387 ], [ %3318, %3330 ]
  %3336 = phi i32 [ %3384, %3387 ], [ %3317, %3330 ]
  %3337 = phi i32 [ %3388, %3387 ], [ %3324, %3330 ]
  %3338 = load i16, ptr %3333, align 2, !tbaa !28
  %3339 = zext i16 %3338 to i32
  %3340 = sub nsw i32 16, %3339
  %3341 = icmp sgt i32 %3336, %3340
  %3342 = load i16, ptr %3332, align 4, !tbaa !28
  %3343 = zext i16 %3342 to i32
  %3344 = shl i32 %3343, %3336
  %3345 = trunc i32 %3344 to i16
  %3346 = or i16 %3335, %3345
  store i16 %3346, ptr %3233, align 8, !tbaa !25
  br i1 %3341, label %3347, label %3378

.loopexit271:                                     ; preds = %3696, %3652, %3607, %3563, %3516, %3472, %3421, %3381, %3361
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

3347:                                             ; preds = %3334
  %3348 = load i64, ptr %3234, align 8, !tbaa !31
  %3349 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3348, i64 1), !nosanitize !30
  %3350 = extractvalue { i64, i1 } %3349, 1, !nosanitize !30
  br i1 %3350, label %3351, label %3352, !prof !32, !nosanitize !30

3351:                                             ; preds = %3347
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3352:                                             ; preds = %3347
  %3353 = extractvalue { i64, i1 } %3349, 0, !nosanitize !30
  %3354 = load ptr, ptr %3235, align 8, !tbaa !33
  %3355 = trunc i16 %3346 to i8
  store i64 %3353, ptr %3234, align 8, !tbaa !31
  %3356 = getelementptr inbounds nuw i8, ptr %3354, i64 %3348
  store i8 %3355, ptr %3356, align 1, !tbaa !28
  %3357 = load i64, ptr %3234, align 8, !tbaa !31
  %3358 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3357, i64 1), !nosanitize !30
  %3359 = extractvalue { i64, i1 } %3358, 1, !nosanitize !30
  br i1 %3359, label %3360, label %3361, !prof !32, !nosanitize !30

3360:                                             ; preds = %3371, %3352
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3361:                                             ; preds = %3352
  %3362 = extractvalue { i64, i1 } %3358, 0, !nosanitize !30
  %3363 = load ptr, ptr %3235, align 8, !tbaa !33
  %3364 = load i16, ptr %3233, align 8, !tbaa !25
  %3365 = lshr i16 %3364, 8
  %3366 = trunc nuw i16 %3365 to i8
  store i64 %3362, ptr %3234, align 8, !tbaa !31
  %3367 = getelementptr inbounds nuw i8, ptr %3363, i64 %3357
  store i8 %3366, ptr %3367, align 1, !tbaa !28
  %3368 = load i32, ptr %2441, align 4, !tbaa !26
  %3369 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3368), !nosanitize !30
  %3370 = extractvalue { i32, i1 } %3369, 1, !nosanitize !30
  br i1 %3370, label %.loopexit271, label %3371, !prof !32, !nosanitize !30

3371:                                             ; preds = %3361
  %3372 = extractvalue { i32, i1 } %3369, 0, !nosanitize !30
  %3373 = lshr i32 %3343, %3372
  %3374 = trunc nuw i32 %3373 to i16
  store i16 %3374, ptr %3233, align 8, !tbaa !25
  %3375 = add nsw i32 %3339, -16
  %3376 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3368, i32 %3375), !nosanitize !30
  %3377 = extractvalue { i32, i1 } %3376, 1, !nosanitize !30
  br i1 %3377, label %3360, label %3381, !prof !32, !nosanitize !30

3378:                                             ; preds = %3334
  %3379 = add nsw i32 %3336, %3339
  %3380 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3379, 0
  br label %3381

3381:                                             ; preds = %3378, %3371
  %3382 = phi i16 [ %3374, %3371 ], [ %3346, %3378 ]
  %3383 = phi { i32, i1 } [ %3376, %3371 ], [ %3380, %3378 ]
  %3384 = extractvalue { i32, i1 } %3383, 0
  store i32 %3384, ptr %2441, align 4, !tbaa !26
  %3385 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3337, i32 -1)
  %3386 = extractvalue { i32, i1 } %3385, 1, !nosanitize !30
  br i1 %3386, label %.loopexit271, label %3387, !prof !32, !nosanitize !30

3387:                                             ; preds = %3381
  %3388 = extractvalue { i32, i1 } %3385, 0, !nosanitize !30
  %3389 = icmp eq i32 %3388, 0
  br i1 %3389, label %.loopexit272, label %3334, !llvm.loop !84

3390:                                             ; preds = %3328
  %3391 = icmp eq i32 %3315, 0
  br i1 %3391, label %3537, label %3392

3392:                                             ; preds = %3390
  %3393 = icmp eq i32 %3315, %3316
  br i1 %3393, label %3445, label %3394

3394:                                             ; preds = %3392
  %3395 = zext nneg i32 %3315 to i64
  %3396 = getelementptr inbounds nuw [4 x i8], ptr %3298, i64 %3395
  %3397 = getelementptr inbounds nuw i8, ptr %3396, i64 2
  %3398 = load i16, ptr %3397, align 2, !tbaa !28
  %3399 = zext i16 %3398 to i32
  %3400 = sub nsw i32 16, %3399
  %3401 = icmp sgt i32 %3317, %3400
  %3402 = load i16, ptr %3396, align 4, !tbaa !28
  %3403 = zext i16 %3402 to i32
  %3404 = shl i32 %3403, %3317
  %3405 = trunc i32 %3404 to i16
  %3406 = or i16 %3318, %3405
  store i16 %3406, ptr %3233, align 8, !tbaa !25
  br i1 %3401, label %3407, label %3438

3407:                                             ; preds = %3394
  %3408 = load i64, ptr %3234, align 8, !tbaa !31
  %3409 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3408, i64 1), !nosanitize !30
  %3410 = extractvalue { i64, i1 } %3409, 1, !nosanitize !30
  br i1 %3410, label %3411, label %3412, !prof !32, !nosanitize !30

3411:                                             ; preds = %3407
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3412:                                             ; preds = %3407
  %3413 = extractvalue { i64, i1 } %3409, 0, !nosanitize !30
  %3414 = load ptr, ptr %3235, align 8, !tbaa !33
  %3415 = trunc i16 %3406 to i8
  store i64 %3413, ptr %3234, align 8, !tbaa !31
  %3416 = getelementptr inbounds nuw i8, ptr %3414, i64 %3408
  store i8 %3415, ptr %3416, align 1, !tbaa !28
  %3417 = load i64, ptr %3234, align 8, !tbaa !31
  %3418 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3417, i64 1), !nosanitize !30
  %3419 = extractvalue { i64, i1 } %3418, 1, !nosanitize !30
  br i1 %3419, label %3420, label %3421, !prof !32, !nosanitize !30

3420:                                             ; preds = %3431, %3412
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3421:                                             ; preds = %3412
  %3422 = extractvalue { i64, i1 } %3418, 0, !nosanitize !30
  %3423 = load ptr, ptr %3235, align 8, !tbaa !33
  %3424 = load i16, ptr %3233, align 8, !tbaa !25
  %3425 = lshr i16 %3424, 8
  %3426 = trunc nuw i16 %3425 to i8
  store i64 %3422, ptr %3234, align 8, !tbaa !31
  %3427 = getelementptr inbounds nuw i8, ptr %3423, i64 %3417
  store i8 %3426, ptr %3427, align 1, !tbaa !28
  %3428 = load i32, ptr %2441, align 4, !tbaa !26
  %3429 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3428), !nosanitize !30
  %3430 = extractvalue { i32, i1 } %3429, 1, !nosanitize !30
  br i1 %3430, label %.loopexit271, label %3431, !prof !32, !nosanitize !30

3431:                                             ; preds = %3421
  %3432 = extractvalue { i32, i1 } %3429, 0, !nosanitize !30
  %3433 = lshr i32 %3403, %3432
  %3434 = trunc nuw i32 %3433 to i16
  store i16 %3434, ptr %3233, align 8, !tbaa !25
  %3435 = add nsw i32 %3399, -16
  %3436 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3428, i32 %3435), !nosanitize !30
  %3437 = extractvalue { i32, i1 } %3436, 1, !nosanitize !30
  br i1 %3437, label %3420, label %3441, !prof !32, !nosanitize !30

3438:                                             ; preds = %3394
  %3439 = add nsw i32 %3317, %3399
  %3440 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3439, 0
  br label %3441

3441:                                             ; preds = %3438, %3431
  %3442 = phi i16 [ %3434, %3431 ], [ %3406, %3438 ]
  %3443 = phi { i32, i1 } [ %3436, %3431 ], [ %3440, %3438 ]
  %3444 = extractvalue { i32, i1 } %3443, 0
  store i32 %3444, ptr %2441, align 4, !tbaa !26
  br label %3445

3445:                                             ; preds = %3441, %3392
  %3446 = phi i16 [ %3442, %3441 ], [ %3318, %3392 ]
  %3447 = phi i32 [ %3444, %3441 ], [ %3317, %3392 ]
  %3448 = phi i32 [ %3314, %3441 ], [ %3324, %3392 ]
  %3449 = load i16, ptr %3300, align 2, !tbaa !28
  %3450 = zext i16 %3449 to i32
  %3451 = sub nsw i32 16, %3450
  %3452 = icmp sgt i32 %3447, %3451
  %3453 = load i16, ptr %3299, align 4, !tbaa !28
  %3454 = zext i16 %3453 to i32
  %3455 = shl i32 %3454, %3447
  %3456 = trunc i32 %3455 to i16
  %3457 = or i16 %3446, %3456
  store i16 %3457, ptr %3233, align 8, !tbaa !25
  br i1 %3452, label %3458, label %3489

3458:                                             ; preds = %3445
  %3459 = load i64, ptr %3234, align 8, !tbaa !31
  %3460 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3459, i64 1), !nosanitize !30
  %3461 = extractvalue { i64, i1 } %3460, 1, !nosanitize !30
  br i1 %3461, label %3462, label %3463, !prof !32, !nosanitize !30

3462:                                             ; preds = %3458
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3463:                                             ; preds = %3458
  %3464 = extractvalue { i64, i1 } %3460, 0, !nosanitize !30
  %3465 = load ptr, ptr %3235, align 8, !tbaa !33
  %3466 = trunc i16 %3457 to i8
  store i64 %3464, ptr %3234, align 8, !tbaa !31
  %3467 = getelementptr inbounds nuw i8, ptr %3465, i64 %3459
  store i8 %3466, ptr %3467, align 1, !tbaa !28
  %3468 = load i64, ptr %3234, align 8, !tbaa !31
  %3469 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3468, i64 1), !nosanitize !30
  %3470 = extractvalue { i64, i1 } %3469, 1, !nosanitize !30
  br i1 %3470, label %3471, label %3472, !prof !32, !nosanitize !30

3471:                                             ; preds = %3482, %3463
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3472:                                             ; preds = %3463
  %3473 = extractvalue { i64, i1 } %3469, 0, !nosanitize !30
  %3474 = load ptr, ptr %3235, align 8, !tbaa !33
  %3475 = load i16, ptr %3233, align 8, !tbaa !25
  %3476 = lshr i16 %3475, 8
  %3477 = trunc nuw i16 %3476 to i8
  store i64 %3473, ptr %3234, align 8, !tbaa !31
  %3478 = getelementptr inbounds nuw i8, ptr %3474, i64 %3468
  store i8 %3477, ptr %3478, align 1, !tbaa !28
  %3479 = load i32, ptr %2441, align 4, !tbaa !26
  %3480 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3479), !nosanitize !30
  %3481 = extractvalue { i32, i1 } %3480, 1, !nosanitize !30
  br i1 %3481, label %.loopexit271, label %3482, !prof !32, !nosanitize !30

3482:                                             ; preds = %3472
  %3483 = extractvalue { i32, i1 } %3480, 0, !nosanitize !30
  %3484 = lshr i32 %3454, %3483
  %3485 = trunc nuw i32 %3484 to i16
  store i16 %3485, ptr %3233, align 8, !tbaa !25
  %3486 = add nsw i32 %3450, -16
  %3487 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3479, i32 %3486), !nosanitize !30
  %3488 = extractvalue { i32, i1 } %3487, 1, !nosanitize !30
  br i1 %3488, label %3471, label %3492, !prof !32, !nosanitize !30

3489:                                             ; preds = %3445
  %3490 = add nsw i32 %3447, %3450
  %3491 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3490, 0
  br label %3492

3492:                                             ; preds = %3489, %3482
  %3493 = phi i16 [ %3485, %3482 ], [ %3457, %3489 ]
  %3494 = phi { i32, i1 } [ %3487, %3482 ], [ %3491, %3489 ]
  %3495 = extractvalue { i32, i1 } %3494, 0
  store i32 %3495, ptr %2441, align 4, !tbaa !26
  %3496 = icmp sgt i32 %3495, 14
  %3497 = add i32 %3448, 65533
  br i1 %3496, label %3498, label %3531

3498:                                             ; preds = %3492
  %3499 = and i32 %3497, 65535
  %3500 = shl i32 %3497, %3495
  %3501 = trunc i32 %3500 to i16
  %3502 = or i16 %3493, %3501
  store i16 %3502, ptr %3233, align 8, !tbaa !25
  %3503 = load i64, ptr %3234, align 8, !tbaa !31
  %3504 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3503, i64 1), !nosanitize !30
  %3505 = extractvalue { i64, i1 } %3504, 1, !nosanitize !30
  br i1 %3505, label %3506, label %3507, !prof !32, !nosanitize !30

3506:                                             ; preds = %3498
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3507:                                             ; preds = %3498
  %3508 = extractvalue { i64, i1 } %3504, 0, !nosanitize !30
  %3509 = load ptr, ptr %3235, align 8, !tbaa !33
  %3510 = trunc i16 %3502 to i8
  store i64 %3508, ptr %3234, align 8, !tbaa !31
  %3511 = getelementptr inbounds nuw i8, ptr %3509, i64 %3503
  store i8 %3510, ptr %3511, align 1, !tbaa !28
  %3512 = load i64, ptr %3234, align 8, !tbaa !31
  %3513 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3512, i64 1), !nosanitize !30
  %3514 = extractvalue { i64, i1 } %3513, 1, !nosanitize !30
  br i1 %3514, label %3515, label %3516, !prof !32, !nosanitize !30

3515:                                             ; preds = %3507
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3516:                                             ; preds = %3507
  %3517 = extractvalue { i64, i1 } %3513, 0, !nosanitize !30
  %3518 = load ptr, ptr %3235, align 8, !tbaa !33
  %3519 = load i16, ptr %3233, align 8, !tbaa !25
  %3520 = lshr i16 %3519, 8
  %3521 = trunc nuw i16 %3520 to i8
  store i64 %3517, ptr %3234, align 8, !tbaa !31
  %3522 = getelementptr inbounds nuw i8, ptr %3518, i64 %3512
  store i8 %3521, ptr %3522, align 1, !tbaa !28
  %3523 = load i32, ptr %2441, align 4, !tbaa !26
  %3524 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3523), !nosanitize !30
  %3525 = extractvalue { i32, i1 } %3524, 1, !nosanitize !30
  br i1 %3525, label %.loopexit271, label %3526, !prof !32, !nosanitize !30

3526:                                             ; preds = %3516
  %3527 = extractvalue { i32, i1 } %3524, 0, !nosanitize !30
  %3528 = lshr i32 %3499, %3527
  %3529 = trunc nuw i32 %3528 to i16
  store i16 %3529, ptr %3233, align 8, !tbaa !25
  %3530 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3523, i32 -14), !nosanitize !30
  br label %3717

3531:                                             ; preds = %3492
  %3532 = shl i32 %3497, %3495
  %3533 = trunc i32 %3532 to i16
  %3534 = or i16 %3493, %3533
  store i16 %3534, ptr %3233, align 8, !tbaa !25
  %3535 = add nsw i32 %3495, 2
  %3536 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3535, 0
  br label %3717

3537:                                             ; preds = %3390
  %3538 = icmp slt i32 %3314, 10
  br i1 %3538, label %3539, label %3628

3539:                                             ; preds = %3537
  %3540 = load i16, ptr %3304, align 2, !tbaa !28
  %3541 = zext i16 %3540 to i32
  %3542 = sub nsw i32 16, %3541
  %3543 = icmp sgt i32 %3317, %3542
  %3544 = load i16, ptr %3303, align 4, !tbaa !28
  %3545 = zext i16 %3544 to i32
  %3546 = shl i32 %3545, %3317
  %3547 = trunc i32 %3546 to i16
  %3548 = or i16 %3318, %3547
  store i16 %3548, ptr %3233, align 8, !tbaa !25
  br i1 %3543, label %3549, label %3580

3549:                                             ; preds = %3539
  %3550 = load i64, ptr %3234, align 8, !tbaa !31
  %3551 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3550, i64 1), !nosanitize !30
  %3552 = extractvalue { i64, i1 } %3551, 1, !nosanitize !30
  br i1 %3552, label %3553, label %3554, !prof !32, !nosanitize !30

3553:                                             ; preds = %3549
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3554:                                             ; preds = %3549
  %3555 = extractvalue { i64, i1 } %3551, 0, !nosanitize !30
  %3556 = load ptr, ptr %3235, align 8, !tbaa !33
  %3557 = trunc i16 %3548 to i8
  store i64 %3555, ptr %3234, align 8, !tbaa !31
  %3558 = getelementptr inbounds nuw i8, ptr %3556, i64 %3550
  store i8 %3557, ptr %3558, align 1, !tbaa !28
  %3559 = load i64, ptr %3234, align 8, !tbaa !31
  %3560 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3559, i64 1), !nosanitize !30
  %3561 = extractvalue { i64, i1 } %3560, 1, !nosanitize !30
  br i1 %3561, label %3562, label %3563, !prof !32, !nosanitize !30

3562:                                             ; preds = %3573, %3554
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3563:                                             ; preds = %3554
  %3564 = extractvalue { i64, i1 } %3560, 0, !nosanitize !30
  %3565 = load ptr, ptr %3235, align 8, !tbaa !33
  %3566 = load i16, ptr %3233, align 8, !tbaa !25
  %3567 = lshr i16 %3566, 8
  %3568 = trunc nuw i16 %3567 to i8
  store i64 %3564, ptr %3234, align 8, !tbaa !31
  %3569 = getelementptr inbounds nuw i8, ptr %3565, i64 %3559
  store i8 %3568, ptr %3569, align 1, !tbaa !28
  %3570 = load i32, ptr %2441, align 4, !tbaa !26
  %3571 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3570), !nosanitize !30
  %3572 = extractvalue { i32, i1 } %3571, 1, !nosanitize !30
  br i1 %3572, label %.loopexit271, label %3573, !prof !32, !nosanitize !30

3573:                                             ; preds = %3563
  %3574 = extractvalue { i32, i1 } %3571, 0, !nosanitize !30
  %3575 = lshr i32 %3545, %3574
  %3576 = trunc nuw i32 %3575 to i16
  store i16 %3576, ptr %3233, align 8, !tbaa !25
  %3577 = add nsw i32 %3541, -16
  %3578 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3570, i32 %3577), !nosanitize !30
  %3579 = extractvalue { i32, i1 } %3578, 1, !nosanitize !30
  br i1 %3579, label %3562, label %3583, !prof !32, !nosanitize !30

3580:                                             ; preds = %3539
  %3581 = add nsw i32 %3317, %3541
  %3582 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3581, 0
  br label %3583

3583:                                             ; preds = %3580, %3573
  %3584 = phi i16 [ %3576, %3573 ], [ %3548, %3580 ]
  %3585 = phi { i32, i1 } [ %3578, %3573 ], [ %3582, %3580 ]
  %3586 = extractvalue { i32, i1 } %3585, 0
  store i32 %3586, ptr %2441, align 4, !tbaa !26
  %3587 = icmp sgt i32 %3586, 13
  %3588 = add nsw i32 %3314, 65534
  br i1 %3587, label %3589, label %3622

3589:                                             ; preds = %3583
  %3590 = and i32 %3588, 65535
  %3591 = shl i32 %3588, %3586
  %3592 = trunc i32 %3591 to i16
  %3593 = or i16 %3584, %3592
  store i16 %3593, ptr %3233, align 8, !tbaa !25
  %3594 = load i64, ptr %3234, align 8, !tbaa !31
  %3595 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3594, i64 1), !nosanitize !30
  %3596 = extractvalue { i64, i1 } %3595, 1, !nosanitize !30
  br i1 %3596, label %3597, label %3598, !prof !32, !nosanitize !30

3597:                                             ; preds = %3589
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3598:                                             ; preds = %3589
  %3599 = extractvalue { i64, i1 } %3595, 0, !nosanitize !30
  %3600 = load ptr, ptr %3235, align 8, !tbaa !33
  %3601 = trunc i16 %3593 to i8
  store i64 %3599, ptr %3234, align 8, !tbaa !31
  %3602 = getelementptr inbounds nuw i8, ptr %3600, i64 %3594
  store i8 %3601, ptr %3602, align 1, !tbaa !28
  %3603 = load i64, ptr %3234, align 8, !tbaa !31
  %3604 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3603, i64 1), !nosanitize !30
  %3605 = extractvalue { i64, i1 } %3604, 1, !nosanitize !30
  br i1 %3605, label %3606, label %3607, !prof !32, !nosanitize !30

3606:                                             ; preds = %3598
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3607:                                             ; preds = %3598
  %3608 = extractvalue { i64, i1 } %3604, 0, !nosanitize !30
  %3609 = load ptr, ptr %3235, align 8, !tbaa !33
  %3610 = load i16, ptr %3233, align 8, !tbaa !25
  %3611 = lshr i16 %3610, 8
  %3612 = trunc nuw i16 %3611 to i8
  store i64 %3608, ptr %3234, align 8, !tbaa !31
  %3613 = getelementptr inbounds nuw i8, ptr %3609, i64 %3603
  store i8 %3612, ptr %3613, align 1, !tbaa !28
  %3614 = load i32, ptr %2441, align 4, !tbaa !26
  %3615 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3614), !nosanitize !30
  %3616 = extractvalue { i32, i1 } %3615, 1, !nosanitize !30
  br i1 %3616, label %.loopexit271, label %3617, !prof !32, !nosanitize !30

3617:                                             ; preds = %3607
  %3618 = extractvalue { i32, i1 } %3615, 0, !nosanitize !30
  %3619 = lshr i32 %3590, %3618
  %3620 = trunc nuw i32 %3619 to i16
  store i16 %3620, ptr %3233, align 8, !tbaa !25
  %3621 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3614, i32 -13), !nosanitize !30
  br label %3717

3622:                                             ; preds = %3583
  %3623 = shl i32 %3588, %3586
  %3624 = trunc i32 %3623 to i16
  %3625 = or i16 %3584, %3624
  store i16 %3625, ptr %3233, align 8, !tbaa !25
  %3626 = add nsw i32 %3586, 3
  %3627 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3626, 0
  br label %3717

3628:                                             ; preds = %3537
  %3629 = load i16, ptr %3302, align 2, !tbaa !28
  %3630 = zext i16 %3629 to i32
  %3631 = sub nsw i32 16, %3630
  %3632 = icmp sgt i32 %3317, %3631
  %3633 = load i16, ptr %3301, align 4, !tbaa !28
  %3634 = zext i16 %3633 to i32
  %3635 = shl i32 %3634, %3317
  %3636 = trunc i32 %3635 to i16
  %3637 = or i16 %3318, %3636
  store i16 %3637, ptr %3233, align 8, !tbaa !25
  br i1 %3632, label %3638, label %3669

3638:                                             ; preds = %3628
  %3639 = load i64, ptr %3234, align 8, !tbaa !31
  %3640 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3639, i64 1), !nosanitize !30
  %3641 = extractvalue { i64, i1 } %3640, 1, !nosanitize !30
  br i1 %3641, label %3642, label %3643, !prof !32, !nosanitize !30

3642:                                             ; preds = %3638
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3643:                                             ; preds = %3638
  %3644 = extractvalue { i64, i1 } %3640, 0, !nosanitize !30
  %3645 = load ptr, ptr %3235, align 8, !tbaa !33
  %3646 = trunc i16 %3637 to i8
  store i64 %3644, ptr %3234, align 8, !tbaa !31
  %3647 = getelementptr inbounds nuw i8, ptr %3645, i64 %3639
  store i8 %3646, ptr %3647, align 1, !tbaa !28
  %3648 = load i64, ptr %3234, align 8, !tbaa !31
  %3649 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3648, i64 1), !nosanitize !30
  %3650 = extractvalue { i64, i1 } %3649, 1, !nosanitize !30
  br i1 %3650, label %3651, label %3652, !prof !32, !nosanitize !30

3651:                                             ; preds = %3662, %3643
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3652:                                             ; preds = %3643
  %3653 = extractvalue { i64, i1 } %3649, 0, !nosanitize !30
  %3654 = load ptr, ptr %3235, align 8, !tbaa !33
  %3655 = load i16, ptr %3233, align 8, !tbaa !25
  %3656 = lshr i16 %3655, 8
  %3657 = trunc nuw i16 %3656 to i8
  store i64 %3653, ptr %3234, align 8, !tbaa !31
  %3658 = getelementptr inbounds nuw i8, ptr %3654, i64 %3648
  store i8 %3657, ptr %3658, align 1, !tbaa !28
  %3659 = load i32, ptr %2441, align 4, !tbaa !26
  %3660 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3659), !nosanitize !30
  %3661 = extractvalue { i32, i1 } %3660, 1, !nosanitize !30
  br i1 %3661, label %.loopexit271, label %3662, !prof !32, !nosanitize !30

3662:                                             ; preds = %3652
  %3663 = extractvalue { i32, i1 } %3660, 0, !nosanitize !30
  %3664 = lshr i32 %3634, %3663
  %3665 = trunc nuw i32 %3664 to i16
  store i16 %3665, ptr %3233, align 8, !tbaa !25
  %3666 = add nsw i32 %3630, -16
  %3667 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3659, i32 %3666), !nosanitize !30
  %3668 = extractvalue { i32, i1 } %3667, 1, !nosanitize !30
  br i1 %3668, label %3651, label %3672, !prof !32, !nosanitize !30

3669:                                             ; preds = %3628
  %3670 = add nsw i32 %3317, %3630
  %3671 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3670, 0
  br label %3672

3672:                                             ; preds = %3669, %3662
  %3673 = phi i16 [ %3665, %3662 ], [ %3637, %3669 ]
  %3674 = phi { i32, i1 } [ %3667, %3662 ], [ %3671, %3669 ]
  %3675 = extractvalue { i32, i1 } %3674, 0
  store i32 %3675, ptr %2441, align 4, !tbaa !26
  %3676 = icmp sgt i32 %3675, 9
  %3677 = add nuw i32 %3314, 65526
  br i1 %3676, label %3678, label %3711

3678:                                             ; preds = %3672
  %3679 = and i32 %3677, 65535
  %3680 = shl i32 %3677, %3675
  %3681 = trunc i32 %3680 to i16
  %3682 = or i16 %3673, %3681
  store i16 %3682, ptr %3233, align 8, !tbaa !25
  %3683 = load i64, ptr %3234, align 8, !tbaa !31
  %3684 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3683, i64 1), !nosanitize !30
  %3685 = extractvalue { i64, i1 } %3684, 1, !nosanitize !30
  br i1 %3685, label %3686, label %3687, !prof !32, !nosanitize !30

3686:                                             ; preds = %3678
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3687:                                             ; preds = %3678
  %3688 = extractvalue { i64, i1 } %3684, 0, !nosanitize !30
  %3689 = load ptr, ptr %3235, align 8, !tbaa !33
  %3690 = trunc i16 %3682 to i8
  store i64 %3688, ptr %3234, align 8, !tbaa !31
  %3691 = getelementptr inbounds nuw i8, ptr %3689, i64 %3683
  store i8 %3690, ptr %3691, align 1, !tbaa !28
  %3692 = load i64, ptr %3234, align 8, !tbaa !31
  %3693 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3692, i64 1), !nosanitize !30
  %3694 = extractvalue { i64, i1 } %3693, 1, !nosanitize !30
  br i1 %3694, label %3695, label %3696, !prof !32, !nosanitize !30

3695:                                             ; preds = %3687
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3696:                                             ; preds = %3687
  %3697 = extractvalue { i64, i1 } %3693, 0, !nosanitize !30
  %3698 = load ptr, ptr %3235, align 8, !tbaa !33
  %3699 = load i16, ptr %3233, align 8, !tbaa !25
  %3700 = lshr i16 %3699, 8
  %3701 = trunc nuw i16 %3700 to i8
  store i64 %3697, ptr %3234, align 8, !tbaa !31
  %3702 = getelementptr inbounds nuw i8, ptr %3698, i64 %3692
  store i8 %3701, ptr %3702, align 1, !tbaa !28
  %3703 = load i32, ptr %2441, align 4, !tbaa !26
  %3704 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3703), !nosanitize !30
  %3705 = extractvalue { i32, i1 } %3704, 1, !nosanitize !30
  br i1 %3705, label %.loopexit271, label %3706, !prof !32, !nosanitize !30

3706:                                             ; preds = %3696
  %3707 = extractvalue { i32, i1 } %3704, 0, !nosanitize !30
  %3708 = lshr i32 %3679, %3707
  %3709 = trunc nuw i32 %3708 to i16
  store i16 %3709, ptr %3233, align 8, !tbaa !25
  %3710 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3703, i32 -9), !nosanitize !30
  br label %3717

3711:                                             ; preds = %3672
  %3712 = shl i32 %3677, %3675
  %3713 = trunc i32 %3712 to i16
  %3714 = or i16 %3673, %3713
  store i16 %3714, ptr %3233, align 8, !tbaa !25
  %3715 = add nsw i32 %3675, 7
  %3716 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3715, 0
  br label %3717

3717:                                             ; preds = %3617, %3706, %3526, %3711, %3622, %3531
  %3718 = phi i16 [ %3529, %3526 ], [ %3534, %3531 ], [ %3620, %3617 ], [ %3625, %3622 ], [ %3709, %3706 ], [ %3714, %3711 ]
  %3719 = phi { i32, i1 } [ %3530, %3526 ], [ %3536, %3531 ], [ %3621, %3617 ], [ %3627, %3622 ], [ %3710, %3706 ], [ %3716, %3711 ]
  %3720 = extractvalue { i32, i1 } %3719, 0
  store i32 %3720, ptr %2441, align 4, !tbaa !26
  br label %.loopexit272

.loopexit272:                                     ; preds = %3387, %3717
  %3721 = phi i16 [ %3718, %3717 ], [ %3382, %3387 ]
  %3722 = phi i32 [ %3720, %3717 ], [ %3384, %3387 ]
  %3723 = icmp eq i16 %3322, 0
  br i1 %3723, label %3727, label %3724

3724:                                             ; preds = %.loopexit272
  %3725 = select i1 %3326, i32 3, i32 4
  %3726 = select i1 %3326, i32 6, i32 7
  br label %3727

3727:                                             ; preds = %3724, %.loopexit272, %3310
  %3728 = phi i16 [ %3318, %3310 ], [ %3721, %.loopexit272 ], [ %3721, %3724 ]
  %3729 = phi i32 [ %3317, %3310 ], [ %3722, %.loopexit272 ], [ %3722, %3724 ]
  %3730 = phi i32 [ %3312, %3310 ], [ 3, %.loopexit272 ], [ %3725, %3724 ]
  %3731 = phi i32 [ %3313, %3310 ], [ 138, %.loopexit272 ], [ %3726, %3724 ]
  %3732 = phi i32 [ %3324, %3310 ], [ 0, %.loopexit272 ], [ 0, %3724 ]
  %3733 = phi i32 [ %3316, %3310 ], [ %3315, %.loopexit272 ], [ %3315, %3724 ]
  %3734 = icmp sgt i32 %3311, %3289
  br i1 %3734, label %.loopexit274, label %3305, !llvm.loop !83

.loopexit274:                                     ; preds = %3727, %3288
  %3735 = phi i16 [ %3284, %3288 ], [ %3728, %3727 ]
  %3736 = phi i32 [ %3285, %3288 ], [ %3729, %3727 ]
  %3737 = extractvalue { i32, i1 } %3136, 0, !nosanitize !30
  %3738 = icmp slt i32 %3737, 0
  br i1 %3738, label %.loopexit270, label %3739

3739:                                             ; preds = %.loopexit274
  %3740 = getelementptr i8, ptr %0, i64 2506
  %3741 = load i16, ptr %3740, align 2, !tbaa !28
  %3742 = icmp eq i16 %3741, 0
  %3743 = select i1 %3742, i32 138, i32 7
  %3744 = select i1 %3742, i32 3, i32 4
  %3745 = zext i16 %3741 to i32
  %3746 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3747 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3748 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3749 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3750 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3751 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3752 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3758

3753:                                             ; preds = %4176
  %3754 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3759, i32 1), !nosanitize !30
  %3755 = extractvalue { i32, i1 } %3754, 0, !nosanitize !30
  %3756 = extractvalue { i32, i1 } %3754, 1, !nosanitize !30
  br i1 %3756, label %3757, label %3758, !prof !75, !llvm.loop !83, !nosanitize !30

3757:                                             ; preds = %3753
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

3758:                                             ; preds = %3739, %3753
  %3759 = phi i32 [ 1, %3739 ], [ %3755, %3753 ]
  %3760 = phi i32 [ %3744, %3739 ], [ %4179, %3753 ]
  %3761 = phi i32 [ %3743, %3739 ], [ %4180, %3753 ]
  %3762 = phi i32 [ 0, %3739 ], [ %4181, %3753 ]
  %3763 = phi i32 [ %3745, %3739 ], [ %3771, %3753 ]
  %3764 = phi i32 [ -1, %3739 ], [ %4182, %3753 ]
  %3765 = phi i32 [ %3736, %3739 ], [ %4178, %3753 ]
  %3766 = phi i16 [ %3735, %3739 ], [ %4177, %3753 ]
  %3767 = sext i32 %3759 to i64
  %3768 = shl nsw i64 %3767, 2
  %3769 = getelementptr i8, ptr %3740, i64 %3768
  %3770 = load i16, ptr %3769, align 2, !tbaa !28
  %3771 = zext i16 %3770 to i32
  %3772 = add nsw i32 %3762, 1
  %3773 = icmp slt i32 %3772, %3761
  %3774 = icmp eq i32 %3763, %3771
  %3775 = select i1 %3773, i1 %3774, i1 false
  br i1 %3775, label %4176, label %3776

3776:                                             ; preds = %3758
  %3777 = icmp slt i32 %3772, %3760
  br i1 %3777, label %3778, label %3838

3778:                                             ; preds = %3776
  %3779 = zext nneg i32 %3763 to i64
  %3780 = getelementptr inbounds nuw [4 x i8], ptr %3746, i64 %3779
  %3781 = getelementptr inbounds nuw i8, ptr %3780, i64 2
  br label %3782

3782:                                             ; preds = %3835, %3778
  %3783 = phi i16 [ %3830, %3835 ], [ %3766, %3778 ]
  %3784 = phi i32 [ %3832, %3835 ], [ %3765, %3778 ]
  %3785 = phi i32 [ %3836, %3835 ], [ %3772, %3778 ]
  %3786 = load i16, ptr %3781, align 2, !tbaa !28
  %3787 = zext i16 %3786 to i32
  %3788 = sub nsw i32 16, %3787
  %3789 = icmp sgt i32 %3784, %3788
  %3790 = load i16, ptr %3780, align 4, !tbaa !28
  %3791 = zext i16 %3790 to i32
  %3792 = shl i32 %3791, %3784
  %3793 = trunc i32 %3792 to i16
  %3794 = or i16 %3783, %3793
  store i16 %3794, ptr %3233, align 8, !tbaa !25
  br i1 %3789, label %3795, label %3826

.loopexit267:                                     ; preds = %4145, %4101, %4056, %4012, %3964, %3920, %3869, %3829, %3809
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

3795:                                             ; preds = %3782
  %3796 = load i64, ptr %3234, align 8, !tbaa !31
  %3797 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3796, i64 1), !nosanitize !30
  %3798 = extractvalue { i64, i1 } %3797, 1, !nosanitize !30
  br i1 %3798, label %3799, label %3800, !prof !32, !nosanitize !30

3799:                                             ; preds = %3795
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3800:                                             ; preds = %3795
  %3801 = extractvalue { i64, i1 } %3797, 0, !nosanitize !30
  %3802 = load ptr, ptr %3235, align 8, !tbaa !33
  %3803 = trunc i16 %3794 to i8
  store i64 %3801, ptr %3234, align 8, !tbaa !31
  %3804 = getelementptr inbounds nuw i8, ptr %3802, i64 %3796
  store i8 %3803, ptr %3804, align 1, !tbaa !28
  %3805 = load i64, ptr %3234, align 8, !tbaa !31
  %3806 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3805, i64 1), !nosanitize !30
  %3807 = extractvalue { i64, i1 } %3806, 1, !nosanitize !30
  br i1 %3807, label %3808, label %3809, !prof !32, !nosanitize !30

3808:                                             ; preds = %3819, %3800
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3809:                                             ; preds = %3800
  %3810 = extractvalue { i64, i1 } %3806, 0, !nosanitize !30
  %3811 = load ptr, ptr %3235, align 8, !tbaa !33
  %3812 = load i16, ptr %3233, align 8, !tbaa !25
  %3813 = lshr i16 %3812, 8
  %3814 = trunc nuw i16 %3813 to i8
  store i64 %3810, ptr %3234, align 8, !tbaa !31
  %3815 = getelementptr inbounds nuw i8, ptr %3811, i64 %3805
  store i8 %3814, ptr %3815, align 1, !tbaa !28
  %3816 = load i32, ptr %2441, align 4, !tbaa !26
  %3817 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3816), !nosanitize !30
  %3818 = extractvalue { i32, i1 } %3817, 1, !nosanitize !30
  br i1 %3818, label %.loopexit267, label %3819, !prof !32, !nosanitize !30

3819:                                             ; preds = %3809
  %3820 = extractvalue { i32, i1 } %3817, 0, !nosanitize !30
  %3821 = lshr i32 %3791, %3820
  %3822 = trunc nuw i32 %3821 to i16
  store i16 %3822, ptr %3233, align 8, !tbaa !25
  %3823 = add nsw i32 %3787, -16
  %3824 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3816, i32 %3823), !nosanitize !30
  %3825 = extractvalue { i32, i1 } %3824, 1, !nosanitize !30
  br i1 %3825, label %3808, label %3829, !prof !32, !nosanitize !30

3826:                                             ; preds = %3782
  %3827 = add nsw i32 %3784, %3787
  %3828 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3827, 0
  br label %3829

3829:                                             ; preds = %3826, %3819
  %3830 = phi i16 [ %3822, %3819 ], [ %3794, %3826 ]
  %3831 = phi { i32, i1 } [ %3824, %3819 ], [ %3828, %3826 ]
  %3832 = extractvalue { i32, i1 } %3831, 0
  store i32 %3832, ptr %2441, align 4, !tbaa !26
  %3833 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3785, i32 -1)
  %3834 = extractvalue { i32, i1 } %3833, 1, !nosanitize !30
  br i1 %3834, label %.loopexit267, label %3835, !prof !32, !nosanitize !30

3835:                                             ; preds = %3829
  %3836 = extractvalue { i32, i1 } %3833, 0, !nosanitize !30
  %3837 = icmp eq i32 %3836, 0
  br i1 %3837, label %.loopexit268, label %3782, !llvm.loop !84

3838:                                             ; preds = %3776
  %3839 = icmp eq i32 %3763, 0
  br i1 %3839, label %3986, label %3840

3840:                                             ; preds = %3838
  %3841 = icmp eq i32 %3763, %3764
  br i1 %3841, label %3893, label %3842

3842:                                             ; preds = %3840
  %3843 = zext nneg i32 %3763 to i64
  %3844 = getelementptr inbounds nuw [4 x i8], ptr %3746, i64 %3843
  %3845 = getelementptr inbounds nuw i8, ptr %3844, i64 2
  %3846 = load i16, ptr %3845, align 2, !tbaa !28
  %3847 = zext i16 %3846 to i32
  %3848 = sub nsw i32 16, %3847
  %3849 = icmp sgt i32 %3765, %3848
  %3850 = load i16, ptr %3844, align 4, !tbaa !28
  %3851 = zext i16 %3850 to i32
  %3852 = shl i32 %3851, %3765
  %3853 = trunc i32 %3852 to i16
  %3854 = or i16 %3766, %3853
  store i16 %3854, ptr %3233, align 8, !tbaa !25
  br i1 %3849, label %3855, label %3886

3855:                                             ; preds = %3842
  %3856 = load i64, ptr %3234, align 8, !tbaa !31
  %3857 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3856, i64 1), !nosanitize !30
  %3858 = extractvalue { i64, i1 } %3857, 1, !nosanitize !30
  br i1 %3858, label %3859, label %3860, !prof !32, !nosanitize !30

3859:                                             ; preds = %3855
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3860:                                             ; preds = %3855
  %3861 = extractvalue { i64, i1 } %3857, 0, !nosanitize !30
  %3862 = load ptr, ptr %3235, align 8, !tbaa !33
  %3863 = trunc i16 %3854 to i8
  store i64 %3861, ptr %3234, align 8, !tbaa !31
  %3864 = getelementptr inbounds nuw i8, ptr %3862, i64 %3856
  store i8 %3863, ptr %3864, align 1, !tbaa !28
  %3865 = load i64, ptr %3234, align 8, !tbaa !31
  %3866 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3865, i64 1), !nosanitize !30
  %3867 = extractvalue { i64, i1 } %3866, 1, !nosanitize !30
  br i1 %3867, label %3868, label %3869, !prof !32, !nosanitize !30

3868:                                             ; preds = %3879, %3860
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3869:                                             ; preds = %3860
  %3870 = extractvalue { i64, i1 } %3866, 0, !nosanitize !30
  %3871 = load ptr, ptr %3235, align 8, !tbaa !33
  %3872 = load i16, ptr %3233, align 8, !tbaa !25
  %3873 = lshr i16 %3872, 8
  %3874 = trunc nuw i16 %3873 to i8
  store i64 %3870, ptr %3234, align 8, !tbaa !31
  %3875 = getelementptr inbounds nuw i8, ptr %3871, i64 %3865
  store i8 %3874, ptr %3875, align 1, !tbaa !28
  %3876 = load i32, ptr %2441, align 4, !tbaa !26
  %3877 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3876), !nosanitize !30
  %3878 = extractvalue { i32, i1 } %3877, 1, !nosanitize !30
  br i1 %3878, label %.loopexit267, label %3879, !prof !32, !nosanitize !30

3879:                                             ; preds = %3869
  %3880 = extractvalue { i32, i1 } %3877, 0, !nosanitize !30
  %3881 = lshr i32 %3851, %3880
  %3882 = trunc nuw i32 %3881 to i16
  store i16 %3882, ptr %3233, align 8, !tbaa !25
  %3883 = add nsw i32 %3847, -16
  %3884 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3876, i32 %3883), !nosanitize !30
  %3885 = extractvalue { i32, i1 } %3884, 1, !nosanitize !30
  br i1 %3885, label %3868, label %3889, !prof !32, !nosanitize !30

3886:                                             ; preds = %3842
  %3887 = add nsw i32 %3765, %3847
  %3888 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3887, 0
  br label %3889

3889:                                             ; preds = %3886, %3879
  %3890 = phi i16 [ %3882, %3879 ], [ %3854, %3886 ]
  %3891 = phi { i32, i1 } [ %3884, %3879 ], [ %3888, %3886 ]
  %3892 = extractvalue { i32, i1 } %3891, 0
  store i32 %3892, ptr %2441, align 4, !tbaa !26
  br label %3893

3893:                                             ; preds = %3889, %3840
  %3894 = phi i16 [ %3890, %3889 ], [ %3766, %3840 ]
  %3895 = phi i32 [ %3892, %3889 ], [ %3765, %3840 ]
  %3896 = phi i32 [ %3762, %3889 ], [ %3772, %3840 ]
  %3897 = load i16, ptr %3748, align 2, !tbaa !28
  %3898 = zext i16 %3897 to i32
  %3899 = sub nsw i32 16, %3898
  %3900 = icmp sgt i32 %3895, %3899
  %3901 = load i16, ptr %3747, align 4, !tbaa !28
  %3902 = zext i16 %3901 to i32
  %3903 = shl i32 %3902, %3895
  %3904 = trunc i32 %3903 to i16
  %3905 = or i16 %3894, %3904
  store i16 %3905, ptr %3233, align 8, !tbaa !25
  br i1 %3900, label %3906, label %3937

3906:                                             ; preds = %3893
  %3907 = load i64, ptr %3234, align 8, !tbaa !31
  %3908 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3907, i64 1), !nosanitize !30
  %3909 = extractvalue { i64, i1 } %3908, 1, !nosanitize !30
  br i1 %3909, label %3910, label %3911, !prof !32, !nosanitize !30

3910:                                             ; preds = %3906
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3911:                                             ; preds = %3906
  %3912 = extractvalue { i64, i1 } %3908, 0, !nosanitize !30
  %3913 = load ptr, ptr %3235, align 8, !tbaa !33
  %3914 = trunc i16 %3905 to i8
  store i64 %3912, ptr %3234, align 8, !tbaa !31
  %3915 = getelementptr inbounds nuw i8, ptr %3913, i64 %3907
  store i8 %3914, ptr %3915, align 1, !tbaa !28
  %3916 = load i64, ptr %3234, align 8, !tbaa !31
  %3917 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3916, i64 1), !nosanitize !30
  %3918 = extractvalue { i64, i1 } %3917, 1, !nosanitize !30
  br i1 %3918, label %3919, label %3920, !prof !32, !nosanitize !30

3919:                                             ; preds = %3930, %3911
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3920:                                             ; preds = %3911
  %3921 = extractvalue { i64, i1 } %3917, 0, !nosanitize !30
  %3922 = load ptr, ptr %3235, align 8, !tbaa !33
  %3923 = load i16, ptr %3233, align 8, !tbaa !25
  %3924 = lshr i16 %3923, 8
  %3925 = trunc nuw i16 %3924 to i8
  store i64 %3921, ptr %3234, align 8, !tbaa !31
  %3926 = getelementptr inbounds nuw i8, ptr %3922, i64 %3916
  store i8 %3925, ptr %3926, align 1, !tbaa !28
  %3927 = load i32, ptr %2441, align 4, !tbaa !26
  %3928 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3927), !nosanitize !30
  %3929 = extractvalue { i32, i1 } %3928, 1, !nosanitize !30
  br i1 %3929, label %.loopexit267, label %3930, !prof !32, !nosanitize !30

3930:                                             ; preds = %3920
  %3931 = extractvalue { i32, i1 } %3928, 0, !nosanitize !30
  %3932 = lshr i32 %3902, %3931
  %3933 = trunc nuw i32 %3932 to i16
  store i16 %3933, ptr %3233, align 8, !tbaa !25
  %3934 = add nsw i32 %3898, -16
  %3935 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3927, i32 %3934), !nosanitize !30
  %3936 = extractvalue { i32, i1 } %3935, 1, !nosanitize !30
  br i1 %3936, label %3919, label %3940, !prof !32, !nosanitize !30

3937:                                             ; preds = %3893
  %3938 = add nsw i32 %3895, %3898
  %3939 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3938, 0
  br label %3940

3940:                                             ; preds = %3937, %3930
  %3941 = phi i16 [ %3933, %3930 ], [ %3905, %3937 ]
  %3942 = phi { i32, i1 } [ %3935, %3930 ], [ %3939, %3937 ]
  %3943 = extractvalue { i32, i1 } %3942, 0
  store i32 %3943, ptr %2441, align 4, !tbaa !26
  %3944 = icmp sgt i32 %3943, 14
  %3945 = add i32 %3896, 65533
  br i1 %3944, label %3946, label %3980

3946:                                             ; preds = %3940
  %3947 = and i32 %3945, 65535
  %3948 = shl i32 %3945, %3943
  %3949 = trunc i32 %3948 to i16
  %3950 = or i16 %3941, %3949
  store i16 %3950, ptr %3233, align 8, !tbaa !25
  %3951 = load i64, ptr %3234, align 8, !tbaa !31
  %3952 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3951, i64 1), !nosanitize !30
  %3953 = extractvalue { i64, i1 } %3952, 1, !nosanitize !30
  br i1 %3953, label %3954, label %3955, !prof !32, !nosanitize !30

3954:                                             ; preds = %3946
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3955:                                             ; preds = %3946
  %3956 = extractvalue { i64, i1 } %3952, 0, !nosanitize !30
  %3957 = load ptr, ptr %3235, align 8, !tbaa !33
  %3958 = trunc i16 %3950 to i8
  store i64 %3956, ptr %3234, align 8, !tbaa !31
  %3959 = getelementptr inbounds nuw i8, ptr %3957, i64 %3951
  store i8 %3958, ptr %3959, align 1, !tbaa !28
  %3960 = load i64, ptr %3234, align 8, !tbaa !31
  %3961 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3960, i64 1), !nosanitize !30
  %3962 = extractvalue { i64, i1 } %3961, 1, !nosanitize !30
  br i1 %3962, label %3963, label %3964, !prof !32, !nosanitize !30

3963:                                             ; preds = %3974, %3955
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3964:                                             ; preds = %3955
  %3965 = extractvalue { i64, i1 } %3961, 0, !nosanitize !30
  %3966 = load ptr, ptr %3235, align 8, !tbaa !33
  %3967 = load i16, ptr %3233, align 8, !tbaa !25
  %3968 = lshr i16 %3967, 8
  %3969 = trunc nuw i16 %3968 to i8
  store i64 %3965, ptr %3234, align 8, !tbaa !31
  %3970 = getelementptr inbounds nuw i8, ptr %3966, i64 %3960
  store i8 %3969, ptr %3970, align 1, !tbaa !28
  %3971 = load i32, ptr %2441, align 4, !tbaa !26
  %3972 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3971), !nosanitize !30
  %3973 = extractvalue { i32, i1 } %3972, 1, !nosanitize !30
  br i1 %3973, label %.loopexit267, label %3974, !prof !32, !nosanitize !30

3974:                                             ; preds = %3964
  %3975 = extractvalue { i32, i1 } %3972, 0, !nosanitize !30
  %3976 = lshr i32 %3947, %3975
  %3977 = trunc nuw i32 %3976 to i16
  store i16 %3977, ptr %3233, align 8, !tbaa !25
  %3978 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3971, i32 -14), !nosanitize !30
  %3979 = extractvalue { i32, i1 } %3978, 1, !nosanitize !30
  br i1 %3979, label %3963, label %4166, !prof !32, !nosanitize !30

3980:                                             ; preds = %3940
  %3981 = shl i32 %3945, %3943
  %3982 = trunc i32 %3981 to i16
  %3983 = or i16 %3941, %3982
  store i16 %3983, ptr %3233, align 8, !tbaa !25
  %3984 = add nsw i32 %3943, 2
  %3985 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3984, 0
  br label %4166

3986:                                             ; preds = %3838
  %3987 = icmp slt i32 %3762, 10
  br i1 %3987, label %3988, label %4077

3988:                                             ; preds = %3986
  %3989 = load i16, ptr %3752, align 2, !tbaa !28
  %3990 = zext i16 %3989 to i32
  %3991 = sub nsw i32 16, %3990
  %3992 = icmp sgt i32 %3765, %3991
  %3993 = load i16, ptr %3751, align 4, !tbaa !28
  %3994 = zext i16 %3993 to i32
  %3995 = shl i32 %3994, %3765
  %3996 = trunc i32 %3995 to i16
  %3997 = or i16 %3766, %3996
  store i16 %3997, ptr %3233, align 8, !tbaa !25
  br i1 %3992, label %3998, label %4029

3998:                                             ; preds = %3988
  %3999 = load i64, ptr %3234, align 8, !tbaa !31
  %4000 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3999, i64 1), !nosanitize !30
  %4001 = extractvalue { i64, i1 } %4000, 1, !nosanitize !30
  br i1 %4001, label %4002, label %4003, !prof !32, !nosanitize !30

4002:                                             ; preds = %3998
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4003:                                             ; preds = %3998
  %4004 = extractvalue { i64, i1 } %4000, 0, !nosanitize !30
  %4005 = load ptr, ptr %3235, align 8, !tbaa !33
  %4006 = trunc i16 %3997 to i8
  store i64 %4004, ptr %3234, align 8, !tbaa !31
  %4007 = getelementptr inbounds nuw i8, ptr %4005, i64 %3999
  store i8 %4006, ptr %4007, align 1, !tbaa !28
  %4008 = load i64, ptr %3234, align 8, !tbaa !31
  %4009 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4008, i64 1), !nosanitize !30
  %4010 = extractvalue { i64, i1 } %4009, 1, !nosanitize !30
  br i1 %4010, label %4011, label %4012, !prof !32, !nosanitize !30

4011:                                             ; preds = %4022, %4003
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4012:                                             ; preds = %4003
  %4013 = extractvalue { i64, i1 } %4009, 0, !nosanitize !30
  %4014 = load ptr, ptr %3235, align 8, !tbaa !33
  %4015 = load i16, ptr %3233, align 8, !tbaa !25
  %4016 = lshr i16 %4015, 8
  %4017 = trunc nuw i16 %4016 to i8
  store i64 %4013, ptr %3234, align 8, !tbaa !31
  %4018 = getelementptr inbounds nuw i8, ptr %4014, i64 %4008
  store i8 %4017, ptr %4018, align 1, !tbaa !28
  %4019 = load i32, ptr %2441, align 4, !tbaa !26
  %4020 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4019), !nosanitize !30
  %4021 = extractvalue { i32, i1 } %4020, 1, !nosanitize !30
  br i1 %4021, label %.loopexit267, label %4022, !prof !32, !nosanitize !30

4022:                                             ; preds = %4012
  %4023 = extractvalue { i32, i1 } %4020, 0, !nosanitize !30
  %4024 = lshr i32 %3994, %4023
  %4025 = trunc nuw i32 %4024 to i16
  store i16 %4025, ptr %3233, align 8, !tbaa !25
  %4026 = add nsw i32 %3990, -16
  %4027 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4019, i32 %4026), !nosanitize !30
  %4028 = extractvalue { i32, i1 } %4027, 1, !nosanitize !30
  br i1 %4028, label %4011, label %4032, !prof !32, !nosanitize !30

4029:                                             ; preds = %3988
  %4030 = add nsw i32 %3765, %3990
  %4031 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4030, 0
  br label %4032

4032:                                             ; preds = %4029, %4022
  %4033 = phi i16 [ %4025, %4022 ], [ %3997, %4029 ]
  %4034 = phi { i32, i1 } [ %4027, %4022 ], [ %4031, %4029 ]
  %4035 = extractvalue { i32, i1 } %4034, 0
  store i32 %4035, ptr %2441, align 4, !tbaa !26
  %4036 = icmp sgt i32 %4035, 13
  %4037 = add nsw i32 %3762, 65534
  br i1 %4036, label %4038, label %4071

4038:                                             ; preds = %4032
  %4039 = and i32 %4037, 65535
  %4040 = shl i32 %4037, %4035
  %4041 = trunc i32 %4040 to i16
  %4042 = or i16 %4033, %4041
  store i16 %4042, ptr %3233, align 8, !tbaa !25
  %4043 = load i64, ptr %3234, align 8, !tbaa !31
  %4044 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4043, i64 1), !nosanitize !30
  %4045 = extractvalue { i64, i1 } %4044, 1, !nosanitize !30
  br i1 %4045, label %4046, label %4047, !prof !32, !nosanitize !30

4046:                                             ; preds = %4038
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4047:                                             ; preds = %4038
  %4048 = extractvalue { i64, i1 } %4044, 0, !nosanitize !30
  %4049 = load ptr, ptr %3235, align 8, !tbaa !33
  %4050 = trunc i16 %4042 to i8
  store i64 %4048, ptr %3234, align 8, !tbaa !31
  %4051 = getelementptr inbounds nuw i8, ptr %4049, i64 %4043
  store i8 %4050, ptr %4051, align 1, !tbaa !28
  %4052 = load i64, ptr %3234, align 8, !tbaa !31
  %4053 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4052, i64 1), !nosanitize !30
  %4054 = extractvalue { i64, i1 } %4053, 1, !nosanitize !30
  br i1 %4054, label %4055, label %4056, !prof !32, !nosanitize !30

4055:                                             ; preds = %4047
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4056:                                             ; preds = %4047
  %4057 = extractvalue { i64, i1 } %4053, 0, !nosanitize !30
  %4058 = load ptr, ptr %3235, align 8, !tbaa !33
  %4059 = load i16, ptr %3233, align 8, !tbaa !25
  %4060 = lshr i16 %4059, 8
  %4061 = trunc nuw i16 %4060 to i8
  store i64 %4057, ptr %3234, align 8, !tbaa !31
  %4062 = getelementptr inbounds nuw i8, ptr %4058, i64 %4052
  store i8 %4061, ptr %4062, align 1, !tbaa !28
  %4063 = load i32, ptr %2441, align 4, !tbaa !26
  %4064 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4063), !nosanitize !30
  %4065 = extractvalue { i32, i1 } %4064, 1, !nosanitize !30
  br i1 %4065, label %.loopexit267, label %4066, !prof !32, !nosanitize !30

4066:                                             ; preds = %4056
  %4067 = extractvalue { i32, i1 } %4064, 0, !nosanitize !30
  %4068 = lshr i32 %4039, %4067
  %4069 = trunc nuw i32 %4068 to i16
  store i16 %4069, ptr %3233, align 8, !tbaa !25
  %4070 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4063, i32 -13), !nosanitize !30
  br label %4166

4071:                                             ; preds = %4032
  %4072 = shl i32 %4037, %4035
  %4073 = trunc i32 %4072 to i16
  %4074 = or i16 %4033, %4073
  store i16 %4074, ptr %3233, align 8, !tbaa !25
  %4075 = add nsw i32 %4035, 3
  %4076 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4075, 0
  br label %4166

4077:                                             ; preds = %3986
  %4078 = load i16, ptr %3750, align 2, !tbaa !28
  %4079 = zext i16 %4078 to i32
  %4080 = sub nsw i32 16, %4079
  %4081 = icmp sgt i32 %3765, %4080
  %4082 = load i16, ptr %3749, align 4, !tbaa !28
  %4083 = zext i16 %4082 to i32
  %4084 = shl i32 %4083, %3765
  %4085 = trunc i32 %4084 to i16
  %4086 = or i16 %3766, %4085
  store i16 %4086, ptr %3233, align 8, !tbaa !25
  br i1 %4081, label %4087, label %4118

4087:                                             ; preds = %4077
  %4088 = load i64, ptr %3234, align 8, !tbaa !31
  %4089 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4088, i64 1), !nosanitize !30
  %4090 = extractvalue { i64, i1 } %4089, 1, !nosanitize !30
  br i1 %4090, label %4091, label %4092, !prof !32, !nosanitize !30

4091:                                             ; preds = %4087
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4092:                                             ; preds = %4087
  %4093 = extractvalue { i64, i1 } %4089, 0, !nosanitize !30
  %4094 = load ptr, ptr %3235, align 8, !tbaa !33
  %4095 = trunc i16 %4086 to i8
  store i64 %4093, ptr %3234, align 8, !tbaa !31
  %4096 = getelementptr inbounds nuw i8, ptr %4094, i64 %4088
  store i8 %4095, ptr %4096, align 1, !tbaa !28
  %4097 = load i64, ptr %3234, align 8, !tbaa !31
  %4098 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4097, i64 1), !nosanitize !30
  %4099 = extractvalue { i64, i1 } %4098, 1, !nosanitize !30
  br i1 %4099, label %4100, label %4101, !prof !32, !nosanitize !30

4100:                                             ; preds = %4111, %4092
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4101:                                             ; preds = %4092
  %4102 = extractvalue { i64, i1 } %4098, 0, !nosanitize !30
  %4103 = load ptr, ptr %3235, align 8, !tbaa !33
  %4104 = load i16, ptr %3233, align 8, !tbaa !25
  %4105 = lshr i16 %4104, 8
  %4106 = trunc nuw i16 %4105 to i8
  store i64 %4102, ptr %3234, align 8, !tbaa !31
  %4107 = getelementptr inbounds nuw i8, ptr %4103, i64 %4097
  store i8 %4106, ptr %4107, align 1, !tbaa !28
  %4108 = load i32, ptr %2441, align 4, !tbaa !26
  %4109 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4108), !nosanitize !30
  %4110 = extractvalue { i32, i1 } %4109, 1, !nosanitize !30
  br i1 %4110, label %.loopexit267, label %4111, !prof !32, !nosanitize !30

4111:                                             ; preds = %4101
  %4112 = extractvalue { i32, i1 } %4109, 0, !nosanitize !30
  %4113 = lshr i32 %4083, %4112
  %4114 = trunc nuw i32 %4113 to i16
  store i16 %4114, ptr %3233, align 8, !tbaa !25
  %4115 = add nsw i32 %4079, -16
  %4116 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4108, i32 %4115), !nosanitize !30
  %4117 = extractvalue { i32, i1 } %4116, 1, !nosanitize !30
  br i1 %4117, label %4100, label %4121, !prof !32, !nosanitize !30

4118:                                             ; preds = %4077
  %4119 = add nsw i32 %3765, %4079
  %4120 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4119, 0
  br label %4121

4121:                                             ; preds = %4118, %4111
  %4122 = phi i16 [ %4114, %4111 ], [ %4086, %4118 ]
  %4123 = phi { i32, i1 } [ %4116, %4111 ], [ %4120, %4118 ]
  %4124 = extractvalue { i32, i1 } %4123, 0
  store i32 %4124, ptr %2441, align 4, !tbaa !26
  %4125 = icmp sgt i32 %4124, 9
  %4126 = add nuw i32 %3762, 65526
  br i1 %4125, label %4127, label %4160

4127:                                             ; preds = %4121
  %4128 = and i32 %4126, 65535
  %4129 = shl i32 %4126, %4124
  %4130 = trunc i32 %4129 to i16
  %4131 = or i16 %4122, %4130
  store i16 %4131, ptr %3233, align 8, !tbaa !25
  %4132 = load i64, ptr %3234, align 8, !tbaa !31
  %4133 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4132, i64 1), !nosanitize !30
  %4134 = extractvalue { i64, i1 } %4133, 1, !nosanitize !30
  br i1 %4134, label %4135, label %4136, !prof !32, !nosanitize !30

4135:                                             ; preds = %4127
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4136:                                             ; preds = %4127
  %4137 = extractvalue { i64, i1 } %4133, 0, !nosanitize !30
  %4138 = load ptr, ptr %3235, align 8, !tbaa !33
  %4139 = trunc i16 %4131 to i8
  store i64 %4137, ptr %3234, align 8, !tbaa !31
  %4140 = getelementptr inbounds nuw i8, ptr %4138, i64 %4132
  store i8 %4139, ptr %4140, align 1, !tbaa !28
  %4141 = load i64, ptr %3234, align 8, !tbaa !31
  %4142 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4141, i64 1), !nosanitize !30
  %4143 = extractvalue { i64, i1 } %4142, 1, !nosanitize !30
  br i1 %4143, label %4144, label %4145, !prof !32, !nosanitize !30

4144:                                             ; preds = %4136
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4145:                                             ; preds = %4136
  %4146 = extractvalue { i64, i1 } %4142, 0, !nosanitize !30
  %4147 = load ptr, ptr %3235, align 8, !tbaa !33
  %4148 = load i16, ptr %3233, align 8, !tbaa !25
  %4149 = lshr i16 %4148, 8
  %4150 = trunc nuw i16 %4149 to i8
  store i64 %4146, ptr %3234, align 8, !tbaa !31
  %4151 = getelementptr inbounds nuw i8, ptr %4147, i64 %4141
  store i8 %4150, ptr %4151, align 1, !tbaa !28
  %4152 = load i32, ptr %2441, align 4, !tbaa !26
  %4153 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4152), !nosanitize !30
  %4154 = extractvalue { i32, i1 } %4153, 1, !nosanitize !30
  br i1 %4154, label %.loopexit267, label %4155, !prof !32, !nosanitize !30

4155:                                             ; preds = %4145
  %4156 = extractvalue { i32, i1 } %4153, 0, !nosanitize !30
  %4157 = lshr i32 %4128, %4156
  %4158 = trunc nuw i32 %4157 to i16
  store i16 %4158, ptr %3233, align 8, !tbaa !25
  %4159 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4152, i32 -9), !nosanitize !30
  br label %4166

4160:                                             ; preds = %4121
  %4161 = shl i32 %4126, %4124
  %4162 = trunc i32 %4161 to i16
  %4163 = or i16 %4122, %4162
  store i16 %4163, ptr %3233, align 8, !tbaa !25
  %4164 = add nsw i32 %4124, 7
  %4165 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4164, 0
  br label %4166

4166:                                             ; preds = %4066, %4155, %4160, %4071, %3980, %3974
  %4167 = phi i16 [ %3977, %3974 ], [ %3983, %3980 ], [ %4069, %4066 ], [ %4074, %4071 ], [ %4158, %4155 ], [ %4163, %4160 ]
  %4168 = phi { i32, i1 } [ %3978, %3974 ], [ %3985, %3980 ], [ %4070, %4066 ], [ %4076, %4071 ], [ %4159, %4155 ], [ %4165, %4160 ]
  %4169 = extractvalue { i32, i1 } %4168, 0
  store i32 %4169, ptr %2441, align 4, !tbaa !26
  br label %.loopexit268

.loopexit268:                                     ; preds = %3835, %4166
  %4170 = phi i16 [ %4167, %4166 ], [ %3830, %3835 ]
  %4171 = phi i32 [ %4169, %4166 ], [ %3832, %3835 ]
  %4172 = icmp eq i16 %3770, 0
  br i1 %4172, label %4176, label %4173

4173:                                             ; preds = %.loopexit268
  %4174 = select i1 %3774, i32 3, i32 4
  %4175 = select i1 %3774, i32 6, i32 7
  br label %4176

4176:                                             ; preds = %4173, %.loopexit268, %3758
  %4177 = phi i16 [ %3766, %3758 ], [ %4170, %.loopexit268 ], [ %4170, %4173 ]
  %4178 = phi i32 [ %3765, %3758 ], [ %4171, %.loopexit268 ], [ %4171, %4173 ]
  %4179 = phi i32 [ %3760, %3758 ], [ 3, %.loopexit268 ], [ %4174, %4173 ]
  %4180 = phi i32 [ %3761, %3758 ], [ 138, %.loopexit268 ], [ %4175, %4173 ]
  %4181 = phi i32 [ %3772, %3758 ], [ 0, %.loopexit268 ], [ 0, %4173 ]
  %4182 = phi i32 [ %3764, %3758 ], [ %3763, %.loopexit268 ], [ %3763, %4173 ]
  %4183 = icmp sgt i32 %3759, %3737
  br i1 %4183, label %.loopexit270, label %3753, !llvm.loop !83

.loopexit270:                                     ; preds = %4176, %.loopexit274
  %4184 = phi i16 [ %3735, %.loopexit274 ], [ %4177, %4176 ]
  %4185 = phi i32 [ %3736, %.loopexit274 ], [ %4178, %4176 ]
  %4186 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %4187 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %4188 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %4189 = load i32, ptr %4188, align 4, !tbaa !29
  %4190 = icmp eq i32 %4189, 0
  br i1 %4190, label %.loopexit266, label %4191

4191:                                             ; preds = %.loopexit270
  %4192 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %4193

4193:                                             ; preds = %4515, %4191
  %4194 = phi i16 [ %4516, %4515 ], [ %4184, %4191 ]
  %4195 = phi i32 [ %4517, %4515 ], [ %4185, %4191 ]
  %4196 = phi i32 [ %4215, %4515 ], [ 0, %4191 ]
  %4197 = load ptr, ptr %4192, align 8, !tbaa !80
  %4198 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4196, i32 2)
  %4199 = extractvalue { i32, i1 } %4198, 0, !nosanitize !30
  %4200 = extractvalue { i32, i1 } %4198, 1, !nosanitize !30
  br i1 %4200, label %4201, label %4202, !prof !32, !nosanitize !30

4201:                                             ; preds = %4193
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4202:                                             ; preds = %4193
  %4203 = add nuw i32 %4196, 1
  %4204 = zext i32 %4196 to i64
  %4205 = getelementptr inbounds nuw i8, ptr %4197, i64 %4204
  %4206 = load i8, ptr %4205, align 1, !tbaa !28
  %4207 = zext i8 %4206 to i32
  %4208 = zext i32 %4203 to i64
  %4209 = getelementptr inbounds nuw i8, ptr %4197, i64 %4208
  %4210 = load i8, ptr %4209, align 1, !tbaa !28
  %4211 = zext i8 %4210 to i32
  %4212 = shl nuw nsw i32 %4211, 8
  %4213 = or disjoint i32 %4212, %4207
  %4214 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4199, i32 1), !nosanitize !30
  %4215 = extractvalue { i32, i1 } %4214, 0, !nosanitize !30
  %4216 = extractvalue { i32, i1 } %4214, 1, !nosanitize !30
  br i1 %4216, label %4217, label %4218, !prof !32, !nosanitize !30

4217:                                             ; preds = %4202
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4218:                                             ; preds = %4202
  %4219 = zext i32 %4199 to i64
  %4220 = getelementptr inbounds nuw i8, ptr %4197, i64 %4219
  %4221 = load i8, ptr %4220, align 1, !tbaa !28
  %4222 = zext i8 %4221 to i32
  %4223 = icmp eq i32 %4213, 0
  %4224 = zext i8 %4221 to i64
  br i1 %4223, label %4225, label %4272

4225:                                             ; preds = %4218
  %4226 = getelementptr inbounds nuw [4 x i8], ptr %4186, i64 %4224
  %4227 = getelementptr inbounds nuw i8, ptr %4226, i64 2
  %4228 = load i16, ptr %4227, align 2, !tbaa !28
  %4229 = zext i16 %4228 to i32
  %4230 = sub nsw i32 16, %4229
  %4231 = icmp sgt i32 %4195, %4230
  %4232 = load i16, ptr %4226, align 2, !tbaa !28
  %4233 = zext i16 %4232 to i32
  %4234 = shl i32 %4233, %4195
  %4235 = trunc i32 %4234 to i16
  %4236 = or i16 %4194, %4235
  store i16 %4236, ptr %3233, align 8, !tbaa !25
  br i1 %4231, label %4238, label %4269

4237:                                             ; preds = %4370, %4360, %4336, %4330, %4302, %4252
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

4238:                                             ; preds = %4225
  %4239 = load i64, ptr %3234, align 8, !tbaa !31
  %4240 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4239, i64 1), !nosanitize !30
  %4241 = extractvalue { i64, i1 } %4240, 1, !nosanitize !30
  br i1 %4241, label %4242, label %4243, !prof !32, !nosanitize !30

4242:                                             ; preds = %4238
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4243:                                             ; preds = %4238
  %4244 = extractvalue { i64, i1 } %4240, 0, !nosanitize !30
  %4245 = load ptr, ptr %3235, align 8, !tbaa !33
  %4246 = trunc i16 %4236 to i8
  store i64 %4244, ptr %3234, align 8, !tbaa !31
  %4247 = getelementptr inbounds nuw i8, ptr %4245, i64 %4239
  store i8 %4246, ptr %4247, align 1, !tbaa !28
  %4248 = load i64, ptr %3234, align 8, !tbaa !31
  %4249 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4248, i64 1), !nosanitize !30
  %4250 = extractvalue { i64, i1 } %4249, 1, !nosanitize !30
  br i1 %4250, label %4251, label %4252, !prof !32, !nosanitize !30

4251:                                             ; preds = %4262, %4243
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4252:                                             ; preds = %4243
  %4253 = extractvalue { i64, i1 } %4249, 0, !nosanitize !30
  %4254 = load ptr, ptr %3235, align 8, !tbaa !33
  %4255 = load i16, ptr %3233, align 8, !tbaa !25
  %4256 = lshr i16 %4255, 8
  %4257 = trunc nuw i16 %4256 to i8
  store i64 %4253, ptr %3234, align 8, !tbaa !31
  %4258 = getelementptr inbounds nuw i8, ptr %4254, i64 %4248
  store i8 %4257, ptr %4258, align 1, !tbaa !28
  %4259 = load i32, ptr %2441, align 4, !tbaa !26
  %4260 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4259), !nosanitize !30
  %4261 = extractvalue { i32, i1 } %4260, 1, !nosanitize !30
  br i1 %4261, label %4237, label %4262, !prof !32, !nosanitize !30

4262:                                             ; preds = %4252
  %4263 = extractvalue { i32, i1 } %4260, 0, !nosanitize !30
  %4264 = lshr i32 %4233, %4263
  %4265 = trunc nuw i32 %4264 to i16
  store i16 %4265, ptr %3233, align 8, !tbaa !25
  %4266 = add nsw i32 %4229, -16
  %4267 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4259, i32 %4266), !nosanitize !30
  %4268 = extractvalue { i32, i1 } %4267, 1, !nosanitize !30
  br i1 %4268, label %4251, label %4511, !prof !32, !nosanitize !30

4269:                                             ; preds = %4225
  %4270 = add nsw i32 %4195, %4229
  %4271 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4270, 0
  br label %4511

4272:                                             ; preds = %4218
  %4273 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %4224
  %4274 = load i8, ptr %4273, align 1, !tbaa !28
  %4275 = zext i8 %4274 to i64
  %4276 = getelementptr inbounds nuw [4 x i8], ptr %4186, i64 %4275
  %4277 = getelementptr inbounds nuw i8, ptr %4276, i64 1028
  %4278 = getelementptr inbounds nuw i8, ptr %4276, i64 1030
  %4279 = load i16, ptr %4278, align 2, !tbaa !28
  %4280 = zext i16 %4279 to i32
  %4281 = sub nsw i32 16, %4280
  %4282 = icmp sgt i32 %4195, %4281
  %4283 = load i16, ptr %4277, align 2, !tbaa !28
  %4284 = zext i16 %4283 to i32
  %4285 = shl i32 %4284, %4195
  %4286 = trunc i32 %4285 to i16
  %4287 = or i16 %4194, %4286
  store i16 %4287, ptr %3233, align 8, !tbaa !25
  br i1 %4282, label %4288, label %4319

4288:                                             ; preds = %4272
  %4289 = load i64, ptr %3234, align 8, !tbaa !31
  %4290 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4289, i64 1), !nosanitize !30
  %4291 = extractvalue { i64, i1 } %4290, 1, !nosanitize !30
  br i1 %4291, label %4292, label %4293, !prof !32, !nosanitize !30

4292:                                             ; preds = %4288
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4293:                                             ; preds = %4288
  %4294 = extractvalue { i64, i1 } %4290, 0, !nosanitize !30
  %4295 = load ptr, ptr %3235, align 8, !tbaa !33
  %4296 = trunc i16 %4287 to i8
  store i64 %4294, ptr %3234, align 8, !tbaa !31
  %4297 = getelementptr inbounds nuw i8, ptr %4295, i64 %4289
  store i8 %4296, ptr %4297, align 1, !tbaa !28
  %4298 = load i64, ptr %3234, align 8, !tbaa !31
  %4299 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4298, i64 1), !nosanitize !30
  %4300 = extractvalue { i64, i1 } %4299, 1, !nosanitize !30
  br i1 %4300, label %4301, label %4302, !prof !32, !nosanitize !30

4301:                                             ; preds = %4312, %4293
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4302:                                             ; preds = %4293
  %4303 = extractvalue { i64, i1 } %4299, 0, !nosanitize !30
  %4304 = load ptr, ptr %3235, align 8, !tbaa !33
  %4305 = load i16, ptr %3233, align 8, !tbaa !25
  %4306 = lshr i16 %4305, 8
  %4307 = trunc nuw i16 %4306 to i8
  store i64 %4303, ptr %3234, align 8, !tbaa !31
  %4308 = getelementptr inbounds nuw i8, ptr %4304, i64 %4298
  store i8 %4307, ptr %4308, align 1, !tbaa !28
  %4309 = load i32, ptr %2441, align 4, !tbaa !26
  %4310 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4309), !nosanitize !30
  %4311 = extractvalue { i32, i1 } %4310, 1, !nosanitize !30
  br i1 %4311, label %4237, label %4312, !prof !32, !nosanitize !30

4312:                                             ; preds = %4302
  %4313 = extractvalue { i32, i1 } %4310, 0, !nosanitize !30
  %4314 = lshr i32 %4284, %4313
  %4315 = trunc nuw i32 %4314 to i16
  store i16 %4315, ptr %3233, align 8, !tbaa !25
  %4316 = add nsw i32 %4280, -16
  %4317 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4309, i32 %4316), !nosanitize !30
  %4318 = extractvalue { i32, i1 } %4317, 1, !nosanitize !30
  br i1 %4318, label %4301, label %4322, !prof !32, !nosanitize !30

4319:                                             ; preds = %4272
  %4320 = add nsw i32 %4195, %4280
  %4321 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4320, 0
  br label %4322

4322:                                             ; preds = %4319, %4312
  %4323 = phi i16 [ %4315, %4312 ], [ %4287, %4319 ]
  %4324 = phi { i32, i1 } [ %4317, %4312 ], [ %4321, %4319 ]
  %4325 = extractvalue { i32, i1 } %4324, 0
  store i32 %4325, ptr %2441, align 4, !tbaa !26
  %4326 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %4275
  %4327 = load i32, ptr %4326, align 4, !tbaa !49
  %4328 = add i8 %4274, -28
  %4329 = icmp ult i8 %4328, -20
  br i1 %4329, label %4390, label %4330

4330:                                             ; preds = %4322
  %4331 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %4275
  %4332 = load i32, ptr %4331, align 4, !tbaa !49
  %4333 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4222, i32 %4332), !nosanitize !30
  %4334 = extractvalue { i32, i1 } %4333, 0, !nosanitize !30
  %4335 = extractvalue { i32, i1 } %4333, 1, !nosanitize !30
  br i1 %4335, label %4237, label %4336, !prof !32, !nosanitize !30

4336:                                             ; preds = %4330
  %4337 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4327), !nosanitize !30
  %4338 = extractvalue { i32, i1 } %4337, 1, !nosanitize !30
  br i1 %4338, label %4237, label %4339, !prof !32, !nosanitize !30

4339:                                             ; preds = %4336
  %4340 = extractvalue { i32, i1 } %4337, 0, !nosanitize !30
  %4341 = icmp sgt i32 %4325, %4340
  br i1 %4341, label %4342, label %4380

4342:                                             ; preds = %4339
  %4343 = and i32 %4334, 65535
  %4344 = shl i32 %4334, %4325
  %4345 = trunc i32 %4344 to i16
  %4346 = or i16 %4323, %4345
  store i16 %4346, ptr %3233, align 8, !tbaa !25
  %4347 = load i64, ptr %3234, align 8, !tbaa !31
  %4348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4347, i64 1), !nosanitize !30
  %4349 = extractvalue { i64, i1 } %4348, 1, !nosanitize !30
  br i1 %4349, label %4350, label %4351, !prof !32, !nosanitize !30

4350:                                             ; preds = %4342
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4351:                                             ; preds = %4342
  %4352 = extractvalue { i64, i1 } %4348, 0, !nosanitize !30
  %4353 = load ptr, ptr %3235, align 8, !tbaa !33
  %4354 = trunc i16 %4346 to i8
  store i64 %4352, ptr %3234, align 8, !tbaa !31
  %4355 = getelementptr inbounds nuw i8, ptr %4353, i64 %4347
  store i8 %4354, ptr %4355, align 1, !tbaa !28
  %4356 = load i64, ptr %3234, align 8, !tbaa !31
  %4357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4356, i64 1), !nosanitize !30
  %4358 = extractvalue { i64, i1 } %4357, 1, !nosanitize !30
  br i1 %4358, label %4359, label %4360, !prof !32, !nosanitize !30

4359:                                             ; preds = %4380, %4376, %4351
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4360:                                             ; preds = %4351
  %4361 = extractvalue { i64, i1 } %4357, 0, !nosanitize !30
  %4362 = load ptr, ptr %3235, align 8, !tbaa !33
  %4363 = load i16, ptr %3233, align 8, !tbaa !25
  %4364 = lshr i16 %4363, 8
  %4365 = trunc nuw i16 %4364 to i8
  store i64 %4361, ptr %3234, align 8, !tbaa !31
  %4366 = getelementptr inbounds nuw i8, ptr %4362, i64 %4356
  store i8 %4365, ptr %4366, align 1, !tbaa !28
  %4367 = load i32, ptr %2441, align 4, !tbaa !26
  %4368 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4367), !nosanitize !30
  %4369 = extractvalue { i32, i1 } %4368, 1, !nosanitize !30
  br i1 %4369, label %4237, label %4370, !prof !32, !nosanitize !30

4370:                                             ; preds = %4360
  %4371 = extractvalue { i32, i1 } %4368, 0, !nosanitize !30
  %4372 = lshr i32 %4343, %4371
  %4373 = trunc nuw i32 %4372 to i16
  store i16 %4373, ptr %3233, align 8, !tbaa !25
  %4374 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4327, i32 -16)
  %4375 = extractvalue { i32, i1 } %4374, 1, !nosanitize !30
  br i1 %4375, label %4237, label %4376, !prof !32, !nosanitize !30

4376:                                             ; preds = %4370
  %4377 = extractvalue { i32, i1 } %4374, 0, !nosanitize !30
  %4378 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4367, i32 %4377), !nosanitize !30
  %4379 = extractvalue { i32, i1 } %4378, 1, !nosanitize !30
  br i1 %4379, label %4359, label %4386, !prof !32, !nosanitize !30

4380:                                             ; preds = %4339
  %4381 = shl i32 %4334, %4325
  %4382 = trunc i32 %4381 to i16
  %4383 = or i16 %4323, %4382
  store i16 %4383, ptr %3233, align 8, !tbaa !25
  %4384 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4325, i32 %4327), !nosanitize !30
  %4385 = extractvalue { i32, i1 } %4384, 1, !nosanitize !30
  br i1 %4385, label %4359, label %4386, !prof !32, !nosanitize !30

4386:                                             ; preds = %4380, %4376
  %4387 = phi i16 [ %4373, %4376 ], [ %4383, %4380 ]
  %4388 = phi { i32, i1 } [ %4378, %4376 ], [ %4384, %4380 ]
  %4389 = extractvalue { i32, i1 } %4388, 0
  store i32 %4389, ptr %2441, align 4, !tbaa !26
  br label %4390

4390:                                             ; preds = %4386, %4322
  %4391 = phi i16 [ %4387, %4386 ], [ %4323, %4322 ]
  %4392 = phi i32 [ %4389, %4386 ], [ %4325, %4322 ]
  %4393 = add nsw i32 %4213, -1
  %4394 = icmp samesign ult i32 %4213, 257
  %4395 = lshr i32 %4393, 7
  %4396 = add nuw nsw i32 %4395, 256
  %4397 = select i1 %4394, i32 %4393, i32 %4396
  %4398 = zext nneg i32 %4397 to i64
  %4399 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4398
  %4400 = load i8, ptr %4399, align 1, !tbaa !28
  %4401 = zext i8 %4400 to i64
  %4402 = getelementptr inbounds nuw [4 x i8], ptr %4187, i64 %4401
  %4403 = getelementptr inbounds nuw i8, ptr %4402, i64 2
  %4404 = load i16, ptr %4403, align 2, !tbaa !28
  %4405 = zext i16 %4404 to i32
  %4406 = sub nsw i32 16, %4405
  %4407 = icmp sgt i32 %4392, %4406
  %4408 = load i16, ptr %4402, align 2, !tbaa !28
  %4409 = zext i16 %4408 to i32
  %4410 = shl i32 %4409, %4392
  %4411 = trunc i32 %4410 to i16
  %4412 = or i16 %4391, %4411
  store i16 %4412, ptr %3233, align 8, !tbaa !25
  br i1 %4407, label %4414, label %4445

4413:                                             ; preds = %4428
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

4414:                                             ; preds = %4390
  %4415 = load i64, ptr %3234, align 8, !tbaa !31
  %4416 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4415, i64 1), !nosanitize !30
  %4417 = extractvalue { i64, i1 } %4416, 1, !nosanitize !30
  br i1 %4417, label %4418, label %4419, !prof !32, !nosanitize !30

4418:                                             ; preds = %4414
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4419:                                             ; preds = %4414
  %4420 = extractvalue { i64, i1 } %4416, 0, !nosanitize !30
  %4421 = load ptr, ptr %3235, align 8, !tbaa !33
  %4422 = trunc i16 %4412 to i8
  store i64 %4420, ptr %3234, align 8, !tbaa !31
  %4423 = getelementptr inbounds nuw i8, ptr %4421, i64 %4415
  store i8 %4422, ptr %4423, align 1, !tbaa !28
  %4424 = load i64, ptr %3234, align 8, !tbaa !31
  %4425 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4424, i64 1), !nosanitize !30
  %4426 = extractvalue { i64, i1 } %4425, 1, !nosanitize !30
  br i1 %4426, label %4427, label %4428, !prof !32, !nosanitize !30

4427:                                             ; preds = %4438, %4419
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4428:                                             ; preds = %4419
  %4429 = extractvalue { i64, i1 } %4425, 0, !nosanitize !30
  %4430 = load ptr, ptr %3235, align 8, !tbaa !33
  %4431 = load i16, ptr %3233, align 8, !tbaa !25
  %4432 = lshr i16 %4431, 8
  %4433 = trunc nuw i16 %4432 to i8
  store i64 %4429, ptr %3234, align 8, !tbaa !31
  %4434 = getelementptr inbounds nuw i8, ptr %4430, i64 %4424
  store i8 %4433, ptr %4434, align 1, !tbaa !28
  %4435 = load i32, ptr %2441, align 4, !tbaa !26
  %4436 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4435), !nosanitize !30
  %4437 = extractvalue { i32, i1 } %4436, 1, !nosanitize !30
  br i1 %4437, label %4413, label %4438, !prof !32, !nosanitize !30

4438:                                             ; preds = %4428
  %4439 = extractvalue { i32, i1 } %4436, 0, !nosanitize !30
  %4440 = lshr i32 %4409, %4439
  %4441 = trunc nuw i32 %4440 to i16
  store i16 %4441, ptr %3233, align 8, !tbaa !25
  %4442 = add nsw i32 %4405, -16
  %4443 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4435, i32 %4442), !nosanitize !30
  %4444 = extractvalue { i32, i1 } %4443, 1, !nosanitize !30
  br i1 %4444, label %4427, label %4448, !prof !32, !nosanitize !30

4445:                                             ; preds = %4390
  %4446 = add nsw i32 %4392, %4405
  %4447 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4446, 0
  br label %4448

4448:                                             ; preds = %4445, %4438
  %4449 = phi i16 [ %4441, %4438 ], [ %4412, %4445 ]
  %4450 = phi { i32, i1 } [ %4443, %4438 ], [ %4447, %4445 ]
  %4451 = extractvalue { i32, i1 } %4450, 0
  store i32 %4451, ptr %2441, align 4, !tbaa !26
  %4452 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %4401
  %4453 = load i32, ptr %4452, align 4, !tbaa !49
  %4454 = icmp ult i8 %4400, 4
  br i1 %4454, label %4515, label %4455

4455:                                             ; preds = %4448
  %4456 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %4401
  %4457 = load i32, ptr %4456, align 4, !tbaa !49
  %4458 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %4393, i32 %4457), !nosanitize !30
  %4459 = extractvalue { i32, i1 } %4458, 0, !nosanitize !30
  %4460 = extractvalue { i32, i1 } %4458, 1, !nosanitize !30
  br i1 %4460, label %.loopexit265, label %4461, !prof !32, !nosanitize !30

.loopexit265:                                     ; preds = %4495, %4485, %4461, %4455, %4547
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

4461:                                             ; preds = %4455
  %4462 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4453), !nosanitize !30
  %4463 = extractvalue { i32, i1 } %4462, 1, !nosanitize !30
  br i1 %4463, label %.loopexit265, label %4464, !prof !32, !nosanitize !30

4464:                                             ; preds = %4461
  %4465 = extractvalue { i32, i1 } %4462, 0, !nosanitize !30
  %4466 = icmp sgt i32 %4451, %4465
  br i1 %4466, label %4467, label %4505

4467:                                             ; preds = %4464
  %4468 = and i32 %4459, 65535
  %4469 = shl i32 %4459, %4451
  %4470 = trunc i32 %4469 to i16
  %4471 = or i16 %4449, %4470
  store i16 %4471, ptr %3233, align 8, !tbaa !25
  %4472 = load i64, ptr %3234, align 8, !tbaa !31
  %4473 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4472, i64 1), !nosanitize !30
  %4474 = extractvalue { i64, i1 } %4473, 1, !nosanitize !30
  br i1 %4474, label %4475, label %4476, !prof !32, !nosanitize !30

4475:                                             ; preds = %4467
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4476:                                             ; preds = %4467
  %4477 = extractvalue { i64, i1 } %4473, 0, !nosanitize !30
  %4478 = load ptr, ptr %3235, align 8, !tbaa !33
  %4479 = trunc i16 %4471 to i8
  store i64 %4477, ptr %3234, align 8, !tbaa !31
  %4480 = getelementptr inbounds nuw i8, ptr %4478, i64 %4472
  store i8 %4479, ptr %4480, align 1, !tbaa !28
  %4481 = load i64, ptr %3234, align 8, !tbaa !31
  %4482 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4481, i64 1), !nosanitize !30
  %4483 = extractvalue { i64, i1 } %4482, 1, !nosanitize !30
  br i1 %4483, label %4484, label %4485, !prof !32, !nosanitize !30

4484:                                             ; preds = %4505, %4501, %4476
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4485:                                             ; preds = %4476
  %4486 = extractvalue { i64, i1 } %4482, 0, !nosanitize !30
  %4487 = load ptr, ptr %3235, align 8, !tbaa !33
  %4488 = load i16, ptr %3233, align 8, !tbaa !25
  %4489 = lshr i16 %4488, 8
  %4490 = trunc nuw i16 %4489 to i8
  store i64 %4486, ptr %3234, align 8, !tbaa !31
  %4491 = getelementptr inbounds nuw i8, ptr %4487, i64 %4481
  store i8 %4490, ptr %4491, align 1, !tbaa !28
  %4492 = load i32, ptr %2441, align 4, !tbaa !26
  %4493 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4492), !nosanitize !30
  %4494 = extractvalue { i32, i1 } %4493, 1, !nosanitize !30
  br i1 %4494, label %.loopexit265, label %4495, !prof !32, !nosanitize !30

4495:                                             ; preds = %4485
  %4496 = extractvalue { i32, i1 } %4493, 0, !nosanitize !30
  %4497 = lshr i32 %4468, %4496
  %4498 = trunc nuw i32 %4497 to i16
  store i16 %4498, ptr %3233, align 8, !tbaa !25
  %4499 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4453, i32 -16)
  %4500 = extractvalue { i32, i1 } %4499, 1, !nosanitize !30
  br i1 %4500, label %.loopexit265, label %4501, !prof !32, !nosanitize !30

4501:                                             ; preds = %4495
  %4502 = extractvalue { i32, i1 } %4499, 0, !nosanitize !30
  %4503 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4492, i32 %4502), !nosanitize !30
  %4504 = extractvalue { i32, i1 } %4503, 1, !nosanitize !30
  br i1 %4504, label %4484, label %4511, !prof !32, !nosanitize !30

4505:                                             ; preds = %4464
  %4506 = shl i32 %4459, %4451
  %4507 = trunc i32 %4506 to i16
  %4508 = or i16 %4449, %4507
  store i16 %4508, ptr %3233, align 8, !tbaa !25
  %4509 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4451, i32 %4453), !nosanitize !30
  %4510 = extractvalue { i32, i1 } %4509, 1, !nosanitize !30
  br i1 %4510, label %4484, label %4511, !prof !32, !nosanitize !30

4511:                                             ; preds = %4505, %4501, %4269, %4262
  %4512 = phi i16 [ %4265, %4262 ], [ %4236, %4269 ], [ %4498, %4501 ], [ %4508, %4505 ]
  %4513 = phi { i32, i1 } [ %4267, %4262 ], [ %4271, %4269 ], [ %4503, %4501 ], [ %4509, %4505 ]
  %4514 = extractvalue { i32, i1 } %4513, 0
  store i32 %4514, ptr %2441, align 4, !tbaa !26
  br label %4515

4515:                                             ; preds = %4511, %4448
  %4516 = phi i16 [ %4449, %4448 ], [ %4512, %4511 ]
  %4517 = phi i32 [ %4451, %4448 ], [ %4514, %4511 ]
  %4518 = load i32, ptr %4188, align 4, !tbaa !29
  %4519 = icmp ult i32 %4215, %4518
  br i1 %4519, label %4193, label %.loopexit266, !llvm.loop !81

.loopexit266:                                     ; preds = %4515, %.loopexit270
  %4520 = phi i16 [ %4184, %.loopexit270 ], [ %4516, %4515 ]
  %4521 = phi i32 [ %4185, %.loopexit270 ], [ %4517, %4515 ]
  %4522 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %4523 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %4524 = load i16, ptr %4523, align 2, !tbaa !28
  %4525 = zext i16 %4524 to i32
  %4526 = sub nsw i32 16, %4525
  %4527 = icmp sgt i32 %4521, %4526
  %4528 = load i16, ptr %4522, align 2, !tbaa !28
  %4529 = zext i16 %4528 to i32
  %4530 = shl i32 %4529, %4521
  %4531 = trunc i32 %4530 to i16
  %4532 = or i16 %4520, %4531
  store i16 %4532, ptr %3233, align 8, !tbaa !25
  br i1 %4527, label %4533, label %4564

4533:                                             ; preds = %.loopexit266
  %4534 = load i64, ptr %3234, align 8, !tbaa !31
  %4535 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4534, i64 1), !nosanitize !30
  %4536 = extractvalue { i64, i1 } %4535, 1, !nosanitize !30
  br i1 %4536, label %4537, label %4538, !prof !32, !nosanitize !30

4537:                                             ; preds = %4533
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4538:                                             ; preds = %4533
  %4539 = extractvalue { i64, i1 } %4535, 0, !nosanitize !30
  %4540 = load ptr, ptr %3235, align 8, !tbaa !33
  %4541 = trunc i16 %4532 to i8
  store i64 %4539, ptr %3234, align 8, !tbaa !31
  %4542 = getelementptr inbounds nuw i8, ptr %4540, i64 %4534
  store i8 %4541, ptr %4542, align 1, !tbaa !28
  %4543 = load i64, ptr %3234, align 8, !tbaa !31
  %4544 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4543, i64 1), !nosanitize !30
  %4545 = extractvalue { i64, i1 } %4544, 1, !nosanitize !30
  br i1 %4545, label %4546, label %4547, !prof !32, !nosanitize !30

4546:                                             ; preds = %4557, %4538
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4547:                                             ; preds = %4538
  %4548 = extractvalue { i64, i1 } %4544, 0, !nosanitize !30
  %4549 = load ptr, ptr %3235, align 8, !tbaa !33
  %4550 = load i16, ptr %3233, align 8, !tbaa !25
  %4551 = lshr i16 %4550, 8
  %4552 = trunc nuw i16 %4551 to i8
  store i64 %4548, ptr %3234, align 8, !tbaa !31
  %4553 = getelementptr inbounds nuw i8, ptr %4549, i64 %4543
  store i8 %4552, ptr %4553, align 1, !tbaa !28
  %4554 = load i32, ptr %2441, align 4, !tbaa !26
  %4555 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4554), !nosanitize !30
  %4556 = extractvalue { i32, i1 } %4555, 1, !nosanitize !30
  br i1 %4556, label %.loopexit265, label %4557, !prof !32, !nosanitize !30

4557:                                             ; preds = %4547
  %4558 = extractvalue { i32, i1 } %4555, 0, !nosanitize !30
  %4559 = lshr i32 %4529, %4558
  %4560 = trunc nuw i32 %4559 to i16
  store i16 %4560, ptr %3233, align 8, !tbaa !25
  %4561 = add nsw i32 %4525, -16
  %4562 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4554, i32 %4561), !nosanitize !30
  %4563 = extractvalue { i32, i1 } %4562, 1, !nosanitize !30
  br i1 %4563, label %4546, label %4567, !prof !32, !nosanitize !30

4564:                                             ; preds = %.loopexit266
  %4565 = add nsw i32 %4521, %4525
  %4566 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4565, 0
  br label %4567

4567:                                             ; preds = %4564, %4557
  %4568 = phi { i32, i1 } [ %4562, %4557 ], [ %4566, %4564 ]
  %4569 = extractvalue { i32, i1 } %4568, 0
  store i32 %4569, ptr %2441, align 4, !tbaa !26
  br label %4570

4570:                                             ; preds = %4567, %3014, %2595
  %4571 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %4572

4572:                                             ; preds = %4583, %4570
  %4573 = phi i64 [ 0, %4570 ], [ %4587, %4583 ]
  %4574 = getelementptr inbounds nuw [4 x i8], ptr %4571, i64 %4573
  store i16 0, ptr %4574, align 4, !tbaa !28
  %4575 = getelementptr inbounds nuw i8, ptr %4574, i64 4
  store i16 0, ptr %4575, align 4, !tbaa !28
  %4576 = getelementptr inbounds nuw [4 x i8], ptr %4571, i64 %4573
  %4577 = getelementptr inbounds nuw i8, ptr %4576, i64 8
  store i16 0, ptr %4577, align 4, !tbaa !28
  %4578 = getelementptr inbounds nuw i8, ptr %4576, i64 12
  store i16 0, ptr %4578, align 4, !tbaa !28
  %4579 = getelementptr inbounds nuw [4 x i8], ptr %4571, i64 %4573
  %4580 = getelementptr inbounds nuw i8, ptr %4579, i64 16
  store i16 0, ptr %4580, align 4, !tbaa !28
  %4581 = getelementptr inbounds nuw i8, ptr %4579, i64 20
  store i16 0, ptr %4581, align 4, !tbaa !28
  %4582 = icmp eq i64 %4573, 280
  br i1 %4582, label %4588, label %4583

4583:                                             ; preds = %4572
  %4584 = getelementptr inbounds nuw [4 x i8], ptr %4571, i64 %4573
  %4585 = getelementptr inbounds nuw i8, ptr %4584, i64 24
  store i16 0, ptr %4585, align 4, !tbaa !28
  %4586 = getelementptr inbounds nuw i8, ptr %4584, i64 28
  store i16 0, ptr %4586, align 4, !tbaa !28
  %4587 = add nuw nsw i64 %4573, 8
  br label %4572

4588:                                             ; preds = %4572
  %4589 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %4589, align 4, !tbaa !28
  %4590 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %4590, align 4, !tbaa !28
  %4591 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %4591, align 4, !tbaa !28
  %4592 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %4592, align 4, !tbaa !28
  %4593 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %4593, align 4, !tbaa !28
  %4594 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %4594, align 4, !tbaa !28
  %4595 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %4595, align 4, !tbaa !28
  %4596 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %4596, align 4, !tbaa !28
  %4597 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %4597, align 4, !tbaa !28
  %4598 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %4598, align 4, !tbaa !28
  %4599 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %4599, align 4, !tbaa !28
  %4600 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %4600, align 4, !tbaa !28
  %4601 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %4601, align 4, !tbaa !28
  %4602 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %4602, align 4, !tbaa !28
  %4603 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %4603, align 4, !tbaa !28
  %4604 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %4604, align 4, !tbaa !28
  %4605 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %4605, align 4, !tbaa !28
  %4606 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %4606, align 4, !tbaa !28
  %4607 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %4607, align 4, !tbaa !28
  %4608 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %4608, align 4, !tbaa !28
  %4609 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %4609, align 4, !tbaa !28
  %4610 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %4610, align 4, !tbaa !28
  %4611 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %4611, align 4, !tbaa !28
  %4612 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %4612, align 4, !tbaa !28
  %4613 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %4613, align 4, !tbaa !28
  %4614 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %4614, align 4, !tbaa !28
  %4615 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %4615, align 4, !tbaa !28
  %4616 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %4616, align 4, !tbaa !28
  %4617 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %4617, align 4, !tbaa !28
  %4618 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %4618, align 4, !tbaa !28
  %4619 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %4619, align 4, !tbaa !28
  %4620 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %4620, align 4, !tbaa !28
  %4621 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %4621, align 4, !tbaa !28
  %4622 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %4622, align 4, !tbaa !28
  %4623 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %4623, align 4, !tbaa !28
  %4624 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %4624, align 4, !tbaa !28
  %4625 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %4625, align 4, !tbaa !28
  %4626 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %4626, align 4, !tbaa !28
  %4627 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %4627, align 4, !tbaa !28
  %4628 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %4628, align 4, !tbaa !28
  %4629 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %4629, align 4, !tbaa !28
  %4630 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %4630, align 4, !tbaa !28
  %4631 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %4631, align 4, !tbaa !28
  %4632 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %4632, align 4, !tbaa !28
  %4633 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %4633, align 4, !tbaa !28
  %4634 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %4634, align 4, !tbaa !28
  %4635 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %4635, align 4, !tbaa !28
  %4636 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %4636, align 4, !tbaa !28
  %4637 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %4637, align 4, !tbaa !28
  %4638 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %4638, align 4, !tbaa !28
  %4639 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %4640 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %4640, align 4, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4639, i8 0, i64 20, i1 false)
  %4641 = icmp eq i32 %3, 0
  br i1 %4641, label %4698, label %4642

4642:                                             ; preds = %4588
  %4643 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %4644 = load i32, ptr %4643, align 4, !tbaa !26
  %4645 = icmp sgt i32 %4644, 8
  br i1 %4645, label %4646, label %4671

4646:                                             ; preds = %4642
  %4647 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4648 = load i64, ptr %4647, align 8, !tbaa !31
  %4649 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4648, i64 1), !nosanitize !30
  %4650 = extractvalue { i64, i1 } %4649, 1, !nosanitize !30
  br i1 %4650, label %4651, label %4652, !prof !32, !nosanitize !30

4651:                                             ; preds = %4646
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4652:                                             ; preds = %4646
  %4653 = extractvalue { i64, i1 } %4649, 0, !nosanitize !30
  %4654 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4655 = load ptr, ptr %4654, align 8, !tbaa !33
  %4656 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4657 = load i16, ptr %4656, align 8, !tbaa !25
  %4658 = trunc i16 %4657 to i8
  store i64 %4653, ptr %4647, align 8, !tbaa !31
  %4659 = getelementptr inbounds nuw i8, ptr %4655, i64 %4648
  store i8 %4658, ptr %4659, align 1, !tbaa !28
  %4660 = load i64, ptr %4647, align 8, !tbaa !31
  %4661 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4660, i64 1), !nosanitize !30
  %4662 = extractvalue { i64, i1 } %4661, 1, !nosanitize !30
  br i1 %4662, label %4663, label %4664, !prof !32, !nosanitize !30

4663:                                             ; preds = %4652
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4664:                                             ; preds = %4652
  %4665 = extractvalue { i64, i1 } %4661, 0, !nosanitize !30
  %4666 = load ptr, ptr %4654, align 8, !tbaa !33
  %4667 = load i16, ptr %4656, align 8, !tbaa !25
  %4668 = lshr i16 %4667, 8
  %4669 = trunc nuw i16 %4668 to i8
  store i64 %4665, ptr %4647, align 8, !tbaa !31
  %4670 = getelementptr inbounds nuw i8, ptr %4666, i64 %4660
  store i8 %4669, ptr %4670, align 1, !tbaa !28
  br label %4687

4671:                                             ; preds = %4642
  %4672 = icmp sgt i32 %4644, 0
  br i1 %4672, label %4673, label %4687

4673:                                             ; preds = %4671
  %4674 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4675 = load i64, ptr %4674, align 8, !tbaa !31
  %4676 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4675, i64 1), !nosanitize !30
  %4677 = extractvalue { i64, i1 } %4676, 1, !nosanitize !30
  br i1 %4677, label %4678, label %4679, !prof !32, !nosanitize !30

4678:                                             ; preds = %4673
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

4679:                                             ; preds = %4673
  %4680 = extractvalue { i64, i1 } %4676, 0, !nosanitize !30
  %4681 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4682 = load ptr, ptr %4681, align 8, !tbaa !33
  %4683 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4684 = load i16, ptr %4683, align 8, !tbaa !25
  %4685 = trunc i16 %4684 to i8
  store i64 %4680, ptr %4674, align 8, !tbaa !31
  %4686 = getelementptr inbounds nuw i8, ptr %4682, i64 %4675
  store i8 %4685, ptr %4686, align 1, !tbaa !28
  br label %4687

4687:                                             ; preds = %4679, %4671, %4664
  %4688 = load i32, ptr %4643, align 4, !tbaa !26
  %4689 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4688, i32 -1)
  %4690 = extractvalue { i32, i1 } %4689, 1, !nosanitize !30
  br i1 %4690, label %4691, label %4692, !prof !32, !nosanitize !30

4691:                                             ; preds = %4687
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

4692:                                             ; preds = %4687
  %4693 = extractvalue { i32, i1 } %4689, 0, !nosanitize !30
  %4694 = and i32 %4693, 7
  %4695 = add nuw nsw i32 %4694, 1
  %4696 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %4695, ptr %4696, align 8, !tbaa !27
  %4697 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %4697, align 8, !tbaa !25
  store i32 0, ptr %4643, align 4, !tbaa !26
  br label %4698

4698:                                             ; preds = %4692, %4588
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
