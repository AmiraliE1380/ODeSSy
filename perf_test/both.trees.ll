; ModuleID = '/home/amiralie1380/michigan/pl/zlib/trees.c'
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
  br i1 %7, label %9, label %47

8:                                                ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  br i1 %46, label %30, label %55, !prof !34, !nosanitize !32

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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

161:                                              ; preds = %156
  %162 = extractvalue { i64, i1 } %158, 0, !nosanitize !32
  store i64 %162, ptr %110, align 8, !tbaa !33
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
  %8 = load i64, ptr %7, align 8, !tbaa !33
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 1), !nosanitize !32
  %10 = extractvalue { i64, i1 } %9, 1, !nosanitize !32
  br i1 %10, label %11, label %12, !prof !34, !nosanitize !32

11:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

52:                                               ; preds = %38
  %53 = extractvalue { i32, i1 } %49, 0, !nosanitize !32
  br label %54

54:                                               ; preds = %52, %23
  %55 = phi i32 [ %53, %52 ], [ 0, %23 ]
  store i32 %55, ptr %2, align 4, !tbaa !26
  br label %56

56:                                               ; preds = %30, %54
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

10:                                               ; preds = %68, %27
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load i64, ptr %12, align 8, !tbaa !33
  %14 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 1), !nosanitize !32
  %15 = extractvalue { i64, i1 } %14, 1, !nosanitize !32
  br i1 %15, label %16, label %17, !prof !34, !nosanitize !32

16:                                               ; preds = %11
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  br i1 %42, label %26, label %46, !prof !34, !nosanitize !32

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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  br i1 %80, label %67, label %81, !prof !34, !nosanitize !32

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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

133:                                              ; preds = %121
  %134 = extractvalue { i32, i1 } %130, 0, !nosanitize !32
  br label %135

135:                                              ; preds = %133, %106
  %136 = phi i32 [ %134, %133 ], [ 0, %106 ]
  store i32 %136, ptr %2, align 4, !tbaa !26
  br label %137

137:                                              ; preds = %113, %135
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
  br i1 %10, label %11, label %2515

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

138:                                              ; preds = %116, %135
  %139 = phi i64 [ %136, %135 ], [ 32, %116 ]
  %140 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %139
  %141 = load i16, ptr %140, align 4, !tbaa !28
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %120, label %143

143:                                              ; preds = %138, %120, %125, %130, %135, %16, %20, %24, %28, %32, %36, %40, %44, %48, %52, %56, %60, %64, %68, %72, %76, %80, %84, %88, %92, %96, %100, %104, %108, %112, %116
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

160:                                              ; preds = %190
  %161 = load i32, ptr %153, align 4, !tbaa !48
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %227

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
  %174 = getelementptr inbounds nuw [4 x i8], ptr %147, i64 %172
  %175 = load i16, ptr %174, align 2, !tbaa !28
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %171
  %178 = load i32, ptr %153, align 4, !tbaa !48
  %179 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %178, i32 1), !nosanitize !32
  %180 = extractvalue { i32, i1 } %179, 1, !nosanitize !32
  br i1 %180, label %181, label %182, !prof !34, !nosanitize !32

181:                                              ; preds = %177, %398
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

182:                                              ; preds = %177
  %183 = extractvalue { i32, i1 } %179, 0, !nosanitize !32
  store i32 %183, ptr %153, align 4, !tbaa !48
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x i8], ptr %157, i64 %184
  %186 = trunc nuw nsw i64 %172 to i32
  store i32 %186, ptr %185, align 4, !tbaa !4
  %187 = getelementptr inbounds nuw i8, ptr %158, i64 %172
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
  br i1 %193, label %160, label %171, !llvm.loop !50

194:                                              ; preds = %224, %163
  %195 = phi i32 [ %165, %163 ], [ %225, %224 ]
  %196 = phi i32 [ %164, %163 ], [ %199, %224 ]
  %197 = icmp slt i32 %196, 2
  %198 = add i32 %196, 1
  %199 = select i1 %197, i32 %198, i32 %196
  %200 = add nsw i32 %195, 1
  %201 = select i1 %197, i32 %198, i32 0
  store i32 %200, ptr %153, align 4, !tbaa !48
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds [4 x i8], ptr %166, i64 %202
  store i32 %201, ptr %203, align 4, !tbaa !4
  %204 = sext i32 %201 to i64
  %205 = getelementptr inbounds [4 x i8], ptr %147, i64 %204
  store i16 1, ptr %205, align 2, !tbaa !28
  %206 = getelementptr inbounds i8, ptr %167, i64 %204
  store i8 0, ptr %206, align 1, !tbaa !28
  %207 = load i64, ptr %168, align 8, !tbaa !51
  %208 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %207, i64 1), !nosanitize !32
  %209 = extractvalue { i64, i1 } %208, 1, !nosanitize !32
  br i1 %209, label %210, label %211, !prof !34, !nosanitize !32

210:                                              ; preds = %194
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

211:                                              ; preds = %194
  %212 = extractvalue { i64, i1 } %208, 0, !nosanitize !32
  store i64 %212, ptr %168, align 8, !tbaa !51
  br i1 %169, label %224, label %213

213:                                              ; preds = %211
  %214 = getelementptr inbounds [4 x i8], ptr %150, i64 %204
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 2
  %216 = load i16, ptr %215, align 2, !tbaa !28
  %217 = zext i16 %216 to i64
  %218 = load i64, ptr %170, align 8, !tbaa !52
  %219 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %218, i64 %217), !nosanitize !32
  %220 = extractvalue { i64, i1 } %219, 1, !nosanitize !32
  br i1 %220, label %221, label %222, !prof !34, !nosanitize !32

221:                                              ; preds = %213, %391, %384, %311, %488
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

222:                                              ; preds = %213
  %223 = extractvalue { i64, i1 } %219, 0, !nosanitize !32
  store i64 %223, ptr %170, align 8, !tbaa !52
  br label %224

224:                                              ; preds = %222, %211
  %225 = load i32, ptr %153, align 4, !tbaa !48
  %226 = icmp slt i32 %225, 2
  br i1 %226, label %194, label %227, !llvm.loop !53

227:                                              ; preds = %224, %160
  %228 = phi i32 [ %191, %160 ], [ %199, %224 ]
  %229 = phi i32 [ %161, %160 ], [ %225, %224 ]
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 %228, ptr %230, align 8, !tbaa !54
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %233 = lshr i32 %229, 1
  %234 = zext nneg i32 %233 to i64
  br label %239

235:                                              ; preds = %305
  %236 = load i32, ptr %153, align 4, !tbaa !48
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %238 = sext i32 %152 to i64
  br label %311

239:                                              ; preds = %305, %227
  %240 = phi i64 [ %234, %227 ], [ %309, %305 ]
  %241 = getelementptr inbounds nuw [4 x i8], ptr %231, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, ptr %232, i64 %243
  %245 = load i32, ptr %153, align 4, !tbaa !48
  %246 = trunc i64 %240 to i32
  %247 = shl i32 %246, 1
  %248 = icmp sgt i32 %247, %245
  br i1 %248, label %305, label %249

249:                                              ; preds = %239
  %250 = getelementptr inbounds [4 x i8], ptr %147, i64 %243
  br label %251

251:                                              ; preds = %299, %249
  %252 = phi i32 [ %245, %249 ], [ %303, %299 ]
  %253 = phi i32 [ %247, %249 ], [ %302, %299 ]
  %254 = phi i32 [ %246, %249 ], [ %284, %299 ]
  %255 = icmp slt i32 %253, %252
  br i1 %255, label %258, label %256

256:                                              ; preds = %251
  %257 = sext i32 %253 to i64
  br label %282

258:                                              ; preds = %251
  %259 = or disjoint i32 %253, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [4 x i8], ptr %231, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [4 x i8], ptr %147, i64 %263
  %265 = load i16, ptr %264, align 2, !tbaa !28
  %266 = sext i32 %253 to i64
  %267 = getelementptr inbounds [4 x i8], ptr %231, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [4 x i8], ptr %147, i64 %269
  %271 = load i16, ptr %270, align 2, !tbaa !28
  %272 = icmp ult i16 %265, %271
  br i1 %272, label %281, label %273

273:                                              ; preds = %258
  %274 = icmp eq i16 %265, %271
  br i1 %274, label %275, label %282

275:                                              ; preds = %273
  %276 = getelementptr inbounds i8, ptr %232, i64 %263
  %277 = load i8, ptr %276, align 1, !tbaa !28
  %278 = getelementptr inbounds i8, ptr %232, i64 %269
  %279 = load i8, ptr %278, align 1, !tbaa !28
  %280 = icmp ugt i8 %277, %279
  br i1 %280, label %282, label %281

281:                                              ; preds = %275, %258
  br label %282

282:                                              ; preds = %281, %275, %273, %256
  %283 = phi i64 [ %257, %256 ], [ %260, %281 ], [ %266, %275 ], [ %266, %273 ]
  %284 = phi i32 [ %253, %256 ], [ %259, %281 ], [ %253, %275 ], [ %253, %273 ]
  %285 = load i16, ptr %250, align 2, !tbaa !28
  %286 = getelementptr inbounds [4 x i8], ptr %231, i64 %283
  %287 = load i32, ptr %286, align 4, !tbaa !4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [4 x i8], ptr %147, i64 %288
  %290 = load i16, ptr %289, align 2, !tbaa !28
  %291 = icmp ult i16 %285, %290
  br i1 %291, label %305, label %292

292:                                              ; preds = %282
  %293 = icmp eq i16 %285, %290
  br i1 %293, label %294, label %299

294:                                              ; preds = %292
  %295 = load i8, ptr %244, align 1, !tbaa !28
  %296 = getelementptr inbounds i8, ptr %232, i64 %288
  %297 = load i8, ptr %296, align 1, !tbaa !28
  %298 = icmp ugt i8 %295, %297
  br i1 %298, label %299, label %305

299:                                              ; preds = %294, %292
  %300 = sext i32 %254 to i64
  %301 = getelementptr inbounds [4 x i8], ptr %231, i64 %300
  store i32 %287, ptr %301, align 4, !tbaa !4
  %302 = shl i32 %284, 1
  %303 = load i32, ptr %153, align 4, !tbaa !48
  %304 = icmp sgt i32 %302, %303
  br i1 %304, label %305, label %251, !llvm.loop !55

305:                                              ; preds = %299, %294, %282, %239
  %306 = phi i32 [ %246, %239 ], [ %254, %282 ], [ %254, %294 ], [ %284, %299 ]
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [4 x i8], ptr %231, i64 %307
  store i32 %242, ptr %308, align 4, !tbaa !4
  %309 = add nsw i64 %240, -1
  %310 = icmp sgt i64 %240, 1
  br i1 %310, label %239, label %235, !llvm.loop !56

311:                                              ; preds = %483, %235
  %312 = phi i32 [ %236, %235 ], [ %486, %483 ]
  %313 = phi i64 [ %238, %235 ], [ %423, %483 ]
  %314 = load i32, ptr %237, align 4, !tbaa !4
  %315 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %312, i32 -1)
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !32
  br i1 %316, label %221, label %317, !prof !34, !nosanitize !32

317:                                              ; preds = %311
  %318 = extractvalue { i32, i1 } %315, 0, !nosanitize !32
  store i32 %318, ptr %153, align 4, !tbaa !48
  %319 = sext i32 %312 to i64
  %320 = getelementptr inbounds [4 x i8], ptr %231, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !4
  store i32 %321, ptr %237, align 4, !tbaa !4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, ptr %232, i64 %322
  %324 = icmp slt i32 %318, 2
  br i1 %324, label %384, label %325

325:                                              ; preds = %317
  %326 = getelementptr inbounds [4 x i8], ptr %147, i64 %322
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
  %337 = getelementptr inbounds [4 x i8], ptr %231, i64 %336
  %338 = load i32, ptr %337, align 4, !tbaa !4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [4 x i8], ptr %147, i64 %339
  %341 = load i16, ptr %340, align 2, !tbaa !28
  %342 = sext i32 %329 to i64
  %343 = getelementptr inbounds [4 x i8], ptr %231, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [4 x i8], ptr %147, i64 %345
  %347 = load i16, ptr %346, align 2, !tbaa !28
  %348 = icmp ult i16 %341, %347
  br i1 %348, label %357, label %349

349:                                              ; preds = %334
  %350 = icmp eq i16 %341, %347
  br i1 %350, label %351, label %358

351:                                              ; preds = %349
  %352 = getelementptr inbounds i8, ptr %232, i64 %339
  %353 = load i8, ptr %352, align 1, !tbaa !28
  %354 = getelementptr inbounds i8, ptr %232, i64 %345
  %355 = load i8, ptr %354, align 1, !tbaa !28
  %356 = icmp ugt i8 %353, %355
  br i1 %356, label %358, label %357

357:                                              ; preds = %351, %334
  br label %358

358:                                              ; preds = %357, %351, %349, %332
  %359 = phi i64 [ %333, %332 ], [ %336, %357 ], [ %342, %351 ], [ %342, %349 ]
  %360 = phi i32 [ %329, %332 ], [ %335, %357 ], [ %329, %351 ], [ %329, %349 ]
  %361 = load i16, ptr %326, align 2, !tbaa !28
  %362 = getelementptr inbounds [4 x i8], ptr %231, i64 %359
  %363 = load i32, ptr %362, align 4, !tbaa !4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [4 x i8], ptr %147, i64 %364
  %366 = load i16, ptr %365, align 2, !tbaa !28
  %367 = icmp ult i16 %361, %366
  br i1 %367, label %381, label %368

368:                                              ; preds = %358
  %369 = icmp eq i16 %361, %366
  br i1 %369, label %370, label %375

370:                                              ; preds = %368
  %371 = load i8, ptr %323, align 1, !tbaa !28
  %372 = getelementptr inbounds i8, ptr %232, i64 %364
  %373 = load i8, ptr %372, align 1, !tbaa !28
  %374 = icmp ugt i8 %371, %373
  br i1 %374, label %375, label %381

375:                                              ; preds = %370, %368
  %376 = sext i32 %330 to i64
  %377 = getelementptr inbounds [4 x i8], ptr %231, i64 %376
  store i32 %363, ptr %377, align 4, !tbaa !4
  %378 = shl i32 %360, 1
  %379 = load i32, ptr %153, align 4, !tbaa !48
  %380 = icmp sgt i32 %378, %379
  br i1 %380, label %381, label %327, !llvm.loop !55

381:                                              ; preds = %375, %370, %358
  %382 = phi i32 [ %330, %358 ], [ %330, %370 ], [ %360, %375 ]
  %383 = sext i32 %382 to i64
  br label %384

384:                                              ; preds = %381, %317
  %385 = phi i64 [ 1, %317 ], [ %383, %381 ]
  %386 = getelementptr inbounds [4 x i8], ptr %231, i64 %385
  store i32 %321, ptr %386, align 4, !tbaa !4
  %387 = load i32, ptr %237, align 4, !tbaa !4
  %388 = load i32, ptr %154, align 8, !tbaa !49
  %389 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %388, i32 -1)
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !32
  br i1 %390, label %221, label %391, !prof !34, !nosanitize !32

391:                                              ; preds = %384
  %392 = extractvalue { i32, i1 } %389, 0, !nosanitize !32
  store i32 %392, ptr %154, align 8, !tbaa !49
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [4 x i8], ptr %231, i64 %393
  store i32 %314, ptr %394, align 4, !tbaa !4
  %395 = load i32, ptr %154, align 8, !tbaa !49
  %396 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %395, i32 -1)
  %397 = extractvalue { i32, i1 } %396, 1, !nosanitize !32
  br i1 %397, label %221, label %398, !prof !34, !nosanitize !32

398:                                              ; preds = %391
  %399 = extractvalue { i32, i1 } %396, 0, !nosanitize !32
  store i32 %399, ptr %154, align 8, !tbaa !49
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [4 x i8], ptr %231, i64 %400
  store i32 %387, ptr %401, align 4, !tbaa !4
  %402 = sext i32 %314 to i64
  %403 = getelementptr inbounds [4 x i8], ptr %147, i64 %402
  %404 = load i16, ptr %403, align 2, !tbaa !28
  %405 = sext i32 %387 to i64
  %406 = getelementptr inbounds [4 x i8], ptr %147, i64 %405
  %407 = load i16, ptr %406, align 2, !tbaa !28
  %408 = add i16 %407, %404
  %409 = getelementptr inbounds [4 x i8], ptr %147, i64 %313
  store i16 %408, ptr %409, align 2, !tbaa !28
  %410 = getelementptr inbounds i8, ptr %232, i64 %402
  %411 = load i8, ptr %410, align 1, !tbaa !28
  %412 = getelementptr inbounds i8, ptr %232, i64 %405
  %413 = load i8, ptr %412, align 1, !tbaa !28
  %414 = tail call i8 @llvm.umax.i8(i8 %411, i8 %413)
  %415 = add i8 %414, 1
  %416 = getelementptr inbounds i8, ptr %232, i64 %313
  store i8 %415, ptr %416, align 1, !tbaa !28
  %417 = trunc nsw i64 %313 to i32
  %418 = trunc i64 %313 to i16
  %419 = getelementptr inbounds nuw i8, ptr %406, i64 2
  store i16 %418, ptr %419, align 2, !tbaa !28
  %420 = getelementptr inbounds nuw i8, ptr %403, i64 2
  store i16 %418, ptr %420, align 2, !tbaa !28
  %421 = icmp eq i64 %313, 2147483647
  br i1 %421, label %181, label %422, !prof !34, !nosanitize !32

422:                                              ; preds = %398
  %423 = add nsw i64 %313, 1
  store i32 %417, ptr %237, align 4, !tbaa !4
  %424 = load i32, ptr %153, align 4, !tbaa !48
  %425 = icmp slt i32 %424, 2
  br i1 %425, label %483, label %426

426:                                              ; preds = %422, %474
  %427 = phi i32 [ %478, %474 ], [ %424, %422 ]
  %428 = phi i32 [ %477, %474 ], [ 2, %422 ]
  %429 = phi i32 [ %459, %474 ], [ 1, %422 ]
  %430 = icmp slt i32 %428, %427
  br i1 %430, label %433, label %431

431:                                              ; preds = %426
  %432 = sext i32 %428 to i64
  br label %457

433:                                              ; preds = %426
  %434 = or disjoint i32 %428, 1
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [4 x i8], ptr %231, i64 %435
  %437 = load i32, ptr %436, align 4, !tbaa !4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [4 x i8], ptr %147, i64 %438
  %440 = load i16, ptr %439, align 2, !tbaa !28
  %441 = sext i32 %428 to i64
  %442 = getelementptr inbounds [4 x i8], ptr %231, i64 %441
  %443 = load i32, ptr %442, align 4, !tbaa !4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [4 x i8], ptr %147, i64 %444
  %446 = load i16, ptr %445, align 2, !tbaa !28
  %447 = icmp ult i16 %440, %446
  br i1 %447, label %456, label %448

448:                                              ; preds = %433
  %449 = icmp eq i16 %440, %446
  br i1 %449, label %450, label %457

450:                                              ; preds = %448
  %451 = getelementptr inbounds i8, ptr %232, i64 %438
  %452 = load i8, ptr %451, align 1, !tbaa !28
  %453 = getelementptr inbounds i8, ptr %232, i64 %444
  %454 = load i8, ptr %453, align 1, !tbaa !28
  %455 = icmp ugt i8 %452, %454
  br i1 %455, label %457, label %456

456:                                              ; preds = %450, %433
  br label %457

457:                                              ; preds = %456, %450, %448, %431
  %458 = phi i64 [ %432, %431 ], [ %435, %456 ], [ %441, %450 ], [ %441, %448 ]
  %459 = phi i32 [ %428, %431 ], [ %434, %456 ], [ %428, %450 ], [ %428, %448 ]
  %460 = load i16, ptr %409, align 2, !tbaa !28
  %461 = getelementptr inbounds [4 x i8], ptr %231, i64 %458
  %462 = load i32, ptr %461, align 4, !tbaa !4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [4 x i8], ptr %147, i64 %463
  %465 = load i16, ptr %464, align 2, !tbaa !28
  %466 = icmp ult i16 %460, %465
  br i1 %466, label %480, label %467

467:                                              ; preds = %457
  %468 = icmp eq i16 %460, %465
  br i1 %468, label %469, label %474

469:                                              ; preds = %467
  %470 = load i8, ptr %416, align 1, !tbaa !28
  %471 = getelementptr inbounds i8, ptr %232, i64 %463
  %472 = load i8, ptr %471, align 1, !tbaa !28
  %473 = icmp ugt i8 %470, %472
  br i1 %473, label %474, label %480

474:                                              ; preds = %469, %467
  %475 = sext i32 %429 to i64
  %476 = getelementptr inbounds [4 x i8], ptr %231, i64 %475
  store i32 %462, ptr %476, align 4, !tbaa !4
  %477 = shl i32 %459, 1
  %478 = load i32, ptr %153, align 4, !tbaa !48
  %479 = icmp sgt i32 %477, %478
  br i1 %479, label %480, label %426, !llvm.loop !55

480:                                              ; preds = %474, %469, %457
  %481 = phi i32 [ %429, %457 ], [ %429, %469 ], [ %459, %474 ]
  %482 = sext i32 %481 to i64
  br label %483

483:                                              ; preds = %480, %422
  %484 = phi i64 [ 1, %422 ], [ %482, %480 ]
  %485 = getelementptr inbounds [4 x i8], ptr %231, i64 %484
  store i32 %417, ptr %485, align 4, !tbaa !4
  %486 = load i32, ptr %153, align 4, !tbaa !48
  %487 = icmp sgt i32 %486, 1
  br i1 %487, label %311, label %488, !llvm.loop !57

488:                                              ; preds = %483
  %489 = load i32, ptr %154, align 8, !tbaa !49
  %490 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %489, i32 -1)
  %491 = extractvalue { i32, i1 } %490, 1, !nosanitize !32
  br i1 %491, label %221, label %492, !prof !34, !nosanitize !32

492:                                              ; preds = %488
  %493 = extractvalue { i32, i1 } %490, 0, !nosanitize !32
  %494 = load i32, ptr %237, align 4, !tbaa !4
  store i32 %493, ptr %154, align 8, !tbaa !49
  %495 = sext i32 %493 to i64
  %496 = getelementptr inbounds [4 x i8], ptr %231, i64 %495
  store i32 %494, ptr %496, align 4, !tbaa !4
  %497 = load ptr, ptr %146, align 8, !tbaa !42
  %498 = load i32, ptr %230, align 8, !tbaa !54
  %499 = load ptr, ptr %148, align 8, !tbaa !43
  %500 = load ptr, ptr %499, align 8, !tbaa !44
  %501 = getelementptr inbounds nuw i8, ptr %499, i64 8
  %502 = load ptr, ptr %501, align 8, !tbaa !58
  %503 = getelementptr inbounds nuw i8, ptr %499, i64 16
  %504 = load i32, ptr %503, align 8, !tbaa !59
  %505 = getelementptr inbounds nuw i8, ptr %499, i64 24
  %506 = load i32, ptr %505, align 8, !tbaa !60
  %507 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %507, i8 0, i64 32, i1 false), !tbaa !61
  %508 = load i32, ptr %154, align 8, !tbaa !49
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [4 x i8], ptr %231, i64 %509
  %511 = load i32, ptr %510, align 4, !tbaa !4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [4 x i8], ptr %497, i64 %512
  %514 = getelementptr inbounds nuw i8, ptr %513, i64 2
  store i16 0, ptr %514, align 2, !tbaa !28
  %515 = load i32, ptr %154, align 8, !tbaa !49
  %516 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %515, i32 1), !nosanitize !32
  %517 = extractvalue { i32, i1 } %516, 1, !nosanitize !32
  br i1 %517, label %518, label %519, !prof !34, !nosanitize !32

518:                                              ; preds = %568, %543, %492
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

519:                                              ; preds = %492
  %520 = extractvalue { i32, i1 } %516, 0
  %521 = icmp slt i32 %520, 573
  br i1 %521, label %522, label %705

522:                                              ; preds = %519
  %523 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %524 = icmp eq ptr %500, null
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %526 = sext i32 %520 to i64
  br label %527

527:                                              ; preds = %601, %522
  %528 = phi i64 [ %526, %522 ], [ %602, %601 ]
  %529 = phi i32 [ 0, %522 ], [ %550, %601 ]
  %530 = getelementptr inbounds [4 x i8], ptr %231, i64 %528
  %531 = load i32, ptr %530, align 4, !tbaa !4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [4 x i8], ptr %497, i64 %532
  %534 = getelementptr inbounds nuw i8, ptr %533, i64 2
  %535 = load i16, ptr %534, align 2, !tbaa !28
  %536 = zext i16 %535 to i64
  %537 = getelementptr inbounds nuw [4 x i8], ptr %497, i64 %536
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 2
  %539 = load i16, ptr %538, align 2, !tbaa !28
  %540 = zext i16 %539 to i32
  %541 = add nuw nsw i32 %540, 1
  %542 = icmp sgt i32 %506, %540
  br i1 %542, label %548, label %543

543:                                              ; preds = %527
  %544 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %529, i32 1), !nosanitize !32
  %545 = extractvalue { i32, i1 } %544, 1, !nosanitize !32
  br i1 %545, label %518, label %546, !prof !34, !nosanitize !32

546:                                              ; preds = %543
  %547 = extractvalue { i32, i1 } %544, 0, !nosanitize !32
  br label %548

548:                                              ; preds = %546, %527
  %549 = phi i32 [ %506, %546 ], [ %541, %527 ]
  %550 = phi i32 [ %547, %546 ], [ %529, %527 ]
  %551 = trunc i32 %549 to i16
  store i16 %551, ptr %534, align 2, !tbaa !28
  %552 = icmp sgt i32 %531, %498
  br i1 %552, label %601, label %553

553:                                              ; preds = %548
  %554 = sext i32 %549 to i64
  %555 = getelementptr inbounds [2 x i8], ptr %507, i64 %554
  %556 = load i16, ptr %555, align 2, !tbaa !61
  %557 = add i16 %556, 1
  store i16 %557, ptr %555, align 2, !tbaa !61
  %558 = icmp slt i32 %531, %504
  br i1 %558, label %568, label %559

559:                                              ; preds = %553
  %560 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %531, i32 %504), !nosanitize !32
  %561 = extractvalue { i32, i1 } %560, 1, !nosanitize !32
  br i1 %561, label %562, label %563, !prof !34, !nosanitize !32

562:                                              ; preds = %559, %629, %621, %657, %662, %607
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

563:                                              ; preds = %559
  %564 = extractvalue { i32, i1 } %560, 0, !nosanitize !32
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [4 x i8], ptr %502, i64 %565
  %567 = load i32, ptr %566, align 4, !tbaa !4
  br label %568

568:                                              ; preds = %563, %553
  %569 = phi i32 [ %567, %563 ], [ 0, %553 ]
  %570 = load i16, ptr %533, align 2, !tbaa !28
  %571 = zext i16 %570 to i64
  %572 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %549, i32 %569), !nosanitize !32
  %573 = extractvalue { i32, i1 } %572, 1, !nosanitize !32
  br i1 %573, label %518, label %574, !prof !34, !nosanitize !32

574:                                              ; preds = %568
  %575 = extractvalue { i32, i1 } %572, 0, !nosanitize !32
  %576 = zext i32 %575 to i64
  %577 = mul nuw nsw i64 %576, %571
  %578 = load i64, ptr %523, align 8, !tbaa !51
  %579 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %578, i64 %577), !nosanitize !32
  %580 = extractvalue { i64, i1 } %579, 1, !nosanitize !32
  br i1 %580, label %581, label %582, !prof !34, !nosanitize !32

581:                                              ; preds = %584, %574
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

582:                                              ; preds = %574
  %583 = extractvalue { i64, i1 } %579, 0, !nosanitize !32
  store i64 %583, ptr %523, align 8, !tbaa !51
  br i1 %524, label %601, label %584

584:                                              ; preds = %582
  %585 = getelementptr inbounds [4 x i8], ptr %500, i64 %532
  %586 = getelementptr inbounds nuw i8, ptr %585, i64 2
  %587 = load i16, ptr %586, align 2, !tbaa !28
  %588 = zext i16 %587 to i32
  %589 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %588, i32 %569), !nosanitize !32
  %590 = extractvalue { i32, i1 } %589, 1, !nosanitize !32
  br i1 %590, label %581, label %591, !prof !34, !nosanitize !32

591:                                              ; preds = %584
  %592 = extractvalue { i32, i1 } %589, 0, !nosanitize !32
  %593 = zext i32 %592 to i64
  %594 = mul nuw nsw i64 %593, %571
  %595 = load i64, ptr %525, align 8, !tbaa !52
  %596 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %595, i64 %594), !nosanitize !32
  %597 = extractvalue { i64, i1 } %596, 1, !nosanitize !32
  br i1 %597, label %598, label %599, !prof !34, !nosanitize !32

598:                                              ; preds = %591, %624
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

599:                                              ; preds = %591
  %600 = extractvalue { i64, i1 } %596, 0, !nosanitize !32
  store i64 %600, ptr %525, align 8, !tbaa !52
  br label %601

601:                                              ; preds = %599, %582, %548
  %602 = add nsw i64 %528, 1
  %603 = and i64 %602, 4294967295
  %604 = icmp eq i64 %603, 573
  br i1 %604, label %605, label %527, !llvm.loop !62

605:                                              ; preds = %601
  %606 = icmp eq i32 %550, 0
  br i1 %606, label %705, label %607

607:                                              ; preds = %605
  %608 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %506, i32 -1)
  %609 = extractvalue { i32, i1 } %608, 1, !nosanitize !32
  %610 = sext i32 %506 to i64
  %611 = getelementptr inbounds [2 x i8], ptr %507, i64 %610
  br i1 %609, label %562, label %612, !prof !34, !nosanitize !32

612:                                              ; preds = %607, %639
  %613 = phi i32 [ %640, %639 ], [ %550, %607 ]
  br label %614

614:                                              ; preds = %621, %612
  %615 = phi { i32, i1 } [ %622, %621 ], [ %608, %612 ]
  %616 = extractvalue { i32, i1 } %615, 0
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [2 x i8], ptr %507, i64 %617
  %619 = load i16, ptr %618, align 2, !tbaa !61
  %620 = icmp eq i16 %619, 0
  br i1 %620, label %621, label %624

621:                                              ; preds = %614
  %622 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %616, i32 -1)
  %623 = extractvalue { i32, i1 } %622, 1, !nosanitize !32
  br i1 %623, label %562, label %614, !prof !34, !llvm.loop !63, !nosanitize !32

624:                                              ; preds = %614
  %625 = getelementptr inbounds [2 x i8], ptr %507, i64 %617
  %626 = add i16 %619, -1
  store i16 %626, ptr %625, align 2, !tbaa !61
  %627 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %616, i32 1), !nosanitize !32
  %628 = extractvalue { i32, i1 } %627, 1, !nosanitize !32
  br i1 %628, label %598, label %629, !prof !34, !nosanitize !32

629:                                              ; preds = %624
  %630 = extractvalue { i32, i1 } %627, 0, !nosanitize !32
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [2 x i8], ptr %507, i64 %631
  %633 = load i16, ptr %632, align 2, !tbaa !61
  %634 = add i16 %633, 2
  store i16 %634, ptr %632, align 2, !tbaa !61
  %635 = load i16, ptr %611, align 2, !tbaa !61
  %636 = add i16 %635, -1
  store i16 %636, ptr %611, align 2, !tbaa !61
  %637 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %613, i32 -2)
  %638 = extractvalue { i32, i1 } %637, 1, !nosanitize !32
  br i1 %638, label %562, label %639, !prof !34, !nosanitize !32

639:                                              ; preds = %629
  %640 = extractvalue { i32, i1 } %637, 0, !nosanitize !32
  %641 = icmp sgt i32 %640, 0
  br i1 %641, label %612, label %642, !llvm.loop !64

642:                                              ; preds = %639
  %643 = icmp eq i32 %506, 0
  br i1 %643, label %705, label %644

644:                                              ; preds = %642, %701
  %645 = phi i64 [ %702, %701 ], [ %610, %642 ]
  %646 = phi i32 [ %654, %701 ], [ 573, %642 ]
  %647 = getelementptr inbounds [2 x i8], ptr %507, i64 %645
  %648 = load i16, ptr %647, align 2, !tbaa !61
  %649 = icmp eq i16 %648, 0
  br i1 %649, label %653, label %650

650:                                              ; preds = %644
  %651 = zext i16 %648 to i32
  %652 = trunc i64 %645 to i16
  br label %657

653:                                              ; preds = %698, %644
  %654 = phi i32 [ %646, %644 ], [ %667, %698 ]
  %655 = and i64 %645, 4294967295
  %656 = icmp eq i64 %655, 2147483648
  br i1 %656, label %682, label %701, !prof !34, !nosanitize !32

657:                                              ; preds = %698, %650
  %658 = phi i32 [ %646, %650 ], [ %667, %698 ]
  %659 = phi i32 [ %651, %650 ], [ %699, %698 ]
  %660 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %658, i32 -1)
  %661 = extractvalue { i32, i1 } %660, 1, !nosanitize !32
  br i1 %661, label %562, label %665, !prof !65, !nosanitize !32

662:                                              ; preds = %665
  %663 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %667, i32 -1)
  %664 = extractvalue { i32, i1 } %663, 1, !nosanitize !32
  br i1 %664, label %562, label %665, !prof !66, !llvm.loop !67, !nosanitize !32

665:                                              ; preds = %657, %662
  %666 = phi { i32, i1 } [ %663, %662 ], [ %660, %657 ]
  %667 = extractvalue { i32, i1 } %666, 0, !nosanitize !32
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [4 x i8], ptr %231, i64 %668
  %670 = load i32, ptr %669, align 4, !tbaa !4
  %671 = icmp sgt i32 %670, %498
  br i1 %671, label %662, label %672, !llvm.loop !67

672:                                              ; preds = %665
  %673 = sext i32 %670 to i64
  %674 = getelementptr inbounds [4 x i8], ptr %497, i64 %673
  %675 = getelementptr inbounds nuw i8, ptr %674, i64 2
  %676 = load i16, ptr %675, align 2, !tbaa !28
  %677 = zext i16 %676 to i64
  %678 = icmp eq i64 %645, %677
  br i1 %678, label %698, label %679

679:                                              ; preds = %672
  %680 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %645, i64 %677), !nosanitize !32
  %681 = extractvalue { i64, i1 } %680, 1, !nosanitize !32
  br i1 %681, label %682, label %683, !prof !34, !nosanitize !32

682:                                              ; preds = %653, %679
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

683:                                              ; preds = %679
  %684 = extractvalue { i64, i1 } %680, 0, !nosanitize !32
  %685 = load i16, ptr %674, align 2, !tbaa !28
  %686 = zext i16 %685 to i64
  %687 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %684, i64 %686), !nosanitize !32
  %688 = extractvalue { i64, i1 } %687, 1, !nosanitize !32
  br i1 %688, label %689, label %690, !prof !34, !nosanitize !32

689:                                              ; preds = %683
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !32
  unreachable, !nosanitize !32

690:                                              ; preds = %683
  %691 = extractvalue { i64, i1 } %687, 0, !nosanitize !32
  %692 = load i64, ptr %523, align 8, !tbaa !51
  %693 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %692, i64 %691), !nosanitize !32
  %694 = extractvalue { i64, i1 } %693, 1, !nosanitize !32
  br i1 %694, label %695, label %696, !prof !34, !nosanitize !32

695:                                              ; preds = %690
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

696:                                              ; preds = %690
  %697 = extractvalue { i64, i1 } %693, 0, !nosanitize !32
  store i64 %697, ptr %523, align 8, !tbaa !51
  store i16 %652, ptr %675, align 2, !tbaa !28
  br label %698

698:                                              ; preds = %696, %672
  %699 = add nsw i32 %659, -1
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %653, label %657, !llvm.loop !67

701:                                              ; preds = %653
  %702 = add nsw i64 %645, -1
  %703 = and i64 %702, 4294967295
  %704 = icmp eq i64 %703, 0
  br i1 %704, label %705, label %644, !llvm.loop !68

705:                                              ; preds = %701, %642, %605, %519
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %706 = load i16, ptr %507, align 2, !tbaa !61
  %707 = zext i16 %706 to i32
  %708 = shl nuw nsw i32 %707, 1
  %709 = trunc i32 %708 to i16
  %710 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %709, ptr %710, align 2, !tbaa !61
  %711 = getelementptr i8, ptr %0, i64 2978
  %712 = load i16, ptr %711, align 2, !tbaa !61
  %713 = zext i16 %712 to i32
  %714 = add nuw nsw i32 %708, %713
  %715 = shl nuw nsw i32 %714, 1
  %716 = trunc i32 %715 to i16
  %717 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %716, ptr %717, align 4, !tbaa !61
  %718 = getelementptr i8, ptr %0, i64 2980
  %719 = load i16, ptr %718, align 2, !tbaa !61
  %720 = zext i16 %719 to i32
  %721 = add nuw nsw i32 %715, %720
  %722 = shl nuw nsw i32 %721, 1
  %723 = trunc i32 %722 to i16
  %724 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %723, ptr %724, align 2, !tbaa !61
  %725 = getelementptr i8, ptr %0, i64 2982
  %726 = load i16, ptr %725, align 2, !tbaa !61
  %727 = zext i16 %726 to i32
  %728 = add nuw nsw i32 %722, %727
  %729 = shl nuw nsw i32 %728, 1
  %730 = trunc i32 %729 to i16
  %731 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %730, ptr %731, align 8, !tbaa !61
  %732 = getelementptr i8, ptr %0, i64 2984
  %733 = load i16, ptr %732, align 2, !tbaa !61
  %734 = zext i16 %733 to i32
  %735 = add nuw nsw i32 %729, %734
  %736 = shl nuw nsw i32 %735, 1
  %737 = trunc i32 %736 to i16
  %738 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %737, ptr %738, align 2, !tbaa !61
  %739 = getelementptr i8, ptr %0, i64 2986
  %740 = load i16, ptr %739, align 2, !tbaa !61
  %741 = zext i16 %740 to i32
  %742 = add nuw nsw i32 %736, %741
  %743 = shl nuw nsw i32 %742, 1
  %744 = trunc i32 %743 to i16
  %745 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %744, ptr %745, align 4, !tbaa !61
  %746 = getelementptr i8, ptr %0, i64 2988
  %747 = load i16, ptr %746, align 2, !tbaa !61
  %748 = zext i16 %747 to i32
  %749 = add nuw nsw i32 %743, %748
  %750 = shl nuw nsw i32 %749, 1
  %751 = trunc i32 %750 to i16
  %752 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %751, ptr %752, align 2, !tbaa !61
  %753 = getelementptr i8, ptr %0, i64 2990
  %754 = load i16, ptr %753, align 2, !tbaa !61
  %755 = zext i16 %754 to i32
  %756 = add nuw nsw i32 %750, %755
  %757 = shl nuw nsw i32 %756, 1
  %758 = trunc i32 %757 to i16
  %759 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %758, ptr %759, align 16, !tbaa !61
  %760 = getelementptr i8, ptr %0, i64 2992
  %761 = load i16, ptr %760, align 2, !tbaa !61
  %762 = zext i16 %761 to i32
  %763 = add nuw nsw i32 %757, %762
  %764 = shl nuw nsw i32 %763, 1
  %765 = trunc i32 %764 to i16
  %766 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %765, ptr %766, align 2, !tbaa !61
  %767 = getelementptr i8, ptr %0, i64 2994
  %768 = load i16, ptr %767, align 2, !tbaa !61
  %769 = zext i16 %768 to i32
  %770 = add nuw nsw i32 %764, %769
  %771 = shl nuw nsw i32 %770, 1
  %772 = trunc i32 %771 to i16
  %773 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %772, ptr %773, align 4, !tbaa !61
  %774 = getelementptr i8, ptr %0, i64 2996
  %775 = load i16, ptr %774, align 2, !tbaa !61
  %776 = trunc i32 %771 to i16
  %777 = add i16 %775, %776
  %778 = shl i16 %777, 1
  %779 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %778, ptr %779, align 2, !tbaa !61
  %780 = getelementptr i8, ptr %0, i64 2998
  %781 = load i16, ptr %780, align 2, !tbaa !61
  %782 = add i16 %781, %778
  %783 = shl i16 %782, 1
  %784 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %783, ptr %784, align 8, !tbaa !61
  %785 = getelementptr i8, ptr %0, i64 3000
  %786 = load i16, ptr %785, align 2, !tbaa !61
  %787 = add i16 %783, %786
  %788 = shl i16 %787, 1
  %789 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %788, ptr %789, align 2, !tbaa !61
  %790 = getelementptr i8, ptr %0, i64 3002
  %791 = load i16, ptr %790, align 2, !tbaa !61
  %792 = add i16 %788, %791
  %793 = shl i16 %792, 1
  %794 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %793, ptr %794, align 4, !tbaa !61
  %795 = getelementptr i8, ptr %0, i64 3004
  %796 = load i16, ptr %795, align 2, !tbaa !61
  %797 = add i16 %793, %796
  %798 = shl i16 %797, 1
  %799 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %798, ptr %799, align 2, !tbaa !61
  %800 = icmp slt i32 %228, 0
  br i1 %800, label %862, label %802

801:                                              ; preds = %856
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

802:                                              ; preds = %705, %858
  %803 = phi i64 [ %859, %858 ], [ 0, %705 ]
  %804 = getelementptr inbounds nuw [4 x i8], ptr %147, i64 %803
  %805 = getelementptr inbounds nuw i8, ptr %804, i64 2
  %806 = load i16, ptr %805, align 2, !tbaa !28
  %807 = icmp eq i16 %806, 0
  br i1 %807, label %856, label %808

808:                                              ; preds = %802
  %809 = zext i16 %806 to i32
  %810 = zext i16 %806 to i64
  %811 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %810
  %812 = load i16, ptr %811, align 2, !tbaa !61
  %813 = add i16 %812, 1
  store i16 %813, ptr %811, align 2, !tbaa !61
  %814 = and i32 %809, 3
  %815 = icmp ult i16 %806, 4
  br i1 %815, label %840, label %816

816:                                              ; preds = %808
  %817 = and i32 %809, 65532
  br label %818

818:                                              ; preds = %818, %816
  %819 = phi i16 [ %812, %816 ], [ %835, %818 ]
  %820 = phi i16 [ 0, %816 ], [ %834, %818 ]
  %821 = phi i32 [ 0, %816 ], [ %836, %818 ]
  %822 = and i16 %819, 1
  %823 = or disjoint i16 %820, %822
  %824 = shl i16 %823, 2
  %825 = and i16 %819, 2
  %826 = or disjoint i16 %824, %825
  %827 = lshr i16 %819, 2
  %828 = and i16 %827, 1
  %829 = or disjoint i16 %826, %828
  %830 = shl i16 %829, 1
  %831 = lshr i16 %819, 3
  %832 = and i16 %831, 1
  %833 = or disjoint i16 %830, %832
  %834 = shl i16 %833, 1
  %835 = lshr i16 %819, 4
  %836 = add i32 %821, 4
  %837 = icmp eq i32 %836, %817
  br i1 %837, label %838, label %818, !llvm.loop !69

838:                                              ; preds = %818
  %839 = icmp eq i32 %814, 0
  br i1 %839, label %854, label %840

840:                                              ; preds = %838, %808
  %841 = phi i16 [ %812, %808 ], [ %835, %838 ]
  %842 = phi i16 [ 0, %808 ], [ %834, %838 ]
  %843 = icmp ne i32 %814, 0
  tail call void @llvm.assume(i1 %843)
  br label %844

844:                                              ; preds = %844, %840
  %845 = phi i16 [ %841, %840 ], [ %851, %844 ]
  %846 = phi i16 [ %842, %840 ], [ %850, %844 ]
  %847 = phi i32 [ 0, %840 ], [ %852, %844 ]
  %848 = and i16 %845, 1
  %849 = or disjoint i16 %846, %848
  %850 = shl i16 %849, 1
  %851 = lshr i16 %845, 1
  %852 = add i32 %847, 1
  %853 = icmp eq i32 %852, %814
  br i1 %853, label %854, label %844, !llvm.loop !70

854:                                              ; preds = %844, %838
  %855 = phi i16 [ %833, %838 ], [ %849, %844 ]
  store i16 %855, ptr %804, align 2, !tbaa !28
  br label %856

856:                                              ; preds = %854, %802
  %857 = icmp eq i64 %803, 2147483647
  br i1 %857, label %801, label %858, !prof !34, !nosanitize !32

858:                                              ; preds = %856
  %859 = add nuw nsw i64 %803, 1
  %860 = trunc i64 %859 to i32
  %861 = icmp slt i32 %228, %860
  br i1 %861, label %862, label %802, !llvm.loop !72

862:                                              ; preds = %858, %705
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %863 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %864 = load ptr, ptr %863, align 8, !tbaa !42
  %865 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %866 = load ptr, ptr %865, align 8, !tbaa !43
  %867 = load ptr, ptr %866, align 8, !tbaa !44
  %868 = getelementptr inbounds nuw i8, ptr %866, i64 20
  %869 = load i32, ptr %868, align 4, !tbaa !47
  store i32 0, ptr %153, align 4, !tbaa !48
  store i32 573, ptr %154, align 8, !tbaa !49
  %870 = icmp sgt i32 %869, 0
  br i1 %870, label %871, label %876

871:                                              ; preds = %862
  %872 = zext nneg i32 %869 to i64
  br label %882

873:                                              ; preds = %901
  %874 = load i32, ptr %153, align 4, !tbaa !48
  %875 = icmp slt i32 %874, 2
  br i1 %875, label %876, label %938

876:                                              ; preds = %873, %862
  %877 = phi i32 [ %902, %873 ], [ -1, %862 ]
  %878 = phi i32 [ %874, %873 ], [ 0, %862 ]
  %879 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %880 = icmp eq ptr %867, null
  %881 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %905

882:                                              ; preds = %901, %871
  %883 = phi i64 [ 0, %871 ], [ %903, %901 ]
  %884 = phi i32 [ -1, %871 ], [ %902, %901 ]
  %885 = getelementptr inbounds nuw [4 x i8], ptr %864, i64 %883
  %886 = load i16, ptr %885, align 2, !tbaa !28
  %887 = icmp eq i16 %886, 0
  br i1 %887, label %899, label %888

888:                                              ; preds = %882
  %889 = load i32, ptr %153, align 4, !tbaa !48
  %890 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %889, i32 1), !nosanitize !32
  %891 = extractvalue { i32, i1 } %890, 1, !nosanitize !32
  br i1 %891, label %892, label %893, !prof !34, !nosanitize !32

892:                                              ; preds = %888, %1106
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

893:                                              ; preds = %888
  %894 = extractvalue { i32, i1 } %890, 0, !nosanitize !32
  store i32 %894, ptr %153, align 4, !tbaa !48
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds [4 x i8], ptr %231, i64 %895
  %897 = trunc nuw nsw i64 %883 to i32
  store i32 %897, ptr %896, align 4, !tbaa !4
  %898 = getelementptr inbounds nuw i8, ptr %232, i64 %883
  store i8 0, ptr %898, align 1, !tbaa !28
  br label %901

899:                                              ; preds = %882
  %900 = getelementptr inbounds nuw i8, ptr %885, i64 2
  store i16 0, ptr %900, align 2, !tbaa !28
  br label %901

901:                                              ; preds = %899, %893
  %902 = phi i32 [ %897, %893 ], [ %884, %899 ]
  %903 = add nuw nsw i64 %883, 1
  %904 = icmp eq i64 %903, %872
  br i1 %904, label %873, label %882, !llvm.loop !50

905:                                              ; preds = %935, %876
  %906 = phi i32 [ %878, %876 ], [ %936, %935 ]
  %907 = phi i32 [ %877, %876 ], [ %910, %935 ]
  %908 = icmp slt i32 %907, 2
  %909 = add i32 %907, 1
  %910 = select i1 %908, i32 %909, i32 %907
  %911 = add nsw i32 %906, 1
  %912 = select i1 %908, i32 %909, i32 0
  store i32 %911, ptr %153, align 4, !tbaa !48
  %913 = sext i32 %911 to i64
  %914 = getelementptr inbounds [4 x i8], ptr %231, i64 %913
  store i32 %912, ptr %914, align 4, !tbaa !4
  %915 = sext i32 %912 to i64
  %916 = getelementptr inbounds [4 x i8], ptr %864, i64 %915
  store i16 1, ptr %916, align 2, !tbaa !28
  %917 = getelementptr inbounds i8, ptr %232, i64 %915
  store i8 0, ptr %917, align 1, !tbaa !28
  %918 = load i64, ptr %879, align 8, !tbaa !51
  %919 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %918, i64 1), !nosanitize !32
  %920 = extractvalue { i64, i1 } %919, 1, !nosanitize !32
  br i1 %920, label %921, label %922, !prof !34, !nosanitize !32

921:                                              ; preds = %905
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

922:                                              ; preds = %905
  %923 = extractvalue { i64, i1 } %919, 0, !nosanitize !32
  store i64 %923, ptr %879, align 8, !tbaa !51
  br i1 %880, label %935, label %924

924:                                              ; preds = %922
  %925 = getelementptr inbounds [4 x i8], ptr %867, i64 %915
  %926 = getelementptr inbounds nuw i8, ptr %925, i64 2
  %927 = load i16, ptr %926, align 2, !tbaa !28
  %928 = zext i16 %927 to i64
  %929 = load i64, ptr %881, align 8, !tbaa !52
  %930 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %929, i64 %928), !nosanitize !32
  %931 = extractvalue { i64, i1 } %930, 1, !nosanitize !32
  br i1 %931, label %932, label %933, !prof !34, !nosanitize !32

932:                                              ; preds = %924, %1099, %1092, %1019, %1196
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

933:                                              ; preds = %924
  %934 = extractvalue { i64, i1 } %930, 0, !nosanitize !32
  store i64 %934, ptr %881, align 8, !tbaa !52
  br label %935

935:                                              ; preds = %933, %922
  %936 = load i32, ptr %153, align 4, !tbaa !48
  %937 = icmp slt i32 %936, 2
  br i1 %937, label %905, label %938, !llvm.loop !53

938:                                              ; preds = %935, %873
  %939 = phi i32 [ %902, %873 ], [ %910, %935 ]
  %940 = phi i32 [ %874, %873 ], [ %936, %935 ]
  %941 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %939, ptr %941, align 8, !tbaa !54
  %942 = lshr i32 %940, 1
  %943 = zext nneg i32 %942 to i64
  br label %947

944:                                              ; preds = %1013
  %945 = load i32, ptr %153, align 4, !tbaa !48
  %946 = sext i32 %869 to i64
  br label %1019

947:                                              ; preds = %1013, %938
  %948 = phi i64 [ %943, %938 ], [ %1017, %1013 ]
  %949 = getelementptr inbounds nuw [4 x i8], ptr %231, i64 %948
  %950 = load i32, ptr %949, align 4, !tbaa !4
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds i8, ptr %232, i64 %951
  %953 = load i32, ptr %153, align 4, !tbaa !48
  %954 = trunc i64 %948 to i32
  %955 = shl i32 %954, 1
  %956 = icmp sgt i32 %955, %953
  br i1 %956, label %1013, label %957

957:                                              ; preds = %947
  %958 = getelementptr inbounds [4 x i8], ptr %864, i64 %951
  br label %959

959:                                              ; preds = %1007, %957
  %960 = phi i32 [ %953, %957 ], [ %1011, %1007 ]
  %961 = phi i32 [ %955, %957 ], [ %1010, %1007 ]
  %962 = phi i32 [ %954, %957 ], [ %992, %1007 ]
  %963 = icmp slt i32 %961, %960
  br i1 %963, label %966, label %964

964:                                              ; preds = %959
  %965 = sext i32 %961 to i64
  br label %990

966:                                              ; preds = %959
  %967 = or disjoint i32 %961, 1
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds [4 x i8], ptr %231, i64 %968
  %970 = load i32, ptr %969, align 4, !tbaa !4
  %971 = sext i32 %970 to i64
  %972 = getelementptr inbounds [4 x i8], ptr %864, i64 %971
  %973 = load i16, ptr %972, align 2, !tbaa !28
  %974 = sext i32 %961 to i64
  %975 = getelementptr inbounds [4 x i8], ptr %231, i64 %974
  %976 = load i32, ptr %975, align 4, !tbaa !4
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds [4 x i8], ptr %864, i64 %977
  %979 = load i16, ptr %978, align 2, !tbaa !28
  %980 = icmp ult i16 %973, %979
  br i1 %980, label %989, label %981

981:                                              ; preds = %966
  %982 = icmp eq i16 %973, %979
  br i1 %982, label %983, label %990

983:                                              ; preds = %981
  %984 = getelementptr inbounds i8, ptr %232, i64 %971
  %985 = load i8, ptr %984, align 1, !tbaa !28
  %986 = getelementptr inbounds i8, ptr %232, i64 %977
  %987 = load i8, ptr %986, align 1, !tbaa !28
  %988 = icmp ugt i8 %985, %987
  br i1 %988, label %990, label %989

989:                                              ; preds = %983, %966
  br label %990

990:                                              ; preds = %989, %983, %981, %964
  %991 = phi i64 [ %965, %964 ], [ %968, %989 ], [ %974, %983 ], [ %974, %981 ]
  %992 = phi i32 [ %961, %964 ], [ %967, %989 ], [ %961, %983 ], [ %961, %981 ]
  %993 = load i16, ptr %958, align 2, !tbaa !28
  %994 = getelementptr inbounds [4 x i8], ptr %231, i64 %991
  %995 = load i32, ptr %994, align 4, !tbaa !4
  %996 = sext i32 %995 to i64
  %997 = getelementptr inbounds [4 x i8], ptr %864, i64 %996
  %998 = load i16, ptr %997, align 2, !tbaa !28
  %999 = icmp ult i16 %993, %998
  br i1 %999, label %1013, label %1000

1000:                                             ; preds = %990
  %1001 = icmp eq i16 %993, %998
  br i1 %1001, label %1002, label %1007

1002:                                             ; preds = %1000
  %1003 = load i8, ptr %952, align 1, !tbaa !28
  %1004 = getelementptr inbounds i8, ptr %232, i64 %996
  %1005 = load i8, ptr %1004, align 1, !tbaa !28
  %1006 = icmp ugt i8 %1003, %1005
  br i1 %1006, label %1007, label %1013

1007:                                             ; preds = %1002, %1000
  %1008 = sext i32 %962 to i64
  %1009 = getelementptr inbounds [4 x i8], ptr %231, i64 %1008
  store i32 %995, ptr %1009, align 4, !tbaa !4
  %1010 = shl i32 %992, 1
  %1011 = load i32, ptr %153, align 4, !tbaa !48
  %1012 = icmp sgt i32 %1010, %1011
  br i1 %1012, label %1013, label %959, !llvm.loop !55

1013:                                             ; preds = %1007, %1002, %990, %947
  %1014 = phi i32 [ %954, %947 ], [ %962, %990 ], [ %962, %1002 ], [ %992, %1007 ]
  %1015 = sext i32 %1014 to i64
  %1016 = getelementptr inbounds [4 x i8], ptr %231, i64 %1015
  store i32 %950, ptr %1016, align 4, !tbaa !4
  %1017 = add nsw i64 %948, -1
  %1018 = icmp sgt i64 %948, 1
  br i1 %1018, label %947, label %944, !llvm.loop !56

1019:                                             ; preds = %1191, %944
  %1020 = phi i32 [ %945, %944 ], [ %1194, %1191 ]
  %1021 = phi i64 [ %946, %944 ], [ %1131, %1191 ]
  %1022 = load i32, ptr %237, align 4, !tbaa !4
  %1023 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1020, i32 -1)
  %1024 = extractvalue { i32, i1 } %1023, 1, !nosanitize !32
  br i1 %1024, label %932, label %1025, !prof !34, !nosanitize !32

1025:                                             ; preds = %1019
  %1026 = extractvalue { i32, i1 } %1023, 0, !nosanitize !32
  store i32 %1026, ptr %153, align 4, !tbaa !48
  %1027 = sext i32 %1020 to i64
  %1028 = getelementptr inbounds [4 x i8], ptr %231, i64 %1027
  %1029 = load i32, ptr %1028, align 4, !tbaa !4
  store i32 %1029, ptr %237, align 4, !tbaa !4
  %1030 = sext i32 %1029 to i64
  %1031 = getelementptr inbounds i8, ptr %232, i64 %1030
  %1032 = icmp slt i32 %1026, 2
  br i1 %1032, label %1092, label %1033

1033:                                             ; preds = %1025
  %1034 = getelementptr inbounds [4 x i8], ptr %864, i64 %1030
  br label %1035

1035:                                             ; preds = %1083, %1033
  %1036 = phi i32 [ %1026, %1033 ], [ %1087, %1083 ]
  %1037 = phi i32 [ 2, %1033 ], [ %1086, %1083 ]
  %1038 = phi i32 [ 1, %1033 ], [ %1068, %1083 ]
  %1039 = icmp slt i32 %1037, %1036
  br i1 %1039, label %1042, label %1040

1040:                                             ; preds = %1035
  %1041 = sext i32 %1037 to i64
  br label %1066

1042:                                             ; preds = %1035
  %1043 = or disjoint i32 %1037, 1
  %1044 = sext i32 %1043 to i64
  %1045 = getelementptr inbounds [4 x i8], ptr %231, i64 %1044
  %1046 = load i32, ptr %1045, align 4, !tbaa !4
  %1047 = sext i32 %1046 to i64
  %1048 = getelementptr inbounds [4 x i8], ptr %864, i64 %1047
  %1049 = load i16, ptr %1048, align 2, !tbaa !28
  %1050 = sext i32 %1037 to i64
  %1051 = getelementptr inbounds [4 x i8], ptr %231, i64 %1050
  %1052 = load i32, ptr %1051, align 4, !tbaa !4
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds [4 x i8], ptr %864, i64 %1053
  %1055 = load i16, ptr %1054, align 2, !tbaa !28
  %1056 = icmp ult i16 %1049, %1055
  br i1 %1056, label %1065, label %1057

1057:                                             ; preds = %1042
  %1058 = icmp eq i16 %1049, %1055
  br i1 %1058, label %1059, label %1066

1059:                                             ; preds = %1057
  %1060 = getelementptr inbounds i8, ptr %232, i64 %1047
  %1061 = load i8, ptr %1060, align 1, !tbaa !28
  %1062 = getelementptr inbounds i8, ptr %232, i64 %1053
  %1063 = load i8, ptr %1062, align 1, !tbaa !28
  %1064 = icmp ugt i8 %1061, %1063
  br i1 %1064, label %1066, label %1065

1065:                                             ; preds = %1059, %1042
  br label %1066

1066:                                             ; preds = %1065, %1059, %1057, %1040
  %1067 = phi i64 [ %1041, %1040 ], [ %1044, %1065 ], [ %1050, %1059 ], [ %1050, %1057 ]
  %1068 = phi i32 [ %1037, %1040 ], [ %1043, %1065 ], [ %1037, %1059 ], [ %1037, %1057 ]
  %1069 = load i16, ptr %1034, align 2, !tbaa !28
  %1070 = getelementptr inbounds [4 x i8], ptr %231, i64 %1067
  %1071 = load i32, ptr %1070, align 4, !tbaa !4
  %1072 = sext i32 %1071 to i64
  %1073 = getelementptr inbounds [4 x i8], ptr %864, i64 %1072
  %1074 = load i16, ptr %1073, align 2, !tbaa !28
  %1075 = icmp ult i16 %1069, %1074
  br i1 %1075, label %1089, label %1076

1076:                                             ; preds = %1066
  %1077 = icmp eq i16 %1069, %1074
  br i1 %1077, label %1078, label %1083

1078:                                             ; preds = %1076
  %1079 = load i8, ptr %1031, align 1, !tbaa !28
  %1080 = getelementptr inbounds i8, ptr %232, i64 %1072
  %1081 = load i8, ptr %1080, align 1, !tbaa !28
  %1082 = icmp ugt i8 %1079, %1081
  br i1 %1082, label %1083, label %1089

1083:                                             ; preds = %1078, %1076
  %1084 = sext i32 %1038 to i64
  %1085 = getelementptr inbounds [4 x i8], ptr %231, i64 %1084
  store i32 %1071, ptr %1085, align 4, !tbaa !4
  %1086 = shl i32 %1068, 1
  %1087 = load i32, ptr %153, align 4, !tbaa !48
  %1088 = icmp sgt i32 %1086, %1087
  br i1 %1088, label %1089, label %1035, !llvm.loop !55

1089:                                             ; preds = %1083, %1078, %1066
  %1090 = phi i32 [ %1038, %1066 ], [ %1038, %1078 ], [ %1068, %1083 ]
  %1091 = sext i32 %1090 to i64
  br label %1092

1092:                                             ; preds = %1089, %1025
  %1093 = phi i64 [ 1, %1025 ], [ %1091, %1089 ]
  %1094 = getelementptr inbounds [4 x i8], ptr %231, i64 %1093
  store i32 %1029, ptr %1094, align 4, !tbaa !4
  %1095 = load i32, ptr %237, align 4, !tbaa !4
  %1096 = load i32, ptr %154, align 8, !tbaa !49
  %1097 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1096, i32 -1)
  %1098 = extractvalue { i32, i1 } %1097, 1, !nosanitize !32
  br i1 %1098, label %932, label %1099, !prof !34, !nosanitize !32

1099:                                             ; preds = %1092
  %1100 = extractvalue { i32, i1 } %1097, 0, !nosanitize !32
  store i32 %1100, ptr %154, align 8, !tbaa !49
  %1101 = sext i32 %1100 to i64
  %1102 = getelementptr inbounds [4 x i8], ptr %231, i64 %1101
  store i32 %1022, ptr %1102, align 4, !tbaa !4
  %1103 = load i32, ptr %154, align 8, !tbaa !49
  %1104 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1103, i32 -1)
  %1105 = extractvalue { i32, i1 } %1104, 1, !nosanitize !32
  br i1 %1105, label %932, label %1106, !prof !34, !nosanitize !32

1106:                                             ; preds = %1099
  %1107 = extractvalue { i32, i1 } %1104, 0, !nosanitize !32
  store i32 %1107, ptr %154, align 8, !tbaa !49
  %1108 = sext i32 %1107 to i64
  %1109 = getelementptr inbounds [4 x i8], ptr %231, i64 %1108
  store i32 %1095, ptr %1109, align 4, !tbaa !4
  %1110 = sext i32 %1022 to i64
  %1111 = getelementptr inbounds [4 x i8], ptr %864, i64 %1110
  %1112 = load i16, ptr %1111, align 2, !tbaa !28
  %1113 = sext i32 %1095 to i64
  %1114 = getelementptr inbounds [4 x i8], ptr %864, i64 %1113
  %1115 = load i16, ptr %1114, align 2, !tbaa !28
  %1116 = add i16 %1115, %1112
  %1117 = getelementptr inbounds [4 x i8], ptr %864, i64 %1021
  store i16 %1116, ptr %1117, align 2, !tbaa !28
  %1118 = getelementptr inbounds i8, ptr %232, i64 %1110
  %1119 = load i8, ptr %1118, align 1, !tbaa !28
  %1120 = getelementptr inbounds i8, ptr %232, i64 %1113
  %1121 = load i8, ptr %1120, align 1, !tbaa !28
  %1122 = tail call i8 @llvm.umax.i8(i8 %1119, i8 %1121)
  %1123 = add i8 %1122, 1
  %1124 = getelementptr inbounds i8, ptr %232, i64 %1021
  store i8 %1123, ptr %1124, align 1, !tbaa !28
  %1125 = trunc nsw i64 %1021 to i32
  %1126 = trunc i64 %1021 to i16
  %1127 = getelementptr inbounds nuw i8, ptr %1114, i64 2
  store i16 %1126, ptr %1127, align 2, !tbaa !28
  %1128 = getelementptr inbounds nuw i8, ptr %1111, i64 2
  store i16 %1126, ptr %1128, align 2, !tbaa !28
  %1129 = icmp eq i64 %1021, 2147483647
  br i1 %1129, label %892, label %1130, !prof !34, !nosanitize !32

1130:                                             ; preds = %1106
  %1131 = add nsw i64 %1021, 1
  store i32 %1125, ptr %237, align 4, !tbaa !4
  %1132 = load i32, ptr %153, align 4, !tbaa !48
  %1133 = icmp slt i32 %1132, 2
  br i1 %1133, label %1191, label %1134

1134:                                             ; preds = %1130, %1182
  %1135 = phi i32 [ %1186, %1182 ], [ %1132, %1130 ]
  %1136 = phi i32 [ %1185, %1182 ], [ 2, %1130 ]
  %1137 = phi i32 [ %1167, %1182 ], [ 1, %1130 ]
  %1138 = icmp slt i32 %1136, %1135
  br i1 %1138, label %1141, label %1139

1139:                                             ; preds = %1134
  %1140 = sext i32 %1136 to i64
  br label %1165

1141:                                             ; preds = %1134
  %1142 = or disjoint i32 %1136, 1
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds [4 x i8], ptr %231, i64 %1143
  %1145 = load i32, ptr %1144, align 4, !tbaa !4
  %1146 = sext i32 %1145 to i64
  %1147 = getelementptr inbounds [4 x i8], ptr %864, i64 %1146
  %1148 = load i16, ptr %1147, align 2, !tbaa !28
  %1149 = sext i32 %1136 to i64
  %1150 = getelementptr inbounds [4 x i8], ptr %231, i64 %1149
  %1151 = load i32, ptr %1150, align 4, !tbaa !4
  %1152 = sext i32 %1151 to i64
  %1153 = getelementptr inbounds [4 x i8], ptr %864, i64 %1152
  %1154 = load i16, ptr %1153, align 2, !tbaa !28
  %1155 = icmp ult i16 %1148, %1154
  br i1 %1155, label %1164, label %1156

1156:                                             ; preds = %1141
  %1157 = icmp eq i16 %1148, %1154
  br i1 %1157, label %1158, label %1165

1158:                                             ; preds = %1156
  %1159 = getelementptr inbounds i8, ptr %232, i64 %1146
  %1160 = load i8, ptr %1159, align 1, !tbaa !28
  %1161 = getelementptr inbounds i8, ptr %232, i64 %1152
  %1162 = load i8, ptr %1161, align 1, !tbaa !28
  %1163 = icmp ugt i8 %1160, %1162
  br i1 %1163, label %1165, label %1164

1164:                                             ; preds = %1158, %1141
  br label %1165

1165:                                             ; preds = %1164, %1158, %1156, %1139
  %1166 = phi i64 [ %1140, %1139 ], [ %1143, %1164 ], [ %1149, %1158 ], [ %1149, %1156 ]
  %1167 = phi i32 [ %1136, %1139 ], [ %1142, %1164 ], [ %1136, %1158 ], [ %1136, %1156 ]
  %1168 = load i16, ptr %1117, align 2, !tbaa !28
  %1169 = getelementptr inbounds [4 x i8], ptr %231, i64 %1166
  %1170 = load i32, ptr %1169, align 4, !tbaa !4
  %1171 = sext i32 %1170 to i64
  %1172 = getelementptr inbounds [4 x i8], ptr %864, i64 %1171
  %1173 = load i16, ptr %1172, align 2, !tbaa !28
  %1174 = icmp ult i16 %1168, %1173
  br i1 %1174, label %1188, label %1175

1175:                                             ; preds = %1165
  %1176 = icmp eq i16 %1168, %1173
  br i1 %1176, label %1177, label %1182

1177:                                             ; preds = %1175
  %1178 = load i8, ptr %1124, align 1, !tbaa !28
  %1179 = getelementptr inbounds i8, ptr %232, i64 %1171
  %1180 = load i8, ptr %1179, align 1, !tbaa !28
  %1181 = icmp ugt i8 %1178, %1180
  br i1 %1181, label %1182, label %1188

1182:                                             ; preds = %1177, %1175
  %1183 = sext i32 %1137 to i64
  %1184 = getelementptr inbounds [4 x i8], ptr %231, i64 %1183
  store i32 %1170, ptr %1184, align 4, !tbaa !4
  %1185 = shl i32 %1167, 1
  %1186 = load i32, ptr %153, align 4, !tbaa !48
  %1187 = icmp sgt i32 %1185, %1186
  br i1 %1187, label %1188, label %1134, !llvm.loop !55

1188:                                             ; preds = %1182, %1177, %1165
  %1189 = phi i32 [ %1137, %1165 ], [ %1137, %1177 ], [ %1167, %1182 ]
  %1190 = sext i32 %1189 to i64
  br label %1191

1191:                                             ; preds = %1188, %1130
  %1192 = phi i64 [ 1, %1130 ], [ %1190, %1188 ]
  %1193 = getelementptr inbounds [4 x i8], ptr %231, i64 %1192
  store i32 %1125, ptr %1193, align 4, !tbaa !4
  %1194 = load i32, ptr %153, align 4, !tbaa !48
  %1195 = icmp sgt i32 %1194, 1
  br i1 %1195, label %1019, label %1196, !llvm.loop !57

1196:                                             ; preds = %1191
  %1197 = load i32, ptr %154, align 8, !tbaa !49
  %1198 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1197, i32 -1)
  %1199 = extractvalue { i32, i1 } %1198, 1, !nosanitize !32
  br i1 %1199, label %932, label %1200, !prof !34, !nosanitize !32

1200:                                             ; preds = %1196
  %1201 = extractvalue { i32, i1 } %1198, 0, !nosanitize !32
  %1202 = load i32, ptr %237, align 4, !tbaa !4
  store i32 %1201, ptr %154, align 8, !tbaa !49
  %1203 = sext i32 %1201 to i64
  %1204 = getelementptr inbounds [4 x i8], ptr %231, i64 %1203
  store i32 %1202, ptr %1204, align 4, !tbaa !4
  %1205 = load ptr, ptr %863, align 8, !tbaa !42
  %1206 = load i32, ptr %941, align 8, !tbaa !54
  %1207 = load ptr, ptr %865, align 8, !tbaa !43
  %1208 = load ptr, ptr %1207, align 8, !tbaa !44
  %1209 = getelementptr inbounds nuw i8, ptr %1207, i64 8
  %1210 = load ptr, ptr %1209, align 8, !tbaa !58
  %1211 = getelementptr inbounds nuw i8, ptr %1207, i64 16
  %1212 = load i32, ptr %1211, align 8, !tbaa !59
  %1213 = getelementptr inbounds nuw i8, ptr %1207, i64 24
  %1214 = load i32, ptr %1213, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %507, i8 0, i64 32, i1 false), !tbaa !61
  %1215 = load i32, ptr %154, align 8, !tbaa !49
  %1216 = sext i32 %1215 to i64
  %1217 = getelementptr inbounds [4 x i8], ptr %231, i64 %1216
  %1218 = load i32, ptr %1217, align 4, !tbaa !4
  %1219 = sext i32 %1218 to i64
  %1220 = getelementptr inbounds [4 x i8], ptr %1205, i64 %1219
  %1221 = getelementptr inbounds nuw i8, ptr %1220, i64 2
  store i16 0, ptr %1221, align 2, !tbaa !28
  %1222 = load i32, ptr %154, align 8, !tbaa !49
  %1223 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1222, i32 1), !nosanitize !32
  %1224 = extractvalue { i32, i1 } %1223, 1, !nosanitize !32
  br i1 %1224, label %1225, label %1226, !prof !34, !nosanitize !32

1225:                                             ; preds = %1275, %1250, %1200
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

1226:                                             ; preds = %1200
  %1227 = extractvalue { i32, i1 } %1223, 0
  %1228 = icmp slt i32 %1227, 573
  br i1 %1228, label %1229, label %1412

1229:                                             ; preds = %1226
  %1230 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1231 = icmp eq ptr %1208, null
  %1232 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1233 = sext i32 %1227 to i64
  br label %1234

1234:                                             ; preds = %1308, %1229
  %1235 = phi i64 [ %1233, %1229 ], [ %1309, %1308 ]
  %1236 = phi i32 [ 0, %1229 ], [ %1257, %1308 ]
  %1237 = getelementptr inbounds [4 x i8], ptr %231, i64 %1235
  %1238 = load i32, ptr %1237, align 4, !tbaa !4
  %1239 = sext i32 %1238 to i64
  %1240 = getelementptr inbounds [4 x i8], ptr %1205, i64 %1239
  %1241 = getelementptr inbounds nuw i8, ptr %1240, i64 2
  %1242 = load i16, ptr %1241, align 2, !tbaa !28
  %1243 = zext i16 %1242 to i64
  %1244 = getelementptr inbounds nuw [4 x i8], ptr %1205, i64 %1243
  %1245 = getelementptr inbounds nuw i8, ptr %1244, i64 2
  %1246 = load i16, ptr %1245, align 2, !tbaa !28
  %1247 = zext i16 %1246 to i32
  %1248 = add nuw nsw i32 %1247, 1
  %1249 = icmp sgt i32 %1214, %1247
  br i1 %1249, label %1255, label %1250

1250:                                             ; preds = %1234
  %1251 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1236, i32 1), !nosanitize !32
  %1252 = extractvalue { i32, i1 } %1251, 1, !nosanitize !32
  br i1 %1252, label %1225, label %1253, !prof !34, !nosanitize !32

1253:                                             ; preds = %1250
  %1254 = extractvalue { i32, i1 } %1251, 0, !nosanitize !32
  br label %1255

1255:                                             ; preds = %1253, %1234
  %1256 = phi i32 [ %1214, %1253 ], [ %1248, %1234 ]
  %1257 = phi i32 [ %1254, %1253 ], [ %1236, %1234 ]
  %1258 = trunc i32 %1256 to i16
  store i16 %1258, ptr %1241, align 2, !tbaa !28
  %1259 = icmp sgt i32 %1238, %1206
  br i1 %1259, label %1308, label %1260

1260:                                             ; preds = %1255
  %1261 = sext i32 %1256 to i64
  %1262 = getelementptr inbounds [2 x i8], ptr %507, i64 %1261
  %1263 = load i16, ptr %1262, align 2, !tbaa !61
  %1264 = add i16 %1263, 1
  store i16 %1264, ptr %1262, align 2, !tbaa !61
  %1265 = icmp slt i32 %1238, %1212
  br i1 %1265, label %1275, label %1266

1266:                                             ; preds = %1260
  %1267 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1238, i32 %1212), !nosanitize !32
  %1268 = extractvalue { i32, i1 } %1267, 1, !nosanitize !32
  br i1 %1268, label %1269, label %1270, !prof !34, !nosanitize !32

1269:                                             ; preds = %1266, %1336, %1328, %1364, %1369, %1314
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

1270:                                             ; preds = %1266
  %1271 = extractvalue { i32, i1 } %1267, 0, !nosanitize !32
  %1272 = sext i32 %1271 to i64
  %1273 = getelementptr inbounds [4 x i8], ptr %1210, i64 %1272
  %1274 = load i32, ptr %1273, align 4, !tbaa !4
  br label %1275

1275:                                             ; preds = %1270, %1260
  %1276 = phi i32 [ %1274, %1270 ], [ 0, %1260 ]
  %1277 = load i16, ptr %1240, align 2, !tbaa !28
  %1278 = zext i16 %1277 to i64
  %1279 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1256, i32 %1276), !nosanitize !32
  %1280 = extractvalue { i32, i1 } %1279, 1, !nosanitize !32
  br i1 %1280, label %1225, label %1281, !prof !34, !nosanitize !32

1281:                                             ; preds = %1275
  %1282 = extractvalue { i32, i1 } %1279, 0, !nosanitize !32
  %1283 = zext i32 %1282 to i64
  %1284 = mul nuw nsw i64 %1283, %1278
  %1285 = load i64, ptr %1230, align 8, !tbaa !51
  %1286 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1285, i64 %1284), !nosanitize !32
  %1287 = extractvalue { i64, i1 } %1286, 1, !nosanitize !32
  br i1 %1287, label %1288, label %1289, !prof !34, !nosanitize !32

1288:                                             ; preds = %1291, %1281
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

1289:                                             ; preds = %1281
  %1290 = extractvalue { i64, i1 } %1286, 0, !nosanitize !32
  store i64 %1290, ptr %1230, align 8, !tbaa !51
  br i1 %1231, label %1308, label %1291

1291:                                             ; preds = %1289
  %1292 = getelementptr inbounds [4 x i8], ptr %1208, i64 %1239
  %1293 = getelementptr inbounds nuw i8, ptr %1292, i64 2
  %1294 = load i16, ptr %1293, align 2, !tbaa !28
  %1295 = zext i16 %1294 to i32
  %1296 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1295, i32 %1276), !nosanitize !32
  %1297 = extractvalue { i32, i1 } %1296, 1, !nosanitize !32
  br i1 %1297, label %1288, label %1298, !prof !34, !nosanitize !32

1298:                                             ; preds = %1291
  %1299 = extractvalue { i32, i1 } %1296, 0, !nosanitize !32
  %1300 = zext i32 %1299 to i64
  %1301 = mul nuw nsw i64 %1300, %1278
  %1302 = load i64, ptr %1232, align 8, !tbaa !52
  %1303 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1302, i64 %1301), !nosanitize !32
  %1304 = extractvalue { i64, i1 } %1303, 1, !nosanitize !32
  br i1 %1304, label %1305, label %1306, !prof !34, !nosanitize !32

1305:                                             ; preds = %1298, %1331
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

1306:                                             ; preds = %1298
  %1307 = extractvalue { i64, i1 } %1303, 0, !nosanitize !32
  store i64 %1307, ptr %1232, align 8, !tbaa !52
  br label %1308

1308:                                             ; preds = %1306, %1289, %1255
  %1309 = add nsw i64 %1235, 1
  %1310 = and i64 %1309, 4294967295
  %1311 = icmp eq i64 %1310, 573
  br i1 %1311, label %1312, label %1234, !llvm.loop !62

1312:                                             ; preds = %1308
  %1313 = icmp eq i32 %1257, 0
  br i1 %1313, label %1412, label %1314

1314:                                             ; preds = %1312
  %1315 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1214, i32 -1)
  %1316 = extractvalue { i32, i1 } %1315, 1, !nosanitize !32
  %1317 = sext i32 %1214 to i64
  %1318 = getelementptr inbounds [2 x i8], ptr %507, i64 %1317
  br i1 %1316, label %1269, label %1319, !prof !34, !nosanitize !32

1319:                                             ; preds = %1314, %1346
  %1320 = phi i32 [ %1347, %1346 ], [ %1257, %1314 ]
  br label %1321

1321:                                             ; preds = %1328, %1319
  %1322 = phi { i32, i1 } [ %1329, %1328 ], [ %1315, %1319 ]
  %1323 = extractvalue { i32, i1 } %1322, 0
  %1324 = sext i32 %1323 to i64
  %1325 = getelementptr inbounds [2 x i8], ptr %507, i64 %1324
  %1326 = load i16, ptr %1325, align 2, !tbaa !61
  %1327 = icmp eq i16 %1326, 0
  br i1 %1327, label %1328, label %1331

1328:                                             ; preds = %1321
  %1329 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1323, i32 -1)
  %1330 = extractvalue { i32, i1 } %1329, 1, !nosanitize !32
  br i1 %1330, label %1269, label %1321, !prof !34, !llvm.loop !63, !nosanitize !32

1331:                                             ; preds = %1321
  %1332 = getelementptr inbounds [2 x i8], ptr %507, i64 %1324
  %1333 = add i16 %1326, -1
  store i16 %1333, ptr %1332, align 2, !tbaa !61
  %1334 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1323, i32 1), !nosanitize !32
  %1335 = extractvalue { i32, i1 } %1334, 1, !nosanitize !32
  br i1 %1335, label %1305, label %1336, !prof !34, !nosanitize !32

1336:                                             ; preds = %1331
  %1337 = extractvalue { i32, i1 } %1334, 0, !nosanitize !32
  %1338 = sext i32 %1337 to i64
  %1339 = getelementptr inbounds [2 x i8], ptr %507, i64 %1338
  %1340 = load i16, ptr %1339, align 2, !tbaa !61
  %1341 = add i16 %1340, 2
  store i16 %1341, ptr %1339, align 2, !tbaa !61
  %1342 = load i16, ptr %1318, align 2, !tbaa !61
  %1343 = add i16 %1342, -1
  store i16 %1343, ptr %1318, align 2, !tbaa !61
  %1344 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1320, i32 -2)
  %1345 = extractvalue { i32, i1 } %1344, 1, !nosanitize !32
  br i1 %1345, label %1269, label %1346, !prof !34, !nosanitize !32

1346:                                             ; preds = %1336
  %1347 = extractvalue { i32, i1 } %1344, 0, !nosanitize !32
  %1348 = icmp sgt i32 %1347, 0
  br i1 %1348, label %1319, label %1349, !llvm.loop !64

1349:                                             ; preds = %1346
  %1350 = icmp eq i32 %1214, 0
  br i1 %1350, label %1412, label %1351

1351:                                             ; preds = %1349, %1408
  %1352 = phi i64 [ %1409, %1408 ], [ %1317, %1349 ]
  %1353 = phi i32 [ %1361, %1408 ], [ 573, %1349 ]
  %1354 = getelementptr inbounds [2 x i8], ptr %507, i64 %1352
  %1355 = load i16, ptr %1354, align 2, !tbaa !61
  %1356 = icmp eq i16 %1355, 0
  br i1 %1356, label %1360, label %1357

1357:                                             ; preds = %1351
  %1358 = zext i16 %1355 to i32
  %1359 = trunc i64 %1352 to i16
  br label %1364

1360:                                             ; preds = %1405, %1351
  %1361 = phi i32 [ %1353, %1351 ], [ %1374, %1405 ]
  %1362 = and i64 %1352, 4294967295
  %1363 = icmp eq i64 %1362, 2147483648
  br i1 %1363, label %1389, label %1408, !prof !34, !nosanitize !32

1364:                                             ; preds = %1405, %1357
  %1365 = phi i32 [ %1353, %1357 ], [ %1374, %1405 ]
  %1366 = phi i32 [ %1358, %1357 ], [ %1406, %1405 ]
  %1367 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1365, i32 -1)
  %1368 = extractvalue { i32, i1 } %1367, 1, !nosanitize !32
  br i1 %1368, label %1269, label %1372, !prof !65, !nosanitize !32

1369:                                             ; preds = %1372
  %1370 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1374, i32 -1)
  %1371 = extractvalue { i32, i1 } %1370, 1, !nosanitize !32
  br i1 %1371, label %1269, label %1372, !prof !66, !llvm.loop !67, !nosanitize !32

1372:                                             ; preds = %1364, %1369
  %1373 = phi { i32, i1 } [ %1370, %1369 ], [ %1367, %1364 ]
  %1374 = extractvalue { i32, i1 } %1373, 0, !nosanitize !32
  %1375 = sext i32 %1374 to i64
  %1376 = getelementptr inbounds [4 x i8], ptr %231, i64 %1375
  %1377 = load i32, ptr %1376, align 4, !tbaa !4
  %1378 = icmp sgt i32 %1377, %1206
  br i1 %1378, label %1369, label %1379, !llvm.loop !67

1379:                                             ; preds = %1372
  %1380 = sext i32 %1377 to i64
  %1381 = getelementptr inbounds [4 x i8], ptr %1205, i64 %1380
  %1382 = getelementptr inbounds nuw i8, ptr %1381, i64 2
  %1383 = load i16, ptr %1382, align 2, !tbaa !28
  %1384 = zext i16 %1383 to i64
  %1385 = icmp eq i64 %1352, %1384
  br i1 %1385, label %1405, label %1386

1386:                                             ; preds = %1379
  %1387 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1352, i64 %1384), !nosanitize !32
  %1388 = extractvalue { i64, i1 } %1387, 1, !nosanitize !32
  br i1 %1388, label %1389, label %1390, !prof !34, !nosanitize !32

1389:                                             ; preds = %1360, %1386
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

1390:                                             ; preds = %1386
  %1391 = extractvalue { i64, i1 } %1387, 0, !nosanitize !32
  %1392 = load i16, ptr %1381, align 2, !tbaa !28
  %1393 = zext i16 %1392 to i64
  %1394 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1391, i64 %1393), !nosanitize !32
  %1395 = extractvalue { i64, i1 } %1394, 1, !nosanitize !32
  br i1 %1395, label %1396, label %1397, !prof !34, !nosanitize !32

1396:                                             ; preds = %1390
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !32
  unreachable, !nosanitize !32

1397:                                             ; preds = %1390
  %1398 = extractvalue { i64, i1 } %1394, 0, !nosanitize !32
  %1399 = load i64, ptr %1230, align 8, !tbaa !51
  %1400 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1399, i64 %1398), !nosanitize !32
  %1401 = extractvalue { i64, i1 } %1400, 1, !nosanitize !32
  br i1 %1401, label %1402, label %1403, !prof !34, !nosanitize !32

1402:                                             ; preds = %1397
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

1403:                                             ; preds = %1397
  %1404 = extractvalue { i64, i1 } %1400, 0, !nosanitize !32
  store i64 %1404, ptr %1230, align 8, !tbaa !51
  store i16 %1359, ptr %1382, align 2, !tbaa !28
  br label %1405

1405:                                             ; preds = %1403, %1379
  %1406 = add nsw i32 %1366, -1
  %1407 = icmp eq i32 %1406, 0
  br i1 %1407, label %1360, label %1364, !llvm.loop !67

1408:                                             ; preds = %1360
  %1409 = add nsw i64 %1352, -1
  %1410 = and i64 %1409, 4294967295
  %1411 = icmp eq i64 %1410, 0
  br i1 %1411, label %1412, label %1351, !llvm.loop !68

1412:                                             ; preds = %1408, %1349, %1312, %1226
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %1413 = load i16, ptr %507, align 2, !tbaa !61
  %1414 = zext i16 %1413 to i32
  %1415 = shl nuw nsw i32 %1414, 1
  %1416 = trunc i32 %1415 to i16
  %1417 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1416, ptr %1417, align 2, !tbaa !61
  %1418 = load i16, ptr %711, align 2, !tbaa !61
  %1419 = zext i16 %1418 to i32
  %1420 = add nuw nsw i32 %1415, %1419
  %1421 = shl nuw nsw i32 %1420, 1
  %1422 = trunc i32 %1421 to i16
  %1423 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1422, ptr %1423, align 4, !tbaa !61
  %1424 = load i16, ptr %718, align 2, !tbaa !61
  %1425 = zext i16 %1424 to i32
  %1426 = add nuw nsw i32 %1421, %1425
  %1427 = shl nuw nsw i32 %1426, 1
  %1428 = trunc i32 %1427 to i16
  %1429 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1428, ptr %1429, align 2, !tbaa !61
  %1430 = load i16, ptr %725, align 2, !tbaa !61
  %1431 = zext i16 %1430 to i32
  %1432 = add nuw nsw i32 %1427, %1431
  %1433 = shl nuw nsw i32 %1432, 1
  %1434 = trunc i32 %1433 to i16
  %1435 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1434, ptr %1435, align 8, !tbaa !61
  %1436 = load i16, ptr %732, align 2, !tbaa !61
  %1437 = zext i16 %1436 to i32
  %1438 = add nuw nsw i32 %1433, %1437
  %1439 = shl nuw nsw i32 %1438, 1
  %1440 = trunc i32 %1439 to i16
  %1441 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1440, ptr %1441, align 2, !tbaa !61
  %1442 = load i16, ptr %739, align 2, !tbaa !61
  %1443 = zext i16 %1442 to i32
  %1444 = add nuw nsw i32 %1439, %1443
  %1445 = shl nuw nsw i32 %1444, 1
  %1446 = trunc i32 %1445 to i16
  %1447 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1446, ptr %1447, align 4, !tbaa !61
  %1448 = load i16, ptr %746, align 2, !tbaa !61
  %1449 = zext i16 %1448 to i32
  %1450 = add nuw nsw i32 %1445, %1449
  %1451 = shl nuw nsw i32 %1450, 1
  %1452 = trunc i32 %1451 to i16
  %1453 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1452, ptr %1453, align 2, !tbaa !61
  %1454 = load i16, ptr %753, align 2, !tbaa !61
  %1455 = zext i16 %1454 to i32
  %1456 = add nuw nsw i32 %1451, %1455
  %1457 = shl nuw nsw i32 %1456, 1
  %1458 = trunc i32 %1457 to i16
  %1459 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1458, ptr %1459, align 16, !tbaa !61
  %1460 = load i16, ptr %760, align 2, !tbaa !61
  %1461 = zext i16 %1460 to i32
  %1462 = add nuw nsw i32 %1457, %1461
  %1463 = shl nuw nsw i32 %1462, 1
  %1464 = trunc i32 %1463 to i16
  %1465 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1464, ptr %1465, align 2, !tbaa !61
  %1466 = load i16, ptr %767, align 2, !tbaa !61
  %1467 = zext i16 %1466 to i32
  %1468 = add nuw nsw i32 %1463, %1467
  %1469 = shl nuw nsw i32 %1468, 1
  %1470 = trunc i32 %1469 to i16
  %1471 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1470, ptr %1471, align 4, !tbaa !61
  %1472 = load i16, ptr %774, align 2, !tbaa !61
  %1473 = trunc i32 %1469 to i16
  %1474 = add i16 %1472, %1473
  %1475 = shl i16 %1474, 1
  %1476 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1475, ptr %1476, align 2, !tbaa !61
  %1477 = load i16, ptr %780, align 2, !tbaa !61
  %1478 = add i16 %1477, %1475
  %1479 = shl i16 %1478, 1
  %1480 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1479, ptr %1480, align 8, !tbaa !61
  %1481 = load i16, ptr %785, align 2, !tbaa !61
  %1482 = add i16 %1479, %1481
  %1483 = shl i16 %1482, 1
  %1484 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1483, ptr %1484, align 2, !tbaa !61
  %1485 = load i16, ptr %790, align 2, !tbaa !61
  %1486 = add i16 %1483, %1485
  %1487 = shl i16 %1486, 1
  %1488 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1487, ptr %1488, align 4, !tbaa !61
  %1489 = load i16, ptr %795, align 2, !tbaa !61
  %1490 = add i16 %1487, %1489
  %1491 = shl i16 %1490, 1
  %1492 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1491, ptr %1492, align 2, !tbaa !61
  %1493 = icmp slt i32 %939, 0
  br i1 %1493, label %1555, label %1495

1494:                                             ; preds = %1549
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

1495:                                             ; preds = %1412, %1551
  %1496 = phi i64 [ %1552, %1551 ], [ 0, %1412 ]
  %1497 = getelementptr inbounds nuw [4 x i8], ptr %864, i64 %1496
  %1498 = getelementptr inbounds nuw i8, ptr %1497, i64 2
  %1499 = load i16, ptr %1498, align 2, !tbaa !28
  %1500 = icmp eq i16 %1499, 0
  br i1 %1500, label %1549, label %1501

1501:                                             ; preds = %1495
  %1502 = zext i16 %1499 to i32
  %1503 = zext i16 %1499 to i64
  %1504 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %1503
  %1505 = load i16, ptr %1504, align 2, !tbaa !61
  %1506 = add i16 %1505, 1
  store i16 %1506, ptr %1504, align 2, !tbaa !61
  %1507 = and i32 %1502, 3
  %1508 = icmp ult i16 %1499, 4
  br i1 %1508, label %1533, label %1509

1509:                                             ; preds = %1501
  %1510 = and i32 %1502, 65532
  br label %1511

1511:                                             ; preds = %1511, %1509
  %1512 = phi i16 [ %1505, %1509 ], [ %1528, %1511 ]
  %1513 = phi i16 [ 0, %1509 ], [ %1527, %1511 ]
  %1514 = phi i32 [ 0, %1509 ], [ %1529, %1511 ]
  %1515 = and i16 %1512, 1
  %1516 = or disjoint i16 %1513, %1515
  %1517 = shl i16 %1516, 2
  %1518 = and i16 %1512, 2
  %1519 = or disjoint i16 %1517, %1518
  %1520 = lshr i16 %1512, 2
  %1521 = and i16 %1520, 1
  %1522 = or disjoint i16 %1519, %1521
  %1523 = shl i16 %1522, 1
  %1524 = lshr i16 %1512, 3
  %1525 = and i16 %1524, 1
  %1526 = or disjoint i16 %1523, %1525
  %1527 = shl i16 %1526, 1
  %1528 = lshr i16 %1512, 4
  %1529 = add i32 %1514, 4
  %1530 = icmp eq i32 %1529, %1510
  br i1 %1530, label %1531, label %1511, !llvm.loop !69

1531:                                             ; preds = %1511
  %1532 = icmp eq i32 %1507, 0
  br i1 %1532, label %1547, label %1533

1533:                                             ; preds = %1531, %1501
  %1534 = phi i16 [ %1505, %1501 ], [ %1528, %1531 ]
  %1535 = phi i16 [ 0, %1501 ], [ %1527, %1531 ]
  %1536 = icmp ne i32 %1507, 0
  tail call void @llvm.assume(i1 %1536)
  br label %1537

1537:                                             ; preds = %1537, %1533
  %1538 = phi i16 [ %1534, %1533 ], [ %1544, %1537 ]
  %1539 = phi i16 [ %1535, %1533 ], [ %1543, %1537 ]
  %1540 = phi i32 [ 0, %1533 ], [ %1545, %1537 ]
  %1541 = and i16 %1538, 1
  %1542 = or disjoint i16 %1539, %1541
  %1543 = shl i16 %1542, 1
  %1544 = lshr i16 %1538, 1
  %1545 = add i32 %1540, 1
  %1546 = icmp eq i32 %1545, %1507
  br i1 %1546, label %1547, label %1537, !llvm.loop !73

1547:                                             ; preds = %1537, %1531
  %1548 = phi i16 [ %1526, %1531 ], [ %1542, %1537 ]
  store i16 %1548, ptr %1497, align 2, !tbaa !28
  br label %1549

1549:                                             ; preds = %1547, %1495
  %1550 = icmp eq i64 %1496, 2147483647
  br i1 %1550, label %1494, label %1551, !prof !34, !nosanitize !32

1551:                                             ; preds = %1549
  %1552 = add nuw nsw i64 %1496, 1
  %1553 = trunc i64 %1552 to i32
  %1554 = icmp slt i32 %939, %1553
  br i1 %1554, label %1555, label %1495, !llvm.loop !72

1555:                                             ; preds = %1551, %1412
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %1556 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %1557 = load i32, ptr %230, align 8, !tbaa !74
  %1558 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1557, i32 1), !nosanitize !32
  %1559 = extractvalue { i32, i1 } %1558, 1, !nosanitize !32
  br i1 %1559, label %1560, label %1561, !prof !34, !nosanitize !32

1560:                                             ; preds = %1578, %1555
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

1561:                                             ; preds = %1555
  %1562 = getelementptr inbounds nuw i8, ptr %0, i64 214
  %1563 = load i16, ptr %1562, align 2, !tbaa !28
  %1564 = extractvalue { i32, i1 } %1558, 0, !nosanitize !32
  %1565 = sext i32 %1564 to i64
  %1566 = getelementptr inbounds [4 x i8], ptr %1556, i64 %1565
  %1567 = getelementptr inbounds nuw i8, ptr %1566, i64 2
  store i16 -1, ptr %1567, align 2, !tbaa !28
  %1568 = icmp slt i32 %1557, 0
  br i1 %1568, label %1637, label %1569

1569:                                             ; preds = %1561
  %1570 = zext i16 %1563 to i32
  %1571 = icmp eq i16 %1563, 0
  %1572 = select i1 %1571, i32 138, i32 7
  %1573 = select i1 %1571, i32 3, i32 4
  %1574 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1575 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1576 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1577 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %1582

1578:                                             ; preds = %1631
  %1579 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1583, i32 1), !nosanitize !32
  %1580 = extractvalue { i32, i1 } %1579, 0, !nosanitize !32
  %1581 = extractvalue { i32, i1 } %1579, 1, !nosanitize !32
  br i1 %1581, label %1560, label %1582, !prof !75, !llvm.loop !76, !nosanitize !32

1582:                                             ; preds = %1569, %1578
  %1583 = phi i32 [ 1, %1569 ], [ %1580, %1578 ]
  %1584 = phi i32 [ -1, %1569 ], [ %1632, %1578 ]
  %1585 = phi i32 [ %1570, %1569 ], [ %1593, %1578 ]
  %1586 = phi i32 [ 0, %1569 ], [ %1633, %1578 ]
  %1587 = phi i32 [ %1572, %1569 ], [ %1634, %1578 ]
  %1588 = phi i32 [ %1573, %1569 ], [ %1635, %1578 ]
  %1589 = sext i32 %1583 to i64
  %1590 = getelementptr inbounds [4 x i8], ptr %1556, i64 %1589
  %1591 = getelementptr inbounds nuw i8, ptr %1590, i64 2
  %1592 = load i16, ptr %1591, align 2, !tbaa !28
  %1593 = zext i16 %1592 to i32
  %1594 = add nsw i32 %1586, 1
  %1595 = icmp slt i32 %1594, %1587
  %1596 = icmp eq i32 %1585, %1593
  %1597 = select i1 %1595, i1 %1596, i1 false
  br i1 %1597, label %1631, label %1598

1598:                                             ; preds = %1582
  %1599 = icmp slt i32 %1594, %1588
  br i1 %1599, label %1600, label %1606

1600:                                             ; preds = %1598
  %1601 = zext nneg i32 %1585 to i64
  %1602 = getelementptr inbounds nuw [4 x i8], ptr %1574, i64 %1601
  %1603 = load i16, ptr %1602, align 4, !tbaa !28
  %1604 = trunc i32 %1594 to i16
  %1605 = add i16 %1603, %1604
  store i16 %1605, ptr %1602, align 4, !tbaa !28
  br label %1626

1606:                                             ; preds = %1598
  %1607 = icmp eq i32 %1585, 0
  br i1 %1607, label %1618, label %1608

1608:                                             ; preds = %1606
  %1609 = icmp eq i32 %1585, %1584
  br i1 %1609, label %1615, label %1610

1610:                                             ; preds = %1608
  %1611 = zext nneg i32 %1585 to i64
  %1612 = getelementptr inbounds nuw [4 x i8], ptr %1574, i64 %1611
  %1613 = load i16, ptr %1612, align 4, !tbaa !28
  %1614 = add i16 %1613, 1
  store i16 %1614, ptr %1612, align 4, !tbaa !28
  br label %1615

1615:                                             ; preds = %1610, %1608
  %1616 = load i16, ptr %1575, align 4, !tbaa !28
  %1617 = add i16 %1616, 1
  store i16 %1617, ptr %1575, align 4, !tbaa !28
  br label %1626

1618:                                             ; preds = %1606
  %1619 = icmp slt i32 %1586, 10
  br i1 %1619, label %1620, label %1623

1620:                                             ; preds = %1618
  %1621 = load i16, ptr %1577, align 4, !tbaa !28
  %1622 = add i16 %1621, 1
  store i16 %1622, ptr %1577, align 4, !tbaa !28
  br label %1626

1623:                                             ; preds = %1618
  %1624 = load i16, ptr %1576, align 4, !tbaa !28
  %1625 = add i16 %1624, 1
  store i16 %1625, ptr %1576, align 4, !tbaa !28
  br label %1626

1626:                                             ; preds = %1623, %1620, %1615, %1600
  %1627 = icmp eq i16 %1592, 0
  br i1 %1627, label %1631, label %1628

1628:                                             ; preds = %1626
  %1629 = select i1 %1596, i32 6, i32 7
  %1630 = select i1 %1596, i32 3, i32 4
  br label %1631

1631:                                             ; preds = %1628, %1626, %1582
  %1632 = phi i32 [ %1584, %1582 ], [ %1585, %1626 ], [ %1585, %1628 ]
  %1633 = phi i32 [ %1594, %1582 ], [ 0, %1626 ], [ 0, %1628 ]
  %1634 = phi i32 [ %1587, %1582 ], [ 138, %1626 ], [ %1629, %1628 ]
  %1635 = phi i32 [ %1588, %1582 ], [ 3, %1626 ], [ %1630, %1628 ]
  %1636 = icmp sgt i32 %1583, %1557
  br i1 %1636, label %1637, label %1578, !llvm.loop !76

1637:                                             ; preds = %1631, %1561
  %1638 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %1639 = load i32, ptr %941, align 8, !tbaa !77
  %1640 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1639, i32 1), !nosanitize !32
  %1641 = extractvalue { i32, i1 } %1640, 1, !nosanitize !32
  br i1 %1641, label %1642, label %1643, !prof !34, !nosanitize !32

1642:                                             ; preds = %1660, %1637
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

1643:                                             ; preds = %1637
  %1644 = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %1645 = load i16, ptr %1644, align 2, !tbaa !28
  %1646 = extractvalue { i32, i1 } %1640, 0, !nosanitize !32
  %1647 = sext i32 %1646 to i64
  %1648 = getelementptr inbounds [4 x i8], ptr %1638, i64 %1647
  %1649 = getelementptr inbounds nuw i8, ptr %1648, i64 2
  store i16 -1, ptr %1649, align 2, !tbaa !28
  %1650 = icmp slt i32 %1639, 0
  br i1 %1650, label %1719, label %1651

1651:                                             ; preds = %1643
  %1652 = zext i16 %1645 to i32
  %1653 = icmp eq i16 %1645, 0
  %1654 = select i1 %1653, i32 138, i32 7
  %1655 = select i1 %1653, i32 3, i32 4
  %1656 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1657 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1658 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1659 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %1664

1660:                                             ; preds = %1713
  %1661 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1665, i32 1), !nosanitize !32
  %1662 = extractvalue { i32, i1 } %1661, 0, !nosanitize !32
  %1663 = extractvalue { i32, i1 } %1661, 1, !nosanitize !32
  br i1 %1663, label %1642, label %1664, !prof !75, !llvm.loop !76, !nosanitize !32

1664:                                             ; preds = %1651, %1660
  %1665 = phi i32 [ 1, %1651 ], [ %1662, %1660 ]
  %1666 = phi i32 [ -1, %1651 ], [ %1714, %1660 ]
  %1667 = phi i32 [ %1652, %1651 ], [ %1675, %1660 ]
  %1668 = phi i32 [ 0, %1651 ], [ %1715, %1660 ]
  %1669 = phi i32 [ %1654, %1651 ], [ %1716, %1660 ]
  %1670 = phi i32 [ %1655, %1651 ], [ %1717, %1660 ]
  %1671 = sext i32 %1665 to i64
  %1672 = getelementptr inbounds [4 x i8], ptr %1638, i64 %1671
  %1673 = getelementptr inbounds nuw i8, ptr %1672, i64 2
  %1674 = load i16, ptr %1673, align 2, !tbaa !28
  %1675 = zext i16 %1674 to i32
  %1676 = add nsw i32 %1668, 1
  %1677 = icmp slt i32 %1676, %1669
  %1678 = icmp eq i32 %1667, %1675
  %1679 = select i1 %1677, i1 %1678, i1 false
  br i1 %1679, label %1713, label %1680

1680:                                             ; preds = %1664
  %1681 = icmp slt i32 %1676, %1670
  br i1 %1681, label %1682, label %1688

1682:                                             ; preds = %1680
  %1683 = zext nneg i32 %1667 to i64
  %1684 = getelementptr inbounds nuw [4 x i8], ptr %1656, i64 %1683
  %1685 = load i16, ptr %1684, align 4, !tbaa !28
  %1686 = trunc i32 %1676 to i16
  %1687 = add i16 %1685, %1686
  store i16 %1687, ptr %1684, align 4, !tbaa !28
  br label %1708

1688:                                             ; preds = %1680
  %1689 = icmp eq i32 %1667, 0
  br i1 %1689, label %1700, label %1690

1690:                                             ; preds = %1688
  %1691 = icmp eq i32 %1667, %1666
  br i1 %1691, label %1697, label %1692

1692:                                             ; preds = %1690
  %1693 = zext nneg i32 %1667 to i64
  %1694 = getelementptr inbounds nuw [4 x i8], ptr %1656, i64 %1693
  %1695 = load i16, ptr %1694, align 4, !tbaa !28
  %1696 = add i16 %1695, 1
  store i16 %1696, ptr %1694, align 4, !tbaa !28
  br label %1697

1697:                                             ; preds = %1692, %1690
  %1698 = load i16, ptr %1657, align 4, !tbaa !28
  %1699 = add i16 %1698, 1
  store i16 %1699, ptr %1657, align 4, !tbaa !28
  br label %1708

1700:                                             ; preds = %1688
  %1701 = icmp slt i32 %1668, 10
  br i1 %1701, label %1702, label %1705

1702:                                             ; preds = %1700
  %1703 = load i16, ptr %1659, align 4, !tbaa !28
  %1704 = add i16 %1703, 1
  store i16 %1704, ptr %1659, align 4, !tbaa !28
  br label %1708

1705:                                             ; preds = %1700
  %1706 = load i16, ptr %1658, align 4, !tbaa !28
  %1707 = add i16 %1706, 1
  store i16 %1707, ptr %1658, align 4, !tbaa !28
  br label %1708

1708:                                             ; preds = %1705, %1702, %1697, %1682
  %1709 = icmp eq i16 %1674, 0
  br i1 %1709, label %1713, label %1710

1710:                                             ; preds = %1708
  %1711 = select i1 %1678, i32 6, i32 7
  %1712 = select i1 %1678, i32 3, i32 4
  br label %1713

1713:                                             ; preds = %1710, %1708, %1664
  %1714 = phi i32 [ %1666, %1664 ], [ %1667, %1708 ], [ %1667, %1710 ]
  %1715 = phi i32 [ %1676, %1664 ], [ 0, %1708 ], [ 0, %1710 ]
  %1716 = phi i32 [ %1669, %1664 ], [ 138, %1708 ], [ %1711, %1710 ]
  %1717 = phi i32 [ %1670, %1664 ], [ 3, %1708 ], [ %1712, %1710 ]
  %1718 = icmp sgt i32 %1665, %1639
  br i1 %1718, label %1719, label %1660, !llvm.loop !76

1719:                                             ; preds = %1713, %1643
  %1720 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %1721 = load ptr, ptr %1720, align 8, !tbaa !42
  %1722 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %1723 = load ptr, ptr %1722, align 8, !tbaa !43
  %1724 = load ptr, ptr %1723, align 8, !tbaa !44
  %1725 = getelementptr inbounds nuw i8, ptr %1723, i64 20
  %1726 = load i32, ptr %1725, align 4, !tbaa !47
  store i32 0, ptr %153, align 4, !tbaa !48
  store i32 573, ptr %154, align 8, !tbaa !49
  %1727 = icmp sgt i32 %1726, 0
  br i1 %1727, label %1728, label %1733

1728:                                             ; preds = %1719
  %1729 = zext nneg i32 %1726 to i64
  br label %1739

1730:                                             ; preds = %1758
  %1731 = load i32, ptr %153, align 4, !tbaa !48
  %1732 = icmp slt i32 %1731, 2
  br i1 %1732, label %1733, label %1795

1733:                                             ; preds = %1730, %1719
  %1734 = phi i32 [ %1759, %1730 ], [ -1, %1719 ]
  %1735 = phi i32 [ %1731, %1730 ], [ 0, %1719 ]
  %1736 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1737 = icmp eq ptr %1724, null
  %1738 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1762

1739:                                             ; preds = %1758, %1728
  %1740 = phi i64 [ 0, %1728 ], [ %1760, %1758 ]
  %1741 = phi i32 [ -1, %1728 ], [ %1759, %1758 ]
  %1742 = getelementptr inbounds nuw [4 x i8], ptr %1721, i64 %1740
  %1743 = load i16, ptr %1742, align 2, !tbaa !28
  %1744 = icmp eq i16 %1743, 0
  br i1 %1744, label %1756, label %1745

1745:                                             ; preds = %1739
  %1746 = load i32, ptr %153, align 4, !tbaa !48
  %1747 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1746, i32 1), !nosanitize !32
  %1748 = extractvalue { i32, i1 } %1747, 1, !nosanitize !32
  br i1 %1748, label %1749, label %1750, !prof !34, !nosanitize !32

1749:                                             ; preds = %1745, %1963
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

1750:                                             ; preds = %1745
  %1751 = extractvalue { i32, i1 } %1747, 0, !nosanitize !32
  store i32 %1751, ptr %153, align 4, !tbaa !48
  %1752 = sext i32 %1751 to i64
  %1753 = getelementptr inbounds [4 x i8], ptr %231, i64 %1752
  %1754 = trunc nuw nsw i64 %1740 to i32
  store i32 %1754, ptr %1753, align 4, !tbaa !4
  %1755 = getelementptr inbounds nuw i8, ptr %232, i64 %1740
  store i8 0, ptr %1755, align 1, !tbaa !28
  br label %1758

1756:                                             ; preds = %1739
  %1757 = getelementptr inbounds nuw i8, ptr %1742, i64 2
  store i16 0, ptr %1757, align 2, !tbaa !28
  br label %1758

1758:                                             ; preds = %1756, %1750
  %1759 = phi i32 [ %1754, %1750 ], [ %1741, %1756 ]
  %1760 = add nuw nsw i64 %1740, 1
  %1761 = icmp eq i64 %1760, %1729
  br i1 %1761, label %1730, label %1739, !llvm.loop !50

1762:                                             ; preds = %1792, %1733
  %1763 = phi i32 [ %1735, %1733 ], [ %1793, %1792 ]
  %1764 = phi i32 [ %1734, %1733 ], [ %1767, %1792 ]
  %1765 = icmp slt i32 %1764, 2
  %1766 = add i32 %1764, 1
  %1767 = select i1 %1765, i32 %1766, i32 %1764
  %1768 = add nsw i32 %1763, 1
  %1769 = select i1 %1765, i32 %1766, i32 0
  store i32 %1768, ptr %153, align 4, !tbaa !48
  %1770 = sext i32 %1768 to i64
  %1771 = getelementptr inbounds [4 x i8], ptr %231, i64 %1770
  store i32 %1769, ptr %1771, align 4, !tbaa !4
  %1772 = sext i32 %1769 to i64
  %1773 = getelementptr inbounds [4 x i8], ptr %1721, i64 %1772
  store i16 1, ptr %1773, align 2, !tbaa !28
  %1774 = getelementptr inbounds i8, ptr %232, i64 %1772
  store i8 0, ptr %1774, align 1, !tbaa !28
  %1775 = load i64, ptr %1736, align 8, !tbaa !51
  %1776 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1775, i64 1), !nosanitize !32
  %1777 = extractvalue { i64, i1 } %1776, 1, !nosanitize !32
  br i1 %1777, label %1778, label %1779, !prof !34, !nosanitize !32

1778:                                             ; preds = %1762
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

1779:                                             ; preds = %1762
  %1780 = extractvalue { i64, i1 } %1776, 0, !nosanitize !32
  store i64 %1780, ptr %1736, align 8, !tbaa !51
  br i1 %1737, label %1792, label %1781

1781:                                             ; preds = %1779
  %1782 = getelementptr inbounds [4 x i8], ptr %1724, i64 %1772
  %1783 = getelementptr inbounds nuw i8, ptr %1782, i64 2
  %1784 = load i16, ptr %1783, align 2, !tbaa !28
  %1785 = zext i16 %1784 to i64
  %1786 = load i64, ptr %1738, align 8, !tbaa !52
  %1787 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1786, i64 %1785), !nosanitize !32
  %1788 = extractvalue { i64, i1 } %1787, 1, !nosanitize !32
  br i1 %1788, label %1789, label %1790, !prof !34, !nosanitize !32

1789:                                             ; preds = %1781, %1956, %1949, %1876, %2053
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

1790:                                             ; preds = %1781
  %1791 = extractvalue { i64, i1 } %1787, 0, !nosanitize !32
  store i64 %1791, ptr %1738, align 8, !tbaa !52
  br label %1792

1792:                                             ; preds = %1790, %1779
  %1793 = load i32, ptr %153, align 4, !tbaa !48
  %1794 = icmp slt i32 %1793, 2
  br i1 %1794, label %1762, label %1795, !llvm.loop !53

1795:                                             ; preds = %1792, %1730
  %1796 = phi i32 [ %1759, %1730 ], [ %1767, %1792 ]
  %1797 = phi i32 [ %1731, %1730 ], [ %1793, %1792 ]
  %1798 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %1796, ptr %1798, align 8, !tbaa !54
  %1799 = lshr i32 %1797, 1
  %1800 = zext nneg i32 %1799 to i64
  br label %1804

1801:                                             ; preds = %1870
  %1802 = load i32, ptr %153, align 4, !tbaa !48
  %1803 = sext i32 %1726 to i64
  br label %1876

1804:                                             ; preds = %1870, %1795
  %1805 = phi i64 [ %1800, %1795 ], [ %1874, %1870 ]
  %1806 = getelementptr inbounds nuw [4 x i8], ptr %231, i64 %1805
  %1807 = load i32, ptr %1806, align 4, !tbaa !4
  %1808 = sext i32 %1807 to i64
  %1809 = getelementptr inbounds i8, ptr %232, i64 %1808
  %1810 = load i32, ptr %153, align 4, !tbaa !48
  %1811 = trunc i64 %1805 to i32
  %1812 = shl i32 %1811, 1
  %1813 = icmp sgt i32 %1812, %1810
  br i1 %1813, label %1870, label %1814

1814:                                             ; preds = %1804
  %1815 = getelementptr inbounds [4 x i8], ptr %1721, i64 %1808
  br label %1816

1816:                                             ; preds = %1864, %1814
  %1817 = phi i32 [ %1810, %1814 ], [ %1868, %1864 ]
  %1818 = phi i32 [ %1812, %1814 ], [ %1867, %1864 ]
  %1819 = phi i32 [ %1811, %1814 ], [ %1849, %1864 ]
  %1820 = icmp slt i32 %1818, %1817
  br i1 %1820, label %1823, label %1821

1821:                                             ; preds = %1816
  %1822 = sext i32 %1818 to i64
  br label %1847

1823:                                             ; preds = %1816
  %1824 = or disjoint i32 %1818, 1
  %1825 = sext i32 %1824 to i64
  %1826 = getelementptr inbounds [4 x i8], ptr %231, i64 %1825
  %1827 = load i32, ptr %1826, align 4, !tbaa !4
  %1828 = sext i32 %1827 to i64
  %1829 = getelementptr inbounds [4 x i8], ptr %1721, i64 %1828
  %1830 = load i16, ptr %1829, align 2, !tbaa !28
  %1831 = sext i32 %1818 to i64
  %1832 = getelementptr inbounds [4 x i8], ptr %231, i64 %1831
  %1833 = load i32, ptr %1832, align 4, !tbaa !4
  %1834 = sext i32 %1833 to i64
  %1835 = getelementptr inbounds [4 x i8], ptr %1721, i64 %1834
  %1836 = load i16, ptr %1835, align 2, !tbaa !28
  %1837 = icmp ult i16 %1830, %1836
  br i1 %1837, label %1846, label %1838

1838:                                             ; preds = %1823
  %1839 = icmp eq i16 %1830, %1836
  br i1 %1839, label %1840, label %1847

1840:                                             ; preds = %1838
  %1841 = getelementptr inbounds i8, ptr %232, i64 %1828
  %1842 = load i8, ptr %1841, align 1, !tbaa !28
  %1843 = getelementptr inbounds i8, ptr %232, i64 %1834
  %1844 = load i8, ptr %1843, align 1, !tbaa !28
  %1845 = icmp ugt i8 %1842, %1844
  br i1 %1845, label %1847, label %1846

1846:                                             ; preds = %1840, %1823
  br label %1847

1847:                                             ; preds = %1846, %1840, %1838, %1821
  %1848 = phi i64 [ %1822, %1821 ], [ %1825, %1846 ], [ %1831, %1840 ], [ %1831, %1838 ]
  %1849 = phi i32 [ %1818, %1821 ], [ %1824, %1846 ], [ %1818, %1840 ], [ %1818, %1838 ]
  %1850 = load i16, ptr %1815, align 2, !tbaa !28
  %1851 = getelementptr inbounds [4 x i8], ptr %231, i64 %1848
  %1852 = load i32, ptr %1851, align 4, !tbaa !4
  %1853 = sext i32 %1852 to i64
  %1854 = getelementptr inbounds [4 x i8], ptr %1721, i64 %1853
  %1855 = load i16, ptr %1854, align 2, !tbaa !28
  %1856 = icmp ult i16 %1850, %1855
  br i1 %1856, label %1870, label %1857

1857:                                             ; preds = %1847
  %1858 = icmp eq i16 %1850, %1855
  br i1 %1858, label %1859, label %1864

1859:                                             ; preds = %1857
  %1860 = load i8, ptr %1809, align 1, !tbaa !28
  %1861 = getelementptr inbounds i8, ptr %232, i64 %1853
  %1862 = load i8, ptr %1861, align 1, !tbaa !28
  %1863 = icmp ugt i8 %1860, %1862
  br i1 %1863, label %1864, label %1870

1864:                                             ; preds = %1859, %1857
  %1865 = sext i32 %1819 to i64
  %1866 = getelementptr inbounds [4 x i8], ptr %231, i64 %1865
  store i32 %1852, ptr %1866, align 4, !tbaa !4
  %1867 = shl i32 %1849, 1
  %1868 = load i32, ptr %153, align 4, !tbaa !48
  %1869 = icmp sgt i32 %1867, %1868
  br i1 %1869, label %1870, label %1816, !llvm.loop !55

1870:                                             ; preds = %1864, %1859, %1847, %1804
  %1871 = phi i32 [ %1811, %1804 ], [ %1849, %1864 ], [ %1819, %1859 ], [ %1819, %1847 ]
  %1872 = sext i32 %1871 to i64
  %1873 = getelementptr inbounds [4 x i8], ptr %231, i64 %1872
  store i32 %1807, ptr %1873, align 4, !tbaa !4
  %1874 = add nsw i64 %1805, -1
  %1875 = icmp sgt i64 %1805, 1
  br i1 %1875, label %1804, label %1801, !llvm.loop !56

1876:                                             ; preds = %2048, %1801
  %1877 = phi i32 [ %1802, %1801 ], [ %2051, %2048 ]
  %1878 = phi i64 [ %1803, %1801 ], [ %1988, %2048 ]
  %1879 = load i32, ptr %237, align 4, !tbaa !4
  %1880 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1877, i32 -1)
  %1881 = extractvalue { i32, i1 } %1880, 1, !nosanitize !32
  br i1 %1881, label %1789, label %1882, !prof !34, !nosanitize !32

1882:                                             ; preds = %1876
  %1883 = extractvalue { i32, i1 } %1880, 0, !nosanitize !32
  store i32 %1883, ptr %153, align 4, !tbaa !48
  %1884 = sext i32 %1877 to i64
  %1885 = getelementptr inbounds [4 x i8], ptr %231, i64 %1884
  %1886 = load i32, ptr %1885, align 4, !tbaa !4
  store i32 %1886, ptr %237, align 4, !tbaa !4
  %1887 = sext i32 %1886 to i64
  %1888 = getelementptr inbounds i8, ptr %232, i64 %1887
  %1889 = icmp slt i32 %1883, 2
  br i1 %1889, label %1949, label %1890

1890:                                             ; preds = %1882
  %1891 = getelementptr inbounds [4 x i8], ptr %1721, i64 %1887
  br label %1892

1892:                                             ; preds = %1940, %1890
  %1893 = phi i32 [ %1883, %1890 ], [ %1944, %1940 ]
  %1894 = phi i32 [ 2, %1890 ], [ %1943, %1940 ]
  %1895 = phi i32 [ 1, %1890 ], [ %1925, %1940 ]
  %1896 = icmp slt i32 %1894, %1893
  br i1 %1896, label %1899, label %1897

1897:                                             ; preds = %1892
  %1898 = sext i32 %1894 to i64
  br label %1923

1899:                                             ; preds = %1892
  %1900 = or disjoint i32 %1894, 1
  %1901 = sext i32 %1900 to i64
  %1902 = getelementptr inbounds [4 x i8], ptr %231, i64 %1901
  %1903 = load i32, ptr %1902, align 4, !tbaa !4
  %1904 = sext i32 %1903 to i64
  %1905 = getelementptr inbounds [4 x i8], ptr %1721, i64 %1904
  %1906 = load i16, ptr %1905, align 2, !tbaa !28
  %1907 = sext i32 %1894 to i64
  %1908 = getelementptr inbounds [4 x i8], ptr %231, i64 %1907
  %1909 = load i32, ptr %1908, align 4, !tbaa !4
  %1910 = sext i32 %1909 to i64
  %1911 = getelementptr inbounds [4 x i8], ptr %1721, i64 %1910
  %1912 = load i16, ptr %1911, align 2, !tbaa !28
  %1913 = icmp ult i16 %1906, %1912
  br i1 %1913, label %1922, label %1914

1914:                                             ; preds = %1899
  %1915 = icmp eq i16 %1906, %1912
  br i1 %1915, label %1916, label %1923

1916:                                             ; preds = %1914
  %1917 = getelementptr inbounds i8, ptr %232, i64 %1904
  %1918 = load i8, ptr %1917, align 1, !tbaa !28
  %1919 = getelementptr inbounds i8, ptr %232, i64 %1910
  %1920 = load i8, ptr %1919, align 1, !tbaa !28
  %1921 = icmp ugt i8 %1918, %1920
  br i1 %1921, label %1923, label %1922

1922:                                             ; preds = %1916, %1899
  br label %1923

1923:                                             ; preds = %1922, %1916, %1914, %1897
  %1924 = phi i64 [ %1898, %1897 ], [ %1901, %1922 ], [ %1907, %1916 ], [ %1907, %1914 ]
  %1925 = phi i32 [ %1894, %1897 ], [ %1900, %1922 ], [ %1894, %1916 ], [ %1894, %1914 ]
  %1926 = load i16, ptr %1891, align 2, !tbaa !28
  %1927 = getelementptr inbounds [4 x i8], ptr %231, i64 %1924
  %1928 = load i32, ptr %1927, align 4, !tbaa !4
  %1929 = sext i32 %1928 to i64
  %1930 = getelementptr inbounds [4 x i8], ptr %1721, i64 %1929
  %1931 = load i16, ptr %1930, align 2, !tbaa !28
  %1932 = icmp ult i16 %1926, %1931
  br i1 %1932, label %1946, label %1933

1933:                                             ; preds = %1923
  %1934 = icmp eq i16 %1926, %1931
  br i1 %1934, label %1935, label %1940

1935:                                             ; preds = %1933
  %1936 = load i8, ptr %1888, align 1, !tbaa !28
  %1937 = getelementptr inbounds i8, ptr %232, i64 %1929
  %1938 = load i8, ptr %1937, align 1, !tbaa !28
  %1939 = icmp ugt i8 %1936, %1938
  br i1 %1939, label %1940, label %1946

1940:                                             ; preds = %1935, %1933
  %1941 = sext i32 %1895 to i64
  %1942 = getelementptr inbounds [4 x i8], ptr %231, i64 %1941
  store i32 %1928, ptr %1942, align 4, !tbaa !4
  %1943 = shl i32 %1925, 1
  %1944 = load i32, ptr %153, align 4, !tbaa !48
  %1945 = icmp sgt i32 %1943, %1944
  br i1 %1945, label %1946, label %1892, !llvm.loop !55

1946:                                             ; preds = %1940, %1935, %1923
  %1947 = phi i32 [ %1895, %1923 ], [ %1895, %1935 ], [ %1925, %1940 ]
  %1948 = sext i32 %1947 to i64
  br label %1949

1949:                                             ; preds = %1946, %1882
  %1950 = phi i64 [ 1, %1882 ], [ %1948, %1946 ]
  %1951 = getelementptr inbounds [4 x i8], ptr %231, i64 %1950
  store i32 %1886, ptr %1951, align 4, !tbaa !4
  %1952 = load i32, ptr %237, align 4, !tbaa !4
  %1953 = load i32, ptr %154, align 8, !tbaa !49
  %1954 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1953, i32 -1)
  %1955 = extractvalue { i32, i1 } %1954, 1, !nosanitize !32
  br i1 %1955, label %1789, label %1956, !prof !34, !nosanitize !32

1956:                                             ; preds = %1949
  %1957 = extractvalue { i32, i1 } %1954, 0, !nosanitize !32
  store i32 %1957, ptr %154, align 8, !tbaa !49
  %1958 = sext i32 %1957 to i64
  %1959 = getelementptr inbounds [4 x i8], ptr %231, i64 %1958
  store i32 %1879, ptr %1959, align 4, !tbaa !4
  %1960 = load i32, ptr %154, align 8, !tbaa !49
  %1961 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1960, i32 -1)
  %1962 = extractvalue { i32, i1 } %1961, 1, !nosanitize !32
  br i1 %1962, label %1789, label %1963, !prof !34, !nosanitize !32

1963:                                             ; preds = %1956
  %1964 = extractvalue { i32, i1 } %1961, 0, !nosanitize !32
  store i32 %1964, ptr %154, align 8, !tbaa !49
  %1965 = sext i32 %1964 to i64
  %1966 = getelementptr inbounds [4 x i8], ptr %231, i64 %1965
  store i32 %1952, ptr %1966, align 4, !tbaa !4
  %1967 = sext i32 %1879 to i64
  %1968 = getelementptr inbounds [4 x i8], ptr %1721, i64 %1967
  %1969 = load i16, ptr %1968, align 2, !tbaa !28
  %1970 = sext i32 %1952 to i64
  %1971 = getelementptr inbounds [4 x i8], ptr %1721, i64 %1970
  %1972 = load i16, ptr %1971, align 2, !tbaa !28
  %1973 = add i16 %1972, %1969
  %1974 = getelementptr inbounds [4 x i8], ptr %1721, i64 %1878
  store i16 %1973, ptr %1974, align 2, !tbaa !28
  %1975 = getelementptr inbounds i8, ptr %232, i64 %1967
  %1976 = load i8, ptr %1975, align 1, !tbaa !28
  %1977 = getelementptr inbounds i8, ptr %232, i64 %1970
  %1978 = load i8, ptr %1977, align 1, !tbaa !28
  %1979 = tail call i8 @llvm.umax.i8(i8 %1976, i8 %1978)
  %1980 = add i8 %1979, 1
  %1981 = getelementptr inbounds i8, ptr %232, i64 %1878
  store i8 %1980, ptr %1981, align 1, !tbaa !28
  %1982 = trunc nsw i64 %1878 to i32
  %1983 = trunc i64 %1878 to i16
  %1984 = getelementptr inbounds nuw i8, ptr %1971, i64 2
  store i16 %1983, ptr %1984, align 2, !tbaa !28
  %1985 = getelementptr inbounds nuw i8, ptr %1968, i64 2
  store i16 %1983, ptr %1985, align 2, !tbaa !28
  %1986 = icmp eq i64 %1878, 2147483647
  br i1 %1986, label %1749, label %1987, !prof !34, !nosanitize !32

1987:                                             ; preds = %1963
  %1988 = add nsw i64 %1878, 1
  store i32 %1982, ptr %237, align 4, !tbaa !4
  %1989 = load i32, ptr %153, align 4, !tbaa !48
  %1990 = icmp slt i32 %1989, 2
  br i1 %1990, label %2048, label %1991

1991:                                             ; preds = %1987, %2039
  %1992 = phi i32 [ %2043, %2039 ], [ %1989, %1987 ]
  %1993 = phi i32 [ %2042, %2039 ], [ 2, %1987 ]
  %1994 = phi i32 [ %2024, %2039 ], [ 1, %1987 ]
  %1995 = icmp slt i32 %1993, %1992
  br i1 %1995, label %1998, label %1996

1996:                                             ; preds = %1991
  %1997 = sext i32 %1993 to i64
  br label %2022

1998:                                             ; preds = %1991
  %1999 = or disjoint i32 %1993, 1
  %2000 = sext i32 %1999 to i64
  %2001 = getelementptr inbounds [4 x i8], ptr %231, i64 %2000
  %2002 = load i32, ptr %2001, align 4, !tbaa !4
  %2003 = sext i32 %2002 to i64
  %2004 = getelementptr inbounds [4 x i8], ptr %1721, i64 %2003
  %2005 = load i16, ptr %2004, align 2, !tbaa !28
  %2006 = sext i32 %1993 to i64
  %2007 = getelementptr inbounds [4 x i8], ptr %231, i64 %2006
  %2008 = load i32, ptr %2007, align 4, !tbaa !4
  %2009 = sext i32 %2008 to i64
  %2010 = getelementptr inbounds [4 x i8], ptr %1721, i64 %2009
  %2011 = load i16, ptr %2010, align 2, !tbaa !28
  %2012 = icmp ult i16 %2005, %2011
  br i1 %2012, label %2021, label %2013

2013:                                             ; preds = %1998
  %2014 = icmp eq i16 %2005, %2011
  br i1 %2014, label %2015, label %2022

2015:                                             ; preds = %2013
  %2016 = getelementptr inbounds i8, ptr %232, i64 %2003
  %2017 = load i8, ptr %2016, align 1, !tbaa !28
  %2018 = getelementptr inbounds i8, ptr %232, i64 %2009
  %2019 = load i8, ptr %2018, align 1, !tbaa !28
  %2020 = icmp ugt i8 %2017, %2019
  br i1 %2020, label %2022, label %2021

2021:                                             ; preds = %2015, %1998
  br label %2022

2022:                                             ; preds = %2021, %2015, %2013, %1996
  %2023 = phi i64 [ %1997, %1996 ], [ %2000, %2021 ], [ %2006, %2015 ], [ %2006, %2013 ]
  %2024 = phi i32 [ %1993, %1996 ], [ %1999, %2021 ], [ %1993, %2015 ], [ %1993, %2013 ]
  %2025 = load i16, ptr %1974, align 2, !tbaa !28
  %2026 = getelementptr inbounds [4 x i8], ptr %231, i64 %2023
  %2027 = load i32, ptr %2026, align 4, !tbaa !4
  %2028 = sext i32 %2027 to i64
  %2029 = getelementptr inbounds [4 x i8], ptr %1721, i64 %2028
  %2030 = load i16, ptr %2029, align 2, !tbaa !28
  %2031 = icmp ult i16 %2025, %2030
  br i1 %2031, label %2045, label %2032

2032:                                             ; preds = %2022
  %2033 = icmp eq i16 %2025, %2030
  br i1 %2033, label %2034, label %2039

2034:                                             ; preds = %2032
  %2035 = load i8, ptr %1981, align 1, !tbaa !28
  %2036 = getelementptr inbounds i8, ptr %232, i64 %2028
  %2037 = load i8, ptr %2036, align 1, !tbaa !28
  %2038 = icmp ugt i8 %2035, %2037
  br i1 %2038, label %2039, label %2045

2039:                                             ; preds = %2034, %2032
  %2040 = sext i32 %1994 to i64
  %2041 = getelementptr inbounds [4 x i8], ptr %231, i64 %2040
  store i32 %2027, ptr %2041, align 4, !tbaa !4
  %2042 = shl i32 %2024, 1
  %2043 = load i32, ptr %153, align 4, !tbaa !48
  %2044 = icmp sgt i32 %2042, %2043
  br i1 %2044, label %2045, label %1991, !llvm.loop !55

2045:                                             ; preds = %2039, %2034, %2022
  %2046 = phi i32 [ %1994, %2022 ], [ %1994, %2034 ], [ %2024, %2039 ]
  %2047 = sext i32 %2046 to i64
  br label %2048

2048:                                             ; preds = %2045, %1987
  %2049 = phi i64 [ 1, %1987 ], [ %2047, %2045 ]
  %2050 = getelementptr inbounds [4 x i8], ptr %231, i64 %2049
  store i32 %1982, ptr %2050, align 4, !tbaa !4
  %2051 = load i32, ptr %153, align 4, !tbaa !48
  %2052 = icmp sgt i32 %2051, 1
  br i1 %2052, label %1876, label %2053, !llvm.loop !57

2053:                                             ; preds = %2048
  %2054 = load i32, ptr %154, align 8, !tbaa !49
  %2055 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2054, i32 -1)
  %2056 = extractvalue { i32, i1 } %2055, 1, !nosanitize !32
  br i1 %2056, label %1789, label %2057, !prof !34, !nosanitize !32

2057:                                             ; preds = %2053
  %2058 = extractvalue { i32, i1 } %2055, 0, !nosanitize !32
  %2059 = load i32, ptr %237, align 4, !tbaa !4
  store i32 %2058, ptr %154, align 8, !tbaa !49
  %2060 = sext i32 %2058 to i64
  %2061 = getelementptr inbounds [4 x i8], ptr %231, i64 %2060
  store i32 %2059, ptr %2061, align 4, !tbaa !4
  %2062 = load ptr, ptr %1720, align 8, !tbaa !42
  %2063 = load i32, ptr %1798, align 8, !tbaa !54
  %2064 = load ptr, ptr %1722, align 8, !tbaa !43
  %2065 = load ptr, ptr %2064, align 8, !tbaa !44
  %2066 = getelementptr inbounds nuw i8, ptr %2064, i64 8
  %2067 = load ptr, ptr %2066, align 8, !tbaa !58
  %2068 = getelementptr inbounds nuw i8, ptr %2064, i64 16
  %2069 = load i32, ptr %2068, align 8, !tbaa !59
  %2070 = getelementptr inbounds nuw i8, ptr %2064, i64 24
  %2071 = load i32, ptr %2070, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %507, i8 0, i64 32, i1 false), !tbaa !61
  %2072 = load i32, ptr %154, align 8, !tbaa !49
  %2073 = sext i32 %2072 to i64
  %2074 = getelementptr inbounds [4 x i8], ptr %231, i64 %2073
  %2075 = load i32, ptr %2074, align 4, !tbaa !4
  %2076 = sext i32 %2075 to i64
  %2077 = getelementptr inbounds [4 x i8], ptr %2062, i64 %2076
  %2078 = getelementptr inbounds nuw i8, ptr %2077, i64 2
  store i16 0, ptr %2078, align 2, !tbaa !28
  %2079 = load i32, ptr %154, align 8, !tbaa !49
  %2080 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2079, i32 1), !nosanitize !32
  %2081 = extractvalue { i32, i1 } %2080, 1, !nosanitize !32
  br i1 %2081, label %2082, label %2083, !prof !34, !nosanitize !32

2082:                                             ; preds = %2132, %2107, %2057
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

2083:                                             ; preds = %2057
  %2084 = extractvalue { i32, i1 } %2080, 0
  %2085 = icmp slt i32 %2084, 573
  br i1 %2085, label %2086, label %2269

2086:                                             ; preds = %2083
  %2087 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2088 = icmp eq ptr %2065, null
  %2089 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2090 = sext i32 %2084 to i64
  br label %2091

2091:                                             ; preds = %2165, %2086
  %2092 = phi i64 [ %2090, %2086 ], [ %2166, %2165 ]
  %2093 = phi i32 [ 0, %2086 ], [ %2114, %2165 ]
  %2094 = getelementptr inbounds [4 x i8], ptr %231, i64 %2092
  %2095 = load i32, ptr %2094, align 4, !tbaa !4
  %2096 = sext i32 %2095 to i64
  %2097 = getelementptr inbounds [4 x i8], ptr %2062, i64 %2096
  %2098 = getelementptr inbounds nuw i8, ptr %2097, i64 2
  %2099 = load i16, ptr %2098, align 2, !tbaa !28
  %2100 = zext i16 %2099 to i64
  %2101 = getelementptr inbounds nuw [4 x i8], ptr %2062, i64 %2100
  %2102 = getelementptr inbounds nuw i8, ptr %2101, i64 2
  %2103 = load i16, ptr %2102, align 2, !tbaa !28
  %2104 = zext i16 %2103 to i32
  %2105 = add nuw nsw i32 %2104, 1
  %2106 = icmp sgt i32 %2071, %2104
  br i1 %2106, label %2112, label %2107

2107:                                             ; preds = %2091
  %2108 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2093, i32 1), !nosanitize !32
  %2109 = extractvalue { i32, i1 } %2108, 1, !nosanitize !32
  br i1 %2109, label %2082, label %2110, !prof !34, !nosanitize !32

2110:                                             ; preds = %2107
  %2111 = extractvalue { i32, i1 } %2108, 0, !nosanitize !32
  br label %2112

2112:                                             ; preds = %2110, %2091
  %2113 = phi i32 [ %2071, %2110 ], [ %2105, %2091 ]
  %2114 = phi i32 [ %2111, %2110 ], [ %2093, %2091 ]
  %2115 = trunc i32 %2113 to i16
  store i16 %2115, ptr %2098, align 2, !tbaa !28
  %2116 = icmp sgt i32 %2095, %2063
  br i1 %2116, label %2165, label %2117

2117:                                             ; preds = %2112
  %2118 = sext i32 %2113 to i64
  %2119 = getelementptr inbounds [2 x i8], ptr %507, i64 %2118
  %2120 = load i16, ptr %2119, align 2, !tbaa !61
  %2121 = add i16 %2120, 1
  store i16 %2121, ptr %2119, align 2, !tbaa !61
  %2122 = icmp slt i32 %2095, %2069
  br i1 %2122, label %2132, label %2123

2123:                                             ; preds = %2117
  %2124 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2095, i32 %2069), !nosanitize !32
  %2125 = extractvalue { i32, i1 } %2124, 1, !nosanitize !32
  br i1 %2125, label %2126, label %2127, !prof !34, !nosanitize !32

2126:                                             ; preds = %2123, %2193, %2185, %2221, %2226, %2171
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

2127:                                             ; preds = %2123
  %2128 = extractvalue { i32, i1 } %2124, 0, !nosanitize !32
  %2129 = sext i32 %2128 to i64
  %2130 = getelementptr inbounds [4 x i8], ptr %2067, i64 %2129
  %2131 = load i32, ptr %2130, align 4, !tbaa !4
  br label %2132

2132:                                             ; preds = %2127, %2117
  %2133 = phi i32 [ %2131, %2127 ], [ 0, %2117 ]
  %2134 = load i16, ptr %2097, align 2, !tbaa !28
  %2135 = zext i16 %2134 to i64
  %2136 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2113, i32 %2133), !nosanitize !32
  %2137 = extractvalue { i32, i1 } %2136, 1, !nosanitize !32
  br i1 %2137, label %2082, label %2138, !prof !34, !nosanitize !32

2138:                                             ; preds = %2132
  %2139 = extractvalue { i32, i1 } %2136, 0, !nosanitize !32
  %2140 = zext i32 %2139 to i64
  %2141 = mul nuw nsw i64 %2140, %2135
  %2142 = load i64, ptr %2087, align 8, !tbaa !51
  %2143 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2142, i64 %2141), !nosanitize !32
  %2144 = extractvalue { i64, i1 } %2143, 1, !nosanitize !32
  br i1 %2144, label %2145, label %2146, !prof !34, !nosanitize !32

2145:                                             ; preds = %2148, %2138
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2146:                                             ; preds = %2138
  %2147 = extractvalue { i64, i1 } %2143, 0, !nosanitize !32
  store i64 %2147, ptr %2087, align 8, !tbaa !51
  br i1 %2088, label %2165, label %2148

2148:                                             ; preds = %2146
  %2149 = getelementptr inbounds [4 x i8], ptr %2065, i64 %2096
  %2150 = getelementptr inbounds nuw i8, ptr %2149, i64 2
  %2151 = load i16, ptr %2150, align 2, !tbaa !28
  %2152 = zext i16 %2151 to i32
  %2153 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2152, i32 %2133), !nosanitize !32
  %2154 = extractvalue { i32, i1 } %2153, 1, !nosanitize !32
  br i1 %2154, label %2145, label %2155, !prof !34, !nosanitize !32

2155:                                             ; preds = %2148
  %2156 = extractvalue { i32, i1 } %2153, 0, !nosanitize !32
  %2157 = zext i32 %2156 to i64
  %2158 = mul nuw nsw i64 %2157, %2135
  %2159 = load i64, ptr %2089, align 8, !tbaa !52
  %2160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2159, i64 %2158), !nosanitize !32
  %2161 = extractvalue { i64, i1 } %2160, 1, !nosanitize !32
  br i1 %2161, label %2162, label %2163, !prof !34, !nosanitize !32

2162:                                             ; preds = %2155, %2188
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2163:                                             ; preds = %2155
  %2164 = extractvalue { i64, i1 } %2160, 0, !nosanitize !32
  store i64 %2164, ptr %2089, align 8, !tbaa !52
  br label %2165

2165:                                             ; preds = %2163, %2146, %2112
  %2166 = add nsw i64 %2092, 1
  %2167 = and i64 %2166, 4294967295
  %2168 = icmp eq i64 %2167, 573
  br i1 %2168, label %2169, label %2091, !llvm.loop !62

2169:                                             ; preds = %2165
  %2170 = icmp eq i32 %2114, 0
  br i1 %2170, label %2269, label %2171

2171:                                             ; preds = %2169
  %2172 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2071, i32 -1)
  %2173 = extractvalue { i32, i1 } %2172, 1, !nosanitize !32
  %2174 = sext i32 %2071 to i64
  %2175 = getelementptr inbounds [2 x i8], ptr %507, i64 %2174
  br i1 %2173, label %2126, label %2176, !prof !34, !nosanitize !32

2176:                                             ; preds = %2171, %2203
  %2177 = phi i32 [ %2204, %2203 ], [ %2114, %2171 ]
  br label %2178

2178:                                             ; preds = %2185, %2176
  %2179 = phi { i32, i1 } [ %2186, %2185 ], [ %2172, %2176 ]
  %2180 = extractvalue { i32, i1 } %2179, 0
  %2181 = sext i32 %2180 to i64
  %2182 = getelementptr inbounds [2 x i8], ptr %507, i64 %2181
  %2183 = load i16, ptr %2182, align 2, !tbaa !61
  %2184 = icmp eq i16 %2183, 0
  br i1 %2184, label %2185, label %2188

2185:                                             ; preds = %2178
  %2186 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2180, i32 -1)
  %2187 = extractvalue { i32, i1 } %2186, 1, !nosanitize !32
  br i1 %2187, label %2126, label %2178, !prof !34, !llvm.loop !63, !nosanitize !32

2188:                                             ; preds = %2178
  %2189 = getelementptr inbounds [2 x i8], ptr %507, i64 %2181
  %2190 = add i16 %2183, -1
  store i16 %2190, ptr %2189, align 2, !tbaa !61
  %2191 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2180, i32 1), !nosanitize !32
  %2192 = extractvalue { i32, i1 } %2191, 1, !nosanitize !32
  br i1 %2192, label %2162, label %2193, !prof !34, !nosanitize !32

2193:                                             ; preds = %2188
  %2194 = extractvalue { i32, i1 } %2191, 0, !nosanitize !32
  %2195 = sext i32 %2194 to i64
  %2196 = getelementptr inbounds [2 x i8], ptr %507, i64 %2195
  %2197 = load i16, ptr %2196, align 2, !tbaa !61
  %2198 = add i16 %2197, 2
  store i16 %2198, ptr %2196, align 2, !tbaa !61
  %2199 = load i16, ptr %2175, align 2, !tbaa !61
  %2200 = add i16 %2199, -1
  store i16 %2200, ptr %2175, align 2, !tbaa !61
  %2201 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2177, i32 -2)
  %2202 = extractvalue { i32, i1 } %2201, 1, !nosanitize !32
  br i1 %2202, label %2126, label %2203, !prof !34, !nosanitize !32

2203:                                             ; preds = %2193
  %2204 = extractvalue { i32, i1 } %2201, 0, !nosanitize !32
  %2205 = icmp sgt i32 %2204, 0
  br i1 %2205, label %2176, label %2206, !llvm.loop !64

2206:                                             ; preds = %2203
  %2207 = icmp eq i32 %2071, 0
  br i1 %2207, label %2269, label %2208

2208:                                             ; preds = %2206, %2265
  %2209 = phi i64 [ %2266, %2265 ], [ %2174, %2206 ]
  %2210 = phi i32 [ %2218, %2265 ], [ 573, %2206 ]
  %2211 = getelementptr inbounds [2 x i8], ptr %507, i64 %2209
  %2212 = load i16, ptr %2211, align 2, !tbaa !61
  %2213 = icmp eq i16 %2212, 0
  br i1 %2213, label %2217, label %2214

2214:                                             ; preds = %2208
  %2215 = zext i16 %2212 to i32
  %2216 = trunc i64 %2209 to i16
  br label %2221

2217:                                             ; preds = %2262, %2208
  %2218 = phi i32 [ %2210, %2208 ], [ %2231, %2262 ]
  %2219 = and i64 %2209, 4294967295
  %2220 = icmp eq i64 %2219, 2147483648
  br i1 %2220, label %2246, label %2265, !prof !34, !nosanitize !32

2221:                                             ; preds = %2262, %2214
  %2222 = phi i32 [ %2210, %2214 ], [ %2231, %2262 ]
  %2223 = phi i32 [ %2215, %2214 ], [ %2263, %2262 ]
  %2224 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2222, i32 -1)
  %2225 = extractvalue { i32, i1 } %2224, 1, !nosanitize !32
  br i1 %2225, label %2126, label %2229, !prof !65, !nosanitize !32

2226:                                             ; preds = %2229
  %2227 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2231, i32 -1)
  %2228 = extractvalue { i32, i1 } %2227, 1, !nosanitize !32
  br i1 %2228, label %2126, label %2229, !prof !66, !llvm.loop !67, !nosanitize !32

2229:                                             ; preds = %2221, %2226
  %2230 = phi { i32, i1 } [ %2227, %2226 ], [ %2224, %2221 ]
  %2231 = extractvalue { i32, i1 } %2230, 0, !nosanitize !32
  %2232 = sext i32 %2231 to i64
  %2233 = getelementptr inbounds [4 x i8], ptr %231, i64 %2232
  %2234 = load i32, ptr %2233, align 4, !tbaa !4
  %2235 = icmp sgt i32 %2234, %2063
  br i1 %2235, label %2226, label %2236, !llvm.loop !67

2236:                                             ; preds = %2229
  %2237 = sext i32 %2234 to i64
  %2238 = getelementptr inbounds [4 x i8], ptr %2062, i64 %2237
  %2239 = getelementptr inbounds nuw i8, ptr %2238, i64 2
  %2240 = load i16, ptr %2239, align 2, !tbaa !28
  %2241 = zext i16 %2240 to i64
  %2242 = icmp eq i64 %2209, %2241
  br i1 %2242, label %2262, label %2243

2243:                                             ; preds = %2236
  %2244 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2209, i64 %2241), !nosanitize !32
  %2245 = extractvalue { i64, i1 } %2244, 1, !nosanitize !32
  br i1 %2245, label %2246, label %2247, !prof !34, !nosanitize !32

2246:                                             ; preds = %2217, %2243
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

2247:                                             ; preds = %2243
  %2248 = extractvalue { i64, i1 } %2244, 0, !nosanitize !32
  %2249 = load i16, ptr %2238, align 2, !tbaa !28
  %2250 = zext i16 %2249 to i64
  %2251 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2248, i64 %2250), !nosanitize !32
  %2252 = extractvalue { i64, i1 } %2251, 1, !nosanitize !32
  br i1 %2252, label %2253, label %2254, !prof !34, !nosanitize !32

2253:                                             ; preds = %2247
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !32
  unreachable, !nosanitize !32

2254:                                             ; preds = %2247
  %2255 = extractvalue { i64, i1 } %2251, 0, !nosanitize !32
  %2256 = load i64, ptr %2087, align 8, !tbaa !51
  %2257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2256, i64 %2255), !nosanitize !32
  %2258 = extractvalue { i64, i1 } %2257, 1, !nosanitize !32
  br i1 %2258, label %2259, label %2260, !prof !34, !nosanitize !32

2259:                                             ; preds = %2254
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2260:                                             ; preds = %2254
  %2261 = extractvalue { i64, i1 } %2257, 0, !nosanitize !32
  store i64 %2261, ptr %2087, align 8, !tbaa !51
  store i16 %2216, ptr %2239, align 2, !tbaa !28
  br label %2262

2262:                                             ; preds = %2260, %2236
  %2263 = add nsw i32 %2223, -1
  %2264 = icmp eq i32 %2263, 0
  br i1 %2264, label %2217, label %2221, !llvm.loop !67

2265:                                             ; preds = %2217
  %2266 = add nsw i64 %2209, -1
  %2267 = and i64 %2266, 4294967295
  %2268 = icmp eq i64 %2267, 0
  br i1 %2268, label %2269, label %2208, !llvm.loop !68

2269:                                             ; preds = %2265, %2206, %2169, %2083
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %2270 = load i16, ptr %507, align 2, !tbaa !61
  %2271 = zext i16 %2270 to i32
  %2272 = shl nuw nsw i32 %2271, 1
  %2273 = trunc i32 %2272 to i16
  %2274 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %2273, ptr %2274, align 2, !tbaa !61
  %2275 = load i16, ptr %711, align 2, !tbaa !61
  %2276 = zext i16 %2275 to i32
  %2277 = add nuw nsw i32 %2272, %2276
  %2278 = shl nuw nsw i32 %2277, 1
  %2279 = trunc i32 %2278 to i16
  %2280 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2279, ptr %2280, align 4, !tbaa !61
  %2281 = load i16, ptr %718, align 2, !tbaa !61
  %2282 = zext i16 %2281 to i32
  %2283 = add nuw nsw i32 %2278, %2282
  %2284 = shl nuw nsw i32 %2283, 1
  %2285 = trunc i32 %2284 to i16
  %2286 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2285, ptr %2286, align 2, !tbaa !61
  %2287 = load i16, ptr %725, align 2, !tbaa !61
  %2288 = zext i16 %2287 to i32
  %2289 = add nuw nsw i32 %2284, %2288
  %2290 = shl nuw nsw i32 %2289, 1
  %2291 = trunc i32 %2290 to i16
  %2292 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %2291, ptr %2292, align 8, !tbaa !61
  %2293 = load i16, ptr %732, align 2, !tbaa !61
  %2294 = zext i16 %2293 to i32
  %2295 = add nuw nsw i32 %2290, %2294
  %2296 = shl nuw nsw i32 %2295, 1
  %2297 = trunc i32 %2296 to i16
  %2298 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %2297, ptr %2298, align 2, !tbaa !61
  %2299 = load i16, ptr %739, align 2, !tbaa !61
  %2300 = zext i16 %2299 to i32
  %2301 = add nuw nsw i32 %2296, %2300
  %2302 = shl nuw nsw i32 %2301, 1
  %2303 = trunc i32 %2302 to i16
  %2304 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %2303, ptr %2304, align 4, !tbaa !61
  %2305 = load i16, ptr %746, align 2, !tbaa !61
  %2306 = zext i16 %2305 to i32
  %2307 = add nuw nsw i32 %2302, %2306
  %2308 = shl nuw nsw i32 %2307, 1
  %2309 = trunc i32 %2308 to i16
  %2310 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %2309, ptr %2310, align 2, !tbaa !61
  %2311 = load i16, ptr %753, align 2, !tbaa !61
  %2312 = zext i16 %2311 to i32
  %2313 = add nuw nsw i32 %2308, %2312
  %2314 = shl nuw nsw i32 %2313, 1
  %2315 = trunc i32 %2314 to i16
  %2316 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %2315, ptr %2316, align 16, !tbaa !61
  %2317 = load i16, ptr %760, align 2, !tbaa !61
  %2318 = trunc i32 %2314 to i16
  %2319 = add i16 %2317, %2318
  %2320 = shl i16 %2319, 1
  %2321 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %2320, ptr %2321, align 2, !tbaa !61
  %2322 = load i16, ptr %767, align 2, !tbaa !61
  %2323 = add i16 %2322, %2320
  %2324 = shl i16 %2323, 1
  %2325 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %2324, ptr %2325, align 4, !tbaa !61
  %2326 = load i16, ptr %774, align 2, !tbaa !61
  %2327 = add i16 %2324, %2326
  %2328 = shl i16 %2327, 1
  %2329 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %2328, ptr %2329, align 2, !tbaa !61
  %2330 = load i16, ptr %780, align 2, !tbaa !61
  %2331 = add i16 %2328, %2330
  %2332 = shl i16 %2331, 1
  %2333 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2332, ptr %2333, align 8, !tbaa !61
  %2334 = load i16, ptr %785, align 2, !tbaa !61
  %2335 = add i16 %2332, %2334
  %2336 = shl i16 %2335, 1
  %2337 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2336, ptr %2337, align 2, !tbaa !61
  %2338 = load i16, ptr %790, align 2, !tbaa !61
  %2339 = add i16 %2336, %2338
  %2340 = shl i16 %2339, 1
  %2341 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2340, ptr %2341, align 4, !tbaa !61
  %2342 = load i16, ptr %795, align 2, !tbaa !61
  %2343 = add i16 %2340, %2342
  %2344 = shl i16 %2343, 1
  %2345 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2344, ptr %2345, align 2, !tbaa !61
  %2346 = icmp slt i32 %1796, 0
  br i1 %2346, label %2408, label %2348

2347:                                             ; preds = %2402
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2348:                                             ; preds = %2269, %2404
  %2349 = phi i64 [ %2405, %2404 ], [ 0, %2269 ]
  %2350 = getelementptr inbounds nuw [4 x i8], ptr %1721, i64 %2349
  %2351 = getelementptr inbounds nuw i8, ptr %2350, i64 2
  %2352 = load i16, ptr %2351, align 2, !tbaa !28
  %2353 = icmp eq i16 %2352, 0
  br i1 %2353, label %2402, label %2354

2354:                                             ; preds = %2348
  %2355 = zext i16 %2352 to i32
  %2356 = zext i16 %2352 to i64
  %2357 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %2356
  %2358 = load i16, ptr %2357, align 2, !tbaa !61
  %2359 = add i16 %2358, 1
  store i16 %2359, ptr %2357, align 2, !tbaa !61
  %2360 = and i32 %2355, 3
  %2361 = icmp ult i16 %2352, 4
  br i1 %2361, label %2386, label %2362

2362:                                             ; preds = %2354
  %2363 = and i32 %2355, 65532
  br label %2364

2364:                                             ; preds = %2364, %2362
  %2365 = phi i16 [ %2358, %2362 ], [ %2381, %2364 ]
  %2366 = phi i16 [ 0, %2362 ], [ %2380, %2364 ]
  %2367 = phi i32 [ 0, %2362 ], [ %2382, %2364 ]
  %2368 = and i16 %2365, 1
  %2369 = or disjoint i16 %2366, %2368
  %2370 = shl i16 %2369, 2
  %2371 = and i16 %2365, 2
  %2372 = or disjoint i16 %2370, %2371
  %2373 = lshr i16 %2365, 2
  %2374 = and i16 %2373, 1
  %2375 = or disjoint i16 %2372, %2374
  %2376 = shl i16 %2375, 1
  %2377 = lshr i16 %2365, 3
  %2378 = and i16 %2377, 1
  %2379 = or disjoint i16 %2376, %2378
  %2380 = shl i16 %2379, 1
  %2381 = lshr i16 %2365, 4
  %2382 = add i32 %2367, 4
  %2383 = icmp eq i32 %2382, %2363
  br i1 %2383, label %2384, label %2364, !llvm.loop !69

2384:                                             ; preds = %2364
  %2385 = icmp eq i32 %2360, 0
  br i1 %2385, label %2400, label %2386

2386:                                             ; preds = %2384, %2354
  %2387 = phi i16 [ %2358, %2354 ], [ %2381, %2384 ]
  %2388 = phi i16 [ 0, %2354 ], [ %2380, %2384 ]
  %2389 = icmp ne i32 %2360, 0
  tail call void @llvm.assume(i1 %2389)
  br label %2390

2390:                                             ; preds = %2390, %2386
  %2391 = phi i16 [ %2387, %2386 ], [ %2397, %2390 ]
  %2392 = phi i16 [ %2388, %2386 ], [ %2396, %2390 ]
  %2393 = phi i32 [ 0, %2386 ], [ %2398, %2390 ]
  %2394 = and i16 %2391, 1
  %2395 = or disjoint i16 %2392, %2394
  %2396 = shl i16 %2395, 1
  %2397 = lshr i16 %2391, 1
  %2398 = add i32 %2393, 1
  %2399 = icmp eq i32 %2398, %2360
  br i1 %2399, label %2400, label %2390, !llvm.loop !78

2400:                                             ; preds = %2390, %2384
  %2401 = phi i16 [ %2379, %2384 ], [ %2395, %2390 ]
  store i16 %2401, ptr %2350, align 2, !tbaa !28
  br label %2402

2402:                                             ; preds = %2400, %2348
  %2403 = icmp eq i64 %2349, 2147483647
  br i1 %2403, label %2347, label %2404, !prof !34, !nosanitize !32

2404:                                             ; preds = %2402
  %2405 = add nuw nsw i64 %2349, 1
  %2406 = trunc i64 %2405 to i32
  %2407 = icmp slt i32 %1796, %2406
  br i1 %2407, label %2408, label %2348, !llvm.loop !72

2408:                                             ; preds = %2404, %2269
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %2409 = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %2410 = load i16, ptr %2409, align 2, !tbaa !28
  %2411 = icmp eq i16 %2410, 0
  br i1 %2411, label %2412, label %2473

2412:                                             ; preds = %2408
  %2413 = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %2414 = load i16, ptr %2413, align 2, !tbaa !28
  %2415 = icmp eq i16 %2414, 0
  br i1 %2415, label %2416, label %2473

2416:                                             ; preds = %2412
  %2417 = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %2418 = load i16, ptr %2417, align 2, !tbaa !28
  %2419 = icmp eq i16 %2418, 0
  br i1 %2419, label %2420, label %2473

2420:                                             ; preds = %2416
  %2421 = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %2422 = load i16, ptr %2421, align 2, !tbaa !28
  %2423 = icmp eq i16 %2422, 0
  br i1 %2423, label %2424, label %2473

2424:                                             ; preds = %2420
  %2425 = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %2426 = load i16, ptr %2425, align 2, !tbaa !28
  %2427 = icmp eq i16 %2426, 0
  br i1 %2427, label %2428, label %2473

2428:                                             ; preds = %2424
  %2429 = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %2430 = load i16, ptr %2429, align 2, !tbaa !28
  %2431 = icmp eq i16 %2430, 0
  br i1 %2431, label %2432, label %2473

2432:                                             ; preds = %2428
  %2433 = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %2434 = load i16, ptr %2433, align 2, !tbaa !28
  %2435 = icmp eq i16 %2434, 0
  br i1 %2435, label %2436, label %2473

2436:                                             ; preds = %2432
  %2437 = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %2438 = load i16, ptr %2437, align 2, !tbaa !28
  %2439 = icmp eq i16 %2438, 0
  br i1 %2439, label %2440, label %2473

2440:                                             ; preds = %2436
  %2441 = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %2442 = load i16, ptr %2441, align 2, !tbaa !28
  %2443 = icmp eq i16 %2442, 0
  br i1 %2443, label %2444, label %2473

2444:                                             ; preds = %2440
  %2445 = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %2446 = load i16, ptr %2445, align 2, !tbaa !28
  %2447 = icmp eq i16 %2446, 0
  br i1 %2447, label %2448, label %2473

2448:                                             ; preds = %2444
  %2449 = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %2450 = load i16, ptr %2449, align 2, !tbaa !28
  %2451 = icmp eq i16 %2450, 0
  br i1 %2451, label %2452, label %2473

2452:                                             ; preds = %2448
  %2453 = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %2454 = load i16, ptr %2453, align 2, !tbaa !28
  %2455 = icmp eq i16 %2454, 0
  br i1 %2455, label %2456, label %2473

2456:                                             ; preds = %2452
  %2457 = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %2458 = load i16, ptr %2457, align 2, !tbaa !28
  %2459 = icmp eq i16 %2458, 0
  br i1 %2459, label %2460, label %2473

2460:                                             ; preds = %2456
  %2461 = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %2462 = load i16, ptr %2461, align 2, !tbaa !28
  %2463 = icmp eq i16 %2462, 0
  br i1 %2463, label %2464, label %2473

2464:                                             ; preds = %2460
  %2465 = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %2466 = load i16, ptr %2465, align 2, !tbaa !28
  %2467 = icmp eq i16 %2466, 0
  br i1 %2467, label %2468, label %2473

2468:                                             ; preds = %2464
  %2469 = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %2470 = load i16, ptr %2469, align 2, !tbaa !28
  %2471 = icmp eq i16 %2470, 0
  %2472 = select i1 %2471, i32 2, i32 3
  br label %2473

2473:                                             ; preds = %2468, %2464, %2460, %2456, %2452, %2448, %2444, %2440, %2436, %2432, %2428, %2424, %2420, %2416, %2412, %2408
  %2474 = phi i32 [ 18, %2408 ], [ 10, %2440 ], [ 17, %2412 ], [ %2472, %2468 ], [ 16, %2416 ], [ 8, %2448 ], [ 15, %2420 ], [ 4, %2464 ], [ 14, %2424 ], [ 9, %2444 ], [ 13, %2428 ], [ 5, %2460 ], [ 12, %2432 ], [ 7, %2452 ], [ 11, %2436 ], [ 6, %2456 ]
  %2475 = mul nuw nsw i32 %2474, 3
  %2476 = add nuw nsw i32 %2475, 17
  %2477 = zext nneg i32 %2476 to i64
  %2478 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2479 = load i64, ptr %2478, align 8, !tbaa !51
  %2480 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2479, i64 %2477), !nosanitize !32
  %2481 = extractvalue { i64, i1 } %2480, 1, !nosanitize !32
  br i1 %2481, label %2482, label %2483, !prof !34, !nosanitize !32

2482:                                             ; preds = %2473
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2483:                                             ; preds = %2473
  %2484 = extractvalue { i64, i1 } %2480, 0, !nosanitize !32
  store i64 %2484, ptr %2478, align 8, !tbaa !51
  %2485 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2484, i64 3), !nosanitize !32
  %2486 = extractvalue { i64, i1 } %2485, 1, !nosanitize !32
  br i1 %2486, label %2487, label %2488, !prof !34, !nosanitize !32

2487:                                             ; preds = %2483
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2488:                                             ; preds = %2483
  %2489 = extractvalue { i64, i1 } %2485, 0, !nosanitize !32
  %2490 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2489, i64 7), !nosanitize !32
  %2491 = extractvalue { i64, i1 } %2490, 1, !nosanitize !32
  br i1 %2491, label %2492, label %2493, !prof !34, !nosanitize !32

2492:                                             ; preds = %2488
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2493:                                             ; preds = %2488
  %2494 = extractvalue { i64, i1 } %2490, 0, !nosanitize !32
  %2495 = lshr i64 %2494, 3
  %2496 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2497 = load i64, ptr %2496, align 8, !tbaa !52
  %2498 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2497, i64 3), !nosanitize !32
  %2499 = extractvalue { i64, i1 } %2498, 1, !nosanitize !32
  br i1 %2499, label %2500, label %2501, !prof !34, !nosanitize !32

2500:                                             ; preds = %2493
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2501:                                             ; preds = %2493
  %2502 = extractvalue { i64, i1 } %2498, 0, !nosanitize !32
  %2503 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2502, i64 7), !nosanitize !32
  %2504 = extractvalue { i64, i1 } %2503, 1, !nosanitize !32
  br i1 %2504, label %2505, label %2506, !prof !34, !nosanitize !32

2505:                                             ; preds = %2501
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2506:                                             ; preds = %2501
  %2507 = extractvalue { i64, i1 } %2503, 0, !nosanitize !32
  %2508 = lshr i64 %2507, 3
  %2509 = icmp samesign ugt i64 %2508, %2495
  br i1 %2509, label %2510, label %2514

2510:                                             ; preds = %2506
  %2511 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2512 = load i32, ptr %2511, align 8, !tbaa !79
  %2513 = icmp eq i32 %2512, 4
  br i1 %2513, label %2514, label %2521

2514:                                             ; preds = %2510, %2506
  br label %2521

2515:                                             ; preds = %4
  %2516 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 5), !nosanitize !32
  %2517 = extractvalue { i64, i1 } %2516, 1, !nosanitize !32
  br i1 %2517, label %2518, label %2519, !prof !34, !nosanitize !32

2518:                                             ; preds = %2515
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2519:                                             ; preds = %2515
  %2520 = extractvalue { i64, i1 } %2516, 0, !nosanitize !32
  br label %2521

2521:                                             ; preds = %2510, %2514, %2519
  %2522 = phi i32 [ %2474, %2514 ], [ %2474, %2510 ], [ 0, %2519 ]
  %2523 = phi i1 [ true, %2514 ], [ false, %2510 ], [ true, %2519 ]
  %2524 = phi i64 [ %2508, %2514 ], [ %2495, %2510 ], [ %2520, %2519 ]
  %2525 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 4), !nosanitize !32
  %2526 = extractvalue { i64, i1 } %2525, 1, !nosanitize !32
  br i1 %2526, label %2527, label %2528, !prof !34, !nosanitize !32

2527:                                             ; preds = %2697, %2521
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2528:                                             ; preds = %2521
  %2529 = extractvalue { i64, i1 } %2525, 0, !nosanitize !32
  %2530 = icmp ule i64 %2529, %2524
  %2531 = icmp ne ptr %1, null
  %2532 = and i1 %2531, %2530
  %2533 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2534 = load i32, ptr %2533, align 4, !tbaa !26
  %2535 = icmp sgt i32 %2534, 13
  br i1 %2532, label %2536, label %2692

2536:                                             ; preds = %2528
  br i1 %2535, label %2538, label %2576

2537:                                             ; preds = %2560
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

2538:                                             ; preds = %2536
  %2539 = and i32 %3, 65535
  %2540 = shl i32 %3, %2534
  %2541 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2542 = load i16, ptr %2541, align 8, !tbaa !25
  %2543 = trunc i32 %2540 to i16
  %2544 = or i16 %2542, %2543
  store i16 %2544, ptr %2541, align 8, !tbaa !25
  %2545 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2546 = load i64, ptr %2545, align 8, !tbaa !33
  %2547 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2546, i64 1), !nosanitize !32
  %2548 = extractvalue { i64, i1 } %2547, 1, !nosanitize !32
  br i1 %2548, label %2549, label %2550, !prof !34, !nosanitize !32

2549:                                             ; preds = %2538
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2550:                                             ; preds = %2538
  %2551 = extractvalue { i64, i1 } %2547, 0, !nosanitize !32
  %2552 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2553 = load ptr, ptr %2552, align 8, !tbaa !35
  %2554 = trunc i16 %2544 to i8
  store i64 %2551, ptr %2545, align 8, !tbaa !33
  %2555 = getelementptr inbounds nuw i8, ptr %2553, i64 %2546
  store i8 %2554, ptr %2555, align 1, !tbaa !28
  %2556 = load i64, ptr %2545, align 8, !tbaa !33
  %2557 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2556, i64 1), !nosanitize !32
  %2558 = extractvalue { i64, i1 } %2557, 1, !nosanitize !32
  br i1 %2558, label %2559, label %2560, !prof !34, !nosanitize !32

2559:                                             ; preds = %2570, %2550
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2560:                                             ; preds = %2550
  %2561 = extractvalue { i64, i1 } %2557, 0, !nosanitize !32
  %2562 = load ptr, ptr %2552, align 8, !tbaa !35
  %2563 = load i16, ptr %2541, align 8, !tbaa !25
  %2564 = lshr i16 %2563, 8
  %2565 = trunc nuw i16 %2564 to i8
  store i64 %2561, ptr %2545, align 8, !tbaa !33
  %2566 = getelementptr inbounds nuw i8, ptr %2562, i64 %2556
  store i8 %2565, ptr %2566, align 1, !tbaa !28
  %2567 = load i32, ptr %2533, align 4, !tbaa !26
  %2568 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2567), !nosanitize !32
  %2569 = extractvalue { i32, i1 } %2568, 1, !nosanitize !32
  br i1 %2569, label %2537, label %2570, !prof !34, !nosanitize !32

2570:                                             ; preds = %2560
  %2571 = extractvalue { i32, i1 } %2568, 0, !nosanitize !32
  %2572 = lshr i32 %2539, %2571
  %2573 = trunc nuw i32 %2572 to i16
  store i16 %2573, ptr %2541, align 8, !tbaa !25
  %2574 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2567, i32 -13), !nosanitize !32
  %2575 = extractvalue { i32, i1 } %2574, 1, !nosanitize !32
  br i1 %2575, label %2559, label %2584, !prof !34, !nosanitize !32

2576:                                             ; preds = %2536
  %2577 = shl i32 %3, %2534
  %2578 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2579 = load i16, ptr %2578, align 8, !tbaa !25
  %2580 = trunc i32 %2577 to i16
  %2581 = or i16 %2579, %2580
  store i16 %2581, ptr %2578, align 8, !tbaa !25
  %2582 = add nsw i32 %2534, 3
  %2583 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2582, 0
  br label %2584

2584:                                             ; preds = %2576, %2570
  %2585 = phi i16 [ %2573, %2570 ], [ %2581, %2576 ]
  %2586 = phi { i32, i1 } [ %2574, %2570 ], [ %2583, %2576 ]
  %2587 = extractvalue { i32, i1 } %2586, 0
  store i32 %2587, ptr %2533, align 4, !tbaa !26
  %2588 = icmp sgt i32 %2587, 8
  br i1 %2588, label %2589, label %2613

2589:                                             ; preds = %2584
  %2590 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2591 = load i64, ptr %2590, align 8, !tbaa !33
  %2592 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2591, i64 1), !nosanitize !32
  %2593 = extractvalue { i64, i1 } %2592, 1, !nosanitize !32
  br i1 %2593, label %2594, label %2595, !prof !34, !nosanitize !32

2594:                                             ; preds = %2589
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2595:                                             ; preds = %2589
  %2596 = extractvalue { i64, i1 } %2592, 0, !nosanitize !32
  %2597 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2598 = load ptr, ptr %2597, align 8, !tbaa !35
  %2599 = trunc i16 %2585 to i8
  store i64 %2596, ptr %2590, align 8, !tbaa !33
  %2600 = getelementptr inbounds nuw i8, ptr %2598, i64 %2591
  store i8 %2599, ptr %2600, align 1, !tbaa !28
  %2601 = load i64, ptr %2590, align 8, !tbaa !33
  %2602 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2601, i64 1), !nosanitize !32
  %2603 = extractvalue { i64, i1 } %2602, 1, !nosanitize !32
  br i1 %2603, label %2604, label %2605, !prof !34, !nosanitize !32

2604:                                             ; preds = %2595
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2605:                                             ; preds = %2595
  %2606 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2607 = extractvalue { i64, i1 } %2602, 0, !nosanitize !32
  %2608 = load ptr, ptr %2597, align 8, !tbaa !35
  %2609 = load i16, ptr %2606, align 8, !tbaa !25
  %2610 = lshr i16 %2609, 8
  %2611 = trunc nuw i16 %2610 to i8
  store i64 %2607, ptr %2590, align 8, !tbaa !33
  %2612 = getelementptr inbounds nuw i8, ptr %2608, i64 %2601
  store i8 %2611, ptr %2612, align 1, !tbaa !28
  br label %2627

2613:                                             ; preds = %2584
  %2614 = icmp sgt i32 %2587, 0
  br i1 %2614, label %2615, label %2627

2615:                                             ; preds = %2613
  %2616 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2617 = load i64, ptr %2616, align 8, !tbaa !33
  %2618 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2617, i64 1), !nosanitize !32
  %2619 = extractvalue { i64, i1 } %2618, 1, !nosanitize !32
  br i1 %2619, label %2620, label %2621, !prof !34, !nosanitize !32

2620:                                             ; preds = %2615
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2621:                                             ; preds = %2615
  %2622 = extractvalue { i64, i1 } %2618, 0, !nosanitize !32
  %2623 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2624 = load ptr, ptr %2623, align 8, !tbaa !35
  %2625 = trunc i16 %2585 to i8
  store i64 %2622, ptr %2616, align 8, !tbaa !33
  %2626 = getelementptr inbounds nuw i8, ptr %2624, i64 %2617
  store i8 %2625, ptr %2626, align 1, !tbaa !28
  br label %2627

2627:                                             ; preds = %2621, %2613, %2605
  %2628 = load i32, ptr %2533, align 4, !tbaa !26
  %2629 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2628, i32 -1)
  %2630 = extractvalue { i32, i1 } %2629, 1, !nosanitize !32
  br i1 %2630, label %2631, label %2632, !prof !34, !nosanitize !32

2631:                                             ; preds = %2627
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

2632:                                             ; preds = %2627
  %2633 = extractvalue { i32, i1 } %2629, 0, !nosanitize !32
  %2634 = and i32 %2633, 7
  %2635 = add nuw nsw i32 %2634, 1
  %2636 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %2635, ptr %2636, align 8, !tbaa !27
  %2637 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %2637, align 8, !tbaa !25
  store i32 0, ptr %2533, align 4, !tbaa !26
  %2638 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2639 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2640 = load i64, ptr %2639, align 8, !tbaa !33
  %2641 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2640, i64 1), !nosanitize !32
  %2642 = extractvalue { i64, i1 } %2641, 1, !nosanitize !32
  br i1 %2642, label %2643, label %2644, !prof !34, !nosanitize !32

2643:                                             ; preds = %2632
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2644:                                             ; preds = %2632
  %2645 = extractvalue { i64, i1 } %2641, 0, !nosanitize !32
  %2646 = load ptr, ptr %2638, align 8, !tbaa !35
  %2647 = trunc i64 %2 to i8
  store i64 %2645, ptr %2639, align 8, !tbaa !33
  %2648 = getelementptr inbounds nuw i8, ptr %2646, i64 %2640
  store i8 %2647, ptr %2648, align 1, !tbaa !28
  %2649 = load i64, ptr %2639, align 8, !tbaa !33
  %2650 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2649, i64 1), !nosanitize !32
  %2651 = extractvalue { i64, i1 } %2650, 1, !nosanitize !32
  br i1 %2651, label %2652, label %2653, !prof !34, !nosanitize !32

2652:                                             ; preds = %2644
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2653:                                             ; preds = %2644
  %2654 = extractvalue { i64, i1 } %2650, 0, !nosanitize !32
  %2655 = load ptr, ptr %2638, align 8, !tbaa !35
  %2656 = lshr i64 %2, 8
  %2657 = trunc i64 %2656 to i8
  store i64 %2654, ptr %2639, align 8, !tbaa !33
  %2658 = getelementptr inbounds nuw i8, ptr %2655, i64 %2649
  store i8 %2657, ptr %2658, align 1, !tbaa !28
  %2659 = load i64, ptr %2639, align 8, !tbaa !33
  %2660 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2659, i64 1), !nosanitize !32
  %2661 = extractvalue { i64, i1 } %2660, 1, !nosanitize !32
  br i1 %2661, label %2662, label %2663, !prof !34, !nosanitize !32

2662:                                             ; preds = %2653
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2663:                                             ; preds = %2653
  %2664 = extractvalue { i64, i1 } %2660, 0, !nosanitize !32
  %2665 = load ptr, ptr %2638, align 8, !tbaa !35
  %2666 = trunc i64 %2 to i32
  %2667 = xor i32 %2666, 65535
  %2668 = trunc i32 %2667 to i8
  store i64 %2664, ptr %2639, align 8, !tbaa !33
  %2669 = getelementptr inbounds nuw i8, ptr %2665, i64 %2659
  store i8 %2668, ptr %2669, align 1, !tbaa !28
  %2670 = load i64, ptr %2639, align 8, !tbaa !33
  %2671 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2670, i64 1), !nosanitize !32
  %2672 = extractvalue { i64, i1 } %2671, 1, !nosanitize !32
  br i1 %2672, label %2673, label %2674, !prof !34, !nosanitize !32

2673:                                             ; preds = %2663
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2674:                                             ; preds = %2663
  %2675 = extractvalue { i64, i1 } %2671, 0, !nosanitize !32
  %2676 = load ptr, ptr %2638, align 8, !tbaa !35
  %2677 = lshr i32 %2667, 8
  %2678 = trunc i32 %2677 to i8
  store i64 %2675, ptr %2639, align 8, !tbaa !33
  %2679 = getelementptr inbounds nuw i8, ptr %2676, i64 %2670
  store i8 %2678, ptr %2679, align 1, !tbaa !28
  %2680 = icmp eq i64 %2, 0
  br i1 %2680, label %2685, label %2681

2681:                                             ; preds = %2674
  %2682 = load ptr, ptr %2638, align 8, !tbaa !35
  %2683 = load i64, ptr %2639, align 8, !tbaa !33
  %2684 = getelementptr inbounds nuw i8, ptr %2682, i64 %2683
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2684, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %2685

2685:                                             ; preds = %2681, %2674
  %2686 = load i64, ptr %2639, align 8, !tbaa !33
  %2687 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2686, i64 %2), !nosanitize !32
  %2688 = extractvalue { i64, i1 } %2687, 1, !nosanitize !32
  br i1 %2688, label %2689, label %2690, !prof !34, !nosanitize !32

2689:                                             ; preds = %2685
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2690:                                             ; preds = %2685
  %2691 = extractvalue { i64, i1 } %2687, 0, !nosanitize !32
  store i64 %2691, ptr %2639, align 8, !tbaa !33
  br label %4713

2692:                                             ; preds = %2528
  br i1 %2523, label %2693, label %3124

2693:                                             ; preds = %2692
  %2694 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2), !nosanitize !32
  %2695 = extractvalue { i32, i1 } %2694, 1, !nosanitize !32
  br i1 %2535, label %2697, label %2737

2696:                                             ; preds = %3151, %2721
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

2697:                                             ; preds = %2693
  br i1 %2695, label %2527, label %2698, !prof !34, !nosanitize !32

2698:                                             ; preds = %2697
  %2699 = extractvalue { i32, i1 } %2694, 0, !nosanitize !32
  %2700 = and i32 %2699, 65535
  %2701 = shl i32 %2699, %2534
  %2702 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2703 = load i16, ptr %2702, align 8, !tbaa !25
  %2704 = trunc i32 %2701 to i16
  %2705 = or i16 %2703, %2704
  store i16 %2705, ptr %2702, align 8, !tbaa !25
  %2706 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2707 = load i64, ptr %2706, align 8, !tbaa !33
  %2708 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2707, i64 1), !nosanitize !32
  %2709 = extractvalue { i64, i1 } %2708, 1, !nosanitize !32
  br i1 %2709, label %2710, label %2711, !prof !34, !nosanitize !32

2710:                                             ; preds = %2698
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2711:                                             ; preds = %2698
  %2712 = extractvalue { i64, i1 } %2708, 0, !nosanitize !32
  %2713 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2714 = load ptr, ptr %2713, align 8, !tbaa !35
  %2715 = trunc i16 %2705 to i8
  store i64 %2712, ptr %2706, align 8, !tbaa !33
  %2716 = getelementptr inbounds nuw i8, ptr %2714, i64 %2707
  store i8 %2715, ptr %2716, align 1, !tbaa !28
  %2717 = load i64, ptr %2706, align 8, !tbaa !33
  %2718 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2717, i64 1), !nosanitize !32
  %2719 = extractvalue { i64, i1 } %2718, 1, !nosanitize !32
  br i1 %2719, label %2720, label %2721, !prof !34, !nosanitize !32

2720:                                             ; preds = %3127, %2737, %2731, %2711
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2721:                                             ; preds = %2711
  %2722 = extractvalue { i64, i1 } %2718, 0, !nosanitize !32
  %2723 = load ptr, ptr %2713, align 8, !tbaa !35
  %2724 = load i16, ptr %2702, align 8, !tbaa !25
  %2725 = lshr i16 %2724, 8
  %2726 = trunc nuw i16 %2725 to i8
  store i64 %2722, ptr %2706, align 8, !tbaa !33
  %2727 = getelementptr inbounds nuw i8, ptr %2723, i64 %2717
  store i8 %2726, ptr %2727, align 1, !tbaa !28
  %2728 = load i32, ptr %2533, align 4, !tbaa !26
  %2729 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2728), !nosanitize !32
  %2730 = extractvalue { i32, i1 } %2729, 1, !nosanitize !32
  br i1 %2730, label %2696, label %2731, !prof !34, !nosanitize !32

2731:                                             ; preds = %2721
  %2732 = extractvalue { i32, i1 } %2729, 0, !nosanitize !32
  %2733 = lshr i32 %2700, %2732
  %2734 = trunc nuw i32 %2733 to i16
  store i16 %2734, ptr %2702, align 8, !tbaa !25
  %2735 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2728, i32 -13), !nosanitize !32
  %2736 = extractvalue { i32, i1 } %2735, 1, !nosanitize !32
  br i1 %2736, label %2720, label %2747, !prof !34, !nosanitize !32

2737:                                             ; preds = %2693
  br i1 %2695, label %2720, label %2738, !prof !34, !nosanitize !32

2738:                                             ; preds = %2737
  %2739 = extractvalue { i32, i1 } %2694, 0, !nosanitize !32
  %2740 = shl i32 %2739, %2534
  %2741 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2742 = load i16, ptr %2741, align 8, !tbaa !25
  %2743 = trunc i32 %2740 to i16
  %2744 = or i16 %2742, %2743
  store i16 %2744, ptr %2741, align 8, !tbaa !25
  %2745 = add nsw i32 %2534, 3
  %2746 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2745, 0
  br label %2747

2747:                                             ; preds = %2738, %2731
  %2748 = phi i16 [ %2734, %2731 ], [ %2744, %2738 ]
  %2749 = phi { i32, i1 } [ %2735, %2731 ], [ %2746, %2738 ]
  %2750 = extractvalue { i32, i1 } %2749, 0
  store i32 %2750, ptr %2533, align 4, !tbaa !26
  %2751 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %2752 = load i32, ptr %2751, align 4, !tbaa !31
  %2753 = icmp eq i32 %2752, 0
  br i1 %2753, label %3084, label %2754

2754:                                             ; preds = %2747
  %2755 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %2756 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2757 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2758 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %2759

2759:                                             ; preds = %3079, %2754
  %2760 = phi i16 [ %3080, %3079 ], [ %2748, %2754 ]
  %2761 = phi i32 [ %3081, %3079 ], [ %2750, %2754 ]
  %2762 = phi i32 [ %2781, %3079 ], [ 0, %2754 ]
  %2763 = load ptr, ptr %2755, align 8, !tbaa !80
  %2764 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2762, i32 2)
  %2765 = extractvalue { i32, i1 } %2764, 0, !nosanitize !32
  %2766 = extractvalue { i32, i1 } %2764, 1, !nosanitize !32
  br i1 %2766, label %2767, label %2768, !prof !34, !nosanitize !32

2767:                                             ; preds = %2759
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2768:                                             ; preds = %2759
  %2769 = add nuw i32 %2762, 1
  %2770 = zext i32 %2762 to i64
  %2771 = getelementptr inbounds nuw i8, ptr %2763, i64 %2770
  %2772 = load i8, ptr %2771, align 1, !tbaa !28
  %2773 = zext i8 %2772 to i32
  %2774 = zext i32 %2769 to i64
  %2775 = getelementptr inbounds nuw i8, ptr %2763, i64 %2774
  %2776 = load i8, ptr %2775, align 1, !tbaa !28
  %2777 = zext i8 %2776 to i32
  %2778 = shl nuw nsw i32 %2777, 8
  %2779 = or disjoint i32 %2778, %2773
  %2780 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2765, i32 1), !nosanitize !32
  %2781 = extractvalue { i32, i1 } %2780, 0, !nosanitize !32
  %2782 = extractvalue { i32, i1 } %2780, 1, !nosanitize !32
  br i1 %2782, label %2783, label %2784, !prof !34, !nosanitize !32

2783:                                             ; preds = %2768
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2784:                                             ; preds = %2768
  %2785 = zext i32 %2765 to i64
  %2786 = getelementptr inbounds nuw i8, ptr %2763, i64 %2785
  %2787 = load i8, ptr %2786, align 1, !tbaa !28
  %2788 = zext i8 %2787 to i32
  %2789 = icmp eq i32 %2779, 0
  %2790 = zext i8 %2787 to i64
  br i1 %2789, label %2791, label %2838

2791:                                             ; preds = %2784
  %2792 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2790
  %2793 = getelementptr inbounds nuw i8, ptr %2792, i64 2
  %2794 = load i16, ptr %2793, align 2, !tbaa !28
  %2795 = zext i16 %2794 to i32
  %2796 = sub nsw i32 16, %2795
  %2797 = icmp sgt i32 %2761, %2796
  %2798 = load i16, ptr %2792, align 4, !tbaa !28
  %2799 = zext i16 %2798 to i32
  %2800 = shl i32 %2799, %2761
  %2801 = trunc i32 %2800 to i16
  %2802 = or i16 %2760, %2801
  store i16 %2802, ptr %2756, align 8, !tbaa !25
  br i1 %2797, label %2804, label %2835

2803:                                             ; preds = %2936, %2926, %2902, %2896, %2868, %2818
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

2804:                                             ; preds = %2791
  %2805 = load i64, ptr %2757, align 8, !tbaa !33
  %2806 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2805, i64 1), !nosanitize !32
  %2807 = extractvalue { i64, i1 } %2806, 1, !nosanitize !32
  br i1 %2807, label %2808, label %2809, !prof !34, !nosanitize !32

2808:                                             ; preds = %2804
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2809:                                             ; preds = %2804
  %2810 = extractvalue { i64, i1 } %2806, 0, !nosanitize !32
  %2811 = load ptr, ptr %2758, align 8, !tbaa !35
  %2812 = trunc i16 %2802 to i8
  store i64 %2810, ptr %2757, align 8, !tbaa !33
  %2813 = getelementptr inbounds nuw i8, ptr %2811, i64 %2805
  store i8 %2812, ptr %2813, align 1, !tbaa !28
  %2814 = load i64, ptr %2757, align 8, !tbaa !33
  %2815 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2814, i64 1), !nosanitize !32
  %2816 = extractvalue { i64, i1 } %2815, 1, !nosanitize !32
  br i1 %2816, label %2817, label %2818, !prof !34, !nosanitize !32

2817:                                             ; preds = %2828, %2809
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2818:                                             ; preds = %2809
  %2819 = extractvalue { i64, i1 } %2815, 0, !nosanitize !32
  %2820 = load ptr, ptr %2758, align 8, !tbaa !35
  %2821 = load i16, ptr %2756, align 8, !tbaa !25
  %2822 = lshr i16 %2821, 8
  %2823 = trunc nuw i16 %2822 to i8
  store i64 %2819, ptr %2757, align 8, !tbaa !33
  %2824 = getelementptr inbounds nuw i8, ptr %2820, i64 %2814
  store i8 %2823, ptr %2824, align 1, !tbaa !28
  %2825 = load i32, ptr %2533, align 4, !tbaa !26
  %2826 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2825), !nosanitize !32
  %2827 = extractvalue { i32, i1 } %2826, 1, !nosanitize !32
  br i1 %2827, label %2803, label %2828, !prof !34, !nosanitize !32

2828:                                             ; preds = %2818
  %2829 = extractvalue { i32, i1 } %2826, 0, !nosanitize !32
  %2830 = lshr i32 %2799, %2829
  %2831 = trunc nuw i32 %2830 to i16
  store i16 %2831, ptr %2756, align 8, !tbaa !25
  %2832 = add nsw i32 %2795, -16
  %2833 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2825, i32 %2832), !nosanitize !32
  %2834 = extractvalue { i32, i1 } %2833, 1, !nosanitize !32
  br i1 %2834, label %2817, label %3075, !prof !34, !nosanitize !32

2835:                                             ; preds = %2791
  %2836 = add nsw i32 %2761, %2795
  %2837 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2836, 0
  br label %3075

2838:                                             ; preds = %2784
  %2839 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %2790
  %2840 = load i8, ptr %2839, align 1, !tbaa !28
  %2841 = zext i8 %2840 to i64
  %2842 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2841
  %2843 = getelementptr inbounds nuw i8, ptr %2842, i64 1028
  %2844 = getelementptr inbounds nuw i8, ptr %2842, i64 1030
  %2845 = load i16, ptr %2844, align 2, !tbaa !28
  %2846 = zext i16 %2845 to i32
  %2847 = sub nsw i32 16, %2846
  %2848 = icmp sgt i32 %2761, %2847
  %2849 = load i16, ptr %2843, align 4, !tbaa !28
  %2850 = zext i16 %2849 to i32
  %2851 = shl i32 %2850, %2761
  %2852 = trunc i32 %2851 to i16
  %2853 = or i16 %2760, %2852
  store i16 %2853, ptr %2756, align 8, !tbaa !25
  br i1 %2848, label %2854, label %2885

2854:                                             ; preds = %2838
  %2855 = load i64, ptr %2757, align 8, !tbaa !33
  %2856 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2855, i64 1), !nosanitize !32
  %2857 = extractvalue { i64, i1 } %2856, 1, !nosanitize !32
  br i1 %2857, label %2858, label %2859, !prof !34, !nosanitize !32

2858:                                             ; preds = %2854
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2859:                                             ; preds = %2854
  %2860 = extractvalue { i64, i1 } %2856, 0, !nosanitize !32
  %2861 = load ptr, ptr %2758, align 8, !tbaa !35
  %2862 = trunc i16 %2853 to i8
  store i64 %2860, ptr %2757, align 8, !tbaa !33
  %2863 = getelementptr inbounds nuw i8, ptr %2861, i64 %2855
  store i8 %2862, ptr %2863, align 1, !tbaa !28
  %2864 = load i64, ptr %2757, align 8, !tbaa !33
  %2865 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2864, i64 1), !nosanitize !32
  %2866 = extractvalue { i64, i1 } %2865, 1, !nosanitize !32
  br i1 %2866, label %2867, label %2868, !prof !34, !nosanitize !32

2867:                                             ; preds = %2878, %2859
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2868:                                             ; preds = %2859
  %2869 = extractvalue { i64, i1 } %2865, 0, !nosanitize !32
  %2870 = load ptr, ptr %2758, align 8, !tbaa !35
  %2871 = load i16, ptr %2756, align 8, !tbaa !25
  %2872 = lshr i16 %2871, 8
  %2873 = trunc nuw i16 %2872 to i8
  store i64 %2869, ptr %2757, align 8, !tbaa !33
  %2874 = getelementptr inbounds nuw i8, ptr %2870, i64 %2864
  store i8 %2873, ptr %2874, align 1, !tbaa !28
  %2875 = load i32, ptr %2533, align 4, !tbaa !26
  %2876 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2875), !nosanitize !32
  %2877 = extractvalue { i32, i1 } %2876, 1, !nosanitize !32
  br i1 %2877, label %2803, label %2878, !prof !34, !nosanitize !32

2878:                                             ; preds = %2868
  %2879 = extractvalue { i32, i1 } %2876, 0, !nosanitize !32
  %2880 = lshr i32 %2850, %2879
  %2881 = trunc nuw i32 %2880 to i16
  store i16 %2881, ptr %2756, align 8, !tbaa !25
  %2882 = add nsw i32 %2846, -16
  %2883 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2875, i32 %2882), !nosanitize !32
  %2884 = extractvalue { i32, i1 } %2883, 1, !nosanitize !32
  br i1 %2884, label %2867, label %2888, !prof !34, !nosanitize !32

2885:                                             ; preds = %2838
  %2886 = add nsw i32 %2761, %2846
  %2887 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2886, 0
  br label %2888

2888:                                             ; preds = %2885, %2878
  %2889 = phi i16 [ %2881, %2878 ], [ %2853, %2885 ]
  %2890 = phi { i32, i1 } [ %2883, %2878 ], [ %2887, %2885 ]
  %2891 = extractvalue { i32, i1 } %2890, 0
  store i32 %2891, ptr %2533, align 4, !tbaa !26
  %2892 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %2841
  %2893 = load i32, ptr %2892, align 4, !tbaa !4
  %2894 = add i8 %2840, -28
  %2895 = icmp ult i8 %2894, -20
  br i1 %2895, label %2956, label %2896

2896:                                             ; preds = %2888
  %2897 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %2841
  %2898 = load i32, ptr %2897, align 4, !tbaa !4
  %2899 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2788, i32 %2898), !nosanitize !32
  %2900 = extractvalue { i32, i1 } %2899, 0, !nosanitize !32
  %2901 = extractvalue { i32, i1 } %2899, 1, !nosanitize !32
  br i1 %2901, label %2803, label %2902, !prof !34, !nosanitize !32

2902:                                             ; preds = %2896
  %2903 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2893), !nosanitize !32
  %2904 = extractvalue { i32, i1 } %2903, 1, !nosanitize !32
  br i1 %2904, label %2803, label %2905, !prof !34, !nosanitize !32

2905:                                             ; preds = %2902
  %2906 = extractvalue { i32, i1 } %2903, 0, !nosanitize !32
  %2907 = icmp sgt i32 %2891, %2906
  br i1 %2907, label %2908, label %2946

2908:                                             ; preds = %2905
  %2909 = and i32 %2900, 65535
  %2910 = shl i32 %2900, %2891
  %2911 = trunc i32 %2910 to i16
  %2912 = or i16 %2889, %2911
  store i16 %2912, ptr %2756, align 8, !tbaa !25
  %2913 = load i64, ptr %2757, align 8, !tbaa !33
  %2914 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2913, i64 1), !nosanitize !32
  %2915 = extractvalue { i64, i1 } %2914, 1, !nosanitize !32
  br i1 %2915, label %2916, label %2917, !prof !34, !nosanitize !32

2916:                                             ; preds = %2908
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2917:                                             ; preds = %2908
  %2918 = extractvalue { i64, i1 } %2914, 0, !nosanitize !32
  %2919 = load ptr, ptr %2758, align 8, !tbaa !35
  %2920 = trunc i16 %2912 to i8
  store i64 %2918, ptr %2757, align 8, !tbaa !33
  %2921 = getelementptr inbounds nuw i8, ptr %2919, i64 %2913
  store i8 %2920, ptr %2921, align 1, !tbaa !28
  %2922 = load i64, ptr %2757, align 8, !tbaa !33
  %2923 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2922, i64 1), !nosanitize !32
  %2924 = extractvalue { i64, i1 } %2923, 1, !nosanitize !32
  br i1 %2924, label %2925, label %2926, !prof !34, !nosanitize !32

2925:                                             ; preds = %2946, %2942, %2917
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2926:                                             ; preds = %2917
  %2927 = extractvalue { i64, i1 } %2923, 0, !nosanitize !32
  %2928 = load ptr, ptr %2758, align 8, !tbaa !35
  %2929 = load i16, ptr %2756, align 8, !tbaa !25
  %2930 = lshr i16 %2929, 8
  %2931 = trunc nuw i16 %2930 to i8
  store i64 %2927, ptr %2757, align 8, !tbaa !33
  %2932 = getelementptr inbounds nuw i8, ptr %2928, i64 %2922
  store i8 %2931, ptr %2932, align 1, !tbaa !28
  %2933 = load i32, ptr %2533, align 4, !tbaa !26
  %2934 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2933), !nosanitize !32
  %2935 = extractvalue { i32, i1 } %2934, 1, !nosanitize !32
  br i1 %2935, label %2803, label %2936, !prof !34, !nosanitize !32

2936:                                             ; preds = %2926
  %2937 = extractvalue { i32, i1 } %2934, 0, !nosanitize !32
  %2938 = lshr i32 %2909, %2937
  %2939 = trunc nuw i32 %2938 to i16
  store i16 %2939, ptr %2756, align 8, !tbaa !25
  %2940 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2893, i32 -16)
  %2941 = extractvalue { i32, i1 } %2940, 1, !nosanitize !32
  br i1 %2941, label %2803, label %2942, !prof !34, !nosanitize !32

2942:                                             ; preds = %2936
  %2943 = extractvalue { i32, i1 } %2940, 0, !nosanitize !32
  %2944 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2933, i32 %2943), !nosanitize !32
  %2945 = extractvalue { i32, i1 } %2944, 1, !nosanitize !32
  br i1 %2945, label %2925, label %2952, !prof !34, !nosanitize !32

2946:                                             ; preds = %2905
  %2947 = shl i32 %2900, %2891
  %2948 = trunc i32 %2947 to i16
  %2949 = or i16 %2889, %2948
  store i16 %2949, ptr %2756, align 8, !tbaa !25
  %2950 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2891, i32 %2893), !nosanitize !32
  %2951 = extractvalue { i32, i1 } %2950, 1, !nosanitize !32
  br i1 %2951, label %2925, label %2952, !prof !34, !nosanitize !32

2952:                                             ; preds = %2946, %2942
  %2953 = phi i16 [ %2939, %2942 ], [ %2949, %2946 ]
  %2954 = phi { i32, i1 } [ %2944, %2942 ], [ %2950, %2946 ]
  %2955 = extractvalue { i32, i1 } %2954, 0
  store i32 %2955, ptr %2533, align 4, !tbaa !26
  br label %2956

2956:                                             ; preds = %2952, %2888
  %2957 = phi i16 [ %2953, %2952 ], [ %2889, %2888 ]
  %2958 = phi i32 [ %2955, %2952 ], [ %2891, %2888 ]
  %2959 = add nsw i32 %2779, -1
  %2960 = icmp samesign ult i32 %2779, 257
  %2961 = zext nneg i32 %2959 to i64
  %2962 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2961
  %2963 = lshr i32 %2959, 7
  %2964 = zext nneg i32 %2963 to i64
  %2965 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2964
  %2966 = getelementptr inbounds nuw i8, ptr %2965, i64 256
  %2967 = select i1 %2960, ptr %2962, ptr %2966
  %2968 = load i8, ptr %2967, align 1, !tbaa !28
  %2969 = zext i8 %2968 to i64
  %2970 = getelementptr inbounds nuw [4 x i8], ptr @static_dtree, i64 %2969
  %2971 = icmp sgt i32 %2958, 11
  %2972 = load i16, ptr %2970, align 4, !tbaa !28
  %2973 = zext i16 %2972 to i32
  %2974 = shl i32 %2973, %2958
  %2975 = trunc i32 %2974 to i16
  %2976 = or i16 %2957, %2975
  store i16 %2976, ptr %2756, align 8, !tbaa !25
  br i1 %2971, label %2978, label %3008

2977:                                             ; preds = %2992
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

2978:                                             ; preds = %2956
  %2979 = load i64, ptr %2757, align 8, !tbaa !33
  %2980 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2979, i64 1), !nosanitize !32
  %2981 = extractvalue { i64, i1 } %2980, 1, !nosanitize !32
  br i1 %2981, label %2982, label %2983, !prof !34, !nosanitize !32

2982:                                             ; preds = %2978
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2983:                                             ; preds = %2978
  %2984 = extractvalue { i64, i1 } %2980, 0, !nosanitize !32
  %2985 = load ptr, ptr %2758, align 8, !tbaa !35
  %2986 = trunc i16 %2976 to i8
  store i64 %2984, ptr %2757, align 8, !tbaa !33
  %2987 = getelementptr inbounds nuw i8, ptr %2985, i64 %2979
  store i8 %2986, ptr %2987, align 1, !tbaa !28
  %2988 = load i64, ptr %2757, align 8, !tbaa !33
  %2989 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2988, i64 1), !nosanitize !32
  %2990 = extractvalue { i64, i1 } %2989, 1, !nosanitize !32
  br i1 %2990, label %2991, label %2992, !prof !34, !nosanitize !32

2991:                                             ; preds = %3002, %2983
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2992:                                             ; preds = %2983
  %2993 = extractvalue { i64, i1 } %2989, 0, !nosanitize !32
  %2994 = load ptr, ptr %2758, align 8, !tbaa !35
  %2995 = load i16, ptr %2756, align 8, !tbaa !25
  %2996 = lshr i16 %2995, 8
  %2997 = trunc nuw i16 %2996 to i8
  store i64 %2993, ptr %2757, align 8, !tbaa !33
  %2998 = getelementptr inbounds nuw i8, ptr %2994, i64 %2988
  store i8 %2997, ptr %2998, align 1, !tbaa !28
  %2999 = load i32, ptr %2533, align 4, !tbaa !26
  %3000 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2999), !nosanitize !32
  %3001 = extractvalue { i32, i1 } %3000, 1, !nosanitize !32
  br i1 %3001, label %2977, label %3002, !prof !34, !nosanitize !32

3002:                                             ; preds = %2992
  %3003 = extractvalue { i32, i1 } %3000, 0, !nosanitize !32
  %3004 = lshr i32 %2973, %3003
  %3005 = trunc nuw i32 %3004 to i16
  store i16 %3005, ptr %2756, align 8, !tbaa !25
  %3006 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2999, i32 -11), !nosanitize !32
  %3007 = extractvalue { i32, i1 } %3006, 1, !nosanitize !32
  br i1 %3007, label %2991, label %3011, !prof !34, !nosanitize !32

3008:                                             ; preds = %2956
  %3009 = add nsw i32 %2958, 5
  %3010 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3009, 0
  br label %3011

3011:                                             ; preds = %3008, %3002
  %3012 = phi i16 [ %3005, %3002 ], [ %2976, %3008 ]
  %3013 = phi { i32, i1 } [ %3006, %3002 ], [ %3010, %3008 ]
  %3014 = extractvalue { i32, i1 } %3013, 0
  store i32 %3014, ptr %2533, align 4, !tbaa !26
  %3015 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %2969
  %3016 = load i32, ptr %3015, align 4, !tbaa !4
  %3017 = icmp ult i8 %2968, 4
  br i1 %3017, label %3079, label %3018

3018:                                             ; preds = %3011
  %3019 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %2969
  %3020 = load i32, ptr %3019, align 4, !tbaa !4
  %3021 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2959, i32 %3020), !nosanitize !32
  %3022 = extractvalue { i32, i1 } %3021, 0, !nosanitize !32
  %3023 = extractvalue { i32, i1 } %3021, 1, !nosanitize !32
  br i1 %3023, label %3024, label %3025, !prof !34, !nosanitize !32

3024:                                             ; preds = %3059, %3049, %3025, %3018, %3105
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

3025:                                             ; preds = %3018
  %3026 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3016), !nosanitize !32
  %3027 = extractvalue { i32, i1 } %3026, 1, !nosanitize !32
  br i1 %3027, label %3024, label %3028, !prof !34, !nosanitize !32

3028:                                             ; preds = %3025
  %3029 = extractvalue { i32, i1 } %3026, 0, !nosanitize !32
  %3030 = icmp sgt i32 %3014, %3029
  br i1 %3030, label %3031, label %3069

3031:                                             ; preds = %3028
  %3032 = and i32 %3022, 65535
  %3033 = shl i32 %3022, %3014
  %3034 = trunc i32 %3033 to i16
  %3035 = or i16 %3012, %3034
  store i16 %3035, ptr %2756, align 8, !tbaa !25
  %3036 = load i64, ptr %2757, align 8, !tbaa !33
  %3037 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3036, i64 1), !nosanitize !32
  %3038 = extractvalue { i64, i1 } %3037, 1, !nosanitize !32
  br i1 %3038, label %3039, label %3040, !prof !34, !nosanitize !32

3039:                                             ; preds = %3031
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3040:                                             ; preds = %3031
  %3041 = extractvalue { i64, i1 } %3037, 0, !nosanitize !32
  %3042 = load ptr, ptr %2758, align 8, !tbaa !35
  %3043 = trunc i16 %3035 to i8
  store i64 %3041, ptr %2757, align 8, !tbaa !33
  %3044 = getelementptr inbounds nuw i8, ptr %3042, i64 %3036
  store i8 %3043, ptr %3044, align 1, !tbaa !28
  %3045 = load i64, ptr %2757, align 8, !tbaa !33
  %3046 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3045, i64 1), !nosanitize !32
  %3047 = extractvalue { i64, i1 } %3046, 1, !nosanitize !32
  br i1 %3047, label %3048, label %3049, !prof !34, !nosanitize !32

3048:                                             ; preds = %3069, %3065, %3040
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3049:                                             ; preds = %3040
  %3050 = extractvalue { i64, i1 } %3046, 0, !nosanitize !32
  %3051 = load ptr, ptr %2758, align 8, !tbaa !35
  %3052 = load i16, ptr %2756, align 8, !tbaa !25
  %3053 = lshr i16 %3052, 8
  %3054 = trunc nuw i16 %3053 to i8
  store i64 %3050, ptr %2757, align 8, !tbaa !33
  %3055 = getelementptr inbounds nuw i8, ptr %3051, i64 %3045
  store i8 %3054, ptr %3055, align 1, !tbaa !28
  %3056 = load i32, ptr %2533, align 4, !tbaa !26
  %3057 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3056), !nosanitize !32
  %3058 = extractvalue { i32, i1 } %3057, 1, !nosanitize !32
  br i1 %3058, label %3024, label %3059, !prof !34, !nosanitize !32

3059:                                             ; preds = %3049
  %3060 = extractvalue { i32, i1 } %3057, 0, !nosanitize !32
  %3061 = lshr i32 %3032, %3060
  %3062 = trunc nuw i32 %3061 to i16
  store i16 %3062, ptr %2756, align 8, !tbaa !25
  %3063 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3016, i32 -16)
  %3064 = extractvalue { i32, i1 } %3063, 1, !nosanitize !32
  br i1 %3064, label %3024, label %3065, !prof !34, !nosanitize !32

3065:                                             ; preds = %3059
  %3066 = extractvalue { i32, i1 } %3063, 0, !nosanitize !32
  %3067 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3056, i32 %3066), !nosanitize !32
  %3068 = extractvalue { i32, i1 } %3067, 1, !nosanitize !32
  br i1 %3068, label %3048, label %3075, !prof !34, !nosanitize !32

3069:                                             ; preds = %3028
  %3070 = shl i32 %3022, %3014
  %3071 = trunc i32 %3070 to i16
  %3072 = or i16 %3012, %3071
  store i16 %3072, ptr %2756, align 8, !tbaa !25
  %3073 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3014, i32 %3016), !nosanitize !32
  %3074 = extractvalue { i32, i1 } %3073, 1, !nosanitize !32
  br i1 %3074, label %3048, label %3075, !prof !34, !nosanitize !32

3075:                                             ; preds = %3069, %3065, %2835, %2828
  %3076 = phi i16 [ %2802, %2835 ], [ %2831, %2828 ], [ %3062, %3065 ], [ %3072, %3069 ]
  %3077 = phi { i32, i1 } [ %2837, %2835 ], [ %2833, %2828 ], [ %3067, %3065 ], [ %3073, %3069 ]
  %3078 = extractvalue { i32, i1 } %3077, 0
  store i32 %3078, ptr %2533, align 4, !tbaa !26
  br label %3079

3079:                                             ; preds = %3075, %3011
  %3080 = phi i16 [ %3012, %3011 ], [ %3076, %3075 ]
  %3081 = phi i32 [ %3014, %3011 ], [ %3078, %3075 ]
  %3082 = load i32, ptr %2751, align 4, !tbaa !31
  %3083 = icmp ult i32 %2781, %3082
  br i1 %3083, label %2759, label %3084, !llvm.loop !81

3084:                                             ; preds = %3079, %2747
  %3085 = phi i16 [ %2748, %2747 ], [ %3080, %3079 ]
  %3086 = phi i32 [ %2750, %2747 ], [ %3081, %3079 ]
  %3087 = icmp sgt i32 %3086, 9
  %3088 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %3087, label %3089, label %3118

3089:                                             ; preds = %3084
  %3090 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3091 = load i64, ptr %3090, align 8, !tbaa !33
  %3092 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3091, i64 1), !nosanitize !32
  %3093 = extractvalue { i64, i1 } %3092, 1, !nosanitize !32
  br i1 %3093, label %3094, label %3095, !prof !34, !nosanitize !32

3094:                                             ; preds = %3089
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3095:                                             ; preds = %3089
  %3096 = extractvalue { i64, i1 } %3092, 0, !nosanitize !32
  %3097 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3098 = load ptr, ptr %3097, align 8, !tbaa !35
  %3099 = trunc i16 %3085 to i8
  store i64 %3096, ptr %3090, align 8, !tbaa !33
  %3100 = getelementptr inbounds nuw i8, ptr %3098, i64 %3091
  store i8 %3099, ptr %3100, align 1, !tbaa !28
  %3101 = load i64, ptr %3090, align 8, !tbaa !33
  %3102 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3101, i64 1), !nosanitize !32
  %3103 = extractvalue { i64, i1 } %3102, 1, !nosanitize !32
  br i1 %3103, label %3104, label %3105, !prof !34, !nosanitize !32

3104:                                             ; preds = %3115, %3095
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3105:                                             ; preds = %3095
  %3106 = extractvalue { i64, i1 } %3102, 0, !nosanitize !32
  %3107 = load ptr, ptr %3097, align 8, !tbaa !35
  %3108 = load i16, ptr %3088, align 8, !tbaa !25
  %3109 = lshr i16 %3108, 8
  %3110 = trunc nuw i16 %3109 to i8
  store i64 %3106, ptr %3090, align 8, !tbaa !33
  %3111 = getelementptr inbounds nuw i8, ptr %3107, i64 %3101
  store i8 %3110, ptr %3111, align 1, !tbaa !28
  %3112 = load i32, ptr %2533, align 4, !tbaa !26
  %3113 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3112), !nosanitize !32
  %3114 = extractvalue { i32, i1 } %3113, 1, !nosanitize !32
  br i1 %3114, label %3024, label %3115, !prof !34, !nosanitize !32

3115:                                             ; preds = %3105
  store i16 0, ptr %3088, align 8, !tbaa !25
  %3116 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3112, i32 -9), !nosanitize !32
  %3117 = extractvalue { i32, i1 } %3116, 1, !nosanitize !32
  br i1 %3117, label %3104, label %3121, !prof !34, !nosanitize !32

3118:                                             ; preds = %3084
  %3119 = add nsw i32 %3086, 7
  %3120 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3119, 0
  br label %3121

3121:                                             ; preds = %3115, %3118
  %3122 = phi { i32, i1 } [ %3116, %3115 ], [ %3120, %3118 ]
  %3123 = extractvalue { i32, i1 } %3122, 0
  store i32 %3123, ptr %2533, align 4, !tbaa !26
  br label %4713

3124:                                             ; preds = %2692
  %3125 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 4), !nosanitize !32
  %3126 = extractvalue { i32, i1 } %3125, 1, !nosanitize !32
  br i1 %2535, label %3127, label %3167

3127:                                             ; preds = %3124
  br i1 %3126, label %2720, label %3128, !prof !34, !nosanitize !32

3128:                                             ; preds = %3127
  %3129 = extractvalue { i32, i1 } %3125, 0, !nosanitize !32
  %3130 = and i32 %3129, 65535
  %3131 = shl i32 %3129, %2534
  %3132 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3133 = load i16, ptr %3132, align 8, !tbaa !25
  %3134 = trunc i32 %3131 to i16
  %3135 = or i16 %3133, %3134
  store i16 %3135, ptr %3132, align 8, !tbaa !25
  %3136 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3137 = load i64, ptr %3136, align 8, !tbaa !33
  %3138 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3137, i64 1), !nosanitize !32
  %3139 = extractvalue { i64, i1 } %3138, 1, !nosanitize !32
  br i1 %3139, label %3140, label %3141, !prof !34, !nosanitize !32

3140:                                             ; preds = %3128
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3141:                                             ; preds = %3128
  %3142 = extractvalue { i64, i1 } %3138, 0, !nosanitize !32
  %3143 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3144 = load ptr, ptr %3143, align 8, !tbaa !35
  %3145 = trunc i16 %3135 to i8
  store i64 %3142, ptr %3136, align 8, !tbaa !33
  %3146 = getelementptr inbounds nuw i8, ptr %3144, i64 %3137
  store i8 %3145, ptr %3146, align 1, !tbaa !28
  %3147 = load i64, ptr %3136, align 8, !tbaa !33
  %3148 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3147, i64 1), !nosanitize !32
  %3149 = extractvalue { i64, i1 } %3148, 1, !nosanitize !32
  br i1 %3149, label %3150, label %3151, !prof !34, !nosanitize !32

3150:                                             ; preds = %3186, %3177, %3167, %3161, %3141
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3151:                                             ; preds = %3141
  %3152 = extractvalue { i64, i1 } %3148, 0, !nosanitize !32
  %3153 = load ptr, ptr %3143, align 8, !tbaa !35
  %3154 = load i16, ptr %3132, align 8, !tbaa !25
  %3155 = lshr i16 %3154, 8
  %3156 = trunc nuw i16 %3155 to i8
  store i64 %3152, ptr %3136, align 8, !tbaa !33
  %3157 = getelementptr inbounds nuw i8, ptr %3153, i64 %3147
  store i8 %3156, ptr %3157, align 1, !tbaa !28
  %3158 = load i32, ptr %2533, align 4, !tbaa !26
  %3159 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3158), !nosanitize !32
  %3160 = extractvalue { i32, i1 } %3159, 1, !nosanitize !32
  br i1 %3160, label %2696, label %3161, !prof !34, !nosanitize !32

3161:                                             ; preds = %3151
  %3162 = extractvalue { i32, i1 } %3159, 0, !nosanitize !32
  %3163 = lshr i32 %3130, %3162
  %3164 = trunc nuw i32 %3163 to i16
  store i16 %3164, ptr %3132, align 8, !tbaa !25
  %3165 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3158, i32 -13), !nosanitize !32
  %3166 = extractvalue { i32, i1 } %3165, 1, !nosanitize !32
  br i1 %3166, label %3150, label %3177, !prof !34, !nosanitize !32

3167:                                             ; preds = %3124
  br i1 %3126, label %3150, label %3168, !prof !34, !nosanitize !32

3168:                                             ; preds = %3167
  %3169 = extractvalue { i32, i1 } %3125, 0, !nosanitize !32
  %3170 = shl i32 %3169, %2534
  %3171 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3172 = load i16, ptr %3171, align 8, !tbaa !25
  %3173 = trunc i32 %3170 to i16
  %3174 = or i16 %3172, %3173
  store i16 %3174, ptr %3171, align 8, !tbaa !25
  %3175 = add nsw i32 %2534, 3
  %3176 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3175, 0
  br label %3177

3177:                                             ; preds = %3168, %3161
  %3178 = phi i16 [ %3164, %3161 ], [ %3174, %3168 ]
  %3179 = phi { i32, i1 } [ %3165, %3161 ], [ %3176, %3168 ]
  %3180 = extractvalue { i32, i1 } %3179, 0
  store i32 %3180, ptr %2533, align 4, !tbaa !26
  %3181 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %3182 = load i32, ptr %3181, align 8, !tbaa !74
  %3183 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3182, i32 1), !nosanitize !32
  %3184 = extractvalue { i32, i1 } %3183, 0, !nosanitize !32
  %3185 = extractvalue { i32, i1 } %3183, 1, !nosanitize !32
  br i1 %3185, label %3150, label %3186, !prof !34, !nosanitize !32

3186:                                             ; preds = %3177
  %3187 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %3188 = load i32, ptr %3187, align 8, !tbaa !77
  %3189 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3188, i32 1), !nosanitize !32
  %3190 = extractvalue { i32, i1 } %3189, 0, !nosanitize !32
  %3191 = extractvalue { i32, i1 } %3189, 1, !nosanitize !32
  br i1 %3191, label %3150, label %3192, !prof !34, !nosanitize !32

3192:                                             ; preds = %3186
  %3193 = add nuw nsw i32 %2522, 1
  %3194 = icmp sgt i32 %3180, 11
  %3195 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3184, i32 -257)
  %3196 = extractvalue { i32, i1 } %3195, 1, !nosanitize !32
  br i1 %3194, label %3198, label %3237

3197:                                             ; preds = %3387, %3867, %3412, %3328, %3292, %3276, %3253, %3237, %3221, %3198
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

3198:                                             ; preds = %3192
  br i1 %3196, label %3197, label %3199, !prof !34, !nosanitize !32

3199:                                             ; preds = %3198
  %3200 = extractvalue { i32, i1 } %3195, 0, !nosanitize !32
  %3201 = and i32 %3200, 65535
  %3202 = shl i32 %3200, %3180
  %3203 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3204 = trunc i32 %3202 to i16
  %3205 = or i16 %3178, %3204
  store i16 %3205, ptr %3203, align 8, !tbaa !25
  %3206 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3207 = load i64, ptr %3206, align 8, !tbaa !33
  %3208 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3207, i64 1), !nosanitize !32
  %3209 = extractvalue { i64, i1 } %3208, 1, !nosanitize !32
  br i1 %3209, label %3210, label %3211, !prof !34, !nosanitize !32

3210:                                             ; preds = %3199
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3211:                                             ; preds = %3199
  %3212 = extractvalue { i64, i1 } %3208, 0, !nosanitize !32
  %3213 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3214 = load ptr, ptr %3213, align 8, !tbaa !35
  %3215 = trunc i16 %3205 to i8
  store i64 %3212, ptr %3206, align 8, !tbaa !33
  %3216 = getelementptr inbounds nuw i8, ptr %3214, i64 %3207
  store i8 %3215, ptr %3216, align 1, !tbaa !28
  %3217 = load i64, ptr %3206, align 8, !tbaa !33
  %3218 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3217, i64 1), !nosanitize !32
  %3219 = extractvalue { i64, i1 } %3218, 1, !nosanitize !32
  br i1 %3219, label %3220, label %3221, !prof !34, !nosanitize !32

3220:                                             ; preds = %3231, %3211
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3221:                                             ; preds = %3211
  %3222 = extractvalue { i64, i1 } %3218, 0, !nosanitize !32
  %3223 = load ptr, ptr %3213, align 8, !tbaa !35
  %3224 = load i16, ptr %3203, align 8, !tbaa !25
  %3225 = lshr i16 %3224, 8
  %3226 = trunc nuw i16 %3225 to i8
  store i64 %3222, ptr %3206, align 8, !tbaa !33
  %3227 = getelementptr inbounds nuw i8, ptr %3223, i64 %3217
  store i8 %3226, ptr %3227, align 1, !tbaa !28
  %3228 = load i32, ptr %2533, align 4, !tbaa !26
  %3229 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3228), !nosanitize !32
  %3230 = extractvalue { i32, i1 } %3229, 1, !nosanitize !32
  br i1 %3230, label %3197, label %3231, !prof !34, !nosanitize !32

3231:                                             ; preds = %3221
  %3232 = extractvalue { i32, i1 } %3229, 0, !nosanitize !32
  %3233 = lshr i32 %3201, %3232
  %3234 = trunc nuw i32 %3233 to i16
  store i16 %3234, ptr %3203, align 8, !tbaa !25
  %3235 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3228, i32 -11), !nosanitize !32
  %3236 = extractvalue { i32, i1 } %3235, 1, !nosanitize !32
  br i1 %3236, label %3220, label %3246, !prof !34, !nosanitize !32

3237:                                             ; preds = %3192
  br i1 %3196, label %3197, label %3238, !prof !34, !nosanitize !32

3238:                                             ; preds = %3237
  %3239 = extractvalue { i32, i1 } %3195, 0, !nosanitize !32
  %3240 = shl i32 %3239, %3180
  %3241 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3242 = trunc i32 %3240 to i16
  %3243 = or i16 %3178, %3242
  store i16 %3243, ptr %3241, align 8, !tbaa !25
  %3244 = add nsw i32 %3180, 5
  %3245 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3244, 0
  br label %3246

3246:                                             ; preds = %3238, %3231
  %3247 = phi i16 [ %3234, %3231 ], [ %3243, %3238 ]
  %3248 = phi { i32, i1 } [ %3235, %3231 ], [ %3245, %3238 ]
  %3249 = extractvalue { i32, i1 } %3248, 0
  store i32 %3249, ptr %2533, align 4, !tbaa !26
  %3250 = icmp sgt i32 %3249, 11
  %3251 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3190, i32 -1)
  %3252 = extractvalue { i32, i1 } %3251, 1, !nosanitize !32
  br i1 %3250, label %3253, label %3292

3253:                                             ; preds = %3246
  br i1 %3252, label %3197, label %3254, !prof !34, !nosanitize !32

3254:                                             ; preds = %3253
  %3255 = extractvalue { i32, i1 } %3251, 0, !nosanitize !32
  %3256 = and i32 %3255, 65535
  %3257 = shl i32 %3255, %3249
  %3258 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3259 = trunc i32 %3257 to i16
  %3260 = or i16 %3247, %3259
  store i16 %3260, ptr %3258, align 8, !tbaa !25
  %3261 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3262 = load i64, ptr %3261, align 8, !tbaa !33
  %3263 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3262, i64 1), !nosanitize !32
  %3264 = extractvalue { i64, i1 } %3263, 1, !nosanitize !32
  br i1 %3264, label %3265, label %3266, !prof !34, !nosanitize !32

3265:                                             ; preds = %3254
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3266:                                             ; preds = %3254
  %3267 = extractvalue { i64, i1 } %3263, 0, !nosanitize !32
  %3268 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3269 = load ptr, ptr %3268, align 8, !tbaa !35
  %3270 = trunc i16 %3260 to i8
  store i64 %3267, ptr %3261, align 8, !tbaa !33
  %3271 = getelementptr inbounds nuw i8, ptr %3269, i64 %3262
  store i8 %3270, ptr %3271, align 1, !tbaa !28
  %3272 = load i64, ptr %3261, align 8, !tbaa !33
  %3273 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3272, i64 1), !nosanitize !32
  %3274 = extractvalue { i64, i1 } %3273, 1, !nosanitize !32
  br i1 %3274, label %3275, label %3276, !prof !34, !nosanitize !32

3275:                                             ; preds = %3286, %3266
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3276:                                             ; preds = %3266
  %3277 = extractvalue { i64, i1 } %3273, 0, !nosanitize !32
  %3278 = load ptr, ptr %3268, align 8, !tbaa !35
  %3279 = load i16, ptr %3258, align 8, !tbaa !25
  %3280 = lshr i16 %3279, 8
  %3281 = trunc nuw i16 %3280 to i8
  store i64 %3277, ptr %3261, align 8, !tbaa !33
  %3282 = getelementptr inbounds nuw i8, ptr %3278, i64 %3272
  store i8 %3281, ptr %3282, align 1, !tbaa !28
  %3283 = load i32, ptr %2533, align 4, !tbaa !26
  %3284 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3283), !nosanitize !32
  %3285 = extractvalue { i32, i1 } %3284, 1, !nosanitize !32
  br i1 %3285, label %3197, label %3286, !prof !34, !nosanitize !32

3286:                                             ; preds = %3276
  %3287 = extractvalue { i32, i1 } %3284, 0, !nosanitize !32
  %3288 = lshr i32 %3256, %3287
  %3289 = trunc nuw i32 %3288 to i16
  store i16 %3289, ptr %3258, align 8, !tbaa !25
  %3290 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3283, i32 -11), !nosanitize !32
  %3291 = extractvalue { i32, i1 } %3290, 1, !nosanitize !32
  br i1 %3291, label %3275, label %3301, !prof !34, !nosanitize !32

3292:                                             ; preds = %3246
  br i1 %3252, label %3197, label %3293, !prof !34, !nosanitize !32

3293:                                             ; preds = %3292
  %3294 = extractvalue { i32, i1 } %3251, 0, !nosanitize !32
  %3295 = shl i32 %3294, %3249
  %3296 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3297 = trunc i32 %3295 to i16
  %3298 = or i16 %3247, %3297
  store i16 %3298, ptr %3296, align 8, !tbaa !25
  %3299 = add nsw i32 %3249, 5
  %3300 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3299, 0
  br label %3301

3301:                                             ; preds = %3293, %3286
  %3302 = phi i16 [ %3289, %3286 ], [ %3298, %3293 ]
  %3303 = phi { i32, i1 } [ %3290, %3286 ], [ %3300, %3293 ]
  %3304 = extractvalue { i32, i1 } %3303, 0
  store i32 %3304, ptr %2533, align 4, !tbaa !26
  %3305 = icmp sgt i32 %3304, 12
  %3306 = add nsw i32 %2522, -3
  br i1 %3305, label %3307, label %3344

3307:                                             ; preds = %3301
  %3308 = and i32 %3306, 65535
  %3309 = shl i32 %3306, %3304
  %3310 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3311 = trunc i32 %3309 to i16
  %3312 = or i16 %3302, %3311
  store i16 %3312, ptr %3310, align 8, !tbaa !25
  %3313 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3314 = load i64, ptr %3313, align 8, !tbaa !33
  %3315 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3314, i64 1), !nosanitize !32
  %3316 = extractvalue { i64, i1 } %3315, 1, !nosanitize !32
  br i1 %3316, label %3317, label %3318, !prof !34, !nosanitize !32

3317:                                             ; preds = %3307
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3318:                                             ; preds = %3307
  %3319 = extractvalue { i64, i1 } %3315, 0, !nosanitize !32
  %3320 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3321 = load ptr, ptr %3320, align 8, !tbaa !35
  %3322 = trunc i16 %3312 to i8
  store i64 %3319, ptr %3313, align 8, !tbaa !33
  %3323 = getelementptr inbounds nuw i8, ptr %3321, i64 %3314
  store i8 %3322, ptr %3323, align 1, !tbaa !28
  %3324 = load i64, ptr %3313, align 8, !tbaa !33
  %3325 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3324, i64 1), !nosanitize !32
  %3326 = extractvalue { i64, i1 } %3325, 1, !nosanitize !32
  br i1 %3326, label %3327, label %3328, !prof !34, !nosanitize !32

3327:                                             ; preds = %3338, %3318
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3328:                                             ; preds = %3318
  %3329 = extractvalue { i64, i1 } %3325, 0, !nosanitize !32
  %3330 = load ptr, ptr %3320, align 8, !tbaa !35
  %3331 = load i16, ptr %3310, align 8, !tbaa !25
  %3332 = lshr i16 %3331, 8
  %3333 = trunc nuw i16 %3332 to i8
  store i64 %3329, ptr %3313, align 8, !tbaa !33
  %3334 = getelementptr inbounds nuw i8, ptr %3330, i64 %3324
  store i8 %3333, ptr %3334, align 1, !tbaa !28
  %3335 = load i32, ptr %2533, align 4, !tbaa !26
  %3336 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3335), !nosanitize !32
  %3337 = extractvalue { i32, i1 } %3336, 1, !nosanitize !32
  br i1 %3337, label %3197, label %3338, !prof !34, !nosanitize !32

3338:                                             ; preds = %3328
  %3339 = extractvalue { i32, i1 } %3336, 0, !nosanitize !32
  %3340 = lshr i32 %3308, %3339
  %3341 = trunc nuw i32 %3340 to i16
  store i16 %3341, ptr %3310, align 8, !tbaa !25
  %3342 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3335, i32 -12), !nosanitize !32
  %3343 = extractvalue { i32, i1 } %3342, 1, !nosanitize !32
  br i1 %3343, label %3327, label %3350, !prof !34, !nosanitize !32

3344:                                             ; preds = %3301
  %3345 = shl nsw i32 %3306, %3304
  %3346 = trunc i32 %3345 to i16
  %3347 = or i16 %3302, %3346
  %3348 = add nsw i32 %3304, 4
  %3349 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3348, 0
  br label %3350

3350:                                             ; preds = %3338, %3344
  %3351 = phi i16 [ %3341, %3338 ], [ %3347, %3344 ]
  %3352 = phi { i32, i1 } [ %3342, %3338 ], [ %3349, %3344 ]
  %3353 = extractvalue { i32, i1 } %3352, 0
  store i32 %3353, ptr %2533, align 4, !tbaa !26
  %3354 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3355 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3356 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3357 = zext nneg i32 %3193 to i64
  br label %3358

3358:                                             ; preds = %3406, %3350
  %3359 = phi i16 [ %3351, %3350 ], [ %3407, %3406 ]
  %3360 = phi i32 [ %3353, %3350 ], [ %3409, %3406 ]
  %3361 = phi i64 [ 0, %3350 ], [ %3410, %3406 ]
  %3362 = icmp sgt i32 %3360, 13
  %3363 = getelementptr inbounds nuw i8, ptr @bl_order, i64 %3361
  %3364 = load i8, ptr %3363, align 1, !tbaa !28
  %3365 = zext i8 %3364 to i64
  %3366 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3365
  %3367 = getelementptr inbounds nuw i8, ptr %3366, i64 2750
  %3368 = load i16, ptr %3367, align 2, !tbaa !28
  %3369 = zext i16 %3368 to i32
  %3370 = shl i32 %3369, %3360
  %3371 = trunc i32 %3370 to i16
  %3372 = or i16 %3359, %3371
  store i16 %3372, ptr %3354, align 8, !tbaa !25
  br i1 %3362, label %3373, label %3403

3373:                                             ; preds = %3358
  %3374 = load i64, ptr %3355, align 8, !tbaa !33
  %3375 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3374, i64 1), !nosanitize !32
  %3376 = extractvalue { i64, i1 } %3375, 1, !nosanitize !32
  br i1 %3376, label %3377, label %3378, !prof !34, !nosanitize !32

3377:                                             ; preds = %3373
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3378:                                             ; preds = %3373
  %3379 = extractvalue { i64, i1 } %3375, 0, !nosanitize !32
  %3380 = load ptr, ptr %3356, align 8, !tbaa !35
  %3381 = trunc i16 %3372 to i8
  store i64 %3379, ptr %3355, align 8, !tbaa !33
  %3382 = getelementptr inbounds nuw i8, ptr %3380, i64 %3374
  store i8 %3381, ptr %3382, align 1, !tbaa !28
  %3383 = load i64, ptr %3355, align 8, !tbaa !33
  %3384 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3383, i64 1), !nosanitize !32
  %3385 = extractvalue { i64, i1 } %3384, 1, !nosanitize !32
  br i1 %3385, label %3386, label %3387, !prof !34, !nosanitize !32

3386:                                             ; preds = %3397, %3378
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3387:                                             ; preds = %3378
  %3388 = extractvalue { i64, i1 } %3384, 0, !nosanitize !32
  %3389 = load ptr, ptr %3356, align 8, !tbaa !35
  %3390 = load i16, ptr %3354, align 8, !tbaa !25
  %3391 = lshr i16 %3390, 8
  %3392 = trunc nuw i16 %3391 to i8
  store i64 %3388, ptr %3355, align 8, !tbaa !33
  %3393 = getelementptr inbounds nuw i8, ptr %3389, i64 %3383
  store i8 %3392, ptr %3393, align 1, !tbaa !28
  %3394 = load i32, ptr %2533, align 4, !tbaa !26
  %3395 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3394), !nosanitize !32
  %3396 = extractvalue { i32, i1 } %3395, 1, !nosanitize !32
  br i1 %3396, label %3197, label %3397, !prof !34, !nosanitize !32

3397:                                             ; preds = %3387
  %3398 = extractvalue { i32, i1 } %3395, 0, !nosanitize !32
  %3399 = lshr i32 %3369, %3398
  %3400 = trunc nuw i32 %3399 to i16
  store i16 %3400, ptr %3354, align 8, !tbaa !25
  %3401 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3394, i32 -13), !nosanitize !32
  %3402 = extractvalue { i32, i1 } %3401, 1, !nosanitize !32
  br i1 %3402, label %3386, label %3406, !prof !34, !nosanitize !32

3403:                                             ; preds = %3358
  %3404 = add nsw i32 %3360, 3
  %3405 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3404, 0
  br label %3406

3406:                                             ; preds = %3403, %3397
  %3407 = phi i16 [ %3400, %3397 ], [ %3372, %3403 ]
  %3408 = phi { i32, i1 } [ %3401, %3397 ], [ %3405, %3403 ]
  %3409 = extractvalue { i32, i1 } %3408, 0
  store i32 %3409, ptr %2533, align 4, !tbaa !26
  %3410 = add nuw nsw i64 %3361, 1
  %3411 = icmp eq i64 %3410, %3357
  br i1 %3411, label %3412, label %3358, !llvm.loop !82

3412:                                             ; preds = %3406
  %3413 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3184, i32 -1)
  %3414 = extractvalue { i32, i1 } %3413, 1, !nosanitize !32
  br i1 %3414, label %3197, label %3415, !prof !34, !nosanitize !32

3415:                                             ; preds = %3412
  %3416 = extractvalue { i32, i1 } %3413, 0, !nosanitize !32
  %3417 = icmp slt i32 %3416, 0
  br i1 %3417, label %3867, label %3418

3418:                                             ; preds = %3415
  %3419 = getelementptr inbounds nuw i8, ptr %0, i64 214
  %3420 = load i16, ptr %3419, align 2, !tbaa !28
  %3421 = icmp eq i16 %3420, 0
  %3422 = select i1 %3421, i32 138, i32 7
  %3423 = select i1 %3421, i32 3, i32 4
  %3424 = zext i16 %3420 to i32
  %3425 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3426 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3427 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3428 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3429 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3430 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3431 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3437

3432:                                             ; preds = %3859
  %3433 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3438, i32 1), !nosanitize !32
  %3434 = extractvalue { i32, i1 } %3433, 0, !nosanitize !32
  %3435 = extractvalue { i32, i1 } %3433, 1, !nosanitize !32
  br i1 %3435, label %3436, label %3437, !prof !75, !llvm.loop !83, !nosanitize !32

3436:                                             ; preds = %3432
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

3437:                                             ; preds = %3418, %3432
  %3438 = phi i32 [ 1, %3418 ], [ %3434, %3432 ]
  %3439 = phi i32 [ %3423, %3418 ], [ %3862, %3432 ]
  %3440 = phi i32 [ %3422, %3418 ], [ %3863, %3432 ]
  %3441 = phi i32 [ 0, %3418 ], [ %3864, %3432 ]
  %3442 = phi i32 [ %3424, %3418 ], [ %3450, %3432 ]
  %3443 = phi i32 [ -1, %3418 ], [ %3865, %3432 ]
  %3444 = phi i32 [ %3409, %3418 ], [ %3861, %3432 ]
  %3445 = phi i16 [ %3407, %3418 ], [ %3860, %3432 ]
  %3446 = sext i32 %3438 to i64
  %3447 = getelementptr [4 x i8], ptr %0, i64 %3446
  %3448 = getelementptr i8, ptr %3447, i64 214
  %3449 = load i16, ptr %3448, align 2, !tbaa !28
  %3450 = zext i16 %3449 to i32
  %3451 = add nsw i32 %3441, 1
  %3452 = icmp slt i32 %3451, %3440
  %3453 = icmp eq i32 %3442, %3450
  %3454 = select i1 %3452, i1 %3453, i1 false
  br i1 %3454, label %3859, label %3455

3455:                                             ; preds = %3437
  %3456 = icmp slt i32 %3451, %3439
  br i1 %3456, label %3457, label %3518

3457:                                             ; preds = %3455
  %3458 = zext nneg i32 %3442 to i64
  %3459 = getelementptr inbounds nuw [4 x i8], ptr %3425, i64 %3458
  %3460 = getelementptr inbounds nuw i8, ptr %3459, i64 2
  br label %3461

3461:                                             ; preds = %3515, %3457
  %3462 = phi i16 [ %3510, %3515 ], [ %3445, %3457 ]
  %3463 = phi i32 [ %3512, %3515 ], [ %3444, %3457 ]
  %3464 = phi i32 [ %3516, %3515 ], [ %3451, %3457 ]
  %3465 = load i16, ptr %3460, align 2, !tbaa !28
  %3466 = zext i16 %3465 to i32
  %3467 = sub nsw i32 16, %3466
  %3468 = icmp sgt i32 %3463, %3467
  %3469 = load i16, ptr %3459, align 4, !tbaa !28
  %3470 = zext i16 %3469 to i32
  %3471 = shl i32 %3470, %3463
  %3472 = trunc i32 %3471 to i16
  %3473 = or i16 %3462, %3472
  store i16 %3473, ptr %3354, align 8, !tbaa !25
  br i1 %3468, label %3475, label %3506

3474:                                             ; preds = %3826, %3782, %3736, %3692, %3644, %3600, %3549, %3509, %3489
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

3475:                                             ; preds = %3461
  %3476 = load i64, ptr %3355, align 8, !tbaa !33
  %3477 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3476, i64 1), !nosanitize !32
  %3478 = extractvalue { i64, i1 } %3477, 1, !nosanitize !32
  br i1 %3478, label %3479, label %3480, !prof !34, !nosanitize !32

3479:                                             ; preds = %3475
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3480:                                             ; preds = %3475
  %3481 = extractvalue { i64, i1 } %3477, 0, !nosanitize !32
  %3482 = load ptr, ptr %3356, align 8, !tbaa !35
  %3483 = trunc i16 %3473 to i8
  store i64 %3481, ptr %3355, align 8, !tbaa !33
  %3484 = getelementptr inbounds nuw i8, ptr %3482, i64 %3476
  store i8 %3483, ptr %3484, align 1, !tbaa !28
  %3485 = load i64, ptr %3355, align 8, !tbaa !33
  %3486 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3485, i64 1), !nosanitize !32
  %3487 = extractvalue { i64, i1 } %3486, 1, !nosanitize !32
  br i1 %3487, label %3488, label %3489, !prof !34, !nosanitize !32

3488:                                             ; preds = %3499, %3480
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3489:                                             ; preds = %3480
  %3490 = extractvalue { i64, i1 } %3486, 0, !nosanitize !32
  %3491 = load ptr, ptr %3356, align 8, !tbaa !35
  %3492 = load i16, ptr %3354, align 8, !tbaa !25
  %3493 = lshr i16 %3492, 8
  %3494 = trunc nuw i16 %3493 to i8
  store i64 %3490, ptr %3355, align 8, !tbaa !33
  %3495 = getelementptr inbounds nuw i8, ptr %3491, i64 %3485
  store i8 %3494, ptr %3495, align 1, !tbaa !28
  %3496 = load i32, ptr %2533, align 4, !tbaa !26
  %3497 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3496), !nosanitize !32
  %3498 = extractvalue { i32, i1 } %3497, 1, !nosanitize !32
  br i1 %3498, label %3474, label %3499, !prof !34, !nosanitize !32

3499:                                             ; preds = %3489
  %3500 = extractvalue { i32, i1 } %3497, 0, !nosanitize !32
  %3501 = lshr i32 %3470, %3500
  %3502 = trunc nuw i32 %3501 to i16
  store i16 %3502, ptr %3354, align 8, !tbaa !25
  %3503 = add nsw i32 %3466, -16
  %3504 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3496, i32 %3503), !nosanitize !32
  %3505 = extractvalue { i32, i1 } %3504, 1, !nosanitize !32
  br i1 %3505, label %3488, label %3509, !prof !34, !nosanitize !32

3506:                                             ; preds = %3461
  %3507 = add nsw i32 %3463, %3466
  %3508 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3507, 0
  br label %3509

3509:                                             ; preds = %3506, %3499
  %3510 = phi i16 [ %3502, %3499 ], [ %3473, %3506 ]
  %3511 = phi { i32, i1 } [ %3504, %3499 ], [ %3508, %3506 ]
  %3512 = extractvalue { i32, i1 } %3511, 0
  store i32 %3512, ptr %2533, align 4, !tbaa !26
  %3513 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3464, i32 -1)
  %3514 = extractvalue { i32, i1 } %3513, 1, !nosanitize !32
  br i1 %3514, label %3474, label %3515, !prof !34, !nosanitize !32

3515:                                             ; preds = %3509
  %3516 = extractvalue { i32, i1 } %3513, 0, !nosanitize !32
  %3517 = icmp eq i32 %3516, 0
  br i1 %3517, label %3852, label %3461, !llvm.loop !84

3518:                                             ; preds = %3455
  %3519 = icmp eq i32 %3442, 0
  br i1 %3519, label %3666, label %3520

3520:                                             ; preds = %3518
  %3521 = icmp eq i32 %3442, %3443
  br i1 %3521, label %3573, label %3522

3522:                                             ; preds = %3520
  %3523 = zext nneg i32 %3442 to i64
  %3524 = getelementptr inbounds nuw [4 x i8], ptr %3425, i64 %3523
  %3525 = getelementptr inbounds nuw i8, ptr %3524, i64 2
  %3526 = load i16, ptr %3525, align 2, !tbaa !28
  %3527 = zext i16 %3526 to i32
  %3528 = sub nsw i32 16, %3527
  %3529 = icmp sgt i32 %3444, %3528
  %3530 = load i16, ptr %3524, align 4, !tbaa !28
  %3531 = zext i16 %3530 to i32
  %3532 = shl i32 %3531, %3444
  %3533 = trunc i32 %3532 to i16
  %3534 = or i16 %3445, %3533
  store i16 %3534, ptr %3354, align 8, !tbaa !25
  br i1 %3529, label %3535, label %3566

3535:                                             ; preds = %3522
  %3536 = load i64, ptr %3355, align 8, !tbaa !33
  %3537 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3536, i64 1), !nosanitize !32
  %3538 = extractvalue { i64, i1 } %3537, 1, !nosanitize !32
  br i1 %3538, label %3539, label %3540, !prof !34, !nosanitize !32

3539:                                             ; preds = %3535
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3540:                                             ; preds = %3535
  %3541 = extractvalue { i64, i1 } %3537, 0, !nosanitize !32
  %3542 = load ptr, ptr %3356, align 8, !tbaa !35
  %3543 = trunc i16 %3534 to i8
  store i64 %3541, ptr %3355, align 8, !tbaa !33
  %3544 = getelementptr inbounds nuw i8, ptr %3542, i64 %3536
  store i8 %3543, ptr %3544, align 1, !tbaa !28
  %3545 = load i64, ptr %3355, align 8, !tbaa !33
  %3546 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3545, i64 1), !nosanitize !32
  %3547 = extractvalue { i64, i1 } %3546, 1, !nosanitize !32
  br i1 %3547, label %3548, label %3549, !prof !34, !nosanitize !32

3548:                                             ; preds = %3559, %3540
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3549:                                             ; preds = %3540
  %3550 = extractvalue { i64, i1 } %3546, 0, !nosanitize !32
  %3551 = load ptr, ptr %3356, align 8, !tbaa !35
  %3552 = load i16, ptr %3354, align 8, !tbaa !25
  %3553 = lshr i16 %3552, 8
  %3554 = trunc nuw i16 %3553 to i8
  store i64 %3550, ptr %3355, align 8, !tbaa !33
  %3555 = getelementptr inbounds nuw i8, ptr %3551, i64 %3545
  store i8 %3554, ptr %3555, align 1, !tbaa !28
  %3556 = load i32, ptr %2533, align 4, !tbaa !26
  %3557 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3556), !nosanitize !32
  %3558 = extractvalue { i32, i1 } %3557, 1, !nosanitize !32
  br i1 %3558, label %3474, label %3559, !prof !34, !nosanitize !32

3559:                                             ; preds = %3549
  %3560 = extractvalue { i32, i1 } %3557, 0, !nosanitize !32
  %3561 = lshr i32 %3531, %3560
  %3562 = trunc nuw i32 %3561 to i16
  store i16 %3562, ptr %3354, align 8, !tbaa !25
  %3563 = add nsw i32 %3527, -16
  %3564 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3556, i32 %3563), !nosanitize !32
  %3565 = extractvalue { i32, i1 } %3564, 1, !nosanitize !32
  br i1 %3565, label %3548, label %3569, !prof !34, !nosanitize !32

3566:                                             ; preds = %3522
  %3567 = add nsw i32 %3444, %3527
  %3568 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3567, 0
  br label %3569

3569:                                             ; preds = %3566, %3559
  %3570 = phi i16 [ %3562, %3559 ], [ %3534, %3566 ]
  %3571 = phi { i32, i1 } [ %3564, %3559 ], [ %3568, %3566 ]
  %3572 = extractvalue { i32, i1 } %3571, 0
  store i32 %3572, ptr %2533, align 4, !tbaa !26
  br label %3573

3573:                                             ; preds = %3569, %3520
  %3574 = phi i16 [ %3570, %3569 ], [ %3445, %3520 ]
  %3575 = phi i32 [ %3572, %3569 ], [ %3444, %3520 ]
  %3576 = phi i32 [ %3441, %3569 ], [ %3451, %3520 ]
  %3577 = load i16, ptr %3427, align 2, !tbaa !28
  %3578 = zext i16 %3577 to i32
  %3579 = sub nsw i32 16, %3578
  %3580 = icmp sgt i32 %3575, %3579
  %3581 = load i16, ptr %3426, align 4, !tbaa !28
  %3582 = zext i16 %3581 to i32
  %3583 = shl i32 %3582, %3575
  %3584 = trunc i32 %3583 to i16
  %3585 = or i16 %3574, %3584
  store i16 %3585, ptr %3354, align 8, !tbaa !25
  br i1 %3580, label %3586, label %3617

3586:                                             ; preds = %3573
  %3587 = load i64, ptr %3355, align 8, !tbaa !33
  %3588 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3587, i64 1), !nosanitize !32
  %3589 = extractvalue { i64, i1 } %3588, 1, !nosanitize !32
  br i1 %3589, label %3590, label %3591, !prof !34, !nosanitize !32

3590:                                             ; preds = %3586
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3591:                                             ; preds = %3586
  %3592 = extractvalue { i64, i1 } %3588, 0, !nosanitize !32
  %3593 = load ptr, ptr %3356, align 8, !tbaa !35
  %3594 = trunc i16 %3585 to i8
  store i64 %3592, ptr %3355, align 8, !tbaa !33
  %3595 = getelementptr inbounds nuw i8, ptr %3593, i64 %3587
  store i8 %3594, ptr %3595, align 1, !tbaa !28
  %3596 = load i64, ptr %3355, align 8, !tbaa !33
  %3597 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3596, i64 1), !nosanitize !32
  %3598 = extractvalue { i64, i1 } %3597, 1, !nosanitize !32
  br i1 %3598, label %3599, label %3600, !prof !34, !nosanitize !32

3599:                                             ; preds = %3610, %3591
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3600:                                             ; preds = %3591
  %3601 = extractvalue { i64, i1 } %3597, 0, !nosanitize !32
  %3602 = load ptr, ptr %3356, align 8, !tbaa !35
  %3603 = load i16, ptr %3354, align 8, !tbaa !25
  %3604 = lshr i16 %3603, 8
  %3605 = trunc nuw i16 %3604 to i8
  store i64 %3601, ptr %3355, align 8, !tbaa !33
  %3606 = getelementptr inbounds nuw i8, ptr %3602, i64 %3596
  store i8 %3605, ptr %3606, align 1, !tbaa !28
  %3607 = load i32, ptr %2533, align 4, !tbaa !26
  %3608 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3607), !nosanitize !32
  %3609 = extractvalue { i32, i1 } %3608, 1, !nosanitize !32
  br i1 %3609, label %3474, label %3610, !prof !34, !nosanitize !32

3610:                                             ; preds = %3600
  %3611 = extractvalue { i32, i1 } %3608, 0, !nosanitize !32
  %3612 = lshr i32 %3582, %3611
  %3613 = trunc nuw i32 %3612 to i16
  store i16 %3613, ptr %3354, align 8, !tbaa !25
  %3614 = add nsw i32 %3578, -16
  %3615 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3607, i32 %3614), !nosanitize !32
  %3616 = extractvalue { i32, i1 } %3615, 1, !nosanitize !32
  br i1 %3616, label %3599, label %3620, !prof !34, !nosanitize !32

3617:                                             ; preds = %3573
  %3618 = add nsw i32 %3575, %3578
  %3619 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3618, 0
  br label %3620

3620:                                             ; preds = %3617, %3610
  %3621 = phi i16 [ %3613, %3610 ], [ %3585, %3617 ]
  %3622 = phi { i32, i1 } [ %3615, %3610 ], [ %3619, %3617 ]
  %3623 = extractvalue { i32, i1 } %3622, 0
  store i32 %3623, ptr %2533, align 4, !tbaa !26
  %3624 = icmp sgt i32 %3623, 14
  %3625 = add i32 %3576, 65533
  br i1 %3624, label %3626, label %3660

3626:                                             ; preds = %3620
  %3627 = and i32 %3625, 65535
  %3628 = shl i32 %3625, %3623
  %3629 = trunc i32 %3628 to i16
  %3630 = or i16 %3621, %3629
  store i16 %3630, ptr %3354, align 8, !tbaa !25
  %3631 = load i64, ptr %3355, align 8, !tbaa !33
  %3632 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3631, i64 1), !nosanitize !32
  %3633 = extractvalue { i64, i1 } %3632, 1, !nosanitize !32
  br i1 %3633, label %3634, label %3635, !prof !34, !nosanitize !32

3634:                                             ; preds = %3626
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3635:                                             ; preds = %3626
  %3636 = extractvalue { i64, i1 } %3632, 0, !nosanitize !32
  %3637 = load ptr, ptr %3356, align 8, !tbaa !35
  %3638 = trunc i16 %3630 to i8
  store i64 %3636, ptr %3355, align 8, !tbaa !33
  %3639 = getelementptr inbounds nuw i8, ptr %3637, i64 %3631
  store i8 %3638, ptr %3639, align 1, !tbaa !28
  %3640 = load i64, ptr %3355, align 8, !tbaa !33
  %3641 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3640, i64 1), !nosanitize !32
  %3642 = extractvalue { i64, i1 } %3641, 1, !nosanitize !32
  br i1 %3642, label %3643, label %3644, !prof !34, !nosanitize !32

3643:                                             ; preds = %3654, %3635
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3644:                                             ; preds = %3635
  %3645 = extractvalue { i64, i1 } %3641, 0, !nosanitize !32
  %3646 = load ptr, ptr %3356, align 8, !tbaa !35
  %3647 = load i16, ptr %3354, align 8, !tbaa !25
  %3648 = lshr i16 %3647, 8
  %3649 = trunc nuw i16 %3648 to i8
  store i64 %3645, ptr %3355, align 8, !tbaa !33
  %3650 = getelementptr inbounds nuw i8, ptr %3646, i64 %3640
  store i8 %3649, ptr %3650, align 1, !tbaa !28
  %3651 = load i32, ptr %2533, align 4, !tbaa !26
  %3652 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3651), !nosanitize !32
  %3653 = extractvalue { i32, i1 } %3652, 1, !nosanitize !32
  br i1 %3653, label %3474, label %3654, !prof !34, !nosanitize !32

3654:                                             ; preds = %3644
  %3655 = extractvalue { i32, i1 } %3652, 0, !nosanitize !32
  %3656 = lshr i32 %3627, %3655
  %3657 = trunc nuw i32 %3656 to i16
  store i16 %3657, ptr %3354, align 8, !tbaa !25
  %3658 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3651, i32 -14), !nosanitize !32
  %3659 = extractvalue { i32, i1 } %3658, 1, !nosanitize !32
  br i1 %3659, label %3643, label %3848, !prof !34, !nosanitize !32

3660:                                             ; preds = %3620
  %3661 = shl i32 %3625, %3623
  %3662 = trunc i32 %3661 to i16
  %3663 = or i16 %3621, %3662
  store i16 %3663, ptr %3354, align 8, !tbaa !25
  %3664 = add nsw i32 %3623, 2
  %3665 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3664, 0
  br label %3848

3666:                                             ; preds = %3518
  %3667 = icmp slt i32 %3441, 10
  br i1 %3667, label %3668, label %3758

3668:                                             ; preds = %3666
  %3669 = load i16, ptr %3431, align 2, !tbaa !28
  %3670 = zext i16 %3669 to i32
  %3671 = sub nsw i32 16, %3670
  %3672 = icmp sgt i32 %3444, %3671
  %3673 = load i16, ptr %3430, align 4, !tbaa !28
  %3674 = zext i16 %3673 to i32
  %3675 = shl i32 %3674, %3444
  %3676 = trunc i32 %3675 to i16
  %3677 = or i16 %3445, %3676
  store i16 %3677, ptr %3354, align 8, !tbaa !25
  br i1 %3672, label %3678, label %3709

3678:                                             ; preds = %3668
  %3679 = load i64, ptr %3355, align 8, !tbaa !33
  %3680 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3679, i64 1), !nosanitize !32
  %3681 = extractvalue { i64, i1 } %3680, 1, !nosanitize !32
  br i1 %3681, label %3682, label %3683, !prof !34, !nosanitize !32

3682:                                             ; preds = %3678
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3683:                                             ; preds = %3678
  %3684 = extractvalue { i64, i1 } %3680, 0, !nosanitize !32
  %3685 = load ptr, ptr %3356, align 8, !tbaa !35
  %3686 = trunc i16 %3677 to i8
  store i64 %3684, ptr %3355, align 8, !tbaa !33
  %3687 = getelementptr inbounds nuw i8, ptr %3685, i64 %3679
  store i8 %3686, ptr %3687, align 1, !tbaa !28
  %3688 = load i64, ptr %3355, align 8, !tbaa !33
  %3689 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3688, i64 1), !nosanitize !32
  %3690 = extractvalue { i64, i1 } %3689, 1, !nosanitize !32
  br i1 %3690, label %3691, label %3692, !prof !34, !nosanitize !32

3691:                                             ; preds = %3702, %3683
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3692:                                             ; preds = %3683
  %3693 = extractvalue { i64, i1 } %3689, 0, !nosanitize !32
  %3694 = load ptr, ptr %3356, align 8, !tbaa !35
  %3695 = load i16, ptr %3354, align 8, !tbaa !25
  %3696 = lshr i16 %3695, 8
  %3697 = trunc nuw i16 %3696 to i8
  store i64 %3693, ptr %3355, align 8, !tbaa !33
  %3698 = getelementptr inbounds nuw i8, ptr %3694, i64 %3688
  store i8 %3697, ptr %3698, align 1, !tbaa !28
  %3699 = load i32, ptr %2533, align 4, !tbaa !26
  %3700 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3699), !nosanitize !32
  %3701 = extractvalue { i32, i1 } %3700, 1, !nosanitize !32
  br i1 %3701, label %3474, label %3702, !prof !34, !nosanitize !32

3702:                                             ; preds = %3692
  %3703 = extractvalue { i32, i1 } %3700, 0, !nosanitize !32
  %3704 = lshr i32 %3674, %3703
  %3705 = trunc nuw i32 %3704 to i16
  store i16 %3705, ptr %3354, align 8, !tbaa !25
  %3706 = add nsw i32 %3670, -16
  %3707 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3699, i32 %3706), !nosanitize !32
  %3708 = extractvalue { i32, i1 } %3707, 1, !nosanitize !32
  br i1 %3708, label %3691, label %3712, !prof !34, !nosanitize !32

3709:                                             ; preds = %3668
  %3710 = add nsw i32 %3444, %3670
  %3711 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3710, 0
  br label %3712

3712:                                             ; preds = %3709, %3702
  %3713 = phi i16 [ %3705, %3702 ], [ %3677, %3709 ]
  %3714 = phi { i32, i1 } [ %3707, %3702 ], [ %3711, %3709 ]
  %3715 = extractvalue { i32, i1 } %3714, 0
  store i32 %3715, ptr %2533, align 4, !tbaa !26
  %3716 = icmp sgt i32 %3715, 13
  %3717 = add nsw i32 %3441, 65534
  br i1 %3716, label %3718, label %3752

3718:                                             ; preds = %3712
  %3719 = and i32 %3717, 65535
  %3720 = shl i32 %3717, %3715
  %3721 = trunc i32 %3720 to i16
  %3722 = or i16 %3713, %3721
  store i16 %3722, ptr %3354, align 8, !tbaa !25
  %3723 = load i64, ptr %3355, align 8, !tbaa !33
  %3724 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3723, i64 1), !nosanitize !32
  %3725 = extractvalue { i64, i1 } %3724, 1, !nosanitize !32
  br i1 %3725, label %3726, label %3727, !prof !34, !nosanitize !32

3726:                                             ; preds = %3718
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3727:                                             ; preds = %3718
  %3728 = extractvalue { i64, i1 } %3724, 0, !nosanitize !32
  %3729 = load ptr, ptr %3356, align 8, !tbaa !35
  %3730 = trunc i16 %3722 to i8
  store i64 %3728, ptr %3355, align 8, !tbaa !33
  %3731 = getelementptr inbounds nuw i8, ptr %3729, i64 %3723
  store i8 %3730, ptr %3731, align 1, !tbaa !28
  %3732 = load i64, ptr %3355, align 8, !tbaa !33
  %3733 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3732, i64 1), !nosanitize !32
  %3734 = extractvalue { i64, i1 } %3733, 1, !nosanitize !32
  br i1 %3734, label %3735, label %3736, !prof !34, !nosanitize !32

3735:                                             ; preds = %3746, %3727
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3736:                                             ; preds = %3727
  %3737 = extractvalue { i64, i1 } %3733, 0, !nosanitize !32
  %3738 = load ptr, ptr %3356, align 8, !tbaa !35
  %3739 = load i16, ptr %3354, align 8, !tbaa !25
  %3740 = lshr i16 %3739, 8
  %3741 = trunc nuw i16 %3740 to i8
  store i64 %3737, ptr %3355, align 8, !tbaa !33
  %3742 = getelementptr inbounds nuw i8, ptr %3738, i64 %3732
  store i8 %3741, ptr %3742, align 1, !tbaa !28
  %3743 = load i32, ptr %2533, align 4, !tbaa !26
  %3744 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3743), !nosanitize !32
  %3745 = extractvalue { i32, i1 } %3744, 1, !nosanitize !32
  br i1 %3745, label %3474, label %3746, !prof !34, !nosanitize !32

3746:                                             ; preds = %3736
  %3747 = extractvalue { i32, i1 } %3744, 0, !nosanitize !32
  %3748 = lshr i32 %3719, %3747
  %3749 = trunc nuw i32 %3748 to i16
  store i16 %3749, ptr %3354, align 8, !tbaa !25
  %3750 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3743, i32 -13), !nosanitize !32
  %3751 = extractvalue { i32, i1 } %3750, 1, !nosanitize !32
  br i1 %3751, label %3735, label %3848, !prof !34, !nosanitize !32

3752:                                             ; preds = %3712
  %3753 = shl i32 %3717, %3715
  %3754 = trunc i32 %3753 to i16
  %3755 = or i16 %3713, %3754
  store i16 %3755, ptr %3354, align 8, !tbaa !25
  %3756 = add nsw i32 %3715, 3
  %3757 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3756, 0
  br label %3848

3758:                                             ; preds = %3666
  %3759 = load i16, ptr %3429, align 2, !tbaa !28
  %3760 = zext i16 %3759 to i32
  %3761 = sub nsw i32 16, %3760
  %3762 = icmp sgt i32 %3444, %3761
  %3763 = load i16, ptr %3428, align 4, !tbaa !28
  %3764 = zext i16 %3763 to i32
  %3765 = shl i32 %3764, %3444
  %3766 = trunc i32 %3765 to i16
  %3767 = or i16 %3445, %3766
  store i16 %3767, ptr %3354, align 8, !tbaa !25
  br i1 %3762, label %3768, label %3799

3768:                                             ; preds = %3758
  %3769 = load i64, ptr %3355, align 8, !tbaa !33
  %3770 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3769, i64 1), !nosanitize !32
  %3771 = extractvalue { i64, i1 } %3770, 1, !nosanitize !32
  br i1 %3771, label %3772, label %3773, !prof !34, !nosanitize !32

3772:                                             ; preds = %3768
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3773:                                             ; preds = %3768
  %3774 = extractvalue { i64, i1 } %3770, 0, !nosanitize !32
  %3775 = load ptr, ptr %3356, align 8, !tbaa !35
  %3776 = trunc i16 %3767 to i8
  store i64 %3774, ptr %3355, align 8, !tbaa !33
  %3777 = getelementptr inbounds nuw i8, ptr %3775, i64 %3769
  store i8 %3776, ptr %3777, align 1, !tbaa !28
  %3778 = load i64, ptr %3355, align 8, !tbaa !33
  %3779 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3778, i64 1), !nosanitize !32
  %3780 = extractvalue { i64, i1 } %3779, 1, !nosanitize !32
  br i1 %3780, label %3781, label %3782, !prof !34, !nosanitize !32

3781:                                             ; preds = %3792, %3773
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3782:                                             ; preds = %3773
  %3783 = extractvalue { i64, i1 } %3779, 0, !nosanitize !32
  %3784 = load ptr, ptr %3356, align 8, !tbaa !35
  %3785 = load i16, ptr %3354, align 8, !tbaa !25
  %3786 = lshr i16 %3785, 8
  %3787 = trunc nuw i16 %3786 to i8
  store i64 %3783, ptr %3355, align 8, !tbaa !33
  %3788 = getelementptr inbounds nuw i8, ptr %3784, i64 %3778
  store i8 %3787, ptr %3788, align 1, !tbaa !28
  %3789 = load i32, ptr %2533, align 4, !tbaa !26
  %3790 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3789), !nosanitize !32
  %3791 = extractvalue { i32, i1 } %3790, 1, !nosanitize !32
  br i1 %3791, label %3474, label %3792, !prof !34, !nosanitize !32

3792:                                             ; preds = %3782
  %3793 = extractvalue { i32, i1 } %3790, 0, !nosanitize !32
  %3794 = lshr i32 %3764, %3793
  %3795 = trunc nuw i32 %3794 to i16
  store i16 %3795, ptr %3354, align 8, !tbaa !25
  %3796 = add nsw i32 %3760, -16
  %3797 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3789, i32 %3796), !nosanitize !32
  %3798 = extractvalue { i32, i1 } %3797, 1, !nosanitize !32
  br i1 %3798, label %3781, label %3802, !prof !34, !nosanitize !32

3799:                                             ; preds = %3758
  %3800 = add nsw i32 %3444, %3760
  %3801 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3800, 0
  br label %3802

3802:                                             ; preds = %3799, %3792
  %3803 = phi i16 [ %3795, %3792 ], [ %3767, %3799 ]
  %3804 = phi { i32, i1 } [ %3797, %3792 ], [ %3801, %3799 ]
  %3805 = extractvalue { i32, i1 } %3804, 0
  store i32 %3805, ptr %2533, align 4, !tbaa !26
  %3806 = icmp sgt i32 %3805, 9
  %3807 = add nuw i32 %3441, 65526
  br i1 %3806, label %3808, label %3842

3808:                                             ; preds = %3802
  %3809 = and i32 %3807, 65535
  %3810 = shl i32 %3807, %3805
  %3811 = trunc i32 %3810 to i16
  %3812 = or i16 %3803, %3811
  store i16 %3812, ptr %3354, align 8, !tbaa !25
  %3813 = load i64, ptr %3355, align 8, !tbaa !33
  %3814 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3813, i64 1), !nosanitize !32
  %3815 = extractvalue { i64, i1 } %3814, 1, !nosanitize !32
  br i1 %3815, label %3816, label %3817, !prof !34, !nosanitize !32

3816:                                             ; preds = %3808
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3817:                                             ; preds = %3808
  %3818 = extractvalue { i64, i1 } %3814, 0, !nosanitize !32
  %3819 = load ptr, ptr %3356, align 8, !tbaa !35
  %3820 = trunc i16 %3812 to i8
  store i64 %3818, ptr %3355, align 8, !tbaa !33
  %3821 = getelementptr inbounds nuw i8, ptr %3819, i64 %3813
  store i8 %3820, ptr %3821, align 1, !tbaa !28
  %3822 = load i64, ptr %3355, align 8, !tbaa !33
  %3823 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3822, i64 1), !nosanitize !32
  %3824 = extractvalue { i64, i1 } %3823, 1, !nosanitize !32
  br i1 %3824, label %3825, label %3826, !prof !34, !nosanitize !32

3825:                                             ; preds = %3836, %3817
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3826:                                             ; preds = %3817
  %3827 = extractvalue { i64, i1 } %3823, 0, !nosanitize !32
  %3828 = load ptr, ptr %3356, align 8, !tbaa !35
  %3829 = load i16, ptr %3354, align 8, !tbaa !25
  %3830 = lshr i16 %3829, 8
  %3831 = trunc nuw i16 %3830 to i8
  store i64 %3827, ptr %3355, align 8, !tbaa !33
  %3832 = getelementptr inbounds nuw i8, ptr %3828, i64 %3822
  store i8 %3831, ptr %3832, align 1, !tbaa !28
  %3833 = load i32, ptr %2533, align 4, !tbaa !26
  %3834 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3833), !nosanitize !32
  %3835 = extractvalue { i32, i1 } %3834, 1, !nosanitize !32
  br i1 %3835, label %3474, label %3836, !prof !34, !nosanitize !32

3836:                                             ; preds = %3826
  %3837 = extractvalue { i32, i1 } %3834, 0, !nosanitize !32
  %3838 = lshr i32 %3809, %3837
  %3839 = trunc nuw i32 %3838 to i16
  store i16 %3839, ptr %3354, align 8, !tbaa !25
  %3840 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3833, i32 -9), !nosanitize !32
  %3841 = extractvalue { i32, i1 } %3840, 1, !nosanitize !32
  br i1 %3841, label %3825, label %3848, !prof !34, !nosanitize !32

3842:                                             ; preds = %3802
  %3843 = shl i32 %3807, %3805
  %3844 = trunc i32 %3843 to i16
  %3845 = or i16 %3803, %3844
  store i16 %3845, ptr %3354, align 8, !tbaa !25
  %3846 = add nsw i32 %3805, 7
  %3847 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3846, 0
  br label %3848

3848:                                             ; preds = %3842, %3836, %3752, %3746, %3660, %3654
  %3849 = phi i16 [ %3663, %3660 ], [ %3755, %3752 ], [ %3657, %3654 ], [ %3749, %3746 ], [ %3839, %3836 ], [ %3845, %3842 ]
  %3850 = phi { i32, i1 } [ %3665, %3660 ], [ %3757, %3752 ], [ %3658, %3654 ], [ %3750, %3746 ], [ %3840, %3836 ], [ %3847, %3842 ]
  %3851 = extractvalue { i32, i1 } %3850, 0
  store i32 %3851, ptr %2533, align 4, !tbaa !26
  br label %3852

3852:                                             ; preds = %3515, %3848
  %3853 = phi i16 [ %3849, %3848 ], [ %3510, %3515 ]
  %3854 = phi i32 [ %3851, %3848 ], [ %3512, %3515 ]
  %3855 = icmp eq i16 %3449, 0
  br i1 %3855, label %3859, label %3856

3856:                                             ; preds = %3852
  %3857 = select i1 %3453, i32 3, i32 4
  %3858 = select i1 %3453, i32 6, i32 7
  br label %3859

3859:                                             ; preds = %3856, %3852, %3437
  %3860 = phi i16 [ %3445, %3437 ], [ %3853, %3852 ], [ %3853, %3856 ]
  %3861 = phi i32 [ %3444, %3437 ], [ %3854, %3852 ], [ %3854, %3856 ]
  %3862 = phi i32 [ %3439, %3437 ], [ 3, %3852 ], [ %3857, %3856 ]
  %3863 = phi i32 [ %3440, %3437 ], [ 138, %3852 ], [ %3858, %3856 ]
  %3864 = phi i32 [ %3451, %3437 ], [ 0, %3852 ], [ 0, %3856 ]
  %3865 = phi i32 [ %3443, %3437 ], [ %3442, %3852 ], [ %3442, %3856 ]
  %3866 = icmp sgt i32 %3438, %3416
  br i1 %3866, label %3867, label %3432, !llvm.loop !83

3867:                                             ; preds = %3859, %3415
  %3868 = phi i16 [ %3407, %3415 ], [ %3860, %3859 ]
  %3869 = phi i32 [ %3409, %3415 ], [ %3861, %3859 ]
  br i1 %3252, label %3197, label %3870, !prof !34, !nosanitize !32

3870:                                             ; preds = %3867
  %3871 = extractvalue { i32, i1 } %3251, 0, !nosanitize !32
  %3872 = icmp slt i32 %3871, 0
  br i1 %3872, label %4322, label %3873

3873:                                             ; preds = %3870
  %3874 = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %3875 = load i16, ptr %3874, align 2, !tbaa !28
  %3876 = icmp eq i16 %3875, 0
  %3877 = select i1 %3876, i32 138, i32 7
  %3878 = select i1 %3876, i32 3, i32 4
  %3879 = zext i16 %3875 to i32
  %3880 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3881 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3882 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3883 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3884 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3885 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3886 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3892

3887:                                             ; preds = %4314
  %3888 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3893, i32 1), !nosanitize !32
  %3889 = extractvalue { i32, i1 } %3888, 0, !nosanitize !32
  %3890 = extractvalue { i32, i1 } %3888, 1, !nosanitize !32
  br i1 %3890, label %3891, label %3892, !prof !75, !llvm.loop !83, !nosanitize !32

3891:                                             ; preds = %3887
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

3892:                                             ; preds = %3873, %3887
  %3893 = phi i32 [ 1, %3873 ], [ %3889, %3887 ]
  %3894 = phi i32 [ %3878, %3873 ], [ %4317, %3887 ]
  %3895 = phi i32 [ %3877, %3873 ], [ %4318, %3887 ]
  %3896 = phi i32 [ 0, %3873 ], [ %4319, %3887 ]
  %3897 = phi i32 [ %3879, %3873 ], [ %3905, %3887 ]
  %3898 = phi i32 [ -1, %3873 ], [ %4320, %3887 ]
  %3899 = phi i32 [ %3869, %3873 ], [ %4316, %3887 ]
  %3900 = phi i16 [ %3868, %3873 ], [ %4315, %3887 ]
  %3901 = sext i32 %3893 to i64
  %3902 = getelementptr [4 x i8], ptr %0, i64 %3901
  %3903 = getelementptr i8, ptr %3902, i64 2506
  %3904 = load i16, ptr %3903, align 2, !tbaa !28
  %3905 = zext i16 %3904 to i32
  %3906 = add nsw i32 %3896, 1
  %3907 = icmp slt i32 %3906, %3895
  %3908 = icmp eq i32 %3897, %3905
  %3909 = select i1 %3907, i1 %3908, i1 false
  br i1 %3909, label %4314, label %3910

3910:                                             ; preds = %3892
  %3911 = icmp slt i32 %3906, %3894
  br i1 %3911, label %3912, label %3973

3912:                                             ; preds = %3910
  %3913 = zext nneg i32 %3897 to i64
  %3914 = getelementptr inbounds nuw [4 x i8], ptr %3880, i64 %3913
  %3915 = getelementptr inbounds nuw i8, ptr %3914, i64 2
  br label %3916

3916:                                             ; preds = %3970, %3912
  %3917 = phi i16 [ %3965, %3970 ], [ %3900, %3912 ]
  %3918 = phi i32 [ %3967, %3970 ], [ %3899, %3912 ]
  %3919 = phi i32 [ %3971, %3970 ], [ %3906, %3912 ]
  %3920 = load i16, ptr %3915, align 2, !tbaa !28
  %3921 = zext i16 %3920 to i32
  %3922 = sub nsw i32 16, %3921
  %3923 = icmp sgt i32 %3918, %3922
  %3924 = load i16, ptr %3914, align 4, !tbaa !28
  %3925 = zext i16 %3924 to i32
  %3926 = shl i32 %3925, %3918
  %3927 = trunc i32 %3926 to i16
  %3928 = or i16 %3917, %3927
  store i16 %3928, ptr %3354, align 8, !tbaa !25
  br i1 %3923, label %3930, label %3961

3929:                                             ; preds = %4281, %4237, %4191, %4147, %4099, %4055, %4004, %3964, %3944
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

3930:                                             ; preds = %3916
  %3931 = load i64, ptr %3355, align 8, !tbaa !33
  %3932 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3931, i64 1), !nosanitize !32
  %3933 = extractvalue { i64, i1 } %3932, 1, !nosanitize !32
  br i1 %3933, label %3934, label %3935, !prof !34, !nosanitize !32

3934:                                             ; preds = %3930
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3935:                                             ; preds = %3930
  %3936 = extractvalue { i64, i1 } %3932, 0, !nosanitize !32
  %3937 = load ptr, ptr %3356, align 8, !tbaa !35
  %3938 = trunc i16 %3928 to i8
  store i64 %3936, ptr %3355, align 8, !tbaa !33
  %3939 = getelementptr inbounds nuw i8, ptr %3937, i64 %3931
  store i8 %3938, ptr %3939, align 1, !tbaa !28
  %3940 = load i64, ptr %3355, align 8, !tbaa !33
  %3941 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3940, i64 1), !nosanitize !32
  %3942 = extractvalue { i64, i1 } %3941, 1, !nosanitize !32
  br i1 %3942, label %3943, label %3944, !prof !34, !nosanitize !32

3943:                                             ; preds = %3954, %3935
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3944:                                             ; preds = %3935
  %3945 = extractvalue { i64, i1 } %3941, 0, !nosanitize !32
  %3946 = load ptr, ptr %3356, align 8, !tbaa !35
  %3947 = load i16, ptr %3354, align 8, !tbaa !25
  %3948 = lshr i16 %3947, 8
  %3949 = trunc nuw i16 %3948 to i8
  store i64 %3945, ptr %3355, align 8, !tbaa !33
  %3950 = getelementptr inbounds nuw i8, ptr %3946, i64 %3940
  store i8 %3949, ptr %3950, align 1, !tbaa !28
  %3951 = load i32, ptr %2533, align 4, !tbaa !26
  %3952 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3951), !nosanitize !32
  %3953 = extractvalue { i32, i1 } %3952, 1, !nosanitize !32
  br i1 %3953, label %3929, label %3954, !prof !34, !nosanitize !32

3954:                                             ; preds = %3944
  %3955 = extractvalue { i32, i1 } %3952, 0, !nosanitize !32
  %3956 = lshr i32 %3925, %3955
  %3957 = trunc nuw i32 %3956 to i16
  store i16 %3957, ptr %3354, align 8, !tbaa !25
  %3958 = add nsw i32 %3921, -16
  %3959 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3951, i32 %3958), !nosanitize !32
  %3960 = extractvalue { i32, i1 } %3959, 1, !nosanitize !32
  br i1 %3960, label %3943, label %3964, !prof !34, !nosanitize !32

3961:                                             ; preds = %3916
  %3962 = add nsw i32 %3918, %3921
  %3963 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3962, 0
  br label %3964

3964:                                             ; preds = %3961, %3954
  %3965 = phi i16 [ %3957, %3954 ], [ %3928, %3961 ]
  %3966 = phi { i32, i1 } [ %3959, %3954 ], [ %3963, %3961 ]
  %3967 = extractvalue { i32, i1 } %3966, 0
  store i32 %3967, ptr %2533, align 4, !tbaa !26
  %3968 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3919, i32 -1)
  %3969 = extractvalue { i32, i1 } %3968, 1, !nosanitize !32
  br i1 %3969, label %3929, label %3970, !prof !34, !nosanitize !32

3970:                                             ; preds = %3964
  %3971 = extractvalue { i32, i1 } %3968, 0, !nosanitize !32
  %3972 = icmp eq i32 %3971, 0
  br i1 %3972, label %4307, label %3916, !llvm.loop !84

3973:                                             ; preds = %3910
  %3974 = icmp eq i32 %3897, 0
  br i1 %3974, label %4121, label %3975

3975:                                             ; preds = %3973
  %3976 = icmp eq i32 %3897, %3898
  br i1 %3976, label %4028, label %3977

3977:                                             ; preds = %3975
  %3978 = zext nneg i32 %3897 to i64
  %3979 = getelementptr inbounds nuw [4 x i8], ptr %3880, i64 %3978
  %3980 = getelementptr inbounds nuw i8, ptr %3979, i64 2
  %3981 = load i16, ptr %3980, align 2, !tbaa !28
  %3982 = zext i16 %3981 to i32
  %3983 = sub nsw i32 16, %3982
  %3984 = icmp sgt i32 %3899, %3983
  %3985 = load i16, ptr %3979, align 4, !tbaa !28
  %3986 = zext i16 %3985 to i32
  %3987 = shl i32 %3986, %3899
  %3988 = trunc i32 %3987 to i16
  %3989 = or i16 %3900, %3988
  store i16 %3989, ptr %3354, align 8, !tbaa !25
  br i1 %3984, label %3990, label %4021

3990:                                             ; preds = %3977
  %3991 = load i64, ptr %3355, align 8, !tbaa !33
  %3992 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3991, i64 1), !nosanitize !32
  %3993 = extractvalue { i64, i1 } %3992, 1, !nosanitize !32
  br i1 %3993, label %3994, label %3995, !prof !34, !nosanitize !32

3994:                                             ; preds = %3990
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3995:                                             ; preds = %3990
  %3996 = extractvalue { i64, i1 } %3992, 0, !nosanitize !32
  %3997 = load ptr, ptr %3356, align 8, !tbaa !35
  %3998 = trunc i16 %3989 to i8
  store i64 %3996, ptr %3355, align 8, !tbaa !33
  %3999 = getelementptr inbounds nuw i8, ptr %3997, i64 %3991
  store i8 %3998, ptr %3999, align 1, !tbaa !28
  %4000 = load i64, ptr %3355, align 8, !tbaa !33
  %4001 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4000, i64 1), !nosanitize !32
  %4002 = extractvalue { i64, i1 } %4001, 1, !nosanitize !32
  br i1 %4002, label %4003, label %4004, !prof !34, !nosanitize !32

4003:                                             ; preds = %4014, %3995
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4004:                                             ; preds = %3995
  %4005 = extractvalue { i64, i1 } %4001, 0, !nosanitize !32
  %4006 = load ptr, ptr %3356, align 8, !tbaa !35
  %4007 = load i16, ptr %3354, align 8, !tbaa !25
  %4008 = lshr i16 %4007, 8
  %4009 = trunc nuw i16 %4008 to i8
  store i64 %4005, ptr %3355, align 8, !tbaa !33
  %4010 = getelementptr inbounds nuw i8, ptr %4006, i64 %4000
  store i8 %4009, ptr %4010, align 1, !tbaa !28
  %4011 = load i32, ptr %2533, align 4, !tbaa !26
  %4012 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4011), !nosanitize !32
  %4013 = extractvalue { i32, i1 } %4012, 1, !nosanitize !32
  br i1 %4013, label %3929, label %4014, !prof !34, !nosanitize !32

4014:                                             ; preds = %4004
  %4015 = extractvalue { i32, i1 } %4012, 0, !nosanitize !32
  %4016 = lshr i32 %3986, %4015
  %4017 = trunc nuw i32 %4016 to i16
  store i16 %4017, ptr %3354, align 8, !tbaa !25
  %4018 = add nsw i32 %3982, -16
  %4019 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4011, i32 %4018), !nosanitize !32
  %4020 = extractvalue { i32, i1 } %4019, 1, !nosanitize !32
  br i1 %4020, label %4003, label %4024, !prof !34, !nosanitize !32

4021:                                             ; preds = %3977
  %4022 = add nsw i32 %3899, %3982
  %4023 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4022, 0
  br label %4024

4024:                                             ; preds = %4021, %4014
  %4025 = phi i16 [ %4017, %4014 ], [ %3989, %4021 ]
  %4026 = phi { i32, i1 } [ %4019, %4014 ], [ %4023, %4021 ]
  %4027 = extractvalue { i32, i1 } %4026, 0
  store i32 %4027, ptr %2533, align 4, !tbaa !26
  br label %4028

4028:                                             ; preds = %4024, %3975
  %4029 = phi i16 [ %4025, %4024 ], [ %3900, %3975 ]
  %4030 = phi i32 [ %4027, %4024 ], [ %3899, %3975 ]
  %4031 = phi i32 [ %3896, %4024 ], [ %3906, %3975 ]
  %4032 = load i16, ptr %3882, align 2, !tbaa !28
  %4033 = zext i16 %4032 to i32
  %4034 = sub nsw i32 16, %4033
  %4035 = icmp sgt i32 %4030, %4034
  %4036 = load i16, ptr %3881, align 4, !tbaa !28
  %4037 = zext i16 %4036 to i32
  %4038 = shl i32 %4037, %4030
  %4039 = trunc i32 %4038 to i16
  %4040 = or i16 %4029, %4039
  store i16 %4040, ptr %3354, align 8, !tbaa !25
  br i1 %4035, label %4041, label %4072

4041:                                             ; preds = %4028
  %4042 = load i64, ptr %3355, align 8, !tbaa !33
  %4043 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4042, i64 1), !nosanitize !32
  %4044 = extractvalue { i64, i1 } %4043, 1, !nosanitize !32
  br i1 %4044, label %4045, label %4046, !prof !34, !nosanitize !32

4045:                                             ; preds = %4041
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4046:                                             ; preds = %4041
  %4047 = extractvalue { i64, i1 } %4043, 0, !nosanitize !32
  %4048 = load ptr, ptr %3356, align 8, !tbaa !35
  %4049 = trunc i16 %4040 to i8
  store i64 %4047, ptr %3355, align 8, !tbaa !33
  %4050 = getelementptr inbounds nuw i8, ptr %4048, i64 %4042
  store i8 %4049, ptr %4050, align 1, !tbaa !28
  %4051 = load i64, ptr %3355, align 8, !tbaa !33
  %4052 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4051, i64 1), !nosanitize !32
  %4053 = extractvalue { i64, i1 } %4052, 1, !nosanitize !32
  br i1 %4053, label %4054, label %4055, !prof !34, !nosanitize !32

4054:                                             ; preds = %4065, %4046
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4055:                                             ; preds = %4046
  %4056 = extractvalue { i64, i1 } %4052, 0, !nosanitize !32
  %4057 = load ptr, ptr %3356, align 8, !tbaa !35
  %4058 = load i16, ptr %3354, align 8, !tbaa !25
  %4059 = lshr i16 %4058, 8
  %4060 = trunc nuw i16 %4059 to i8
  store i64 %4056, ptr %3355, align 8, !tbaa !33
  %4061 = getelementptr inbounds nuw i8, ptr %4057, i64 %4051
  store i8 %4060, ptr %4061, align 1, !tbaa !28
  %4062 = load i32, ptr %2533, align 4, !tbaa !26
  %4063 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4062), !nosanitize !32
  %4064 = extractvalue { i32, i1 } %4063, 1, !nosanitize !32
  br i1 %4064, label %3929, label %4065, !prof !34, !nosanitize !32

4065:                                             ; preds = %4055
  %4066 = extractvalue { i32, i1 } %4063, 0, !nosanitize !32
  %4067 = lshr i32 %4037, %4066
  %4068 = trunc nuw i32 %4067 to i16
  store i16 %4068, ptr %3354, align 8, !tbaa !25
  %4069 = add nsw i32 %4033, -16
  %4070 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4062, i32 %4069), !nosanitize !32
  %4071 = extractvalue { i32, i1 } %4070, 1, !nosanitize !32
  br i1 %4071, label %4054, label %4075, !prof !34, !nosanitize !32

4072:                                             ; preds = %4028
  %4073 = add nsw i32 %4030, %4033
  %4074 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4073, 0
  br label %4075

4075:                                             ; preds = %4072, %4065
  %4076 = phi i16 [ %4068, %4065 ], [ %4040, %4072 ]
  %4077 = phi { i32, i1 } [ %4070, %4065 ], [ %4074, %4072 ]
  %4078 = extractvalue { i32, i1 } %4077, 0
  store i32 %4078, ptr %2533, align 4, !tbaa !26
  %4079 = icmp sgt i32 %4078, 14
  %4080 = add i32 %4031, 65533
  br i1 %4079, label %4081, label %4115

4081:                                             ; preds = %4075
  %4082 = and i32 %4080, 65535
  %4083 = shl i32 %4080, %4078
  %4084 = trunc i32 %4083 to i16
  %4085 = or i16 %4076, %4084
  store i16 %4085, ptr %3354, align 8, !tbaa !25
  %4086 = load i64, ptr %3355, align 8, !tbaa !33
  %4087 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4086, i64 1), !nosanitize !32
  %4088 = extractvalue { i64, i1 } %4087, 1, !nosanitize !32
  br i1 %4088, label %4089, label %4090, !prof !34, !nosanitize !32

4089:                                             ; preds = %4081
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4090:                                             ; preds = %4081
  %4091 = extractvalue { i64, i1 } %4087, 0, !nosanitize !32
  %4092 = load ptr, ptr %3356, align 8, !tbaa !35
  %4093 = trunc i16 %4085 to i8
  store i64 %4091, ptr %3355, align 8, !tbaa !33
  %4094 = getelementptr inbounds nuw i8, ptr %4092, i64 %4086
  store i8 %4093, ptr %4094, align 1, !tbaa !28
  %4095 = load i64, ptr %3355, align 8, !tbaa !33
  %4096 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4095, i64 1), !nosanitize !32
  %4097 = extractvalue { i64, i1 } %4096, 1, !nosanitize !32
  br i1 %4097, label %4098, label %4099, !prof !34, !nosanitize !32

4098:                                             ; preds = %4109, %4090
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4099:                                             ; preds = %4090
  %4100 = extractvalue { i64, i1 } %4096, 0, !nosanitize !32
  %4101 = load ptr, ptr %3356, align 8, !tbaa !35
  %4102 = load i16, ptr %3354, align 8, !tbaa !25
  %4103 = lshr i16 %4102, 8
  %4104 = trunc nuw i16 %4103 to i8
  store i64 %4100, ptr %3355, align 8, !tbaa !33
  %4105 = getelementptr inbounds nuw i8, ptr %4101, i64 %4095
  store i8 %4104, ptr %4105, align 1, !tbaa !28
  %4106 = load i32, ptr %2533, align 4, !tbaa !26
  %4107 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4106), !nosanitize !32
  %4108 = extractvalue { i32, i1 } %4107, 1, !nosanitize !32
  br i1 %4108, label %3929, label %4109, !prof !34, !nosanitize !32

4109:                                             ; preds = %4099
  %4110 = extractvalue { i32, i1 } %4107, 0, !nosanitize !32
  %4111 = lshr i32 %4082, %4110
  %4112 = trunc nuw i32 %4111 to i16
  store i16 %4112, ptr %3354, align 8, !tbaa !25
  %4113 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4106, i32 -14), !nosanitize !32
  %4114 = extractvalue { i32, i1 } %4113, 1, !nosanitize !32
  br i1 %4114, label %4098, label %4303, !prof !34, !nosanitize !32

4115:                                             ; preds = %4075
  %4116 = shl i32 %4080, %4078
  %4117 = trunc i32 %4116 to i16
  %4118 = or i16 %4076, %4117
  store i16 %4118, ptr %3354, align 8, !tbaa !25
  %4119 = add nsw i32 %4078, 2
  %4120 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4119, 0
  br label %4303

4121:                                             ; preds = %3973
  %4122 = icmp slt i32 %3896, 10
  br i1 %4122, label %4123, label %4213

4123:                                             ; preds = %4121
  %4124 = load i16, ptr %3886, align 2, !tbaa !28
  %4125 = zext i16 %4124 to i32
  %4126 = sub nsw i32 16, %4125
  %4127 = icmp sgt i32 %3899, %4126
  %4128 = load i16, ptr %3885, align 4, !tbaa !28
  %4129 = zext i16 %4128 to i32
  %4130 = shl i32 %4129, %3899
  %4131 = trunc i32 %4130 to i16
  %4132 = or i16 %3900, %4131
  store i16 %4132, ptr %3354, align 8, !tbaa !25
  br i1 %4127, label %4133, label %4164

4133:                                             ; preds = %4123
  %4134 = load i64, ptr %3355, align 8, !tbaa !33
  %4135 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4134, i64 1), !nosanitize !32
  %4136 = extractvalue { i64, i1 } %4135, 1, !nosanitize !32
  br i1 %4136, label %4137, label %4138, !prof !34, !nosanitize !32

4137:                                             ; preds = %4133
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4138:                                             ; preds = %4133
  %4139 = extractvalue { i64, i1 } %4135, 0, !nosanitize !32
  %4140 = load ptr, ptr %3356, align 8, !tbaa !35
  %4141 = trunc i16 %4132 to i8
  store i64 %4139, ptr %3355, align 8, !tbaa !33
  %4142 = getelementptr inbounds nuw i8, ptr %4140, i64 %4134
  store i8 %4141, ptr %4142, align 1, !tbaa !28
  %4143 = load i64, ptr %3355, align 8, !tbaa !33
  %4144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4143, i64 1), !nosanitize !32
  %4145 = extractvalue { i64, i1 } %4144, 1, !nosanitize !32
  br i1 %4145, label %4146, label %4147, !prof !34, !nosanitize !32

4146:                                             ; preds = %4157, %4138
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4147:                                             ; preds = %4138
  %4148 = extractvalue { i64, i1 } %4144, 0, !nosanitize !32
  %4149 = load ptr, ptr %3356, align 8, !tbaa !35
  %4150 = load i16, ptr %3354, align 8, !tbaa !25
  %4151 = lshr i16 %4150, 8
  %4152 = trunc nuw i16 %4151 to i8
  store i64 %4148, ptr %3355, align 8, !tbaa !33
  %4153 = getelementptr inbounds nuw i8, ptr %4149, i64 %4143
  store i8 %4152, ptr %4153, align 1, !tbaa !28
  %4154 = load i32, ptr %2533, align 4, !tbaa !26
  %4155 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4154), !nosanitize !32
  %4156 = extractvalue { i32, i1 } %4155, 1, !nosanitize !32
  br i1 %4156, label %3929, label %4157, !prof !34, !nosanitize !32

4157:                                             ; preds = %4147
  %4158 = extractvalue { i32, i1 } %4155, 0, !nosanitize !32
  %4159 = lshr i32 %4129, %4158
  %4160 = trunc nuw i32 %4159 to i16
  store i16 %4160, ptr %3354, align 8, !tbaa !25
  %4161 = add nsw i32 %4125, -16
  %4162 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4154, i32 %4161), !nosanitize !32
  %4163 = extractvalue { i32, i1 } %4162, 1, !nosanitize !32
  br i1 %4163, label %4146, label %4167, !prof !34, !nosanitize !32

4164:                                             ; preds = %4123
  %4165 = add nsw i32 %3899, %4125
  %4166 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4165, 0
  br label %4167

4167:                                             ; preds = %4164, %4157
  %4168 = phi i16 [ %4160, %4157 ], [ %4132, %4164 ]
  %4169 = phi { i32, i1 } [ %4162, %4157 ], [ %4166, %4164 ]
  %4170 = extractvalue { i32, i1 } %4169, 0
  store i32 %4170, ptr %2533, align 4, !tbaa !26
  %4171 = icmp sgt i32 %4170, 13
  %4172 = add nsw i32 %3896, 65534
  br i1 %4171, label %4173, label %4207

4173:                                             ; preds = %4167
  %4174 = and i32 %4172, 65535
  %4175 = shl i32 %4172, %4170
  %4176 = trunc i32 %4175 to i16
  %4177 = or i16 %4168, %4176
  store i16 %4177, ptr %3354, align 8, !tbaa !25
  %4178 = load i64, ptr %3355, align 8, !tbaa !33
  %4179 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4178, i64 1), !nosanitize !32
  %4180 = extractvalue { i64, i1 } %4179, 1, !nosanitize !32
  br i1 %4180, label %4181, label %4182, !prof !34, !nosanitize !32

4181:                                             ; preds = %4173
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4182:                                             ; preds = %4173
  %4183 = extractvalue { i64, i1 } %4179, 0, !nosanitize !32
  %4184 = load ptr, ptr %3356, align 8, !tbaa !35
  %4185 = trunc i16 %4177 to i8
  store i64 %4183, ptr %3355, align 8, !tbaa !33
  %4186 = getelementptr inbounds nuw i8, ptr %4184, i64 %4178
  store i8 %4185, ptr %4186, align 1, !tbaa !28
  %4187 = load i64, ptr %3355, align 8, !tbaa !33
  %4188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4187, i64 1), !nosanitize !32
  %4189 = extractvalue { i64, i1 } %4188, 1, !nosanitize !32
  br i1 %4189, label %4190, label %4191, !prof !34, !nosanitize !32

4190:                                             ; preds = %4201, %4182
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4191:                                             ; preds = %4182
  %4192 = extractvalue { i64, i1 } %4188, 0, !nosanitize !32
  %4193 = load ptr, ptr %3356, align 8, !tbaa !35
  %4194 = load i16, ptr %3354, align 8, !tbaa !25
  %4195 = lshr i16 %4194, 8
  %4196 = trunc nuw i16 %4195 to i8
  store i64 %4192, ptr %3355, align 8, !tbaa !33
  %4197 = getelementptr inbounds nuw i8, ptr %4193, i64 %4187
  store i8 %4196, ptr %4197, align 1, !tbaa !28
  %4198 = load i32, ptr %2533, align 4, !tbaa !26
  %4199 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4198), !nosanitize !32
  %4200 = extractvalue { i32, i1 } %4199, 1, !nosanitize !32
  br i1 %4200, label %3929, label %4201, !prof !34, !nosanitize !32

4201:                                             ; preds = %4191
  %4202 = extractvalue { i32, i1 } %4199, 0, !nosanitize !32
  %4203 = lshr i32 %4174, %4202
  %4204 = trunc nuw i32 %4203 to i16
  store i16 %4204, ptr %3354, align 8, !tbaa !25
  %4205 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4198, i32 -13), !nosanitize !32
  %4206 = extractvalue { i32, i1 } %4205, 1, !nosanitize !32
  br i1 %4206, label %4190, label %4303, !prof !34, !nosanitize !32

4207:                                             ; preds = %4167
  %4208 = shl i32 %4172, %4170
  %4209 = trunc i32 %4208 to i16
  %4210 = or i16 %4168, %4209
  store i16 %4210, ptr %3354, align 8, !tbaa !25
  %4211 = add nsw i32 %4170, 3
  %4212 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4211, 0
  br label %4303

4213:                                             ; preds = %4121
  %4214 = load i16, ptr %3884, align 2, !tbaa !28
  %4215 = zext i16 %4214 to i32
  %4216 = sub nsw i32 16, %4215
  %4217 = icmp sgt i32 %3899, %4216
  %4218 = load i16, ptr %3883, align 4, !tbaa !28
  %4219 = zext i16 %4218 to i32
  %4220 = shl i32 %4219, %3899
  %4221 = trunc i32 %4220 to i16
  %4222 = or i16 %3900, %4221
  store i16 %4222, ptr %3354, align 8, !tbaa !25
  br i1 %4217, label %4223, label %4254

4223:                                             ; preds = %4213
  %4224 = load i64, ptr %3355, align 8, !tbaa !33
  %4225 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4224, i64 1), !nosanitize !32
  %4226 = extractvalue { i64, i1 } %4225, 1, !nosanitize !32
  br i1 %4226, label %4227, label %4228, !prof !34, !nosanitize !32

4227:                                             ; preds = %4223
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4228:                                             ; preds = %4223
  %4229 = extractvalue { i64, i1 } %4225, 0, !nosanitize !32
  %4230 = load ptr, ptr %3356, align 8, !tbaa !35
  %4231 = trunc i16 %4222 to i8
  store i64 %4229, ptr %3355, align 8, !tbaa !33
  %4232 = getelementptr inbounds nuw i8, ptr %4230, i64 %4224
  store i8 %4231, ptr %4232, align 1, !tbaa !28
  %4233 = load i64, ptr %3355, align 8, !tbaa !33
  %4234 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4233, i64 1), !nosanitize !32
  %4235 = extractvalue { i64, i1 } %4234, 1, !nosanitize !32
  br i1 %4235, label %4236, label %4237, !prof !34, !nosanitize !32

4236:                                             ; preds = %4247, %4228
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4237:                                             ; preds = %4228
  %4238 = extractvalue { i64, i1 } %4234, 0, !nosanitize !32
  %4239 = load ptr, ptr %3356, align 8, !tbaa !35
  %4240 = load i16, ptr %3354, align 8, !tbaa !25
  %4241 = lshr i16 %4240, 8
  %4242 = trunc nuw i16 %4241 to i8
  store i64 %4238, ptr %3355, align 8, !tbaa !33
  %4243 = getelementptr inbounds nuw i8, ptr %4239, i64 %4233
  store i8 %4242, ptr %4243, align 1, !tbaa !28
  %4244 = load i32, ptr %2533, align 4, !tbaa !26
  %4245 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4244), !nosanitize !32
  %4246 = extractvalue { i32, i1 } %4245, 1, !nosanitize !32
  br i1 %4246, label %3929, label %4247, !prof !34, !nosanitize !32

4247:                                             ; preds = %4237
  %4248 = extractvalue { i32, i1 } %4245, 0, !nosanitize !32
  %4249 = lshr i32 %4219, %4248
  %4250 = trunc nuw i32 %4249 to i16
  store i16 %4250, ptr %3354, align 8, !tbaa !25
  %4251 = add nsw i32 %4215, -16
  %4252 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4244, i32 %4251), !nosanitize !32
  %4253 = extractvalue { i32, i1 } %4252, 1, !nosanitize !32
  br i1 %4253, label %4236, label %4257, !prof !34, !nosanitize !32

4254:                                             ; preds = %4213
  %4255 = add nsw i32 %3899, %4215
  %4256 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4255, 0
  br label %4257

4257:                                             ; preds = %4254, %4247
  %4258 = phi i16 [ %4250, %4247 ], [ %4222, %4254 ]
  %4259 = phi { i32, i1 } [ %4252, %4247 ], [ %4256, %4254 ]
  %4260 = extractvalue { i32, i1 } %4259, 0
  store i32 %4260, ptr %2533, align 4, !tbaa !26
  %4261 = icmp sgt i32 %4260, 9
  %4262 = add nuw i32 %3896, 65526
  br i1 %4261, label %4263, label %4297

4263:                                             ; preds = %4257
  %4264 = and i32 %4262, 65535
  %4265 = shl i32 %4262, %4260
  %4266 = trunc i32 %4265 to i16
  %4267 = or i16 %4258, %4266
  store i16 %4267, ptr %3354, align 8, !tbaa !25
  %4268 = load i64, ptr %3355, align 8, !tbaa !33
  %4269 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4268, i64 1), !nosanitize !32
  %4270 = extractvalue { i64, i1 } %4269, 1, !nosanitize !32
  br i1 %4270, label %4271, label %4272, !prof !34, !nosanitize !32

4271:                                             ; preds = %4263
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4272:                                             ; preds = %4263
  %4273 = extractvalue { i64, i1 } %4269, 0, !nosanitize !32
  %4274 = load ptr, ptr %3356, align 8, !tbaa !35
  %4275 = trunc i16 %4267 to i8
  store i64 %4273, ptr %3355, align 8, !tbaa !33
  %4276 = getelementptr inbounds nuw i8, ptr %4274, i64 %4268
  store i8 %4275, ptr %4276, align 1, !tbaa !28
  %4277 = load i64, ptr %3355, align 8, !tbaa !33
  %4278 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4277, i64 1), !nosanitize !32
  %4279 = extractvalue { i64, i1 } %4278, 1, !nosanitize !32
  br i1 %4279, label %4280, label %4281, !prof !34, !nosanitize !32

4280:                                             ; preds = %4291, %4272
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4281:                                             ; preds = %4272
  %4282 = extractvalue { i64, i1 } %4278, 0, !nosanitize !32
  %4283 = load ptr, ptr %3356, align 8, !tbaa !35
  %4284 = load i16, ptr %3354, align 8, !tbaa !25
  %4285 = lshr i16 %4284, 8
  %4286 = trunc nuw i16 %4285 to i8
  store i64 %4282, ptr %3355, align 8, !tbaa !33
  %4287 = getelementptr inbounds nuw i8, ptr %4283, i64 %4277
  store i8 %4286, ptr %4287, align 1, !tbaa !28
  %4288 = load i32, ptr %2533, align 4, !tbaa !26
  %4289 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4288), !nosanitize !32
  %4290 = extractvalue { i32, i1 } %4289, 1, !nosanitize !32
  br i1 %4290, label %3929, label %4291, !prof !34, !nosanitize !32

4291:                                             ; preds = %4281
  %4292 = extractvalue { i32, i1 } %4289, 0, !nosanitize !32
  %4293 = lshr i32 %4264, %4292
  %4294 = trunc nuw i32 %4293 to i16
  store i16 %4294, ptr %3354, align 8, !tbaa !25
  %4295 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4288, i32 -9), !nosanitize !32
  %4296 = extractvalue { i32, i1 } %4295, 1, !nosanitize !32
  br i1 %4296, label %4280, label %4303, !prof !34, !nosanitize !32

4297:                                             ; preds = %4257
  %4298 = shl i32 %4262, %4260
  %4299 = trunc i32 %4298 to i16
  %4300 = or i16 %4258, %4299
  store i16 %4300, ptr %3354, align 8, !tbaa !25
  %4301 = add nsw i32 %4260, 7
  %4302 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4301, 0
  br label %4303

4303:                                             ; preds = %4297, %4291, %4207, %4201, %4115, %4109
  %4304 = phi i16 [ %4118, %4115 ], [ %4210, %4207 ], [ %4112, %4109 ], [ %4204, %4201 ], [ %4294, %4291 ], [ %4300, %4297 ]
  %4305 = phi { i32, i1 } [ %4120, %4115 ], [ %4212, %4207 ], [ %4113, %4109 ], [ %4205, %4201 ], [ %4295, %4291 ], [ %4302, %4297 ]
  %4306 = extractvalue { i32, i1 } %4305, 0
  store i32 %4306, ptr %2533, align 4, !tbaa !26
  br label %4307

4307:                                             ; preds = %3970, %4303
  %4308 = phi i16 [ %4304, %4303 ], [ %3965, %3970 ]
  %4309 = phi i32 [ %4306, %4303 ], [ %3967, %3970 ]
  %4310 = icmp eq i16 %3904, 0
  br i1 %4310, label %4314, label %4311

4311:                                             ; preds = %4307
  %4312 = select i1 %3908, i32 3, i32 4
  %4313 = select i1 %3908, i32 6, i32 7
  br label %4314

4314:                                             ; preds = %4311, %4307, %3892
  %4315 = phi i16 [ %3900, %3892 ], [ %4308, %4307 ], [ %4308, %4311 ]
  %4316 = phi i32 [ %3899, %3892 ], [ %4309, %4307 ], [ %4309, %4311 ]
  %4317 = phi i32 [ %3894, %3892 ], [ 3, %4307 ], [ %4312, %4311 ]
  %4318 = phi i32 [ %3895, %3892 ], [ 138, %4307 ], [ %4313, %4311 ]
  %4319 = phi i32 [ %3906, %3892 ], [ 0, %4307 ], [ 0, %4311 ]
  %4320 = phi i32 [ %3898, %3892 ], [ %3897, %4307 ], [ %3897, %4311 ]
  %4321 = icmp sgt i32 %3893, %3871
  br i1 %4321, label %4322, label %3887, !llvm.loop !83

4322:                                             ; preds = %4314, %3870
  %4323 = phi i16 [ %3868, %3870 ], [ %4315, %4314 ]
  %4324 = phi i32 [ %3869, %3870 ], [ %4316, %4314 ]
  %4325 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %4326 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %4327 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %4328 = load i32, ptr %4327, align 4, !tbaa !31
  %4329 = icmp eq i32 %4328, 0
  br i1 %4329, label %4662, label %4330

4330:                                             ; preds = %4322
  %4331 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %4332

4332:                                             ; preds = %4657, %4330
  %4333 = phi i16 [ %4658, %4657 ], [ %4323, %4330 ]
  %4334 = phi i32 [ %4659, %4657 ], [ %4324, %4330 ]
  %4335 = phi i32 [ %4354, %4657 ], [ 0, %4330 ]
  %4336 = load ptr, ptr %4331, align 8, !tbaa !80
  %4337 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4335, i32 2)
  %4338 = extractvalue { i32, i1 } %4337, 0, !nosanitize !32
  %4339 = extractvalue { i32, i1 } %4337, 1, !nosanitize !32
  br i1 %4339, label %4340, label %4341, !prof !34, !nosanitize !32

4340:                                             ; preds = %4332
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4341:                                             ; preds = %4332
  %4342 = add nuw i32 %4335, 1
  %4343 = zext i32 %4335 to i64
  %4344 = getelementptr inbounds nuw i8, ptr %4336, i64 %4343
  %4345 = load i8, ptr %4344, align 1, !tbaa !28
  %4346 = zext i8 %4345 to i32
  %4347 = zext i32 %4342 to i64
  %4348 = getelementptr inbounds nuw i8, ptr %4336, i64 %4347
  %4349 = load i8, ptr %4348, align 1, !tbaa !28
  %4350 = zext i8 %4349 to i32
  %4351 = shl nuw nsw i32 %4350, 8
  %4352 = or disjoint i32 %4351, %4346
  %4353 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4338, i32 1), !nosanitize !32
  %4354 = extractvalue { i32, i1 } %4353, 0, !nosanitize !32
  %4355 = extractvalue { i32, i1 } %4353, 1, !nosanitize !32
  br i1 %4355, label %4356, label %4357, !prof !34, !nosanitize !32

4356:                                             ; preds = %4341
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4357:                                             ; preds = %4341
  %4358 = zext i32 %4338 to i64
  %4359 = getelementptr inbounds nuw i8, ptr %4336, i64 %4358
  %4360 = load i8, ptr %4359, align 1, !tbaa !28
  %4361 = zext i8 %4360 to i32
  %4362 = icmp eq i32 %4352, 0
  %4363 = zext i8 %4360 to i64
  br i1 %4362, label %4364, label %4411

4364:                                             ; preds = %4357
  %4365 = getelementptr inbounds nuw [4 x i8], ptr %4325, i64 %4363
  %4366 = getelementptr inbounds nuw i8, ptr %4365, i64 2
  %4367 = load i16, ptr %4366, align 2, !tbaa !28
  %4368 = zext i16 %4367 to i32
  %4369 = sub nsw i32 16, %4368
  %4370 = icmp sgt i32 %4334, %4369
  %4371 = load i16, ptr %4365, align 2, !tbaa !28
  %4372 = zext i16 %4371 to i32
  %4373 = shl i32 %4372, %4334
  %4374 = trunc i32 %4373 to i16
  %4375 = or i16 %4333, %4374
  store i16 %4375, ptr %3354, align 8, !tbaa !25
  br i1 %4370, label %4377, label %4408

4376:                                             ; preds = %4509, %4499, %4475, %4469, %4441, %4391
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

4377:                                             ; preds = %4364
  %4378 = load i64, ptr %3355, align 8, !tbaa !33
  %4379 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4378, i64 1), !nosanitize !32
  %4380 = extractvalue { i64, i1 } %4379, 1, !nosanitize !32
  br i1 %4380, label %4381, label %4382, !prof !34, !nosanitize !32

4381:                                             ; preds = %4377
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4382:                                             ; preds = %4377
  %4383 = extractvalue { i64, i1 } %4379, 0, !nosanitize !32
  %4384 = load ptr, ptr %3356, align 8, !tbaa !35
  %4385 = trunc i16 %4375 to i8
  store i64 %4383, ptr %3355, align 8, !tbaa !33
  %4386 = getelementptr inbounds nuw i8, ptr %4384, i64 %4378
  store i8 %4385, ptr %4386, align 1, !tbaa !28
  %4387 = load i64, ptr %3355, align 8, !tbaa !33
  %4388 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4387, i64 1), !nosanitize !32
  %4389 = extractvalue { i64, i1 } %4388, 1, !nosanitize !32
  br i1 %4389, label %4390, label %4391, !prof !34, !nosanitize !32

4390:                                             ; preds = %4401, %4382
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4391:                                             ; preds = %4382
  %4392 = extractvalue { i64, i1 } %4388, 0, !nosanitize !32
  %4393 = load ptr, ptr %3356, align 8, !tbaa !35
  %4394 = load i16, ptr %3354, align 8, !tbaa !25
  %4395 = lshr i16 %4394, 8
  %4396 = trunc nuw i16 %4395 to i8
  store i64 %4392, ptr %3355, align 8, !tbaa !33
  %4397 = getelementptr inbounds nuw i8, ptr %4393, i64 %4387
  store i8 %4396, ptr %4397, align 1, !tbaa !28
  %4398 = load i32, ptr %2533, align 4, !tbaa !26
  %4399 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4398), !nosanitize !32
  %4400 = extractvalue { i32, i1 } %4399, 1, !nosanitize !32
  br i1 %4400, label %4376, label %4401, !prof !34, !nosanitize !32

4401:                                             ; preds = %4391
  %4402 = extractvalue { i32, i1 } %4399, 0, !nosanitize !32
  %4403 = lshr i32 %4372, %4402
  %4404 = trunc nuw i32 %4403 to i16
  store i16 %4404, ptr %3354, align 8, !tbaa !25
  %4405 = add nsw i32 %4368, -16
  %4406 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4398, i32 %4405), !nosanitize !32
  %4407 = extractvalue { i32, i1 } %4406, 1, !nosanitize !32
  br i1 %4407, label %4390, label %4653, !prof !34, !nosanitize !32

4408:                                             ; preds = %4364
  %4409 = add nsw i32 %4334, %4368
  %4410 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4409, 0
  br label %4653

4411:                                             ; preds = %4357
  %4412 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %4363
  %4413 = load i8, ptr %4412, align 1, !tbaa !28
  %4414 = zext i8 %4413 to i64
  %4415 = getelementptr inbounds nuw [4 x i8], ptr %4325, i64 %4414
  %4416 = getelementptr inbounds nuw i8, ptr %4415, i64 1028
  %4417 = getelementptr inbounds nuw i8, ptr %4415, i64 1030
  %4418 = load i16, ptr %4417, align 2, !tbaa !28
  %4419 = zext i16 %4418 to i32
  %4420 = sub nsw i32 16, %4419
  %4421 = icmp sgt i32 %4334, %4420
  %4422 = load i16, ptr %4416, align 2, !tbaa !28
  %4423 = zext i16 %4422 to i32
  %4424 = shl i32 %4423, %4334
  %4425 = trunc i32 %4424 to i16
  %4426 = or i16 %4333, %4425
  store i16 %4426, ptr %3354, align 8, !tbaa !25
  br i1 %4421, label %4427, label %4458

4427:                                             ; preds = %4411
  %4428 = load i64, ptr %3355, align 8, !tbaa !33
  %4429 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4428, i64 1), !nosanitize !32
  %4430 = extractvalue { i64, i1 } %4429, 1, !nosanitize !32
  br i1 %4430, label %4431, label %4432, !prof !34, !nosanitize !32

4431:                                             ; preds = %4427
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4432:                                             ; preds = %4427
  %4433 = extractvalue { i64, i1 } %4429, 0, !nosanitize !32
  %4434 = load ptr, ptr %3356, align 8, !tbaa !35
  %4435 = trunc i16 %4426 to i8
  store i64 %4433, ptr %3355, align 8, !tbaa !33
  %4436 = getelementptr inbounds nuw i8, ptr %4434, i64 %4428
  store i8 %4435, ptr %4436, align 1, !tbaa !28
  %4437 = load i64, ptr %3355, align 8, !tbaa !33
  %4438 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4437, i64 1), !nosanitize !32
  %4439 = extractvalue { i64, i1 } %4438, 1, !nosanitize !32
  br i1 %4439, label %4440, label %4441, !prof !34, !nosanitize !32

4440:                                             ; preds = %4451, %4432
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4441:                                             ; preds = %4432
  %4442 = extractvalue { i64, i1 } %4438, 0, !nosanitize !32
  %4443 = load ptr, ptr %3356, align 8, !tbaa !35
  %4444 = load i16, ptr %3354, align 8, !tbaa !25
  %4445 = lshr i16 %4444, 8
  %4446 = trunc nuw i16 %4445 to i8
  store i64 %4442, ptr %3355, align 8, !tbaa !33
  %4447 = getelementptr inbounds nuw i8, ptr %4443, i64 %4437
  store i8 %4446, ptr %4447, align 1, !tbaa !28
  %4448 = load i32, ptr %2533, align 4, !tbaa !26
  %4449 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4448), !nosanitize !32
  %4450 = extractvalue { i32, i1 } %4449, 1, !nosanitize !32
  br i1 %4450, label %4376, label %4451, !prof !34, !nosanitize !32

4451:                                             ; preds = %4441
  %4452 = extractvalue { i32, i1 } %4449, 0, !nosanitize !32
  %4453 = lshr i32 %4423, %4452
  %4454 = trunc nuw i32 %4453 to i16
  store i16 %4454, ptr %3354, align 8, !tbaa !25
  %4455 = add nsw i32 %4419, -16
  %4456 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4448, i32 %4455), !nosanitize !32
  %4457 = extractvalue { i32, i1 } %4456, 1, !nosanitize !32
  br i1 %4457, label %4440, label %4461, !prof !34, !nosanitize !32

4458:                                             ; preds = %4411
  %4459 = add nsw i32 %4334, %4419
  %4460 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4459, 0
  br label %4461

4461:                                             ; preds = %4458, %4451
  %4462 = phi i16 [ %4454, %4451 ], [ %4426, %4458 ]
  %4463 = phi { i32, i1 } [ %4456, %4451 ], [ %4460, %4458 ]
  %4464 = extractvalue { i32, i1 } %4463, 0
  store i32 %4464, ptr %2533, align 4, !tbaa !26
  %4465 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %4414
  %4466 = load i32, ptr %4465, align 4, !tbaa !4
  %4467 = add i8 %4413, -28
  %4468 = icmp ult i8 %4467, -20
  br i1 %4468, label %4529, label %4469

4469:                                             ; preds = %4461
  %4470 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %4414
  %4471 = load i32, ptr %4470, align 4, !tbaa !4
  %4472 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4361, i32 %4471), !nosanitize !32
  %4473 = extractvalue { i32, i1 } %4472, 0, !nosanitize !32
  %4474 = extractvalue { i32, i1 } %4472, 1, !nosanitize !32
  br i1 %4474, label %4376, label %4475, !prof !34, !nosanitize !32

4475:                                             ; preds = %4469
  %4476 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4466), !nosanitize !32
  %4477 = extractvalue { i32, i1 } %4476, 1, !nosanitize !32
  br i1 %4477, label %4376, label %4478, !prof !34, !nosanitize !32

4478:                                             ; preds = %4475
  %4479 = extractvalue { i32, i1 } %4476, 0, !nosanitize !32
  %4480 = icmp sgt i32 %4464, %4479
  br i1 %4480, label %4481, label %4519

4481:                                             ; preds = %4478
  %4482 = and i32 %4473, 65535
  %4483 = shl i32 %4473, %4464
  %4484 = trunc i32 %4483 to i16
  %4485 = or i16 %4462, %4484
  store i16 %4485, ptr %3354, align 8, !tbaa !25
  %4486 = load i64, ptr %3355, align 8, !tbaa !33
  %4487 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4486, i64 1), !nosanitize !32
  %4488 = extractvalue { i64, i1 } %4487, 1, !nosanitize !32
  br i1 %4488, label %4489, label %4490, !prof !34, !nosanitize !32

4489:                                             ; preds = %4481
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4490:                                             ; preds = %4481
  %4491 = extractvalue { i64, i1 } %4487, 0, !nosanitize !32
  %4492 = load ptr, ptr %3356, align 8, !tbaa !35
  %4493 = trunc i16 %4485 to i8
  store i64 %4491, ptr %3355, align 8, !tbaa !33
  %4494 = getelementptr inbounds nuw i8, ptr %4492, i64 %4486
  store i8 %4493, ptr %4494, align 1, !tbaa !28
  %4495 = load i64, ptr %3355, align 8, !tbaa !33
  %4496 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4495, i64 1), !nosanitize !32
  %4497 = extractvalue { i64, i1 } %4496, 1, !nosanitize !32
  br i1 %4497, label %4498, label %4499, !prof !34, !nosanitize !32

4498:                                             ; preds = %4519, %4515, %4490
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4499:                                             ; preds = %4490
  %4500 = extractvalue { i64, i1 } %4496, 0, !nosanitize !32
  %4501 = load ptr, ptr %3356, align 8, !tbaa !35
  %4502 = load i16, ptr %3354, align 8, !tbaa !25
  %4503 = lshr i16 %4502, 8
  %4504 = trunc nuw i16 %4503 to i8
  store i64 %4500, ptr %3355, align 8, !tbaa !33
  %4505 = getelementptr inbounds nuw i8, ptr %4501, i64 %4495
  store i8 %4504, ptr %4505, align 1, !tbaa !28
  %4506 = load i32, ptr %2533, align 4, !tbaa !26
  %4507 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4506), !nosanitize !32
  %4508 = extractvalue { i32, i1 } %4507, 1, !nosanitize !32
  br i1 %4508, label %4376, label %4509, !prof !34, !nosanitize !32

4509:                                             ; preds = %4499
  %4510 = extractvalue { i32, i1 } %4507, 0, !nosanitize !32
  %4511 = lshr i32 %4482, %4510
  %4512 = trunc nuw i32 %4511 to i16
  store i16 %4512, ptr %3354, align 8, !tbaa !25
  %4513 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4466, i32 -16)
  %4514 = extractvalue { i32, i1 } %4513, 1, !nosanitize !32
  br i1 %4514, label %4376, label %4515, !prof !34, !nosanitize !32

4515:                                             ; preds = %4509
  %4516 = extractvalue { i32, i1 } %4513, 0, !nosanitize !32
  %4517 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4506, i32 %4516), !nosanitize !32
  %4518 = extractvalue { i32, i1 } %4517, 1, !nosanitize !32
  br i1 %4518, label %4498, label %4525, !prof !34, !nosanitize !32

4519:                                             ; preds = %4478
  %4520 = shl i32 %4473, %4464
  %4521 = trunc i32 %4520 to i16
  %4522 = or i16 %4462, %4521
  store i16 %4522, ptr %3354, align 8, !tbaa !25
  %4523 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4464, i32 %4466), !nosanitize !32
  %4524 = extractvalue { i32, i1 } %4523, 1, !nosanitize !32
  br i1 %4524, label %4498, label %4525, !prof !34, !nosanitize !32

4525:                                             ; preds = %4519, %4515
  %4526 = phi i16 [ %4512, %4515 ], [ %4522, %4519 ]
  %4527 = phi { i32, i1 } [ %4517, %4515 ], [ %4523, %4519 ]
  %4528 = extractvalue { i32, i1 } %4527, 0
  store i32 %4528, ptr %2533, align 4, !tbaa !26
  br label %4529

4529:                                             ; preds = %4525, %4461
  %4530 = phi i16 [ %4526, %4525 ], [ %4462, %4461 ]
  %4531 = phi i32 [ %4528, %4525 ], [ %4464, %4461 ]
  %4532 = add nsw i32 %4352, -1
  %4533 = icmp samesign ult i32 %4352, 257
  %4534 = zext nneg i32 %4532 to i64
  %4535 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4534
  %4536 = lshr i32 %4532, 7
  %4537 = zext nneg i32 %4536 to i64
  %4538 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4537
  %4539 = getelementptr inbounds nuw i8, ptr %4538, i64 256
  %4540 = select i1 %4533, ptr %4535, ptr %4539
  %4541 = load i8, ptr %4540, align 1, !tbaa !28
  %4542 = zext i8 %4541 to i64
  %4543 = getelementptr inbounds nuw [4 x i8], ptr %4326, i64 %4542
  %4544 = getelementptr inbounds nuw i8, ptr %4543, i64 2
  %4545 = load i16, ptr %4544, align 2, !tbaa !28
  %4546 = zext i16 %4545 to i32
  %4547 = sub nsw i32 16, %4546
  %4548 = icmp sgt i32 %4531, %4547
  %4549 = load i16, ptr %4543, align 2, !tbaa !28
  %4550 = zext i16 %4549 to i32
  %4551 = shl i32 %4550, %4531
  %4552 = trunc i32 %4551 to i16
  %4553 = or i16 %4530, %4552
  store i16 %4553, ptr %3354, align 8, !tbaa !25
  br i1 %4548, label %4555, label %4586

4554:                                             ; preds = %4569
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

4555:                                             ; preds = %4529
  %4556 = load i64, ptr %3355, align 8, !tbaa !33
  %4557 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4556, i64 1), !nosanitize !32
  %4558 = extractvalue { i64, i1 } %4557, 1, !nosanitize !32
  br i1 %4558, label %4559, label %4560, !prof !34, !nosanitize !32

4559:                                             ; preds = %4555
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4560:                                             ; preds = %4555
  %4561 = extractvalue { i64, i1 } %4557, 0, !nosanitize !32
  %4562 = load ptr, ptr %3356, align 8, !tbaa !35
  %4563 = trunc i16 %4553 to i8
  store i64 %4561, ptr %3355, align 8, !tbaa !33
  %4564 = getelementptr inbounds nuw i8, ptr %4562, i64 %4556
  store i8 %4563, ptr %4564, align 1, !tbaa !28
  %4565 = load i64, ptr %3355, align 8, !tbaa !33
  %4566 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4565, i64 1), !nosanitize !32
  %4567 = extractvalue { i64, i1 } %4566, 1, !nosanitize !32
  br i1 %4567, label %4568, label %4569, !prof !34, !nosanitize !32

4568:                                             ; preds = %4579, %4560
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4569:                                             ; preds = %4560
  %4570 = extractvalue { i64, i1 } %4566, 0, !nosanitize !32
  %4571 = load ptr, ptr %3356, align 8, !tbaa !35
  %4572 = load i16, ptr %3354, align 8, !tbaa !25
  %4573 = lshr i16 %4572, 8
  %4574 = trunc nuw i16 %4573 to i8
  store i64 %4570, ptr %3355, align 8, !tbaa !33
  %4575 = getelementptr inbounds nuw i8, ptr %4571, i64 %4565
  store i8 %4574, ptr %4575, align 1, !tbaa !28
  %4576 = load i32, ptr %2533, align 4, !tbaa !26
  %4577 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4576), !nosanitize !32
  %4578 = extractvalue { i32, i1 } %4577, 1, !nosanitize !32
  br i1 %4578, label %4554, label %4579, !prof !34, !nosanitize !32

4579:                                             ; preds = %4569
  %4580 = extractvalue { i32, i1 } %4577, 0, !nosanitize !32
  %4581 = lshr i32 %4550, %4580
  %4582 = trunc nuw i32 %4581 to i16
  store i16 %4582, ptr %3354, align 8, !tbaa !25
  %4583 = add nsw i32 %4546, -16
  %4584 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4576, i32 %4583), !nosanitize !32
  %4585 = extractvalue { i32, i1 } %4584, 1, !nosanitize !32
  br i1 %4585, label %4568, label %4589, !prof !34, !nosanitize !32

4586:                                             ; preds = %4529
  %4587 = add nsw i32 %4531, %4546
  %4588 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4587, 0
  br label %4589

4589:                                             ; preds = %4586, %4579
  %4590 = phi i16 [ %4582, %4579 ], [ %4553, %4586 ]
  %4591 = phi { i32, i1 } [ %4584, %4579 ], [ %4588, %4586 ]
  %4592 = extractvalue { i32, i1 } %4591, 0
  store i32 %4592, ptr %2533, align 4, !tbaa !26
  %4593 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %4542
  %4594 = load i32, ptr %4593, align 4, !tbaa !4
  %4595 = icmp ult i8 %4541, 4
  br i1 %4595, label %4657, label %4596

4596:                                             ; preds = %4589
  %4597 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %4542
  %4598 = load i32, ptr %4597, align 4, !tbaa !4
  %4599 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %4532, i32 %4598), !nosanitize !32
  %4600 = extractvalue { i32, i1 } %4599, 0, !nosanitize !32
  %4601 = extractvalue { i32, i1 } %4599, 1, !nosanitize !32
  br i1 %4601, label %4602, label %4603, !prof !34, !nosanitize !32

4602:                                             ; preds = %4637, %4627, %4603, %4596, %4690
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

4603:                                             ; preds = %4596
  %4604 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4594), !nosanitize !32
  %4605 = extractvalue { i32, i1 } %4604, 1, !nosanitize !32
  br i1 %4605, label %4602, label %4606, !prof !34, !nosanitize !32

4606:                                             ; preds = %4603
  %4607 = extractvalue { i32, i1 } %4604, 0, !nosanitize !32
  %4608 = icmp sgt i32 %4592, %4607
  br i1 %4608, label %4609, label %4647

4609:                                             ; preds = %4606
  %4610 = and i32 %4600, 65535
  %4611 = shl i32 %4600, %4592
  %4612 = trunc i32 %4611 to i16
  %4613 = or i16 %4590, %4612
  store i16 %4613, ptr %3354, align 8, !tbaa !25
  %4614 = load i64, ptr %3355, align 8, !tbaa !33
  %4615 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4614, i64 1), !nosanitize !32
  %4616 = extractvalue { i64, i1 } %4615, 1, !nosanitize !32
  br i1 %4616, label %4617, label %4618, !prof !34, !nosanitize !32

4617:                                             ; preds = %4609
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4618:                                             ; preds = %4609
  %4619 = extractvalue { i64, i1 } %4615, 0, !nosanitize !32
  %4620 = load ptr, ptr %3356, align 8, !tbaa !35
  %4621 = trunc i16 %4613 to i8
  store i64 %4619, ptr %3355, align 8, !tbaa !33
  %4622 = getelementptr inbounds nuw i8, ptr %4620, i64 %4614
  store i8 %4621, ptr %4622, align 1, !tbaa !28
  %4623 = load i64, ptr %3355, align 8, !tbaa !33
  %4624 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4623, i64 1), !nosanitize !32
  %4625 = extractvalue { i64, i1 } %4624, 1, !nosanitize !32
  br i1 %4625, label %4626, label %4627, !prof !34, !nosanitize !32

4626:                                             ; preds = %4647, %4643, %4618
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4627:                                             ; preds = %4618
  %4628 = extractvalue { i64, i1 } %4624, 0, !nosanitize !32
  %4629 = load ptr, ptr %3356, align 8, !tbaa !35
  %4630 = load i16, ptr %3354, align 8, !tbaa !25
  %4631 = lshr i16 %4630, 8
  %4632 = trunc nuw i16 %4631 to i8
  store i64 %4628, ptr %3355, align 8, !tbaa !33
  %4633 = getelementptr inbounds nuw i8, ptr %4629, i64 %4623
  store i8 %4632, ptr %4633, align 1, !tbaa !28
  %4634 = load i32, ptr %2533, align 4, !tbaa !26
  %4635 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4634), !nosanitize !32
  %4636 = extractvalue { i32, i1 } %4635, 1, !nosanitize !32
  br i1 %4636, label %4602, label %4637, !prof !34, !nosanitize !32

4637:                                             ; preds = %4627
  %4638 = extractvalue { i32, i1 } %4635, 0, !nosanitize !32
  %4639 = lshr i32 %4610, %4638
  %4640 = trunc nuw i32 %4639 to i16
  store i16 %4640, ptr %3354, align 8, !tbaa !25
  %4641 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4594, i32 -16)
  %4642 = extractvalue { i32, i1 } %4641, 1, !nosanitize !32
  br i1 %4642, label %4602, label %4643, !prof !34, !nosanitize !32

4643:                                             ; preds = %4637
  %4644 = extractvalue { i32, i1 } %4641, 0, !nosanitize !32
  %4645 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4634, i32 %4644), !nosanitize !32
  %4646 = extractvalue { i32, i1 } %4645, 1, !nosanitize !32
  br i1 %4646, label %4626, label %4653, !prof !34, !nosanitize !32

4647:                                             ; preds = %4606
  %4648 = shl i32 %4600, %4592
  %4649 = trunc i32 %4648 to i16
  %4650 = or i16 %4590, %4649
  store i16 %4650, ptr %3354, align 8, !tbaa !25
  %4651 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4592, i32 %4594), !nosanitize !32
  %4652 = extractvalue { i32, i1 } %4651, 1, !nosanitize !32
  br i1 %4652, label %4626, label %4653, !prof !34, !nosanitize !32

4653:                                             ; preds = %4647, %4643, %4408, %4401
  %4654 = phi i16 [ %4375, %4408 ], [ %4404, %4401 ], [ %4640, %4643 ], [ %4650, %4647 ]
  %4655 = phi { i32, i1 } [ %4410, %4408 ], [ %4406, %4401 ], [ %4645, %4643 ], [ %4651, %4647 ]
  %4656 = extractvalue { i32, i1 } %4655, 0
  store i32 %4656, ptr %2533, align 4, !tbaa !26
  br label %4657

4657:                                             ; preds = %4653, %4589
  %4658 = phi i16 [ %4590, %4589 ], [ %4654, %4653 ]
  %4659 = phi i32 [ %4592, %4589 ], [ %4656, %4653 ]
  %4660 = load i32, ptr %4327, align 4, !tbaa !31
  %4661 = icmp ult i32 %4354, %4660
  br i1 %4661, label %4332, label %4662, !llvm.loop !81

4662:                                             ; preds = %4657, %4322
  %4663 = phi i16 [ %4323, %4322 ], [ %4658, %4657 ]
  %4664 = phi i32 [ %4324, %4322 ], [ %4659, %4657 ]
  %4665 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %4666 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %4667 = load i16, ptr %4666, align 2, !tbaa !28
  %4668 = zext i16 %4667 to i32
  %4669 = sub nsw i32 16, %4668
  %4670 = icmp sgt i32 %4664, %4669
  %4671 = load i16, ptr %4665, align 2, !tbaa !28
  %4672 = zext i16 %4671 to i32
  %4673 = shl i32 %4672, %4664
  %4674 = trunc i32 %4673 to i16
  %4675 = or i16 %4663, %4674
  store i16 %4675, ptr %3354, align 8, !tbaa !25
  br i1 %4670, label %4676, label %4707

4676:                                             ; preds = %4662
  %4677 = load i64, ptr %3355, align 8, !tbaa !33
  %4678 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4677, i64 1), !nosanitize !32
  %4679 = extractvalue { i64, i1 } %4678, 1, !nosanitize !32
  br i1 %4679, label %4680, label %4681, !prof !34, !nosanitize !32

4680:                                             ; preds = %4676
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4681:                                             ; preds = %4676
  %4682 = extractvalue { i64, i1 } %4678, 0, !nosanitize !32
  %4683 = load ptr, ptr %3356, align 8, !tbaa !35
  %4684 = trunc i16 %4675 to i8
  store i64 %4682, ptr %3355, align 8, !tbaa !33
  %4685 = getelementptr inbounds nuw i8, ptr %4683, i64 %4677
  store i8 %4684, ptr %4685, align 1, !tbaa !28
  %4686 = load i64, ptr %3355, align 8, !tbaa !33
  %4687 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4686, i64 1), !nosanitize !32
  %4688 = extractvalue { i64, i1 } %4687, 1, !nosanitize !32
  br i1 %4688, label %4689, label %4690, !prof !34, !nosanitize !32

4689:                                             ; preds = %4700, %4681
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4690:                                             ; preds = %4681
  %4691 = extractvalue { i64, i1 } %4687, 0, !nosanitize !32
  %4692 = load ptr, ptr %3356, align 8, !tbaa !35
  %4693 = load i16, ptr %3354, align 8, !tbaa !25
  %4694 = lshr i16 %4693, 8
  %4695 = trunc nuw i16 %4694 to i8
  store i64 %4691, ptr %3355, align 8, !tbaa !33
  %4696 = getelementptr inbounds nuw i8, ptr %4692, i64 %4686
  store i8 %4695, ptr %4696, align 1, !tbaa !28
  %4697 = load i32, ptr %2533, align 4, !tbaa !26
  %4698 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4697), !nosanitize !32
  %4699 = extractvalue { i32, i1 } %4698, 1, !nosanitize !32
  br i1 %4699, label %4602, label %4700, !prof !34, !nosanitize !32

4700:                                             ; preds = %4690
  %4701 = extractvalue { i32, i1 } %4698, 0, !nosanitize !32
  %4702 = lshr i32 %4672, %4701
  %4703 = trunc nuw i32 %4702 to i16
  store i16 %4703, ptr %3354, align 8, !tbaa !25
  %4704 = add nsw i32 %4668, -16
  %4705 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4697, i32 %4704), !nosanitize !32
  %4706 = extractvalue { i32, i1 } %4705, 1, !nosanitize !32
  br i1 %4706, label %4689, label %4710, !prof !34, !nosanitize !32

4707:                                             ; preds = %4662
  %4708 = add nsw i32 %4664, %4668
  %4709 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4708, 0
  br label %4710

4710:                                             ; preds = %4700, %4707
  %4711 = phi { i32, i1 } [ %4705, %4700 ], [ %4709, %4707 ]
  %4712 = extractvalue { i32, i1 } %4711, 0
  store i32 %4712, ptr %2533, align 4, !tbaa !26
  br label %4713

4713:                                             ; preds = %3121, %4710, %2690
  %4714 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %4715

4715:                                             ; preds = %4715, %4713
  %4716 = phi i64 [ 0, %4713 ], [ %4720, %4715 ]
  %4717 = getelementptr inbounds nuw [4 x i8], ptr %4714, i64 %4716
  store i16 0, ptr %4717, align 4, !tbaa !28
  %4718 = getelementptr inbounds nuw [4 x i8], ptr %4714, i64 %4716
  %4719 = getelementptr inbounds nuw i8, ptr %4718, i64 4
  store i16 0, ptr %4719, align 4, !tbaa !28
  %4720 = add nuw nsw i64 %4716, 2
  %4721 = icmp eq i64 %4720, 286
  br i1 %4721, label %4722, label %4715, !llvm.loop !29

4722:                                             ; preds = %4715
  %4723 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %4723, align 4, !tbaa !28
  %4724 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %4724, align 4, !tbaa !28
  %4725 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %4725, align 4, !tbaa !28
  %4726 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %4726, align 4, !tbaa !28
  %4727 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %4727, align 4, !tbaa !28
  %4728 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %4728, align 4, !tbaa !28
  %4729 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %4729, align 4, !tbaa !28
  %4730 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %4730, align 4, !tbaa !28
  %4731 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %4731, align 4, !tbaa !28
  %4732 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %4732, align 4, !tbaa !28
  %4733 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %4733, align 4, !tbaa !28
  %4734 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %4734, align 4, !tbaa !28
  %4735 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %4735, align 4, !tbaa !28
  %4736 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %4736, align 4, !tbaa !28
  %4737 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %4737, align 4, !tbaa !28
  %4738 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %4738, align 4, !tbaa !28
  %4739 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %4739, align 4, !tbaa !28
  %4740 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %4740, align 4, !tbaa !28
  %4741 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %4741, align 4, !tbaa !28
  %4742 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %4742, align 4, !tbaa !28
  %4743 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %4743, align 4, !tbaa !28
  %4744 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %4744, align 4, !tbaa !28
  %4745 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %4745, align 4, !tbaa !28
  %4746 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %4746, align 4, !tbaa !28
  %4747 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %4747, align 4, !tbaa !28
  %4748 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %4748, align 4, !tbaa !28
  %4749 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %4749, align 4, !tbaa !28
  %4750 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %4750, align 4, !tbaa !28
  %4751 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %4751, align 4, !tbaa !28
  %4752 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %4752, align 4, !tbaa !28
  %4753 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %4753, align 4, !tbaa !28
  %4754 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %4754, align 4, !tbaa !28
  %4755 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %4755, align 4, !tbaa !28
  %4756 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %4756, align 4, !tbaa !28
  %4757 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %4757, align 4, !tbaa !28
  %4758 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %4758, align 4, !tbaa !28
  %4759 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %4759, align 4, !tbaa !28
  %4760 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %4760, align 4, !tbaa !28
  %4761 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %4761, align 4, !tbaa !28
  %4762 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %4762, align 4, !tbaa !28
  %4763 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %4763, align 4, !tbaa !28
  %4764 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %4764, align 4, !tbaa !28
  %4765 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %4765, align 4, !tbaa !28
  %4766 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %4766, align 4, !tbaa !28
  %4767 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %4767, align 4, !tbaa !28
  %4768 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %4768, align 4, !tbaa !28
  %4769 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %4769, align 4, !tbaa !28
  %4770 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %4770, align 4, !tbaa !28
  %4771 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %4771, align 4, !tbaa !28
  %4772 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %4772, align 4, !tbaa !28
  %4773 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %4774 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %4774, align 4, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4773, i8 0, i64 20, i1 false)
  %4775 = icmp eq i32 %3, 0
  br i1 %4775, label %4832, label %4776

4776:                                             ; preds = %4722
  %4777 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %4778 = load i32, ptr %4777, align 4, !tbaa !26
  %4779 = icmp sgt i32 %4778, 8
  br i1 %4779, label %4780, label %4805

4780:                                             ; preds = %4776
  %4781 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4782 = load i64, ptr %4781, align 8, !tbaa !33
  %4783 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4782, i64 1), !nosanitize !32
  %4784 = extractvalue { i64, i1 } %4783, 1, !nosanitize !32
  br i1 %4784, label %4785, label %4786, !prof !34, !nosanitize !32

4785:                                             ; preds = %4780
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4786:                                             ; preds = %4780
  %4787 = extractvalue { i64, i1 } %4783, 0, !nosanitize !32
  %4788 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4789 = load ptr, ptr %4788, align 8, !tbaa !35
  %4790 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4791 = load i16, ptr %4790, align 8, !tbaa !25
  %4792 = trunc i16 %4791 to i8
  store i64 %4787, ptr %4781, align 8, !tbaa !33
  %4793 = getelementptr inbounds nuw i8, ptr %4789, i64 %4782
  store i8 %4792, ptr %4793, align 1, !tbaa !28
  %4794 = load i64, ptr %4781, align 8, !tbaa !33
  %4795 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4794, i64 1), !nosanitize !32
  %4796 = extractvalue { i64, i1 } %4795, 1, !nosanitize !32
  br i1 %4796, label %4797, label %4798, !prof !34, !nosanitize !32

4797:                                             ; preds = %4786
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4798:                                             ; preds = %4786
  %4799 = extractvalue { i64, i1 } %4795, 0, !nosanitize !32
  %4800 = load ptr, ptr %4788, align 8, !tbaa !35
  %4801 = load i16, ptr %4790, align 8, !tbaa !25
  %4802 = lshr i16 %4801, 8
  %4803 = trunc nuw i16 %4802 to i8
  store i64 %4799, ptr %4781, align 8, !tbaa !33
  %4804 = getelementptr inbounds nuw i8, ptr %4800, i64 %4794
  store i8 %4803, ptr %4804, align 1, !tbaa !28
  br label %4821

4805:                                             ; preds = %4776
  %4806 = icmp sgt i32 %4778, 0
  br i1 %4806, label %4807, label %4821

4807:                                             ; preds = %4805
  %4808 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4809 = load i64, ptr %4808, align 8, !tbaa !33
  %4810 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4809, i64 1), !nosanitize !32
  %4811 = extractvalue { i64, i1 } %4810, 1, !nosanitize !32
  br i1 %4811, label %4812, label %4813, !prof !34, !nosanitize !32

4812:                                             ; preds = %4807
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

4813:                                             ; preds = %4807
  %4814 = extractvalue { i64, i1 } %4810, 0, !nosanitize !32
  %4815 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4816 = load ptr, ptr %4815, align 8, !tbaa !35
  %4817 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4818 = load i16, ptr %4817, align 8, !tbaa !25
  %4819 = trunc i16 %4818 to i8
  store i64 %4814, ptr %4808, align 8, !tbaa !33
  %4820 = getelementptr inbounds nuw i8, ptr %4816, i64 %4809
  store i8 %4819, ptr %4820, align 1, !tbaa !28
  br label %4821

4821:                                             ; preds = %4813, %4805, %4798
  %4822 = load i32, ptr %4777, align 4, !tbaa !26
  %4823 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4822, i32 -1)
  %4824 = extractvalue { i32, i1 } %4823, 1, !nosanitize !32
  br i1 %4824, label %4825, label %4826, !prof !34, !nosanitize !32

4825:                                             ; preds = %4821
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

4826:                                             ; preds = %4821
  %4827 = extractvalue { i32, i1 } %4823, 0, !nosanitize !32
  %4828 = and i32 %4827, 7
  %4829 = add nuw nsw i32 %4828, 1
  %4830 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %4829, ptr %4830, align 8, !tbaa !27
  %4831 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %4831, align 8, !tbaa !25
  store i32 0, ptr %4777, align 4, !tbaa !26
  br label %4832

4832:                                             ; preds = %4826, %4722
  ret void
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_tr_tally(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %6 = load i32, ptr %5, align 4, !tbaa !31
  %7 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %6, i32 1), !nosanitize !32
  %8 = extractvalue { i32, i1 } %7, 1, !nosanitize !32
  br i1 %8, label %9, label %10, !prof !34, !nosanitize !32

9:                                                ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

10:                                               ; preds = %3
  %11 = extractvalue { i32, i1 } %7, 0, !nosanitize !32
  %12 = load ptr, ptr %4, align 8, !tbaa !80
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

20:                                               ; preds = %10
  %21 = extractvalue { i32, i1 } %17, 0, !nosanitize !32
  %22 = load ptr, ptr %4, align 8, !tbaa !80
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

31:                                               ; preds = %20
  %32 = extractvalue { i32, i1 } %28, 0, !nosanitize !32
  %33 = load ptr, ptr %4, align 8, !tbaa !80
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
  %46 = load i32, ptr %45, align 8, !tbaa !85
  %47 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %46, i32 1), !nosanitize !32
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !32
  br i1 %48, label %49, label %50, !prof !34, !nosanitize !32

49:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !32
  store i32 %51, ptr %45, align 8, !tbaa !85
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
  %78 = load i32, ptr %77, align 8, !tbaa !86
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nomerge noreturn nounwind }
attributes #12 = { nounwind }

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
!32 = !{}
!33 = !{!9, !13, i64 40}
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
!65 = !{!"branch_weights", i32 1, i32 127}
!66 = !{!"branch_weights", i32 127, i32 134217473}
!67 = distinct !{!67, !30}
!68 = distinct !{!68, !30}
!69 = distinct !{!69, !30}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = distinct !{!72, !30}
!73 = distinct !{!73, !71}
!74 = !{!9, !5, i64 2912}
!75 = !{!"branch_weights", i32 1, i32 1048574}
!76 = distinct !{!76, !30}
!77 = !{!9, !5, i64 2936}
!78 = distinct !{!78, !71}
!79 = !{!9, !5, i64 200}
!80 = !{!9, !12, i64 5888}
!81 = distinct !{!81, !30}
!82 = distinct !{!82, !30}
!83 = distinct !{!83, !30}
!84 = distinct !{!84, !30}
!85 = !{!9, !5, i64 5928}
!86 = !{!9, !5, i64 5904}
