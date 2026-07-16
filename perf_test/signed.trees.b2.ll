; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/signed.trees.ll'
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
  %8 = shl i32 %3, %6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %10 = load i16, ptr %9, align 8, !tbaa !25
  %11 = trunc i32 %8 to i16
  %12 = or i16 %10, %11
  store i16 %12, ptr %9, align 8, !tbaa !25
  br i1 %7, label %15, label %40

13:                                               ; preds = %15
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

14:                                               ; preds = %33
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

15:                                               ; preds = %4
  %16 = trunc i16 %12 to i8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load ptr, ptr %17, align 8, !tbaa !31
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i64, ptr %19, align 8, !tbaa !32
  %21 = add i64 %20, 1
  store i64 %21, ptr %19, align 8, !tbaa !32
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  store i8 %16, ptr %22, align 1, !tbaa !28
  %23 = load i16, ptr %9, align 8, !tbaa !25
  %24 = lshr i16 %23, 8
  %25 = trunc nuw i16 %24 to i8
  %26 = load ptr, ptr %17, align 8, !tbaa !31
  %27 = load i64, ptr %19, align 8, !tbaa !32
  %28 = add i64 %27, 1
  store i64 %28, ptr %19, align 8, !tbaa !32
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 %27
  store i8 %25, ptr %29, align 1, !tbaa !28
  %30 = load i32, ptr %5, align 4, !tbaa !26
  %31 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %30), !nosanitize !30
  %32 = extractvalue { i32, i1 } %31, 1, !nosanitize !30
  br i1 %32, label %13, label %33, !prof !33, !nosanitize !30

33:                                               ; preds = %15
  %34 = extractvalue { i32, i1 } %31, 0, !nosanitize !30
  %35 = and i32 %3, 65535
  %36 = lshr i32 %35, %34
  %37 = trunc nuw i32 %36 to i16
  store i16 %37, ptr %9, align 8, !tbaa !25
  %38 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %30, i32 -13), !nosanitize !30
  %39 = extractvalue { i32, i1 } %38, 1, !nosanitize !30
  br i1 %39, label %14, label %43, !prof !33, !nosanitize !30

40:                                               ; preds = %4
  %41 = add nsw i32 %6, 3
  %42 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %41, 0
  br label %43

43:                                               ; preds = %40, %33
  %44 = phi i16 [ %37, %33 ], [ %12, %40 ]
  %45 = phi { i32, i1 } [ %38, %33 ], [ %42, %40 ]
  %46 = extractvalue { i32, i1 } %45, 0
  store i32 %46, ptr %5, align 4, !tbaa !26
  %47 = icmp sgt i32 %46, 8
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = trunc i16 %44 to i8
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %51 = load ptr, ptr %50, align 8, !tbaa !31
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !32
  %54 = add i64 %53, 1
  store i64 %54, ptr %52, align 8, !tbaa !32
  %55 = getelementptr inbounds nuw i8, ptr %51, i64 %53
  store i8 %49, ptr %55, align 1, !tbaa !28
  %56 = load i16, ptr %9, align 8, !tbaa !25
  %57 = lshr i16 %56, 8
  %58 = trunc nuw i16 %57 to i8
  %59 = load ptr, ptr %50, align 8, !tbaa !31
  %60 = load i64, ptr %52, align 8, !tbaa !32
  %61 = add i64 %60, 1
  store i64 %61, ptr %52, align 8, !tbaa !32
  %62 = getelementptr inbounds nuw i8, ptr %59, i64 %60
  store i8 %58, ptr %62, align 1, !tbaa !28
  br label %73

63:                                               ; preds = %43
  %64 = icmp sgt i32 %46, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %63
  %66 = trunc i16 %44 to i8
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %68 = load ptr, ptr %67, align 8, !tbaa !31
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %70 = load i64, ptr %69, align 8, !tbaa !32
  %71 = add i64 %70, 1
  store i64 %71, ptr %69, align 8, !tbaa !32
  %72 = getelementptr inbounds nuw i8, ptr %68, i64 %70
  store i8 %66, ptr %72, align 1, !tbaa !28
  br label %73

73:                                               ; preds = %65, %63, %48
  %74 = load i32, ptr %5, align 4, !tbaa !26
  %75 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %74, i32 -1)
  %76 = extractvalue { i32, i1 } %75, 1, !nosanitize !30
  br i1 %76, label %77, label %78, !prof !33, !nosanitize !30

77:                                               ; preds = %73
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

78:                                               ; preds = %73
  %79 = extractvalue { i32, i1 } %75, 0, !nosanitize !30
  %80 = and i32 %79, 7
  %81 = add nuw nsw i32 %80, 1
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %81, ptr %82, align 8, !tbaa !27
  store i16 0, ptr %9, align 8, !tbaa !25
  store i32 0, ptr %5, align 4, !tbaa !26
  %83 = trunc i64 %2 to i8
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %85 = load ptr, ptr %84, align 8, !tbaa !31
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %87 = load i64, ptr %86, align 8, !tbaa !32
  %88 = add i64 %87, 1
  store i64 %88, ptr %86, align 8, !tbaa !32
  %89 = getelementptr inbounds nuw i8, ptr %85, i64 %87
  store i8 %83, ptr %89, align 1, !tbaa !28
  %90 = lshr i64 %2, 8
  %91 = trunc i64 %90 to i8
  %92 = load ptr, ptr %84, align 8, !tbaa !31
  %93 = load i64, ptr %86, align 8, !tbaa !32
  %94 = add i64 %93, 1
  store i64 %94, ptr %86, align 8, !tbaa !32
  %95 = getelementptr inbounds nuw i8, ptr %92, i64 %93
  store i8 %91, ptr %95, align 1, !tbaa !28
  %96 = trunc i64 %2 to i32
  %97 = xor i32 %96, 65535
  %98 = trunc i32 %97 to i8
  %99 = load ptr, ptr %84, align 8, !tbaa !31
  %100 = load i64, ptr %86, align 8, !tbaa !32
  %101 = add i64 %100, 1
  store i64 %101, ptr %86, align 8, !tbaa !32
  %102 = getelementptr inbounds nuw i8, ptr %99, i64 %100
  store i8 %98, ptr %102, align 1, !tbaa !28
  %103 = lshr i32 %97, 8
  %104 = trunc i32 %103 to i8
  %105 = load ptr, ptr %84, align 8, !tbaa !31
  %106 = load i64, ptr %86, align 8, !tbaa !32
  %107 = add i64 %106, 1
  store i64 %107, ptr %86, align 8, !tbaa !32
  %108 = getelementptr inbounds nuw i8, ptr %105, i64 %106
  store i8 %104, ptr %108, align 1, !tbaa !28
  %109 = icmp eq i64 %2, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %78
  %111 = load ptr, ptr %84, align 8, !tbaa !31
  %112 = load i64, ptr %86, align 8, !tbaa !32
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 %112
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %113, ptr align 1 %1, i64 %2, i1 false)
  br label %114

114:                                              ; preds = %110, %78
  %115 = load i64, ptr %86, align 8, !tbaa !32
  %116 = add i64 %115, %2
  store i64 %116, ptr %86, align 8, !tbaa !32
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local void @_tr_flush_bits(ptr noundef captures(none) %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %3 = load i32, ptr %2, align 4, !tbaa !26
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %7 = load i16, ptr %6, align 8, !tbaa !25
  %8 = trunc i16 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa !31
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %12 = load i64, ptr %11, align 8, !tbaa !32
  %13 = add i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !32
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 %12
  store i8 %8, ptr %14, align 1, !tbaa !28
  %15 = load i16, ptr %6, align 8, !tbaa !25
  %16 = lshr i16 %15, 8
  %17 = trunc nuw i16 %16 to i8
  %18 = load ptr, ptr %9, align 8, !tbaa !31
  %19 = load i64, ptr %11, align 8, !tbaa !32
  %20 = add i64 %19, 1
  store i64 %20, ptr %11, align 8, !tbaa !32
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %19
  store i8 %17, ptr %21, align 1, !tbaa !28
  store i16 0, ptr %6, align 8, !tbaa !25
  br label %42

22:                                               ; preds = %1
  %23 = icmp sgt i32 %3, 7
  br i1 %23, label %24, label %44

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %26 = load i16, ptr %25, align 8, !tbaa !25
  %27 = trunc i16 %26 to i8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %29 = load ptr, ptr %28, align 8, !tbaa !31
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load i64, ptr %30, align 8, !tbaa !32
  %32 = add i64 %31, 1
  store i64 %32, ptr %30, align 8, !tbaa !32
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 %31
  store i8 %27, ptr %33, align 1, !tbaa !28
  %34 = load i16, ptr %25, align 8, !tbaa !25
  %35 = lshr i16 %34, 8
  store i16 %35, ptr %25, align 8, !tbaa !25
  %36 = load i32, ptr %2, align 4, !tbaa !26
  %37 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %36, i32 -8)
  %38 = extractvalue { i32, i1 } %37, 1, !nosanitize !30
  br i1 %38, label %39, label %40, !prof !33, !nosanitize !30

39:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

40:                                               ; preds = %24
  %41 = extractvalue { i32, i1 } %37, 0, !nosanitize !30
  br label %42

42:                                               ; preds = %40, %5
  %43 = phi i32 [ %41, %40 ], [ 0, %5 ]
  store i32 %43, ptr %2, align 4, !tbaa !26
  br label %44

44:                                               ; preds = %42, %22
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
  br i1 %4, label %11, label %36

10:                                               ; preds = %45, %11
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

11:                                               ; preds = %1
  %12 = trunc i16 %9 to i8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !31
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = load i64, ptr %15, align 8, !tbaa !32
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8, !tbaa !32
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 %16
  store i8 %12, ptr %18, align 1, !tbaa !28
  %19 = load i16, ptr %6, align 8, !tbaa !25
  %20 = lshr i16 %19, 8
  %21 = trunc nuw i16 %20 to i8
  %22 = load ptr, ptr %13, align 8, !tbaa !31
  %23 = load i64, ptr %15, align 8, !tbaa !32
  %24 = add i64 %23, 1
  store i64 %24, ptr %15, align 8, !tbaa !32
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  store i8 %21, ptr %25, align 1, !tbaa !28
  %26 = load i32, ptr %2, align 4, !tbaa !26
  %27 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %26), !nosanitize !30
  %28 = extractvalue { i32, i1 } %27, 1, !nosanitize !30
  br i1 %28, label %10, label %29, !prof !33, !nosanitize !30

29:                                               ; preds = %11
  %30 = extractvalue { i32, i1 } %27, 0, !nosanitize !30
  %31 = lshr i32 2, %30
  %32 = trunc nuw nsw i32 %31 to i16
  store i16 %32, ptr %6, align 8, !tbaa !25
  %33 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 -13), !nosanitize !30
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !30
  br i1 %34, label %35, label %39, !prof !33, !nosanitize !30

35:                                               ; preds = %62, %29
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

36:                                               ; preds = %1
  %37 = add nsw i32 %3, 3
  %38 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %37, 0
  br label %39

39:                                               ; preds = %36, %29
  %40 = phi i16 [ %32, %29 ], [ %9, %36 ]
  %41 = phi { i32, i1 } [ %33, %29 ], [ %38, %36 ]
  %42 = extractvalue { i32, i1 } %41, 0
  store i32 %42, ptr %2, align 4, !tbaa !26
  %43 = icmp sgt i32 %42, 9
  %44 = trunc i16 %40 to i8
  br i1 %43, label %45, label %67

45:                                               ; preds = %39
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %47 = load ptr, ptr %46, align 8, !tbaa !31
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %49 = load i64, ptr %48, align 8, !tbaa !32
  %50 = add i64 %49, 1
  store i64 %50, ptr %48, align 8, !tbaa !32
  %51 = getelementptr inbounds nuw i8, ptr %47, i64 %49
  store i8 %44, ptr %51, align 1, !tbaa !28
  %52 = load i16, ptr %6, align 8, !tbaa !25
  %53 = lshr i16 %52, 8
  %54 = trunc nuw i16 %53 to i8
  %55 = load ptr, ptr %46, align 8, !tbaa !31
  %56 = load i64, ptr %48, align 8, !tbaa !32
  %57 = add i64 %56, 1
  store i64 %57, ptr %48, align 8, !tbaa !32
  %58 = getelementptr inbounds nuw i8, ptr %55, i64 %56
  store i8 %54, ptr %58, align 1, !tbaa !28
  %59 = load i32, ptr %2, align 4, !tbaa !26
  %60 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %59), !nosanitize !30
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !30
  br i1 %61, label %10, label %62, !prof !33, !nosanitize !30

62:                                               ; preds = %45
  store i16 0, ptr %6, align 8, !tbaa !25
  %63 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %59, i32 -9), !nosanitize !30
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !30
  br i1 %64, label %35, label %65, !prof !33, !nosanitize !30

65:                                               ; preds = %62
  %66 = extractvalue { i32, i1 } %63, 0, !nosanitize !30
  br label %69

67:                                               ; preds = %39
  %68 = add nsw i32 %42, 7
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i8 [ %44, %67 ], [ 0, %65 ]
  %71 = phi i32 [ %68, %67 ], [ %66, %65 ]
  store i32 %71, ptr %2, align 4, !tbaa !26
  %72 = icmp eq i32 %71, 16
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %75 = load ptr, ptr %74, align 8, !tbaa !31
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %77 = load i64, ptr %76, align 8, !tbaa !32
  %78 = add i64 %77, 1
  store i64 %78, ptr %76, align 8, !tbaa !32
  %79 = getelementptr inbounds nuw i8, ptr %75, i64 %77
  store i8 %70, ptr %79, align 1, !tbaa !28
  %80 = load i16, ptr %6, align 8, !tbaa !25
  %81 = lshr i16 %80, 8
  %82 = trunc nuw i16 %81 to i8
  %83 = load ptr, ptr %74, align 8, !tbaa !31
  %84 = load i64, ptr %76, align 8, !tbaa !32
  %85 = add i64 %84, 1
  store i64 %85, ptr %76, align 8, !tbaa !32
  %86 = getelementptr inbounds nuw i8, ptr %83, i64 %84
  store i8 %82, ptr %86, align 1, !tbaa !28
  store i16 0, ptr %6, align 8, !tbaa !25
  br label %104

87:                                               ; preds = %69
  %88 = icmp sgt i32 %71, 7
  br i1 %88, label %89, label %106

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %91 = load ptr, ptr %90, align 8, !tbaa !31
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %93 = load i64, ptr %92, align 8, !tbaa !32
  %94 = add i64 %93, 1
  store i64 %94, ptr %92, align 8, !tbaa !32
  %95 = getelementptr inbounds nuw i8, ptr %91, i64 %93
  store i8 %70, ptr %95, align 1, !tbaa !28
  %96 = load i16, ptr %6, align 8, !tbaa !25
  %97 = lshr i16 %96, 8
  store i16 %97, ptr %6, align 8, !tbaa !25
  %98 = load i32, ptr %2, align 4, !tbaa !26
  %99 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %98, i32 -8)
  %100 = extractvalue { i32, i1 } %99, 1, !nosanitize !30
  br i1 %100, label %101, label %102, !prof !33, !nosanitize !30

101:                                              ; preds = %89
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

102:                                              ; preds = %89
  %103 = extractvalue { i32, i1 } %99, 0, !nosanitize !30
  br label %104

104:                                              ; preds = %102, %73
  %105 = phi i32 [ %103, %102 ], [ 0, %73 ]
  store i32 %105, ptr %2, align 4, !tbaa !26
  br label %106

106:                                              ; preds = %104, %87
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
  br i1 %10, label %11, label %2304

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
  br i1 %19, label %20, label %.loopexit328

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %22 = load i16, ptr %21, align 4, !tbaa !28
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %.loopexit328

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %26 = load i16, ptr %25, align 4, !tbaa !28
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %.loopexit328

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %30 = load i16, ptr %29, align 4, !tbaa !28
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %.loopexit328

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 228
  %34 = load i16, ptr %33, align 4, !tbaa !28
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %.loopexit328

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %38 = load i16, ptr %37, align 4, !tbaa !28
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %.loopexit328

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %42 = load i16, ptr %41, align 4, !tbaa !28
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %.loopexit328

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %46 = load i16, ptr %45, align 4, !tbaa !28
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %.loopexit328

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %50 = load i16, ptr %49, align 4, !tbaa !28
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %.loopexit328

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %54 = load i16, ptr %53, align 4, !tbaa !28
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %.loopexit328

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %58 = load i16, ptr %57, align 4, !tbaa !28
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %.loopexit328

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %62 = load i16, ptr %61, align 4, !tbaa !28
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %.loopexit328

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %66 = load i16, ptr %65, align 4, !tbaa !28
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %.loopexit328

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 292
  %70 = load i16, ptr %69, align 4, !tbaa !28
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %.loopexit328

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %74 = load i16, ptr %73, align 4, !tbaa !28
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %.loopexit328

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %78 = load i16, ptr %77, align 4, !tbaa !28
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %.loopexit328

80:                                               ; preds = %76
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %82 = load i16, ptr %81, align 4, !tbaa !28
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %.loopexit328

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 308
  %86 = load i16, ptr %85, align 4, !tbaa !28
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %.loopexit328

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %90 = load i16, ptr %89, align 4, !tbaa !28
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %.loopexit328

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 324
  %94 = load i16, ptr %93, align 4, !tbaa !28
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %.loopexit328

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %98 = load i16, ptr %97, align 4, !tbaa !28
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %.loopexit328

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 332
  %102 = load i16, ptr %101, align 4, !tbaa !28
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %.loopexit328

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %106 = load i16, ptr %105, align 4, !tbaa !28
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %.loopexit328

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %110 = load i16, ptr %109, align 4, !tbaa !28
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %.loopexit328

112:                                              ; preds = %108
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 252
  %114 = load i16, ptr %113, align 4, !tbaa !28
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %.loopexit328

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %118 = load i16, ptr %117, align 4, !tbaa !28
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %.preheader327, label %.loopexit328

120:                                              ; preds = %.preheader327
  %121 = getelementptr inbounds nuw i8, ptr %152, i64 4
  %122 = load i16, ptr %121, align 4, !tbaa !28
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %.loopexit328

124:                                              ; preds = %120
  %125 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %126 = load i16, ptr %125, align 4, !tbaa !28
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %.loopexit328

128:                                              ; preds = %124
  %129 = getelementptr inbounds nuw i8, ptr %152, i64 12
  %130 = load i16, ptr %129, align 4, !tbaa !28
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %.preheader327.1, label %.loopexit328

.preheader327.1:                                  ; preds = %128
  %132 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %151
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %134 = load i16, ptr %133, align 4, !tbaa !28
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %.loopexit328

136:                                              ; preds = %.preheader327.1
  %137 = getelementptr inbounds nuw i8, ptr %132, i64 20
  %138 = load i16, ptr %137, align 4, !tbaa !28
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %.loopexit328

140:                                              ; preds = %136
  %141 = getelementptr inbounds nuw i8, ptr %132, i64 24
  %142 = load i16, ptr %141, align 4, !tbaa !28
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %.loopexit328

144:                                              ; preds = %140
  %145 = getelementptr inbounds nuw i8, ptr %132, i64 28
  %146 = load i16, ptr %145, align 4, !tbaa !28
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %.loopexit328

148:                                              ; preds = %144
  %149 = add nuw nsw i64 %151, 8
  %150 = icmp eq i64 %149, 256
  br i1 %150, label %.loopexit328, label %.preheader327, !llvm.loop !39

.preheader327:                                    ; preds = %116, %148
  %151 = phi i64 [ %149, %148 ], [ 32, %116 ]
  %152 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %151
  %153 = load i16, ptr %152, align 4, !tbaa !28
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %120, label %.loopexit328

.loopexit328:                                     ; preds = %.preheader327, %128, %124, %120, %.preheader327.1, %136, %140, %144, %148, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16
  %155 = phi i32 [ 1, %112 ], [ 0, %20 ], [ 1, %108 ], [ 1, %116 ], [ 0, %16 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ 0, %24 ], [ 1, %124 ], [ 1, %128 ], [ 1, %120 ], [ 0, %148 ], [ 1, %.preheader327 ], [ 1, %.preheader327.1 ], [ 1, %136 ], [ 1, %140 ], [ 1, %144 ]
  store i32 %155, ptr %13, align 8, !tbaa !36
  br label %156

156:                                              ; preds = %.loopexit328, %11
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
  br i1 %173, label %174, label %.loopexit325

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
  br i1 %191, label %.loopexit322, label %192, !prof !33, !nosanitize !30

.loopexit322:                                     ; preds = %188, %398
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
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

204:                                              ; preds = %226, %174
  %205 = phi i32 [ %176, %174 ], [ %227, %226 ]
  %206 = phi i32 [ %175, %174 ], [ %209, %226 ]
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
  %218 = add i64 %217, -1
  store i64 %218, ptr %179, align 8, !tbaa !50
  br i1 %180, label %226, label %219

219:                                              ; preds = %204
  %220 = getelementptr inbounds [4 x i8], ptr %161, i64 %214
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 2
  %222 = load i16, ptr %221, align 2, !tbaa !28
  %223 = zext i16 %222 to i64
  %224 = load i64, ptr %181, align 8, !tbaa !51
  %225 = sub i64 %224, %223
  store i64 %225, ptr %181, align 8, !tbaa !51
  br label %226

226:                                              ; preds = %219, %204
  %227 = load i32, ptr %164, align 4, !tbaa !47
  %228 = icmp slt i32 %227, 2
  br i1 %228, label %204, label %.loopexit325, !llvm.loop !52

.loopexit325:                                     ; preds = %226, %171
  %229 = phi i32 [ %201, %171 ], [ %209, %226 ]
  %230 = phi i32 [ %172, %171 ], [ %227, %226 ]
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 %229, ptr %231, align 8, !tbaa !53
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %234 = lshr i32 %230, 1
  %235 = zext nneg i32 %234 to i64
  br label %240

236:                                              ; preds = %.loopexit323
  %237 = load i32, ptr %164, align 4, !tbaa !47
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %239 = sext i32 %163 to i64
  br label %311

240:                                              ; preds = %.loopexit323, %.loopexit325
  %241 = phi i64 [ %235, %.loopexit325 ], [ %309, %.loopexit323 ]
  %242 = getelementptr inbounds nuw [4 x i8], ptr %232, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, ptr %233, i64 %244
  %246 = load i32, ptr %164, align 4, !tbaa !47
  %247 = trunc i64 %241 to i32
  %248 = shl i32 %247, 1
  %249 = icmp sgt i32 %248, %246
  br i1 %249, label %.loopexit323, label %250

250:                                              ; preds = %240
  %251 = getelementptr inbounds [4 x i8], ptr %158, i64 %244
  br label %252

252:                                              ; preds = %300, %250
  %253 = phi i32 [ %246, %250 ], [ %304, %300 ]
  %254 = phi i32 [ %248, %250 ], [ %303, %300 ]
  %255 = phi i32 [ %247, %250 ], [ %285, %300 ]
  %256 = icmp slt i32 %254, %253
  br i1 %256, label %259, label %257

257:                                              ; preds = %252
  %258 = sext i32 %254 to i64
  br label %283

259:                                              ; preds = %252
  %260 = or disjoint i32 %254, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i8], ptr %232, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [4 x i8], ptr %158, i64 %264
  %266 = load i16, ptr %265, align 2, !tbaa !28
  %267 = sext i32 %254 to i64
  %268 = getelementptr inbounds [4 x i8], ptr %232, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [4 x i8], ptr %158, i64 %270
  %272 = load i16, ptr %271, align 2, !tbaa !28
  %273 = icmp ult i16 %266, %272
  br i1 %273, label %282, label %274

274:                                              ; preds = %259
  %275 = icmp eq i16 %266, %272
  br i1 %275, label %276, label %283

276:                                              ; preds = %274
  %277 = getelementptr inbounds i8, ptr %233, i64 %264
  %278 = load i8, ptr %277, align 1, !tbaa !28
  %279 = getelementptr inbounds i8, ptr %233, i64 %270
  %280 = load i8, ptr %279, align 1, !tbaa !28
  %281 = icmp ugt i8 %278, %280
  br i1 %281, label %283, label %282

282:                                              ; preds = %276, %259
  br label %283

283:                                              ; preds = %282, %276, %274, %257
  %284 = phi i64 [ %258, %257 ], [ %261, %282 ], [ %267, %276 ], [ %267, %274 ]
  %285 = phi i32 [ %254, %257 ], [ %260, %282 ], [ %254, %276 ], [ %254, %274 ]
  %286 = load i16, ptr %251, align 2, !tbaa !28
  %287 = getelementptr inbounds [4 x i8], ptr %232, i64 %284
  %288 = load i32, ptr %287, align 4, !tbaa !4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [4 x i8], ptr %158, i64 %289
  %291 = load i16, ptr %290, align 2, !tbaa !28
  %292 = icmp ult i16 %286, %291
  br i1 %292, label %.loopexit323, label %293

293:                                              ; preds = %283
  %294 = icmp eq i16 %286, %291
  br i1 %294, label %295, label %300

295:                                              ; preds = %293
  %296 = load i8, ptr %245, align 1, !tbaa !28
  %297 = getelementptr inbounds i8, ptr %233, i64 %289
  %298 = load i8, ptr %297, align 1, !tbaa !28
  %299 = icmp ugt i8 %296, %298
  br i1 %299, label %300, label %.loopexit323

300:                                              ; preds = %295, %293
  %301 = sext i32 %255 to i64
  %302 = getelementptr inbounds [4 x i8], ptr %232, i64 %301
  store i32 %288, ptr %302, align 4, !tbaa !4
  %303 = shl i32 %285, 1
  %304 = load i32, ptr %164, align 4, !tbaa !47
  %305 = icmp sgt i32 %303, %304
  br i1 %305, label %.loopexit323, label %252, !llvm.loop !54

.loopexit323:                                     ; preds = %300, %295, %283, %240
  %306 = phi i32 [ %247, %240 ], [ %285, %300 ], [ %255, %295 ], [ %255, %283 ]
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [4 x i8], ptr %232, i64 %307
  store i32 %243, ptr %308, align 4, !tbaa !4
  %309 = add nsw i64 %241, -1
  %310 = icmp sgt i64 %241, 1
  br i1 %310, label %240, label %236, !llvm.loop !55

.loopexit321:                                     ; preds = %391, %384, %311, %487
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

311:                                              ; preds = %482, %236
  %312 = phi i32 [ %237, %236 ], [ %485, %482 ]
  %313 = phi i64 [ %239, %236 ], [ %423, %482 ]
  %314 = load i32, ptr %238, align 4, !tbaa !4
  %315 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %312, i32 -1)
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !30
  br i1 %316, label %.loopexit321, label %317, !prof !33, !nosanitize !30

317:                                              ; preds = %311
  %318 = extractvalue { i32, i1 } %315, 0, !nosanitize !30
  store i32 %318, ptr %164, align 4, !tbaa !47
  %319 = sext i32 %312 to i64
  %320 = getelementptr inbounds [4 x i8], ptr %232, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !4
  store i32 %321, ptr %238, align 4, !tbaa !4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, ptr %233, i64 %322
  %324 = icmp slt i32 %318, 2
  br i1 %324, label %384, label %325

325:                                              ; preds = %317
  %326 = getelementptr inbounds [4 x i8], ptr %158, i64 %322
  br label %327

327:                                              ; preds = %375, %325
  %328 = phi i32 [ %318, %325 ], [ %379, %375 ]
  %329 = phi i32 [ 2, %325 ], [ %378, %375 ]
  %330 = phi i32 [ 1, %325 ], [ %360, %375 ]
  %331 = icmp slt i32 %329, %328
  br i1 %331, label %334, label %332

332:                                              ; preds = %327
  %333 = sext i32 %329 to i64
  br label %358

334:                                              ; preds = %327
  %335 = or disjoint i32 %329, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [4 x i8], ptr %232, i64 %336
  %338 = load i32, ptr %337, align 4, !tbaa !4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [4 x i8], ptr %158, i64 %339
  %341 = load i16, ptr %340, align 2, !tbaa !28
  %342 = sext i32 %329 to i64
  %343 = getelementptr inbounds [4 x i8], ptr %232, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [4 x i8], ptr %158, i64 %345
  %347 = load i16, ptr %346, align 2, !tbaa !28
  %348 = icmp ult i16 %341, %347
  br i1 %348, label %357, label %349

349:                                              ; preds = %334
  %350 = icmp eq i16 %341, %347
  br i1 %350, label %351, label %358

351:                                              ; preds = %349
  %352 = getelementptr inbounds i8, ptr %233, i64 %339
  %353 = load i8, ptr %352, align 1, !tbaa !28
  %354 = getelementptr inbounds i8, ptr %233, i64 %345
  %355 = load i8, ptr %354, align 1, !tbaa !28
  %356 = icmp ugt i8 %353, %355
  br i1 %356, label %358, label %357

357:                                              ; preds = %351, %334
  br label %358

358:                                              ; preds = %357, %351, %349, %332
  %359 = phi i64 [ %333, %332 ], [ %336, %357 ], [ %342, %351 ], [ %342, %349 ]
  %360 = phi i32 [ %329, %332 ], [ %335, %357 ], [ %329, %351 ], [ %329, %349 ]
  %361 = load i16, ptr %326, align 2, !tbaa !28
  %362 = getelementptr inbounds [4 x i8], ptr %232, i64 %359
  %363 = load i32, ptr %362, align 4, !tbaa !4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [4 x i8], ptr %158, i64 %364
  %366 = load i16, ptr %365, align 2, !tbaa !28
  %367 = icmp ult i16 %361, %366
  br i1 %367, label %381, label %368

368:                                              ; preds = %358
  %369 = icmp eq i16 %361, %366
  br i1 %369, label %370, label %375

370:                                              ; preds = %368
  %371 = load i8, ptr %323, align 1, !tbaa !28
  %372 = getelementptr inbounds i8, ptr %233, i64 %364
  %373 = load i8, ptr %372, align 1, !tbaa !28
  %374 = icmp ugt i8 %371, %373
  br i1 %374, label %375, label %381

375:                                              ; preds = %370, %368
  %376 = sext i32 %330 to i64
  %377 = getelementptr inbounds [4 x i8], ptr %232, i64 %376
  store i32 %363, ptr %377, align 4, !tbaa !4
  %378 = shl i32 %360, 1
  %379 = load i32, ptr %164, align 4, !tbaa !47
  %380 = icmp sgt i32 %378, %379
  br i1 %380, label %381, label %327, !llvm.loop !54

381:                                              ; preds = %375, %370, %358
  %382 = phi i32 [ %330, %358 ], [ %330, %370 ], [ %360, %375 ]
  %383 = sext i32 %382 to i64
  br label %384

384:                                              ; preds = %381, %317
  %385 = phi i64 [ 1, %317 ], [ %383, %381 ]
  %386 = getelementptr inbounds [4 x i8], ptr %232, i64 %385
  store i32 %321, ptr %386, align 4, !tbaa !4
  %387 = load i32, ptr %238, align 4, !tbaa !4
  %388 = load i32, ptr %165, align 8, !tbaa !48
  %389 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %388, i32 -1)
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !30
  br i1 %390, label %.loopexit321, label %391, !prof !33, !nosanitize !30

391:                                              ; preds = %384
  %392 = extractvalue { i32, i1 } %389, 0, !nosanitize !30
  store i32 %392, ptr %165, align 8, !tbaa !48
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [4 x i8], ptr %232, i64 %393
  store i32 %314, ptr %394, align 4, !tbaa !4
  %395 = load i32, ptr %165, align 8, !tbaa !48
  %396 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %395, i32 -1)
  %397 = extractvalue { i32, i1 } %396, 1, !nosanitize !30
  br i1 %397, label %.loopexit321, label %398, !prof !33, !nosanitize !30

398:                                              ; preds = %391
  %399 = extractvalue { i32, i1 } %396, 0, !nosanitize !30
  store i32 %399, ptr %165, align 8, !tbaa !48
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [4 x i8], ptr %232, i64 %400
  store i32 %387, ptr %401, align 4, !tbaa !4
  %402 = sext i32 %314 to i64
  %403 = getelementptr inbounds [4 x i8], ptr %158, i64 %402
  %404 = load i16, ptr %403, align 2, !tbaa !28
  %405 = sext i32 %387 to i64
  %406 = getelementptr inbounds [4 x i8], ptr %158, i64 %405
  %407 = load i16, ptr %406, align 2, !tbaa !28
  %408 = add i16 %407, %404
  %409 = getelementptr inbounds [4 x i8], ptr %158, i64 %313
  store i16 %408, ptr %409, align 2, !tbaa !28
  %410 = getelementptr inbounds i8, ptr %233, i64 %402
  %411 = load i8, ptr %410, align 1, !tbaa !28
  %412 = getelementptr inbounds i8, ptr %233, i64 %405
  %413 = load i8, ptr %412, align 1, !tbaa !28
  %414 = tail call i8 @llvm.umax.i8(i8 %411, i8 %413)
  %415 = add i8 %414, 1
  %416 = getelementptr inbounds i8, ptr %233, i64 %313
  store i8 %415, ptr %416, align 1, !tbaa !28
  %417 = trunc nsw i64 %313 to i32
  %418 = trunc i64 %313 to i16
  %419 = getelementptr inbounds nuw i8, ptr %406, i64 2
  store i16 %418, ptr %419, align 2, !tbaa !28
  %420 = getelementptr inbounds nuw i8, ptr %403, i64 2
  store i16 %418, ptr %420, align 2, !tbaa !28
  %421 = icmp eq i64 %313, 2147483647
  br i1 %421, label %.loopexit322, label %422, !prof !33, !nosanitize !30

422:                                              ; preds = %398
  %423 = add nsw i64 %313, 1
  store i32 %417, ptr %238, align 4, !tbaa !4
  %424 = load i32, ptr %164, align 4, !tbaa !47
  %425 = icmp slt i32 %424, 2
  br i1 %425, label %482, label %.preheader320

.preheader320:                                    ; preds = %422, %473
  %426 = phi i32 [ %477, %473 ], [ %424, %422 ]
  %427 = phi i32 [ %476, %473 ], [ 2, %422 ]
  %428 = phi i32 [ %458, %473 ], [ 1, %422 ]
  %429 = icmp slt i32 %427, %426
  br i1 %429, label %432, label %430

430:                                              ; preds = %.preheader320
  %431 = sext i32 %427 to i64
  br label %456

432:                                              ; preds = %.preheader320
  %433 = or disjoint i32 %427, 1
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [4 x i8], ptr %232, i64 %434
  %436 = load i32, ptr %435, align 4, !tbaa !4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [4 x i8], ptr %158, i64 %437
  %439 = load i16, ptr %438, align 2, !tbaa !28
  %440 = sext i32 %427 to i64
  %441 = getelementptr inbounds [4 x i8], ptr %232, i64 %440
  %442 = load i32, ptr %441, align 4, !tbaa !4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [4 x i8], ptr %158, i64 %443
  %445 = load i16, ptr %444, align 2, !tbaa !28
  %446 = icmp ult i16 %439, %445
  br i1 %446, label %455, label %447

447:                                              ; preds = %432
  %448 = icmp eq i16 %439, %445
  br i1 %448, label %449, label %456

449:                                              ; preds = %447
  %450 = getelementptr inbounds i8, ptr %233, i64 %437
  %451 = load i8, ptr %450, align 1, !tbaa !28
  %452 = getelementptr inbounds i8, ptr %233, i64 %443
  %453 = load i8, ptr %452, align 1, !tbaa !28
  %454 = icmp ugt i8 %451, %453
  br i1 %454, label %456, label %455

455:                                              ; preds = %449, %432
  br label %456

456:                                              ; preds = %455, %449, %447, %430
  %457 = phi i64 [ %431, %430 ], [ %434, %455 ], [ %440, %449 ], [ %440, %447 ]
  %458 = phi i32 [ %427, %430 ], [ %433, %455 ], [ %427, %449 ], [ %427, %447 ]
  %459 = load i16, ptr %409, align 2, !tbaa !28
  %460 = getelementptr inbounds [4 x i8], ptr %232, i64 %457
  %461 = load i32, ptr %460, align 4, !tbaa !4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [4 x i8], ptr %158, i64 %462
  %464 = load i16, ptr %463, align 2, !tbaa !28
  %465 = icmp ult i16 %459, %464
  br i1 %465, label %479, label %466

466:                                              ; preds = %456
  %467 = icmp eq i16 %459, %464
  br i1 %467, label %468, label %473

468:                                              ; preds = %466
  %469 = load i8, ptr %416, align 1, !tbaa !28
  %470 = getelementptr inbounds i8, ptr %233, i64 %462
  %471 = load i8, ptr %470, align 1, !tbaa !28
  %472 = icmp ugt i8 %469, %471
  br i1 %472, label %473, label %479

473:                                              ; preds = %468, %466
  %474 = sext i32 %428 to i64
  %475 = getelementptr inbounds [4 x i8], ptr %232, i64 %474
  store i32 %461, ptr %475, align 4, !tbaa !4
  %476 = shl i32 %458, 1
  %477 = load i32, ptr %164, align 4, !tbaa !47
  %478 = icmp sgt i32 %476, %477
  br i1 %478, label %479, label %.preheader320, !llvm.loop !54

479:                                              ; preds = %473, %468, %456
  %480 = phi i32 [ %428, %456 ], [ %428, %468 ], [ %458, %473 ]
  %481 = sext i32 %480 to i64
  br label %482

482:                                              ; preds = %479, %422
  %483 = phi i64 [ 1, %422 ], [ %481, %479 ]
  %484 = getelementptr inbounds [4 x i8], ptr %232, i64 %483
  store i32 %417, ptr %484, align 4, !tbaa !4
  %485 = load i32, ptr %164, align 4, !tbaa !47
  %486 = icmp sgt i32 %485, 1
  br i1 %486, label %311, label %487, !llvm.loop !56

487:                                              ; preds = %482
  %488 = load i32, ptr %165, align 8, !tbaa !48
  %489 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %488, i32 -1)
  %490 = extractvalue { i32, i1 } %489, 1, !nosanitize !30
  br i1 %490, label %.loopexit321, label %491, !prof !33, !nosanitize !30

491:                                              ; preds = %487
  %492 = extractvalue { i32, i1 } %489, 0, !nosanitize !30
  %493 = load i32, ptr %238, align 4, !tbaa !4
  store i32 %492, ptr %165, align 8, !tbaa !48
  %494 = sext i32 %492 to i64
  %495 = getelementptr inbounds [4 x i8], ptr %232, i64 %494
  store i32 %493, ptr %495, align 4, !tbaa !4
  %496 = load ptr, ptr %157, align 8, !tbaa !41
  %497 = load i32, ptr %231, align 8, !tbaa !53
  %498 = load ptr, ptr %159, align 8, !tbaa !42
  %499 = load ptr, ptr %498, align 8, !tbaa !43
  %500 = getelementptr inbounds nuw i8, ptr %498, i64 8
  %501 = load ptr, ptr %500, align 8, !tbaa !57
  %502 = getelementptr inbounds nuw i8, ptr %498, i64 16
  %503 = load i32, ptr %502, align 8, !tbaa !58
  %504 = getelementptr inbounds nuw i8, ptr %498, i64 24
  %505 = load i32, ptr %504, align 8, !tbaa !59
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %506, i8 0, i64 32, i1 false), !tbaa !60
  %507 = load i32, ptr %165, align 8, !tbaa !48
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [4 x i8], ptr %232, i64 %508
  %510 = load i32, ptr %509, align 4, !tbaa !4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [4 x i8], ptr %496, i64 %511
  %513 = getelementptr inbounds nuw i8, ptr %512, i64 2
  store i16 0, ptr %513, align 2, !tbaa !28
  %514 = load i32, ptr %165, align 8, !tbaa !48
  %515 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %514, i32 1), !nosanitize !30
  %516 = extractvalue { i32, i1 } %515, 1, !nosanitize !30
  br i1 %516, label %.loopexit316, label %517, !prof !33, !nosanitize !30

.loopexit316:                                     ; preds = %577, %565, %541, %612, %491
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

517:                                              ; preds = %491
  %518 = extractvalue { i32, i1 } %515, 0
  %519 = icmp slt i32 %518, 573
  br i1 %519, label %520, label %.loopexit313

520:                                              ; preds = %517
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %522 = icmp eq ptr %499, null
  %523 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %524 = sext i32 %518 to i64
  br label %525

525:                                              ; preds = %590, %520
  %526 = phi i64 [ %524, %520 ], [ %591, %590 ]
  %527 = phi i32 [ 0, %520 ], [ %548, %590 ]
  %528 = getelementptr inbounds [4 x i8], ptr %232, i64 %526
  %529 = load i32, ptr %528, align 4, !tbaa !4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds [4 x i8], ptr %496, i64 %530
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 2
  %533 = load i16, ptr %532, align 2, !tbaa !28
  %534 = zext i16 %533 to i64
  %535 = getelementptr inbounds nuw [4 x i8], ptr %496, i64 %534
  %536 = getelementptr inbounds nuw i8, ptr %535, i64 2
  %537 = load i16, ptr %536, align 2, !tbaa !28
  %538 = zext i16 %537 to i32
  %539 = add nuw nsw i32 %538, 1
  %540 = icmp sgt i32 %505, %538
  br i1 %540, label %546, label %541

541:                                              ; preds = %525
  %542 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %527, i32 1), !nosanitize !30
  %543 = extractvalue { i32, i1 } %542, 1, !nosanitize !30
  br i1 %543, label %.loopexit316, label %544, !prof !33, !nosanitize !30

544:                                              ; preds = %541
  %545 = extractvalue { i32, i1 } %542, 0, !nosanitize !30
  br label %546

546:                                              ; preds = %544, %525
  %547 = phi i32 [ %505, %544 ], [ %539, %525 ]
  %548 = phi i32 [ %545, %544 ], [ %527, %525 ]
  %549 = trunc i32 %547 to i16
  store i16 %549, ptr %532, align 2, !tbaa !28
  %550 = icmp sgt i32 %529, %497
  br i1 %550, label %590, label %551

551:                                              ; preds = %546
  %552 = sext i32 %547 to i64
  %553 = getelementptr inbounds [2 x i8], ptr %506, i64 %552
  %554 = load i16, ptr %553, align 2, !tbaa !60
  %555 = add i16 %554, 1
  store i16 %555, ptr %553, align 2, !tbaa !60
  %556 = icmp slt i32 %529, %503
  br i1 %556, label %565, label %557

557:                                              ; preds = %551
  %558 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %529, i32 %503), !nosanitize !30
  %559 = extractvalue { i32, i1 } %558, 1, !nosanitize !30
  br i1 %559, label %.loopexit308, label %560, !prof !33, !nosanitize !30

.loopexit308:                                     ; preds = %557, %617, %609, %.loopexit310, %643, %648, %596
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

560:                                              ; preds = %557
  %561 = extractvalue { i32, i1 } %558, 0, !nosanitize !30
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [4 x i8], ptr %501, i64 %562
  %564 = load i32, ptr %563, align 4, !tbaa !4
  br label %565

565:                                              ; preds = %560, %551
  %566 = phi i32 [ %564, %560 ], [ 0, %551 ]
  %567 = load i16, ptr %531, align 2, !tbaa !28
  %568 = zext i16 %567 to i64
  %569 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %547, i32 %566), !nosanitize !30
  %570 = extractvalue { i32, i1 } %569, 1, !nosanitize !30
  br i1 %570, label %.loopexit316, label %571, !prof !33, !nosanitize !30

571:                                              ; preds = %565
  %572 = extractvalue { i32, i1 } %569, 0, !nosanitize !30
  %573 = zext i32 %572 to i64
  %574 = mul nuw nsw i64 %573, %568
  %575 = load i64, ptr %521, align 8, !tbaa !50
  %576 = add i64 %575, %574
  store i64 %576, ptr %521, align 8, !tbaa !50
  br i1 %522, label %590, label %577

577:                                              ; preds = %571
  %578 = getelementptr inbounds [4 x i8], ptr %499, i64 %530
  %579 = getelementptr inbounds nuw i8, ptr %578, i64 2
  %580 = load i16, ptr %579, align 2, !tbaa !28
  %581 = zext i16 %580 to i32
  %582 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %581, i32 %566), !nosanitize !30
  %583 = extractvalue { i32, i1 } %582, 1, !nosanitize !30
  br i1 %583, label %.loopexit316, label %584, !prof !33, !nosanitize !30

584:                                              ; preds = %577
  %585 = extractvalue { i32, i1 } %582, 0, !nosanitize !30
  %586 = zext i32 %585 to i64
  %587 = mul nuw nsw i64 %586, %568
  %588 = load i64, ptr %523, align 8, !tbaa !51
  %589 = add i64 %588, %587
  store i64 %589, ptr %523, align 8, !tbaa !51
  br label %590

590:                                              ; preds = %584, %571, %546
  %591 = add nsw i64 %526, 1
  %592 = and i64 %591, 4294967295
  %593 = icmp eq i64 %592, 573
  br i1 %593, label %594, label %525, !llvm.loop !61

594:                                              ; preds = %590
  %595 = icmp eq i32 %548, 0
  br i1 %595, label %.loopexit313, label %596

596:                                              ; preds = %594
  %597 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %505, i32 -1)
  %598 = extractvalue { i32, i1 } %597, 1, !nosanitize !30
  %599 = sext i32 %505 to i64
  %600 = getelementptr inbounds [2 x i8], ptr %506, i64 %599
  br i1 %598, label %.loopexit308, label %.preheader315, !prof !33, !nosanitize !30

.preheader315:                                    ; preds = %596, %627
  %601 = phi i32 [ %628, %627 ], [ %548, %596 ]
  br label %602

602:                                              ; preds = %609, %.preheader315
  %603 = phi { i32, i1 } [ %610, %609 ], [ %597, %.preheader315 ]
  %604 = extractvalue { i32, i1 } %603, 0
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds [2 x i8], ptr %506, i64 %605
  %607 = load i16, ptr %606, align 2, !tbaa !60
  %608 = icmp eq i16 %607, 0
  br i1 %608, label %609, label %612

609:                                              ; preds = %602
  %610 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %604, i32 -1)
  %611 = extractvalue { i32, i1 } %610, 1, !nosanitize !30
  br i1 %611, label %.loopexit308, label %602, !prof !33, !llvm.loop !62, !nosanitize !30

612:                                              ; preds = %602
  %613 = getelementptr inbounds [2 x i8], ptr %506, i64 %605
  %614 = add i16 %607, -1
  store i16 %614, ptr %613, align 2, !tbaa !60
  %615 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %604, i32 1), !nosanitize !30
  %616 = extractvalue { i32, i1 } %615, 1, !nosanitize !30
  br i1 %616, label %.loopexit316, label %617, !prof !33, !nosanitize !30

617:                                              ; preds = %612
  %618 = extractvalue { i32, i1 } %615, 0, !nosanitize !30
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds [2 x i8], ptr %506, i64 %619
  %621 = load i16, ptr %620, align 2, !tbaa !60
  %622 = add i16 %621, 2
  store i16 %622, ptr %620, align 2, !tbaa !60
  %623 = load i16, ptr %600, align 2, !tbaa !60
  %624 = add i16 %623, -1
  store i16 %624, ptr %600, align 2, !tbaa !60
  %625 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %601, i32 -2)
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !30
  br i1 %626, label %.loopexit308, label %627, !prof !33, !nosanitize !30

627:                                              ; preds = %617
  %628 = extractvalue { i32, i1 } %625, 0, !nosanitize !30
  %629 = icmp sgt i32 %628, 0
  br i1 %629, label %.preheader315, label %630, !llvm.loop !63

630:                                              ; preds = %627
  %631 = icmp eq i32 %505, 0
  br i1 %631, label %.loopexit313, label %.preheader311

.preheader311:                                    ; preds = %630, %674
  %632 = phi i64 [ %675, %674 ], [ %599, %630 ]
  %633 = phi i32 [ %640, %674 ], [ 573, %630 ]
  %634 = getelementptr inbounds [2 x i8], ptr %506, i64 %632
  %635 = load i16, ptr %634, align 2, !tbaa !60
  %636 = icmp eq i16 %635, 0
  br i1 %636, label %.loopexit310, label %637

637:                                              ; preds = %.preheader311
  %638 = zext i16 %635 to i32
  %639 = trunc i64 %632 to i16
  br label %643

.loopexit310:                                     ; preds = %671, %.preheader311
  %640 = phi i32 [ %633, %.preheader311 ], [ %652, %671 ]
  %641 = and i64 %632, 4294967295
  %642 = icmp eq i64 %641, 2147483648
  br i1 %642, label %.loopexit308, label %674, !prof !33, !nosanitize !30

643:                                              ; preds = %671, %637
  %644 = phi i32 [ %633, %637 ], [ %652, %671 ]
  %645 = phi i32 [ %638, %637 ], [ %672, %671 ]
  %646 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %644, i32 -1)
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !30
  br i1 %647, label %.loopexit308, label %.preheader307, !prof !64, !nosanitize !30

648:                                              ; preds = %.preheader307
  %649 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %652, i32 -1)
  %650 = extractvalue { i32, i1 } %649, 1, !nosanitize !30
  br i1 %650, label %.loopexit308, label %.preheader307, !prof !65, !llvm.loop !66, !nosanitize !30

.preheader307:                                    ; preds = %643, %648
  %651 = phi { i32, i1 } [ %649, %648 ], [ %646, %643 ]
  %652 = extractvalue { i32, i1 } %651, 0, !nosanitize !30
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [4 x i8], ptr %232, i64 %653
  %655 = load i32, ptr %654, align 4, !tbaa !4
  %656 = icmp sgt i32 %655, %497
  br i1 %656, label %648, label %657, !llvm.loop !66

657:                                              ; preds = %.preheader307
  %658 = sext i32 %655 to i64
  %659 = getelementptr inbounds [4 x i8], ptr %496, i64 %658
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 2
  %661 = load i16, ptr %660, align 2, !tbaa !28
  %662 = zext i16 %661 to i64
  %663 = icmp eq i64 %632, %662
  br i1 %663, label %671, label %664

664:                                              ; preds = %657
  %665 = sub nsw i64 %632, %662
  %666 = load i16, ptr %659, align 2, !tbaa !28
  %667 = zext i16 %666 to i64
  %668 = mul nsw i64 %665, %667
  %669 = load i64, ptr %521, align 8, !tbaa !50
  %670 = add i64 %668, %669
  store i64 %670, ptr %521, align 8, !tbaa !50
  store i16 %639, ptr %660, align 2, !tbaa !28
  br label %671

671:                                              ; preds = %664, %657
  %672 = add nsw i32 %645, -1
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %.loopexit310, label %643, !llvm.loop !66

674:                                              ; preds = %.loopexit310
  %675 = add nsw i64 %632, -1
  %676 = and i64 %675, 4294967295
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %.loopexit313, label %.preheader311, !llvm.loop !67

.loopexit313:                                     ; preds = %674, %630, %594, %517
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %678 = load i16, ptr %506, align 2, !tbaa !60
  %679 = shl i16 %678, 1
  %680 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %679, ptr %680, align 2, !tbaa !60
  %681 = getelementptr i8, ptr %0, i64 2978
  %682 = load i16, ptr %681, align 2, !tbaa !60
  %683 = add i16 %682, %679
  %684 = shl i16 %683, 1
  %685 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %684, ptr %685, align 4, !tbaa !60
  %686 = getelementptr i8, ptr %0, i64 2980
  %687 = load i16, ptr %686, align 2, !tbaa !60
  %688 = add i16 %687, %684
  %689 = shl i16 %688, 1
  %690 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %689, ptr %690, align 2, !tbaa !60
  %691 = getelementptr i8, ptr %0, i64 2982
  %692 = load i16, ptr %691, align 2, !tbaa !60
  %693 = add i16 %692, %689
  %694 = shl i16 %693, 1
  %695 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %694, ptr %695, align 8, !tbaa !60
  %696 = getelementptr i8, ptr %0, i64 2984
  %697 = load i16, ptr %696, align 2, !tbaa !60
  %698 = add i16 %697, %694
  %699 = shl i16 %698, 1
  %700 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %699, ptr %700, align 2, !tbaa !60
  %701 = getelementptr i8, ptr %0, i64 2986
  %702 = load i16, ptr %701, align 2, !tbaa !60
  %703 = add i16 %702, %699
  %704 = shl i16 %703, 1
  %705 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %704, ptr %705, align 4, !tbaa !60
  %706 = getelementptr i8, ptr %0, i64 2988
  %707 = load i16, ptr %706, align 2, !tbaa !60
  %708 = add i16 %707, %704
  %709 = shl i16 %708, 1
  %710 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %709, ptr %710, align 2, !tbaa !60
  %711 = getelementptr i8, ptr %0, i64 2990
  %712 = load i16, ptr %711, align 2, !tbaa !60
  %713 = add i16 %712, %709
  %714 = shl i16 %713, 1
  %715 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %714, ptr %715, align 16, !tbaa !60
  %716 = getelementptr i8, ptr %0, i64 2992
  %717 = load i16, ptr %716, align 2, !tbaa !60
  %718 = add i16 %717, %714
  %719 = shl i16 %718, 1
  %720 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %719, ptr %720, align 2, !tbaa !60
  %721 = getelementptr i8, ptr %0, i64 2994
  %722 = load i16, ptr %721, align 2, !tbaa !60
  %723 = add i16 %722, %719
  %724 = shl i16 %723, 1
  %725 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %724, ptr %725, align 4, !tbaa !60
  %726 = getelementptr i8, ptr %0, i64 2996
  %727 = load i16, ptr %726, align 2, !tbaa !60
  %728 = add i16 %727, %724
  %729 = shl i16 %728, 1
  %730 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %729, ptr %730, align 2, !tbaa !60
  %731 = getelementptr i8, ptr %0, i64 2998
  %732 = load i16, ptr %731, align 2, !tbaa !60
  %733 = add i16 %732, %729
  %734 = shl i16 %733, 1
  %735 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %734, ptr %735, align 8, !tbaa !60
  %736 = getelementptr i8, ptr %0, i64 3000
  %737 = load i16, ptr %736, align 2, !tbaa !60
  %738 = add i16 %737, %734
  %739 = shl i16 %738, 1
  %740 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %739, ptr %740, align 2, !tbaa !60
  %741 = getelementptr i8, ptr %0, i64 3002
  %742 = load i16, ptr %741, align 2, !tbaa !60
  %743 = add i16 %742, %739
  %744 = shl i16 %743, 1
  %745 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %744, ptr %745, align 4, !tbaa !60
  %746 = getelementptr i8, ptr %0, i64 3004
  %747 = load i16, ptr %746, align 2, !tbaa !60
  %748 = add i16 %747, %744
  %749 = shl i16 %748, 1
  %750 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %749, ptr %750, align 2, !tbaa !60
  %751 = icmp slt i32 %229, 0
  br i1 %751, label %.loopexit306, label %.preheader305

752:                                              ; preds = %805
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

.preheader305:                                    ; preds = %.loopexit313, %807
  %753 = phi i64 [ %808, %807 ], [ 0, %.loopexit313 ]
  %754 = getelementptr inbounds nuw [4 x i8], ptr %158, i64 %753
  %755 = getelementptr inbounds nuw i8, ptr %754, i64 2
  %756 = load i16, ptr %755, align 2, !tbaa !28
  %757 = icmp eq i16 %756, 0
  br i1 %757, label %805, label %758

758:                                              ; preds = %.preheader305
  %759 = zext i16 %756 to i32
  %760 = zext i16 %756 to i64
  %761 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %760
  %762 = load i16, ptr %761, align 2, !tbaa !60
  %763 = add i16 %762, 1
  store i16 %763, ptr %761, align 2, !tbaa !60
  %764 = and i32 %759, 3
  %765 = icmp ult i16 %756, 4
  br i1 %765, label %790, label %766

766:                                              ; preds = %758
  %767 = and i32 %759, 65532
  br label %768

768:                                              ; preds = %768, %766
  %769 = phi i16 [ %762, %766 ], [ %785, %768 ]
  %770 = phi i16 [ 0, %766 ], [ %784, %768 ]
  %771 = phi i32 [ 0, %766 ], [ %786, %768 ]
  %772 = and i16 %769, 1
  %773 = or disjoint i16 %770, %772
  %774 = shl i16 %773, 2
  %775 = and i16 %769, 2
  %776 = or disjoint i16 %774, %775
  %777 = lshr i16 %769, 2
  %778 = and i16 %777, 1
  %779 = or disjoint i16 %776, %778
  %780 = shl i16 %779, 1
  %781 = lshr i16 %769, 3
  %782 = and i16 %781, 1
  %783 = or disjoint i16 %780, %782
  %784 = shl i16 %783, 1
  %785 = lshr i16 %769, 4
  %786 = add nuw nsw i32 %771, 4
  %787 = icmp eq i32 %786, %767
  br i1 %787, label %788, label %768, !llvm.loop !68

788:                                              ; preds = %768
  %789 = icmp eq i32 %764, 0
  br i1 %789, label %.loopexit304, label %790

790:                                              ; preds = %788, %758
  %791 = phi i16 [ %762, %758 ], [ %785, %788 ]
  %792 = phi i16 [ 0, %758 ], [ %784, %788 ]
  %793 = icmp ne i32 %764, 0
  tail call void @llvm.assume(i1 %793)
  br label %794

794:                                              ; preds = %794, %790
  %795 = phi i16 [ %791, %790 ], [ %801, %794 ]
  %796 = phi i16 [ %792, %790 ], [ %800, %794 ]
  %797 = phi i32 [ 0, %790 ], [ %802, %794 ]
  %798 = and i16 %795, 1
  %799 = or disjoint i16 %796, %798
  %800 = shl i16 %799, 1
  %801 = lshr i16 %795, 1
  %802 = add nuw nsw i32 %797, 1
  %803 = icmp eq i32 %802, %764
  br i1 %803, label %.loopexit304, label %794, !llvm.loop !69

.loopexit304:                                     ; preds = %794, %788
  %804 = phi i16 [ %783, %788 ], [ %799, %794 ]
  store i16 %804, ptr %754, align 2, !tbaa !28
  br label %805

805:                                              ; preds = %.loopexit304, %.preheader305
  %806 = icmp eq i64 %753, 2147483647
  br i1 %806, label %752, label %807, !prof !33, !nosanitize !30

807:                                              ; preds = %805
  %808 = add nuw nsw i64 %753, 1
  %809 = trunc i64 %808 to i32
  %810 = icmp slt i32 %229, %809
  br i1 %810, label %.loopexit306, label %.preheader305, !llvm.loop !71

.loopexit306:                                     ; preds = %807, %.loopexit313
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %811 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %812 = load ptr, ptr %811, align 8, !tbaa !41
  %813 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %814 = load ptr, ptr %813, align 8, !tbaa !42
  %815 = load ptr, ptr %814, align 8, !tbaa !43
  %816 = getelementptr inbounds nuw i8, ptr %814, i64 20
  %817 = load i32, ptr %816, align 4, !tbaa !46
  store i32 0, ptr %164, align 4, !tbaa !47
  store i32 573, ptr %165, align 8, !tbaa !48
  %818 = icmp sgt i32 %817, 0
  br i1 %818, label %819, label %824

819:                                              ; preds = %.loopexit306
  %820 = zext nneg i32 %817 to i64
  br label %830

821:                                              ; preds = %848
  %822 = load i32, ptr %164, align 4, !tbaa !47
  %823 = icmp slt i32 %822, 2
  br i1 %823, label %824, label %.loopexit302

824:                                              ; preds = %821, %.loopexit306
  %825 = phi i32 [ %849, %821 ], [ -1, %.loopexit306 ]
  %826 = phi i32 [ %822, %821 ], [ 0, %.loopexit306 ]
  %827 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %828 = icmp eq ptr %815, null
  %829 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %852

830:                                              ; preds = %848, %819
  %831 = phi i64 [ 0, %819 ], [ %850, %848 ]
  %832 = phi i32 [ -1, %819 ], [ %849, %848 ]
  %833 = getelementptr inbounds nuw [4 x i8], ptr %812, i64 %831
  %834 = load i16, ptr %833, align 2, !tbaa !28
  %835 = icmp eq i16 %834, 0
  br i1 %835, label %846, label %836

836:                                              ; preds = %830
  %837 = load i32, ptr %164, align 4, !tbaa !47
  %838 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %837, i32 1), !nosanitize !30
  %839 = extractvalue { i32, i1 } %838, 1, !nosanitize !30
  br i1 %839, label %.loopexit299, label %840, !prof !33, !nosanitize !30

.loopexit299:                                     ; preds = %836, %1043
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

840:                                              ; preds = %836
  %841 = extractvalue { i32, i1 } %838, 0, !nosanitize !30
  store i32 %841, ptr %164, align 4, !tbaa !47
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds [4 x i8], ptr %232, i64 %842
  %844 = trunc nuw nsw i64 %831 to i32
  store i32 %844, ptr %843, align 4, !tbaa !4
  %845 = getelementptr inbounds nuw i8, ptr %233, i64 %831
  store i8 0, ptr %845, align 1, !tbaa !28
  br label %848

846:                                              ; preds = %830
  %847 = getelementptr inbounds nuw i8, ptr %833, i64 2
  store i16 0, ptr %847, align 2, !tbaa !28
  br label %848

848:                                              ; preds = %846, %840
  %849 = phi i32 [ %844, %840 ], [ %832, %846 ]
  %850 = add nuw nsw i64 %831, 1
  %851 = icmp eq i64 %850, %820
  br i1 %851, label %821, label %830, !llvm.loop !49

852:                                              ; preds = %874, %824
  %853 = phi i32 [ %826, %824 ], [ %875, %874 ]
  %854 = phi i32 [ %825, %824 ], [ %857, %874 ]
  %855 = icmp slt i32 %854, 2
  %856 = add i32 %854, 1
  %857 = select i1 %855, i32 %856, i32 %854
  %858 = add nsw i32 %853, 1
  %859 = select i1 %855, i32 %856, i32 0
  store i32 %858, ptr %164, align 4, !tbaa !47
  %860 = sext i32 %858 to i64
  %861 = getelementptr inbounds [4 x i8], ptr %232, i64 %860
  store i32 %859, ptr %861, align 4, !tbaa !4
  %862 = sext i32 %859 to i64
  %863 = getelementptr inbounds [4 x i8], ptr %812, i64 %862
  store i16 1, ptr %863, align 2, !tbaa !28
  %864 = getelementptr inbounds i8, ptr %233, i64 %862
  store i8 0, ptr %864, align 1, !tbaa !28
  %865 = load i64, ptr %827, align 8, !tbaa !50
  %866 = add i64 %865, -1
  store i64 %866, ptr %827, align 8, !tbaa !50
  br i1 %828, label %874, label %867

867:                                              ; preds = %852
  %868 = getelementptr inbounds [4 x i8], ptr %815, i64 %862
  %869 = getelementptr inbounds nuw i8, ptr %868, i64 2
  %870 = load i16, ptr %869, align 2, !tbaa !28
  %871 = zext i16 %870 to i64
  %872 = load i64, ptr %829, align 8, !tbaa !51
  %873 = sub i64 %872, %871
  store i64 %873, ptr %829, align 8, !tbaa !51
  br label %874

874:                                              ; preds = %867, %852
  %875 = load i32, ptr %164, align 4, !tbaa !47
  %876 = icmp slt i32 %875, 2
  br i1 %876, label %852, label %.loopexit302, !llvm.loop !52

.loopexit302:                                     ; preds = %874, %821
  %877 = phi i32 [ %849, %821 ], [ %857, %874 ]
  %878 = phi i32 [ %822, %821 ], [ %875, %874 ]
  %879 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %877, ptr %879, align 8, !tbaa !53
  %880 = lshr i32 %878, 1
  %881 = zext nneg i32 %880 to i64
  br label %885

882:                                              ; preds = %.loopexit300
  %883 = load i32, ptr %164, align 4, !tbaa !47
  %884 = sext i32 %817 to i64
  br label %956

885:                                              ; preds = %.loopexit300, %.loopexit302
  %886 = phi i64 [ %881, %.loopexit302 ], [ %954, %.loopexit300 ]
  %887 = getelementptr inbounds nuw [4 x i8], ptr %232, i64 %886
  %888 = load i32, ptr %887, align 4, !tbaa !4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds i8, ptr %233, i64 %889
  %891 = load i32, ptr %164, align 4, !tbaa !47
  %892 = trunc i64 %886 to i32
  %893 = shl i32 %892, 1
  %894 = icmp sgt i32 %893, %891
  br i1 %894, label %.loopexit300, label %895

895:                                              ; preds = %885
  %896 = getelementptr inbounds [4 x i8], ptr %812, i64 %889
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
  %907 = getelementptr inbounds [4 x i8], ptr %232, i64 %906
  %908 = load i32, ptr %907, align 4, !tbaa !4
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds [4 x i8], ptr %812, i64 %909
  %911 = load i16, ptr %910, align 2, !tbaa !28
  %912 = sext i32 %899 to i64
  %913 = getelementptr inbounds [4 x i8], ptr %232, i64 %912
  %914 = load i32, ptr %913, align 4, !tbaa !4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds [4 x i8], ptr %812, i64 %915
  %917 = load i16, ptr %916, align 2, !tbaa !28
  %918 = icmp ult i16 %911, %917
  br i1 %918, label %927, label %919

919:                                              ; preds = %904
  %920 = icmp eq i16 %911, %917
  br i1 %920, label %921, label %928

921:                                              ; preds = %919
  %922 = getelementptr inbounds i8, ptr %233, i64 %909
  %923 = load i8, ptr %922, align 1, !tbaa !28
  %924 = getelementptr inbounds i8, ptr %233, i64 %915
  %925 = load i8, ptr %924, align 1, !tbaa !28
  %926 = icmp ugt i8 %923, %925
  br i1 %926, label %928, label %927

927:                                              ; preds = %921, %904
  br label %928

928:                                              ; preds = %927, %921, %919, %902
  %929 = phi i64 [ %903, %902 ], [ %906, %927 ], [ %912, %921 ], [ %912, %919 ]
  %930 = phi i32 [ %899, %902 ], [ %905, %927 ], [ %899, %921 ], [ %899, %919 ]
  %931 = load i16, ptr %896, align 2, !tbaa !28
  %932 = getelementptr inbounds [4 x i8], ptr %232, i64 %929
  %933 = load i32, ptr %932, align 4, !tbaa !4
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds [4 x i8], ptr %812, i64 %934
  %936 = load i16, ptr %935, align 2, !tbaa !28
  %937 = icmp ult i16 %931, %936
  br i1 %937, label %.loopexit300, label %938

938:                                              ; preds = %928
  %939 = icmp eq i16 %931, %936
  br i1 %939, label %940, label %945

940:                                              ; preds = %938
  %941 = load i8, ptr %890, align 1, !tbaa !28
  %942 = getelementptr inbounds i8, ptr %233, i64 %934
  %943 = load i8, ptr %942, align 1, !tbaa !28
  %944 = icmp ugt i8 %941, %943
  br i1 %944, label %945, label %.loopexit300

945:                                              ; preds = %940, %938
  %946 = sext i32 %900 to i64
  %947 = getelementptr inbounds [4 x i8], ptr %232, i64 %946
  store i32 %933, ptr %947, align 4, !tbaa !4
  %948 = shl i32 %930, 1
  %949 = load i32, ptr %164, align 4, !tbaa !47
  %950 = icmp sgt i32 %948, %949
  br i1 %950, label %.loopexit300, label %897, !llvm.loop !54

.loopexit300:                                     ; preds = %945, %940, %928, %885
  %951 = phi i32 [ %892, %885 ], [ %930, %945 ], [ %900, %940 ], [ %900, %928 ]
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds [4 x i8], ptr %232, i64 %952
  store i32 %888, ptr %953, align 4, !tbaa !4
  %954 = add nsw i64 %886, -1
  %955 = icmp sgt i64 %886, 1
  br i1 %955, label %885, label %882, !llvm.loop !55

.loopexit298:                                     ; preds = %1036, %1029, %956, %1132
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

956:                                              ; preds = %1127, %882
  %957 = phi i32 [ %883, %882 ], [ %1130, %1127 ]
  %958 = phi i64 [ %884, %882 ], [ %1068, %1127 ]
  %959 = load i32, ptr %238, align 4, !tbaa !4
  %960 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %957, i32 -1)
  %961 = extractvalue { i32, i1 } %960, 1, !nosanitize !30
  br i1 %961, label %.loopexit298, label %962, !prof !33, !nosanitize !30

962:                                              ; preds = %956
  %963 = extractvalue { i32, i1 } %960, 0, !nosanitize !30
  store i32 %963, ptr %164, align 4, !tbaa !47
  %964 = sext i32 %957 to i64
  %965 = getelementptr inbounds [4 x i8], ptr %232, i64 %964
  %966 = load i32, ptr %965, align 4, !tbaa !4
  store i32 %966, ptr %238, align 4, !tbaa !4
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds i8, ptr %233, i64 %967
  %969 = icmp slt i32 %963, 2
  br i1 %969, label %1029, label %970

970:                                              ; preds = %962
  %971 = getelementptr inbounds [4 x i8], ptr %812, i64 %967
  br label %972

972:                                              ; preds = %1020, %970
  %973 = phi i32 [ %963, %970 ], [ %1024, %1020 ]
  %974 = phi i32 [ 2, %970 ], [ %1023, %1020 ]
  %975 = phi i32 [ 1, %970 ], [ %1005, %1020 ]
  %976 = icmp slt i32 %974, %973
  br i1 %976, label %979, label %977

977:                                              ; preds = %972
  %978 = sext i32 %974 to i64
  br label %1003

979:                                              ; preds = %972
  %980 = or disjoint i32 %974, 1
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds [4 x i8], ptr %232, i64 %981
  %983 = load i32, ptr %982, align 4, !tbaa !4
  %984 = sext i32 %983 to i64
  %985 = getelementptr inbounds [4 x i8], ptr %812, i64 %984
  %986 = load i16, ptr %985, align 2, !tbaa !28
  %987 = sext i32 %974 to i64
  %988 = getelementptr inbounds [4 x i8], ptr %232, i64 %987
  %989 = load i32, ptr %988, align 4, !tbaa !4
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds [4 x i8], ptr %812, i64 %990
  %992 = load i16, ptr %991, align 2, !tbaa !28
  %993 = icmp ult i16 %986, %992
  br i1 %993, label %1002, label %994

994:                                              ; preds = %979
  %995 = icmp eq i16 %986, %992
  br i1 %995, label %996, label %1003

996:                                              ; preds = %994
  %997 = getelementptr inbounds i8, ptr %233, i64 %984
  %998 = load i8, ptr %997, align 1, !tbaa !28
  %999 = getelementptr inbounds i8, ptr %233, i64 %990
  %1000 = load i8, ptr %999, align 1, !tbaa !28
  %1001 = icmp ugt i8 %998, %1000
  br i1 %1001, label %1003, label %1002

1002:                                             ; preds = %996, %979
  br label %1003

1003:                                             ; preds = %1002, %996, %994, %977
  %1004 = phi i64 [ %978, %977 ], [ %981, %1002 ], [ %987, %996 ], [ %987, %994 ]
  %1005 = phi i32 [ %974, %977 ], [ %980, %1002 ], [ %974, %996 ], [ %974, %994 ]
  %1006 = load i16, ptr %971, align 2, !tbaa !28
  %1007 = getelementptr inbounds [4 x i8], ptr %232, i64 %1004
  %1008 = load i32, ptr %1007, align 4, !tbaa !4
  %1009 = sext i32 %1008 to i64
  %1010 = getelementptr inbounds [4 x i8], ptr %812, i64 %1009
  %1011 = load i16, ptr %1010, align 2, !tbaa !28
  %1012 = icmp ult i16 %1006, %1011
  br i1 %1012, label %1026, label %1013

1013:                                             ; preds = %1003
  %1014 = icmp eq i16 %1006, %1011
  br i1 %1014, label %1015, label %1020

1015:                                             ; preds = %1013
  %1016 = load i8, ptr %968, align 1, !tbaa !28
  %1017 = getelementptr inbounds i8, ptr %233, i64 %1009
  %1018 = load i8, ptr %1017, align 1, !tbaa !28
  %1019 = icmp ugt i8 %1016, %1018
  br i1 %1019, label %1020, label %1026

1020:                                             ; preds = %1015, %1013
  %1021 = sext i32 %975 to i64
  %1022 = getelementptr inbounds [4 x i8], ptr %232, i64 %1021
  store i32 %1008, ptr %1022, align 4, !tbaa !4
  %1023 = shl i32 %1005, 1
  %1024 = load i32, ptr %164, align 4, !tbaa !47
  %1025 = icmp sgt i32 %1023, %1024
  br i1 %1025, label %1026, label %972, !llvm.loop !54

1026:                                             ; preds = %1020, %1015, %1003
  %1027 = phi i32 [ %975, %1003 ], [ %975, %1015 ], [ %1005, %1020 ]
  %1028 = sext i32 %1027 to i64
  br label %1029

1029:                                             ; preds = %1026, %962
  %1030 = phi i64 [ 1, %962 ], [ %1028, %1026 ]
  %1031 = getelementptr inbounds [4 x i8], ptr %232, i64 %1030
  store i32 %966, ptr %1031, align 4, !tbaa !4
  %1032 = load i32, ptr %238, align 4, !tbaa !4
  %1033 = load i32, ptr %165, align 8, !tbaa !48
  %1034 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1033, i32 -1)
  %1035 = extractvalue { i32, i1 } %1034, 1, !nosanitize !30
  br i1 %1035, label %.loopexit298, label %1036, !prof !33, !nosanitize !30

1036:                                             ; preds = %1029
  %1037 = extractvalue { i32, i1 } %1034, 0, !nosanitize !30
  store i32 %1037, ptr %165, align 8, !tbaa !48
  %1038 = sext i32 %1037 to i64
  %1039 = getelementptr inbounds [4 x i8], ptr %232, i64 %1038
  store i32 %959, ptr %1039, align 4, !tbaa !4
  %1040 = load i32, ptr %165, align 8, !tbaa !48
  %1041 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1040, i32 -1)
  %1042 = extractvalue { i32, i1 } %1041, 1, !nosanitize !30
  br i1 %1042, label %.loopexit298, label %1043, !prof !33, !nosanitize !30

1043:                                             ; preds = %1036
  %1044 = extractvalue { i32, i1 } %1041, 0, !nosanitize !30
  store i32 %1044, ptr %165, align 8, !tbaa !48
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds [4 x i8], ptr %232, i64 %1045
  store i32 %1032, ptr %1046, align 4, !tbaa !4
  %1047 = sext i32 %959 to i64
  %1048 = getelementptr inbounds [4 x i8], ptr %812, i64 %1047
  %1049 = load i16, ptr %1048, align 2, !tbaa !28
  %1050 = sext i32 %1032 to i64
  %1051 = getelementptr inbounds [4 x i8], ptr %812, i64 %1050
  %1052 = load i16, ptr %1051, align 2, !tbaa !28
  %1053 = add i16 %1052, %1049
  %1054 = getelementptr inbounds [4 x i8], ptr %812, i64 %958
  store i16 %1053, ptr %1054, align 2, !tbaa !28
  %1055 = getelementptr inbounds i8, ptr %233, i64 %1047
  %1056 = load i8, ptr %1055, align 1, !tbaa !28
  %1057 = getelementptr inbounds i8, ptr %233, i64 %1050
  %1058 = load i8, ptr %1057, align 1, !tbaa !28
  %1059 = tail call i8 @llvm.umax.i8(i8 %1056, i8 %1058)
  %1060 = add i8 %1059, 1
  %1061 = getelementptr inbounds i8, ptr %233, i64 %958
  store i8 %1060, ptr %1061, align 1, !tbaa !28
  %1062 = trunc nsw i64 %958 to i32
  %1063 = trunc i64 %958 to i16
  %1064 = getelementptr inbounds nuw i8, ptr %1051, i64 2
  store i16 %1063, ptr %1064, align 2, !tbaa !28
  %1065 = getelementptr inbounds nuw i8, ptr %1048, i64 2
  store i16 %1063, ptr %1065, align 2, !tbaa !28
  %1066 = icmp eq i64 %958, 2147483647
  br i1 %1066, label %.loopexit299, label %1067, !prof !33, !nosanitize !30

1067:                                             ; preds = %1043
  %1068 = add nsw i64 %958, 1
  store i32 %1062, ptr %238, align 4, !tbaa !4
  %1069 = load i32, ptr %164, align 4, !tbaa !47
  %1070 = icmp slt i32 %1069, 2
  br i1 %1070, label %1127, label %.preheader297

.preheader297:                                    ; preds = %1067, %1118
  %1071 = phi i32 [ %1122, %1118 ], [ %1069, %1067 ]
  %1072 = phi i32 [ %1121, %1118 ], [ 2, %1067 ]
  %1073 = phi i32 [ %1103, %1118 ], [ 1, %1067 ]
  %1074 = icmp slt i32 %1072, %1071
  br i1 %1074, label %1077, label %1075

1075:                                             ; preds = %.preheader297
  %1076 = sext i32 %1072 to i64
  br label %1101

1077:                                             ; preds = %.preheader297
  %1078 = or disjoint i32 %1072, 1
  %1079 = sext i32 %1078 to i64
  %1080 = getelementptr inbounds [4 x i8], ptr %232, i64 %1079
  %1081 = load i32, ptr %1080, align 4, !tbaa !4
  %1082 = sext i32 %1081 to i64
  %1083 = getelementptr inbounds [4 x i8], ptr %812, i64 %1082
  %1084 = load i16, ptr %1083, align 2, !tbaa !28
  %1085 = sext i32 %1072 to i64
  %1086 = getelementptr inbounds [4 x i8], ptr %232, i64 %1085
  %1087 = load i32, ptr %1086, align 4, !tbaa !4
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds [4 x i8], ptr %812, i64 %1088
  %1090 = load i16, ptr %1089, align 2, !tbaa !28
  %1091 = icmp ult i16 %1084, %1090
  br i1 %1091, label %1100, label %1092

1092:                                             ; preds = %1077
  %1093 = icmp eq i16 %1084, %1090
  br i1 %1093, label %1094, label %1101

1094:                                             ; preds = %1092
  %1095 = getelementptr inbounds i8, ptr %233, i64 %1082
  %1096 = load i8, ptr %1095, align 1, !tbaa !28
  %1097 = getelementptr inbounds i8, ptr %233, i64 %1088
  %1098 = load i8, ptr %1097, align 1, !tbaa !28
  %1099 = icmp ugt i8 %1096, %1098
  br i1 %1099, label %1101, label %1100

1100:                                             ; preds = %1094, %1077
  br label %1101

1101:                                             ; preds = %1100, %1094, %1092, %1075
  %1102 = phi i64 [ %1076, %1075 ], [ %1079, %1100 ], [ %1085, %1094 ], [ %1085, %1092 ]
  %1103 = phi i32 [ %1072, %1075 ], [ %1078, %1100 ], [ %1072, %1094 ], [ %1072, %1092 ]
  %1104 = load i16, ptr %1054, align 2, !tbaa !28
  %1105 = getelementptr inbounds [4 x i8], ptr %232, i64 %1102
  %1106 = load i32, ptr %1105, align 4, !tbaa !4
  %1107 = sext i32 %1106 to i64
  %1108 = getelementptr inbounds [4 x i8], ptr %812, i64 %1107
  %1109 = load i16, ptr %1108, align 2, !tbaa !28
  %1110 = icmp ult i16 %1104, %1109
  br i1 %1110, label %1124, label %1111

1111:                                             ; preds = %1101
  %1112 = icmp eq i16 %1104, %1109
  br i1 %1112, label %1113, label %1118

1113:                                             ; preds = %1111
  %1114 = load i8, ptr %1061, align 1, !tbaa !28
  %1115 = getelementptr inbounds i8, ptr %233, i64 %1107
  %1116 = load i8, ptr %1115, align 1, !tbaa !28
  %1117 = icmp ugt i8 %1114, %1116
  br i1 %1117, label %1118, label %1124

1118:                                             ; preds = %1113, %1111
  %1119 = sext i32 %1073 to i64
  %1120 = getelementptr inbounds [4 x i8], ptr %232, i64 %1119
  store i32 %1106, ptr %1120, align 4, !tbaa !4
  %1121 = shl i32 %1103, 1
  %1122 = load i32, ptr %164, align 4, !tbaa !47
  %1123 = icmp sgt i32 %1121, %1122
  br i1 %1123, label %1124, label %.preheader297, !llvm.loop !54

1124:                                             ; preds = %1118, %1113, %1101
  %1125 = phi i32 [ %1073, %1101 ], [ %1073, %1113 ], [ %1103, %1118 ]
  %1126 = sext i32 %1125 to i64
  br label %1127

1127:                                             ; preds = %1124, %1067
  %1128 = phi i64 [ 1, %1067 ], [ %1126, %1124 ]
  %1129 = getelementptr inbounds [4 x i8], ptr %232, i64 %1128
  store i32 %1062, ptr %1129, align 4, !tbaa !4
  %1130 = load i32, ptr %164, align 4, !tbaa !47
  %1131 = icmp sgt i32 %1130, 1
  br i1 %1131, label %956, label %1132, !llvm.loop !56

1132:                                             ; preds = %1127
  %1133 = load i32, ptr %165, align 8, !tbaa !48
  %1134 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1133, i32 -1)
  %1135 = extractvalue { i32, i1 } %1134, 1, !nosanitize !30
  br i1 %1135, label %.loopexit298, label %1136, !prof !33, !nosanitize !30

1136:                                             ; preds = %1132
  %1137 = extractvalue { i32, i1 } %1134, 0, !nosanitize !30
  %1138 = load i32, ptr %238, align 4, !tbaa !4
  store i32 %1137, ptr %165, align 8, !tbaa !48
  %1139 = sext i32 %1137 to i64
  %1140 = getelementptr inbounds [4 x i8], ptr %232, i64 %1139
  store i32 %1138, ptr %1140, align 4, !tbaa !4
  %1141 = load ptr, ptr %811, align 8, !tbaa !41
  %1142 = load i32, ptr %879, align 8, !tbaa !53
  %1143 = load ptr, ptr %813, align 8, !tbaa !42
  %1144 = load ptr, ptr %1143, align 8, !tbaa !43
  %1145 = getelementptr inbounds nuw i8, ptr %1143, i64 8
  %1146 = load ptr, ptr %1145, align 8, !tbaa !57
  %1147 = getelementptr inbounds nuw i8, ptr %1143, i64 16
  %1148 = load i32, ptr %1147, align 8, !tbaa !58
  %1149 = getelementptr inbounds nuw i8, ptr %1143, i64 24
  %1150 = load i32, ptr %1149, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %506, i8 0, i64 32, i1 false), !tbaa !60
  %1151 = load i32, ptr %165, align 8, !tbaa !48
  %1152 = sext i32 %1151 to i64
  %1153 = getelementptr inbounds [4 x i8], ptr %232, i64 %1152
  %1154 = load i32, ptr %1153, align 4, !tbaa !4
  %1155 = sext i32 %1154 to i64
  %1156 = getelementptr inbounds [4 x i8], ptr %1141, i64 %1155
  %1157 = getelementptr inbounds nuw i8, ptr %1156, i64 2
  store i16 0, ptr %1157, align 2, !tbaa !28
  %1158 = load i32, ptr %165, align 8, !tbaa !48
  %1159 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1158, i32 1), !nosanitize !30
  %1160 = extractvalue { i32, i1 } %1159, 1, !nosanitize !30
  br i1 %1160, label %.loopexit293, label %1161, !prof !33, !nosanitize !30

.loopexit293:                                     ; preds = %1221, %1209, %1185, %1256, %1136
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

1161:                                             ; preds = %1136
  %1162 = extractvalue { i32, i1 } %1159, 0
  %1163 = icmp slt i32 %1162, 573
  br i1 %1163, label %1164, label %.loopexit290

1164:                                             ; preds = %1161
  %1165 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1166 = icmp eq ptr %1144, null
  %1167 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1168 = sext i32 %1162 to i64
  br label %1169

1169:                                             ; preds = %1234, %1164
  %1170 = phi i64 [ %1168, %1164 ], [ %1235, %1234 ]
  %1171 = phi i32 [ 0, %1164 ], [ %1192, %1234 ]
  %1172 = getelementptr inbounds [4 x i8], ptr %232, i64 %1170
  %1173 = load i32, ptr %1172, align 4, !tbaa !4
  %1174 = sext i32 %1173 to i64
  %1175 = getelementptr inbounds [4 x i8], ptr %1141, i64 %1174
  %1176 = getelementptr inbounds nuw i8, ptr %1175, i64 2
  %1177 = load i16, ptr %1176, align 2, !tbaa !28
  %1178 = zext i16 %1177 to i64
  %1179 = getelementptr inbounds nuw [4 x i8], ptr %1141, i64 %1178
  %1180 = getelementptr inbounds nuw i8, ptr %1179, i64 2
  %1181 = load i16, ptr %1180, align 2, !tbaa !28
  %1182 = zext i16 %1181 to i32
  %1183 = add nuw nsw i32 %1182, 1
  %1184 = icmp sgt i32 %1150, %1182
  br i1 %1184, label %1190, label %1185

1185:                                             ; preds = %1169
  %1186 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1171, i32 1), !nosanitize !30
  %1187 = extractvalue { i32, i1 } %1186, 1, !nosanitize !30
  br i1 %1187, label %.loopexit293, label %1188, !prof !33, !nosanitize !30

1188:                                             ; preds = %1185
  %1189 = extractvalue { i32, i1 } %1186, 0, !nosanitize !30
  br label %1190

1190:                                             ; preds = %1188, %1169
  %1191 = phi i32 [ %1150, %1188 ], [ %1183, %1169 ]
  %1192 = phi i32 [ %1189, %1188 ], [ %1171, %1169 ]
  %1193 = trunc i32 %1191 to i16
  store i16 %1193, ptr %1176, align 2, !tbaa !28
  %1194 = icmp sgt i32 %1173, %1142
  br i1 %1194, label %1234, label %1195

1195:                                             ; preds = %1190
  %1196 = sext i32 %1191 to i64
  %1197 = getelementptr inbounds [2 x i8], ptr %506, i64 %1196
  %1198 = load i16, ptr %1197, align 2, !tbaa !60
  %1199 = add i16 %1198, 1
  store i16 %1199, ptr %1197, align 2, !tbaa !60
  %1200 = icmp slt i32 %1173, %1148
  br i1 %1200, label %1209, label %1201

1201:                                             ; preds = %1195
  %1202 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1173, i32 %1148), !nosanitize !30
  %1203 = extractvalue { i32, i1 } %1202, 1, !nosanitize !30
  br i1 %1203, label %.loopexit285, label %1204, !prof !33, !nosanitize !30

.loopexit285:                                     ; preds = %1201, %1261, %1253, %.loopexit287, %1287, %1292, %1240
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

1204:                                             ; preds = %1201
  %1205 = extractvalue { i32, i1 } %1202, 0, !nosanitize !30
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds [4 x i8], ptr %1146, i64 %1206
  %1208 = load i32, ptr %1207, align 4, !tbaa !4
  br label %1209

1209:                                             ; preds = %1204, %1195
  %1210 = phi i32 [ %1208, %1204 ], [ 0, %1195 ]
  %1211 = load i16, ptr %1175, align 2, !tbaa !28
  %1212 = zext i16 %1211 to i64
  %1213 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1191, i32 %1210), !nosanitize !30
  %1214 = extractvalue { i32, i1 } %1213, 1, !nosanitize !30
  br i1 %1214, label %.loopexit293, label %1215, !prof !33, !nosanitize !30

1215:                                             ; preds = %1209
  %1216 = extractvalue { i32, i1 } %1213, 0, !nosanitize !30
  %1217 = zext i32 %1216 to i64
  %1218 = mul nuw nsw i64 %1217, %1212
  %1219 = load i64, ptr %1165, align 8, !tbaa !50
  %1220 = add i64 %1219, %1218
  store i64 %1220, ptr %1165, align 8, !tbaa !50
  br i1 %1166, label %1234, label %1221

1221:                                             ; preds = %1215
  %1222 = getelementptr inbounds [4 x i8], ptr %1144, i64 %1174
  %1223 = getelementptr inbounds nuw i8, ptr %1222, i64 2
  %1224 = load i16, ptr %1223, align 2, !tbaa !28
  %1225 = zext i16 %1224 to i32
  %1226 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1225, i32 %1210), !nosanitize !30
  %1227 = extractvalue { i32, i1 } %1226, 1, !nosanitize !30
  br i1 %1227, label %.loopexit293, label %1228, !prof !33, !nosanitize !30

1228:                                             ; preds = %1221
  %1229 = extractvalue { i32, i1 } %1226, 0, !nosanitize !30
  %1230 = zext i32 %1229 to i64
  %1231 = mul nuw nsw i64 %1230, %1212
  %1232 = load i64, ptr %1167, align 8, !tbaa !51
  %1233 = add i64 %1232, %1231
  store i64 %1233, ptr %1167, align 8, !tbaa !51
  br label %1234

1234:                                             ; preds = %1228, %1215, %1190
  %1235 = add nsw i64 %1170, 1
  %1236 = and i64 %1235, 4294967295
  %1237 = icmp eq i64 %1236, 573
  br i1 %1237, label %1238, label %1169, !llvm.loop !61

1238:                                             ; preds = %1234
  %1239 = icmp eq i32 %1192, 0
  br i1 %1239, label %.loopexit290, label %1240

1240:                                             ; preds = %1238
  %1241 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1150, i32 -1)
  %1242 = extractvalue { i32, i1 } %1241, 1, !nosanitize !30
  %1243 = sext i32 %1150 to i64
  %1244 = getelementptr inbounds [2 x i8], ptr %506, i64 %1243
  br i1 %1242, label %.loopexit285, label %.preheader292, !prof !33, !nosanitize !30

.preheader292:                                    ; preds = %1240, %1271
  %1245 = phi i32 [ %1272, %1271 ], [ %1192, %1240 ]
  br label %1246

1246:                                             ; preds = %1253, %.preheader292
  %1247 = phi { i32, i1 } [ %1254, %1253 ], [ %1241, %.preheader292 ]
  %1248 = extractvalue { i32, i1 } %1247, 0
  %1249 = sext i32 %1248 to i64
  %1250 = getelementptr inbounds [2 x i8], ptr %506, i64 %1249
  %1251 = load i16, ptr %1250, align 2, !tbaa !60
  %1252 = icmp eq i16 %1251, 0
  br i1 %1252, label %1253, label %1256

1253:                                             ; preds = %1246
  %1254 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1248, i32 -1)
  %1255 = extractvalue { i32, i1 } %1254, 1, !nosanitize !30
  br i1 %1255, label %.loopexit285, label %1246, !prof !33, !llvm.loop !62, !nosanitize !30

1256:                                             ; preds = %1246
  %1257 = getelementptr inbounds [2 x i8], ptr %506, i64 %1249
  %1258 = add i16 %1251, -1
  store i16 %1258, ptr %1257, align 2, !tbaa !60
  %1259 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1248, i32 1), !nosanitize !30
  %1260 = extractvalue { i32, i1 } %1259, 1, !nosanitize !30
  br i1 %1260, label %.loopexit293, label %1261, !prof !33, !nosanitize !30

1261:                                             ; preds = %1256
  %1262 = extractvalue { i32, i1 } %1259, 0, !nosanitize !30
  %1263 = sext i32 %1262 to i64
  %1264 = getelementptr inbounds [2 x i8], ptr %506, i64 %1263
  %1265 = load i16, ptr %1264, align 2, !tbaa !60
  %1266 = add i16 %1265, 2
  store i16 %1266, ptr %1264, align 2, !tbaa !60
  %1267 = load i16, ptr %1244, align 2, !tbaa !60
  %1268 = add i16 %1267, -1
  store i16 %1268, ptr %1244, align 2, !tbaa !60
  %1269 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1245, i32 -2)
  %1270 = extractvalue { i32, i1 } %1269, 1, !nosanitize !30
  br i1 %1270, label %.loopexit285, label %1271, !prof !33, !nosanitize !30

1271:                                             ; preds = %1261
  %1272 = extractvalue { i32, i1 } %1269, 0, !nosanitize !30
  %1273 = icmp sgt i32 %1272, 0
  br i1 %1273, label %.preheader292, label %1274, !llvm.loop !63

1274:                                             ; preds = %1271
  %1275 = icmp eq i32 %1150, 0
  br i1 %1275, label %.loopexit290, label %.preheader288

.preheader288:                                    ; preds = %1274, %1318
  %1276 = phi i64 [ %1319, %1318 ], [ %1243, %1274 ]
  %1277 = phi i32 [ %1284, %1318 ], [ 573, %1274 ]
  %1278 = getelementptr inbounds [2 x i8], ptr %506, i64 %1276
  %1279 = load i16, ptr %1278, align 2, !tbaa !60
  %1280 = icmp eq i16 %1279, 0
  br i1 %1280, label %.loopexit287, label %1281

1281:                                             ; preds = %.preheader288
  %1282 = zext i16 %1279 to i32
  %1283 = trunc i64 %1276 to i16
  br label %1287

.loopexit287:                                     ; preds = %1315, %.preheader288
  %1284 = phi i32 [ %1277, %.preheader288 ], [ %1296, %1315 ]
  %1285 = and i64 %1276, 4294967295
  %1286 = icmp eq i64 %1285, 2147483648
  br i1 %1286, label %.loopexit285, label %1318, !prof !33, !nosanitize !30

1287:                                             ; preds = %1315, %1281
  %1288 = phi i32 [ %1277, %1281 ], [ %1296, %1315 ]
  %1289 = phi i32 [ %1282, %1281 ], [ %1316, %1315 ]
  %1290 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1288, i32 -1)
  %1291 = extractvalue { i32, i1 } %1290, 1, !nosanitize !30
  br i1 %1291, label %.loopexit285, label %.preheader284, !prof !64, !nosanitize !30

1292:                                             ; preds = %.preheader284
  %1293 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1296, i32 -1)
  %1294 = extractvalue { i32, i1 } %1293, 1, !nosanitize !30
  br i1 %1294, label %.loopexit285, label %.preheader284, !prof !65, !llvm.loop !66, !nosanitize !30

.preheader284:                                    ; preds = %1287, %1292
  %1295 = phi { i32, i1 } [ %1293, %1292 ], [ %1290, %1287 ]
  %1296 = extractvalue { i32, i1 } %1295, 0, !nosanitize !30
  %1297 = sext i32 %1296 to i64
  %1298 = getelementptr inbounds [4 x i8], ptr %232, i64 %1297
  %1299 = load i32, ptr %1298, align 4, !tbaa !4
  %1300 = icmp sgt i32 %1299, %1142
  br i1 %1300, label %1292, label %1301, !llvm.loop !66

1301:                                             ; preds = %.preheader284
  %1302 = sext i32 %1299 to i64
  %1303 = getelementptr inbounds [4 x i8], ptr %1141, i64 %1302
  %1304 = getelementptr inbounds nuw i8, ptr %1303, i64 2
  %1305 = load i16, ptr %1304, align 2, !tbaa !28
  %1306 = zext i16 %1305 to i64
  %1307 = icmp eq i64 %1276, %1306
  br i1 %1307, label %1315, label %1308

1308:                                             ; preds = %1301
  %1309 = sub nsw i64 %1276, %1306
  %1310 = load i16, ptr %1303, align 2, !tbaa !28
  %1311 = zext i16 %1310 to i64
  %1312 = mul nsw i64 %1309, %1311
  %1313 = load i64, ptr %1165, align 8, !tbaa !50
  %1314 = add i64 %1312, %1313
  store i64 %1314, ptr %1165, align 8, !tbaa !50
  store i16 %1283, ptr %1304, align 2, !tbaa !28
  br label %1315

1315:                                             ; preds = %1308, %1301
  %1316 = add nsw i32 %1289, -1
  %1317 = icmp eq i32 %1316, 0
  br i1 %1317, label %.loopexit287, label %1287, !llvm.loop !66

1318:                                             ; preds = %.loopexit287
  %1319 = add nsw i64 %1276, -1
  %1320 = and i64 %1319, 4294967295
  %1321 = icmp eq i64 %1320, 0
  br i1 %1321, label %.loopexit290, label %.preheader288, !llvm.loop !67

.loopexit290:                                     ; preds = %1318, %1274, %1238, %1161
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %1322 = load i16, ptr %506, align 2, !tbaa !60
  %1323 = shl i16 %1322, 1
  %1324 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1323, ptr %1324, align 2, !tbaa !60
  %1325 = load i16, ptr %681, align 2, !tbaa !60
  %1326 = add i16 %1325, %1323
  %1327 = shl i16 %1326, 1
  %1328 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1327, ptr %1328, align 4, !tbaa !60
  %1329 = load i16, ptr %686, align 2, !tbaa !60
  %1330 = add i16 %1329, %1327
  %1331 = shl i16 %1330, 1
  %1332 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1331, ptr %1332, align 2, !tbaa !60
  %1333 = load i16, ptr %691, align 2, !tbaa !60
  %1334 = add i16 %1333, %1331
  %1335 = shl i16 %1334, 1
  %1336 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1335, ptr %1336, align 8, !tbaa !60
  %1337 = load i16, ptr %696, align 2, !tbaa !60
  %1338 = add i16 %1337, %1335
  %1339 = shl i16 %1338, 1
  %1340 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1339, ptr %1340, align 2, !tbaa !60
  %1341 = load i16, ptr %701, align 2, !tbaa !60
  %1342 = add i16 %1341, %1339
  %1343 = shl i16 %1342, 1
  %1344 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1343, ptr %1344, align 4, !tbaa !60
  %1345 = load i16, ptr %706, align 2, !tbaa !60
  %1346 = add i16 %1345, %1343
  %1347 = shl i16 %1346, 1
  %1348 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1347, ptr %1348, align 2, !tbaa !60
  %1349 = load i16, ptr %711, align 2, !tbaa !60
  %1350 = add i16 %1349, %1347
  %1351 = shl i16 %1350, 1
  %1352 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1351, ptr %1352, align 16, !tbaa !60
  %1353 = load i16, ptr %716, align 2, !tbaa !60
  %1354 = add i16 %1353, %1351
  %1355 = shl i16 %1354, 1
  %1356 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1355, ptr %1356, align 2, !tbaa !60
  %1357 = load i16, ptr %721, align 2, !tbaa !60
  %1358 = add i16 %1357, %1355
  %1359 = shl i16 %1358, 1
  %1360 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1359, ptr %1360, align 4, !tbaa !60
  %1361 = load i16, ptr %726, align 2, !tbaa !60
  %1362 = add i16 %1361, %1359
  %1363 = shl i16 %1362, 1
  %1364 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1363, ptr %1364, align 2, !tbaa !60
  %1365 = load i16, ptr %731, align 2, !tbaa !60
  %1366 = add i16 %1365, %1363
  %1367 = shl i16 %1366, 1
  %1368 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1367, ptr %1368, align 8, !tbaa !60
  %1369 = load i16, ptr %736, align 2, !tbaa !60
  %1370 = add i16 %1369, %1367
  %1371 = shl i16 %1370, 1
  %1372 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1371, ptr %1372, align 2, !tbaa !60
  %1373 = load i16, ptr %741, align 2, !tbaa !60
  %1374 = add i16 %1373, %1371
  %1375 = shl i16 %1374, 1
  %1376 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1375, ptr %1376, align 4, !tbaa !60
  %1377 = load i16, ptr %746, align 2, !tbaa !60
  %1378 = add i16 %1377, %1375
  %1379 = shl i16 %1378, 1
  %1380 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1379, ptr %1380, align 2, !tbaa !60
  %1381 = icmp slt i32 %877, 0
  br i1 %1381, label %.loopexit283, label %.preheader282

1382:                                             ; preds = %1435
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

.preheader282:                                    ; preds = %.loopexit290, %1437
  %1383 = phi i64 [ %1438, %1437 ], [ 0, %.loopexit290 ]
  %1384 = getelementptr inbounds nuw [4 x i8], ptr %812, i64 %1383
  %1385 = getelementptr inbounds nuw i8, ptr %1384, i64 2
  %1386 = load i16, ptr %1385, align 2, !tbaa !28
  %1387 = icmp eq i16 %1386, 0
  br i1 %1387, label %1435, label %1388

1388:                                             ; preds = %.preheader282
  %1389 = zext i16 %1386 to i32
  %1390 = zext i16 %1386 to i64
  %1391 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %1390
  %1392 = load i16, ptr %1391, align 2, !tbaa !60
  %1393 = add i16 %1392, 1
  store i16 %1393, ptr %1391, align 2, !tbaa !60
  %1394 = and i32 %1389, 3
  %1395 = icmp ult i16 %1386, 4
  br i1 %1395, label %1420, label %1396

1396:                                             ; preds = %1388
  %1397 = and i32 %1389, 65532
  br label %1398

1398:                                             ; preds = %1398, %1396
  %1399 = phi i16 [ %1392, %1396 ], [ %1415, %1398 ]
  %1400 = phi i16 [ 0, %1396 ], [ %1414, %1398 ]
  %1401 = phi i32 [ 0, %1396 ], [ %1416, %1398 ]
  %1402 = and i16 %1399, 1
  %1403 = or disjoint i16 %1400, %1402
  %1404 = shl i16 %1403, 2
  %1405 = and i16 %1399, 2
  %1406 = or disjoint i16 %1404, %1405
  %1407 = lshr i16 %1399, 2
  %1408 = and i16 %1407, 1
  %1409 = or disjoint i16 %1406, %1408
  %1410 = shl i16 %1409, 1
  %1411 = lshr i16 %1399, 3
  %1412 = and i16 %1411, 1
  %1413 = or disjoint i16 %1410, %1412
  %1414 = shl i16 %1413, 1
  %1415 = lshr i16 %1399, 4
  %1416 = add nuw nsw i32 %1401, 4
  %1417 = icmp eq i32 %1416, %1397
  br i1 %1417, label %1418, label %1398, !llvm.loop !68

1418:                                             ; preds = %1398
  %1419 = icmp eq i32 %1394, 0
  br i1 %1419, label %.loopexit281, label %1420

1420:                                             ; preds = %1418, %1388
  %1421 = phi i16 [ %1392, %1388 ], [ %1415, %1418 ]
  %1422 = phi i16 [ 0, %1388 ], [ %1414, %1418 ]
  %1423 = icmp ne i32 %1394, 0
  tail call void @llvm.assume(i1 %1423)
  br label %1424

1424:                                             ; preds = %1424, %1420
  %1425 = phi i16 [ %1421, %1420 ], [ %1431, %1424 ]
  %1426 = phi i16 [ %1422, %1420 ], [ %1430, %1424 ]
  %1427 = phi i32 [ 0, %1420 ], [ %1432, %1424 ]
  %1428 = and i16 %1425, 1
  %1429 = or disjoint i16 %1426, %1428
  %1430 = shl i16 %1429, 1
  %1431 = lshr i16 %1425, 1
  %1432 = add nuw nsw i32 %1427, 1
  %1433 = icmp eq i32 %1432, %1394
  br i1 %1433, label %.loopexit281, label %1424, !llvm.loop !72

.loopexit281:                                     ; preds = %1424, %1418
  %1434 = phi i16 [ %1413, %1418 ], [ %1429, %1424 ]
  store i16 %1434, ptr %1384, align 2, !tbaa !28
  br label %1435

1435:                                             ; preds = %.loopexit281, %.preheader282
  %1436 = icmp eq i64 %1383, 2147483647
  br i1 %1436, label %1382, label %1437, !prof !33, !nosanitize !30

1437:                                             ; preds = %1435
  %1438 = add nuw nsw i64 %1383, 1
  %1439 = trunc i64 %1438 to i32
  %1440 = icmp slt i32 %877, %1439
  br i1 %1440, label %.loopexit283, label %.preheader282, !llvm.loop !71

.loopexit283:                                     ; preds = %1437, %.loopexit290
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %1441 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %1442 = load i32, ptr %231, align 8, !tbaa !73
  %1443 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1442, i32 1), !nosanitize !30
  %1444 = extractvalue { i32, i1 } %1443, 1, !nosanitize !30
  br i1 %1444, label %.loopexit280, label %1445, !prof !33, !nosanitize !30

.loopexit280:                                     ; preds = %1463, %.loopexit283
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

1445:                                             ; preds = %.loopexit283
  %1446 = getelementptr inbounds nuw i8, ptr %0, i64 214
  %1447 = load i16, ptr %1446, align 2, !tbaa !28
  %1448 = extractvalue { i32, i1 } %1443, 0, !nosanitize !30
  %1449 = sext i32 %1448 to i64
  %1450 = getelementptr inbounds [4 x i8], ptr %1441, i64 %1449
  %1451 = getelementptr inbounds nuw i8, ptr %1450, i64 2
  store i16 -1, ptr %1451, align 2, !tbaa !28
  %1452 = icmp slt i32 %1442, 0
  br i1 %1452, label %.loopexit279, label %1453

1453:                                             ; preds = %1445
  %1454 = zext i16 %1447 to i32
  %1455 = icmp eq i16 %1447, 0
  %1456 = select i1 %1455, i32 138, i32 7
  %1457 = select i1 %1455, i32 3, i32 4
  %1458 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1459 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1460 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1461 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1462 = add nuw nsw i32 %1442, 1
  %wide.trip.count = zext nneg i32 %1462 to i64
  br label %1464

1463:                                             ; preds = %1511
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond502 = icmp eq i64 %indvars.iv.next, 2147483648
  br i1 %exitcond502, label %.loopexit280, label %1464, !prof !74, !llvm.loop !75, !nosanitize !30

1464:                                             ; preds = %1463, %1453
  %indvars.iv = phi i64 [ %indvars.iv.next, %1463 ], [ 1, %1453 ]
  %1465 = phi i32 [ %1512, %1463 ], [ -1, %1453 ]
  %1466 = phi i32 [ %1473, %1463 ], [ %1454, %1453 ]
  %1467 = phi i32 [ %1513, %1463 ], [ 0, %1453 ]
  %1468 = phi i32 [ %1514, %1463 ], [ %1456, %1453 ]
  %1469 = phi i32 [ %1515, %1463 ], [ %1457, %1453 ]
  %1470 = getelementptr inbounds nuw [4 x i8], ptr %1441, i64 %indvars.iv
  %1471 = getelementptr inbounds nuw i8, ptr %1470, i64 2
  %1472 = load i16, ptr %1471, align 2, !tbaa !28
  %1473 = zext i16 %1472 to i32
  %1474 = add nsw i32 %1467, 1
  %1475 = icmp slt i32 %1474, %1468
  %1476 = icmp eq i32 %1466, %1473
  %1477 = select i1 %1475, i1 %1476, i1 false
  br i1 %1477, label %1511, label %1478

1478:                                             ; preds = %1464
  %1479 = icmp slt i32 %1474, %1469
  br i1 %1479, label %1480, label %1486

1480:                                             ; preds = %1478
  %1481 = zext nneg i32 %1466 to i64
  %1482 = getelementptr inbounds nuw [4 x i8], ptr %1458, i64 %1481
  %1483 = load i16, ptr %1482, align 4, !tbaa !28
  %1484 = trunc i32 %1474 to i16
  %1485 = add i16 %1483, %1484
  store i16 %1485, ptr %1482, align 4, !tbaa !28
  br label %1506

1486:                                             ; preds = %1478
  %1487 = icmp eq i32 %1466, 0
  br i1 %1487, label %1498, label %1488

1488:                                             ; preds = %1486
  %1489 = icmp eq i32 %1466, %1465
  br i1 %1489, label %1495, label %1490

1490:                                             ; preds = %1488
  %1491 = zext nneg i32 %1466 to i64
  %1492 = getelementptr inbounds nuw [4 x i8], ptr %1458, i64 %1491
  %1493 = load i16, ptr %1492, align 4, !tbaa !28
  %1494 = add i16 %1493, 1
  store i16 %1494, ptr %1492, align 4, !tbaa !28
  br label %1495

1495:                                             ; preds = %1490, %1488
  %1496 = load i16, ptr %1459, align 4, !tbaa !28
  %1497 = add i16 %1496, 1
  store i16 %1497, ptr %1459, align 4, !tbaa !28
  br label %1506

1498:                                             ; preds = %1486
  %1499 = icmp slt i32 %1467, 10
  br i1 %1499, label %1500, label %1503

1500:                                             ; preds = %1498
  %1501 = load i16, ptr %1461, align 4, !tbaa !28
  %1502 = add i16 %1501, 1
  store i16 %1502, ptr %1461, align 4, !tbaa !28
  br label %1506

1503:                                             ; preds = %1498
  %1504 = load i16, ptr %1460, align 4, !tbaa !28
  %1505 = add i16 %1504, 1
  store i16 %1505, ptr %1460, align 4, !tbaa !28
  br label %1506

1506:                                             ; preds = %1503, %1500, %1495, %1480
  %1507 = icmp eq i16 %1472, 0
  br i1 %1507, label %1511, label %1508

1508:                                             ; preds = %1506
  %1509 = select i1 %1476, i32 6, i32 7
  %1510 = select i1 %1476, i32 3, i32 4
  br label %1511

1511:                                             ; preds = %1508, %1506, %1464
  %1512 = phi i32 [ %1465, %1464 ], [ %1466, %1506 ], [ %1466, %1508 ]
  %1513 = phi i32 [ %1474, %1464 ], [ 0, %1506 ], [ 0, %1508 ]
  %1514 = phi i32 [ %1468, %1464 ], [ 138, %1506 ], [ %1509, %1508 ]
  %1515 = phi i32 [ %1469, %1464 ], [ 3, %1506 ], [ %1510, %1508 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %.loopexit279, label %1463, !llvm.loop !75

.loopexit279:                                     ; preds = %1511, %1445
  %1516 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %1517 = load i32, ptr %879, align 8, !tbaa !76
  %1518 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1517, i32 1), !nosanitize !30
  %1519 = extractvalue { i32, i1 } %1518, 1, !nosanitize !30
  br i1 %1519, label %.loopexit278, label %1520, !prof !33, !nosanitize !30

.loopexit278:                                     ; preds = %1538, %.loopexit279
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

1520:                                             ; preds = %.loopexit279
  %1521 = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %1522 = load i16, ptr %1521, align 2, !tbaa !28
  %1523 = extractvalue { i32, i1 } %1518, 0, !nosanitize !30
  %1524 = sext i32 %1523 to i64
  %1525 = getelementptr inbounds [4 x i8], ptr %1516, i64 %1524
  %1526 = getelementptr inbounds nuw i8, ptr %1525, i64 2
  store i16 -1, ptr %1526, align 2, !tbaa !28
  %1527 = icmp slt i32 %1517, 0
  br i1 %1527, label %.loopexit277, label %1528

1528:                                             ; preds = %1520
  %1529 = zext i16 %1522 to i32
  %1530 = icmp eq i16 %1522, 0
  %1531 = select i1 %1530, i32 138, i32 7
  %1532 = select i1 %1530, i32 3, i32 4
  %1533 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1534 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1535 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1536 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1537 = add nuw nsw i32 %1517, 1
  %wide.trip.count506 = zext nneg i32 %1537 to i64
  br label %1539

1538:                                             ; preds = %1586
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1
  %exitcond508 = icmp eq i64 %indvars.iv.next504, 2147483648
  br i1 %exitcond508, label %.loopexit278, label %1539, !prof !74, !llvm.loop !75, !nosanitize !30

1539:                                             ; preds = %1538, %1528
  %indvars.iv503 = phi i64 [ %indvars.iv.next504, %1538 ], [ 1, %1528 ]
  %1540 = phi i32 [ %1587, %1538 ], [ -1, %1528 ]
  %1541 = phi i32 [ %1548, %1538 ], [ %1529, %1528 ]
  %1542 = phi i32 [ %1588, %1538 ], [ 0, %1528 ]
  %1543 = phi i32 [ %1589, %1538 ], [ %1531, %1528 ]
  %1544 = phi i32 [ %1590, %1538 ], [ %1532, %1528 ]
  %1545 = getelementptr inbounds nuw [4 x i8], ptr %1516, i64 %indvars.iv503
  %1546 = getelementptr inbounds nuw i8, ptr %1545, i64 2
  %1547 = load i16, ptr %1546, align 2, !tbaa !28
  %1548 = zext i16 %1547 to i32
  %1549 = add nsw i32 %1542, 1
  %1550 = icmp slt i32 %1549, %1543
  %1551 = icmp eq i32 %1541, %1548
  %1552 = select i1 %1550, i1 %1551, i1 false
  br i1 %1552, label %1586, label %1553

1553:                                             ; preds = %1539
  %1554 = icmp slt i32 %1549, %1544
  br i1 %1554, label %1555, label %1561

1555:                                             ; preds = %1553
  %1556 = zext nneg i32 %1541 to i64
  %1557 = getelementptr inbounds nuw [4 x i8], ptr %1533, i64 %1556
  %1558 = load i16, ptr %1557, align 4, !tbaa !28
  %1559 = trunc i32 %1549 to i16
  %1560 = add i16 %1558, %1559
  store i16 %1560, ptr %1557, align 4, !tbaa !28
  br label %1581

1561:                                             ; preds = %1553
  %1562 = icmp eq i32 %1541, 0
  br i1 %1562, label %1573, label %1563

1563:                                             ; preds = %1561
  %1564 = icmp eq i32 %1541, %1540
  br i1 %1564, label %1570, label %1565

1565:                                             ; preds = %1563
  %1566 = zext nneg i32 %1541 to i64
  %1567 = getelementptr inbounds nuw [4 x i8], ptr %1533, i64 %1566
  %1568 = load i16, ptr %1567, align 4, !tbaa !28
  %1569 = add i16 %1568, 1
  store i16 %1569, ptr %1567, align 4, !tbaa !28
  br label %1570

1570:                                             ; preds = %1565, %1563
  %1571 = load i16, ptr %1534, align 4, !tbaa !28
  %1572 = add i16 %1571, 1
  store i16 %1572, ptr %1534, align 4, !tbaa !28
  br label %1581

1573:                                             ; preds = %1561
  %1574 = icmp slt i32 %1542, 10
  br i1 %1574, label %1575, label %1578

1575:                                             ; preds = %1573
  %1576 = load i16, ptr %1536, align 4, !tbaa !28
  %1577 = add i16 %1576, 1
  store i16 %1577, ptr %1536, align 4, !tbaa !28
  br label %1581

1578:                                             ; preds = %1573
  %1579 = load i16, ptr %1535, align 4, !tbaa !28
  %1580 = add i16 %1579, 1
  store i16 %1580, ptr %1535, align 4, !tbaa !28
  br label %1581

1581:                                             ; preds = %1578, %1575, %1570, %1555
  %1582 = icmp eq i16 %1547, 0
  br i1 %1582, label %1586, label %1583

1583:                                             ; preds = %1581
  %1584 = select i1 %1551, i32 6, i32 7
  %1585 = select i1 %1551, i32 3, i32 4
  br label %1586

1586:                                             ; preds = %1583, %1581, %1539
  %1587 = phi i32 [ %1540, %1539 ], [ %1541, %1581 ], [ %1541, %1583 ]
  %1588 = phi i32 [ %1549, %1539 ], [ 0, %1581 ], [ 0, %1583 ]
  %1589 = phi i32 [ %1543, %1539 ], [ 138, %1581 ], [ %1584, %1583 ]
  %1590 = phi i32 [ %1544, %1539 ], [ 3, %1581 ], [ %1585, %1583 ]
  %exitcond507 = icmp eq i64 %indvars.iv503, %wide.trip.count506
  br i1 %exitcond507, label %.loopexit277, label %1538, !llvm.loop !75

.loopexit277:                                     ; preds = %1586, %1520
  %1591 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %1592 = load ptr, ptr %1591, align 8, !tbaa !41
  %1593 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %1594 = load ptr, ptr %1593, align 8, !tbaa !42
  %1595 = load ptr, ptr %1594, align 8, !tbaa !43
  %1596 = getelementptr inbounds nuw i8, ptr %1594, i64 20
  %1597 = load i32, ptr %1596, align 4, !tbaa !46
  store i32 0, ptr %164, align 4, !tbaa !47
  store i32 573, ptr %165, align 8, !tbaa !48
  %1598 = icmp sgt i32 %1597, 0
  br i1 %1598, label %1599, label %1604

1599:                                             ; preds = %.loopexit277
  %1600 = zext nneg i32 %1597 to i64
  br label %1610

1601:                                             ; preds = %1628
  %1602 = load i32, ptr %164, align 4, !tbaa !47
  %1603 = icmp slt i32 %1602, 2
  br i1 %1603, label %1604, label %.loopexit275

1604:                                             ; preds = %1601, %.loopexit277
  %1605 = phi i32 [ %1629, %1601 ], [ -1, %.loopexit277 ]
  %1606 = phi i32 [ %1602, %1601 ], [ 0, %.loopexit277 ]
  %1607 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1608 = icmp eq ptr %1595, null
  %1609 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1632

1610:                                             ; preds = %1628, %1599
  %1611 = phi i64 [ 0, %1599 ], [ %1630, %1628 ]
  %1612 = phi i32 [ -1, %1599 ], [ %1629, %1628 ]
  %1613 = getelementptr inbounds nuw [4 x i8], ptr %1592, i64 %1611
  %1614 = load i16, ptr %1613, align 2, !tbaa !28
  %1615 = icmp eq i16 %1614, 0
  br i1 %1615, label %1626, label %1616

1616:                                             ; preds = %1610
  %1617 = load i32, ptr %164, align 4, !tbaa !47
  %1618 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1617, i32 1), !nosanitize !30
  %1619 = extractvalue { i32, i1 } %1618, 1, !nosanitize !30
  br i1 %1619, label %.loopexit273, label %1620, !prof !33, !nosanitize !30

.loopexit273:                                     ; preds = %1616, %1823
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

1620:                                             ; preds = %1616
  %1621 = extractvalue { i32, i1 } %1618, 0, !nosanitize !30
  store i32 %1621, ptr %164, align 4, !tbaa !47
  %1622 = sext i32 %1621 to i64
  %1623 = getelementptr inbounds [4 x i8], ptr %232, i64 %1622
  %1624 = trunc nuw nsw i64 %1611 to i32
  store i32 %1624, ptr %1623, align 4, !tbaa !4
  %1625 = getelementptr inbounds nuw i8, ptr %233, i64 %1611
  store i8 0, ptr %1625, align 1, !tbaa !28
  br label %1628

1626:                                             ; preds = %1610
  %1627 = getelementptr inbounds nuw i8, ptr %1613, i64 2
  store i16 0, ptr %1627, align 2, !tbaa !28
  br label %1628

1628:                                             ; preds = %1626, %1620
  %1629 = phi i32 [ %1624, %1620 ], [ %1612, %1626 ]
  %1630 = add nuw nsw i64 %1611, 1
  %1631 = icmp eq i64 %1630, %1600
  br i1 %1631, label %1601, label %1610, !llvm.loop !49

1632:                                             ; preds = %1654, %1604
  %1633 = phi i32 [ %1606, %1604 ], [ %1655, %1654 ]
  %1634 = phi i32 [ %1605, %1604 ], [ %1637, %1654 ]
  %1635 = icmp slt i32 %1634, 2
  %1636 = add i32 %1634, 1
  %1637 = select i1 %1635, i32 %1636, i32 %1634
  %1638 = add nsw i32 %1633, 1
  %1639 = select i1 %1635, i32 %1636, i32 0
  store i32 %1638, ptr %164, align 4, !tbaa !47
  %1640 = sext i32 %1638 to i64
  %1641 = getelementptr inbounds [4 x i8], ptr %232, i64 %1640
  store i32 %1639, ptr %1641, align 4, !tbaa !4
  %1642 = sext i32 %1639 to i64
  %1643 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1642
  store i16 1, ptr %1643, align 2, !tbaa !28
  %1644 = getelementptr inbounds i8, ptr %233, i64 %1642
  store i8 0, ptr %1644, align 1, !tbaa !28
  %1645 = load i64, ptr %1607, align 8, !tbaa !50
  %1646 = add i64 %1645, -1
  store i64 %1646, ptr %1607, align 8, !tbaa !50
  br i1 %1608, label %1654, label %1647

1647:                                             ; preds = %1632
  %1648 = getelementptr inbounds [4 x i8], ptr %1595, i64 %1642
  %1649 = getelementptr inbounds nuw i8, ptr %1648, i64 2
  %1650 = load i16, ptr %1649, align 2, !tbaa !28
  %1651 = zext i16 %1650 to i64
  %1652 = load i64, ptr %1609, align 8, !tbaa !51
  %1653 = sub i64 %1652, %1651
  store i64 %1653, ptr %1609, align 8, !tbaa !51
  br label %1654

1654:                                             ; preds = %1647, %1632
  %1655 = load i32, ptr %164, align 4, !tbaa !47
  %1656 = icmp slt i32 %1655, 2
  br i1 %1656, label %1632, label %.loopexit275, !llvm.loop !52

.loopexit275:                                     ; preds = %1654, %1601
  %1657 = phi i32 [ %1629, %1601 ], [ %1637, %1654 ]
  %1658 = phi i32 [ %1602, %1601 ], [ %1655, %1654 ]
  %1659 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %1657, ptr %1659, align 8, !tbaa !53
  %1660 = lshr i32 %1658, 1
  %1661 = zext nneg i32 %1660 to i64
  br label %1665

1662:                                             ; preds = %.loopexit274
  %1663 = load i32, ptr %164, align 4, !tbaa !47
  %1664 = sext i32 %1597 to i64
  br label %1736

1665:                                             ; preds = %.loopexit274, %.loopexit275
  %1666 = phi i64 [ %1661, %.loopexit275 ], [ %1734, %.loopexit274 ]
  %1667 = getelementptr inbounds nuw [4 x i8], ptr %232, i64 %1666
  %1668 = load i32, ptr %1667, align 4, !tbaa !4
  %1669 = sext i32 %1668 to i64
  %1670 = getelementptr inbounds i8, ptr %233, i64 %1669
  %1671 = load i32, ptr %164, align 4, !tbaa !47
  %1672 = trunc i64 %1666 to i32
  %1673 = shl i32 %1672, 1
  %1674 = icmp sgt i32 %1673, %1671
  br i1 %1674, label %.loopexit274, label %1675

1675:                                             ; preds = %1665
  %1676 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1669
  br label %1677

1677:                                             ; preds = %1725, %1675
  %1678 = phi i32 [ %1671, %1675 ], [ %1729, %1725 ]
  %1679 = phi i32 [ %1673, %1675 ], [ %1728, %1725 ]
  %1680 = phi i32 [ %1672, %1675 ], [ %1710, %1725 ]
  %1681 = icmp slt i32 %1679, %1678
  br i1 %1681, label %1684, label %1682

1682:                                             ; preds = %1677
  %1683 = sext i32 %1679 to i64
  br label %1708

1684:                                             ; preds = %1677
  %1685 = or disjoint i32 %1679, 1
  %1686 = sext i32 %1685 to i64
  %1687 = getelementptr inbounds [4 x i8], ptr %232, i64 %1686
  %1688 = load i32, ptr %1687, align 4, !tbaa !4
  %1689 = sext i32 %1688 to i64
  %1690 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1689
  %1691 = load i16, ptr %1690, align 2, !tbaa !28
  %1692 = sext i32 %1679 to i64
  %1693 = getelementptr inbounds [4 x i8], ptr %232, i64 %1692
  %1694 = load i32, ptr %1693, align 4, !tbaa !4
  %1695 = sext i32 %1694 to i64
  %1696 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1695
  %1697 = load i16, ptr %1696, align 2, !tbaa !28
  %1698 = icmp ult i16 %1691, %1697
  br i1 %1698, label %1707, label %1699

1699:                                             ; preds = %1684
  %1700 = icmp eq i16 %1691, %1697
  br i1 %1700, label %1701, label %1708

1701:                                             ; preds = %1699
  %1702 = getelementptr inbounds i8, ptr %233, i64 %1689
  %1703 = load i8, ptr %1702, align 1, !tbaa !28
  %1704 = getelementptr inbounds i8, ptr %233, i64 %1695
  %1705 = load i8, ptr %1704, align 1, !tbaa !28
  %1706 = icmp ugt i8 %1703, %1705
  br i1 %1706, label %1708, label %1707

1707:                                             ; preds = %1701, %1684
  br label %1708

1708:                                             ; preds = %1707, %1701, %1699, %1682
  %1709 = phi i64 [ %1683, %1682 ], [ %1686, %1707 ], [ %1692, %1701 ], [ %1692, %1699 ]
  %1710 = phi i32 [ %1679, %1682 ], [ %1685, %1707 ], [ %1679, %1701 ], [ %1679, %1699 ]
  %1711 = load i16, ptr %1676, align 2, !tbaa !28
  %1712 = getelementptr inbounds [4 x i8], ptr %232, i64 %1709
  %1713 = load i32, ptr %1712, align 4, !tbaa !4
  %1714 = sext i32 %1713 to i64
  %1715 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1714
  %1716 = load i16, ptr %1715, align 2, !tbaa !28
  %1717 = icmp ult i16 %1711, %1716
  br i1 %1717, label %.loopexit274, label %1718

1718:                                             ; preds = %1708
  %1719 = icmp eq i16 %1711, %1716
  br i1 %1719, label %1720, label %1725

1720:                                             ; preds = %1718
  %1721 = load i8, ptr %1670, align 1, !tbaa !28
  %1722 = getelementptr inbounds i8, ptr %233, i64 %1714
  %1723 = load i8, ptr %1722, align 1, !tbaa !28
  %1724 = icmp ugt i8 %1721, %1723
  br i1 %1724, label %1725, label %.loopexit274

1725:                                             ; preds = %1720, %1718
  %1726 = sext i32 %1680 to i64
  %1727 = getelementptr inbounds [4 x i8], ptr %232, i64 %1726
  store i32 %1713, ptr %1727, align 4, !tbaa !4
  %1728 = shl i32 %1710, 1
  %1729 = load i32, ptr %164, align 4, !tbaa !47
  %1730 = icmp sgt i32 %1728, %1729
  br i1 %1730, label %.loopexit274, label %1677, !llvm.loop !54

.loopexit274:                                     ; preds = %1725, %1720, %1708, %1665
  %1731 = phi i32 [ %1672, %1665 ], [ %1680, %1708 ], [ %1680, %1720 ], [ %1710, %1725 ]
  %1732 = sext i32 %1731 to i64
  %1733 = getelementptr inbounds [4 x i8], ptr %232, i64 %1732
  store i32 %1668, ptr %1733, align 4, !tbaa !4
  %1734 = add nsw i64 %1666, -1
  %1735 = icmp sgt i64 %1666, 1
  br i1 %1735, label %1665, label %1662, !llvm.loop !55

.loopexit272:                                     ; preds = %1816, %1809, %1736, %1912
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

1736:                                             ; preds = %1907, %1662
  %1737 = phi i32 [ %1663, %1662 ], [ %1910, %1907 ]
  %1738 = phi i64 [ %1664, %1662 ], [ %1848, %1907 ]
  %1739 = load i32, ptr %238, align 4, !tbaa !4
  %1740 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1737, i32 -1)
  %1741 = extractvalue { i32, i1 } %1740, 1, !nosanitize !30
  br i1 %1741, label %.loopexit272, label %1742, !prof !33, !nosanitize !30

1742:                                             ; preds = %1736
  %1743 = extractvalue { i32, i1 } %1740, 0, !nosanitize !30
  store i32 %1743, ptr %164, align 4, !tbaa !47
  %1744 = sext i32 %1737 to i64
  %1745 = getelementptr inbounds [4 x i8], ptr %232, i64 %1744
  %1746 = load i32, ptr %1745, align 4, !tbaa !4
  store i32 %1746, ptr %238, align 4, !tbaa !4
  %1747 = sext i32 %1746 to i64
  %1748 = getelementptr inbounds i8, ptr %233, i64 %1747
  %1749 = icmp slt i32 %1743, 2
  br i1 %1749, label %1809, label %1750

1750:                                             ; preds = %1742
  %1751 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1747
  br label %1752

1752:                                             ; preds = %1800, %1750
  %1753 = phi i32 [ %1743, %1750 ], [ %1804, %1800 ]
  %1754 = phi i32 [ 2, %1750 ], [ %1803, %1800 ]
  %1755 = phi i32 [ 1, %1750 ], [ %1785, %1800 ]
  %1756 = icmp slt i32 %1754, %1753
  br i1 %1756, label %1759, label %1757

1757:                                             ; preds = %1752
  %1758 = sext i32 %1754 to i64
  br label %1783

1759:                                             ; preds = %1752
  %1760 = or disjoint i32 %1754, 1
  %1761 = sext i32 %1760 to i64
  %1762 = getelementptr inbounds [4 x i8], ptr %232, i64 %1761
  %1763 = load i32, ptr %1762, align 4, !tbaa !4
  %1764 = sext i32 %1763 to i64
  %1765 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1764
  %1766 = load i16, ptr %1765, align 2, !tbaa !28
  %1767 = sext i32 %1754 to i64
  %1768 = getelementptr inbounds [4 x i8], ptr %232, i64 %1767
  %1769 = load i32, ptr %1768, align 4, !tbaa !4
  %1770 = sext i32 %1769 to i64
  %1771 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1770
  %1772 = load i16, ptr %1771, align 2, !tbaa !28
  %1773 = icmp ult i16 %1766, %1772
  br i1 %1773, label %1782, label %1774

1774:                                             ; preds = %1759
  %1775 = icmp eq i16 %1766, %1772
  br i1 %1775, label %1776, label %1783

1776:                                             ; preds = %1774
  %1777 = getelementptr inbounds i8, ptr %233, i64 %1764
  %1778 = load i8, ptr %1777, align 1, !tbaa !28
  %1779 = getelementptr inbounds i8, ptr %233, i64 %1770
  %1780 = load i8, ptr %1779, align 1, !tbaa !28
  %1781 = icmp ugt i8 %1778, %1780
  br i1 %1781, label %1783, label %1782

1782:                                             ; preds = %1776, %1759
  br label %1783

1783:                                             ; preds = %1782, %1776, %1774, %1757
  %1784 = phi i64 [ %1758, %1757 ], [ %1761, %1782 ], [ %1767, %1776 ], [ %1767, %1774 ]
  %1785 = phi i32 [ %1754, %1757 ], [ %1760, %1782 ], [ %1754, %1776 ], [ %1754, %1774 ]
  %1786 = load i16, ptr %1751, align 2, !tbaa !28
  %1787 = getelementptr inbounds [4 x i8], ptr %232, i64 %1784
  %1788 = load i32, ptr %1787, align 4, !tbaa !4
  %1789 = sext i32 %1788 to i64
  %1790 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1789
  %1791 = load i16, ptr %1790, align 2, !tbaa !28
  %1792 = icmp ult i16 %1786, %1791
  br i1 %1792, label %1806, label %1793

1793:                                             ; preds = %1783
  %1794 = icmp eq i16 %1786, %1791
  br i1 %1794, label %1795, label %1800

1795:                                             ; preds = %1793
  %1796 = load i8, ptr %1748, align 1, !tbaa !28
  %1797 = getelementptr inbounds i8, ptr %233, i64 %1789
  %1798 = load i8, ptr %1797, align 1, !tbaa !28
  %1799 = icmp ugt i8 %1796, %1798
  br i1 %1799, label %1800, label %1806

1800:                                             ; preds = %1795, %1793
  %1801 = sext i32 %1755 to i64
  %1802 = getelementptr inbounds [4 x i8], ptr %232, i64 %1801
  store i32 %1788, ptr %1802, align 4, !tbaa !4
  %1803 = shl i32 %1785, 1
  %1804 = load i32, ptr %164, align 4, !tbaa !47
  %1805 = icmp sgt i32 %1803, %1804
  br i1 %1805, label %1806, label %1752, !llvm.loop !54

1806:                                             ; preds = %1800, %1795, %1783
  %1807 = phi i32 [ %1755, %1783 ], [ %1755, %1795 ], [ %1785, %1800 ]
  %1808 = sext i32 %1807 to i64
  br label %1809

1809:                                             ; preds = %1806, %1742
  %1810 = phi i64 [ 1, %1742 ], [ %1808, %1806 ]
  %1811 = getelementptr inbounds [4 x i8], ptr %232, i64 %1810
  store i32 %1746, ptr %1811, align 4, !tbaa !4
  %1812 = load i32, ptr %238, align 4, !tbaa !4
  %1813 = load i32, ptr %165, align 8, !tbaa !48
  %1814 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1813, i32 -1)
  %1815 = extractvalue { i32, i1 } %1814, 1, !nosanitize !30
  br i1 %1815, label %.loopexit272, label %1816, !prof !33, !nosanitize !30

1816:                                             ; preds = %1809
  %1817 = extractvalue { i32, i1 } %1814, 0, !nosanitize !30
  store i32 %1817, ptr %165, align 8, !tbaa !48
  %1818 = sext i32 %1817 to i64
  %1819 = getelementptr inbounds [4 x i8], ptr %232, i64 %1818
  store i32 %1739, ptr %1819, align 4, !tbaa !4
  %1820 = load i32, ptr %165, align 8, !tbaa !48
  %1821 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1820, i32 -1)
  %1822 = extractvalue { i32, i1 } %1821, 1, !nosanitize !30
  br i1 %1822, label %.loopexit272, label %1823, !prof !33, !nosanitize !30

1823:                                             ; preds = %1816
  %1824 = extractvalue { i32, i1 } %1821, 0, !nosanitize !30
  store i32 %1824, ptr %165, align 8, !tbaa !48
  %1825 = sext i32 %1824 to i64
  %1826 = getelementptr inbounds [4 x i8], ptr %232, i64 %1825
  store i32 %1812, ptr %1826, align 4, !tbaa !4
  %1827 = sext i32 %1739 to i64
  %1828 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1827
  %1829 = load i16, ptr %1828, align 2, !tbaa !28
  %1830 = sext i32 %1812 to i64
  %1831 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1830
  %1832 = load i16, ptr %1831, align 2, !tbaa !28
  %1833 = add i16 %1832, %1829
  %1834 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1738
  store i16 %1833, ptr %1834, align 2, !tbaa !28
  %1835 = getelementptr inbounds i8, ptr %233, i64 %1827
  %1836 = load i8, ptr %1835, align 1, !tbaa !28
  %1837 = getelementptr inbounds i8, ptr %233, i64 %1830
  %1838 = load i8, ptr %1837, align 1, !tbaa !28
  %1839 = tail call i8 @llvm.umax.i8(i8 %1836, i8 %1838)
  %1840 = add i8 %1839, 1
  %1841 = getelementptr inbounds i8, ptr %233, i64 %1738
  store i8 %1840, ptr %1841, align 1, !tbaa !28
  %1842 = trunc nsw i64 %1738 to i32
  %1843 = trunc i64 %1738 to i16
  %1844 = getelementptr inbounds nuw i8, ptr %1831, i64 2
  store i16 %1843, ptr %1844, align 2, !tbaa !28
  %1845 = getelementptr inbounds nuw i8, ptr %1828, i64 2
  store i16 %1843, ptr %1845, align 2, !tbaa !28
  %1846 = icmp eq i64 %1738, 2147483647
  br i1 %1846, label %.loopexit273, label %1847, !prof !33, !nosanitize !30

1847:                                             ; preds = %1823
  %1848 = add nsw i64 %1738, 1
  store i32 %1842, ptr %238, align 4, !tbaa !4
  %1849 = load i32, ptr %164, align 4, !tbaa !47
  %1850 = icmp slt i32 %1849, 2
  br i1 %1850, label %1907, label %.preheader271

.preheader271:                                    ; preds = %1847, %1898
  %1851 = phi i32 [ %1902, %1898 ], [ %1849, %1847 ]
  %1852 = phi i32 [ %1901, %1898 ], [ 2, %1847 ]
  %1853 = phi i32 [ %1883, %1898 ], [ 1, %1847 ]
  %1854 = icmp slt i32 %1852, %1851
  br i1 %1854, label %1857, label %1855

1855:                                             ; preds = %.preheader271
  %1856 = sext i32 %1852 to i64
  br label %1881

1857:                                             ; preds = %.preheader271
  %1858 = or disjoint i32 %1852, 1
  %1859 = sext i32 %1858 to i64
  %1860 = getelementptr inbounds [4 x i8], ptr %232, i64 %1859
  %1861 = load i32, ptr %1860, align 4, !tbaa !4
  %1862 = sext i32 %1861 to i64
  %1863 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1862
  %1864 = load i16, ptr %1863, align 2, !tbaa !28
  %1865 = sext i32 %1852 to i64
  %1866 = getelementptr inbounds [4 x i8], ptr %232, i64 %1865
  %1867 = load i32, ptr %1866, align 4, !tbaa !4
  %1868 = sext i32 %1867 to i64
  %1869 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1868
  %1870 = load i16, ptr %1869, align 2, !tbaa !28
  %1871 = icmp ult i16 %1864, %1870
  br i1 %1871, label %1880, label %1872

1872:                                             ; preds = %1857
  %1873 = icmp eq i16 %1864, %1870
  br i1 %1873, label %1874, label %1881

1874:                                             ; preds = %1872
  %1875 = getelementptr inbounds i8, ptr %233, i64 %1862
  %1876 = load i8, ptr %1875, align 1, !tbaa !28
  %1877 = getelementptr inbounds i8, ptr %233, i64 %1868
  %1878 = load i8, ptr %1877, align 1, !tbaa !28
  %1879 = icmp ugt i8 %1876, %1878
  br i1 %1879, label %1881, label %1880

1880:                                             ; preds = %1874, %1857
  br label %1881

1881:                                             ; preds = %1880, %1874, %1872, %1855
  %1882 = phi i64 [ %1856, %1855 ], [ %1859, %1880 ], [ %1865, %1874 ], [ %1865, %1872 ]
  %1883 = phi i32 [ %1852, %1855 ], [ %1858, %1880 ], [ %1852, %1874 ], [ %1852, %1872 ]
  %1884 = load i16, ptr %1834, align 2, !tbaa !28
  %1885 = getelementptr inbounds [4 x i8], ptr %232, i64 %1882
  %1886 = load i32, ptr %1885, align 4, !tbaa !4
  %1887 = sext i32 %1886 to i64
  %1888 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1887
  %1889 = load i16, ptr %1888, align 2, !tbaa !28
  %1890 = icmp ult i16 %1884, %1889
  br i1 %1890, label %1904, label %1891

1891:                                             ; preds = %1881
  %1892 = icmp eq i16 %1884, %1889
  br i1 %1892, label %1893, label %1898

1893:                                             ; preds = %1891
  %1894 = load i8, ptr %1841, align 1, !tbaa !28
  %1895 = getelementptr inbounds i8, ptr %233, i64 %1887
  %1896 = load i8, ptr %1895, align 1, !tbaa !28
  %1897 = icmp ugt i8 %1894, %1896
  br i1 %1897, label %1898, label %1904

1898:                                             ; preds = %1893, %1891
  %1899 = sext i32 %1853 to i64
  %1900 = getelementptr inbounds [4 x i8], ptr %232, i64 %1899
  store i32 %1886, ptr %1900, align 4, !tbaa !4
  %1901 = shl i32 %1883, 1
  %1902 = load i32, ptr %164, align 4, !tbaa !47
  %1903 = icmp sgt i32 %1901, %1902
  br i1 %1903, label %1904, label %.preheader271, !llvm.loop !54

1904:                                             ; preds = %1898, %1893, %1881
  %1905 = phi i32 [ %1853, %1881 ], [ %1853, %1893 ], [ %1883, %1898 ]
  %1906 = sext i32 %1905 to i64
  br label %1907

1907:                                             ; preds = %1904, %1847
  %1908 = phi i64 [ 1, %1847 ], [ %1906, %1904 ]
  %1909 = getelementptr inbounds [4 x i8], ptr %232, i64 %1908
  store i32 %1842, ptr %1909, align 4, !tbaa !4
  %1910 = load i32, ptr %164, align 4, !tbaa !47
  %1911 = icmp sgt i32 %1910, 1
  br i1 %1911, label %1736, label %1912, !llvm.loop !56

1912:                                             ; preds = %1907
  %1913 = load i32, ptr %165, align 8, !tbaa !48
  %1914 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1913, i32 -1)
  %1915 = extractvalue { i32, i1 } %1914, 1, !nosanitize !30
  br i1 %1915, label %.loopexit272, label %1916, !prof !33, !nosanitize !30

1916:                                             ; preds = %1912
  %1917 = extractvalue { i32, i1 } %1914, 0, !nosanitize !30
  %1918 = load i32, ptr %238, align 4, !tbaa !4
  store i32 %1917, ptr %165, align 8, !tbaa !48
  %1919 = sext i32 %1917 to i64
  %1920 = getelementptr inbounds [4 x i8], ptr %232, i64 %1919
  store i32 %1918, ptr %1920, align 4, !tbaa !4
  %1921 = load ptr, ptr %1591, align 8, !tbaa !41
  %1922 = load i32, ptr %1659, align 8, !tbaa !53
  %1923 = load ptr, ptr %1593, align 8, !tbaa !42
  %1924 = load ptr, ptr %1923, align 8, !tbaa !43
  %1925 = getelementptr inbounds nuw i8, ptr %1923, i64 8
  %1926 = load ptr, ptr %1925, align 8, !tbaa !57
  %1927 = getelementptr inbounds nuw i8, ptr %1923, i64 16
  %1928 = load i32, ptr %1927, align 8, !tbaa !58
  %1929 = getelementptr inbounds nuw i8, ptr %1923, i64 24
  %1930 = load i32, ptr %1929, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %506, i8 0, i64 32, i1 false), !tbaa !60
  %1931 = load i32, ptr %165, align 8, !tbaa !48
  %1932 = sext i32 %1931 to i64
  %1933 = getelementptr inbounds [4 x i8], ptr %232, i64 %1932
  %1934 = load i32, ptr %1933, align 4, !tbaa !4
  %1935 = sext i32 %1934 to i64
  %1936 = getelementptr inbounds [4 x i8], ptr %1921, i64 %1935
  %1937 = getelementptr inbounds nuw i8, ptr %1936, i64 2
  store i16 0, ptr %1937, align 2, !tbaa !28
  %1938 = load i32, ptr %165, align 8, !tbaa !48
  %1939 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1938, i32 1), !nosanitize !30
  %1940 = extractvalue { i32, i1 } %1939, 1, !nosanitize !30
  br i1 %1940, label %.loopexit267, label %1941, !prof !33, !nosanitize !30

.loopexit267:                                     ; preds = %2001, %1989, %1965, %2036, %1916
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

1941:                                             ; preds = %1916
  %1942 = extractvalue { i32, i1 } %1939, 0
  %1943 = icmp slt i32 %1942, 573
  br i1 %1943, label %1944, label %.loopexit264

1944:                                             ; preds = %1941
  %1945 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1946 = icmp eq ptr %1924, null
  %1947 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1948 = sext i32 %1942 to i64
  br label %1949

1949:                                             ; preds = %2014, %1944
  %1950 = phi i64 [ %1948, %1944 ], [ %2015, %2014 ]
  %1951 = phi i32 [ 0, %1944 ], [ %1972, %2014 ]
  %1952 = getelementptr inbounds [4 x i8], ptr %232, i64 %1950
  %1953 = load i32, ptr %1952, align 4, !tbaa !4
  %1954 = sext i32 %1953 to i64
  %1955 = getelementptr inbounds [4 x i8], ptr %1921, i64 %1954
  %1956 = getelementptr inbounds nuw i8, ptr %1955, i64 2
  %1957 = load i16, ptr %1956, align 2, !tbaa !28
  %1958 = zext i16 %1957 to i64
  %1959 = getelementptr inbounds nuw [4 x i8], ptr %1921, i64 %1958
  %1960 = getelementptr inbounds nuw i8, ptr %1959, i64 2
  %1961 = load i16, ptr %1960, align 2, !tbaa !28
  %1962 = zext i16 %1961 to i32
  %1963 = add nuw nsw i32 %1962, 1
  %1964 = icmp sgt i32 %1930, %1962
  br i1 %1964, label %1970, label %1965

1965:                                             ; preds = %1949
  %1966 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1951, i32 1), !nosanitize !30
  %1967 = extractvalue { i32, i1 } %1966, 1, !nosanitize !30
  br i1 %1967, label %.loopexit267, label %1968, !prof !33, !nosanitize !30

1968:                                             ; preds = %1965
  %1969 = extractvalue { i32, i1 } %1966, 0, !nosanitize !30
  br label %1970

1970:                                             ; preds = %1968, %1949
  %1971 = phi i32 [ %1930, %1968 ], [ %1963, %1949 ]
  %1972 = phi i32 [ %1969, %1968 ], [ %1951, %1949 ]
  %1973 = trunc i32 %1971 to i16
  store i16 %1973, ptr %1956, align 2, !tbaa !28
  %1974 = icmp sgt i32 %1953, %1922
  br i1 %1974, label %2014, label %1975

1975:                                             ; preds = %1970
  %1976 = sext i32 %1971 to i64
  %1977 = getelementptr inbounds [2 x i8], ptr %506, i64 %1976
  %1978 = load i16, ptr %1977, align 2, !tbaa !60
  %1979 = add i16 %1978, 1
  store i16 %1979, ptr %1977, align 2, !tbaa !60
  %1980 = icmp slt i32 %1953, %1928
  br i1 %1980, label %1989, label %1981

1981:                                             ; preds = %1975
  %1982 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1953, i32 %1928), !nosanitize !30
  %1983 = extractvalue { i32, i1 } %1982, 1, !nosanitize !30
  br i1 %1983, label %.loopexit259, label %1984, !prof !33, !nosanitize !30

.loopexit259:                                     ; preds = %1981, %2041, %2033, %.loopexit261, %2067, %2072, %2020
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

1984:                                             ; preds = %1981
  %1985 = extractvalue { i32, i1 } %1982, 0, !nosanitize !30
  %1986 = sext i32 %1985 to i64
  %1987 = getelementptr inbounds [4 x i8], ptr %1926, i64 %1986
  %1988 = load i32, ptr %1987, align 4, !tbaa !4
  br label %1989

1989:                                             ; preds = %1984, %1975
  %1990 = phi i32 [ %1988, %1984 ], [ 0, %1975 ]
  %1991 = load i16, ptr %1955, align 2, !tbaa !28
  %1992 = zext i16 %1991 to i64
  %1993 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1971, i32 %1990), !nosanitize !30
  %1994 = extractvalue { i32, i1 } %1993, 1, !nosanitize !30
  br i1 %1994, label %.loopexit267, label %1995, !prof !33, !nosanitize !30

1995:                                             ; preds = %1989
  %1996 = extractvalue { i32, i1 } %1993, 0, !nosanitize !30
  %1997 = zext i32 %1996 to i64
  %1998 = mul nuw nsw i64 %1997, %1992
  %1999 = load i64, ptr %1945, align 8, !tbaa !50
  %2000 = add i64 %1999, %1998
  store i64 %2000, ptr %1945, align 8, !tbaa !50
  br i1 %1946, label %2014, label %2001

2001:                                             ; preds = %1995
  %2002 = getelementptr inbounds [4 x i8], ptr %1924, i64 %1954
  %2003 = getelementptr inbounds nuw i8, ptr %2002, i64 2
  %2004 = load i16, ptr %2003, align 2, !tbaa !28
  %2005 = zext i16 %2004 to i32
  %2006 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2005, i32 %1990), !nosanitize !30
  %2007 = extractvalue { i32, i1 } %2006, 1, !nosanitize !30
  br i1 %2007, label %.loopexit267, label %2008, !prof !33, !nosanitize !30

2008:                                             ; preds = %2001
  %2009 = extractvalue { i32, i1 } %2006, 0, !nosanitize !30
  %2010 = zext i32 %2009 to i64
  %2011 = mul nuw nsw i64 %2010, %1992
  %2012 = load i64, ptr %1947, align 8, !tbaa !51
  %2013 = add i64 %2012, %2011
  store i64 %2013, ptr %1947, align 8, !tbaa !51
  br label %2014

2014:                                             ; preds = %2008, %1995, %1970
  %2015 = add nsw i64 %1950, 1
  %2016 = and i64 %2015, 4294967295
  %2017 = icmp eq i64 %2016, 573
  br i1 %2017, label %2018, label %1949, !llvm.loop !61

2018:                                             ; preds = %2014
  %2019 = icmp eq i32 %1972, 0
  br i1 %2019, label %.loopexit264, label %2020

2020:                                             ; preds = %2018
  %2021 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1930, i32 -1)
  %2022 = extractvalue { i32, i1 } %2021, 1, !nosanitize !30
  %2023 = sext i32 %1930 to i64
  %2024 = getelementptr inbounds [2 x i8], ptr %506, i64 %2023
  br i1 %2022, label %.loopexit259, label %.preheader266, !prof !33, !nosanitize !30

.preheader266:                                    ; preds = %2020, %2051
  %2025 = phi i32 [ %2052, %2051 ], [ %1972, %2020 ]
  br label %2026

2026:                                             ; preds = %2033, %.preheader266
  %2027 = phi { i32, i1 } [ %2034, %2033 ], [ %2021, %.preheader266 ]
  %2028 = extractvalue { i32, i1 } %2027, 0
  %2029 = sext i32 %2028 to i64
  %2030 = getelementptr inbounds [2 x i8], ptr %506, i64 %2029
  %2031 = load i16, ptr %2030, align 2, !tbaa !60
  %2032 = icmp eq i16 %2031, 0
  br i1 %2032, label %2033, label %2036

2033:                                             ; preds = %2026
  %2034 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2028, i32 -1)
  %2035 = extractvalue { i32, i1 } %2034, 1, !nosanitize !30
  br i1 %2035, label %.loopexit259, label %2026, !prof !33, !llvm.loop !62, !nosanitize !30

2036:                                             ; preds = %2026
  %2037 = getelementptr inbounds [2 x i8], ptr %506, i64 %2029
  %2038 = add i16 %2031, -1
  store i16 %2038, ptr %2037, align 2, !tbaa !60
  %2039 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2028, i32 1), !nosanitize !30
  %2040 = extractvalue { i32, i1 } %2039, 1, !nosanitize !30
  br i1 %2040, label %.loopexit267, label %2041, !prof !33, !nosanitize !30

2041:                                             ; preds = %2036
  %2042 = extractvalue { i32, i1 } %2039, 0, !nosanitize !30
  %2043 = sext i32 %2042 to i64
  %2044 = getelementptr inbounds [2 x i8], ptr %506, i64 %2043
  %2045 = load i16, ptr %2044, align 2, !tbaa !60
  %2046 = add i16 %2045, 2
  store i16 %2046, ptr %2044, align 2, !tbaa !60
  %2047 = load i16, ptr %2024, align 2, !tbaa !60
  %2048 = add i16 %2047, -1
  store i16 %2048, ptr %2024, align 2, !tbaa !60
  %2049 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2025, i32 -2)
  %2050 = extractvalue { i32, i1 } %2049, 1, !nosanitize !30
  br i1 %2050, label %.loopexit259, label %2051, !prof !33, !nosanitize !30

2051:                                             ; preds = %2041
  %2052 = extractvalue { i32, i1 } %2049, 0, !nosanitize !30
  %2053 = icmp sgt i32 %2052, 0
  br i1 %2053, label %.preheader266, label %2054, !llvm.loop !63

2054:                                             ; preds = %2051
  %2055 = icmp eq i32 %1930, 0
  br i1 %2055, label %.loopexit264, label %.preheader262

.preheader262:                                    ; preds = %2054, %2098
  %2056 = phi i64 [ %2099, %2098 ], [ %2023, %2054 ]
  %2057 = phi i32 [ %2064, %2098 ], [ 573, %2054 ]
  %2058 = getelementptr inbounds [2 x i8], ptr %506, i64 %2056
  %2059 = load i16, ptr %2058, align 2, !tbaa !60
  %2060 = icmp eq i16 %2059, 0
  br i1 %2060, label %.loopexit261, label %2061

2061:                                             ; preds = %.preheader262
  %2062 = zext i16 %2059 to i32
  %2063 = trunc i64 %2056 to i16
  br label %2067

.loopexit261:                                     ; preds = %2095, %.preheader262
  %2064 = phi i32 [ %2057, %.preheader262 ], [ %2076, %2095 ]
  %2065 = and i64 %2056, 4294967295
  %2066 = icmp eq i64 %2065, 2147483648
  br i1 %2066, label %.loopexit259, label %2098, !prof !33, !nosanitize !30

2067:                                             ; preds = %2095, %2061
  %2068 = phi i32 [ %2057, %2061 ], [ %2076, %2095 ]
  %2069 = phi i32 [ %2062, %2061 ], [ %2096, %2095 ]
  %2070 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2068, i32 -1)
  %2071 = extractvalue { i32, i1 } %2070, 1, !nosanitize !30
  br i1 %2071, label %.loopexit259, label %.preheader258, !prof !64, !nosanitize !30

2072:                                             ; preds = %.preheader258
  %2073 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2076, i32 -1)
  %2074 = extractvalue { i32, i1 } %2073, 1, !nosanitize !30
  br i1 %2074, label %.loopexit259, label %.preheader258, !prof !65, !llvm.loop !66, !nosanitize !30

.preheader258:                                    ; preds = %2067, %2072
  %2075 = phi { i32, i1 } [ %2073, %2072 ], [ %2070, %2067 ]
  %2076 = extractvalue { i32, i1 } %2075, 0, !nosanitize !30
  %2077 = sext i32 %2076 to i64
  %2078 = getelementptr inbounds [4 x i8], ptr %232, i64 %2077
  %2079 = load i32, ptr %2078, align 4, !tbaa !4
  %2080 = icmp sgt i32 %2079, %1922
  br i1 %2080, label %2072, label %2081, !llvm.loop !66

2081:                                             ; preds = %.preheader258
  %2082 = sext i32 %2079 to i64
  %2083 = getelementptr inbounds [4 x i8], ptr %1921, i64 %2082
  %2084 = getelementptr inbounds nuw i8, ptr %2083, i64 2
  %2085 = load i16, ptr %2084, align 2, !tbaa !28
  %2086 = zext i16 %2085 to i64
  %2087 = icmp eq i64 %2056, %2086
  br i1 %2087, label %2095, label %2088

2088:                                             ; preds = %2081
  %2089 = sub nsw i64 %2056, %2086
  %2090 = load i16, ptr %2083, align 2, !tbaa !28
  %2091 = zext i16 %2090 to i64
  %2092 = mul nsw i64 %2089, %2091
  %2093 = load i64, ptr %1945, align 8, !tbaa !50
  %2094 = add i64 %2092, %2093
  store i64 %2094, ptr %1945, align 8, !tbaa !50
  store i16 %2063, ptr %2084, align 2, !tbaa !28
  br label %2095

2095:                                             ; preds = %2088, %2081
  %2096 = add nsw i32 %2069, -1
  %2097 = icmp eq i32 %2096, 0
  br i1 %2097, label %.loopexit261, label %2067, !llvm.loop !66

2098:                                             ; preds = %.loopexit261
  %2099 = add nsw i64 %2056, -1
  %2100 = and i64 %2099, 4294967295
  %2101 = icmp eq i64 %2100, 0
  br i1 %2101, label %.loopexit264, label %.preheader262, !llvm.loop !67

.loopexit264:                                     ; preds = %2098, %2054, %2018, %1941
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %2102 = load i16, ptr %506, align 2, !tbaa !60
  %2103 = shl i16 %2102, 1
  %2104 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %2103, ptr %2104, align 2, !tbaa !60
  %2105 = load i16, ptr %681, align 2, !tbaa !60
  %2106 = add i16 %2105, %2103
  %2107 = shl i16 %2106, 1
  %2108 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2107, ptr %2108, align 4, !tbaa !60
  %2109 = load i16, ptr %686, align 2, !tbaa !60
  %2110 = add i16 %2109, %2107
  %2111 = shl i16 %2110, 1
  %2112 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2111, ptr %2112, align 2, !tbaa !60
  %2113 = load i16, ptr %691, align 2, !tbaa !60
  %2114 = add i16 %2113, %2111
  %2115 = shl i16 %2114, 1
  %2116 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %2115, ptr %2116, align 8, !tbaa !60
  %2117 = load i16, ptr %696, align 2, !tbaa !60
  %2118 = add i16 %2117, %2115
  %2119 = shl i16 %2118, 1
  %2120 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %2119, ptr %2120, align 2, !tbaa !60
  %2121 = load i16, ptr %701, align 2, !tbaa !60
  %2122 = add i16 %2121, %2119
  %2123 = shl i16 %2122, 1
  %2124 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %2123, ptr %2124, align 4, !tbaa !60
  %2125 = load i16, ptr %706, align 2, !tbaa !60
  %2126 = add i16 %2125, %2123
  %2127 = shl i16 %2126, 1
  %2128 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %2127, ptr %2128, align 2, !tbaa !60
  %2129 = load i16, ptr %711, align 2, !tbaa !60
  %2130 = add i16 %2129, %2127
  %2131 = shl i16 %2130, 1
  %2132 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %2131, ptr %2132, align 16, !tbaa !60
  %2133 = load i16, ptr %716, align 2, !tbaa !60
  %2134 = add i16 %2133, %2131
  %2135 = shl i16 %2134, 1
  %2136 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %2135, ptr %2136, align 2, !tbaa !60
  %2137 = load i16, ptr %721, align 2, !tbaa !60
  %2138 = add i16 %2137, %2135
  %2139 = shl i16 %2138, 1
  %2140 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %2139, ptr %2140, align 4, !tbaa !60
  %2141 = load i16, ptr %726, align 2, !tbaa !60
  %2142 = add i16 %2141, %2139
  %2143 = shl i16 %2142, 1
  %2144 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %2143, ptr %2144, align 2, !tbaa !60
  %2145 = load i16, ptr %731, align 2, !tbaa !60
  %2146 = add i16 %2145, %2143
  %2147 = shl i16 %2146, 1
  %2148 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2147, ptr %2148, align 8, !tbaa !60
  %2149 = load i16, ptr %736, align 2, !tbaa !60
  %2150 = add i16 %2149, %2147
  %2151 = shl i16 %2150, 1
  %2152 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2151, ptr %2152, align 2, !tbaa !60
  %2153 = load i16, ptr %741, align 2, !tbaa !60
  %2154 = add i16 %2153, %2151
  %2155 = shl i16 %2154, 1
  %2156 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2155, ptr %2156, align 4, !tbaa !60
  %2157 = load i16, ptr %746, align 2, !tbaa !60
  %2158 = add i16 %2157, %2155
  %2159 = shl i16 %2158, 1
  %2160 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2159, ptr %2160, align 2, !tbaa !60
  %2161 = icmp slt i32 %1657, 0
  br i1 %2161, label %.loopexit257, label %.preheader

2162:                                             ; preds = %2215
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

.preheader:                                       ; preds = %.loopexit264, %2217
  %2163 = phi i64 [ %2218, %2217 ], [ 0, %.loopexit264 ]
  %2164 = getelementptr inbounds nuw [4 x i8], ptr %1592, i64 %2163
  %2165 = getelementptr inbounds nuw i8, ptr %2164, i64 2
  %2166 = load i16, ptr %2165, align 2, !tbaa !28
  %2167 = icmp eq i16 %2166, 0
  br i1 %2167, label %2215, label %2168

2168:                                             ; preds = %.preheader
  %2169 = zext i16 %2166 to i32
  %2170 = zext i16 %2166 to i64
  %2171 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %2170
  %2172 = load i16, ptr %2171, align 2, !tbaa !60
  %2173 = add i16 %2172, 1
  store i16 %2173, ptr %2171, align 2, !tbaa !60
  %2174 = and i32 %2169, 3
  %2175 = icmp ult i16 %2166, 4
  br i1 %2175, label %2200, label %2176

2176:                                             ; preds = %2168
  %2177 = and i32 %2169, 65532
  br label %2178

2178:                                             ; preds = %2178, %2176
  %2179 = phi i16 [ %2172, %2176 ], [ %2195, %2178 ]
  %2180 = phi i16 [ 0, %2176 ], [ %2194, %2178 ]
  %2181 = phi i32 [ 0, %2176 ], [ %2196, %2178 ]
  %2182 = and i16 %2179, 1
  %2183 = or disjoint i16 %2180, %2182
  %2184 = shl i16 %2183, 2
  %2185 = and i16 %2179, 2
  %2186 = or disjoint i16 %2184, %2185
  %2187 = lshr i16 %2179, 2
  %2188 = and i16 %2187, 1
  %2189 = or disjoint i16 %2186, %2188
  %2190 = shl i16 %2189, 1
  %2191 = lshr i16 %2179, 3
  %2192 = and i16 %2191, 1
  %2193 = or disjoint i16 %2190, %2192
  %2194 = shl i16 %2193, 1
  %2195 = lshr i16 %2179, 4
  %2196 = add nuw nsw i32 %2181, 4
  %2197 = icmp eq i32 %2196, %2177
  br i1 %2197, label %2198, label %2178, !llvm.loop !68

2198:                                             ; preds = %2178
  %2199 = icmp eq i32 %2174, 0
  br i1 %2199, label %.loopexit256, label %2200

2200:                                             ; preds = %2198, %2168
  %2201 = phi i16 [ %2172, %2168 ], [ %2195, %2198 ]
  %2202 = phi i16 [ 0, %2168 ], [ %2194, %2198 ]
  %2203 = icmp ne i32 %2174, 0
  tail call void @llvm.assume(i1 %2203)
  br label %2204

2204:                                             ; preds = %2204, %2200
  %2205 = phi i16 [ %2201, %2200 ], [ %2211, %2204 ]
  %2206 = phi i16 [ %2202, %2200 ], [ %2210, %2204 ]
  %2207 = phi i32 [ 0, %2200 ], [ %2212, %2204 ]
  %2208 = and i16 %2205, 1
  %2209 = or disjoint i16 %2206, %2208
  %2210 = shl i16 %2209, 1
  %2211 = lshr i16 %2205, 1
  %2212 = add nuw nsw i32 %2207, 1
  %2213 = icmp eq i32 %2212, %2174
  br i1 %2213, label %.loopexit256, label %2204, !llvm.loop !77

.loopexit256:                                     ; preds = %2204, %2198
  %2214 = phi i16 [ %2193, %2198 ], [ %2209, %2204 ]
  store i16 %2214, ptr %2164, align 2, !tbaa !28
  br label %2215

2215:                                             ; preds = %.loopexit256, %.preheader
  %2216 = icmp eq i64 %2163, 2147483647
  br i1 %2216, label %2162, label %2217, !prof !33, !nosanitize !30

2217:                                             ; preds = %2215
  %2218 = add nuw nsw i64 %2163, 1
  %2219 = trunc i64 %2218 to i32
  %2220 = icmp slt i32 %1657, %2219
  br i1 %2220, label %.loopexit257, label %.preheader, !llvm.loop !71

.loopexit257:                                     ; preds = %2217, %.loopexit264
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %2221 = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %2222 = load i16, ptr %2221, align 2, !tbaa !28
  %2223 = icmp eq i16 %2222, 0
  br i1 %2223, label %2224, label %2285

2224:                                             ; preds = %.loopexit257
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

2285:                                             ; preds = %2280, %2276, %2272, %2268, %2264, %2260, %2256, %2252, %2248, %2244, %2240, %2236, %2232, %2228, %2224, %.loopexit257
  %2286 = phi i32 [ 18, %.loopexit257 ], [ 10, %2252 ], [ 17, %2224 ], [ %2284, %2280 ], [ 16, %2228 ], [ 8, %2260 ], [ 15, %2232 ], [ 4, %2276 ], [ 14, %2236 ], [ 9, %2256 ], [ 13, %2240 ], [ 5, %2272 ], [ 12, %2244 ], [ 7, %2264 ], [ 11, %2248 ], [ 6, %2268 ]
  %2287 = mul nuw nsw i32 %2286, 3
  %2288 = add nuw nsw i32 %2287, 17
  %2289 = zext nneg i32 %2288 to i64
  %2290 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2291 = load i64, ptr %2290, align 8, !tbaa !50
  %2292 = add i64 %2291, %2289
  store i64 %2292, ptr %2290, align 8, !tbaa !50
  %2293 = add i64 %2292, 10
  %2294 = lshr i64 %2293, 3
  %2295 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2296 = load i64, ptr %2295, align 8, !tbaa !51
  %2297 = add i64 %2296, 10
  %2298 = lshr i64 %2297, 3
  %2299 = icmp samesign ugt i64 %2298, %2294
  br i1 %2299, label %2300, label %2306

2300:                                             ; preds = %2285
  %2301 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2302 = load i32, ptr %2301, align 8, !tbaa !78
  %2303 = icmp eq i32 %2302, 4
  br i1 %2303, label %2306, label %2312

2304:                                             ; preds = %4
  %2305 = add i64 %2, 5
  br label %2306

2306:                                             ; preds = %2304, %2300, %2285
  %2307 = phi i64 [ %2305, %2304 ], [ %2298, %2300 ], [ %2298, %2285 ]
  %2308 = add i64 %2, 4
  %2309 = icmp ule i64 %2308, %2307
  %2310 = icmp ne ptr %1, null
  %2311 = and i1 %2310, %2309
  br i1 %2311, label %2317, label %2430

2312:                                             ; preds = %2300
  %2313 = add i64 %2, 4
  %2314 = icmp ule i64 %2313, %2294
  %2315 = icmp ne ptr %1, null
  %2316 = and i1 %2315, %2314
  br i1 %2316, label %2317, label %2788

2317:                                             ; preds = %2312, %2306
  %2318 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2319 = load i32, ptr %2318, align 4, !tbaa !26
  %2320 = icmp sgt i32 %2319, 13
  %2321 = shl i32 %3, %2319
  %2322 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2323 = load i16, ptr %2322, align 8, !tbaa !25
  %2324 = trunc i32 %2321 to i16
  %2325 = or i16 %2323, %2324
  store i16 %2325, ptr %2322, align 8, !tbaa !25
  br i1 %2320, label %2328, label %2353

2326:                                             ; preds = %2328
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

2327:                                             ; preds = %2346
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2328:                                             ; preds = %2317
  %2329 = trunc i16 %2325 to i8
  %2330 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2331 = load ptr, ptr %2330, align 8, !tbaa !31
  %2332 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2333 = load i64, ptr %2332, align 8, !tbaa !32
  %2334 = add i64 %2333, 1
  store i64 %2334, ptr %2332, align 8, !tbaa !32
  %2335 = getelementptr inbounds nuw i8, ptr %2331, i64 %2333
  store i8 %2329, ptr %2335, align 1, !tbaa !28
  %2336 = load i16, ptr %2322, align 8, !tbaa !25
  %2337 = lshr i16 %2336, 8
  %2338 = trunc nuw i16 %2337 to i8
  %2339 = load ptr, ptr %2330, align 8, !tbaa !31
  %2340 = load i64, ptr %2332, align 8, !tbaa !32
  %2341 = add i64 %2340, 1
  store i64 %2341, ptr %2332, align 8, !tbaa !32
  %2342 = getelementptr inbounds nuw i8, ptr %2339, i64 %2340
  store i8 %2338, ptr %2342, align 1, !tbaa !28
  %2343 = load i32, ptr %2318, align 4, !tbaa !26
  %2344 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2343), !nosanitize !30
  %2345 = extractvalue { i32, i1 } %2344, 1, !nosanitize !30
  br i1 %2345, label %2326, label %2346, !prof !33, !nosanitize !30

2346:                                             ; preds = %2328
  %2347 = extractvalue { i32, i1 } %2344, 0, !nosanitize !30
  %2348 = and i32 %3, 65535
  %2349 = lshr i32 %2348, %2347
  %2350 = trunc nuw i32 %2349 to i16
  store i16 %2350, ptr %2322, align 8, !tbaa !25
  %2351 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2343, i32 -13), !nosanitize !30
  %2352 = extractvalue { i32, i1 } %2351, 1, !nosanitize !30
  br i1 %2352, label %2327, label %2356, !prof !33, !nosanitize !30

2353:                                             ; preds = %2317
  %2354 = add nsw i32 %2319, 3
  %2355 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2354, 0
  br label %2356

2356:                                             ; preds = %2353, %2346
  %2357 = phi i16 [ %2350, %2346 ], [ %2325, %2353 ]
  %2358 = phi { i32, i1 } [ %2351, %2346 ], [ %2355, %2353 ]
  %2359 = extractvalue { i32, i1 } %2358, 0
  store i32 %2359, ptr %2318, align 4, !tbaa !26
  %2360 = icmp sgt i32 %2359, 8
  br i1 %2360, label %2361, label %2376

2361:                                             ; preds = %2356
  %2362 = trunc i16 %2357 to i8
  %2363 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2364 = load ptr, ptr %2363, align 8, !tbaa !31
  %2365 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2366 = load i64, ptr %2365, align 8, !tbaa !32
  %2367 = add i64 %2366, 1
  store i64 %2367, ptr %2365, align 8, !tbaa !32
  %2368 = getelementptr inbounds nuw i8, ptr %2364, i64 %2366
  store i8 %2362, ptr %2368, align 1, !tbaa !28
  %2369 = load i16, ptr %2322, align 8, !tbaa !25
  %2370 = lshr i16 %2369, 8
  %2371 = trunc nuw i16 %2370 to i8
  %2372 = load ptr, ptr %2363, align 8, !tbaa !31
  %2373 = load i64, ptr %2365, align 8, !tbaa !32
  %2374 = add i64 %2373, 1
  store i64 %2374, ptr %2365, align 8, !tbaa !32
  %2375 = getelementptr inbounds nuw i8, ptr %2372, i64 %2373
  store i8 %2371, ptr %2375, align 1, !tbaa !28
  br label %2386

2376:                                             ; preds = %2356
  %2377 = icmp sgt i32 %2359, 0
  br i1 %2377, label %2378, label %2386

2378:                                             ; preds = %2376
  %2379 = trunc i16 %2357 to i8
  %2380 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2381 = load ptr, ptr %2380, align 8, !tbaa !31
  %2382 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2383 = load i64, ptr %2382, align 8, !tbaa !32
  %2384 = add i64 %2383, 1
  store i64 %2384, ptr %2382, align 8, !tbaa !32
  %2385 = getelementptr inbounds nuw i8, ptr %2381, i64 %2383
  store i8 %2379, ptr %2385, align 1, !tbaa !28
  br label %2386

2386:                                             ; preds = %2378, %2376, %2361
  %2387 = load i32, ptr %2318, align 4, !tbaa !26
  %2388 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2387, i32 -1)
  %2389 = extractvalue { i32, i1 } %2388, 1, !nosanitize !30
  br i1 %2389, label %2390, label %2391, !prof !33, !nosanitize !30

2390:                                             ; preds = %2386
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

2391:                                             ; preds = %2386
  %2392 = extractvalue { i32, i1 } %2388, 0, !nosanitize !30
  %2393 = and i32 %2392, 7
  %2394 = add nuw nsw i32 %2393, 1
  %2395 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %2394, ptr %2395, align 8, !tbaa !27
  store i16 0, ptr %2322, align 8, !tbaa !25
  store i32 0, ptr %2318, align 4, !tbaa !26
  %2396 = trunc i64 %2 to i8
  %2397 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2398 = load ptr, ptr %2397, align 8, !tbaa !31
  %2399 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2400 = load i64, ptr %2399, align 8, !tbaa !32
  %2401 = add i64 %2400, 1
  store i64 %2401, ptr %2399, align 8, !tbaa !32
  %2402 = getelementptr inbounds nuw i8, ptr %2398, i64 %2400
  store i8 %2396, ptr %2402, align 1, !tbaa !28
  %2403 = lshr i64 %2, 8
  %2404 = trunc i64 %2403 to i8
  %2405 = load ptr, ptr %2397, align 8, !tbaa !31
  %2406 = load i64, ptr %2399, align 8, !tbaa !32
  %2407 = add i64 %2406, 1
  store i64 %2407, ptr %2399, align 8, !tbaa !32
  %2408 = getelementptr inbounds nuw i8, ptr %2405, i64 %2406
  store i8 %2404, ptr %2408, align 1, !tbaa !28
  %2409 = trunc i64 %2 to i32
  %2410 = xor i32 %2409, 65535
  %2411 = trunc i32 %2410 to i8
  %2412 = load ptr, ptr %2397, align 8, !tbaa !31
  %2413 = load i64, ptr %2399, align 8, !tbaa !32
  %2414 = add i64 %2413, 1
  store i64 %2414, ptr %2399, align 8, !tbaa !32
  %2415 = getelementptr inbounds nuw i8, ptr %2412, i64 %2413
  store i8 %2411, ptr %2415, align 1, !tbaa !28
  %2416 = lshr i32 %2410, 8
  %2417 = trunc i32 %2416 to i8
  %2418 = load ptr, ptr %2397, align 8, !tbaa !31
  %2419 = load i64, ptr %2399, align 8, !tbaa !32
  %2420 = add i64 %2419, 1
  store i64 %2420, ptr %2399, align 8, !tbaa !32
  %2421 = getelementptr inbounds nuw i8, ptr %2418, i64 %2419
  store i8 %2417, ptr %2421, align 1, !tbaa !28
  %2422 = icmp eq i64 %2, 0
  br i1 %2422, label %2427, label %2423

2423:                                             ; preds = %2391
  %2424 = load ptr, ptr %2397, align 8, !tbaa !31
  %2425 = load i64, ptr %2399, align 8, !tbaa !32
  %2426 = getelementptr inbounds nuw i8, ptr %2424, i64 %2425
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2426, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %2427

2427:                                             ; preds = %2423, %2391
  %2428 = load i64, ptr %2399, align 8, !tbaa !32
  %2429 = add i64 %2428, %2
  store i64 %2429, ptr %2399, align 8, !tbaa !32
  br label %4099

2430:                                             ; preds = %2306
  %2431 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2432 = load i32, ptr %2431, align 4, !tbaa !26
  %2433 = icmp sgt i32 %2432, 13
  %2434 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2), !nosanitize !30
  %2435 = extractvalue { i32, i1 } %2434, 1, !nosanitize !30
  br i1 %2433, label %2437, label %2470

2436:                                             ; preds = %2795, %2439
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

2437:                                             ; preds = %2430
  br i1 %2435, label %2438, label %2439, !prof !33, !nosanitize !30

2438:                                             ; preds = %2844, %2836, %2826, %2819, %2794, %2470, %2463, %2437
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2439:                                             ; preds = %2437
  %2440 = extractvalue { i32, i1 } %2434, 0, !nosanitize !30
  %2441 = shl i32 %2440, %2432
  %2442 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2443 = load i16, ptr %2442, align 8, !tbaa !25
  %2444 = trunc i32 %2441 to i16
  %2445 = or i16 %2443, %2444
  store i16 %2445, ptr %2442, align 8, !tbaa !25
  %2446 = trunc i16 %2445 to i8
  %2447 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2448 = load ptr, ptr %2447, align 8, !tbaa !31
  %2449 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2450 = load i64, ptr %2449, align 8, !tbaa !32
  %2451 = add i64 %2450, 1
  store i64 %2451, ptr %2449, align 8, !tbaa !32
  %2452 = getelementptr inbounds nuw i8, ptr %2448, i64 %2450
  store i8 %2446, ptr %2452, align 1, !tbaa !28
  %2453 = load i16, ptr %2442, align 8, !tbaa !25
  %2454 = lshr i16 %2453, 8
  %2455 = trunc nuw i16 %2454 to i8
  %2456 = load ptr, ptr %2447, align 8, !tbaa !31
  %2457 = load i64, ptr %2449, align 8, !tbaa !32
  %2458 = add i64 %2457, 1
  store i64 %2458, ptr %2449, align 8, !tbaa !32
  %2459 = getelementptr inbounds nuw i8, ptr %2456, i64 %2457
  store i8 %2455, ptr %2459, align 1, !tbaa !28
  %2460 = load i32, ptr %2431, align 4, !tbaa !26
  %2461 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2460), !nosanitize !30
  %2462 = extractvalue { i32, i1 } %2461, 1, !nosanitize !30
  br i1 %2462, label %2436, label %2463, !prof !33, !nosanitize !30

2463:                                             ; preds = %2439
  %2464 = extractvalue { i32, i1 } %2461, 0, !nosanitize !30
  %2465 = and i32 %2440, 65535
  %2466 = lshr i32 %2465, %2464
  %2467 = trunc nuw i32 %2466 to i16
  store i16 %2467, ptr %2442, align 8, !tbaa !25
  %2468 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2460, i32 -13), !nosanitize !30
  %2469 = extractvalue { i32, i1 } %2468, 1, !nosanitize !30
  br i1 %2469, label %2438, label %2480, !prof !33, !nosanitize !30

2470:                                             ; preds = %2430
  br i1 %2435, label %2438, label %2471, !prof !33, !nosanitize !30

2471:                                             ; preds = %2470
  %2472 = extractvalue { i32, i1 } %2434, 0, !nosanitize !30
  %2473 = shl i32 %2472, %2432
  %2474 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2475 = load i16, ptr %2474, align 8, !tbaa !25
  %2476 = trunc i32 %2473 to i16
  %2477 = or i16 %2475, %2476
  store i16 %2477, ptr %2474, align 8, !tbaa !25
  %2478 = add nsw i32 %2432, 3
  %2479 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2478, 0
  br label %2480

2480:                                             ; preds = %2471, %2463
  %2481 = phi i16 [ %2467, %2463 ], [ %2477, %2471 ]
  %2482 = phi { i32, i1 } [ %2468, %2463 ], [ %2479, %2471 ]
  %2483 = extractvalue { i32, i1 } %2482, 0
  store i32 %2483, ptr %2431, align 4, !tbaa !26
  %2484 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %2485 = load i32, ptr %2484, align 4, !tbaa !29
  %2486 = icmp eq i32 %2485, 0
  br i1 %2486, label %.loopexit238, label %2487

2487:                                             ; preds = %2480
  %2488 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %2489 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2490 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2491 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %2492

2492:                                             ; preds = %2752, %2487
  %2493 = phi i16 [ %2753, %2752 ], [ %2481, %2487 ]
  %2494 = phi i32 [ %2754, %2752 ], [ %2483, %2487 ]
  %2495 = phi i32 [ %2509, %2752 ], [ 0, %2487 ]
  %2496 = load ptr, ptr %2488, align 8, !tbaa !79
  %2497 = add nuw i32 %2495, 1
  %2498 = zext i32 %2495 to i64
  %2499 = getelementptr inbounds nuw i8, ptr %2496, i64 %2498
  %2500 = load i8, ptr %2499, align 1, !tbaa !28
  %2501 = zext i8 %2500 to i32
  %2502 = add i32 %2495, 2
  %2503 = zext i32 %2497 to i64
  %2504 = getelementptr inbounds nuw i8, ptr %2496, i64 %2503
  %2505 = load i8, ptr %2504, align 1, !tbaa !28
  %2506 = zext i8 %2505 to i32
  %2507 = shl nuw nsw i32 %2506, 8
  %2508 = or disjoint i32 %2507, %2501
  %2509 = add i32 %2495, 3
  %2510 = zext i32 %2502 to i64
  %2511 = getelementptr inbounds nuw i8, ptr %2496, i64 %2510
  %2512 = load i8, ptr %2511, align 1, !tbaa !28
  %2513 = zext i8 %2512 to i32
  %2514 = icmp eq i32 %2508, 0
  %2515 = zext i8 %2512 to i64
  br i1 %2514, label %2516, label %2554

2516:                                             ; preds = %2492
  %2517 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2515
  %2518 = getelementptr inbounds nuw i8, ptr %2517, i64 2
  %2519 = load i16, ptr %2518, align 2, !tbaa !28
  %2520 = zext i16 %2519 to i32
  %2521 = sub nsw i32 16, %2520
  %2522 = icmp sgt i32 %2494, %2521
  %2523 = load i16, ptr %2517, align 4, !tbaa !28
  %2524 = zext i16 %2523 to i32
  %2525 = shl i32 %2524, %2494
  %2526 = trunc i32 %2525 to i16
  %2527 = or i16 %2493, %2526
  store i16 %2527, ptr %2489, align 8, !tbaa !25
  br i1 %2522, label %2528, label %2551

.loopexit:                                        ; preds = %2734, %2718, %2706, %2674, %2635, %2619, %2610, %2604, %2570, %2528, %2761
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

2528:                                             ; preds = %2516
  %2529 = trunc i16 %2527 to i8
  %2530 = load ptr, ptr %2490, align 8, !tbaa !31
  %2531 = load i64, ptr %2491, align 8, !tbaa !32
  %2532 = add i64 %2531, 1
  store i64 %2532, ptr %2491, align 8, !tbaa !32
  %2533 = getelementptr inbounds nuw i8, ptr %2530, i64 %2531
  store i8 %2529, ptr %2533, align 1, !tbaa !28
  %2534 = load i16, ptr %2489, align 8, !tbaa !25
  %2535 = lshr i16 %2534, 8
  %2536 = trunc nuw i16 %2535 to i8
  %2537 = load ptr, ptr %2490, align 8, !tbaa !31
  %2538 = load i64, ptr %2491, align 8, !tbaa !32
  %2539 = add i64 %2538, 1
  store i64 %2539, ptr %2491, align 8, !tbaa !32
  %2540 = getelementptr inbounds nuw i8, ptr %2537, i64 %2538
  store i8 %2536, ptr %2540, align 1, !tbaa !28
  %2541 = load i32, ptr %2431, align 4, !tbaa !26
  %2542 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2541), !nosanitize !30
  %2543 = extractvalue { i32, i1 } %2542, 1, !nosanitize !30
  br i1 %2543, label %.loopexit, label %2544, !prof !33, !nosanitize !30

2544:                                             ; preds = %2528
  %2545 = extractvalue { i32, i1 } %2542, 0, !nosanitize !30
  %2546 = lshr i32 %2524, %2545
  %2547 = trunc nuw i32 %2546 to i16
  store i16 %2547, ptr %2489, align 8, !tbaa !25
  %2548 = add nsw i32 %2520, -16
  %2549 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2541, i32 %2548), !nosanitize !30
  %2550 = extractvalue { i32, i1 } %2549, 1, !nosanitize !30
  br i1 %2550, label %.loopexit237, label %2748, !prof !33, !nosanitize !30

.loopexit237:                                     ; preds = %2745, %2741, %2690, %2646, %2642, %2586, %2544, %2779
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2551:                                             ; preds = %2516
  %2552 = add nsw i32 %2494, %2520
  %2553 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2552, 0
  br label %2748

2554:                                             ; preds = %2492
  %2555 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %2515
  %2556 = load i8, ptr %2555, align 1, !tbaa !28
  %2557 = zext i8 %2556 to i64
  %2558 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2557
  %2559 = getelementptr inbounds nuw i8, ptr %2558, i64 1028
  %2560 = getelementptr inbounds nuw i8, ptr %2558, i64 1030
  %2561 = load i16, ptr %2560, align 2, !tbaa !28
  %2562 = zext i16 %2561 to i32
  %2563 = sub nsw i32 16, %2562
  %2564 = icmp sgt i32 %2494, %2563
  %2565 = load i16, ptr %2559, align 4, !tbaa !28
  %2566 = zext i16 %2565 to i32
  %2567 = shl i32 %2566, %2494
  %2568 = trunc i32 %2567 to i16
  %2569 = or i16 %2493, %2568
  store i16 %2569, ptr %2489, align 8, !tbaa !25
  br i1 %2564, label %2570, label %2593

2570:                                             ; preds = %2554
  %2571 = trunc i16 %2569 to i8
  %2572 = load ptr, ptr %2490, align 8, !tbaa !31
  %2573 = load i64, ptr %2491, align 8, !tbaa !32
  %2574 = add i64 %2573, 1
  store i64 %2574, ptr %2491, align 8, !tbaa !32
  %2575 = getelementptr inbounds nuw i8, ptr %2572, i64 %2573
  store i8 %2571, ptr %2575, align 1, !tbaa !28
  %2576 = load i16, ptr %2489, align 8, !tbaa !25
  %2577 = lshr i16 %2576, 8
  %2578 = trunc nuw i16 %2577 to i8
  %2579 = load ptr, ptr %2490, align 8, !tbaa !31
  %2580 = load i64, ptr %2491, align 8, !tbaa !32
  %2581 = add i64 %2580, 1
  store i64 %2581, ptr %2491, align 8, !tbaa !32
  %2582 = getelementptr inbounds nuw i8, ptr %2579, i64 %2580
  store i8 %2578, ptr %2582, align 1, !tbaa !28
  %2583 = load i32, ptr %2431, align 4, !tbaa !26
  %2584 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2583), !nosanitize !30
  %2585 = extractvalue { i32, i1 } %2584, 1, !nosanitize !30
  br i1 %2585, label %.loopexit, label %2586, !prof !33, !nosanitize !30

2586:                                             ; preds = %2570
  %2587 = extractvalue { i32, i1 } %2584, 0, !nosanitize !30
  %2588 = lshr i32 %2566, %2587
  %2589 = trunc nuw i32 %2588 to i16
  store i16 %2589, ptr %2489, align 8, !tbaa !25
  %2590 = add nsw i32 %2562, -16
  %2591 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2583, i32 %2590), !nosanitize !30
  %2592 = extractvalue { i32, i1 } %2591, 1, !nosanitize !30
  br i1 %2592, label %.loopexit237, label %2596, !prof !33, !nosanitize !30

2593:                                             ; preds = %2554
  %2594 = add nsw i32 %2494, %2562
  %2595 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2594, 0
  br label %2596

2596:                                             ; preds = %2593, %2586
  %2597 = phi i16 [ %2589, %2586 ], [ %2569, %2593 ]
  %2598 = phi { i32, i1 } [ %2591, %2586 ], [ %2595, %2593 ]
  %2599 = extractvalue { i32, i1 } %2598, 0
  store i32 %2599, ptr %2431, align 4, !tbaa !26
  %2600 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %2557
  %2601 = load i32, ptr %2600, align 4, !tbaa !4
  %2602 = add i8 %2556, -28
  %2603 = icmp ult i8 %2602, -20
  br i1 %2603, label %2653, label %2604

2604:                                             ; preds = %2596
  %2605 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %2557
  %2606 = load i32, ptr %2605, align 4, !tbaa !4
  %2607 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2513, i32 %2606), !nosanitize !30
  %2608 = extractvalue { i32, i1 } %2607, 0, !nosanitize !30
  %2609 = extractvalue { i32, i1 } %2607, 1, !nosanitize !30
  br i1 %2609, label %.loopexit, label %2610, !prof !33, !nosanitize !30

2610:                                             ; preds = %2604
  %2611 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2601), !nosanitize !30
  %2612 = extractvalue { i32, i1 } %2611, 1, !nosanitize !30
  br i1 %2612, label %.loopexit, label %2613, !prof !33, !nosanitize !30

2613:                                             ; preds = %2610
  %2614 = extractvalue { i32, i1 } %2611, 0, !nosanitize !30
  %2615 = icmp sgt i32 %2599, %2614
  %2616 = shl i32 %2608, %2599
  %2617 = trunc i32 %2616 to i16
  %2618 = or i16 %2597, %2617
  store i16 %2618, ptr %2489, align 8, !tbaa !25
  br i1 %2615, label %2619, label %2646

2619:                                             ; preds = %2613
  %2620 = trunc i16 %2618 to i8
  %2621 = load ptr, ptr %2490, align 8, !tbaa !31
  %2622 = load i64, ptr %2491, align 8, !tbaa !32
  %2623 = add i64 %2622, 1
  store i64 %2623, ptr %2491, align 8, !tbaa !32
  %2624 = getelementptr inbounds nuw i8, ptr %2621, i64 %2622
  store i8 %2620, ptr %2624, align 1, !tbaa !28
  %2625 = load i16, ptr %2489, align 8, !tbaa !25
  %2626 = lshr i16 %2625, 8
  %2627 = trunc nuw i16 %2626 to i8
  %2628 = load ptr, ptr %2490, align 8, !tbaa !31
  %2629 = load i64, ptr %2491, align 8, !tbaa !32
  %2630 = add i64 %2629, 1
  store i64 %2630, ptr %2491, align 8, !tbaa !32
  %2631 = getelementptr inbounds nuw i8, ptr %2628, i64 %2629
  store i8 %2627, ptr %2631, align 1, !tbaa !28
  %2632 = load i32, ptr %2431, align 4, !tbaa !26
  %2633 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2632), !nosanitize !30
  %2634 = extractvalue { i32, i1 } %2633, 1, !nosanitize !30
  br i1 %2634, label %.loopexit, label %2635, !prof !33, !nosanitize !30

2635:                                             ; preds = %2619
  %2636 = extractvalue { i32, i1 } %2633, 0, !nosanitize !30
  %2637 = and i32 %2608, 65535
  %2638 = lshr i32 %2637, %2636
  %2639 = trunc nuw i32 %2638 to i16
  store i16 %2639, ptr %2489, align 8, !tbaa !25
  %2640 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2601, i32 -16)
  %2641 = extractvalue { i32, i1 } %2640, 1, !nosanitize !30
  br i1 %2641, label %.loopexit, label %2642, !prof !33, !nosanitize !30

2642:                                             ; preds = %2635
  %2643 = extractvalue { i32, i1 } %2640, 0, !nosanitize !30
  %2644 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2632, i32 %2643), !nosanitize !30
  %2645 = extractvalue { i32, i1 } %2644, 1, !nosanitize !30
  br i1 %2645, label %.loopexit237, label %2649, !prof !33, !nosanitize !30

2646:                                             ; preds = %2613
  %2647 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2599, i32 %2601), !nosanitize !30
  %2648 = extractvalue { i32, i1 } %2647, 1, !nosanitize !30
  br i1 %2648, label %.loopexit237, label %2649, !prof !33, !nosanitize !30

2649:                                             ; preds = %2646, %2642
  %2650 = phi i16 [ %2639, %2642 ], [ %2618, %2646 ]
  %2651 = phi { i32, i1 } [ %2644, %2642 ], [ %2647, %2646 ]
  %2652 = extractvalue { i32, i1 } %2651, 0
  store i32 %2652, ptr %2431, align 4, !tbaa !26
  br label %2653

2653:                                             ; preds = %2649, %2596
  %2654 = phi i16 [ %2650, %2649 ], [ %2597, %2596 ]
  %2655 = phi i32 [ %2652, %2649 ], [ %2599, %2596 ]
  %2656 = add nsw i32 %2508, -1
  %2657 = icmp samesign ult i32 %2508, 257
  %2658 = zext nneg i32 %2656 to i64
  %2659 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2658
  %2660 = lshr i32 %2656, 7
  %2661 = zext nneg i32 %2660 to i64
  %2662 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2661
  %2663 = getelementptr inbounds nuw i8, ptr %2662, i64 256
  %2664 = select i1 %2657, ptr %2659, ptr %2663
  %2665 = load i8, ptr %2664, align 1, !tbaa !28
  %2666 = zext i8 %2665 to i64
  %2667 = getelementptr inbounds nuw [4 x i8], ptr @static_dtree, i64 %2666
  %2668 = icmp sgt i32 %2655, 11
  %2669 = load i16, ptr %2667, align 4, !tbaa !28
  %2670 = zext i16 %2669 to i32
  %2671 = shl i32 %2670, %2655
  %2672 = trunc i32 %2671 to i16
  %2673 = or i16 %2654, %2672
  store i16 %2673, ptr %2489, align 8, !tbaa !25
  br i1 %2668, label %2674, label %2696

2674:                                             ; preds = %2653
  %2675 = trunc i16 %2673 to i8
  %2676 = load ptr, ptr %2490, align 8, !tbaa !31
  %2677 = load i64, ptr %2491, align 8, !tbaa !32
  %2678 = add i64 %2677, 1
  store i64 %2678, ptr %2491, align 8, !tbaa !32
  %2679 = getelementptr inbounds nuw i8, ptr %2676, i64 %2677
  store i8 %2675, ptr %2679, align 1, !tbaa !28
  %2680 = load i16, ptr %2489, align 8, !tbaa !25
  %2681 = lshr i16 %2680, 8
  %2682 = trunc nuw i16 %2681 to i8
  %2683 = load ptr, ptr %2490, align 8, !tbaa !31
  %2684 = load i64, ptr %2491, align 8, !tbaa !32
  %2685 = add i64 %2684, 1
  store i64 %2685, ptr %2491, align 8, !tbaa !32
  %2686 = getelementptr inbounds nuw i8, ptr %2683, i64 %2684
  store i8 %2682, ptr %2686, align 1, !tbaa !28
  %2687 = load i32, ptr %2431, align 4, !tbaa !26
  %2688 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2687), !nosanitize !30
  %2689 = extractvalue { i32, i1 } %2688, 1, !nosanitize !30
  br i1 %2689, label %.loopexit, label %2690, !prof !33, !nosanitize !30

2690:                                             ; preds = %2674
  %2691 = extractvalue { i32, i1 } %2688, 0, !nosanitize !30
  %2692 = lshr i32 %2670, %2691
  %2693 = trunc nuw i32 %2692 to i16
  store i16 %2693, ptr %2489, align 8, !tbaa !25
  %2694 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2687, i32 -11), !nosanitize !30
  %2695 = extractvalue { i32, i1 } %2694, 1, !nosanitize !30
  br i1 %2695, label %.loopexit237, label %2699, !prof !33, !nosanitize !30

2696:                                             ; preds = %2653
  %2697 = add nsw i32 %2655, 5
  %2698 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2697, 0
  br label %2699

2699:                                             ; preds = %2696, %2690
  %2700 = phi i16 [ %2693, %2690 ], [ %2673, %2696 ]
  %2701 = phi { i32, i1 } [ %2694, %2690 ], [ %2698, %2696 ]
  %2702 = extractvalue { i32, i1 } %2701, 0
  store i32 %2702, ptr %2431, align 4, !tbaa !26
  %2703 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %2666
  %2704 = load i32, ptr %2703, align 4, !tbaa !4
  %2705 = icmp ult i8 %2665, 4
  br i1 %2705, label %2752, label %2706

2706:                                             ; preds = %2699
  %2707 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %2666
  %2708 = load i32, ptr %2707, align 4, !tbaa !4
  %2709 = sub i32 %2656, %2708
  %2710 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2704), !nosanitize !30
  %2711 = extractvalue { i32, i1 } %2710, 1, !nosanitize !30
  br i1 %2711, label %.loopexit, label %2712, !prof !33, !nosanitize !30

2712:                                             ; preds = %2706
  %2713 = extractvalue { i32, i1 } %2710, 0, !nosanitize !30
  %2714 = icmp sgt i32 %2702, %2713
  %2715 = shl i32 %2709, %2702
  %2716 = trunc i32 %2715 to i16
  %2717 = or i16 %2700, %2716
  store i16 %2717, ptr %2489, align 8, !tbaa !25
  br i1 %2714, label %2718, label %2745

2718:                                             ; preds = %2712
  %2719 = trunc i16 %2717 to i8
  %2720 = load ptr, ptr %2490, align 8, !tbaa !31
  %2721 = load i64, ptr %2491, align 8, !tbaa !32
  %2722 = add i64 %2721, 1
  store i64 %2722, ptr %2491, align 8, !tbaa !32
  %2723 = getelementptr inbounds nuw i8, ptr %2720, i64 %2721
  store i8 %2719, ptr %2723, align 1, !tbaa !28
  %2724 = load i16, ptr %2489, align 8, !tbaa !25
  %2725 = lshr i16 %2724, 8
  %2726 = trunc nuw i16 %2725 to i8
  %2727 = load ptr, ptr %2490, align 8, !tbaa !31
  %2728 = load i64, ptr %2491, align 8, !tbaa !32
  %2729 = add i64 %2728, 1
  store i64 %2729, ptr %2491, align 8, !tbaa !32
  %2730 = getelementptr inbounds nuw i8, ptr %2727, i64 %2728
  store i8 %2726, ptr %2730, align 1, !tbaa !28
  %2731 = load i32, ptr %2431, align 4, !tbaa !26
  %2732 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2731), !nosanitize !30
  %2733 = extractvalue { i32, i1 } %2732, 1, !nosanitize !30
  br i1 %2733, label %.loopexit, label %2734, !prof !33, !nosanitize !30

2734:                                             ; preds = %2718
  %2735 = extractvalue { i32, i1 } %2732, 0, !nosanitize !30
  %2736 = and i32 %2709, 65535
  %2737 = lshr i32 %2736, %2735
  %2738 = trunc nuw i32 %2737 to i16
  store i16 %2738, ptr %2489, align 8, !tbaa !25
  %2739 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2704, i32 -16)
  %2740 = extractvalue { i32, i1 } %2739, 1, !nosanitize !30
  br i1 %2740, label %.loopexit, label %2741, !prof !33, !nosanitize !30

2741:                                             ; preds = %2734
  %2742 = extractvalue { i32, i1 } %2739, 0, !nosanitize !30
  %2743 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2731, i32 %2742), !nosanitize !30
  %2744 = extractvalue { i32, i1 } %2743, 1, !nosanitize !30
  br i1 %2744, label %.loopexit237, label %2748, !prof !33, !nosanitize !30

2745:                                             ; preds = %2712
  %2746 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2702, i32 %2704), !nosanitize !30
  %2747 = extractvalue { i32, i1 } %2746, 1, !nosanitize !30
  br i1 %2747, label %.loopexit237, label %2748, !prof !33, !nosanitize !30

2748:                                             ; preds = %2745, %2741, %2551, %2544
  %2749 = phi i16 [ %2527, %2551 ], [ %2547, %2544 ], [ %2738, %2741 ], [ %2717, %2745 ]
  %2750 = phi { i32, i1 } [ %2553, %2551 ], [ %2549, %2544 ], [ %2743, %2741 ], [ %2746, %2745 ]
  %2751 = extractvalue { i32, i1 } %2750, 0
  store i32 %2751, ptr %2431, align 4, !tbaa !26
  br label %2752

2752:                                             ; preds = %2748, %2699
  %2753 = phi i16 [ %2700, %2699 ], [ %2749, %2748 ]
  %2754 = phi i32 [ %2702, %2699 ], [ %2751, %2748 ]
  %2755 = load i32, ptr %2484, align 4, !tbaa !29
  %2756 = icmp ult i32 %2509, %2755
  br i1 %2756, label %2492, label %.loopexit238, !llvm.loop !80

.loopexit238:                                     ; preds = %2752, %2480
  %2757 = phi i16 [ %2481, %2480 ], [ %2753, %2752 ]
  %2758 = phi i32 [ %2483, %2480 ], [ %2754, %2752 ]
  %2759 = icmp sgt i32 %2758, 9
  %2760 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %2759, label %2761, label %2782

2761:                                             ; preds = %.loopexit238
  %2762 = trunc i16 %2757 to i8
  %2763 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2764 = load ptr, ptr %2763, align 8, !tbaa !31
  %2765 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2766 = load i64, ptr %2765, align 8, !tbaa !32
  %2767 = add i64 %2766, 1
  store i64 %2767, ptr %2765, align 8, !tbaa !32
  %2768 = getelementptr inbounds nuw i8, ptr %2764, i64 %2766
  store i8 %2762, ptr %2768, align 1, !tbaa !28
  %2769 = load i16, ptr %2760, align 8, !tbaa !25
  %2770 = lshr i16 %2769, 8
  %2771 = trunc nuw i16 %2770 to i8
  %2772 = load ptr, ptr %2763, align 8, !tbaa !31
  %2773 = load i64, ptr %2765, align 8, !tbaa !32
  %2774 = add i64 %2773, 1
  store i64 %2774, ptr %2765, align 8, !tbaa !32
  %2775 = getelementptr inbounds nuw i8, ptr %2772, i64 %2773
  store i8 %2771, ptr %2775, align 1, !tbaa !28
  %2776 = load i32, ptr %2431, align 4, !tbaa !26
  %2777 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2776), !nosanitize !30
  %2778 = extractvalue { i32, i1 } %2777, 1, !nosanitize !30
  br i1 %2778, label %.loopexit, label %2779, !prof !33, !nosanitize !30

2779:                                             ; preds = %2761
  store i16 0, ptr %2760, align 8, !tbaa !25
  %2780 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2776, i32 -9), !nosanitize !30
  %2781 = extractvalue { i32, i1 } %2780, 1, !nosanitize !30
  br i1 %2781, label %.loopexit237, label %2785, !prof !33, !nosanitize !30

2782:                                             ; preds = %.loopexit238
  %2783 = add nsw i32 %2758, 7
  %2784 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2783, 0
  br label %2785

2785:                                             ; preds = %2782, %2779
  %2786 = phi { i32, i1 } [ %2780, %2779 ], [ %2784, %2782 ]
  %2787 = extractvalue { i32, i1 } %2786, 0
  store i32 %2787, ptr %2431, align 4, !tbaa !26
  br label %4099

2788:                                             ; preds = %2312
  %2789 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2790 = load i32, ptr %2789, align 4, !tbaa !26
  %2791 = icmp sgt i32 %2790, 13
  %2792 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 4), !nosanitize !30
  %2793 = extractvalue { i32, i1 } %2792, 1, !nosanitize !30
  br i1 %2791, label %2794, label %2826

2794:                                             ; preds = %2788
  br i1 %2793, label %2438, label %2795, !prof !33, !nosanitize !30

2795:                                             ; preds = %2794
  %2796 = extractvalue { i32, i1 } %2792, 0, !nosanitize !30
  %2797 = shl i32 %2796, %2790
  %2798 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2799 = load i16, ptr %2798, align 8, !tbaa !25
  %2800 = trunc i32 %2797 to i16
  %2801 = or i16 %2799, %2800
  store i16 %2801, ptr %2798, align 8, !tbaa !25
  %2802 = trunc i16 %2801 to i8
  %2803 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2804 = load ptr, ptr %2803, align 8, !tbaa !31
  %2805 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2806 = load i64, ptr %2805, align 8, !tbaa !32
  %2807 = add i64 %2806, 1
  store i64 %2807, ptr %2805, align 8, !tbaa !32
  %2808 = getelementptr inbounds nuw i8, ptr %2804, i64 %2806
  store i8 %2802, ptr %2808, align 1, !tbaa !28
  %2809 = load i16, ptr %2798, align 8, !tbaa !25
  %2810 = lshr i16 %2809, 8
  %2811 = trunc nuw i16 %2810 to i8
  %2812 = load ptr, ptr %2803, align 8, !tbaa !31
  %2813 = load i64, ptr %2805, align 8, !tbaa !32
  %2814 = add i64 %2813, 1
  store i64 %2814, ptr %2805, align 8, !tbaa !32
  %2815 = getelementptr inbounds nuw i8, ptr %2812, i64 %2813
  store i8 %2811, ptr %2815, align 1, !tbaa !28
  %2816 = load i32, ptr %2789, align 4, !tbaa !26
  %2817 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2816), !nosanitize !30
  %2818 = extractvalue { i32, i1 } %2817, 1, !nosanitize !30
  br i1 %2818, label %2436, label %2819, !prof !33, !nosanitize !30

2819:                                             ; preds = %2795
  %2820 = extractvalue { i32, i1 } %2817, 0, !nosanitize !30
  %2821 = and i32 %2796, 65535
  %2822 = lshr i32 %2821, %2820
  %2823 = trunc nuw i32 %2822 to i16
  store i16 %2823, ptr %2798, align 8, !tbaa !25
  %2824 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2816, i32 -13), !nosanitize !30
  %2825 = extractvalue { i32, i1 } %2824, 1, !nosanitize !30
  br i1 %2825, label %2438, label %2836, !prof !33, !nosanitize !30

2826:                                             ; preds = %2788
  br i1 %2793, label %2438, label %2827, !prof !33, !nosanitize !30

2827:                                             ; preds = %2826
  %2828 = extractvalue { i32, i1 } %2792, 0, !nosanitize !30
  %2829 = shl i32 %2828, %2790
  %2830 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2831 = load i16, ptr %2830, align 8, !tbaa !25
  %2832 = trunc i32 %2829 to i16
  %2833 = or i16 %2831, %2832
  store i16 %2833, ptr %2830, align 8, !tbaa !25
  %2834 = add nsw i32 %2790, 3
  %2835 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2834, 0
  br label %2836

2836:                                             ; preds = %2827, %2819
  %2837 = phi i16 [ %2823, %2819 ], [ %2833, %2827 ]
  %2838 = phi { i32, i1 } [ %2824, %2819 ], [ %2835, %2827 ]
  %2839 = extractvalue { i32, i1 } %2838, 0
  store i32 %2839, ptr %2789, align 4, !tbaa !26
  %2840 = load i32, ptr %231, align 8, !tbaa !73
  %2841 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2840, i32 1), !nosanitize !30
  %2842 = extractvalue { i32, i1 } %2841, 0, !nosanitize !30
  %2843 = extractvalue { i32, i1 } %2841, 1, !nosanitize !30
  br i1 %2843, label %2438, label %2844, !prof !33, !nosanitize !30

2844:                                             ; preds = %2836
  %2845 = load i32, ptr %879, align 8, !tbaa !76
  %2846 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2845, i32 1), !nosanitize !30
  %2847 = extractvalue { i32, i1 } %2846, 0, !nosanitize !30
  %2848 = extractvalue { i32, i1 } %2846, 1, !nosanitize !30
  br i1 %2848, label %2438, label %2849, !prof !33, !nosanitize !30

2849:                                             ; preds = %2844
  %2850 = add nuw nsw i32 %2286, 1
  %2851 = icmp sgt i32 %2839, 11
  %2852 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2842, i32 -257)
  %2853 = extractvalue { i32, i1 } %2852, 1, !nosanitize !30
  br i1 %2851, label %2854, label %2885

.loopexit254:                                     ; preds = %3004, %.loopexit253, %3035, %2948, %2932, %2902, %2901, %2885, %2855, %2854
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

2854:                                             ; preds = %2849
  br i1 %2853, label %.loopexit254, label %2855, !prof !33, !nosanitize !30

2855:                                             ; preds = %2854
  %2856 = extractvalue { i32, i1 } %2852, 0, !nosanitize !30
  %2857 = shl i32 %2856, %2839
  %2858 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2859 = trunc i32 %2857 to i16
  %2860 = or i16 %2837, %2859
  store i16 %2860, ptr %2858, align 8, !tbaa !25
  %2861 = trunc i16 %2860 to i8
  %2862 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2863 = load ptr, ptr %2862, align 8, !tbaa !31
  %2864 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2865 = load i64, ptr %2864, align 8, !tbaa !32
  %2866 = add i64 %2865, 1
  store i64 %2866, ptr %2864, align 8, !tbaa !32
  %2867 = getelementptr inbounds nuw i8, ptr %2863, i64 %2865
  store i8 %2861, ptr %2867, align 1, !tbaa !28
  %2868 = load i16, ptr %2858, align 8, !tbaa !25
  %2869 = lshr i16 %2868, 8
  %2870 = trunc nuw i16 %2869 to i8
  %2871 = load ptr, ptr %2862, align 8, !tbaa !31
  %2872 = load i64, ptr %2864, align 8, !tbaa !32
  %2873 = add i64 %2872, 1
  store i64 %2873, ptr %2864, align 8, !tbaa !32
  %2874 = getelementptr inbounds nuw i8, ptr %2871, i64 %2872
  store i8 %2870, ptr %2874, align 1, !tbaa !28
  %2875 = load i32, ptr %2789, align 4, !tbaa !26
  %2876 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2875), !nosanitize !30
  %2877 = extractvalue { i32, i1 } %2876, 1, !nosanitize !30
  br i1 %2877, label %.loopexit254, label %2878, !prof !33, !nosanitize !30

2878:                                             ; preds = %2855
  %2879 = extractvalue { i32, i1 } %2876, 0, !nosanitize !30
  %2880 = and i32 %2856, 65535
  %2881 = lshr i32 %2880, %2879
  %2882 = trunc nuw i32 %2881 to i16
  store i16 %2882, ptr %2858, align 8, !tbaa !25
  %2883 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2875, i32 -11), !nosanitize !30
  %2884 = extractvalue { i32, i1 } %2883, 1, !nosanitize !30
  br i1 %2884, label %.loopexit255, label %2894, !prof !33, !nosanitize !30

.loopexit255:                                     ; preds = %3020, %2969, %2925, %2878
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2885:                                             ; preds = %2849
  br i1 %2853, label %.loopexit254, label %2886, !prof !33, !nosanitize !30

2886:                                             ; preds = %2885
  %2887 = extractvalue { i32, i1 } %2852, 0, !nosanitize !30
  %2888 = shl i32 %2887, %2839
  %2889 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2890 = trunc i32 %2888 to i16
  %2891 = or i16 %2837, %2890
  store i16 %2891, ptr %2889, align 8, !tbaa !25
  %2892 = add nsw i32 %2839, 5
  %2893 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2892, 0
  br label %2894

2894:                                             ; preds = %2886, %2878
  %2895 = phi i16 [ %2882, %2878 ], [ %2891, %2886 ]
  %2896 = phi { i32, i1 } [ %2883, %2878 ], [ %2893, %2886 ]
  %2897 = extractvalue { i32, i1 } %2896, 0
  store i32 %2897, ptr %2789, align 4, !tbaa !26
  %2898 = icmp sgt i32 %2897, 11
  %2899 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2847, i32 -1)
  %2900 = extractvalue { i32, i1 } %2899, 1, !nosanitize !30
  br i1 %2898, label %2901, label %2932

2901:                                             ; preds = %2894
  br i1 %2900, label %.loopexit254, label %2902, !prof !33, !nosanitize !30

2902:                                             ; preds = %2901
  %2903 = extractvalue { i32, i1 } %2899, 0, !nosanitize !30
  %2904 = shl i32 %2903, %2897
  %2905 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2906 = trunc i32 %2904 to i16
  %2907 = or i16 %2895, %2906
  store i16 %2907, ptr %2905, align 8, !tbaa !25
  %2908 = trunc i16 %2907 to i8
  %2909 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2910 = load ptr, ptr %2909, align 8, !tbaa !31
  %2911 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2912 = load i64, ptr %2911, align 8, !tbaa !32
  %2913 = add i64 %2912, 1
  store i64 %2913, ptr %2911, align 8, !tbaa !32
  %2914 = getelementptr inbounds nuw i8, ptr %2910, i64 %2912
  store i8 %2908, ptr %2914, align 1, !tbaa !28
  %2915 = load i16, ptr %2905, align 8, !tbaa !25
  %2916 = lshr i16 %2915, 8
  %2917 = trunc nuw i16 %2916 to i8
  %2918 = load ptr, ptr %2909, align 8, !tbaa !31
  %2919 = load i64, ptr %2911, align 8, !tbaa !32
  %2920 = add i64 %2919, 1
  store i64 %2920, ptr %2911, align 8, !tbaa !32
  %2921 = getelementptr inbounds nuw i8, ptr %2918, i64 %2919
  store i8 %2917, ptr %2921, align 1, !tbaa !28
  %2922 = load i32, ptr %2789, align 4, !tbaa !26
  %2923 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2922), !nosanitize !30
  %2924 = extractvalue { i32, i1 } %2923, 1, !nosanitize !30
  br i1 %2924, label %.loopexit254, label %2925, !prof !33, !nosanitize !30

2925:                                             ; preds = %2902
  %2926 = extractvalue { i32, i1 } %2923, 0, !nosanitize !30
  %2927 = and i32 %2903, 65535
  %2928 = lshr i32 %2927, %2926
  %2929 = trunc nuw i32 %2928 to i16
  store i16 %2929, ptr %2905, align 8, !tbaa !25
  %2930 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2922, i32 -11), !nosanitize !30
  %2931 = extractvalue { i32, i1 } %2930, 1, !nosanitize !30
  br i1 %2931, label %.loopexit255, label %2941, !prof !33, !nosanitize !30

2932:                                             ; preds = %2894
  br i1 %2900, label %.loopexit254, label %2933, !prof !33, !nosanitize !30

2933:                                             ; preds = %2932
  %2934 = extractvalue { i32, i1 } %2899, 0, !nosanitize !30
  %2935 = shl i32 %2934, %2897
  %2936 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2937 = trunc i32 %2935 to i16
  %2938 = or i16 %2895, %2937
  store i16 %2938, ptr %2936, align 8, !tbaa !25
  %2939 = add nsw i32 %2897, 5
  %2940 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2939, 0
  br label %2941

2941:                                             ; preds = %2933, %2925
  %2942 = phi i16 [ %2929, %2925 ], [ %2938, %2933 ]
  %2943 = phi { i32, i1 } [ %2930, %2925 ], [ %2940, %2933 ]
  %2944 = extractvalue { i32, i1 } %2943, 0
  store i32 %2944, ptr %2789, align 4, !tbaa !26
  %2945 = icmp sgt i32 %2944, 12
  %2946 = add nsw i32 %2286, -3
  %2947 = shl i32 %2946, %2944
  br i1 %2945, label %2948, label %2976

2948:                                             ; preds = %2941
  %2949 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2950 = trunc i32 %2947 to i16
  %2951 = or i16 %2942, %2950
  store i16 %2951, ptr %2949, align 8, !tbaa !25
  %2952 = trunc i16 %2951 to i8
  %2953 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2954 = load ptr, ptr %2953, align 8, !tbaa !31
  %2955 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2956 = load i64, ptr %2955, align 8, !tbaa !32
  %2957 = add i64 %2956, 1
  store i64 %2957, ptr %2955, align 8, !tbaa !32
  %2958 = getelementptr inbounds nuw i8, ptr %2954, i64 %2956
  store i8 %2952, ptr %2958, align 1, !tbaa !28
  %2959 = load i16, ptr %2949, align 8, !tbaa !25
  %2960 = lshr i16 %2959, 8
  %2961 = trunc nuw i16 %2960 to i8
  %2962 = load ptr, ptr %2953, align 8, !tbaa !31
  %2963 = load i64, ptr %2955, align 8, !tbaa !32
  %2964 = add i64 %2963, 1
  store i64 %2964, ptr %2955, align 8, !tbaa !32
  %2965 = getelementptr inbounds nuw i8, ptr %2962, i64 %2963
  store i8 %2961, ptr %2965, align 1, !tbaa !28
  %2966 = load i32, ptr %2789, align 4, !tbaa !26
  %2967 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2966), !nosanitize !30
  %2968 = extractvalue { i32, i1 } %2967, 1, !nosanitize !30
  br i1 %2968, label %.loopexit254, label %2969, !prof !33, !nosanitize !30

2969:                                             ; preds = %2948
  %2970 = extractvalue { i32, i1 } %2967, 0, !nosanitize !30
  %2971 = and i32 %2946, 65535
  %2972 = lshr i32 %2971, %2970
  %2973 = trunc nuw i32 %2972 to i16
  store i16 %2973, ptr %2949, align 8, !tbaa !25
  %2974 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2966, i32 -12), !nosanitize !30
  %2975 = extractvalue { i32, i1 } %2974, 1, !nosanitize !30
  br i1 %2975, label %.loopexit255, label %2981, !prof !33, !nosanitize !30

2976:                                             ; preds = %2941
  %2977 = trunc i32 %2947 to i16
  %2978 = or i16 %2942, %2977
  %2979 = add nsw i32 %2944, 4
  %2980 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2979, 0
  br label %2981

2981:                                             ; preds = %2976, %2969
  %2982 = phi i16 [ %2973, %2969 ], [ %2978, %2976 ]
  %2983 = phi { i32, i1 } [ %2974, %2969 ], [ %2980, %2976 ]
  %2984 = extractvalue { i32, i1 } %2983, 0
  store i32 %2984, ptr %2789, align 4, !tbaa !26
  %2985 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2986 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2987 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2988 = zext nneg i32 %2850 to i64
  br label %2989

2989:                                             ; preds = %3029, %2981
  %2990 = phi i16 [ %2982, %2981 ], [ %3030, %3029 ]
  %2991 = phi i32 [ %2984, %2981 ], [ %3032, %3029 ]
  %2992 = phi i64 [ 0, %2981 ], [ %3033, %3029 ]
  %2993 = icmp sgt i32 %2991, 13
  %2994 = getelementptr inbounds nuw i8, ptr @bl_order, i64 %2992
  %2995 = load i8, ptr %2994, align 1, !tbaa !28
  %2996 = zext i8 %2995 to i64
  %2997 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2996
  %2998 = getelementptr inbounds nuw i8, ptr %2997, i64 2750
  %2999 = load i16, ptr %2998, align 2, !tbaa !28
  %3000 = zext i16 %2999 to i32
  %3001 = shl i32 %3000, %2991
  %3002 = trunc i32 %3001 to i16
  %3003 = or i16 %2990, %3002
  store i16 %3003, ptr %2985, align 8, !tbaa !25
  br i1 %2993, label %3004, label %3026

3004:                                             ; preds = %2989
  %3005 = trunc i16 %3003 to i8
  %3006 = load ptr, ptr %2986, align 8, !tbaa !31
  %3007 = load i64, ptr %2987, align 8, !tbaa !32
  %3008 = add i64 %3007, 1
  store i64 %3008, ptr %2987, align 8, !tbaa !32
  %3009 = getelementptr inbounds nuw i8, ptr %3006, i64 %3007
  store i8 %3005, ptr %3009, align 1, !tbaa !28
  %3010 = load i16, ptr %2985, align 8, !tbaa !25
  %3011 = lshr i16 %3010, 8
  %3012 = trunc nuw i16 %3011 to i8
  %3013 = load ptr, ptr %2986, align 8, !tbaa !31
  %3014 = load i64, ptr %2987, align 8, !tbaa !32
  %3015 = add i64 %3014, 1
  store i64 %3015, ptr %2987, align 8, !tbaa !32
  %3016 = getelementptr inbounds nuw i8, ptr %3013, i64 %3014
  store i8 %3012, ptr %3016, align 1, !tbaa !28
  %3017 = load i32, ptr %2789, align 4, !tbaa !26
  %3018 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3017), !nosanitize !30
  %3019 = extractvalue { i32, i1 } %3018, 1, !nosanitize !30
  br i1 %3019, label %.loopexit254, label %3020, !prof !33, !nosanitize !30

3020:                                             ; preds = %3004
  %3021 = extractvalue { i32, i1 } %3018, 0, !nosanitize !30
  %3022 = lshr i32 %3000, %3021
  %3023 = trunc nuw i32 %3022 to i16
  store i16 %3023, ptr %2985, align 8, !tbaa !25
  %3024 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3017, i32 -13), !nosanitize !30
  %3025 = extractvalue { i32, i1 } %3024, 1, !nosanitize !30
  br i1 %3025, label %.loopexit255, label %3029, !prof !33, !nosanitize !30

3026:                                             ; preds = %2989
  %3027 = add nsw i32 %2991, 3
  %3028 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3027, 0
  br label %3029

3029:                                             ; preds = %3026, %3020
  %3030 = phi i16 [ %3023, %3020 ], [ %3003, %3026 ]
  %3031 = phi { i32, i1 } [ %3024, %3020 ], [ %3028, %3026 ]
  %3032 = extractvalue { i32, i1 } %3031, 0
  store i32 %3032, ptr %2789, align 4, !tbaa !26
  %3033 = add nuw nsw i64 %2992, 1
  %3034 = icmp eq i64 %3033, %2988
  br i1 %3034, label %3035, label %2989, !llvm.loop !81

3035:                                             ; preds = %3029
  %3036 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2842, i32 -1)
  %3037 = extractvalue { i32, i1 } %3036, 1, !nosanitize !30
  br i1 %3037, label %.loopexit254, label %3038, !prof !33, !nosanitize !30

3038:                                             ; preds = %3035
  %3039 = extractvalue { i32, i1 } %3036, 0, !nosanitize !30
  %3040 = icmp slt i32 %3039, 0
  br i1 %3040, label %.loopexit253, label %3041

3041:                                             ; preds = %3038
  %3042 = load i16, ptr %1446, align 2, !tbaa !28
  %3043 = icmp eq i16 %3042, 0
  %3044 = select i1 %3043, i32 138, i32 7
  %3045 = select i1 %3043, i32 3, i32 4
  %3046 = zext i16 %3042 to i32
  %3047 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3048 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3049 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3050 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3051 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3052 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3053 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %3054 = add i32 %2840, 1
  %wide.trip.count511 = zext i32 %3054 to i64
  br label %3056

3055:                                             ; preds = %3401
  %indvars.iv.next510 = add nuw nsw i64 %indvars.iv509, 1
  %exitcond513 = icmp eq i64 %indvars.iv.next510, 2147483648
  br i1 %exitcond513, label %.loopexit249, label %3056, !prof !74, !llvm.loop !82, !nosanitize !30

.loopexit249:                                     ; preds = %3381, %3346, %3310, %3275, %3237, %3202, %3159, %3055, %3107
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3056:                                             ; preds = %3055, %3041
  %indvars.iv509 = phi i64 [ %indvars.iv.next510, %3055 ], [ 1, %3041 ]
  %3057 = phi i32 [ %3404, %3055 ], [ %3045, %3041 ]
  %3058 = phi i32 [ %3405, %3055 ], [ %3044, %3041 ]
  %3059 = phi i32 [ %3406, %3055 ], [ 0, %3041 ]
  %3060 = phi i32 [ %3067, %3055 ], [ %3046, %3041 ]
  %3061 = phi i32 [ %3407, %3055 ], [ -1, %3041 ]
  %3062 = phi i32 [ %3403, %3055 ], [ %3032, %3041 ]
  %3063 = phi i16 [ %3402, %3055 ], [ %3030, %3041 ]
  %3064 = getelementptr [4 x i8], ptr %0, i64 %indvars.iv509
  %3065 = getelementptr i8, ptr %3064, i64 214
  %3066 = load i16, ptr %3065, align 2, !tbaa !28
  %3067 = zext i16 %3066 to i32
  %3068 = add nsw i32 %3059, 1
  %3069 = icmp slt i32 %3068, %3058
  %3070 = icmp eq i32 %3060, %3067
  %3071 = select i1 %3069, i1 %3070, i1 false
  br i1 %3071, label %3401, label %3072

3072:                                             ; preds = %3056
  %3073 = icmp slt i32 %3068, %3057
  br i1 %3073, label %3074, label %3126

3074:                                             ; preds = %3072
  %3075 = zext nneg i32 %3060 to i64
  %3076 = getelementptr inbounds nuw [4 x i8], ptr %3047, i64 %3075
  %3077 = getelementptr inbounds nuw i8, ptr %3076, i64 2
  br label %3078

3078:                                             ; preds = %3123, %3074
  %3079 = phi i16 [ %3118, %3123 ], [ %3063, %3074 ]
  %3080 = phi i32 [ %3120, %3123 ], [ %3062, %3074 ]
  %3081 = phi i32 [ %3124, %3123 ], [ %3068, %3074 ]
  %3082 = load i16, ptr %3077, align 2, !tbaa !28
  %3083 = zext i16 %3082 to i32
  %3084 = sub nsw i32 16, %3083
  %3085 = icmp sgt i32 %3080, %3084
  %3086 = load i16, ptr %3076, align 4, !tbaa !28
  %3087 = zext i16 %3086 to i32
  %3088 = shl i32 %3087, %3080
  %3089 = trunc i32 %3088 to i16
  %3090 = or i16 %3079, %3089
  store i16 %3090, ptr %2985, align 8, !tbaa !25
  br i1 %3085, label %3091, label %3114

.loopexit248:                                     ; preds = %3365, %3330, %3294, %3259, %3221, %3186, %3143, %3117, %3091
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

3091:                                             ; preds = %3078
  %3092 = trunc i16 %3090 to i8
  %3093 = load ptr, ptr %2986, align 8, !tbaa !31
  %3094 = load i64, ptr %2987, align 8, !tbaa !32
  %3095 = add i64 %3094, 1
  store i64 %3095, ptr %2987, align 8, !tbaa !32
  %3096 = getelementptr inbounds nuw i8, ptr %3093, i64 %3094
  store i8 %3092, ptr %3096, align 1, !tbaa !28
  %3097 = load i16, ptr %2985, align 8, !tbaa !25
  %3098 = lshr i16 %3097, 8
  %3099 = trunc nuw i16 %3098 to i8
  %3100 = load ptr, ptr %2986, align 8, !tbaa !31
  %3101 = load i64, ptr %2987, align 8, !tbaa !32
  %3102 = add i64 %3101, 1
  store i64 %3102, ptr %2987, align 8, !tbaa !32
  %3103 = getelementptr inbounds nuw i8, ptr %3100, i64 %3101
  store i8 %3099, ptr %3103, align 1, !tbaa !28
  %3104 = load i32, ptr %2789, align 4, !tbaa !26
  %3105 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3104), !nosanitize !30
  %3106 = extractvalue { i32, i1 } %3105, 1, !nosanitize !30
  br i1 %3106, label %.loopexit248, label %3107, !prof !33, !nosanitize !30

3107:                                             ; preds = %3091
  %3108 = extractvalue { i32, i1 } %3105, 0, !nosanitize !30
  %3109 = lshr i32 %3087, %3108
  %3110 = trunc nuw i32 %3109 to i16
  store i16 %3110, ptr %2985, align 8, !tbaa !25
  %3111 = add nsw i32 %3083, -16
  %3112 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3104, i32 %3111), !nosanitize !30
  %3113 = extractvalue { i32, i1 } %3112, 1, !nosanitize !30
  br i1 %3113, label %.loopexit249, label %3117, !prof !33, !nosanitize !30

3114:                                             ; preds = %3078
  %3115 = add nsw i32 %3080, %3083
  %3116 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3115, 0
  br label %3117

3117:                                             ; preds = %3114, %3107
  %3118 = phi i16 [ %3110, %3107 ], [ %3090, %3114 ]
  %3119 = phi { i32, i1 } [ %3112, %3107 ], [ %3116, %3114 ]
  %3120 = extractvalue { i32, i1 } %3119, 0
  store i32 %3120, ptr %2789, align 4, !tbaa !26
  %3121 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3081, i32 -1)
  %3122 = extractvalue { i32, i1 } %3121, 1, !nosanitize !30
  br i1 %3122, label %.loopexit248, label %3123, !prof !33, !nosanitize !30

3123:                                             ; preds = %3117
  %3124 = extractvalue { i32, i1 } %3121, 0, !nosanitize !30
  %3125 = icmp eq i32 %3124, 0
  br i1 %3125, label %.loopexit250, label %3078, !llvm.loop !83

3126:                                             ; preds = %3072
  %3127 = icmp eq i32 %3060, 0
  br i1 %3127, label %3247, label %3128

3128:                                             ; preds = %3126
  %3129 = icmp eq i32 %3060, %3061
  br i1 %3129, label %3173, label %3130

3130:                                             ; preds = %3128
  %3131 = zext nneg i32 %3060 to i64
  %3132 = getelementptr inbounds nuw [4 x i8], ptr %3047, i64 %3131
  %3133 = getelementptr inbounds nuw i8, ptr %3132, i64 2
  %3134 = load i16, ptr %3133, align 2, !tbaa !28
  %3135 = zext i16 %3134 to i32
  %3136 = sub nsw i32 16, %3135
  %3137 = icmp sgt i32 %3062, %3136
  %3138 = load i16, ptr %3132, align 4, !tbaa !28
  %3139 = zext i16 %3138 to i32
  %3140 = shl i32 %3139, %3062
  %3141 = trunc i32 %3140 to i16
  %3142 = or i16 %3063, %3141
  store i16 %3142, ptr %2985, align 8, !tbaa !25
  br i1 %3137, label %3143, label %3166

3143:                                             ; preds = %3130
  %3144 = trunc i16 %3142 to i8
  %3145 = load ptr, ptr %2986, align 8, !tbaa !31
  %3146 = load i64, ptr %2987, align 8, !tbaa !32
  %3147 = add i64 %3146, 1
  store i64 %3147, ptr %2987, align 8, !tbaa !32
  %3148 = getelementptr inbounds nuw i8, ptr %3145, i64 %3146
  store i8 %3144, ptr %3148, align 1, !tbaa !28
  %3149 = load i16, ptr %2985, align 8, !tbaa !25
  %3150 = lshr i16 %3149, 8
  %3151 = trunc nuw i16 %3150 to i8
  %3152 = load ptr, ptr %2986, align 8, !tbaa !31
  %3153 = load i64, ptr %2987, align 8, !tbaa !32
  %3154 = add i64 %3153, 1
  store i64 %3154, ptr %2987, align 8, !tbaa !32
  %3155 = getelementptr inbounds nuw i8, ptr %3152, i64 %3153
  store i8 %3151, ptr %3155, align 1, !tbaa !28
  %3156 = load i32, ptr %2789, align 4, !tbaa !26
  %3157 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3156), !nosanitize !30
  %3158 = extractvalue { i32, i1 } %3157, 1, !nosanitize !30
  br i1 %3158, label %.loopexit248, label %3159, !prof !33, !nosanitize !30

3159:                                             ; preds = %3143
  %3160 = extractvalue { i32, i1 } %3157, 0, !nosanitize !30
  %3161 = lshr i32 %3139, %3160
  %3162 = trunc nuw i32 %3161 to i16
  store i16 %3162, ptr %2985, align 8, !tbaa !25
  %3163 = add nsw i32 %3135, -16
  %3164 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3156, i32 %3163), !nosanitize !30
  %3165 = extractvalue { i32, i1 } %3164, 1, !nosanitize !30
  br i1 %3165, label %.loopexit249, label %3169, !prof !33, !nosanitize !30

3166:                                             ; preds = %3130
  %3167 = add nsw i32 %3062, %3135
  %3168 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3167, 0
  br label %3169

3169:                                             ; preds = %3166, %3159
  %3170 = phi i16 [ %3162, %3159 ], [ %3142, %3166 ]
  %3171 = phi { i32, i1 } [ %3164, %3159 ], [ %3168, %3166 ]
  %3172 = extractvalue { i32, i1 } %3171, 0
  store i32 %3172, ptr %2789, align 4, !tbaa !26
  br label %3173

3173:                                             ; preds = %3169, %3128
  %3174 = phi i16 [ %3170, %3169 ], [ %3063, %3128 ]
  %3175 = phi i32 [ %3172, %3169 ], [ %3062, %3128 ]
  %3176 = phi i32 [ %3059, %3169 ], [ %3068, %3128 ]
  %3177 = load i16, ptr %3049, align 2, !tbaa !28
  %3178 = zext i16 %3177 to i32
  %3179 = sub nsw i32 16, %3178
  %3180 = icmp sgt i32 %3175, %3179
  %3181 = load i16, ptr %3048, align 4, !tbaa !28
  %3182 = zext i16 %3181 to i32
  %3183 = shl i32 %3182, %3175
  %3184 = trunc i32 %3183 to i16
  %3185 = or i16 %3174, %3184
  br i1 %3180, label %3186, label %3209

3186:                                             ; preds = %3173
  store i16 %3185, ptr %2985, align 8, !tbaa !25
  %3187 = trunc i16 %3185 to i8
  %3188 = load ptr, ptr %2986, align 8, !tbaa !31
  %3189 = load i64, ptr %2987, align 8, !tbaa !32
  %3190 = add i64 %3189, 1
  store i64 %3190, ptr %2987, align 8, !tbaa !32
  %3191 = getelementptr inbounds nuw i8, ptr %3188, i64 %3189
  store i8 %3187, ptr %3191, align 1, !tbaa !28
  %3192 = load i16, ptr %2985, align 8, !tbaa !25
  %3193 = lshr i16 %3192, 8
  %3194 = trunc nuw i16 %3193 to i8
  %3195 = load ptr, ptr %2986, align 8, !tbaa !31
  %3196 = load i64, ptr %2987, align 8, !tbaa !32
  %3197 = add i64 %3196, 1
  store i64 %3197, ptr %2987, align 8, !tbaa !32
  %3198 = getelementptr inbounds nuw i8, ptr %3195, i64 %3196
  store i8 %3194, ptr %3198, align 1, !tbaa !28
  %3199 = load i32, ptr %2789, align 4, !tbaa !26
  %3200 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3199), !nosanitize !30
  %3201 = extractvalue { i32, i1 } %3200, 1, !nosanitize !30
  br i1 %3201, label %.loopexit248, label %3202, !prof !33, !nosanitize !30

3202:                                             ; preds = %3186
  %3203 = extractvalue { i32, i1 } %3200, 0, !nosanitize !30
  %3204 = lshr i32 %3182, %3203
  %3205 = trunc nuw i32 %3204 to i16
  %3206 = add nsw i32 %3178, -16
  %3207 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3199, i32 %3206), !nosanitize !30
  %3208 = extractvalue { i32, i1 } %3207, 1, !nosanitize !30
  br i1 %3208, label %.loopexit249, label %3212, !prof !33, !nosanitize !30

3209:                                             ; preds = %3173
  %3210 = add nsw i32 %3175, %3178
  %3211 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3210, 0
  br label %3212

3212:                                             ; preds = %3209, %3202
  %3213 = phi i16 [ %3205, %3202 ], [ %3185, %3209 ]
  %3214 = phi { i32, i1 } [ %3207, %3202 ], [ %3211, %3209 ]
  %3215 = extractvalue { i32, i1 } %3214, 0
  store i32 %3215, ptr %2789, align 4, !tbaa !26
  %3216 = icmp sgt i32 %3215, 14
  %3217 = add i32 %3176, 65533
  %3218 = shl i32 %3217, %3215
  %3219 = trunc i32 %3218 to i16
  %3220 = or i16 %3213, %3219
  store i16 %3220, ptr %2985, align 8, !tbaa !25
  br i1 %3216, label %3221, label %3244

3221:                                             ; preds = %3212
  %3222 = trunc i16 %3220 to i8
  %3223 = load ptr, ptr %2986, align 8, !tbaa !31
  %3224 = load i64, ptr %2987, align 8, !tbaa !32
  %3225 = add i64 %3224, 1
  store i64 %3225, ptr %2987, align 8, !tbaa !32
  %3226 = getelementptr inbounds nuw i8, ptr %3223, i64 %3224
  store i8 %3222, ptr %3226, align 1, !tbaa !28
  %3227 = load i16, ptr %2985, align 8, !tbaa !25
  %3228 = lshr i16 %3227, 8
  %3229 = trunc nuw i16 %3228 to i8
  %3230 = load ptr, ptr %2986, align 8, !tbaa !31
  %3231 = load i64, ptr %2987, align 8, !tbaa !32
  %3232 = add i64 %3231, 1
  store i64 %3232, ptr %2987, align 8, !tbaa !32
  %3233 = getelementptr inbounds nuw i8, ptr %3230, i64 %3231
  store i8 %3229, ptr %3233, align 1, !tbaa !28
  %3234 = load i32, ptr %2789, align 4, !tbaa !26
  %3235 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3234), !nosanitize !30
  %3236 = extractvalue { i32, i1 } %3235, 1, !nosanitize !30
  br i1 %3236, label %.loopexit248, label %3237, !prof !33, !nosanitize !30

3237:                                             ; preds = %3221
  %3238 = extractvalue { i32, i1 } %3235, 0, !nosanitize !30
  %3239 = and i32 %3217, 65535
  %3240 = lshr i32 %3239, %3238
  %3241 = trunc nuw i32 %3240 to i16
  store i16 %3241, ptr %2985, align 8, !tbaa !25
  %3242 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3234, i32 -14), !nosanitize !30
  %3243 = extractvalue { i32, i1 } %3242, 1, !nosanitize !30
  br i1 %3243, label %.loopexit249, label %3391, !prof !33, !nosanitize !30

3244:                                             ; preds = %3212
  %3245 = add nsw i32 %3215, 2
  %3246 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3245, 0
  br label %3391

3247:                                             ; preds = %3126
  %3248 = icmp slt i32 %3059, 10
  br i1 %3248, label %3249, label %3320

3249:                                             ; preds = %3247
  %3250 = load i16, ptr %3053, align 2, !tbaa !28
  %3251 = zext i16 %3250 to i32
  %3252 = sub nsw i32 16, %3251
  %3253 = icmp sgt i32 %3062, %3252
  %3254 = load i16, ptr %3052, align 4, !tbaa !28
  %3255 = zext i16 %3254 to i32
  %3256 = shl i32 %3255, %3062
  %3257 = trunc i32 %3256 to i16
  %3258 = or i16 %3063, %3257
  br i1 %3253, label %3259, label %3282

3259:                                             ; preds = %3249
  store i16 %3258, ptr %2985, align 8, !tbaa !25
  %3260 = trunc i16 %3258 to i8
  %3261 = load ptr, ptr %2986, align 8, !tbaa !31
  %3262 = load i64, ptr %2987, align 8, !tbaa !32
  %3263 = add i64 %3262, 1
  store i64 %3263, ptr %2987, align 8, !tbaa !32
  %3264 = getelementptr inbounds nuw i8, ptr %3261, i64 %3262
  store i8 %3260, ptr %3264, align 1, !tbaa !28
  %3265 = load i16, ptr %2985, align 8, !tbaa !25
  %3266 = lshr i16 %3265, 8
  %3267 = trunc nuw i16 %3266 to i8
  %3268 = load ptr, ptr %2986, align 8, !tbaa !31
  %3269 = load i64, ptr %2987, align 8, !tbaa !32
  %3270 = add i64 %3269, 1
  store i64 %3270, ptr %2987, align 8, !tbaa !32
  %3271 = getelementptr inbounds nuw i8, ptr %3268, i64 %3269
  store i8 %3267, ptr %3271, align 1, !tbaa !28
  %3272 = load i32, ptr %2789, align 4, !tbaa !26
  %3273 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3272), !nosanitize !30
  %3274 = extractvalue { i32, i1 } %3273, 1, !nosanitize !30
  br i1 %3274, label %.loopexit248, label %3275, !prof !33, !nosanitize !30

3275:                                             ; preds = %3259
  %3276 = extractvalue { i32, i1 } %3273, 0, !nosanitize !30
  %3277 = lshr i32 %3255, %3276
  %3278 = trunc nuw i32 %3277 to i16
  %3279 = add nsw i32 %3251, -16
  %3280 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3272, i32 %3279), !nosanitize !30
  %3281 = extractvalue { i32, i1 } %3280, 1, !nosanitize !30
  br i1 %3281, label %.loopexit249, label %3285, !prof !33, !nosanitize !30

3282:                                             ; preds = %3249
  %3283 = add nsw i32 %3062, %3251
  %3284 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3283, 0
  br label %3285

3285:                                             ; preds = %3282, %3275
  %3286 = phi i16 [ %3278, %3275 ], [ %3258, %3282 ]
  %3287 = phi { i32, i1 } [ %3280, %3275 ], [ %3284, %3282 ]
  %3288 = extractvalue { i32, i1 } %3287, 0
  store i32 %3288, ptr %2789, align 4, !tbaa !26
  %3289 = icmp sgt i32 %3288, 13
  %3290 = add nsw i32 %3059, 65534
  %3291 = shl i32 %3290, %3288
  %3292 = trunc i32 %3291 to i16
  %3293 = or i16 %3286, %3292
  store i16 %3293, ptr %2985, align 8, !tbaa !25
  br i1 %3289, label %3294, label %3317

3294:                                             ; preds = %3285
  %3295 = trunc i16 %3293 to i8
  %3296 = load ptr, ptr %2986, align 8, !tbaa !31
  %3297 = load i64, ptr %2987, align 8, !tbaa !32
  %3298 = add i64 %3297, 1
  store i64 %3298, ptr %2987, align 8, !tbaa !32
  %3299 = getelementptr inbounds nuw i8, ptr %3296, i64 %3297
  store i8 %3295, ptr %3299, align 1, !tbaa !28
  %3300 = load i16, ptr %2985, align 8, !tbaa !25
  %3301 = lshr i16 %3300, 8
  %3302 = trunc nuw i16 %3301 to i8
  %3303 = load ptr, ptr %2986, align 8, !tbaa !31
  %3304 = load i64, ptr %2987, align 8, !tbaa !32
  %3305 = add i64 %3304, 1
  store i64 %3305, ptr %2987, align 8, !tbaa !32
  %3306 = getelementptr inbounds nuw i8, ptr %3303, i64 %3304
  store i8 %3302, ptr %3306, align 1, !tbaa !28
  %3307 = load i32, ptr %2789, align 4, !tbaa !26
  %3308 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3307), !nosanitize !30
  %3309 = extractvalue { i32, i1 } %3308, 1, !nosanitize !30
  br i1 %3309, label %.loopexit248, label %3310, !prof !33, !nosanitize !30

3310:                                             ; preds = %3294
  %3311 = extractvalue { i32, i1 } %3308, 0, !nosanitize !30
  %3312 = and i32 %3290, 65535
  %3313 = lshr i32 %3312, %3311
  %3314 = trunc nuw i32 %3313 to i16
  store i16 %3314, ptr %2985, align 8, !tbaa !25
  %3315 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3307, i32 -13), !nosanitize !30
  %3316 = extractvalue { i32, i1 } %3315, 1, !nosanitize !30
  br i1 %3316, label %.loopexit249, label %3391, !prof !33, !nosanitize !30

3317:                                             ; preds = %3285
  %3318 = add nsw i32 %3288, 3
  %3319 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3318, 0
  br label %3391

3320:                                             ; preds = %3247
  %3321 = load i16, ptr %3051, align 2, !tbaa !28
  %3322 = zext i16 %3321 to i32
  %3323 = sub nsw i32 16, %3322
  %3324 = icmp sgt i32 %3062, %3323
  %3325 = load i16, ptr %3050, align 4, !tbaa !28
  %3326 = zext i16 %3325 to i32
  %3327 = shl i32 %3326, %3062
  %3328 = trunc i32 %3327 to i16
  %3329 = or i16 %3063, %3328
  br i1 %3324, label %3330, label %3353

3330:                                             ; preds = %3320
  store i16 %3329, ptr %2985, align 8, !tbaa !25
  %3331 = trunc i16 %3329 to i8
  %3332 = load ptr, ptr %2986, align 8, !tbaa !31
  %3333 = load i64, ptr %2987, align 8, !tbaa !32
  %3334 = add i64 %3333, 1
  store i64 %3334, ptr %2987, align 8, !tbaa !32
  %3335 = getelementptr inbounds nuw i8, ptr %3332, i64 %3333
  store i8 %3331, ptr %3335, align 1, !tbaa !28
  %3336 = load i16, ptr %2985, align 8, !tbaa !25
  %3337 = lshr i16 %3336, 8
  %3338 = trunc nuw i16 %3337 to i8
  %3339 = load ptr, ptr %2986, align 8, !tbaa !31
  %3340 = load i64, ptr %2987, align 8, !tbaa !32
  %3341 = add i64 %3340, 1
  store i64 %3341, ptr %2987, align 8, !tbaa !32
  %3342 = getelementptr inbounds nuw i8, ptr %3339, i64 %3340
  store i8 %3338, ptr %3342, align 1, !tbaa !28
  %3343 = load i32, ptr %2789, align 4, !tbaa !26
  %3344 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3343), !nosanitize !30
  %3345 = extractvalue { i32, i1 } %3344, 1, !nosanitize !30
  br i1 %3345, label %.loopexit248, label %3346, !prof !33, !nosanitize !30

3346:                                             ; preds = %3330
  %3347 = extractvalue { i32, i1 } %3344, 0, !nosanitize !30
  %3348 = lshr i32 %3326, %3347
  %3349 = trunc nuw i32 %3348 to i16
  %3350 = add nsw i32 %3322, -16
  %3351 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3343, i32 %3350), !nosanitize !30
  %3352 = extractvalue { i32, i1 } %3351, 1, !nosanitize !30
  br i1 %3352, label %.loopexit249, label %3356, !prof !33, !nosanitize !30

3353:                                             ; preds = %3320
  %3354 = add nsw i32 %3062, %3322
  %3355 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3354, 0
  br label %3356

3356:                                             ; preds = %3353, %3346
  %3357 = phi i16 [ %3349, %3346 ], [ %3329, %3353 ]
  %3358 = phi { i32, i1 } [ %3351, %3346 ], [ %3355, %3353 ]
  %3359 = extractvalue { i32, i1 } %3358, 0
  store i32 %3359, ptr %2789, align 4, !tbaa !26
  %3360 = icmp sgt i32 %3359, 9
  %3361 = add nuw i32 %3059, 65526
  %3362 = shl i32 %3361, %3359
  %3363 = trunc i32 %3362 to i16
  %3364 = or i16 %3357, %3363
  store i16 %3364, ptr %2985, align 8, !tbaa !25
  br i1 %3360, label %3365, label %3388

3365:                                             ; preds = %3356
  %3366 = trunc i16 %3364 to i8
  %3367 = load ptr, ptr %2986, align 8, !tbaa !31
  %3368 = load i64, ptr %2987, align 8, !tbaa !32
  %3369 = add i64 %3368, 1
  store i64 %3369, ptr %2987, align 8, !tbaa !32
  %3370 = getelementptr inbounds nuw i8, ptr %3367, i64 %3368
  store i8 %3366, ptr %3370, align 1, !tbaa !28
  %3371 = load i16, ptr %2985, align 8, !tbaa !25
  %3372 = lshr i16 %3371, 8
  %3373 = trunc nuw i16 %3372 to i8
  %3374 = load ptr, ptr %2986, align 8, !tbaa !31
  %3375 = load i64, ptr %2987, align 8, !tbaa !32
  %3376 = add i64 %3375, 1
  store i64 %3376, ptr %2987, align 8, !tbaa !32
  %3377 = getelementptr inbounds nuw i8, ptr %3374, i64 %3375
  store i8 %3373, ptr %3377, align 1, !tbaa !28
  %3378 = load i32, ptr %2789, align 4, !tbaa !26
  %3379 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3378), !nosanitize !30
  %3380 = extractvalue { i32, i1 } %3379, 1, !nosanitize !30
  br i1 %3380, label %.loopexit248, label %3381, !prof !33, !nosanitize !30

3381:                                             ; preds = %3365
  %3382 = extractvalue { i32, i1 } %3379, 0, !nosanitize !30
  %3383 = and i32 %3361, 65535
  %3384 = lshr i32 %3383, %3382
  %3385 = trunc nuw i32 %3384 to i16
  store i16 %3385, ptr %2985, align 8, !tbaa !25
  %3386 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3378, i32 -9), !nosanitize !30
  %3387 = extractvalue { i32, i1 } %3386, 1, !nosanitize !30
  br i1 %3387, label %.loopexit249, label %3391, !prof !33, !nosanitize !30

3388:                                             ; preds = %3356
  %3389 = add nsw i32 %3359, 7
  %3390 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3389, 0
  br label %3391

3391:                                             ; preds = %3388, %3381, %3317, %3310, %3244, %3237
  %3392 = phi i16 [ %3220, %3244 ], [ %3293, %3317 ], [ %3241, %3237 ], [ %3314, %3310 ], [ %3385, %3381 ], [ %3364, %3388 ]
  %3393 = phi { i32, i1 } [ %3246, %3244 ], [ %3319, %3317 ], [ %3242, %3237 ], [ %3315, %3310 ], [ %3386, %3381 ], [ %3390, %3388 ]
  %3394 = extractvalue { i32, i1 } %3393, 0
  store i32 %3394, ptr %2789, align 4, !tbaa !26
  br label %.loopexit250

.loopexit250:                                     ; preds = %3123, %3391
  %3395 = phi i16 [ %3392, %3391 ], [ %3118, %3123 ]
  %3396 = phi i32 [ %3394, %3391 ], [ %3120, %3123 ]
  %3397 = icmp eq i16 %3066, 0
  br i1 %3397, label %3401, label %3398

3398:                                             ; preds = %.loopexit250
  %3399 = select i1 %3070, i32 3, i32 4
  %3400 = select i1 %3070, i32 6, i32 7
  br label %3401

3401:                                             ; preds = %3398, %.loopexit250, %3056
  %3402 = phi i16 [ %3063, %3056 ], [ %3395, %.loopexit250 ], [ %3395, %3398 ]
  %3403 = phi i32 [ %3062, %3056 ], [ %3396, %.loopexit250 ], [ %3396, %3398 ]
  %3404 = phi i32 [ %3057, %3056 ], [ 3, %.loopexit250 ], [ %3399, %3398 ]
  %3405 = phi i32 [ %3058, %3056 ], [ 138, %.loopexit250 ], [ %3400, %3398 ]
  %3406 = phi i32 [ %3068, %3056 ], [ 0, %.loopexit250 ], [ 0, %3398 ]
  %3407 = phi i32 [ %3061, %3056 ], [ %3060, %.loopexit250 ], [ %3060, %3398 ]
  %exitcond512 = icmp eq i64 %indvars.iv509, %wide.trip.count511
  br i1 %exitcond512, label %.loopexit253, label %3055, !llvm.loop !82

.loopexit253:                                     ; preds = %3401, %3038
  %3408 = phi i16 [ %3030, %3038 ], [ %3402, %3401 ]
  %3409 = phi i32 [ %3032, %3038 ], [ %3403, %3401 ]
  br i1 %2900, label %.loopexit254, label %3410, !prof !33, !nosanitize !30

3410:                                             ; preds = %.loopexit253
  %3411 = extractvalue { i32, i1 } %2899, 0, !nosanitize !30
  %3412 = icmp slt i32 %3411, 0
  br i1 %3412, label %.loopexit247, label %3413

3413:                                             ; preds = %3410
  %3414 = load i16, ptr %1521, align 2, !tbaa !28
  %3415 = icmp eq i16 %3414, 0
  %3416 = select i1 %3415, i32 138, i32 7
  %3417 = select i1 %3415, i32 3, i32 4
  %3418 = zext i16 %3414 to i32
  %3419 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3420 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3421 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3422 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3423 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3424 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3425 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %3426 = add i32 %2845, 1
  %wide.trip.count516 = zext i32 %3426 to i64
  br label %3428

3427:                                             ; preds = %3773
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 1
  %exitcond518 = icmp eq i64 %indvars.iv.next515, 2147483648
  br i1 %exitcond518, label %.loopexit243, label %3428, !prof !74, !llvm.loop !82, !nosanitize !30

.loopexit243:                                     ; preds = %3753, %3718, %3682, %3647, %3609, %3574, %3531, %3427, %3479
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3428:                                             ; preds = %3427, %3413
  %indvars.iv514 = phi i64 [ %indvars.iv.next515, %3427 ], [ 1, %3413 ]
  %3429 = phi i32 [ %3776, %3427 ], [ %3417, %3413 ]
  %3430 = phi i32 [ %3777, %3427 ], [ %3416, %3413 ]
  %3431 = phi i32 [ %3778, %3427 ], [ 0, %3413 ]
  %3432 = phi i32 [ %3439, %3427 ], [ %3418, %3413 ]
  %3433 = phi i32 [ %3779, %3427 ], [ -1, %3413 ]
  %3434 = phi i32 [ %3775, %3427 ], [ %3409, %3413 ]
  %3435 = phi i16 [ %3774, %3427 ], [ %3408, %3413 ]
  %3436 = getelementptr [4 x i8], ptr %0, i64 %indvars.iv514
  %3437 = getelementptr i8, ptr %3436, i64 2506
  %3438 = load i16, ptr %3437, align 2, !tbaa !28
  %3439 = zext i16 %3438 to i32
  %3440 = add nsw i32 %3431, 1
  %3441 = icmp slt i32 %3440, %3430
  %3442 = icmp eq i32 %3432, %3439
  %3443 = select i1 %3441, i1 %3442, i1 false
  br i1 %3443, label %3773, label %3444

3444:                                             ; preds = %3428
  %3445 = icmp slt i32 %3440, %3429
  br i1 %3445, label %3446, label %3498

3446:                                             ; preds = %3444
  %3447 = zext nneg i32 %3432 to i64
  %3448 = getelementptr inbounds nuw [4 x i8], ptr %3419, i64 %3447
  %3449 = getelementptr inbounds nuw i8, ptr %3448, i64 2
  br label %3450

3450:                                             ; preds = %3495, %3446
  %3451 = phi i16 [ %3490, %3495 ], [ %3435, %3446 ]
  %3452 = phi i32 [ %3492, %3495 ], [ %3434, %3446 ]
  %3453 = phi i32 [ %3496, %3495 ], [ %3440, %3446 ]
  %3454 = load i16, ptr %3449, align 2, !tbaa !28
  %3455 = zext i16 %3454 to i32
  %3456 = sub nsw i32 16, %3455
  %3457 = icmp sgt i32 %3452, %3456
  %3458 = load i16, ptr %3448, align 4, !tbaa !28
  %3459 = zext i16 %3458 to i32
  %3460 = shl i32 %3459, %3452
  %3461 = trunc i32 %3460 to i16
  %3462 = or i16 %3451, %3461
  store i16 %3462, ptr %2985, align 8, !tbaa !25
  br i1 %3457, label %3463, label %3486

.loopexit242:                                     ; preds = %3737, %3702, %3666, %3631, %3593, %3558, %3515, %3489, %3463
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

3463:                                             ; preds = %3450
  %3464 = trunc i16 %3462 to i8
  %3465 = load ptr, ptr %2986, align 8, !tbaa !31
  %3466 = load i64, ptr %2987, align 8, !tbaa !32
  %3467 = add i64 %3466, 1
  store i64 %3467, ptr %2987, align 8, !tbaa !32
  %3468 = getelementptr inbounds nuw i8, ptr %3465, i64 %3466
  store i8 %3464, ptr %3468, align 1, !tbaa !28
  %3469 = load i16, ptr %2985, align 8, !tbaa !25
  %3470 = lshr i16 %3469, 8
  %3471 = trunc nuw i16 %3470 to i8
  %3472 = load ptr, ptr %2986, align 8, !tbaa !31
  %3473 = load i64, ptr %2987, align 8, !tbaa !32
  %3474 = add i64 %3473, 1
  store i64 %3474, ptr %2987, align 8, !tbaa !32
  %3475 = getelementptr inbounds nuw i8, ptr %3472, i64 %3473
  store i8 %3471, ptr %3475, align 1, !tbaa !28
  %3476 = load i32, ptr %2789, align 4, !tbaa !26
  %3477 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3476), !nosanitize !30
  %3478 = extractvalue { i32, i1 } %3477, 1, !nosanitize !30
  br i1 %3478, label %.loopexit242, label %3479, !prof !33, !nosanitize !30

3479:                                             ; preds = %3463
  %3480 = extractvalue { i32, i1 } %3477, 0, !nosanitize !30
  %3481 = lshr i32 %3459, %3480
  %3482 = trunc nuw i32 %3481 to i16
  store i16 %3482, ptr %2985, align 8, !tbaa !25
  %3483 = add nsw i32 %3455, -16
  %3484 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3476, i32 %3483), !nosanitize !30
  %3485 = extractvalue { i32, i1 } %3484, 1, !nosanitize !30
  br i1 %3485, label %.loopexit243, label %3489, !prof !33, !nosanitize !30

3486:                                             ; preds = %3450
  %3487 = add nsw i32 %3452, %3455
  %3488 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3487, 0
  br label %3489

3489:                                             ; preds = %3486, %3479
  %3490 = phi i16 [ %3482, %3479 ], [ %3462, %3486 ]
  %3491 = phi { i32, i1 } [ %3484, %3479 ], [ %3488, %3486 ]
  %3492 = extractvalue { i32, i1 } %3491, 0
  store i32 %3492, ptr %2789, align 4, !tbaa !26
  %3493 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3453, i32 -1)
  %3494 = extractvalue { i32, i1 } %3493, 1, !nosanitize !30
  br i1 %3494, label %.loopexit242, label %3495, !prof !33, !nosanitize !30

3495:                                             ; preds = %3489
  %3496 = extractvalue { i32, i1 } %3493, 0, !nosanitize !30
  %3497 = icmp eq i32 %3496, 0
  br i1 %3497, label %.loopexit244, label %3450, !llvm.loop !83

3498:                                             ; preds = %3444
  %3499 = icmp eq i32 %3432, 0
  br i1 %3499, label %3619, label %3500

3500:                                             ; preds = %3498
  %3501 = icmp eq i32 %3432, %3433
  br i1 %3501, label %3545, label %3502

3502:                                             ; preds = %3500
  %3503 = zext nneg i32 %3432 to i64
  %3504 = getelementptr inbounds nuw [4 x i8], ptr %3419, i64 %3503
  %3505 = getelementptr inbounds nuw i8, ptr %3504, i64 2
  %3506 = load i16, ptr %3505, align 2, !tbaa !28
  %3507 = zext i16 %3506 to i32
  %3508 = sub nsw i32 16, %3507
  %3509 = icmp sgt i32 %3434, %3508
  %3510 = load i16, ptr %3504, align 4, !tbaa !28
  %3511 = zext i16 %3510 to i32
  %3512 = shl i32 %3511, %3434
  %3513 = trunc i32 %3512 to i16
  %3514 = or i16 %3435, %3513
  store i16 %3514, ptr %2985, align 8, !tbaa !25
  br i1 %3509, label %3515, label %3538

3515:                                             ; preds = %3502
  %3516 = trunc i16 %3514 to i8
  %3517 = load ptr, ptr %2986, align 8, !tbaa !31
  %3518 = load i64, ptr %2987, align 8, !tbaa !32
  %3519 = add i64 %3518, 1
  store i64 %3519, ptr %2987, align 8, !tbaa !32
  %3520 = getelementptr inbounds nuw i8, ptr %3517, i64 %3518
  store i8 %3516, ptr %3520, align 1, !tbaa !28
  %3521 = load i16, ptr %2985, align 8, !tbaa !25
  %3522 = lshr i16 %3521, 8
  %3523 = trunc nuw i16 %3522 to i8
  %3524 = load ptr, ptr %2986, align 8, !tbaa !31
  %3525 = load i64, ptr %2987, align 8, !tbaa !32
  %3526 = add i64 %3525, 1
  store i64 %3526, ptr %2987, align 8, !tbaa !32
  %3527 = getelementptr inbounds nuw i8, ptr %3524, i64 %3525
  store i8 %3523, ptr %3527, align 1, !tbaa !28
  %3528 = load i32, ptr %2789, align 4, !tbaa !26
  %3529 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3528), !nosanitize !30
  %3530 = extractvalue { i32, i1 } %3529, 1, !nosanitize !30
  br i1 %3530, label %.loopexit242, label %3531, !prof !33, !nosanitize !30

3531:                                             ; preds = %3515
  %3532 = extractvalue { i32, i1 } %3529, 0, !nosanitize !30
  %3533 = lshr i32 %3511, %3532
  %3534 = trunc nuw i32 %3533 to i16
  store i16 %3534, ptr %2985, align 8, !tbaa !25
  %3535 = add nsw i32 %3507, -16
  %3536 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3528, i32 %3535), !nosanitize !30
  %3537 = extractvalue { i32, i1 } %3536, 1, !nosanitize !30
  br i1 %3537, label %.loopexit243, label %3541, !prof !33, !nosanitize !30

3538:                                             ; preds = %3502
  %3539 = add nsw i32 %3434, %3507
  %3540 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3539, 0
  br label %3541

3541:                                             ; preds = %3538, %3531
  %3542 = phi i16 [ %3534, %3531 ], [ %3514, %3538 ]
  %3543 = phi { i32, i1 } [ %3536, %3531 ], [ %3540, %3538 ]
  %3544 = extractvalue { i32, i1 } %3543, 0
  store i32 %3544, ptr %2789, align 4, !tbaa !26
  br label %3545

3545:                                             ; preds = %3541, %3500
  %3546 = phi i16 [ %3542, %3541 ], [ %3435, %3500 ]
  %3547 = phi i32 [ %3544, %3541 ], [ %3434, %3500 ]
  %3548 = phi i32 [ %3431, %3541 ], [ %3440, %3500 ]
  %3549 = load i16, ptr %3421, align 2, !tbaa !28
  %3550 = zext i16 %3549 to i32
  %3551 = sub nsw i32 16, %3550
  %3552 = icmp sgt i32 %3547, %3551
  %3553 = load i16, ptr %3420, align 4, !tbaa !28
  %3554 = zext i16 %3553 to i32
  %3555 = shl i32 %3554, %3547
  %3556 = trunc i32 %3555 to i16
  %3557 = or i16 %3546, %3556
  br i1 %3552, label %3558, label %3581

3558:                                             ; preds = %3545
  store i16 %3557, ptr %2985, align 8, !tbaa !25
  %3559 = trunc i16 %3557 to i8
  %3560 = load ptr, ptr %2986, align 8, !tbaa !31
  %3561 = load i64, ptr %2987, align 8, !tbaa !32
  %3562 = add i64 %3561, 1
  store i64 %3562, ptr %2987, align 8, !tbaa !32
  %3563 = getelementptr inbounds nuw i8, ptr %3560, i64 %3561
  store i8 %3559, ptr %3563, align 1, !tbaa !28
  %3564 = load i16, ptr %2985, align 8, !tbaa !25
  %3565 = lshr i16 %3564, 8
  %3566 = trunc nuw i16 %3565 to i8
  %3567 = load ptr, ptr %2986, align 8, !tbaa !31
  %3568 = load i64, ptr %2987, align 8, !tbaa !32
  %3569 = add i64 %3568, 1
  store i64 %3569, ptr %2987, align 8, !tbaa !32
  %3570 = getelementptr inbounds nuw i8, ptr %3567, i64 %3568
  store i8 %3566, ptr %3570, align 1, !tbaa !28
  %3571 = load i32, ptr %2789, align 4, !tbaa !26
  %3572 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3571), !nosanitize !30
  %3573 = extractvalue { i32, i1 } %3572, 1, !nosanitize !30
  br i1 %3573, label %.loopexit242, label %3574, !prof !33, !nosanitize !30

3574:                                             ; preds = %3558
  %3575 = extractvalue { i32, i1 } %3572, 0, !nosanitize !30
  %3576 = lshr i32 %3554, %3575
  %3577 = trunc nuw i32 %3576 to i16
  %3578 = add nsw i32 %3550, -16
  %3579 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3571, i32 %3578), !nosanitize !30
  %3580 = extractvalue { i32, i1 } %3579, 1, !nosanitize !30
  br i1 %3580, label %.loopexit243, label %3584, !prof !33, !nosanitize !30

3581:                                             ; preds = %3545
  %3582 = add nsw i32 %3547, %3550
  %3583 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3582, 0
  br label %3584

3584:                                             ; preds = %3581, %3574
  %3585 = phi i16 [ %3577, %3574 ], [ %3557, %3581 ]
  %3586 = phi { i32, i1 } [ %3579, %3574 ], [ %3583, %3581 ]
  %3587 = extractvalue { i32, i1 } %3586, 0
  store i32 %3587, ptr %2789, align 4, !tbaa !26
  %3588 = icmp sgt i32 %3587, 14
  %3589 = add i32 %3548, 65533
  %3590 = shl i32 %3589, %3587
  %3591 = trunc i32 %3590 to i16
  %3592 = or i16 %3585, %3591
  store i16 %3592, ptr %2985, align 8, !tbaa !25
  br i1 %3588, label %3593, label %3616

3593:                                             ; preds = %3584
  %3594 = trunc i16 %3592 to i8
  %3595 = load ptr, ptr %2986, align 8, !tbaa !31
  %3596 = load i64, ptr %2987, align 8, !tbaa !32
  %3597 = add i64 %3596, 1
  store i64 %3597, ptr %2987, align 8, !tbaa !32
  %3598 = getelementptr inbounds nuw i8, ptr %3595, i64 %3596
  store i8 %3594, ptr %3598, align 1, !tbaa !28
  %3599 = load i16, ptr %2985, align 8, !tbaa !25
  %3600 = lshr i16 %3599, 8
  %3601 = trunc nuw i16 %3600 to i8
  %3602 = load ptr, ptr %2986, align 8, !tbaa !31
  %3603 = load i64, ptr %2987, align 8, !tbaa !32
  %3604 = add i64 %3603, 1
  store i64 %3604, ptr %2987, align 8, !tbaa !32
  %3605 = getelementptr inbounds nuw i8, ptr %3602, i64 %3603
  store i8 %3601, ptr %3605, align 1, !tbaa !28
  %3606 = load i32, ptr %2789, align 4, !tbaa !26
  %3607 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3606), !nosanitize !30
  %3608 = extractvalue { i32, i1 } %3607, 1, !nosanitize !30
  br i1 %3608, label %.loopexit242, label %3609, !prof !33, !nosanitize !30

3609:                                             ; preds = %3593
  %3610 = extractvalue { i32, i1 } %3607, 0, !nosanitize !30
  %3611 = and i32 %3589, 65535
  %3612 = lshr i32 %3611, %3610
  %3613 = trunc nuw i32 %3612 to i16
  store i16 %3613, ptr %2985, align 8, !tbaa !25
  %3614 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3606, i32 -14), !nosanitize !30
  %3615 = extractvalue { i32, i1 } %3614, 1, !nosanitize !30
  br i1 %3615, label %.loopexit243, label %3763, !prof !33, !nosanitize !30

3616:                                             ; preds = %3584
  %3617 = add nsw i32 %3587, 2
  %3618 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3617, 0
  br label %3763

3619:                                             ; preds = %3498
  %3620 = icmp slt i32 %3431, 10
  br i1 %3620, label %3621, label %3692

3621:                                             ; preds = %3619
  %3622 = load i16, ptr %3425, align 2, !tbaa !28
  %3623 = zext i16 %3622 to i32
  %3624 = sub nsw i32 16, %3623
  %3625 = icmp sgt i32 %3434, %3624
  %3626 = load i16, ptr %3424, align 4, !tbaa !28
  %3627 = zext i16 %3626 to i32
  %3628 = shl i32 %3627, %3434
  %3629 = trunc i32 %3628 to i16
  %3630 = or i16 %3435, %3629
  br i1 %3625, label %3631, label %3654

3631:                                             ; preds = %3621
  store i16 %3630, ptr %2985, align 8, !tbaa !25
  %3632 = trunc i16 %3630 to i8
  %3633 = load ptr, ptr %2986, align 8, !tbaa !31
  %3634 = load i64, ptr %2987, align 8, !tbaa !32
  %3635 = add i64 %3634, 1
  store i64 %3635, ptr %2987, align 8, !tbaa !32
  %3636 = getelementptr inbounds nuw i8, ptr %3633, i64 %3634
  store i8 %3632, ptr %3636, align 1, !tbaa !28
  %3637 = load i16, ptr %2985, align 8, !tbaa !25
  %3638 = lshr i16 %3637, 8
  %3639 = trunc nuw i16 %3638 to i8
  %3640 = load ptr, ptr %2986, align 8, !tbaa !31
  %3641 = load i64, ptr %2987, align 8, !tbaa !32
  %3642 = add i64 %3641, 1
  store i64 %3642, ptr %2987, align 8, !tbaa !32
  %3643 = getelementptr inbounds nuw i8, ptr %3640, i64 %3641
  store i8 %3639, ptr %3643, align 1, !tbaa !28
  %3644 = load i32, ptr %2789, align 4, !tbaa !26
  %3645 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3644), !nosanitize !30
  %3646 = extractvalue { i32, i1 } %3645, 1, !nosanitize !30
  br i1 %3646, label %.loopexit242, label %3647, !prof !33, !nosanitize !30

3647:                                             ; preds = %3631
  %3648 = extractvalue { i32, i1 } %3645, 0, !nosanitize !30
  %3649 = lshr i32 %3627, %3648
  %3650 = trunc nuw i32 %3649 to i16
  %3651 = add nsw i32 %3623, -16
  %3652 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3644, i32 %3651), !nosanitize !30
  %3653 = extractvalue { i32, i1 } %3652, 1, !nosanitize !30
  br i1 %3653, label %.loopexit243, label %3657, !prof !33, !nosanitize !30

3654:                                             ; preds = %3621
  %3655 = add nsw i32 %3434, %3623
  %3656 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3655, 0
  br label %3657

3657:                                             ; preds = %3654, %3647
  %3658 = phi i16 [ %3650, %3647 ], [ %3630, %3654 ]
  %3659 = phi { i32, i1 } [ %3652, %3647 ], [ %3656, %3654 ]
  %3660 = extractvalue { i32, i1 } %3659, 0
  store i32 %3660, ptr %2789, align 4, !tbaa !26
  %3661 = icmp sgt i32 %3660, 13
  %3662 = add nsw i32 %3431, 65534
  %3663 = shl i32 %3662, %3660
  %3664 = trunc i32 %3663 to i16
  %3665 = or i16 %3658, %3664
  store i16 %3665, ptr %2985, align 8, !tbaa !25
  br i1 %3661, label %3666, label %3689

3666:                                             ; preds = %3657
  %3667 = trunc i16 %3665 to i8
  %3668 = load ptr, ptr %2986, align 8, !tbaa !31
  %3669 = load i64, ptr %2987, align 8, !tbaa !32
  %3670 = add i64 %3669, 1
  store i64 %3670, ptr %2987, align 8, !tbaa !32
  %3671 = getelementptr inbounds nuw i8, ptr %3668, i64 %3669
  store i8 %3667, ptr %3671, align 1, !tbaa !28
  %3672 = load i16, ptr %2985, align 8, !tbaa !25
  %3673 = lshr i16 %3672, 8
  %3674 = trunc nuw i16 %3673 to i8
  %3675 = load ptr, ptr %2986, align 8, !tbaa !31
  %3676 = load i64, ptr %2987, align 8, !tbaa !32
  %3677 = add i64 %3676, 1
  store i64 %3677, ptr %2987, align 8, !tbaa !32
  %3678 = getelementptr inbounds nuw i8, ptr %3675, i64 %3676
  store i8 %3674, ptr %3678, align 1, !tbaa !28
  %3679 = load i32, ptr %2789, align 4, !tbaa !26
  %3680 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3679), !nosanitize !30
  %3681 = extractvalue { i32, i1 } %3680, 1, !nosanitize !30
  br i1 %3681, label %.loopexit242, label %3682, !prof !33, !nosanitize !30

3682:                                             ; preds = %3666
  %3683 = extractvalue { i32, i1 } %3680, 0, !nosanitize !30
  %3684 = and i32 %3662, 65535
  %3685 = lshr i32 %3684, %3683
  %3686 = trunc nuw i32 %3685 to i16
  store i16 %3686, ptr %2985, align 8, !tbaa !25
  %3687 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3679, i32 -13), !nosanitize !30
  %3688 = extractvalue { i32, i1 } %3687, 1, !nosanitize !30
  br i1 %3688, label %.loopexit243, label %3763, !prof !33, !nosanitize !30

3689:                                             ; preds = %3657
  %3690 = add nsw i32 %3660, 3
  %3691 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3690, 0
  br label %3763

3692:                                             ; preds = %3619
  %3693 = load i16, ptr %3423, align 2, !tbaa !28
  %3694 = zext i16 %3693 to i32
  %3695 = sub nsw i32 16, %3694
  %3696 = icmp sgt i32 %3434, %3695
  %3697 = load i16, ptr %3422, align 4, !tbaa !28
  %3698 = zext i16 %3697 to i32
  %3699 = shl i32 %3698, %3434
  %3700 = trunc i32 %3699 to i16
  %3701 = or i16 %3435, %3700
  br i1 %3696, label %3702, label %3725

3702:                                             ; preds = %3692
  store i16 %3701, ptr %2985, align 8, !tbaa !25
  %3703 = trunc i16 %3701 to i8
  %3704 = load ptr, ptr %2986, align 8, !tbaa !31
  %3705 = load i64, ptr %2987, align 8, !tbaa !32
  %3706 = add i64 %3705, 1
  store i64 %3706, ptr %2987, align 8, !tbaa !32
  %3707 = getelementptr inbounds nuw i8, ptr %3704, i64 %3705
  store i8 %3703, ptr %3707, align 1, !tbaa !28
  %3708 = load i16, ptr %2985, align 8, !tbaa !25
  %3709 = lshr i16 %3708, 8
  %3710 = trunc nuw i16 %3709 to i8
  %3711 = load ptr, ptr %2986, align 8, !tbaa !31
  %3712 = load i64, ptr %2987, align 8, !tbaa !32
  %3713 = add i64 %3712, 1
  store i64 %3713, ptr %2987, align 8, !tbaa !32
  %3714 = getelementptr inbounds nuw i8, ptr %3711, i64 %3712
  store i8 %3710, ptr %3714, align 1, !tbaa !28
  %3715 = load i32, ptr %2789, align 4, !tbaa !26
  %3716 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3715), !nosanitize !30
  %3717 = extractvalue { i32, i1 } %3716, 1, !nosanitize !30
  br i1 %3717, label %.loopexit242, label %3718, !prof !33, !nosanitize !30

3718:                                             ; preds = %3702
  %3719 = extractvalue { i32, i1 } %3716, 0, !nosanitize !30
  %3720 = lshr i32 %3698, %3719
  %3721 = trunc nuw i32 %3720 to i16
  %3722 = add nsw i32 %3694, -16
  %3723 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3715, i32 %3722), !nosanitize !30
  %3724 = extractvalue { i32, i1 } %3723, 1, !nosanitize !30
  br i1 %3724, label %.loopexit243, label %3728, !prof !33, !nosanitize !30

3725:                                             ; preds = %3692
  %3726 = add nsw i32 %3434, %3694
  %3727 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3726, 0
  br label %3728

3728:                                             ; preds = %3725, %3718
  %3729 = phi i16 [ %3721, %3718 ], [ %3701, %3725 ]
  %3730 = phi { i32, i1 } [ %3723, %3718 ], [ %3727, %3725 ]
  %3731 = extractvalue { i32, i1 } %3730, 0
  store i32 %3731, ptr %2789, align 4, !tbaa !26
  %3732 = icmp sgt i32 %3731, 9
  %3733 = add nuw i32 %3431, 65526
  %3734 = shl i32 %3733, %3731
  %3735 = trunc i32 %3734 to i16
  %3736 = or i16 %3729, %3735
  store i16 %3736, ptr %2985, align 8, !tbaa !25
  br i1 %3732, label %3737, label %3760

3737:                                             ; preds = %3728
  %3738 = trunc i16 %3736 to i8
  %3739 = load ptr, ptr %2986, align 8, !tbaa !31
  %3740 = load i64, ptr %2987, align 8, !tbaa !32
  %3741 = add i64 %3740, 1
  store i64 %3741, ptr %2987, align 8, !tbaa !32
  %3742 = getelementptr inbounds nuw i8, ptr %3739, i64 %3740
  store i8 %3738, ptr %3742, align 1, !tbaa !28
  %3743 = load i16, ptr %2985, align 8, !tbaa !25
  %3744 = lshr i16 %3743, 8
  %3745 = trunc nuw i16 %3744 to i8
  %3746 = load ptr, ptr %2986, align 8, !tbaa !31
  %3747 = load i64, ptr %2987, align 8, !tbaa !32
  %3748 = add i64 %3747, 1
  store i64 %3748, ptr %2987, align 8, !tbaa !32
  %3749 = getelementptr inbounds nuw i8, ptr %3746, i64 %3747
  store i8 %3745, ptr %3749, align 1, !tbaa !28
  %3750 = load i32, ptr %2789, align 4, !tbaa !26
  %3751 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3750), !nosanitize !30
  %3752 = extractvalue { i32, i1 } %3751, 1, !nosanitize !30
  br i1 %3752, label %.loopexit242, label %3753, !prof !33, !nosanitize !30

3753:                                             ; preds = %3737
  %3754 = extractvalue { i32, i1 } %3751, 0, !nosanitize !30
  %3755 = and i32 %3733, 65535
  %3756 = lshr i32 %3755, %3754
  %3757 = trunc nuw i32 %3756 to i16
  store i16 %3757, ptr %2985, align 8, !tbaa !25
  %3758 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3750, i32 -9), !nosanitize !30
  %3759 = extractvalue { i32, i1 } %3758, 1, !nosanitize !30
  br i1 %3759, label %.loopexit243, label %3763, !prof !33, !nosanitize !30

3760:                                             ; preds = %3728
  %3761 = add nsw i32 %3731, 7
  %3762 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3761, 0
  br label %3763

3763:                                             ; preds = %3760, %3753, %3689, %3682, %3616, %3609
  %3764 = phi i16 [ %3592, %3616 ], [ %3665, %3689 ], [ %3613, %3609 ], [ %3686, %3682 ], [ %3757, %3753 ], [ %3736, %3760 ]
  %3765 = phi { i32, i1 } [ %3618, %3616 ], [ %3691, %3689 ], [ %3614, %3609 ], [ %3687, %3682 ], [ %3758, %3753 ], [ %3762, %3760 ]
  %3766 = extractvalue { i32, i1 } %3765, 0
  store i32 %3766, ptr %2789, align 4, !tbaa !26
  br label %.loopexit244

.loopexit244:                                     ; preds = %3495, %3763
  %3767 = phi i16 [ %3764, %3763 ], [ %3490, %3495 ]
  %3768 = phi i32 [ %3766, %3763 ], [ %3492, %3495 ]
  %3769 = icmp eq i16 %3438, 0
  br i1 %3769, label %3773, label %3770

3770:                                             ; preds = %.loopexit244
  %3771 = select i1 %3442, i32 3, i32 4
  %3772 = select i1 %3442, i32 6, i32 7
  br label %3773

3773:                                             ; preds = %3770, %.loopexit244, %3428
  %3774 = phi i16 [ %3435, %3428 ], [ %3767, %.loopexit244 ], [ %3767, %3770 ]
  %3775 = phi i32 [ %3434, %3428 ], [ %3768, %.loopexit244 ], [ %3768, %3770 ]
  %3776 = phi i32 [ %3429, %3428 ], [ 3, %.loopexit244 ], [ %3771, %3770 ]
  %3777 = phi i32 [ %3430, %3428 ], [ 138, %.loopexit244 ], [ %3772, %3770 ]
  %3778 = phi i32 [ %3440, %3428 ], [ 0, %.loopexit244 ], [ 0, %3770 ]
  %3779 = phi i32 [ %3433, %3428 ], [ %3432, %.loopexit244 ], [ %3432, %3770 ]
  %exitcond517 = icmp eq i64 %indvars.iv514, %wide.trip.count516
  br i1 %exitcond517, label %.loopexit247, label %3427, !llvm.loop !82

.loopexit247:                                     ; preds = %3773, %3410
  %3780 = phi i16 [ %3408, %3410 ], [ %3774, %3773 ]
  %3781 = phi i32 [ %3409, %3410 ], [ %3775, %3773 ]
  %3782 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %3783 = load i32, ptr %3782, align 4, !tbaa !29
  %3784 = icmp eq i32 %3783, 0
  br i1 %3784, label %.loopexit241, label %3785

3785:                                             ; preds = %.loopexit247
  %3786 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %3787

3787:                                             ; preds = %4052, %3785
  %3788 = phi i16 [ %4053, %4052 ], [ %3780, %3785 ]
  %3789 = phi i32 [ %4054, %4052 ], [ %3781, %3785 ]
  %3790 = phi i32 [ %3804, %4052 ], [ 0, %3785 ]
  %3791 = load ptr, ptr %3786, align 8, !tbaa !79
  %3792 = add nuw i32 %3790, 1
  %3793 = zext i32 %3790 to i64
  %3794 = getelementptr inbounds nuw i8, ptr %3791, i64 %3793
  %3795 = load i8, ptr %3794, align 1, !tbaa !28
  %3796 = zext i8 %3795 to i32
  %3797 = add i32 %3790, 2
  %3798 = zext i32 %3792 to i64
  %3799 = getelementptr inbounds nuw i8, ptr %3791, i64 %3798
  %3800 = load i8, ptr %3799, align 1, !tbaa !28
  %3801 = zext i8 %3800 to i32
  %3802 = shl nuw nsw i32 %3801, 8
  %3803 = or disjoint i32 %3802, %3796
  %3804 = add i32 %3790, 3
  %3805 = zext i32 %3797 to i64
  %3806 = getelementptr inbounds nuw i8, ptr %3791, i64 %3805
  %3807 = load i8, ptr %3806, align 1, !tbaa !28
  %3808 = zext i8 %3807 to i32
  %3809 = icmp eq i32 %3803, 0
  %3810 = zext i8 %3807 to i64
  br i1 %3809, label %3811, label %3849

3811:                                             ; preds = %3787
  %3812 = getelementptr inbounds nuw [4 x i8], ptr %1441, i64 %3810
  %3813 = getelementptr inbounds nuw i8, ptr %3812, i64 2
  %3814 = load i16, ptr %3813, align 2, !tbaa !28
  %3815 = zext i16 %3814 to i32
  %3816 = sub nsw i32 16, %3815
  %3817 = icmp sgt i32 %3789, %3816
  %3818 = load i16, ptr %3812, align 2, !tbaa !28
  %3819 = zext i16 %3818 to i32
  %3820 = shl i32 %3819, %3789
  %3821 = trunc i32 %3820 to i16
  %3822 = or i16 %3788, %3821
  store i16 %3822, ptr %2985, align 8, !tbaa !25
  br i1 %3817, label %3823, label %3846

.loopexit239:                                     ; preds = %4034, %4018, %4006, %3973, %3930, %3914, %3905, %3899, %3865, %3823, %4070
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

3823:                                             ; preds = %3811
  %3824 = trunc i16 %3822 to i8
  %3825 = load ptr, ptr %2986, align 8, !tbaa !31
  %3826 = load i64, ptr %2987, align 8, !tbaa !32
  %3827 = add i64 %3826, 1
  store i64 %3827, ptr %2987, align 8, !tbaa !32
  %3828 = getelementptr inbounds nuw i8, ptr %3825, i64 %3826
  store i8 %3824, ptr %3828, align 1, !tbaa !28
  %3829 = load i16, ptr %2985, align 8, !tbaa !25
  %3830 = lshr i16 %3829, 8
  %3831 = trunc nuw i16 %3830 to i8
  %3832 = load ptr, ptr %2986, align 8, !tbaa !31
  %3833 = load i64, ptr %2987, align 8, !tbaa !32
  %3834 = add i64 %3833, 1
  store i64 %3834, ptr %2987, align 8, !tbaa !32
  %3835 = getelementptr inbounds nuw i8, ptr %3832, i64 %3833
  store i8 %3831, ptr %3835, align 1, !tbaa !28
  %3836 = load i32, ptr %2789, align 4, !tbaa !26
  %3837 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3836), !nosanitize !30
  %3838 = extractvalue { i32, i1 } %3837, 1, !nosanitize !30
  br i1 %3838, label %.loopexit239, label %3839, !prof !33, !nosanitize !30

3839:                                             ; preds = %3823
  %3840 = extractvalue { i32, i1 } %3837, 0, !nosanitize !30
  %3841 = lshr i32 %3819, %3840
  %3842 = trunc nuw i32 %3841 to i16
  store i16 %3842, ptr %2985, align 8, !tbaa !25
  %3843 = add nsw i32 %3815, -16
  %3844 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3836, i32 %3843), !nosanitize !30
  %3845 = extractvalue { i32, i1 } %3844, 1, !nosanitize !30
  br i1 %3845, label %.loopexit240, label %4048, !prof !33, !nosanitize !30

.loopexit240:                                     ; preds = %4045, %4041, %3989, %3941, %3937, %3881, %3839, %4086
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3846:                                             ; preds = %3811
  %3847 = add nsw i32 %3789, %3815
  %3848 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3847, 0
  br label %4048

3849:                                             ; preds = %3787
  %3850 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %3810
  %3851 = load i8, ptr %3850, align 1, !tbaa !28
  %3852 = zext i8 %3851 to i64
  %3853 = getelementptr inbounds nuw [4 x i8], ptr %1441, i64 %3852
  %3854 = getelementptr inbounds nuw i8, ptr %3853, i64 1028
  %3855 = getelementptr inbounds nuw i8, ptr %3853, i64 1030
  %3856 = load i16, ptr %3855, align 2, !tbaa !28
  %3857 = zext i16 %3856 to i32
  %3858 = sub nsw i32 16, %3857
  %3859 = icmp sgt i32 %3789, %3858
  %3860 = load i16, ptr %3854, align 2, !tbaa !28
  %3861 = zext i16 %3860 to i32
  %3862 = shl i32 %3861, %3789
  %3863 = trunc i32 %3862 to i16
  %3864 = or i16 %3788, %3863
  store i16 %3864, ptr %2985, align 8, !tbaa !25
  br i1 %3859, label %3865, label %3888

3865:                                             ; preds = %3849
  %3866 = trunc i16 %3864 to i8
  %3867 = load ptr, ptr %2986, align 8, !tbaa !31
  %3868 = load i64, ptr %2987, align 8, !tbaa !32
  %3869 = add i64 %3868, 1
  store i64 %3869, ptr %2987, align 8, !tbaa !32
  %3870 = getelementptr inbounds nuw i8, ptr %3867, i64 %3868
  store i8 %3866, ptr %3870, align 1, !tbaa !28
  %3871 = load i16, ptr %2985, align 8, !tbaa !25
  %3872 = lshr i16 %3871, 8
  %3873 = trunc nuw i16 %3872 to i8
  %3874 = load ptr, ptr %2986, align 8, !tbaa !31
  %3875 = load i64, ptr %2987, align 8, !tbaa !32
  %3876 = add i64 %3875, 1
  store i64 %3876, ptr %2987, align 8, !tbaa !32
  %3877 = getelementptr inbounds nuw i8, ptr %3874, i64 %3875
  store i8 %3873, ptr %3877, align 1, !tbaa !28
  %3878 = load i32, ptr %2789, align 4, !tbaa !26
  %3879 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3878), !nosanitize !30
  %3880 = extractvalue { i32, i1 } %3879, 1, !nosanitize !30
  br i1 %3880, label %.loopexit239, label %3881, !prof !33, !nosanitize !30

3881:                                             ; preds = %3865
  %3882 = extractvalue { i32, i1 } %3879, 0, !nosanitize !30
  %3883 = lshr i32 %3861, %3882
  %3884 = trunc nuw i32 %3883 to i16
  store i16 %3884, ptr %2985, align 8, !tbaa !25
  %3885 = add nsw i32 %3857, -16
  %3886 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3878, i32 %3885), !nosanitize !30
  %3887 = extractvalue { i32, i1 } %3886, 1, !nosanitize !30
  br i1 %3887, label %.loopexit240, label %3891, !prof !33, !nosanitize !30

3888:                                             ; preds = %3849
  %3889 = add nsw i32 %3789, %3857
  %3890 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3889, 0
  br label %3891

3891:                                             ; preds = %3888, %3881
  %3892 = phi i16 [ %3884, %3881 ], [ %3864, %3888 ]
  %3893 = phi { i32, i1 } [ %3886, %3881 ], [ %3890, %3888 ]
  %3894 = extractvalue { i32, i1 } %3893, 0
  store i32 %3894, ptr %2789, align 4, !tbaa !26
  %3895 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %3852
  %3896 = load i32, ptr %3895, align 4, !tbaa !4
  %3897 = add i8 %3851, -28
  %3898 = icmp ult i8 %3897, -20
  br i1 %3898, label %3948, label %3899

3899:                                             ; preds = %3891
  %3900 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %3852
  %3901 = load i32, ptr %3900, align 4, !tbaa !4
  %3902 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3808, i32 %3901), !nosanitize !30
  %3903 = extractvalue { i32, i1 } %3902, 0, !nosanitize !30
  %3904 = extractvalue { i32, i1 } %3902, 1, !nosanitize !30
  br i1 %3904, label %.loopexit239, label %3905, !prof !33, !nosanitize !30

3905:                                             ; preds = %3899
  %3906 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3896), !nosanitize !30
  %3907 = extractvalue { i32, i1 } %3906, 1, !nosanitize !30
  br i1 %3907, label %.loopexit239, label %3908, !prof !33, !nosanitize !30

3908:                                             ; preds = %3905
  %3909 = extractvalue { i32, i1 } %3906, 0, !nosanitize !30
  %3910 = icmp sgt i32 %3894, %3909
  %3911 = shl i32 %3903, %3894
  %3912 = trunc i32 %3911 to i16
  %3913 = or i16 %3892, %3912
  store i16 %3913, ptr %2985, align 8, !tbaa !25
  br i1 %3910, label %3914, label %3941

3914:                                             ; preds = %3908
  %3915 = trunc i16 %3913 to i8
  %3916 = load ptr, ptr %2986, align 8, !tbaa !31
  %3917 = load i64, ptr %2987, align 8, !tbaa !32
  %3918 = add i64 %3917, 1
  store i64 %3918, ptr %2987, align 8, !tbaa !32
  %3919 = getelementptr inbounds nuw i8, ptr %3916, i64 %3917
  store i8 %3915, ptr %3919, align 1, !tbaa !28
  %3920 = load i16, ptr %2985, align 8, !tbaa !25
  %3921 = lshr i16 %3920, 8
  %3922 = trunc nuw i16 %3921 to i8
  %3923 = load ptr, ptr %2986, align 8, !tbaa !31
  %3924 = load i64, ptr %2987, align 8, !tbaa !32
  %3925 = add i64 %3924, 1
  store i64 %3925, ptr %2987, align 8, !tbaa !32
  %3926 = getelementptr inbounds nuw i8, ptr %3923, i64 %3924
  store i8 %3922, ptr %3926, align 1, !tbaa !28
  %3927 = load i32, ptr %2789, align 4, !tbaa !26
  %3928 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3927), !nosanitize !30
  %3929 = extractvalue { i32, i1 } %3928, 1, !nosanitize !30
  br i1 %3929, label %.loopexit239, label %3930, !prof !33, !nosanitize !30

3930:                                             ; preds = %3914
  %3931 = extractvalue { i32, i1 } %3928, 0, !nosanitize !30
  %3932 = and i32 %3903, 65535
  %3933 = lshr i32 %3932, %3931
  %3934 = trunc nuw i32 %3933 to i16
  store i16 %3934, ptr %2985, align 8, !tbaa !25
  %3935 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3896, i32 -16)
  %3936 = extractvalue { i32, i1 } %3935, 1, !nosanitize !30
  br i1 %3936, label %.loopexit239, label %3937, !prof !33, !nosanitize !30

3937:                                             ; preds = %3930
  %3938 = extractvalue { i32, i1 } %3935, 0, !nosanitize !30
  %3939 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3927, i32 %3938), !nosanitize !30
  %3940 = extractvalue { i32, i1 } %3939, 1, !nosanitize !30
  br i1 %3940, label %.loopexit240, label %3944, !prof !33, !nosanitize !30

3941:                                             ; preds = %3908
  %3942 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3894, i32 %3896), !nosanitize !30
  %3943 = extractvalue { i32, i1 } %3942, 1, !nosanitize !30
  br i1 %3943, label %.loopexit240, label %3944, !prof !33, !nosanitize !30

3944:                                             ; preds = %3941, %3937
  %3945 = phi i16 [ %3934, %3937 ], [ %3913, %3941 ]
  %3946 = phi { i32, i1 } [ %3939, %3937 ], [ %3942, %3941 ]
  %3947 = extractvalue { i32, i1 } %3946, 0
  store i32 %3947, ptr %2789, align 4, !tbaa !26
  br label %3948

3948:                                             ; preds = %3944, %3891
  %3949 = phi i16 [ %3945, %3944 ], [ %3892, %3891 ]
  %3950 = phi i32 [ %3947, %3944 ], [ %3894, %3891 ]
  %3951 = add nsw i32 %3803, -1
  %3952 = icmp samesign ult i32 %3803, 257
  %3953 = zext nneg i32 %3951 to i64
  %3954 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %3953
  %3955 = lshr i32 %3951, 7
  %3956 = zext nneg i32 %3955 to i64
  %3957 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %3956
  %3958 = getelementptr inbounds nuw i8, ptr %3957, i64 256
  %3959 = select i1 %3952, ptr %3954, ptr %3958
  %3960 = load i8, ptr %3959, align 1, !tbaa !28
  %3961 = zext i8 %3960 to i64
  %3962 = getelementptr inbounds nuw [4 x i8], ptr %1516, i64 %3961
  %3963 = getelementptr inbounds nuw i8, ptr %3962, i64 2
  %3964 = load i16, ptr %3963, align 2, !tbaa !28
  %3965 = zext i16 %3964 to i32
  %3966 = sub nsw i32 16, %3965
  %3967 = icmp sgt i32 %3950, %3966
  %3968 = load i16, ptr %3962, align 2, !tbaa !28
  %3969 = zext i16 %3968 to i32
  %3970 = shl i32 %3969, %3950
  %3971 = trunc i32 %3970 to i16
  %3972 = or i16 %3949, %3971
  store i16 %3972, ptr %2985, align 8, !tbaa !25
  br i1 %3967, label %3973, label %3996

3973:                                             ; preds = %3948
  %3974 = trunc i16 %3972 to i8
  %3975 = load ptr, ptr %2986, align 8, !tbaa !31
  %3976 = load i64, ptr %2987, align 8, !tbaa !32
  %3977 = add i64 %3976, 1
  store i64 %3977, ptr %2987, align 8, !tbaa !32
  %3978 = getelementptr inbounds nuw i8, ptr %3975, i64 %3976
  store i8 %3974, ptr %3978, align 1, !tbaa !28
  %3979 = load i16, ptr %2985, align 8, !tbaa !25
  %3980 = lshr i16 %3979, 8
  %3981 = trunc nuw i16 %3980 to i8
  %3982 = load ptr, ptr %2986, align 8, !tbaa !31
  %3983 = load i64, ptr %2987, align 8, !tbaa !32
  %3984 = add i64 %3983, 1
  store i64 %3984, ptr %2987, align 8, !tbaa !32
  %3985 = getelementptr inbounds nuw i8, ptr %3982, i64 %3983
  store i8 %3981, ptr %3985, align 1, !tbaa !28
  %3986 = load i32, ptr %2789, align 4, !tbaa !26
  %3987 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3986), !nosanitize !30
  %3988 = extractvalue { i32, i1 } %3987, 1, !nosanitize !30
  br i1 %3988, label %.loopexit239, label %3989, !prof !33, !nosanitize !30

3989:                                             ; preds = %3973
  %3990 = extractvalue { i32, i1 } %3987, 0, !nosanitize !30
  %3991 = lshr i32 %3969, %3990
  %3992 = trunc nuw i32 %3991 to i16
  store i16 %3992, ptr %2985, align 8, !tbaa !25
  %3993 = add nsw i32 %3965, -16
  %3994 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3986, i32 %3993), !nosanitize !30
  %3995 = extractvalue { i32, i1 } %3994, 1, !nosanitize !30
  br i1 %3995, label %.loopexit240, label %3999, !prof !33, !nosanitize !30

3996:                                             ; preds = %3948
  %3997 = add nsw i32 %3950, %3965
  %3998 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3997, 0
  br label %3999

3999:                                             ; preds = %3996, %3989
  %4000 = phi i16 [ %3992, %3989 ], [ %3972, %3996 ]
  %4001 = phi { i32, i1 } [ %3994, %3989 ], [ %3998, %3996 ]
  %4002 = extractvalue { i32, i1 } %4001, 0
  store i32 %4002, ptr %2789, align 4, !tbaa !26
  %4003 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %3961
  %4004 = load i32, ptr %4003, align 4, !tbaa !4
  %4005 = icmp ult i8 %3960, 4
  br i1 %4005, label %4052, label %4006

4006:                                             ; preds = %3999
  %4007 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %3961
  %4008 = load i32, ptr %4007, align 4, !tbaa !4
  %4009 = sub i32 %3951, %4008
  %4010 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4004), !nosanitize !30
  %4011 = extractvalue { i32, i1 } %4010, 1, !nosanitize !30
  br i1 %4011, label %.loopexit239, label %4012, !prof !33, !nosanitize !30

4012:                                             ; preds = %4006
  %4013 = extractvalue { i32, i1 } %4010, 0, !nosanitize !30
  %4014 = icmp sgt i32 %4002, %4013
  %4015 = shl i32 %4009, %4002
  %4016 = trunc i32 %4015 to i16
  %4017 = or i16 %4000, %4016
  store i16 %4017, ptr %2985, align 8, !tbaa !25
  br i1 %4014, label %4018, label %4045

4018:                                             ; preds = %4012
  %4019 = trunc i16 %4017 to i8
  %4020 = load ptr, ptr %2986, align 8, !tbaa !31
  %4021 = load i64, ptr %2987, align 8, !tbaa !32
  %4022 = add i64 %4021, 1
  store i64 %4022, ptr %2987, align 8, !tbaa !32
  %4023 = getelementptr inbounds nuw i8, ptr %4020, i64 %4021
  store i8 %4019, ptr %4023, align 1, !tbaa !28
  %4024 = load i16, ptr %2985, align 8, !tbaa !25
  %4025 = lshr i16 %4024, 8
  %4026 = trunc nuw i16 %4025 to i8
  %4027 = load ptr, ptr %2986, align 8, !tbaa !31
  %4028 = load i64, ptr %2987, align 8, !tbaa !32
  %4029 = add i64 %4028, 1
  store i64 %4029, ptr %2987, align 8, !tbaa !32
  %4030 = getelementptr inbounds nuw i8, ptr %4027, i64 %4028
  store i8 %4026, ptr %4030, align 1, !tbaa !28
  %4031 = load i32, ptr %2789, align 4, !tbaa !26
  %4032 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4031), !nosanitize !30
  %4033 = extractvalue { i32, i1 } %4032, 1, !nosanitize !30
  br i1 %4033, label %.loopexit239, label %4034, !prof !33, !nosanitize !30

4034:                                             ; preds = %4018
  %4035 = extractvalue { i32, i1 } %4032, 0, !nosanitize !30
  %4036 = and i32 %4009, 65535
  %4037 = lshr i32 %4036, %4035
  %4038 = trunc nuw i32 %4037 to i16
  store i16 %4038, ptr %2985, align 8, !tbaa !25
  %4039 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4004, i32 -16)
  %4040 = extractvalue { i32, i1 } %4039, 1, !nosanitize !30
  br i1 %4040, label %.loopexit239, label %4041, !prof !33, !nosanitize !30

4041:                                             ; preds = %4034
  %4042 = extractvalue { i32, i1 } %4039, 0, !nosanitize !30
  %4043 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4031, i32 %4042), !nosanitize !30
  %4044 = extractvalue { i32, i1 } %4043, 1, !nosanitize !30
  br i1 %4044, label %.loopexit240, label %4048, !prof !33, !nosanitize !30

4045:                                             ; preds = %4012
  %4046 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4002, i32 %4004), !nosanitize !30
  %4047 = extractvalue { i32, i1 } %4046, 1, !nosanitize !30
  br i1 %4047, label %.loopexit240, label %4048, !prof !33, !nosanitize !30

4048:                                             ; preds = %4045, %4041, %3846, %3839
  %4049 = phi i16 [ %3822, %3846 ], [ %3842, %3839 ], [ %4038, %4041 ], [ %4017, %4045 ]
  %4050 = phi { i32, i1 } [ %3848, %3846 ], [ %3844, %3839 ], [ %4043, %4041 ], [ %4046, %4045 ]
  %4051 = extractvalue { i32, i1 } %4050, 0
  store i32 %4051, ptr %2789, align 4, !tbaa !26
  br label %4052

4052:                                             ; preds = %4048, %3999
  %4053 = phi i16 [ %4000, %3999 ], [ %4049, %4048 ]
  %4054 = phi i32 [ %4002, %3999 ], [ %4051, %4048 ]
  %4055 = load i32, ptr %3782, align 4, !tbaa !29
  %4056 = icmp ult i32 %3804, %4055
  br i1 %4056, label %3787, label %.loopexit241, !llvm.loop !80

.loopexit241:                                     ; preds = %4052, %.loopexit247
  %4057 = phi i16 [ %3780, %.loopexit247 ], [ %4053, %4052 ]
  %4058 = phi i32 [ %3781, %.loopexit247 ], [ %4054, %4052 ]
  %4059 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %4060 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %4061 = load i16, ptr %4060, align 2, !tbaa !28
  %4062 = zext i16 %4061 to i32
  %4063 = sub nsw i32 16, %4062
  %4064 = icmp sgt i32 %4058, %4063
  %4065 = load i16, ptr %4059, align 2, !tbaa !28
  %4066 = zext i16 %4065 to i32
  %4067 = shl i32 %4066, %4058
  %4068 = trunc i32 %4067 to i16
  %4069 = or i16 %4057, %4068
  store i16 %4069, ptr %2985, align 8, !tbaa !25
  br i1 %4064, label %4070, label %4093

4070:                                             ; preds = %.loopexit241
  %4071 = trunc i16 %4069 to i8
  %4072 = load ptr, ptr %2986, align 8, !tbaa !31
  %4073 = load i64, ptr %2987, align 8, !tbaa !32
  %4074 = add i64 %4073, 1
  store i64 %4074, ptr %2987, align 8, !tbaa !32
  %4075 = getelementptr inbounds nuw i8, ptr %4072, i64 %4073
  store i8 %4071, ptr %4075, align 1, !tbaa !28
  %4076 = load i16, ptr %2985, align 8, !tbaa !25
  %4077 = lshr i16 %4076, 8
  %4078 = trunc nuw i16 %4077 to i8
  %4079 = load ptr, ptr %2986, align 8, !tbaa !31
  %4080 = load i64, ptr %2987, align 8, !tbaa !32
  %4081 = add i64 %4080, 1
  store i64 %4081, ptr %2987, align 8, !tbaa !32
  %4082 = getelementptr inbounds nuw i8, ptr %4079, i64 %4080
  store i8 %4078, ptr %4082, align 1, !tbaa !28
  %4083 = load i32, ptr %2789, align 4, !tbaa !26
  %4084 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4083), !nosanitize !30
  %4085 = extractvalue { i32, i1 } %4084, 1, !nosanitize !30
  br i1 %4085, label %.loopexit239, label %4086, !prof !33, !nosanitize !30

4086:                                             ; preds = %4070
  %4087 = extractvalue { i32, i1 } %4084, 0, !nosanitize !30
  %4088 = lshr i32 %4066, %4087
  %4089 = trunc nuw i32 %4088 to i16
  store i16 %4089, ptr %2985, align 8, !tbaa !25
  %4090 = add nsw i32 %4062, -16
  %4091 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4083, i32 %4090), !nosanitize !30
  %4092 = extractvalue { i32, i1 } %4091, 1, !nosanitize !30
  br i1 %4092, label %.loopexit240, label %4096, !prof !33, !nosanitize !30

4093:                                             ; preds = %.loopexit241
  %4094 = add nsw i32 %4058, %4062
  %4095 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4094, 0
  br label %4096

4096:                                             ; preds = %4093, %4086
  %4097 = phi { i32, i1 } [ %4091, %4086 ], [ %4095, %4093 ]
  %4098 = extractvalue { i32, i1 } %4097, 0
  store i32 %4098, ptr %2789, align 4, !tbaa !26
  br label %4099

4099:                                             ; preds = %4096, %2785, %2427
  %4100 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %4101

4101:                                             ; preds = %4112, %4099
  %4102 = phi i64 [ 0, %4099 ], [ %4116, %4112 ]
  %4103 = getelementptr inbounds nuw [4 x i8], ptr %4100, i64 %4102
  store i16 0, ptr %4103, align 4, !tbaa !28
  %4104 = getelementptr inbounds nuw i8, ptr %4103, i64 4
  store i16 0, ptr %4104, align 4, !tbaa !28
  %4105 = getelementptr inbounds nuw [4 x i8], ptr %4100, i64 %4102
  %4106 = getelementptr inbounds nuw i8, ptr %4105, i64 8
  store i16 0, ptr %4106, align 4, !tbaa !28
  %4107 = getelementptr inbounds nuw i8, ptr %4105, i64 12
  store i16 0, ptr %4107, align 4, !tbaa !28
  %4108 = getelementptr inbounds nuw [4 x i8], ptr %4100, i64 %4102
  %4109 = getelementptr inbounds nuw i8, ptr %4108, i64 16
  store i16 0, ptr %4109, align 4, !tbaa !28
  %4110 = getelementptr inbounds nuw i8, ptr %4108, i64 20
  store i16 0, ptr %4110, align 4, !tbaa !28
  %4111 = icmp eq i64 %4102, 280
  br i1 %4111, label %4117, label %4112

4112:                                             ; preds = %4101
  %4113 = getelementptr inbounds nuw [4 x i8], ptr %4100, i64 %4102
  %4114 = getelementptr inbounds nuw i8, ptr %4113, i64 24
  store i16 0, ptr %4114, align 4, !tbaa !28
  %4115 = getelementptr inbounds nuw i8, ptr %4113, i64 28
  store i16 0, ptr %4115, align 4, !tbaa !28
  %4116 = add nuw nsw i64 %4102, 8
  br label %4101

4117:                                             ; preds = %4101
  %4118 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %4118, align 4, !tbaa !28
  %4119 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %4119, align 4, !tbaa !28
  %4120 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %4120, align 4, !tbaa !28
  %4121 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %4121, align 4, !tbaa !28
  %4122 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %4122, align 4, !tbaa !28
  %4123 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %4123, align 4, !tbaa !28
  %4124 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %4124, align 4, !tbaa !28
  %4125 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %4125, align 4, !tbaa !28
  %4126 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %4126, align 4, !tbaa !28
  %4127 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %4127, align 4, !tbaa !28
  %4128 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %4128, align 4, !tbaa !28
  %4129 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %4129, align 4, !tbaa !28
  %4130 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %4130, align 4, !tbaa !28
  %4131 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %4131, align 4, !tbaa !28
  %4132 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %4132, align 4, !tbaa !28
  %4133 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %4133, align 4, !tbaa !28
  %4134 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %4134, align 4, !tbaa !28
  %4135 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %4135, align 4, !tbaa !28
  %4136 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %4136, align 4, !tbaa !28
  %4137 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %4137, align 4, !tbaa !28
  %4138 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %4138, align 4, !tbaa !28
  %4139 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %4139, align 4, !tbaa !28
  %4140 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %4140, align 4, !tbaa !28
  %4141 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %4141, align 4, !tbaa !28
  %4142 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %4142, align 4, !tbaa !28
  %4143 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %4143, align 4, !tbaa !28
  %4144 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %4144, align 4, !tbaa !28
  %4145 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %4145, align 4, !tbaa !28
  %4146 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %4146, align 4, !tbaa !28
  %4147 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %4147, align 4, !tbaa !28
  %4148 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %4148, align 4, !tbaa !28
  %4149 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %4149, align 4, !tbaa !28
  %4150 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %4150, align 4, !tbaa !28
  %4151 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %4151, align 4, !tbaa !28
  %4152 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %4152, align 4, !tbaa !28
  %4153 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %4153, align 4, !tbaa !28
  %4154 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %4154, align 4, !tbaa !28
  %4155 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %4155, align 4, !tbaa !28
  %4156 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %4156, align 4, !tbaa !28
  %4157 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %4157, align 4, !tbaa !28
  %4158 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %4158, align 4, !tbaa !28
  %4159 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %4159, align 4, !tbaa !28
  %4160 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %4160, align 4, !tbaa !28
  %4161 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %4161, align 4, !tbaa !28
  %4162 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %4162, align 4, !tbaa !28
  %4163 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %4163, align 4, !tbaa !28
  %4164 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %4164, align 4, !tbaa !28
  %4165 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %4165, align 4, !tbaa !28
  %4166 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %4166, align 4, !tbaa !28
  %4167 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %4167, align 4, !tbaa !28
  %4168 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %4169 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %4169, align 4, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4168, i8 0, i64 20, i1 false)
  %4170 = icmp eq i32 %3, 0
  br i1 %4170, label %4215, label %4171

4171:                                             ; preds = %4117
  %4172 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %4173 = load i32, ptr %4172, align 4, !tbaa !26
  %4174 = icmp sgt i32 %4173, 8
  br i1 %4174, label %4175, label %4192

4175:                                             ; preds = %4171
  %4176 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4177 = load i16, ptr %4176, align 8, !tbaa !25
  %4178 = trunc i16 %4177 to i8
  %4179 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4180 = load ptr, ptr %4179, align 8, !tbaa !31
  %4181 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4182 = load i64, ptr %4181, align 8, !tbaa !32
  %4183 = add i64 %4182, 1
  store i64 %4183, ptr %4181, align 8, !tbaa !32
  %4184 = getelementptr inbounds nuw i8, ptr %4180, i64 %4182
  store i8 %4178, ptr %4184, align 1, !tbaa !28
  %4185 = load i16, ptr %4176, align 8, !tbaa !25
  %4186 = lshr i16 %4185, 8
  %4187 = trunc nuw i16 %4186 to i8
  %4188 = load ptr, ptr %4179, align 8, !tbaa !31
  %4189 = load i64, ptr %4181, align 8, !tbaa !32
  %4190 = add i64 %4189, 1
  store i64 %4190, ptr %4181, align 8, !tbaa !32
  %4191 = getelementptr inbounds nuw i8, ptr %4188, i64 %4189
  store i8 %4187, ptr %4191, align 1, !tbaa !28
  br label %4204

4192:                                             ; preds = %4171
  %4193 = icmp sgt i32 %4173, 0
  br i1 %4193, label %4194, label %4204

4194:                                             ; preds = %4192
  %4195 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4196 = load i16, ptr %4195, align 8, !tbaa !25
  %4197 = trunc i16 %4196 to i8
  %4198 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4199 = load ptr, ptr %4198, align 8, !tbaa !31
  %4200 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4201 = load i64, ptr %4200, align 8, !tbaa !32
  %4202 = add i64 %4201, 1
  store i64 %4202, ptr %4200, align 8, !tbaa !32
  %4203 = getelementptr inbounds nuw i8, ptr %4199, i64 %4201
  store i8 %4197, ptr %4203, align 1, !tbaa !28
  br label %4204

4204:                                             ; preds = %4194, %4192, %4175
  %4205 = load i32, ptr %4172, align 4, !tbaa !26
  %4206 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4205, i32 -1)
  %4207 = extractvalue { i32, i1 } %4206, 1, !nosanitize !30
  br i1 %4207, label %4208, label %4209, !prof !33, !nosanitize !30

4208:                                             ; preds = %4204
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

4209:                                             ; preds = %4204
  %4210 = extractvalue { i32, i1 } %4206, 0, !nosanitize !30
  %4211 = and i32 %4210, 7
  %4212 = add nuw nsw i32 %4211, 1
  %4213 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %4212, ptr %4213, align 8, !tbaa !27
  %4214 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %4214, align 8, !tbaa !25
  store i32 0, ptr %4172, align 4, !tbaa !26
  br label %4215

4215:                                             ; preds = %4209, %4117
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_tr_tally(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = trunc i32 %1 to i8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %8 = load i32, ptr %7, align 4, !tbaa !29
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !29
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 %10
  store i8 %4, ptr %11, align 1, !tbaa !28
  %12 = lshr i32 %1, 8
  %13 = trunc i32 %12 to i8
  %14 = load ptr, ptr %5, align 8, !tbaa !79
  %15 = load i32, ptr %7, align 4, !tbaa !29
  %16 = add i32 %15, 1
  store i32 %16, ptr %7, align 4, !tbaa !29
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 %17
  store i8 %13, ptr %18, align 1, !tbaa !28
  %19 = trunc i32 %2 to i8
  %20 = load ptr, ptr %5, align 8, !tbaa !79
  %21 = load i32, ptr %7, align 4, !tbaa !29
  %22 = add i32 %21, 1
  store i32 %22, ptr %7, align 4, !tbaa !29
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 %23
  store i8 %19, ptr %24, align 1, !tbaa !28
  %25 = icmp eq i32 %1, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %28 = zext i32 %2 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %28
  %30 = load i16, ptr %29, align 4, !tbaa !28
  %31 = add i16 %30, 1
  store i16 %31, ptr %29, align 4, !tbaa !28
  br label %59

32:                                               ; preds = %3
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %34 = load i32, ptr %33, align 8, !tbaa !84
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !84
  %36 = add i32 %1, -1
  %37 = zext i32 %2 to i64
  %38 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !28
  %40 = zext i8 %39 to i64
  %41 = getelementptr i8, ptr %0, i64 1240
  %42 = getelementptr [4 x i8], ptr %41, i64 %40
  %43 = load i16, ptr %42, align 4, !tbaa !28
  %44 = add i16 %43, 1
  store i16 %44, ptr %42, align 4, !tbaa !28
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %46 = icmp ult i32 %1, 257
  %47 = zext nneg i32 %36 to i64
  %48 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %47
  %49 = lshr i32 %36, 7
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %50
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 256
  %53 = select i1 %46, ptr %48, ptr %52
  %54 = load i8, ptr %53, align 1, !tbaa !28
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %55
  %57 = load i16, ptr %56, align 4, !tbaa !28
  %58 = add i16 %57, 1
  store i16 %58, ptr %56, align 4, !tbaa !28
  br label %59

59:                                               ; preds = %32, %26
  %60 = load i32, ptr %7, align 4, !tbaa !29
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %62 = load i32, ptr %61, align 8, !tbaa !85
  %63 = icmp eq i32 %60, %62
  %64 = zext i1 %63 to i32
  ret i32 %64
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn nounwind }
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
!31 = !{!9, !12, i64 16}
!32 = !{!9, !13, i64 40}
!33 = !{!"branch_weights", i32 1, i32 1048575}
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
