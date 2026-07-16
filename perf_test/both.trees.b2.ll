; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.trees.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/trees.c"
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
  store ptr %2, ptr %3, align 8, !tbaa !8
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

161:                                              ; preds = %156
  %162 = extractvalue { i64, i1 } %158, 0, !nosanitize !30
  store i64 %162, ptr %110, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local void @_tr_flush_bits(ptr noundef captures(none) %0) local_unnamed_addr #6 {
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
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
define dso_local void @_tr_align(ptr noundef captures(none) %0) local_unnamed_addr #6 {
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load i64, ptr %12, align 8, !tbaa !31
  %14 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 1), !nosanitize !30
  %15 = extractvalue { i64, i1 } %14, 1, !nosanitize !30
  br i1 %15, label %16, label %17, !prof !32, !nosanitize !30

16:                                               ; preds = %11
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
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
  br i1 %10, label %11, label %2434

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
  br i1 %19, label %20, label %.loopexit343

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %22 = load i16, ptr %21, align 4, !tbaa !28
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %.loopexit343

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %26 = load i16, ptr %25, align 4, !tbaa !28
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %.loopexit343

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %30 = load i16, ptr %29, align 4, !tbaa !28
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %.loopexit343

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 228
  %34 = load i16, ptr %33, align 4, !tbaa !28
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %.loopexit343

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %38 = load i16, ptr %37, align 4, !tbaa !28
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %.loopexit343

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %42 = load i16, ptr %41, align 4, !tbaa !28
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %.loopexit343

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %46 = load i16, ptr %45, align 4, !tbaa !28
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %.loopexit343

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %50 = load i16, ptr %49, align 4, !tbaa !28
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %.loopexit343

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %54 = load i16, ptr %53, align 4, !tbaa !28
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %.loopexit343

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %58 = load i16, ptr %57, align 4, !tbaa !28
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %.loopexit343

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %62 = load i16, ptr %61, align 4, !tbaa !28
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %.loopexit343

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %66 = load i16, ptr %65, align 4, !tbaa !28
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %.loopexit343

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 292
  %70 = load i16, ptr %69, align 4, !tbaa !28
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %.loopexit343

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %74 = load i16, ptr %73, align 4, !tbaa !28
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %.loopexit343

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %78 = load i16, ptr %77, align 4, !tbaa !28
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %.loopexit343

80:                                               ; preds = %76
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %82 = load i16, ptr %81, align 4, !tbaa !28
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %.loopexit343

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 308
  %86 = load i16, ptr %85, align 4, !tbaa !28
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %.loopexit343

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %90 = load i16, ptr %89, align 4, !tbaa !28
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %.loopexit343

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 324
  %94 = load i16, ptr %93, align 4, !tbaa !28
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %.loopexit343

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %98 = load i16, ptr %97, align 4, !tbaa !28
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %.loopexit343

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 332
  %102 = load i16, ptr %101, align 4, !tbaa !28
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %.loopexit343

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %106 = load i16, ptr %105, align 4, !tbaa !28
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %.loopexit343

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %110 = load i16, ptr %109, align 4, !tbaa !28
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %.loopexit343

112:                                              ; preds = %108
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 252
  %114 = load i16, ptr %113, align 4, !tbaa !28
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %.loopexit343

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %118 = load i16, ptr %117, align 4, !tbaa !28
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %.preheader342, label %.loopexit343

120:                                              ; preds = %.preheader342
  %121 = getelementptr inbounds nuw i8, ptr %152, i64 4
  %122 = load i16, ptr %121, align 4, !tbaa !28
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %.loopexit343

124:                                              ; preds = %120
  %125 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %126 = load i16, ptr %125, align 4, !tbaa !28
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %.loopexit343

128:                                              ; preds = %124
  %129 = getelementptr inbounds nuw i8, ptr %152, i64 12
  %130 = load i16, ptr %129, align 4, !tbaa !28
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %.preheader342.1, label %.loopexit343

.preheader342.1:                                  ; preds = %128
  %132 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %151
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %134 = load i16, ptr %133, align 4, !tbaa !28
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %.loopexit343

136:                                              ; preds = %.preheader342.1
  %137 = getelementptr inbounds nuw i8, ptr %132, i64 20
  %138 = load i16, ptr %137, align 4, !tbaa !28
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %.loopexit343

140:                                              ; preds = %136
  %141 = getelementptr inbounds nuw i8, ptr %132, i64 24
  %142 = load i16, ptr %141, align 4, !tbaa !28
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %.loopexit343

144:                                              ; preds = %140
  %145 = getelementptr inbounds nuw i8, ptr %132, i64 28
  %146 = load i16, ptr %145, align 4, !tbaa !28
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %.loopexit343

148:                                              ; preds = %144
  %149 = add nuw nsw i64 %151, 8
  %150 = icmp eq i64 %149, 256
  br i1 %150, label %.loopexit343, label %.preheader342, !llvm.loop !39

.preheader342:                                    ; preds = %116, %148
  %151 = phi i64 [ %149, %148 ], [ 32, %116 ]
  %152 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %151
  %153 = load i16, ptr %152, align 4, !tbaa !28
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %120, label %.loopexit343

.loopexit343:                                     ; preds = %.preheader342, %128, %124, %120, %.preheader342.1, %136, %140, %144, %148, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16
  %155 = phi i32 [ 1, %112 ], [ 0, %20 ], [ 1, %108 ], [ 1, %116 ], [ 0, %16 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ 0, %24 ], [ 1, %124 ], [ 1, %128 ], [ 1, %120 ], [ 0, %148 ], [ 1, %.preheader342 ], [ 1, %.preheader342.1 ], [ 1, %136 ], [ 1, %140 ], [ 1, %144 ]
  store i32 %155, ptr %13, align 8, !tbaa !36
  br label %156

156:                                              ; preds = %.loopexit343, %11
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
  br i1 %173, label %174, label %.loopexit340

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
  br i1 %191, label %.loopexit336, label %192, !prof !32, !nosanitize !30

.loopexit336:                                     ; preds = %188, %405
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

192:                                              ; preds = %188
  %193 = extractvalue { i32, i1 } %190, 0, !nosanitize !30
  store i32 %193, ptr %164, align 4, !tbaa !47
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [4 x i8], ptr %168, i64 %194
  %196 = trunc nuw nsw i64 %183 to i32
  store i32 %196, ptr %195, align 4, !tbaa !4
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
  br i1 %203, label %171, label %182, !llvm.loop !49

204:                                              ; preds = %233, %174
  %205 = phi i32 [ %176, %174 ], [ %234, %233 ]
  %206 = phi i32 [ %175, %174 ], [ %209, %233 ]
  %207 = icmp slt i32 %206, 2
  %208 = add i32 %206, 1
  %209 = select i1 %207, i32 %208, i32 %206
  %210 = add nsw i32 %205, 1
  %211 = select i1 %207, i32 %208, i32 0
  store i32 %210, ptr %164, align 4, !tbaa !47
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds [4 x i8], ptr %177, i64 %212
  store i32 %211, ptr %213, align 4, !tbaa !4
  %214 = sext i32 %211 to i64
  %215 = getelementptr inbounds [4 x i8], ptr %158, i64 %214
  store i16 1, ptr %215, align 2, !tbaa !28
  %216 = getelementptr inbounds i8, ptr %178, i64 %214
  store i8 0, ptr %216, align 1, !tbaa !28
  %217 = load i64, ptr %179, align 8, !tbaa !50
  %218 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %217, i64 1), !nosanitize !30
  %219 = extractvalue { i64, i1 } %218, 1, !nosanitize !30
  br i1 %219, label %220, label %221, !prof !32, !nosanitize !30

220:                                              ; preds = %204
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

221:                                              ; preds = %204
  %222 = extractvalue { i64, i1 } %218, 0, !nosanitize !30
  store i64 %222, ptr %179, align 8, !tbaa !50
  br i1 %180, label %233, label %223

223:                                              ; preds = %221
  %224 = getelementptr inbounds [4 x i8], ptr %161, i64 %214
  %225 = getelementptr inbounds nuw i8, ptr %224, i64 2
  %226 = load i16, ptr %225, align 2, !tbaa !28
  %227 = zext i16 %226 to i64
  %228 = load i64, ptr %181, align 8, !tbaa !51
  %229 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %228, i64 %227), !nosanitize !30
  %230 = extractvalue { i64, i1 } %229, 1, !nosanitize !30
  br i1 %230, label %.loopexit335, label %231, !prof !32, !nosanitize !30

.loopexit335:                                     ; preds = %223, %398, %391, %318, %494
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

231:                                              ; preds = %223
  %232 = extractvalue { i64, i1 } %229, 0, !nosanitize !30
  store i64 %232, ptr %181, align 8, !tbaa !51
  br label %233

233:                                              ; preds = %231, %221
  %234 = load i32, ptr %164, align 4, !tbaa !47
  %235 = icmp slt i32 %234, 2
  br i1 %235, label %204, label %.loopexit340, !llvm.loop !52

.loopexit340:                                     ; preds = %233, %171
  %236 = phi i32 [ %201, %171 ], [ %209, %233 ]
  %237 = phi i32 [ %172, %171 ], [ %234, %233 ]
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 %236, ptr %238, align 8, !tbaa !53
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %241 = lshr i32 %237, 1
  %242 = zext nneg i32 %241 to i64
  br label %247

243:                                              ; preds = %.loopexit337
  %244 = load i32, ptr %164, align 4, !tbaa !47
  %245 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %246 = sext i32 %163 to i64
  br label %318

247:                                              ; preds = %.loopexit337, %.loopexit340
  %248 = phi i64 [ %242, %.loopexit340 ], [ %316, %.loopexit337 ]
  %249 = getelementptr inbounds nuw [4 x i8], ptr %239, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, ptr %240, i64 %251
  %253 = load i32, ptr %164, align 4, !tbaa !47
  %254 = trunc i64 %248 to i32
  %255 = shl i32 %254, 1
  %256 = icmp sgt i32 %255, %253
  br i1 %256, label %.loopexit337, label %257

257:                                              ; preds = %247
  %258 = getelementptr inbounds [4 x i8], ptr %158, i64 %251
  br label %259

259:                                              ; preds = %307, %257
  %260 = phi i32 [ %253, %257 ], [ %311, %307 ]
  %261 = phi i32 [ %255, %257 ], [ %310, %307 ]
  %262 = phi i32 [ %254, %257 ], [ %292, %307 ]
  %263 = icmp slt i32 %261, %260
  br i1 %263, label %266, label %264

264:                                              ; preds = %259
  %265 = sext i32 %261 to i64
  br label %290

266:                                              ; preds = %259
  %267 = or disjoint i32 %261, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [4 x i8], ptr %239, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [4 x i8], ptr %158, i64 %271
  %273 = load i16, ptr %272, align 2, !tbaa !28
  %274 = sext i32 %261 to i64
  %275 = getelementptr inbounds [4 x i8], ptr %239, i64 %274
  %276 = load i32, ptr %275, align 4, !tbaa !4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [4 x i8], ptr %158, i64 %277
  %279 = load i16, ptr %278, align 2, !tbaa !28
  %280 = icmp ult i16 %273, %279
  br i1 %280, label %289, label %281

281:                                              ; preds = %266
  %282 = icmp eq i16 %273, %279
  br i1 %282, label %283, label %290

283:                                              ; preds = %281
  %284 = getelementptr inbounds i8, ptr %240, i64 %271
  %285 = load i8, ptr %284, align 1, !tbaa !28
  %286 = getelementptr inbounds i8, ptr %240, i64 %277
  %287 = load i8, ptr %286, align 1, !tbaa !28
  %288 = icmp ugt i8 %285, %287
  br i1 %288, label %290, label %289

289:                                              ; preds = %283, %266
  br label %290

290:                                              ; preds = %289, %283, %281, %264
  %291 = phi i64 [ %265, %264 ], [ %268, %289 ], [ %274, %283 ], [ %274, %281 ]
  %292 = phi i32 [ %261, %264 ], [ %267, %289 ], [ %261, %283 ], [ %261, %281 ]
  %293 = load i16, ptr %258, align 2, !tbaa !28
  %294 = getelementptr inbounds [4 x i8], ptr %239, i64 %291
  %295 = load i32, ptr %294, align 4, !tbaa !4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [4 x i8], ptr %158, i64 %296
  %298 = load i16, ptr %297, align 2, !tbaa !28
  %299 = icmp ult i16 %293, %298
  br i1 %299, label %.loopexit337, label %300

300:                                              ; preds = %290
  %301 = icmp eq i16 %293, %298
  br i1 %301, label %302, label %307

302:                                              ; preds = %300
  %303 = load i8, ptr %252, align 1, !tbaa !28
  %304 = getelementptr inbounds i8, ptr %240, i64 %296
  %305 = load i8, ptr %304, align 1, !tbaa !28
  %306 = icmp ugt i8 %303, %305
  br i1 %306, label %307, label %.loopexit337

307:                                              ; preds = %302, %300
  %308 = sext i32 %262 to i64
  %309 = getelementptr inbounds [4 x i8], ptr %239, i64 %308
  store i32 %295, ptr %309, align 4, !tbaa !4
  %310 = shl i32 %292, 1
  %311 = load i32, ptr %164, align 4, !tbaa !47
  %312 = icmp sgt i32 %310, %311
  br i1 %312, label %.loopexit337, label %259, !llvm.loop !54

.loopexit337:                                     ; preds = %307, %302, %290, %247
  %313 = phi i32 [ %254, %247 ], [ %292, %307 ], [ %262, %302 ], [ %262, %290 ]
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [4 x i8], ptr %239, i64 %314
  store i32 %250, ptr %315, align 4, !tbaa !4
  %316 = add nsw i64 %248, -1
  %317 = icmp sgt i64 %248, 1
  br i1 %317, label %247, label %243, !llvm.loop !55

318:                                              ; preds = %489, %243
  %319 = phi i32 [ %244, %243 ], [ %492, %489 ]
  %320 = phi i64 [ %246, %243 ], [ %430, %489 ]
  %321 = load i32, ptr %245, align 4, !tbaa !4
  %322 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %319, i32 -1)
  %323 = extractvalue { i32, i1 } %322, 1, !nosanitize !30
  br i1 %323, label %.loopexit335, label %324, !prof !32, !nosanitize !30

324:                                              ; preds = %318
  %325 = extractvalue { i32, i1 } %322, 0, !nosanitize !30
  store i32 %325, ptr %164, align 4, !tbaa !47
  %326 = sext i32 %319 to i64
  %327 = getelementptr inbounds [4 x i8], ptr %239, i64 %326
  %328 = load i32, ptr %327, align 4, !tbaa !4
  store i32 %328, ptr %245, align 4, !tbaa !4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, ptr %240, i64 %329
  %331 = icmp slt i32 %325, 2
  br i1 %331, label %391, label %332

332:                                              ; preds = %324
  %333 = getelementptr inbounds [4 x i8], ptr %158, i64 %329
  br label %334

334:                                              ; preds = %382, %332
  %335 = phi i32 [ %325, %332 ], [ %386, %382 ]
  %336 = phi i32 [ 2, %332 ], [ %385, %382 ]
  %337 = phi i32 [ 1, %332 ], [ %367, %382 ]
  %338 = icmp slt i32 %336, %335
  br i1 %338, label %341, label %339

339:                                              ; preds = %334
  %340 = sext i32 %336 to i64
  br label %365

341:                                              ; preds = %334
  %342 = or disjoint i32 %336, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [4 x i8], ptr %239, i64 %343
  %345 = load i32, ptr %344, align 4, !tbaa !4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [4 x i8], ptr %158, i64 %346
  %348 = load i16, ptr %347, align 2, !tbaa !28
  %349 = sext i32 %336 to i64
  %350 = getelementptr inbounds [4 x i8], ptr %239, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [4 x i8], ptr %158, i64 %352
  %354 = load i16, ptr %353, align 2, !tbaa !28
  %355 = icmp ult i16 %348, %354
  br i1 %355, label %364, label %356

356:                                              ; preds = %341
  %357 = icmp eq i16 %348, %354
  br i1 %357, label %358, label %365

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %240, i64 %346
  %360 = load i8, ptr %359, align 1, !tbaa !28
  %361 = getelementptr inbounds i8, ptr %240, i64 %352
  %362 = load i8, ptr %361, align 1, !tbaa !28
  %363 = icmp ugt i8 %360, %362
  br i1 %363, label %365, label %364

364:                                              ; preds = %358, %341
  br label %365

365:                                              ; preds = %364, %358, %356, %339
  %366 = phi i64 [ %340, %339 ], [ %343, %364 ], [ %349, %358 ], [ %349, %356 ]
  %367 = phi i32 [ %336, %339 ], [ %342, %364 ], [ %336, %358 ], [ %336, %356 ]
  %368 = load i16, ptr %333, align 2, !tbaa !28
  %369 = getelementptr inbounds [4 x i8], ptr %239, i64 %366
  %370 = load i32, ptr %369, align 4, !tbaa !4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [4 x i8], ptr %158, i64 %371
  %373 = load i16, ptr %372, align 2, !tbaa !28
  %374 = icmp ult i16 %368, %373
  br i1 %374, label %388, label %375

375:                                              ; preds = %365
  %376 = icmp eq i16 %368, %373
  br i1 %376, label %377, label %382

377:                                              ; preds = %375
  %378 = load i8, ptr %330, align 1, !tbaa !28
  %379 = getelementptr inbounds i8, ptr %240, i64 %371
  %380 = load i8, ptr %379, align 1, !tbaa !28
  %381 = icmp ugt i8 %378, %380
  br i1 %381, label %382, label %388

382:                                              ; preds = %377, %375
  %383 = sext i32 %337 to i64
  %384 = getelementptr inbounds [4 x i8], ptr %239, i64 %383
  store i32 %370, ptr %384, align 4, !tbaa !4
  %385 = shl i32 %367, 1
  %386 = load i32, ptr %164, align 4, !tbaa !47
  %387 = icmp sgt i32 %385, %386
  br i1 %387, label %388, label %334, !llvm.loop !54

388:                                              ; preds = %382, %377, %365
  %389 = phi i32 [ %337, %365 ], [ %337, %377 ], [ %367, %382 ]
  %390 = sext i32 %389 to i64
  br label %391

391:                                              ; preds = %388, %324
  %392 = phi i64 [ 1, %324 ], [ %390, %388 ]
  %393 = getelementptr inbounds [4 x i8], ptr %239, i64 %392
  store i32 %328, ptr %393, align 4, !tbaa !4
  %394 = load i32, ptr %245, align 4, !tbaa !4
  %395 = load i32, ptr %165, align 8, !tbaa !48
  %396 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %395, i32 -1)
  %397 = extractvalue { i32, i1 } %396, 1, !nosanitize !30
  br i1 %397, label %.loopexit335, label %398, !prof !32, !nosanitize !30

398:                                              ; preds = %391
  %399 = extractvalue { i32, i1 } %396, 0, !nosanitize !30
  store i32 %399, ptr %165, align 8, !tbaa !48
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [4 x i8], ptr %239, i64 %400
  store i32 %321, ptr %401, align 4, !tbaa !4
  %402 = load i32, ptr %165, align 8, !tbaa !48
  %403 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %402, i32 -1)
  %404 = extractvalue { i32, i1 } %403, 1, !nosanitize !30
  br i1 %404, label %.loopexit335, label %405, !prof !32, !nosanitize !30

405:                                              ; preds = %398
  %406 = extractvalue { i32, i1 } %403, 0, !nosanitize !30
  store i32 %406, ptr %165, align 8, !tbaa !48
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [4 x i8], ptr %239, i64 %407
  store i32 %394, ptr %408, align 4, !tbaa !4
  %409 = sext i32 %321 to i64
  %410 = getelementptr inbounds [4 x i8], ptr %158, i64 %409
  %411 = load i16, ptr %410, align 2, !tbaa !28
  %412 = sext i32 %394 to i64
  %413 = getelementptr inbounds [4 x i8], ptr %158, i64 %412
  %414 = load i16, ptr %413, align 2, !tbaa !28
  %415 = add i16 %414, %411
  %416 = getelementptr inbounds [4 x i8], ptr %158, i64 %320
  store i16 %415, ptr %416, align 2, !tbaa !28
  %417 = getelementptr inbounds i8, ptr %240, i64 %409
  %418 = load i8, ptr %417, align 1, !tbaa !28
  %419 = getelementptr inbounds i8, ptr %240, i64 %412
  %420 = load i8, ptr %419, align 1, !tbaa !28
  %421 = tail call i8 @llvm.umax.i8(i8 %418, i8 %420)
  %422 = add i8 %421, 1
  %423 = getelementptr inbounds i8, ptr %240, i64 %320
  store i8 %422, ptr %423, align 1, !tbaa !28
  %424 = trunc nsw i64 %320 to i32
  %425 = trunc i64 %320 to i16
  %426 = getelementptr inbounds nuw i8, ptr %413, i64 2
  store i16 %425, ptr %426, align 2, !tbaa !28
  %427 = getelementptr inbounds nuw i8, ptr %410, i64 2
  store i16 %425, ptr %427, align 2, !tbaa !28
  %428 = icmp eq i64 %320, 2147483647
  br i1 %428, label %.loopexit336, label %429, !prof !32, !nosanitize !30

429:                                              ; preds = %405
  %430 = add nsw i64 %320, 1
  store i32 %424, ptr %245, align 4, !tbaa !4
  %431 = load i32, ptr %164, align 4, !tbaa !47
  %432 = icmp slt i32 %431, 2
  br i1 %432, label %489, label %.preheader334

.preheader334:                                    ; preds = %429, %480
  %433 = phi i32 [ %484, %480 ], [ %431, %429 ]
  %434 = phi i32 [ %483, %480 ], [ 2, %429 ]
  %435 = phi i32 [ %465, %480 ], [ 1, %429 ]
  %436 = icmp slt i32 %434, %433
  br i1 %436, label %439, label %437

437:                                              ; preds = %.preheader334
  %438 = sext i32 %434 to i64
  br label %463

439:                                              ; preds = %.preheader334
  %440 = or disjoint i32 %434, 1
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [4 x i8], ptr %239, i64 %441
  %443 = load i32, ptr %442, align 4, !tbaa !4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [4 x i8], ptr %158, i64 %444
  %446 = load i16, ptr %445, align 2, !tbaa !28
  %447 = sext i32 %434 to i64
  %448 = getelementptr inbounds [4 x i8], ptr %239, i64 %447
  %449 = load i32, ptr %448, align 4, !tbaa !4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [4 x i8], ptr %158, i64 %450
  %452 = load i16, ptr %451, align 2, !tbaa !28
  %453 = icmp ult i16 %446, %452
  br i1 %453, label %462, label %454

454:                                              ; preds = %439
  %455 = icmp eq i16 %446, %452
  br i1 %455, label %456, label %463

456:                                              ; preds = %454
  %457 = getelementptr inbounds i8, ptr %240, i64 %444
  %458 = load i8, ptr %457, align 1, !tbaa !28
  %459 = getelementptr inbounds i8, ptr %240, i64 %450
  %460 = load i8, ptr %459, align 1, !tbaa !28
  %461 = icmp ugt i8 %458, %460
  br i1 %461, label %463, label %462

462:                                              ; preds = %456, %439
  br label %463

463:                                              ; preds = %462, %456, %454, %437
  %464 = phi i64 [ %438, %437 ], [ %441, %462 ], [ %447, %456 ], [ %447, %454 ]
  %465 = phi i32 [ %434, %437 ], [ %440, %462 ], [ %434, %456 ], [ %434, %454 ]
  %466 = load i16, ptr %416, align 2, !tbaa !28
  %467 = getelementptr inbounds [4 x i8], ptr %239, i64 %464
  %468 = load i32, ptr %467, align 4, !tbaa !4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [4 x i8], ptr %158, i64 %469
  %471 = load i16, ptr %470, align 2, !tbaa !28
  %472 = icmp ult i16 %466, %471
  br i1 %472, label %486, label %473

473:                                              ; preds = %463
  %474 = icmp eq i16 %466, %471
  br i1 %474, label %475, label %480

475:                                              ; preds = %473
  %476 = load i8, ptr %423, align 1, !tbaa !28
  %477 = getelementptr inbounds i8, ptr %240, i64 %469
  %478 = load i8, ptr %477, align 1, !tbaa !28
  %479 = icmp ugt i8 %476, %478
  br i1 %479, label %480, label %486

480:                                              ; preds = %475, %473
  %481 = sext i32 %435 to i64
  %482 = getelementptr inbounds [4 x i8], ptr %239, i64 %481
  store i32 %468, ptr %482, align 4, !tbaa !4
  %483 = shl i32 %465, 1
  %484 = load i32, ptr %164, align 4, !tbaa !47
  %485 = icmp sgt i32 %483, %484
  br i1 %485, label %486, label %.preheader334, !llvm.loop !54

486:                                              ; preds = %480, %475, %463
  %487 = phi i32 [ %435, %463 ], [ %435, %475 ], [ %465, %480 ]
  %488 = sext i32 %487 to i64
  br label %489

489:                                              ; preds = %486, %429
  %490 = phi i64 [ 1, %429 ], [ %488, %486 ]
  %491 = getelementptr inbounds [4 x i8], ptr %239, i64 %490
  store i32 %424, ptr %491, align 4, !tbaa !4
  %492 = load i32, ptr %164, align 4, !tbaa !47
  %493 = icmp sgt i32 %492, 1
  br i1 %493, label %318, label %494, !llvm.loop !56

494:                                              ; preds = %489
  %495 = load i32, ptr %165, align 8, !tbaa !48
  %496 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %495, i32 -1)
  %497 = extractvalue { i32, i1 } %496, 1, !nosanitize !30
  br i1 %497, label %.loopexit335, label %498, !prof !32, !nosanitize !30

498:                                              ; preds = %494
  %499 = extractvalue { i32, i1 } %496, 0, !nosanitize !30
  %500 = load i32, ptr %245, align 4, !tbaa !4
  store i32 %499, ptr %165, align 8, !tbaa !48
  %501 = sext i32 %499 to i64
  %502 = getelementptr inbounds [4 x i8], ptr %239, i64 %501
  store i32 %500, ptr %502, align 4, !tbaa !4
  %503 = load ptr, ptr %157, align 8, !tbaa !41
  %504 = load i32, ptr %238, align 8, !tbaa !53
  %505 = load ptr, ptr %159, align 8, !tbaa !42
  %506 = load ptr, ptr %505, align 8, !tbaa !43
  %507 = getelementptr inbounds nuw i8, ptr %505, i64 8
  %508 = load ptr, ptr %507, align 8, !tbaa !57
  %509 = getelementptr inbounds nuw i8, ptr %505, i64 16
  %510 = load i32, ptr %509, align 8, !tbaa !58
  %511 = getelementptr inbounds nuw i8, ptr %505, i64 24
  %512 = load i32, ptr %511, align 8, !tbaa !59
  %513 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %513, i8 0, i64 32, i1 false), !tbaa !60
  %514 = load i32, ptr %165, align 8, !tbaa !48
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds [4 x i8], ptr %239, i64 %515
  %517 = load i32, ptr %516, align 4, !tbaa !4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds [4 x i8], ptr %503, i64 %518
  %520 = getelementptr inbounds nuw i8, ptr %519, i64 2
  store i16 0, ptr %520, align 2, !tbaa !28
  %521 = load i32, ptr %165, align 8, !tbaa !48
  %522 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %521, i32 1), !nosanitize !30
  %523 = extractvalue { i32, i1 } %522, 1, !nosanitize !30
  br i1 %523, label %.loopexit331, label %524, !prof !32, !nosanitize !30

.loopexit331:                                     ; preds = %572, %548, %498
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

524:                                              ; preds = %498
  %525 = extractvalue { i32, i1 } %522, 0
  %526 = icmp slt i32 %525, 573
  br i1 %526, label %527, label %.loopexit326

527:                                              ; preds = %524
  %528 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %529 = icmp eq ptr %506, null
  %530 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %531 = sext i32 %525 to i64
  br label %532

532:                                              ; preds = %604, %527
  %533 = phi i64 [ %531, %527 ], [ %605, %604 ]
  %534 = phi i32 [ 0, %527 ], [ %555, %604 ]
  %535 = getelementptr inbounds [4 x i8], ptr %239, i64 %533
  %536 = load i32, ptr %535, align 4, !tbaa !4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds [4 x i8], ptr %503, i64 %537
  %539 = getelementptr inbounds nuw i8, ptr %538, i64 2
  %540 = load i16, ptr %539, align 2, !tbaa !28
  %541 = zext i16 %540 to i64
  %542 = getelementptr inbounds nuw [4 x i8], ptr %503, i64 %541
  %543 = getelementptr inbounds nuw i8, ptr %542, i64 2
  %544 = load i16, ptr %543, align 2, !tbaa !28
  %545 = zext i16 %544 to i32
  %546 = add nuw nsw i32 %545, 1
  %547 = icmp sgt i32 %512, %545
  br i1 %547, label %553, label %548

548:                                              ; preds = %532
  %549 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %534, i32 1), !nosanitize !30
  %550 = extractvalue { i32, i1 } %549, 1, !nosanitize !30
  br i1 %550, label %.loopexit331, label %551, !prof !32, !nosanitize !30

551:                                              ; preds = %548
  %552 = extractvalue { i32, i1 } %549, 0, !nosanitize !30
  br label %553

553:                                              ; preds = %551, %532
  %554 = phi i32 [ %512, %551 ], [ %546, %532 ]
  %555 = phi i32 [ %552, %551 ], [ %534, %532 ]
  %556 = trunc i32 %554 to i16
  store i16 %556, ptr %539, align 2, !tbaa !28
  %557 = icmp sgt i32 %536, %504
  br i1 %557, label %604, label %558

558:                                              ; preds = %553
  %559 = sext i32 %554 to i64
  %560 = getelementptr inbounds [2 x i8], ptr %513, i64 %559
  %561 = load i16, ptr %560, align 2, !tbaa !60
  %562 = add i16 %561, 1
  store i16 %562, ptr %560, align 2, !tbaa !60
  %563 = icmp slt i32 %536, %510
  br i1 %563, label %572, label %564

564:                                              ; preds = %558
  %565 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %536, i32 %510), !nosanitize !30
  %566 = extractvalue { i32, i1 } %565, 1, !nosanitize !30
  br i1 %566, label %.loopexit320, label %567, !prof !32, !nosanitize !30

.loopexit320:                                     ; preds = %564, %631, %623, %657, %662, %610
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

567:                                              ; preds = %564
  %568 = extractvalue { i32, i1 } %565, 0, !nosanitize !30
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [4 x i8], ptr %508, i64 %569
  %571 = load i32, ptr %570, align 4, !tbaa !4
  br label %572

572:                                              ; preds = %567, %558
  %573 = phi i32 [ %571, %567 ], [ 0, %558 ]
  %574 = load i16, ptr %538, align 2, !tbaa !28
  %575 = zext i16 %574 to i64
  %576 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %554, i32 %573), !nosanitize !30
  %577 = extractvalue { i32, i1 } %576, 1, !nosanitize !30
  br i1 %577, label %.loopexit331, label %578, !prof !32, !nosanitize !30

578:                                              ; preds = %572
  %579 = extractvalue { i32, i1 } %576, 0, !nosanitize !30
  %580 = zext i32 %579 to i64
  %581 = mul nuw nsw i64 %580, %575
  %582 = load i64, ptr %528, align 8, !tbaa !50
  %583 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %582, i64 %581), !nosanitize !30
  %584 = extractvalue { i64, i1 } %583, 1, !nosanitize !30
  br i1 %584, label %585, label %586, !prof !32, !nosanitize !30

585:                                              ; preds = %588, %578
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

586:                                              ; preds = %578
  %587 = extractvalue { i64, i1 } %583, 0, !nosanitize !30
  store i64 %587, ptr %528, align 8, !tbaa !50
  br i1 %529, label %604, label %588

588:                                              ; preds = %586
  %589 = getelementptr inbounds [4 x i8], ptr %506, i64 %537
  %590 = getelementptr inbounds nuw i8, ptr %589, i64 2
  %591 = load i16, ptr %590, align 2, !tbaa !28
  %592 = zext i16 %591 to i32
  %593 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %592, i32 %573), !nosanitize !30
  %594 = extractvalue { i32, i1 } %593, 1, !nosanitize !30
  br i1 %594, label %585, label %595, !prof !32, !nosanitize !30

595:                                              ; preds = %588
  %596 = extractvalue { i32, i1 } %593, 0, !nosanitize !30
  %597 = zext i32 %596 to i64
  %598 = mul nuw nsw i64 %597, %575
  %599 = load i64, ptr %530, align 8, !tbaa !51
  %600 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %599, i64 %598), !nosanitize !30
  %601 = extractvalue { i64, i1 } %600, 1, !nosanitize !30
  br i1 %601, label %.loopexit329, label %602, !prof !32, !nosanitize !30

.loopexit329:                                     ; preds = %595, %626
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

602:                                              ; preds = %595
  %603 = extractvalue { i64, i1 } %600, 0, !nosanitize !30
  store i64 %603, ptr %530, align 8, !tbaa !51
  br label %604

604:                                              ; preds = %602, %586, %553
  %605 = add nsw i64 %533, 1
  %606 = and i64 %605, 4294967295
  %607 = icmp eq i64 %606, 573
  br i1 %607, label %608, label %532, !llvm.loop !61

608:                                              ; preds = %604
  %609 = icmp eq i32 %555, 0
  br i1 %609, label %.loopexit326, label %610

610:                                              ; preds = %608
  %611 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %512, i32 -1)
  %612 = extractvalue { i32, i1 } %611, 1, !nosanitize !30
  %613 = sext i32 %512 to i64
  %614 = getelementptr inbounds [2 x i8], ptr %513, i64 %613
  br i1 %612, label %.loopexit320, label %.preheader328, !prof !32, !nosanitize !30

.preheader328:                                    ; preds = %610, %641
  %615 = phi i32 [ %642, %641 ], [ %555, %610 ]
  br label %616

616:                                              ; preds = %623, %.preheader328
  %617 = phi { i32, i1 } [ %624, %623 ], [ %611, %.preheader328 ]
  %618 = extractvalue { i32, i1 } %617, 0
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds [2 x i8], ptr %513, i64 %619
  %621 = load i16, ptr %620, align 2, !tbaa !60
  %622 = icmp eq i16 %621, 0
  br i1 %622, label %623, label %626

623:                                              ; preds = %616
  %624 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %618, i32 -1)
  %625 = extractvalue { i32, i1 } %624, 1, !nosanitize !30
  br i1 %625, label %.loopexit320, label %616, !prof !32, !llvm.loop !62, !nosanitize !30

626:                                              ; preds = %616
  %627 = getelementptr inbounds [2 x i8], ptr %513, i64 %619
  %628 = add i16 %621, -1
  store i16 %628, ptr %627, align 2, !tbaa !60
  %629 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %618, i32 1), !nosanitize !30
  %630 = extractvalue { i32, i1 } %629, 1, !nosanitize !30
  br i1 %630, label %.loopexit329, label %631, !prof !32, !nosanitize !30

631:                                              ; preds = %626
  %632 = extractvalue { i32, i1 } %629, 0, !nosanitize !30
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds [2 x i8], ptr %513, i64 %633
  %635 = load i16, ptr %634, align 2, !tbaa !60
  %636 = add i16 %635, 2
  store i16 %636, ptr %634, align 2, !tbaa !60
  %637 = load i16, ptr %614, align 2, !tbaa !60
  %638 = add i16 %637, -1
  store i16 %638, ptr %614, align 2, !tbaa !60
  %639 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %615, i32 -2)
  %640 = extractvalue { i32, i1 } %639, 1, !nosanitize !30
  br i1 %640, label %.loopexit320, label %641, !prof !32, !nosanitize !30

641:                                              ; preds = %631
  %642 = extractvalue { i32, i1 } %639, 0, !nosanitize !30
  %643 = icmp sgt i32 %642, 0
  br i1 %643, label %.preheader328, label %644, !llvm.loop !63

644:                                              ; preds = %641
  %645 = icmp eq i32 %512, 0
  br i1 %645, label %.loopexit326, label %.preheader324

.preheader324:                                    ; preds = %644, %699
  %646 = phi i64 [ %700, %699 ], [ %613, %644 ]
  %647 = phi i32 [ %654, %699 ], [ 573, %644 ]
  %648 = getelementptr inbounds [2 x i8], ptr %513, i64 %646
  %649 = load i16, ptr %648, align 2, !tbaa !60
  %650 = icmp eq i16 %649, 0
  br i1 %650, label %.loopexit323, label %651

651:                                              ; preds = %.preheader324
  %652 = zext i16 %649 to i32
  %653 = trunc i64 %646 to i16
  br label %657

.loopexit323:                                     ; preds = %696, %.preheader324
  %654 = phi i32 [ %647, %.preheader324 ], [ %666, %696 ]
  %655 = and i64 %646, 4294967295
  %656 = icmp eq i64 %655, 2147483648
  br i1 %656, label %.loopexit322, label %699, !prof !32, !nosanitize !30

657:                                              ; preds = %696, %651
  %658 = phi i32 [ %647, %651 ], [ %666, %696 ]
  %659 = phi i32 [ %652, %651 ], [ %697, %696 ]
  %660 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %658, i32 -1)
  %661 = extractvalue { i32, i1 } %660, 1, !nosanitize !30
  br i1 %661, label %.loopexit320, label %.preheader319, !prof !64, !nosanitize !30

662:                                              ; preds = %.preheader319
  %663 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %666, i32 -1)
  %664 = extractvalue { i32, i1 } %663, 1, !nosanitize !30
  br i1 %664, label %.loopexit320, label %.preheader319, !prof !65, !llvm.loop !66, !nosanitize !30

.preheader319:                                    ; preds = %657, %662
  %665 = phi { i32, i1 } [ %663, %662 ], [ %660, %657 ]
  %666 = extractvalue { i32, i1 } %665, 0, !nosanitize !30
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds [4 x i8], ptr %239, i64 %667
  %669 = load i32, ptr %668, align 4, !tbaa !4
  %670 = icmp sgt i32 %669, %504
  br i1 %670, label %662, label %671, !llvm.loop !66

671:                                              ; preds = %.preheader319
  %672 = sext i32 %669 to i64
  %673 = getelementptr inbounds [4 x i8], ptr %503, i64 %672
  %674 = getelementptr inbounds nuw i8, ptr %673, i64 2
  %675 = load i16, ptr %674, align 2, !tbaa !28
  %676 = zext i16 %675 to i64
  %677 = icmp eq i64 %646, %676
  br i1 %677, label %696, label %678

678:                                              ; preds = %671
  %679 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %646, i64 %676), !nosanitize !30
  %680 = extractvalue { i64, i1 } %679, 1, !nosanitize !30
  br i1 %680, label %.loopexit322, label %681, !prof !32, !nosanitize !30

.loopexit322:                                     ; preds = %.loopexit323, %678
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

681:                                              ; preds = %678
  %682 = extractvalue { i64, i1 } %679, 0, !nosanitize !30
  %683 = load i16, ptr %673, align 2, !tbaa !28
  %684 = zext i16 %683 to i64
  %685 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %682, i64 %684), !nosanitize !30
  %686 = extractvalue { i64, i1 } %685, 1, !nosanitize !30
  br i1 %686, label %687, label %688, !prof !32, !nosanitize !30

687:                                              ; preds = %681
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !30
  unreachable, !nosanitize !30

688:                                              ; preds = %681
  %689 = extractvalue { i64, i1 } %685, 0, !nosanitize !30
  %690 = load i64, ptr %528, align 8, !tbaa !50
  %691 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %690, i64 %689), !nosanitize !30
  %692 = extractvalue { i64, i1 } %691, 1, !nosanitize !30
  br i1 %692, label %693, label %694, !prof !32, !nosanitize !30

693:                                              ; preds = %688
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

694:                                              ; preds = %688
  %695 = extractvalue { i64, i1 } %691, 0, !nosanitize !30
  store i64 %695, ptr %528, align 8, !tbaa !50
  store i16 %653, ptr %674, align 2, !tbaa !28
  br label %696

696:                                              ; preds = %694, %671
  %697 = add nsw i32 %659, -1
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %.loopexit323, label %657, !llvm.loop !66

699:                                              ; preds = %.loopexit323
  %700 = add nsw i64 %646, -1
  %701 = and i64 %700, 4294967295
  %702 = icmp eq i64 %701, 0
  br i1 %702, label %.loopexit326, label %.preheader324, !llvm.loop !67

.loopexit326:                                     ; preds = %699, %644, %608, %524
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %703 = load i16, ptr %513, align 2, !tbaa !60
  %704 = zext i16 %703 to i32
  %705 = shl nuw nsw i32 %704, 1
  %706 = trunc i32 %705 to i16
  %707 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %706, ptr %707, align 2, !tbaa !60
  %708 = getelementptr i8, ptr %0, i64 2978
  %709 = load i16, ptr %708, align 2, !tbaa !60
  %710 = zext i16 %709 to i32
  %711 = add nuw nsw i32 %705, %710
  %712 = shl nuw nsw i32 %711, 1
  %713 = trunc i32 %712 to i16
  %714 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %713, ptr %714, align 4, !tbaa !60
  %715 = getelementptr i8, ptr %0, i64 2980
  %716 = load i16, ptr %715, align 2, !tbaa !60
  %717 = zext i16 %716 to i32
  %718 = add nuw nsw i32 %712, %717
  %719 = shl nuw nsw i32 %718, 1
  %720 = trunc i32 %719 to i16
  %721 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %720, ptr %721, align 2, !tbaa !60
  %722 = getelementptr i8, ptr %0, i64 2982
  %723 = load i16, ptr %722, align 2, !tbaa !60
  %724 = zext i16 %723 to i32
  %725 = add nuw nsw i32 %719, %724
  %726 = shl nuw nsw i32 %725, 1
  %727 = trunc i32 %726 to i16
  %728 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %727, ptr %728, align 8, !tbaa !60
  %729 = getelementptr i8, ptr %0, i64 2984
  %730 = load i16, ptr %729, align 2, !tbaa !60
  %731 = zext i16 %730 to i32
  %732 = add nuw nsw i32 %726, %731
  %733 = shl nuw nsw i32 %732, 1
  %734 = trunc i32 %733 to i16
  %735 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %734, ptr %735, align 2, !tbaa !60
  %736 = getelementptr i8, ptr %0, i64 2986
  %737 = load i16, ptr %736, align 2, !tbaa !60
  %738 = zext i16 %737 to i32
  %739 = add nuw nsw i32 %733, %738
  %740 = shl nuw nsw i32 %739, 1
  %741 = trunc i32 %740 to i16
  %742 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %741, ptr %742, align 4, !tbaa !60
  %743 = getelementptr i8, ptr %0, i64 2988
  %744 = load i16, ptr %743, align 2, !tbaa !60
  %745 = zext i16 %744 to i32
  %746 = add nuw nsw i32 %740, %745
  %747 = shl nuw nsw i32 %746, 1
  %748 = trunc i32 %747 to i16
  %749 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %748, ptr %749, align 2, !tbaa !60
  %750 = getelementptr i8, ptr %0, i64 2990
  %751 = load i16, ptr %750, align 2, !tbaa !60
  %752 = trunc i32 %747 to i16
  %.tr826 = add i16 %751, %752
  %753 = shl i16 %.tr826, 1
  %754 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %753, ptr %754, align 16, !tbaa !60
  %755 = getelementptr i8, ptr %0, i64 2992
  %756 = load i16, ptr %755, align 2, !tbaa !60
  %.tr247 = add i16 %756, %753
  %757 = shl i16 %.tr247, 1
  %758 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %757, ptr %758, align 2, !tbaa !60
  %759 = getelementptr i8, ptr %0, i64 2994
  %760 = load i16, ptr %759, align 2, !tbaa !60
  %.tr = add i16 %757, %760
  %761 = shl i16 %.tr, 1
  %762 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %761, ptr %762, align 4, !tbaa !60
  %763 = getelementptr i8, ptr %0, i64 2996
  %764 = load i16, ptr %763, align 2, !tbaa !60
  %765 = add i16 %761, %764
  %766 = shl i16 %765, 1
  %767 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %766, ptr %767, align 2, !tbaa !60
  %768 = getelementptr i8, ptr %0, i64 2998
  %769 = load i16, ptr %768, align 2, !tbaa !60
  %770 = add i16 %766, %769
  %771 = shl i16 %770, 1
  %772 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %771, ptr %772, align 8, !tbaa !60
  %773 = getelementptr i8, ptr %0, i64 3000
  %774 = load i16, ptr %773, align 2, !tbaa !60
  %775 = add i16 %771, %774
  %776 = shl i16 %775, 1
  %777 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %776, ptr %777, align 2, !tbaa !60
  %778 = getelementptr i8, ptr %0, i64 3002
  %779 = load i16, ptr %778, align 2, !tbaa !60
  %780 = add i16 %776, %779
  %781 = shl i16 %780, 1
  %782 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %781, ptr %782, align 4, !tbaa !60
  %783 = getelementptr i8, ptr %0, i64 3004
  %784 = load i16, ptr %783, align 2, !tbaa !60
  %785 = add i16 %781, %784
  %786 = shl i16 %785, 1
  %787 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %786, ptr %787, align 2, !tbaa !60
  %788 = icmp slt i32 %236, 0
  br i1 %788, label %.loopexit318, label %.preheader317

789:                                              ; preds = %842
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

.preheader317:                                    ; preds = %.loopexit326, %844
  %790 = phi i64 [ %845, %844 ], [ 0, %.loopexit326 ]
  %791 = getelementptr inbounds nuw [4 x i8], ptr %158, i64 %790
  %792 = getelementptr inbounds nuw i8, ptr %791, i64 2
  %793 = load i16, ptr %792, align 2, !tbaa !28
  %794 = icmp eq i16 %793, 0
  br i1 %794, label %842, label %795

795:                                              ; preds = %.preheader317
  %796 = zext i16 %793 to i32
  %797 = zext i16 %793 to i64
  %798 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %797
  %799 = load i16, ptr %798, align 2, !tbaa !60
  %800 = add i16 %799, 1
  store i16 %800, ptr %798, align 2, !tbaa !60
  %801 = and i32 %796, 3
  %802 = icmp ult i16 %793, 4
  br i1 %802, label %827, label %803

803:                                              ; preds = %795
  %804 = and i32 %796, 65532
  br label %805

805:                                              ; preds = %805, %803
  %806 = phi i16 [ %799, %803 ], [ %822, %805 ]
  %807 = phi i16 [ 0, %803 ], [ %821, %805 ]
  %808 = phi i32 [ 0, %803 ], [ %823, %805 ]
  %809 = and i16 %806, 1
  %810 = or disjoint i16 %807, %809
  %811 = shl i16 %810, 2
  %812 = and i16 %806, 2
  %813 = or disjoint i16 %811, %812
  %814 = lshr i16 %806, 2
  %815 = and i16 %814, 1
  %816 = or disjoint i16 %813, %815
  %817 = shl i16 %816, 1
  %818 = lshr i16 %806, 3
  %819 = and i16 %818, 1
  %820 = or disjoint i16 %817, %819
  %821 = shl i16 %820, 1
  %822 = lshr i16 %806, 4
  %823 = add nuw nsw i32 %808, 4
  %824 = icmp eq i32 %823, %804
  br i1 %824, label %825, label %805, !llvm.loop !68

825:                                              ; preds = %805
  %826 = icmp eq i32 %801, 0
  br i1 %826, label %.loopexit316, label %827

827:                                              ; preds = %825, %795
  %828 = phi i16 [ %799, %795 ], [ %822, %825 ]
  %829 = phi i16 [ 0, %795 ], [ %821, %825 ]
  %830 = icmp ne i32 %801, 0
  tail call void @llvm.assume(i1 %830)
  br label %831

831:                                              ; preds = %831, %827
  %832 = phi i16 [ %828, %827 ], [ %838, %831 ]
  %833 = phi i16 [ %829, %827 ], [ %837, %831 ]
  %834 = phi i32 [ 0, %827 ], [ %839, %831 ]
  %835 = and i16 %832, 1
  %836 = or disjoint i16 %833, %835
  %837 = shl i16 %836, 1
  %838 = lshr i16 %832, 1
  %839 = add nuw nsw i32 %834, 1
  %840 = icmp eq i32 %839, %801
  br i1 %840, label %.loopexit316, label %831, !llvm.loop !69

.loopexit316:                                     ; preds = %831, %825
  %841 = phi i16 [ %820, %825 ], [ %836, %831 ]
  store i16 %841, ptr %791, align 2, !tbaa !28
  br label %842

842:                                              ; preds = %.loopexit316, %.preheader317
  %843 = icmp eq i64 %790, 2147483647
  br i1 %843, label %789, label %844, !prof !32, !nosanitize !30

844:                                              ; preds = %842
  %845 = add nuw nsw i64 %790, 1
  %846 = trunc i64 %845 to i32
  %847 = icmp slt i32 %236, %846
  br i1 %847, label %.loopexit318, label %.preheader317, !llvm.loop !71

.loopexit318:                                     ; preds = %844, %.loopexit326
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %848 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %849 = load ptr, ptr %848, align 8, !tbaa !41
  %850 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %851 = load ptr, ptr %850, align 8, !tbaa !42
  %852 = load ptr, ptr %851, align 8, !tbaa !43
  %853 = getelementptr inbounds nuw i8, ptr %851, i64 20
  %854 = load i32, ptr %853, align 4, !tbaa !46
  store i32 0, ptr %164, align 4, !tbaa !47
  store i32 573, ptr %165, align 8, !tbaa !48
  %855 = icmp sgt i32 %854, 0
  br i1 %855, label %856, label %861

856:                                              ; preds = %.loopexit318
  %857 = zext nneg i32 %854 to i64
  br label %867

858:                                              ; preds = %885
  %859 = load i32, ptr %164, align 4, !tbaa !47
  %860 = icmp slt i32 %859, 2
  br i1 %860, label %861, label %.loopexit314

861:                                              ; preds = %858, %.loopexit318
  %862 = phi i32 [ %886, %858 ], [ -1, %.loopexit318 ]
  %863 = phi i32 [ %859, %858 ], [ 0, %.loopexit318 ]
  %864 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %865 = icmp eq ptr %852, null
  %866 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %889

867:                                              ; preds = %885, %856
  %868 = phi i64 [ 0, %856 ], [ %887, %885 ]
  %869 = phi i32 [ -1, %856 ], [ %886, %885 ]
  %870 = getelementptr inbounds nuw [4 x i8], ptr %849, i64 %868
  %871 = load i16, ptr %870, align 2, !tbaa !28
  %872 = icmp eq i16 %871, 0
  br i1 %872, label %883, label %873

873:                                              ; preds = %867
  %874 = load i32, ptr %164, align 4, !tbaa !47
  %875 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %874, i32 1), !nosanitize !30
  %876 = extractvalue { i32, i1 } %875, 1, !nosanitize !30
  br i1 %876, label %.loopexit310, label %877, !prof !32, !nosanitize !30

.loopexit310:                                     ; preds = %873, %1087
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

877:                                              ; preds = %873
  %878 = extractvalue { i32, i1 } %875, 0, !nosanitize !30
  store i32 %878, ptr %164, align 4, !tbaa !47
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds [4 x i8], ptr %239, i64 %879
  %881 = trunc nuw nsw i64 %868 to i32
  store i32 %881, ptr %880, align 4, !tbaa !4
  %882 = getelementptr inbounds nuw i8, ptr %240, i64 %868
  store i8 0, ptr %882, align 1, !tbaa !28
  br label %885

883:                                              ; preds = %867
  %884 = getelementptr inbounds nuw i8, ptr %870, i64 2
  store i16 0, ptr %884, align 2, !tbaa !28
  br label %885

885:                                              ; preds = %883, %877
  %886 = phi i32 [ %881, %877 ], [ %869, %883 ]
  %887 = add nuw nsw i64 %868, 1
  %888 = icmp eq i64 %887, %857
  br i1 %888, label %858, label %867, !llvm.loop !49

889:                                              ; preds = %918, %861
  %890 = phi i32 [ %863, %861 ], [ %919, %918 ]
  %891 = phi i32 [ %862, %861 ], [ %894, %918 ]
  %892 = icmp slt i32 %891, 2
  %893 = add i32 %891, 1
  %894 = select i1 %892, i32 %893, i32 %891
  %895 = add nsw i32 %890, 1
  %896 = select i1 %892, i32 %893, i32 0
  store i32 %895, ptr %164, align 4, !tbaa !47
  %897 = sext i32 %895 to i64
  %898 = getelementptr inbounds [4 x i8], ptr %239, i64 %897
  store i32 %896, ptr %898, align 4, !tbaa !4
  %899 = sext i32 %896 to i64
  %900 = getelementptr inbounds [4 x i8], ptr %849, i64 %899
  store i16 1, ptr %900, align 2, !tbaa !28
  %901 = getelementptr inbounds i8, ptr %240, i64 %899
  store i8 0, ptr %901, align 1, !tbaa !28
  %902 = load i64, ptr %864, align 8, !tbaa !50
  %903 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %902, i64 1), !nosanitize !30
  %904 = extractvalue { i64, i1 } %903, 1, !nosanitize !30
  br i1 %904, label %905, label %906, !prof !32, !nosanitize !30

905:                                              ; preds = %889
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

906:                                              ; preds = %889
  %907 = extractvalue { i64, i1 } %903, 0, !nosanitize !30
  store i64 %907, ptr %864, align 8, !tbaa !50
  br i1 %865, label %918, label %908

908:                                              ; preds = %906
  %909 = getelementptr inbounds [4 x i8], ptr %852, i64 %899
  %910 = getelementptr inbounds nuw i8, ptr %909, i64 2
  %911 = load i16, ptr %910, align 2, !tbaa !28
  %912 = zext i16 %911 to i64
  %913 = load i64, ptr %866, align 8, !tbaa !51
  %914 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %913, i64 %912), !nosanitize !30
  %915 = extractvalue { i64, i1 } %914, 1, !nosanitize !30
  br i1 %915, label %.loopexit309, label %916, !prof !32, !nosanitize !30

.loopexit309:                                     ; preds = %908, %1080, %1073, %1000, %1176
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

916:                                              ; preds = %908
  %917 = extractvalue { i64, i1 } %914, 0, !nosanitize !30
  store i64 %917, ptr %866, align 8, !tbaa !51
  br label %918

918:                                              ; preds = %916, %906
  %919 = load i32, ptr %164, align 4, !tbaa !47
  %920 = icmp slt i32 %919, 2
  br i1 %920, label %889, label %.loopexit314, !llvm.loop !52

.loopexit314:                                     ; preds = %918, %858
  %921 = phi i32 [ %886, %858 ], [ %894, %918 ]
  %922 = phi i32 [ %859, %858 ], [ %919, %918 ]
  %923 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %921, ptr %923, align 8, !tbaa !53
  %924 = lshr i32 %922, 1
  %925 = zext nneg i32 %924 to i64
  br label %929

926:                                              ; preds = %.loopexit311
  %927 = load i32, ptr %164, align 4, !tbaa !47
  %928 = sext i32 %854 to i64
  br label %1000

929:                                              ; preds = %.loopexit311, %.loopexit314
  %930 = phi i64 [ %925, %.loopexit314 ], [ %998, %.loopexit311 ]
  %931 = getelementptr inbounds nuw [4 x i8], ptr %239, i64 %930
  %932 = load i32, ptr %931, align 4, !tbaa !4
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds i8, ptr %240, i64 %933
  %935 = load i32, ptr %164, align 4, !tbaa !47
  %936 = trunc i64 %930 to i32
  %937 = shl i32 %936, 1
  %938 = icmp sgt i32 %937, %935
  br i1 %938, label %.loopexit311, label %939

939:                                              ; preds = %929
  %940 = getelementptr inbounds [4 x i8], ptr %849, i64 %933
  br label %941

941:                                              ; preds = %989, %939
  %942 = phi i32 [ %935, %939 ], [ %993, %989 ]
  %943 = phi i32 [ %937, %939 ], [ %992, %989 ]
  %944 = phi i32 [ %936, %939 ], [ %974, %989 ]
  %945 = icmp slt i32 %943, %942
  br i1 %945, label %948, label %946

946:                                              ; preds = %941
  %947 = sext i32 %943 to i64
  br label %972

948:                                              ; preds = %941
  %949 = or disjoint i32 %943, 1
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds [4 x i8], ptr %239, i64 %950
  %952 = load i32, ptr %951, align 4, !tbaa !4
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds [4 x i8], ptr %849, i64 %953
  %955 = load i16, ptr %954, align 2, !tbaa !28
  %956 = sext i32 %943 to i64
  %957 = getelementptr inbounds [4 x i8], ptr %239, i64 %956
  %958 = load i32, ptr %957, align 4, !tbaa !4
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds [4 x i8], ptr %849, i64 %959
  %961 = load i16, ptr %960, align 2, !tbaa !28
  %962 = icmp ult i16 %955, %961
  br i1 %962, label %971, label %963

963:                                              ; preds = %948
  %964 = icmp eq i16 %955, %961
  br i1 %964, label %965, label %972

965:                                              ; preds = %963
  %966 = getelementptr inbounds i8, ptr %240, i64 %953
  %967 = load i8, ptr %966, align 1, !tbaa !28
  %968 = getelementptr inbounds i8, ptr %240, i64 %959
  %969 = load i8, ptr %968, align 1, !tbaa !28
  %970 = icmp ugt i8 %967, %969
  br i1 %970, label %972, label %971

971:                                              ; preds = %965, %948
  br label %972

972:                                              ; preds = %971, %965, %963, %946
  %973 = phi i64 [ %947, %946 ], [ %950, %971 ], [ %956, %965 ], [ %956, %963 ]
  %974 = phi i32 [ %943, %946 ], [ %949, %971 ], [ %943, %965 ], [ %943, %963 ]
  %975 = load i16, ptr %940, align 2, !tbaa !28
  %976 = getelementptr inbounds [4 x i8], ptr %239, i64 %973
  %977 = load i32, ptr %976, align 4, !tbaa !4
  %978 = sext i32 %977 to i64
  %979 = getelementptr inbounds [4 x i8], ptr %849, i64 %978
  %980 = load i16, ptr %979, align 2, !tbaa !28
  %981 = icmp ult i16 %975, %980
  br i1 %981, label %.loopexit311, label %982

982:                                              ; preds = %972
  %983 = icmp eq i16 %975, %980
  br i1 %983, label %984, label %989

984:                                              ; preds = %982
  %985 = load i8, ptr %934, align 1, !tbaa !28
  %986 = getelementptr inbounds i8, ptr %240, i64 %978
  %987 = load i8, ptr %986, align 1, !tbaa !28
  %988 = icmp ugt i8 %985, %987
  br i1 %988, label %989, label %.loopexit311

989:                                              ; preds = %984, %982
  %990 = sext i32 %944 to i64
  %991 = getelementptr inbounds [4 x i8], ptr %239, i64 %990
  store i32 %977, ptr %991, align 4, !tbaa !4
  %992 = shl i32 %974, 1
  %993 = load i32, ptr %164, align 4, !tbaa !47
  %994 = icmp sgt i32 %992, %993
  br i1 %994, label %.loopexit311, label %941, !llvm.loop !54

.loopexit311:                                     ; preds = %989, %984, %972, %929
  %995 = phi i32 [ %936, %929 ], [ %974, %989 ], [ %944, %984 ], [ %944, %972 ]
  %996 = sext i32 %995 to i64
  %997 = getelementptr inbounds [4 x i8], ptr %239, i64 %996
  store i32 %932, ptr %997, align 4, !tbaa !4
  %998 = add nsw i64 %930, -1
  %999 = icmp sgt i64 %930, 1
  br i1 %999, label %929, label %926, !llvm.loop !55

1000:                                             ; preds = %1171, %926
  %1001 = phi i32 [ %927, %926 ], [ %1174, %1171 ]
  %1002 = phi i64 [ %928, %926 ], [ %1112, %1171 ]
  %1003 = load i32, ptr %245, align 4, !tbaa !4
  %1004 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1001, i32 -1)
  %1005 = extractvalue { i32, i1 } %1004, 1, !nosanitize !30
  br i1 %1005, label %.loopexit309, label %1006, !prof !32, !nosanitize !30

1006:                                             ; preds = %1000
  %1007 = extractvalue { i32, i1 } %1004, 0, !nosanitize !30
  store i32 %1007, ptr %164, align 4, !tbaa !47
  %1008 = sext i32 %1001 to i64
  %1009 = getelementptr inbounds [4 x i8], ptr %239, i64 %1008
  %1010 = load i32, ptr %1009, align 4, !tbaa !4
  store i32 %1010, ptr %245, align 4, !tbaa !4
  %1011 = sext i32 %1010 to i64
  %1012 = getelementptr inbounds i8, ptr %240, i64 %1011
  %1013 = icmp slt i32 %1007, 2
  br i1 %1013, label %1073, label %1014

1014:                                             ; preds = %1006
  %1015 = getelementptr inbounds [4 x i8], ptr %849, i64 %1011
  br label %1016

1016:                                             ; preds = %1064, %1014
  %1017 = phi i32 [ %1007, %1014 ], [ %1068, %1064 ]
  %1018 = phi i32 [ 2, %1014 ], [ %1067, %1064 ]
  %1019 = phi i32 [ 1, %1014 ], [ %1049, %1064 ]
  %1020 = icmp slt i32 %1018, %1017
  br i1 %1020, label %1023, label %1021

1021:                                             ; preds = %1016
  %1022 = sext i32 %1018 to i64
  br label %1047

1023:                                             ; preds = %1016
  %1024 = or disjoint i32 %1018, 1
  %1025 = sext i32 %1024 to i64
  %1026 = getelementptr inbounds [4 x i8], ptr %239, i64 %1025
  %1027 = load i32, ptr %1026, align 4, !tbaa !4
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds [4 x i8], ptr %849, i64 %1028
  %1030 = load i16, ptr %1029, align 2, !tbaa !28
  %1031 = sext i32 %1018 to i64
  %1032 = getelementptr inbounds [4 x i8], ptr %239, i64 %1031
  %1033 = load i32, ptr %1032, align 4, !tbaa !4
  %1034 = sext i32 %1033 to i64
  %1035 = getelementptr inbounds [4 x i8], ptr %849, i64 %1034
  %1036 = load i16, ptr %1035, align 2, !tbaa !28
  %1037 = icmp ult i16 %1030, %1036
  br i1 %1037, label %1046, label %1038

1038:                                             ; preds = %1023
  %1039 = icmp eq i16 %1030, %1036
  br i1 %1039, label %1040, label %1047

1040:                                             ; preds = %1038
  %1041 = getelementptr inbounds i8, ptr %240, i64 %1028
  %1042 = load i8, ptr %1041, align 1, !tbaa !28
  %1043 = getelementptr inbounds i8, ptr %240, i64 %1034
  %1044 = load i8, ptr %1043, align 1, !tbaa !28
  %1045 = icmp ugt i8 %1042, %1044
  br i1 %1045, label %1047, label %1046

1046:                                             ; preds = %1040, %1023
  br label %1047

1047:                                             ; preds = %1046, %1040, %1038, %1021
  %1048 = phi i64 [ %1022, %1021 ], [ %1025, %1046 ], [ %1031, %1040 ], [ %1031, %1038 ]
  %1049 = phi i32 [ %1018, %1021 ], [ %1024, %1046 ], [ %1018, %1040 ], [ %1018, %1038 ]
  %1050 = load i16, ptr %1015, align 2, !tbaa !28
  %1051 = getelementptr inbounds [4 x i8], ptr %239, i64 %1048
  %1052 = load i32, ptr %1051, align 4, !tbaa !4
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds [4 x i8], ptr %849, i64 %1053
  %1055 = load i16, ptr %1054, align 2, !tbaa !28
  %1056 = icmp ult i16 %1050, %1055
  br i1 %1056, label %1070, label %1057

1057:                                             ; preds = %1047
  %1058 = icmp eq i16 %1050, %1055
  br i1 %1058, label %1059, label %1064

1059:                                             ; preds = %1057
  %1060 = load i8, ptr %1012, align 1, !tbaa !28
  %1061 = getelementptr inbounds i8, ptr %240, i64 %1053
  %1062 = load i8, ptr %1061, align 1, !tbaa !28
  %1063 = icmp ugt i8 %1060, %1062
  br i1 %1063, label %1064, label %1070

1064:                                             ; preds = %1059, %1057
  %1065 = sext i32 %1019 to i64
  %1066 = getelementptr inbounds [4 x i8], ptr %239, i64 %1065
  store i32 %1052, ptr %1066, align 4, !tbaa !4
  %1067 = shl i32 %1049, 1
  %1068 = load i32, ptr %164, align 4, !tbaa !47
  %1069 = icmp sgt i32 %1067, %1068
  br i1 %1069, label %1070, label %1016, !llvm.loop !54

1070:                                             ; preds = %1064, %1059, %1047
  %1071 = phi i32 [ %1019, %1047 ], [ %1019, %1059 ], [ %1049, %1064 ]
  %1072 = sext i32 %1071 to i64
  br label %1073

1073:                                             ; preds = %1070, %1006
  %1074 = phi i64 [ 1, %1006 ], [ %1072, %1070 ]
  %1075 = getelementptr inbounds [4 x i8], ptr %239, i64 %1074
  store i32 %1010, ptr %1075, align 4, !tbaa !4
  %1076 = load i32, ptr %245, align 4, !tbaa !4
  %1077 = load i32, ptr %165, align 8, !tbaa !48
  %1078 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1077, i32 -1)
  %1079 = extractvalue { i32, i1 } %1078, 1, !nosanitize !30
  br i1 %1079, label %.loopexit309, label %1080, !prof !32, !nosanitize !30

1080:                                             ; preds = %1073
  %1081 = extractvalue { i32, i1 } %1078, 0, !nosanitize !30
  store i32 %1081, ptr %165, align 8, !tbaa !48
  %1082 = sext i32 %1081 to i64
  %1083 = getelementptr inbounds [4 x i8], ptr %239, i64 %1082
  store i32 %1003, ptr %1083, align 4, !tbaa !4
  %1084 = load i32, ptr %165, align 8, !tbaa !48
  %1085 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1084, i32 -1)
  %1086 = extractvalue { i32, i1 } %1085, 1, !nosanitize !30
  br i1 %1086, label %.loopexit309, label %1087, !prof !32, !nosanitize !30

1087:                                             ; preds = %1080
  %1088 = extractvalue { i32, i1 } %1085, 0, !nosanitize !30
  store i32 %1088, ptr %165, align 8, !tbaa !48
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds [4 x i8], ptr %239, i64 %1089
  store i32 %1076, ptr %1090, align 4, !tbaa !4
  %1091 = sext i32 %1003 to i64
  %1092 = getelementptr inbounds [4 x i8], ptr %849, i64 %1091
  %1093 = load i16, ptr %1092, align 2, !tbaa !28
  %1094 = sext i32 %1076 to i64
  %1095 = getelementptr inbounds [4 x i8], ptr %849, i64 %1094
  %1096 = load i16, ptr %1095, align 2, !tbaa !28
  %1097 = add i16 %1096, %1093
  %1098 = getelementptr inbounds [4 x i8], ptr %849, i64 %1002
  store i16 %1097, ptr %1098, align 2, !tbaa !28
  %1099 = getelementptr inbounds i8, ptr %240, i64 %1091
  %1100 = load i8, ptr %1099, align 1, !tbaa !28
  %1101 = getelementptr inbounds i8, ptr %240, i64 %1094
  %1102 = load i8, ptr %1101, align 1, !tbaa !28
  %1103 = tail call i8 @llvm.umax.i8(i8 %1100, i8 %1102)
  %1104 = add i8 %1103, 1
  %1105 = getelementptr inbounds i8, ptr %240, i64 %1002
  store i8 %1104, ptr %1105, align 1, !tbaa !28
  %1106 = trunc nsw i64 %1002 to i32
  %1107 = trunc i64 %1002 to i16
  %1108 = getelementptr inbounds nuw i8, ptr %1095, i64 2
  store i16 %1107, ptr %1108, align 2, !tbaa !28
  %1109 = getelementptr inbounds nuw i8, ptr %1092, i64 2
  store i16 %1107, ptr %1109, align 2, !tbaa !28
  %1110 = icmp eq i64 %1002, 2147483647
  br i1 %1110, label %.loopexit310, label %1111, !prof !32, !nosanitize !30

1111:                                             ; preds = %1087
  %1112 = add nsw i64 %1002, 1
  store i32 %1106, ptr %245, align 4, !tbaa !4
  %1113 = load i32, ptr %164, align 4, !tbaa !47
  %1114 = icmp slt i32 %1113, 2
  br i1 %1114, label %1171, label %.preheader308

.preheader308:                                    ; preds = %1111, %1162
  %1115 = phi i32 [ %1166, %1162 ], [ %1113, %1111 ]
  %1116 = phi i32 [ %1165, %1162 ], [ 2, %1111 ]
  %1117 = phi i32 [ %1147, %1162 ], [ 1, %1111 ]
  %1118 = icmp slt i32 %1116, %1115
  br i1 %1118, label %1121, label %1119

1119:                                             ; preds = %.preheader308
  %1120 = sext i32 %1116 to i64
  br label %1145

1121:                                             ; preds = %.preheader308
  %1122 = or disjoint i32 %1116, 1
  %1123 = sext i32 %1122 to i64
  %1124 = getelementptr inbounds [4 x i8], ptr %239, i64 %1123
  %1125 = load i32, ptr %1124, align 4, !tbaa !4
  %1126 = sext i32 %1125 to i64
  %1127 = getelementptr inbounds [4 x i8], ptr %849, i64 %1126
  %1128 = load i16, ptr %1127, align 2, !tbaa !28
  %1129 = sext i32 %1116 to i64
  %1130 = getelementptr inbounds [4 x i8], ptr %239, i64 %1129
  %1131 = load i32, ptr %1130, align 4, !tbaa !4
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds [4 x i8], ptr %849, i64 %1132
  %1134 = load i16, ptr %1133, align 2, !tbaa !28
  %1135 = icmp ult i16 %1128, %1134
  br i1 %1135, label %1144, label %1136

1136:                                             ; preds = %1121
  %1137 = icmp eq i16 %1128, %1134
  br i1 %1137, label %1138, label %1145

1138:                                             ; preds = %1136
  %1139 = getelementptr inbounds i8, ptr %240, i64 %1126
  %1140 = load i8, ptr %1139, align 1, !tbaa !28
  %1141 = getelementptr inbounds i8, ptr %240, i64 %1132
  %1142 = load i8, ptr %1141, align 1, !tbaa !28
  %1143 = icmp ugt i8 %1140, %1142
  br i1 %1143, label %1145, label %1144

1144:                                             ; preds = %1138, %1121
  br label %1145

1145:                                             ; preds = %1144, %1138, %1136, %1119
  %1146 = phi i64 [ %1120, %1119 ], [ %1123, %1144 ], [ %1129, %1138 ], [ %1129, %1136 ]
  %1147 = phi i32 [ %1116, %1119 ], [ %1122, %1144 ], [ %1116, %1138 ], [ %1116, %1136 ]
  %1148 = load i16, ptr %1098, align 2, !tbaa !28
  %1149 = getelementptr inbounds [4 x i8], ptr %239, i64 %1146
  %1150 = load i32, ptr %1149, align 4, !tbaa !4
  %1151 = sext i32 %1150 to i64
  %1152 = getelementptr inbounds [4 x i8], ptr %849, i64 %1151
  %1153 = load i16, ptr %1152, align 2, !tbaa !28
  %1154 = icmp ult i16 %1148, %1153
  br i1 %1154, label %1168, label %1155

1155:                                             ; preds = %1145
  %1156 = icmp eq i16 %1148, %1153
  br i1 %1156, label %1157, label %1162

1157:                                             ; preds = %1155
  %1158 = load i8, ptr %1105, align 1, !tbaa !28
  %1159 = getelementptr inbounds i8, ptr %240, i64 %1151
  %1160 = load i8, ptr %1159, align 1, !tbaa !28
  %1161 = icmp ugt i8 %1158, %1160
  br i1 %1161, label %1162, label %1168

1162:                                             ; preds = %1157, %1155
  %1163 = sext i32 %1117 to i64
  %1164 = getelementptr inbounds [4 x i8], ptr %239, i64 %1163
  store i32 %1150, ptr %1164, align 4, !tbaa !4
  %1165 = shl i32 %1147, 1
  %1166 = load i32, ptr %164, align 4, !tbaa !47
  %1167 = icmp sgt i32 %1165, %1166
  br i1 %1167, label %1168, label %.preheader308, !llvm.loop !54

1168:                                             ; preds = %1162, %1157, %1145
  %1169 = phi i32 [ %1117, %1145 ], [ %1117, %1157 ], [ %1147, %1162 ]
  %1170 = sext i32 %1169 to i64
  br label %1171

1171:                                             ; preds = %1168, %1111
  %1172 = phi i64 [ 1, %1111 ], [ %1170, %1168 ]
  %1173 = getelementptr inbounds [4 x i8], ptr %239, i64 %1172
  store i32 %1106, ptr %1173, align 4, !tbaa !4
  %1174 = load i32, ptr %164, align 4, !tbaa !47
  %1175 = icmp sgt i32 %1174, 1
  br i1 %1175, label %1000, label %1176, !llvm.loop !56

1176:                                             ; preds = %1171
  %1177 = load i32, ptr %165, align 8, !tbaa !48
  %1178 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1177, i32 -1)
  %1179 = extractvalue { i32, i1 } %1178, 1, !nosanitize !30
  br i1 %1179, label %.loopexit309, label %1180, !prof !32, !nosanitize !30

1180:                                             ; preds = %1176
  %1181 = extractvalue { i32, i1 } %1178, 0, !nosanitize !30
  %1182 = load i32, ptr %245, align 4, !tbaa !4
  store i32 %1181, ptr %165, align 8, !tbaa !48
  %1183 = sext i32 %1181 to i64
  %1184 = getelementptr inbounds [4 x i8], ptr %239, i64 %1183
  store i32 %1182, ptr %1184, align 4, !tbaa !4
  %1185 = load ptr, ptr %848, align 8, !tbaa !41
  %1186 = load i32, ptr %923, align 8, !tbaa !53
  %1187 = load ptr, ptr %850, align 8, !tbaa !42
  %1188 = load ptr, ptr %1187, align 8, !tbaa !43
  %1189 = getelementptr inbounds nuw i8, ptr %1187, i64 8
  %1190 = load ptr, ptr %1189, align 8, !tbaa !57
  %1191 = getelementptr inbounds nuw i8, ptr %1187, i64 16
  %1192 = load i32, ptr %1191, align 8, !tbaa !58
  %1193 = getelementptr inbounds nuw i8, ptr %1187, i64 24
  %1194 = load i32, ptr %1193, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %513, i8 0, i64 32, i1 false), !tbaa !60
  %1195 = load i32, ptr %165, align 8, !tbaa !48
  %1196 = sext i32 %1195 to i64
  %1197 = getelementptr inbounds [4 x i8], ptr %239, i64 %1196
  %1198 = load i32, ptr %1197, align 4, !tbaa !4
  %1199 = sext i32 %1198 to i64
  %1200 = getelementptr inbounds [4 x i8], ptr %1185, i64 %1199
  %1201 = getelementptr inbounds nuw i8, ptr %1200, i64 2
  store i16 0, ptr %1201, align 2, !tbaa !28
  %1202 = load i32, ptr %165, align 8, !tbaa !48
  %1203 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1202, i32 1), !nosanitize !30
  %1204 = extractvalue { i32, i1 } %1203, 1, !nosanitize !30
  br i1 %1204, label %.loopexit305, label %1205, !prof !32, !nosanitize !30

.loopexit305:                                     ; preds = %1253, %1229, %1180
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

1205:                                             ; preds = %1180
  %1206 = extractvalue { i32, i1 } %1203, 0
  %1207 = icmp slt i32 %1206, 573
  br i1 %1207, label %1208, label %.loopexit300

1208:                                             ; preds = %1205
  %1209 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1210 = icmp eq ptr %1188, null
  %1211 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1212 = sext i32 %1206 to i64
  br label %1213

1213:                                             ; preds = %1285, %1208
  %1214 = phi i64 [ %1212, %1208 ], [ %1286, %1285 ]
  %1215 = phi i32 [ 0, %1208 ], [ %1236, %1285 ]
  %1216 = getelementptr inbounds [4 x i8], ptr %239, i64 %1214
  %1217 = load i32, ptr %1216, align 4, !tbaa !4
  %1218 = sext i32 %1217 to i64
  %1219 = getelementptr inbounds [4 x i8], ptr %1185, i64 %1218
  %1220 = getelementptr inbounds nuw i8, ptr %1219, i64 2
  %1221 = load i16, ptr %1220, align 2, !tbaa !28
  %1222 = zext i16 %1221 to i64
  %1223 = getelementptr inbounds nuw [4 x i8], ptr %1185, i64 %1222
  %1224 = getelementptr inbounds nuw i8, ptr %1223, i64 2
  %1225 = load i16, ptr %1224, align 2, !tbaa !28
  %1226 = zext i16 %1225 to i32
  %1227 = add nuw nsw i32 %1226, 1
  %1228 = icmp sgt i32 %1194, %1226
  br i1 %1228, label %1234, label %1229

1229:                                             ; preds = %1213
  %1230 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1215, i32 1), !nosanitize !30
  %1231 = extractvalue { i32, i1 } %1230, 1, !nosanitize !30
  br i1 %1231, label %.loopexit305, label %1232, !prof !32, !nosanitize !30

1232:                                             ; preds = %1229
  %1233 = extractvalue { i32, i1 } %1230, 0, !nosanitize !30
  br label %1234

1234:                                             ; preds = %1232, %1213
  %1235 = phi i32 [ %1194, %1232 ], [ %1227, %1213 ]
  %1236 = phi i32 [ %1233, %1232 ], [ %1215, %1213 ]
  %1237 = trunc i32 %1235 to i16
  store i16 %1237, ptr %1220, align 2, !tbaa !28
  %1238 = icmp sgt i32 %1217, %1186
  br i1 %1238, label %1285, label %1239

1239:                                             ; preds = %1234
  %1240 = sext i32 %1235 to i64
  %1241 = getelementptr inbounds [2 x i8], ptr %513, i64 %1240
  %1242 = load i16, ptr %1241, align 2, !tbaa !60
  %1243 = add i16 %1242, 1
  store i16 %1243, ptr %1241, align 2, !tbaa !60
  %1244 = icmp slt i32 %1217, %1192
  br i1 %1244, label %1253, label %1245

1245:                                             ; preds = %1239
  %1246 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1217, i32 %1192), !nosanitize !30
  %1247 = extractvalue { i32, i1 } %1246, 1, !nosanitize !30
  br i1 %1247, label %.loopexit294, label %1248, !prof !32, !nosanitize !30

.loopexit294:                                     ; preds = %1245, %1312, %1304, %1338, %1343, %1291
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

1248:                                             ; preds = %1245
  %1249 = extractvalue { i32, i1 } %1246, 0, !nosanitize !30
  %1250 = sext i32 %1249 to i64
  %1251 = getelementptr inbounds [4 x i8], ptr %1190, i64 %1250
  %1252 = load i32, ptr %1251, align 4, !tbaa !4
  br label %1253

1253:                                             ; preds = %1248, %1239
  %1254 = phi i32 [ %1252, %1248 ], [ 0, %1239 ]
  %1255 = load i16, ptr %1219, align 2, !tbaa !28
  %1256 = zext i16 %1255 to i64
  %1257 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1235, i32 %1254), !nosanitize !30
  %1258 = extractvalue { i32, i1 } %1257, 1, !nosanitize !30
  br i1 %1258, label %.loopexit305, label %1259, !prof !32, !nosanitize !30

1259:                                             ; preds = %1253
  %1260 = extractvalue { i32, i1 } %1257, 0, !nosanitize !30
  %1261 = zext i32 %1260 to i64
  %1262 = mul nuw nsw i64 %1261, %1256
  %1263 = load i64, ptr %1209, align 8, !tbaa !50
  %1264 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1263, i64 %1262), !nosanitize !30
  %1265 = extractvalue { i64, i1 } %1264, 1, !nosanitize !30
  br i1 %1265, label %1266, label %1267, !prof !32, !nosanitize !30

1266:                                             ; preds = %1269, %1259
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

1267:                                             ; preds = %1259
  %1268 = extractvalue { i64, i1 } %1264, 0, !nosanitize !30
  store i64 %1268, ptr %1209, align 8, !tbaa !50
  br i1 %1210, label %1285, label %1269

1269:                                             ; preds = %1267
  %1270 = getelementptr inbounds [4 x i8], ptr %1188, i64 %1218
  %1271 = getelementptr inbounds nuw i8, ptr %1270, i64 2
  %1272 = load i16, ptr %1271, align 2, !tbaa !28
  %1273 = zext i16 %1272 to i32
  %1274 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1273, i32 %1254), !nosanitize !30
  %1275 = extractvalue { i32, i1 } %1274, 1, !nosanitize !30
  br i1 %1275, label %1266, label %1276, !prof !32, !nosanitize !30

1276:                                             ; preds = %1269
  %1277 = extractvalue { i32, i1 } %1274, 0, !nosanitize !30
  %1278 = zext i32 %1277 to i64
  %1279 = mul nuw nsw i64 %1278, %1256
  %1280 = load i64, ptr %1211, align 8, !tbaa !51
  %1281 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1280, i64 %1279), !nosanitize !30
  %1282 = extractvalue { i64, i1 } %1281, 1, !nosanitize !30
  br i1 %1282, label %.loopexit303, label %1283, !prof !32, !nosanitize !30

.loopexit303:                                     ; preds = %1276, %1307
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

1283:                                             ; preds = %1276
  %1284 = extractvalue { i64, i1 } %1281, 0, !nosanitize !30
  store i64 %1284, ptr %1211, align 8, !tbaa !51
  br label %1285

1285:                                             ; preds = %1283, %1267, %1234
  %1286 = add nsw i64 %1214, 1
  %1287 = and i64 %1286, 4294967295
  %1288 = icmp eq i64 %1287, 573
  br i1 %1288, label %1289, label %1213, !llvm.loop !61

1289:                                             ; preds = %1285
  %1290 = icmp eq i32 %1236, 0
  br i1 %1290, label %.loopexit300, label %1291

1291:                                             ; preds = %1289
  %1292 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1194, i32 -1)
  %1293 = extractvalue { i32, i1 } %1292, 1, !nosanitize !30
  %1294 = sext i32 %1194 to i64
  %1295 = getelementptr inbounds [2 x i8], ptr %513, i64 %1294
  br i1 %1293, label %.loopexit294, label %.preheader302, !prof !32, !nosanitize !30

.preheader302:                                    ; preds = %1291, %1322
  %1296 = phi i32 [ %1323, %1322 ], [ %1236, %1291 ]
  br label %1297

1297:                                             ; preds = %1304, %.preheader302
  %1298 = phi { i32, i1 } [ %1305, %1304 ], [ %1292, %.preheader302 ]
  %1299 = extractvalue { i32, i1 } %1298, 0
  %1300 = sext i32 %1299 to i64
  %1301 = getelementptr inbounds [2 x i8], ptr %513, i64 %1300
  %1302 = load i16, ptr %1301, align 2, !tbaa !60
  %1303 = icmp eq i16 %1302, 0
  br i1 %1303, label %1304, label %1307

1304:                                             ; preds = %1297
  %1305 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1299, i32 -1)
  %1306 = extractvalue { i32, i1 } %1305, 1, !nosanitize !30
  br i1 %1306, label %.loopexit294, label %1297, !prof !32, !llvm.loop !62, !nosanitize !30

1307:                                             ; preds = %1297
  %1308 = getelementptr inbounds [2 x i8], ptr %513, i64 %1300
  %1309 = add i16 %1302, -1
  store i16 %1309, ptr %1308, align 2, !tbaa !60
  %1310 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1299, i32 1), !nosanitize !30
  %1311 = extractvalue { i32, i1 } %1310, 1, !nosanitize !30
  br i1 %1311, label %.loopexit303, label %1312, !prof !32, !nosanitize !30

1312:                                             ; preds = %1307
  %1313 = extractvalue { i32, i1 } %1310, 0, !nosanitize !30
  %1314 = sext i32 %1313 to i64
  %1315 = getelementptr inbounds [2 x i8], ptr %513, i64 %1314
  %1316 = load i16, ptr %1315, align 2, !tbaa !60
  %1317 = add i16 %1316, 2
  store i16 %1317, ptr %1315, align 2, !tbaa !60
  %1318 = load i16, ptr %1295, align 2, !tbaa !60
  %1319 = add i16 %1318, -1
  store i16 %1319, ptr %1295, align 2, !tbaa !60
  %1320 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1296, i32 -2)
  %1321 = extractvalue { i32, i1 } %1320, 1, !nosanitize !30
  br i1 %1321, label %.loopexit294, label %1322, !prof !32, !nosanitize !30

1322:                                             ; preds = %1312
  %1323 = extractvalue { i32, i1 } %1320, 0, !nosanitize !30
  %1324 = icmp sgt i32 %1323, 0
  br i1 %1324, label %.preheader302, label %1325, !llvm.loop !63

1325:                                             ; preds = %1322
  %1326 = icmp eq i32 %1194, 0
  br i1 %1326, label %.loopexit300, label %.preheader298

.preheader298:                                    ; preds = %1325, %1380
  %1327 = phi i64 [ %1381, %1380 ], [ %1294, %1325 ]
  %1328 = phi i32 [ %1335, %1380 ], [ 573, %1325 ]
  %1329 = getelementptr inbounds [2 x i8], ptr %513, i64 %1327
  %1330 = load i16, ptr %1329, align 2, !tbaa !60
  %1331 = icmp eq i16 %1330, 0
  br i1 %1331, label %.loopexit297, label %1332

1332:                                             ; preds = %.preheader298
  %1333 = zext i16 %1330 to i32
  %1334 = trunc i64 %1327 to i16
  br label %1338

.loopexit297:                                     ; preds = %1377, %.preheader298
  %1335 = phi i32 [ %1328, %.preheader298 ], [ %1347, %1377 ]
  %1336 = and i64 %1327, 4294967295
  %1337 = icmp eq i64 %1336, 2147483648
  br i1 %1337, label %.loopexit296, label %1380, !prof !32, !nosanitize !30

1338:                                             ; preds = %1377, %1332
  %1339 = phi i32 [ %1328, %1332 ], [ %1347, %1377 ]
  %1340 = phi i32 [ %1333, %1332 ], [ %1378, %1377 ]
  %1341 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1339, i32 -1)
  %1342 = extractvalue { i32, i1 } %1341, 1, !nosanitize !30
  br i1 %1342, label %.loopexit294, label %.preheader293, !prof !64, !nosanitize !30

1343:                                             ; preds = %.preheader293
  %1344 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1347, i32 -1)
  %1345 = extractvalue { i32, i1 } %1344, 1, !nosanitize !30
  br i1 %1345, label %.loopexit294, label %.preheader293, !prof !65, !llvm.loop !66, !nosanitize !30

.preheader293:                                    ; preds = %1338, %1343
  %1346 = phi { i32, i1 } [ %1344, %1343 ], [ %1341, %1338 ]
  %1347 = extractvalue { i32, i1 } %1346, 0, !nosanitize !30
  %1348 = sext i32 %1347 to i64
  %1349 = getelementptr inbounds [4 x i8], ptr %239, i64 %1348
  %1350 = load i32, ptr %1349, align 4, !tbaa !4
  %1351 = icmp sgt i32 %1350, %1186
  br i1 %1351, label %1343, label %1352, !llvm.loop !66

1352:                                             ; preds = %.preheader293
  %1353 = sext i32 %1350 to i64
  %1354 = getelementptr inbounds [4 x i8], ptr %1185, i64 %1353
  %1355 = getelementptr inbounds nuw i8, ptr %1354, i64 2
  %1356 = load i16, ptr %1355, align 2, !tbaa !28
  %1357 = zext i16 %1356 to i64
  %1358 = icmp eq i64 %1327, %1357
  br i1 %1358, label %1377, label %1359

1359:                                             ; preds = %1352
  %1360 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1327, i64 %1357), !nosanitize !30
  %1361 = extractvalue { i64, i1 } %1360, 1, !nosanitize !30
  br i1 %1361, label %.loopexit296, label %1362, !prof !32, !nosanitize !30

.loopexit296:                                     ; preds = %.loopexit297, %1359
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

1362:                                             ; preds = %1359
  %1363 = extractvalue { i64, i1 } %1360, 0, !nosanitize !30
  %1364 = load i16, ptr %1354, align 2, !tbaa !28
  %1365 = zext i16 %1364 to i64
  %1366 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1363, i64 %1365), !nosanitize !30
  %1367 = extractvalue { i64, i1 } %1366, 1, !nosanitize !30
  br i1 %1367, label %1368, label %1369, !prof !32, !nosanitize !30

1368:                                             ; preds = %1362
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !30
  unreachable, !nosanitize !30

1369:                                             ; preds = %1362
  %1370 = extractvalue { i64, i1 } %1366, 0, !nosanitize !30
  %1371 = load i64, ptr %1209, align 8, !tbaa !50
  %1372 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1371, i64 %1370), !nosanitize !30
  %1373 = extractvalue { i64, i1 } %1372, 1, !nosanitize !30
  br i1 %1373, label %1374, label %1375, !prof !32, !nosanitize !30

1374:                                             ; preds = %1369
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

1375:                                             ; preds = %1369
  %1376 = extractvalue { i64, i1 } %1372, 0, !nosanitize !30
  store i64 %1376, ptr %1209, align 8, !tbaa !50
  store i16 %1334, ptr %1355, align 2, !tbaa !28
  br label %1377

1377:                                             ; preds = %1375, %1352
  %1378 = add nsw i32 %1340, -1
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %.loopexit297, label %1338, !llvm.loop !66

1380:                                             ; preds = %.loopexit297
  %1381 = add nsw i64 %1327, -1
  %1382 = and i64 %1381, 4294967295
  %1383 = icmp eq i64 %1382, 0
  br i1 %1383, label %.loopexit300, label %.preheader298, !llvm.loop !67

.loopexit300:                                     ; preds = %1380, %1325, %1289, %1205
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %1384 = load i16, ptr %513, align 2, !tbaa !60
  %1385 = zext i16 %1384 to i32
  %1386 = shl nuw nsw i32 %1385, 1
  %1387 = trunc i32 %1386 to i16
  %1388 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1387, ptr %1388, align 2, !tbaa !60
  %1389 = load i16, ptr %708, align 2, !tbaa !60
  %1390 = zext i16 %1389 to i32
  %1391 = add nuw nsw i32 %1386, %1390
  %1392 = shl nuw nsw i32 %1391, 1
  %1393 = trunc i32 %1392 to i16
  %1394 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1393, ptr %1394, align 4, !tbaa !60
  %1395 = load i16, ptr %715, align 2, !tbaa !60
  %1396 = zext i16 %1395 to i32
  %1397 = add nuw nsw i32 %1392, %1396
  %1398 = shl nuw nsw i32 %1397, 1
  %1399 = trunc i32 %1398 to i16
  %1400 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1399, ptr %1400, align 2, !tbaa !60
  %1401 = load i16, ptr %722, align 2, !tbaa !60
  %1402 = zext i16 %1401 to i32
  %1403 = add nuw nsw i32 %1398, %1402
  %1404 = shl nuw nsw i32 %1403, 1
  %1405 = trunc i32 %1404 to i16
  %1406 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1405, ptr %1406, align 8, !tbaa !60
  %1407 = load i16, ptr %729, align 2, !tbaa !60
  %1408 = zext i16 %1407 to i32
  %1409 = add nuw nsw i32 %1404, %1408
  %1410 = shl nuw nsw i32 %1409, 1
  %1411 = trunc i32 %1410 to i16
  %1412 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1411, ptr %1412, align 2, !tbaa !60
  %1413 = load i16, ptr %736, align 2, !tbaa !60
  %1414 = zext i16 %1413 to i32
  %1415 = add nuw nsw i32 %1410, %1414
  %1416 = shl nuw nsw i32 %1415, 1
  %1417 = trunc i32 %1416 to i16
  %1418 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1417, ptr %1418, align 4, !tbaa !60
  %1419 = load i16, ptr %743, align 2, !tbaa !60
  %1420 = zext i16 %1419 to i32
  %1421 = add nuw nsw i32 %1416, %1420
  %1422 = shl nuw nsw i32 %1421, 1
  %1423 = trunc i32 %1422 to i16
  %1424 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1423, ptr %1424, align 2, !tbaa !60
  %1425 = load i16, ptr %750, align 2, !tbaa !60
  %1426 = trunc i32 %1422 to i16
  %.tr827 = add i16 %1425, %1426
  %1427 = shl i16 %.tr827, 1
  %1428 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1427, ptr %1428, align 16, !tbaa !60
  %1429 = load i16, ptr %755, align 2, !tbaa !60
  %.tr248 = add i16 %1429, %1427
  %1430 = shl i16 %.tr248, 1
  %1431 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1430, ptr %1431, align 2, !tbaa !60
  %1432 = load i16, ptr %759, align 2, !tbaa !60
  %.tr245 = add i16 %1430, %1432
  %1433 = shl i16 %.tr245, 1
  %1434 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1433, ptr %1434, align 4, !tbaa !60
  %1435 = load i16, ptr %763, align 2, !tbaa !60
  %1436 = add i16 %1433, %1435
  %1437 = shl i16 %1436, 1
  %1438 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1437, ptr %1438, align 2, !tbaa !60
  %1439 = load i16, ptr %768, align 2, !tbaa !60
  %1440 = add i16 %1437, %1439
  %1441 = shl i16 %1440, 1
  %1442 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1441, ptr %1442, align 8, !tbaa !60
  %1443 = load i16, ptr %773, align 2, !tbaa !60
  %1444 = add i16 %1441, %1443
  %1445 = shl i16 %1444, 1
  %1446 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1445, ptr %1446, align 2, !tbaa !60
  %1447 = load i16, ptr %778, align 2, !tbaa !60
  %1448 = add i16 %1445, %1447
  %1449 = shl i16 %1448, 1
  %1450 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1449, ptr %1450, align 4, !tbaa !60
  %1451 = load i16, ptr %783, align 2, !tbaa !60
  %1452 = add i16 %1449, %1451
  %1453 = shl i16 %1452, 1
  %1454 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1453, ptr %1454, align 2, !tbaa !60
  %1455 = icmp slt i32 %921, 0
  br i1 %1455, label %.loopexit292, label %.preheader291

1456:                                             ; preds = %1509
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

.preheader291:                                    ; preds = %.loopexit300, %1511
  %1457 = phi i64 [ %1512, %1511 ], [ 0, %.loopexit300 ]
  %1458 = getelementptr inbounds nuw [4 x i8], ptr %849, i64 %1457
  %1459 = getelementptr inbounds nuw i8, ptr %1458, i64 2
  %1460 = load i16, ptr %1459, align 2, !tbaa !28
  %1461 = icmp eq i16 %1460, 0
  br i1 %1461, label %1509, label %1462

1462:                                             ; preds = %.preheader291
  %1463 = zext i16 %1460 to i32
  %1464 = zext i16 %1460 to i64
  %1465 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %1464
  %1466 = load i16, ptr %1465, align 2, !tbaa !60
  %1467 = add i16 %1466, 1
  store i16 %1467, ptr %1465, align 2, !tbaa !60
  %1468 = and i32 %1463, 3
  %1469 = icmp ult i16 %1460, 4
  br i1 %1469, label %1494, label %1470

1470:                                             ; preds = %1462
  %1471 = and i32 %1463, 65532
  br label %1472

1472:                                             ; preds = %1472, %1470
  %1473 = phi i16 [ %1466, %1470 ], [ %1489, %1472 ]
  %1474 = phi i16 [ 0, %1470 ], [ %1488, %1472 ]
  %1475 = phi i32 [ 0, %1470 ], [ %1490, %1472 ]
  %1476 = and i16 %1473, 1
  %1477 = or disjoint i16 %1474, %1476
  %1478 = shl i16 %1477, 2
  %1479 = and i16 %1473, 2
  %1480 = or disjoint i16 %1478, %1479
  %1481 = lshr i16 %1473, 2
  %1482 = and i16 %1481, 1
  %1483 = or disjoint i16 %1480, %1482
  %1484 = shl i16 %1483, 1
  %1485 = lshr i16 %1473, 3
  %1486 = and i16 %1485, 1
  %1487 = or disjoint i16 %1484, %1486
  %1488 = shl i16 %1487, 1
  %1489 = lshr i16 %1473, 4
  %1490 = add nuw nsw i32 %1475, 4
  %1491 = icmp eq i32 %1490, %1471
  br i1 %1491, label %1492, label %1472, !llvm.loop !68

1492:                                             ; preds = %1472
  %1493 = icmp eq i32 %1468, 0
  br i1 %1493, label %.loopexit290, label %1494

1494:                                             ; preds = %1492, %1462
  %1495 = phi i16 [ %1466, %1462 ], [ %1489, %1492 ]
  %1496 = phi i16 [ 0, %1462 ], [ %1488, %1492 ]
  %1497 = icmp ne i32 %1468, 0
  tail call void @llvm.assume(i1 %1497)
  br label %1498

1498:                                             ; preds = %1498, %1494
  %1499 = phi i16 [ %1495, %1494 ], [ %1505, %1498 ]
  %1500 = phi i16 [ %1496, %1494 ], [ %1504, %1498 ]
  %1501 = phi i32 [ 0, %1494 ], [ %1506, %1498 ]
  %1502 = and i16 %1499, 1
  %1503 = or disjoint i16 %1500, %1502
  %1504 = shl i16 %1503, 1
  %1505 = lshr i16 %1499, 1
  %1506 = add nuw nsw i32 %1501, 1
  %1507 = icmp eq i32 %1506, %1468
  br i1 %1507, label %.loopexit290, label %1498, !llvm.loop !72

.loopexit290:                                     ; preds = %1498, %1492
  %1508 = phi i16 [ %1487, %1492 ], [ %1503, %1498 ]
  store i16 %1508, ptr %1458, align 2, !tbaa !28
  br label %1509

1509:                                             ; preds = %.loopexit290, %.preheader291
  %1510 = icmp eq i64 %1457, 2147483647
  br i1 %1510, label %1456, label %1511, !prof !32, !nosanitize !30

1511:                                             ; preds = %1509
  %1512 = add nuw nsw i64 %1457, 1
  %1513 = trunc i64 %1512 to i32
  %1514 = icmp slt i32 %921, %1513
  br i1 %1514, label %.loopexit292, label %.preheader291, !llvm.loop !71

.loopexit292:                                     ; preds = %1511, %.loopexit300
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %1515 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %1516 = load i32, ptr %238, align 8, !tbaa !73
  %1517 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1516, i32 1), !nosanitize !30
  %1518 = extractvalue { i32, i1 } %1517, 1, !nosanitize !30
  br i1 %1518, label %.loopexit289, label %1519, !prof !32, !nosanitize !30

.loopexit289:                                     ; preds = %1537, %.loopexit292
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

1519:                                             ; preds = %.loopexit292
  %1520 = getelementptr inbounds nuw i8, ptr %0, i64 214
  %1521 = load i16, ptr %1520, align 2, !tbaa !28
  %1522 = extractvalue { i32, i1 } %1517, 0, !nosanitize !30
  %1523 = sext i32 %1522 to i64
  %1524 = getelementptr inbounds [4 x i8], ptr %1515, i64 %1523
  %1525 = getelementptr inbounds nuw i8, ptr %1524, i64 2
  store i16 -1, ptr %1525, align 2, !tbaa !28
  %1526 = icmp slt i32 %1516, 0
  br i1 %1526, label %.loopexit288, label %1527

1527:                                             ; preds = %1519
  %1528 = zext i16 %1521 to i32
  %1529 = icmp eq i16 %1521, 0
  %1530 = select i1 %1529, i32 138, i32 7
  %1531 = select i1 %1529, i32 3, i32 4
  %1532 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1533 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1534 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1535 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1536 = add nuw nsw i32 %1516, 1
  %wide.trip.count = zext nneg i32 %1536 to i64
  br label %1538

1537:                                             ; preds = %1585
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond568 = icmp eq i64 %indvars.iv.next, 2147483648
  br i1 %exitcond568, label %.loopexit289, label %1538, !prof !74, !llvm.loop !75, !nosanitize !30

1538:                                             ; preds = %1537, %1527
  %indvars.iv = phi i64 [ %indvars.iv.next, %1537 ], [ 1, %1527 ]
  %1539 = phi i32 [ %1586, %1537 ], [ -1, %1527 ]
  %1540 = phi i32 [ %1547, %1537 ], [ %1528, %1527 ]
  %1541 = phi i32 [ %1587, %1537 ], [ 0, %1527 ]
  %1542 = phi i32 [ %1588, %1537 ], [ %1530, %1527 ]
  %1543 = phi i32 [ %1589, %1537 ], [ %1531, %1527 ]
  %1544 = getelementptr inbounds nuw [4 x i8], ptr %1515, i64 %indvars.iv
  %1545 = getelementptr inbounds nuw i8, ptr %1544, i64 2
  %1546 = load i16, ptr %1545, align 2, !tbaa !28
  %1547 = zext i16 %1546 to i32
  %1548 = add nsw i32 %1541, 1
  %1549 = icmp slt i32 %1548, %1542
  %1550 = icmp eq i32 %1540, %1547
  %1551 = select i1 %1549, i1 %1550, i1 false
  br i1 %1551, label %1585, label %1552

1552:                                             ; preds = %1538
  %1553 = icmp slt i32 %1548, %1543
  br i1 %1553, label %1554, label %1560

1554:                                             ; preds = %1552
  %1555 = zext nneg i32 %1540 to i64
  %1556 = getelementptr inbounds nuw [4 x i8], ptr %1532, i64 %1555
  %1557 = load i16, ptr %1556, align 4, !tbaa !28
  %1558 = trunc i32 %1548 to i16
  %1559 = add i16 %1557, %1558
  store i16 %1559, ptr %1556, align 4, !tbaa !28
  br label %1580

1560:                                             ; preds = %1552
  %1561 = icmp eq i32 %1540, 0
  br i1 %1561, label %1572, label %1562

1562:                                             ; preds = %1560
  %1563 = icmp eq i32 %1540, %1539
  br i1 %1563, label %1569, label %1564

1564:                                             ; preds = %1562
  %1565 = zext nneg i32 %1540 to i64
  %1566 = getelementptr inbounds nuw [4 x i8], ptr %1532, i64 %1565
  %1567 = load i16, ptr %1566, align 4, !tbaa !28
  %1568 = add i16 %1567, 1
  store i16 %1568, ptr %1566, align 4, !tbaa !28
  br label %1569

1569:                                             ; preds = %1564, %1562
  %1570 = load i16, ptr %1533, align 4, !tbaa !28
  %1571 = add i16 %1570, 1
  store i16 %1571, ptr %1533, align 4, !tbaa !28
  br label %1580

1572:                                             ; preds = %1560
  %1573 = icmp slt i32 %1541, 10
  br i1 %1573, label %1574, label %1577

1574:                                             ; preds = %1572
  %1575 = load i16, ptr %1535, align 4, !tbaa !28
  %1576 = add i16 %1575, 1
  store i16 %1576, ptr %1535, align 4, !tbaa !28
  br label %1580

1577:                                             ; preds = %1572
  %1578 = load i16, ptr %1534, align 4, !tbaa !28
  %1579 = add i16 %1578, 1
  store i16 %1579, ptr %1534, align 4, !tbaa !28
  br label %1580

1580:                                             ; preds = %1577, %1574, %1569, %1554
  %1581 = icmp eq i16 %1546, 0
  br i1 %1581, label %1585, label %1582

1582:                                             ; preds = %1580
  %1583 = select i1 %1550, i32 6, i32 7
  %1584 = select i1 %1550, i32 3, i32 4
  br label %1585

1585:                                             ; preds = %1582, %1580, %1538
  %1586 = phi i32 [ %1539, %1538 ], [ %1540, %1580 ], [ %1540, %1582 ]
  %1587 = phi i32 [ %1548, %1538 ], [ 0, %1580 ], [ 0, %1582 ]
  %1588 = phi i32 [ %1542, %1538 ], [ 138, %1580 ], [ %1583, %1582 ]
  %1589 = phi i32 [ %1543, %1538 ], [ 3, %1580 ], [ %1584, %1582 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %.loopexit288, label %1537, !llvm.loop !75

.loopexit288:                                     ; preds = %1585, %1519
  %1590 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %1591 = load i32, ptr %923, align 8, !tbaa !76
  %1592 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1591, i32 1), !nosanitize !30
  %1593 = extractvalue { i32, i1 } %1592, 1, !nosanitize !30
  br i1 %1593, label %.loopexit287, label %1594, !prof !32, !nosanitize !30

.loopexit287:                                     ; preds = %1612, %.loopexit288
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

1594:                                             ; preds = %.loopexit288
  %1595 = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %1596 = load i16, ptr %1595, align 2, !tbaa !28
  %1597 = extractvalue { i32, i1 } %1592, 0, !nosanitize !30
  %1598 = sext i32 %1597 to i64
  %1599 = getelementptr inbounds [4 x i8], ptr %1590, i64 %1598
  %1600 = getelementptr inbounds nuw i8, ptr %1599, i64 2
  store i16 -1, ptr %1600, align 2, !tbaa !28
  %1601 = icmp slt i32 %1591, 0
  br i1 %1601, label %.loopexit286, label %1602

1602:                                             ; preds = %1594
  %1603 = zext i16 %1596 to i32
  %1604 = icmp eq i16 %1596, 0
  %1605 = select i1 %1604, i32 138, i32 7
  %1606 = select i1 %1604, i32 3, i32 4
  %1607 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1608 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1609 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1610 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1611 = add nuw nsw i32 %1591, 1
  %wide.trip.count572 = zext nneg i32 %1611 to i64
  br label %1613

1612:                                             ; preds = %1660
  %indvars.iv.next570 = add nuw nsw i64 %indvars.iv569, 1
  %exitcond574 = icmp eq i64 %indvars.iv.next570, 2147483648
  br i1 %exitcond574, label %.loopexit287, label %1613, !prof !74, !llvm.loop !75, !nosanitize !30

1613:                                             ; preds = %1612, %1602
  %indvars.iv569 = phi i64 [ %indvars.iv.next570, %1612 ], [ 1, %1602 ]
  %1614 = phi i32 [ %1661, %1612 ], [ -1, %1602 ]
  %1615 = phi i32 [ %1622, %1612 ], [ %1603, %1602 ]
  %1616 = phi i32 [ %1662, %1612 ], [ 0, %1602 ]
  %1617 = phi i32 [ %1663, %1612 ], [ %1605, %1602 ]
  %1618 = phi i32 [ %1664, %1612 ], [ %1606, %1602 ]
  %1619 = getelementptr inbounds nuw [4 x i8], ptr %1590, i64 %indvars.iv569
  %1620 = getelementptr inbounds nuw i8, ptr %1619, i64 2
  %1621 = load i16, ptr %1620, align 2, !tbaa !28
  %1622 = zext i16 %1621 to i32
  %1623 = add nsw i32 %1616, 1
  %1624 = icmp slt i32 %1623, %1617
  %1625 = icmp eq i32 %1615, %1622
  %1626 = select i1 %1624, i1 %1625, i1 false
  br i1 %1626, label %1660, label %1627

1627:                                             ; preds = %1613
  %1628 = icmp slt i32 %1623, %1618
  br i1 %1628, label %1629, label %1635

1629:                                             ; preds = %1627
  %1630 = zext nneg i32 %1615 to i64
  %1631 = getelementptr inbounds nuw [4 x i8], ptr %1607, i64 %1630
  %1632 = load i16, ptr %1631, align 4, !tbaa !28
  %1633 = trunc i32 %1623 to i16
  %1634 = add i16 %1632, %1633
  store i16 %1634, ptr %1631, align 4, !tbaa !28
  br label %1655

1635:                                             ; preds = %1627
  %1636 = icmp eq i32 %1615, 0
  br i1 %1636, label %1647, label %1637

1637:                                             ; preds = %1635
  %1638 = icmp eq i32 %1615, %1614
  br i1 %1638, label %1644, label %1639

1639:                                             ; preds = %1637
  %1640 = zext nneg i32 %1615 to i64
  %1641 = getelementptr inbounds nuw [4 x i8], ptr %1607, i64 %1640
  %1642 = load i16, ptr %1641, align 4, !tbaa !28
  %1643 = add i16 %1642, 1
  store i16 %1643, ptr %1641, align 4, !tbaa !28
  br label %1644

1644:                                             ; preds = %1639, %1637
  %1645 = load i16, ptr %1608, align 4, !tbaa !28
  %1646 = add i16 %1645, 1
  store i16 %1646, ptr %1608, align 4, !tbaa !28
  br label %1655

1647:                                             ; preds = %1635
  %1648 = icmp slt i32 %1616, 10
  br i1 %1648, label %1649, label %1652

1649:                                             ; preds = %1647
  %1650 = load i16, ptr %1610, align 4, !tbaa !28
  %1651 = add i16 %1650, 1
  store i16 %1651, ptr %1610, align 4, !tbaa !28
  br label %1655

1652:                                             ; preds = %1647
  %1653 = load i16, ptr %1609, align 4, !tbaa !28
  %1654 = add i16 %1653, 1
  store i16 %1654, ptr %1609, align 4, !tbaa !28
  br label %1655

1655:                                             ; preds = %1652, %1649, %1644, %1629
  %1656 = icmp eq i16 %1621, 0
  br i1 %1656, label %1660, label %1657

1657:                                             ; preds = %1655
  %1658 = select i1 %1625, i32 6, i32 7
  %1659 = select i1 %1625, i32 3, i32 4
  br label %1660

1660:                                             ; preds = %1657, %1655, %1613
  %1661 = phi i32 [ %1614, %1613 ], [ %1615, %1655 ], [ %1615, %1657 ]
  %1662 = phi i32 [ %1623, %1613 ], [ 0, %1655 ], [ 0, %1657 ]
  %1663 = phi i32 [ %1617, %1613 ], [ 138, %1655 ], [ %1658, %1657 ]
  %1664 = phi i32 [ %1618, %1613 ], [ 3, %1655 ], [ %1659, %1657 ]
  %exitcond573 = icmp eq i64 %indvars.iv569, %wide.trip.count572
  br i1 %exitcond573, label %.loopexit286, label %1612, !llvm.loop !75

.loopexit286:                                     ; preds = %1660, %1594
  %1665 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %1666 = load ptr, ptr %1665, align 8, !tbaa !41
  %1667 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %1668 = load ptr, ptr %1667, align 8, !tbaa !42
  %1669 = load ptr, ptr %1668, align 8, !tbaa !43
  %1670 = getelementptr inbounds nuw i8, ptr %1668, i64 20
  %1671 = load i32, ptr %1670, align 4, !tbaa !46
  store i32 0, ptr %164, align 4, !tbaa !47
  store i32 573, ptr %165, align 8, !tbaa !48
  %1672 = icmp sgt i32 %1671, 0
  br i1 %1672, label %1673, label %1678

1673:                                             ; preds = %.loopexit286
  %1674 = zext nneg i32 %1671 to i64
  br label %1684

1675:                                             ; preds = %1702
  %1676 = load i32, ptr %164, align 4, !tbaa !47
  %1677 = icmp slt i32 %1676, 2
  br i1 %1677, label %1678, label %.loopexit284

1678:                                             ; preds = %1675, %.loopexit286
  %1679 = phi i32 [ %1703, %1675 ], [ -1, %.loopexit286 ]
  %1680 = phi i32 [ %1676, %1675 ], [ 0, %.loopexit286 ]
  %1681 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1682 = icmp eq ptr %1669, null
  %1683 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1706

1684:                                             ; preds = %1702, %1673
  %1685 = phi i64 [ 0, %1673 ], [ %1704, %1702 ]
  %1686 = phi i32 [ -1, %1673 ], [ %1703, %1702 ]
  %1687 = getelementptr inbounds nuw [4 x i8], ptr %1666, i64 %1685
  %1688 = load i16, ptr %1687, align 2, !tbaa !28
  %1689 = icmp eq i16 %1688, 0
  br i1 %1689, label %1700, label %1690

1690:                                             ; preds = %1684
  %1691 = load i32, ptr %164, align 4, !tbaa !47
  %1692 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1691, i32 1), !nosanitize !30
  %1693 = extractvalue { i32, i1 } %1692, 1, !nosanitize !30
  br i1 %1693, label %.loopexit281, label %1694, !prof !32, !nosanitize !30

.loopexit281:                                     ; preds = %1690, %1904
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

1694:                                             ; preds = %1690
  %1695 = extractvalue { i32, i1 } %1692, 0, !nosanitize !30
  store i32 %1695, ptr %164, align 4, !tbaa !47
  %1696 = sext i32 %1695 to i64
  %1697 = getelementptr inbounds [4 x i8], ptr %239, i64 %1696
  %1698 = trunc nuw nsw i64 %1685 to i32
  store i32 %1698, ptr %1697, align 4, !tbaa !4
  %1699 = getelementptr inbounds nuw i8, ptr %240, i64 %1685
  store i8 0, ptr %1699, align 1, !tbaa !28
  br label %1702

1700:                                             ; preds = %1684
  %1701 = getelementptr inbounds nuw i8, ptr %1687, i64 2
  store i16 0, ptr %1701, align 2, !tbaa !28
  br label %1702

1702:                                             ; preds = %1700, %1694
  %1703 = phi i32 [ %1698, %1694 ], [ %1686, %1700 ]
  %1704 = add nuw nsw i64 %1685, 1
  %1705 = icmp eq i64 %1704, %1674
  br i1 %1705, label %1675, label %1684, !llvm.loop !49

1706:                                             ; preds = %1735, %1678
  %1707 = phi i32 [ %1680, %1678 ], [ %1736, %1735 ]
  %1708 = phi i32 [ %1679, %1678 ], [ %1711, %1735 ]
  %1709 = icmp slt i32 %1708, 2
  %1710 = add i32 %1708, 1
  %1711 = select i1 %1709, i32 %1710, i32 %1708
  %1712 = add nsw i32 %1707, 1
  %1713 = select i1 %1709, i32 %1710, i32 0
  store i32 %1712, ptr %164, align 4, !tbaa !47
  %1714 = sext i32 %1712 to i64
  %1715 = getelementptr inbounds [4 x i8], ptr %239, i64 %1714
  store i32 %1713, ptr %1715, align 4, !tbaa !4
  %1716 = sext i32 %1713 to i64
  %1717 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1716
  store i16 1, ptr %1717, align 2, !tbaa !28
  %1718 = getelementptr inbounds i8, ptr %240, i64 %1716
  store i8 0, ptr %1718, align 1, !tbaa !28
  %1719 = load i64, ptr %1681, align 8, !tbaa !50
  %1720 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1719, i64 1), !nosanitize !30
  %1721 = extractvalue { i64, i1 } %1720, 1, !nosanitize !30
  br i1 %1721, label %1722, label %1723, !prof !32, !nosanitize !30

1722:                                             ; preds = %1706
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

1723:                                             ; preds = %1706
  %1724 = extractvalue { i64, i1 } %1720, 0, !nosanitize !30
  store i64 %1724, ptr %1681, align 8, !tbaa !50
  br i1 %1682, label %1735, label %1725

1725:                                             ; preds = %1723
  %1726 = getelementptr inbounds [4 x i8], ptr %1669, i64 %1716
  %1727 = getelementptr inbounds nuw i8, ptr %1726, i64 2
  %1728 = load i16, ptr %1727, align 2, !tbaa !28
  %1729 = zext i16 %1728 to i64
  %1730 = load i64, ptr %1683, align 8, !tbaa !51
  %1731 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1730, i64 %1729), !nosanitize !30
  %1732 = extractvalue { i64, i1 } %1731, 1, !nosanitize !30
  br i1 %1732, label %.loopexit280, label %1733, !prof !32, !nosanitize !30

.loopexit280:                                     ; preds = %1725, %1897, %1890, %1817, %1993
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

1733:                                             ; preds = %1725
  %1734 = extractvalue { i64, i1 } %1731, 0, !nosanitize !30
  store i64 %1734, ptr %1683, align 8, !tbaa !51
  br label %1735

1735:                                             ; preds = %1733, %1723
  %1736 = load i32, ptr %164, align 4, !tbaa !47
  %1737 = icmp slt i32 %1736, 2
  br i1 %1737, label %1706, label %.loopexit284, !llvm.loop !52

.loopexit284:                                     ; preds = %1735, %1675
  %1738 = phi i32 [ %1703, %1675 ], [ %1711, %1735 ]
  %1739 = phi i32 [ %1676, %1675 ], [ %1736, %1735 ]
  %1740 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %1738, ptr %1740, align 8, !tbaa !53
  %1741 = lshr i32 %1739, 1
  %1742 = zext nneg i32 %1741 to i64
  br label %1746

1743:                                             ; preds = %.loopexit282
  %1744 = load i32, ptr %164, align 4, !tbaa !47
  %1745 = sext i32 %1671 to i64
  br label %1817

1746:                                             ; preds = %.loopexit282, %.loopexit284
  %1747 = phi i64 [ %1742, %.loopexit284 ], [ %1815, %.loopexit282 ]
  %1748 = getelementptr inbounds nuw [4 x i8], ptr %239, i64 %1747
  %1749 = load i32, ptr %1748, align 4, !tbaa !4
  %1750 = sext i32 %1749 to i64
  %1751 = getelementptr inbounds i8, ptr %240, i64 %1750
  %1752 = load i32, ptr %164, align 4, !tbaa !47
  %1753 = trunc i64 %1747 to i32
  %1754 = shl i32 %1753, 1
  %1755 = icmp sgt i32 %1754, %1752
  br i1 %1755, label %.loopexit282, label %1756

1756:                                             ; preds = %1746
  %1757 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1750
  br label %1758

1758:                                             ; preds = %1806, %1756
  %1759 = phi i32 [ %1752, %1756 ], [ %1810, %1806 ]
  %1760 = phi i32 [ %1754, %1756 ], [ %1809, %1806 ]
  %1761 = phi i32 [ %1753, %1756 ], [ %1791, %1806 ]
  %1762 = icmp slt i32 %1760, %1759
  br i1 %1762, label %1765, label %1763

1763:                                             ; preds = %1758
  %1764 = sext i32 %1760 to i64
  br label %1789

1765:                                             ; preds = %1758
  %1766 = or disjoint i32 %1760, 1
  %1767 = sext i32 %1766 to i64
  %1768 = getelementptr inbounds [4 x i8], ptr %239, i64 %1767
  %1769 = load i32, ptr %1768, align 4, !tbaa !4
  %1770 = sext i32 %1769 to i64
  %1771 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1770
  %1772 = load i16, ptr %1771, align 2, !tbaa !28
  %1773 = sext i32 %1760 to i64
  %1774 = getelementptr inbounds [4 x i8], ptr %239, i64 %1773
  %1775 = load i32, ptr %1774, align 4, !tbaa !4
  %1776 = sext i32 %1775 to i64
  %1777 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1776
  %1778 = load i16, ptr %1777, align 2, !tbaa !28
  %1779 = icmp ult i16 %1772, %1778
  br i1 %1779, label %1788, label %1780

1780:                                             ; preds = %1765
  %1781 = icmp eq i16 %1772, %1778
  br i1 %1781, label %1782, label %1789

1782:                                             ; preds = %1780
  %1783 = getelementptr inbounds i8, ptr %240, i64 %1770
  %1784 = load i8, ptr %1783, align 1, !tbaa !28
  %1785 = getelementptr inbounds i8, ptr %240, i64 %1776
  %1786 = load i8, ptr %1785, align 1, !tbaa !28
  %1787 = icmp ugt i8 %1784, %1786
  br i1 %1787, label %1789, label %1788

1788:                                             ; preds = %1782, %1765
  br label %1789

1789:                                             ; preds = %1788, %1782, %1780, %1763
  %1790 = phi i64 [ %1764, %1763 ], [ %1767, %1788 ], [ %1773, %1782 ], [ %1773, %1780 ]
  %1791 = phi i32 [ %1760, %1763 ], [ %1766, %1788 ], [ %1760, %1782 ], [ %1760, %1780 ]
  %1792 = load i16, ptr %1757, align 2, !tbaa !28
  %1793 = getelementptr inbounds [4 x i8], ptr %239, i64 %1790
  %1794 = load i32, ptr %1793, align 4, !tbaa !4
  %1795 = sext i32 %1794 to i64
  %1796 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1795
  %1797 = load i16, ptr %1796, align 2, !tbaa !28
  %1798 = icmp ult i16 %1792, %1797
  br i1 %1798, label %.loopexit282, label %1799

1799:                                             ; preds = %1789
  %1800 = icmp eq i16 %1792, %1797
  br i1 %1800, label %1801, label %1806

1801:                                             ; preds = %1799
  %1802 = load i8, ptr %1751, align 1, !tbaa !28
  %1803 = getelementptr inbounds i8, ptr %240, i64 %1795
  %1804 = load i8, ptr %1803, align 1, !tbaa !28
  %1805 = icmp ugt i8 %1802, %1804
  br i1 %1805, label %1806, label %.loopexit282

1806:                                             ; preds = %1801, %1799
  %1807 = sext i32 %1761 to i64
  %1808 = getelementptr inbounds [4 x i8], ptr %239, i64 %1807
  store i32 %1794, ptr %1808, align 4, !tbaa !4
  %1809 = shl i32 %1791, 1
  %1810 = load i32, ptr %164, align 4, !tbaa !47
  %1811 = icmp sgt i32 %1809, %1810
  br i1 %1811, label %.loopexit282, label %1758, !llvm.loop !54

.loopexit282:                                     ; preds = %1806, %1801, %1789, %1746
  %1812 = phi i32 [ %1753, %1746 ], [ %1761, %1789 ], [ %1761, %1801 ], [ %1791, %1806 ]
  %1813 = sext i32 %1812 to i64
  %1814 = getelementptr inbounds [4 x i8], ptr %239, i64 %1813
  store i32 %1749, ptr %1814, align 4, !tbaa !4
  %1815 = add nsw i64 %1747, -1
  %1816 = icmp sgt i64 %1747, 1
  br i1 %1816, label %1746, label %1743, !llvm.loop !55

1817:                                             ; preds = %1988, %1743
  %1818 = phi i32 [ %1744, %1743 ], [ %1991, %1988 ]
  %1819 = phi i64 [ %1745, %1743 ], [ %1929, %1988 ]
  %1820 = load i32, ptr %245, align 4, !tbaa !4
  %1821 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1818, i32 -1)
  %1822 = extractvalue { i32, i1 } %1821, 1, !nosanitize !30
  br i1 %1822, label %.loopexit280, label %1823, !prof !32, !nosanitize !30

1823:                                             ; preds = %1817
  %1824 = extractvalue { i32, i1 } %1821, 0, !nosanitize !30
  store i32 %1824, ptr %164, align 4, !tbaa !47
  %1825 = sext i32 %1818 to i64
  %1826 = getelementptr inbounds [4 x i8], ptr %239, i64 %1825
  %1827 = load i32, ptr %1826, align 4, !tbaa !4
  store i32 %1827, ptr %245, align 4, !tbaa !4
  %1828 = sext i32 %1827 to i64
  %1829 = getelementptr inbounds i8, ptr %240, i64 %1828
  %1830 = icmp slt i32 %1824, 2
  br i1 %1830, label %1890, label %1831

1831:                                             ; preds = %1823
  %1832 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1828
  br label %1833

1833:                                             ; preds = %1881, %1831
  %1834 = phi i32 [ %1824, %1831 ], [ %1885, %1881 ]
  %1835 = phi i32 [ 2, %1831 ], [ %1884, %1881 ]
  %1836 = phi i32 [ 1, %1831 ], [ %1866, %1881 ]
  %1837 = icmp slt i32 %1835, %1834
  br i1 %1837, label %1840, label %1838

1838:                                             ; preds = %1833
  %1839 = sext i32 %1835 to i64
  br label %1864

1840:                                             ; preds = %1833
  %1841 = or disjoint i32 %1835, 1
  %1842 = sext i32 %1841 to i64
  %1843 = getelementptr inbounds [4 x i8], ptr %239, i64 %1842
  %1844 = load i32, ptr %1843, align 4, !tbaa !4
  %1845 = sext i32 %1844 to i64
  %1846 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1845
  %1847 = load i16, ptr %1846, align 2, !tbaa !28
  %1848 = sext i32 %1835 to i64
  %1849 = getelementptr inbounds [4 x i8], ptr %239, i64 %1848
  %1850 = load i32, ptr %1849, align 4, !tbaa !4
  %1851 = sext i32 %1850 to i64
  %1852 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1851
  %1853 = load i16, ptr %1852, align 2, !tbaa !28
  %1854 = icmp ult i16 %1847, %1853
  br i1 %1854, label %1863, label %1855

1855:                                             ; preds = %1840
  %1856 = icmp eq i16 %1847, %1853
  br i1 %1856, label %1857, label %1864

1857:                                             ; preds = %1855
  %1858 = getelementptr inbounds i8, ptr %240, i64 %1845
  %1859 = load i8, ptr %1858, align 1, !tbaa !28
  %1860 = getelementptr inbounds i8, ptr %240, i64 %1851
  %1861 = load i8, ptr %1860, align 1, !tbaa !28
  %1862 = icmp ugt i8 %1859, %1861
  br i1 %1862, label %1864, label %1863

1863:                                             ; preds = %1857, %1840
  br label %1864

1864:                                             ; preds = %1863, %1857, %1855, %1838
  %1865 = phi i64 [ %1839, %1838 ], [ %1842, %1863 ], [ %1848, %1857 ], [ %1848, %1855 ]
  %1866 = phi i32 [ %1835, %1838 ], [ %1841, %1863 ], [ %1835, %1857 ], [ %1835, %1855 ]
  %1867 = load i16, ptr %1832, align 2, !tbaa !28
  %1868 = getelementptr inbounds [4 x i8], ptr %239, i64 %1865
  %1869 = load i32, ptr %1868, align 4, !tbaa !4
  %1870 = sext i32 %1869 to i64
  %1871 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1870
  %1872 = load i16, ptr %1871, align 2, !tbaa !28
  %1873 = icmp ult i16 %1867, %1872
  br i1 %1873, label %1887, label %1874

1874:                                             ; preds = %1864
  %1875 = icmp eq i16 %1867, %1872
  br i1 %1875, label %1876, label %1881

1876:                                             ; preds = %1874
  %1877 = load i8, ptr %1829, align 1, !tbaa !28
  %1878 = getelementptr inbounds i8, ptr %240, i64 %1870
  %1879 = load i8, ptr %1878, align 1, !tbaa !28
  %1880 = icmp ugt i8 %1877, %1879
  br i1 %1880, label %1881, label %1887

1881:                                             ; preds = %1876, %1874
  %1882 = sext i32 %1836 to i64
  %1883 = getelementptr inbounds [4 x i8], ptr %239, i64 %1882
  store i32 %1869, ptr %1883, align 4, !tbaa !4
  %1884 = shl i32 %1866, 1
  %1885 = load i32, ptr %164, align 4, !tbaa !47
  %1886 = icmp sgt i32 %1884, %1885
  br i1 %1886, label %1887, label %1833, !llvm.loop !54

1887:                                             ; preds = %1881, %1876, %1864
  %1888 = phi i32 [ %1836, %1864 ], [ %1836, %1876 ], [ %1866, %1881 ]
  %1889 = sext i32 %1888 to i64
  br label %1890

1890:                                             ; preds = %1887, %1823
  %1891 = phi i64 [ 1, %1823 ], [ %1889, %1887 ]
  %1892 = getelementptr inbounds [4 x i8], ptr %239, i64 %1891
  store i32 %1827, ptr %1892, align 4, !tbaa !4
  %1893 = load i32, ptr %245, align 4, !tbaa !4
  %1894 = load i32, ptr %165, align 8, !tbaa !48
  %1895 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1894, i32 -1)
  %1896 = extractvalue { i32, i1 } %1895, 1, !nosanitize !30
  br i1 %1896, label %.loopexit280, label %1897, !prof !32, !nosanitize !30

1897:                                             ; preds = %1890
  %1898 = extractvalue { i32, i1 } %1895, 0, !nosanitize !30
  store i32 %1898, ptr %165, align 8, !tbaa !48
  %1899 = sext i32 %1898 to i64
  %1900 = getelementptr inbounds [4 x i8], ptr %239, i64 %1899
  store i32 %1820, ptr %1900, align 4, !tbaa !4
  %1901 = load i32, ptr %165, align 8, !tbaa !48
  %1902 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1901, i32 -1)
  %1903 = extractvalue { i32, i1 } %1902, 1, !nosanitize !30
  br i1 %1903, label %.loopexit280, label %1904, !prof !32, !nosanitize !30

1904:                                             ; preds = %1897
  %1905 = extractvalue { i32, i1 } %1902, 0, !nosanitize !30
  store i32 %1905, ptr %165, align 8, !tbaa !48
  %1906 = sext i32 %1905 to i64
  %1907 = getelementptr inbounds [4 x i8], ptr %239, i64 %1906
  store i32 %1893, ptr %1907, align 4, !tbaa !4
  %1908 = sext i32 %1820 to i64
  %1909 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1908
  %1910 = load i16, ptr %1909, align 2, !tbaa !28
  %1911 = sext i32 %1893 to i64
  %1912 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1911
  %1913 = load i16, ptr %1912, align 2, !tbaa !28
  %1914 = add i16 %1913, %1910
  %1915 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1819
  store i16 %1914, ptr %1915, align 2, !tbaa !28
  %1916 = getelementptr inbounds i8, ptr %240, i64 %1908
  %1917 = load i8, ptr %1916, align 1, !tbaa !28
  %1918 = getelementptr inbounds i8, ptr %240, i64 %1911
  %1919 = load i8, ptr %1918, align 1, !tbaa !28
  %1920 = tail call i8 @llvm.umax.i8(i8 %1917, i8 %1919)
  %1921 = add i8 %1920, 1
  %1922 = getelementptr inbounds i8, ptr %240, i64 %1819
  store i8 %1921, ptr %1922, align 1, !tbaa !28
  %1923 = trunc nsw i64 %1819 to i32
  %1924 = trunc i64 %1819 to i16
  %1925 = getelementptr inbounds nuw i8, ptr %1912, i64 2
  store i16 %1924, ptr %1925, align 2, !tbaa !28
  %1926 = getelementptr inbounds nuw i8, ptr %1909, i64 2
  store i16 %1924, ptr %1926, align 2, !tbaa !28
  %1927 = icmp eq i64 %1819, 2147483647
  br i1 %1927, label %.loopexit281, label %1928, !prof !32, !nosanitize !30

1928:                                             ; preds = %1904
  %1929 = add nsw i64 %1819, 1
  store i32 %1923, ptr %245, align 4, !tbaa !4
  %1930 = load i32, ptr %164, align 4, !tbaa !47
  %1931 = icmp slt i32 %1930, 2
  br i1 %1931, label %1988, label %.preheader279

.preheader279:                                    ; preds = %1928, %1979
  %1932 = phi i32 [ %1983, %1979 ], [ %1930, %1928 ]
  %1933 = phi i32 [ %1982, %1979 ], [ 2, %1928 ]
  %1934 = phi i32 [ %1964, %1979 ], [ 1, %1928 ]
  %1935 = icmp slt i32 %1933, %1932
  br i1 %1935, label %1938, label %1936

1936:                                             ; preds = %.preheader279
  %1937 = sext i32 %1933 to i64
  br label %1962

1938:                                             ; preds = %.preheader279
  %1939 = or disjoint i32 %1933, 1
  %1940 = sext i32 %1939 to i64
  %1941 = getelementptr inbounds [4 x i8], ptr %239, i64 %1940
  %1942 = load i32, ptr %1941, align 4, !tbaa !4
  %1943 = sext i32 %1942 to i64
  %1944 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1943
  %1945 = load i16, ptr %1944, align 2, !tbaa !28
  %1946 = sext i32 %1933 to i64
  %1947 = getelementptr inbounds [4 x i8], ptr %239, i64 %1946
  %1948 = load i32, ptr %1947, align 4, !tbaa !4
  %1949 = sext i32 %1948 to i64
  %1950 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1949
  %1951 = load i16, ptr %1950, align 2, !tbaa !28
  %1952 = icmp ult i16 %1945, %1951
  br i1 %1952, label %1961, label %1953

1953:                                             ; preds = %1938
  %1954 = icmp eq i16 %1945, %1951
  br i1 %1954, label %1955, label %1962

1955:                                             ; preds = %1953
  %1956 = getelementptr inbounds i8, ptr %240, i64 %1943
  %1957 = load i8, ptr %1956, align 1, !tbaa !28
  %1958 = getelementptr inbounds i8, ptr %240, i64 %1949
  %1959 = load i8, ptr %1958, align 1, !tbaa !28
  %1960 = icmp ugt i8 %1957, %1959
  br i1 %1960, label %1962, label %1961

1961:                                             ; preds = %1955, %1938
  br label %1962

1962:                                             ; preds = %1961, %1955, %1953, %1936
  %1963 = phi i64 [ %1937, %1936 ], [ %1940, %1961 ], [ %1946, %1955 ], [ %1946, %1953 ]
  %1964 = phi i32 [ %1933, %1936 ], [ %1939, %1961 ], [ %1933, %1955 ], [ %1933, %1953 ]
  %1965 = load i16, ptr %1915, align 2, !tbaa !28
  %1966 = getelementptr inbounds [4 x i8], ptr %239, i64 %1963
  %1967 = load i32, ptr %1966, align 4, !tbaa !4
  %1968 = sext i32 %1967 to i64
  %1969 = getelementptr inbounds [4 x i8], ptr %1666, i64 %1968
  %1970 = load i16, ptr %1969, align 2, !tbaa !28
  %1971 = icmp ult i16 %1965, %1970
  br i1 %1971, label %1985, label %1972

1972:                                             ; preds = %1962
  %1973 = icmp eq i16 %1965, %1970
  br i1 %1973, label %1974, label %1979

1974:                                             ; preds = %1972
  %1975 = load i8, ptr %1922, align 1, !tbaa !28
  %1976 = getelementptr inbounds i8, ptr %240, i64 %1968
  %1977 = load i8, ptr %1976, align 1, !tbaa !28
  %1978 = icmp ugt i8 %1975, %1977
  br i1 %1978, label %1979, label %1985

1979:                                             ; preds = %1974, %1972
  %1980 = sext i32 %1934 to i64
  %1981 = getelementptr inbounds [4 x i8], ptr %239, i64 %1980
  store i32 %1967, ptr %1981, align 4, !tbaa !4
  %1982 = shl i32 %1964, 1
  %1983 = load i32, ptr %164, align 4, !tbaa !47
  %1984 = icmp sgt i32 %1982, %1983
  br i1 %1984, label %1985, label %.preheader279, !llvm.loop !54

1985:                                             ; preds = %1979, %1974, %1962
  %1986 = phi i32 [ %1934, %1962 ], [ %1934, %1974 ], [ %1964, %1979 ]
  %1987 = sext i32 %1986 to i64
  br label %1988

1988:                                             ; preds = %1985, %1928
  %1989 = phi i64 [ 1, %1928 ], [ %1987, %1985 ]
  %1990 = getelementptr inbounds [4 x i8], ptr %239, i64 %1989
  store i32 %1923, ptr %1990, align 4, !tbaa !4
  %1991 = load i32, ptr %164, align 4, !tbaa !47
  %1992 = icmp sgt i32 %1991, 1
  br i1 %1992, label %1817, label %1993, !llvm.loop !56

1993:                                             ; preds = %1988
  %1994 = load i32, ptr %165, align 8, !tbaa !48
  %1995 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1994, i32 -1)
  %1996 = extractvalue { i32, i1 } %1995, 1, !nosanitize !30
  br i1 %1996, label %.loopexit280, label %1997, !prof !32, !nosanitize !30

1997:                                             ; preds = %1993
  %1998 = extractvalue { i32, i1 } %1995, 0, !nosanitize !30
  %1999 = load i32, ptr %245, align 4, !tbaa !4
  store i32 %1998, ptr %165, align 8, !tbaa !48
  %2000 = sext i32 %1998 to i64
  %2001 = getelementptr inbounds [4 x i8], ptr %239, i64 %2000
  store i32 %1999, ptr %2001, align 4, !tbaa !4
  %2002 = load ptr, ptr %1665, align 8, !tbaa !41
  %2003 = load i32, ptr %1740, align 8, !tbaa !53
  %2004 = load ptr, ptr %1667, align 8, !tbaa !42
  %2005 = load ptr, ptr %2004, align 8, !tbaa !43
  %2006 = getelementptr inbounds nuw i8, ptr %2004, i64 8
  %2007 = load ptr, ptr %2006, align 8, !tbaa !57
  %2008 = getelementptr inbounds nuw i8, ptr %2004, i64 16
  %2009 = load i32, ptr %2008, align 8, !tbaa !58
  %2010 = getelementptr inbounds nuw i8, ptr %2004, i64 24
  %2011 = load i32, ptr %2010, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %513, i8 0, i64 32, i1 false), !tbaa !60
  %2012 = load i32, ptr %165, align 8, !tbaa !48
  %2013 = sext i32 %2012 to i64
  %2014 = getelementptr inbounds [4 x i8], ptr %239, i64 %2013
  %2015 = load i32, ptr %2014, align 4, !tbaa !4
  %2016 = sext i32 %2015 to i64
  %2017 = getelementptr inbounds [4 x i8], ptr %2002, i64 %2016
  %2018 = getelementptr inbounds nuw i8, ptr %2017, i64 2
  store i16 0, ptr %2018, align 2, !tbaa !28
  %2019 = load i32, ptr %165, align 8, !tbaa !48
  %2020 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2019, i32 1), !nosanitize !30
  %2021 = extractvalue { i32, i1 } %2020, 1, !nosanitize !30
  br i1 %2021, label %.loopexit276, label %2022, !prof !32, !nosanitize !30

.loopexit276:                                     ; preds = %2070, %2046, %1997
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

2022:                                             ; preds = %1997
  %2023 = extractvalue { i32, i1 } %2020, 0
  %2024 = icmp slt i32 %2023, 573
  br i1 %2024, label %2025, label %.loopexit271

2025:                                             ; preds = %2022
  %2026 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2027 = icmp eq ptr %2005, null
  %2028 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2029 = sext i32 %2023 to i64
  br label %2030

2030:                                             ; preds = %2102, %2025
  %2031 = phi i64 [ %2029, %2025 ], [ %2103, %2102 ]
  %2032 = phi i32 [ 0, %2025 ], [ %2053, %2102 ]
  %2033 = getelementptr inbounds [4 x i8], ptr %239, i64 %2031
  %2034 = load i32, ptr %2033, align 4, !tbaa !4
  %2035 = sext i32 %2034 to i64
  %2036 = getelementptr inbounds [4 x i8], ptr %2002, i64 %2035
  %2037 = getelementptr inbounds nuw i8, ptr %2036, i64 2
  %2038 = load i16, ptr %2037, align 2, !tbaa !28
  %2039 = zext i16 %2038 to i64
  %2040 = getelementptr inbounds nuw [4 x i8], ptr %2002, i64 %2039
  %2041 = getelementptr inbounds nuw i8, ptr %2040, i64 2
  %2042 = load i16, ptr %2041, align 2, !tbaa !28
  %2043 = zext i16 %2042 to i32
  %2044 = add nuw nsw i32 %2043, 1
  %2045 = icmp sgt i32 %2011, %2043
  br i1 %2045, label %2051, label %2046

2046:                                             ; preds = %2030
  %2047 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2032, i32 1), !nosanitize !30
  %2048 = extractvalue { i32, i1 } %2047, 1, !nosanitize !30
  br i1 %2048, label %.loopexit276, label %2049, !prof !32, !nosanitize !30

2049:                                             ; preds = %2046
  %2050 = extractvalue { i32, i1 } %2047, 0, !nosanitize !30
  br label %2051

2051:                                             ; preds = %2049, %2030
  %2052 = phi i32 [ %2011, %2049 ], [ %2044, %2030 ]
  %2053 = phi i32 [ %2050, %2049 ], [ %2032, %2030 ]
  %2054 = trunc i32 %2052 to i16
  store i16 %2054, ptr %2037, align 2, !tbaa !28
  %2055 = icmp sgt i32 %2034, %2003
  br i1 %2055, label %2102, label %2056

2056:                                             ; preds = %2051
  %2057 = sext i32 %2052 to i64
  %2058 = getelementptr inbounds [2 x i8], ptr %513, i64 %2057
  %2059 = load i16, ptr %2058, align 2, !tbaa !60
  %2060 = add i16 %2059, 1
  store i16 %2060, ptr %2058, align 2, !tbaa !60
  %2061 = icmp slt i32 %2034, %2009
  br i1 %2061, label %2070, label %2062

2062:                                             ; preds = %2056
  %2063 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2034, i32 %2009), !nosanitize !30
  %2064 = extractvalue { i32, i1 } %2063, 1, !nosanitize !30
  br i1 %2064, label %.loopexit265, label %2065, !prof !32, !nosanitize !30

.loopexit265:                                     ; preds = %2062, %2129, %2121, %2155, %2160, %2108
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

2065:                                             ; preds = %2062
  %2066 = extractvalue { i32, i1 } %2063, 0, !nosanitize !30
  %2067 = sext i32 %2066 to i64
  %2068 = getelementptr inbounds [4 x i8], ptr %2007, i64 %2067
  %2069 = load i32, ptr %2068, align 4, !tbaa !4
  br label %2070

2070:                                             ; preds = %2065, %2056
  %2071 = phi i32 [ %2069, %2065 ], [ 0, %2056 ]
  %2072 = load i16, ptr %2036, align 2, !tbaa !28
  %2073 = zext i16 %2072 to i64
  %2074 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2052, i32 %2071), !nosanitize !30
  %2075 = extractvalue { i32, i1 } %2074, 1, !nosanitize !30
  br i1 %2075, label %.loopexit276, label %2076, !prof !32, !nosanitize !30

2076:                                             ; preds = %2070
  %2077 = extractvalue { i32, i1 } %2074, 0, !nosanitize !30
  %2078 = zext i32 %2077 to i64
  %2079 = mul nuw nsw i64 %2078, %2073
  %2080 = load i64, ptr %2026, align 8, !tbaa !50
  %2081 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2080, i64 %2079), !nosanitize !30
  %2082 = extractvalue { i64, i1 } %2081, 1, !nosanitize !30
  br i1 %2082, label %2083, label %2084, !prof !32, !nosanitize !30

2083:                                             ; preds = %2086, %2076
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2084:                                             ; preds = %2076
  %2085 = extractvalue { i64, i1 } %2081, 0, !nosanitize !30
  store i64 %2085, ptr %2026, align 8, !tbaa !50
  br i1 %2027, label %2102, label %2086

2086:                                             ; preds = %2084
  %2087 = getelementptr inbounds [4 x i8], ptr %2005, i64 %2035
  %2088 = getelementptr inbounds nuw i8, ptr %2087, i64 2
  %2089 = load i16, ptr %2088, align 2, !tbaa !28
  %2090 = zext i16 %2089 to i32
  %2091 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2090, i32 %2071), !nosanitize !30
  %2092 = extractvalue { i32, i1 } %2091, 1, !nosanitize !30
  br i1 %2092, label %2083, label %2093, !prof !32, !nosanitize !30

2093:                                             ; preds = %2086
  %2094 = extractvalue { i32, i1 } %2091, 0, !nosanitize !30
  %2095 = zext i32 %2094 to i64
  %2096 = mul nuw nsw i64 %2095, %2073
  %2097 = load i64, ptr %2028, align 8, !tbaa !51
  %2098 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2097, i64 %2096), !nosanitize !30
  %2099 = extractvalue { i64, i1 } %2098, 1, !nosanitize !30
  br i1 %2099, label %.loopexit274, label %2100, !prof !32, !nosanitize !30

.loopexit274:                                     ; preds = %2093, %2124
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2100:                                             ; preds = %2093
  %2101 = extractvalue { i64, i1 } %2098, 0, !nosanitize !30
  store i64 %2101, ptr %2028, align 8, !tbaa !51
  br label %2102

2102:                                             ; preds = %2100, %2084, %2051
  %2103 = add nsw i64 %2031, 1
  %2104 = and i64 %2103, 4294967295
  %2105 = icmp eq i64 %2104, 573
  br i1 %2105, label %2106, label %2030, !llvm.loop !61

2106:                                             ; preds = %2102
  %2107 = icmp eq i32 %2053, 0
  br i1 %2107, label %.loopexit271, label %2108

2108:                                             ; preds = %2106
  %2109 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2011, i32 -1)
  %2110 = extractvalue { i32, i1 } %2109, 1, !nosanitize !30
  %2111 = sext i32 %2011 to i64
  %2112 = getelementptr inbounds [2 x i8], ptr %513, i64 %2111
  br i1 %2110, label %.loopexit265, label %.preheader273, !prof !32, !nosanitize !30

.preheader273:                                    ; preds = %2108, %2139
  %2113 = phi i32 [ %2140, %2139 ], [ %2053, %2108 ]
  br label %2114

2114:                                             ; preds = %2121, %.preheader273
  %2115 = phi { i32, i1 } [ %2122, %2121 ], [ %2109, %.preheader273 ]
  %2116 = extractvalue { i32, i1 } %2115, 0
  %2117 = sext i32 %2116 to i64
  %2118 = getelementptr inbounds [2 x i8], ptr %513, i64 %2117
  %2119 = load i16, ptr %2118, align 2, !tbaa !60
  %2120 = icmp eq i16 %2119, 0
  br i1 %2120, label %2121, label %2124

2121:                                             ; preds = %2114
  %2122 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2116, i32 -1)
  %2123 = extractvalue { i32, i1 } %2122, 1, !nosanitize !30
  br i1 %2123, label %.loopexit265, label %2114, !prof !32, !llvm.loop !62, !nosanitize !30

2124:                                             ; preds = %2114
  %2125 = getelementptr inbounds [2 x i8], ptr %513, i64 %2117
  %2126 = add i16 %2119, -1
  store i16 %2126, ptr %2125, align 2, !tbaa !60
  %2127 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2116, i32 1), !nosanitize !30
  %2128 = extractvalue { i32, i1 } %2127, 1, !nosanitize !30
  br i1 %2128, label %.loopexit274, label %2129, !prof !32, !nosanitize !30

2129:                                             ; preds = %2124
  %2130 = extractvalue { i32, i1 } %2127, 0, !nosanitize !30
  %2131 = sext i32 %2130 to i64
  %2132 = getelementptr inbounds [2 x i8], ptr %513, i64 %2131
  %2133 = load i16, ptr %2132, align 2, !tbaa !60
  %2134 = add i16 %2133, 2
  store i16 %2134, ptr %2132, align 2, !tbaa !60
  %2135 = load i16, ptr %2112, align 2, !tbaa !60
  %2136 = add i16 %2135, -1
  store i16 %2136, ptr %2112, align 2, !tbaa !60
  %2137 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2113, i32 -2)
  %2138 = extractvalue { i32, i1 } %2137, 1, !nosanitize !30
  br i1 %2138, label %.loopexit265, label %2139, !prof !32, !nosanitize !30

2139:                                             ; preds = %2129
  %2140 = extractvalue { i32, i1 } %2137, 0, !nosanitize !30
  %2141 = icmp sgt i32 %2140, 0
  br i1 %2141, label %.preheader273, label %2142, !llvm.loop !63

2142:                                             ; preds = %2139
  %2143 = icmp eq i32 %2011, 0
  br i1 %2143, label %.loopexit271, label %.preheader269

.preheader269:                                    ; preds = %2142, %2197
  %2144 = phi i64 [ %2198, %2197 ], [ %2111, %2142 ]
  %2145 = phi i32 [ %2152, %2197 ], [ 573, %2142 ]
  %2146 = getelementptr inbounds [2 x i8], ptr %513, i64 %2144
  %2147 = load i16, ptr %2146, align 2, !tbaa !60
  %2148 = icmp eq i16 %2147, 0
  br i1 %2148, label %.loopexit268, label %2149

2149:                                             ; preds = %.preheader269
  %2150 = zext i16 %2147 to i32
  %2151 = trunc i64 %2144 to i16
  br label %2155

.loopexit268:                                     ; preds = %2194, %.preheader269
  %2152 = phi i32 [ %2145, %.preheader269 ], [ %2164, %2194 ]
  %2153 = and i64 %2144, 4294967295
  %2154 = icmp eq i64 %2153, 2147483648
  br i1 %2154, label %.loopexit267, label %2197, !prof !32, !nosanitize !30

2155:                                             ; preds = %2194, %2149
  %2156 = phi i32 [ %2145, %2149 ], [ %2164, %2194 ]
  %2157 = phi i32 [ %2150, %2149 ], [ %2195, %2194 ]
  %2158 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2156, i32 -1)
  %2159 = extractvalue { i32, i1 } %2158, 1, !nosanitize !30
  br i1 %2159, label %.loopexit265, label %.preheader264, !prof !64, !nosanitize !30

2160:                                             ; preds = %.preheader264
  %2161 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2164, i32 -1)
  %2162 = extractvalue { i32, i1 } %2161, 1, !nosanitize !30
  br i1 %2162, label %.loopexit265, label %.preheader264, !prof !65, !llvm.loop !66, !nosanitize !30

.preheader264:                                    ; preds = %2155, %2160
  %2163 = phi { i32, i1 } [ %2161, %2160 ], [ %2158, %2155 ]
  %2164 = extractvalue { i32, i1 } %2163, 0, !nosanitize !30
  %2165 = sext i32 %2164 to i64
  %2166 = getelementptr inbounds [4 x i8], ptr %239, i64 %2165
  %2167 = load i32, ptr %2166, align 4, !tbaa !4
  %2168 = icmp sgt i32 %2167, %2003
  br i1 %2168, label %2160, label %2169, !llvm.loop !66

2169:                                             ; preds = %.preheader264
  %2170 = sext i32 %2167 to i64
  %2171 = getelementptr inbounds [4 x i8], ptr %2002, i64 %2170
  %2172 = getelementptr inbounds nuw i8, ptr %2171, i64 2
  %2173 = load i16, ptr %2172, align 2, !tbaa !28
  %2174 = zext i16 %2173 to i64
  %2175 = icmp eq i64 %2144, %2174
  br i1 %2175, label %2194, label %2176

2176:                                             ; preds = %2169
  %2177 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2144, i64 %2174), !nosanitize !30
  %2178 = extractvalue { i64, i1 } %2177, 1, !nosanitize !30
  br i1 %2178, label %.loopexit267, label %2179, !prof !32, !nosanitize !30

.loopexit267:                                     ; preds = %.loopexit268, %2176
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

2179:                                             ; preds = %2176
  %2180 = extractvalue { i64, i1 } %2177, 0, !nosanitize !30
  %2181 = load i16, ptr %2171, align 2, !tbaa !28
  %2182 = zext i16 %2181 to i64
  %2183 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2180, i64 %2182), !nosanitize !30
  %2184 = extractvalue { i64, i1 } %2183, 1, !nosanitize !30
  br i1 %2184, label %2185, label %2186, !prof !32, !nosanitize !30

2185:                                             ; preds = %2179
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !30
  unreachable, !nosanitize !30

2186:                                             ; preds = %2179
  %2187 = extractvalue { i64, i1 } %2183, 0, !nosanitize !30
  %2188 = load i64, ptr %2026, align 8, !tbaa !50
  %2189 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2188, i64 %2187), !nosanitize !30
  %2190 = extractvalue { i64, i1 } %2189, 1, !nosanitize !30
  br i1 %2190, label %2191, label %2192, !prof !32, !nosanitize !30

2191:                                             ; preds = %2186
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2192:                                             ; preds = %2186
  %2193 = extractvalue { i64, i1 } %2189, 0, !nosanitize !30
  store i64 %2193, ptr %2026, align 8, !tbaa !50
  store i16 %2151, ptr %2172, align 2, !tbaa !28
  br label %2194

2194:                                             ; preds = %2192, %2169
  %2195 = add nsw i32 %2157, -1
  %2196 = icmp eq i32 %2195, 0
  br i1 %2196, label %.loopexit268, label %2155, !llvm.loop !66

2197:                                             ; preds = %.loopexit268
  %2198 = add nsw i64 %2144, -1
  %2199 = and i64 %2198, 4294967295
  %2200 = icmp eq i64 %2199, 0
  br i1 %2200, label %.loopexit271, label %.preheader269, !llvm.loop !67

.loopexit271:                                     ; preds = %2197, %2142, %2106, %2022
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %2201 = load i16, ptr %513, align 2, !tbaa !60
  %2202 = zext i16 %2201 to i32
  %2203 = shl nuw nsw i32 %2202, 1
  %2204 = trunc i32 %2203 to i16
  %2205 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %2204, ptr %2205, align 2, !tbaa !60
  %2206 = load i16, ptr %708, align 2, !tbaa !60
  %2207 = zext i16 %2206 to i32
  %2208 = add nuw nsw i32 %2203, %2207
  %2209 = shl nuw nsw i32 %2208, 1
  %2210 = trunc i32 %2209 to i16
  %2211 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2210, ptr %2211, align 4, !tbaa !60
  %2212 = load i16, ptr %715, align 2, !tbaa !60
  %2213 = zext i16 %2212 to i32
  %2214 = add nuw nsw i32 %2209, %2213
  %2215 = shl nuw nsw i32 %2214, 1
  %2216 = trunc i32 %2215 to i16
  %2217 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2216, ptr %2217, align 2, !tbaa !60
  %2218 = load i16, ptr %722, align 2, !tbaa !60
  %2219 = zext i16 %2218 to i32
  %2220 = add nuw nsw i32 %2215, %2219
  %2221 = shl nuw nsw i32 %2220, 1
  %2222 = trunc i32 %2221 to i16
  %2223 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %2222, ptr %2223, align 8, !tbaa !60
  %2224 = load i16, ptr %729, align 2, !tbaa !60
  %2225 = zext i16 %2224 to i32
  %2226 = add nuw nsw i32 %2221, %2225
  %2227 = shl nuw nsw i32 %2226, 1
  %2228 = trunc i32 %2227 to i16
  %2229 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %2228, ptr %2229, align 2, !tbaa !60
  %2230 = load i16, ptr %736, align 2, !tbaa !60
  %2231 = trunc i32 %2227 to i16
  %.tr828 = add i16 %2230, %2231
  %2232 = shl i16 %.tr828, 1
  %2233 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %2232, ptr %2233, align 4, !tbaa !60
  %2234 = load i16, ptr %743, align 2, !tbaa !60
  %.tr249 = add i16 %2234, %2232
  %2235 = shl i16 %.tr249, 1
  %2236 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %2235, ptr %2236, align 2, !tbaa !60
  %2237 = load i16, ptr %750, align 2, !tbaa !60
  %.tr246 = add i16 %2235, %2237
  %2238 = shl i16 %.tr246, 1
  %2239 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %2238, ptr %2239, align 16, !tbaa !60
  %2240 = load i16, ptr %755, align 2, !tbaa !60
  %2241 = add i16 %2238, %2240
  %2242 = shl i16 %2241, 1
  %2243 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %2242, ptr %2243, align 2, !tbaa !60
  %2244 = load i16, ptr %759, align 2, !tbaa !60
  %2245 = add i16 %2242, %2244
  %2246 = shl i16 %2245, 1
  %2247 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %2246, ptr %2247, align 4, !tbaa !60
  %2248 = load i16, ptr %763, align 2, !tbaa !60
  %2249 = add i16 %2246, %2248
  %2250 = shl i16 %2249, 1
  %2251 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %2250, ptr %2251, align 2, !tbaa !60
  %2252 = load i16, ptr %768, align 2, !tbaa !60
  %2253 = add i16 %2250, %2252
  %2254 = shl i16 %2253, 1
  %2255 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2254, ptr %2255, align 8, !tbaa !60
  %2256 = load i16, ptr %773, align 2, !tbaa !60
  %2257 = add i16 %2254, %2256
  %2258 = shl i16 %2257, 1
  %2259 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2258, ptr %2259, align 2, !tbaa !60
  %2260 = load i16, ptr %778, align 2, !tbaa !60
  %2261 = add i16 %2258, %2260
  %2262 = shl i16 %2261, 1
  %2263 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2262, ptr %2263, align 4, !tbaa !60
  %2264 = load i16, ptr %783, align 2, !tbaa !60
  %2265 = add i16 %2262, %2264
  %2266 = shl i16 %2265, 1
  %2267 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2266, ptr %2267, align 2, !tbaa !60
  %2268 = icmp slt i32 %1738, 0
  br i1 %2268, label %.loopexit263, label %.preheader

2269:                                             ; preds = %2322
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

.preheader:                                       ; preds = %.loopexit271, %2324
  %2270 = phi i64 [ %2325, %2324 ], [ 0, %.loopexit271 ]
  %2271 = getelementptr inbounds nuw [4 x i8], ptr %1666, i64 %2270
  %2272 = getelementptr inbounds nuw i8, ptr %2271, i64 2
  %2273 = load i16, ptr %2272, align 2, !tbaa !28
  %2274 = icmp eq i16 %2273, 0
  br i1 %2274, label %2322, label %2275

2275:                                             ; preds = %.preheader
  %2276 = zext i16 %2273 to i32
  %2277 = zext i16 %2273 to i64
  %2278 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %2277
  %2279 = load i16, ptr %2278, align 2, !tbaa !60
  %2280 = add i16 %2279, 1
  store i16 %2280, ptr %2278, align 2, !tbaa !60
  %2281 = and i32 %2276, 3
  %2282 = icmp ult i16 %2273, 4
  br i1 %2282, label %2307, label %2283

2283:                                             ; preds = %2275
  %2284 = and i32 %2276, 65532
  br label %2285

2285:                                             ; preds = %2285, %2283
  %2286 = phi i16 [ %2279, %2283 ], [ %2302, %2285 ]
  %2287 = phi i16 [ 0, %2283 ], [ %2301, %2285 ]
  %2288 = phi i32 [ 0, %2283 ], [ %2303, %2285 ]
  %2289 = and i16 %2286, 1
  %2290 = or disjoint i16 %2287, %2289
  %2291 = shl i16 %2290, 2
  %2292 = and i16 %2286, 2
  %2293 = or disjoint i16 %2291, %2292
  %2294 = lshr i16 %2286, 2
  %2295 = and i16 %2294, 1
  %2296 = or disjoint i16 %2293, %2295
  %2297 = shl i16 %2296, 1
  %2298 = lshr i16 %2286, 3
  %2299 = and i16 %2298, 1
  %2300 = or disjoint i16 %2297, %2299
  %2301 = shl i16 %2300, 1
  %2302 = lshr i16 %2286, 4
  %2303 = add nuw nsw i32 %2288, 4
  %2304 = icmp eq i32 %2303, %2284
  br i1 %2304, label %2305, label %2285, !llvm.loop !68

2305:                                             ; preds = %2285
  %2306 = icmp eq i32 %2281, 0
  br i1 %2306, label %.loopexit262, label %2307

2307:                                             ; preds = %2305, %2275
  %2308 = phi i16 [ %2279, %2275 ], [ %2302, %2305 ]
  %2309 = phi i16 [ 0, %2275 ], [ %2301, %2305 ]
  %2310 = icmp ne i32 %2281, 0
  tail call void @llvm.assume(i1 %2310)
  br label %2311

2311:                                             ; preds = %2311, %2307
  %2312 = phi i16 [ %2308, %2307 ], [ %2318, %2311 ]
  %2313 = phi i16 [ %2309, %2307 ], [ %2317, %2311 ]
  %2314 = phi i32 [ 0, %2307 ], [ %2319, %2311 ]
  %2315 = and i16 %2312, 1
  %2316 = or disjoint i16 %2313, %2315
  %2317 = shl i16 %2316, 1
  %2318 = lshr i16 %2312, 1
  %2319 = add nuw nsw i32 %2314, 1
  %2320 = icmp eq i32 %2319, %2281
  br i1 %2320, label %.loopexit262, label %2311, !llvm.loop !77

.loopexit262:                                     ; preds = %2311, %2305
  %2321 = phi i16 [ %2300, %2305 ], [ %2316, %2311 ]
  store i16 %2321, ptr %2271, align 2, !tbaa !28
  br label %2322

2322:                                             ; preds = %.loopexit262, %.preheader
  %2323 = icmp eq i64 %2270, 2147483647
  br i1 %2323, label %2269, label %2324, !prof !32, !nosanitize !30

2324:                                             ; preds = %2322
  %2325 = add nuw nsw i64 %2270, 1
  %2326 = trunc i64 %2325 to i32
  %2327 = icmp slt i32 %1738, %2326
  br i1 %2327, label %.loopexit263, label %.preheader, !llvm.loop !71

.loopexit263:                                     ; preds = %2324, %.loopexit271
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %2328 = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %2329 = load i16, ptr %2328, align 2, !tbaa !28
  %2330 = icmp eq i16 %2329, 0
  br i1 %2330, label %2331, label %2392

2331:                                             ; preds = %.loopexit263
  %2332 = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %2333 = load i16, ptr %2332, align 2, !tbaa !28
  %2334 = icmp eq i16 %2333, 0
  br i1 %2334, label %2335, label %2392

2335:                                             ; preds = %2331
  %2336 = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %2337 = load i16, ptr %2336, align 2, !tbaa !28
  %2338 = icmp eq i16 %2337, 0
  br i1 %2338, label %2339, label %2392

2339:                                             ; preds = %2335
  %2340 = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %2341 = load i16, ptr %2340, align 2, !tbaa !28
  %2342 = icmp eq i16 %2341, 0
  br i1 %2342, label %2343, label %2392

2343:                                             ; preds = %2339
  %2344 = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %2345 = load i16, ptr %2344, align 2, !tbaa !28
  %2346 = icmp eq i16 %2345, 0
  br i1 %2346, label %2347, label %2392

2347:                                             ; preds = %2343
  %2348 = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %2349 = load i16, ptr %2348, align 2, !tbaa !28
  %2350 = icmp eq i16 %2349, 0
  br i1 %2350, label %2351, label %2392

2351:                                             ; preds = %2347
  %2352 = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %2353 = load i16, ptr %2352, align 2, !tbaa !28
  %2354 = icmp eq i16 %2353, 0
  br i1 %2354, label %2355, label %2392

2355:                                             ; preds = %2351
  %2356 = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %2357 = load i16, ptr %2356, align 2, !tbaa !28
  %2358 = icmp eq i16 %2357, 0
  br i1 %2358, label %2359, label %2392

2359:                                             ; preds = %2355
  %2360 = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %2361 = load i16, ptr %2360, align 2, !tbaa !28
  %2362 = icmp eq i16 %2361, 0
  br i1 %2362, label %2363, label %2392

2363:                                             ; preds = %2359
  %2364 = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %2365 = load i16, ptr %2364, align 2, !tbaa !28
  %2366 = icmp eq i16 %2365, 0
  br i1 %2366, label %2367, label %2392

2367:                                             ; preds = %2363
  %2368 = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %2369 = load i16, ptr %2368, align 2, !tbaa !28
  %2370 = icmp eq i16 %2369, 0
  br i1 %2370, label %2371, label %2392

2371:                                             ; preds = %2367
  %2372 = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %2373 = load i16, ptr %2372, align 2, !tbaa !28
  %2374 = icmp eq i16 %2373, 0
  br i1 %2374, label %2375, label %2392

2375:                                             ; preds = %2371
  %2376 = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %2377 = load i16, ptr %2376, align 2, !tbaa !28
  %2378 = icmp eq i16 %2377, 0
  br i1 %2378, label %2379, label %2392

2379:                                             ; preds = %2375
  %2380 = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %2381 = load i16, ptr %2380, align 2, !tbaa !28
  %2382 = icmp eq i16 %2381, 0
  br i1 %2382, label %2383, label %2392

2383:                                             ; preds = %2379
  %2384 = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %2385 = load i16, ptr %2384, align 2, !tbaa !28
  %2386 = icmp eq i16 %2385, 0
  br i1 %2386, label %2387, label %2392

2387:                                             ; preds = %2383
  %2388 = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %2389 = load i16, ptr %2388, align 2, !tbaa !28
  %2390 = icmp eq i16 %2389, 0
  %2391 = select i1 %2390, i32 2, i32 3
  br label %2392

2392:                                             ; preds = %2387, %2383, %2379, %2375, %2371, %2367, %2363, %2359, %2355, %2351, %2347, %2343, %2339, %2335, %2331, %.loopexit263
  %2393 = phi i32 [ 18, %.loopexit263 ], [ 10, %2359 ], [ 17, %2331 ], [ %2391, %2387 ], [ 16, %2335 ], [ 8, %2367 ], [ 15, %2339 ], [ 4, %2383 ], [ 14, %2343 ], [ 9, %2363 ], [ 13, %2347 ], [ 5, %2379 ], [ 12, %2351 ], [ 7, %2371 ], [ 11, %2355 ], [ 6, %2375 ]
  %2394 = mul nuw nsw i32 %2393, 3
  %2395 = add nuw nsw i32 %2394, 17
  %2396 = zext nneg i32 %2395 to i64
  %2397 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2398 = load i64, ptr %2397, align 8, !tbaa !50
  %2399 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2398, i64 %2396), !nosanitize !30
  %2400 = extractvalue { i64, i1 } %2399, 1, !nosanitize !30
  br i1 %2400, label %2401, label %2402, !prof !32, !nosanitize !30

2401:                                             ; preds = %2392
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2402:                                             ; preds = %2392
  %2403 = extractvalue { i64, i1 } %2399, 0, !nosanitize !30
  store i64 %2403, ptr %2397, align 8, !tbaa !50
  %2404 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2403, i64 3), !nosanitize !30
  %2405 = extractvalue { i64, i1 } %2404, 1, !nosanitize !30
  br i1 %2405, label %2406, label %2407, !prof !32, !nosanitize !30

2406:                                             ; preds = %2402
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2407:                                             ; preds = %2402
  %2408 = extractvalue { i64, i1 } %2404, 0, !nosanitize !30
  %2409 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2408, i64 7), !nosanitize !30
  %2410 = extractvalue { i64, i1 } %2409, 1, !nosanitize !30
  br i1 %2410, label %2411, label %2412, !prof !32, !nosanitize !30

2411:                                             ; preds = %2407
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2412:                                             ; preds = %2407
  %2413 = extractvalue { i64, i1 } %2409, 0, !nosanitize !30
  %2414 = lshr i64 %2413, 3
  %2415 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2416 = load i64, ptr %2415, align 8, !tbaa !51
  %2417 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2416, i64 3), !nosanitize !30
  %2418 = extractvalue { i64, i1 } %2417, 1, !nosanitize !30
  br i1 %2418, label %2419, label %2420, !prof !32, !nosanitize !30

2419:                                             ; preds = %2412
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2420:                                             ; preds = %2412
  %2421 = extractvalue { i64, i1 } %2417, 0, !nosanitize !30
  %2422 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2421, i64 7), !nosanitize !30
  %2423 = extractvalue { i64, i1 } %2422, 1, !nosanitize !30
  br i1 %2423, label %2424, label %2425, !prof !32, !nosanitize !30

2424:                                             ; preds = %2420
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2425:                                             ; preds = %2420
  %2426 = extractvalue { i64, i1 } %2422, 0, !nosanitize !30
  %2427 = lshr i64 %2426, 3
  %2428 = icmp samesign ugt i64 %2427, %2414
  br i1 %2428, label %2429, label %2433

2429:                                             ; preds = %2425
  %2430 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2431 = load i32, ptr %2430, align 8, !tbaa !78
  %2432 = icmp eq i32 %2431, 4
  br i1 %2432, label %2433, label %2440

2433:                                             ; preds = %2429, %2425
  br label %2440

2434:                                             ; preds = %4
  %2435 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 5), !nosanitize !30
  %2436 = extractvalue { i64, i1 } %2435, 1, !nosanitize !30
  br i1 %2436, label %2437, label %2438, !prof !32, !nosanitize !30

2437:                                             ; preds = %2434
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2438:                                             ; preds = %2434
  %2439 = extractvalue { i64, i1 } %2435, 0, !nosanitize !30
  br label %2440

2440:                                             ; preds = %2438, %2433, %2429
  %2441 = phi i32 [ %2393, %2433 ], [ %2393, %2429 ], [ 0, %2438 ]
  %2442 = phi i1 [ true, %2433 ], [ false, %2429 ], [ true, %2438 ]
  %2443 = phi i64 [ %2427, %2433 ], [ %2414, %2429 ], [ %2439, %2438 ]
  %2444 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 4), !nosanitize !30
  %2445 = extractvalue { i64, i1 } %2444, 1, !nosanitize !30
  br i1 %2445, label %2446, label %2447, !prof !32, !nosanitize !30

2446:                                             ; preds = %2616, %2440
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2447:                                             ; preds = %2440
  %2448 = extractvalue { i64, i1 } %2444, 0, !nosanitize !30
  %2449 = icmp ule i64 %2448, %2443
  %2450 = icmp ne ptr %1, null
  %2451 = and i1 %2450, %2449
  %2452 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2453 = load i32, ptr %2452, align 4, !tbaa !26
  %2454 = icmp sgt i32 %2453, 13
  br i1 %2451, label %2455, label %2611

2455:                                             ; preds = %2447
  br i1 %2454, label %2457, label %2495

2456:                                             ; preds = %2479
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

2457:                                             ; preds = %2455
  %2458 = and i32 %3, 65535
  %2459 = shl i32 %3, %2453
  %2460 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2461 = load i16, ptr %2460, align 8, !tbaa !25
  %2462 = trunc i32 %2459 to i16
  %2463 = or i16 %2461, %2462
  store i16 %2463, ptr %2460, align 8, !tbaa !25
  %2464 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2465 = load i64, ptr %2464, align 8, !tbaa !31
  %2466 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2465, i64 1), !nosanitize !30
  %2467 = extractvalue { i64, i1 } %2466, 1, !nosanitize !30
  br i1 %2467, label %2468, label %2469, !prof !32, !nosanitize !30

2468:                                             ; preds = %2457
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2469:                                             ; preds = %2457
  %2470 = extractvalue { i64, i1 } %2466, 0, !nosanitize !30
  %2471 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2472 = load ptr, ptr %2471, align 8, !tbaa !33
  %2473 = trunc i16 %2463 to i8
  store i64 %2470, ptr %2464, align 8, !tbaa !31
  %2474 = getelementptr inbounds nuw i8, ptr %2472, i64 %2465
  store i8 %2473, ptr %2474, align 1, !tbaa !28
  %2475 = load i64, ptr %2464, align 8, !tbaa !31
  %2476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2475, i64 1), !nosanitize !30
  %2477 = extractvalue { i64, i1 } %2476, 1, !nosanitize !30
  br i1 %2477, label %2478, label %2479, !prof !32, !nosanitize !30

2478:                                             ; preds = %2489, %2469
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2479:                                             ; preds = %2469
  %2480 = extractvalue { i64, i1 } %2476, 0, !nosanitize !30
  %2481 = load ptr, ptr %2471, align 8, !tbaa !33
  %2482 = load i16, ptr %2460, align 8, !tbaa !25
  %2483 = lshr i16 %2482, 8
  %2484 = trunc nuw i16 %2483 to i8
  store i64 %2480, ptr %2464, align 8, !tbaa !31
  %2485 = getelementptr inbounds nuw i8, ptr %2481, i64 %2475
  store i8 %2484, ptr %2485, align 1, !tbaa !28
  %2486 = load i32, ptr %2452, align 4, !tbaa !26
  %2487 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2486), !nosanitize !30
  %2488 = extractvalue { i32, i1 } %2487, 1, !nosanitize !30
  br i1 %2488, label %2456, label %2489, !prof !32, !nosanitize !30

2489:                                             ; preds = %2479
  %2490 = extractvalue { i32, i1 } %2487, 0, !nosanitize !30
  %2491 = lshr i32 %2458, %2490
  %2492 = trunc nuw i32 %2491 to i16
  store i16 %2492, ptr %2460, align 8, !tbaa !25
  %2493 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2486, i32 -13), !nosanitize !30
  %2494 = extractvalue { i32, i1 } %2493, 1, !nosanitize !30
  br i1 %2494, label %2478, label %2503, !prof !32, !nosanitize !30

2495:                                             ; preds = %2455
  %2496 = shl i32 %3, %2453
  %2497 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2498 = load i16, ptr %2497, align 8, !tbaa !25
  %2499 = trunc i32 %2496 to i16
  %2500 = or i16 %2498, %2499
  store i16 %2500, ptr %2497, align 8, !tbaa !25
  %2501 = add nsw i32 %2453, 3
  %2502 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2501, 0
  br label %2503

2503:                                             ; preds = %2495, %2489
  %2504 = phi i16 [ %2492, %2489 ], [ %2500, %2495 ]
  %2505 = phi { i32, i1 } [ %2493, %2489 ], [ %2502, %2495 ]
  %2506 = extractvalue { i32, i1 } %2505, 0
  store i32 %2506, ptr %2452, align 4, !tbaa !26
  %2507 = icmp sgt i32 %2506, 8
  br i1 %2507, label %2508, label %2532

2508:                                             ; preds = %2503
  %2509 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2510 = load i64, ptr %2509, align 8, !tbaa !31
  %2511 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2510, i64 1), !nosanitize !30
  %2512 = extractvalue { i64, i1 } %2511, 1, !nosanitize !30
  br i1 %2512, label %2513, label %2514, !prof !32, !nosanitize !30

2513:                                             ; preds = %2508
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2514:                                             ; preds = %2508
  %2515 = extractvalue { i64, i1 } %2511, 0, !nosanitize !30
  %2516 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2517 = load ptr, ptr %2516, align 8, !tbaa !33
  %2518 = trunc i16 %2504 to i8
  store i64 %2515, ptr %2509, align 8, !tbaa !31
  %2519 = getelementptr inbounds nuw i8, ptr %2517, i64 %2510
  store i8 %2518, ptr %2519, align 1, !tbaa !28
  %2520 = load i64, ptr %2509, align 8, !tbaa !31
  %2521 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2520, i64 1), !nosanitize !30
  %2522 = extractvalue { i64, i1 } %2521, 1, !nosanitize !30
  br i1 %2522, label %2523, label %2524, !prof !32, !nosanitize !30

2523:                                             ; preds = %2514
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2524:                                             ; preds = %2514
  %2525 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2526 = extractvalue { i64, i1 } %2521, 0, !nosanitize !30
  %2527 = load ptr, ptr %2516, align 8, !tbaa !33
  %2528 = load i16, ptr %2525, align 8, !tbaa !25
  %2529 = lshr i16 %2528, 8
  %2530 = trunc nuw i16 %2529 to i8
  store i64 %2526, ptr %2509, align 8, !tbaa !31
  %2531 = getelementptr inbounds nuw i8, ptr %2527, i64 %2520
  store i8 %2530, ptr %2531, align 1, !tbaa !28
  br label %2546

2532:                                             ; preds = %2503
  %2533 = icmp sgt i32 %2506, 0
  br i1 %2533, label %2534, label %2546

2534:                                             ; preds = %2532
  %2535 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2536 = load i64, ptr %2535, align 8, !tbaa !31
  %2537 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2536, i64 1), !nosanitize !30
  %2538 = extractvalue { i64, i1 } %2537, 1, !nosanitize !30
  br i1 %2538, label %2539, label %2540, !prof !32, !nosanitize !30

2539:                                             ; preds = %2534
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2540:                                             ; preds = %2534
  %2541 = extractvalue { i64, i1 } %2537, 0, !nosanitize !30
  %2542 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2543 = load ptr, ptr %2542, align 8, !tbaa !33
  %2544 = trunc i16 %2504 to i8
  store i64 %2541, ptr %2535, align 8, !tbaa !31
  %2545 = getelementptr inbounds nuw i8, ptr %2543, i64 %2536
  store i8 %2544, ptr %2545, align 1, !tbaa !28
  br label %2546

2546:                                             ; preds = %2540, %2532, %2524
  %2547 = load i32, ptr %2452, align 4, !tbaa !26
  %2548 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2547, i32 -1)
  %2549 = extractvalue { i32, i1 } %2548, 1, !nosanitize !30
  br i1 %2549, label %2550, label %2551, !prof !32, !nosanitize !30

2550:                                             ; preds = %2546
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

2551:                                             ; preds = %2546
  %2552 = extractvalue { i32, i1 } %2548, 0, !nosanitize !30
  %2553 = and i32 %2552, 7
  %2554 = add nuw nsw i32 %2553, 1
  %2555 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %2554, ptr %2555, align 8, !tbaa !27
  %2556 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %2556, align 8, !tbaa !25
  store i32 0, ptr %2452, align 4, !tbaa !26
  %2557 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2558 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2559 = load i64, ptr %2558, align 8, !tbaa !31
  %2560 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2559, i64 1), !nosanitize !30
  %2561 = extractvalue { i64, i1 } %2560, 1, !nosanitize !30
  br i1 %2561, label %2562, label %2563, !prof !32, !nosanitize !30

2562:                                             ; preds = %2551
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2563:                                             ; preds = %2551
  %2564 = extractvalue { i64, i1 } %2560, 0, !nosanitize !30
  %2565 = load ptr, ptr %2557, align 8, !tbaa !33
  %2566 = trunc i64 %2 to i8
  store i64 %2564, ptr %2558, align 8, !tbaa !31
  %2567 = getelementptr inbounds nuw i8, ptr %2565, i64 %2559
  store i8 %2566, ptr %2567, align 1, !tbaa !28
  %2568 = load i64, ptr %2558, align 8, !tbaa !31
  %2569 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2568, i64 1), !nosanitize !30
  %2570 = extractvalue { i64, i1 } %2569, 1, !nosanitize !30
  br i1 %2570, label %2571, label %2572, !prof !32, !nosanitize !30

2571:                                             ; preds = %2563
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2572:                                             ; preds = %2563
  %2573 = extractvalue { i64, i1 } %2569, 0, !nosanitize !30
  %2574 = load ptr, ptr %2557, align 8, !tbaa !33
  %2575 = lshr i64 %2, 8
  %2576 = trunc i64 %2575 to i8
  store i64 %2573, ptr %2558, align 8, !tbaa !31
  %2577 = getelementptr inbounds nuw i8, ptr %2574, i64 %2568
  store i8 %2576, ptr %2577, align 1, !tbaa !28
  %2578 = load i64, ptr %2558, align 8, !tbaa !31
  %2579 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2578, i64 1), !nosanitize !30
  %2580 = extractvalue { i64, i1 } %2579, 1, !nosanitize !30
  br i1 %2580, label %2581, label %2582, !prof !32, !nosanitize !30

2581:                                             ; preds = %2572
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2582:                                             ; preds = %2572
  %2583 = extractvalue { i64, i1 } %2579, 0, !nosanitize !30
  %2584 = load ptr, ptr %2557, align 8, !tbaa !33
  %2585 = trunc i64 %2 to i32
  %2586 = xor i32 %2585, 65535
  %2587 = trunc i32 %2586 to i8
  store i64 %2583, ptr %2558, align 8, !tbaa !31
  %2588 = getelementptr inbounds nuw i8, ptr %2584, i64 %2578
  store i8 %2587, ptr %2588, align 1, !tbaa !28
  %2589 = load i64, ptr %2558, align 8, !tbaa !31
  %2590 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2589, i64 1), !nosanitize !30
  %2591 = extractvalue { i64, i1 } %2590, 1, !nosanitize !30
  br i1 %2591, label %2592, label %2593, !prof !32, !nosanitize !30

2592:                                             ; preds = %2582
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2593:                                             ; preds = %2582
  %2594 = extractvalue { i64, i1 } %2590, 0, !nosanitize !30
  %2595 = load ptr, ptr %2557, align 8, !tbaa !33
  %2596 = lshr i32 %2586, 8
  %2597 = trunc i32 %2596 to i8
  store i64 %2594, ptr %2558, align 8, !tbaa !31
  %2598 = getelementptr inbounds nuw i8, ptr %2595, i64 %2589
  store i8 %2597, ptr %2598, align 1, !tbaa !28
  %2599 = icmp eq i64 %2, 0
  br i1 %2599, label %2604, label %2600

2600:                                             ; preds = %2593
  %2601 = load ptr, ptr %2557, align 8, !tbaa !33
  %2602 = load i64, ptr %2558, align 8, !tbaa !31
  %2603 = getelementptr inbounds nuw i8, ptr %2601, i64 %2602
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2603, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %2604

2604:                                             ; preds = %2600, %2593
  %2605 = load i64, ptr %2558, align 8, !tbaa !31
  %2606 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2605, i64 %2), !nosanitize !30
  %2607 = extractvalue { i64, i1 } %2606, 1, !nosanitize !30
  br i1 %2607, label %2608, label %2609, !prof !32, !nosanitize !30

2608:                                             ; preds = %2604
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2609:                                             ; preds = %2604
  %2610 = extractvalue { i64, i1 } %2606, 0, !nosanitize !30
  store i64 %2610, ptr %2558, align 8, !tbaa !31
  br label %4611

2611:                                             ; preds = %2447
  br i1 %2442, label %2612, label %3041

2612:                                             ; preds = %2611
  %2613 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2), !nosanitize !30
  %2614 = extractvalue { i32, i1 } %2613, 1, !nosanitize !30
  br i1 %2454, label %2616, label %2656

2615:                                             ; preds = %3068, %2640
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

2616:                                             ; preds = %2612
  br i1 %2614, label %2446, label %2617, !prof !32, !nosanitize !30

2617:                                             ; preds = %2616
  %2618 = extractvalue { i32, i1 } %2613, 0, !nosanitize !30
  %2619 = and i32 %2618, 65535
  %2620 = shl i32 %2618, %2453
  %2621 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2622 = load i16, ptr %2621, align 8, !tbaa !25
  %2623 = trunc i32 %2620 to i16
  %2624 = or i16 %2622, %2623
  store i16 %2624, ptr %2621, align 8, !tbaa !25
  %2625 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2626 = load i64, ptr %2625, align 8, !tbaa !31
  %2627 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2626, i64 1), !nosanitize !30
  %2628 = extractvalue { i64, i1 } %2627, 1, !nosanitize !30
  br i1 %2628, label %2629, label %2630, !prof !32, !nosanitize !30

2629:                                             ; preds = %2617
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2630:                                             ; preds = %2617
  %2631 = extractvalue { i64, i1 } %2627, 0, !nosanitize !30
  %2632 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2633 = load ptr, ptr %2632, align 8, !tbaa !33
  %2634 = trunc i16 %2624 to i8
  store i64 %2631, ptr %2625, align 8, !tbaa !31
  %2635 = getelementptr inbounds nuw i8, ptr %2633, i64 %2626
  store i8 %2634, ptr %2635, align 1, !tbaa !28
  %2636 = load i64, ptr %2625, align 8, !tbaa !31
  %2637 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2636, i64 1), !nosanitize !30
  %2638 = extractvalue { i64, i1 } %2637, 1, !nosanitize !30
  br i1 %2638, label %2639, label %2640, !prof !32, !nosanitize !30

2639:                                             ; preds = %3044, %2656, %2650, %2630
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2640:                                             ; preds = %2630
  %2641 = extractvalue { i64, i1 } %2637, 0, !nosanitize !30
  %2642 = load ptr, ptr %2632, align 8, !tbaa !33
  %2643 = load i16, ptr %2621, align 8, !tbaa !25
  %2644 = lshr i16 %2643, 8
  %2645 = trunc nuw i16 %2644 to i8
  store i64 %2641, ptr %2625, align 8, !tbaa !31
  %2646 = getelementptr inbounds nuw i8, ptr %2642, i64 %2636
  store i8 %2645, ptr %2646, align 1, !tbaa !28
  %2647 = load i32, ptr %2452, align 4, !tbaa !26
  %2648 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2647), !nosanitize !30
  %2649 = extractvalue { i32, i1 } %2648, 1, !nosanitize !30
  br i1 %2649, label %2615, label %2650, !prof !32, !nosanitize !30

2650:                                             ; preds = %2640
  %2651 = extractvalue { i32, i1 } %2648, 0, !nosanitize !30
  %2652 = lshr i32 %2619, %2651
  %2653 = trunc nuw i32 %2652 to i16
  store i16 %2653, ptr %2621, align 8, !tbaa !25
  %2654 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2647, i32 -13), !nosanitize !30
  %2655 = extractvalue { i32, i1 } %2654, 1, !nosanitize !30
  br i1 %2655, label %2639, label %2666, !prof !32, !nosanitize !30

2656:                                             ; preds = %2612
  br i1 %2614, label %2639, label %2657, !prof !32, !nosanitize !30

2657:                                             ; preds = %2656
  %2658 = extractvalue { i32, i1 } %2613, 0, !nosanitize !30
  %2659 = shl i32 %2658, %2453
  %2660 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2661 = load i16, ptr %2660, align 8, !tbaa !25
  %2662 = trunc i32 %2659 to i16
  %2663 = or i16 %2661, %2662
  store i16 %2663, ptr %2660, align 8, !tbaa !25
  %2664 = add nsw i32 %2453, 3
  %2665 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2664, 0
  br label %2666

2666:                                             ; preds = %2657, %2650
  %2667 = phi i16 [ %2653, %2650 ], [ %2663, %2657 ]
  %2668 = phi { i32, i1 } [ %2654, %2650 ], [ %2665, %2657 ]
  %2669 = extractvalue { i32, i1 } %2668, 0
  store i32 %2669, ptr %2452, align 4, !tbaa !26
  %2670 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %2671 = load i32, ptr %2670, align 4, !tbaa !29
  %2672 = icmp eq i32 %2671, 0
  br i1 %2672, label %.loopexit250, label %2673

2673:                                             ; preds = %2666
  %2674 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %2675 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2676 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2677 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %2678

2678:                                             ; preds = %2997, %2673
  %2679 = phi i16 [ %2998, %2997 ], [ %2667, %2673 ]
  %2680 = phi i32 [ %2999, %2997 ], [ %2669, %2673 ]
  %2681 = phi i32 [ %2700, %2997 ], [ 0, %2673 ]
  %2682 = load ptr, ptr %2674, align 8, !tbaa !79
  %2683 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2681, i32 2)
  %2684 = extractvalue { i32, i1 } %2683, 0, !nosanitize !30
  %2685 = extractvalue { i32, i1 } %2683, 1, !nosanitize !30
  br i1 %2685, label %2686, label %2687, !prof !32, !nosanitize !30

2686:                                             ; preds = %2678
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2687:                                             ; preds = %2678
  %2688 = add nuw i32 %2681, 1
  %2689 = zext i32 %2681 to i64
  %2690 = getelementptr inbounds nuw i8, ptr %2682, i64 %2689
  %2691 = load i8, ptr %2690, align 1, !tbaa !28
  %2692 = zext i8 %2691 to i32
  %2693 = zext i32 %2688 to i64
  %2694 = getelementptr inbounds nuw i8, ptr %2682, i64 %2693
  %2695 = load i8, ptr %2694, align 1, !tbaa !28
  %2696 = zext i8 %2695 to i32
  %2697 = shl nuw nsw i32 %2696, 8
  %2698 = or disjoint i32 %2697, %2692
  %2699 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2684, i32 1), !nosanitize !30
  %2700 = extractvalue { i32, i1 } %2699, 0, !nosanitize !30
  %2701 = extractvalue { i32, i1 } %2699, 1, !nosanitize !30
  br i1 %2701, label %2702, label %2703, !prof !32, !nosanitize !30

2702:                                             ; preds = %2687
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2703:                                             ; preds = %2687
  %2704 = zext i32 %2684 to i64
  %2705 = getelementptr inbounds nuw i8, ptr %2682, i64 %2704
  %2706 = load i8, ptr %2705, align 1, !tbaa !28
  %2707 = zext i8 %2706 to i32
  %2708 = icmp eq i32 %2698, 0
  %2709 = zext i8 %2706 to i64
  br i1 %2708, label %2710, label %2757

2710:                                             ; preds = %2703
  %2711 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2709
  %2712 = getelementptr inbounds nuw i8, ptr %2711, i64 2
  %2713 = load i16, ptr %2712, align 2, !tbaa !28
  %2714 = zext i16 %2713 to i32
  %2715 = sub nsw i32 16, %2714
  %2716 = icmp sgt i32 %2680, %2715
  %2717 = load i16, ptr %2711, align 4, !tbaa !28
  %2718 = zext i16 %2717 to i32
  %2719 = shl i32 %2718, %2680
  %2720 = trunc i32 %2719 to i16
  %2721 = or i16 %2679, %2720
  store i16 %2721, ptr %2675, align 8, !tbaa !25
  br i1 %2716, label %2723, label %2754

2722:                                             ; preds = %2855, %2845, %2821, %2815, %2787, %2737
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

2723:                                             ; preds = %2710
  %2724 = load i64, ptr %2676, align 8, !tbaa !31
  %2725 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2724, i64 1), !nosanitize !30
  %2726 = extractvalue { i64, i1 } %2725, 1, !nosanitize !30
  br i1 %2726, label %2727, label %2728, !prof !32, !nosanitize !30

2727:                                             ; preds = %2723
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2728:                                             ; preds = %2723
  %2729 = extractvalue { i64, i1 } %2725, 0, !nosanitize !30
  %2730 = load ptr, ptr %2677, align 8, !tbaa !33
  %2731 = trunc i16 %2721 to i8
  store i64 %2729, ptr %2676, align 8, !tbaa !31
  %2732 = getelementptr inbounds nuw i8, ptr %2730, i64 %2724
  store i8 %2731, ptr %2732, align 1, !tbaa !28
  %2733 = load i64, ptr %2676, align 8, !tbaa !31
  %2734 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2733, i64 1), !nosanitize !30
  %2735 = extractvalue { i64, i1 } %2734, 1, !nosanitize !30
  br i1 %2735, label %2736, label %2737, !prof !32, !nosanitize !30

2736:                                             ; preds = %2747, %2728
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2737:                                             ; preds = %2728
  %2738 = extractvalue { i64, i1 } %2734, 0, !nosanitize !30
  %2739 = load ptr, ptr %2677, align 8, !tbaa !33
  %2740 = load i16, ptr %2675, align 8, !tbaa !25
  %2741 = lshr i16 %2740, 8
  %2742 = trunc nuw i16 %2741 to i8
  store i64 %2738, ptr %2676, align 8, !tbaa !31
  %2743 = getelementptr inbounds nuw i8, ptr %2739, i64 %2733
  store i8 %2742, ptr %2743, align 1, !tbaa !28
  %2744 = load i32, ptr %2452, align 4, !tbaa !26
  %2745 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2744), !nosanitize !30
  %2746 = extractvalue { i32, i1 } %2745, 1, !nosanitize !30
  br i1 %2746, label %2722, label %2747, !prof !32, !nosanitize !30

2747:                                             ; preds = %2737
  %2748 = extractvalue { i32, i1 } %2745, 0, !nosanitize !30
  %2749 = lshr i32 %2718, %2748
  %2750 = trunc nuw i32 %2749 to i16
  store i16 %2750, ptr %2675, align 8, !tbaa !25
  %2751 = add nsw i32 %2714, -16
  %2752 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2744, i32 %2751), !nosanitize !30
  %2753 = extractvalue { i32, i1 } %2752, 1, !nosanitize !30
  br i1 %2753, label %2736, label %2993, !prof !32, !nosanitize !30

2754:                                             ; preds = %2710
  %2755 = add nsw i32 %2680, %2714
  %2756 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2755, 0
  br label %2993

2757:                                             ; preds = %2703
  %2758 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %2709
  %2759 = load i8, ptr %2758, align 1, !tbaa !28
  %2760 = zext i8 %2759 to i64
  %2761 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2760
  %2762 = getelementptr inbounds nuw i8, ptr %2761, i64 1028
  %2763 = getelementptr inbounds nuw i8, ptr %2761, i64 1030
  %2764 = load i16, ptr %2763, align 2, !tbaa !28
  %2765 = zext i16 %2764 to i32
  %2766 = sub nsw i32 16, %2765
  %2767 = icmp sgt i32 %2680, %2766
  %2768 = load i16, ptr %2762, align 4, !tbaa !28
  %2769 = zext i16 %2768 to i32
  %2770 = shl i32 %2769, %2680
  %2771 = trunc i32 %2770 to i16
  %2772 = or i16 %2679, %2771
  store i16 %2772, ptr %2675, align 8, !tbaa !25
  br i1 %2767, label %2773, label %2804

2773:                                             ; preds = %2757
  %2774 = load i64, ptr %2676, align 8, !tbaa !31
  %2775 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2774, i64 1), !nosanitize !30
  %2776 = extractvalue { i64, i1 } %2775, 1, !nosanitize !30
  br i1 %2776, label %2777, label %2778, !prof !32, !nosanitize !30

2777:                                             ; preds = %2773
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2778:                                             ; preds = %2773
  %2779 = extractvalue { i64, i1 } %2775, 0, !nosanitize !30
  %2780 = load ptr, ptr %2677, align 8, !tbaa !33
  %2781 = trunc i16 %2772 to i8
  store i64 %2779, ptr %2676, align 8, !tbaa !31
  %2782 = getelementptr inbounds nuw i8, ptr %2780, i64 %2774
  store i8 %2781, ptr %2782, align 1, !tbaa !28
  %2783 = load i64, ptr %2676, align 8, !tbaa !31
  %2784 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2783, i64 1), !nosanitize !30
  %2785 = extractvalue { i64, i1 } %2784, 1, !nosanitize !30
  br i1 %2785, label %2786, label %2787, !prof !32, !nosanitize !30

2786:                                             ; preds = %2797, %2778
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2787:                                             ; preds = %2778
  %2788 = extractvalue { i64, i1 } %2784, 0, !nosanitize !30
  %2789 = load ptr, ptr %2677, align 8, !tbaa !33
  %2790 = load i16, ptr %2675, align 8, !tbaa !25
  %2791 = lshr i16 %2790, 8
  %2792 = trunc nuw i16 %2791 to i8
  store i64 %2788, ptr %2676, align 8, !tbaa !31
  %2793 = getelementptr inbounds nuw i8, ptr %2789, i64 %2783
  store i8 %2792, ptr %2793, align 1, !tbaa !28
  %2794 = load i32, ptr %2452, align 4, !tbaa !26
  %2795 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2794), !nosanitize !30
  %2796 = extractvalue { i32, i1 } %2795, 1, !nosanitize !30
  br i1 %2796, label %2722, label %2797, !prof !32, !nosanitize !30

2797:                                             ; preds = %2787
  %2798 = extractvalue { i32, i1 } %2795, 0, !nosanitize !30
  %2799 = lshr i32 %2769, %2798
  %2800 = trunc nuw i32 %2799 to i16
  store i16 %2800, ptr %2675, align 8, !tbaa !25
  %2801 = add nsw i32 %2765, -16
  %2802 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2794, i32 %2801), !nosanitize !30
  %2803 = extractvalue { i32, i1 } %2802, 1, !nosanitize !30
  br i1 %2803, label %2786, label %2807, !prof !32, !nosanitize !30

2804:                                             ; preds = %2757
  %2805 = add nsw i32 %2680, %2765
  %2806 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2805, 0
  br label %2807

2807:                                             ; preds = %2804, %2797
  %2808 = phi i16 [ %2800, %2797 ], [ %2772, %2804 ]
  %2809 = phi { i32, i1 } [ %2802, %2797 ], [ %2806, %2804 ]
  %2810 = extractvalue { i32, i1 } %2809, 0
  store i32 %2810, ptr %2452, align 4, !tbaa !26
  %2811 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %2760
  %2812 = load i32, ptr %2811, align 4, !tbaa !4
  %2813 = add i8 %2759, -28
  %2814 = icmp ult i8 %2813, -20
  br i1 %2814, label %2875, label %2815

2815:                                             ; preds = %2807
  %2816 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %2760
  %2817 = load i32, ptr %2816, align 4, !tbaa !4
  %2818 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2707, i32 %2817), !nosanitize !30
  %2819 = extractvalue { i32, i1 } %2818, 0, !nosanitize !30
  %2820 = extractvalue { i32, i1 } %2818, 1, !nosanitize !30
  br i1 %2820, label %2722, label %2821, !prof !32, !nosanitize !30

2821:                                             ; preds = %2815
  %2822 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2812), !nosanitize !30
  %2823 = extractvalue { i32, i1 } %2822, 1, !nosanitize !30
  br i1 %2823, label %2722, label %2824, !prof !32, !nosanitize !30

2824:                                             ; preds = %2821
  %2825 = extractvalue { i32, i1 } %2822, 0, !nosanitize !30
  %2826 = icmp sgt i32 %2810, %2825
  br i1 %2826, label %2827, label %2865

2827:                                             ; preds = %2824
  %2828 = and i32 %2819, 65535
  %2829 = shl i32 %2819, %2810
  %2830 = trunc i32 %2829 to i16
  %2831 = or i16 %2808, %2830
  store i16 %2831, ptr %2675, align 8, !tbaa !25
  %2832 = load i64, ptr %2676, align 8, !tbaa !31
  %2833 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2832, i64 1), !nosanitize !30
  %2834 = extractvalue { i64, i1 } %2833, 1, !nosanitize !30
  br i1 %2834, label %2835, label %2836, !prof !32, !nosanitize !30

2835:                                             ; preds = %2827
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2836:                                             ; preds = %2827
  %2837 = extractvalue { i64, i1 } %2833, 0, !nosanitize !30
  %2838 = load ptr, ptr %2677, align 8, !tbaa !33
  %2839 = trunc i16 %2831 to i8
  store i64 %2837, ptr %2676, align 8, !tbaa !31
  %2840 = getelementptr inbounds nuw i8, ptr %2838, i64 %2832
  store i8 %2839, ptr %2840, align 1, !tbaa !28
  %2841 = load i64, ptr %2676, align 8, !tbaa !31
  %2842 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2841, i64 1), !nosanitize !30
  %2843 = extractvalue { i64, i1 } %2842, 1, !nosanitize !30
  br i1 %2843, label %2844, label %2845, !prof !32, !nosanitize !30

2844:                                             ; preds = %2865, %2861, %2836
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2845:                                             ; preds = %2836
  %2846 = extractvalue { i64, i1 } %2842, 0, !nosanitize !30
  %2847 = load ptr, ptr %2677, align 8, !tbaa !33
  %2848 = load i16, ptr %2675, align 8, !tbaa !25
  %2849 = lshr i16 %2848, 8
  %2850 = trunc nuw i16 %2849 to i8
  store i64 %2846, ptr %2676, align 8, !tbaa !31
  %2851 = getelementptr inbounds nuw i8, ptr %2847, i64 %2841
  store i8 %2850, ptr %2851, align 1, !tbaa !28
  %2852 = load i32, ptr %2452, align 4, !tbaa !26
  %2853 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2852), !nosanitize !30
  %2854 = extractvalue { i32, i1 } %2853, 1, !nosanitize !30
  br i1 %2854, label %2722, label %2855, !prof !32, !nosanitize !30

2855:                                             ; preds = %2845
  %2856 = extractvalue { i32, i1 } %2853, 0, !nosanitize !30
  %2857 = lshr i32 %2828, %2856
  %2858 = trunc nuw i32 %2857 to i16
  store i16 %2858, ptr %2675, align 8, !tbaa !25
  %2859 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2812, i32 -16)
  %2860 = extractvalue { i32, i1 } %2859, 1, !nosanitize !30
  br i1 %2860, label %2722, label %2861, !prof !32, !nosanitize !30

2861:                                             ; preds = %2855
  %2862 = extractvalue { i32, i1 } %2859, 0, !nosanitize !30
  %2863 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2852, i32 %2862), !nosanitize !30
  %2864 = extractvalue { i32, i1 } %2863, 1, !nosanitize !30
  br i1 %2864, label %2844, label %2871, !prof !32, !nosanitize !30

2865:                                             ; preds = %2824
  %2866 = shl i32 %2819, %2810
  %2867 = trunc i32 %2866 to i16
  %2868 = or i16 %2808, %2867
  store i16 %2868, ptr %2675, align 8, !tbaa !25
  %2869 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2810, i32 %2812), !nosanitize !30
  %2870 = extractvalue { i32, i1 } %2869, 1, !nosanitize !30
  br i1 %2870, label %2844, label %2871, !prof !32, !nosanitize !30

2871:                                             ; preds = %2865, %2861
  %2872 = phi i16 [ %2858, %2861 ], [ %2868, %2865 ]
  %2873 = phi { i32, i1 } [ %2863, %2861 ], [ %2869, %2865 ]
  %2874 = extractvalue { i32, i1 } %2873, 0
  store i32 %2874, ptr %2452, align 4, !tbaa !26
  br label %2875

2875:                                             ; preds = %2871, %2807
  %2876 = phi i16 [ %2872, %2871 ], [ %2808, %2807 ]
  %2877 = phi i32 [ %2874, %2871 ], [ %2810, %2807 ]
  %2878 = add nsw i32 %2698, -1
  %2879 = icmp samesign ult i32 %2698, 257
  %2880 = zext nneg i32 %2878 to i64
  %2881 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2880
  %2882 = lshr i32 %2878, 7
  %2883 = zext nneg i32 %2882 to i64
  %2884 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2883
  %2885 = getelementptr inbounds nuw i8, ptr %2884, i64 256
  %2886 = select i1 %2879, ptr %2881, ptr %2885
  %2887 = load i8, ptr %2886, align 1, !tbaa !28
  %2888 = zext i8 %2887 to i64
  %2889 = getelementptr inbounds nuw [4 x i8], ptr @static_dtree, i64 %2888
  %2890 = icmp sgt i32 %2877, 11
  %2891 = load i16, ptr %2889, align 4, !tbaa !28
  %2892 = zext i16 %2891 to i32
  %2893 = shl i32 %2892, %2877
  %2894 = trunc i32 %2893 to i16
  %2895 = or i16 %2876, %2894
  store i16 %2895, ptr %2675, align 8, !tbaa !25
  br i1 %2890, label %2897, label %2927

2896:                                             ; preds = %2911
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

2897:                                             ; preds = %2875
  %2898 = load i64, ptr %2676, align 8, !tbaa !31
  %2899 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2898, i64 1), !nosanitize !30
  %2900 = extractvalue { i64, i1 } %2899, 1, !nosanitize !30
  br i1 %2900, label %2901, label %2902, !prof !32, !nosanitize !30

2901:                                             ; preds = %2897
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2902:                                             ; preds = %2897
  %2903 = extractvalue { i64, i1 } %2899, 0, !nosanitize !30
  %2904 = load ptr, ptr %2677, align 8, !tbaa !33
  %2905 = trunc i16 %2895 to i8
  store i64 %2903, ptr %2676, align 8, !tbaa !31
  %2906 = getelementptr inbounds nuw i8, ptr %2904, i64 %2898
  store i8 %2905, ptr %2906, align 1, !tbaa !28
  %2907 = load i64, ptr %2676, align 8, !tbaa !31
  %2908 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2907, i64 1), !nosanitize !30
  %2909 = extractvalue { i64, i1 } %2908, 1, !nosanitize !30
  br i1 %2909, label %2910, label %2911, !prof !32, !nosanitize !30

2910:                                             ; preds = %2921, %2902
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2911:                                             ; preds = %2902
  %2912 = extractvalue { i64, i1 } %2908, 0, !nosanitize !30
  %2913 = load ptr, ptr %2677, align 8, !tbaa !33
  %2914 = load i16, ptr %2675, align 8, !tbaa !25
  %2915 = lshr i16 %2914, 8
  %2916 = trunc nuw i16 %2915 to i8
  store i64 %2912, ptr %2676, align 8, !tbaa !31
  %2917 = getelementptr inbounds nuw i8, ptr %2913, i64 %2907
  store i8 %2916, ptr %2917, align 1, !tbaa !28
  %2918 = load i32, ptr %2452, align 4, !tbaa !26
  %2919 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2918), !nosanitize !30
  %2920 = extractvalue { i32, i1 } %2919, 1, !nosanitize !30
  br i1 %2920, label %2896, label %2921, !prof !32, !nosanitize !30

2921:                                             ; preds = %2911
  %2922 = extractvalue { i32, i1 } %2919, 0, !nosanitize !30
  %2923 = lshr i32 %2892, %2922
  %2924 = trunc nuw i32 %2923 to i16
  store i16 %2924, ptr %2675, align 8, !tbaa !25
  %2925 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2918, i32 -11), !nosanitize !30
  %2926 = extractvalue { i32, i1 } %2925, 1, !nosanitize !30
  br i1 %2926, label %2910, label %2930, !prof !32, !nosanitize !30

2927:                                             ; preds = %2875
  %2928 = add nsw i32 %2877, 5
  %2929 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2928, 0
  br label %2930

2930:                                             ; preds = %2927, %2921
  %2931 = phi i16 [ %2924, %2921 ], [ %2895, %2927 ]
  %2932 = phi { i32, i1 } [ %2925, %2921 ], [ %2929, %2927 ]
  %2933 = extractvalue { i32, i1 } %2932, 0
  store i32 %2933, ptr %2452, align 4, !tbaa !26
  %2934 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %2888
  %2935 = load i32, ptr %2934, align 4, !tbaa !4
  %2936 = icmp ult i8 %2887, 4
  br i1 %2936, label %2997, label %2937

2937:                                             ; preds = %2930
  %2938 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %2888
  %2939 = load i32, ptr %2938, align 4, !tbaa !4
  %2940 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2878, i32 %2939), !nosanitize !30
  %2941 = extractvalue { i32, i1 } %2940, 0, !nosanitize !30
  %2942 = extractvalue { i32, i1 } %2940, 1, !nosanitize !30
  br i1 %2942, label %.loopexit, label %2943, !prof !32, !nosanitize !30

.loopexit:                                        ; preds = %2977, %2967, %2943, %2937, %3022
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

2943:                                             ; preds = %2937
  %2944 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2935), !nosanitize !30
  %2945 = extractvalue { i32, i1 } %2944, 1, !nosanitize !30
  br i1 %2945, label %.loopexit, label %2946, !prof !32, !nosanitize !30

2946:                                             ; preds = %2943
  %2947 = extractvalue { i32, i1 } %2944, 0, !nosanitize !30
  %2948 = icmp sgt i32 %2933, %2947
  br i1 %2948, label %2949, label %2987

2949:                                             ; preds = %2946
  %2950 = and i32 %2941, 65535
  %2951 = shl i32 %2941, %2933
  %2952 = trunc i32 %2951 to i16
  %2953 = or i16 %2931, %2952
  store i16 %2953, ptr %2675, align 8, !tbaa !25
  %2954 = load i64, ptr %2676, align 8, !tbaa !31
  %2955 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2954, i64 1), !nosanitize !30
  %2956 = extractvalue { i64, i1 } %2955, 1, !nosanitize !30
  br i1 %2956, label %2957, label %2958, !prof !32, !nosanitize !30

2957:                                             ; preds = %2949
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2958:                                             ; preds = %2949
  %2959 = extractvalue { i64, i1 } %2955, 0, !nosanitize !30
  %2960 = load ptr, ptr %2677, align 8, !tbaa !33
  %2961 = trunc i16 %2953 to i8
  store i64 %2959, ptr %2676, align 8, !tbaa !31
  %2962 = getelementptr inbounds nuw i8, ptr %2960, i64 %2954
  store i8 %2961, ptr %2962, align 1, !tbaa !28
  %2963 = load i64, ptr %2676, align 8, !tbaa !31
  %2964 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2963, i64 1), !nosanitize !30
  %2965 = extractvalue { i64, i1 } %2964, 1, !nosanitize !30
  br i1 %2965, label %2966, label %2967, !prof !32, !nosanitize !30

2966:                                             ; preds = %2987, %2983, %2958
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2967:                                             ; preds = %2958
  %2968 = extractvalue { i64, i1 } %2964, 0, !nosanitize !30
  %2969 = load ptr, ptr %2677, align 8, !tbaa !33
  %2970 = load i16, ptr %2675, align 8, !tbaa !25
  %2971 = lshr i16 %2970, 8
  %2972 = trunc nuw i16 %2971 to i8
  store i64 %2968, ptr %2676, align 8, !tbaa !31
  %2973 = getelementptr inbounds nuw i8, ptr %2969, i64 %2963
  store i8 %2972, ptr %2973, align 1, !tbaa !28
  %2974 = load i32, ptr %2452, align 4, !tbaa !26
  %2975 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2974), !nosanitize !30
  %2976 = extractvalue { i32, i1 } %2975, 1, !nosanitize !30
  br i1 %2976, label %.loopexit, label %2977, !prof !32, !nosanitize !30

2977:                                             ; preds = %2967
  %2978 = extractvalue { i32, i1 } %2975, 0, !nosanitize !30
  %2979 = lshr i32 %2950, %2978
  %2980 = trunc nuw i32 %2979 to i16
  store i16 %2980, ptr %2675, align 8, !tbaa !25
  %2981 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2935, i32 -16)
  %2982 = extractvalue { i32, i1 } %2981, 1, !nosanitize !30
  br i1 %2982, label %.loopexit, label %2983, !prof !32, !nosanitize !30

2983:                                             ; preds = %2977
  %2984 = extractvalue { i32, i1 } %2981, 0, !nosanitize !30
  %2985 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2974, i32 %2984), !nosanitize !30
  %2986 = extractvalue { i32, i1 } %2985, 1, !nosanitize !30
  br i1 %2986, label %2966, label %2993, !prof !32, !nosanitize !30

2987:                                             ; preds = %2946
  %2988 = shl i32 %2941, %2933
  %2989 = trunc i32 %2988 to i16
  %2990 = or i16 %2931, %2989
  store i16 %2990, ptr %2675, align 8, !tbaa !25
  %2991 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2933, i32 %2935), !nosanitize !30
  %2992 = extractvalue { i32, i1 } %2991, 1, !nosanitize !30
  br i1 %2992, label %2966, label %2993, !prof !32, !nosanitize !30

2993:                                             ; preds = %2987, %2983, %2754, %2747
  %2994 = phi i16 [ %2721, %2754 ], [ %2750, %2747 ], [ %2980, %2983 ], [ %2990, %2987 ]
  %2995 = phi { i32, i1 } [ %2756, %2754 ], [ %2752, %2747 ], [ %2985, %2983 ], [ %2991, %2987 ]
  %2996 = extractvalue { i32, i1 } %2995, 0
  store i32 %2996, ptr %2452, align 4, !tbaa !26
  br label %2997

2997:                                             ; preds = %2993, %2930
  %2998 = phi i16 [ %2931, %2930 ], [ %2994, %2993 ]
  %2999 = phi i32 [ %2933, %2930 ], [ %2996, %2993 ]
  %3000 = load i32, ptr %2670, align 4, !tbaa !29
  %3001 = icmp ult i32 %2700, %3000
  br i1 %3001, label %2678, label %.loopexit250, !llvm.loop !80

.loopexit250:                                     ; preds = %2997, %2666
  %3002 = phi i16 [ %2667, %2666 ], [ %2998, %2997 ]
  %3003 = phi i32 [ %2669, %2666 ], [ %2999, %2997 ]
  %3004 = icmp sgt i32 %3003, 9
  %3005 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %3004, label %3006, label %3035

3006:                                             ; preds = %.loopexit250
  %3007 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3008 = load i64, ptr %3007, align 8, !tbaa !31
  %3009 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3008, i64 1), !nosanitize !30
  %3010 = extractvalue { i64, i1 } %3009, 1, !nosanitize !30
  br i1 %3010, label %3011, label %3012, !prof !32, !nosanitize !30

3011:                                             ; preds = %3006
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3012:                                             ; preds = %3006
  %3013 = extractvalue { i64, i1 } %3009, 0, !nosanitize !30
  %3014 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3015 = load ptr, ptr %3014, align 8, !tbaa !33
  %3016 = trunc i16 %3002 to i8
  store i64 %3013, ptr %3007, align 8, !tbaa !31
  %3017 = getelementptr inbounds nuw i8, ptr %3015, i64 %3008
  store i8 %3016, ptr %3017, align 1, !tbaa !28
  %3018 = load i64, ptr %3007, align 8, !tbaa !31
  %3019 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3018, i64 1), !nosanitize !30
  %3020 = extractvalue { i64, i1 } %3019, 1, !nosanitize !30
  br i1 %3020, label %3021, label %3022, !prof !32, !nosanitize !30

3021:                                             ; preds = %3032, %3012
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3022:                                             ; preds = %3012
  %3023 = extractvalue { i64, i1 } %3019, 0, !nosanitize !30
  %3024 = load ptr, ptr %3014, align 8, !tbaa !33
  %3025 = load i16, ptr %3005, align 8, !tbaa !25
  %3026 = lshr i16 %3025, 8
  %3027 = trunc nuw i16 %3026 to i8
  store i64 %3023, ptr %3007, align 8, !tbaa !31
  %3028 = getelementptr inbounds nuw i8, ptr %3024, i64 %3018
  store i8 %3027, ptr %3028, align 1, !tbaa !28
  %3029 = load i32, ptr %2452, align 4, !tbaa !26
  %3030 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3029), !nosanitize !30
  %3031 = extractvalue { i32, i1 } %3030, 1, !nosanitize !30
  br i1 %3031, label %.loopexit, label %3032, !prof !32, !nosanitize !30

3032:                                             ; preds = %3022
  store i16 0, ptr %3005, align 8, !tbaa !25
  %3033 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3029, i32 -9), !nosanitize !30
  %3034 = extractvalue { i32, i1 } %3033, 1, !nosanitize !30
  br i1 %3034, label %3021, label %3038, !prof !32, !nosanitize !30

3035:                                             ; preds = %.loopexit250
  %3036 = add nsw i32 %3003, 7
  %3037 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3036, 0
  br label %3038

3038:                                             ; preds = %3035, %3032
  %3039 = phi { i32, i1 } [ %3033, %3032 ], [ %3037, %3035 ]
  %3040 = extractvalue { i32, i1 } %3039, 0
  store i32 %3040, ptr %2452, align 4, !tbaa !26
  br label %4611

3041:                                             ; preds = %2611
  %3042 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 4), !nosanitize !30
  %3043 = extractvalue { i32, i1 } %3042, 1, !nosanitize !30
  br i1 %2454, label %3044, label %3084

3044:                                             ; preds = %3041
  br i1 %3043, label %2639, label %3045, !prof !32, !nosanitize !30

3045:                                             ; preds = %3044
  %3046 = extractvalue { i32, i1 } %3042, 0, !nosanitize !30
  %3047 = and i32 %3046, 65535
  %3048 = shl i32 %3046, %2453
  %3049 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3050 = load i16, ptr %3049, align 8, !tbaa !25
  %3051 = trunc i32 %3048 to i16
  %3052 = or i16 %3050, %3051
  store i16 %3052, ptr %3049, align 8, !tbaa !25
  %3053 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3054 = load i64, ptr %3053, align 8, !tbaa !31
  %3055 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3054, i64 1), !nosanitize !30
  %3056 = extractvalue { i64, i1 } %3055, 1, !nosanitize !30
  br i1 %3056, label %3057, label %3058, !prof !32, !nosanitize !30

3057:                                             ; preds = %3045
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3058:                                             ; preds = %3045
  %3059 = extractvalue { i64, i1 } %3055, 0, !nosanitize !30
  %3060 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3061 = load ptr, ptr %3060, align 8, !tbaa !33
  %3062 = trunc i16 %3052 to i8
  store i64 %3059, ptr %3053, align 8, !tbaa !31
  %3063 = getelementptr inbounds nuw i8, ptr %3061, i64 %3054
  store i8 %3062, ptr %3063, align 1, !tbaa !28
  %3064 = load i64, ptr %3053, align 8, !tbaa !31
  %3065 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3064, i64 1), !nosanitize !30
  %3066 = extractvalue { i64, i1 } %3065, 1, !nosanitize !30
  br i1 %3066, label %3067, label %3068, !prof !32, !nosanitize !30

3067:                                             ; preds = %3103, %3094, %3084, %3078, %3058
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3068:                                             ; preds = %3058
  %3069 = extractvalue { i64, i1 } %3065, 0, !nosanitize !30
  %3070 = load ptr, ptr %3060, align 8, !tbaa !33
  %3071 = load i16, ptr %3049, align 8, !tbaa !25
  %3072 = lshr i16 %3071, 8
  %3073 = trunc nuw i16 %3072 to i8
  store i64 %3069, ptr %3053, align 8, !tbaa !31
  %3074 = getelementptr inbounds nuw i8, ptr %3070, i64 %3064
  store i8 %3073, ptr %3074, align 1, !tbaa !28
  %3075 = load i32, ptr %2452, align 4, !tbaa !26
  %3076 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3075), !nosanitize !30
  %3077 = extractvalue { i32, i1 } %3076, 1, !nosanitize !30
  br i1 %3077, label %2615, label %3078, !prof !32, !nosanitize !30

3078:                                             ; preds = %3068
  %3079 = extractvalue { i32, i1 } %3076, 0, !nosanitize !30
  %3080 = lshr i32 %3047, %3079
  %3081 = trunc nuw i32 %3080 to i16
  store i16 %3081, ptr %3049, align 8, !tbaa !25
  %3082 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3075, i32 -13), !nosanitize !30
  %3083 = extractvalue { i32, i1 } %3082, 1, !nosanitize !30
  br i1 %3083, label %3067, label %3094, !prof !32, !nosanitize !30

3084:                                             ; preds = %3041
  br i1 %3043, label %3067, label %3085, !prof !32, !nosanitize !30

3085:                                             ; preds = %3084
  %3086 = extractvalue { i32, i1 } %3042, 0, !nosanitize !30
  %3087 = shl i32 %3086, %2453
  %3088 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3089 = load i16, ptr %3088, align 8, !tbaa !25
  %3090 = trunc i32 %3087 to i16
  %3091 = or i16 %3089, %3090
  store i16 %3091, ptr %3088, align 8, !tbaa !25
  %3092 = add nsw i32 %2453, 3
  %3093 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3092, 0
  br label %3094

3094:                                             ; preds = %3085, %3078
  %3095 = phi i16 [ %3081, %3078 ], [ %3091, %3085 ]
  %3096 = phi { i32, i1 } [ %3082, %3078 ], [ %3093, %3085 ]
  %3097 = extractvalue { i32, i1 } %3096, 0
  store i32 %3097, ptr %2452, align 4, !tbaa !26
  %3098 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %3099 = load i32, ptr %3098, align 8, !tbaa !73
  %3100 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3099, i32 1), !nosanitize !30
  %3101 = extractvalue { i32, i1 } %3100, 0, !nosanitize !30
  %3102 = extractvalue { i32, i1 } %3100, 1, !nosanitize !30
  br i1 %3102, label %3067, label %3103, !prof !32, !nosanitize !30

3103:                                             ; preds = %3094
  %3104 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %3105 = load i32, ptr %3104, align 8, !tbaa !76
  %3106 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3105, i32 1), !nosanitize !30
  %3107 = extractvalue { i32, i1 } %3106, 0, !nosanitize !30
  %3108 = extractvalue { i32, i1 } %3106, 1, !nosanitize !30
  br i1 %3108, label %3067, label %3109, !prof !32, !nosanitize !30

3109:                                             ; preds = %3103
  %3110 = add nuw nsw i32 %2441, 1
  %3111 = icmp sgt i32 %3097, 11
  %3112 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3101, i32 -257)
  %3113 = extractvalue { i32, i1 } %3112, 1, !nosanitize !30
  br i1 %3111, label %3114, label %3153

.loopexit261:                                     ; preds = %3303, %.loopexit260, %3328, %3244, %3208, %3192, %3169, %3153, %3137, %3114
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

3114:                                             ; preds = %3109
  br i1 %3113, label %.loopexit261, label %3115, !prof !32, !nosanitize !30

3115:                                             ; preds = %3114
  %3116 = extractvalue { i32, i1 } %3112, 0, !nosanitize !30
  %3117 = and i32 %3116, 65535
  %3118 = shl i32 %3116, %3097
  %3119 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3120 = trunc i32 %3118 to i16
  %3121 = or i16 %3095, %3120
  store i16 %3121, ptr %3119, align 8, !tbaa !25
  %3122 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3123 = load i64, ptr %3122, align 8, !tbaa !31
  %3124 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3123, i64 1), !nosanitize !30
  %3125 = extractvalue { i64, i1 } %3124, 1, !nosanitize !30
  br i1 %3125, label %3126, label %3127, !prof !32, !nosanitize !30

3126:                                             ; preds = %3115
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3127:                                             ; preds = %3115
  %3128 = extractvalue { i64, i1 } %3124, 0, !nosanitize !30
  %3129 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3130 = load ptr, ptr %3129, align 8, !tbaa !33
  %3131 = trunc i16 %3121 to i8
  store i64 %3128, ptr %3122, align 8, !tbaa !31
  %3132 = getelementptr inbounds nuw i8, ptr %3130, i64 %3123
  store i8 %3131, ptr %3132, align 1, !tbaa !28
  %3133 = load i64, ptr %3122, align 8, !tbaa !31
  %3134 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3133, i64 1), !nosanitize !30
  %3135 = extractvalue { i64, i1 } %3134, 1, !nosanitize !30
  br i1 %3135, label %3136, label %3137, !prof !32, !nosanitize !30

3136:                                             ; preds = %3147, %3127
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3137:                                             ; preds = %3127
  %3138 = extractvalue { i64, i1 } %3134, 0, !nosanitize !30
  %3139 = load ptr, ptr %3129, align 8, !tbaa !33
  %3140 = load i16, ptr %3119, align 8, !tbaa !25
  %3141 = lshr i16 %3140, 8
  %3142 = trunc nuw i16 %3141 to i8
  store i64 %3138, ptr %3122, align 8, !tbaa !31
  %3143 = getelementptr inbounds nuw i8, ptr %3139, i64 %3133
  store i8 %3142, ptr %3143, align 1, !tbaa !28
  %3144 = load i32, ptr %2452, align 4, !tbaa !26
  %3145 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3144), !nosanitize !30
  %3146 = extractvalue { i32, i1 } %3145, 1, !nosanitize !30
  br i1 %3146, label %.loopexit261, label %3147, !prof !32, !nosanitize !30

3147:                                             ; preds = %3137
  %3148 = extractvalue { i32, i1 } %3145, 0, !nosanitize !30
  %3149 = lshr i32 %3117, %3148
  %3150 = trunc nuw i32 %3149 to i16
  store i16 %3150, ptr %3119, align 8, !tbaa !25
  %3151 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3144, i32 -11), !nosanitize !30
  %3152 = extractvalue { i32, i1 } %3151, 1, !nosanitize !30
  br i1 %3152, label %3136, label %3162, !prof !32, !nosanitize !30

3153:                                             ; preds = %3109
  br i1 %3113, label %.loopexit261, label %3154, !prof !32, !nosanitize !30

3154:                                             ; preds = %3153
  %3155 = extractvalue { i32, i1 } %3112, 0, !nosanitize !30
  %3156 = shl i32 %3155, %3097
  %3157 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3158 = trunc i32 %3156 to i16
  %3159 = or i16 %3095, %3158
  store i16 %3159, ptr %3157, align 8, !tbaa !25
  %3160 = add nsw i32 %3097, 5
  %3161 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3160, 0
  br label %3162

3162:                                             ; preds = %3154, %3147
  %3163 = phi i16 [ %3150, %3147 ], [ %3159, %3154 ]
  %3164 = phi { i32, i1 } [ %3151, %3147 ], [ %3161, %3154 ]
  %3165 = extractvalue { i32, i1 } %3164, 0
  store i32 %3165, ptr %2452, align 4, !tbaa !26
  %3166 = icmp sgt i32 %3165, 11
  %3167 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3107, i32 -1)
  %3168 = extractvalue { i32, i1 } %3167, 1, !nosanitize !30
  br i1 %3166, label %3169, label %3208

3169:                                             ; preds = %3162
  br i1 %3168, label %.loopexit261, label %3170, !prof !32, !nosanitize !30

3170:                                             ; preds = %3169
  %3171 = extractvalue { i32, i1 } %3167, 0, !nosanitize !30
  %3172 = and i32 %3171, 65535
  %3173 = shl i32 %3171, %3165
  %3174 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3175 = trunc i32 %3173 to i16
  %3176 = or i16 %3163, %3175
  store i16 %3176, ptr %3174, align 8, !tbaa !25
  %3177 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3178 = load i64, ptr %3177, align 8, !tbaa !31
  %3179 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3178, i64 1), !nosanitize !30
  %3180 = extractvalue { i64, i1 } %3179, 1, !nosanitize !30
  br i1 %3180, label %3181, label %3182, !prof !32, !nosanitize !30

3181:                                             ; preds = %3170
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3182:                                             ; preds = %3170
  %3183 = extractvalue { i64, i1 } %3179, 0, !nosanitize !30
  %3184 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3185 = load ptr, ptr %3184, align 8, !tbaa !33
  %3186 = trunc i16 %3176 to i8
  store i64 %3183, ptr %3177, align 8, !tbaa !31
  %3187 = getelementptr inbounds nuw i8, ptr %3185, i64 %3178
  store i8 %3186, ptr %3187, align 1, !tbaa !28
  %3188 = load i64, ptr %3177, align 8, !tbaa !31
  %3189 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3188, i64 1), !nosanitize !30
  %3190 = extractvalue { i64, i1 } %3189, 1, !nosanitize !30
  br i1 %3190, label %3191, label %3192, !prof !32, !nosanitize !30

3191:                                             ; preds = %3202, %3182
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3192:                                             ; preds = %3182
  %3193 = extractvalue { i64, i1 } %3189, 0, !nosanitize !30
  %3194 = load ptr, ptr %3184, align 8, !tbaa !33
  %3195 = load i16, ptr %3174, align 8, !tbaa !25
  %3196 = lshr i16 %3195, 8
  %3197 = trunc nuw i16 %3196 to i8
  store i64 %3193, ptr %3177, align 8, !tbaa !31
  %3198 = getelementptr inbounds nuw i8, ptr %3194, i64 %3188
  store i8 %3197, ptr %3198, align 1, !tbaa !28
  %3199 = load i32, ptr %2452, align 4, !tbaa !26
  %3200 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3199), !nosanitize !30
  %3201 = extractvalue { i32, i1 } %3200, 1, !nosanitize !30
  br i1 %3201, label %.loopexit261, label %3202, !prof !32, !nosanitize !30

3202:                                             ; preds = %3192
  %3203 = extractvalue { i32, i1 } %3200, 0, !nosanitize !30
  %3204 = lshr i32 %3172, %3203
  %3205 = trunc nuw i32 %3204 to i16
  store i16 %3205, ptr %3174, align 8, !tbaa !25
  %3206 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3199, i32 -11), !nosanitize !30
  %3207 = extractvalue { i32, i1 } %3206, 1, !nosanitize !30
  br i1 %3207, label %3191, label %3217, !prof !32, !nosanitize !30

3208:                                             ; preds = %3162
  br i1 %3168, label %.loopexit261, label %3209, !prof !32, !nosanitize !30

3209:                                             ; preds = %3208
  %3210 = extractvalue { i32, i1 } %3167, 0, !nosanitize !30
  %3211 = shl i32 %3210, %3165
  %3212 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3213 = trunc i32 %3211 to i16
  %3214 = or i16 %3163, %3213
  store i16 %3214, ptr %3212, align 8, !tbaa !25
  %3215 = add nsw i32 %3165, 5
  %3216 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3215, 0
  br label %3217

3217:                                             ; preds = %3209, %3202
  %3218 = phi i16 [ %3205, %3202 ], [ %3214, %3209 ]
  %3219 = phi { i32, i1 } [ %3206, %3202 ], [ %3216, %3209 ]
  %3220 = extractvalue { i32, i1 } %3219, 0
  store i32 %3220, ptr %2452, align 4, !tbaa !26
  %3221 = icmp sgt i32 %3220, 12
  %3222 = add nsw i32 %2441, -3
  br i1 %3221, label %3223, label %3260

3223:                                             ; preds = %3217
  %3224 = and i32 %3222, 65535
  %3225 = shl i32 %3222, %3220
  %3226 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3227 = trunc i32 %3225 to i16
  %3228 = or i16 %3218, %3227
  store i16 %3228, ptr %3226, align 8, !tbaa !25
  %3229 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3230 = load i64, ptr %3229, align 8, !tbaa !31
  %3231 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3230, i64 1), !nosanitize !30
  %3232 = extractvalue { i64, i1 } %3231, 1, !nosanitize !30
  br i1 %3232, label %3233, label %3234, !prof !32, !nosanitize !30

3233:                                             ; preds = %3223
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3234:                                             ; preds = %3223
  %3235 = extractvalue { i64, i1 } %3231, 0, !nosanitize !30
  %3236 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3237 = load ptr, ptr %3236, align 8, !tbaa !33
  %3238 = trunc i16 %3228 to i8
  store i64 %3235, ptr %3229, align 8, !tbaa !31
  %3239 = getelementptr inbounds nuw i8, ptr %3237, i64 %3230
  store i8 %3238, ptr %3239, align 1, !tbaa !28
  %3240 = load i64, ptr %3229, align 8, !tbaa !31
  %3241 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3240, i64 1), !nosanitize !30
  %3242 = extractvalue { i64, i1 } %3241, 1, !nosanitize !30
  br i1 %3242, label %3243, label %3244, !prof !32, !nosanitize !30

3243:                                             ; preds = %3254, %3234
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3244:                                             ; preds = %3234
  %3245 = extractvalue { i64, i1 } %3241, 0, !nosanitize !30
  %3246 = load ptr, ptr %3236, align 8, !tbaa !33
  %3247 = load i16, ptr %3226, align 8, !tbaa !25
  %3248 = lshr i16 %3247, 8
  %3249 = trunc nuw i16 %3248 to i8
  store i64 %3245, ptr %3229, align 8, !tbaa !31
  %3250 = getelementptr inbounds nuw i8, ptr %3246, i64 %3240
  store i8 %3249, ptr %3250, align 1, !tbaa !28
  %3251 = load i32, ptr %2452, align 4, !tbaa !26
  %3252 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3251), !nosanitize !30
  %3253 = extractvalue { i32, i1 } %3252, 1, !nosanitize !30
  br i1 %3253, label %.loopexit261, label %3254, !prof !32, !nosanitize !30

3254:                                             ; preds = %3244
  %3255 = extractvalue { i32, i1 } %3252, 0, !nosanitize !30
  %3256 = lshr i32 %3224, %3255
  %3257 = trunc nuw i32 %3256 to i16
  store i16 %3257, ptr %3226, align 8, !tbaa !25
  %3258 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3251, i32 -12), !nosanitize !30
  %3259 = extractvalue { i32, i1 } %3258, 1, !nosanitize !30
  br i1 %3259, label %3243, label %3266, !prof !32, !nosanitize !30

3260:                                             ; preds = %3217
  %3261 = shl nsw i32 %3222, %3220
  %3262 = trunc i32 %3261 to i16
  %3263 = or i16 %3218, %3262
  %3264 = add nsw i32 %3220, 4
  %3265 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3264, 0
  br label %3266

3266:                                             ; preds = %3260, %3254
  %3267 = phi i16 [ %3257, %3254 ], [ %3263, %3260 ]
  %3268 = phi { i32, i1 } [ %3258, %3254 ], [ %3265, %3260 ]
  %3269 = extractvalue { i32, i1 } %3268, 0
  store i32 %3269, ptr %2452, align 4, !tbaa !26
  %3270 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3271 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3272 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3273 = zext nneg i32 %3110 to i64
  br label %3274

3274:                                             ; preds = %3322, %3266
  %3275 = phi i16 [ %3267, %3266 ], [ %3323, %3322 ]
  %3276 = phi i32 [ %3269, %3266 ], [ %3325, %3322 ]
  %3277 = phi i64 [ 0, %3266 ], [ %3326, %3322 ]
  %3278 = icmp sgt i32 %3276, 13
  %3279 = getelementptr inbounds nuw i8, ptr @bl_order, i64 %3277
  %3280 = load i8, ptr %3279, align 1, !tbaa !28
  %3281 = zext i8 %3280 to i64
  %3282 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3281
  %3283 = getelementptr inbounds nuw i8, ptr %3282, i64 2750
  %3284 = load i16, ptr %3283, align 2, !tbaa !28
  %3285 = zext i16 %3284 to i32
  %3286 = shl i32 %3285, %3276
  %3287 = trunc i32 %3286 to i16
  %3288 = or i16 %3275, %3287
  store i16 %3288, ptr %3270, align 8, !tbaa !25
  br i1 %3278, label %3289, label %3319

3289:                                             ; preds = %3274
  %3290 = load i64, ptr %3271, align 8, !tbaa !31
  %3291 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3290, i64 1), !nosanitize !30
  %3292 = extractvalue { i64, i1 } %3291, 1, !nosanitize !30
  br i1 %3292, label %3293, label %3294, !prof !32, !nosanitize !30

3293:                                             ; preds = %3289
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3294:                                             ; preds = %3289
  %3295 = extractvalue { i64, i1 } %3291, 0, !nosanitize !30
  %3296 = load ptr, ptr %3272, align 8, !tbaa !33
  %3297 = trunc i16 %3288 to i8
  store i64 %3295, ptr %3271, align 8, !tbaa !31
  %3298 = getelementptr inbounds nuw i8, ptr %3296, i64 %3290
  store i8 %3297, ptr %3298, align 1, !tbaa !28
  %3299 = load i64, ptr %3271, align 8, !tbaa !31
  %3300 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3299, i64 1), !nosanitize !30
  %3301 = extractvalue { i64, i1 } %3300, 1, !nosanitize !30
  br i1 %3301, label %3302, label %3303, !prof !32, !nosanitize !30

3302:                                             ; preds = %3313, %3294
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3303:                                             ; preds = %3294
  %3304 = extractvalue { i64, i1 } %3300, 0, !nosanitize !30
  %3305 = load ptr, ptr %3272, align 8, !tbaa !33
  %3306 = load i16, ptr %3270, align 8, !tbaa !25
  %3307 = lshr i16 %3306, 8
  %3308 = trunc nuw i16 %3307 to i8
  store i64 %3304, ptr %3271, align 8, !tbaa !31
  %3309 = getelementptr inbounds nuw i8, ptr %3305, i64 %3299
  store i8 %3308, ptr %3309, align 1, !tbaa !28
  %3310 = load i32, ptr %2452, align 4, !tbaa !26
  %3311 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3310), !nosanitize !30
  %3312 = extractvalue { i32, i1 } %3311, 1, !nosanitize !30
  br i1 %3312, label %.loopexit261, label %3313, !prof !32, !nosanitize !30

3313:                                             ; preds = %3303
  %3314 = extractvalue { i32, i1 } %3311, 0, !nosanitize !30
  %3315 = lshr i32 %3285, %3314
  %3316 = trunc nuw i32 %3315 to i16
  store i16 %3316, ptr %3270, align 8, !tbaa !25
  %3317 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3310, i32 -13), !nosanitize !30
  %3318 = extractvalue { i32, i1 } %3317, 1, !nosanitize !30
  br i1 %3318, label %3302, label %3322, !prof !32, !nosanitize !30

3319:                                             ; preds = %3274
  %3320 = add nsw i32 %3276, 3
  %3321 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3320, 0
  br label %3322

3322:                                             ; preds = %3319, %3313
  %3323 = phi i16 [ %3316, %3313 ], [ %3288, %3319 ]
  %3324 = phi { i32, i1 } [ %3317, %3313 ], [ %3321, %3319 ]
  %3325 = extractvalue { i32, i1 } %3324, 0
  store i32 %3325, ptr %2452, align 4, !tbaa !26
  %3326 = add nuw nsw i64 %3277, 1
  %3327 = icmp eq i64 %3326, %3273
  br i1 %3327, label %3328, label %3274, !llvm.loop !81

3328:                                             ; preds = %3322
  %3329 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3101, i32 -1)
  %3330 = extractvalue { i32, i1 } %3329, 1, !nosanitize !30
  br i1 %3330, label %.loopexit261, label %3331, !prof !32, !nosanitize !30

3331:                                             ; preds = %3328
  %3332 = extractvalue { i32, i1 } %3329, 0, !nosanitize !30
  %3333 = icmp slt i32 %3332, 0
  br i1 %3333, label %.loopexit260, label %3334

3334:                                             ; preds = %3331
  %3335 = getelementptr inbounds nuw i8, ptr %0, i64 214
  %3336 = load i16, ptr %3335, align 2, !tbaa !28
  %3337 = icmp eq i16 %3336, 0
  %3338 = select i1 %3337, i32 138, i32 7
  %3339 = select i1 %3337, i32 3, i32 4
  %3340 = zext i16 %3336 to i32
  %3341 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3342 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3343 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3344 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3345 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3346 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3347 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %3348 = add i32 %3099, 1
  %wide.trip.count577 = zext i32 %3348 to i64
  br label %3351

3349:                                             ; preds = %3769
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1
  %exitcond579 = icmp eq i64 %indvars.iv.next576, 2147483648
  br i1 %exitcond579, label %3350, label %3351, !prof !74, !llvm.loop !82, !nosanitize !30

3350:                                             ; preds = %3349
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3351:                                             ; preds = %3349, %3334
  %indvars.iv575 = phi i64 [ %indvars.iv.next576, %3349 ], [ 1, %3334 ]
  %3352 = phi i32 [ %3772, %3349 ], [ %3339, %3334 ]
  %3353 = phi i32 [ %3773, %3349 ], [ %3338, %3334 ]
  %3354 = phi i32 [ %3774, %3349 ], [ 0, %3334 ]
  %3355 = phi i32 [ %3362, %3349 ], [ %3340, %3334 ]
  %3356 = phi i32 [ %3775, %3349 ], [ -1, %3334 ]
  %3357 = phi i32 [ %3771, %3349 ], [ %3325, %3334 ]
  %3358 = phi i16 [ %3770, %3349 ], [ %3323, %3334 ]
  %3359 = getelementptr [4 x i8], ptr %0, i64 %indvars.iv575
  %3360 = getelementptr i8, ptr %3359, i64 214
  %3361 = load i16, ptr %3360, align 2, !tbaa !28
  %3362 = zext i16 %3361 to i32
  %3363 = add nsw i32 %3354, 1
  %3364 = icmp slt i32 %3363, %3353
  %3365 = icmp eq i32 %3355, %3362
  %3366 = select i1 %3364, i1 %3365, i1 false
  br i1 %3366, label %3769, label %3367

3367:                                             ; preds = %3351
  %3368 = icmp slt i32 %3363, %3352
  br i1 %3368, label %3369, label %3429

3369:                                             ; preds = %3367
  %3370 = zext nneg i32 %3355 to i64
  %3371 = getelementptr inbounds nuw [4 x i8], ptr %3341, i64 %3370
  %3372 = getelementptr inbounds nuw i8, ptr %3371, i64 2
  br label %3373

3373:                                             ; preds = %3426, %3369
  %3374 = phi i16 [ %3421, %3426 ], [ %3358, %3369 ]
  %3375 = phi i32 [ %3423, %3426 ], [ %3357, %3369 ]
  %3376 = phi i32 [ %3427, %3426 ], [ %3363, %3369 ]
  %3377 = load i16, ptr %3372, align 2, !tbaa !28
  %3378 = zext i16 %3377 to i32
  %3379 = sub nsw i32 16, %3378
  %3380 = icmp sgt i32 %3375, %3379
  %3381 = load i16, ptr %3371, align 4, !tbaa !28
  %3382 = zext i16 %3381 to i32
  %3383 = shl i32 %3382, %3375
  %3384 = trunc i32 %3383 to i16
  %3385 = or i16 %3374, %3384
  store i16 %3385, ptr %3270, align 8, !tbaa !25
  br i1 %3380, label %3386, label %3417

.loopexit257:                                     ; preds = %3737, %3693, %3647, %3603, %3555, %3511, %3460, %3420, %3400
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

3386:                                             ; preds = %3373
  %3387 = load i64, ptr %3271, align 8, !tbaa !31
  %3388 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3387, i64 1), !nosanitize !30
  %3389 = extractvalue { i64, i1 } %3388, 1, !nosanitize !30
  br i1 %3389, label %3390, label %3391, !prof !32, !nosanitize !30

3390:                                             ; preds = %3386
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3391:                                             ; preds = %3386
  %3392 = extractvalue { i64, i1 } %3388, 0, !nosanitize !30
  %3393 = load ptr, ptr %3272, align 8, !tbaa !33
  %3394 = trunc i16 %3385 to i8
  store i64 %3392, ptr %3271, align 8, !tbaa !31
  %3395 = getelementptr inbounds nuw i8, ptr %3393, i64 %3387
  store i8 %3394, ptr %3395, align 1, !tbaa !28
  %3396 = load i64, ptr %3271, align 8, !tbaa !31
  %3397 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3396, i64 1), !nosanitize !30
  %3398 = extractvalue { i64, i1 } %3397, 1, !nosanitize !30
  br i1 %3398, label %3399, label %3400, !prof !32, !nosanitize !30

3399:                                             ; preds = %3410, %3391
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3400:                                             ; preds = %3391
  %3401 = extractvalue { i64, i1 } %3397, 0, !nosanitize !30
  %3402 = load ptr, ptr %3272, align 8, !tbaa !33
  %3403 = load i16, ptr %3270, align 8, !tbaa !25
  %3404 = lshr i16 %3403, 8
  %3405 = trunc nuw i16 %3404 to i8
  store i64 %3401, ptr %3271, align 8, !tbaa !31
  %3406 = getelementptr inbounds nuw i8, ptr %3402, i64 %3396
  store i8 %3405, ptr %3406, align 1, !tbaa !28
  %3407 = load i32, ptr %2452, align 4, !tbaa !26
  %3408 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3407), !nosanitize !30
  %3409 = extractvalue { i32, i1 } %3408, 1, !nosanitize !30
  br i1 %3409, label %.loopexit257, label %3410, !prof !32, !nosanitize !30

3410:                                             ; preds = %3400
  %3411 = extractvalue { i32, i1 } %3408, 0, !nosanitize !30
  %3412 = lshr i32 %3382, %3411
  %3413 = trunc nuw i32 %3412 to i16
  store i16 %3413, ptr %3270, align 8, !tbaa !25
  %3414 = add nsw i32 %3378, -16
  %3415 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3407, i32 %3414), !nosanitize !30
  %3416 = extractvalue { i32, i1 } %3415, 1, !nosanitize !30
  br i1 %3416, label %3399, label %3420, !prof !32, !nosanitize !30

3417:                                             ; preds = %3373
  %3418 = add nsw i32 %3375, %3378
  %3419 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3418, 0
  br label %3420

3420:                                             ; preds = %3417, %3410
  %3421 = phi i16 [ %3413, %3410 ], [ %3385, %3417 ]
  %3422 = phi { i32, i1 } [ %3415, %3410 ], [ %3419, %3417 ]
  %3423 = extractvalue { i32, i1 } %3422, 0
  store i32 %3423, ptr %2452, align 4, !tbaa !26
  %3424 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3376, i32 -1)
  %3425 = extractvalue { i32, i1 } %3424, 1, !nosanitize !30
  br i1 %3425, label %.loopexit257, label %3426, !prof !32, !nosanitize !30

3426:                                             ; preds = %3420
  %3427 = extractvalue { i32, i1 } %3424, 0, !nosanitize !30
  %3428 = icmp eq i32 %3427, 0
  br i1 %3428, label %.loopexit258, label %3373, !llvm.loop !83

3429:                                             ; preds = %3367
  %3430 = icmp eq i32 %3355, 0
  br i1 %3430, label %3577, label %3431

3431:                                             ; preds = %3429
  %3432 = icmp eq i32 %3355, %3356
  br i1 %3432, label %3484, label %3433

3433:                                             ; preds = %3431
  %3434 = zext nneg i32 %3355 to i64
  %3435 = getelementptr inbounds nuw [4 x i8], ptr %3341, i64 %3434
  %3436 = getelementptr inbounds nuw i8, ptr %3435, i64 2
  %3437 = load i16, ptr %3436, align 2, !tbaa !28
  %3438 = zext i16 %3437 to i32
  %3439 = sub nsw i32 16, %3438
  %3440 = icmp sgt i32 %3357, %3439
  %3441 = load i16, ptr %3435, align 4, !tbaa !28
  %3442 = zext i16 %3441 to i32
  %3443 = shl i32 %3442, %3357
  %3444 = trunc i32 %3443 to i16
  %3445 = or i16 %3358, %3444
  store i16 %3445, ptr %3270, align 8, !tbaa !25
  br i1 %3440, label %3446, label %3477

3446:                                             ; preds = %3433
  %3447 = load i64, ptr %3271, align 8, !tbaa !31
  %3448 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3447, i64 1), !nosanitize !30
  %3449 = extractvalue { i64, i1 } %3448, 1, !nosanitize !30
  br i1 %3449, label %3450, label %3451, !prof !32, !nosanitize !30

3450:                                             ; preds = %3446
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3451:                                             ; preds = %3446
  %3452 = extractvalue { i64, i1 } %3448, 0, !nosanitize !30
  %3453 = load ptr, ptr %3272, align 8, !tbaa !33
  %3454 = trunc i16 %3445 to i8
  store i64 %3452, ptr %3271, align 8, !tbaa !31
  %3455 = getelementptr inbounds nuw i8, ptr %3453, i64 %3447
  store i8 %3454, ptr %3455, align 1, !tbaa !28
  %3456 = load i64, ptr %3271, align 8, !tbaa !31
  %3457 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3456, i64 1), !nosanitize !30
  %3458 = extractvalue { i64, i1 } %3457, 1, !nosanitize !30
  br i1 %3458, label %3459, label %3460, !prof !32, !nosanitize !30

3459:                                             ; preds = %3470, %3451
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3460:                                             ; preds = %3451
  %3461 = extractvalue { i64, i1 } %3457, 0, !nosanitize !30
  %3462 = load ptr, ptr %3272, align 8, !tbaa !33
  %3463 = load i16, ptr %3270, align 8, !tbaa !25
  %3464 = lshr i16 %3463, 8
  %3465 = trunc nuw i16 %3464 to i8
  store i64 %3461, ptr %3271, align 8, !tbaa !31
  %3466 = getelementptr inbounds nuw i8, ptr %3462, i64 %3456
  store i8 %3465, ptr %3466, align 1, !tbaa !28
  %3467 = load i32, ptr %2452, align 4, !tbaa !26
  %3468 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3467), !nosanitize !30
  %3469 = extractvalue { i32, i1 } %3468, 1, !nosanitize !30
  br i1 %3469, label %.loopexit257, label %3470, !prof !32, !nosanitize !30

3470:                                             ; preds = %3460
  %3471 = extractvalue { i32, i1 } %3468, 0, !nosanitize !30
  %3472 = lshr i32 %3442, %3471
  %3473 = trunc nuw i32 %3472 to i16
  store i16 %3473, ptr %3270, align 8, !tbaa !25
  %3474 = add nsw i32 %3438, -16
  %3475 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3467, i32 %3474), !nosanitize !30
  %3476 = extractvalue { i32, i1 } %3475, 1, !nosanitize !30
  br i1 %3476, label %3459, label %3480, !prof !32, !nosanitize !30

3477:                                             ; preds = %3433
  %3478 = add nsw i32 %3357, %3438
  %3479 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3478, 0
  br label %3480

3480:                                             ; preds = %3477, %3470
  %3481 = phi i16 [ %3473, %3470 ], [ %3445, %3477 ]
  %3482 = phi { i32, i1 } [ %3475, %3470 ], [ %3479, %3477 ]
  %3483 = extractvalue { i32, i1 } %3482, 0
  store i32 %3483, ptr %2452, align 4, !tbaa !26
  br label %3484

3484:                                             ; preds = %3480, %3431
  %3485 = phi i16 [ %3481, %3480 ], [ %3358, %3431 ]
  %3486 = phi i32 [ %3483, %3480 ], [ %3357, %3431 ]
  %3487 = phi i32 [ %3354, %3480 ], [ %3363, %3431 ]
  %3488 = load i16, ptr %3343, align 2, !tbaa !28
  %3489 = zext i16 %3488 to i32
  %3490 = sub nsw i32 16, %3489
  %3491 = icmp sgt i32 %3486, %3490
  %3492 = load i16, ptr %3342, align 4, !tbaa !28
  %3493 = zext i16 %3492 to i32
  %3494 = shl i32 %3493, %3486
  %3495 = trunc i32 %3494 to i16
  %3496 = or i16 %3485, %3495
  store i16 %3496, ptr %3270, align 8, !tbaa !25
  br i1 %3491, label %3497, label %3528

3497:                                             ; preds = %3484
  %3498 = load i64, ptr %3271, align 8, !tbaa !31
  %3499 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3498, i64 1), !nosanitize !30
  %3500 = extractvalue { i64, i1 } %3499, 1, !nosanitize !30
  br i1 %3500, label %3501, label %3502, !prof !32, !nosanitize !30

3501:                                             ; preds = %3497
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3502:                                             ; preds = %3497
  %3503 = extractvalue { i64, i1 } %3499, 0, !nosanitize !30
  %3504 = load ptr, ptr %3272, align 8, !tbaa !33
  %3505 = trunc i16 %3496 to i8
  store i64 %3503, ptr %3271, align 8, !tbaa !31
  %3506 = getelementptr inbounds nuw i8, ptr %3504, i64 %3498
  store i8 %3505, ptr %3506, align 1, !tbaa !28
  %3507 = load i64, ptr %3271, align 8, !tbaa !31
  %3508 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3507, i64 1), !nosanitize !30
  %3509 = extractvalue { i64, i1 } %3508, 1, !nosanitize !30
  br i1 %3509, label %3510, label %3511, !prof !32, !nosanitize !30

3510:                                             ; preds = %3521, %3502
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3511:                                             ; preds = %3502
  %3512 = extractvalue { i64, i1 } %3508, 0, !nosanitize !30
  %3513 = load ptr, ptr %3272, align 8, !tbaa !33
  %3514 = load i16, ptr %3270, align 8, !tbaa !25
  %3515 = lshr i16 %3514, 8
  %3516 = trunc nuw i16 %3515 to i8
  store i64 %3512, ptr %3271, align 8, !tbaa !31
  %3517 = getelementptr inbounds nuw i8, ptr %3513, i64 %3507
  store i8 %3516, ptr %3517, align 1, !tbaa !28
  %3518 = load i32, ptr %2452, align 4, !tbaa !26
  %3519 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3518), !nosanitize !30
  %3520 = extractvalue { i32, i1 } %3519, 1, !nosanitize !30
  br i1 %3520, label %.loopexit257, label %3521, !prof !32, !nosanitize !30

3521:                                             ; preds = %3511
  %3522 = extractvalue { i32, i1 } %3519, 0, !nosanitize !30
  %3523 = lshr i32 %3493, %3522
  %3524 = trunc nuw i32 %3523 to i16
  store i16 %3524, ptr %3270, align 8, !tbaa !25
  %3525 = add nsw i32 %3489, -16
  %3526 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3518, i32 %3525), !nosanitize !30
  %3527 = extractvalue { i32, i1 } %3526, 1, !nosanitize !30
  br i1 %3527, label %3510, label %3531, !prof !32, !nosanitize !30

3528:                                             ; preds = %3484
  %3529 = add nsw i32 %3486, %3489
  %3530 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3529, 0
  br label %3531

3531:                                             ; preds = %3528, %3521
  %3532 = phi i16 [ %3524, %3521 ], [ %3496, %3528 ]
  %3533 = phi { i32, i1 } [ %3526, %3521 ], [ %3530, %3528 ]
  %3534 = extractvalue { i32, i1 } %3533, 0
  store i32 %3534, ptr %2452, align 4, !tbaa !26
  %3535 = icmp sgt i32 %3534, 14
  %3536 = add i32 %3487, 65533
  br i1 %3535, label %3537, label %3571

3537:                                             ; preds = %3531
  %3538 = and i32 %3536, 65535
  %3539 = shl i32 %3536, %3534
  %3540 = trunc i32 %3539 to i16
  %3541 = or i16 %3532, %3540
  store i16 %3541, ptr %3270, align 8, !tbaa !25
  %3542 = load i64, ptr %3271, align 8, !tbaa !31
  %3543 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3542, i64 1), !nosanitize !30
  %3544 = extractvalue { i64, i1 } %3543, 1, !nosanitize !30
  br i1 %3544, label %3545, label %3546, !prof !32, !nosanitize !30

3545:                                             ; preds = %3537
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3546:                                             ; preds = %3537
  %3547 = extractvalue { i64, i1 } %3543, 0, !nosanitize !30
  %3548 = load ptr, ptr %3272, align 8, !tbaa !33
  %3549 = trunc i16 %3541 to i8
  store i64 %3547, ptr %3271, align 8, !tbaa !31
  %3550 = getelementptr inbounds nuw i8, ptr %3548, i64 %3542
  store i8 %3549, ptr %3550, align 1, !tbaa !28
  %3551 = load i64, ptr %3271, align 8, !tbaa !31
  %3552 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3551, i64 1), !nosanitize !30
  %3553 = extractvalue { i64, i1 } %3552, 1, !nosanitize !30
  br i1 %3553, label %3554, label %3555, !prof !32, !nosanitize !30

3554:                                             ; preds = %3565, %3546
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3555:                                             ; preds = %3546
  %3556 = extractvalue { i64, i1 } %3552, 0, !nosanitize !30
  %3557 = load ptr, ptr %3272, align 8, !tbaa !33
  %3558 = load i16, ptr %3270, align 8, !tbaa !25
  %3559 = lshr i16 %3558, 8
  %3560 = trunc nuw i16 %3559 to i8
  store i64 %3556, ptr %3271, align 8, !tbaa !31
  %3561 = getelementptr inbounds nuw i8, ptr %3557, i64 %3551
  store i8 %3560, ptr %3561, align 1, !tbaa !28
  %3562 = load i32, ptr %2452, align 4, !tbaa !26
  %3563 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3562), !nosanitize !30
  %3564 = extractvalue { i32, i1 } %3563, 1, !nosanitize !30
  br i1 %3564, label %.loopexit257, label %3565, !prof !32, !nosanitize !30

3565:                                             ; preds = %3555
  %3566 = extractvalue { i32, i1 } %3563, 0, !nosanitize !30
  %3567 = lshr i32 %3538, %3566
  %3568 = trunc nuw i32 %3567 to i16
  store i16 %3568, ptr %3270, align 8, !tbaa !25
  %3569 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3562, i32 -14), !nosanitize !30
  %3570 = extractvalue { i32, i1 } %3569, 1, !nosanitize !30
  br i1 %3570, label %3554, label %3759, !prof !32, !nosanitize !30

3571:                                             ; preds = %3531
  %3572 = shl i32 %3536, %3534
  %3573 = trunc i32 %3572 to i16
  %3574 = or i16 %3532, %3573
  store i16 %3574, ptr %3270, align 8, !tbaa !25
  %3575 = add nsw i32 %3534, 2
  %3576 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3575, 0
  br label %3759

3577:                                             ; preds = %3429
  %3578 = icmp slt i32 %3354, 10
  br i1 %3578, label %3579, label %3669

3579:                                             ; preds = %3577
  %3580 = load i16, ptr %3347, align 2, !tbaa !28
  %3581 = zext i16 %3580 to i32
  %3582 = sub nsw i32 16, %3581
  %3583 = icmp sgt i32 %3357, %3582
  %3584 = load i16, ptr %3346, align 4, !tbaa !28
  %3585 = zext i16 %3584 to i32
  %3586 = shl i32 %3585, %3357
  %3587 = trunc i32 %3586 to i16
  %3588 = or i16 %3358, %3587
  store i16 %3588, ptr %3270, align 8, !tbaa !25
  br i1 %3583, label %3589, label %3620

3589:                                             ; preds = %3579
  %3590 = load i64, ptr %3271, align 8, !tbaa !31
  %3591 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3590, i64 1), !nosanitize !30
  %3592 = extractvalue { i64, i1 } %3591, 1, !nosanitize !30
  br i1 %3592, label %3593, label %3594, !prof !32, !nosanitize !30

3593:                                             ; preds = %3589
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3594:                                             ; preds = %3589
  %3595 = extractvalue { i64, i1 } %3591, 0, !nosanitize !30
  %3596 = load ptr, ptr %3272, align 8, !tbaa !33
  %3597 = trunc i16 %3588 to i8
  store i64 %3595, ptr %3271, align 8, !tbaa !31
  %3598 = getelementptr inbounds nuw i8, ptr %3596, i64 %3590
  store i8 %3597, ptr %3598, align 1, !tbaa !28
  %3599 = load i64, ptr %3271, align 8, !tbaa !31
  %3600 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3599, i64 1), !nosanitize !30
  %3601 = extractvalue { i64, i1 } %3600, 1, !nosanitize !30
  br i1 %3601, label %3602, label %3603, !prof !32, !nosanitize !30

3602:                                             ; preds = %3613, %3594
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3603:                                             ; preds = %3594
  %3604 = extractvalue { i64, i1 } %3600, 0, !nosanitize !30
  %3605 = load ptr, ptr %3272, align 8, !tbaa !33
  %3606 = load i16, ptr %3270, align 8, !tbaa !25
  %3607 = lshr i16 %3606, 8
  %3608 = trunc nuw i16 %3607 to i8
  store i64 %3604, ptr %3271, align 8, !tbaa !31
  %3609 = getelementptr inbounds nuw i8, ptr %3605, i64 %3599
  store i8 %3608, ptr %3609, align 1, !tbaa !28
  %3610 = load i32, ptr %2452, align 4, !tbaa !26
  %3611 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3610), !nosanitize !30
  %3612 = extractvalue { i32, i1 } %3611, 1, !nosanitize !30
  br i1 %3612, label %.loopexit257, label %3613, !prof !32, !nosanitize !30

3613:                                             ; preds = %3603
  %3614 = extractvalue { i32, i1 } %3611, 0, !nosanitize !30
  %3615 = lshr i32 %3585, %3614
  %3616 = trunc nuw i32 %3615 to i16
  store i16 %3616, ptr %3270, align 8, !tbaa !25
  %3617 = add nsw i32 %3581, -16
  %3618 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3610, i32 %3617), !nosanitize !30
  %3619 = extractvalue { i32, i1 } %3618, 1, !nosanitize !30
  br i1 %3619, label %3602, label %3623, !prof !32, !nosanitize !30

3620:                                             ; preds = %3579
  %3621 = add nsw i32 %3357, %3581
  %3622 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3621, 0
  br label %3623

3623:                                             ; preds = %3620, %3613
  %3624 = phi i16 [ %3616, %3613 ], [ %3588, %3620 ]
  %3625 = phi { i32, i1 } [ %3618, %3613 ], [ %3622, %3620 ]
  %3626 = extractvalue { i32, i1 } %3625, 0
  store i32 %3626, ptr %2452, align 4, !tbaa !26
  %3627 = icmp sgt i32 %3626, 13
  %3628 = add nsw i32 %3354, 65534
  br i1 %3627, label %3629, label %3663

3629:                                             ; preds = %3623
  %3630 = and i32 %3628, 65535
  %3631 = shl i32 %3628, %3626
  %3632 = trunc i32 %3631 to i16
  %3633 = or i16 %3624, %3632
  store i16 %3633, ptr %3270, align 8, !tbaa !25
  %3634 = load i64, ptr %3271, align 8, !tbaa !31
  %3635 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3634, i64 1), !nosanitize !30
  %3636 = extractvalue { i64, i1 } %3635, 1, !nosanitize !30
  br i1 %3636, label %3637, label %3638, !prof !32, !nosanitize !30

3637:                                             ; preds = %3629
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3638:                                             ; preds = %3629
  %3639 = extractvalue { i64, i1 } %3635, 0, !nosanitize !30
  %3640 = load ptr, ptr %3272, align 8, !tbaa !33
  %3641 = trunc i16 %3633 to i8
  store i64 %3639, ptr %3271, align 8, !tbaa !31
  %3642 = getelementptr inbounds nuw i8, ptr %3640, i64 %3634
  store i8 %3641, ptr %3642, align 1, !tbaa !28
  %3643 = load i64, ptr %3271, align 8, !tbaa !31
  %3644 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3643, i64 1), !nosanitize !30
  %3645 = extractvalue { i64, i1 } %3644, 1, !nosanitize !30
  br i1 %3645, label %3646, label %3647, !prof !32, !nosanitize !30

3646:                                             ; preds = %3657, %3638
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3647:                                             ; preds = %3638
  %3648 = extractvalue { i64, i1 } %3644, 0, !nosanitize !30
  %3649 = load ptr, ptr %3272, align 8, !tbaa !33
  %3650 = load i16, ptr %3270, align 8, !tbaa !25
  %3651 = lshr i16 %3650, 8
  %3652 = trunc nuw i16 %3651 to i8
  store i64 %3648, ptr %3271, align 8, !tbaa !31
  %3653 = getelementptr inbounds nuw i8, ptr %3649, i64 %3643
  store i8 %3652, ptr %3653, align 1, !tbaa !28
  %3654 = load i32, ptr %2452, align 4, !tbaa !26
  %3655 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3654), !nosanitize !30
  %3656 = extractvalue { i32, i1 } %3655, 1, !nosanitize !30
  br i1 %3656, label %.loopexit257, label %3657, !prof !32, !nosanitize !30

3657:                                             ; preds = %3647
  %3658 = extractvalue { i32, i1 } %3655, 0, !nosanitize !30
  %3659 = lshr i32 %3630, %3658
  %3660 = trunc nuw i32 %3659 to i16
  store i16 %3660, ptr %3270, align 8, !tbaa !25
  %3661 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3654, i32 -13), !nosanitize !30
  %3662 = extractvalue { i32, i1 } %3661, 1, !nosanitize !30
  br i1 %3662, label %3646, label %3759, !prof !32, !nosanitize !30

3663:                                             ; preds = %3623
  %3664 = shl i32 %3628, %3626
  %3665 = trunc i32 %3664 to i16
  %3666 = or i16 %3624, %3665
  store i16 %3666, ptr %3270, align 8, !tbaa !25
  %3667 = add nsw i32 %3626, 3
  %3668 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3667, 0
  br label %3759

3669:                                             ; preds = %3577
  %3670 = load i16, ptr %3345, align 2, !tbaa !28
  %3671 = zext i16 %3670 to i32
  %3672 = sub nsw i32 16, %3671
  %3673 = icmp sgt i32 %3357, %3672
  %3674 = load i16, ptr %3344, align 4, !tbaa !28
  %3675 = zext i16 %3674 to i32
  %3676 = shl i32 %3675, %3357
  %3677 = trunc i32 %3676 to i16
  %3678 = or i16 %3358, %3677
  store i16 %3678, ptr %3270, align 8, !tbaa !25
  br i1 %3673, label %3679, label %3710

3679:                                             ; preds = %3669
  %3680 = load i64, ptr %3271, align 8, !tbaa !31
  %3681 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3680, i64 1), !nosanitize !30
  %3682 = extractvalue { i64, i1 } %3681, 1, !nosanitize !30
  br i1 %3682, label %3683, label %3684, !prof !32, !nosanitize !30

3683:                                             ; preds = %3679
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3684:                                             ; preds = %3679
  %3685 = extractvalue { i64, i1 } %3681, 0, !nosanitize !30
  %3686 = load ptr, ptr %3272, align 8, !tbaa !33
  %3687 = trunc i16 %3678 to i8
  store i64 %3685, ptr %3271, align 8, !tbaa !31
  %3688 = getelementptr inbounds nuw i8, ptr %3686, i64 %3680
  store i8 %3687, ptr %3688, align 1, !tbaa !28
  %3689 = load i64, ptr %3271, align 8, !tbaa !31
  %3690 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3689, i64 1), !nosanitize !30
  %3691 = extractvalue { i64, i1 } %3690, 1, !nosanitize !30
  br i1 %3691, label %3692, label %3693, !prof !32, !nosanitize !30

3692:                                             ; preds = %3703, %3684
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3693:                                             ; preds = %3684
  %3694 = extractvalue { i64, i1 } %3690, 0, !nosanitize !30
  %3695 = load ptr, ptr %3272, align 8, !tbaa !33
  %3696 = load i16, ptr %3270, align 8, !tbaa !25
  %3697 = lshr i16 %3696, 8
  %3698 = trunc nuw i16 %3697 to i8
  store i64 %3694, ptr %3271, align 8, !tbaa !31
  %3699 = getelementptr inbounds nuw i8, ptr %3695, i64 %3689
  store i8 %3698, ptr %3699, align 1, !tbaa !28
  %3700 = load i32, ptr %2452, align 4, !tbaa !26
  %3701 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3700), !nosanitize !30
  %3702 = extractvalue { i32, i1 } %3701, 1, !nosanitize !30
  br i1 %3702, label %.loopexit257, label %3703, !prof !32, !nosanitize !30

3703:                                             ; preds = %3693
  %3704 = extractvalue { i32, i1 } %3701, 0, !nosanitize !30
  %3705 = lshr i32 %3675, %3704
  %3706 = trunc nuw i32 %3705 to i16
  store i16 %3706, ptr %3270, align 8, !tbaa !25
  %3707 = add nsw i32 %3671, -16
  %3708 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3700, i32 %3707), !nosanitize !30
  %3709 = extractvalue { i32, i1 } %3708, 1, !nosanitize !30
  br i1 %3709, label %3692, label %3713, !prof !32, !nosanitize !30

3710:                                             ; preds = %3669
  %3711 = add nsw i32 %3357, %3671
  %3712 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3711, 0
  br label %3713

3713:                                             ; preds = %3710, %3703
  %3714 = phi i16 [ %3706, %3703 ], [ %3678, %3710 ]
  %3715 = phi { i32, i1 } [ %3708, %3703 ], [ %3712, %3710 ]
  %3716 = extractvalue { i32, i1 } %3715, 0
  store i32 %3716, ptr %2452, align 4, !tbaa !26
  %3717 = icmp sgt i32 %3716, 9
  %3718 = add nuw i32 %3354, 65526
  br i1 %3717, label %3719, label %3753

3719:                                             ; preds = %3713
  %3720 = and i32 %3718, 65535
  %3721 = shl i32 %3718, %3716
  %3722 = trunc i32 %3721 to i16
  %3723 = or i16 %3714, %3722
  store i16 %3723, ptr %3270, align 8, !tbaa !25
  %3724 = load i64, ptr %3271, align 8, !tbaa !31
  %3725 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3724, i64 1), !nosanitize !30
  %3726 = extractvalue { i64, i1 } %3725, 1, !nosanitize !30
  br i1 %3726, label %3727, label %3728, !prof !32, !nosanitize !30

3727:                                             ; preds = %3719
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3728:                                             ; preds = %3719
  %3729 = extractvalue { i64, i1 } %3725, 0, !nosanitize !30
  %3730 = load ptr, ptr %3272, align 8, !tbaa !33
  %3731 = trunc i16 %3723 to i8
  store i64 %3729, ptr %3271, align 8, !tbaa !31
  %3732 = getelementptr inbounds nuw i8, ptr %3730, i64 %3724
  store i8 %3731, ptr %3732, align 1, !tbaa !28
  %3733 = load i64, ptr %3271, align 8, !tbaa !31
  %3734 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3733, i64 1), !nosanitize !30
  %3735 = extractvalue { i64, i1 } %3734, 1, !nosanitize !30
  br i1 %3735, label %3736, label %3737, !prof !32, !nosanitize !30

3736:                                             ; preds = %3747, %3728
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3737:                                             ; preds = %3728
  %3738 = extractvalue { i64, i1 } %3734, 0, !nosanitize !30
  %3739 = load ptr, ptr %3272, align 8, !tbaa !33
  %3740 = load i16, ptr %3270, align 8, !tbaa !25
  %3741 = lshr i16 %3740, 8
  %3742 = trunc nuw i16 %3741 to i8
  store i64 %3738, ptr %3271, align 8, !tbaa !31
  %3743 = getelementptr inbounds nuw i8, ptr %3739, i64 %3733
  store i8 %3742, ptr %3743, align 1, !tbaa !28
  %3744 = load i32, ptr %2452, align 4, !tbaa !26
  %3745 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3744), !nosanitize !30
  %3746 = extractvalue { i32, i1 } %3745, 1, !nosanitize !30
  br i1 %3746, label %.loopexit257, label %3747, !prof !32, !nosanitize !30

3747:                                             ; preds = %3737
  %3748 = extractvalue { i32, i1 } %3745, 0, !nosanitize !30
  %3749 = lshr i32 %3720, %3748
  %3750 = trunc nuw i32 %3749 to i16
  store i16 %3750, ptr %3270, align 8, !tbaa !25
  %3751 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3744, i32 -9), !nosanitize !30
  %3752 = extractvalue { i32, i1 } %3751, 1, !nosanitize !30
  br i1 %3752, label %3736, label %3759, !prof !32, !nosanitize !30

3753:                                             ; preds = %3713
  %3754 = shl i32 %3718, %3716
  %3755 = trunc i32 %3754 to i16
  %3756 = or i16 %3714, %3755
  store i16 %3756, ptr %3270, align 8, !tbaa !25
  %3757 = add nsw i32 %3716, 7
  %3758 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3757, 0
  br label %3759

3759:                                             ; preds = %3753, %3747, %3663, %3657, %3571, %3565
  %3760 = phi i16 [ %3574, %3571 ], [ %3666, %3663 ], [ %3568, %3565 ], [ %3660, %3657 ], [ %3750, %3747 ], [ %3756, %3753 ]
  %3761 = phi { i32, i1 } [ %3576, %3571 ], [ %3668, %3663 ], [ %3569, %3565 ], [ %3661, %3657 ], [ %3751, %3747 ], [ %3758, %3753 ]
  %3762 = extractvalue { i32, i1 } %3761, 0
  store i32 %3762, ptr %2452, align 4, !tbaa !26
  br label %.loopexit258

.loopexit258:                                     ; preds = %3426, %3759
  %3763 = phi i16 [ %3760, %3759 ], [ %3421, %3426 ]
  %3764 = phi i32 [ %3762, %3759 ], [ %3423, %3426 ]
  %3765 = icmp eq i16 %3361, 0
  br i1 %3765, label %3769, label %3766

3766:                                             ; preds = %.loopexit258
  %3767 = select i1 %3365, i32 3, i32 4
  %3768 = select i1 %3365, i32 6, i32 7
  br label %3769

3769:                                             ; preds = %3766, %.loopexit258, %3351
  %3770 = phi i16 [ %3358, %3351 ], [ %3763, %.loopexit258 ], [ %3763, %3766 ]
  %3771 = phi i32 [ %3357, %3351 ], [ %3764, %.loopexit258 ], [ %3764, %3766 ]
  %3772 = phi i32 [ %3352, %3351 ], [ 3, %.loopexit258 ], [ %3767, %3766 ]
  %3773 = phi i32 [ %3353, %3351 ], [ 138, %.loopexit258 ], [ %3768, %3766 ]
  %3774 = phi i32 [ %3363, %3351 ], [ 0, %.loopexit258 ], [ 0, %3766 ]
  %3775 = phi i32 [ %3356, %3351 ], [ %3355, %.loopexit258 ], [ %3355, %3766 ]
  %exitcond578 = icmp eq i64 %indvars.iv575, %wide.trip.count577
  br i1 %exitcond578, label %.loopexit260, label %3349, !llvm.loop !82

.loopexit260:                                     ; preds = %3769, %3331
  %3776 = phi i16 [ %3323, %3331 ], [ %3770, %3769 ]
  %3777 = phi i32 [ %3325, %3331 ], [ %3771, %3769 ]
  br i1 %3168, label %.loopexit261, label %3778, !prof !32, !nosanitize !30

3778:                                             ; preds = %.loopexit260
  %3779 = extractvalue { i32, i1 } %3167, 0, !nosanitize !30
  %3780 = icmp slt i32 %3779, 0
  br i1 %3780, label %.loopexit256, label %3781

3781:                                             ; preds = %3778
  %3782 = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %3783 = load i16, ptr %3782, align 2, !tbaa !28
  %3784 = icmp eq i16 %3783, 0
  %3785 = select i1 %3784, i32 138, i32 7
  %3786 = select i1 %3784, i32 3, i32 4
  %3787 = zext i16 %3783 to i32
  %3788 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3789 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3790 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3791 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3792 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3793 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3794 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %3795 = add i32 %3105, 1
  %wide.trip.count582 = zext i32 %3795 to i64
  br label %3798

3796:                                             ; preds = %4216
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1
  %exitcond584 = icmp eq i64 %indvars.iv.next581, 2147483648
  br i1 %exitcond584, label %3797, label %3798, !prof !74, !llvm.loop !82, !nosanitize !30

3797:                                             ; preds = %3796
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !30
  unreachable, !nosanitize !30

3798:                                             ; preds = %3796, %3781
  %indvars.iv580 = phi i64 [ %indvars.iv.next581, %3796 ], [ 1, %3781 ]
  %3799 = phi i32 [ %4219, %3796 ], [ %3786, %3781 ]
  %3800 = phi i32 [ %4220, %3796 ], [ %3785, %3781 ]
  %3801 = phi i32 [ %4221, %3796 ], [ 0, %3781 ]
  %3802 = phi i32 [ %3809, %3796 ], [ %3787, %3781 ]
  %3803 = phi i32 [ %4222, %3796 ], [ -1, %3781 ]
  %3804 = phi i32 [ %4218, %3796 ], [ %3777, %3781 ]
  %3805 = phi i16 [ %4217, %3796 ], [ %3776, %3781 ]
  %3806 = getelementptr [4 x i8], ptr %0, i64 %indvars.iv580
  %3807 = getelementptr i8, ptr %3806, i64 2506
  %3808 = load i16, ptr %3807, align 2, !tbaa !28
  %3809 = zext i16 %3808 to i32
  %3810 = add nsw i32 %3801, 1
  %3811 = icmp slt i32 %3810, %3800
  %3812 = icmp eq i32 %3802, %3809
  %3813 = select i1 %3811, i1 %3812, i1 false
  br i1 %3813, label %4216, label %3814

3814:                                             ; preds = %3798
  %3815 = icmp slt i32 %3810, %3799
  br i1 %3815, label %3816, label %3876

3816:                                             ; preds = %3814
  %3817 = zext nneg i32 %3802 to i64
  %3818 = getelementptr inbounds nuw [4 x i8], ptr %3788, i64 %3817
  %3819 = getelementptr inbounds nuw i8, ptr %3818, i64 2
  br label %3820

3820:                                             ; preds = %3873, %3816
  %3821 = phi i16 [ %3868, %3873 ], [ %3805, %3816 ]
  %3822 = phi i32 [ %3870, %3873 ], [ %3804, %3816 ]
  %3823 = phi i32 [ %3874, %3873 ], [ %3810, %3816 ]
  %3824 = load i16, ptr %3819, align 2, !tbaa !28
  %3825 = zext i16 %3824 to i32
  %3826 = sub nsw i32 16, %3825
  %3827 = icmp sgt i32 %3822, %3826
  %3828 = load i16, ptr %3818, align 4, !tbaa !28
  %3829 = zext i16 %3828 to i32
  %3830 = shl i32 %3829, %3822
  %3831 = trunc i32 %3830 to i16
  %3832 = or i16 %3821, %3831
  store i16 %3832, ptr %3270, align 8, !tbaa !25
  br i1 %3827, label %3833, label %3864

.loopexit253:                                     ; preds = %4184, %4140, %4094, %4050, %4002, %3958, %3907, %3867, %3847
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

3833:                                             ; preds = %3820
  %3834 = load i64, ptr %3271, align 8, !tbaa !31
  %3835 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3834, i64 1), !nosanitize !30
  %3836 = extractvalue { i64, i1 } %3835, 1, !nosanitize !30
  br i1 %3836, label %3837, label %3838, !prof !32, !nosanitize !30

3837:                                             ; preds = %3833
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3838:                                             ; preds = %3833
  %3839 = extractvalue { i64, i1 } %3835, 0, !nosanitize !30
  %3840 = load ptr, ptr %3272, align 8, !tbaa !33
  %3841 = trunc i16 %3832 to i8
  store i64 %3839, ptr %3271, align 8, !tbaa !31
  %3842 = getelementptr inbounds nuw i8, ptr %3840, i64 %3834
  store i8 %3841, ptr %3842, align 1, !tbaa !28
  %3843 = load i64, ptr %3271, align 8, !tbaa !31
  %3844 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3843, i64 1), !nosanitize !30
  %3845 = extractvalue { i64, i1 } %3844, 1, !nosanitize !30
  br i1 %3845, label %3846, label %3847, !prof !32, !nosanitize !30

3846:                                             ; preds = %3857, %3838
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3847:                                             ; preds = %3838
  %3848 = extractvalue { i64, i1 } %3844, 0, !nosanitize !30
  %3849 = load ptr, ptr %3272, align 8, !tbaa !33
  %3850 = load i16, ptr %3270, align 8, !tbaa !25
  %3851 = lshr i16 %3850, 8
  %3852 = trunc nuw i16 %3851 to i8
  store i64 %3848, ptr %3271, align 8, !tbaa !31
  %3853 = getelementptr inbounds nuw i8, ptr %3849, i64 %3843
  store i8 %3852, ptr %3853, align 1, !tbaa !28
  %3854 = load i32, ptr %2452, align 4, !tbaa !26
  %3855 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3854), !nosanitize !30
  %3856 = extractvalue { i32, i1 } %3855, 1, !nosanitize !30
  br i1 %3856, label %.loopexit253, label %3857, !prof !32, !nosanitize !30

3857:                                             ; preds = %3847
  %3858 = extractvalue { i32, i1 } %3855, 0, !nosanitize !30
  %3859 = lshr i32 %3829, %3858
  %3860 = trunc nuw i32 %3859 to i16
  store i16 %3860, ptr %3270, align 8, !tbaa !25
  %3861 = add nsw i32 %3825, -16
  %3862 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3854, i32 %3861), !nosanitize !30
  %3863 = extractvalue { i32, i1 } %3862, 1, !nosanitize !30
  br i1 %3863, label %3846, label %3867, !prof !32, !nosanitize !30

3864:                                             ; preds = %3820
  %3865 = add nsw i32 %3822, %3825
  %3866 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3865, 0
  br label %3867

3867:                                             ; preds = %3864, %3857
  %3868 = phi i16 [ %3860, %3857 ], [ %3832, %3864 ]
  %3869 = phi { i32, i1 } [ %3862, %3857 ], [ %3866, %3864 ]
  %3870 = extractvalue { i32, i1 } %3869, 0
  store i32 %3870, ptr %2452, align 4, !tbaa !26
  %3871 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3823, i32 -1)
  %3872 = extractvalue { i32, i1 } %3871, 1, !nosanitize !30
  br i1 %3872, label %.loopexit253, label %3873, !prof !32, !nosanitize !30

3873:                                             ; preds = %3867
  %3874 = extractvalue { i32, i1 } %3871, 0, !nosanitize !30
  %3875 = icmp eq i32 %3874, 0
  br i1 %3875, label %.loopexit254, label %3820, !llvm.loop !83

3876:                                             ; preds = %3814
  %3877 = icmp eq i32 %3802, 0
  br i1 %3877, label %4024, label %3878

3878:                                             ; preds = %3876
  %3879 = icmp eq i32 %3802, %3803
  br i1 %3879, label %3931, label %3880

3880:                                             ; preds = %3878
  %3881 = zext nneg i32 %3802 to i64
  %3882 = getelementptr inbounds nuw [4 x i8], ptr %3788, i64 %3881
  %3883 = getelementptr inbounds nuw i8, ptr %3882, i64 2
  %3884 = load i16, ptr %3883, align 2, !tbaa !28
  %3885 = zext i16 %3884 to i32
  %3886 = sub nsw i32 16, %3885
  %3887 = icmp sgt i32 %3804, %3886
  %3888 = load i16, ptr %3882, align 4, !tbaa !28
  %3889 = zext i16 %3888 to i32
  %3890 = shl i32 %3889, %3804
  %3891 = trunc i32 %3890 to i16
  %3892 = or i16 %3805, %3891
  store i16 %3892, ptr %3270, align 8, !tbaa !25
  br i1 %3887, label %3893, label %3924

3893:                                             ; preds = %3880
  %3894 = load i64, ptr %3271, align 8, !tbaa !31
  %3895 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3894, i64 1), !nosanitize !30
  %3896 = extractvalue { i64, i1 } %3895, 1, !nosanitize !30
  br i1 %3896, label %3897, label %3898, !prof !32, !nosanitize !30

3897:                                             ; preds = %3893
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3898:                                             ; preds = %3893
  %3899 = extractvalue { i64, i1 } %3895, 0, !nosanitize !30
  %3900 = load ptr, ptr %3272, align 8, !tbaa !33
  %3901 = trunc i16 %3892 to i8
  store i64 %3899, ptr %3271, align 8, !tbaa !31
  %3902 = getelementptr inbounds nuw i8, ptr %3900, i64 %3894
  store i8 %3901, ptr %3902, align 1, !tbaa !28
  %3903 = load i64, ptr %3271, align 8, !tbaa !31
  %3904 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3903, i64 1), !nosanitize !30
  %3905 = extractvalue { i64, i1 } %3904, 1, !nosanitize !30
  br i1 %3905, label %3906, label %3907, !prof !32, !nosanitize !30

3906:                                             ; preds = %3917, %3898
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3907:                                             ; preds = %3898
  %3908 = extractvalue { i64, i1 } %3904, 0, !nosanitize !30
  %3909 = load ptr, ptr %3272, align 8, !tbaa !33
  %3910 = load i16, ptr %3270, align 8, !tbaa !25
  %3911 = lshr i16 %3910, 8
  %3912 = trunc nuw i16 %3911 to i8
  store i64 %3908, ptr %3271, align 8, !tbaa !31
  %3913 = getelementptr inbounds nuw i8, ptr %3909, i64 %3903
  store i8 %3912, ptr %3913, align 1, !tbaa !28
  %3914 = load i32, ptr %2452, align 4, !tbaa !26
  %3915 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3914), !nosanitize !30
  %3916 = extractvalue { i32, i1 } %3915, 1, !nosanitize !30
  br i1 %3916, label %.loopexit253, label %3917, !prof !32, !nosanitize !30

3917:                                             ; preds = %3907
  %3918 = extractvalue { i32, i1 } %3915, 0, !nosanitize !30
  %3919 = lshr i32 %3889, %3918
  %3920 = trunc nuw i32 %3919 to i16
  store i16 %3920, ptr %3270, align 8, !tbaa !25
  %3921 = add nsw i32 %3885, -16
  %3922 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3914, i32 %3921), !nosanitize !30
  %3923 = extractvalue { i32, i1 } %3922, 1, !nosanitize !30
  br i1 %3923, label %3906, label %3927, !prof !32, !nosanitize !30

3924:                                             ; preds = %3880
  %3925 = add nsw i32 %3804, %3885
  %3926 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3925, 0
  br label %3927

3927:                                             ; preds = %3924, %3917
  %3928 = phi i16 [ %3920, %3917 ], [ %3892, %3924 ]
  %3929 = phi { i32, i1 } [ %3922, %3917 ], [ %3926, %3924 ]
  %3930 = extractvalue { i32, i1 } %3929, 0
  store i32 %3930, ptr %2452, align 4, !tbaa !26
  br label %3931

3931:                                             ; preds = %3927, %3878
  %3932 = phi i16 [ %3928, %3927 ], [ %3805, %3878 ]
  %3933 = phi i32 [ %3930, %3927 ], [ %3804, %3878 ]
  %3934 = phi i32 [ %3801, %3927 ], [ %3810, %3878 ]
  %3935 = load i16, ptr %3790, align 2, !tbaa !28
  %3936 = zext i16 %3935 to i32
  %3937 = sub nsw i32 16, %3936
  %3938 = icmp sgt i32 %3933, %3937
  %3939 = load i16, ptr %3789, align 4, !tbaa !28
  %3940 = zext i16 %3939 to i32
  %3941 = shl i32 %3940, %3933
  %3942 = trunc i32 %3941 to i16
  %3943 = or i16 %3932, %3942
  store i16 %3943, ptr %3270, align 8, !tbaa !25
  br i1 %3938, label %3944, label %3975

3944:                                             ; preds = %3931
  %3945 = load i64, ptr %3271, align 8, !tbaa !31
  %3946 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3945, i64 1), !nosanitize !30
  %3947 = extractvalue { i64, i1 } %3946, 1, !nosanitize !30
  br i1 %3947, label %3948, label %3949, !prof !32, !nosanitize !30

3948:                                             ; preds = %3944
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3949:                                             ; preds = %3944
  %3950 = extractvalue { i64, i1 } %3946, 0, !nosanitize !30
  %3951 = load ptr, ptr %3272, align 8, !tbaa !33
  %3952 = trunc i16 %3943 to i8
  store i64 %3950, ptr %3271, align 8, !tbaa !31
  %3953 = getelementptr inbounds nuw i8, ptr %3951, i64 %3945
  store i8 %3952, ptr %3953, align 1, !tbaa !28
  %3954 = load i64, ptr %3271, align 8, !tbaa !31
  %3955 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3954, i64 1), !nosanitize !30
  %3956 = extractvalue { i64, i1 } %3955, 1, !nosanitize !30
  br i1 %3956, label %3957, label %3958, !prof !32, !nosanitize !30

3957:                                             ; preds = %3968, %3949
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3958:                                             ; preds = %3949
  %3959 = extractvalue { i64, i1 } %3955, 0, !nosanitize !30
  %3960 = load ptr, ptr %3272, align 8, !tbaa !33
  %3961 = load i16, ptr %3270, align 8, !tbaa !25
  %3962 = lshr i16 %3961, 8
  %3963 = trunc nuw i16 %3962 to i8
  store i64 %3959, ptr %3271, align 8, !tbaa !31
  %3964 = getelementptr inbounds nuw i8, ptr %3960, i64 %3954
  store i8 %3963, ptr %3964, align 1, !tbaa !28
  %3965 = load i32, ptr %2452, align 4, !tbaa !26
  %3966 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3965), !nosanitize !30
  %3967 = extractvalue { i32, i1 } %3966, 1, !nosanitize !30
  br i1 %3967, label %.loopexit253, label %3968, !prof !32, !nosanitize !30

3968:                                             ; preds = %3958
  %3969 = extractvalue { i32, i1 } %3966, 0, !nosanitize !30
  %3970 = lshr i32 %3940, %3969
  %3971 = trunc nuw i32 %3970 to i16
  store i16 %3971, ptr %3270, align 8, !tbaa !25
  %3972 = add nsw i32 %3936, -16
  %3973 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3965, i32 %3972), !nosanitize !30
  %3974 = extractvalue { i32, i1 } %3973, 1, !nosanitize !30
  br i1 %3974, label %3957, label %3978, !prof !32, !nosanitize !30

3975:                                             ; preds = %3931
  %3976 = add nsw i32 %3933, %3936
  %3977 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3976, 0
  br label %3978

3978:                                             ; preds = %3975, %3968
  %3979 = phi i16 [ %3971, %3968 ], [ %3943, %3975 ]
  %3980 = phi { i32, i1 } [ %3973, %3968 ], [ %3977, %3975 ]
  %3981 = extractvalue { i32, i1 } %3980, 0
  store i32 %3981, ptr %2452, align 4, !tbaa !26
  %3982 = icmp sgt i32 %3981, 14
  %3983 = add i32 %3934, 65533
  br i1 %3982, label %3984, label %4018

3984:                                             ; preds = %3978
  %3985 = and i32 %3983, 65535
  %3986 = shl i32 %3983, %3981
  %3987 = trunc i32 %3986 to i16
  %3988 = or i16 %3979, %3987
  store i16 %3988, ptr %3270, align 8, !tbaa !25
  %3989 = load i64, ptr %3271, align 8, !tbaa !31
  %3990 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3989, i64 1), !nosanitize !30
  %3991 = extractvalue { i64, i1 } %3990, 1, !nosanitize !30
  br i1 %3991, label %3992, label %3993, !prof !32, !nosanitize !30

3992:                                             ; preds = %3984
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3993:                                             ; preds = %3984
  %3994 = extractvalue { i64, i1 } %3990, 0, !nosanitize !30
  %3995 = load ptr, ptr %3272, align 8, !tbaa !33
  %3996 = trunc i16 %3988 to i8
  store i64 %3994, ptr %3271, align 8, !tbaa !31
  %3997 = getelementptr inbounds nuw i8, ptr %3995, i64 %3989
  store i8 %3996, ptr %3997, align 1, !tbaa !28
  %3998 = load i64, ptr %3271, align 8, !tbaa !31
  %3999 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3998, i64 1), !nosanitize !30
  %4000 = extractvalue { i64, i1 } %3999, 1, !nosanitize !30
  br i1 %4000, label %4001, label %4002, !prof !32, !nosanitize !30

4001:                                             ; preds = %4012, %3993
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4002:                                             ; preds = %3993
  %4003 = extractvalue { i64, i1 } %3999, 0, !nosanitize !30
  %4004 = load ptr, ptr %3272, align 8, !tbaa !33
  %4005 = load i16, ptr %3270, align 8, !tbaa !25
  %4006 = lshr i16 %4005, 8
  %4007 = trunc nuw i16 %4006 to i8
  store i64 %4003, ptr %3271, align 8, !tbaa !31
  %4008 = getelementptr inbounds nuw i8, ptr %4004, i64 %3998
  store i8 %4007, ptr %4008, align 1, !tbaa !28
  %4009 = load i32, ptr %2452, align 4, !tbaa !26
  %4010 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4009), !nosanitize !30
  %4011 = extractvalue { i32, i1 } %4010, 1, !nosanitize !30
  br i1 %4011, label %.loopexit253, label %4012, !prof !32, !nosanitize !30

4012:                                             ; preds = %4002
  %4013 = extractvalue { i32, i1 } %4010, 0, !nosanitize !30
  %4014 = lshr i32 %3985, %4013
  %4015 = trunc nuw i32 %4014 to i16
  store i16 %4015, ptr %3270, align 8, !tbaa !25
  %4016 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4009, i32 -14), !nosanitize !30
  %4017 = extractvalue { i32, i1 } %4016, 1, !nosanitize !30
  br i1 %4017, label %4001, label %4206, !prof !32, !nosanitize !30

4018:                                             ; preds = %3978
  %4019 = shl i32 %3983, %3981
  %4020 = trunc i32 %4019 to i16
  %4021 = or i16 %3979, %4020
  store i16 %4021, ptr %3270, align 8, !tbaa !25
  %4022 = add nsw i32 %3981, 2
  %4023 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4022, 0
  br label %4206

4024:                                             ; preds = %3876
  %4025 = icmp slt i32 %3801, 10
  br i1 %4025, label %4026, label %4116

4026:                                             ; preds = %4024
  %4027 = load i16, ptr %3794, align 2, !tbaa !28
  %4028 = zext i16 %4027 to i32
  %4029 = sub nsw i32 16, %4028
  %4030 = icmp sgt i32 %3804, %4029
  %4031 = load i16, ptr %3793, align 4, !tbaa !28
  %4032 = zext i16 %4031 to i32
  %4033 = shl i32 %4032, %3804
  %4034 = trunc i32 %4033 to i16
  %4035 = or i16 %3805, %4034
  store i16 %4035, ptr %3270, align 8, !tbaa !25
  br i1 %4030, label %4036, label %4067

4036:                                             ; preds = %4026
  %4037 = load i64, ptr %3271, align 8, !tbaa !31
  %4038 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4037, i64 1), !nosanitize !30
  %4039 = extractvalue { i64, i1 } %4038, 1, !nosanitize !30
  br i1 %4039, label %4040, label %4041, !prof !32, !nosanitize !30

4040:                                             ; preds = %4036
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4041:                                             ; preds = %4036
  %4042 = extractvalue { i64, i1 } %4038, 0, !nosanitize !30
  %4043 = load ptr, ptr %3272, align 8, !tbaa !33
  %4044 = trunc i16 %4035 to i8
  store i64 %4042, ptr %3271, align 8, !tbaa !31
  %4045 = getelementptr inbounds nuw i8, ptr %4043, i64 %4037
  store i8 %4044, ptr %4045, align 1, !tbaa !28
  %4046 = load i64, ptr %3271, align 8, !tbaa !31
  %4047 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4046, i64 1), !nosanitize !30
  %4048 = extractvalue { i64, i1 } %4047, 1, !nosanitize !30
  br i1 %4048, label %4049, label %4050, !prof !32, !nosanitize !30

4049:                                             ; preds = %4060, %4041
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4050:                                             ; preds = %4041
  %4051 = extractvalue { i64, i1 } %4047, 0, !nosanitize !30
  %4052 = load ptr, ptr %3272, align 8, !tbaa !33
  %4053 = load i16, ptr %3270, align 8, !tbaa !25
  %4054 = lshr i16 %4053, 8
  %4055 = trunc nuw i16 %4054 to i8
  store i64 %4051, ptr %3271, align 8, !tbaa !31
  %4056 = getelementptr inbounds nuw i8, ptr %4052, i64 %4046
  store i8 %4055, ptr %4056, align 1, !tbaa !28
  %4057 = load i32, ptr %2452, align 4, !tbaa !26
  %4058 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4057), !nosanitize !30
  %4059 = extractvalue { i32, i1 } %4058, 1, !nosanitize !30
  br i1 %4059, label %.loopexit253, label %4060, !prof !32, !nosanitize !30

4060:                                             ; preds = %4050
  %4061 = extractvalue { i32, i1 } %4058, 0, !nosanitize !30
  %4062 = lshr i32 %4032, %4061
  %4063 = trunc nuw i32 %4062 to i16
  store i16 %4063, ptr %3270, align 8, !tbaa !25
  %4064 = add nsw i32 %4028, -16
  %4065 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4057, i32 %4064), !nosanitize !30
  %4066 = extractvalue { i32, i1 } %4065, 1, !nosanitize !30
  br i1 %4066, label %4049, label %4070, !prof !32, !nosanitize !30

4067:                                             ; preds = %4026
  %4068 = add nsw i32 %3804, %4028
  %4069 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4068, 0
  br label %4070

4070:                                             ; preds = %4067, %4060
  %4071 = phi i16 [ %4063, %4060 ], [ %4035, %4067 ]
  %4072 = phi { i32, i1 } [ %4065, %4060 ], [ %4069, %4067 ]
  %4073 = extractvalue { i32, i1 } %4072, 0
  store i32 %4073, ptr %2452, align 4, !tbaa !26
  %4074 = icmp sgt i32 %4073, 13
  %4075 = add nsw i32 %3801, 65534
  br i1 %4074, label %4076, label %4110

4076:                                             ; preds = %4070
  %4077 = and i32 %4075, 65535
  %4078 = shl i32 %4075, %4073
  %4079 = trunc i32 %4078 to i16
  %4080 = or i16 %4071, %4079
  store i16 %4080, ptr %3270, align 8, !tbaa !25
  %4081 = load i64, ptr %3271, align 8, !tbaa !31
  %4082 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4081, i64 1), !nosanitize !30
  %4083 = extractvalue { i64, i1 } %4082, 1, !nosanitize !30
  br i1 %4083, label %4084, label %4085, !prof !32, !nosanitize !30

4084:                                             ; preds = %4076
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4085:                                             ; preds = %4076
  %4086 = extractvalue { i64, i1 } %4082, 0, !nosanitize !30
  %4087 = load ptr, ptr %3272, align 8, !tbaa !33
  %4088 = trunc i16 %4080 to i8
  store i64 %4086, ptr %3271, align 8, !tbaa !31
  %4089 = getelementptr inbounds nuw i8, ptr %4087, i64 %4081
  store i8 %4088, ptr %4089, align 1, !tbaa !28
  %4090 = load i64, ptr %3271, align 8, !tbaa !31
  %4091 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4090, i64 1), !nosanitize !30
  %4092 = extractvalue { i64, i1 } %4091, 1, !nosanitize !30
  br i1 %4092, label %4093, label %4094, !prof !32, !nosanitize !30

4093:                                             ; preds = %4104, %4085
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4094:                                             ; preds = %4085
  %4095 = extractvalue { i64, i1 } %4091, 0, !nosanitize !30
  %4096 = load ptr, ptr %3272, align 8, !tbaa !33
  %4097 = load i16, ptr %3270, align 8, !tbaa !25
  %4098 = lshr i16 %4097, 8
  %4099 = trunc nuw i16 %4098 to i8
  store i64 %4095, ptr %3271, align 8, !tbaa !31
  %4100 = getelementptr inbounds nuw i8, ptr %4096, i64 %4090
  store i8 %4099, ptr %4100, align 1, !tbaa !28
  %4101 = load i32, ptr %2452, align 4, !tbaa !26
  %4102 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4101), !nosanitize !30
  %4103 = extractvalue { i32, i1 } %4102, 1, !nosanitize !30
  br i1 %4103, label %.loopexit253, label %4104, !prof !32, !nosanitize !30

4104:                                             ; preds = %4094
  %4105 = extractvalue { i32, i1 } %4102, 0, !nosanitize !30
  %4106 = lshr i32 %4077, %4105
  %4107 = trunc nuw i32 %4106 to i16
  store i16 %4107, ptr %3270, align 8, !tbaa !25
  %4108 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4101, i32 -13), !nosanitize !30
  %4109 = extractvalue { i32, i1 } %4108, 1, !nosanitize !30
  br i1 %4109, label %4093, label %4206, !prof !32, !nosanitize !30

4110:                                             ; preds = %4070
  %4111 = shl i32 %4075, %4073
  %4112 = trunc i32 %4111 to i16
  %4113 = or i16 %4071, %4112
  store i16 %4113, ptr %3270, align 8, !tbaa !25
  %4114 = add nsw i32 %4073, 3
  %4115 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4114, 0
  br label %4206

4116:                                             ; preds = %4024
  %4117 = load i16, ptr %3792, align 2, !tbaa !28
  %4118 = zext i16 %4117 to i32
  %4119 = sub nsw i32 16, %4118
  %4120 = icmp sgt i32 %3804, %4119
  %4121 = load i16, ptr %3791, align 4, !tbaa !28
  %4122 = zext i16 %4121 to i32
  %4123 = shl i32 %4122, %3804
  %4124 = trunc i32 %4123 to i16
  %4125 = or i16 %3805, %4124
  store i16 %4125, ptr %3270, align 8, !tbaa !25
  br i1 %4120, label %4126, label %4157

4126:                                             ; preds = %4116
  %4127 = load i64, ptr %3271, align 8, !tbaa !31
  %4128 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4127, i64 1), !nosanitize !30
  %4129 = extractvalue { i64, i1 } %4128, 1, !nosanitize !30
  br i1 %4129, label %4130, label %4131, !prof !32, !nosanitize !30

4130:                                             ; preds = %4126
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4131:                                             ; preds = %4126
  %4132 = extractvalue { i64, i1 } %4128, 0, !nosanitize !30
  %4133 = load ptr, ptr %3272, align 8, !tbaa !33
  %4134 = trunc i16 %4125 to i8
  store i64 %4132, ptr %3271, align 8, !tbaa !31
  %4135 = getelementptr inbounds nuw i8, ptr %4133, i64 %4127
  store i8 %4134, ptr %4135, align 1, !tbaa !28
  %4136 = load i64, ptr %3271, align 8, !tbaa !31
  %4137 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4136, i64 1), !nosanitize !30
  %4138 = extractvalue { i64, i1 } %4137, 1, !nosanitize !30
  br i1 %4138, label %4139, label %4140, !prof !32, !nosanitize !30

4139:                                             ; preds = %4150, %4131
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4140:                                             ; preds = %4131
  %4141 = extractvalue { i64, i1 } %4137, 0, !nosanitize !30
  %4142 = load ptr, ptr %3272, align 8, !tbaa !33
  %4143 = load i16, ptr %3270, align 8, !tbaa !25
  %4144 = lshr i16 %4143, 8
  %4145 = trunc nuw i16 %4144 to i8
  store i64 %4141, ptr %3271, align 8, !tbaa !31
  %4146 = getelementptr inbounds nuw i8, ptr %4142, i64 %4136
  store i8 %4145, ptr %4146, align 1, !tbaa !28
  %4147 = load i32, ptr %2452, align 4, !tbaa !26
  %4148 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4147), !nosanitize !30
  %4149 = extractvalue { i32, i1 } %4148, 1, !nosanitize !30
  br i1 %4149, label %.loopexit253, label %4150, !prof !32, !nosanitize !30

4150:                                             ; preds = %4140
  %4151 = extractvalue { i32, i1 } %4148, 0, !nosanitize !30
  %4152 = lshr i32 %4122, %4151
  %4153 = trunc nuw i32 %4152 to i16
  store i16 %4153, ptr %3270, align 8, !tbaa !25
  %4154 = add nsw i32 %4118, -16
  %4155 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4147, i32 %4154), !nosanitize !30
  %4156 = extractvalue { i32, i1 } %4155, 1, !nosanitize !30
  br i1 %4156, label %4139, label %4160, !prof !32, !nosanitize !30

4157:                                             ; preds = %4116
  %4158 = add nsw i32 %3804, %4118
  %4159 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4158, 0
  br label %4160

4160:                                             ; preds = %4157, %4150
  %4161 = phi i16 [ %4153, %4150 ], [ %4125, %4157 ]
  %4162 = phi { i32, i1 } [ %4155, %4150 ], [ %4159, %4157 ]
  %4163 = extractvalue { i32, i1 } %4162, 0
  store i32 %4163, ptr %2452, align 4, !tbaa !26
  %4164 = icmp sgt i32 %4163, 9
  %4165 = add nuw i32 %3801, 65526
  br i1 %4164, label %4166, label %4200

4166:                                             ; preds = %4160
  %4167 = and i32 %4165, 65535
  %4168 = shl i32 %4165, %4163
  %4169 = trunc i32 %4168 to i16
  %4170 = or i16 %4161, %4169
  store i16 %4170, ptr %3270, align 8, !tbaa !25
  %4171 = load i64, ptr %3271, align 8, !tbaa !31
  %4172 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4171, i64 1), !nosanitize !30
  %4173 = extractvalue { i64, i1 } %4172, 1, !nosanitize !30
  br i1 %4173, label %4174, label %4175, !prof !32, !nosanitize !30

4174:                                             ; preds = %4166
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4175:                                             ; preds = %4166
  %4176 = extractvalue { i64, i1 } %4172, 0, !nosanitize !30
  %4177 = load ptr, ptr %3272, align 8, !tbaa !33
  %4178 = trunc i16 %4170 to i8
  store i64 %4176, ptr %3271, align 8, !tbaa !31
  %4179 = getelementptr inbounds nuw i8, ptr %4177, i64 %4171
  store i8 %4178, ptr %4179, align 1, !tbaa !28
  %4180 = load i64, ptr %3271, align 8, !tbaa !31
  %4181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4180, i64 1), !nosanitize !30
  %4182 = extractvalue { i64, i1 } %4181, 1, !nosanitize !30
  br i1 %4182, label %4183, label %4184, !prof !32, !nosanitize !30

4183:                                             ; preds = %4194, %4175
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4184:                                             ; preds = %4175
  %4185 = extractvalue { i64, i1 } %4181, 0, !nosanitize !30
  %4186 = load ptr, ptr %3272, align 8, !tbaa !33
  %4187 = load i16, ptr %3270, align 8, !tbaa !25
  %4188 = lshr i16 %4187, 8
  %4189 = trunc nuw i16 %4188 to i8
  store i64 %4185, ptr %3271, align 8, !tbaa !31
  %4190 = getelementptr inbounds nuw i8, ptr %4186, i64 %4180
  store i8 %4189, ptr %4190, align 1, !tbaa !28
  %4191 = load i32, ptr %2452, align 4, !tbaa !26
  %4192 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4191), !nosanitize !30
  %4193 = extractvalue { i32, i1 } %4192, 1, !nosanitize !30
  br i1 %4193, label %.loopexit253, label %4194, !prof !32, !nosanitize !30

4194:                                             ; preds = %4184
  %4195 = extractvalue { i32, i1 } %4192, 0, !nosanitize !30
  %4196 = lshr i32 %4167, %4195
  %4197 = trunc nuw i32 %4196 to i16
  store i16 %4197, ptr %3270, align 8, !tbaa !25
  %4198 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4191, i32 -9), !nosanitize !30
  %4199 = extractvalue { i32, i1 } %4198, 1, !nosanitize !30
  br i1 %4199, label %4183, label %4206, !prof !32, !nosanitize !30

4200:                                             ; preds = %4160
  %4201 = shl i32 %4165, %4163
  %4202 = trunc i32 %4201 to i16
  %4203 = or i16 %4161, %4202
  store i16 %4203, ptr %3270, align 8, !tbaa !25
  %4204 = add nsw i32 %4163, 7
  %4205 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4204, 0
  br label %4206

4206:                                             ; preds = %4200, %4194, %4110, %4104, %4018, %4012
  %4207 = phi i16 [ %4021, %4018 ], [ %4113, %4110 ], [ %4015, %4012 ], [ %4107, %4104 ], [ %4197, %4194 ], [ %4203, %4200 ]
  %4208 = phi { i32, i1 } [ %4023, %4018 ], [ %4115, %4110 ], [ %4016, %4012 ], [ %4108, %4104 ], [ %4198, %4194 ], [ %4205, %4200 ]
  %4209 = extractvalue { i32, i1 } %4208, 0
  store i32 %4209, ptr %2452, align 4, !tbaa !26
  br label %.loopexit254

.loopexit254:                                     ; preds = %3873, %4206
  %4210 = phi i16 [ %4207, %4206 ], [ %3868, %3873 ]
  %4211 = phi i32 [ %4209, %4206 ], [ %3870, %3873 ]
  %4212 = icmp eq i16 %3808, 0
  br i1 %4212, label %4216, label %4213

4213:                                             ; preds = %.loopexit254
  %4214 = select i1 %3812, i32 3, i32 4
  %4215 = select i1 %3812, i32 6, i32 7
  br label %4216

4216:                                             ; preds = %4213, %.loopexit254, %3798
  %4217 = phi i16 [ %3805, %3798 ], [ %4210, %.loopexit254 ], [ %4210, %4213 ]
  %4218 = phi i32 [ %3804, %3798 ], [ %4211, %.loopexit254 ], [ %4211, %4213 ]
  %4219 = phi i32 [ %3799, %3798 ], [ 3, %.loopexit254 ], [ %4214, %4213 ]
  %4220 = phi i32 [ %3800, %3798 ], [ 138, %.loopexit254 ], [ %4215, %4213 ]
  %4221 = phi i32 [ %3810, %3798 ], [ 0, %.loopexit254 ], [ 0, %4213 ]
  %4222 = phi i32 [ %3803, %3798 ], [ %3802, %.loopexit254 ], [ %3802, %4213 ]
  %exitcond583 = icmp eq i64 %indvars.iv580, %wide.trip.count582
  br i1 %exitcond583, label %.loopexit256, label %3796, !llvm.loop !82

.loopexit256:                                     ; preds = %4216, %3778
  %4223 = phi i16 [ %3776, %3778 ], [ %4217, %4216 ]
  %4224 = phi i32 [ %3777, %3778 ], [ %4218, %4216 ]
  %4225 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %4226 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %4227 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %4228 = load i32, ptr %4227, align 4, !tbaa !29
  %4229 = icmp eq i32 %4228, 0
  br i1 %4229, label %.loopexit252, label %4230

4230:                                             ; preds = %.loopexit256
  %4231 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %4232

4232:                                             ; preds = %4556, %4230
  %4233 = phi i16 [ %4557, %4556 ], [ %4223, %4230 ]
  %4234 = phi i32 [ %4558, %4556 ], [ %4224, %4230 ]
  %4235 = phi i32 [ %4254, %4556 ], [ 0, %4230 ]
  %4236 = load ptr, ptr %4231, align 8, !tbaa !79
  %4237 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4235, i32 2)
  %4238 = extractvalue { i32, i1 } %4237, 0, !nosanitize !30
  %4239 = extractvalue { i32, i1 } %4237, 1, !nosanitize !30
  br i1 %4239, label %4240, label %4241, !prof !32, !nosanitize !30

4240:                                             ; preds = %4232
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4241:                                             ; preds = %4232
  %4242 = add nuw i32 %4235, 1
  %4243 = zext i32 %4235 to i64
  %4244 = getelementptr inbounds nuw i8, ptr %4236, i64 %4243
  %4245 = load i8, ptr %4244, align 1, !tbaa !28
  %4246 = zext i8 %4245 to i32
  %4247 = zext i32 %4242 to i64
  %4248 = getelementptr inbounds nuw i8, ptr %4236, i64 %4247
  %4249 = load i8, ptr %4248, align 1, !tbaa !28
  %4250 = zext i8 %4249 to i32
  %4251 = shl nuw nsw i32 %4250, 8
  %4252 = or disjoint i32 %4251, %4246
  %4253 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4238, i32 1), !nosanitize !30
  %4254 = extractvalue { i32, i1 } %4253, 0, !nosanitize !30
  %4255 = extractvalue { i32, i1 } %4253, 1, !nosanitize !30
  br i1 %4255, label %4256, label %4257, !prof !32, !nosanitize !30

4256:                                             ; preds = %4241
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4257:                                             ; preds = %4241
  %4258 = zext i32 %4238 to i64
  %4259 = getelementptr inbounds nuw i8, ptr %4236, i64 %4258
  %4260 = load i8, ptr %4259, align 1, !tbaa !28
  %4261 = zext i8 %4260 to i32
  %4262 = icmp eq i32 %4252, 0
  %4263 = zext i8 %4260 to i64
  br i1 %4262, label %4264, label %4311

4264:                                             ; preds = %4257
  %4265 = getelementptr inbounds nuw [4 x i8], ptr %4225, i64 %4263
  %4266 = getelementptr inbounds nuw i8, ptr %4265, i64 2
  %4267 = load i16, ptr %4266, align 2, !tbaa !28
  %4268 = zext i16 %4267 to i32
  %4269 = sub nsw i32 16, %4268
  %4270 = icmp sgt i32 %4234, %4269
  %4271 = load i16, ptr %4265, align 2, !tbaa !28
  %4272 = zext i16 %4271 to i32
  %4273 = shl i32 %4272, %4234
  %4274 = trunc i32 %4273 to i16
  %4275 = or i16 %4233, %4274
  store i16 %4275, ptr %3270, align 8, !tbaa !25
  br i1 %4270, label %4277, label %4308

4276:                                             ; preds = %4409, %4399, %4375, %4369, %4341, %4291
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

4277:                                             ; preds = %4264
  %4278 = load i64, ptr %3271, align 8, !tbaa !31
  %4279 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4278, i64 1), !nosanitize !30
  %4280 = extractvalue { i64, i1 } %4279, 1, !nosanitize !30
  br i1 %4280, label %4281, label %4282, !prof !32, !nosanitize !30

4281:                                             ; preds = %4277
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4282:                                             ; preds = %4277
  %4283 = extractvalue { i64, i1 } %4279, 0, !nosanitize !30
  %4284 = load ptr, ptr %3272, align 8, !tbaa !33
  %4285 = trunc i16 %4275 to i8
  store i64 %4283, ptr %3271, align 8, !tbaa !31
  %4286 = getelementptr inbounds nuw i8, ptr %4284, i64 %4278
  store i8 %4285, ptr %4286, align 1, !tbaa !28
  %4287 = load i64, ptr %3271, align 8, !tbaa !31
  %4288 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4287, i64 1), !nosanitize !30
  %4289 = extractvalue { i64, i1 } %4288, 1, !nosanitize !30
  br i1 %4289, label %4290, label %4291, !prof !32, !nosanitize !30

4290:                                             ; preds = %4301, %4282
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4291:                                             ; preds = %4282
  %4292 = extractvalue { i64, i1 } %4288, 0, !nosanitize !30
  %4293 = load ptr, ptr %3272, align 8, !tbaa !33
  %4294 = load i16, ptr %3270, align 8, !tbaa !25
  %4295 = lshr i16 %4294, 8
  %4296 = trunc nuw i16 %4295 to i8
  store i64 %4292, ptr %3271, align 8, !tbaa !31
  %4297 = getelementptr inbounds nuw i8, ptr %4293, i64 %4287
  store i8 %4296, ptr %4297, align 1, !tbaa !28
  %4298 = load i32, ptr %2452, align 4, !tbaa !26
  %4299 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4298), !nosanitize !30
  %4300 = extractvalue { i32, i1 } %4299, 1, !nosanitize !30
  br i1 %4300, label %4276, label %4301, !prof !32, !nosanitize !30

4301:                                             ; preds = %4291
  %4302 = extractvalue { i32, i1 } %4299, 0, !nosanitize !30
  %4303 = lshr i32 %4272, %4302
  %4304 = trunc nuw i32 %4303 to i16
  store i16 %4304, ptr %3270, align 8, !tbaa !25
  %4305 = add nsw i32 %4268, -16
  %4306 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4298, i32 %4305), !nosanitize !30
  %4307 = extractvalue { i32, i1 } %4306, 1, !nosanitize !30
  br i1 %4307, label %4290, label %4552, !prof !32, !nosanitize !30

4308:                                             ; preds = %4264
  %4309 = add nsw i32 %4234, %4268
  %4310 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4309, 0
  br label %4552

4311:                                             ; preds = %4257
  %4312 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %4263
  %4313 = load i8, ptr %4312, align 1, !tbaa !28
  %4314 = zext i8 %4313 to i64
  %4315 = getelementptr inbounds nuw [4 x i8], ptr %4225, i64 %4314
  %4316 = getelementptr inbounds nuw i8, ptr %4315, i64 1028
  %4317 = getelementptr inbounds nuw i8, ptr %4315, i64 1030
  %4318 = load i16, ptr %4317, align 2, !tbaa !28
  %4319 = zext i16 %4318 to i32
  %4320 = sub nsw i32 16, %4319
  %4321 = icmp sgt i32 %4234, %4320
  %4322 = load i16, ptr %4316, align 2, !tbaa !28
  %4323 = zext i16 %4322 to i32
  %4324 = shl i32 %4323, %4234
  %4325 = trunc i32 %4324 to i16
  %4326 = or i16 %4233, %4325
  store i16 %4326, ptr %3270, align 8, !tbaa !25
  br i1 %4321, label %4327, label %4358

4327:                                             ; preds = %4311
  %4328 = load i64, ptr %3271, align 8, !tbaa !31
  %4329 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4328, i64 1), !nosanitize !30
  %4330 = extractvalue { i64, i1 } %4329, 1, !nosanitize !30
  br i1 %4330, label %4331, label %4332, !prof !32, !nosanitize !30

4331:                                             ; preds = %4327
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4332:                                             ; preds = %4327
  %4333 = extractvalue { i64, i1 } %4329, 0, !nosanitize !30
  %4334 = load ptr, ptr %3272, align 8, !tbaa !33
  %4335 = trunc i16 %4326 to i8
  store i64 %4333, ptr %3271, align 8, !tbaa !31
  %4336 = getelementptr inbounds nuw i8, ptr %4334, i64 %4328
  store i8 %4335, ptr %4336, align 1, !tbaa !28
  %4337 = load i64, ptr %3271, align 8, !tbaa !31
  %4338 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4337, i64 1), !nosanitize !30
  %4339 = extractvalue { i64, i1 } %4338, 1, !nosanitize !30
  br i1 %4339, label %4340, label %4341, !prof !32, !nosanitize !30

4340:                                             ; preds = %4351, %4332
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4341:                                             ; preds = %4332
  %4342 = extractvalue { i64, i1 } %4338, 0, !nosanitize !30
  %4343 = load ptr, ptr %3272, align 8, !tbaa !33
  %4344 = load i16, ptr %3270, align 8, !tbaa !25
  %4345 = lshr i16 %4344, 8
  %4346 = trunc nuw i16 %4345 to i8
  store i64 %4342, ptr %3271, align 8, !tbaa !31
  %4347 = getelementptr inbounds nuw i8, ptr %4343, i64 %4337
  store i8 %4346, ptr %4347, align 1, !tbaa !28
  %4348 = load i32, ptr %2452, align 4, !tbaa !26
  %4349 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4348), !nosanitize !30
  %4350 = extractvalue { i32, i1 } %4349, 1, !nosanitize !30
  br i1 %4350, label %4276, label %4351, !prof !32, !nosanitize !30

4351:                                             ; preds = %4341
  %4352 = extractvalue { i32, i1 } %4349, 0, !nosanitize !30
  %4353 = lshr i32 %4323, %4352
  %4354 = trunc nuw i32 %4353 to i16
  store i16 %4354, ptr %3270, align 8, !tbaa !25
  %4355 = add nsw i32 %4319, -16
  %4356 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4348, i32 %4355), !nosanitize !30
  %4357 = extractvalue { i32, i1 } %4356, 1, !nosanitize !30
  br i1 %4357, label %4340, label %4361, !prof !32, !nosanitize !30

4358:                                             ; preds = %4311
  %4359 = add nsw i32 %4234, %4319
  %4360 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4359, 0
  br label %4361

4361:                                             ; preds = %4358, %4351
  %4362 = phi i16 [ %4354, %4351 ], [ %4326, %4358 ]
  %4363 = phi { i32, i1 } [ %4356, %4351 ], [ %4360, %4358 ]
  %4364 = extractvalue { i32, i1 } %4363, 0
  store i32 %4364, ptr %2452, align 4, !tbaa !26
  %4365 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %4314
  %4366 = load i32, ptr %4365, align 4, !tbaa !4
  %4367 = add i8 %4313, -28
  %4368 = icmp ult i8 %4367, -20
  br i1 %4368, label %4429, label %4369

4369:                                             ; preds = %4361
  %4370 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %4314
  %4371 = load i32, ptr %4370, align 4, !tbaa !4
  %4372 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4261, i32 %4371), !nosanitize !30
  %4373 = extractvalue { i32, i1 } %4372, 0, !nosanitize !30
  %4374 = extractvalue { i32, i1 } %4372, 1, !nosanitize !30
  br i1 %4374, label %4276, label %4375, !prof !32, !nosanitize !30

4375:                                             ; preds = %4369
  %4376 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4366), !nosanitize !30
  %4377 = extractvalue { i32, i1 } %4376, 1, !nosanitize !30
  br i1 %4377, label %4276, label %4378, !prof !32, !nosanitize !30

4378:                                             ; preds = %4375
  %4379 = extractvalue { i32, i1 } %4376, 0, !nosanitize !30
  %4380 = icmp sgt i32 %4364, %4379
  br i1 %4380, label %4381, label %4419

4381:                                             ; preds = %4378
  %4382 = and i32 %4373, 65535
  %4383 = shl i32 %4373, %4364
  %4384 = trunc i32 %4383 to i16
  %4385 = or i16 %4362, %4384
  store i16 %4385, ptr %3270, align 8, !tbaa !25
  %4386 = load i64, ptr %3271, align 8, !tbaa !31
  %4387 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4386, i64 1), !nosanitize !30
  %4388 = extractvalue { i64, i1 } %4387, 1, !nosanitize !30
  br i1 %4388, label %4389, label %4390, !prof !32, !nosanitize !30

4389:                                             ; preds = %4381
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4390:                                             ; preds = %4381
  %4391 = extractvalue { i64, i1 } %4387, 0, !nosanitize !30
  %4392 = load ptr, ptr %3272, align 8, !tbaa !33
  %4393 = trunc i16 %4385 to i8
  store i64 %4391, ptr %3271, align 8, !tbaa !31
  %4394 = getelementptr inbounds nuw i8, ptr %4392, i64 %4386
  store i8 %4393, ptr %4394, align 1, !tbaa !28
  %4395 = load i64, ptr %3271, align 8, !tbaa !31
  %4396 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4395, i64 1), !nosanitize !30
  %4397 = extractvalue { i64, i1 } %4396, 1, !nosanitize !30
  br i1 %4397, label %4398, label %4399, !prof !32, !nosanitize !30

4398:                                             ; preds = %4419, %4415, %4390
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4399:                                             ; preds = %4390
  %4400 = extractvalue { i64, i1 } %4396, 0, !nosanitize !30
  %4401 = load ptr, ptr %3272, align 8, !tbaa !33
  %4402 = load i16, ptr %3270, align 8, !tbaa !25
  %4403 = lshr i16 %4402, 8
  %4404 = trunc nuw i16 %4403 to i8
  store i64 %4400, ptr %3271, align 8, !tbaa !31
  %4405 = getelementptr inbounds nuw i8, ptr %4401, i64 %4395
  store i8 %4404, ptr %4405, align 1, !tbaa !28
  %4406 = load i32, ptr %2452, align 4, !tbaa !26
  %4407 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4406), !nosanitize !30
  %4408 = extractvalue { i32, i1 } %4407, 1, !nosanitize !30
  br i1 %4408, label %4276, label %4409, !prof !32, !nosanitize !30

4409:                                             ; preds = %4399
  %4410 = extractvalue { i32, i1 } %4407, 0, !nosanitize !30
  %4411 = lshr i32 %4382, %4410
  %4412 = trunc nuw i32 %4411 to i16
  store i16 %4412, ptr %3270, align 8, !tbaa !25
  %4413 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4366, i32 -16)
  %4414 = extractvalue { i32, i1 } %4413, 1, !nosanitize !30
  br i1 %4414, label %4276, label %4415, !prof !32, !nosanitize !30

4415:                                             ; preds = %4409
  %4416 = extractvalue { i32, i1 } %4413, 0, !nosanitize !30
  %4417 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4406, i32 %4416), !nosanitize !30
  %4418 = extractvalue { i32, i1 } %4417, 1, !nosanitize !30
  br i1 %4418, label %4398, label %4425, !prof !32, !nosanitize !30

4419:                                             ; preds = %4378
  %4420 = shl i32 %4373, %4364
  %4421 = trunc i32 %4420 to i16
  %4422 = or i16 %4362, %4421
  store i16 %4422, ptr %3270, align 8, !tbaa !25
  %4423 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4364, i32 %4366), !nosanitize !30
  %4424 = extractvalue { i32, i1 } %4423, 1, !nosanitize !30
  br i1 %4424, label %4398, label %4425, !prof !32, !nosanitize !30

4425:                                             ; preds = %4419, %4415
  %4426 = phi i16 [ %4412, %4415 ], [ %4422, %4419 ]
  %4427 = phi { i32, i1 } [ %4417, %4415 ], [ %4423, %4419 ]
  %4428 = extractvalue { i32, i1 } %4427, 0
  store i32 %4428, ptr %2452, align 4, !tbaa !26
  br label %4429

4429:                                             ; preds = %4425, %4361
  %4430 = phi i16 [ %4426, %4425 ], [ %4362, %4361 ]
  %4431 = phi i32 [ %4428, %4425 ], [ %4364, %4361 ]
  %4432 = add nsw i32 %4252, -1
  %4433 = icmp samesign ult i32 %4252, 257
  %4434 = zext nneg i32 %4432 to i64
  %4435 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4434
  %4436 = lshr i32 %4432, 7
  %4437 = zext nneg i32 %4436 to i64
  %4438 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4437
  %4439 = getelementptr inbounds nuw i8, ptr %4438, i64 256
  %4440 = select i1 %4433, ptr %4435, ptr %4439
  %4441 = load i8, ptr %4440, align 1, !tbaa !28
  %4442 = zext i8 %4441 to i64
  %4443 = getelementptr inbounds nuw [4 x i8], ptr %4226, i64 %4442
  %4444 = getelementptr inbounds nuw i8, ptr %4443, i64 2
  %4445 = load i16, ptr %4444, align 2, !tbaa !28
  %4446 = zext i16 %4445 to i32
  %4447 = sub nsw i32 16, %4446
  %4448 = icmp sgt i32 %4431, %4447
  %4449 = load i16, ptr %4443, align 2, !tbaa !28
  %4450 = zext i16 %4449 to i32
  %4451 = shl i32 %4450, %4431
  %4452 = trunc i32 %4451 to i16
  %4453 = or i16 %4430, %4452
  store i16 %4453, ptr %3270, align 8, !tbaa !25
  br i1 %4448, label %4455, label %4486

4454:                                             ; preds = %4469
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

4455:                                             ; preds = %4429
  %4456 = load i64, ptr %3271, align 8, !tbaa !31
  %4457 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4456, i64 1), !nosanitize !30
  %4458 = extractvalue { i64, i1 } %4457, 1, !nosanitize !30
  br i1 %4458, label %4459, label %4460, !prof !32, !nosanitize !30

4459:                                             ; preds = %4455
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4460:                                             ; preds = %4455
  %4461 = extractvalue { i64, i1 } %4457, 0, !nosanitize !30
  %4462 = load ptr, ptr %3272, align 8, !tbaa !33
  %4463 = trunc i16 %4453 to i8
  store i64 %4461, ptr %3271, align 8, !tbaa !31
  %4464 = getelementptr inbounds nuw i8, ptr %4462, i64 %4456
  store i8 %4463, ptr %4464, align 1, !tbaa !28
  %4465 = load i64, ptr %3271, align 8, !tbaa !31
  %4466 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4465, i64 1), !nosanitize !30
  %4467 = extractvalue { i64, i1 } %4466, 1, !nosanitize !30
  br i1 %4467, label %4468, label %4469, !prof !32, !nosanitize !30

4468:                                             ; preds = %4479, %4460
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4469:                                             ; preds = %4460
  %4470 = extractvalue { i64, i1 } %4466, 0, !nosanitize !30
  %4471 = load ptr, ptr %3272, align 8, !tbaa !33
  %4472 = load i16, ptr %3270, align 8, !tbaa !25
  %4473 = lshr i16 %4472, 8
  %4474 = trunc nuw i16 %4473 to i8
  store i64 %4470, ptr %3271, align 8, !tbaa !31
  %4475 = getelementptr inbounds nuw i8, ptr %4471, i64 %4465
  store i8 %4474, ptr %4475, align 1, !tbaa !28
  %4476 = load i32, ptr %2452, align 4, !tbaa !26
  %4477 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4476), !nosanitize !30
  %4478 = extractvalue { i32, i1 } %4477, 1, !nosanitize !30
  br i1 %4478, label %4454, label %4479, !prof !32, !nosanitize !30

4479:                                             ; preds = %4469
  %4480 = extractvalue { i32, i1 } %4477, 0, !nosanitize !30
  %4481 = lshr i32 %4450, %4480
  %4482 = trunc nuw i32 %4481 to i16
  store i16 %4482, ptr %3270, align 8, !tbaa !25
  %4483 = add nsw i32 %4446, -16
  %4484 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4476, i32 %4483), !nosanitize !30
  %4485 = extractvalue { i32, i1 } %4484, 1, !nosanitize !30
  br i1 %4485, label %4468, label %4489, !prof !32, !nosanitize !30

4486:                                             ; preds = %4429
  %4487 = add nsw i32 %4431, %4446
  %4488 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4487, 0
  br label %4489

4489:                                             ; preds = %4486, %4479
  %4490 = phi i16 [ %4482, %4479 ], [ %4453, %4486 ]
  %4491 = phi { i32, i1 } [ %4484, %4479 ], [ %4488, %4486 ]
  %4492 = extractvalue { i32, i1 } %4491, 0
  store i32 %4492, ptr %2452, align 4, !tbaa !26
  %4493 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %4442
  %4494 = load i32, ptr %4493, align 4, !tbaa !4
  %4495 = icmp ult i8 %4441, 4
  br i1 %4495, label %4556, label %4496

4496:                                             ; preds = %4489
  %4497 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %4442
  %4498 = load i32, ptr %4497, align 4, !tbaa !4
  %4499 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %4432, i32 %4498), !nosanitize !30
  %4500 = extractvalue { i32, i1 } %4499, 0, !nosanitize !30
  %4501 = extractvalue { i32, i1 } %4499, 1, !nosanitize !30
  br i1 %4501, label %.loopexit251, label %4502, !prof !32, !nosanitize !30

.loopexit251:                                     ; preds = %4536, %4526, %4502, %4496, %4588
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

4502:                                             ; preds = %4496
  %4503 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4494), !nosanitize !30
  %4504 = extractvalue { i32, i1 } %4503, 1, !nosanitize !30
  br i1 %4504, label %.loopexit251, label %4505, !prof !32, !nosanitize !30

4505:                                             ; preds = %4502
  %4506 = extractvalue { i32, i1 } %4503, 0, !nosanitize !30
  %4507 = icmp sgt i32 %4492, %4506
  br i1 %4507, label %4508, label %4546

4508:                                             ; preds = %4505
  %4509 = and i32 %4500, 65535
  %4510 = shl i32 %4500, %4492
  %4511 = trunc i32 %4510 to i16
  %4512 = or i16 %4490, %4511
  store i16 %4512, ptr %3270, align 8, !tbaa !25
  %4513 = load i64, ptr %3271, align 8, !tbaa !31
  %4514 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4513, i64 1), !nosanitize !30
  %4515 = extractvalue { i64, i1 } %4514, 1, !nosanitize !30
  br i1 %4515, label %4516, label %4517, !prof !32, !nosanitize !30

4516:                                             ; preds = %4508
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4517:                                             ; preds = %4508
  %4518 = extractvalue { i64, i1 } %4514, 0, !nosanitize !30
  %4519 = load ptr, ptr %3272, align 8, !tbaa !33
  %4520 = trunc i16 %4512 to i8
  store i64 %4518, ptr %3271, align 8, !tbaa !31
  %4521 = getelementptr inbounds nuw i8, ptr %4519, i64 %4513
  store i8 %4520, ptr %4521, align 1, !tbaa !28
  %4522 = load i64, ptr %3271, align 8, !tbaa !31
  %4523 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4522, i64 1), !nosanitize !30
  %4524 = extractvalue { i64, i1 } %4523, 1, !nosanitize !30
  br i1 %4524, label %4525, label %4526, !prof !32, !nosanitize !30

4525:                                             ; preds = %4546, %4542, %4517
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4526:                                             ; preds = %4517
  %4527 = extractvalue { i64, i1 } %4523, 0, !nosanitize !30
  %4528 = load ptr, ptr %3272, align 8, !tbaa !33
  %4529 = load i16, ptr %3270, align 8, !tbaa !25
  %4530 = lshr i16 %4529, 8
  %4531 = trunc nuw i16 %4530 to i8
  store i64 %4527, ptr %3271, align 8, !tbaa !31
  %4532 = getelementptr inbounds nuw i8, ptr %4528, i64 %4522
  store i8 %4531, ptr %4532, align 1, !tbaa !28
  %4533 = load i32, ptr %2452, align 4, !tbaa !26
  %4534 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4533), !nosanitize !30
  %4535 = extractvalue { i32, i1 } %4534, 1, !nosanitize !30
  br i1 %4535, label %.loopexit251, label %4536, !prof !32, !nosanitize !30

4536:                                             ; preds = %4526
  %4537 = extractvalue { i32, i1 } %4534, 0, !nosanitize !30
  %4538 = lshr i32 %4509, %4537
  %4539 = trunc nuw i32 %4538 to i16
  store i16 %4539, ptr %3270, align 8, !tbaa !25
  %4540 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4494, i32 -16)
  %4541 = extractvalue { i32, i1 } %4540, 1, !nosanitize !30
  br i1 %4541, label %.loopexit251, label %4542, !prof !32, !nosanitize !30

4542:                                             ; preds = %4536
  %4543 = extractvalue { i32, i1 } %4540, 0, !nosanitize !30
  %4544 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4533, i32 %4543), !nosanitize !30
  %4545 = extractvalue { i32, i1 } %4544, 1, !nosanitize !30
  br i1 %4545, label %4525, label %4552, !prof !32, !nosanitize !30

4546:                                             ; preds = %4505
  %4547 = shl i32 %4500, %4492
  %4548 = trunc i32 %4547 to i16
  %4549 = or i16 %4490, %4548
  store i16 %4549, ptr %3270, align 8, !tbaa !25
  %4550 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4492, i32 %4494), !nosanitize !30
  %4551 = extractvalue { i32, i1 } %4550, 1, !nosanitize !30
  br i1 %4551, label %4525, label %4552, !prof !32, !nosanitize !30

4552:                                             ; preds = %4546, %4542, %4308, %4301
  %4553 = phi i16 [ %4275, %4308 ], [ %4304, %4301 ], [ %4539, %4542 ], [ %4549, %4546 ]
  %4554 = phi { i32, i1 } [ %4310, %4308 ], [ %4306, %4301 ], [ %4544, %4542 ], [ %4550, %4546 ]
  %4555 = extractvalue { i32, i1 } %4554, 0
  store i32 %4555, ptr %2452, align 4, !tbaa !26
  br label %4556

4556:                                             ; preds = %4552, %4489
  %4557 = phi i16 [ %4490, %4489 ], [ %4553, %4552 ]
  %4558 = phi i32 [ %4492, %4489 ], [ %4555, %4552 ]
  %4559 = load i32, ptr %4227, align 4, !tbaa !29
  %4560 = icmp ult i32 %4254, %4559
  br i1 %4560, label %4232, label %.loopexit252, !llvm.loop !80

.loopexit252:                                     ; preds = %4556, %.loopexit256
  %4561 = phi i16 [ %4223, %.loopexit256 ], [ %4557, %4556 ]
  %4562 = phi i32 [ %4224, %.loopexit256 ], [ %4558, %4556 ]
  %4563 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %4564 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %4565 = load i16, ptr %4564, align 2, !tbaa !28
  %4566 = zext i16 %4565 to i32
  %4567 = sub nsw i32 16, %4566
  %4568 = icmp sgt i32 %4562, %4567
  %4569 = load i16, ptr %4563, align 2, !tbaa !28
  %4570 = zext i16 %4569 to i32
  %4571 = shl i32 %4570, %4562
  %4572 = trunc i32 %4571 to i16
  %4573 = or i16 %4561, %4572
  store i16 %4573, ptr %3270, align 8, !tbaa !25
  br i1 %4568, label %4574, label %4605

4574:                                             ; preds = %.loopexit252
  %4575 = load i64, ptr %3271, align 8, !tbaa !31
  %4576 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4575, i64 1), !nosanitize !30
  %4577 = extractvalue { i64, i1 } %4576, 1, !nosanitize !30
  br i1 %4577, label %4578, label %4579, !prof !32, !nosanitize !30

4578:                                             ; preds = %4574
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4579:                                             ; preds = %4574
  %4580 = extractvalue { i64, i1 } %4576, 0, !nosanitize !30
  %4581 = load ptr, ptr %3272, align 8, !tbaa !33
  %4582 = trunc i16 %4573 to i8
  store i64 %4580, ptr %3271, align 8, !tbaa !31
  %4583 = getelementptr inbounds nuw i8, ptr %4581, i64 %4575
  store i8 %4582, ptr %4583, align 1, !tbaa !28
  %4584 = load i64, ptr %3271, align 8, !tbaa !31
  %4585 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4584, i64 1), !nosanitize !30
  %4586 = extractvalue { i64, i1 } %4585, 1, !nosanitize !30
  br i1 %4586, label %4587, label %4588, !prof !32, !nosanitize !30

4587:                                             ; preds = %4598, %4579
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4588:                                             ; preds = %4579
  %4589 = extractvalue { i64, i1 } %4585, 0, !nosanitize !30
  %4590 = load ptr, ptr %3272, align 8, !tbaa !33
  %4591 = load i16, ptr %3270, align 8, !tbaa !25
  %4592 = lshr i16 %4591, 8
  %4593 = trunc nuw i16 %4592 to i8
  store i64 %4589, ptr %3271, align 8, !tbaa !31
  %4594 = getelementptr inbounds nuw i8, ptr %4590, i64 %4584
  store i8 %4593, ptr %4594, align 1, !tbaa !28
  %4595 = load i32, ptr %2452, align 4, !tbaa !26
  %4596 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4595), !nosanitize !30
  %4597 = extractvalue { i32, i1 } %4596, 1, !nosanitize !30
  br i1 %4597, label %.loopexit251, label %4598, !prof !32, !nosanitize !30

4598:                                             ; preds = %4588
  %4599 = extractvalue { i32, i1 } %4596, 0, !nosanitize !30
  %4600 = lshr i32 %4570, %4599
  %4601 = trunc nuw i32 %4600 to i16
  store i16 %4601, ptr %3270, align 8, !tbaa !25
  %4602 = add nsw i32 %4566, -16
  %4603 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4595, i32 %4602), !nosanitize !30
  %4604 = extractvalue { i32, i1 } %4603, 1, !nosanitize !30
  br i1 %4604, label %4587, label %4608, !prof !32, !nosanitize !30

4605:                                             ; preds = %.loopexit252
  %4606 = add nsw i32 %4562, %4566
  %4607 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4606, 0
  br label %4608

4608:                                             ; preds = %4605, %4598
  %4609 = phi { i32, i1 } [ %4603, %4598 ], [ %4607, %4605 ]
  %4610 = extractvalue { i32, i1 } %4609, 0
  store i32 %4610, ptr %2452, align 4, !tbaa !26
  br label %4611

4611:                                             ; preds = %4608, %3038, %2609
  %4612 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %4613

4613:                                             ; preds = %4624, %4611
  %4614 = phi i64 [ 0, %4611 ], [ %4628, %4624 ]
  %4615 = getelementptr inbounds nuw [4 x i8], ptr %4612, i64 %4614
  store i16 0, ptr %4615, align 4, !tbaa !28
  %4616 = getelementptr inbounds nuw i8, ptr %4615, i64 4
  store i16 0, ptr %4616, align 4, !tbaa !28
  %4617 = getelementptr inbounds nuw [4 x i8], ptr %4612, i64 %4614
  %4618 = getelementptr inbounds nuw i8, ptr %4617, i64 8
  store i16 0, ptr %4618, align 4, !tbaa !28
  %4619 = getelementptr inbounds nuw i8, ptr %4617, i64 12
  store i16 0, ptr %4619, align 4, !tbaa !28
  %4620 = getelementptr inbounds nuw [4 x i8], ptr %4612, i64 %4614
  %4621 = getelementptr inbounds nuw i8, ptr %4620, i64 16
  store i16 0, ptr %4621, align 4, !tbaa !28
  %4622 = getelementptr inbounds nuw i8, ptr %4620, i64 20
  store i16 0, ptr %4622, align 4, !tbaa !28
  %4623 = icmp eq i64 %4614, 280
  br i1 %4623, label %4629, label %4624

4624:                                             ; preds = %4613
  %4625 = getelementptr inbounds nuw [4 x i8], ptr %4612, i64 %4614
  %4626 = getelementptr inbounds nuw i8, ptr %4625, i64 24
  store i16 0, ptr %4626, align 4, !tbaa !28
  %4627 = getelementptr inbounds nuw i8, ptr %4625, i64 28
  store i16 0, ptr %4627, align 4, !tbaa !28
  %4628 = add nuw nsw i64 %4614, 8
  br label %4613

4629:                                             ; preds = %4613
  %4630 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %4630, align 4, !tbaa !28
  %4631 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %4631, align 4, !tbaa !28
  %4632 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %4632, align 4, !tbaa !28
  %4633 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %4633, align 4, !tbaa !28
  %4634 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %4634, align 4, !tbaa !28
  %4635 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %4635, align 4, !tbaa !28
  %4636 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %4636, align 4, !tbaa !28
  %4637 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %4637, align 4, !tbaa !28
  %4638 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %4638, align 4, !tbaa !28
  %4639 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %4639, align 4, !tbaa !28
  %4640 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %4640, align 4, !tbaa !28
  %4641 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %4641, align 4, !tbaa !28
  %4642 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %4642, align 4, !tbaa !28
  %4643 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %4643, align 4, !tbaa !28
  %4644 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %4644, align 4, !tbaa !28
  %4645 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %4645, align 4, !tbaa !28
  %4646 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %4646, align 4, !tbaa !28
  %4647 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %4647, align 4, !tbaa !28
  %4648 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %4648, align 4, !tbaa !28
  %4649 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %4649, align 4, !tbaa !28
  %4650 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %4650, align 4, !tbaa !28
  %4651 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %4651, align 4, !tbaa !28
  %4652 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %4652, align 4, !tbaa !28
  %4653 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %4653, align 4, !tbaa !28
  %4654 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %4654, align 4, !tbaa !28
  %4655 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %4655, align 4, !tbaa !28
  %4656 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %4656, align 4, !tbaa !28
  %4657 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %4657, align 4, !tbaa !28
  %4658 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %4658, align 4, !tbaa !28
  %4659 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %4659, align 4, !tbaa !28
  %4660 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %4660, align 4, !tbaa !28
  %4661 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %4661, align 4, !tbaa !28
  %4662 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %4662, align 4, !tbaa !28
  %4663 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %4663, align 4, !tbaa !28
  %4664 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %4664, align 4, !tbaa !28
  %4665 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %4665, align 4, !tbaa !28
  %4666 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %4666, align 4, !tbaa !28
  %4667 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %4667, align 4, !tbaa !28
  %4668 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %4668, align 4, !tbaa !28
  %4669 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %4669, align 4, !tbaa !28
  %4670 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %4670, align 4, !tbaa !28
  %4671 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %4671, align 4, !tbaa !28
  %4672 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %4672, align 4, !tbaa !28
  %4673 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %4673, align 4, !tbaa !28
  %4674 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %4674, align 4, !tbaa !28
  %4675 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %4675, align 4, !tbaa !28
  %4676 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %4676, align 4, !tbaa !28
  %4677 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %4677, align 4, !tbaa !28
  %4678 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %4678, align 4, !tbaa !28
  %4679 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %4679, align 4, !tbaa !28
  %4680 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %4681 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %4681, align 4, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4680, i8 0, i64 20, i1 false)
  %4682 = icmp eq i32 %3, 0
  br i1 %4682, label %4738, label %4683

4683:                                             ; preds = %4629
  %4684 = load i32, ptr %2452, align 4, !tbaa !26
  %4685 = icmp sgt i32 %4684, 8
  br i1 %4685, label %4686, label %4711

4686:                                             ; preds = %4683
  %4687 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4688 = load i64, ptr %4687, align 8, !tbaa !31
  %4689 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4688, i64 1), !nosanitize !30
  %4690 = extractvalue { i64, i1 } %4689, 1, !nosanitize !30
  br i1 %4690, label %4691, label %4692, !prof !32, !nosanitize !30

4691:                                             ; preds = %4686
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4692:                                             ; preds = %4686
  %4693 = extractvalue { i64, i1 } %4689, 0, !nosanitize !30
  %4694 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4695 = load ptr, ptr %4694, align 8, !tbaa !33
  %4696 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4697 = load i16, ptr %4696, align 8, !tbaa !25
  %4698 = trunc i16 %4697 to i8
  store i64 %4693, ptr %4687, align 8, !tbaa !31
  %4699 = getelementptr inbounds nuw i8, ptr %4695, i64 %4688
  store i8 %4698, ptr %4699, align 1, !tbaa !28
  %4700 = load i64, ptr %4687, align 8, !tbaa !31
  %4701 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4700, i64 1), !nosanitize !30
  %4702 = extractvalue { i64, i1 } %4701, 1, !nosanitize !30
  br i1 %4702, label %4703, label %4704, !prof !32, !nosanitize !30

4703:                                             ; preds = %4692
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4704:                                             ; preds = %4692
  %4705 = extractvalue { i64, i1 } %4701, 0, !nosanitize !30
  %4706 = load ptr, ptr %4694, align 8, !tbaa !33
  %4707 = load i16, ptr %4696, align 8, !tbaa !25
  %4708 = lshr i16 %4707, 8
  %4709 = trunc nuw i16 %4708 to i8
  store i64 %4705, ptr %4687, align 8, !tbaa !31
  %4710 = getelementptr inbounds nuw i8, ptr %4706, i64 %4700
  store i8 %4709, ptr %4710, align 1, !tbaa !28
  br label %4727

4711:                                             ; preds = %4683
  %4712 = icmp sgt i32 %4684, 0
  br i1 %4712, label %4713, label %4727

4713:                                             ; preds = %4711
  %4714 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4715 = load i64, ptr %4714, align 8, !tbaa !31
  %4716 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4715, i64 1), !nosanitize !30
  %4717 = extractvalue { i64, i1 } %4716, 1, !nosanitize !30
  br i1 %4717, label %4718, label %4719, !prof !32, !nosanitize !30

4718:                                             ; preds = %4713
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

4719:                                             ; preds = %4713
  %4720 = extractvalue { i64, i1 } %4716, 0, !nosanitize !30
  %4721 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4722 = load ptr, ptr %4721, align 8, !tbaa !33
  %4723 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4724 = load i16, ptr %4723, align 8, !tbaa !25
  %4725 = trunc i16 %4724 to i8
  store i64 %4720, ptr %4714, align 8, !tbaa !31
  %4726 = getelementptr inbounds nuw i8, ptr %4722, i64 %4715
  store i8 %4725, ptr %4726, align 1, !tbaa !28
  br label %4727

4727:                                             ; preds = %4719, %4711, %4704
  %4728 = load i32, ptr %2452, align 4, !tbaa !26
  %4729 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4728, i32 -1)
  %4730 = extractvalue { i32, i1 } %4729, 1, !nosanitize !30
  br i1 %4730, label %4731, label %4732, !prof !32, !nosanitize !30

4731:                                             ; preds = %4727
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !30
  unreachable, !nosanitize !30

4732:                                             ; preds = %4727
  %4733 = extractvalue { i32, i1 } %4729, 0, !nosanitize !30
  %4734 = and i32 %4733, 7
  %4735 = add nuw nsw i32 %4734, 1
  %4736 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %4735, ptr %4736, align 8, !tbaa !27
  %4737 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %4737, align 8, !tbaa !25
  store i32 0, ptr %2452, align 4, !tbaa !26
  br label %4738

4738:                                             ; preds = %4732, %4629
  ret void
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_tr_tally(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %6 = load i32, ptr %5, align 4, !tbaa !29
  %7 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %6, i32 1), !nosanitize !30
  %8 = extractvalue { i32, i1 } %7, 1, !nosanitize !30
  br i1 %8, label %9, label %10, !prof !32, !nosanitize !30

9:                                                ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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
  br label %75

44:                                               ; preds = %31
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %46 = load i32, ptr %45, align 8, !tbaa !84
  %47 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %46, i32 1), !nosanitize !30
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !30
  br i1 %48, label %49, label %50, !prof !32, !nosanitize !30

49:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !30
  store i32 %51, ptr %45, align 8, !tbaa !84
  %52 = add i32 %1, -1
  %53 = zext i32 %2 to i64
  %54 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !28
  %56 = zext i8 %55 to i64
  %57 = getelementptr i8, ptr %0, i64 1240
  %58 = getelementptr [4 x i8], ptr %57, i64 %56
  %59 = load i16, ptr %58, align 4, !tbaa !28
  %60 = add i16 %59, 1
  store i16 %60, ptr %58, align 4, !tbaa !28
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %62 = icmp ult i32 %1, 257
  %63 = zext nneg i32 %52 to i64
  %64 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %63
  %65 = lshr i32 %52, 7
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %66
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 256
  %69 = select i1 %62, ptr %64, ptr %68
  %70 = load i8, ptr %69, align 1, !tbaa !28
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %71
  %73 = load i16, ptr %72, align 4, !tbaa !28
  %74 = add i16 %73, 1
  store i16 %74, ptr %72, align 4, !tbaa !28
  br label %75

75:                                               ; preds = %50, %38
  %76 = load i32, ptr %5, align 4, !tbaa !29
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %78 = load i32, ptr %77, align 8, !tbaa !85
  %79 = icmp eq i32 %76, %78
  %80 = zext i1 %79 to i32
  ret i32 %80
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nomerge noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 3cab3bc6384b5f58cab7140d00d7a527eade010e)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !17, i64 2904}
!9 = !{!"internal_state", !10, i64 0, !5, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !13, i64 40, !5, i64 48, !14, i64 56, !13, i64 64, !6, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !12, i64 96, !13, i64 104, !15, i64 112, !15, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !13, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !6, i64 212, !6, i64 2504, !6, i64 2748, !16, i64 2904, !16, i64 2928, !16, i64 2952, !6, i64 2976, !6, i64 3008, !5, i64 5300, !5, i64 5304, !6, i64 5308, !12, i64 5888, !5, i64 5896, !5, i64 5900, !5, i64 5904, !13, i64 5912, !13, i64 5920, !5, i64 5928, !5, i64 5932, !19, i64 5936, !5, i64 5940, !5, i64 5944, !13, i64 5952, !5, i64 5960}
!10 = !{!"p1 _ZTS10z_stream_s", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS11gz_header_s", !11, i64 0}
!15 = !{!"p1 short", !11, i64 0}
!16 = !{!"tree_desc_s", !17, i64 0, !5, i64 8, !18, i64 16}
!17 = !{!"p1 _ZTS9ct_data_s", !11, i64 0}
!18 = !{!"p1 _ZTS18static_tree_desc_s", !11, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!9, !18, i64 2920}
!21 = !{!9, !17, i64 2928}
!22 = !{!9, !18, i64 2944}
!23 = !{!9, !17, i64 2952}
!24 = !{!9, !18, i64 2968}
!25 = !{!9, !19, i64 5936}
!26 = !{!9, !5, i64 5940}
!27 = !{!9, !5, i64 5944}
!28 = !{!6, !6, i64 0}
!29 = !{!9, !5, i64 5900}
!30 = !{}
!31 = !{!9, !13, i64 40}
!32 = !{!"branch_weights", i32 1, i32 1048575}
!33 = !{!9, !12, i64 16}
!34 = !{!9, !5, i64 196}
!35 = !{!9, !10, i64 0}
!36 = !{!37, !5, i64 88}
!37 = !{!"z_stream_s", !12, i64 0, !5, i64 8, !13, i64 16, !12, i64 24, !5, i64 32, !13, i64 40, !12, i64 48, !38, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !5, i64 88, !13, i64 96, !13, i64 104}
!38 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!16, !17, i64 0}
!42 = !{!16, !18, i64 16}
!43 = !{!44, !17, i64 0}
!44 = !{!"static_tree_desc_s", !17, i64 0, !45, i64 8, !5, i64 16, !5, i64 20, !5, i64 24}
!45 = !{!"p1 int", !11, i64 0}
!46 = !{!44, !5, i64 20}
!47 = !{!9, !5, i64 5300}
!48 = !{!9, !5, i64 5304}
!49 = distinct !{!49, !40}
!50 = !{!9, !13, i64 5912}
!51 = !{!9, !13, i64 5920}
!52 = distinct !{!52, !40}
!53 = !{!16, !5, i64 8}
!54 = distinct !{!54, !40}
!55 = distinct !{!55, !40}
!56 = distinct !{!56, !40}
!57 = !{!44, !45, i64 8}
!58 = !{!44, !5, i64 16}
!59 = !{!44, !5, i64 24}
!60 = !{!19, !19, i64 0}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !40}
!63 = distinct !{!63, !40}
!64 = !{!"branch_weights", i32 1, i32 127}
!65 = !{!"branch_weights", i32 127, i32 134217473}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !40}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = distinct !{!71, !40}
!72 = distinct !{!72, !70}
!73 = !{!9, !5, i64 2912}
!74 = !{!"branch_weights", i32 1, i32 1048574}
!75 = distinct !{!75, !40}
!76 = !{!9, !5, i64 2936}
!77 = distinct !{!77, !70}
!78 = !{!9, !5, i64 200}
!79 = !{!9, !12, i64 5888}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = distinct !{!82, !40}
!83 = distinct !{!83, !40}
!84 = !{!9, !5, i64 5928}
!85 = !{!9, !5, i64 5904}
