; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.trees.ll'
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

14:                                               ; preds = %14, %1
  %15 = phi i64 [ 0, %1 ], [ %19, %14 ]
  %16 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %15
  store i16 0, ptr %16, align 4, !tbaa !28
  %17 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %15
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 4
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

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @_tr_stored_block(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %6 = load i32, ptr %5, align 4, !tbaa !26
  %7 = icmp sgt i32 %6, 13
  br i1 %7, label %8, label %42

8:                                                ; preds = %4
  %9 = and i32 %3, 65535
  %10 = shl i32 %3, %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %12 = load i16, ptr %11, align 8, !tbaa !25
  %13 = trunc i32 %10 to i16
  %14 = or i16 %12, %13
  store i16 %14, ptr %11, align 8, !tbaa !25
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = load i64, ptr %15, align 8, !tbaa !32
  %17 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %16, i64 1), !nosanitize !33
  %18 = extractvalue { i64, i1 } %17, 1, !nosanitize !33
  br i1 %18, label %19, label %20, !prof !34, !nosanitize !33

19:                                               ; preds = %8
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

20:                                               ; preds = %8
  %21 = extractvalue { i64, i1 } %17, 0, !nosanitize !33
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = trunc i16 %14 to i8
  store i64 %21, ptr %15, align 8, !tbaa !32
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 %16
  store i8 %24, ptr %25, align 1, !tbaa !28
  %26 = load i64, ptr %15, align 8, !tbaa !32
  %27 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %26, i64 1), !nosanitize !33
  %28 = extractvalue { i64, i1 } %27, 1, !nosanitize !33
  br i1 %28, label %29, label %30, !prof !34, !nosanitize !33

29:                                               ; preds = %20
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

30:                                               ; preds = %20
  %31 = extractvalue { i64, i1 } %27, 0, !nosanitize !33
  %32 = load ptr, ptr %22, align 8, !tbaa !35
  %33 = load i16, ptr %11, align 8, !tbaa !25
  %34 = lshr i16 %33, 8
  %35 = trunc nuw i16 %34 to i8
  store i64 %31, ptr %15, align 8, !tbaa !32
  %36 = getelementptr inbounds nuw i8, ptr %32, i64 %26
  store i8 %35, ptr %36, align 1, !tbaa !28
  %37 = load i32, ptr %5, align 4, !tbaa !26
  %38 = sub nsw i32 16, %37
  %39 = lshr i32 %9, %38
  %40 = trunc nuw i32 %39 to i16
  store i16 %40, ptr %11, align 8, !tbaa !25
  %41 = add nsw i32 %37, -13
  br label %49

42:                                               ; preds = %4
  %43 = shl i32 %3, %6
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %45 = load i16, ptr %44, align 8, !tbaa !25
  %46 = trunc i32 %43 to i16
  %47 = or i16 %45, %46
  store i16 %47, ptr %44, align 8, !tbaa !25
  %48 = add nsw i32 %6, 3
  br label %49

49:                                               ; preds = %42, %30
  %50 = phi i16 [ %47, %42 ], [ %40, %30 ]
  %51 = phi i32 [ %48, %42 ], [ %41, %30 ]
  store i32 %51, ptr %5, align 4, !tbaa !26
  %52 = icmp sgt i32 %51, 8
  br i1 %52, label %53, label %77

53:                                               ; preds = %49
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %55 = load i64, ptr %54, align 8, !tbaa !32
  %56 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %55, i64 1), !nosanitize !33
  %57 = extractvalue { i64, i1 } %56, 1, !nosanitize !33
  br i1 %57, label %58, label %59, !prof !34, !nosanitize !33

58:                                               ; preds = %53
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

59:                                               ; preds = %53
  %60 = extractvalue { i64, i1 } %56, 0, !nosanitize !33
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  %63 = trunc i16 %50 to i8
  store i64 %60, ptr %54, align 8, !tbaa !32
  %64 = getelementptr inbounds nuw i8, ptr %62, i64 %55
  store i8 %63, ptr %64, align 1, !tbaa !28
  %65 = load i64, ptr %54, align 8, !tbaa !32
  %66 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %65, i64 1), !nosanitize !33
  %67 = extractvalue { i64, i1 } %66, 1, !nosanitize !33
  br i1 %67, label %68, label %69, !prof !34, !nosanitize !33

68:                                               ; preds = %59
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

69:                                               ; preds = %59
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %71 = extractvalue { i64, i1 } %66, 0, !nosanitize !33
  %72 = load ptr, ptr %61, align 8, !tbaa !35
  %73 = load i16, ptr %70, align 8, !tbaa !25
  %74 = lshr i16 %73, 8
  %75 = trunc nuw i16 %74 to i8
  store i64 %71, ptr %54, align 8, !tbaa !32
  %76 = getelementptr inbounds nuw i8, ptr %72, i64 %65
  store i8 %75, ptr %76, align 1, !tbaa !28
  br label %91

77:                                               ; preds = %49
  %78 = icmp sgt i32 %51, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %77
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %81 = load i64, ptr %80, align 8, !tbaa !32
  %82 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %81, i64 1), !nosanitize !33
  %83 = extractvalue { i64, i1 } %82, 1, !nosanitize !33
  br i1 %83, label %84, label %85, !prof !34, !nosanitize !33

84:                                               ; preds = %79
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

85:                                               ; preds = %79
  %86 = extractvalue { i64, i1 } %82, 0, !nosanitize !33
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %88 = load ptr, ptr %87, align 8, !tbaa !35
  %89 = trunc i16 %50 to i8
  store i64 %86, ptr %80, align 8, !tbaa !32
  %90 = getelementptr inbounds nuw i8, ptr %88, i64 %81
  store i8 %89, ptr %90, align 1, !tbaa !28
  br label %91

91:                                               ; preds = %85, %77, %69
  %92 = load i32, ptr %5, align 4, !tbaa !26
  %93 = add i32 %92, 7
  %94 = and i32 %93, 7
  %95 = add nuw nsw i32 %94, 1
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %95, ptr %96, align 8, !tbaa !27
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %97, align 8, !tbaa !25
  store i32 0, ptr %5, align 4, !tbaa !26
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %100 = load i64, ptr %99, align 8, !tbaa !32
  %101 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %100, i64 1), !nosanitize !33
  %102 = extractvalue { i64, i1 } %101, 1, !nosanitize !33
  br i1 %102, label %103, label %104, !prof !34, !nosanitize !33

103:                                              ; preds = %91
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

104:                                              ; preds = %91
  %105 = extractvalue { i64, i1 } %101, 0, !nosanitize !33
  %106 = load ptr, ptr %98, align 8, !tbaa !35
  %107 = trunc i64 %2 to i8
  store i64 %105, ptr %99, align 8, !tbaa !32
  %108 = getelementptr inbounds nuw i8, ptr %106, i64 %100
  store i8 %107, ptr %108, align 1, !tbaa !28
  %109 = load i64, ptr %99, align 8, !tbaa !32
  %110 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %109, i64 1), !nosanitize !33
  %111 = extractvalue { i64, i1 } %110, 1, !nosanitize !33
  br i1 %111, label %112, label %113, !prof !34, !nosanitize !33

112:                                              ; preds = %104
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

113:                                              ; preds = %104
  %114 = extractvalue { i64, i1 } %110, 0, !nosanitize !33
  %115 = load ptr, ptr %98, align 8, !tbaa !35
  %116 = lshr i64 %2, 8
  %117 = trunc i64 %116 to i8
  store i64 %114, ptr %99, align 8, !tbaa !32
  %118 = getelementptr inbounds nuw i8, ptr %115, i64 %109
  store i8 %117, ptr %118, align 1, !tbaa !28
  %119 = load i64, ptr %99, align 8, !tbaa !32
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %119, i64 1), !nosanitize !33
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !33
  br i1 %121, label %122, label %123, !prof !34, !nosanitize !33

122:                                              ; preds = %113
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

123:                                              ; preds = %113
  %124 = extractvalue { i64, i1 } %120, 0, !nosanitize !33
  %125 = load ptr, ptr %98, align 8, !tbaa !35
  %126 = trunc i64 %2 to i32
  %127 = xor i32 %126, 65535
  %128 = trunc i32 %127 to i8
  store i64 %124, ptr %99, align 8, !tbaa !32
  %129 = getelementptr inbounds nuw i8, ptr %125, i64 %119
  store i8 %128, ptr %129, align 1, !tbaa !28
  %130 = load i64, ptr %99, align 8, !tbaa !32
  %131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %130, i64 1), !nosanitize !33
  %132 = extractvalue { i64, i1 } %131, 1, !nosanitize !33
  br i1 %132, label %133, label %134, !prof !34, !nosanitize !33

133:                                              ; preds = %123
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

134:                                              ; preds = %123
  %135 = extractvalue { i64, i1 } %131, 0, !nosanitize !33
  %136 = load ptr, ptr %98, align 8, !tbaa !35
  %137 = lshr i32 %127, 8
  %138 = trunc i32 %137 to i8
  store i64 %135, ptr %99, align 8, !tbaa !32
  %139 = getelementptr inbounds nuw i8, ptr %136, i64 %130
  store i8 %138, ptr %139, align 1, !tbaa !28
  %140 = icmp eq i64 %2, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %134
  %142 = load ptr, ptr %98, align 8, !tbaa !35
  %143 = load i64, ptr %99, align 8, !tbaa !32
  %144 = getelementptr inbounds nuw i8, ptr %142, i64 %143
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %144, ptr align 1 %1, i64 %2, i1 false)
  br label %145

145:                                              ; preds = %141, %134
  %146 = load i64, ptr %99, align 8, !tbaa !32
  %147 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %146, i64 %2), !nosanitize !33
  %148 = extractvalue { i64, i1 } %147, 1, !nosanitize !33
  br i1 %148, label %149, label %150, !prof !34, !nosanitize !33

149:                                              ; preds = %145
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

150:                                              ; preds = %145
  %151 = extractvalue { i64, i1 } %147, 0, !nosanitize !33
  store i64 %151, ptr %99, align 8, !tbaa !32
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
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
  %8 = load i64, ptr %7, align 8, !tbaa !32
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 1), !nosanitize !33
  %10 = extractvalue { i64, i1 } %9, 1, !nosanitize !33
  br i1 %10, label %11, label %12, !prof !34, !nosanitize !33

11:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

12:                                               ; preds = %5
  %13 = extractvalue { i64, i1 } %9, 0, !nosanitize !33
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = load i16, ptr %6, align 8, !tbaa !25
  %17 = trunc i16 %16 to i8
  store i64 %13, ptr %7, align 8, !tbaa !32
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 %8
  store i8 %17, ptr %18, align 1, !tbaa !28
  %19 = load i64, ptr %7, align 8, !tbaa !32
  %20 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 1), !nosanitize !33
  %21 = extractvalue { i64, i1 } %20, 1, !nosanitize !33
  br i1 %21, label %22, label %23, !prof !34, !nosanitize !33

22:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

23:                                               ; preds = %12
  %24 = extractvalue { i64, i1 } %20, 0, !nosanitize !33
  %25 = load ptr, ptr %14, align 8, !tbaa !35
  %26 = load i16, ptr %6, align 8, !tbaa !25
  %27 = lshr i16 %26, 8
  %28 = trunc nuw i16 %27 to i8
  store i64 %24, ptr %7, align 8, !tbaa !32
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 %19
  store i8 %28, ptr %29, align 1, !tbaa !28
  store i16 0, ptr %6, align 8, !tbaa !25
  br label %50

30:                                               ; preds = %1
  %31 = icmp sgt i32 %3, 7
  br i1 %31, label %32, label %52

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %34 = load i64, ptr %33, align 8, !tbaa !32
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %34, i64 1), !nosanitize !33
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !33
  br i1 %36, label %37, label %38, !prof !34, !nosanitize !33

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !33
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %43 = load i16, ptr %42, align 8, !tbaa !25
  %44 = trunc i16 %43 to i8
  store i64 %39, ptr %33, align 8, !tbaa !32
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 %34
  store i8 %44, ptr %45, align 1, !tbaa !28
  %46 = load i16, ptr %42, align 8, !tbaa !25
  %47 = lshr i16 %46, 8
  store i16 %47, ptr %42, align 8, !tbaa !25
  %48 = load i32, ptr %2, align 4, !tbaa !26
  %49 = add nsw i32 %48, -8
  br label %50

50:                                               ; preds = %38, %23
  %51 = phi i32 [ %49, %38 ], [ 0, %23 ]
  store i32 %51, ptr %2, align 4, !tbaa !26
  br label %52

52:                                               ; preds = %50, %30
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
  br i1 %4, label %10, label %38

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %12 = load i64, ptr %11, align 8, !tbaa !32
  %13 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %12, i64 1), !nosanitize !33
  %14 = extractvalue { i64, i1 } %13, 1, !nosanitize !33
  br i1 %14, label %15, label %16, !prof !34, !nosanitize !33

15:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

16:                                               ; preds = %10
  %17 = extractvalue { i64, i1 } %13, 0, !nosanitize !33
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = trunc i16 %9 to i8
  store i64 %17, ptr %11, align 8, !tbaa !32
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 %12
  store i8 %20, ptr %21, align 1, !tbaa !28
  %22 = load i64, ptr %11, align 8, !tbaa !32
  %23 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 1), !nosanitize !33
  %24 = extractvalue { i64, i1 } %23, 1, !nosanitize !33
  br i1 %24, label %25, label %26, !prof !34, !nosanitize !33

25:                                               ; preds = %16
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

26:                                               ; preds = %16
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !33
  %28 = load ptr, ptr %18, align 8, !tbaa !35
  %29 = load i16, ptr %6, align 8, !tbaa !25
  %30 = lshr i16 %29, 8
  %31 = trunc nuw i16 %30 to i8
  store i64 %27, ptr %11, align 8, !tbaa !32
  %32 = getelementptr inbounds nuw i8, ptr %28, i64 %22
  store i8 %31, ptr %32, align 1, !tbaa !28
  %33 = load i32, ptr %2, align 4, !tbaa !26
  %34 = sub nsw i32 16, %33
  %35 = lshr i32 2, %34
  %36 = trunc nuw nsw i32 %35 to i16
  store i16 %36, ptr %6, align 8, !tbaa !25
  %37 = add nsw i32 %33, -13
  br label %40

38:                                               ; preds = %1
  %39 = add nsw i32 %3, 3
  br label %40

40:                                               ; preds = %38, %26
  %41 = phi i16 [ %9, %38 ], [ %36, %26 ]
  %42 = phi i32 [ %39, %38 ], [ %37, %26 ]
  store i32 %42, ptr %2, align 4, !tbaa !26
  %43 = icmp sgt i32 %42, 9
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %47 = load i64, ptr %46, align 8, !tbaa !32
  %48 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %47, i64 1), !nosanitize !33
  %49 = extractvalue { i64, i1 } %48, 1, !nosanitize !33
  br i1 %49, label %50, label %51, !prof !34, !nosanitize !33

50:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

51:                                               ; preds = %44
  %52 = extractvalue { i64, i1 } %48, 0, !nosanitize !33
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = trunc i16 %41 to i8
  store i64 %52, ptr %46, align 8, !tbaa !32
  %56 = getelementptr inbounds nuw i8, ptr %54, i64 %47
  store i8 %55, ptr %56, align 1, !tbaa !28
  %57 = load i64, ptr %46, align 8, !tbaa !32
  %58 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %57, i64 1), !nosanitize !33
  %59 = extractvalue { i64, i1 } %58, 1, !nosanitize !33
  br i1 %59, label %60, label %61, !prof !34, !nosanitize !33

60:                                               ; preds = %51
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

61:                                               ; preds = %51
  %62 = extractvalue { i64, i1 } %58, 0, !nosanitize !33
  %63 = load ptr, ptr %53, align 8, !tbaa !35
  %64 = load i16, ptr %45, align 8, !tbaa !25
  %65 = lshr i16 %64, 8
  %66 = trunc nuw i16 %65 to i8
  store i64 %62, ptr %46, align 8, !tbaa !32
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 %57
  store i8 %66, ptr %67, align 1, !tbaa !28
  store i16 0, ptr %45, align 8, !tbaa !25
  %68 = load i32, ptr %2, align 4, !tbaa !26
  %69 = add nsw i32 %68, -9
  br label %73

70:                                               ; preds = %40
  %71 = add nsw i32 %42, 7
  %72 = trunc i16 %41 to i8
  br label %73

73:                                               ; preds = %70, %61
  %74 = phi i8 [ %72, %70 ], [ 0, %61 ]
  %75 = phi i32 [ %71, %70 ], [ %69, %61 ]
  store i32 %75, ptr %2, align 4, !tbaa !26
  %76 = icmp eq i32 %75, 16
  br i1 %76, label %77, label %100

77:                                               ; preds = %73
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %80 = load i64, ptr %79, align 8, !tbaa !32
  %81 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %80, i64 1), !nosanitize !33
  %82 = extractvalue { i64, i1 } %81, 1, !nosanitize !33
  br i1 %82, label %83, label %84, !prof !34, !nosanitize !33

83:                                               ; preds = %77
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

84:                                               ; preds = %77
  %85 = extractvalue { i64, i1 } %81, 0, !nosanitize !33
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %87 = load ptr, ptr %86, align 8, !tbaa !35
  store i64 %85, ptr %79, align 8, !tbaa !32
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 %80
  store i8 %74, ptr %88, align 1, !tbaa !28
  %89 = load i64, ptr %79, align 8, !tbaa !32
  %90 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %89, i64 1), !nosanitize !33
  %91 = extractvalue { i64, i1 } %90, 1, !nosanitize !33
  br i1 %91, label %92, label %93, !prof !34, !nosanitize !33

92:                                               ; preds = %84
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

93:                                               ; preds = %84
  %94 = extractvalue { i64, i1 } %90, 0, !nosanitize !33
  %95 = load ptr, ptr %86, align 8, !tbaa !35
  %96 = load i16, ptr %78, align 8, !tbaa !25
  %97 = lshr i16 %96, 8
  %98 = trunc nuw i16 %97 to i8
  store i64 %94, ptr %79, align 8, !tbaa !32
  %99 = getelementptr inbounds nuw i8, ptr %95, i64 %89
  store i8 %98, ptr %99, align 1, !tbaa !28
  store i16 0, ptr %78, align 8, !tbaa !25
  br label %118

100:                                              ; preds = %73
  %101 = icmp sgt i32 %75, 7
  br i1 %101, label %102, label %120

102:                                              ; preds = %100
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %104 = load i64, ptr %103, align 8, !tbaa !32
  %105 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %104, i64 1), !nosanitize !33
  %106 = extractvalue { i64, i1 } %105, 1, !nosanitize !33
  br i1 %106, label %107, label %108, !prof !34, !nosanitize !33

107:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

108:                                              ; preds = %102
  %109 = extractvalue { i64, i1 } %105, 0, !nosanitize !33
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %111 = load ptr, ptr %110, align 8, !tbaa !35
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i64 %109, ptr %103, align 8, !tbaa !32
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 %104
  store i8 %74, ptr %113, align 1, !tbaa !28
  %114 = load i16, ptr %112, align 8, !tbaa !25
  %115 = lshr i16 %114, 8
  store i16 %115, ptr %112, align 8, !tbaa !25
  %116 = load i32, ptr %2, align 4, !tbaa !26
  %117 = add nsw i32 %116, -8
  br label %118

118:                                              ; preds = %108, %93
  %119 = phi i32 [ %117, %108 ], [ 0, %93 ]
  store i32 %119, ptr %2, align 4, !tbaa !26
  br label %120

120:                                              ; preds = %118, %100
  ret void
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @_tr_flush_block(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [16 x i16], align 16
  %6 = alloca [16 x i16], align 16
  %7 = alloca [16 x i16], align 16
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %9 = load i32, ptr %8, align 4, !tbaa !36
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %2327

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
  %121 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %139
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 4
  %123 = load i16, ptr %122, align 4, !tbaa !28
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %120
  %126 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %139
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 8
  %128 = load i16, ptr %127, align 4, !tbaa !28
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %139
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 12
  %133 = load i16, ptr %132, align 4, !tbaa !28
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = add nuw nsw i64 %139, 4
  %137 = icmp eq i64 %136, 256
  br i1 %137, label %143, label %138, !llvm.loop !41

138:                                              ; preds = %135, %116
  %139 = phi i64 [ %136, %135 ], [ 32, %116 ]
  %140 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %139
  %141 = load i16, ptr %140, align 4, !tbaa !28
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %120, label %143

143:                                              ; preds = %138, %135, %130, %125, %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16
  %144 = phi i32 [ 1, %112 ], [ 0, %20 ], [ 1, %108 ], [ 1, %116 ], [ 0, %16 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ 0, %24 ], [ 1, %138 ], [ 0, %135 ], [ 1, %120 ], [ 1, %130 ], [ 1, %125 ]
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

160:                                              ; preds = %186
  %161 = load i32, ptr %153, align 4, !tbaa !48
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %223

163:                                              ; preds = %160, %145
  %164 = phi i32 [ %187, %160 ], [ -1, %145 ]
  %165 = phi i32 [ %161, %160 ], [ 0, %145 ]
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %169 = icmp eq ptr %150, null
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %190

171:                                              ; preds = %186, %156
  %172 = phi i64 [ 0, %156 ], [ %188, %186 ]
  %173 = phi i32 [ -1, %156 ], [ %187, %186 ]
  %174 = getelementptr inbounds nuw [4 x i8], ptr %147, i64 %172
  %175 = load i16, ptr %174, align 2, !tbaa !28
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %171
  %178 = load i32, ptr %153, align 4, !tbaa !48
  %179 = add nsw i32 %178, 1
  store i32 %179, ptr %153, align 4, !tbaa !48
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i8], ptr %157, i64 %180
  %182 = trunc nuw nsw i64 %172 to i32
  store i32 %182, ptr %181, align 4, !tbaa !4
  %183 = getelementptr inbounds nuw i8, ptr %158, i64 %172
  store i8 0, ptr %183, align 1, !tbaa !28
  br label %186

184:                                              ; preds = %171
  %185 = getelementptr inbounds nuw i8, ptr %174, i64 2
  store i16 0, ptr %185, align 2, !tbaa !28
  br label %186

186:                                              ; preds = %184, %177
  %187 = phi i32 [ %182, %177 ], [ %173, %184 ]
  %188 = add nuw nsw i64 %172, 1
  %189 = icmp eq i64 %188, %159
  br i1 %189, label %160, label %171, !llvm.loop !50

190:                                              ; preds = %220, %163
  %191 = phi i32 [ %165, %163 ], [ %221, %220 ]
  %192 = phi i32 [ %164, %163 ], [ %195, %220 ]
  %193 = icmp slt i32 %192, 2
  %194 = add nsw i32 %192, 1
  %195 = select i1 %193, i32 %194, i32 %192
  %196 = select i1 %193, i32 %194, i32 0
  %197 = add nsw i32 %191, 1
  store i32 %197, ptr %153, align 4, !tbaa !48
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [4 x i8], ptr %166, i64 %198
  store i32 %196, ptr %199, align 4, !tbaa !4
  %200 = sext i32 %196 to i64
  %201 = getelementptr inbounds [4 x i8], ptr %147, i64 %200
  store i16 1, ptr %201, align 2, !tbaa !28
  %202 = getelementptr inbounds i8, ptr %167, i64 %200
  store i8 0, ptr %202, align 1, !tbaa !28
  %203 = load i64, ptr %168, align 8, !tbaa !51
  %204 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %203, i64 1), !nosanitize !33
  %205 = extractvalue { i64, i1 } %204, 1, !nosanitize !33
  br i1 %205, label %206, label %207, !prof !34, !nosanitize !33

206:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !33
  unreachable, !nosanitize !33

207:                                              ; preds = %190
  %208 = extractvalue { i64, i1 } %204, 0, !nosanitize !33
  store i64 %208, ptr %168, align 8, !tbaa !51
  br i1 %169, label %220, label %209

209:                                              ; preds = %207
  %210 = getelementptr inbounds [4 x i8], ptr %150, i64 %200
  %211 = getelementptr inbounds nuw i8, ptr %210, i64 2
  %212 = load i16, ptr %211, align 2, !tbaa !28
  %213 = zext i16 %212 to i64
  %214 = load i64, ptr %170, align 8, !tbaa !52
  %215 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %214, i64 %213), !nosanitize !33
  %216 = extractvalue { i64, i1 } %215, 1, !nosanitize !33
  br i1 %216, label %217, label %218, !prof !34, !nosanitize !33

217:                                              ; preds = %209
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !33
  unreachable, !nosanitize !33

218:                                              ; preds = %209
  %219 = extractvalue { i64, i1 } %215, 0, !nosanitize !33
  store i64 %219, ptr %170, align 8, !tbaa !52
  br label %220

220:                                              ; preds = %218, %207
  %221 = load i32, ptr %153, align 4, !tbaa !48
  %222 = icmp slt i32 %221, 2
  br i1 %222, label %190, label %223, !llvm.loop !53

223:                                              ; preds = %220, %160
  %224 = phi i32 [ %187, %160 ], [ %195, %220 ]
  %225 = phi i32 [ %161, %160 ], [ %221, %220 ]
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 %224, ptr %226, align 8, !tbaa !54
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %229 = lshr i32 %225, 1
  %230 = zext nneg i32 %229 to i64
  br label %235

231:                                              ; preds = %301
  %232 = load i32, ptr %153, align 4, !tbaa !48
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %234 = sext i32 %152 to i64
  br label %307

235:                                              ; preds = %301, %223
  %236 = phi i64 [ %230, %223 ], [ %305, %301 ]
  %237 = getelementptr inbounds nuw [4 x i8], ptr %227, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, ptr %228, i64 %239
  %241 = load i32, ptr %153, align 4, !tbaa !48
  %242 = trunc i64 %236 to i32
  %243 = shl i32 %242, 1
  %244 = icmp sgt i32 %243, %241
  br i1 %244, label %301, label %245

245:                                              ; preds = %235
  %246 = getelementptr inbounds [4 x i8], ptr %147, i64 %239
  br label %247

247:                                              ; preds = %295, %245
  %248 = phi i32 [ %241, %245 ], [ %299, %295 ]
  %249 = phi i32 [ %243, %245 ], [ %298, %295 ]
  %250 = phi i32 [ %242, %245 ], [ %280, %295 ]
  %251 = icmp slt i32 %249, %248
  br i1 %251, label %254, label %252

252:                                              ; preds = %247
  %253 = sext i32 %249 to i64
  br label %278

254:                                              ; preds = %247
  %255 = or disjoint i32 %249, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [4 x i8], ptr %227, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [4 x i8], ptr %147, i64 %259
  %261 = load i16, ptr %260, align 2, !tbaa !28
  %262 = sext i32 %249 to i64
  %263 = getelementptr inbounds [4 x i8], ptr %227, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [4 x i8], ptr %147, i64 %265
  %267 = load i16, ptr %266, align 2, !tbaa !28
  %268 = icmp ult i16 %261, %267
  br i1 %268, label %277, label %269

269:                                              ; preds = %254
  %270 = icmp eq i16 %261, %267
  br i1 %270, label %271, label %278

271:                                              ; preds = %269
  %272 = getelementptr inbounds i8, ptr %228, i64 %259
  %273 = load i8, ptr %272, align 1, !tbaa !28
  %274 = getelementptr inbounds i8, ptr %228, i64 %265
  %275 = load i8, ptr %274, align 1, !tbaa !28
  %276 = icmp ugt i8 %273, %275
  br i1 %276, label %278, label %277

277:                                              ; preds = %271, %254
  br label %278

278:                                              ; preds = %277, %271, %269, %252
  %279 = phi i64 [ %253, %252 ], [ %256, %277 ], [ %262, %271 ], [ %262, %269 ]
  %280 = phi i32 [ %249, %252 ], [ %255, %277 ], [ %249, %271 ], [ %249, %269 ]
  %281 = load i16, ptr %246, align 2, !tbaa !28
  %282 = getelementptr inbounds [4 x i8], ptr %227, i64 %279
  %283 = load i32, ptr %282, align 4, !tbaa !4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [4 x i8], ptr %147, i64 %284
  %286 = load i16, ptr %285, align 2, !tbaa !28
  %287 = icmp ult i16 %281, %286
  br i1 %287, label %301, label %288

288:                                              ; preds = %278
  %289 = icmp eq i16 %281, %286
  br i1 %289, label %290, label %295

290:                                              ; preds = %288
  %291 = load i8, ptr %240, align 1, !tbaa !28
  %292 = getelementptr inbounds i8, ptr %228, i64 %284
  %293 = load i8, ptr %292, align 1, !tbaa !28
  %294 = icmp ugt i8 %291, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %290, %288
  %296 = sext i32 %250 to i64
  %297 = getelementptr inbounds [4 x i8], ptr %227, i64 %296
  store i32 %283, ptr %297, align 4, !tbaa !4
  %298 = shl i32 %280, 1
  %299 = load i32, ptr %153, align 4, !tbaa !48
  %300 = icmp sgt i32 %298, %299
  br i1 %300, label %301, label %247, !llvm.loop !55

301:                                              ; preds = %295, %290, %278, %235
  %302 = phi i32 [ %242, %235 ], [ %250, %278 ], [ %250, %290 ], [ %280, %295 ]
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [4 x i8], ptr %227, i64 %303
  store i32 %238, ptr %304, align 4, !tbaa !4
  %305 = add nsw i64 %236, -1
  %306 = icmp sgt i64 %236, 1
  br i1 %306, label %235, label %231, !llvm.loop !56

307:                                              ; preds = %468, %231
  %308 = phi i32 [ %232, %231 ], [ %471, %468 ]
  %309 = phi i64 [ %234, %231 ], [ %408, %468 ]
  %310 = load i32, ptr %233, align 4, !tbaa !4
  %311 = add nsw i32 %308, -1
  store i32 %311, ptr %153, align 4, !tbaa !48
  %312 = sext i32 %308 to i64
  %313 = getelementptr inbounds [4 x i8], ptr %227, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !4
  store i32 %314, ptr %233, align 4, !tbaa !4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, ptr %228, i64 %315
  %317 = icmp slt i32 %308, 3
  br i1 %317, label %377, label %318

318:                                              ; preds = %307
  %319 = getelementptr inbounds [4 x i8], ptr %147, i64 %315
  br label %320

320:                                              ; preds = %368, %318
  %321 = phi i32 [ %311, %318 ], [ %372, %368 ]
  %322 = phi i32 [ 2, %318 ], [ %371, %368 ]
  %323 = phi i32 [ 1, %318 ], [ %353, %368 ]
  %324 = icmp slt i32 %322, %321
  br i1 %324, label %327, label %325

325:                                              ; preds = %320
  %326 = sext i32 %322 to i64
  br label %351

327:                                              ; preds = %320
  %328 = or disjoint i32 %322, 1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [4 x i8], ptr %227, i64 %329
  %331 = load i32, ptr %330, align 4, !tbaa !4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [4 x i8], ptr %147, i64 %332
  %334 = load i16, ptr %333, align 2, !tbaa !28
  %335 = sext i32 %322 to i64
  %336 = getelementptr inbounds [4 x i8], ptr %227, i64 %335
  %337 = load i32, ptr %336, align 4, !tbaa !4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [4 x i8], ptr %147, i64 %338
  %340 = load i16, ptr %339, align 2, !tbaa !28
  %341 = icmp ult i16 %334, %340
  br i1 %341, label %350, label %342

342:                                              ; preds = %327
  %343 = icmp eq i16 %334, %340
  br i1 %343, label %344, label %351

344:                                              ; preds = %342
  %345 = getelementptr inbounds i8, ptr %228, i64 %332
  %346 = load i8, ptr %345, align 1, !tbaa !28
  %347 = getelementptr inbounds i8, ptr %228, i64 %338
  %348 = load i8, ptr %347, align 1, !tbaa !28
  %349 = icmp ugt i8 %346, %348
  br i1 %349, label %351, label %350

350:                                              ; preds = %344, %327
  br label %351

351:                                              ; preds = %350, %344, %342, %325
  %352 = phi i64 [ %326, %325 ], [ %329, %350 ], [ %335, %344 ], [ %335, %342 ]
  %353 = phi i32 [ %322, %325 ], [ %328, %350 ], [ %322, %344 ], [ %322, %342 ]
  %354 = load i16, ptr %319, align 2, !tbaa !28
  %355 = getelementptr inbounds [4 x i8], ptr %227, i64 %352
  %356 = load i32, ptr %355, align 4, !tbaa !4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [4 x i8], ptr %147, i64 %357
  %359 = load i16, ptr %358, align 2, !tbaa !28
  %360 = icmp ult i16 %354, %359
  br i1 %360, label %374, label %361

361:                                              ; preds = %351
  %362 = icmp eq i16 %354, %359
  br i1 %362, label %363, label %368

363:                                              ; preds = %361
  %364 = load i8, ptr %316, align 1, !tbaa !28
  %365 = getelementptr inbounds i8, ptr %228, i64 %357
  %366 = load i8, ptr %365, align 1, !tbaa !28
  %367 = icmp ugt i8 %364, %366
  br i1 %367, label %368, label %374

368:                                              ; preds = %363, %361
  %369 = sext i32 %323 to i64
  %370 = getelementptr inbounds [4 x i8], ptr %227, i64 %369
  store i32 %356, ptr %370, align 4, !tbaa !4
  %371 = shl i32 %353, 1
  %372 = load i32, ptr %153, align 4, !tbaa !48
  %373 = icmp sgt i32 %371, %372
  br i1 %373, label %374, label %320, !llvm.loop !55

374:                                              ; preds = %368, %363, %351
  %375 = phi i32 [ %323, %351 ], [ %323, %363 ], [ %353, %368 ]
  %376 = sext i32 %375 to i64
  br label %377

377:                                              ; preds = %374, %307
  %378 = phi i64 [ 1, %307 ], [ %376, %374 ]
  %379 = getelementptr inbounds [4 x i8], ptr %227, i64 %378
  store i32 %314, ptr %379, align 4, !tbaa !4
  %380 = load i32, ptr %233, align 4, !tbaa !4
  %381 = load i32, ptr %154, align 8, !tbaa !49
  %382 = add nsw i32 %381, -1
  store i32 %382, ptr %154, align 8, !tbaa !49
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [4 x i8], ptr %227, i64 %383
  store i32 %310, ptr %384, align 4, !tbaa !4
  %385 = load i32, ptr %154, align 8, !tbaa !49
  %386 = add nsw i32 %385, -1
  store i32 %386, ptr %154, align 8, !tbaa !49
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [4 x i8], ptr %227, i64 %387
  store i32 %380, ptr %388, align 4, !tbaa !4
  %389 = sext i32 %310 to i64
  %390 = getelementptr inbounds [4 x i8], ptr %147, i64 %389
  %391 = load i16, ptr %390, align 2, !tbaa !28
  %392 = sext i32 %380 to i64
  %393 = getelementptr inbounds [4 x i8], ptr %147, i64 %392
  %394 = load i16, ptr %393, align 2, !tbaa !28
  %395 = add i16 %394, %391
  %396 = getelementptr inbounds [4 x i8], ptr %147, i64 %309
  store i16 %395, ptr %396, align 2, !tbaa !28
  %397 = getelementptr inbounds i8, ptr %228, i64 %389
  %398 = load i8, ptr %397, align 1, !tbaa !28
  %399 = getelementptr inbounds i8, ptr %228, i64 %392
  %400 = load i8, ptr %399, align 1, !tbaa !28
  %401 = tail call i8 @llvm.umax.i8(i8 %398, i8 %400)
  %402 = add i8 %401, 1
  %403 = getelementptr inbounds i8, ptr %228, i64 %309
  store i8 %402, ptr %403, align 1, !tbaa !28
  %404 = trunc nsw i64 %309 to i32
  %405 = trunc i64 %309 to i16
  %406 = getelementptr inbounds nuw i8, ptr %393, i64 2
  store i16 %405, ptr %406, align 2, !tbaa !28
  %407 = getelementptr inbounds nuw i8, ptr %390, i64 2
  store i16 %405, ptr %407, align 2, !tbaa !28
  %408 = add nsw i64 %309, 1
  store i32 %404, ptr %233, align 4, !tbaa !4
  %409 = load i32, ptr %153, align 4, !tbaa !48
  %410 = icmp slt i32 %409, 2
  br i1 %410, label %468, label %411

411:                                              ; preds = %459, %377
  %412 = phi i32 [ %463, %459 ], [ %409, %377 ]
  %413 = phi i32 [ %462, %459 ], [ 2, %377 ]
  %414 = phi i32 [ %444, %459 ], [ 1, %377 ]
  %415 = icmp slt i32 %413, %412
  br i1 %415, label %418, label %416

416:                                              ; preds = %411
  %417 = sext i32 %413 to i64
  br label %442

418:                                              ; preds = %411
  %419 = or disjoint i32 %413, 1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [4 x i8], ptr %227, i64 %420
  %422 = load i32, ptr %421, align 4, !tbaa !4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [4 x i8], ptr %147, i64 %423
  %425 = load i16, ptr %424, align 2, !tbaa !28
  %426 = sext i32 %413 to i64
  %427 = getelementptr inbounds [4 x i8], ptr %227, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [4 x i8], ptr %147, i64 %429
  %431 = load i16, ptr %430, align 2, !tbaa !28
  %432 = icmp ult i16 %425, %431
  br i1 %432, label %441, label %433

433:                                              ; preds = %418
  %434 = icmp eq i16 %425, %431
  br i1 %434, label %435, label %442

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, ptr %228, i64 %423
  %437 = load i8, ptr %436, align 1, !tbaa !28
  %438 = getelementptr inbounds i8, ptr %228, i64 %429
  %439 = load i8, ptr %438, align 1, !tbaa !28
  %440 = icmp ugt i8 %437, %439
  br i1 %440, label %442, label %441

441:                                              ; preds = %435, %418
  br label %442

442:                                              ; preds = %441, %435, %433, %416
  %443 = phi i64 [ %417, %416 ], [ %420, %441 ], [ %426, %435 ], [ %426, %433 ]
  %444 = phi i32 [ %413, %416 ], [ %419, %441 ], [ %413, %435 ], [ %413, %433 ]
  %445 = load i16, ptr %396, align 2, !tbaa !28
  %446 = getelementptr inbounds [4 x i8], ptr %227, i64 %443
  %447 = load i32, ptr %446, align 4, !tbaa !4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [4 x i8], ptr %147, i64 %448
  %450 = load i16, ptr %449, align 2, !tbaa !28
  %451 = icmp ult i16 %445, %450
  br i1 %451, label %465, label %452

452:                                              ; preds = %442
  %453 = icmp eq i16 %445, %450
  br i1 %453, label %454, label %459

454:                                              ; preds = %452
  %455 = load i8, ptr %403, align 1, !tbaa !28
  %456 = getelementptr inbounds i8, ptr %228, i64 %448
  %457 = load i8, ptr %456, align 1, !tbaa !28
  %458 = icmp ugt i8 %455, %457
  br i1 %458, label %459, label %465

459:                                              ; preds = %454, %452
  %460 = sext i32 %414 to i64
  %461 = getelementptr inbounds [4 x i8], ptr %227, i64 %460
  store i32 %447, ptr %461, align 4, !tbaa !4
  %462 = shl i32 %444, 1
  %463 = load i32, ptr %153, align 4, !tbaa !48
  %464 = icmp sgt i32 %462, %463
  br i1 %464, label %465, label %411, !llvm.loop !55

465:                                              ; preds = %459, %454, %442
  %466 = phi i32 [ %414, %442 ], [ %414, %454 ], [ %444, %459 ]
  %467 = sext i32 %466 to i64
  br label %468

468:                                              ; preds = %465, %377
  %469 = phi i64 [ 1, %377 ], [ %467, %465 ]
  %470 = getelementptr inbounds [4 x i8], ptr %227, i64 %469
  store i32 %404, ptr %470, align 4, !tbaa !4
  %471 = load i32, ptr %153, align 4, !tbaa !48
  %472 = icmp sgt i32 %471, 1
  br i1 %472, label %307, label %473, !llvm.loop !57

473:                                              ; preds = %468
  %474 = load i32, ptr %233, align 4, !tbaa !4
  %475 = load i32, ptr %154, align 8, !tbaa !49
  %476 = add nsw i32 %475, -1
  store i32 %476, ptr %154, align 8, !tbaa !49
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds [4 x i8], ptr %227, i64 %477
  store i32 %474, ptr %478, align 4, !tbaa !4
  %479 = load ptr, ptr %146, align 8, !tbaa !42
  %480 = load i32, ptr %226, align 8, !tbaa !54
  %481 = load ptr, ptr %148, align 8, !tbaa !43
  %482 = load ptr, ptr %481, align 8, !tbaa !44
  %483 = getelementptr inbounds nuw i8, ptr %481, i64 8
  %484 = load ptr, ptr %483, align 8, !tbaa !58
  %485 = getelementptr inbounds nuw i8, ptr %481, i64 16
  %486 = load i32, ptr %485, align 8, !tbaa !59
  %487 = getelementptr inbounds nuw i8, ptr %481, i64 24
  %488 = load i32, ptr %487, align 8, !tbaa !60
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %489, i8 0, i64 32, i1 false), !tbaa !61
  %490 = load i32, ptr %154, align 8, !tbaa !49
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [4 x i8], ptr %227, i64 %491
  %493 = load i32, ptr %492, align 4, !tbaa !4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [4 x i8], ptr %479, i64 %494
  %496 = getelementptr inbounds nuw i8, ptr %495, i64 2
  store i16 0, ptr %496, align 2, !tbaa !28
  %497 = load i32, ptr %154, align 8, !tbaa !49
  %498 = icmp slt i32 %497, 572
  br i1 %498, label %499, label %648

499:                                              ; preds = %473
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %501 = icmp eq ptr %482, null
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %503 = sext i32 %497 to i64
  %504 = add nsw i64 %503, 1
  br label %505

505:                                              ; preds = %564, %499
  %506 = phi i64 [ %504, %499 ], [ %565, %564 ]
  %507 = phi i32 [ 0, %499 ], [ %523, %564 ]
  %508 = getelementptr inbounds [4 x i8], ptr %227, i64 %506
  %509 = load i32, ptr %508, align 4, !tbaa !4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds [4 x i8], ptr %479, i64 %510
  %512 = getelementptr inbounds nuw i8, ptr %511, i64 2
  %513 = load i16, ptr %512, align 2, !tbaa !28
  %514 = zext i16 %513 to i64
  %515 = getelementptr inbounds nuw [4 x i8], ptr %479, i64 %514
  %516 = getelementptr inbounds nuw i8, ptr %515, i64 2
  %517 = load i16, ptr %516, align 2, !tbaa !28
  %518 = zext i16 %517 to i32
  %519 = add nuw nsw i32 %518, 1
  %520 = icmp sle i32 %488, %518
  %521 = select i1 %520, i32 %488, i32 %519
  %522 = zext i1 %520 to i32
  %523 = add nuw nsw i32 %507, %522
  %524 = trunc i32 %521 to i16
  store i16 %524, ptr %512, align 2, !tbaa !28
  %525 = icmp sgt i32 %509, %480
  br i1 %525, label %564, label %526

526:                                              ; preds = %505
  %527 = sext i32 %521 to i64
  %528 = getelementptr inbounds [2 x i8], ptr %489, i64 %527
  %529 = load i16, ptr %528, align 2, !tbaa !61
  %530 = add i16 %529, 1
  store i16 %530, ptr %528, align 2, !tbaa !61
  %531 = icmp slt i32 %509, %486
  br i1 %531, label %537, label %532

532:                                              ; preds = %526
  %533 = sub nsw i32 %509, %486
  %534 = zext nneg i32 %533 to i64
  %535 = getelementptr inbounds nuw [4 x i8], ptr %484, i64 %534
  %536 = load i32, ptr %535, align 4, !tbaa !4
  br label %537

537:                                              ; preds = %532, %526
  %538 = phi i32 [ %536, %532 ], [ 0, %526 ]
  %539 = load i16, ptr %511, align 2, !tbaa !28
  %540 = zext i16 %539 to i64
  %541 = add nsw i32 %538, %521
  %542 = zext i32 %541 to i64
  %543 = mul nuw nsw i64 %540, %542
  %544 = load i64, ptr %500, align 8, !tbaa !51
  %545 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %544, i64 %543), !nosanitize !33
  %546 = extractvalue { i64, i1 } %545, 1, !nosanitize !33
  br i1 %546, label %547, label %548, !prof !34, !nosanitize !33

547:                                              ; preds = %537
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

548:                                              ; preds = %537
  %549 = extractvalue { i64, i1 } %545, 0, !nosanitize !33
  store i64 %549, ptr %500, align 8, !tbaa !51
  br i1 %501, label %564, label %550

550:                                              ; preds = %548
  %551 = getelementptr inbounds [4 x i8], ptr %482, i64 %510
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 2
  %553 = load i16, ptr %552, align 2, !tbaa !28
  %554 = zext i16 %553 to i32
  %555 = add nsw i32 %538, %554
  %556 = zext i32 %555 to i64
  %557 = mul nuw nsw i64 %556, %540
  %558 = load i64, ptr %502, align 8, !tbaa !52
  %559 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %558, i64 %557), !nosanitize !33
  %560 = extractvalue { i64, i1 } %559, 1, !nosanitize !33
  br i1 %560, label %561, label %562, !prof !34, !nosanitize !33

561:                                              ; preds = %550
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

562:                                              ; preds = %550
  %563 = extractvalue { i64, i1 } %559, 0, !nosanitize !33
  store i64 %563, ptr %502, align 8, !tbaa !52
  br label %564

564:                                              ; preds = %562, %548, %505
  %565 = add nsw i64 %506, 1
  %566 = and i64 %565, 4294967295
  %567 = icmp eq i64 %566, 573
  br i1 %567, label %568, label %505, !llvm.loop !62

568:                                              ; preds = %564
  %569 = icmp eq i32 %523, 0
  br i1 %569, label %648, label %570

570:                                              ; preds = %568
  %571 = sext i32 %488 to i64
  %572 = getelementptr inbounds [2 x i8], ptr %489, i64 %571
  br label %573

573:                                              ; preds = %581, %570
  %574 = phi i32 [ %591, %581 ], [ %523, %570 ]
  br label %575

575:                                              ; preds = %575, %573
  %576 = phi i64 [ %577, %575 ], [ %571, %573 ]
  %577 = add nsw i64 %576, -1
  %578 = getelementptr inbounds [2 x i8], ptr %489, i64 %577
  %579 = load i16, ptr %578, align 2, !tbaa !61
  %580 = icmp eq i16 %579, 0
  br i1 %580, label %575, label %581, !llvm.loop !63

581:                                              ; preds = %575
  %582 = getelementptr inbounds [2 x i8], ptr %489, i64 %577
  %583 = add i16 %579, -1
  store i16 %583, ptr %582, align 2, !tbaa !61
  %584 = shl i64 %576, 32
  %585 = ashr exact i64 %584, 31
  %586 = getelementptr inbounds i8, ptr %489, i64 %585
  %587 = load i16, ptr %586, align 2, !tbaa !61
  %588 = add i16 %587, 2
  store i16 %588, ptr %586, align 2, !tbaa !61
  %589 = load i16, ptr %572, align 2, !tbaa !61
  %590 = add i16 %589, -1
  store i16 %590, ptr %572, align 2, !tbaa !61
  %591 = add nsw i32 %574, -2
  %592 = icmp sgt i32 %574, 2
  br i1 %592, label %573, label %593, !llvm.loop !64

593:                                              ; preds = %581
  %594 = icmp eq i32 %488, 0
  br i1 %594, label %648, label %595

595:                                              ; preds = %604, %593
  %596 = phi i64 [ %606, %604 ], [ %571, %593 ]
  %597 = phi i32 [ %605, %604 ], [ 573, %593 ]
  %598 = getelementptr inbounds [2 x i8], ptr %489, i64 %596
  %599 = load i16, ptr %598, align 2, !tbaa !61
  %600 = icmp eq i16 %599, 0
  br i1 %600, label %604, label %601

601:                                              ; preds = %595
  %602 = zext i16 %599 to i32
  %603 = trunc i64 %596 to i16
  br label %608

604:                                              ; preds = %645, %595
  %605 = phi i32 [ %597, %595 ], [ %619, %645 ]
  %606 = add nsw i64 %596, -1
  %607 = icmp eq i64 %606, 0
  br i1 %607, label %648, label %595, !llvm.loop !65

608:                                              ; preds = %645, %601
  %609 = phi i32 [ %597, %601 ], [ %619, %645 ]
  %610 = phi i32 [ %602, %601 ], [ %646, %645 ]
  %611 = sext i32 %609 to i64
  br label %612

612:                                              ; preds = %612, %608
  %613 = phi i64 [ %611, %608 ], [ %614, %612 ]
  %614 = add nsw i64 %613, -1
  %615 = getelementptr inbounds [4 x i8], ptr %227, i64 %614
  %616 = load i32, ptr %615, align 4, !tbaa !4
  %617 = icmp sgt i32 %616, %480
  br i1 %617, label %612, label %618, !llvm.loop !66

618:                                              ; preds = %612
  %619 = trunc nsw i64 %614 to i32
  %620 = sext i32 %616 to i64
  %621 = getelementptr inbounds [4 x i8], ptr %479, i64 %620
  %622 = getelementptr inbounds nuw i8, ptr %621, i64 2
  %623 = load i16, ptr %622, align 2, !tbaa !28
  %624 = zext i16 %623 to i64
  %625 = icmp eq i64 %596, %624
  br i1 %625, label %645, label %626

626:                                              ; preds = %618
  %627 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %596, i64 %624), !nosanitize !33
  %628 = extractvalue { i64, i1 } %627, 1, !nosanitize !33
  br i1 %628, label %629, label %630, !prof !34, !nosanitize !33

629:                                              ; preds = %626
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !33
  unreachable, !nosanitize !33

630:                                              ; preds = %626
  %631 = extractvalue { i64, i1 } %627, 0, !nosanitize !33
  %632 = load i16, ptr %621, align 2, !tbaa !28
  %633 = zext i16 %632 to i64
  %634 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %631, i64 %633), !nosanitize !33
  %635 = extractvalue { i64, i1 } %634, 1, !nosanitize !33
  br i1 %635, label %636, label %637, !prof !34, !nosanitize !33

636:                                              ; preds = %630
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !33
  unreachable, !nosanitize !33

637:                                              ; preds = %630
  %638 = extractvalue { i64, i1 } %634, 0, !nosanitize !33
  %639 = load i64, ptr %500, align 8, !tbaa !51
  %640 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %639, i64 %638), !nosanitize !33
  %641 = extractvalue { i64, i1 } %640, 1, !nosanitize !33
  br i1 %641, label %642, label %643, !prof !34, !nosanitize !33

642:                                              ; preds = %637
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

643:                                              ; preds = %637
  %644 = extractvalue { i64, i1 } %640, 0, !nosanitize !33
  store i64 %644, ptr %500, align 8, !tbaa !51
  store i16 %603, ptr %622, align 2, !tbaa !28
  br label %645

645:                                              ; preds = %643, %618
  %646 = add nsw i32 %610, -1
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %604, label %608, !llvm.loop !66

648:                                              ; preds = %604, %593, %568, %473
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %649 = load i16, ptr %489, align 2, !tbaa !61
  %650 = zext i16 %649 to i32
  %651 = shl nuw nsw i32 %650, 1
  %652 = trunc i32 %651 to i16
  %653 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %652, ptr %653, align 2, !tbaa !61
  %654 = getelementptr i8, ptr %0, i64 2978
  %655 = load i16, ptr %654, align 2, !tbaa !61
  %656 = zext i16 %655 to i32
  %657 = add nuw nsw i32 %651, %656
  %658 = shl nuw nsw i32 %657, 1
  %659 = trunc i32 %658 to i16
  %660 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %659, ptr %660, align 4, !tbaa !61
  %661 = getelementptr i8, ptr %0, i64 2980
  %662 = load i16, ptr %661, align 2, !tbaa !61
  %663 = zext i16 %662 to i32
  %664 = add nuw nsw i32 %658, %663
  %665 = shl nuw nsw i32 %664, 1
  %666 = trunc i32 %665 to i16
  %667 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %666, ptr %667, align 2, !tbaa !61
  %668 = getelementptr i8, ptr %0, i64 2982
  %669 = load i16, ptr %668, align 2, !tbaa !61
  %670 = zext i16 %669 to i32
  %671 = add nuw nsw i32 %665, %670
  %672 = shl nuw nsw i32 %671, 1
  %673 = trunc i32 %672 to i16
  %674 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %673, ptr %674, align 8, !tbaa !61
  %675 = getelementptr i8, ptr %0, i64 2984
  %676 = load i16, ptr %675, align 2, !tbaa !61
  %677 = zext i16 %676 to i32
  %678 = add nuw nsw i32 %672, %677
  %679 = shl nuw nsw i32 %678, 1
  %680 = trunc i32 %679 to i16
  %681 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %680, ptr %681, align 2, !tbaa !61
  %682 = getelementptr i8, ptr %0, i64 2986
  %683 = load i16, ptr %682, align 2, !tbaa !61
  %684 = zext i16 %683 to i32
  %685 = add nuw nsw i32 %679, %684
  %686 = shl nuw nsw i32 %685, 1
  %687 = trunc i32 %686 to i16
  %688 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %687, ptr %688, align 4, !tbaa !61
  %689 = getelementptr i8, ptr %0, i64 2988
  %690 = load i16, ptr %689, align 2, !tbaa !61
  %691 = zext i16 %690 to i32
  %692 = add nuw nsw i32 %686, %691
  %693 = shl nuw nsw i32 %692, 1
  %694 = trunc i32 %693 to i16
  %695 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %694, ptr %695, align 2, !tbaa !61
  %696 = getelementptr i8, ptr %0, i64 2990
  %697 = load i16, ptr %696, align 2, !tbaa !61
  %698 = zext i16 %697 to i32
  %699 = add nuw nsw i32 %693, %698
  %700 = shl nuw nsw i32 %699, 1
  %701 = trunc i32 %700 to i16
  %702 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %701, ptr %702, align 16, !tbaa !61
  %703 = getelementptr i8, ptr %0, i64 2992
  %704 = load i16, ptr %703, align 2, !tbaa !61
  %705 = zext i16 %704 to i32
  %706 = add nuw nsw i32 %700, %705
  %707 = shl nuw nsw i32 %706, 1
  %708 = trunc i32 %707 to i16
  %709 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %708, ptr %709, align 2, !tbaa !61
  %710 = getelementptr i8, ptr %0, i64 2994
  %711 = load i16, ptr %710, align 2, !tbaa !61
  %712 = zext i16 %711 to i32
  %713 = add nuw nsw i32 %707, %712
  %714 = shl nuw nsw i32 %713, 1
  %715 = trunc i32 %714 to i16
  %716 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %715, ptr %716, align 4, !tbaa !61
  %717 = getelementptr i8, ptr %0, i64 2996
  %718 = load i16, ptr %717, align 2, !tbaa !61
  %719 = trunc i32 %714 to i16
  %720 = add i16 %718, %719
  %721 = shl i16 %720, 1
  %722 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %721, ptr %722, align 2, !tbaa !61
  %723 = getelementptr i8, ptr %0, i64 2998
  %724 = load i16, ptr %723, align 2, !tbaa !61
  %725 = add i16 %724, %721
  %726 = shl i16 %725, 1
  %727 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %726, ptr %727, align 8, !tbaa !61
  %728 = getelementptr i8, ptr %0, i64 3000
  %729 = load i16, ptr %728, align 2, !tbaa !61
  %730 = add i16 %726, %729
  %731 = shl i16 %730, 1
  %732 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %731, ptr %732, align 2, !tbaa !61
  %733 = getelementptr i8, ptr %0, i64 3002
  %734 = load i16, ptr %733, align 2, !tbaa !61
  %735 = add i16 %731, %734
  %736 = shl i16 %735, 1
  %737 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %736, ptr %737, align 4, !tbaa !61
  %738 = getelementptr i8, ptr %0, i64 3004
  %739 = load i16, ptr %738, align 2, !tbaa !61
  %740 = add i16 %736, %739
  %741 = shl i16 %740, 1
  %742 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %741, ptr %742, align 2, !tbaa !61
  %743 = icmp slt i32 %224, 0
  br i1 %743, label %804, label %744

744:                                              ; preds = %648
  %745 = add nuw i32 %224, 1
  %746 = zext i32 %745 to i64
  br label %747

747:                                              ; preds = %801, %744
  %748 = phi i64 [ 0, %744 ], [ %802, %801 ]
  %749 = getelementptr inbounds nuw [4 x i8], ptr %147, i64 %748
  %750 = getelementptr inbounds nuw i8, ptr %749, i64 2
  %751 = load i16, ptr %750, align 2, !tbaa !28
  %752 = icmp eq i16 %751, 0
  br i1 %752, label %801, label %753

753:                                              ; preds = %747
  %754 = zext i16 %751 to i32
  %755 = zext i16 %751 to i64
  %756 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %755
  %757 = load i16, ptr %756, align 2, !tbaa !61
  %758 = add i16 %757, 1
  store i16 %758, ptr %756, align 2, !tbaa !61
  %759 = and i32 %754, 3
  %760 = icmp ult i16 %751, 4
  br i1 %760, label %785, label %761

761:                                              ; preds = %753
  %762 = and i32 %754, 65532
  br label %763

763:                                              ; preds = %763, %761
  %764 = phi i16 [ %757, %761 ], [ %779, %763 ]
  %765 = phi i16 [ 0, %761 ], [ %780, %763 ]
  %766 = phi i32 [ 0, %761 ], [ %781, %763 ]
  %767 = and i16 %764, 1
  %768 = or disjoint i16 %765, %767
  %769 = shl i16 %768, 2
  %770 = and i16 %764, 2
  %771 = or disjoint i16 %769, %770
  %772 = lshr i16 %764, 2
  %773 = and i16 %772, 1
  %774 = or disjoint i16 %771, %773
  %775 = lshr i16 %764, 3
  %776 = shl i16 %774, 1
  %777 = and i16 %775, 1
  %778 = or disjoint i16 %776, %777
  %779 = lshr i16 %764, 4
  %780 = shl i16 %778, 1
  %781 = add i32 %766, 4
  %782 = icmp eq i32 %781, %762
  br i1 %782, label %783, label %763, !llvm.loop !67

783:                                              ; preds = %763
  %784 = icmp eq i32 %759, 0
  br i1 %784, label %799, label %785

785:                                              ; preds = %783, %753
  %786 = phi i16 [ %757, %753 ], [ %779, %783 ]
  %787 = phi i16 [ 0, %753 ], [ %780, %783 ]
  %788 = icmp ne i32 %759, 0
  tail call void @llvm.assume(i1 %788)
  br label %789

789:                                              ; preds = %789, %785
  %790 = phi i16 [ %786, %785 ], [ %795, %789 ]
  %791 = phi i16 [ %787, %785 ], [ %796, %789 ]
  %792 = phi i32 [ 0, %785 ], [ %797, %789 ]
  %793 = and i16 %790, 1
  %794 = or disjoint i16 %791, %793
  %795 = lshr i16 %790, 1
  %796 = shl i16 %794, 1
  %797 = add i32 %792, 1
  %798 = icmp eq i32 %797, %759
  br i1 %798, label %799, label %789, !llvm.loop !68

799:                                              ; preds = %789, %783
  %800 = phi i16 [ %778, %783 ], [ %794, %789 ]
  store i16 %800, ptr %749, align 2, !tbaa !28
  br label %801

801:                                              ; preds = %799, %747
  %802 = add nuw nsw i64 %748, 1
  %803 = icmp eq i64 %802, %746
  br i1 %803, label %804, label %747, !llvm.loop !70

804:                                              ; preds = %801, %648
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %805 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %806 = load ptr, ptr %805, align 8, !tbaa !42
  %807 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %808 = load ptr, ptr %807, align 8, !tbaa !43
  %809 = load ptr, ptr %808, align 8, !tbaa !44
  %810 = getelementptr inbounds nuw i8, ptr %808, i64 20
  %811 = load i32, ptr %810, align 4, !tbaa !47
  store i32 0, ptr %153, align 4, !tbaa !48
  store i32 573, ptr %154, align 8, !tbaa !49
  %812 = icmp sgt i32 %811, 0
  br i1 %812, label %813, label %818

813:                                              ; preds = %804
  %814 = zext nneg i32 %811 to i64
  br label %824

815:                                              ; preds = %839
  %816 = load i32, ptr %153, align 4, !tbaa !48
  %817 = icmp slt i32 %816, 2
  br i1 %817, label %818, label %876

818:                                              ; preds = %815, %804
  %819 = phi i32 [ %840, %815 ], [ -1, %804 ]
  %820 = phi i32 [ %816, %815 ], [ 0, %804 ]
  %821 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %822 = icmp eq ptr %809, null
  %823 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %843

824:                                              ; preds = %839, %813
  %825 = phi i64 [ 0, %813 ], [ %841, %839 ]
  %826 = phi i32 [ -1, %813 ], [ %840, %839 ]
  %827 = getelementptr inbounds nuw [4 x i8], ptr %806, i64 %825
  %828 = load i16, ptr %827, align 2, !tbaa !28
  %829 = icmp eq i16 %828, 0
  br i1 %829, label %837, label %830

830:                                              ; preds = %824
  %831 = load i32, ptr %153, align 4, !tbaa !48
  %832 = add nsw i32 %831, 1
  store i32 %832, ptr %153, align 4, !tbaa !48
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds [4 x i8], ptr %227, i64 %833
  %835 = trunc nuw nsw i64 %825 to i32
  store i32 %835, ptr %834, align 4, !tbaa !4
  %836 = getelementptr inbounds nuw i8, ptr %228, i64 %825
  store i8 0, ptr %836, align 1, !tbaa !28
  br label %839

837:                                              ; preds = %824
  %838 = getelementptr inbounds nuw i8, ptr %827, i64 2
  store i16 0, ptr %838, align 2, !tbaa !28
  br label %839

839:                                              ; preds = %837, %830
  %840 = phi i32 [ %835, %830 ], [ %826, %837 ]
  %841 = add nuw nsw i64 %825, 1
  %842 = icmp eq i64 %841, %814
  br i1 %842, label %815, label %824, !llvm.loop !50

843:                                              ; preds = %873, %818
  %844 = phi i32 [ %820, %818 ], [ %874, %873 ]
  %845 = phi i32 [ %819, %818 ], [ %848, %873 ]
  %846 = icmp slt i32 %845, 2
  %847 = add nsw i32 %845, 1
  %848 = select i1 %846, i32 %847, i32 %845
  %849 = select i1 %846, i32 %847, i32 0
  %850 = add nsw i32 %844, 1
  store i32 %850, ptr %153, align 4, !tbaa !48
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds [4 x i8], ptr %227, i64 %851
  store i32 %849, ptr %852, align 4, !tbaa !4
  %853 = sext i32 %849 to i64
  %854 = getelementptr inbounds [4 x i8], ptr %806, i64 %853
  store i16 1, ptr %854, align 2, !tbaa !28
  %855 = getelementptr inbounds i8, ptr %228, i64 %853
  store i8 0, ptr %855, align 1, !tbaa !28
  %856 = load i64, ptr %821, align 8, !tbaa !51
  %857 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %856, i64 1), !nosanitize !33
  %858 = extractvalue { i64, i1 } %857, 1, !nosanitize !33
  br i1 %858, label %859, label %860, !prof !34, !nosanitize !33

859:                                              ; preds = %843
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !33
  unreachable, !nosanitize !33

860:                                              ; preds = %843
  %861 = extractvalue { i64, i1 } %857, 0, !nosanitize !33
  store i64 %861, ptr %821, align 8, !tbaa !51
  br i1 %822, label %873, label %862

862:                                              ; preds = %860
  %863 = getelementptr inbounds [4 x i8], ptr %809, i64 %853
  %864 = getelementptr inbounds nuw i8, ptr %863, i64 2
  %865 = load i16, ptr %864, align 2, !tbaa !28
  %866 = zext i16 %865 to i64
  %867 = load i64, ptr %823, align 8, !tbaa !52
  %868 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %867, i64 %866), !nosanitize !33
  %869 = extractvalue { i64, i1 } %868, 1, !nosanitize !33
  br i1 %869, label %870, label %871, !prof !34, !nosanitize !33

870:                                              ; preds = %862
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !33
  unreachable, !nosanitize !33

871:                                              ; preds = %862
  %872 = extractvalue { i64, i1 } %868, 0, !nosanitize !33
  store i64 %872, ptr %823, align 8, !tbaa !52
  br label %873

873:                                              ; preds = %871, %860
  %874 = load i32, ptr %153, align 4, !tbaa !48
  %875 = icmp slt i32 %874, 2
  br i1 %875, label %843, label %876, !llvm.loop !53

876:                                              ; preds = %873, %815
  %877 = phi i32 [ %840, %815 ], [ %848, %873 ]
  %878 = phi i32 [ %816, %815 ], [ %874, %873 ]
  %879 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %877, ptr %879, align 8, !tbaa !54
  %880 = lshr i32 %878, 1
  %881 = zext nneg i32 %880 to i64
  br label %885

882:                                              ; preds = %951
  %883 = load i32, ptr %153, align 4, !tbaa !48
  %884 = sext i32 %811 to i64
  br label %957

885:                                              ; preds = %951, %876
  %886 = phi i64 [ %881, %876 ], [ %955, %951 ]
  %887 = getelementptr inbounds nuw [4 x i8], ptr %227, i64 %886
  %888 = load i32, ptr %887, align 4, !tbaa !4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds i8, ptr %228, i64 %889
  %891 = load i32, ptr %153, align 4, !tbaa !48
  %892 = trunc i64 %886 to i32
  %893 = shl i32 %892, 1
  %894 = icmp sgt i32 %893, %891
  br i1 %894, label %951, label %895

895:                                              ; preds = %885
  %896 = getelementptr inbounds [4 x i8], ptr %806, i64 %889
  br label %897

897:                                              ; preds = %945, %895
  %898 = phi i32 [ %891, %895 ], [ %949, %945 ]
  %899 = phi i32 [ %893, %895 ], [ %948, %945 ]
  %900 = phi i32 [ %892, %895 ], [ %930, %945 ]
  %901 = icmp slt i32 %899, %898
  br i1 %901, label %904, label %902

902:                                              ; preds = %897
  %903 = sext i32 %899 to i64
  br label %928

904:                                              ; preds = %897
  %905 = or disjoint i32 %899, 1
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds [4 x i8], ptr %227, i64 %906
  %908 = load i32, ptr %907, align 4, !tbaa !4
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds [4 x i8], ptr %806, i64 %909
  %911 = load i16, ptr %910, align 2, !tbaa !28
  %912 = sext i32 %899 to i64
  %913 = getelementptr inbounds [4 x i8], ptr %227, i64 %912
  %914 = load i32, ptr %913, align 4, !tbaa !4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds [4 x i8], ptr %806, i64 %915
  %917 = load i16, ptr %916, align 2, !tbaa !28
  %918 = icmp ult i16 %911, %917
  br i1 %918, label %927, label %919

919:                                              ; preds = %904
  %920 = icmp eq i16 %911, %917
  br i1 %920, label %921, label %928

921:                                              ; preds = %919
  %922 = getelementptr inbounds i8, ptr %228, i64 %909
  %923 = load i8, ptr %922, align 1, !tbaa !28
  %924 = getelementptr inbounds i8, ptr %228, i64 %915
  %925 = load i8, ptr %924, align 1, !tbaa !28
  %926 = icmp ugt i8 %923, %925
  br i1 %926, label %928, label %927

927:                                              ; preds = %921, %904
  br label %928

928:                                              ; preds = %927, %921, %919, %902
  %929 = phi i64 [ %903, %902 ], [ %906, %927 ], [ %912, %921 ], [ %912, %919 ]
  %930 = phi i32 [ %899, %902 ], [ %905, %927 ], [ %899, %921 ], [ %899, %919 ]
  %931 = load i16, ptr %896, align 2, !tbaa !28
  %932 = getelementptr inbounds [4 x i8], ptr %227, i64 %929
  %933 = load i32, ptr %932, align 4, !tbaa !4
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds [4 x i8], ptr %806, i64 %934
  %936 = load i16, ptr %935, align 2, !tbaa !28
  %937 = icmp ult i16 %931, %936
  br i1 %937, label %951, label %938

938:                                              ; preds = %928
  %939 = icmp eq i16 %931, %936
  br i1 %939, label %940, label %945

940:                                              ; preds = %938
  %941 = load i8, ptr %890, align 1, !tbaa !28
  %942 = getelementptr inbounds i8, ptr %228, i64 %934
  %943 = load i8, ptr %942, align 1, !tbaa !28
  %944 = icmp ugt i8 %941, %943
  br i1 %944, label %945, label %951

945:                                              ; preds = %940, %938
  %946 = sext i32 %900 to i64
  %947 = getelementptr inbounds [4 x i8], ptr %227, i64 %946
  store i32 %933, ptr %947, align 4, !tbaa !4
  %948 = shl i32 %930, 1
  %949 = load i32, ptr %153, align 4, !tbaa !48
  %950 = icmp sgt i32 %948, %949
  br i1 %950, label %951, label %897, !llvm.loop !55

951:                                              ; preds = %945, %940, %928, %885
  %952 = phi i32 [ %892, %885 ], [ %900, %928 ], [ %900, %940 ], [ %930, %945 ]
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds [4 x i8], ptr %227, i64 %953
  store i32 %888, ptr %954, align 4, !tbaa !4
  %955 = add nsw i64 %886, -1
  %956 = icmp sgt i64 %886, 1
  br i1 %956, label %885, label %882, !llvm.loop !56

957:                                              ; preds = %1118, %882
  %958 = phi i32 [ %883, %882 ], [ %1121, %1118 ]
  %959 = phi i64 [ %884, %882 ], [ %1058, %1118 ]
  %960 = load i32, ptr %233, align 4, !tbaa !4
  %961 = add nsw i32 %958, -1
  store i32 %961, ptr %153, align 4, !tbaa !48
  %962 = sext i32 %958 to i64
  %963 = getelementptr inbounds [4 x i8], ptr %227, i64 %962
  %964 = load i32, ptr %963, align 4, !tbaa !4
  store i32 %964, ptr %233, align 4, !tbaa !4
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds i8, ptr %228, i64 %965
  %967 = icmp slt i32 %958, 3
  br i1 %967, label %1027, label %968

968:                                              ; preds = %957
  %969 = getelementptr inbounds [4 x i8], ptr %806, i64 %965
  br label %970

970:                                              ; preds = %1018, %968
  %971 = phi i32 [ %961, %968 ], [ %1022, %1018 ]
  %972 = phi i32 [ 2, %968 ], [ %1021, %1018 ]
  %973 = phi i32 [ 1, %968 ], [ %1003, %1018 ]
  %974 = icmp slt i32 %972, %971
  br i1 %974, label %977, label %975

975:                                              ; preds = %970
  %976 = sext i32 %972 to i64
  br label %1001

977:                                              ; preds = %970
  %978 = or disjoint i32 %972, 1
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds [4 x i8], ptr %227, i64 %979
  %981 = load i32, ptr %980, align 4, !tbaa !4
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds [4 x i8], ptr %806, i64 %982
  %984 = load i16, ptr %983, align 2, !tbaa !28
  %985 = sext i32 %972 to i64
  %986 = getelementptr inbounds [4 x i8], ptr %227, i64 %985
  %987 = load i32, ptr %986, align 4, !tbaa !4
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds [4 x i8], ptr %806, i64 %988
  %990 = load i16, ptr %989, align 2, !tbaa !28
  %991 = icmp ult i16 %984, %990
  br i1 %991, label %1000, label %992

992:                                              ; preds = %977
  %993 = icmp eq i16 %984, %990
  br i1 %993, label %994, label %1001

994:                                              ; preds = %992
  %995 = getelementptr inbounds i8, ptr %228, i64 %982
  %996 = load i8, ptr %995, align 1, !tbaa !28
  %997 = getelementptr inbounds i8, ptr %228, i64 %988
  %998 = load i8, ptr %997, align 1, !tbaa !28
  %999 = icmp ugt i8 %996, %998
  br i1 %999, label %1001, label %1000

1000:                                             ; preds = %994, %977
  br label %1001

1001:                                             ; preds = %1000, %994, %992, %975
  %1002 = phi i64 [ %976, %975 ], [ %979, %1000 ], [ %985, %994 ], [ %985, %992 ]
  %1003 = phi i32 [ %972, %975 ], [ %978, %1000 ], [ %972, %994 ], [ %972, %992 ]
  %1004 = load i16, ptr %969, align 2, !tbaa !28
  %1005 = getelementptr inbounds [4 x i8], ptr %227, i64 %1002
  %1006 = load i32, ptr %1005, align 4, !tbaa !4
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds [4 x i8], ptr %806, i64 %1007
  %1009 = load i16, ptr %1008, align 2, !tbaa !28
  %1010 = icmp ult i16 %1004, %1009
  br i1 %1010, label %1024, label %1011

1011:                                             ; preds = %1001
  %1012 = icmp eq i16 %1004, %1009
  br i1 %1012, label %1013, label %1018

1013:                                             ; preds = %1011
  %1014 = load i8, ptr %966, align 1, !tbaa !28
  %1015 = getelementptr inbounds i8, ptr %228, i64 %1007
  %1016 = load i8, ptr %1015, align 1, !tbaa !28
  %1017 = icmp ugt i8 %1014, %1016
  br i1 %1017, label %1018, label %1024

1018:                                             ; preds = %1013, %1011
  %1019 = sext i32 %973 to i64
  %1020 = getelementptr inbounds [4 x i8], ptr %227, i64 %1019
  store i32 %1006, ptr %1020, align 4, !tbaa !4
  %1021 = shl i32 %1003, 1
  %1022 = load i32, ptr %153, align 4, !tbaa !48
  %1023 = icmp sgt i32 %1021, %1022
  br i1 %1023, label %1024, label %970, !llvm.loop !55

1024:                                             ; preds = %1018, %1013, %1001
  %1025 = phi i32 [ %973, %1001 ], [ %973, %1013 ], [ %1003, %1018 ]
  %1026 = sext i32 %1025 to i64
  br label %1027

1027:                                             ; preds = %1024, %957
  %1028 = phi i64 [ 1, %957 ], [ %1026, %1024 ]
  %1029 = getelementptr inbounds [4 x i8], ptr %227, i64 %1028
  store i32 %964, ptr %1029, align 4, !tbaa !4
  %1030 = load i32, ptr %233, align 4, !tbaa !4
  %1031 = load i32, ptr %154, align 8, !tbaa !49
  %1032 = add nsw i32 %1031, -1
  store i32 %1032, ptr %154, align 8, !tbaa !49
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds [4 x i8], ptr %227, i64 %1033
  store i32 %960, ptr %1034, align 4, !tbaa !4
  %1035 = load i32, ptr %154, align 8, !tbaa !49
  %1036 = add nsw i32 %1035, -1
  store i32 %1036, ptr %154, align 8, !tbaa !49
  %1037 = sext i32 %1036 to i64
  %1038 = getelementptr inbounds [4 x i8], ptr %227, i64 %1037
  store i32 %1030, ptr %1038, align 4, !tbaa !4
  %1039 = sext i32 %960 to i64
  %1040 = getelementptr inbounds [4 x i8], ptr %806, i64 %1039
  %1041 = load i16, ptr %1040, align 2, !tbaa !28
  %1042 = sext i32 %1030 to i64
  %1043 = getelementptr inbounds [4 x i8], ptr %806, i64 %1042
  %1044 = load i16, ptr %1043, align 2, !tbaa !28
  %1045 = add i16 %1044, %1041
  %1046 = getelementptr inbounds [4 x i8], ptr %806, i64 %959
  store i16 %1045, ptr %1046, align 2, !tbaa !28
  %1047 = getelementptr inbounds i8, ptr %228, i64 %1039
  %1048 = load i8, ptr %1047, align 1, !tbaa !28
  %1049 = getelementptr inbounds i8, ptr %228, i64 %1042
  %1050 = load i8, ptr %1049, align 1, !tbaa !28
  %1051 = tail call i8 @llvm.umax.i8(i8 %1048, i8 %1050)
  %1052 = add i8 %1051, 1
  %1053 = getelementptr inbounds i8, ptr %228, i64 %959
  store i8 %1052, ptr %1053, align 1, !tbaa !28
  %1054 = trunc nsw i64 %959 to i32
  %1055 = trunc i64 %959 to i16
  %1056 = getelementptr inbounds nuw i8, ptr %1043, i64 2
  store i16 %1055, ptr %1056, align 2, !tbaa !28
  %1057 = getelementptr inbounds nuw i8, ptr %1040, i64 2
  store i16 %1055, ptr %1057, align 2, !tbaa !28
  %1058 = add nsw i64 %959, 1
  store i32 %1054, ptr %233, align 4, !tbaa !4
  %1059 = load i32, ptr %153, align 4, !tbaa !48
  %1060 = icmp slt i32 %1059, 2
  br i1 %1060, label %1118, label %1061

1061:                                             ; preds = %1109, %1027
  %1062 = phi i32 [ %1113, %1109 ], [ %1059, %1027 ]
  %1063 = phi i32 [ %1112, %1109 ], [ 2, %1027 ]
  %1064 = phi i32 [ %1094, %1109 ], [ 1, %1027 ]
  %1065 = icmp slt i32 %1063, %1062
  br i1 %1065, label %1068, label %1066

1066:                                             ; preds = %1061
  %1067 = sext i32 %1063 to i64
  br label %1092

1068:                                             ; preds = %1061
  %1069 = or disjoint i32 %1063, 1
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds [4 x i8], ptr %227, i64 %1070
  %1072 = load i32, ptr %1071, align 4, !tbaa !4
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds [4 x i8], ptr %806, i64 %1073
  %1075 = load i16, ptr %1074, align 2, !tbaa !28
  %1076 = sext i32 %1063 to i64
  %1077 = getelementptr inbounds [4 x i8], ptr %227, i64 %1076
  %1078 = load i32, ptr %1077, align 4, !tbaa !4
  %1079 = sext i32 %1078 to i64
  %1080 = getelementptr inbounds [4 x i8], ptr %806, i64 %1079
  %1081 = load i16, ptr %1080, align 2, !tbaa !28
  %1082 = icmp ult i16 %1075, %1081
  br i1 %1082, label %1091, label %1083

1083:                                             ; preds = %1068
  %1084 = icmp eq i16 %1075, %1081
  br i1 %1084, label %1085, label %1092

1085:                                             ; preds = %1083
  %1086 = getelementptr inbounds i8, ptr %228, i64 %1073
  %1087 = load i8, ptr %1086, align 1, !tbaa !28
  %1088 = getelementptr inbounds i8, ptr %228, i64 %1079
  %1089 = load i8, ptr %1088, align 1, !tbaa !28
  %1090 = icmp ugt i8 %1087, %1089
  br i1 %1090, label %1092, label %1091

1091:                                             ; preds = %1085, %1068
  br label %1092

1092:                                             ; preds = %1091, %1085, %1083, %1066
  %1093 = phi i64 [ %1067, %1066 ], [ %1070, %1091 ], [ %1076, %1085 ], [ %1076, %1083 ]
  %1094 = phi i32 [ %1063, %1066 ], [ %1069, %1091 ], [ %1063, %1085 ], [ %1063, %1083 ]
  %1095 = load i16, ptr %1046, align 2, !tbaa !28
  %1096 = getelementptr inbounds [4 x i8], ptr %227, i64 %1093
  %1097 = load i32, ptr %1096, align 4, !tbaa !4
  %1098 = sext i32 %1097 to i64
  %1099 = getelementptr inbounds [4 x i8], ptr %806, i64 %1098
  %1100 = load i16, ptr %1099, align 2, !tbaa !28
  %1101 = icmp ult i16 %1095, %1100
  br i1 %1101, label %1115, label %1102

1102:                                             ; preds = %1092
  %1103 = icmp eq i16 %1095, %1100
  br i1 %1103, label %1104, label %1109

1104:                                             ; preds = %1102
  %1105 = load i8, ptr %1053, align 1, !tbaa !28
  %1106 = getelementptr inbounds i8, ptr %228, i64 %1098
  %1107 = load i8, ptr %1106, align 1, !tbaa !28
  %1108 = icmp ugt i8 %1105, %1107
  br i1 %1108, label %1109, label %1115

1109:                                             ; preds = %1104, %1102
  %1110 = sext i32 %1064 to i64
  %1111 = getelementptr inbounds [4 x i8], ptr %227, i64 %1110
  store i32 %1097, ptr %1111, align 4, !tbaa !4
  %1112 = shl i32 %1094, 1
  %1113 = load i32, ptr %153, align 4, !tbaa !48
  %1114 = icmp sgt i32 %1112, %1113
  br i1 %1114, label %1115, label %1061, !llvm.loop !55

1115:                                             ; preds = %1109, %1104, %1092
  %1116 = phi i32 [ %1064, %1092 ], [ %1064, %1104 ], [ %1094, %1109 ]
  %1117 = sext i32 %1116 to i64
  br label %1118

1118:                                             ; preds = %1115, %1027
  %1119 = phi i64 [ 1, %1027 ], [ %1117, %1115 ]
  %1120 = getelementptr inbounds [4 x i8], ptr %227, i64 %1119
  store i32 %1054, ptr %1120, align 4, !tbaa !4
  %1121 = load i32, ptr %153, align 4, !tbaa !48
  %1122 = icmp sgt i32 %1121, 1
  br i1 %1122, label %957, label %1123, !llvm.loop !57

1123:                                             ; preds = %1118
  %1124 = load i32, ptr %233, align 4, !tbaa !4
  %1125 = load i32, ptr %154, align 8, !tbaa !49
  %1126 = add nsw i32 %1125, -1
  store i32 %1126, ptr %154, align 8, !tbaa !49
  %1127 = sext i32 %1126 to i64
  %1128 = getelementptr inbounds [4 x i8], ptr %227, i64 %1127
  store i32 %1124, ptr %1128, align 4, !tbaa !4
  %1129 = load ptr, ptr %805, align 8, !tbaa !42
  %1130 = load i32, ptr %879, align 8, !tbaa !54
  %1131 = load ptr, ptr %807, align 8, !tbaa !43
  %1132 = load ptr, ptr %1131, align 8, !tbaa !44
  %1133 = getelementptr inbounds nuw i8, ptr %1131, i64 8
  %1134 = load ptr, ptr %1133, align 8, !tbaa !58
  %1135 = getelementptr inbounds nuw i8, ptr %1131, i64 16
  %1136 = load i32, ptr %1135, align 8, !tbaa !59
  %1137 = getelementptr inbounds nuw i8, ptr %1131, i64 24
  %1138 = load i32, ptr %1137, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %489, i8 0, i64 32, i1 false), !tbaa !61
  %1139 = load i32, ptr %154, align 8, !tbaa !49
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds [4 x i8], ptr %227, i64 %1140
  %1142 = load i32, ptr %1141, align 4, !tbaa !4
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds [4 x i8], ptr %1129, i64 %1143
  %1145 = getelementptr inbounds nuw i8, ptr %1144, i64 2
  store i16 0, ptr %1145, align 2, !tbaa !28
  %1146 = load i32, ptr %154, align 8, !tbaa !49
  %1147 = icmp slt i32 %1146, 572
  br i1 %1147, label %1148, label %1297

1148:                                             ; preds = %1123
  %1149 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1150 = icmp eq ptr %1132, null
  %1151 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1152 = sext i32 %1146 to i64
  %1153 = add nsw i64 %1152, 1
  br label %1154

1154:                                             ; preds = %1213, %1148
  %1155 = phi i64 [ %1153, %1148 ], [ %1214, %1213 ]
  %1156 = phi i32 [ 0, %1148 ], [ %1172, %1213 ]
  %1157 = getelementptr inbounds [4 x i8], ptr %227, i64 %1155
  %1158 = load i32, ptr %1157, align 4, !tbaa !4
  %1159 = sext i32 %1158 to i64
  %1160 = getelementptr inbounds [4 x i8], ptr %1129, i64 %1159
  %1161 = getelementptr inbounds nuw i8, ptr %1160, i64 2
  %1162 = load i16, ptr %1161, align 2, !tbaa !28
  %1163 = zext i16 %1162 to i64
  %1164 = getelementptr inbounds nuw [4 x i8], ptr %1129, i64 %1163
  %1165 = getelementptr inbounds nuw i8, ptr %1164, i64 2
  %1166 = load i16, ptr %1165, align 2, !tbaa !28
  %1167 = zext i16 %1166 to i32
  %1168 = add nuw nsw i32 %1167, 1
  %1169 = icmp sle i32 %1138, %1167
  %1170 = select i1 %1169, i32 %1138, i32 %1168
  %1171 = zext i1 %1169 to i32
  %1172 = add nuw nsw i32 %1156, %1171
  %1173 = trunc i32 %1170 to i16
  store i16 %1173, ptr %1161, align 2, !tbaa !28
  %1174 = icmp sgt i32 %1158, %1130
  br i1 %1174, label %1213, label %1175

1175:                                             ; preds = %1154
  %1176 = sext i32 %1170 to i64
  %1177 = getelementptr inbounds [2 x i8], ptr %489, i64 %1176
  %1178 = load i16, ptr %1177, align 2, !tbaa !61
  %1179 = add i16 %1178, 1
  store i16 %1179, ptr %1177, align 2, !tbaa !61
  %1180 = icmp slt i32 %1158, %1136
  br i1 %1180, label %1186, label %1181

1181:                                             ; preds = %1175
  %1182 = sub nsw i32 %1158, %1136
  %1183 = zext nneg i32 %1182 to i64
  %1184 = getelementptr inbounds nuw [4 x i8], ptr %1134, i64 %1183
  %1185 = load i32, ptr %1184, align 4, !tbaa !4
  br label %1186

1186:                                             ; preds = %1181, %1175
  %1187 = phi i32 [ %1185, %1181 ], [ 0, %1175 ]
  %1188 = load i16, ptr %1160, align 2, !tbaa !28
  %1189 = zext i16 %1188 to i64
  %1190 = add nsw i32 %1187, %1170
  %1191 = zext i32 %1190 to i64
  %1192 = mul nuw nsw i64 %1189, %1191
  %1193 = load i64, ptr %1149, align 8, !tbaa !51
  %1194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1193, i64 %1192), !nosanitize !33
  %1195 = extractvalue { i64, i1 } %1194, 1, !nosanitize !33
  br i1 %1195, label %1196, label %1197, !prof !34, !nosanitize !33

1196:                                             ; preds = %1186
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

1197:                                             ; preds = %1186
  %1198 = extractvalue { i64, i1 } %1194, 0, !nosanitize !33
  store i64 %1198, ptr %1149, align 8, !tbaa !51
  br i1 %1150, label %1213, label %1199

1199:                                             ; preds = %1197
  %1200 = getelementptr inbounds [4 x i8], ptr %1132, i64 %1159
  %1201 = getelementptr inbounds nuw i8, ptr %1200, i64 2
  %1202 = load i16, ptr %1201, align 2, !tbaa !28
  %1203 = zext i16 %1202 to i32
  %1204 = add nsw i32 %1187, %1203
  %1205 = zext i32 %1204 to i64
  %1206 = mul nuw nsw i64 %1205, %1189
  %1207 = load i64, ptr %1151, align 8, !tbaa !52
  %1208 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1207, i64 %1206), !nosanitize !33
  %1209 = extractvalue { i64, i1 } %1208, 1, !nosanitize !33
  br i1 %1209, label %1210, label %1211, !prof !34, !nosanitize !33

1210:                                             ; preds = %1199
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

1211:                                             ; preds = %1199
  %1212 = extractvalue { i64, i1 } %1208, 0, !nosanitize !33
  store i64 %1212, ptr %1151, align 8, !tbaa !52
  br label %1213

1213:                                             ; preds = %1211, %1197, %1154
  %1214 = add nsw i64 %1155, 1
  %1215 = and i64 %1214, 4294967295
  %1216 = icmp eq i64 %1215, 573
  br i1 %1216, label %1217, label %1154, !llvm.loop !62

1217:                                             ; preds = %1213
  %1218 = icmp eq i32 %1172, 0
  br i1 %1218, label %1297, label %1219

1219:                                             ; preds = %1217
  %1220 = sext i32 %1138 to i64
  %1221 = getelementptr inbounds [2 x i8], ptr %489, i64 %1220
  br label %1222

1222:                                             ; preds = %1230, %1219
  %1223 = phi i32 [ %1240, %1230 ], [ %1172, %1219 ]
  br label %1224

1224:                                             ; preds = %1224, %1222
  %1225 = phi i64 [ %1226, %1224 ], [ %1220, %1222 ]
  %1226 = add nsw i64 %1225, -1
  %1227 = getelementptr inbounds [2 x i8], ptr %489, i64 %1226
  %1228 = load i16, ptr %1227, align 2, !tbaa !61
  %1229 = icmp eq i16 %1228, 0
  br i1 %1229, label %1224, label %1230, !llvm.loop !63

1230:                                             ; preds = %1224
  %1231 = getelementptr inbounds [2 x i8], ptr %489, i64 %1226
  %1232 = add i16 %1228, -1
  store i16 %1232, ptr %1231, align 2, !tbaa !61
  %1233 = shl i64 %1225, 32
  %1234 = ashr exact i64 %1233, 31
  %1235 = getelementptr inbounds i8, ptr %489, i64 %1234
  %1236 = load i16, ptr %1235, align 2, !tbaa !61
  %1237 = add i16 %1236, 2
  store i16 %1237, ptr %1235, align 2, !tbaa !61
  %1238 = load i16, ptr %1221, align 2, !tbaa !61
  %1239 = add i16 %1238, -1
  store i16 %1239, ptr %1221, align 2, !tbaa !61
  %1240 = add nsw i32 %1223, -2
  %1241 = icmp sgt i32 %1223, 2
  br i1 %1241, label %1222, label %1242, !llvm.loop !64

1242:                                             ; preds = %1230
  %1243 = icmp eq i32 %1138, 0
  br i1 %1243, label %1297, label %1244

1244:                                             ; preds = %1253, %1242
  %1245 = phi i64 [ %1255, %1253 ], [ %1220, %1242 ]
  %1246 = phi i32 [ %1254, %1253 ], [ 573, %1242 ]
  %1247 = getelementptr inbounds [2 x i8], ptr %489, i64 %1245
  %1248 = load i16, ptr %1247, align 2, !tbaa !61
  %1249 = icmp eq i16 %1248, 0
  br i1 %1249, label %1253, label %1250

1250:                                             ; preds = %1244
  %1251 = zext i16 %1248 to i32
  %1252 = trunc i64 %1245 to i16
  br label %1257

1253:                                             ; preds = %1294, %1244
  %1254 = phi i32 [ %1246, %1244 ], [ %1268, %1294 ]
  %1255 = add nsw i64 %1245, -1
  %1256 = icmp eq i64 %1255, 0
  br i1 %1256, label %1297, label %1244, !llvm.loop !65

1257:                                             ; preds = %1294, %1250
  %1258 = phi i32 [ %1246, %1250 ], [ %1268, %1294 ]
  %1259 = phi i32 [ %1251, %1250 ], [ %1295, %1294 ]
  %1260 = sext i32 %1258 to i64
  br label %1261

1261:                                             ; preds = %1261, %1257
  %1262 = phi i64 [ %1260, %1257 ], [ %1263, %1261 ]
  %1263 = add nsw i64 %1262, -1
  %1264 = getelementptr inbounds [4 x i8], ptr %227, i64 %1263
  %1265 = load i32, ptr %1264, align 4, !tbaa !4
  %1266 = icmp sgt i32 %1265, %1130
  br i1 %1266, label %1261, label %1267, !llvm.loop !66

1267:                                             ; preds = %1261
  %1268 = trunc nsw i64 %1263 to i32
  %1269 = sext i32 %1265 to i64
  %1270 = getelementptr inbounds [4 x i8], ptr %1129, i64 %1269
  %1271 = getelementptr inbounds nuw i8, ptr %1270, i64 2
  %1272 = load i16, ptr %1271, align 2, !tbaa !28
  %1273 = zext i16 %1272 to i64
  %1274 = icmp eq i64 %1245, %1273
  br i1 %1274, label %1294, label %1275

1275:                                             ; preds = %1267
  %1276 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1245, i64 %1273), !nosanitize !33
  %1277 = extractvalue { i64, i1 } %1276, 1, !nosanitize !33
  br i1 %1277, label %1278, label %1279, !prof !34, !nosanitize !33

1278:                                             ; preds = %1275
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !33
  unreachable, !nosanitize !33

1279:                                             ; preds = %1275
  %1280 = extractvalue { i64, i1 } %1276, 0, !nosanitize !33
  %1281 = load i16, ptr %1270, align 2, !tbaa !28
  %1282 = zext i16 %1281 to i64
  %1283 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1280, i64 %1282), !nosanitize !33
  %1284 = extractvalue { i64, i1 } %1283, 1, !nosanitize !33
  br i1 %1284, label %1285, label %1286, !prof !34, !nosanitize !33

1285:                                             ; preds = %1279
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !33
  unreachable, !nosanitize !33

1286:                                             ; preds = %1279
  %1287 = extractvalue { i64, i1 } %1283, 0, !nosanitize !33
  %1288 = load i64, ptr %1149, align 8, !tbaa !51
  %1289 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1288, i64 %1287), !nosanitize !33
  %1290 = extractvalue { i64, i1 } %1289, 1, !nosanitize !33
  br i1 %1290, label %1291, label %1292, !prof !34, !nosanitize !33

1291:                                             ; preds = %1286
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

1292:                                             ; preds = %1286
  %1293 = extractvalue { i64, i1 } %1289, 0, !nosanitize !33
  store i64 %1293, ptr %1149, align 8, !tbaa !51
  store i16 %1252, ptr %1271, align 2, !tbaa !28
  br label %1294

1294:                                             ; preds = %1292, %1267
  %1295 = add nsw i32 %1259, -1
  %1296 = icmp eq i32 %1295, 0
  br i1 %1296, label %1253, label %1257, !llvm.loop !66

1297:                                             ; preds = %1253, %1242, %1217, %1123
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %1298 = load i16, ptr %489, align 2, !tbaa !61
  %1299 = zext i16 %1298 to i32
  %1300 = shl nuw nsw i32 %1299, 1
  %1301 = trunc i32 %1300 to i16
  %1302 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1301, ptr %1302, align 2, !tbaa !61
  %1303 = load i16, ptr %654, align 2, !tbaa !61
  %1304 = zext i16 %1303 to i32
  %1305 = add nuw nsw i32 %1300, %1304
  %1306 = shl nuw nsw i32 %1305, 1
  %1307 = trunc i32 %1306 to i16
  %1308 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1307, ptr %1308, align 4, !tbaa !61
  %1309 = load i16, ptr %661, align 2, !tbaa !61
  %1310 = zext i16 %1309 to i32
  %1311 = add nuw nsw i32 %1306, %1310
  %1312 = shl nuw nsw i32 %1311, 1
  %1313 = trunc i32 %1312 to i16
  %1314 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1313, ptr %1314, align 2, !tbaa !61
  %1315 = load i16, ptr %668, align 2, !tbaa !61
  %1316 = zext i16 %1315 to i32
  %1317 = add nuw nsw i32 %1312, %1316
  %1318 = shl nuw nsw i32 %1317, 1
  %1319 = trunc i32 %1318 to i16
  %1320 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1319, ptr %1320, align 8, !tbaa !61
  %1321 = load i16, ptr %675, align 2, !tbaa !61
  %1322 = zext i16 %1321 to i32
  %1323 = add nuw nsw i32 %1318, %1322
  %1324 = shl nuw nsw i32 %1323, 1
  %1325 = trunc i32 %1324 to i16
  %1326 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1325, ptr %1326, align 2, !tbaa !61
  %1327 = load i16, ptr %682, align 2, !tbaa !61
  %1328 = zext i16 %1327 to i32
  %1329 = add nuw nsw i32 %1324, %1328
  %1330 = shl nuw nsw i32 %1329, 1
  %1331 = trunc i32 %1330 to i16
  %1332 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1331, ptr %1332, align 4, !tbaa !61
  %1333 = load i16, ptr %689, align 2, !tbaa !61
  %1334 = zext i16 %1333 to i32
  %1335 = add nuw nsw i32 %1330, %1334
  %1336 = shl nuw nsw i32 %1335, 1
  %1337 = trunc i32 %1336 to i16
  %1338 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1337, ptr %1338, align 2, !tbaa !61
  %1339 = load i16, ptr %696, align 2, !tbaa !61
  %1340 = zext i16 %1339 to i32
  %1341 = add nuw nsw i32 %1336, %1340
  %1342 = shl nuw nsw i32 %1341, 1
  %1343 = trunc i32 %1342 to i16
  %1344 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1343, ptr %1344, align 16, !tbaa !61
  %1345 = load i16, ptr %703, align 2, !tbaa !61
  %1346 = zext i16 %1345 to i32
  %1347 = add nuw nsw i32 %1342, %1346
  %1348 = shl nuw nsw i32 %1347, 1
  %1349 = trunc i32 %1348 to i16
  %1350 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1349, ptr %1350, align 2, !tbaa !61
  %1351 = load i16, ptr %710, align 2, !tbaa !61
  %1352 = zext i16 %1351 to i32
  %1353 = add nuw nsw i32 %1348, %1352
  %1354 = shl nuw nsw i32 %1353, 1
  %1355 = trunc i32 %1354 to i16
  %1356 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1355, ptr %1356, align 4, !tbaa !61
  %1357 = load i16, ptr %717, align 2, !tbaa !61
  %1358 = trunc i32 %1354 to i16
  %1359 = add i16 %1357, %1358
  %1360 = shl i16 %1359, 1
  %1361 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1360, ptr %1361, align 2, !tbaa !61
  %1362 = load i16, ptr %723, align 2, !tbaa !61
  %1363 = add i16 %1362, %1360
  %1364 = shl i16 %1363, 1
  %1365 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1364, ptr %1365, align 8, !tbaa !61
  %1366 = load i16, ptr %728, align 2, !tbaa !61
  %1367 = add i16 %1364, %1366
  %1368 = shl i16 %1367, 1
  %1369 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1368, ptr %1369, align 2, !tbaa !61
  %1370 = load i16, ptr %733, align 2, !tbaa !61
  %1371 = add i16 %1368, %1370
  %1372 = shl i16 %1371, 1
  %1373 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1372, ptr %1373, align 4, !tbaa !61
  %1374 = load i16, ptr %738, align 2, !tbaa !61
  %1375 = add i16 %1372, %1374
  %1376 = shl i16 %1375, 1
  %1377 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1376, ptr %1377, align 2, !tbaa !61
  %1378 = icmp slt i32 %877, 0
  br i1 %1378, label %1439, label %1379

1379:                                             ; preds = %1297
  %1380 = add nuw i32 %877, 1
  %1381 = zext i32 %1380 to i64
  br label %1382

1382:                                             ; preds = %1436, %1379
  %1383 = phi i64 [ 0, %1379 ], [ %1437, %1436 ]
  %1384 = getelementptr inbounds nuw [4 x i8], ptr %806, i64 %1383
  %1385 = getelementptr inbounds nuw i8, ptr %1384, i64 2
  %1386 = load i16, ptr %1385, align 2, !tbaa !28
  %1387 = icmp eq i16 %1386, 0
  br i1 %1387, label %1436, label %1388

1388:                                             ; preds = %1382
  %1389 = zext i16 %1386 to i32
  %1390 = zext i16 %1386 to i64
  %1391 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %1390
  %1392 = load i16, ptr %1391, align 2, !tbaa !61
  %1393 = add i16 %1392, 1
  store i16 %1393, ptr %1391, align 2, !tbaa !61
  %1394 = and i32 %1389, 3
  %1395 = icmp ult i16 %1386, 4
  br i1 %1395, label %1420, label %1396

1396:                                             ; preds = %1388
  %1397 = and i32 %1389, 65532
  br label %1398

1398:                                             ; preds = %1398, %1396
  %1399 = phi i16 [ %1392, %1396 ], [ %1414, %1398 ]
  %1400 = phi i16 [ 0, %1396 ], [ %1415, %1398 ]
  %1401 = phi i32 [ 0, %1396 ], [ %1416, %1398 ]
  %1402 = and i16 %1399, 1
  %1403 = or disjoint i16 %1400, %1402
  %1404 = shl i16 %1403, 2
  %1405 = and i16 %1399, 2
  %1406 = or disjoint i16 %1404, %1405
  %1407 = lshr i16 %1399, 2
  %1408 = and i16 %1407, 1
  %1409 = or disjoint i16 %1406, %1408
  %1410 = lshr i16 %1399, 3
  %1411 = shl i16 %1409, 1
  %1412 = and i16 %1410, 1
  %1413 = or disjoint i16 %1411, %1412
  %1414 = lshr i16 %1399, 4
  %1415 = shl i16 %1413, 1
  %1416 = add i32 %1401, 4
  %1417 = icmp eq i32 %1416, %1397
  br i1 %1417, label %1418, label %1398, !llvm.loop !67

1418:                                             ; preds = %1398
  %1419 = icmp eq i32 %1394, 0
  br i1 %1419, label %1434, label %1420

1420:                                             ; preds = %1418, %1388
  %1421 = phi i16 [ %1392, %1388 ], [ %1414, %1418 ]
  %1422 = phi i16 [ 0, %1388 ], [ %1415, %1418 ]
  %1423 = icmp ne i32 %1394, 0
  tail call void @llvm.assume(i1 %1423)
  br label %1424

1424:                                             ; preds = %1424, %1420
  %1425 = phi i16 [ %1421, %1420 ], [ %1430, %1424 ]
  %1426 = phi i16 [ %1422, %1420 ], [ %1431, %1424 ]
  %1427 = phi i32 [ 0, %1420 ], [ %1432, %1424 ]
  %1428 = and i16 %1425, 1
  %1429 = or disjoint i16 %1426, %1428
  %1430 = lshr i16 %1425, 1
  %1431 = shl i16 %1429, 1
  %1432 = add i32 %1427, 1
  %1433 = icmp eq i32 %1432, %1394
  br i1 %1433, label %1434, label %1424, !llvm.loop !71

1434:                                             ; preds = %1424, %1418
  %1435 = phi i16 [ %1413, %1418 ], [ %1429, %1424 ]
  store i16 %1435, ptr %1384, align 2, !tbaa !28
  br label %1436

1436:                                             ; preds = %1434, %1382
  %1437 = add nuw nsw i64 %1383, 1
  %1438 = icmp eq i64 %1437, %1381
  br i1 %1438, label %1439, label %1382, !llvm.loop !70

1439:                                             ; preds = %1436, %1297
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %1440 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %1441 = load i32, ptr %226, align 8, !tbaa !72
  %1442 = getelementptr inbounds nuw i8, ptr %0, i64 214
  %1443 = load i16, ptr %1442, align 2, !tbaa !28
  %1444 = sext i32 %1441 to i64
  %1445 = getelementptr [4 x i8], ptr %1440, i64 %1444
  %1446 = getelementptr i8, ptr %1445, i64 6
  store i16 -1, ptr %1446, align 2, !tbaa !28
  %1447 = icmp slt i32 %1441, 0
  br i1 %1447, label %1514, label %1448

1448:                                             ; preds = %1439
  %1449 = icmp eq i16 %1443, 0
  %1450 = select i1 %1449, i32 3, i32 4
  %1451 = select i1 %1449, i32 138, i32 7
  %1452 = zext i16 %1443 to i32
  %1453 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1454 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1455 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1456 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1457 = add nuw i32 %1441, 1
  %1458 = zext i32 %1457 to i64
  br label %1459

1459:                                             ; preds = %1508, %1448
  %1460 = phi i64 [ 0, %1448 ], [ %1466, %1508 ]
  %1461 = phi i32 [ %1450, %1448 ], [ %1512, %1508 ]
  %1462 = phi i32 [ %1451, %1448 ], [ %1511, %1508 ]
  %1463 = phi i32 [ 0, %1448 ], [ %1510, %1508 ]
  %1464 = phi i32 [ %1452, %1448 ], [ %1470, %1508 ]
  %1465 = phi i32 [ -1, %1448 ], [ %1509, %1508 ]
  %1466 = add nuw nsw i64 %1460, 1
  %1467 = getelementptr inbounds nuw [4 x i8], ptr %1440, i64 %1466
  %1468 = getelementptr inbounds nuw i8, ptr %1467, i64 2
  %1469 = load i16, ptr %1468, align 2, !tbaa !28
  %1470 = zext i16 %1469 to i32
  %1471 = add nsw i32 %1463, 1
  %1472 = icmp slt i32 %1471, %1462
  %1473 = icmp eq i32 %1464, %1470
  %1474 = select i1 %1472, i1 %1473, i1 false
  br i1 %1474, label %1508, label %1475

1475:                                             ; preds = %1459
  %1476 = icmp slt i32 %1471, %1461
  br i1 %1476, label %1477, label %1483

1477:                                             ; preds = %1475
  %1478 = zext nneg i32 %1464 to i64
  %1479 = getelementptr inbounds nuw [4 x i8], ptr %1453, i64 %1478
  %1480 = load i16, ptr %1479, align 4, !tbaa !28
  %1481 = trunc i32 %1471 to i16
  %1482 = add i16 %1480, %1481
  store i16 %1482, ptr %1479, align 4, !tbaa !28
  br label %1503

1483:                                             ; preds = %1475
  %1484 = icmp eq i32 %1464, 0
  br i1 %1484, label %1495, label %1485

1485:                                             ; preds = %1483
  %1486 = icmp eq i32 %1464, %1465
  br i1 %1486, label %1492, label %1487

1487:                                             ; preds = %1485
  %1488 = zext nneg i32 %1464 to i64
  %1489 = getelementptr inbounds nuw [4 x i8], ptr %1453, i64 %1488
  %1490 = load i16, ptr %1489, align 4, !tbaa !28
  %1491 = add i16 %1490, 1
  store i16 %1491, ptr %1489, align 4, !tbaa !28
  br label %1492

1492:                                             ; preds = %1487, %1485
  %1493 = load i16, ptr %1454, align 4, !tbaa !28
  %1494 = add i16 %1493, 1
  store i16 %1494, ptr %1454, align 4, !tbaa !28
  br label %1503

1495:                                             ; preds = %1483
  %1496 = icmp slt i32 %1463, 10
  br i1 %1496, label %1497, label %1500

1497:                                             ; preds = %1495
  %1498 = load i16, ptr %1456, align 4, !tbaa !28
  %1499 = add i16 %1498, 1
  store i16 %1499, ptr %1456, align 4, !tbaa !28
  br label %1503

1500:                                             ; preds = %1495
  %1501 = load i16, ptr %1455, align 4, !tbaa !28
  %1502 = add i16 %1501, 1
  store i16 %1502, ptr %1455, align 4, !tbaa !28
  br label %1503

1503:                                             ; preds = %1500, %1497, %1492, %1477
  %1504 = icmp eq i16 %1469, 0
  br i1 %1504, label %1508, label %1505

1505:                                             ; preds = %1503
  %1506 = select i1 %1473, i32 6, i32 7
  %1507 = select i1 %1473, i32 3, i32 4
  br label %1508

1508:                                             ; preds = %1505, %1503, %1459
  %1509 = phi i32 [ %1465, %1459 ], [ %1464, %1503 ], [ %1464, %1505 ]
  %1510 = phi i32 [ %1471, %1459 ], [ 0, %1503 ], [ 0, %1505 ]
  %1511 = phi i32 [ %1462, %1459 ], [ 138, %1503 ], [ %1506, %1505 ]
  %1512 = phi i32 [ %1461, %1459 ], [ 3, %1503 ], [ %1507, %1505 ]
  %1513 = icmp eq i64 %1466, %1458
  br i1 %1513, label %1514, label %1459, !llvm.loop !73

1514:                                             ; preds = %1508, %1439
  %1515 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %1516 = load i32, ptr %879, align 8, !tbaa !74
  %1517 = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %1518 = load i16, ptr %1517, align 2, !tbaa !28
  %1519 = sext i32 %1516 to i64
  %1520 = getelementptr [4 x i8], ptr %1515, i64 %1519
  %1521 = getelementptr i8, ptr %1520, i64 6
  store i16 -1, ptr %1521, align 2, !tbaa !28
  %1522 = icmp slt i32 %1516, 0
  br i1 %1522, label %1589, label %1523

1523:                                             ; preds = %1514
  %1524 = icmp eq i16 %1518, 0
  %1525 = select i1 %1524, i32 3, i32 4
  %1526 = select i1 %1524, i32 138, i32 7
  %1527 = zext i16 %1518 to i32
  %1528 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1529 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1530 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1531 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1532 = add nuw i32 %1516, 1
  %1533 = zext i32 %1532 to i64
  br label %1534

1534:                                             ; preds = %1583, %1523
  %1535 = phi i64 [ 0, %1523 ], [ %1541, %1583 ]
  %1536 = phi i32 [ %1525, %1523 ], [ %1587, %1583 ]
  %1537 = phi i32 [ %1526, %1523 ], [ %1586, %1583 ]
  %1538 = phi i32 [ 0, %1523 ], [ %1585, %1583 ]
  %1539 = phi i32 [ %1527, %1523 ], [ %1545, %1583 ]
  %1540 = phi i32 [ -1, %1523 ], [ %1584, %1583 ]
  %1541 = add nuw nsw i64 %1535, 1
  %1542 = getelementptr inbounds nuw [4 x i8], ptr %1515, i64 %1541
  %1543 = getelementptr inbounds nuw i8, ptr %1542, i64 2
  %1544 = load i16, ptr %1543, align 2, !tbaa !28
  %1545 = zext i16 %1544 to i32
  %1546 = add nsw i32 %1538, 1
  %1547 = icmp slt i32 %1546, %1537
  %1548 = icmp eq i32 %1539, %1545
  %1549 = select i1 %1547, i1 %1548, i1 false
  br i1 %1549, label %1583, label %1550

1550:                                             ; preds = %1534
  %1551 = icmp slt i32 %1546, %1536
  br i1 %1551, label %1552, label %1558

1552:                                             ; preds = %1550
  %1553 = zext nneg i32 %1539 to i64
  %1554 = getelementptr inbounds nuw [4 x i8], ptr %1528, i64 %1553
  %1555 = load i16, ptr %1554, align 4, !tbaa !28
  %1556 = trunc i32 %1546 to i16
  %1557 = add i16 %1555, %1556
  store i16 %1557, ptr %1554, align 4, !tbaa !28
  br label %1578

1558:                                             ; preds = %1550
  %1559 = icmp eq i32 %1539, 0
  br i1 %1559, label %1570, label %1560

1560:                                             ; preds = %1558
  %1561 = icmp eq i32 %1539, %1540
  br i1 %1561, label %1567, label %1562

1562:                                             ; preds = %1560
  %1563 = zext nneg i32 %1539 to i64
  %1564 = getelementptr inbounds nuw [4 x i8], ptr %1528, i64 %1563
  %1565 = load i16, ptr %1564, align 4, !tbaa !28
  %1566 = add i16 %1565, 1
  store i16 %1566, ptr %1564, align 4, !tbaa !28
  br label %1567

1567:                                             ; preds = %1562, %1560
  %1568 = load i16, ptr %1529, align 4, !tbaa !28
  %1569 = add i16 %1568, 1
  store i16 %1569, ptr %1529, align 4, !tbaa !28
  br label %1578

1570:                                             ; preds = %1558
  %1571 = icmp slt i32 %1538, 10
  br i1 %1571, label %1572, label %1575

1572:                                             ; preds = %1570
  %1573 = load i16, ptr %1531, align 4, !tbaa !28
  %1574 = add i16 %1573, 1
  store i16 %1574, ptr %1531, align 4, !tbaa !28
  br label %1578

1575:                                             ; preds = %1570
  %1576 = load i16, ptr %1530, align 4, !tbaa !28
  %1577 = add i16 %1576, 1
  store i16 %1577, ptr %1530, align 4, !tbaa !28
  br label %1578

1578:                                             ; preds = %1575, %1572, %1567, %1552
  %1579 = icmp eq i16 %1544, 0
  br i1 %1579, label %1583, label %1580

1580:                                             ; preds = %1578
  %1581 = select i1 %1548, i32 6, i32 7
  %1582 = select i1 %1548, i32 3, i32 4
  br label %1583

1583:                                             ; preds = %1580, %1578, %1534
  %1584 = phi i32 [ %1540, %1534 ], [ %1539, %1578 ], [ %1539, %1580 ]
  %1585 = phi i32 [ %1546, %1534 ], [ 0, %1578 ], [ 0, %1580 ]
  %1586 = phi i32 [ %1537, %1534 ], [ 138, %1578 ], [ %1581, %1580 ]
  %1587 = phi i32 [ %1536, %1534 ], [ 3, %1578 ], [ %1582, %1580 ]
  %1588 = icmp eq i64 %1541, %1533
  br i1 %1588, label %1589, label %1534, !llvm.loop !73

1589:                                             ; preds = %1583, %1514
  %1590 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %1591 = load ptr, ptr %1590, align 8, !tbaa !42
  %1592 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %1593 = load ptr, ptr %1592, align 8, !tbaa !43
  %1594 = load ptr, ptr %1593, align 8, !tbaa !44
  %1595 = getelementptr inbounds nuw i8, ptr %1593, i64 20
  %1596 = load i32, ptr %1595, align 4, !tbaa !47
  store i32 0, ptr %153, align 4, !tbaa !48
  store i32 573, ptr %154, align 8, !tbaa !49
  %1597 = icmp sgt i32 %1596, 0
  br i1 %1597, label %1598, label %1603

1598:                                             ; preds = %1589
  %1599 = zext nneg i32 %1596 to i64
  br label %1609

1600:                                             ; preds = %1624
  %1601 = load i32, ptr %153, align 4, !tbaa !48
  %1602 = icmp slt i32 %1601, 2
  br i1 %1602, label %1603, label %1661

1603:                                             ; preds = %1600, %1589
  %1604 = phi i32 [ %1625, %1600 ], [ -1, %1589 ]
  %1605 = phi i32 [ %1601, %1600 ], [ 0, %1589 ]
  %1606 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1607 = icmp eq ptr %1594, null
  %1608 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1628

1609:                                             ; preds = %1624, %1598
  %1610 = phi i64 [ 0, %1598 ], [ %1626, %1624 ]
  %1611 = phi i32 [ -1, %1598 ], [ %1625, %1624 ]
  %1612 = getelementptr inbounds nuw [4 x i8], ptr %1591, i64 %1610
  %1613 = load i16, ptr %1612, align 2, !tbaa !28
  %1614 = icmp eq i16 %1613, 0
  br i1 %1614, label %1622, label %1615

1615:                                             ; preds = %1609
  %1616 = load i32, ptr %153, align 4, !tbaa !48
  %1617 = add nsw i32 %1616, 1
  store i32 %1617, ptr %153, align 4, !tbaa !48
  %1618 = sext i32 %1617 to i64
  %1619 = getelementptr inbounds [4 x i8], ptr %227, i64 %1618
  %1620 = trunc nuw nsw i64 %1610 to i32
  store i32 %1620, ptr %1619, align 4, !tbaa !4
  %1621 = getelementptr inbounds nuw i8, ptr %228, i64 %1610
  store i8 0, ptr %1621, align 1, !tbaa !28
  br label %1624

1622:                                             ; preds = %1609
  %1623 = getelementptr inbounds nuw i8, ptr %1612, i64 2
  store i16 0, ptr %1623, align 2, !tbaa !28
  br label %1624

1624:                                             ; preds = %1622, %1615
  %1625 = phi i32 [ %1620, %1615 ], [ %1611, %1622 ]
  %1626 = add nuw nsw i64 %1610, 1
  %1627 = icmp eq i64 %1626, %1599
  br i1 %1627, label %1600, label %1609, !llvm.loop !50

1628:                                             ; preds = %1658, %1603
  %1629 = phi i32 [ %1605, %1603 ], [ %1659, %1658 ]
  %1630 = phi i32 [ %1604, %1603 ], [ %1633, %1658 ]
  %1631 = icmp slt i32 %1630, 2
  %1632 = add nsw i32 %1630, 1
  %1633 = select i1 %1631, i32 %1632, i32 %1630
  %1634 = select i1 %1631, i32 %1632, i32 0
  %1635 = add nsw i32 %1629, 1
  store i32 %1635, ptr %153, align 4, !tbaa !48
  %1636 = sext i32 %1635 to i64
  %1637 = getelementptr inbounds [4 x i8], ptr %227, i64 %1636
  store i32 %1634, ptr %1637, align 4, !tbaa !4
  %1638 = sext i32 %1634 to i64
  %1639 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1638
  store i16 1, ptr %1639, align 2, !tbaa !28
  %1640 = getelementptr inbounds i8, ptr %228, i64 %1638
  store i8 0, ptr %1640, align 1, !tbaa !28
  %1641 = load i64, ptr %1606, align 8, !tbaa !51
  %1642 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1641, i64 1), !nosanitize !33
  %1643 = extractvalue { i64, i1 } %1642, 1, !nosanitize !33
  br i1 %1643, label %1644, label %1645, !prof !34, !nosanitize !33

1644:                                             ; preds = %1628
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !33
  unreachable, !nosanitize !33

1645:                                             ; preds = %1628
  %1646 = extractvalue { i64, i1 } %1642, 0, !nosanitize !33
  store i64 %1646, ptr %1606, align 8, !tbaa !51
  br i1 %1607, label %1658, label %1647

1647:                                             ; preds = %1645
  %1648 = getelementptr inbounds [4 x i8], ptr %1594, i64 %1638
  %1649 = getelementptr inbounds nuw i8, ptr %1648, i64 2
  %1650 = load i16, ptr %1649, align 2, !tbaa !28
  %1651 = zext i16 %1650 to i64
  %1652 = load i64, ptr %1608, align 8, !tbaa !52
  %1653 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1652, i64 %1651), !nosanitize !33
  %1654 = extractvalue { i64, i1 } %1653, 1, !nosanitize !33
  br i1 %1654, label %1655, label %1656, !prof !34, !nosanitize !33

1655:                                             ; preds = %1647
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !33
  unreachable, !nosanitize !33

1656:                                             ; preds = %1647
  %1657 = extractvalue { i64, i1 } %1653, 0, !nosanitize !33
  store i64 %1657, ptr %1608, align 8, !tbaa !52
  br label %1658

1658:                                             ; preds = %1656, %1645
  %1659 = load i32, ptr %153, align 4, !tbaa !48
  %1660 = icmp slt i32 %1659, 2
  br i1 %1660, label %1628, label %1661, !llvm.loop !53

1661:                                             ; preds = %1658, %1600
  %1662 = phi i32 [ %1625, %1600 ], [ %1633, %1658 ]
  %1663 = phi i32 [ %1601, %1600 ], [ %1659, %1658 ]
  %1664 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %1662, ptr %1664, align 8, !tbaa !54
  %1665 = lshr i32 %1663, 1
  %1666 = zext nneg i32 %1665 to i64
  br label %1670

1667:                                             ; preds = %1736
  %1668 = load i32, ptr %153, align 4, !tbaa !48
  %1669 = sext i32 %1596 to i64
  br label %1742

1670:                                             ; preds = %1736, %1661
  %1671 = phi i64 [ %1666, %1661 ], [ %1740, %1736 ]
  %1672 = getelementptr inbounds nuw [4 x i8], ptr %227, i64 %1671
  %1673 = load i32, ptr %1672, align 4, !tbaa !4
  %1674 = sext i32 %1673 to i64
  %1675 = getelementptr inbounds i8, ptr %228, i64 %1674
  %1676 = load i32, ptr %153, align 4, !tbaa !48
  %1677 = trunc i64 %1671 to i32
  %1678 = shl i32 %1677, 1
  %1679 = icmp sgt i32 %1678, %1676
  br i1 %1679, label %1736, label %1680

1680:                                             ; preds = %1670
  %1681 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1674
  br label %1682

1682:                                             ; preds = %1730, %1680
  %1683 = phi i32 [ %1676, %1680 ], [ %1734, %1730 ]
  %1684 = phi i32 [ %1678, %1680 ], [ %1733, %1730 ]
  %1685 = phi i32 [ %1677, %1680 ], [ %1715, %1730 ]
  %1686 = icmp slt i32 %1684, %1683
  br i1 %1686, label %1689, label %1687

1687:                                             ; preds = %1682
  %1688 = sext i32 %1684 to i64
  br label %1713

1689:                                             ; preds = %1682
  %1690 = or disjoint i32 %1684, 1
  %1691 = sext i32 %1690 to i64
  %1692 = getelementptr inbounds [4 x i8], ptr %227, i64 %1691
  %1693 = load i32, ptr %1692, align 4, !tbaa !4
  %1694 = sext i32 %1693 to i64
  %1695 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1694
  %1696 = load i16, ptr %1695, align 2, !tbaa !28
  %1697 = sext i32 %1684 to i64
  %1698 = getelementptr inbounds [4 x i8], ptr %227, i64 %1697
  %1699 = load i32, ptr %1698, align 4, !tbaa !4
  %1700 = sext i32 %1699 to i64
  %1701 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1700
  %1702 = load i16, ptr %1701, align 2, !tbaa !28
  %1703 = icmp ult i16 %1696, %1702
  br i1 %1703, label %1712, label %1704

1704:                                             ; preds = %1689
  %1705 = icmp eq i16 %1696, %1702
  br i1 %1705, label %1706, label %1713

1706:                                             ; preds = %1704
  %1707 = getelementptr inbounds i8, ptr %228, i64 %1694
  %1708 = load i8, ptr %1707, align 1, !tbaa !28
  %1709 = getelementptr inbounds i8, ptr %228, i64 %1700
  %1710 = load i8, ptr %1709, align 1, !tbaa !28
  %1711 = icmp ugt i8 %1708, %1710
  br i1 %1711, label %1713, label %1712

1712:                                             ; preds = %1706, %1689
  br label %1713

1713:                                             ; preds = %1712, %1706, %1704, %1687
  %1714 = phi i64 [ %1688, %1687 ], [ %1691, %1712 ], [ %1697, %1706 ], [ %1697, %1704 ]
  %1715 = phi i32 [ %1684, %1687 ], [ %1690, %1712 ], [ %1684, %1706 ], [ %1684, %1704 ]
  %1716 = load i16, ptr %1681, align 2, !tbaa !28
  %1717 = getelementptr inbounds [4 x i8], ptr %227, i64 %1714
  %1718 = load i32, ptr %1717, align 4, !tbaa !4
  %1719 = sext i32 %1718 to i64
  %1720 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1719
  %1721 = load i16, ptr %1720, align 2, !tbaa !28
  %1722 = icmp ult i16 %1716, %1721
  br i1 %1722, label %1736, label %1723

1723:                                             ; preds = %1713
  %1724 = icmp eq i16 %1716, %1721
  br i1 %1724, label %1725, label %1730

1725:                                             ; preds = %1723
  %1726 = load i8, ptr %1675, align 1, !tbaa !28
  %1727 = getelementptr inbounds i8, ptr %228, i64 %1719
  %1728 = load i8, ptr %1727, align 1, !tbaa !28
  %1729 = icmp ugt i8 %1726, %1728
  br i1 %1729, label %1730, label %1736

1730:                                             ; preds = %1725, %1723
  %1731 = sext i32 %1685 to i64
  %1732 = getelementptr inbounds [4 x i8], ptr %227, i64 %1731
  store i32 %1718, ptr %1732, align 4, !tbaa !4
  %1733 = shl i32 %1715, 1
  %1734 = load i32, ptr %153, align 4, !tbaa !48
  %1735 = icmp sgt i32 %1733, %1734
  br i1 %1735, label %1736, label %1682, !llvm.loop !55

1736:                                             ; preds = %1730, %1725, %1713, %1670
  %1737 = phi i32 [ %1677, %1670 ], [ %1715, %1730 ], [ %1685, %1725 ], [ %1685, %1713 ]
  %1738 = sext i32 %1737 to i64
  %1739 = getelementptr inbounds [4 x i8], ptr %227, i64 %1738
  store i32 %1673, ptr %1739, align 4, !tbaa !4
  %1740 = add nsw i64 %1671, -1
  %1741 = icmp sgt i64 %1671, 1
  br i1 %1741, label %1670, label %1667, !llvm.loop !56

1742:                                             ; preds = %1903, %1667
  %1743 = phi i32 [ %1668, %1667 ], [ %1906, %1903 ]
  %1744 = phi i64 [ %1669, %1667 ], [ %1843, %1903 ]
  %1745 = load i32, ptr %233, align 4, !tbaa !4
  %1746 = add nsw i32 %1743, -1
  store i32 %1746, ptr %153, align 4, !tbaa !48
  %1747 = sext i32 %1743 to i64
  %1748 = getelementptr inbounds [4 x i8], ptr %227, i64 %1747
  %1749 = load i32, ptr %1748, align 4, !tbaa !4
  store i32 %1749, ptr %233, align 4, !tbaa !4
  %1750 = sext i32 %1749 to i64
  %1751 = getelementptr inbounds i8, ptr %228, i64 %1750
  %1752 = icmp slt i32 %1743, 3
  br i1 %1752, label %1812, label %1753

1753:                                             ; preds = %1742
  %1754 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1750
  br label %1755

1755:                                             ; preds = %1803, %1753
  %1756 = phi i32 [ %1746, %1753 ], [ %1807, %1803 ]
  %1757 = phi i32 [ 2, %1753 ], [ %1806, %1803 ]
  %1758 = phi i32 [ 1, %1753 ], [ %1788, %1803 ]
  %1759 = icmp slt i32 %1757, %1756
  br i1 %1759, label %1762, label %1760

1760:                                             ; preds = %1755
  %1761 = sext i32 %1757 to i64
  br label %1786

1762:                                             ; preds = %1755
  %1763 = or disjoint i32 %1757, 1
  %1764 = sext i32 %1763 to i64
  %1765 = getelementptr inbounds [4 x i8], ptr %227, i64 %1764
  %1766 = load i32, ptr %1765, align 4, !tbaa !4
  %1767 = sext i32 %1766 to i64
  %1768 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1767
  %1769 = load i16, ptr %1768, align 2, !tbaa !28
  %1770 = sext i32 %1757 to i64
  %1771 = getelementptr inbounds [4 x i8], ptr %227, i64 %1770
  %1772 = load i32, ptr %1771, align 4, !tbaa !4
  %1773 = sext i32 %1772 to i64
  %1774 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1773
  %1775 = load i16, ptr %1774, align 2, !tbaa !28
  %1776 = icmp ult i16 %1769, %1775
  br i1 %1776, label %1785, label %1777

1777:                                             ; preds = %1762
  %1778 = icmp eq i16 %1769, %1775
  br i1 %1778, label %1779, label %1786

1779:                                             ; preds = %1777
  %1780 = getelementptr inbounds i8, ptr %228, i64 %1767
  %1781 = load i8, ptr %1780, align 1, !tbaa !28
  %1782 = getelementptr inbounds i8, ptr %228, i64 %1773
  %1783 = load i8, ptr %1782, align 1, !tbaa !28
  %1784 = icmp ugt i8 %1781, %1783
  br i1 %1784, label %1786, label %1785

1785:                                             ; preds = %1779, %1762
  br label %1786

1786:                                             ; preds = %1785, %1779, %1777, %1760
  %1787 = phi i64 [ %1761, %1760 ], [ %1764, %1785 ], [ %1770, %1779 ], [ %1770, %1777 ]
  %1788 = phi i32 [ %1757, %1760 ], [ %1763, %1785 ], [ %1757, %1779 ], [ %1757, %1777 ]
  %1789 = load i16, ptr %1754, align 2, !tbaa !28
  %1790 = getelementptr inbounds [4 x i8], ptr %227, i64 %1787
  %1791 = load i32, ptr %1790, align 4, !tbaa !4
  %1792 = sext i32 %1791 to i64
  %1793 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1792
  %1794 = load i16, ptr %1793, align 2, !tbaa !28
  %1795 = icmp ult i16 %1789, %1794
  br i1 %1795, label %1809, label %1796

1796:                                             ; preds = %1786
  %1797 = icmp eq i16 %1789, %1794
  br i1 %1797, label %1798, label %1803

1798:                                             ; preds = %1796
  %1799 = load i8, ptr %1751, align 1, !tbaa !28
  %1800 = getelementptr inbounds i8, ptr %228, i64 %1792
  %1801 = load i8, ptr %1800, align 1, !tbaa !28
  %1802 = icmp ugt i8 %1799, %1801
  br i1 %1802, label %1803, label %1809

1803:                                             ; preds = %1798, %1796
  %1804 = sext i32 %1758 to i64
  %1805 = getelementptr inbounds [4 x i8], ptr %227, i64 %1804
  store i32 %1791, ptr %1805, align 4, !tbaa !4
  %1806 = shl i32 %1788, 1
  %1807 = load i32, ptr %153, align 4, !tbaa !48
  %1808 = icmp sgt i32 %1806, %1807
  br i1 %1808, label %1809, label %1755, !llvm.loop !55

1809:                                             ; preds = %1803, %1798, %1786
  %1810 = phi i32 [ %1758, %1786 ], [ %1758, %1798 ], [ %1788, %1803 ]
  %1811 = sext i32 %1810 to i64
  br label %1812

1812:                                             ; preds = %1809, %1742
  %1813 = phi i64 [ 1, %1742 ], [ %1811, %1809 ]
  %1814 = getelementptr inbounds [4 x i8], ptr %227, i64 %1813
  store i32 %1749, ptr %1814, align 4, !tbaa !4
  %1815 = load i32, ptr %233, align 4, !tbaa !4
  %1816 = load i32, ptr %154, align 8, !tbaa !49
  %1817 = add nsw i32 %1816, -1
  store i32 %1817, ptr %154, align 8, !tbaa !49
  %1818 = sext i32 %1817 to i64
  %1819 = getelementptr inbounds [4 x i8], ptr %227, i64 %1818
  store i32 %1745, ptr %1819, align 4, !tbaa !4
  %1820 = load i32, ptr %154, align 8, !tbaa !49
  %1821 = add nsw i32 %1820, -1
  store i32 %1821, ptr %154, align 8, !tbaa !49
  %1822 = sext i32 %1821 to i64
  %1823 = getelementptr inbounds [4 x i8], ptr %227, i64 %1822
  store i32 %1815, ptr %1823, align 4, !tbaa !4
  %1824 = sext i32 %1745 to i64
  %1825 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1824
  %1826 = load i16, ptr %1825, align 2, !tbaa !28
  %1827 = sext i32 %1815 to i64
  %1828 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1827
  %1829 = load i16, ptr %1828, align 2, !tbaa !28
  %1830 = add i16 %1829, %1826
  %1831 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1744
  store i16 %1830, ptr %1831, align 2, !tbaa !28
  %1832 = getelementptr inbounds i8, ptr %228, i64 %1824
  %1833 = load i8, ptr %1832, align 1, !tbaa !28
  %1834 = getelementptr inbounds i8, ptr %228, i64 %1827
  %1835 = load i8, ptr %1834, align 1, !tbaa !28
  %1836 = tail call i8 @llvm.umax.i8(i8 %1833, i8 %1835)
  %1837 = add i8 %1836, 1
  %1838 = getelementptr inbounds i8, ptr %228, i64 %1744
  store i8 %1837, ptr %1838, align 1, !tbaa !28
  %1839 = trunc nsw i64 %1744 to i32
  %1840 = trunc i64 %1744 to i16
  %1841 = getelementptr inbounds nuw i8, ptr %1828, i64 2
  store i16 %1840, ptr %1841, align 2, !tbaa !28
  %1842 = getelementptr inbounds nuw i8, ptr %1825, i64 2
  store i16 %1840, ptr %1842, align 2, !tbaa !28
  %1843 = add nsw i64 %1744, 1
  store i32 %1839, ptr %233, align 4, !tbaa !4
  %1844 = load i32, ptr %153, align 4, !tbaa !48
  %1845 = icmp slt i32 %1844, 2
  br i1 %1845, label %1903, label %1846

1846:                                             ; preds = %1894, %1812
  %1847 = phi i32 [ %1898, %1894 ], [ %1844, %1812 ]
  %1848 = phi i32 [ %1897, %1894 ], [ 2, %1812 ]
  %1849 = phi i32 [ %1879, %1894 ], [ 1, %1812 ]
  %1850 = icmp slt i32 %1848, %1847
  br i1 %1850, label %1853, label %1851

1851:                                             ; preds = %1846
  %1852 = sext i32 %1848 to i64
  br label %1877

1853:                                             ; preds = %1846
  %1854 = or disjoint i32 %1848, 1
  %1855 = sext i32 %1854 to i64
  %1856 = getelementptr inbounds [4 x i8], ptr %227, i64 %1855
  %1857 = load i32, ptr %1856, align 4, !tbaa !4
  %1858 = sext i32 %1857 to i64
  %1859 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1858
  %1860 = load i16, ptr %1859, align 2, !tbaa !28
  %1861 = sext i32 %1848 to i64
  %1862 = getelementptr inbounds [4 x i8], ptr %227, i64 %1861
  %1863 = load i32, ptr %1862, align 4, !tbaa !4
  %1864 = sext i32 %1863 to i64
  %1865 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1864
  %1866 = load i16, ptr %1865, align 2, !tbaa !28
  %1867 = icmp ult i16 %1860, %1866
  br i1 %1867, label %1876, label %1868

1868:                                             ; preds = %1853
  %1869 = icmp eq i16 %1860, %1866
  br i1 %1869, label %1870, label %1877

1870:                                             ; preds = %1868
  %1871 = getelementptr inbounds i8, ptr %228, i64 %1858
  %1872 = load i8, ptr %1871, align 1, !tbaa !28
  %1873 = getelementptr inbounds i8, ptr %228, i64 %1864
  %1874 = load i8, ptr %1873, align 1, !tbaa !28
  %1875 = icmp ugt i8 %1872, %1874
  br i1 %1875, label %1877, label %1876

1876:                                             ; preds = %1870, %1853
  br label %1877

1877:                                             ; preds = %1876, %1870, %1868, %1851
  %1878 = phi i64 [ %1852, %1851 ], [ %1855, %1876 ], [ %1861, %1870 ], [ %1861, %1868 ]
  %1879 = phi i32 [ %1848, %1851 ], [ %1854, %1876 ], [ %1848, %1870 ], [ %1848, %1868 ]
  %1880 = load i16, ptr %1831, align 2, !tbaa !28
  %1881 = getelementptr inbounds [4 x i8], ptr %227, i64 %1878
  %1882 = load i32, ptr %1881, align 4, !tbaa !4
  %1883 = sext i32 %1882 to i64
  %1884 = getelementptr inbounds [4 x i8], ptr %1591, i64 %1883
  %1885 = load i16, ptr %1884, align 2, !tbaa !28
  %1886 = icmp ult i16 %1880, %1885
  br i1 %1886, label %1900, label %1887

1887:                                             ; preds = %1877
  %1888 = icmp eq i16 %1880, %1885
  br i1 %1888, label %1889, label %1894

1889:                                             ; preds = %1887
  %1890 = load i8, ptr %1838, align 1, !tbaa !28
  %1891 = getelementptr inbounds i8, ptr %228, i64 %1883
  %1892 = load i8, ptr %1891, align 1, !tbaa !28
  %1893 = icmp ugt i8 %1890, %1892
  br i1 %1893, label %1894, label %1900

1894:                                             ; preds = %1889, %1887
  %1895 = sext i32 %1849 to i64
  %1896 = getelementptr inbounds [4 x i8], ptr %227, i64 %1895
  store i32 %1882, ptr %1896, align 4, !tbaa !4
  %1897 = shl i32 %1879, 1
  %1898 = load i32, ptr %153, align 4, !tbaa !48
  %1899 = icmp sgt i32 %1897, %1898
  br i1 %1899, label %1900, label %1846, !llvm.loop !55

1900:                                             ; preds = %1894, %1889, %1877
  %1901 = phi i32 [ %1849, %1877 ], [ %1849, %1889 ], [ %1879, %1894 ]
  %1902 = sext i32 %1901 to i64
  br label %1903

1903:                                             ; preds = %1900, %1812
  %1904 = phi i64 [ 1, %1812 ], [ %1902, %1900 ]
  %1905 = getelementptr inbounds [4 x i8], ptr %227, i64 %1904
  store i32 %1839, ptr %1905, align 4, !tbaa !4
  %1906 = load i32, ptr %153, align 4, !tbaa !48
  %1907 = icmp sgt i32 %1906, 1
  br i1 %1907, label %1742, label %1908, !llvm.loop !57

1908:                                             ; preds = %1903
  %1909 = load i32, ptr %233, align 4, !tbaa !4
  %1910 = load i32, ptr %154, align 8, !tbaa !49
  %1911 = add nsw i32 %1910, -1
  store i32 %1911, ptr %154, align 8, !tbaa !49
  %1912 = sext i32 %1911 to i64
  %1913 = getelementptr inbounds [4 x i8], ptr %227, i64 %1912
  store i32 %1909, ptr %1913, align 4, !tbaa !4
  %1914 = load ptr, ptr %1590, align 8, !tbaa !42
  %1915 = load i32, ptr %1664, align 8, !tbaa !54
  %1916 = load ptr, ptr %1592, align 8, !tbaa !43
  %1917 = load ptr, ptr %1916, align 8, !tbaa !44
  %1918 = getelementptr inbounds nuw i8, ptr %1916, i64 8
  %1919 = load ptr, ptr %1918, align 8, !tbaa !58
  %1920 = getelementptr inbounds nuw i8, ptr %1916, i64 16
  %1921 = load i32, ptr %1920, align 8, !tbaa !59
  %1922 = getelementptr inbounds nuw i8, ptr %1916, i64 24
  %1923 = load i32, ptr %1922, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %489, i8 0, i64 32, i1 false), !tbaa !61
  %1924 = load i32, ptr %154, align 8, !tbaa !49
  %1925 = sext i32 %1924 to i64
  %1926 = getelementptr inbounds [4 x i8], ptr %227, i64 %1925
  %1927 = load i32, ptr %1926, align 4, !tbaa !4
  %1928 = sext i32 %1927 to i64
  %1929 = getelementptr inbounds [4 x i8], ptr %1914, i64 %1928
  %1930 = getelementptr inbounds nuw i8, ptr %1929, i64 2
  store i16 0, ptr %1930, align 2, !tbaa !28
  %1931 = load i32, ptr %154, align 8, !tbaa !49
  %1932 = icmp slt i32 %1931, 572
  br i1 %1932, label %1933, label %2082

1933:                                             ; preds = %1908
  %1934 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1935 = icmp eq ptr %1917, null
  %1936 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1937 = sext i32 %1931 to i64
  %1938 = add nsw i64 %1937, 1
  br label %1939

1939:                                             ; preds = %1998, %1933
  %1940 = phi i64 [ %1938, %1933 ], [ %1999, %1998 ]
  %1941 = phi i32 [ 0, %1933 ], [ %1957, %1998 ]
  %1942 = getelementptr inbounds [4 x i8], ptr %227, i64 %1940
  %1943 = load i32, ptr %1942, align 4, !tbaa !4
  %1944 = sext i32 %1943 to i64
  %1945 = getelementptr inbounds [4 x i8], ptr %1914, i64 %1944
  %1946 = getelementptr inbounds nuw i8, ptr %1945, i64 2
  %1947 = load i16, ptr %1946, align 2, !tbaa !28
  %1948 = zext i16 %1947 to i64
  %1949 = getelementptr inbounds nuw [4 x i8], ptr %1914, i64 %1948
  %1950 = getelementptr inbounds nuw i8, ptr %1949, i64 2
  %1951 = load i16, ptr %1950, align 2, !tbaa !28
  %1952 = zext i16 %1951 to i32
  %1953 = add nuw nsw i32 %1952, 1
  %1954 = icmp sle i32 %1923, %1952
  %1955 = select i1 %1954, i32 %1923, i32 %1953
  %1956 = zext i1 %1954 to i32
  %1957 = add nuw nsw i32 %1941, %1956
  %1958 = trunc i32 %1955 to i16
  store i16 %1958, ptr %1946, align 2, !tbaa !28
  %1959 = icmp sgt i32 %1943, %1915
  br i1 %1959, label %1998, label %1960

1960:                                             ; preds = %1939
  %1961 = sext i32 %1955 to i64
  %1962 = getelementptr inbounds [2 x i8], ptr %489, i64 %1961
  %1963 = load i16, ptr %1962, align 2, !tbaa !61
  %1964 = add i16 %1963, 1
  store i16 %1964, ptr %1962, align 2, !tbaa !61
  %1965 = icmp slt i32 %1943, %1921
  br i1 %1965, label %1971, label %1966

1966:                                             ; preds = %1960
  %1967 = sub nsw i32 %1943, %1921
  %1968 = zext nneg i32 %1967 to i64
  %1969 = getelementptr inbounds nuw [4 x i8], ptr %1919, i64 %1968
  %1970 = load i32, ptr %1969, align 4, !tbaa !4
  br label %1971

1971:                                             ; preds = %1966, %1960
  %1972 = phi i32 [ %1970, %1966 ], [ 0, %1960 ]
  %1973 = load i16, ptr %1945, align 2, !tbaa !28
  %1974 = zext i16 %1973 to i64
  %1975 = add nsw i32 %1972, %1955
  %1976 = zext i32 %1975 to i64
  %1977 = mul nuw nsw i64 %1974, %1976
  %1978 = load i64, ptr %1934, align 8, !tbaa !51
  %1979 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1978, i64 %1977), !nosanitize !33
  %1980 = extractvalue { i64, i1 } %1979, 1, !nosanitize !33
  br i1 %1980, label %1981, label %1982, !prof !34, !nosanitize !33

1981:                                             ; preds = %1971
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

1982:                                             ; preds = %1971
  %1983 = extractvalue { i64, i1 } %1979, 0, !nosanitize !33
  store i64 %1983, ptr %1934, align 8, !tbaa !51
  br i1 %1935, label %1998, label %1984

1984:                                             ; preds = %1982
  %1985 = getelementptr inbounds [4 x i8], ptr %1917, i64 %1944
  %1986 = getelementptr inbounds nuw i8, ptr %1985, i64 2
  %1987 = load i16, ptr %1986, align 2, !tbaa !28
  %1988 = zext i16 %1987 to i32
  %1989 = add nsw i32 %1972, %1988
  %1990 = zext i32 %1989 to i64
  %1991 = mul nuw nsw i64 %1990, %1974
  %1992 = load i64, ptr %1936, align 8, !tbaa !52
  %1993 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1992, i64 %1991), !nosanitize !33
  %1994 = extractvalue { i64, i1 } %1993, 1, !nosanitize !33
  br i1 %1994, label %1995, label %1996, !prof !34, !nosanitize !33

1995:                                             ; preds = %1984
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

1996:                                             ; preds = %1984
  %1997 = extractvalue { i64, i1 } %1993, 0, !nosanitize !33
  store i64 %1997, ptr %1936, align 8, !tbaa !52
  br label %1998

1998:                                             ; preds = %1996, %1982, %1939
  %1999 = add nsw i64 %1940, 1
  %2000 = and i64 %1999, 4294967295
  %2001 = icmp eq i64 %2000, 573
  br i1 %2001, label %2002, label %1939, !llvm.loop !62

2002:                                             ; preds = %1998
  %2003 = icmp eq i32 %1957, 0
  br i1 %2003, label %2082, label %2004

2004:                                             ; preds = %2002
  %2005 = sext i32 %1923 to i64
  %2006 = getelementptr inbounds [2 x i8], ptr %489, i64 %2005
  br label %2007

2007:                                             ; preds = %2015, %2004
  %2008 = phi i32 [ %2025, %2015 ], [ %1957, %2004 ]
  br label %2009

2009:                                             ; preds = %2009, %2007
  %2010 = phi i64 [ %2011, %2009 ], [ %2005, %2007 ]
  %2011 = add nsw i64 %2010, -1
  %2012 = getelementptr inbounds [2 x i8], ptr %489, i64 %2011
  %2013 = load i16, ptr %2012, align 2, !tbaa !61
  %2014 = icmp eq i16 %2013, 0
  br i1 %2014, label %2009, label %2015, !llvm.loop !63

2015:                                             ; preds = %2009
  %2016 = getelementptr inbounds [2 x i8], ptr %489, i64 %2011
  %2017 = add i16 %2013, -1
  store i16 %2017, ptr %2016, align 2, !tbaa !61
  %2018 = shl i64 %2010, 32
  %2019 = ashr exact i64 %2018, 31
  %2020 = getelementptr inbounds i8, ptr %489, i64 %2019
  %2021 = load i16, ptr %2020, align 2, !tbaa !61
  %2022 = add i16 %2021, 2
  store i16 %2022, ptr %2020, align 2, !tbaa !61
  %2023 = load i16, ptr %2006, align 2, !tbaa !61
  %2024 = add i16 %2023, -1
  store i16 %2024, ptr %2006, align 2, !tbaa !61
  %2025 = add nsw i32 %2008, -2
  %2026 = icmp sgt i32 %2008, 2
  br i1 %2026, label %2007, label %2027, !llvm.loop !64

2027:                                             ; preds = %2015
  %2028 = icmp eq i32 %1923, 0
  br i1 %2028, label %2082, label %2029

2029:                                             ; preds = %2038, %2027
  %2030 = phi i64 [ %2040, %2038 ], [ %2005, %2027 ]
  %2031 = phi i32 [ %2039, %2038 ], [ 573, %2027 ]
  %2032 = getelementptr inbounds [2 x i8], ptr %489, i64 %2030
  %2033 = load i16, ptr %2032, align 2, !tbaa !61
  %2034 = icmp eq i16 %2033, 0
  br i1 %2034, label %2038, label %2035

2035:                                             ; preds = %2029
  %2036 = zext i16 %2033 to i32
  %2037 = trunc i64 %2030 to i16
  br label %2042

2038:                                             ; preds = %2079, %2029
  %2039 = phi i32 [ %2031, %2029 ], [ %2053, %2079 ]
  %2040 = add nsw i64 %2030, -1
  %2041 = icmp eq i64 %2040, 0
  br i1 %2041, label %2082, label %2029, !llvm.loop !65

2042:                                             ; preds = %2079, %2035
  %2043 = phi i32 [ %2031, %2035 ], [ %2053, %2079 ]
  %2044 = phi i32 [ %2036, %2035 ], [ %2080, %2079 ]
  %2045 = sext i32 %2043 to i64
  br label %2046

2046:                                             ; preds = %2046, %2042
  %2047 = phi i64 [ %2045, %2042 ], [ %2048, %2046 ]
  %2048 = add nsw i64 %2047, -1
  %2049 = getelementptr inbounds [4 x i8], ptr %227, i64 %2048
  %2050 = load i32, ptr %2049, align 4, !tbaa !4
  %2051 = icmp sgt i32 %2050, %1915
  br i1 %2051, label %2046, label %2052, !llvm.loop !66

2052:                                             ; preds = %2046
  %2053 = trunc nsw i64 %2048 to i32
  %2054 = sext i32 %2050 to i64
  %2055 = getelementptr inbounds [4 x i8], ptr %1914, i64 %2054
  %2056 = getelementptr inbounds nuw i8, ptr %2055, i64 2
  %2057 = load i16, ptr %2056, align 2, !tbaa !28
  %2058 = zext i16 %2057 to i64
  %2059 = icmp eq i64 %2030, %2058
  br i1 %2059, label %2079, label %2060

2060:                                             ; preds = %2052
  %2061 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2030, i64 %2058), !nosanitize !33
  %2062 = extractvalue { i64, i1 } %2061, 1, !nosanitize !33
  br i1 %2062, label %2063, label %2064, !prof !34, !nosanitize !33

2063:                                             ; preds = %2060
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !33
  unreachable, !nosanitize !33

2064:                                             ; preds = %2060
  %2065 = extractvalue { i64, i1 } %2061, 0, !nosanitize !33
  %2066 = load i16, ptr %2055, align 2, !tbaa !28
  %2067 = zext i16 %2066 to i64
  %2068 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2065, i64 %2067), !nosanitize !33
  %2069 = extractvalue { i64, i1 } %2068, 1, !nosanitize !33
  br i1 %2069, label %2070, label %2071, !prof !34, !nosanitize !33

2070:                                             ; preds = %2064
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !33
  unreachable, !nosanitize !33

2071:                                             ; preds = %2064
  %2072 = extractvalue { i64, i1 } %2068, 0, !nosanitize !33
  %2073 = load i64, ptr %1934, align 8, !tbaa !51
  %2074 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2073, i64 %2072), !nosanitize !33
  %2075 = extractvalue { i64, i1 } %2074, 1, !nosanitize !33
  br i1 %2075, label %2076, label %2077, !prof !34, !nosanitize !33

2076:                                             ; preds = %2071
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2077:                                             ; preds = %2071
  %2078 = extractvalue { i64, i1 } %2074, 0, !nosanitize !33
  store i64 %2078, ptr %1934, align 8, !tbaa !51
  store i16 %2037, ptr %2056, align 2, !tbaa !28
  br label %2079

2079:                                             ; preds = %2077, %2052
  %2080 = add nsw i32 %2044, -1
  %2081 = icmp eq i32 %2080, 0
  br i1 %2081, label %2038, label %2042, !llvm.loop !66

2082:                                             ; preds = %2038, %2027, %2002, %1908
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %2083 = load i16, ptr %489, align 2, !tbaa !61
  %2084 = zext i16 %2083 to i32
  %2085 = shl nuw nsw i32 %2084, 1
  %2086 = trunc i32 %2085 to i16
  %2087 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %2086, ptr %2087, align 2, !tbaa !61
  %2088 = load i16, ptr %654, align 2, !tbaa !61
  %2089 = zext i16 %2088 to i32
  %2090 = add nuw nsw i32 %2085, %2089
  %2091 = shl nuw nsw i32 %2090, 1
  %2092 = trunc i32 %2091 to i16
  %2093 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2092, ptr %2093, align 4, !tbaa !61
  %2094 = load i16, ptr %661, align 2, !tbaa !61
  %2095 = zext i16 %2094 to i32
  %2096 = add nuw nsw i32 %2091, %2095
  %2097 = shl nuw nsw i32 %2096, 1
  %2098 = trunc i32 %2097 to i16
  %2099 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2098, ptr %2099, align 2, !tbaa !61
  %2100 = load i16, ptr %668, align 2, !tbaa !61
  %2101 = zext i16 %2100 to i32
  %2102 = add nuw nsw i32 %2097, %2101
  %2103 = shl nuw nsw i32 %2102, 1
  %2104 = trunc i32 %2103 to i16
  %2105 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %2104, ptr %2105, align 8, !tbaa !61
  %2106 = load i16, ptr %675, align 2, !tbaa !61
  %2107 = zext i16 %2106 to i32
  %2108 = add nuw nsw i32 %2103, %2107
  %2109 = shl nuw nsw i32 %2108, 1
  %2110 = trunc i32 %2109 to i16
  %2111 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %2110, ptr %2111, align 2, !tbaa !61
  %2112 = load i16, ptr %682, align 2, !tbaa !61
  %2113 = zext i16 %2112 to i32
  %2114 = add nuw nsw i32 %2109, %2113
  %2115 = shl nuw nsw i32 %2114, 1
  %2116 = trunc i32 %2115 to i16
  %2117 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %2116, ptr %2117, align 4, !tbaa !61
  %2118 = load i16, ptr %689, align 2, !tbaa !61
  %2119 = zext i16 %2118 to i32
  %2120 = add nuw nsw i32 %2115, %2119
  %2121 = shl nuw nsw i32 %2120, 1
  %2122 = trunc i32 %2121 to i16
  %2123 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %2122, ptr %2123, align 2, !tbaa !61
  %2124 = load i16, ptr %696, align 2, !tbaa !61
  %2125 = zext i16 %2124 to i32
  %2126 = add nuw nsw i32 %2121, %2125
  %2127 = shl nuw nsw i32 %2126, 1
  %2128 = trunc i32 %2127 to i16
  %2129 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %2128, ptr %2129, align 16, !tbaa !61
  %2130 = load i16, ptr %703, align 2, !tbaa !61
  %2131 = trunc i32 %2127 to i16
  %2132 = add i16 %2130, %2131
  %2133 = shl i16 %2132, 1
  %2134 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %2133, ptr %2134, align 2, !tbaa !61
  %2135 = load i16, ptr %710, align 2, !tbaa !61
  %2136 = add i16 %2135, %2133
  %2137 = shl i16 %2136, 1
  %2138 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %2137, ptr %2138, align 4, !tbaa !61
  %2139 = load i16, ptr %717, align 2, !tbaa !61
  %2140 = add i16 %2137, %2139
  %2141 = shl i16 %2140, 1
  %2142 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %2141, ptr %2142, align 2, !tbaa !61
  %2143 = load i16, ptr %723, align 2, !tbaa !61
  %2144 = add i16 %2141, %2143
  %2145 = shl i16 %2144, 1
  %2146 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2145, ptr %2146, align 8, !tbaa !61
  %2147 = load i16, ptr %728, align 2, !tbaa !61
  %2148 = add i16 %2145, %2147
  %2149 = shl i16 %2148, 1
  %2150 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2149, ptr %2150, align 2, !tbaa !61
  %2151 = load i16, ptr %733, align 2, !tbaa !61
  %2152 = add i16 %2149, %2151
  %2153 = shl i16 %2152, 1
  %2154 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2153, ptr %2154, align 4, !tbaa !61
  %2155 = load i16, ptr %738, align 2, !tbaa !61
  %2156 = add i16 %2153, %2155
  %2157 = shl i16 %2156, 1
  %2158 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2157, ptr %2158, align 2, !tbaa !61
  %2159 = icmp slt i32 %1662, 0
  br i1 %2159, label %2220, label %2160

2160:                                             ; preds = %2082
  %2161 = add nuw i32 %1662, 1
  %2162 = zext i32 %2161 to i64
  br label %2163

2163:                                             ; preds = %2217, %2160
  %2164 = phi i64 [ 0, %2160 ], [ %2218, %2217 ]
  %2165 = getelementptr inbounds nuw [4 x i8], ptr %1591, i64 %2164
  %2166 = getelementptr inbounds nuw i8, ptr %2165, i64 2
  %2167 = load i16, ptr %2166, align 2, !tbaa !28
  %2168 = icmp eq i16 %2167, 0
  br i1 %2168, label %2217, label %2169

2169:                                             ; preds = %2163
  %2170 = zext i16 %2167 to i32
  %2171 = zext i16 %2167 to i64
  %2172 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %2171
  %2173 = load i16, ptr %2172, align 2, !tbaa !61
  %2174 = add i16 %2173, 1
  store i16 %2174, ptr %2172, align 2, !tbaa !61
  %2175 = and i32 %2170, 3
  %2176 = icmp ult i16 %2167, 4
  br i1 %2176, label %2201, label %2177

2177:                                             ; preds = %2169
  %2178 = and i32 %2170, 65532
  br label %2179

2179:                                             ; preds = %2179, %2177
  %2180 = phi i16 [ %2173, %2177 ], [ %2195, %2179 ]
  %2181 = phi i16 [ 0, %2177 ], [ %2196, %2179 ]
  %2182 = phi i32 [ 0, %2177 ], [ %2197, %2179 ]
  %2183 = and i16 %2180, 1
  %2184 = or disjoint i16 %2181, %2183
  %2185 = shl i16 %2184, 2
  %2186 = and i16 %2180, 2
  %2187 = or disjoint i16 %2185, %2186
  %2188 = lshr i16 %2180, 2
  %2189 = and i16 %2188, 1
  %2190 = or disjoint i16 %2187, %2189
  %2191 = lshr i16 %2180, 3
  %2192 = shl i16 %2190, 1
  %2193 = and i16 %2191, 1
  %2194 = or disjoint i16 %2192, %2193
  %2195 = lshr i16 %2180, 4
  %2196 = shl i16 %2194, 1
  %2197 = add i32 %2182, 4
  %2198 = icmp eq i32 %2197, %2178
  br i1 %2198, label %2199, label %2179, !llvm.loop !67

2199:                                             ; preds = %2179
  %2200 = icmp eq i32 %2175, 0
  br i1 %2200, label %2215, label %2201

2201:                                             ; preds = %2199, %2169
  %2202 = phi i16 [ %2173, %2169 ], [ %2195, %2199 ]
  %2203 = phi i16 [ 0, %2169 ], [ %2196, %2199 ]
  %2204 = icmp ne i32 %2175, 0
  tail call void @llvm.assume(i1 %2204)
  br label %2205

2205:                                             ; preds = %2205, %2201
  %2206 = phi i16 [ %2202, %2201 ], [ %2211, %2205 ]
  %2207 = phi i16 [ %2203, %2201 ], [ %2212, %2205 ]
  %2208 = phi i32 [ 0, %2201 ], [ %2213, %2205 ]
  %2209 = and i16 %2206, 1
  %2210 = or disjoint i16 %2207, %2209
  %2211 = lshr i16 %2206, 1
  %2212 = shl i16 %2210, 1
  %2213 = add i32 %2208, 1
  %2214 = icmp eq i32 %2213, %2175
  br i1 %2214, label %2215, label %2205, !llvm.loop !75

2215:                                             ; preds = %2205, %2199
  %2216 = phi i16 [ %2194, %2199 ], [ %2210, %2205 ]
  store i16 %2216, ptr %2165, align 2, !tbaa !28
  br label %2217

2217:                                             ; preds = %2215, %2163
  %2218 = add nuw nsw i64 %2164, 1
  %2219 = icmp eq i64 %2218, %2162
  br i1 %2219, label %2220, label %2163, !llvm.loop !70

2220:                                             ; preds = %2217, %2082
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %2221 = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %2222 = load i16, ptr %2221, align 2, !tbaa !28
  %2223 = icmp eq i16 %2222, 0
  br i1 %2223, label %2224, label %2285

2224:                                             ; preds = %2220
  %2225 = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %2226 = load i16, ptr %2225, align 2, !tbaa !28
  %2227 = icmp eq i16 %2226, 0
  br i1 %2227, label %2228, label %2285

2228:                                             ; preds = %2224
  %2229 = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %2230 = load i16, ptr %2229, align 2, !tbaa !28
  %2231 = icmp eq i16 %2230, 0
  br i1 %2231, label %2232, label %2285

2232:                                             ; preds = %2228
  %2233 = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %2234 = load i16, ptr %2233, align 2, !tbaa !28
  %2235 = icmp eq i16 %2234, 0
  br i1 %2235, label %2236, label %2285

2236:                                             ; preds = %2232
  %2237 = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %2238 = load i16, ptr %2237, align 2, !tbaa !28
  %2239 = icmp eq i16 %2238, 0
  br i1 %2239, label %2240, label %2285

2240:                                             ; preds = %2236
  %2241 = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %2242 = load i16, ptr %2241, align 2, !tbaa !28
  %2243 = icmp eq i16 %2242, 0
  br i1 %2243, label %2244, label %2285

2244:                                             ; preds = %2240
  %2245 = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %2246 = load i16, ptr %2245, align 2, !tbaa !28
  %2247 = icmp eq i16 %2246, 0
  br i1 %2247, label %2248, label %2285

2248:                                             ; preds = %2244
  %2249 = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %2250 = load i16, ptr %2249, align 2, !tbaa !28
  %2251 = icmp eq i16 %2250, 0
  br i1 %2251, label %2252, label %2285

2252:                                             ; preds = %2248
  %2253 = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %2254 = load i16, ptr %2253, align 2, !tbaa !28
  %2255 = icmp eq i16 %2254, 0
  br i1 %2255, label %2256, label %2285

2256:                                             ; preds = %2252
  %2257 = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %2258 = load i16, ptr %2257, align 2, !tbaa !28
  %2259 = icmp eq i16 %2258, 0
  br i1 %2259, label %2260, label %2285

2260:                                             ; preds = %2256
  %2261 = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %2262 = load i16, ptr %2261, align 2, !tbaa !28
  %2263 = icmp eq i16 %2262, 0
  br i1 %2263, label %2264, label %2285

2264:                                             ; preds = %2260
  %2265 = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %2266 = load i16, ptr %2265, align 2, !tbaa !28
  %2267 = icmp eq i16 %2266, 0
  br i1 %2267, label %2268, label %2285

2268:                                             ; preds = %2264
  %2269 = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %2270 = load i16, ptr %2269, align 2, !tbaa !28
  %2271 = icmp eq i16 %2270, 0
  br i1 %2271, label %2272, label %2285

2272:                                             ; preds = %2268
  %2273 = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %2274 = load i16, ptr %2273, align 2, !tbaa !28
  %2275 = icmp eq i16 %2274, 0
  br i1 %2275, label %2276, label %2285

2276:                                             ; preds = %2272
  %2277 = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %2278 = load i16, ptr %2277, align 2, !tbaa !28
  %2279 = icmp eq i16 %2278, 0
  br i1 %2279, label %2280, label %2285

2280:                                             ; preds = %2276
  %2281 = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %2282 = load i16, ptr %2281, align 2, !tbaa !28
  %2283 = icmp eq i16 %2282, 0
  %2284 = select i1 %2283, i32 2, i32 3
  br label %2285

2285:                                             ; preds = %2280, %2276, %2272, %2268, %2264, %2260, %2256, %2252, %2248, %2244, %2240, %2236, %2232, %2228, %2224, %2220
  %2286 = phi i32 [ 18, %2220 ], [ 10, %2252 ], [ 17, %2224 ], [ %2284, %2280 ], [ 16, %2228 ], [ 8, %2260 ], [ 15, %2232 ], [ 4, %2276 ], [ 14, %2236 ], [ 9, %2256 ], [ 13, %2240 ], [ 5, %2272 ], [ 12, %2244 ], [ 7, %2264 ], [ 11, %2248 ], [ 6, %2268 ]
  %2287 = mul nuw nsw i32 %2286, 3
  %2288 = add nuw nsw i32 %2287, 17
  %2289 = zext nneg i32 %2288 to i64
  %2290 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2291 = load i64, ptr %2290, align 8, !tbaa !51
  %2292 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2291, i64 %2289), !nosanitize !33
  %2293 = extractvalue { i64, i1 } %2292, 1, !nosanitize !33
  br i1 %2293, label %2294, label %2295, !prof !34, !nosanitize !33

2294:                                             ; preds = %2285
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2295:                                             ; preds = %2285
  %2296 = extractvalue { i64, i1 } %2292, 0, !nosanitize !33
  store i64 %2296, ptr %2290, align 8, !tbaa !51
  %2297 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2296, i64 3), !nosanitize !33
  %2298 = extractvalue { i64, i1 } %2297, 1, !nosanitize !33
  br i1 %2298, label %2299, label %2300, !prof !34, !nosanitize !33

2299:                                             ; preds = %2295
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2300:                                             ; preds = %2295
  %2301 = extractvalue { i64, i1 } %2297, 0, !nosanitize !33
  %2302 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2301, i64 7), !nosanitize !33
  %2303 = extractvalue { i64, i1 } %2302, 1, !nosanitize !33
  br i1 %2303, label %2304, label %2305, !prof !34, !nosanitize !33

2304:                                             ; preds = %2300
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2305:                                             ; preds = %2300
  %2306 = extractvalue { i64, i1 } %2302, 0, !nosanitize !33
  %2307 = lshr i64 %2306, 3
  %2308 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2309 = load i64, ptr %2308, align 8, !tbaa !52
  %2310 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2309, i64 3), !nosanitize !33
  %2311 = extractvalue { i64, i1 } %2310, 1, !nosanitize !33
  br i1 %2311, label %2312, label %2313, !prof !34, !nosanitize !33

2312:                                             ; preds = %2305
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2313:                                             ; preds = %2305
  %2314 = extractvalue { i64, i1 } %2310, 0, !nosanitize !33
  %2315 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2314, i64 7), !nosanitize !33
  %2316 = extractvalue { i64, i1 } %2315, 1, !nosanitize !33
  br i1 %2316, label %2317, label %2318, !prof !34, !nosanitize !33

2317:                                             ; preds = %2313
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2318:                                             ; preds = %2313
  %2319 = extractvalue { i64, i1 } %2315, 0, !nosanitize !33
  %2320 = lshr i64 %2319, 3
  %2321 = icmp samesign ugt i64 %2320, %2307
  br i1 %2321, label %2322, label %2326

2322:                                             ; preds = %2318
  %2323 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2324 = load i32, ptr %2323, align 8, !tbaa !76
  %2325 = icmp eq i32 %2324, 4
  br i1 %2325, label %2326, label %2333

2326:                                             ; preds = %2322, %2318
  br label %2333

2327:                                             ; preds = %4
  %2328 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 5), !nosanitize !33
  %2329 = extractvalue { i64, i1 } %2328, 1, !nosanitize !33
  br i1 %2329, label %2330, label %2331, !prof !34, !nosanitize !33

2330:                                             ; preds = %2327
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2331:                                             ; preds = %2327
  %2332 = extractvalue { i64, i1 } %2328, 0, !nosanitize !33
  br label %2333

2333:                                             ; preds = %2331, %2326, %2322
  %2334 = phi i32 [ %2286, %2326 ], [ %2286, %2322 ], [ 0, %2331 ]
  %2335 = phi i1 [ true, %2326 ], [ false, %2322 ], [ true, %2331 ]
  %2336 = phi i64 [ %2320, %2326 ], [ %2307, %2322 ], [ %2332, %2331 ]
  %2337 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 4), !nosanitize !33
  %2338 = extractvalue { i64, i1 } %2337, 1, !nosanitize !33
  br i1 %2338, label %2339, label %2340, !prof !34, !nosanitize !33

2339:                                             ; preds = %2333
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2340:                                             ; preds = %2333
  %2341 = extractvalue { i64, i1 } %2337, 0, !nosanitize !33
  %2342 = icmp ule i64 %2341, %2336
  %2343 = icmp ne ptr %1, null
  %2344 = and i1 %2343, %2342
  %2345 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2346 = load i32, ptr %2345, align 4, !tbaa !26
  %2347 = icmp sgt i32 %2346, 13
  br i1 %2344, label %2348, label %2493

2348:                                             ; preds = %2340
  br i1 %2347, label %2349, label %2383

2349:                                             ; preds = %2348
  %2350 = and i32 %3, 65535
  %2351 = shl i32 %3, %2346
  %2352 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2353 = load i16, ptr %2352, align 8, !tbaa !25
  %2354 = trunc i32 %2351 to i16
  %2355 = or i16 %2353, %2354
  store i16 %2355, ptr %2352, align 8, !tbaa !25
  %2356 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2357 = load i64, ptr %2356, align 8, !tbaa !32
  %2358 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2357, i64 1), !nosanitize !33
  %2359 = extractvalue { i64, i1 } %2358, 1, !nosanitize !33
  br i1 %2359, label %2360, label %2361, !prof !34, !nosanitize !33

2360:                                             ; preds = %2349
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2361:                                             ; preds = %2349
  %2362 = extractvalue { i64, i1 } %2358, 0, !nosanitize !33
  %2363 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2364 = load ptr, ptr %2363, align 8, !tbaa !35
  %2365 = trunc i16 %2355 to i8
  store i64 %2362, ptr %2356, align 8, !tbaa !32
  %2366 = getelementptr inbounds nuw i8, ptr %2364, i64 %2357
  store i8 %2365, ptr %2366, align 1, !tbaa !28
  %2367 = load i64, ptr %2356, align 8, !tbaa !32
  %2368 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2367, i64 1), !nosanitize !33
  %2369 = extractvalue { i64, i1 } %2368, 1, !nosanitize !33
  br i1 %2369, label %2370, label %2371, !prof !34, !nosanitize !33

2370:                                             ; preds = %2361
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2371:                                             ; preds = %2361
  %2372 = extractvalue { i64, i1 } %2368, 0, !nosanitize !33
  %2373 = load ptr, ptr %2363, align 8, !tbaa !35
  %2374 = load i16, ptr %2352, align 8, !tbaa !25
  %2375 = lshr i16 %2374, 8
  %2376 = trunc nuw i16 %2375 to i8
  store i64 %2372, ptr %2356, align 8, !tbaa !32
  %2377 = getelementptr inbounds nuw i8, ptr %2373, i64 %2367
  store i8 %2376, ptr %2377, align 1, !tbaa !28
  %2378 = load i32, ptr %2345, align 4, !tbaa !26
  %2379 = sub nsw i32 16, %2378
  %2380 = lshr i32 %2350, %2379
  %2381 = trunc nuw i32 %2380 to i16
  store i16 %2381, ptr %2352, align 8, !tbaa !25
  %2382 = add nsw i32 %2378, -13
  br label %2390

2383:                                             ; preds = %2348
  %2384 = shl i32 %3, %2346
  %2385 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2386 = load i16, ptr %2385, align 8, !tbaa !25
  %2387 = trunc i32 %2384 to i16
  %2388 = or i16 %2386, %2387
  store i16 %2388, ptr %2385, align 8, !tbaa !25
  %2389 = add nsw i32 %2346, 3
  br label %2390

2390:                                             ; preds = %2383, %2371
  %2391 = phi i16 [ %2388, %2383 ], [ %2381, %2371 ]
  %2392 = phi i32 [ %2389, %2383 ], [ %2382, %2371 ]
  store i32 %2392, ptr %2345, align 4, !tbaa !26
  %2393 = icmp sgt i32 %2392, 8
  br i1 %2393, label %2394, label %2418

2394:                                             ; preds = %2390
  %2395 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2396 = load i64, ptr %2395, align 8, !tbaa !32
  %2397 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2396, i64 1), !nosanitize !33
  %2398 = extractvalue { i64, i1 } %2397, 1, !nosanitize !33
  br i1 %2398, label %2399, label %2400, !prof !34, !nosanitize !33

2399:                                             ; preds = %2394
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2400:                                             ; preds = %2394
  %2401 = extractvalue { i64, i1 } %2397, 0, !nosanitize !33
  %2402 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2403 = load ptr, ptr %2402, align 8, !tbaa !35
  %2404 = trunc i16 %2391 to i8
  store i64 %2401, ptr %2395, align 8, !tbaa !32
  %2405 = getelementptr inbounds nuw i8, ptr %2403, i64 %2396
  store i8 %2404, ptr %2405, align 1, !tbaa !28
  %2406 = load i64, ptr %2395, align 8, !tbaa !32
  %2407 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2406, i64 1), !nosanitize !33
  %2408 = extractvalue { i64, i1 } %2407, 1, !nosanitize !33
  br i1 %2408, label %2409, label %2410, !prof !34, !nosanitize !33

2409:                                             ; preds = %2400
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2410:                                             ; preds = %2400
  %2411 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2412 = extractvalue { i64, i1 } %2407, 0, !nosanitize !33
  %2413 = load ptr, ptr %2402, align 8, !tbaa !35
  %2414 = load i16, ptr %2411, align 8, !tbaa !25
  %2415 = lshr i16 %2414, 8
  %2416 = trunc nuw i16 %2415 to i8
  store i64 %2412, ptr %2395, align 8, !tbaa !32
  %2417 = getelementptr inbounds nuw i8, ptr %2413, i64 %2406
  store i8 %2416, ptr %2417, align 1, !tbaa !28
  br label %2432

2418:                                             ; preds = %2390
  %2419 = icmp sgt i32 %2392, 0
  br i1 %2419, label %2420, label %2432

2420:                                             ; preds = %2418
  %2421 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2422 = load i64, ptr %2421, align 8, !tbaa !32
  %2423 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2422, i64 1), !nosanitize !33
  %2424 = extractvalue { i64, i1 } %2423, 1, !nosanitize !33
  br i1 %2424, label %2425, label %2426, !prof !34, !nosanitize !33

2425:                                             ; preds = %2420
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2426:                                             ; preds = %2420
  %2427 = extractvalue { i64, i1 } %2423, 0, !nosanitize !33
  %2428 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2429 = load ptr, ptr %2428, align 8, !tbaa !35
  %2430 = trunc i16 %2391 to i8
  store i64 %2427, ptr %2421, align 8, !tbaa !32
  %2431 = getelementptr inbounds nuw i8, ptr %2429, i64 %2422
  store i8 %2430, ptr %2431, align 1, !tbaa !28
  br label %2432

2432:                                             ; preds = %2426, %2418, %2410
  %2433 = load i32, ptr %2345, align 4, !tbaa !26
  %2434 = add i32 %2433, 7
  %2435 = and i32 %2434, 7
  %2436 = add nuw nsw i32 %2435, 1
  %2437 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %2436, ptr %2437, align 8, !tbaa !27
  %2438 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %2438, align 8, !tbaa !25
  store i32 0, ptr %2345, align 4, !tbaa !26
  %2439 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2440 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2441 = load i64, ptr %2440, align 8, !tbaa !32
  %2442 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2441, i64 1), !nosanitize !33
  %2443 = extractvalue { i64, i1 } %2442, 1, !nosanitize !33
  br i1 %2443, label %2444, label %2445, !prof !34, !nosanitize !33

2444:                                             ; preds = %2432
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2445:                                             ; preds = %2432
  %2446 = extractvalue { i64, i1 } %2442, 0, !nosanitize !33
  %2447 = load ptr, ptr %2439, align 8, !tbaa !35
  %2448 = trunc i64 %2 to i8
  store i64 %2446, ptr %2440, align 8, !tbaa !32
  %2449 = getelementptr inbounds nuw i8, ptr %2447, i64 %2441
  store i8 %2448, ptr %2449, align 1, !tbaa !28
  %2450 = load i64, ptr %2440, align 8, !tbaa !32
  %2451 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2450, i64 1), !nosanitize !33
  %2452 = extractvalue { i64, i1 } %2451, 1, !nosanitize !33
  br i1 %2452, label %2453, label %2454, !prof !34, !nosanitize !33

2453:                                             ; preds = %2445
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2454:                                             ; preds = %2445
  %2455 = extractvalue { i64, i1 } %2451, 0, !nosanitize !33
  %2456 = load ptr, ptr %2439, align 8, !tbaa !35
  %2457 = lshr i64 %2, 8
  %2458 = trunc i64 %2457 to i8
  store i64 %2455, ptr %2440, align 8, !tbaa !32
  %2459 = getelementptr inbounds nuw i8, ptr %2456, i64 %2450
  store i8 %2458, ptr %2459, align 1, !tbaa !28
  %2460 = load i64, ptr %2440, align 8, !tbaa !32
  %2461 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2460, i64 1), !nosanitize !33
  %2462 = extractvalue { i64, i1 } %2461, 1, !nosanitize !33
  br i1 %2462, label %2463, label %2464, !prof !34, !nosanitize !33

2463:                                             ; preds = %2454
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2464:                                             ; preds = %2454
  %2465 = extractvalue { i64, i1 } %2461, 0, !nosanitize !33
  %2466 = load ptr, ptr %2439, align 8, !tbaa !35
  %2467 = trunc i64 %2 to i32
  %2468 = xor i32 %2467, 65535
  %2469 = trunc i32 %2468 to i8
  store i64 %2465, ptr %2440, align 8, !tbaa !32
  %2470 = getelementptr inbounds nuw i8, ptr %2466, i64 %2460
  store i8 %2469, ptr %2470, align 1, !tbaa !28
  %2471 = load i64, ptr %2440, align 8, !tbaa !32
  %2472 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2471, i64 1), !nosanitize !33
  %2473 = extractvalue { i64, i1 } %2472, 1, !nosanitize !33
  br i1 %2473, label %2474, label %2475, !prof !34, !nosanitize !33

2474:                                             ; preds = %2464
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2475:                                             ; preds = %2464
  %2476 = extractvalue { i64, i1 } %2472, 0, !nosanitize !33
  %2477 = load ptr, ptr %2439, align 8, !tbaa !35
  %2478 = lshr i32 %2468, 8
  %2479 = trunc i32 %2478 to i8
  store i64 %2476, ptr %2440, align 8, !tbaa !32
  %2480 = getelementptr inbounds nuw i8, ptr %2477, i64 %2471
  store i8 %2479, ptr %2480, align 1, !tbaa !28
  %2481 = icmp eq i64 %2, 0
  br i1 %2481, label %2486, label %2482

2482:                                             ; preds = %2475
  %2483 = load ptr, ptr %2439, align 8, !tbaa !35
  %2484 = load i64, ptr %2440, align 8, !tbaa !32
  %2485 = getelementptr inbounds nuw i8, ptr %2483, i64 %2484
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2485, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %2486

2486:                                             ; preds = %2482, %2475
  %2487 = load i64, ptr %2440, align 8, !tbaa !32
  %2488 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2487, i64 %2), !nosanitize !33
  %2489 = extractvalue { i64, i1 } %2488, 1, !nosanitize !33
  br i1 %2489, label %2490, label %2491, !prof !34, !nosanitize !33

2490:                                             ; preds = %2486
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2491:                                             ; preds = %2486
  %2492 = extractvalue { i64, i1 } %2488, 0, !nosanitize !33
  store i64 %2492, ptr %2440, align 8, !tbaa !32
  br label %4231

2493:                                             ; preds = %2340
  br i1 %2335, label %2494, label %2861

2494:                                             ; preds = %2493
  %2495 = add i32 %3, 2
  br i1 %2347, label %2496, label %2530

2496:                                             ; preds = %2494
  %2497 = and i32 %2495, 65535
  %2498 = shl i32 %2495, %2346
  %2499 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2500 = load i16, ptr %2499, align 8, !tbaa !25
  %2501 = trunc i32 %2498 to i16
  %2502 = or i16 %2500, %2501
  store i16 %2502, ptr %2499, align 8, !tbaa !25
  %2503 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2504 = load i64, ptr %2503, align 8, !tbaa !32
  %2505 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2504, i64 1), !nosanitize !33
  %2506 = extractvalue { i64, i1 } %2505, 1, !nosanitize !33
  br i1 %2506, label %2507, label %2508, !prof !34, !nosanitize !33

2507:                                             ; preds = %2496
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2508:                                             ; preds = %2496
  %2509 = extractvalue { i64, i1 } %2505, 0, !nosanitize !33
  %2510 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2511 = load ptr, ptr %2510, align 8, !tbaa !35
  %2512 = trunc i16 %2502 to i8
  store i64 %2509, ptr %2503, align 8, !tbaa !32
  %2513 = getelementptr inbounds nuw i8, ptr %2511, i64 %2504
  store i8 %2512, ptr %2513, align 1, !tbaa !28
  %2514 = load i64, ptr %2503, align 8, !tbaa !32
  %2515 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2514, i64 1), !nosanitize !33
  %2516 = extractvalue { i64, i1 } %2515, 1, !nosanitize !33
  br i1 %2516, label %2517, label %2518, !prof !34, !nosanitize !33

2517:                                             ; preds = %2508
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2518:                                             ; preds = %2508
  %2519 = extractvalue { i64, i1 } %2515, 0, !nosanitize !33
  %2520 = load ptr, ptr %2510, align 8, !tbaa !35
  %2521 = load i16, ptr %2499, align 8, !tbaa !25
  %2522 = lshr i16 %2521, 8
  %2523 = trunc nuw i16 %2522 to i8
  store i64 %2519, ptr %2503, align 8, !tbaa !32
  %2524 = getelementptr inbounds nuw i8, ptr %2520, i64 %2514
  store i8 %2523, ptr %2524, align 1, !tbaa !28
  %2525 = load i32, ptr %2345, align 4, !tbaa !26
  %2526 = sub nsw i32 16, %2525
  %2527 = lshr i32 %2497, %2526
  %2528 = trunc nuw i32 %2527 to i16
  store i16 %2528, ptr %2499, align 8, !tbaa !25
  %2529 = add nsw i32 %2525, -13
  br label %2537

2530:                                             ; preds = %2494
  %2531 = shl i32 %2495, %2346
  %2532 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2533 = load i16, ptr %2532, align 8, !tbaa !25
  %2534 = trunc i32 %2531 to i16
  %2535 = or i16 %2533, %2534
  store i16 %2535, ptr %2532, align 8, !tbaa !25
  %2536 = add nsw i32 %2346, 3
  br label %2537

2537:                                             ; preds = %2530, %2518
  %2538 = phi i16 [ %2535, %2530 ], [ %2528, %2518 ]
  %2539 = phi i32 [ %2536, %2530 ], [ %2529, %2518 ]
  store i32 %2539, ptr %2345, align 4, !tbaa !26
  %2540 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %2541 = load i32, ptr %2540, align 4, !tbaa !31
  %2542 = icmp eq i32 %2541, 0
  br i1 %2542, label %2827, label %2543

2543:                                             ; preds = %2537
  %2544 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %2545 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2546 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2547 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %2548

2548:                                             ; preds = %2822, %2543
  %2549 = phi i16 [ %2823, %2822 ], [ %2538, %2543 ]
  %2550 = phi i32 [ %2824, %2822 ], [ %2539, %2543 ]
  %2551 = phi i32 [ %2570, %2822 ], [ 0, %2543 ]
  %2552 = load ptr, ptr %2544, align 8, !tbaa !77
  %2553 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2551, i32 2)
  %2554 = extractvalue { i32, i1 } %2553, 0, !nosanitize !33
  %2555 = extractvalue { i32, i1 } %2553, 1, !nosanitize !33
  br i1 %2555, label %2556, label %2557, !prof !34, !nosanitize !33

2556:                                             ; preds = %2548
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2557:                                             ; preds = %2548
  %2558 = add nuw i32 %2551, 1
  %2559 = zext i32 %2551 to i64
  %2560 = getelementptr inbounds nuw i8, ptr %2552, i64 %2559
  %2561 = load i8, ptr %2560, align 1, !tbaa !28
  %2562 = zext i8 %2561 to i32
  %2563 = zext i32 %2558 to i64
  %2564 = getelementptr inbounds nuw i8, ptr %2552, i64 %2563
  %2565 = load i8, ptr %2564, align 1, !tbaa !28
  %2566 = zext i8 %2565 to i32
  %2567 = shl nuw nsw i32 %2566, 8
  %2568 = or disjoint i32 %2567, %2562
  %2569 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2554, i32 1), !nosanitize !33
  %2570 = extractvalue { i32, i1 } %2569, 0, !nosanitize !33
  %2571 = extractvalue { i32, i1 } %2569, 1, !nosanitize !33
  br i1 %2571, label %2572, label %2573, !prof !34, !nosanitize !33

2572:                                             ; preds = %2557
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2573:                                             ; preds = %2557
  %2574 = zext i32 %2554 to i64
  %2575 = getelementptr inbounds nuw i8, ptr %2552, i64 %2574
  %2576 = load i8, ptr %2575, align 1, !tbaa !28
  %2577 = zext i8 %2576 to i32
  %2578 = icmp eq i32 %2568, 0
  %2579 = zext i8 %2576 to i64
  br i1 %2578, label %2580, label %2621

2580:                                             ; preds = %2573
  %2581 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2579
  %2582 = getelementptr inbounds nuw i8, ptr %2581, i64 2
  %2583 = load i16, ptr %2582, align 2, !tbaa !28
  %2584 = zext i16 %2583 to i32
  %2585 = sub nsw i32 16, %2584
  %2586 = icmp sgt i32 %2550, %2585
  %2587 = load i16, ptr %2581, align 4, !tbaa !28
  %2588 = zext i16 %2587 to i32
  %2589 = shl i32 %2588, %2550
  %2590 = trunc i32 %2589 to i16
  %2591 = or i16 %2549, %2590
  store i16 %2591, ptr %2545, align 8, !tbaa !25
  br i1 %2586, label %2592, label %2619

2592:                                             ; preds = %2580
  %2593 = load i64, ptr %2546, align 8, !tbaa !32
  %2594 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2593, i64 1), !nosanitize !33
  %2595 = extractvalue { i64, i1 } %2594, 1, !nosanitize !33
  br i1 %2595, label %2596, label %2597, !prof !34, !nosanitize !33

2596:                                             ; preds = %2592
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2597:                                             ; preds = %2592
  %2598 = extractvalue { i64, i1 } %2594, 0, !nosanitize !33
  %2599 = load ptr, ptr %2547, align 8, !tbaa !35
  %2600 = trunc i16 %2591 to i8
  store i64 %2598, ptr %2546, align 8, !tbaa !32
  %2601 = getelementptr inbounds nuw i8, ptr %2599, i64 %2593
  store i8 %2600, ptr %2601, align 1, !tbaa !28
  %2602 = load i64, ptr %2546, align 8, !tbaa !32
  %2603 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2602, i64 1), !nosanitize !33
  %2604 = extractvalue { i64, i1 } %2603, 1, !nosanitize !33
  br i1 %2604, label %2605, label %2606, !prof !34, !nosanitize !33

2605:                                             ; preds = %2597
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2606:                                             ; preds = %2597
  %2607 = extractvalue { i64, i1 } %2603, 0, !nosanitize !33
  %2608 = load ptr, ptr %2547, align 8, !tbaa !35
  %2609 = load i16, ptr %2545, align 8, !tbaa !25
  %2610 = lshr i16 %2609, 8
  %2611 = trunc nuw i16 %2610 to i8
  store i64 %2607, ptr %2546, align 8, !tbaa !32
  %2612 = getelementptr inbounds nuw i8, ptr %2608, i64 %2602
  store i8 %2611, ptr %2612, align 1, !tbaa !28
  %2613 = load i32, ptr %2345, align 4, !tbaa !26
  %2614 = sub nsw i32 16, %2613
  %2615 = lshr i32 %2588, %2614
  %2616 = trunc nuw i32 %2615 to i16
  store i16 %2616, ptr %2545, align 8, !tbaa !25
  %2617 = add nsw i32 %2584, -16
  %2618 = add nsw i32 %2617, %2613
  br label %2819

2619:                                             ; preds = %2580
  %2620 = add nsw i32 %2550, %2584
  br label %2819

2621:                                             ; preds = %2573
  %2622 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %2579
  %2623 = load i8, ptr %2622, align 1, !tbaa !28
  %2624 = zext i8 %2623 to i64
  %2625 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2624
  %2626 = getelementptr inbounds nuw i8, ptr %2625, i64 1028
  %2627 = getelementptr inbounds nuw i8, ptr %2625, i64 1030
  %2628 = load i16, ptr %2627, align 2, !tbaa !28
  %2629 = zext i16 %2628 to i32
  %2630 = sub nsw i32 16, %2629
  %2631 = icmp sgt i32 %2550, %2630
  %2632 = load i16, ptr %2626, align 4, !tbaa !28
  %2633 = zext i16 %2632 to i32
  %2634 = shl i32 %2633, %2550
  %2635 = trunc i32 %2634 to i16
  %2636 = or i16 %2549, %2635
  store i16 %2636, ptr %2545, align 8, !tbaa !25
  br i1 %2631, label %2637, label %2664

2637:                                             ; preds = %2621
  %2638 = load i64, ptr %2546, align 8, !tbaa !32
  %2639 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2638, i64 1), !nosanitize !33
  %2640 = extractvalue { i64, i1 } %2639, 1, !nosanitize !33
  br i1 %2640, label %2641, label %2642, !prof !34, !nosanitize !33

2641:                                             ; preds = %2637
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2642:                                             ; preds = %2637
  %2643 = extractvalue { i64, i1 } %2639, 0, !nosanitize !33
  %2644 = load ptr, ptr %2547, align 8, !tbaa !35
  %2645 = trunc i16 %2636 to i8
  store i64 %2643, ptr %2546, align 8, !tbaa !32
  %2646 = getelementptr inbounds nuw i8, ptr %2644, i64 %2638
  store i8 %2645, ptr %2646, align 1, !tbaa !28
  %2647 = load i64, ptr %2546, align 8, !tbaa !32
  %2648 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2647, i64 1), !nosanitize !33
  %2649 = extractvalue { i64, i1 } %2648, 1, !nosanitize !33
  br i1 %2649, label %2650, label %2651, !prof !34, !nosanitize !33

2650:                                             ; preds = %2642
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2651:                                             ; preds = %2642
  %2652 = extractvalue { i64, i1 } %2648, 0, !nosanitize !33
  %2653 = load ptr, ptr %2547, align 8, !tbaa !35
  %2654 = load i16, ptr %2545, align 8, !tbaa !25
  %2655 = lshr i16 %2654, 8
  %2656 = trunc nuw i16 %2655 to i8
  store i64 %2652, ptr %2546, align 8, !tbaa !32
  %2657 = getelementptr inbounds nuw i8, ptr %2653, i64 %2647
  store i8 %2656, ptr %2657, align 1, !tbaa !28
  %2658 = load i32, ptr %2345, align 4, !tbaa !26
  %2659 = sub nsw i32 16, %2658
  %2660 = lshr i32 %2633, %2659
  %2661 = trunc nuw i32 %2660 to i16
  store i16 %2661, ptr %2545, align 8, !tbaa !25
  %2662 = add nsw i32 %2629, -16
  %2663 = add nsw i32 %2662, %2658
  br label %2666

2664:                                             ; preds = %2621
  %2665 = add nsw i32 %2550, %2629
  br label %2666

2666:                                             ; preds = %2664, %2651
  %2667 = phi i16 [ %2636, %2664 ], [ %2661, %2651 ]
  %2668 = phi i32 [ %2665, %2664 ], [ %2663, %2651 ]
  store i32 %2668, ptr %2345, align 4, !tbaa !26
  %2669 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %2624
  %2670 = load i32, ptr %2669, align 4, !tbaa !4
  %2671 = add i8 %2623, -28
  %2672 = icmp ult i8 %2671, -20
  br i1 %2672, label %2718, label %2673

2673:                                             ; preds = %2666
  %2674 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %2624
  %2675 = load i32, ptr %2674, align 4, !tbaa !4
  %2676 = sub nsw i32 %2577, %2675
  %2677 = sub nsw i32 16, %2670
  %2678 = icmp sgt i32 %2668, %2677
  br i1 %2678, label %2679, label %2710

2679:                                             ; preds = %2673
  %2680 = and i32 %2676, 65535
  %2681 = shl i32 %2676, %2668
  %2682 = trunc i32 %2681 to i16
  %2683 = or i16 %2667, %2682
  store i16 %2683, ptr %2545, align 8, !tbaa !25
  %2684 = load i64, ptr %2546, align 8, !tbaa !32
  %2685 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2684, i64 1), !nosanitize !33
  %2686 = extractvalue { i64, i1 } %2685, 1, !nosanitize !33
  br i1 %2686, label %2687, label %2688, !prof !34, !nosanitize !33

2687:                                             ; preds = %2679
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2688:                                             ; preds = %2679
  %2689 = extractvalue { i64, i1 } %2685, 0, !nosanitize !33
  %2690 = load ptr, ptr %2547, align 8, !tbaa !35
  %2691 = trunc i16 %2683 to i8
  store i64 %2689, ptr %2546, align 8, !tbaa !32
  %2692 = getelementptr inbounds nuw i8, ptr %2690, i64 %2684
  store i8 %2691, ptr %2692, align 1, !tbaa !28
  %2693 = load i64, ptr %2546, align 8, !tbaa !32
  %2694 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2693, i64 1), !nosanitize !33
  %2695 = extractvalue { i64, i1 } %2694, 1, !nosanitize !33
  br i1 %2695, label %2696, label %2697, !prof !34, !nosanitize !33

2696:                                             ; preds = %2688
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2697:                                             ; preds = %2688
  %2698 = extractvalue { i64, i1 } %2694, 0, !nosanitize !33
  %2699 = load ptr, ptr %2547, align 8, !tbaa !35
  %2700 = load i16, ptr %2545, align 8, !tbaa !25
  %2701 = lshr i16 %2700, 8
  %2702 = trunc nuw i16 %2701 to i8
  store i64 %2698, ptr %2546, align 8, !tbaa !32
  %2703 = getelementptr inbounds nuw i8, ptr %2699, i64 %2693
  store i8 %2702, ptr %2703, align 1, !tbaa !28
  %2704 = load i32, ptr %2345, align 4, !tbaa !26
  %2705 = sub nsw i32 16, %2704
  %2706 = lshr i32 %2680, %2705
  %2707 = trunc nuw i32 %2706 to i16
  %2708 = add nsw i32 %2670, -16
  %2709 = add nsw i32 %2708, %2704
  br label %2715

2710:                                             ; preds = %2673
  %2711 = shl i32 %2676, %2668
  %2712 = trunc i32 %2711 to i16
  %2713 = or i16 %2667, %2712
  %2714 = add nsw i32 %2670, %2668
  br label %2715

2715:                                             ; preds = %2710, %2697
  %2716 = phi i16 [ %2713, %2710 ], [ %2707, %2697 ]
  %2717 = phi i32 [ %2714, %2710 ], [ %2709, %2697 ]
  store i32 %2717, ptr %2345, align 4, !tbaa !26
  br label %2718

2718:                                             ; preds = %2715, %2666
  %2719 = phi i16 [ %2716, %2715 ], [ %2667, %2666 ]
  %2720 = phi i32 [ %2717, %2715 ], [ %2668, %2666 ]
  %2721 = add nsw i32 %2568, -1
  %2722 = icmp samesign ult i32 %2568, 257
  %2723 = zext nneg i32 %2721 to i64
  %2724 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2723
  %2725 = lshr i32 %2721, 7
  %2726 = zext nneg i32 %2725 to i64
  %2727 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2726
  %2728 = getelementptr inbounds nuw i8, ptr %2727, i64 256
  %2729 = select i1 %2722, ptr %2724, ptr %2728
  %2730 = load i8, ptr %2729, align 1, !tbaa !28
  %2731 = zext i8 %2730 to i64
  %2732 = getelementptr inbounds nuw [4 x i8], ptr @static_dtree, i64 %2731
  %2733 = icmp sgt i32 %2720, 11
  %2734 = load i16, ptr %2732, align 4, !tbaa !28
  %2735 = zext i16 %2734 to i32
  %2736 = shl i32 %2735, %2720
  %2737 = trunc i32 %2736 to i16
  %2738 = or i16 %2719, %2737
  store i16 %2738, ptr %2545, align 8, !tbaa !25
  br i1 %2733, label %2739, label %2765

2739:                                             ; preds = %2718
  %2740 = load i64, ptr %2546, align 8, !tbaa !32
  %2741 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2740, i64 1), !nosanitize !33
  %2742 = extractvalue { i64, i1 } %2741, 1, !nosanitize !33
  br i1 %2742, label %2743, label %2744, !prof !34, !nosanitize !33

2743:                                             ; preds = %2739
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2744:                                             ; preds = %2739
  %2745 = extractvalue { i64, i1 } %2741, 0, !nosanitize !33
  %2746 = load ptr, ptr %2547, align 8, !tbaa !35
  %2747 = trunc i16 %2738 to i8
  store i64 %2745, ptr %2546, align 8, !tbaa !32
  %2748 = getelementptr inbounds nuw i8, ptr %2746, i64 %2740
  store i8 %2747, ptr %2748, align 1, !tbaa !28
  %2749 = load i64, ptr %2546, align 8, !tbaa !32
  %2750 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2749, i64 1), !nosanitize !33
  %2751 = extractvalue { i64, i1 } %2750, 1, !nosanitize !33
  br i1 %2751, label %2752, label %2753, !prof !34, !nosanitize !33

2752:                                             ; preds = %2744
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2753:                                             ; preds = %2744
  %2754 = extractvalue { i64, i1 } %2750, 0, !nosanitize !33
  %2755 = load ptr, ptr %2547, align 8, !tbaa !35
  %2756 = load i16, ptr %2545, align 8, !tbaa !25
  %2757 = lshr i16 %2756, 8
  %2758 = trunc nuw i16 %2757 to i8
  store i64 %2754, ptr %2546, align 8, !tbaa !32
  %2759 = getelementptr inbounds nuw i8, ptr %2755, i64 %2749
  store i8 %2758, ptr %2759, align 1, !tbaa !28
  %2760 = load i32, ptr %2345, align 4, !tbaa !26
  %2761 = sub nsw i32 16, %2760
  %2762 = lshr i32 %2735, %2761
  %2763 = trunc nuw i32 %2762 to i16
  store i16 %2763, ptr %2545, align 8, !tbaa !25
  %2764 = add nsw i32 %2760, -11
  br label %2767

2765:                                             ; preds = %2718
  %2766 = add nsw i32 %2720, 5
  br label %2767

2767:                                             ; preds = %2765, %2753
  %2768 = phi i16 [ %2738, %2765 ], [ %2763, %2753 ]
  %2769 = phi i32 [ %2766, %2765 ], [ %2764, %2753 ]
  store i32 %2769, ptr %2345, align 4, !tbaa !26
  %2770 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %2731
  %2771 = load i32, ptr %2770, align 4, !tbaa !4
  %2772 = icmp ult i8 %2730, 4
  br i1 %2772, label %2822, label %2773

2773:                                             ; preds = %2767
  %2774 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %2731
  %2775 = load i32, ptr %2774, align 4, !tbaa !4
  %2776 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2721, i32 %2775), !nosanitize !33
  %2777 = extractvalue { i32, i1 } %2776, 0, !nosanitize !33
  %2778 = extractvalue { i32, i1 } %2776, 1, !nosanitize !33
  br i1 %2778, label %2779, label %2780, !prof !34, !nosanitize !33

2779:                                             ; preds = %2773
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !33
  unreachable, !nosanitize !33

2780:                                             ; preds = %2773
  %2781 = sub nsw i32 16, %2771
  %2782 = icmp sgt i32 %2769, %2781
  br i1 %2782, label %2783, label %2814

2783:                                             ; preds = %2780
  %2784 = and i32 %2777, 65535
  %2785 = shl i32 %2777, %2769
  %2786 = trunc i32 %2785 to i16
  %2787 = or i16 %2768, %2786
  store i16 %2787, ptr %2545, align 8, !tbaa !25
  %2788 = load i64, ptr %2546, align 8, !tbaa !32
  %2789 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2788, i64 1), !nosanitize !33
  %2790 = extractvalue { i64, i1 } %2789, 1, !nosanitize !33
  br i1 %2790, label %2791, label %2792, !prof !34, !nosanitize !33

2791:                                             ; preds = %2783
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2792:                                             ; preds = %2783
  %2793 = extractvalue { i64, i1 } %2789, 0, !nosanitize !33
  %2794 = load ptr, ptr %2547, align 8, !tbaa !35
  %2795 = trunc i16 %2787 to i8
  store i64 %2793, ptr %2546, align 8, !tbaa !32
  %2796 = getelementptr inbounds nuw i8, ptr %2794, i64 %2788
  store i8 %2795, ptr %2796, align 1, !tbaa !28
  %2797 = load i64, ptr %2546, align 8, !tbaa !32
  %2798 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2797, i64 1), !nosanitize !33
  %2799 = extractvalue { i64, i1 } %2798, 1, !nosanitize !33
  br i1 %2799, label %2800, label %2801, !prof !34, !nosanitize !33

2800:                                             ; preds = %2792
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2801:                                             ; preds = %2792
  %2802 = extractvalue { i64, i1 } %2798, 0, !nosanitize !33
  %2803 = load ptr, ptr %2547, align 8, !tbaa !35
  %2804 = load i16, ptr %2545, align 8, !tbaa !25
  %2805 = lshr i16 %2804, 8
  %2806 = trunc nuw i16 %2805 to i8
  store i64 %2802, ptr %2546, align 8, !tbaa !32
  %2807 = getelementptr inbounds nuw i8, ptr %2803, i64 %2797
  store i8 %2806, ptr %2807, align 1, !tbaa !28
  %2808 = load i32, ptr %2345, align 4, !tbaa !26
  %2809 = sub nsw i32 16, %2808
  %2810 = lshr i32 %2784, %2809
  %2811 = trunc nuw i32 %2810 to i16
  store i16 %2811, ptr %2545, align 8, !tbaa !25
  %2812 = add nsw i32 %2771, -16
  %2813 = add nsw i32 %2812, %2808
  br label %2819

2814:                                             ; preds = %2780
  %2815 = shl i32 %2777, %2769
  %2816 = trunc i32 %2815 to i16
  %2817 = or i16 %2768, %2816
  store i16 %2817, ptr %2545, align 8, !tbaa !25
  %2818 = add nsw i32 %2771, %2769
  br label %2819

2819:                                             ; preds = %2814, %2801, %2619, %2606
  %2820 = phi i16 [ %2616, %2606 ], [ %2591, %2619 ], [ %2817, %2814 ], [ %2811, %2801 ]
  %2821 = phi i32 [ %2618, %2606 ], [ %2620, %2619 ], [ %2818, %2814 ], [ %2813, %2801 ]
  store i32 %2821, ptr %2345, align 4, !tbaa !26
  br label %2822

2822:                                             ; preds = %2819, %2767
  %2823 = phi i16 [ %2768, %2767 ], [ %2820, %2819 ]
  %2824 = phi i32 [ %2769, %2767 ], [ %2821, %2819 ]
  %2825 = load i32, ptr %2540, align 4, !tbaa !31
  %2826 = icmp ult i32 %2570, %2825
  br i1 %2826, label %2548, label %2827, !llvm.loop !78

2827:                                             ; preds = %2822, %2537
  %2828 = phi i16 [ %2538, %2537 ], [ %2823, %2822 ]
  %2829 = phi i32 [ %2539, %2537 ], [ %2824, %2822 ]
  %2830 = icmp sgt i32 %2829, 9
  %2831 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %2830, label %2832, label %2857

2832:                                             ; preds = %2827
  %2833 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2834 = load i64, ptr %2833, align 8, !tbaa !32
  %2835 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2834, i64 1), !nosanitize !33
  %2836 = extractvalue { i64, i1 } %2835, 1, !nosanitize !33
  br i1 %2836, label %2837, label %2838, !prof !34, !nosanitize !33

2837:                                             ; preds = %2832
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2838:                                             ; preds = %2832
  %2839 = extractvalue { i64, i1 } %2835, 0, !nosanitize !33
  %2840 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2841 = load ptr, ptr %2840, align 8, !tbaa !35
  %2842 = trunc i16 %2828 to i8
  store i64 %2839, ptr %2833, align 8, !tbaa !32
  %2843 = getelementptr inbounds nuw i8, ptr %2841, i64 %2834
  store i8 %2842, ptr %2843, align 1, !tbaa !28
  %2844 = load i64, ptr %2833, align 8, !tbaa !32
  %2845 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2844, i64 1), !nosanitize !33
  %2846 = extractvalue { i64, i1 } %2845, 1, !nosanitize !33
  br i1 %2846, label %2847, label %2848, !prof !34, !nosanitize !33

2847:                                             ; preds = %2838
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2848:                                             ; preds = %2838
  %2849 = extractvalue { i64, i1 } %2845, 0, !nosanitize !33
  %2850 = load ptr, ptr %2840, align 8, !tbaa !35
  %2851 = load i16, ptr %2831, align 8, !tbaa !25
  %2852 = lshr i16 %2851, 8
  %2853 = trunc nuw i16 %2852 to i8
  store i64 %2849, ptr %2833, align 8, !tbaa !32
  %2854 = getelementptr inbounds nuw i8, ptr %2850, i64 %2844
  store i8 %2853, ptr %2854, align 1, !tbaa !28
  %2855 = load i32, ptr %2345, align 4, !tbaa !26
  store i16 0, ptr %2831, align 8, !tbaa !25
  %2856 = add nsw i32 %2855, -9
  br label %2859

2857:                                             ; preds = %2827
  %2858 = add nsw i32 %2829, 7
  br label %2859

2859:                                             ; preds = %2857, %2848
  %2860 = phi i32 [ %2858, %2857 ], [ %2856, %2848 ]
  store i32 %2860, ptr %2345, align 4, !tbaa !26
  br label %4231

2861:                                             ; preds = %2493
  %2862 = add i32 %3, 4
  br i1 %2347, label %2863, label %2897

2863:                                             ; preds = %2861
  %2864 = and i32 %2862, 65535
  %2865 = shl i32 %2862, %2346
  %2866 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2867 = load i16, ptr %2866, align 8, !tbaa !25
  %2868 = trunc i32 %2865 to i16
  %2869 = or i16 %2867, %2868
  store i16 %2869, ptr %2866, align 8, !tbaa !25
  %2870 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2871 = load i64, ptr %2870, align 8, !tbaa !32
  %2872 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2871, i64 1), !nosanitize !33
  %2873 = extractvalue { i64, i1 } %2872, 1, !nosanitize !33
  br i1 %2873, label %2874, label %2875, !prof !34, !nosanitize !33

2874:                                             ; preds = %2863
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2875:                                             ; preds = %2863
  %2876 = extractvalue { i64, i1 } %2872, 0, !nosanitize !33
  %2877 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2878 = load ptr, ptr %2877, align 8, !tbaa !35
  %2879 = trunc i16 %2869 to i8
  store i64 %2876, ptr %2870, align 8, !tbaa !32
  %2880 = getelementptr inbounds nuw i8, ptr %2878, i64 %2871
  store i8 %2879, ptr %2880, align 1, !tbaa !28
  %2881 = load i64, ptr %2870, align 8, !tbaa !32
  %2882 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2881, i64 1), !nosanitize !33
  %2883 = extractvalue { i64, i1 } %2882, 1, !nosanitize !33
  br i1 %2883, label %2884, label %2885, !prof !34, !nosanitize !33

2884:                                             ; preds = %2875
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2885:                                             ; preds = %2875
  %2886 = extractvalue { i64, i1 } %2882, 0, !nosanitize !33
  %2887 = load ptr, ptr %2877, align 8, !tbaa !35
  %2888 = load i16, ptr %2866, align 8, !tbaa !25
  %2889 = lshr i16 %2888, 8
  %2890 = trunc nuw i16 %2889 to i8
  store i64 %2886, ptr %2870, align 8, !tbaa !32
  %2891 = getelementptr inbounds nuw i8, ptr %2887, i64 %2881
  store i8 %2890, ptr %2891, align 1, !tbaa !28
  %2892 = load i32, ptr %2345, align 4, !tbaa !26
  %2893 = sub nsw i32 16, %2892
  %2894 = lshr i32 %2864, %2893
  %2895 = trunc nuw i32 %2894 to i16
  store i16 %2895, ptr %2866, align 8, !tbaa !25
  %2896 = add nsw i32 %2892, -13
  br label %2904

2897:                                             ; preds = %2861
  %2898 = shl i32 %2862, %2346
  %2899 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2900 = load i16, ptr %2899, align 8, !tbaa !25
  %2901 = trunc i32 %2898 to i16
  %2902 = or i16 %2900, %2901
  store i16 %2902, ptr %2899, align 8, !tbaa !25
  %2903 = add nsw i32 %2346, 3
  br label %2904

2904:                                             ; preds = %2897, %2885
  %2905 = phi i16 [ %2902, %2897 ], [ %2895, %2885 ]
  %2906 = phi i32 [ %2903, %2897 ], [ %2896, %2885 ]
  store i32 %2906, ptr %2345, align 4, !tbaa !26
  %2907 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %2908 = load i32, ptr %2907, align 8, !tbaa !72
  %2909 = add nsw i32 %2908, 1
  %2910 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %2911 = load i32, ptr %2910, align 8, !tbaa !74
  %2912 = add nsw i32 %2911, 1
  %2913 = add nuw nsw i32 %2334, 1
  %2914 = icmp sgt i32 %2906, 11
  %2915 = add i32 %2908, 65280
  br i1 %2914, label %2916, label %2949

2916:                                             ; preds = %2904
  %2917 = and i32 %2915, 65535
  %2918 = shl i32 %2915, %2906
  %2919 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2920 = trunc i32 %2918 to i16
  %2921 = or i16 %2905, %2920
  store i16 %2921, ptr %2919, align 8, !tbaa !25
  %2922 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2923 = load i64, ptr %2922, align 8, !tbaa !32
  %2924 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2923, i64 1), !nosanitize !33
  %2925 = extractvalue { i64, i1 } %2924, 1, !nosanitize !33
  br i1 %2925, label %2926, label %2927, !prof !34, !nosanitize !33

2926:                                             ; preds = %2916
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2927:                                             ; preds = %2916
  %2928 = extractvalue { i64, i1 } %2924, 0, !nosanitize !33
  %2929 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2930 = load ptr, ptr %2929, align 8, !tbaa !35
  %2931 = trunc i16 %2921 to i8
  store i64 %2928, ptr %2922, align 8, !tbaa !32
  %2932 = getelementptr inbounds nuw i8, ptr %2930, i64 %2923
  store i8 %2931, ptr %2932, align 1, !tbaa !28
  %2933 = load i64, ptr %2922, align 8, !tbaa !32
  %2934 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2933, i64 1), !nosanitize !33
  %2935 = extractvalue { i64, i1 } %2934, 1, !nosanitize !33
  br i1 %2935, label %2936, label %2937, !prof !34, !nosanitize !33

2936:                                             ; preds = %2927
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2937:                                             ; preds = %2927
  %2938 = extractvalue { i64, i1 } %2934, 0, !nosanitize !33
  %2939 = load ptr, ptr %2929, align 8, !tbaa !35
  %2940 = load i16, ptr %2919, align 8, !tbaa !25
  %2941 = lshr i16 %2940, 8
  %2942 = trunc nuw i16 %2941 to i8
  store i64 %2938, ptr %2922, align 8, !tbaa !32
  %2943 = getelementptr inbounds nuw i8, ptr %2939, i64 %2933
  store i8 %2942, ptr %2943, align 1, !tbaa !28
  %2944 = load i32, ptr %2345, align 4, !tbaa !26
  %2945 = sub nsw i32 16, %2944
  %2946 = lshr i32 %2917, %2945
  %2947 = trunc nuw i32 %2946 to i16
  store i16 %2947, ptr %2919, align 8, !tbaa !25
  %2948 = add nsw i32 %2944, -11
  br label %2955

2949:                                             ; preds = %2904
  %2950 = shl i32 %2915, %2906
  %2951 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2952 = trunc i32 %2950 to i16
  %2953 = or i16 %2905, %2952
  store i16 %2953, ptr %2951, align 8, !tbaa !25
  %2954 = add nsw i32 %2906, 5
  br label %2955

2955:                                             ; preds = %2949, %2937
  %2956 = phi i16 [ %2953, %2949 ], [ %2947, %2937 ]
  %2957 = phi i32 [ %2954, %2949 ], [ %2948, %2937 ]
  store i32 %2957, ptr %2345, align 4, !tbaa !26
  %2958 = icmp sgt i32 %2957, 11
  br i1 %2958, label %2959, label %2992

2959:                                             ; preds = %2955
  %2960 = and i32 %2911, 65535
  %2961 = shl i32 %2911, %2957
  %2962 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2963 = trunc i32 %2961 to i16
  %2964 = or i16 %2956, %2963
  store i16 %2964, ptr %2962, align 8, !tbaa !25
  %2965 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2966 = load i64, ptr %2965, align 8, !tbaa !32
  %2967 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2966, i64 1), !nosanitize !33
  %2968 = extractvalue { i64, i1 } %2967, 1, !nosanitize !33
  br i1 %2968, label %2969, label %2970, !prof !34, !nosanitize !33

2969:                                             ; preds = %2959
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2970:                                             ; preds = %2959
  %2971 = extractvalue { i64, i1 } %2967, 0, !nosanitize !33
  %2972 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2973 = load ptr, ptr %2972, align 8, !tbaa !35
  %2974 = trunc i16 %2964 to i8
  store i64 %2971, ptr %2965, align 8, !tbaa !32
  %2975 = getelementptr inbounds nuw i8, ptr %2973, i64 %2966
  store i8 %2974, ptr %2975, align 1, !tbaa !28
  %2976 = load i64, ptr %2965, align 8, !tbaa !32
  %2977 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2976, i64 1), !nosanitize !33
  %2978 = extractvalue { i64, i1 } %2977, 1, !nosanitize !33
  br i1 %2978, label %2979, label %2980, !prof !34, !nosanitize !33

2979:                                             ; preds = %2970
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

2980:                                             ; preds = %2970
  %2981 = extractvalue { i64, i1 } %2977, 0, !nosanitize !33
  %2982 = load ptr, ptr %2972, align 8, !tbaa !35
  %2983 = load i16, ptr %2962, align 8, !tbaa !25
  %2984 = lshr i16 %2983, 8
  %2985 = trunc nuw i16 %2984 to i8
  store i64 %2981, ptr %2965, align 8, !tbaa !32
  %2986 = getelementptr inbounds nuw i8, ptr %2982, i64 %2976
  store i8 %2985, ptr %2986, align 1, !tbaa !28
  %2987 = load i32, ptr %2345, align 4, !tbaa !26
  %2988 = sub nsw i32 16, %2987
  %2989 = lshr i32 %2960, %2988
  %2990 = trunc nuw i32 %2989 to i16
  store i16 %2990, ptr %2962, align 8, !tbaa !25
  %2991 = add nsw i32 %2987, -11
  br label %2998

2992:                                             ; preds = %2955
  %2993 = shl i32 %2911, %2957
  %2994 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2995 = trunc i32 %2993 to i16
  %2996 = or i16 %2956, %2995
  store i16 %2996, ptr %2994, align 8, !tbaa !25
  %2997 = add nsw i32 %2957, 5
  br label %2998

2998:                                             ; preds = %2992, %2980
  %2999 = phi i16 [ %2996, %2992 ], [ %2990, %2980 ]
  %3000 = phi i32 [ %2997, %2992 ], [ %2991, %2980 ]
  store i32 %3000, ptr %2345, align 4, !tbaa !26
  %3001 = icmp sgt i32 %3000, 12
  %3002 = add nuw nsw i32 %2334, 65533
  br i1 %3001, label %3003, label %3036

3003:                                             ; preds = %2998
  %3004 = and i32 %3002, 65535
  %3005 = shl i32 %3002, %3000
  %3006 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3007 = trunc i32 %3005 to i16
  %3008 = or i16 %2999, %3007
  store i16 %3008, ptr %3006, align 8, !tbaa !25
  %3009 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3010 = load i64, ptr %3009, align 8, !tbaa !32
  %3011 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3010, i64 1), !nosanitize !33
  %3012 = extractvalue { i64, i1 } %3011, 1, !nosanitize !33
  br i1 %3012, label %3013, label %3014, !prof !34, !nosanitize !33

3013:                                             ; preds = %3003
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3014:                                             ; preds = %3003
  %3015 = extractvalue { i64, i1 } %3011, 0, !nosanitize !33
  %3016 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3017 = load ptr, ptr %3016, align 8, !tbaa !35
  %3018 = trunc i16 %3008 to i8
  store i64 %3015, ptr %3009, align 8, !tbaa !32
  %3019 = getelementptr inbounds nuw i8, ptr %3017, i64 %3010
  store i8 %3018, ptr %3019, align 1, !tbaa !28
  %3020 = load i64, ptr %3009, align 8, !tbaa !32
  %3021 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3020, i64 1), !nosanitize !33
  %3022 = extractvalue { i64, i1 } %3021, 1, !nosanitize !33
  br i1 %3022, label %3023, label %3024, !prof !34, !nosanitize !33

3023:                                             ; preds = %3014
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3024:                                             ; preds = %3014
  %3025 = extractvalue { i64, i1 } %3021, 0, !nosanitize !33
  %3026 = load ptr, ptr %3016, align 8, !tbaa !35
  %3027 = load i16, ptr %3006, align 8, !tbaa !25
  %3028 = lshr i16 %3027, 8
  %3029 = trunc nuw i16 %3028 to i8
  store i64 %3025, ptr %3009, align 8, !tbaa !32
  %3030 = getelementptr inbounds nuw i8, ptr %3026, i64 %3020
  store i8 %3029, ptr %3030, align 1, !tbaa !28
  %3031 = load i32, ptr %2345, align 4, !tbaa !26
  %3032 = sub nsw i32 16, %3031
  %3033 = lshr i32 %3004, %3032
  %3034 = trunc nuw i32 %3033 to i16
  %3035 = add nsw i32 %3031, -12
  br label %3041

3036:                                             ; preds = %2998
  %3037 = shl nuw nsw i32 %3002, %3000
  %3038 = trunc i32 %3037 to i16
  %3039 = or i16 %2999, %3038
  %3040 = add nsw i32 %3000, 4
  br label %3041

3041:                                             ; preds = %3036, %3024
  %3042 = phi i16 [ %3039, %3036 ], [ %3034, %3024 ]
  %3043 = phi i32 [ %3040, %3036 ], [ %3035, %3024 ]
  store i32 %3043, ptr %2345, align 4, !tbaa !26
  %3044 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3045 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3046 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3047 = zext nneg i32 %2913 to i64
  br label %3048

3048:                                             ; preds = %3091, %3041
  %3049 = phi i16 [ %3042, %3041 ], [ %3092, %3091 ]
  %3050 = phi i32 [ %3043, %3041 ], [ %3093, %3091 ]
  %3051 = phi i64 [ 0, %3041 ], [ %3094, %3091 ]
  %3052 = icmp sgt i32 %3050, 13
  %3053 = getelementptr inbounds nuw i8, ptr @bl_order, i64 %3051
  %3054 = load i8, ptr %3053, align 1, !tbaa !28
  %3055 = zext i8 %3054 to i64
  %3056 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3055
  %3057 = getelementptr inbounds nuw i8, ptr %3056, i64 2750
  %3058 = load i16, ptr %3057, align 2, !tbaa !28
  %3059 = zext i16 %3058 to i32
  %3060 = shl i32 %3059, %3050
  %3061 = trunc i32 %3060 to i16
  %3062 = or i16 %3049, %3061
  store i16 %3062, ptr %3044, align 8, !tbaa !25
  br i1 %3052, label %3063, label %3089

3063:                                             ; preds = %3048
  %3064 = load i64, ptr %3045, align 8, !tbaa !32
  %3065 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3064, i64 1), !nosanitize !33
  %3066 = extractvalue { i64, i1 } %3065, 1, !nosanitize !33
  br i1 %3066, label %3067, label %3068, !prof !34, !nosanitize !33

3067:                                             ; preds = %3063
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3068:                                             ; preds = %3063
  %3069 = extractvalue { i64, i1 } %3065, 0, !nosanitize !33
  %3070 = load ptr, ptr %3046, align 8, !tbaa !35
  %3071 = trunc i16 %3062 to i8
  store i64 %3069, ptr %3045, align 8, !tbaa !32
  %3072 = getelementptr inbounds nuw i8, ptr %3070, i64 %3064
  store i8 %3071, ptr %3072, align 1, !tbaa !28
  %3073 = load i64, ptr %3045, align 8, !tbaa !32
  %3074 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3073, i64 1), !nosanitize !33
  %3075 = extractvalue { i64, i1 } %3074, 1, !nosanitize !33
  br i1 %3075, label %3076, label %3077, !prof !34, !nosanitize !33

3076:                                             ; preds = %3068
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3077:                                             ; preds = %3068
  %3078 = extractvalue { i64, i1 } %3074, 0, !nosanitize !33
  %3079 = load ptr, ptr %3046, align 8, !tbaa !35
  %3080 = load i16, ptr %3044, align 8, !tbaa !25
  %3081 = lshr i16 %3080, 8
  %3082 = trunc nuw i16 %3081 to i8
  store i64 %3078, ptr %3045, align 8, !tbaa !32
  %3083 = getelementptr inbounds nuw i8, ptr %3079, i64 %3073
  store i8 %3082, ptr %3083, align 1, !tbaa !28
  %3084 = load i32, ptr %2345, align 4, !tbaa !26
  %3085 = sub nsw i32 16, %3084
  %3086 = lshr i32 %3059, %3085
  %3087 = trunc nuw i32 %3086 to i16
  store i16 %3087, ptr %3044, align 8, !tbaa !25
  %3088 = add nsw i32 %3084, -13
  br label %3091

3089:                                             ; preds = %3048
  %3090 = add nsw i32 %3050, 3
  br label %3091

3091:                                             ; preds = %3089, %3077
  %3092 = phi i16 [ %3062, %3089 ], [ %3087, %3077 ]
  %3093 = phi i32 [ %3090, %3089 ], [ %3088, %3077 ]
  store i32 %3093, ptr %2345, align 4, !tbaa !26
  %3094 = add nuw nsw i64 %3051, 1
  %3095 = icmp eq i64 %3094, %3047
  br i1 %3095, label %3096, label %3048, !llvm.loop !79

3096:                                             ; preds = %3091
  %3097 = icmp slt i32 %2908, 0
  br i1 %3097, label %3493, label %3098

3098:                                             ; preds = %3096
  %3099 = getelementptr inbounds nuw i8, ptr %0, i64 214
  %3100 = load i16, ptr %3099, align 2, !tbaa !28
  %3101 = icmp eq i16 %3100, 0
  %3102 = select i1 %3101, i32 138, i32 7
  %3103 = select i1 %3101, i32 3, i32 4
  %3104 = zext i16 %3100 to i32
  %3105 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3106 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3107 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3108 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3109 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3110 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3111 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %3112 = zext nneg i32 %2909 to i64
  br label %3113

3113:                                             ; preds = %3485, %3098
  %3114 = phi i16 [ %3092, %3098 ], [ %3486, %3485 ]
  %3115 = phi i32 [ %3093, %3098 ], [ %3487, %3485 ]
  %3116 = phi i64 [ 0, %3098 ], [ %3122, %3485 ]
  %3117 = phi i32 [ -1, %3098 ], [ %3491, %3485 ]
  %3118 = phi i32 [ %3104, %3098 ], [ %3126, %3485 ]
  %3119 = phi i32 [ 0, %3098 ], [ %3490, %3485 ]
  %3120 = phi i32 [ %3102, %3098 ], [ %3489, %3485 ]
  %3121 = phi i32 [ %3103, %3098 ], [ %3488, %3485 ]
  %3122 = add nuw nsw i64 %3116, 1
  %3123 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3122
  %3124 = getelementptr inbounds nuw i8, ptr %3123, i64 214
  %3125 = load i16, ptr %3124, align 2, !tbaa !28
  %3126 = zext i16 %3125 to i32
  %3127 = add nsw i32 %3119, 1
  %3128 = icmp slt i32 %3127, %3120
  %3129 = icmp eq i32 %3118, %3126
  %3130 = select i1 %3128, i1 %3129, i1 false
  br i1 %3130, label %3485, label %3131

3131:                                             ; preds = %3113
  %3132 = icmp slt i32 %3127, %3121
  br i1 %3132, label %3133, label %3184

3133:                                             ; preds = %3131
  %3134 = zext nneg i32 %3118 to i64
  %3135 = getelementptr inbounds nuw [4 x i8], ptr %3105, i64 %3134
  %3136 = getelementptr inbounds nuw i8, ptr %3135, i64 2
  br label %3137

3137:                                             ; preds = %3179, %3133
  %3138 = phi i16 [ %3180, %3179 ], [ %3114, %3133 ]
  %3139 = phi i32 [ %3181, %3179 ], [ %3115, %3133 ]
  %3140 = phi i32 [ %3182, %3179 ], [ %3127, %3133 ]
  %3141 = load i16, ptr %3136, align 2, !tbaa !28
  %3142 = zext i16 %3141 to i32
  %3143 = sub nsw i32 16, %3142
  %3144 = icmp sgt i32 %3139, %3143
  %3145 = load i16, ptr %3135, align 4, !tbaa !28
  %3146 = zext i16 %3145 to i32
  %3147 = shl i32 %3146, %3139
  %3148 = trunc i32 %3147 to i16
  %3149 = or i16 %3138, %3148
  store i16 %3149, ptr %3044, align 8, !tbaa !25
  br i1 %3144, label %3150, label %3177

3150:                                             ; preds = %3137
  %3151 = load i64, ptr %3045, align 8, !tbaa !32
  %3152 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3151, i64 1), !nosanitize !33
  %3153 = extractvalue { i64, i1 } %3152, 1, !nosanitize !33
  br i1 %3153, label %3154, label %3155, !prof !34, !nosanitize !33

3154:                                             ; preds = %3150
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3155:                                             ; preds = %3150
  %3156 = extractvalue { i64, i1 } %3152, 0, !nosanitize !33
  %3157 = load ptr, ptr %3046, align 8, !tbaa !35
  %3158 = trunc i16 %3149 to i8
  store i64 %3156, ptr %3045, align 8, !tbaa !32
  %3159 = getelementptr inbounds nuw i8, ptr %3157, i64 %3151
  store i8 %3158, ptr %3159, align 1, !tbaa !28
  %3160 = load i64, ptr %3045, align 8, !tbaa !32
  %3161 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3160, i64 1), !nosanitize !33
  %3162 = extractvalue { i64, i1 } %3161, 1, !nosanitize !33
  br i1 %3162, label %3163, label %3164, !prof !34, !nosanitize !33

3163:                                             ; preds = %3155
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3164:                                             ; preds = %3155
  %3165 = extractvalue { i64, i1 } %3161, 0, !nosanitize !33
  %3166 = load ptr, ptr %3046, align 8, !tbaa !35
  %3167 = load i16, ptr %3044, align 8, !tbaa !25
  %3168 = lshr i16 %3167, 8
  %3169 = trunc nuw i16 %3168 to i8
  store i64 %3165, ptr %3045, align 8, !tbaa !32
  %3170 = getelementptr inbounds nuw i8, ptr %3166, i64 %3160
  store i8 %3169, ptr %3170, align 1, !tbaa !28
  %3171 = load i32, ptr %2345, align 4, !tbaa !26
  %3172 = sub nsw i32 16, %3171
  %3173 = lshr i32 %3146, %3172
  %3174 = trunc nuw i32 %3173 to i16
  store i16 %3174, ptr %3044, align 8, !tbaa !25
  %3175 = add nsw i32 %3142, -16
  %3176 = add nsw i32 %3175, %3171
  br label %3179

3177:                                             ; preds = %3137
  %3178 = add nsw i32 %3139, %3142
  br label %3179

3179:                                             ; preds = %3177, %3164
  %3180 = phi i16 [ %3149, %3177 ], [ %3174, %3164 ]
  %3181 = phi i32 [ %3178, %3177 ], [ %3176, %3164 ]
  store i32 %3181, ptr %2345, align 4, !tbaa !26
  %3182 = add nsw i32 %3140, -1
  %3183 = icmp eq i32 %3182, 0
  br i1 %3183, label %3478, label %3137, !llvm.loop !80

3184:                                             ; preds = %3131
  %3185 = icmp eq i32 %3118, 0
  br i1 %3185, label %3315, label %3186

3186:                                             ; preds = %3184
  %3187 = icmp eq i32 %3118, %3117
  br i1 %3187, label %3233, label %3188

3188:                                             ; preds = %3186
  %3189 = zext nneg i32 %3118 to i64
  %3190 = getelementptr inbounds nuw [4 x i8], ptr %3105, i64 %3189
  %3191 = getelementptr inbounds nuw i8, ptr %3190, i64 2
  %3192 = load i16, ptr %3191, align 2, !tbaa !28
  %3193 = zext i16 %3192 to i32
  %3194 = sub nsw i32 16, %3193
  %3195 = icmp sgt i32 %3115, %3194
  %3196 = load i16, ptr %3190, align 4, !tbaa !28
  %3197 = zext i16 %3196 to i32
  %3198 = shl i32 %3197, %3115
  %3199 = trunc i32 %3198 to i16
  %3200 = or i16 %3114, %3199
  store i16 %3200, ptr %3044, align 8, !tbaa !25
  br i1 %3195, label %3201, label %3228

3201:                                             ; preds = %3188
  %3202 = load i64, ptr %3045, align 8, !tbaa !32
  %3203 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3202, i64 1), !nosanitize !33
  %3204 = extractvalue { i64, i1 } %3203, 1, !nosanitize !33
  br i1 %3204, label %3205, label %3206, !prof !34, !nosanitize !33

3205:                                             ; preds = %3201
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3206:                                             ; preds = %3201
  %3207 = extractvalue { i64, i1 } %3203, 0, !nosanitize !33
  %3208 = load ptr, ptr %3046, align 8, !tbaa !35
  %3209 = trunc i16 %3200 to i8
  store i64 %3207, ptr %3045, align 8, !tbaa !32
  %3210 = getelementptr inbounds nuw i8, ptr %3208, i64 %3202
  store i8 %3209, ptr %3210, align 1, !tbaa !28
  %3211 = load i64, ptr %3045, align 8, !tbaa !32
  %3212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3211, i64 1), !nosanitize !33
  %3213 = extractvalue { i64, i1 } %3212, 1, !nosanitize !33
  br i1 %3213, label %3214, label %3215, !prof !34, !nosanitize !33

3214:                                             ; preds = %3206
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3215:                                             ; preds = %3206
  %3216 = extractvalue { i64, i1 } %3212, 0, !nosanitize !33
  %3217 = load ptr, ptr %3046, align 8, !tbaa !35
  %3218 = load i16, ptr %3044, align 8, !tbaa !25
  %3219 = lshr i16 %3218, 8
  %3220 = trunc nuw i16 %3219 to i8
  store i64 %3216, ptr %3045, align 8, !tbaa !32
  %3221 = getelementptr inbounds nuw i8, ptr %3217, i64 %3211
  store i8 %3220, ptr %3221, align 1, !tbaa !28
  %3222 = load i32, ptr %2345, align 4, !tbaa !26
  %3223 = sub nsw i32 16, %3222
  %3224 = lshr i32 %3197, %3223
  %3225 = trunc nuw i32 %3224 to i16
  store i16 %3225, ptr %3044, align 8, !tbaa !25
  %3226 = add nsw i32 %3193, -16
  %3227 = add nsw i32 %3226, %3222
  br label %3230

3228:                                             ; preds = %3188
  %3229 = add nsw i32 %3115, %3193
  br label %3230

3230:                                             ; preds = %3228, %3215
  %3231 = phi i16 [ %3200, %3228 ], [ %3225, %3215 ]
  %3232 = phi i32 [ %3229, %3228 ], [ %3227, %3215 ]
  store i32 %3232, ptr %2345, align 4, !tbaa !26
  br label %3233

3233:                                             ; preds = %3230, %3186
  %3234 = phi i16 [ %3231, %3230 ], [ %3114, %3186 ]
  %3235 = phi i32 [ %3232, %3230 ], [ %3115, %3186 ]
  %3236 = phi i32 [ %3119, %3230 ], [ %3127, %3186 ]
  %3237 = load i16, ptr %3107, align 2, !tbaa !28
  %3238 = zext i16 %3237 to i32
  %3239 = sub nsw i32 16, %3238
  %3240 = icmp sgt i32 %3235, %3239
  %3241 = load i16, ptr %3106, align 4, !tbaa !28
  %3242 = zext i16 %3241 to i32
  %3243 = shl i32 %3242, %3235
  %3244 = trunc i32 %3243 to i16
  %3245 = or i16 %3234, %3244
  br i1 %3240, label %3246, label %3273

3246:                                             ; preds = %3233
  store i16 %3245, ptr %3044, align 8, !tbaa !25
  %3247 = load i64, ptr %3045, align 8, !tbaa !32
  %3248 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3247, i64 1), !nosanitize !33
  %3249 = extractvalue { i64, i1 } %3248, 1, !nosanitize !33
  br i1 %3249, label %3250, label %3251, !prof !34, !nosanitize !33

3250:                                             ; preds = %3246
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3251:                                             ; preds = %3246
  %3252 = extractvalue { i64, i1 } %3248, 0, !nosanitize !33
  %3253 = load ptr, ptr %3046, align 8, !tbaa !35
  %3254 = trunc i16 %3245 to i8
  store i64 %3252, ptr %3045, align 8, !tbaa !32
  %3255 = getelementptr inbounds nuw i8, ptr %3253, i64 %3247
  store i8 %3254, ptr %3255, align 1, !tbaa !28
  %3256 = load i64, ptr %3045, align 8, !tbaa !32
  %3257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3256, i64 1), !nosanitize !33
  %3258 = extractvalue { i64, i1 } %3257, 1, !nosanitize !33
  br i1 %3258, label %3259, label %3260, !prof !34, !nosanitize !33

3259:                                             ; preds = %3251
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3260:                                             ; preds = %3251
  %3261 = extractvalue { i64, i1 } %3257, 0, !nosanitize !33
  %3262 = load ptr, ptr %3046, align 8, !tbaa !35
  %3263 = load i16, ptr %3044, align 8, !tbaa !25
  %3264 = lshr i16 %3263, 8
  %3265 = trunc nuw i16 %3264 to i8
  store i64 %3261, ptr %3045, align 8, !tbaa !32
  %3266 = getelementptr inbounds nuw i8, ptr %3262, i64 %3256
  store i8 %3265, ptr %3266, align 1, !tbaa !28
  %3267 = load i32, ptr %2345, align 4, !tbaa !26
  %3268 = sub nsw i32 16, %3267
  %3269 = lshr i32 %3242, %3268
  %3270 = trunc nuw i32 %3269 to i16
  %3271 = add nsw i32 %3238, -16
  %3272 = add nsw i32 %3271, %3267
  br label %3275

3273:                                             ; preds = %3233
  %3274 = add nsw i32 %3235, %3238
  br label %3275

3275:                                             ; preds = %3273, %3260
  %3276 = phi i16 [ %3245, %3273 ], [ %3270, %3260 ]
  %3277 = phi i32 [ %3274, %3273 ], [ %3272, %3260 ]
  store i32 %3277, ptr %2345, align 4, !tbaa !26
  %3278 = icmp sgt i32 %3277, 14
  %3279 = add i32 %3236, 65533
  br i1 %3278, label %3280, label %3310

3280:                                             ; preds = %3275
  %3281 = and i32 %3279, 65535
  %3282 = shl i32 %3279, %3277
  %3283 = trunc i32 %3282 to i16
  %3284 = or i16 %3276, %3283
  store i16 %3284, ptr %3044, align 8, !tbaa !25
  %3285 = load i64, ptr %3045, align 8, !tbaa !32
  %3286 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3285, i64 1), !nosanitize !33
  %3287 = extractvalue { i64, i1 } %3286, 1, !nosanitize !33
  br i1 %3287, label %3288, label %3289, !prof !34, !nosanitize !33

3288:                                             ; preds = %3280
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3289:                                             ; preds = %3280
  %3290 = extractvalue { i64, i1 } %3286, 0, !nosanitize !33
  %3291 = load ptr, ptr %3046, align 8, !tbaa !35
  %3292 = trunc i16 %3284 to i8
  store i64 %3290, ptr %3045, align 8, !tbaa !32
  %3293 = getelementptr inbounds nuw i8, ptr %3291, i64 %3285
  store i8 %3292, ptr %3293, align 1, !tbaa !28
  %3294 = load i64, ptr %3045, align 8, !tbaa !32
  %3295 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3294, i64 1), !nosanitize !33
  %3296 = extractvalue { i64, i1 } %3295, 1, !nosanitize !33
  br i1 %3296, label %3297, label %3298, !prof !34, !nosanitize !33

3297:                                             ; preds = %3289
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3298:                                             ; preds = %3289
  %3299 = extractvalue { i64, i1 } %3295, 0, !nosanitize !33
  %3300 = load ptr, ptr %3046, align 8, !tbaa !35
  %3301 = load i16, ptr %3044, align 8, !tbaa !25
  %3302 = lshr i16 %3301, 8
  %3303 = trunc nuw i16 %3302 to i8
  store i64 %3299, ptr %3045, align 8, !tbaa !32
  %3304 = getelementptr inbounds nuw i8, ptr %3300, i64 %3294
  store i8 %3303, ptr %3304, align 1, !tbaa !28
  %3305 = load i32, ptr %2345, align 4, !tbaa !26
  %3306 = sub nsw i32 16, %3305
  %3307 = lshr i32 %3281, %3306
  %3308 = trunc nuw i32 %3307 to i16
  store i16 %3308, ptr %3044, align 8, !tbaa !25
  %3309 = add nsw i32 %3305, -14
  br label %3475

3310:                                             ; preds = %3275
  %3311 = shl i32 %3279, %3277
  %3312 = trunc i32 %3311 to i16
  %3313 = or i16 %3276, %3312
  store i16 %3313, ptr %3044, align 8, !tbaa !25
  %3314 = add nsw i32 %3277, 2
  br label %3475

3315:                                             ; preds = %3184
  %3316 = icmp slt i32 %3119, 10
  br i1 %3316, label %3317, label %3396

3317:                                             ; preds = %3315
  %3318 = load i16, ptr %3111, align 2, !tbaa !28
  %3319 = zext i16 %3318 to i32
  %3320 = sub nsw i32 16, %3319
  %3321 = icmp sgt i32 %3115, %3320
  %3322 = load i16, ptr %3110, align 4, !tbaa !28
  %3323 = zext i16 %3322 to i32
  %3324 = shl i32 %3323, %3115
  %3325 = trunc i32 %3324 to i16
  %3326 = or i16 %3114, %3325
  store i16 %3326, ptr %3044, align 8, !tbaa !25
  br i1 %3321, label %3327, label %3354

3327:                                             ; preds = %3317
  %3328 = load i64, ptr %3045, align 8, !tbaa !32
  %3329 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3328, i64 1), !nosanitize !33
  %3330 = extractvalue { i64, i1 } %3329, 1, !nosanitize !33
  br i1 %3330, label %3331, label %3332, !prof !34, !nosanitize !33

3331:                                             ; preds = %3327
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3332:                                             ; preds = %3327
  %3333 = extractvalue { i64, i1 } %3329, 0, !nosanitize !33
  %3334 = load ptr, ptr %3046, align 8, !tbaa !35
  %3335 = trunc i16 %3326 to i8
  store i64 %3333, ptr %3045, align 8, !tbaa !32
  %3336 = getelementptr inbounds nuw i8, ptr %3334, i64 %3328
  store i8 %3335, ptr %3336, align 1, !tbaa !28
  %3337 = load i64, ptr %3045, align 8, !tbaa !32
  %3338 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3337, i64 1), !nosanitize !33
  %3339 = extractvalue { i64, i1 } %3338, 1, !nosanitize !33
  br i1 %3339, label %3340, label %3341, !prof !34, !nosanitize !33

3340:                                             ; preds = %3332
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3341:                                             ; preds = %3332
  %3342 = extractvalue { i64, i1 } %3338, 0, !nosanitize !33
  %3343 = load ptr, ptr %3046, align 8, !tbaa !35
  %3344 = load i16, ptr %3044, align 8, !tbaa !25
  %3345 = lshr i16 %3344, 8
  %3346 = trunc nuw i16 %3345 to i8
  store i64 %3342, ptr %3045, align 8, !tbaa !32
  %3347 = getelementptr inbounds nuw i8, ptr %3343, i64 %3337
  store i8 %3346, ptr %3347, align 1, !tbaa !28
  %3348 = load i32, ptr %2345, align 4, !tbaa !26
  %3349 = sub nsw i32 16, %3348
  %3350 = lshr i32 %3323, %3349
  %3351 = trunc nuw i32 %3350 to i16
  store i16 %3351, ptr %3044, align 8, !tbaa !25
  %3352 = add nsw i32 %3319, -16
  %3353 = add nsw i32 %3352, %3348
  br label %3356

3354:                                             ; preds = %3317
  %3355 = add nsw i32 %3115, %3319
  br label %3356

3356:                                             ; preds = %3354, %3341
  %3357 = phi i16 [ %3326, %3354 ], [ %3351, %3341 ]
  %3358 = phi i32 [ %3355, %3354 ], [ %3353, %3341 ]
  store i32 %3358, ptr %2345, align 4, !tbaa !26
  %3359 = icmp sgt i32 %3358, 13
  %3360 = add nsw i32 %3119, 65534
  br i1 %3359, label %3361, label %3391

3361:                                             ; preds = %3356
  %3362 = and i32 %3360, 65535
  %3363 = shl i32 %3360, %3358
  %3364 = trunc i32 %3363 to i16
  %3365 = or i16 %3357, %3364
  store i16 %3365, ptr %3044, align 8, !tbaa !25
  %3366 = load i64, ptr %3045, align 8, !tbaa !32
  %3367 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3366, i64 1), !nosanitize !33
  %3368 = extractvalue { i64, i1 } %3367, 1, !nosanitize !33
  br i1 %3368, label %3369, label %3370, !prof !34, !nosanitize !33

3369:                                             ; preds = %3361
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3370:                                             ; preds = %3361
  %3371 = extractvalue { i64, i1 } %3367, 0, !nosanitize !33
  %3372 = load ptr, ptr %3046, align 8, !tbaa !35
  %3373 = trunc i16 %3365 to i8
  store i64 %3371, ptr %3045, align 8, !tbaa !32
  %3374 = getelementptr inbounds nuw i8, ptr %3372, i64 %3366
  store i8 %3373, ptr %3374, align 1, !tbaa !28
  %3375 = load i64, ptr %3045, align 8, !tbaa !32
  %3376 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3375, i64 1), !nosanitize !33
  %3377 = extractvalue { i64, i1 } %3376, 1, !nosanitize !33
  br i1 %3377, label %3378, label %3379, !prof !34, !nosanitize !33

3378:                                             ; preds = %3370
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3379:                                             ; preds = %3370
  %3380 = extractvalue { i64, i1 } %3376, 0, !nosanitize !33
  %3381 = load ptr, ptr %3046, align 8, !tbaa !35
  %3382 = load i16, ptr %3044, align 8, !tbaa !25
  %3383 = lshr i16 %3382, 8
  %3384 = trunc nuw i16 %3383 to i8
  store i64 %3380, ptr %3045, align 8, !tbaa !32
  %3385 = getelementptr inbounds nuw i8, ptr %3381, i64 %3375
  store i8 %3384, ptr %3385, align 1, !tbaa !28
  %3386 = load i32, ptr %2345, align 4, !tbaa !26
  %3387 = sub nsw i32 16, %3386
  %3388 = lshr i32 %3362, %3387
  %3389 = trunc nuw i32 %3388 to i16
  store i16 %3389, ptr %3044, align 8, !tbaa !25
  %3390 = add nsw i32 %3386, -13
  br label %3475

3391:                                             ; preds = %3356
  %3392 = shl i32 %3360, %3358
  %3393 = trunc i32 %3392 to i16
  %3394 = or i16 %3357, %3393
  store i16 %3394, ptr %3044, align 8, !tbaa !25
  %3395 = add nsw i32 %3358, 3
  br label %3475

3396:                                             ; preds = %3315
  %3397 = load i16, ptr %3109, align 2, !tbaa !28
  %3398 = zext i16 %3397 to i32
  %3399 = sub nsw i32 16, %3398
  %3400 = icmp sgt i32 %3115, %3399
  %3401 = load i16, ptr %3108, align 4, !tbaa !28
  %3402 = zext i16 %3401 to i32
  %3403 = shl i32 %3402, %3115
  %3404 = trunc i32 %3403 to i16
  %3405 = or i16 %3114, %3404
  store i16 %3405, ptr %3044, align 8, !tbaa !25
  br i1 %3400, label %3406, label %3433

3406:                                             ; preds = %3396
  %3407 = load i64, ptr %3045, align 8, !tbaa !32
  %3408 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3407, i64 1), !nosanitize !33
  %3409 = extractvalue { i64, i1 } %3408, 1, !nosanitize !33
  br i1 %3409, label %3410, label %3411, !prof !34, !nosanitize !33

3410:                                             ; preds = %3406
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3411:                                             ; preds = %3406
  %3412 = extractvalue { i64, i1 } %3408, 0, !nosanitize !33
  %3413 = load ptr, ptr %3046, align 8, !tbaa !35
  %3414 = trunc i16 %3405 to i8
  store i64 %3412, ptr %3045, align 8, !tbaa !32
  %3415 = getelementptr inbounds nuw i8, ptr %3413, i64 %3407
  store i8 %3414, ptr %3415, align 1, !tbaa !28
  %3416 = load i64, ptr %3045, align 8, !tbaa !32
  %3417 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3416, i64 1), !nosanitize !33
  %3418 = extractvalue { i64, i1 } %3417, 1, !nosanitize !33
  br i1 %3418, label %3419, label %3420, !prof !34, !nosanitize !33

3419:                                             ; preds = %3411
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3420:                                             ; preds = %3411
  %3421 = extractvalue { i64, i1 } %3417, 0, !nosanitize !33
  %3422 = load ptr, ptr %3046, align 8, !tbaa !35
  %3423 = load i16, ptr %3044, align 8, !tbaa !25
  %3424 = lshr i16 %3423, 8
  %3425 = trunc nuw i16 %3424 to i8
  store i64 %3421, ptr %3045, align 8, !tbaa !32
  %3426 = getelementptr inbounds nuw i8, ptr %3422, i64 %3416
  store i8 %3425, ptr %3426, align 1, !tbaa !28
  %3427 = load i32, ptr %2345, align 4, !tbaa !26
  %3428 = sub nsw i32 16, %3427
  %3429 = lshr i32 %3402, %3428
  %3430 = trunc nuw i32 %3429 to i16
  store i16 %3430, ptr %3044, align 8, !tbaa !25
  %3431 = add nsw i32 %3398, -16
  %3432 = add nsw i32 %3431, %3427
  br label %3435

3433:                                             ; preds = %3396
  %3434 = add nsw i32 %3115, %3398
  br label %3435

3435:                                             ; preds = %3433, %3420
  %3436 = phi i16 [ %3405, %3433 ], [ %3430, %3420 ]
  %3437 = phi i32 [ %3434, %3433 ], [ %3432, %3420 ]
  store i32 %3437, ptr %2345, align 4, !tbaa !26
  %3438 = icmp sgt i32 %3437, 9
  %3439 = add nuw i32 %3119, 65526
  br i1 %3438, label %3440, label %3470

3440:                                             ; preds = %3435
  %3441 = and i32 %3439, 65535
  %3442 = shl i32 %3439, %3437
  %3443 = trunc i32 %3442 to i16
  %3444 = or i16 %3436, %3443
  store i16 %3444, ptr %3044, align 8, !tbaa !25
  %3445 = load i64, ptr %3045, align 8, !tbaa !32
  %3446 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3445, i64 1), !nosanitize !33
  %3447 = extractvalue { i64, i1 } %3446, 1, !nosanitize !33
  br i1 %3447, label %3448, label %3449, !prof !34, !nosanitize !33

3448:                                             ; preds = %3440
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3449:                                             ; preds = %3440
  %3450 = extractvalue { i64, i1 } %3446, 0, !nosanitize !33
  %3451 = load ptr, ptr %3046, align 8, !tbaa !35
  %3452 = trunc i16 %3444 to i8
  store i64 %3450, ptr %3045, align 8, !tbaa !32
  %3453 = getelementptr inbounds nuw i8, ptr %3451, i64 %3445
  store i8 %3452, ptr %3453, align 1, !tbaa !28
  %3454 = load i64, ptr %3045, align 8, !tbaa !32
  %3455 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3454, i64 1), !nosanitize !33
  %3456 = extractvalue { i64, i1 } %3455, 1, !nosanitize !33
  br i1 %3456, label %3457, label %3458, !prof !34, !nosanitize !33

3457:                                             ; preds = %3449
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3458:                                             ; preds = %3449
  %3459 = extractvalue { i64, i1 } %3455, 0, !nosanitize !33
  %3460 = load ptr, ptr %3046, align 8, !tbaa !35
  %3461 = load i16, ptr %3044, align 8, !tbaa !25
  %3462 = lshr i16 %3461, 8
  %3463 = trunc nuw i16 %3462 to i8
  store i64 %3459, ptr %3045, align 8, !tbaa !32
  %3464 = getelementptr inbounds nuw i8, ptr %3460, i64 %3454
  store i8 %3463, ptr %3464, align 1, !tbaa !28
  %3465 = load i32, ptr %2345, align 4, !tbaa !26
  %3466 = sub nsw i32 16, %3465
  %3467 = lshr i32 %3441, %3466
  %3468 = trunc nuw i32 %3467 to i16
  store i16 %3468, ptr %3044, align 8, !tbaa !25
  %3469 = add nsw i32 %3465, -9
  br label %3475

3470:                                             ; preds = %3435
  %3471 = shl i32 %3439, %3437
  %3472 = trunc i32 %3471 to i16
  %3473 = or i16 %3436, %3472
  store i16 %3473, ptr %3044, align 8, !tbaa !25
  %3474 = add nsw i32 %3437, 7
  br label %3475

3475:                                             ; preds = %3470, %3458, %3391, %3379, %3310, %3298
  %3476 = phi i16 [ %3308, %3298 ], [ %3389, %3379 ], [ %3313, %3310 ], [ %3394, %3391 ], [ %3473, %3470 ], [ %3468, %3458 ]
  %3477 = phi i32 [ %3309, %3298 ], [ %3390, %3379 ], [ %3314, %3310 ], [ %3395, %3391 ], [ %3474, %3470 ], [ %3469, %3458 ]
  store i32 %3477, ptr %2345, align 4, !tbaa !26
  br label %3478

3478:                                             ; preds = %3475, %3179
  %3479 = phi i16 [ %3476, %3475 ], [ %3180, %3179 ]
  %3480 = phi i32 [ %3477, %3475 ], [ %3181, %3179 ]
  %3481 = icmp eq i16 %3125, 0
  br i1 %3481, label %3485, label %3482

3482:                                             ; preds = %3478
  %3483 = select i1 %3129, i32 3, i32 4
  %3484 = select i1 %3129, i32 6, i32 7
  br label %3485

3485:                                             ; preds = %3482, %3478, %3113
  %3486 = phi i16 [ %3114, %3113 ], [ %3479, %3478 ], [ %3479, %3482 ]
  %3487 = phi i32 [ %3115, %3113 ], [ %3480, %3478 ], [ %3480, %3482 ]
  %3488 = phi i32 [ %3121, %3113 ], [ 3, %3478 ], [ %3483, %3482 ]
  %3489 = phi i32 [ %3120, %3113 ], [ 138, %3478 ], [ %3484, %3482 ]
  %3490 = phi i32 [ %3127, %3113 ], [ 0, %3478 ], [ 0, %3482 ]
  %3491 = phi i32 [ %3117, %3113 ], [ %3118, %3478 ], [ %3118, %3482 ]
  %3492 = icmp eq i64 %3122, %3112
  br i1 %3492, label %3493, label %3113, !llvm.loop !81

3493:                                             ; preds = %3485, %3096
  %3494 = phi i16 [ %3092, %3096 ], [ %3486, %3485 ]
  %3495 = phi i32 [ %3093, %3096 ], [ %3487, %3485 ]
  %3496 = icmp slt i32 %2911, 0
  br i1 %3496, label %3892, label %3497

3497:                                             ; preds = %3493
  %3498 = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %3499 = load i16, ptr %3498, align 2, !tbaa !28
  %3500 = icmp eq i16 %3499, 0
  %3501 = select i1 %3500, i32 138, i32 7
  %3502 = select i1 %3500, i32 3, i32 4
  %3503 = zext i16 %3499 to i32
  %3504 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3505 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3506 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3507 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3508 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3509 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3510 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %3511 = zext nneg i32 %2912 to i64
  br label %3512

3512:                                             ; preds = %3884, %3497
  %3513 = phi i16 [ %3494, %3497 ], [ %3885, %3884 ]
  %3514 = phi i32 [ %3495, %3497 ], [ %3886, %3884 ]
  %3515 = phi i64 [ 0, %3497 ], [ %3521, %3884 ]
  %3516 = phi i32 [ -1, %3497 ], [ %3890, %3884 ]
  %3517 = phi i32 [ %3503, %3497 ], [ %3525, %3884 ]
  %3518 = phi i32 [ 0, %3497 ], [ %3889, %3884 ]
  %3519 = phi i32 [ %3501, %3497 ], [ %3888, %3884 ]
  %3520 = phi i32 [ %3502, %3497 ], [ %3887, %3884 ]
  %3521 = add nuw nsw i64 %3515, 1
  %3522 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3521
  %3523 = getelementptr inbounds nuw i8, ptr %3522, i64 2506
  %3524 = load i16, ptr %3523, align 2, !tbaa !28
  %3525 = zext i16 %3524 to i32
  %3526 = add nsw i32 %3518, 1
  %3527 = icmp slt i32 %3526, %3519
  %3528 = icmp eq i32 %3517, %3525
  %3529 = select i1 %3527, i1 %3528, i1 false
  br i1 %3529, label %3884, label %3530

3530:                                             ; preds = %3512
  %3531 = icmp slt i32 %3526, %3520
  br i1 %3531, label %3532, label %3583

3532:                                             ; preds = %3530
  %3533 = zext nneg i32 %3517 to i64
  %3534 = getelementptr inbounds nuw [4 x i8], ptr %3504, i64 %3533
  %3535 = getelementptr inbounds nuw i8, ptr %3534, i64 2
  br label %3536

3536:                                             ; preds = %3578, %3532
  %3537 = phi i16 [ %3579, %3578 ], [ %3513, %3532 ]
  %3538 = phi i32 [ %3580, %3578 ], [ %3514, %3532 ]
  %3539 = phi i32 [ %3581, %3578 ], [ %3526, %3532 ]
  %3540 = load i16, ptr %3535, align 2, !tbaa !28
  %3541 = zext i16 %3540 to i32
  %3542 = sub nsw i32 16, %3541
  %3543 = icmp sgt i32 %3538, %3542
  %3544 = load i16, ptr %3534, align 4, !tbaa !28
  %3545 = zext i16 %3544 to i32
  %3546 = shl i32 %3545, %3538
  %3547 = trunc i32 %3546 to i16
  %3548 = or i16 %3537, %3547
  store i16 %3548, ptr %3044, align 8, !tbaa !25
  br i1 %3543, label %3549, label %3576

3549:                                             ; preds = %3536
  %3550 = load i64, ptr %3045, align 8, !tbaa !32
  %3551 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3550, i64 1), !nosanitize !33
  %3552 = extractvalue { i64, i1 } %3551, 1, !nosanitize !33
  br i1 %3552, label %3553, label %3554, !prof !34, !nosanitize !33

3553:                                             ; preds = %3549
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3554:                                             ; preds = %3549
  %3555 = extractvalue { i64, i1 } %3551, 0, !nosanitize !33
  %3556 = load ptr, ptr %3046, align 8, !tbaa !35
  %3557 = trunc i16 %3548 to i8
  store i64 %3555, ptr %3045, align 8, !tbaa !32
  %3558 = getelementptr inbounds nuw i8, ptr %3556, i64 %3550
  store i8 %3557, ptr %3558, align 1, !tbaa !28
  %3559 = load i64, ptr %3045, align 8, !tbaa !32
  %3560 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3559, i64 1), !nosanitize !33
  %3561 = extractvalue { i64, i1 } %3560, 1, !nosanitize !33
  br i1 %3561, label %3562, label %3563, !prof !34, !nosanitize !33

3562:                                             ; preds = %3554
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3563:                                             ; preds = %3554
  %3564 = extractvalue { i64, i1 } %3560, 0, !nosanitize !33
  %3565 = load ptr, ptr %3046, align 8, !tbaa !35
  %3566 = load i16, ptr %3044, align 8, !tbaa !25
  %3567 = lshr i16 %3566, 8
  %3568 = trunc nuw i16 %3567 to i8
  store i64 %3564, ptr %3045, align 8, !tbaa !32
  %3569 = getelementptr inbounds nuw i8, ptr %3565, i64 %3559
  store i8 %3568, ptr %3569, align 1, !tbaa !28
  %3570 = load i32, ptr %2345, align 4, !tbaa !26
  %3571 = sub nsw i32 16, %3570
  %3572 = lshr i32 %3545, %3571
  %3573 = trunc nuw i32 %3572 to i16
  store i16 %3573, ptr %3044, align 8, !tbaa !25
  %3574 = add nsw i32 %3541, -16
  %3575 = add nsw i32 %3574, %3570
  br label %3578

3576:                                             ; preds = %3536
  %3577 = add nsw i32 %3538, %3541
  br label %3578

3578:                                             ; preds = %3576, %3563
  %3579 = phi i16 [ %3548, %3576 ], [ %3573, %3563 ]
  %3580 = phi i32 [ %3577, %3576 ], [ %3575, %3563 ]
  store i32 %3580, ptr %2345, align 4, !tbaa !26
  %3581 = add nsw i32 %3539, -1
  %3582 = icmp eq i32 %3581, 0
  br i1 %3582, label %3877, label %3536, !llvm.loop !80

3583:                                             ; preds = %3530
  %3584 = icmp eq i32 %3517, 0
  br i1 %3584, label %3714, label %3585

3585:                                             ; preds = %3583
  %3586 = icmp eq i32 %3517, %3516
  br i1 %3586, label %3632, label %3587

3587:                                             ; preds = %3585
  %3588 = zext nneg i32 %3517 to i64
  %3589 = getelementptr inbounds nuw [4 x i8], ptr %3504, i64 %3588
  %3590 = getelementptr inbounds nuw i8, ptr %3589, i64 2
  %3591 = load i16, ptr %3590, align 2, !tbaa !28
  %3592 = zext i16 %3591 to i32
  %3593 = sub nsw i32 16, %3592
  %3594 = icmp sgt i32 %3514, %3593
  %3595 = load i16, ptr %3589, align 4, !tbaa !28
  %3596 = zext i16 %3595 to i32
  %3597 = shl i32 %3596, %3514
  %3598 = trunc i32 %3597 to i16
  %3599 = or i16 %3513, %3598
  store i16 %3599, ptr %3044, align 8, !tbaa !25
  br i1 %3594, label %3600, label %3627

3600:                                             ; preds = %3587
  %3601 = load i64, ptr %3045, align 8, !tbaa !32
  %3602 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3601, i64 1), !nosanitize !33
  %3603 = extractvalue { i64, i1 } %3602, 1, !nosanitize !33
  br i1 %3603, label %3604, label %3605, !prof !34, !nosanitize !33

3604:                                             ; preds = %3600
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3605:                                             ; preds = %3600
  %3606 = extractvalue { i64, i1 } %3602, 0, !nosanitize !33
  %3607 = load ptr, ptr %3046, align 8, !tbaa !35
  %3608 = trunc i16 %3599 to i8
  store i64 %3606, ptr %3045, align 8, !tbaa !32
  %3609 = getelementptr inbounds nuw i8, ptr %3607, i64 %3601
  store i8 %3608, ptr %3609, align 1, !tbaa !28
  %3610 = load i64, ptr %3045, align 8, !tbaa !32
  %3611 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3610, i64 1), !nosanitize !33
  %3612 = extractvalue { i64, i1 } %3611, 1, !nosanitize !33
  br i1 %3612, label %3613, label %3614, !prof !34, !nosanitize !33

3613:                                             ; preds = %3605
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3614:                                             ; preds = %3605
  %3615 = extractvalue { i64, i1 } %3611, 0, !nosanitize !33
  %3616 = load ptr, ptr %3046, align 8, !tbaa !35
  %3617 = load i16, ptr %3044, align 8, !tbaa !25
  %3618 = lshr i16 %3617, 8
  %3619 = trunc nuw i16 %3618 to i8
  store i64 %3615, ptr %3045, align 8, !tbaa !32
  %3620 = getelementptr inbounds nuw i8, ptr %3616, i64 %3610
  store i8 %3619, ptr %3620, align 1, !tbaa !28
  %3621 = load i32, ptr %2345, align 4, !tbaa !26
  %3622 = sub nsw i32 16, %3621
  %3623 = lshr i32 %3596, %3622
  %3624 = trunc nuw i32 %3623 to i16
  store i16 %3624, ptr %3044, align 8, !tbaa !25
  %3625 = add nsw i32 %3592, -16
  %3626 = add nsw i32 %3625, %3621
  br label %3629

3627:                                             ; preds = %3587
  %3628 = add nsw i32 %3514, %3592
  br label %3629

3629:                                             ; preds = %3627, %3614
  %3630 = phi i16 [ %3599, %3627 ], [ %3624, %3614 ]
  %3631 = phi i32 [ %3628, %3627 ], [ %3626, %3614 ]
  store i32 %3631, ptr %2345, align 4, !tbaa !26
  br label %3632

3632:                                             ; preds = %3629, %3585
  %3633 = phi i16 [ %3630, %3629 ], [ %3513, %3585 ]
  %3634 = phi i32 [ %3631, %3629 ], [ %3514, %3585 ]
  %3635 = phi i32 [ %3518, %3629 ], [ %3526, %3585 ]
  %3636 = load i16, ptr %3506, align 2, !tbaa !28
  %3637 = zext i16 %3636 to i32
  %3638 = sub nsw i32 16, %3637
  %3639 = icmp sgt i32 %3634, %3638
  %3640 = load i16, ptr %3505, align 4, !tbaa !28
  %3641 = zext i16 %3640 to i32
  %3642 = shl i32 %3641, %3634
  %3643 = trunc i32 %3642 to i16
  %3644 = or i16 %3633, %3643
  br i1 %3639, label %3645, label %3672

3645:                                             ; preds = %3632
  store i16 %3644, ptr %3044, align 8, !tbaa !25
  %3646 = load i64, ptr %3045, align 8, !tbaa !32
  %3647 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3646, i64 1), !nosanitize !33
  %3648 = extractvalue { i64, i1 } %3647, 1, !nosanitize !33
  br i1 %3648, label %3649, label %3650, !prof !34, !nosanitize !33

3649:                                             ; preds = %3645
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3650:                                             ; preds = %3645
  %3651 = extractvalue { i64, i1 } %3647, 0, !nosanitize !33
  %3652 = load ptr, ptr %3046, align 8, !tbaa !35
  %3653 = trunc i16 %3644 to i8
  store i64 %3651, ptr %3045, align 8, !tbaa !32
  %3654 = getelementptr inbounds nuw i8, ptr %3652, i64 %3646
  store i8 %3653, ptr %3654, align 1, !tbaa !28
  %3655 = load i64, ptr %3045, align 8, !tbaa !32
  %3656 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3655, i64 1), !nosanitize !33
  %3657 = extractvalue { i64, i1 } %3656, 1, !nosanitize !33
  br i1 %3657, label %3658, label %3659, !prof !34, !nosanitize !33

3658:                                             ; preds = %3650
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3659:                                             ; preds = %3650
  %3660 = extractvalue { i64, i1 } %3656, 0, !nosanitize !33
  %3661 = load ptr, ptr %3046, align 8, !tbaa !35
  %3662 = load i16, ptr %3044, align 8, !tbaa !25
  %3663 = lshr i16 %3662, 8
  %3664 = trunc nuw i16 %3663 to i8
  store i64 %3660, ptr %3045, align 8, !tbaa !32
  %3665 = getelementptr inbounds nuw i8, ptr %3661, i64 %3655
  store i8 %3664, ptr %3665, align 1, !tbaa !28
  %3666 = load i32, ptr %2345, align 4, !tbaa !26
  %3667 = sub nsw i32 16, %3666
  %3668 = lshr i32 %3641, %3667
  %3669 = trunc nuw i32 %3668 to i16
  %3670 = add nsw i32 %3637, -16
  %3671 = add nsw i32 %3670, %3666
  br label %3674

3672:                                             ; preds = %3632
  %3673 = add nsw i32 %3634, %3637
  br label %3674

3674:                                             ; preds = %3672, %3659
  %3675 = phi i16 [ %3644, %3672 ], [ %3669, %3659 ]
  %3676 = phi i32 [ %3673, %3672 ], [ %3671, %3659 ]
  store i32 %3676, ptr %2345, align 4, !tbaa !26
  %3677 = icmp sgt i32 %3676, 14
  %3678 = add i32 %3635, 65533
  br i1 %3677, label %3679, label %3709

3679:                                             ; preds = %3674
  %3680 = and i32 %3678, 65535
  %3681 = shl i32 %3678, %3676
  %3682 = trunc i32 %3681 to i16
  %3683 = or i16 %3675, %3682
  store i16 %3683, ptr %3044, align 8, !tbaa !25
  %3684 = load i64, ptr %3045, align 8, !tbaa !32
  %3685 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3684, i64 1), !nosanitize !33
  %3686 = extractvalue { i64, i1 } %3685, 1, !nosanitize !33
  br i1 %3686, label %3687, label %3688, !prof !34, !nosanitize !33

3687:                                             ; preds = %3679
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3688:                                             ; preds = %3679
  %3689 = extractvalue { i64, i1 } %3685, 0, !nosanitize !33
  %3690 = load ptr, ptr %3046, align 8, !tbaa !35
  %3691 = trunc i16 %3683 to i8
  store i64 %3689, ptr %3045, align 8, !tbaa !32
  %3692 = getelementptr inbounds nuw i8, ptr %3690, i64 %3684
  store i8 %3691, ptr %3692, align 1, !tbaa !28
  %3693 = load i64, ptr %3045, align 8, !tbaa !32
  %3694 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3693, i64 1), !nosanitize !33
  %3695 = extractvalue { i64, i1 } %3694, 1, !nosanitize !33
  br i1 %3695, label %3696, label %3697, !prof !34, !nosanitize !33

3696:                                             ; preds = %3688
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3697:                                             ; preds = %3688
  %3698 = extractvalue { i64, i1 } %3694, 0, !nosanitize !33
  %3699 = load ptr, ptr %3046, align 8, !tbaa !35
  %3700 = load i16, ptr %3044, align 8, !tbaa !25
  %3701 = lshr i16 %3700, 8
  %3702 = trunc nuw i16 %3701 to i8
  store i64 %3698, ptr %3045, align 8, !tbaa !32
  %3703 = getelementptr inbounds nuw i8, ptr %3699, i64 %3693
  store i8 %3702, ptr %3703, align 1, !tbaa !28
  %3704 = load i32, ptr %2345, align 4, !tbaa !26
  %3705 = sub nsw i32 16, %3704
  %3706 = lshr i32 %3680, %3705
  %3707 = trunc nuw i32 %3706 to i16
  store i16 %3707, ptr %3044, align 8, !tbaa !25
  %3708 = add nsw i32 %3704, -14
  br label %3874

3709:                                             ; preds = %3674
  %3710 = shl i32 %3678, %3676
  %3711 = trunc i32 %3710 to i16
  %3712 = or i16 %3675, %3711
  store i16 %3712, ptr %3044, align 8, !tbaa !25
  %3713 = add nsw i32 %3676, 2
  br label %3874

3714:                                             ; preds = %3583
  %3715 = icmp slt i32 %3518, 10
  br i1 %3715, label %3716, label %3795

3716:                                             ; preds = %3714
  %3717 = load i16, ptr %3510, align 2, !tbaa !28
  %3718 = zext i16 %3717 to i32
  %3719 = sub nsw i32 16, %3718
  %3720 = icmp sgt i32 %3514, %3719
  %3721 = load i16, ptr %3509, align 4, !tbaa !28
  %3722 = zext i16 %3721 to i32
  %3723 = shl i32 %3722, %3514
  %3724 = trunc i32 %3723 to i16
  %3725 = or i16 %3513, %3724
  store i16 %3725, ptr %3044, align 8, !tbaa !25
  br i1 %3720, label %3726, label %3753

3726:                                             ; preds = %3716
  %3727 = load i64, ptr %3045, align 8, !tbaa !32
  %3728 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3727, i64 1), !nosanitize !33
  %3729 = extractvalue { i64, i1 } %3728, 1, !nosanitize !33
  br i1 %3729, label %3730, label %3731, !prof !34, !nosanitize !33

3730:                                             ; preds = %3726
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3731:                                             ; preds = %3726
  %3732 = extractvalue { i64, i1 } %3728, 0, !nosanitize !33
  %3733 = load ptr, ptr %3046, align 8, !tbaa !35
  %3734 = trunc i16 %3725 to i8
  store i64 %3732, ptr %3045, align 8, !tbaa !32
  %3735 = getelementptr inbounds nuw i8, ptr %3733, i64 %3727
  store i8 %3734, ptr %3735, align 1, !tbaa !28
  %3736 = load i64, ptr %3045, align 8, !tbaa !32
  %3737 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3736, i64 1), !nosanitize !33
  %3738 = extractvalue { i64, i1 } %3737, 1, !nosanitize !33
  br i1 %3738, label %3739, label %3740, !prof !34, !nosanitize !33

3739:                                             ; preds = %3731
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3740:                                             ; preds = %3731
  %3741 = extractvalue { i64, i1 } %3737, 0, !nosanitize !33
  %3742 = load ptr, ptr %3046, align 8, !tbaa !35
  %3743 = load i16, ptr %3044, align 8, !tbaa !25
  %3744 = lshr i16 %3743, 8
  %3745 = trunc nuw i16 %3744 to i8
  store i64 %3741, ptr %3045, align 8, !tbaa !32
  %3746 = getelementptr inbounds nuw i8, ptr %3742, i64 %3736
  store i8 %3745, ptr %3746, align 1, !tbaa !28
  %3747 = load i32, ptr %2345, align 4, !tbaa !26
  %3748 = sub nsw i32 16, %3747
  %3749 = lshr i32 %3722, %3748
  %3750 = trunc nuw i32 %3749 to i16
  store i16 %3750, ptr %3044, align 8, !tbaa !25
  %3751 = add nsw i32 %3718, -16
  %3752 = add nsw i32 %3751, %3747
  br label %3755

3753:                                             ; preds = %3716
  %3754 = add nsw i32 %3514, %3718
  br label %3755

3755:                                             ; preds = %3753, %3740
  %3756 = phi i16 [ %3725, %3753 ], [ %3750, %3740 ]
  %3757 = phi i32 [ %3754, %3753 ], [ %3752, %3740 ]
  store i32 %3757, ptr %2345, align 4, !tbaa !26
  %3758 = icmp sgt i32 %3757, 13
  %3759 = add nsw i32 %3518, 65534
  br i1 %3758, label %3760, label %3790

3760:                                             ; preds = %3755
  %3761 = and i32 %3759, 65535
  %3762 = shl i32 %3759, %3757
  %3763 = trunc i32 %3762 to i16
  %3764 = or i16 %3756, %3763
  store i16 %3764, ptr %3044, align 8, !tbaa !25
  %3765 = load i64, ptr %3045, align 8, !tbaa !32
  %3766 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3765, i64 1), !nosanitize !33
  %3767 = extractvalue { i64, i1 } %3766, 1, !nosanitize !33
  br i1 %3767, label %3768, label %3769, !prof !34, !nosanitize !33

3768:                                             ; preds = %3760
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3769:                                             ; preds = %3760
  %3770 = extractvalue { i64, i1 } %3766, 0, !nosanitize !33
  %3771 = load ptr, ptr %3046, align 8, !tbaa !35
  %3772 = trunc i16 %3764 to i8
  store i64 %3770, ptr %3045, align 8, !tbaa !32
  %3773 = getelementptr inbounds nuw i8, ptr %3771, i64 %3765
  store i8 %3772, ptr %3773, align 1, !tbaa !28
  %3774 = load i64, ptr %3045, align 8, !tbaa !32
  %3775 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3774, i64 1), !nosanitize !33
  %3776 = extractvalue { i64, i1 } %3775, 1, !nosanitize !33
  br i1 %3776, label %3777, label %3778, !prof !34, !nosanitize !33

3777:                                             ; preds = %3769
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3778:                                             ; preds = %3769
  %3779 = extractvalue { i64, i1 } %3775, 0, !nosanitize !33
  %3780 = load ptr, ptr %3046, align 8, !tbaa !35
  %3781 = load i16, ptr %3044, align 8, !tbaa !25
  %3782 = lshr i16 %3781, 8
  %3783 = trunc nuw i16 %3782 to i8
  store i64 %3779, ptr %3045, align 8, !tbaa !32
  %3784 = getelementptr inbounds nuw i8, ptr %3780, i64 %3774
  store i8 %3783, ptr %3784, align 1, !tbaa !28
  %3785 = load i32, ptr %2345, align 4, !tbaa !26
  %3786 = sub nsw i32 16, %3785
  %3787 = lshr i32 %3761, %3786
  %3788 = trunc nuw i32 %3787 to i16
  store i16 %3788, ptr %3044, align 8, !tbaa !25
  %3789 = add nsw i32 %3785, -13
  br label %3874

3790:                                             ; preds = %3755
  %3791 = shl i32 %3759, %3757
  %3792 = trunc i32 %3791 to i16
  %3793 = or i16 %3756, %3792
  store i16 %3793, ptr %3044, align 8, !tbaa !25
  %3794 = add nsw i32 %3757, 3
  br label %3874

3795:                                             ; preds = %3714
  %3796 = load i16, ptr %3508, align 2, !tbaa !28
  %3797 = zext i16 %3796 to i32
  %3798 = sub nsw i32 16, %3797
  %3799 = icmp sgt i32 %3514, %3798
  %3800 = load i16, ptr %3507, align 4, !tbaa !28
  %3801 = zext i16 %3800 to i32
  %3802 = shl i32 %3801, %3514
  %3803 = trunc i32 %3802 to i16
  %3804 = or i16 %3513, %3803
  store i16 %3804, ptr %3044, align 8, !tbaa !25
  br i1 %3799, label %3805, label %3832

3805:                                             ; preds = %3795
  %3806 = load i64, ptr %3045, align 8, !tbaa !32
  %3807 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3806, i64 1), !nosanitize !33
  %3808 = extractvalue { i64, i1 } %3807, 1, !nosanitize !33
  br i1 %3808, label %3809, label %3810, !prof !34, !nosanitize !33

3809:                                             ; preds = %3805
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3810:                                             ; preds = %3805
  %3811 = extractvalue { i64, i1 } %3807, 0, !nosanitize !33
  %3812 = load ptr, ptr %3046, align 8, !tbaa !35
  %3813 = trunc i16 %3804 to i8
  store i64 %3811, ptr %3045, align 8, !tbaa !32
  %3814 = getelementptr inbounds nuw i8, ptr %3812, i64 %3806
  store i8 %3813, ptr %3814, align 1, !tbaa !28
  %3815 = load i64, ptr %3045, align 8, !tbaa !32
  %3816 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3815, i64 1), !nosanitize !33
  %3817 = extractvalue { i64, i1 } %3816, 1, !nosanitize !33
  br i1 %3817, label %3818, label %3819, !prof !34, !nosanitize !33

3818:                                             ; preds = %3810
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3819:                                             ; preds = %3810
  %3820 = extractvalue { i64, i1 } %3816, 0, !nosanitize !33
  %3821 = load ptr, ptr %3046, align 8, !tbaa !35
  %3822 = load i16, ptr %3044, align 8, !tbaa !25
  %3823 = lshr i16 %3822, 8
  %3824 = trunc nuw i16 %3823 to i8
  store i64 %3820, ptr %3045, align 8, !tbaa !32
  %3825 = getelementptr inbounds nuw i8, ptr %3821, i64 %3815
  store i8 %3824, ptr %3825, align 1, !tbaa !28
  %3826 = load i32, ptr %2345, align 4, !tbaa !26
  %3827 = sub nsw i32 16, %3826
  %3828 = lshr i32 %3801, %3827
  %3829 = trunc nuw i32 %3828 to i16
  store i16 %3829, ptr %3044, align 8, !tbaa !25
  %3830 = add nsw i32 %3797, -16
  %3831 = add nsw i32 %3830, %3826
  br label %3834

3832:                                             ; preds = %3795
  %3833 = add nsw i32 %3514, %3797
  br label %3834

3834:                                             ; preds = %3832, %3819
  %3835 = phi i16 [ %3804, %3832 ], [ %3829, %3819 ]
  %3836 = phi i32 [ %3833, %3832 ], [ %3831, %3819 ]
  store i32 %3836, ptr %2345, align 4, !tbaa !26
  %3837 = icmp sgt i32 %3836, 9
  %3838 = add nuw i32 %3518, 65526
  br i1 %3837, label %3839, label %3869

3839:                                             ; preds = %3834
  %3840 = and i32 %3838, 65535
  %3841 = shl i32 %3838, %3836
  %3842 = trunc i32 %3841 to i16
  %3843 = or i16 %3835, %3842
  store i16 %3843, ptr %3044, align 8, !tbaa !25
  %3844 = load i64, ptr %3045, align 8, !tbaa !32
  %3845 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3844, i64 1), !nosanitize !33
  %3846 = extractvalue { i64, i1 } %3845, 1, !nosanitize !33
  br i1 %3846, label %3847, label %3848, !prof !34, !nosanitize !33

3847:                                             ; preds = %3839
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3848:                                             ; preds = %3839
  %3849 = extractvalue { i64, i1 } %3845, 0, !nosanitize !33
  %3850 = load ptr, ptr %3046, align 8, !tbaa !35
  %3851 = trunc i16 %3843 to i8
  store i64 %3849, ptr %3045, align 8, !tbaa !32
  %3852 = getelementptr inbounds nuw i8, ptr %3850, i64 %3844
  store i8 %3851, ptr %3852, align 1, !tbaa !28
  %3853 = load i64, ptr %3045, align 8, !tbaa !32
  %3854 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3853, i64 1), !nosanitize !33
  %3855 = extractvalue { i64, i1 } %3854, 1, !nosanitize !33
  br i1 %3855, label %3856, label %3857, !prof !34, !nosanitize !33

3856:                                             ; preds = %3848
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3857:                                             ; preds = %3848
  %3858 = extractvalue { i64, i1 } %3854, 0, !nosanitize !33
  %3859 = load ptr, ptr %3046, align 8, !tbaa !35
  %3860 = load i16, ptr %3044, align 8, !tbaa !25
  %3861 = lshr i16 %3860, 8
  %3862 = trunc nuw i16 %3861 to i8
  store i64 %3858, ptr %3045, align 8, !tbaa !32
  %3863 = getelementptr inbounds nuw i8, ptr %3859, i64 %3853
  store i8 %3862, ptr %3863, align 1, !tbaa !28
  %3864 = load i32, ptr %2345, align 4, !tbaa !26
  %3865 = sub nsw i32 16, %3864
  %3866 = lshr i32 %3840, %3865
  %3867 = trunc nuw i32 %3866 to i16
  store i16 %3867, ptr %3044, align 8, !tbaa !25
  %3868 = add nsw i32 %3864, -9
  br label %3874

3869:                                             ; preds = %3834
  %3870 = shl i32 %3838, %3836
  %3871 = trunc i32 %3870 to i16
  %3872 = or i16 %3835, %3871
  store i16 %3872, ptr %3044, align 8, !tbaa !25
  %3873 = add nsw i32 %3836, 7
  br label %3874

3874:                                             ; preds = %3869, %3857, %3790, %3778, %3709, %3697
  %3875 = phi i16 [ %3707, %3697 ], [ %3788, %3778 ], [ %3712, %3709 ], [ %3793, %3790 ], [ %3872, %3869 ], [ %3867, %3857 ]
  %3876 = phi i32 [ %3708, %3697 ], [ %3789, %3778 ], [ %3713, %3709 ], [ %3794, %3790 ], [ %3873, %3869 ], [ %3868, %3857 ]
  store i32 %3876, ptr %2345, align 4, !tbaa !26
  br label %3877

3877:                                             ; preds = %3874, %3578
  %3878 = phi i16 [ %3875, %3874 ], [ %3579, %3578 ]
  %3879 = phi i32 [ %3876, %3874 ], [ %3580, %3578 ]
  %3880 = icmp eq i16 %3524, 0
  br i1 %3880, label %3884, label %3881

3881:                                             ; preds = %3877
  %3882 = select i1 %3528, i32 3, i32 4
  %3883 = select i1 %3528, i32 6, i32 7
  br label %3884

3884:                                             ; preds = %3881, %3877, %3512
  %3885 = phi i16 [ %3513, %3512 ], [ %3878, %3877 ], [ %3878, %3881 ]
  %3886 = phi i32 [ %3514, %3512 ], [ %3879, %3877 ], [ %3879, %3881 ]
  %3887 = phi i32 [ %3520, %3512 ], [ 3, %3877 ], [ %3882, %3881 ]
  %3888 = phi i32 [ %3519, %3512 ], [ 138, %3877 ], [ %3883, %3881 ]
  %3889 = phi i32 [ %3526, %3512 ], [ 0, %3877 ], [ 0, %3881 ]
  %3890 = phi i32 [ %3516, %3512 ], [ %3517, %3877 ], [ %3517, %3881 ]
  %3891 = icmp eq i64 %3521, %3511
  br i1 %3891, label %3892, label %3512, !llvm.loop !81

3892:                                             ; preds = %3884, %3493
  %3893 = phi i16 [ %3494, %3493 ], [ %3885, %3884 ]
  %3894 = phi i32 [ %3495, %3493 ], [ %3886, %3884 ]
  %3895 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %3896 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %3897 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %3898 = load i32, ptr %3897, align 4, !tbaa !31
  %3899 = icmp eq i32 %3898, 0
  br i1 %3899, label %4186, label %3900

3900:                                             ; preds = %3892
  %3901 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %3902

3902:                                             ; preds = %4181, %3900
  %3903 = phi i16 [ %4182, %4181 ], [ %3893, %3900 ]
  %3904 = phi i32 [ %4183, %4181 ], [ %3894, %3900 ]
  %3905 = phi i32 [ %3924, %4181 ], [ 0, %3900 ]
  %3906 = load ptr, ptr %3901, align 8, !tbaa !77
  %3907 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3905, i32 2)
  %3908 = extractvalue { i32, i1 } %3907, 0, !nosanitize !33
  %3909 = extractvalue { i32, i1 } %3907, 1, !nosanitize !33
  br i1 %3909, label %3910, label %3911, !prof !34, !nosanitize !33

3910:                                             ; preds = %3902
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3911:                                             ; preds = %3902
  %3912 = add nuw i32 %3905, 1
  %3913 = zext i32 %3905 to i64
  %3914 = getelementptr inbounds nuw i8, ptr %3906, i64 %3913
  %3915 = load i8, ptr %3914, align 1, !tbaa !28
  %3916 = zext i8 %3915 to i32
  %3917 = zext i32 %3912 to i64
  %3918 = getelementptr inbounds nuw i8, ptr %3906, i64 %3917
  %3919 = load i8, ptr %3918, align 1, !tbaa !28
  %3920 = zext i8 %3919 to i32
  %3921 = shl nuw nsw i32 %3920, 8
  %3922 = or disjoint i32 %3921, %3916
  %3923 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3908, i32 1), !nosanitize !33
  %3924 = extractvalue { i32, i1 } %3923, 0, !nosanitize !33
  %3925 = extractvalue { i32, i1 } %3923, 1, !nosanitize !33
  br i1 %3925, label %3926, label %3927, !prof !34, !nosanitize !33

3926:                                             ; preds = %3911
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3927:                                             ; preds = %3911
  %3928 = zext i32 %3908 to i64
  %3929 = getelementptr inbounds nuw i8, ptr %3906, i64 %3928
  %3930 = load i8, ptr %3929, align 1, !tbaa !28
  %3931 = zext i8 %3930 to i32
  %3932 = icmp eq i32 %3922, 0
  %3933 = zext i8 %3930 to i64
  br i1 %3932, label %3934, label %3975

3934:                                             ; preds = %3927
  %3935 = getelementptr inbounds nuw [4 x i8], ptr %3895, i64 %3933
  %3936 = getelementptr inbounds nuw i8, ptr %3935, i64 2
  %3937 = load i16, ptr %3936, align 2, !tbaa !28
  %3938 = zext i16 %3937 to i32
  %3939 = sub nsw i32 16, %3938
  %3940 = icmp sgt i32 %3904, %3939
  %3941 = load i16, ptr %3935, align 2, !tbaa !28
  %3942 = zext i16 %3941 to i32
  %3943 = shl i32 %3942, %3904
  %3944 = trunc i32 %3943 to i16
  %3945 = or i16 %3903, %3944
  store i16 %3945, ptr %3044, align 8, !tbaa !25
  br i1 %3940, label %3946, label %3973

3946:                                             ; preds = %3934
  %3947 = load i64, ptr %3045, align 8, !tbaa !32
  %3948 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3947, i64 1), !nosanitize !33
  %3949 = extractvalue { i64, i1 } %3948, 1, !nosanitize !33
  br i1 %3949, label %3950, label %3951, !prof !34, !nosanitize !33

3950:                                             ; preds = %3946
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3951:                                             ; preds = %3946
  %3952 = extractvalue { i64, i1 } %3948, 0, !nosanitize !33
  %3953 = load ptr, ptr %3046, align 8, !tbaa !35
  %3954 = trunc i16 %3945 to i8
  store i64 %3952, ptr %3045, align 8, !tbaa !32
  %3955 = getelementptr inbounds nuw i8, ptr %3953, i64 %3947
  store i8 %3954, ptr %3955, align 1, !tbaa !28
  %3956 = load i64, ptr %3045, align 8, !tbaa !32
  %3957 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3956, i64 1), !nosanitize !33
  %3958 = extractvalue { i64, i1 } %3957, 1, !nosanitize !33
  br i1 %3958, label %3959, label %3960, !prof !34, !nosanitize !33

3959:                                             ; preds = %3951
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3960:                                             ; preds = %3951
  %3961 = extractvalue { i64, i1 } %3957, 0, !nosanitize !33
  %3962 = load ptr, ptr %3046, align 8, !tbaa !35
  %3963 = load i16, ptr %3044, align 8, !tbaa !25
  %3964 = lshr i16 %3963, 8
  %3965 = trunc nuw i16 %3964 to i8
  store i64 %3961, ptr %3045, align 8, !tbaa !32
  %3966 = getelementptr inbounds nuw i8, ptr %3962, i64 %3956
  store i8 %3965, ptr %3966, align 1, !tbaa !28
  %3967 = load i32, ptr %2345, align 4, !tbaa !26
  %3968 = sub nsw i32 16, %3967
  %3969 = lshr i32 %3942, %3968
  %3970 = trunc nuw i32 %3969 to i16
  store i16 %3970, ptr %3044, align 8, !tbaa !25
  %3971 = add nsw i32 %3938, -16
  %3972 = add nsw i32 %3971, %3967
  br label %4178

3973:                                             ; preds = %3934
  %3974 = add nsw i32 %3904, %3938
  br label %4178

3975:                                             ; preds = %3927
  %3976 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %3933
  %3977 = load i8, ptr %3976, align 1, !tbaa !28
  %3978 = zext i8 %3977 to i64
  %3979 = getelementptr inbounds nuw [4 x i8], ptr %3895, i64 %3978
  %3980 = getelementptr inbounds nuw i8, ptr %3979, i64 1028
  %3981 = getelementptr inbounds nuw i8, ptr %3979, i64 1030
  %3982 = load i16, ptr %3981, align 2, !tbaa !28
  %3983 = zext i16 %3982 to i32
  %3984 = sub nsw i32 16, %3983
  %3985 = icmp sgt i32 %3904, %3984
  %3986 = load i16, ptr %3980, align 2, !tbaa !28
  %3987 = zext i16 %3986 to i32
  %3988 = shl i32 %3987, %3904
  %3989 = trunc i32 %3988 to i16
  %3990 = or i16 %3903, %3989
  store i16 %3990, ptr %3044, align 8, !tbaa !25
  br i1 %3985, label %3991, label %4018

3991:                                             ; preds = %3975
  %3992 = load i64, ptr %3045, align 8, !tbaa !32
  %3993 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3992, i64 1), !nosanitize !33
  %3994 = extractvalue { i64, i1 } %3993, 1, !nosanitize !33
  br i1 %3994, label %3995, label %3996, !prof !34, !nosanitize !33

3995:                                             ; preds = %3991
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

3996:                                             ; preds = %3991
  %3997 = extractvalue { i64, i1 } %3993, 0, !nosanitize !33
  %3998 = load ptr, ptr %3046, align 8, !tbaa !35
  %3999 = trunc i16 %3990 to i8
  store i64 %3997, ptr %3045, align 8, !tbaa !32
  %4000 = getelementptr inbounds nuw i8, ptr %3998, i64 %3992
  store i8 %3999, ptr %4000, align 1, !tbaa !28
  %4001 = load i64, ptr %3045, align 8, !tbaa !32
  %4002 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4001, i64 1), !nosanitize !33
  %4003 = extractvalue { i64, i1 } %4002, 1, !nosanitize !33
  br i1 %4003, label %4004, label %4005, !prof !34, !nosanitize !33

4004:                                             ; preds = %3996
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

4005:                                             ; preds = %3996
  %4006 = extractvalue { i64, i1 } %4002, 0, !nosanitize !33
  %4007 = load ptr, ptr %3046, align 8, !tbaa !35
  %4008 = load i16, ptr %3044, align 8, !tbaa !25
  %4009 = lshr i16 %4008, 8
  %4010 = trunc nuw i16 %4009 to i8
  store i64 %4006, ptr %3045, align 8, !tbaa !32
  %4011 = getelementptr inbounds nuw i8, ptr %4007, i64 %4001
  store i8 %4010, ptr %4011, align 1, !tbaa !28
  %4012 = load i32, ptr %2345, align 4, !tbaa !26
  %4013 = sub nsw i32 16, %4012
  %4014 = lshr i32 %3987, %4013
  %4015 = trunc nuw i32 %4014 to i16
  store i16 %4015, ptr %3044, align 8, !tbaa !25
  %4016 = add nsw i32 %3983, -16
  %4017 = add nsw i32 %4016, %4012
  br label %4020

4018:                                             ; preds = %3975
  %4019 = add nsw i32 %3904, %3983
  br label %4020

4020:                                             ; preds = %4018, %4005
  %4021 = phi i16 [ %3990, %4018 ], [ %4015, %4005 ]
  %4022 = phi i32 [ %4019, %4018 ], [ %4017, %4005 ]
  store i32 %4022, ptr %2345, align 4, !tbaa !26
  %4023 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %3978
  %4024 = load i32, ptr %4023, align 4, !tbaa !4
  %4025 = add i8 %3977, -28
  %4026 = icmp ult i8 %4025, -20
  br i1 %4026, label %4072, label %4027

4027:                                             ; preds = %4020
  %4028 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %3978
  %4029 = load i32, ptr %4028, align 4, !tbaa !4
  %4030 = sub nsw i32 %3931, %4029
  %4031 = sub nsw i32 16, %4024
  %4032 = icmp sgt i32 %4022, %4031
  br i1 %4032, label %4033, label %4064

4033:                                             ; preds = %4027
  %4034 = and i32 %4030, 65535
  %4035 = shl i32 %4030, %4022
  %4036 = trunc i32 %4035 to i16
  %4037 = or i16 %4021, %4036
  store i16 %4037, ptr %3044, align 8, !tbaa !25
  %4038 = load i64, ptr %3045, align 8, !tbaa !32
  %4039 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4038, i64 1), !nosanitize !33
  %4040 = extractvalue { i64, i1 } %4039, 1, !nosanitize !33
  br i1 %4040, label %4041, label %4042, !prof !34, !nosanitize !33

4041:                                             ; preds = %4033
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

4042:                                             ; preds = %4033
  %4043 = extractvalue { i64, i1 } %4039, 0, !nosanitize !33
  %4044 = load ptr, ptr %3046, align 8, !tbaa !35
  %4045 = trunc i16 %4037 to i8
  store i64 %4043, ptr %3045, align 8, !tbaa !32
  %4046 = getelementptr inbounds nuw i8, ptr %4044, i64 %4038
  store i8 %4045, ptr %4046, align 1, !tbaa !28
  %4047 = load i64, ptr %3045, align 8, !tbaa !32
  %4048 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4047, i64 1), !nosanitize !33
  %4049 = extractvalue { i64, i1 } %4048, 1, !nosanitize !33
  br i1 %4049, label %4050, label %4051, !prof !34, !nosanitize !33

4050:                                             ; preds = %4042
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

4051:                                             ; preds = %4042
  %4052 = extractvalue { i64, i1 } %4048, 0, !nosanitize !33
  %4053 = load ptr, ptr %3046, align 8, !tbaa !35
  %4054 = load i16, ptr %3044, align 8, !tbaa !25
  %4055 = lshr i16 %4054, 8
  %4056 = trunc nuw i16 %4055 to i8
  store i64 %4052, ptr %3045, align 8, !tbaa !32
  %4057 = getelementptr inbounds nuw i8, ptr %4053, i64 %4047
  store i8 %4056, ptr %4057, align 1, !tbaa !28
  %4058 = load i32, ptr %2345, align 4, !tbaa !26
  %4059 = sub nsw i32 16, %4058
  %4060 = lshr i32 %4034, %4059
  %4061 = trunc nuw i32 %4060 to i16
  %4062 = add nsw i32 %4024, -16
  %4063 = add nsw i32 %4062, %4058
  br label %4069

4064:                                             ; preds = %4027
  %4065 = shl i32 %4030, %4022
  %4066 = trunc i32 %4065 to i16
  %4067 = or i16 %4021, %4066
  %4068 = add nsw i32 %4024, %4022
  br label %4069

4069:                                             ; preds = %4064, %4051
  %4070 = phi i16 [ %4067, %4064 ], [ %4061, %4051 ]
  %4071 = phi i32 [ %4068, %4064 ], [ %4063, %4051 ]
  store i32 %4071, ptr %2345, align 4, !tbaa !26
  br label %4072

4072:                                             ; preds = %4069, %4020
  %4073 = phi i16 [ %4070, %4069 ], [ %4021, %4020 ]
  %4074 = phi i32 [ %4071, %4069 ], [ %4022, %4020 ]
  %4075 = add nsw i32 %3922, -1
  %4076 = icmp samesign ult i32 %3922, 257
  %4077 = zext nneg i32 %4075 to i64
  %4078 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4077
  %4079 = lshr i32 %4075, 7
  %4080 = zext nneg i32 %4079 to i64
  %4081 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4080
  %4082 = getelementptr inbounds nuw i8, ptr %4081, i64 256
  %4083 = select i1 %4076, ptr %4078, ptr %4082
  %4084 = load i8, ptr %4083, align 1, !tbaa !28
  %4085 = zext i8 %4084 to i64
  %4086 = getelementptr inbounds nuw [4 x i8], ptr %3896, i64 %4085
  %4087 = getelementptr inbounds nuw i8, ptr %4086, i64 2
  %4088 = load i16, ptr %4087, align 2, !tbaa !28
  %4089 = zext i16 %4088 to i32
  %4090 = sub nsw i32 16, %4089
  %4091 = icmp sgt i32 %4074, %4090
  %4092 = load i16, ptr %4086, align 2, !tbaa !28
  %4093 = zext i16 %4092 to i32
  %4094 = shl i32 %4093, %4074
  %4095 = trunc i32 %4094 to i16
  %4096 = or i16 %4073, %4095
  store i16 %4096, ptr %3044, align 8, !tbaa !25
  br i1 %4091, label %4097, label %4124

4097:                                             ; preds = %4072
  %4098 = load i64, ptr %3045, align 8, !tbaa !32
  %4099 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4098, i64 1), !nosanitize !33
  %4100 = extractvalue { i64, i1 } %4099, 1, !nosanitize !33
  br i1 %4100, label %4101, label %4102, !prof !34, !nosanitize !33

4101:                                             ; preds = %4097
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

4102:                                             ; preds = %4097
  %4103 = extractvalue { i64, i1 } %4099, 0, !nosanitize !33
  %4104 = load ptr, ptr %3046, align 8, !tbaa !35
  %4105 = trunc i16 %4096 to i8
  store i64 %4103, ptr %3045, align 8, !tbaa !32
  %4106 = getelementptr inbounds nuw i8, ptr %4104, i64 %4098
  store i8 %4105, ptr %4106, align 1, !tbaa !28
  %4107 = load i64, ptr %3045, align 8, !tbaa !32
  %4108 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4107, i64 1), !nosanitize !33
  %4109 = extractvalue { i64, i1 } %4108, 1, !nosanitize !33
  br i1 %4109, label %4110, label %4111, !prof !34, !nosanitize !33

4110:                                             ; preds = %4102
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

4111:                                             ; preds = %4102
  %4112 = extractvalue { i64, i1 } %4108, 0, !nosanitize !33
  %4113 = load ptr, ptr %3046, align 8, !tbaa !35
  %4114 = load i16, ptr %3044, align 8, !tbaa !25
  %4115 = lshr i16 %4114, 8
  %4116 = trunc nuw i16 %4115 to i8
  store i64 %4112, ptr %3045, align 8, !tbaa !32
  %4117 = getelementptr inbounds nuw i8, ptr %4113, i64 %4107
  store i8 %4116, ptr %4117, align 1, !tbaa !28
  %4118 = load i32, ptr %2345, align 4, !tbaa !26
  %4119 = sub nsw i32 16, %4118
  %4120 = lshr i32 %4093, %4119
  %4121 = trunc nuw i32 %4120 to i16
  store i16 %4121, ptr %3044, align 8, !tbaa !25
  %4122 = add nsw i32 %4089, -16
  %4123 = add nsw i32 %4122, %4118
  br label %4126

4124:                                             ; preds = %4072
  %4125 = add nsw i32 %4074, %4089
  br label %4126

4126:                                             ; preds = %4124, %4111
  %4127 = phi i16 [ %4096, %4124 ], [ %4121, %4111 ]
  %4128 = phi i32 [ %4125, %4124 ], [ %4123, %4111 ]
  store i32 %4128, ptr %2345, align 4, !tbaa !26
  %4129 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %4085
  %4130 = load i32, ptr %4129, align 4, !tbaa !4
  %4131 = icmp ult i8 %4084, 4
  br i1 %4131, label %4181, label %4132

4132:                                             ; preds = %4126
  %4133 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %4085
  %4134 = load i32, ptr %4133, align 4, !tbaa !4
  %4135 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %4075, i32 %4134), !nosanitize !33
  %4136 = extractvalue { i32, i1 } %4135, 0, !nosanitize !33
  %4137 = extractvalue { i32, i1 } %4135, 1, !nosanitize !33
  br i1 %4137, label %4138, label %4139, !prof !34, !nosanitize !33

4138:                                             ; preds = %4132
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !33
  unreachable, !nosanitize !33

4139:                                             ; preds = %4132
  %4140 = sub nsw i32 16, %4130
  %4141 = icmp sgt i32 %4128, %4140
  br i1 %4141, label %4142, label %4173

4142:                                             ; preds = %4139
  %4143 = and i32 %4136, 65535
  %4144 = shl i32 %4136, %4128
  %4145 = trunc i32 %4144 to i16
  %4146 = or i16 %4127, %4145
  store i16 %4146, ptr %3044, align 8, !tbaa !25
  %4147 = load i64, ptr %3045, align 8, !tbaa !32
  %4148 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4147, i64 1), !nosanitize !33
  %4149 = extractvalue { i64, i1 } %4148, 1, !nosanitize !33
  br i1 %4149, label %4150, label %4151, !prof !34, !nosanitize !33

4150:                                             ; preds = %4142
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

4151:                                             ; preds = %4142
  %4152 = extractvalue { i64, i1 } %4148, 0, !nosanitize !33
  %4153 = load ptr, ptr %3046, align 8, !tbaa !35
  %4154 = trunc i16 %4146 to i8
  store i64 %4152, ptr %3045, align 8, !tbaa !32
  %4155 = getelementptr inbounds nuw i8, ptr %4153, i64 %4147
  store i8 %4154, ptr %4155, align 1, !tbaa !28
  %4156 = load i64, ptr %3045, align 8, !tbaa !32
  %4157 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4156, i64 1), !nosanitize !33
  %4158 = extractvalue { i64, i1 } %4157, 1, !nosanitize !33
  br i1 %4158, label %4159, label %4160, !prof !34, !nosanitize !33

4159:                                             ; preds = %4151
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

4160:                                             ; preds = %4151
  %4161 = extractvalue { i64, i1 } %4157, 0, !nosanitize !33
  %4162 = load ptr, ptr %3046, align 8, !tbaa !35
  %4163 = load i16, ptr %3044, align 8, !tbaa !25
  %4164 = lshr i16 %4163, 8
  %4165 = trunc nuw i16 %4164 to i8
  store i64 %4161, ptr %3045, align 8, !tbaa !32
  %4166 = getelementptr inbounds nuw i8, ptr %4162, i64 %4156
  store i8 %4165, ptr %4166, align 1, !tbaa !28
  %4167 = load i32, ptr %2345, align 4, !tbaa !26
  %4168 = sub nsw i32 16, %4167
  %4169 = lshr i32 %4143, %4168
  %4170 = trunc nuw i32 %4169 to i16
  store i16 %4170, ptr %3044, align 8, !tbaa !25
  %4171 = add nsw i32 %4130, -16
  %4172 = add nsw i32 %4171, %4167
  br label %4178

4173:                                             ; preds = %4139
  %4174 = shl i32 %4136, %4128
  %4175 = trunc i32 %4174 to i16
  %4176 = or i16 %4127, %4175
  store i16 %4176, ptr %3044, align 8, !tbaa !25
  %4177 = add nsw i32 %4130, %4128
  br label %4178

4178:                                             ; preds = %4173, %4160, %3973, %3960
  %4179 = phi i16 [ %3970, %3960 ], [ %3945, %3973 ], [ %4176, %4173 ], [ %4170, %4160 ]
  %4180 = phi i32 [ %3972, %3960 ], [ %3974, %3973 ], [ %4177, %4173 ], [ %4172, %4160 ]
  store i32 %4180, ptr %2345, align 4, !tbaa !26
  br label %4181

4181:                                             ; preds = %4178, %4126
  %4182 = phi i16 [ %4127, %4126 ], [ %4179, %4178 ]
  %4183 = phi i32 [ %4128, %4126 ], [ %4180, %4178 ]
  %4184 = load i32, ptr %3897, align 4, !tbaa !31
  %4185 = icmp ult i32 %3924, %4184
  br i1 %4185, label %3902, label %4186, !llvm.loop !78

4186:                                             ; preds = %4181, %3892
  %4187 = phi i16 [ %3893, %3892 ], [ %4182, %4181 ]
  %4188 = phi i32 [ %3894, %3892 ], [ %4183, %4181 ]
  %4189 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %4190 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %4191 = load i16, ptr %4190, align 2, !tbaa !28
  %4192 = zext i16 %4191 to i32
  %4193 = sub nsw i32 16, %4192
  %4194 = icmp sgt i32 %4188, %4193
  %4195 = load i16, ptr %4189, align 2, !tbaa !28
  %4196 = zext i16 %4195 to i32
  %4197 = shl i32 %4196, %4188
  %4198 = trunc i32 %4197 to i16
  %4199 = or i16 %4187, %4198
  store i16 %4199, ptr %3044, align 8, !tbaa !25
  br i1 %4194, label %4200, label %4227

4200:                                             ; preds = %4186
  %4201 = load i64, ptr %3045, align 8, !tbaa !32
  %4202 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4201, i64 1), !nosanitize !33
  %4203 = extractvalue { i64, i1 } %4202, 1, !nosanitize !33
  br i1 %4203, label %4204, label %4205, !prof !34, !nosanitize !33

4204:                                             ; preds = %4200
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

4205:                                             ; preds = %4200
  %4206 = extractvalue { i64, i1 } %4202, 0, !nosanitize !33
  %4207 = load ptr, ptr %3046, align 8, !tbaa !35
  %4208 = trunc i16 %4199 to i8
  store i64 %4206, ptr %3045, align 8, !tbaa !32
  %4209 = getelementptr inbounds nuw i8, ptr %4207, i64 %4201
  store i8 %4208, ptr %4209, align 1, !tbaa !28
  %4210 = load i64, ptr %3045, align 8, !tbaa !32
  %4211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4210, i64 1), !nosanitize !33
  %4212 = extractvalue { i64, i1 } %4211, 1, !nosanitize !33
  br i1 %4212, label %4213, label %4214, !prof !34, !nosanitize !33

4213:                                             ; preds = %4205
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

4214:                                             ; preds = %4205
  %4215 = extractvalue { i64, i1 } %4211, 0, !nosanitize !33
  %4216 = load ptr, ptr %3046, align 8, !tbaa !35
  %4217 = load i16, ptr %3044, align 8, !tbaa !25
  %4218 = lshr i16 %4217, 8
  %4219 = trunc nuw i16 %4218 to i8
  store i64 %4215, ptr %3045, align 8, !tbaa !32
  %4220 = getelementptr inbounds nuw i8, ptr %4216, i64 %4210
  store i8 %4219, ptr %4220, align 1, !tbaa !28
  %4221 = load i32, ptr %2345, align 4, !tbaa !26
  %4222 = sub nsw i32 16, %4221
  %4223 = lshr i32 %4196, %4222
  %4224 = trunc nuw i32 %4223 to i16
  store i16 %4224, ptr %3044, align 8, !tbaa !25
  %4225 = add nsw i32 %4192, -16
  %4226 = add nsw i32 %4225, %4221
  br label %4229

4227:                                             ; preds = %4186
  %4228 = add nsw i32 %4188, %4192
  br label %4229

4229:                                             ; preds = %4227, %4214
  %4230 = phi i32 [ %4228, %4227 ], [ %4226, %4214 ]
  store i32 %4230, ptr %2345, align 4, !tbaa !26
  br label %4231

4231:                                             ; preds = %4229, %2859, %2491
  %4232 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %4233

4233:                                             ; preds = %4233, %4231
  %4234 = phi i64 [ 0, %4231 ], [ %4238, %4233 ]
  %4235 = getelementptr inbounds nuw [4 x i8], ptr %4232, i64 %4234
  store i16 0, ptr %4235, align 4, !tbaa !28
  %4236 = getelementptr inbounds nuw [4 x i8], ptr %4232, i64 %4234
  %4237 = getelementptr inbounds nuw i8, ptr %4236, i64 4
  store i16 0, ptr %4237, align 4, !tbaa !28
  %4238 = add nuw nsw i64 %4234, 2
  %4239 = icmp eq i64 %4238, 286
  br i1 %4239, label %4240, label %4233, !llvm.loop !29

4240:                                             ; preds = %4233
  %4241 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %4241, align 4, !tbaa !28
  %4242 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %4242, align 4, !tbaa !28
  %4243 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %4243, align 4, !tbaa !28
  %4244 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %4244, align 4, !tbaa !28
  %4245 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %4245, align 4, !tbaa !28
  %4246 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %4246, align 4, !tbaa !28
  %4247 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %4247, align 4, !tbaa !28
  %4248 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %4248, align 4, !tbaa !28
  %4249 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %4249, align 4, !tbaa !28
  %4250 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %4250, align 4, !tbaa !28
  %4251 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %4251, align 4, !tbaa !28
  %4252 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %4252, align 4, !tbaa !28
  %4253 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %4253, align 4, !tbaa !28
  %4254 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %4254, align 4, !tbaa !28
  %4255 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %4255, align 4, !tbaa !28
  %4256 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %4256, align 4, !tbaa !28
  %4257 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %4257, align 4, !tbaa !28
  %4258 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %4258, align 4, !tbaa !28
  %4259 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %4259, align 4, !tbaa !28
  %4260 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %4260, align 4, !tbaa !28
  %4261 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %4261, align 4, !tbaa !28
  %4262 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %4262, align 4, !tbaa !28
  %4263 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %4263, align 4, !tbaa !28
  %4264 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %4264, align 4, !tbaa !28
  %4265 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %4265, align 4, !tbaa !28
  %4266 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %4266, align 4, !tbaa !28
  %4267 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %4267, align 4, !tbaa !28
  %4268 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %4268, align 4, !tbaa !28
  %4269 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %4269, align 4, !tbaa !28
  %4270 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %4270, align 4, !tbaa !28
  %4271 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %4271, align 4, !tbaa !28
  %4272 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %4272, align 4, !tbaa !28
  %4273 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %4273, align 4, !tbaa !28
  %4274 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %4274, align 4, !tbaa !28
  %4275 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %4275, align 4, !tbaa !28
  %4276 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %4276, align 4, !tbaa !28
  %4277 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %4277, align 4, !tbaa !28
  %4278 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %4278, align 4, !tbaa !28
  %4279 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %4279, align 4, !tbaa !28
  %4280 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %4280, align 4, !tbaa !28
  %4281 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %4281, align 4, !tbaa !28
  %4282 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %4282, align 4, !tbaa !28
  %4283 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %4283, align 4, !tbaa !28
  %4284 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %4284, align 4, !tbaa !28
  %4285 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %4285, align 4, !tbaa !28
  %4286 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %4286, align 4, !tbaa !28
  %4287 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %4287, align 4, !tbaa !28
  %4288 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %4288, align 4, !tbaa !28
  %4289 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %4289, align 4, !tbaa !28
  %4290 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %4290, align 4, !tbaa !28
  %4291 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %4292 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %4292, align 4, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4291, i8 0, i64 20, i1 false)
  %4293 = icmp eq i32 %3, 0
  br i1 %4293, label %4346, label %4294

4294:                                             ; preds = %4240
  %4295 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %4296 = load i32, ptr %4295, align 4, !tbaa !26
  %4297 = icmp sgt i32 %4296, 8
  br i1 %4297, label %4298, label %4323

4298:                                             ; preds = %4294
  %4299 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4300 = load i64, ptr %4299, align 8, !tbaa !32
  %4301 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4300, i64 1), !nosanitize !33
  %4302 = extractvalue { i64, i1 } %4301, 1, !nosanitize !33
  br i1 %4302, label %4303, label %4304, !prof !34, !nosanitize !33

4303:                                             ; preds = %4298
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

4304:                                             ; preds = %4298
  %4305 = extractvalue { i64, i1 } %4301, 0, !nosanitize !33
  %4306 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4307 = load ptr, ptr %4306, align 8, !tbaa !35
  %4308 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4309 = load i16, ptr %4308, align 8, !tbaa !25
  %4310 = trunc i16 %4309 to i8
  store i64 %4305, ptr %4299, align 8, !tbaa !32
  %4311 = getelementptr inbounds nuw i8, ptr %4307, i64 %4300
  store i8 %4310, ptr %4311, align 1, !tbaa !28
  %4312 = load i64, ptr %4299, align 8, !tbaa !32
  %4313 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4312, i64 1), !nosanitize !33
  %4314 = extractvalue { i64, i1 } %4313, 1, !nosanitize !33
  br i1 %4314, label %4315, label %4316, !prof !34, !nosanitize !33

4315:                                             ; preds = %4304
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

4316:                                             ; preds = %4304
  %4317 = extractvalue { i64, i1 } %4313, 0, !nosanitize !33
  %4318 = load ptr, ptr %4306, align 8, !tbaa !35
  %4319 = load i16, ptr %4308, align 8, !tbaa !25
  %4320 = lshr i16 %4319, 8
  %4321 = trunc nuw i16 %4320 to i8
  store i64 %4317, ptr %4299, align 8, !tbaa !32
  %4322 = getelementptr inbounds nuw i8, ptr %4318, i64 %4312
  store i8 %4321, ptr %4322, align 1, !tbaa !28
  br label %4339

4323:                                             ; preds = %4294
  %4324 = icmp sgt i32 %4296, 0
  br i1 %4324, label %4325, label %4339

4325:                                             ; preds = %4323
  %4326 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4327 = load i64, ptr %4326, align 8, !tbaa !32
  %4328 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4327, i64 1), !nosanitize !33
  %4329 = extractvalue { i64, i1 } %4328, 1, !nosanitize !33
  br i1 %4329, label %4330, label %4331, !prof !34, !nosanitize !33

4330:                                             ; preds = %4325
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

4331:                                             ; preds = %4325
  %4332 = extractvalue { i64, i1 } %4328, 0, !nosanitize !33
  %4333 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4334 = load ptr, ptr %4333, align 8, !tbaa !35
  %4335 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4336 = load i16, ptr %4335, align 8, !tbaa !25
  %4337 = trunc i16 %4336 to i8
  store i64 %4332, ptr %4326, align 8, !tbaa !32
  %4338 = getelementptr inbounds nuw i8, ptr %4334, i64 %4327
  store i8 %4337, ptr %4338, align 1, !tbaa !28
  br label %4339

4339:                                             ; preds = %4331, %4323, %4316
  %4340 = load i32, ptr %4295, align 4, !tbaa !26
  %4341 = add i32 %4340, 7
  %4342 = and i32 %4341, 7
  %4343 = add nuw nsw i32 %4342, 1
  %4344 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %4343, ptr %4344, align 8, !tbaa !27
  %4345 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %4345, align 8, !tbaa !25
  store i32 0, ptr %4295, align 4, !tbaa !26
  br label %4346

4346:                                             ; preds = %4339, %4240
  ret void
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_tr_tally(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %6 = load i32, ptr %5, align 4, !tbaa !31
  %7 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %6, i32 1), !nosanitize !33
  %8 = extractvalue { i32, i1 } %7, 1, !nosanitize !33
  br i1 %8, label %9, label %10, !prof !34, !nosanitize !33

9:                                                ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

10:                                               ; preds = %3
  %11 = extractvalue { i32, i1 } %7, 0, !nosanitize !33
  %12 = load ptr, ptr %4, align 8, !tbaa !77
  %13 = trunc i32 %1 to i8
  store i32 %11, ptr %5, align 4, !tbaa !31
  %14 = zext i32 %6 to i64
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 %14
  store i8 %13, ptr %15, align 1, !tbaa !28
  %16 = load i32, ptr %5, align 4, !tbaa !31
  %17 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %16, i32 1), !nosanitize !33
  %18 = extractvalue { i32, i1 } %17, 1, !nosanitize !33
  br i1 %18, label %19, label %20, !prof !34, !nosanitize !33

19:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

20:                                               ; preds = %10
  %21 = extractvalue { i32, i1 } %17, 0, !nosanitize !33
  %22 = load ptr, ptr %4, align 8, !tbaa !77
  %23 = lshr i32 %1, 8
  %24 = trunc i32 %23 to i8
  store i32 %21, ptr %5, align 4, !tbaa !31
  %25 = zext i32 %16 to i64
  %26 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  store i8 %24, ptr %26, align 1, !tbaa !28
  %27 = load i32, ptr %5, align 4, !tbaa !31
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %27, i32 1), !nosanitize !33
  %29 = extractvalue { i32, i1 } %28, 1, !nosanitize !33
  br i1 %29, label %30, label %31, !prof !34, !nosanitize !33

30:                                               ; preds = %20
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

31:                                               ; preds = %20
  %32 = extractvalue { i32, i1 } %28, 0, !nosanitize !33
  %33 = load ptr, ptr %4, align 8, !tbaa !77
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
  %41 = getelementptr inbounds nuw [4 x i8], ptr %39, i64 %40
  %42 = load i16, ptr %41, align 4, !tbaa !28
  %43 = add i16 %42, 1
  store i16 %43, ptr %41, align 4, !tbaa !28
  br label %75

44:                                               ; preds = %31
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %46 = load i32, ptr %45, align 8, !tbaa !82
  %47 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %46, i32 1), !nosanitize !33
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !33
  br i1 %48, label %49, label %50, !prof !34, !nosanitize !33

49:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !33
  unreachable, !nosanitize !33

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !33
  store i32 %51, ptr %45, align 8, !tbaa !82
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
  %76 = load i32, ptr %5, align 4, !tbaa !31
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %78 = load i32, ptr %77, align 8, !tbaa !83
  %79 = icmp eq i32 %76, %78
  %80 = zext i1 %79 to i32
  ret i32 %80
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nomerge noreturn nounwind }
attributes #10 = { nounwind }

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
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!9, !5, i64 5900}
!32 = !{!9, !13, i64 40}
!33 = !{}
!34 = !{!"branch_weights", i32 1, i32 1048575}
!35 = !{!9, !12, i64 16}
!36 = !{!9, !5, i64 196}
!37 = !{!9, !10, i64 0}
!38 = !{!39, !5, i64 88}
!39 = !{!"z_stream_s", !12, i64 0, !5, i64 8, !13, i64 16, !12, i64 24, !5, i64 32, !13, i64 40, !12, i64 48, !40, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !5, i64 88, !13, i64 96, !13, i64 104}
!40 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!41 = distinct !{!41, !30}
!42 = !{!16, !17, i64 0}
!43 = !{!16, !18, i64 16}
!44 = !{!45, !17, i64 0}
!45 = !{!"static_tree_desc_s", !17, i64 0, !46, i64 8, !5, i64 16, !5, i64 20, !5, i64 24}
!46 = !{!"p1 int", !11, i64 0}
!47 = !{!45, !5, i64 20}
!48 = !{!9, !5, i64 5300}
!49 = !{!9, !5, i64 5304}
!50 = distinct !{!50, !30}
!51 = !{!9, !13, i64 5912}
!52 = !{!9, !13, i64 5920}
!53 = distinct !{!53, !30}
!54 = !{!16, !5, i64 8}
!55 = distinct !{!55, !30}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
!58 = !{!45, !46, i64 8}
!59 = !{!45, !5, i64 16}
!60 = !{!45, !5, i64 24}
!61 = !{!19, !19, i64 0}
!62 = distinct !{!62, !30}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30}
!66 = distinct !{!66, !30}
!67 = distinct !{!67, !30}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = distinct !{!70, !30}
!71 = distinct !{!71, !69}
!72 = !{!9, !5, i64 2912}
!73 = distinct !{!73, !30}
!74 = !{!9, !5, i64 2936}
!75 = distinct !{!75, !69}
!76 = !{!9, !5, i64 200}
!77 = !{!9, !12, i64 5888}
!78 = distinct !{!78, !30}
!79 = distinct !{!79, !30}
!80 = distinct !{!80, !30}
!81 = distinct !{!81, !30}
!82 = !{!9, !5, i64 5928}
!83 = !{!9, !5, i64 5904}
