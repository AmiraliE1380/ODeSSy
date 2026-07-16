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
  %8 = shl i32 %3, %6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %10 = load i16, ptr %9, align 8, !tbaa !25
  %11 = trunc i32 %8 to i16
  %12 = or i16 %10, %11
  store i16 %12, ptr %9, align 8, !tbaa !25
  br i1 %7, label %15, label %40

13:                                               ; preds = %15
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

14:                                               ; preds = %33
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

15:                                               ; preds = %4
  %16 = trunc i16 %12 to i8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load ptr, ptr %17, align 8, !tbaa !33
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i64, ptr %19, align 8, !tbaa !34
  %21 = add i64 %20, 1
  store i64 %21, ptr %19, align 8, !tbaa !34
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  store i8 %16, ptr %22, align 1, !tbaa !28
  %23 = load i16, ptr %9, align 8, !tbaa !25
  %24 = lshr i16 %23, 8
  %25 = trunc nuw i16 %24 to i8
  %26 = load ptr, ptr %17, align 8, !tbaa !33
  %27 = load i64, ptr %19, align 8, !tbaa !34
  %28 = add i64 %27, 1
  store i64 %28, ptr %19, align 8, !tbaa !34
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 %27
  store i8 %25, ptr %29, align 1, !tbaa !28
  %30 = load i32, ptr %5, align 4, !tbaa !26
  %31 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %30), !nosanitize !32
  %32 = extractvalue { i32, i1 } %31, 1, !nosanitize !32
  br i1 %32, label %13, label %33, !prof !35, !nosanitize !32

33:                                               ; preds = %15
  %34 = extractvalue { i32, i1 } %31, 0, !nosanitize !32
  %35 = and i32 %3, 65535
  %36 = lshr i32 %35, %34
  %37 = trunc nuw i32 %36 to i16
  store i16 %37, ptr %9, align 8, !tbaa !25
  %38 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %30, i32 -13), !nosanitize !32
  %39 = extractvalue { i32, i1 } %38, 1, !nosanitize !32
  br i1 %39, label %14, label %43, !prof !35, !nosanitize !32

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
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %50 = trunc i16 %44 to i8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %52 = load ptr, ptr %51, align 8, !tbaa !33
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %54 = load i64, ptr %53, align 8, !tbaa !34
  %55 = add i64 %54, 1
  store i64 %55, ptr %53, align 8, !tbaa !34
  %56 = getelementptr inbounds nuw i8, ptr %52, i64 %54
  store i8 %50, ptr %56, align 1, !tbaa !28
  %57 = load i16, ptr %49, align 8, !tbaa !25
  %58 = lshr i16 %57, 8
  %59 = trunc nuw i16 %58 to i8
  %60 = load ptr, ptr %51, align 8, !tbaa !33
  %61 = load i64, ptr %53, align 8, !tbaa !34
  %62 = add i64 %61, 1
  store i64 %62, ptr %53, align 8, !tbaa !34
  %63 = getelementptr inbounds nuw i8, ptr %60, i64 %61
  store i8 %59, ptr %63, align 1, !tbaa !28
  br label %74

64:                                               ; preds = %43
  %65 = icmp sgt i32 %46, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %64
  %67 = trunc i16 %44 to i8
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %69 = load ptr, ptr %68, align 8, !tbaa !33
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %71 = load i64, ptr %70, align 8, !tbaa !34
  %72 = add i64 %71, 1
  store i64 %72, ptr %70, align 8, !tbaa !34
  %73 = getelementptr inbounds nuw i8, ptr %69, i64 %71
  store i8 %67, ptr %73, align 1, !tbaa !28
  br label %74

74:                                               ; preds = %66, %64, %48
  %75 = load i32, ptr %5, align 4, !tbaa !26
  %76 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %75, i32 -1)
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !32
  br i1 %77, label %78, label %79, !prof !35, !nosanitize !32

78:                                               ; preds = %74
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

79:                                               ; preds = %74
  %80 = extractvalue { i32, i1 } %76, 0, !nosanitize !32
  %81 = and i32 %80, 7
  %82 = add nuw nsw i32 %81, 1
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %82, ptr %83, align 8, !tbaa !27
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %84, align 8, !tbaa !25
  store i32 0, ptr %5, align 4, !tbaa !26
  %85 = trunc i64 %2 to i8
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %87 = load ptr, ptr %86, align 8, !tbaa !33
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %89 = load i64, ptr %88, align 8, !tbaa !34
  %90 = add i64 %89, 1
  store i64 %90, ptr %88, align 8, !tbaa !34
  %91 = getelementptr inbounds nuw i8, ptr %87, i64 %89
  store i8 %85, ptr %91, align 1, !tbaa !28
  %92 = lshr i64 %2, 8
  %93 = trunc i64 %92 to i8
  %94 = load ptr, ptr %86, align 8, !tbaa !33
  %95 = load i64, ptr %88, align 8, !tbaa !34
  %96 = add i64 %95, 1
  store i64 %96, ptr %88, align 8, !tbaa !34
  %97 = getelementptr inbounds nuw i8, ptr %94, i64 %95
  store i8 %93, ptr %97, align 1, !tbaa !28
  %98 = trunc i64 %2 to i32
  %99 = xor i32 %98, 65535
  %100 = trunc i32 %99 to i8
  %101 = load ptr, ptr %86, align 8, !tbaa !33
  %102 = load i64, ptr %88, align 8, !tbaa !34
  %103 = add i64 %102, 1
  store i64 %103, ptr %88, align 8, !tbaa !34
  %104 = getelementptr inbounds nuw i8, ptr %101, i64 %102
  store i8 %100, ptr %104, align 1, !tbaa !28
  %105 = lshr i32 %99, 8
  %106 = trunc i32 %105 to i8
  %107 = load ptr, ptr %86, align 8, !tbaa !33
  %108 = load i64, ptr %88, align 8, !tbaa !34
  %109 = add i64 %108, 1
  store i64 %109, ptr %88, align 8, !tbaa !34
  %110 = getelementptr inbounds nuw i8, ptr %107, i64 %108
  store i8 %106, ptr %110, align 1, !tbaa !28
  %111 = icmp eq i64 %2, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %79
  %113 = load ptr, ptr %86, align 8, !tbaa !33
  %114 = load i64, ptr %88, align 8, !tbaa !34
  %115 = getelementptr inbounds nuw i8, ptr %113, i64 %114
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %115, ptr align 1 %1, i64 %2, i1 false)
  br label %116

116:                                              ; preds = %112, %79
  %117 = load i64, ptr %88, align 8, !tbaa !34
  %118 = add i64 %117, %2
  store i64 %118, ptr %88, align 8, !tbaa !34
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
  %10 = load ptr, ptr %9, align 8, !tbaa !33
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %12 = load i64, ptr %11, align 8, !tbaa !34
  %13 = add i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !34
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 %12
  store i8 %8, ptr %14, align 1, !tbaa !28
  %15 = load i16, ptr %6, align 8, !tbaa !25
  %16 = lshr i16 %15, 8
  %17 = trunc nuw i16 %16 to i8
  %18 = load ptr, ptr %9, align 8, !tbaa !33
  %19 = load i64, ptr %11, align 8, !tbaa !34
  %20 = add i64 %19, 1
  store i64 %20, ptr %11, align 8, !tbaa !34
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
  %29 = load ptr, ptr %28, align 8, !tbaa !33
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load i64, ptr %30, align 8, !tbaa !34
  %32 = add i64 %31, 1
  store i64 %32, ptr %30, align 8, !tbaa !34
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 %31
  store i8 %27, ptr %33, align 1, !tbaa !28
  %34 = load i16, ptr %25, align 8, !tbaa !25
  %35 = lshr i16 %34, 8
  store i16 %35, ptr %25, align 8, !tbaa !25
  %36 = load i32, ptr %2, align 4, !tbaa !26
  %37 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %36, i32 -8)
  %38 = extractvalue { i32, i1 } %37, 1, !nosanitize !32
  br i1 %38, label %39, label %40, !prof !35, !nosanitize !32

39:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

40:                                               ; preds = %24
  %41 = extractvalue { i32, i1 } %37, 0, !nosanitize !32
  br label %42

42:                                               ; preds = %40, %5
  %43 = phi i32 [ %41, %40 ], [ 0, %5 ]
  store i32 %43, ptr %2, align 4, !tbaa !26
  br label %44

44:                                               ; preds = %22, %42
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

11:                                               ; preds = %1
  %12 = trunc i16 %9 to i8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = load i64, ptr %15, align 8, !tbaa !34
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8, !tbaa !34
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 %16
  store i8 %12, ptr %18, align 1, !tbaa !28
  %19 = load i16, ptr %6, align 8, !tbaa !25
  %20 = lshr i16 %19, 8
  %21 = trunc nuw i16 %20 to i8
  %22 = load ptr, ptr %13, align 8, !tbaa !33
  %23 = load i64, ptr %15, align 8, !tbaa !34
  %24 = add i64 %23, 1
  store i64 %24, ptr %15, align 8, !tbaa !34
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  store i8 %21, ptr %25, align 1, !tbaa !28
  %26 = load i32, ptr %2, align 4, !tbaa !26
  %27 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %26), !nosanitize !32
  %28 = extractvalue { i32, i1 } %27, 1, !nosanitize !32
  br i1 %28, label %10, label %29, !prof !35, !nosanitize !32

29:                                               ; preds = %11
  %30 = extractvalue { i32, i1 } %27, 0, !nosanitize !32
  %31 = lshr i32 2, %30
  %32 = trunc nuw nsw i32 %31 to i16
  store i16 %32, ptr %6, align 8, !tbaa !25
  %33 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 -13), !nosanitize !32
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !32
  br i1 %34, label %35, label %39, !prof !35, !nosanitize !32

35:                                               ; preds = %63, %29
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

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
  br i1 %43, label %45, label %68

45:                                               ; preds = %39
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %48 = load ptr, ptr %47, align 8, !tbaa !33
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %50 = load i64, ptr %49, align 8, !tbaa !34
  %51 = add i64 %50, 1
  store i64 %51, ptr %49, align 8, !tbaa !34
  %52 = getelementptr inbounds nuw i8, ptr %48, i64 %50
  store i8 %44, ptr %52, align 1, !tbaa !28
  %53 = load i16, ptr %46, align 8, !tbaa !25
  %54 = lshr i16 %53, 8
  %55 = trunc nuw i16 %54 to i8
  %56 = load ptr, ptr %47, align 8, !tbaa !33
  %57 = load i64, ptr %49, align 8, !tbaa !34
  %58 = add i64 %57, 1
  store i64 %58, ptr %49, align 8, !tbaa !34
  %59 = getelementptr inbounds nuw i8, ptr %56, i64 %57
  store i8 %55, ptr %59, align 1, !tbaa !28
  %60 = load i32, ptr %2, align 4, !tbaa !26
  %61 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %60), !nosanitize !32
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !32
  br i1 %62, label %10, label %63, !prof !35, !nosanitize !32

63:                                               ; preds = %45
  store i16 0, ptr %46, align 8, !tbaa !25
  %64 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %60, i32 -9), !nosanitize !32
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !32
  br i1 %65, label %35, label %66, !prof !35, !nosanitize !32

66:                                               ; preds = %63
  %67 = extractvalue { i32, i1 } %64, 0, !nosanitize !32
  br label %70

68:                                               ; preds = %39
  %69 = add nsw i32 %42, 7
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i8 [ %44, %68 ], [ 0, %66 ]
  %72 = phi i32 [ %69, %68 ], [ %67, %66 ]
  store i32 %72, ptr %2, align 4, !tbaa !26
  %73 = icmp eq i32 %72, 16
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %77 = load ptr, ptr %76, align 8, !tbaa !33
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %79 = load i64, ptr %78, align 8, !tbaa !34
  %80 = add i64 %79, 1
  store i64 %80, ptr %78, align 8, !tbaa !34
  %81 = getelementptr inbounds nuw i8, ptr %77, i64 %79
  store i8 %71, ptr %81, align 1, !tbaa !28
  %82 = load i16, ptr %75, align 8, !tbaa !25
  %83 = lshr i16 %82, 8
  %84 = trunc nuw i16 %83 to i8
  %85 = load ptr, ptr %76, align 8, !tbaa !33
  %86 = load i64, ptr %78, align 8, !tbaa !34
  %87 = add i64 %86, 1
  store i64 %87, ptr %78, align 8, !tbaa !34
  %88 = getelementptr inbounds nuw i8, ptr %85, i64 %86
  store i8 %84, ptr %88, align 1, !tbaa !28
  store i16 0, ptr %75, align 8, !tbaa !25
  br label %107

89:                                               ; preds = %70
  %90 = icmp sgt i32 %72, 7
  br i1 %90, label %91, label %109

91:                                               ; preds = %89
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %94 = load ptr, ptr %93, align 8, !tbaa !33
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %96 = load i64, ptr %95, align 8, !tbaa !34
  %97 = add i64 %96, 1
  store i64 %97, ptr %95, align 8, !tbaa !34
  %98 = getelementptr inbounds nuw i8, ptr %94, i64 %96
  store i8 %71, ptr %98, align 1, !tbaa !28
  %99 = load i16, ptr %92, align 8, !tbaa !25
  %100 = lshr i16 %99, 8
  store i16 %100, ptr %92, align 8, !tbaa !25
  %101 = load i32, ptr %2, align 4, !tbaa !26
  %102 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %101, i32 -8)
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !32
  br i1 %103, label %104, label %105, !prof !35, !nosanitize !32

104:                                              ; preds = %91
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

105:                                              ; preds = %91
  %106 = extractvalue { i32, i1 } %102, 0, !nosanitize !32
  br label %107

107:                                              ; preds = %105, %74
  %108 = phi i32 [ %106, %105 ], [ 0, %74 ]
  store i32 %108, ptr %2, align 4, !tbaa !26
  br label %109

109:                                              ; preds = %89, %107
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
  br i1 %10, label %11, label %2352

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
  br i1 %162, label %163, label %219

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
  br i1 %180, label %181, label %182, !prof !35, !nosanitize !32

181:                                              ; preds = %177, %391
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
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

194:                                              ; preds = %216, %163
  %195 = phi i32 [ %165, %163 ], [ %217, %216 ]
  %196 = phi i32 [ %164, %163 ], [ %199, %216 ]
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
  %208 = add i64 %207, -1
  store i64 %208, ptr %168, align 8, !tbaa !51
  br i1 %169, label %216, label %209

209:                                              ; preds = %194
  %210 = getelementptr inbounds [4 x i8], ptr %150, i64 %204
  %211 = getelementptr inbounds nuw i8, ptr %210, i64 2
  %212 = load i16, ptr %211, align 2, !tbaa !28
  %213 = zext i16 %212 to i64
  %214 = load i64, ptr %170, align 8, !tbaa !52
  %215 = sub i64 %214, %213
  store i64 %215, ptr %170, align 8, !tbaa !52
  br label %216

216:                                              ; preds = %209, %194
  %217 = load i32, ptr %153, align 4, !tbaa !48
  %218 = icmp slt i32 %217, 2
  br i1 %218, label %194, label %219, !llvm.loop !53

219:                                              ; preds = %216, %160
  %220 = phi i32 [ %191, %160 ], [ %199, %216 ]
  %221 = phi i32 [ %161, %160 ], [ %217, %216 ]
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 %220, ptr %222, align 8, !tbaa !54
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %225 = lshr i32 %221, 1
  %226 = zext nneg i32 %225 to i64
  br label %231

227:                                              ; preds = %297
  %228 = load i32, ptr %153, align 4, !tbaa !48
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %230 = sext i32 %152 to i64
  br label %304

231:                                              ; preds = %297, %219
  %232 = phi i64 [ %226, %219 ], [ %301, %297 ]
  %233 = getelementptr inbounds nuw [4 x i8], ptr %223, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, ptr %224, i64 %235
  %237 = load i32, ptr %153, align 4, !tbaa !48
  %238 = trunc i64 %232 to i32
  %239 = shl i32 %238, 1
  %240 = icmp sgt i32 %239, %237
  br i1 %240, label %297, label %241

241:                                              ; preds = %231
  %242 = getelementptr inbounds [4 x i8], ptr %147, i64 %235
  br label %243

243:                                              ; preds = %291, %241
  %244 = phi i32 [ %237, %241 ], [ %295, %291 ]
  %245 = phi i32 [ %239, %241 ], [ %294, %291 ]
  %246 = phi i32 [ %238, %241 ], [ %276, %291 ]
  %247 = icmp slt i32 %245, %244
  br i1 %247, label %250, label %248

248:                                              ; preds = %243
  %249 = sext i32 %245 to i64
  br label %274

250:                                              ; preds = %243
  %251 = or disjoint i32 %245, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [4 x i8], ptr %223, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [4 x i8], ptr %147, i64 %255
  %257 = load i16, ptr %256, align 2, !tbaa !28
  %258 = sext i32 %245 to i64
  %259 = getelementptr inbounds [4 x i8], ptr %223, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i8], ptr %147, i64 %261
  %263 = load i16, ptr %262, align 2, !tbaa !28
  %264 = icmp ult i16 %257, %263
  br i1 %264, label %273, label %265

265:                                              ; preds = %250
  %266 = icmp eq i16 %257, %263
  br i1 %266, label %267, label %274

267:                                              ; preds = %265
  %268 = getelementptr inbounds i8, ptr %224, i64 %255
  %269 = load i8, ptr %268, align 1, !tbaa !28
  %270 = getelementptr inbounds i8, ptr %224, i64 %261
  %271 = load i8, ptr %270, align 1, !tbaa !28
  %272 = icmp ugt i8 %269, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %267, %250
  br label %274

274:                                              ; preds = %273, %267, %265, %248
  %275 = phi i64 [ %249, %248 ], [ %252, %273 ], [ %258, %267 ], [ %258, %265 ]
  %276 = phi i32 [ %245, %248 ], [ %251, %273 ], [ %245, %267 ], [ %245, %265 ]
  %277 = load i16, ptr %242, align 2, !tbaa !28
  %278 = getelementptr inbounds [4 x i8], ptr %223, i64 %275
  %279 = load i32, ptr %278, align 4, !tbaa !4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [4 x i8], ptr %147, i64 %280
  %282 = load i16, ptr %281, align 2, !tbaa !28
  %283 = icmp ult i16 %277, %282
  br i1 %283, label %297, label %284

284:                                              ; preds = %274
  %285 = icmp eq i16 %277, %282
  br i1 %285, label %286, label %291

286:                                              ; preds = %284
  %287 = load i8, ptr %236, align 1, !tbaa !28
  %288 = getelementptr inbounds i8, ptr %224, i64 %280
  %289 = load i8, ptr %288, align 1, !tbaa !28
  %290 = icmp ugt i8 %287, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %286, %284
  %292 = sext i32 %246 to i64
  %293 = getelementptr inbounds [4 x i8], ptr %223, i64 %292
  store i32 %279, ptr %293, align 4, !tbaa !4
  %294 = shl i32 %276, 1
  %295 = load i32, ptr %153, align 4, !tbaa !48
  %296 = icmp sgt i32 %294, %295
  br i1 %296, label %297, label %243, !llvm.loop !55

297:                                              ; preds = %291, %286, %274, %231
  %298 = phi i32 [ %238, %231 ], [ %246, %274 ], [ %246, %286 ], [ %276, %291 ]
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x i8], ptr %223, i64 %299
  store i32 %234, ptr %300, align 4, !tbaa !4
  %301 = add nsw i64 %232, -1
  %302 = icmp sgt i64 %232, 1
  br i1 %302, label %231, label %227, !llvm.loop !56

303:                                              ; preds = %384, %377, %304, %481
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

304:                                              ; preds = %476, %227
  %305 = phi i32 [ %228, %227 ], [ %479, %476 ]
  %306 = phi i64 [ %230, %227 ], [ %416, %476 ]
  %307 = load i32, ptr %229, align 4, !tbaa !4
  %308 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %305, i32 -1)
  %309 = extractvalue { i32, i1 } %308, 1, !nosanitize !32
  br i1 %309, label %303, label %310, !prof !35, !nosanitize !32

310:                                              ; preds = %304
  %311 = extractvalue { i32, i1 } %308, 0, !nosanitize !32
  store i32 %311, ptr %153, align 4, !tbaa !48
  %312 = sext i32 %305 to i64
  %313 = getelementptr inbounds [4 x i8], ptr %223, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !4
  store i32 %314, ptr %229, align 4, !tbaa !4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, ptr %224, i64 %315
  %317 = icmp slt i32 %311, 2
  br i1 %317, label %377, label %318

318:                                              ; preds = %310
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
  %330 = getelementptr inbounds [4 x i8], ptr %223, i64 %329
  %331 = load i32, ptr %330, align 4, !tbaa !4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [4 x i8], ptr %147, i64 %332
  %334 = load i16, ptr %333, align 2, !tbaa !28
  %335 = sext i32 %322 to i64
  %336 = getelementptr inbounds [4 x i8], ptr %223, i64 %335
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
  %345 = getelementptr inbounds i8, ptr %224, i64 %332
  %346 = load i8, ptr %345, align 1, !tbaa !28
  %347 = getelementptr inbounds i8, ptr %224, i64 %338
  %348 = load i8, ptr %347, align 1, !tbaa !28
  %349 = icmp ugt i8 %346, %348
  br i1 %349, label %351, label %350

350:                                              ; preds = %344, %327
  br label %351

351:                                              ; preds = %350, %344, %342, %325
  %352 = phi i64 [ %326, %325 ], [ %329, %350 ], [ %335, %344 ], [ %335, %342 ]
  %353 = phi i32 [ %322, %325 ], [ %328, %350 ], [ %322, %344 ], [ %322, %342 ]
  %354 = load i16, ptr %319, align 2, !tbaa !28
  %355 = getelementptr inbounds [4 x i8], ptr %223, i64 %352
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
  %365 = getelementptr inbounds i8, ptr %224, i64 %357
  %366 = load i8, ptr %365, align 1, !tbaa !28
  %367 = icmp ugt i8 %364, %366
  br i1 %367, label %368, label %374

368:                                              ; preds = %363, %361
  %369 = sext i32 %323 to i64
  %370 = getelementptr inbounds [4 x i8], ptr %223, i64 %369
  store i32 %356, ptr %370, align 4, !tbaa !4
  %371 = shl i32 %353, 1
  %372 = load i32, ptr %153, align 4, !tbaa !48
  %373 = icmp sgt i32 %371, %372
  br i1 %373, label %374, label %320, !llvm.loop !55

374:                                              ; preds = %368, %363, %351
  %375 = phi i32 [ %323, %351 ], [ %323, %363 ], [ %353, %368 ]
  %376 = sext i32 %375 to i64
  br label %377

377:                                              ; preds = %374, %310
  %378 = phi i64 [ 1, %310 ], [ %376, %374 ]
  %379 = getelementptr inbounds [4 x i8], ptr %223, i64 %378
  store i32 %314, ptr %379, align 4, !tbaa !4
  %380 = load i32, ptr %229, align 4, !tbaa !4
  %381 = load i32, ptr %154, align 8, !tbaa !49
  %382 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %381, i32 -1)
  %383 = extractvalue { i32, i1 } %382, 1, !nosanitize !32
  br i1 %383, label %303, label %384, !prof !35, !nosanitize !32

384:                                              ; preds = %377
  %385 = extractvalue { i32, i1 } %382, 0, !nosanitize !32
  store i32 %385, ptr %154, align 8, !tbaa !49
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [4 x i8], ptr %223, i64 %386
  store i32 %307, ptr %387, align 4, !tbaa !4
  %388 = load i32, ptr %154, align 8, !tbaa !49
  %389 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %388, i32 -1)
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !32
  br i1 %390, label %303, label %391, !prof !35, !nosanitize !32

391:                                              ; preds = %384
  %392 = extractvalue { i32, i1 } %389, 0, !nosanitize !32
  store i32 %392, ptr %154, align 8, !tbaa !49
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [4 x i8], ptr %223, i64 %393
  store i32 %380, ptr %394, align 4, !tbaa !4
  %395 = sext i32 %307 to i64
  %396 = getelementptr inbounds [4 x i8], ptr %147, i64 %395
  %397 = load i16, ptr %396, align 2, !tbaa !28
  %398 = sext i32 %380 to i64
  %399 = getelementptr inbounds [4 x i8], ptr %147, i64 %398
  %400 = load i16, ptr %399, align 2, !tbaa !28
  %401 = add i16 %400, %397
  %402 = getelementptr inbounds [4 x i8], ptr %147, i64 %306
  store i16 %401, ptr %402, align 2, !tbaa !28
  %403 = getelementptr inbounds i8, ptr %224, i64 %395
  %404 = load i8, ptr %403, align 1, !tbaa !28
  %405 = getelementptr inbounds i8, ptr %224, i64 %398
  %406 = load i8, ptr %405, align 1, !tbaa !28
  %407 = tail call i8 @llvm.umax.i8(i8 %404, i8 %406)
  %408 = add i8 %407, 1
  %409 = getelementptr inbounds i8, ptr %224, i64 %306
  store i8 %408, ptr %409, align 1, !tbaa !28
  %410 = trunc nsw i64 %306 to i32
  %411 = trunc i64 %306 to i16
  %412 = getelementptr inbounds nuw i8, ptr %399, i64 2
  store i16 %411, ptr %412, align 2, !tbaa !28
  %413 = getelementptr inbounds nuw i8, ptr %396, i64 2
  store i16 %411, ptr %413, align 2, !tbaa !28
  %414 = icmp eq i64 %306, 2147483647
  br i1 %414, label %181, label %415, !prof !35, !nosanitize !32

415:                                              ; preds = %391
  %416 = add nsw i64 %306, 1
  store i32 %410, ptr %229, align 4, !tbaa !4
  %417 = load i32, ptr %153, align 4, !tbaa !48
  %418 = icmp slt i32 %417, 2
  br i1 %418, label %476, label %419

419:                                              ; preds = %415, %467
  %420 = phi i32 [ %471, %467 ], [ %417, %415 ]
  %421 = phi i32 [ %470, %467 ], [ 2, %415 ]
  %422 = phi i32 [ %452, %467 ], [ 1, %415 ]
  %423 = icmp slt i32 %421, %420
  br i1 %423, label %426, label %424

424:                                              ; preds = %419
  %425 = sext i32 %421 to i64
  br label %450

426:                                              ; preds = %419
  %427 = or disjoint i32 %421, 1
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [4 x i8], ptr %223, i64 %428
  %430 = load i32, ptr %429, align 4, !tbaa !4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [4 x i8], ptr %147, i64 %431
  %433 = load i16, ptr %432, align 2, !tbaa !28
  %434 = sext i32 %421 to i64
  %435 = getelementptr inbounds [4 x i8], ptr %223, i64 %434
  %436 = load i32, ptr %435, align 4, !tbaa !4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [4 x i8], ptr %147, i64 %437
  %439 = load i16, ptr %438, align 2, !tbaa !28
  %440 = icmp ult i16 %433, %439
  br i1 %440, label %449, label %441

441:                                              ; preds = %426
  %442 = icmp eq i16 %433, %439
  br i1 %442, label %443, label %450

443:                                              ; preds = %441
  %444 = getelementptr inbounds i8, ptr %224, i64 %431
  %445 = load i8, ptr %444, align 1, !tbaa !28
  %446 = getelementptr inbounds i8, ptr %224, i64 %437
  %447 = load i8, ptr %446, align 1, !tbaa !28
  %448 = icmp ugt i8 %445, %447
  br i1 %448, label %450, label %449

449:                                              ; preds = %443, %426
  br label %450

450:                                              ; preds = %449, %443, %441, %424
  %451 = phi i64 [ %425, %424 ], [ %428, %449 ], [ %434, %443 ], [ %434, %441 ]
  %452 = phi i32 [ %421, %424 ], [ %427, %449 ], [ %421, %443 ], [ %421, %441 ]
  %453 = load i16, ptr %402, align 2, !tbaa !28
  %454 = getelementptr inbounds [4 x i8], ptr %223, i64 %451
  %455 = load i32, ptr %454, align 4, !tbaa !4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [4 x i8], ptr %147, i64 %456
  %458 = load i16, ptr %457, align 2, !tbaa !28
  %459 = icmp ult i16 %453, %458
  br i1 %459, label %473, label %460

460:                                              ; preds = %450
  %461 = icmp eq i16 %453, %458
  br i1 %461, label %462, label %467

462:                                              ; preds = %460
  %463 = load i8, ptr %409, align 1, !tbaa !28
  %464 = getelementptr inbounds i8, ptr %224, i64 %456
  %465 = load i8, ptr %464, align 1, !tbaa !28
  %466 = icmp ugt i8 %463, %465
  br i1 %466, label %467, label %473

467:                                              ; preds = %462, %460
  %468 = sext i32 %422 to i64
  %469 = getelementptr inbounds [4 x i8], ptr %223, i64 %468
  store i32 %455, ptr %469, align 4, !tbaa !4
  %470 = shl i32 %452, 1
  %471 = load i32, ptr %153, align 4, !tbaa !48
  %472 = icmp sgt i32 %470, %471
  br i1 %472, label %473, label %419, !llvm.loop !55

473:                                              ; preds = %467, %462, %450
  %474 = phi i32 [ %422, %450 ], [ %422, %462 ], [ %452, %467 ]
  %475 = sext i32 %474 to i64
  br label %476

476:                                              ; preds = %473, %415
  %477 = phi i64 [ 1, %415 ], [ %475, %473 ]
  %478 = getelementptr inbounds [4 x i8], ptr %223, i64 %477
  store i32 %410, ptr %478, align 4, !tbaa !4
  %479 = load i32, ptr %153, align 4, !tbaa !48
  %480 = icmp sgt i32 %479, 1
  br i1 %480, label %304, label %481, !llvm.loop !57

481:                                              ; preds = %476
  %482 = load i32, ptr %154, align 8, !tbaa !49
  %483 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %482, i32 -1)
  %484 = extractvalue { i32, i1 } %483, 1, !nosanitize !32
  br i1 %484, label %303, label %485, !prof !35, !nosanitize !32

485:                                              ; preds = %481
  %486 = extractvalue { i32, i1 } %483, 0, !nosanitize !32
  %487 = load i32, ptr %229, align 4, !tbaa !4
  store i32 %486, ptr %154, align 8, !tbaa !49
  %488 = sext i32 %486 to i64
  %489 = getelementptr inbounds [4 x i8], ptr %223, i64 %488
  store i32 %487, ptr %489, align 4, !tbaa !4
  %490 = load ptr, ptr %146, align 8, !tbaa !42
  %491 = load i32, ptr %222, align 8, !tbaa !54
  %492 = load ptr, ptr %148, align 8, !tbaa !43
  %493 = load ptr, ptr %492, align 8, !tbaa !44
  %494 = getelementptr inbounds nuw i8, ptr %492, i64 8
  %495 = load ptr, ptr %494, align 8, !tbaa !58
  %496 = getelementptr inbounds nuw i8, ptr %492, i64 16
  %497 = load i32, ptr %496, align 8, !tbaa !59
  %498 = getelementptr inbounds nuw i8, ptr %492, i64 24
  %499 = load i32, ptr %498, align 8, !tbaa !60
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %500, i8 0, i64 32, i1 false), !tbaa !61
  %501 = load i32, ptr %154, align 8, !tbaa !49
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [4 x i8], ptr %223, i64 %502
  %504 = load i32, ptr %503, align 4, !tbaa !4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [4 x i8], ptr %490, i64 %505
  %507 = getelementptr inbounds nuw i8, ptr %506, i64 2
  store i16 0, ptr %507, align 2, !tbaa !28
  %508 = load i32, ptr %154, align 8, !tbaa !49
  %509 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %508, i32 1), !nosanitize !32
  %510 = extractvalue { i32, i1 } %509, 1, !nosanitize !32
  br i1 %510, label %511, label %512, !prof !35, !nosanitize !32

511:                                              ; preds = %573, %561, %536, %609, %485
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

512:                                              ; preds = %485
  %513 = extractvalue { i32, i1 } %509, 0
  %514 = icmp slt i32 %513, 573
  br i1 %514, label %515, label %678

515:                                              ; preds = %512
  %516 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %517 = icmp eq ptr %493, null
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %519 = sext i32 %513 to i64
  br label %520

520:                                              ; preds = %586, %515
  %521 = phi i64 [ %519, %515 ], [ %587, %586 ]
  %522 = phi i32 [ 0, %515 ], [ %543, %586 ]
  %523 = getelementptr inbounds [4 x i8], ptr %223, i64 %521
  %524 = load i32, ptr %523, align 4, !tbaa !4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [4 x i8], ptr %490, i64 %525
  %527 = getelementptr inbounds nuw i8, ptr %526, i64 2
  %528 = load i16, ptr %527, align 2, !tbaa !28
  %529 = zext i16 %528 to i64
  %530 = getelementptr inbounds nuw [4 x i8], ptr %490, i64 %529
  %531 = getelementptr inbounds nuw i8, ptr %530, i64 2
  %532 = load i16, ptr %531, align 2, !tbaa !28
  %533 = zext i16 %532 to i32
  %534 = add nuw nsw i32 %533, 1
  %535 = icmp sgt i32 %499, %533
  br i1 %535, label %541, label %536

536:                                              ; preds = %520
  %537 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %522, i32 1), !nosanitize !32
  %538 = extractvalue { i32, i1 } %537, 1, !nosanitize !32
  br i1 %538, label %511, label %539, !prof !35, !nosanitize !32

539:                                              ; preds = %536
  %540 = extractvalue { i32, i1 } %537, 0, !nosanitize !32
  br label %541

541:                                              ; preds = %539, %520
  %542 = phi i32 [ %499, %539 ], [ %534, %520 ]
  %543 = phi i32 [ %540, %539 ], [ %522, %520 ]
  %544 = trunc i32 %542 to i16
  store i16 %544, ptr %527, align 2, !tbaa !28
  %545 = icmp sgt i32 %524, %491
  br i1 %545, label %586, label %546

546:                                              ; preds = %541
  %547 = sext i32 %542 to i64
  %548 = getelementptr inbounds [2 x i8], ptr %500, i64 %547
  %549 = load i16, ptr %548, align 2, !tbaa !61
  %550 = add i16 %549, 1
  store i16 %550, ptr %548, align 2, !tbaa !61
  %551 = icmp slt i32 %524, %497
  br i1 %551, label %561, label %552

552:                                              ; preds = %546
  %553 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %524, i32 %497), !nosanitize !32
  %554 = extractvalue { i32, i1 } %553, 1, !nosanitize !32
  br i1 %554, label %555, label %556, !prof !35, !nosanitize !32

555:                                              ; preds = %552, %614, %606, %638, %642, %647, %592
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

556:                                              ; preds = %552
  %557 = extractvalue { i32, i1 } %553, 0, !nosanitize !32
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds [4 x i8], ptr %495, i64 %558
  %560 = load i32, ptr %559, align 4, !tbaa !4
  br label %561

561:                                              ; preds = %556, %546
  %562 = phi i32 [ %560, %556 ], [ 0, %546 ]
  %563 = load i16, ptr %526, align 2, !tbaa !28
  %564 = zext i16 %563 to i64
  %565 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %542, i32 %562), !nosanitize !32
  %566 = extractvalue { i32, i1 } %565, 1, !nosanitize !32
  br i1 %566, label %511, label %567, !prof !35, !nosanitize !32

567:                                              ; preds = %561
  %568 = extractvalue { i32, i1 } %565, 0, !nosanitize !32
  %569 = zext i32 %568 to i64
  %570 = mul nuw nsw i64 %569, %564
  %571 = load i64, ptr %516, align 8, !tbaa !51
  %572 = add i64 %571, %570
  store i64 %572, ptr %516, align 8, !tbaa !51
  br i1 %517, label %586, label %573

573:                                              ; preds = %567
  %574 = getelementptr inbounds [4 x i8], ptr %493, i64 %525
  %575 = getelementptr inbounds nuw i8, ptr %574, i64 2
  %576 = load i16, ptr %575, align 2, !tbaa !28
  %577 = zext i16 %576 to i32
  %578 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %577, i32 %562), !nosanitize !32
  %579 = extractvalue { i32, i1 } %578, 1, !nosanitize !32
  br i1 %579, label %511, label %580, !prof !35, !nosanitize !32

580:                                              ; preds = %573
  %581 = extractvalue { i32, i1 } %578, 0, !nosanitize !32
  %582 = zext i32 %581 to i64
  %583 = mul nuw nsw i64 %582, %564
  %584 = load i64, ptr %518, align 8, !tbaa !52
  %585 = add i64 %584, %583
  store i64 %585, ptr %518, align 8, !tbaa !52
  br label %586

586:                                              ; preds = %580, %567, %541
  %587 = add nsw i64 %521, 1
  %588 = and i64 %587, 4294967295
  %589 = icmp eq i64 %588, 573
  br i1 %589, label %590, label %520, !llvm.loop !62

590:                                              ; preds = %586
  %591 = icmp eq i32 %543, 0
  br i1 %591, label %678, label %592

592:                                              ; preds = %590
  %593 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %499, i32 -1)
  %594 = extractvalue { i32, i1 } %593, 1, !nosanitize !32
  %595 = sext i32 %499 to i64
  %596 = getelementptr inbounds [2 x i8], ptr %500, i64 %595
  br i1 %594, label %555, label %597, !prof !35, !nosanitize !32

597:                                              ; preds = %592, %624
  %598 = phi i32 [ %625, %624 ], [ %543, %592 ]
  br label %599

599:                                              ; preds = %606, %597
  %600 = phi { i32, i1 } [ %607, %606 ], [ %593, %597 ]
  %601 = extractvalue { i32, i1 } %600, 0
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds [2 x i8], ptr %500, i64 %602
  %604 = load i16, ptr %603, align 2, !tbaa !61
  %605 = icmp eq i16 %604, 0
  br i1 %605, label %606, label %609

606:                                              ; preds = %599
  %607 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %601, i32 -1)
  %608 = extractvalue { i32, i1 } %607, 1, !nosanitize !32
  br i1 %608, label %555, label %599, !prof !35, !llvm.loop !63, !nosanitize !32

609:                                              ; preds = %599
  %610 = getelementptr inbounds [2 x i8], ptr %500, i64 %602
  %611 = add i16 %604, -1
  store i16 %611, ptr %610, align 2, !tbaa !61
  %612 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %601, i32 1), !nosanitize !32
  %613 = extractvalue { i32, i1 } %612, 1, !nosanitize !32
  br i1 %613, label %511, label %614, !prof !35, !nosanitize !32

614:                                              ; preds = %609
  %615 = extractvalue { i32, i1 } %612, 0, !nosanitize !32
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds [2 x i8], ptr %500, i64 %616
  %618 = load i16, ptr %617, align 2, !tbaa !61
  %619 = add i16 %618, 2
  store i16 %619, ptr %617, align 2, !tbaa !61
  %620 = load i16, ptr %596, align 2, !tbaa !61
  %621 = add i16 %620, -1
  store i16 %621, ptr %596, align 2, !tbaa !61
  %622 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %598, i32 -2)
  %623 = extractvalue { i32, i1 } %622, 1, !nosanitize !32
  br i1 %623, label %555, label %624, !prof !35, !nosanitize !32

624:                                              ; preds = %614
  %625 = extractvalue { i32, i1 } %622, 0, !nosanitize !32
  %626 = icmp sgt i32 %625, 0
  br i1 %626, label %597, label %627, !llvm.loop !64

627:                                              ; preds = %624
  %628 = icmp eq i32 %499, 0
  br i1 %628, label %678, label %629

629:                                              ; preds = %627, %674
  %630 = phi i64 [ %675, %674 ], [ %595, %627 ]
  %631 = phi i32 [ %639, %674 ], [ 573, %627 ]
  %632 = getelementptr inbounds [2 x i8], ptr %500, i64 %630
  %633 = load i16, ptr %632, align 2, !tbaa !61
  %634 = icmp eq i16 %633, 0
  br i1 %634, label %638, label %635

635:                                              ; preds = %629
  %636 = zext i16 %633 to i32
  %637 = trunc i64 %630 to i16
  br label %642

638:                                              ; preds = %671, %629
  %639 = phi i32 [ %631, %629 ], [ %652, %671 ]
  %640 = and i64 %630, 4294967295
  %641 = icmp eq i64 %640, 2147483648
  br i1 %641, label %555, label %674, !prof !35, !nosanitize !32

642:                                              ; preds = %671, %635
  %643 = phi i32 [ %631, %635 ], [ %652, %671 ]
  %644 = phi i32 [ %636, %635 ], [ %672, %671 ]
  %645 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %643, i32 -1)
  %646 = extractvalue { i32, i1 } %645, 1, !nosanitize !32
  br i1 %646, label %555, label %650, !prof !65, !nosanitize !32

647:                                              ; preds = %650
  %648 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %652, i32 -1)
  %649 = extractvalue { i32, i1 } %648, 1, !nosanitize !32
  br i1 %649, label %555, label %650, !prof !66, !llvm.loop !67, !nosanitize !32

650:                                              ; preds = %642, %647
  %651 = phi { i32, i1 } [ %648, %647 ], [ %645, %642 ]
  %652 = extractvalue { i32, i1 } %651, 0, !nosanitize !32
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [4 x i8], ptr %223, i64 %653
  %655 = load i32, ptr %654, align 4, !tbaa !4
  %656 = icmp sgt i32 %655, %491
  br i1 %656, label %647, label %657, !llvm.loop !67

657:                                              ; preds = %650
  %658 = sext i32 %655 to i64
  %659 = getelementptr inbounds [4 x i8], ptr %490, i64 %658
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 2
  %661 = load i16, ptr %660, align 2, !tbaa !28
  %662 = zext i16 %661 to i64
  %663 = icmp eq i64 %630, %662
  br i1 %663, label %671, label %664

664:                                              ; preds = %657
  %665 = sub nsw i64 %630, %662
  %666 = load i16, ptr %659, align 2, !tbaa !28
  %667 = zext i16 %666 to i64
  %668 = mul nsw i64 %665, %667
  %669 = load i64, ptr %516, align 8, !tbaa !51
  %670 = add i64 %668, %669
  store i64 %670, ptr %516, align 8, !tbaa !51
  store i16 %637, ptr %660, align 2, !tbaa !28
  br label %671

671:                                              ; preds = %664, %657
  %672 = add nsw i32 %644, -1
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %638, label %642, !llvm.loop !67

674:                                              ; preds = %638
  %675 = add nsw i64 %630, -1
  %676 = and i64 %675, 4294967295
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %678, label %629, !llvm.loop !68

678:                                              ; preds = %674, %627, %590, %512
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %679 = load i16, ptr %500, align 2, !tbaa !61
  %680 = shl i16 %679, 1
  %681 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %680, ptr %681, align 2, !tbaa !61
  %682 = getelementptr i8, ptr %0, i64 2978
  %683 = load i16, ptr %682, align 2, !tbaa !61
  %684 = add i16 %683, %680
  %685 = shl i16 %684, 1
  %686 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %685, ptr %686, align 4, !tbaa !61
  %687 = getelementptr i8, ptr %0, i64 2980
  %688 = load i16, ptr %687, align 2, !tbaa !61
  %689 = add i16 %688, %685
  %690 = shl i16 %689, 1
  %691 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %690, ptr %691, align 2, !tbaa !61
  %692 = getelementptr i8, ptr %0, i64 2982
  %693 = load i16, ptr %692, align 2, !tbaa !61
  %694 = add i16 %693, %690
  %695 = shl i16 %694, 1
  %696 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %695, ptr %696, align 8, !tbaa !61
  %697 = getelementptr i8, ptr %0, i64 2984
  %698 = load i16, ptr %697, align 2, !tbaa !61
  %699 = add i16 %698, %695
  %700 = shl i16 %699, 1
  %701 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %700, ptr %701, align 2, !tbaa !61
  %702 = getelementptr i8, ptr %0, i64 2986
  %703 = load i16, ptr %702, align 2, !tbaa !61
  %704 = add i16 %703, %700
  %705 = shl i16 %704, 1
  %706 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %705, ptr %706, align 4, !tbaa !61
  %707 = getelementptr i8, ptr %0, i64 2988
  %708 = load i16, ptr %707, align 2, !tbaa !61
  %709 = add i16 %708, %705
  %710 = shl i16 %709, 1
  %711 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %710, ptr %711, align 2, !tbaa !61
  %712 = getelementptr i8, ptr %0, i64 2990
  %713 = load i16, ptr %712, align 2, !tbaa !61
  %714 = add i16 %713, %710
  %715 = shl i16 %714, 1
  %716 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %715, ptr %716, align 16, !tbaa !61
  %717 = getelementptr i8, ptr %0, i64 2992
  %718 = load i16, ptr %717, align 2, !tbaa !61
  %719 = add i16 %718, %715
  %720 = shl i16 %719, 1
  %721 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %720, ptr %721, align 2, !tbaa !61
  %722 = getelementptr i8, ptr %0, i64 2994
  %723 = load i16, ptr %722, align 2, !tbaa !61
  %724 = add i16 %723, %720
  %725 = shl i16 %724, 1
  %726 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %725, ptr %726, align 4, !tbaa !61
  %727 = getelementptr i8, ptr %0, i64 2996
  %728 = load i16, ptr %727, align 2, !tbaa !61
  %729 = add i16 %728, %725
  %730 = shl i16 %729, 1
  %731 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %730, ptr %731, align 2, !tbaa !61
  %732 = getelementptr i8, ptr %0, i64 2998
  %733 = load i16, ptr %732, align 2, !tbaa !61
  %734 = add i16 %733, %730
  %735 = shl i16 %734, 1
  %736 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %735, ptr %736, align 8, !tbaa !61
  %737 = getelementptr i8, ptr %0, i64 3000
  %738 = load i16, ptr %737, align 2, !tbaa !61
  %739 = add i16 %738, %735
  %740 = shl i16 %739, 1
  %741 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %740, ptr %741, align 2, !tbaa !61
  %742 = getelementptr i8, ptr %0, i64 3002
  %743 = load i16, ptr %742, align 2, !tbaa !61
  %744 = add i16 %743, %740
  %745 = shl i16 %744, 1
  %746 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %745, ptr %746, align 4, !tbaa !61
  %747 = getelementptr i8, ptr %0, i64 3004
  %748 = load i16, ptr %747, align 2, !tbaa !61
  %749 = add i16 %748, %745
  %750 = shl i16 %749, 1
  %751 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %750, ptr %751, align 2, !tbaa !61
  %752 = icmp slt i32 %220, 0
  br i1 %752, label %814, label %754

753:                                              ; preds = %808
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

754:                                              ; preds = %678, %810
  %755 = phi i64 [ %811, %810 ], [ 0, %678 ]
  %756 = getelementptr inbounds nuw [4 x i8], ptr %147, i64 %755
  %757 = getelementptr inbounds nuw i8, ptr %756, i64 2
  %758 = load i16, ptr %757, align 2, !tbaa !28
  %759 = icmp eq i16 %758, 0
  br i1 %759, label %808, label %760

760:                                              ; preds = %754
  %761 = zext i16 %758 to i32
  %762 = zext i16 %758 to i64
  %763 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %762
  %764 = load i16, ptr %763, align 2, !tbaa !61
  %765 = add i16 %764, 1
  store i16 %765, ptr %763, align 2, !tbaa !61
  %766 = and i32 %761, 3
  %767 = icmp ult i16 %758, 4
  br i1 %767, label %792, label %768

768:                                              ; preds = %760
  %769 = and i32 %761, 65532
  br label %770

770:                                              ; preds = %770, %768
  %771 = phi i16 [ %764, %768 ], [ %787, %770 ]
  %772 = phi i16 [ 0, %768 ], [ %786, %770 ]
  %773 = phi i32 [ 0, %768 ], [ %788, %770 ]
  %774 = and i16 %771, 1
  %775 = or disjoint i16 %772, %774
  %776 = shl i16 %775, 2
  %777 = and i16 %771, 2
  %778 = or disjoint i16 %776, %777
  %779 = lshr i16 %771, 2
  %780 = and i16 %779, 1
  %781 = or disjoint i16 %778, %780
  %782 = shl i16 %781, 1
  %783 = lshr i16 %771, 3
  %784 = and i16 %783, 1
  %785 = or disjoint i16 %782, %784
  %786 = shl i16 %785, 1
  %787 = lshr i16 %771, 4
  %788 = add i32 %773, 4
  %789 = icmp eq i32 %788, %769
  br i1 %789, label %790, label %770, !llvm.loop !69

790:                                              ; preds = %770
  %791 = icmp eq i32 %766, 0
  br i1 %791, label %806, label %792

792:                                              ; preds = %790, %760
  %793 = phi i16 [ %764, %760 ], [ %787, %790 ]
  %794 = phi i16 [ 0, %760 ], [ %786, %790 ]
  %795 = icmp ne i32 %766, 0
  tail call void @llvm.assume(i1 %795)
  br label %796

796:                                              ; preds = %796, %792
  %797 = phi i16 [ %793, %792 ], [ %803, %796 ]
  %798 = phi i16 [ %794, %792 ], [ %802, %796 ]
  %799 = phi i32 [ 0, %792 ], [ %804, %796 ]
  %800 = and i16 %797, 1
  %801 = or disjoint i16 %798, %800
  %802 = shl i16 %801, 1
  %803 = lshr i16 %797, 1
  %804 = add i32 %799, 1
  %805 = icmp eq i32 %804, %766
  br i1 %805, label %806, label %796, !llvm.loop !70

806:                                              ; preds = %796, %790
  %807 = phi i16 [ %785, %790 ], [ %801, %796 ]
  store i16 %807, ptr %756, align 2, !tbaa !28
  br label %808

808:                                              ; preds = %806, %754
  %809 = icmp eq i64 %755, 2147483647
  br i1 %809, label %753, label %810, !prof !35, !nosanitize !32

810:                                              ; preds = %808
  %811 = add nuw nsw i64 %755, 1
  %812 = trunc i64 %811 to i32
  %813 = icmp slt i32 %220, %812
  br i1 %813, label %814, label %754, !llvm.loop !72

814:                                              ; preds = %810, %678
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %815 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %816 = load ptr, ptr %815, align 8, !tbaa !42
  %817 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %818 = load ptr, ptr %817, align 8, !tbaa !43
  %819 = load ptr, ptr %818, align 8, !tbaa !44
  %820 = getelementptr inbounds nuw i8, ptr %818, i64 20
  %821 = load i32, ptr %820, align 4, !tbaa !47
  store i32 0, ptr %153, align 4, !tbaa !48
  store i32 573, ptr %154, align 8, !tbaa !49
  %822 = icmp sgt i32 %821, 0
  br i1 %822, label %823, label %828

823:                                              ; preds = %814
  %824 = zext nneg i32 %821 to i64
  br label %834

825:                                              ; preds = %853
  %826 = load i32, ptr %153, align 4, !tbaa !48
  %827 = icmp slt i32 %826, 2
  br i1 %827, label %828, label %882

828:                                              ; preds = %825, %814
  %829 = phi i32 [ %854, %825 ], [ -1, %814 ]
  %830 = phi i32 [ %826, %825 ], [ 0, %814 ]
  %831 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %832 = icmp eq ptr %819, null
  %833 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %857

834:                                              ; preds = %853, %823
  %835 = phi i64 [ 0, %823 ], [ %855, %853 ]
  %836 = phi i32 [ -1, %823 ], [ %854, %853 ]
  %837 = getelementptr inbounds nuw [4 x i8], ptr %816, i64 %835
  %838 = load i16, ptr %837, align 2, !tbaa !28
  %839 = icmp eq i16 %838, 0
  br i1 %839, label %851, label %840

840:                                              ; preds = %834
  %841 = load i32, ptr %153, align 4, !tbaa !48
  %842 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %841, i32 1), !nosanitize !32
  %843 = extractvalue { i32, i1 } %842, 1, !nosanitize !32
  br i1 %843, label %844, label %845, !prof !35, !nosanitize !32

844:                                              ; preds = %840, %1051
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

845:                                              ; preds = %840
  %846 = extractvalue { i32, i1 } %842, 0, !nosanitize !32
  store i32 %846, ptr %153, align 4, !tbaa !48
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds [4 x i8], ptr %223, i64 %847
  %849 = trunc nuw nsw i64 %835 to i32
  store i32 %849, ptr %848, align 4, !tbaa !4
  %850 = getelementptr inbounds nuw i8, ptr %224, i64 %835
  store i8 0, ptr %850, align 1, !tbaa !28
  br label %853

851:                                              ; preds = %834
  %852 = getelementptr inbounds nuw i8, ptr %837, i64 2
  store i16 0, ptr %852, align 2, !tbaa !28
  br label %853

853:                                              ; preds = %851, %845
  %854 = phi i32 [ %849, %845 ], [ %836, %851 ]
  %855 = add nuw nsw i64 %835, 1
  %856 = icmp eq i64 %855, %824
  br i1 %856, label %825, label %834, !llvm.loop !50

857:                                              ; preds = %879, %828
  %858 = phi i32 [ %830, %828 ], [ %880, %879 ]
  %859 = phi i32 [ %829, %828 ], [ %862, %879 ]
  %860 = icmp slt i32 %859, 2
  %861 = add i32 %859, 1
  %862 = select i1 %860, i32 %861, i32 %859
  %863 = add nsw i32 %858, 1
  %864 = select i1 %860, i32 %861, i32 0
  store i32 %863, ptr %153, align 4, !tbaa !48
  %865 = sext i32 %863 to i64
  %866 = getelementptr inbounds [4 x i8], ptr %223, i64 %865
  store i32 %864, ptr %866, align 4, !tbaa !4
  %867 = sext i32 %864 to i64
  %868 = getelementptr inbounds [4 x i8], ptr %816, i64 %867
  store i16 1, ptr %868, align 2, !tbaa !28
  %869 = getelementptr inbounds i8, ptr %224, i64 %867
  store i8 0, ptr %869, align 1, !tbaa !28
  %870 = load i64, ptr %831, align 8, !tbaa !51
  %871 = add i64 %870, -1
  store i64 %871, ptr %831, align 8, !tbaa !51
  br i1 %832, label %879, label %872

872:                                              ; preds = %857
  %873 = getelementptr inbounds [4 x i8], ptr %819, i64 %867
  %874 = getelementptr inbounds nuw i8, ptr %873, i64 2
  %875 = load i16, ptr %874, align 2, !tbaa !28
  %876 = zext i16 %875 to i64
  %877 = load i64, ptr %833, align 8, !tbaa !52
  %878 = sub i64 %877, %876
  store i64 %878, ptr %833, align 8, !tbaa !52
  br label %879

879:                                              ; preds = %872, %857
  %880 = load i32, ptr %153, align 4, !tbaa !48
  %881 = icmp slt i32 %880, 2
  br i1 %881, label %857, label %882, !llvm.loop !53

882:                                              ; preds = %879, %825
  %883 = phi i32 [ %854, %825 ], [ %862, %879 ]
  %884 = phi i32 [ %826, %825 ], [ %880, %879 ]
  %885 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %883, ptr %885, align 8, !tbaa !54
  %886 = lshr i32 %884, 1
  %887 = zext nneg i32 %886 to i64
  br label %891

888:                                              ; preds = %957
  %889 = load i32, ptr %153, align 4, !tbaa !48
  %890 = sext i32 %821 to i64
  br label %964

891:                                              ; preds = %957, %882
  %892 = phi i64 [ %887, %882 ], [ %961, %957 ]
  %893 = getelementptr inbounds nuw [4 x i8], ptr %223, i64 %892
  %894 = load i32, ptr %893, align 4, !tbaa !4
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds i8, ptr %224, i64 %895
  %897 = load i32, ptr %153, align 4, !tbaa !48
  %898 = trunc i64 %892 to i32
  %899 = shl i32 %898, 1
  %900 = icmp sgt i32 %899, %897
  br i1 %900, label %957, label %901

901:                                              ; preds = %891
  %902 = getelementptr inbounds [4 x i8], ptr %816, i64 %895
  br label %903

903:                                              ; preds = %951, %901
  %904 = phi i32 [ %897, %901 ], [ %955, %951 ]
  %905 = phi i32 [ %899, %901 ], [ %954, %951 ]
  %906 = phi i32 [ %898, %901 ], [ %936, %951 ]
  %907 = icmp slt i32 %905, %904
  br i1 %907, label %910, label %908

908:                                              ; preds = %903
  %909 = sext i32 %905 to i64
  br label %934

910:                                              ; preds = %903
  %911 = or disjoint i32 %905, 1
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds [4 x i8], ptr %223, i64 %912
  %914 = load i32, ptr %913, align 4, !tbaa !4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds [4 x i8], ptr %816, i64 %915
  %917 = load i16, ptr %916, align 2, !tbaa !28
  %918 = sext i32 %905 to i64
  %919 = getelementptr inbounds [4 x i8], ptr %223, i64 %918
  %920 = load i32, ptr %919, align 4, !tbaa !4
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds [4 x i8], ptr %816, i64 %921
  %923 = load i16, ptr %922, align 2, !tbaa !28
  %924 = icmp ult i16 %917, %923
  br i1 %924, label %933, label %925

925:                                              ; preds = %910
  %926 = icmp eq i16 %917, %923
  br i1 %926, label %927, label %934

927:                                              ; preds = %925
  %928 = getelementptr inbounds i8, ptr %224, i64 %915
  %929 = load i8, ptr %928, align 1, !tbaa !28
  %930 = getelementptr inbounds i8, ptr %224, i64 %921
  %931 = load i8, ptr %930, align 1, !tbaa !28
  %932 = icmp ugt i8 %929, %931
  br i1 %932, label %934, label %933

933:                                              ; preds = %927, %910
  br label %934

934:                                              ; preds = %933, %927, %925, %908
  %935 = phi i64 [ %909, %908 ], [ %912, %933 ], [ %918, %927 ], [ %918, %925 ]
  %936 = phi i32 [ %905, %908 ], [ %911, %933 ], [ %905, %927 ], [ %905, %925 ]
  %937 = load i16, ptr %902, align 2, !tbaa !28
  %938 = getelementptr inbounds [4 x i8], ptr %223, i64 %935
  %939 = load i32, ptr %938, align 4, !tbaa !4
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds [4 x i8], ptr %816, i64 %940
  %942 = load i16, ptr %941, align 2, !tbaa !28
  %943 = icmp ult i16 %937, %942
  br i1 %943, label %957, label %944

944:                                              ; preds = %934
  %945 = icmp eq i16 %937, %942
  br i1 %945, label %946, label %951

946:                                              ; preds = %944
  %947 = load i8, ptr %896, align 1, !tbaa !28
  %948 = getelementptr inbounds i8, ptr %224, i64 %940
  %949 = load i8, ptr %948, align 1, !tbaa !28
  %950 = icmp ugt i8 %947, %949
  br i1 %950, label %951, label %957

951:                                              ; preds = %946, %944
  %952 = sext i32 %906 to i64
  %953 = getelementptr inbounds [4 x i8], ptr %223, i64 %952
  store i32 %939, ptr %953, align 4, !tbaa !4
  %954 = shl i32 %936, 1
  %955 = load i32, ptr %153, align 4, !tbaa !48
  %956 = icmp sgt i32 %954, %955
  br i1 %956, label %957, label %903, !llvm.loop !55

957:                                              ; preds = %951, %946, %934, %891
  %958 = phi i32 [ %898, %891 ], [ %906, %934 ], [ %906, %946 ], [ %936, %951 ]
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds [4 x i8], ptr %223, i64 %959
  store i32 %894, ptr %960, align 4, !tbaa !4
  %961 = add nsw i64 %892, -1
  %962 = icmp sgt i64 %892, 1
  br i1 %962, label %891, label %888, !llvm.loop !56

963:                                              ; preds = %1044, %1037, %964, %1141
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

964:                                              ; preds = %1136, %888
  %965 = phi i32 [ %889, %888 ], [ %1139, %1136 ]
  %966 = phi i64 [ %890, %888 ], [ %1076, %1136 ]
  %967 = load i32, ptr %229, align 4, !tbaa !4
  %968 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %965, i32 -1)
  %969 = extractvalue { i32, i1 } %968, 1, !nosanitize !32
  br i1 %969, label %963, label %970, !prof !35, !nosanitize !32

970:                                              ; preds = %964
  %971 = extractvalue { i32, i1 } %968, 0, !nosanitize !32
  store i32 %971, ptr %153, align 4, !tbaa !48
  %972 = sext i32 %965 to i64
  %973 = getelementptr inbounds [4 x i8], ptr %223, i64 %972
  %974 = load i32, ptr %973, align 4, !tbaa !4
  store i32 %974, ptr %229, align 4, !tbaa !4
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds i8, ptr %224, i64 %975
  %977 = icmp slt i32 %971, 2
  br i1 %977, label %1037, label %978

978:                                              ; preds = %970
  %979 = getelementptr inbounds [4 x i8], ptr %816, i64 %975
  br label %980

980:                                              ; preds = %1028, %978
  %981 = phi i32 [ %971, %978 ], [ %1032, %1028 ]
  %982 = phi i32 [ 2, %978 ], [ %1031, %1028 ]
  %983 = phi i32 [ 1, %978 ], [ %1013, %1028 ]
  %984 = icmp slt i32 %982, %981
  br i1 %984, label %987, label %985

985:                                              ; preds = %980
  %986 = sext i32 %982 to i64
  br label %1011

987:                                              ; preds = %980
  %988 = or disjoint i32 %982, 1
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds [4 x i8], ptr %223, i64 %989
  %991 = load i32, ptr %990, align 4, !tbaa !4
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds [4 x i8], ptr %816, i64 %992
  %994 = load i16, ptr %993, align 2, !tbaa !28
  %995 = sext i32 %982 to i64
  %996 = getelementptr inbounds [4 x i8], ptr %223, i64 %995
  %997 = load i32, ptr %996, align 4, !tbaa !4
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds [4 x i8], ptr %816, i64 %998
  %1000 = load i16, ptr %999, align 2, !tbaa !28
  %1001 = icmp ult i16 %994, %1000
  br i1 %1001, label %1010, label %1002

1002:                                             ; preds = %987
  %1003 = icmp eq i16 %994, %1000
  br i1 %1003, label %1004, label %1011

1004:                                             ; preds = %1002
  %1005 = getelementptr inbounds i8, ptr %224, i64 %992
  %1006 = load i8, ptr %1005, align 1, !tbaa !28
  %1007 = getelementptr inbounds i8, ptr %224, i64 %998
  %1008 = load i8, ptr %1007, align 1, !tbaa !28
  %1009 = icmp ugt i8 %1006, %1008
  br i1 %1009, label %1011, label %1010

1010:                                             ; preds = %1004, %987
  br label %1011

1011:                                             ; preds = %1010, %1004, %1002, %985
  %1012 = phi i64 [ %986, %985 ], [ %989, %1010 ], [ %995, %1004 ], [ %995, %1002 ]
  %1013 = phi i32 [ %982, %985 ], [ %988, %1010 ], [ %982, %1004 ], [ %982, %1002 ]
  %1014 = load i16, ptr %979, align 2, !tbaa !28
  %1015 = getelementptr inbounds [4 x i8], ptr %223, i64 %1012
  %1016 = load i32, ptr %1015, align 4, !tbaa !4
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds [4 x i8], ptr %816, i64 %1017
  %1019 = load i16, ptr %1018, align 2, !tbaa !28
  %1020 = icmp ult i16 %1014, %1019
  br i1 %1020, label %1034, label %1021

1021:                                             ; preds = %1011
  %1022 = icmp eq i16 %1014, %1019
  br i1 %1022, label %1023, label %1028

1023:                                             ; preds = %1021
  %1024 = load i8, ptr %976, align 1, !tbaa !28
  %1025 = getelementptr inbounds i8, ptr %224, i64 %1017
  %1026 = load i8, ptr %1025, align 1, !tbaa !28
  %1027 = icmp ugt i8 %1024, %1026
  br i1 %1027, label %1028, label %1034

1028:                                             ; preds = %1023, %1021
  %1029 = sext i32 %983 to i64
  %1030 = getelementptr inbounds [4 x i8], ptr %223, i64 %1029
  store i32 %1016, ptr %1030, align 4, !tbaa !4
  %1031 = shl i32 %1013, 1
  %1032 = load i32, ptr %153, align 4, !tbaa !48
  %1033 = icmp sgt i32 %1031, %1032
  br i1 %1033, label %1034, label %980, !llvm.loop !55

1034:                                             ; preds = %1028, %1023, %1011
  %1035 = phi i32 [ %983, %1011 ], [ %983, %1023 ], [ %1013, %1028 ]
  %1036 = sext i32 %1035 to i64
  br label %1037

1037:                                             ; preds = %1034, %970
  %1038 = phi i64 [ 1, %970 ], [ %1036, %1034 ]
  %1039 = getelementptr inbounds [4 x i8], ptr %223, i64 %1038
  store i32 %974, ptr %1039, align 4, !tbaa !4
  %1040 = load i32, ptr %229, align 4, !tbaa !4
  %1041 = load i32, ptr %154, align 8, !tbaa !49
  %1042 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1041, i32 -1)
  %1043 = extractvalue { i32, i1 } %1042, 1, !nosanitize !32
  br i1 %1043, label %963, label %1044, !prof !35, !nosanitize !32

1044:                                             ; preds = %1037
  %1045 = extractvalue { i32, i1 } %1042, 0, !nosanitize !32
  store i32 %1045, ptr %154, align 8, !tbaa !49
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds [4 x i8], ptr %223, i64 %1046
  store i32 %967, ptr %1047, align 4, !tbaa !4
  %1048 = load i32, ptr %154, align 8, !tbaa !49
  %1049 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1048, i32 -1)
  %1050 = extractvalue { i32, i1 } %1049, 1, !nosanitize !32
  br i1 %1050, label %963, label %1051, !prof !35, !nosanitize !32

1051:                                             ; preds = %1044
  %1052 = extractvalue { i32, i1 } %1049, 0, !nosanitize !32
  store i32 %1052, ptr %154, align 8, !tbaa !49
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds [4 x i8], ptr %223, i64 %1053
  store i32 %1040, ptr %1054, align 4, !tbaa !4
  %1055 = sext i32 %967 to i64
  %1056 = getelementptr inbounds [4 x i8], ptr %816, i64 %1055
  %1057 = load i16, ptr %1056, align 2, !tbaa !28
  %1058 = sext i32 %1040 to i64
  %1059 = getelementptr inbounds [4 x i8], ptr %816, i64 %1058
  %1060 = load i16, ptr %1059, align 2, !tbaa !28
  %1061 = add i16 %1060, %1057
  %1062 = getelementptr inbounds [4 x i8], ptr %816, i64 %966
  store i16 %1061, ptr %1062, align 2, !tbaa !28
  %1063 = getelementptr inbounds i8, ptr %224, i64 %1055
  %1064 = load i8, ptr %1063, align 1, !tbaa !28
  %1065 = getelementptr inbounds i8, ptr %224, i64 %1058
  %1066 = load i8, ptr %1065, align 1, !tbaa !28
  %1067 = tail call i8 @llvm.umax.i8(i8 %1064, i8 %1066)
  %1068 = add i8 %1067, 1
  %1069 = getelementptr inbounds i8, ptr %224, i64 %966
  store i8 %1068, ptr %1069, align 1, !tbaa !28
  %1070 = trunc nsw i64 %966 to i32
  %1071 = trunc i64 %966 to i16
  %1072 = getelementptr inbounds nuw i8, ptr %1059, i64 2
  store i16 %1071, ptr %1072, align 2, !tbaa !28
  %1073 = getelementptr inbounds nuw i8, ptr %1056, i64 2
  store i16 %1071, ptr %1073, align 2, !tbaa !28
  %1074 = icmp eq i64 %966, 2147483647
  br i1 %1074, label %844, label %1075, !prof !35, !nosanitize !32

1075:                                             ; preds = %1051
  %1076 = add nsw i64 %966, 1
  store i32 %1070, ptr %229, align 4, !tbaa !4
  %1077 = load i32, ptr %153, align 4, !tbaa !48
  %1078 = icmp slt i32 %1077, 2
  br i1 %1078, label %1136, label %1079

1079:                                             ; preds = %1075, %1127
  %1080 = phi i32 [ %1131, %1127 ], [ %1077, %1075 ]
  %1081 = phi i32 [ %1130, %1127 ], [ 2, %1075 ]
  %1082 = phi i32 [ %1112, %1127 ], [ 1, %1075 ]
  %1083 = icmp slt i32 %1081, %1080
  br i1 %1083, label %1086, label %1084

1084:                                             ; preds = %1079
  %1085 = sext i32 %1081 to i64
  br label %1110

1086:                                             ; preds = %1079
  %1087 = or disjoint i32 %1081, 1
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds [4 x i8], ptr %223, i64 %1088
  %1090 = load i32, ptr %1089, align 4, !tbaa !4
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr inbounds [4 x i8], ptr %816, i64 %1091
  %1093 = load i16, ptr %1092, align 2, !tbaa !28
  %1094 = sext i32 %1081 to i64
  %1095 = getelementptr inbounds [4 x i8], ptr %223, i64 %1094
  %1096 = load i32, ptr %1095, align 4, !tbaa !4
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds [4 x i8], ptr %816, i64 %1097
  %1099 = load i16, ptr %1098, align 2, !tbaa !28
  %1100 = icmp ult i16 %1093, %1099
  br i1 %1100, label %1109, label %1101

1101:                                             ; preds = %1086
  %1102 = icmp eq i16 %1093, %1099
  br i1 %1102, label %1103, label %1110

1103:                                             ; preds = %1101
  %1104 = getelementptr inbounds i8, ptr %224, i64 %1091
  %1105 = load i8, ptr %1104, align 1, !tbaa !28
  %1106 = getelementptr inbounds i8, ptr %224, i64 %1097
  %1107 = load i8, ptr %1106, align 1, !tbaa !28
  %1108 = icmp ugt i8 %1105, %1107
  br i1 %1108, label %1110, label %1109

1109:                                             ; preds = %1103, %1086
  br label %1110

1110:                                             ; preds = %1109, %1103, %1101, %1084
  %1111 = phi i64 [ %1085, %1084 ], [ %1088, %1109 ], [ %1094, %1103 ], [ %1094, %1101 ]
  %1112 = phi i32 [ %1081, %1084 ], [ %1087, %1109 ], [ %1081, %1103 ], [ %1081, %1101 ]
  %1113 = load i16, ptr %1062, align 2, !tbaa !28
  %1114 = getelementptr inbounds [4 x i8], ptr %223, i64 %1111
  %1115 = load i32, ptr %1114, align 4, !tbaa !4
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds [4 x i8], ptr %816, i64 %1116
  %1118 = load i16, ptr %1117, align 2, !tbaa !28
  %1119 = icmp ult i16 %1113, %1118
  br i1 %1119, label %1133, label %1120

1120:                                             ; preds = %1110
  %1121 = icmp eq i16 %1113, %1118
  br i1 %1121, label %1122, label %1127

1122:                                             ; preds = %1120
  %1123 = load i8, ptr %1069, align 1, !tbaa !28
  %1124 = getelementptr inbounds i8, ptr %224, i64 %1116
  %1125 = load i8, ptr %1124, align 1, !tbaa !28
  %1126 = icmp ugt i8 %1123, %1125
  br i1 %1126, label %1127, label %1133

1127:                                             ; preds = %1122, %1120
  %1128 = sext i32 %1082 to i64
  %1129 = getelementptr inbounds [4 x i8], ptr %223, i64 %1128
  store i32 %1115, ptr %1129, align 4, !tbaa !4
  %1130 = shl i32 %1112, 1
  %1131 = load i32, ptr %153, align 4, !tbaa !48
  %1132 = icmp sgt i32 %1130, %1131
  br i1 %1132, label %1133, label %1079, !llvm.loop !55

1133:                                             ; preds = %1127, %1122, %1110
  %1134 = phi i32 [ %1082, %1110 ], [ %1082, %1122 ], [ %1112, %1127 ]
  %1135 = sext i32 %1134 to i64
  br label %1136

1136:                                             ; preds = %1133, %1075
  %1137 = phi i64 [ 1, %1075 ], [ %1135, %1133 ]
  %1138 = getelementptr inbounds [4 x i8], ptr %223, i64 %1137
  store i32 %1070, ptr %1138, align 4, !tbaa !4
  %1139 = load i32, ptr %153, align 4, !tbaa !48
  %1140 = icmp sgt i32 %1139, 1
  br i1 %1140, label %964, label %1141, !llvm.loop !57

1141:                                             ; preds = %1136
  %1142 = load i32, ptr %154, align 8, !tbaa !49
  %1143 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1142, i32 -1)
  %1144 = extractvalue { i32, i1 } %1143, 1, !nosanitize !32
  br i1 %1144, label %963, label %1145, !prof !35, !nosanitize !32

1145:                                             ; preds = %1141
  %1146 = extractvalue { i32, i1 } %1143, 0, !nosanitize !32
  %1147 = load i32, ptr %229, align 4, !tbaa !4
  store i32 %1146, ptr %154, align 8, !tbaa !49
  %1148 = sext i32 %1146 to i64
  %1149 = getelementptr inbounds [4 x i8], ptr %223, i64 %1148
  store i32 %1147, ptr %1149, align 4, !tbaa !4
  %1150 = load ptr, ptr %815, align 8, !tbaa !42
  %1151 = load i32, ptr %885, align 8, !tbaa !54
  %1152 = load ptr, ptr %817, align 8, !tbaa !43
  %1153 = load ptr, ptr %1152, align 8, !tbaa !44
  %1154 = getelementptr inbounds nuw i8, ptr %1152, i64 8
  %1155 = load ptr, ptr %1154, align 8, !tbaa !58
  %1156 = getelementptr inbounds nuw i8, ptr %1152, i64 16
  %1157 = load i32, ptr %1156, align 8, !tbaa !59
  %1158 = getelementptr inbounds nuw i8, ptr %1152, i64 24
  %1159 = load i32, ptr %1158, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %500, i8 0, i64 32, i1 false), !tbaa !61
  %1160 = load i32, ptr %154, align 8, !tbaa !49
  %1161 = sext i32 %1160 to i64
  %1162 = getelementptr inbounds [4 x i8], ptr %223, i64 %1161
  %1163 = load i32, ptr %1162, align 4, !tbaa !4
  %1164 = sext i32 %1163 to i64
  %1165 = getelementptr inbounds [4 x i8], ptr %1150, i64 %1164
  %1166 = getelementptr inbounds nuw i8, ptr %1165, i64 2
  store i16 0, ptr %1166, align 2, !tbaa !28
  %1167 = load i32, ptr %154, align 8, !tbaa !49
  %1168 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1167, i32 1), !nosanitize !32
  %1169 = extractvalue { i32, i1 } %1168, 1, !nosanitize !32
  br i1 %1169, label %1170, label %1171, !prof !35, !nosanitize !32

1170:                                             ; preds = %1232, %1220, %1195, %1268, %1145
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

1171:                                             ; preds = %1145
  %1172 = extractvalue { i32, i1 } %1168, 0
  %1173 = icmp slt i32 %1172, 573
  br i1 %1173, label %1174, label %1337

1174:                                             ; preds = %1171
  %1175 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1176 = icmp eq ptr %1153, null
  %1177 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1178 = sext i32 %1172 to i64
  br label %1179

1179:                                             ; preds = %1245, %1174
  %1180 = phi i64 [ %1178, %1174 ], [ %1246, %1245 ]
  %1181 = phi i32 [ 0, %1174 ], [ %1202, %1245 ]
  %1182 = getelementptr inbounds [4 x i8], ptr %223, i64 %1180
  %1183 = load i32, ptr %1182, align 4, !tbaa !4
  %1184 = sext i32 %1183 to i64
  %1185 = getelementptr inbounds [4 x i8], ptr %1150, i64 %1184
  %1186 = getelementptr inbounds nuw i8, ptr %1185, i64 2
  %1187 = load i16, ptr %1186, align 2, !tbaa !28
  %1188 = zext i16 %1187 to i64
  %1189 = getelementptr inbounds nuw [4 x i8], ptr %1150, i64 %1188
  %1190 = getelementptr inbounds nuw i8, ptr %1189, i64 2
  %1191 = load i16, ptr %1190, align 2, !tbaa !28
  %1192 = zext i16 %1191 to i32
  %1193 = add nuw nsw i32 %1192, 1
  %1194 = icmp sgt i32 %1159, %1192
  br i1 %1194, label %1200, label %1195

1195:                                             ; preds = %1179
  %1196 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1181, i32 1), !nosanitize !32
  %1197 = extractvalue { i32, i1 } %1196, 1, !nosanitize !32
  br i1 %1197, label %1170, label %1198, !prof !35, !nosanitize !32

1198:                                             ; preds = %1195
  %1199 = extractvalue { i32, i1 } %1196, 0, !nosanitize !32
  br label %1200

1200:                                             ; preds = %1198, %1179
  %1201 = phi i32 [ %1159, %1198 ], [ %1193, %1179 ]
  %1202 = phi i32 [ %1199, %1198 ], [ %1181, %1179 ]
  %1203 = trunc i32 %1201 to i16
  store i16 %1203, ptr %1186, align 2, !tbaa !28
  %1204 = icmp sgt i32 %1183, %1151
  br i1 %1204, label %1245, label %1205

1205:                                             ; preds = %1200
  %1206 = sext i32 %1201 to i64
  %1207 = getelementptr inbounds [2 x i8], ptr %500, i64 %1206
  %1208 = load i16, ptr %1207, align 2, !tbaa !61
  %1209 = add i16 %1208, 1
  store i16 %1209, ptr %1207, align 2, !tbaa !61
  %1210 = icmp slt i32 %1183, %1157
  br i1 %1210, label %1220, label %1211

1211:                                             ; preds = %1205
  %1212 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1183, i32 %1157), !nosanitize !32
  %1213 = extractvalue { i32, i1 } %1212, 1, !nosanitize !32
  br i1 %1213, label %1214, label %1215, !prof !35, !nosanitize !32

1214:                                             ; preds = %1211, %1273, %1265, %1297, %1301, %1306, %1251
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

1215:                                             ; preds = %1211
  %1216 = extractvalue { i32, i1 } %1212, 0, !nosanitize !32
  %1217 = sext i32 %1216 to i64
  %1218 = getelementptr inbounds [4 x i8], ptr %1155, i64 %1217
  %1219 = load i32, ptr %1218, align 4, !tbaa !4
  br label %1220

1220:                                             ; preds = %1215, %1205
  %1221 = phi i32 [ %1219, %1215 ], [ 0, %1205 ]
  %1222 = load i16, ptr %1185, align 2, !tbaa !28
  %1223 = zext i16 %1222 to i64
  %1224 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1201, i32 %1221), !nosanitize !32
  %1225 = extractvalue { i32, i1 } %1224, 1, !nosanitize !32
  br i1 %1225, label %1170, label %1226, !prof !35, !nosanitize !32

1226:                                             ; preds = %1220
  %1227 = extractvalue { i32, i1 } %1224, 0, !nosanitize !32
  %1228 = zext i32 %1227 to i64
  %1229 = mul nuw nsw i64 %1228, %1223
  %1230 = load i64, ptr %1175, align 8, !tbaa !51
  %1231 = add i64 %1230, %1229
  store i64 %1231, ptr %1175, align 8, !tbaa !51
  br i1 %1176, label %1245, label %1232

1232:                                             ; preds = %1226
  %1233 = getelementptr inbounds [4 x i8], ptr %1153, i64 %1184
  %1234 = getelementptr inbounds nuw i8, ptr %1233, i64 2
  %1235 = load i16, ptr %1234, align 2, !tbaa !28
  %1236 = zext i16 %1235 to i32
  %1237 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1236, i32 %1221), !nosanitize !32
  %1238 = extractvalue { i32, i1 } %1237, 1, !nosanitize !32
  br i1 %1238, label %1170, label %1239, !prof !35, !nosanitize !32

1239:                                             ; preds = %1232
  %1240 = extractvalue { i32, i1 } %1237, 0, !nosanitize !32
  %1241 = zext i32 %1240 to i64
  %1242 = mul nuw nsw i64 %1241, %1223
  %1243 = load i64, ptr %1177, align 8, !tbaa !52
  %1244 = add i64 %1243, %1242
  store i64 %1244, ptr %1177, align 8, !tbaa !52
  br label %1245

1245:                                             ; preds = %1239, %1226, %1200
  %1246 = add nsw i64 %1180, 1
  %1247 = and i64 %1246, 4294967295
  %1248 = icmp eq i64 %1247, 573
  br i1 %1248, label %1249, label %1179, !llvm.loop !62

1249:                                             ; preds = %1245
  %1250 = icmp eq i32 %1202, 0
  br i1 %1250, label %1337, label %1251

1251:                                             ; preds = %1249
  %1252 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1159, i32 -1)
  %1253 = extractvalue { i32, i1 } %1252, 1, !nosanitize !32
  %1254 = sext i32 %1159 to i64
  %1255 = getelementptr inbounds [2 x i8], ptr %500, i64 %1254
  br i1 %1253, label %1214, label %1256, !prof !35, !nosanitize !32

1256:                                             ; preds = %1251, %1283
  %1257 = phi i32 [ %1284, %1283 ], [ %1202, %1251 ]
  br label %1258

1258:                                             ; preds = %1265, %1256
  %1259 = phi { i32, i1 } [ %1266, %1265 ], [ %1252, %1256 ]
  %1260 = extractvalue { i32, i1 } %1259, 0
  %1261 = sext i32 %1260 to i64
  %1262 = getelementptr inbounds [2 x i8], ptr %500, i64 %1261
  %1263 = load i16, ptr %1262, align 2, !tbaa !61
  %1264 = icmp eq i16 %1263, 0
  br i1 %1264, label %1265, label %1268

1265:                                             ; preds = %1258
  %1266 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1260, i32 -1)
  %1267 = extractvalue { i32, i1 } %1266, 1, !nosanitize !32
  br i1 %1267, label %1214, label %1258, !prof !35, !llvm.loop !63, !nosanitize !32

1268:                                             ; preds = %1258
  %1269 = getelementptr inbounds [2 x i8], ptr %500, i64 %1261
  %1270 = add i16 %1263, -1
  store i16 %1270, ptr %1269, align 2, !tbaa !61
  %1271 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1260, i32 1), !nosanitize !32
  %1272 = extractvalue { i32, i1 } %1271, 1, !nosanitize !32
  br i1 %1272, label %1170, label %1273, !prof !35, !nosanitize !32

1273:                                             ; preds = %1268
  %1274 = extractvalue { i32, i1 } %1271, 0, !nosanitize !32
  %1275 = sext i32 %1274 to i64
  %1276 = getelementptr inbounds [2 x i8], ptr %500, i64 %1275
  %1277 = load i16, ptr %1276, align 2, !tbaa !61
  %1278 = add i16 %1277, 2
  store i16 %1278, ptr %1276, align 2, !tbaa !61
  %1279 = load i16, ptr %1255, align 2, !tbaa !61
  %1280 = add i16 %1279, -1
  store i16 %1280, ptr %1255, align 2, !tbaa !61
  %1281 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1257, i32 -2)
  %1282 = extractvalue { i32, i1 } %1281, 1, !nosanitize !32
  br i1 %1282, label %1214, label %1283, !prof !35, !nosanitize !32

1283:                                             ; preds = %1273
  %1284 = extractvalue { i32, i1 } %1281, 0, !nosanitize !32
  %1285 = icmp sgt i32 %1284, 0
  br i1 %1285, label %1256, label %1286, !llvm.loop !64

1286:                                             ; preds = %1283
  %1287 = icmp eq i32 %1159, 0
  br i1 %1287, label %1337, label %1288

1288:                                             ; preds = %1286, %1333
  %1289 = phi i64 [ %1334, %1333 ], [ %1254, %1286 ]
  %1290 = phi i32 [ %1298, %1333 ], [ 573, %1286 ]
  %1291 = getelementptr inbounds [2 x i8], ptr %500, i64 %1289
  %1292 = load i16, ptr %1291, align 2, !tbaa !61
  %1293 = icmp eq i16 %1292, 0
  br i1 %1293, label %1297, label %1294

1294:                                             ; preds = %1288
  %1295 = zext i16 %1292 to i32
  %1296 = trunc i64 %1289 to i16
  br label %1301

1297:                                             ; preds = %1330, %1288
  %1298 = phi i32 [ %1290, %1288 ], [ %1311, %1330 ]
  %1299 = and i64 %1289, 4294967295
  %1300 = icmp eq i64 %1299, 2147483648
  br i1 %1300, label %1214, label %1333, !prof !35, !nosanitize !32

1301:                                             ; preds = %1330, %1294
  %1302 = phi i32 [ %1290, %1294 ], [ %1311, %1330 ]
  %1303 = phi i32 [ %1295, %1294 ], [ %1331, %1330 ]
  %1304 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1302, i32 -1)
  %1305 = extractvalue { i32, i1 } %1304, 1, !nosanitize !32
  br i1 %1305, label %1214, label %1309, !prof !65, !nosanitize !32

1306:                                             ; preds = %1309
  %1307 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1311, i32 -1)
  %1308 = extractvalue { i32, i1 } %1307, 1, !nosanitize !32
  br i1 %1308, label %1214, label %1309, !prof !66, !llvm.loop !67, !nosanitize !32

1309:                                             ; preds = %1301, %1306
  %1310 = phi { i32, i1 } [ %1307, %1306 ], [ %1304, %1301 ]
  %1311 = extractvalue { i32, i1 } %1310, 0, !nosanitize !32
  %1312 = sext i32 %1311 to i64
  %1313 = getelementptr inbounds [4 x i8], ptr %223, i64 %1312
  %1314 = load i32, ptr %1313, align 4, !tbaa !4
  %1315 = icmp sgt i32 %1314, %1151
  br i1 %1315, label %1306, label %1316, !llvm.loop !67

1316:                                             ; preds = %1309
  %1317 = sext i32 %1314 to i64
  %1318 = getelementptr inbounds [4 x i8], ptr %1150, i64 %1317
  %1319 = getelementptr inbounds nuw i8, ptr %1318, i64 2
  %1320 = load i16, ptr %1319, align 2, !tbaa !28
  %1321 = zext i16 %1320 to i64
  %1322 = icmp eq i64 %1289, %1321
  br i1 %1322, label %1330, label %1323

1323:                                             ; preds = %1316
  %1324 = sub nsw i64 %1289, %1321
  %1325 = load i16, ptr %1318, align 2, !tbaa !28
  %1326 = zext i16 %1325 to i64
  %1327 = mul nsw i64 %1324, %1326
  %1328 = load i64, ptr %1175, align 8, !tbaa !51
  %1329 = add i64 %1327, %1328
  store i64 %1329, ptr %1175, align 8, !tbaa !51
  store i16 %1296, ptr %1319, align 2, !tbaa !28
  br label %1330

1330:                                             ; preds = %1323, %1316
  %1331 = add nsw i32 %1303, -1
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1297, label %1301, !llvm.loop !67

1333:                                             ; preds = %1297
  %1334 = add nsw i64 %1289, -1
  %1335 = and i64 %1334, 4294967295
  %1336 = icmp eq i64 %1335, 0
  br i1 %1336, label %1337, label %1288, !llvm.loop !68

1337:                                             ; preds = %1333, %1286, %1249, %1171
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %1338 = load i16, ptr %500, align 2, !tbaa !61
  %1339 = shl i16 %1338, 1
  %1340 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1339, ptr %1340, align 2, !tbaa !61
  %1341 = load i16, ptr %682, align 2, !tbaa !61
  %1342 = add i16 %1341, %1339
  %1343 = shl i16 %1342, 1
  %1344 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1343, ptr %1344, align 4, !tbaa !61
  %1345 = load i16, ptr %687, align 2, !tbaa !61
  %1346 = add i16 %1345, %1343
  %1347 = shl i16 %1346, 1
  %1348 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1347, ptr %1348, align 2, !tbaa !61
  %1349 = load i16, ptr %692, align 2, !tbaa !61
  %1350 = add i16 %1349, %1347
  %1351 = shl i16 %1350, 1
  %1352 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1351, ptr %1352, align 8, !tbaa !61
  %1353 = load i16, ptr %697, align 2, !tbaa !61
  %1354 = add i16 %1353, %1351
  %1355 = shl i16 %1354, 1
  %1356 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1355, ptr %1356, align 2, !tbaa !61
  %1357 = load i16, ptr %702, align 2, !tbaa !61
  %1358 = add i16 %1357, %1355
  %1359 = shl i16 %1358, 1
  %1360 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1359, ptr %1360, align 4, !tbaa !61
  %1361 = load i16, ptr %707, align 2, !tbaa !61
  %1362 = add i16 %1361, %1359
  %1363 = shl i16 %1362, 1
  %1364 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1363, ptr %1364, align 2, !tbaa !61
  %1365 = load i16, ptr %712, align 2, !tbaa !61
  %1366 = add i16 %1365, %1363
  %1367 = shl i16 %1366, 1
  %1368 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1367, ptr %1368, align 16, !tbaa !61
  %1369 = load i16, ptr %717, align 2, !tbaa !61
  %1370 = add i16 %1369, %1367
  %1371 = shl i16 %1370, 1
  %1372 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1371, ptr %1372, align 2, !tbaa !61
  %1373 = load i16, ptr %722, align 2, !tbaa !61
  %1374 = add i16 %1373, %1371
  %1375 = shl i16 %1374, 1
  %1376 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1375, ptr %1376, align 4, !tbaa !61
  %1377 = load i16, ptr %727, align 2, !tbaa !61
  %1378 = add i16 %1377, %1375
  %1379 = shl i16 %1378, 1
  %1380 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1379, ptr %1380, align 2, !tbaa !61
  %1381 = load i16, ptr %732, align 2, !tbaa !61
  %1382 = add i16 %1381, %1379
  %1383 = shl i16 %1382, 1
  %1384 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1383, ptr %1384, align 8, !tbaa !61
  %1385 = load i16, ptr %737, align 2, !tbaa !61
  %1386 = add i16 %1385, %1383
  %1387 = shl i16 %1386, 1
  %1388 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1387, ptr %1388, align 2, !tbaa !61
  %1389 = load i16, ptr %742, align 2, !tbaa !61
  %1390 = add i16 %1389, %1387
  %1391 = shl i16 %1390, 1
  %1392 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1391, ptr %1392, align 4, !tbaa !61
  %1393 = load i16, ptr %747, align 2, !tbaa !61
  %1394 = add i16 %1393, %1391
  %1395 = shl i16 %1394, 1
  %1396 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1395, ptr %1396, align 2, !tbaa !61
  %1397 = icmp slt i32 %883, 0
  br i1 %1397, label %1459, label %1399

1398:                                             ; preds = %1453
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

1399:                                             ; preds = %1337, %1455
  %1400 = phi i64 [ %1456, %1455 ], [ 0, %1337 ]
  %1401 = getelementptr inbounds nuw [4 x i8], ptr %816, i64 %1400
  %1402 = getelementptr inbounds nuw i8, ptr %1401, i64 2
  %1403 = load i16, ptr %1402, align 2, !tbaa !28
  %1404 = icmp eq i16 %1403, 0
  br i1 %1404, label %1453, label %1405

1405:                                             ; preds = %1399
  %1406 = zext i16 %1403 to i32
  %1407 = zext i16 %1403 to i64
  %1408 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %1407
  %1409 = load i16, ptr %1408, align 2, !tbaa !61
  %1410 = add i16 %1409, 1
  store i16 %1410, ptr %1408, align 2, !tbaa !61
  %1411 = and i32 %1406, 3
  %1412 = icmp ult i16 %1403, 4
  br i1 %1412, label %1437, label %1413

1413:                                             ; preds = %1405
  %1414 = and i32 %1406, 65532
  br label %1415

1415:                                             ; preds = %1415, %1413
  %1416 = phi i16 [ %1409, %1413 ], [ %1432, %1415 ]
  %1417 = phi i16 [ 0, %1413 ], [ %1431, %1415 ]
  %1418 = phi i32 [ 0, %1413 ], [ %1433, %1415 ]
  %1419 = and i16 %1416, 1
  %1420 = or disjoint i16 %1417, %1419
  %1421 = shl i16 %1420, 2
  %1422 = and i16 %1416, 2
  %1423 = or disjoint i16 %1421, %1422
  %1424 = lshr i16 %1416, 2
  %1425 = and i16 %1424, 1
  %1426 = or disjoint i16 %1423, %1425
  %1427 = shl i16 %1426, 1
  %1428 = lshr i16 %1416, 3
  %1429 = and i16 %1428, 1
  %1430 = or disjoint i16 %1427, %1429
  %1431 = shl i16 %1430, 1
  %1432 = lshr i16 %1416, 4
  %1433 = add i32 %1418, 4
  %1434 = icmp eq i32 %1433, %1414
  br i1 %1434, label %1435, label %1415, !llvm.loop !69

1435:                                             ; preds = %1415
  %1436 = icmp eq i32 %1411, 0
  br i1 %1436, label %1451, label %1437

1437:                                             ; preds = %1435, %1405
  %1438 = phi i16 [ %1409, %1405 ], [ %1432, %1435 ]
  %1439 = phi i16 [ 0, %1405 ], [ %1431, %1435 ]
  %1440 = icmp ne i32 %1411, 0
  tail call void @llvm.assume(i1 %1440)
  br label %1441

1441:                                             ; preds = %1441, %1437
  %1442 = phi i16 [ %1438, %1437 ], [ %1448, %1441 ]
  %1443 = phi i16 [ %1439, %1437 ], [ %1447, %1441 ]
  %1444 = phi i32 [ 0, %1437 ], [ %1449, %1441 ]
  %1445 = and i16 %1442, 1
  %1446 = or disjoint i16 %1443, %1445
  %1447 = shl i16 %1446, 1
  %1448 = lshr i16 %1442, 1
  %1449 = add i32 %1444, 1
  %1450 = icmp eq i32 %1449, %1411
  br i1 %1450, label %1451, label %1441, !llvm.loop !73

1451:                                             ; preds = %1441, %1435
  %1452 = phi i16 [ %1430, %1435 ], [ %1446, %1441 ]
  store i16 %1452, ptr %1401, align 2, !tbaa !28
  br label %1453

1453:                                             ; preds = %1451, %1399
  %1454 = icmp eq i64 %1400, 2147483647
  br i1 %1454, label %1398, label %1455, !prof !35, !nosanitize !32

1455:                                             ; preds = %1453
  %1456 = add nuw nsw i64 %1400, 1
  %1457 = trunc i64 %1456 to i32
  %1458 = icmp slt i32 %883, %1457
  br i1 %1458, label %1459, label %1399, !llvm.loop !72

1459:                                             ; preds = %1455, %1337
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %1460 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %1461 = load i32, ptr %222, align 8, !tbaa !74
  %1462 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1461, i32 1), !nosanitize !32
  %1463 = extractvalue { i32, i1 } %1462, 1, !nosanitize !32
  br i1 %1463, label %1464, label %1465, !prof !35, !nosanitize !32

1464:                                             ; preds = %1482, %1459
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

1465:                                             ; preds = %1459
  %1466 = getelementptr inbounds nuw i8, ptr %0, i64 214
  %1467 = load i16, ptr %1466, align 2, !tbaa !28
  %1468 = extractvalue { i32, i1 } %1462, 0, !nosanitize !32
  %1469 = sext i32 %1468 to i64
  %1470 = getelementptr inbounds [4 x i8], ptr %1460, i64 %1469
  %1471 = getelementptr inbounds nuw i8, ptr %1470, i64 2
  store i16 -1, ptr %1471, align 2, !tbaa !28
  %1472 = icmp slt i32 %1461, 0
  br i1 %1472, label %1541, label %1473

1473:                                             ; preds = %1465
  %1474 = zext i16 %1467 to i32
  %1475 = icmp eq i16 %1467, 0
  %1476 = select i1 %1475, i32 138, i32 7
  %1477 = select i1 %1475, i32 3, i32 4
  %1478 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1479 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1480 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1481 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %1486

1482:                                             ; preds = %1535
  %1483 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1487, i32 1), !nosanitize !32
  %1484 = extractvalue { i32, i1 } %1483, 0, !nosanitize !32
  %1485 = extractvalue { i32, i1 } %1483, 1, !nosanitize !32
  br i1 %1485, label %1464, label %1486, !prof !75, !llvm.loop !76, !nosanitize !32

1486:                                             ; preds = %1473, %1482
  %1487 = phi i32 [ 1, %1473 ], [ %1484, %1482 ]
  %1488 = phi i32 [ -1, %1473 ], [ %1536, %1482 ]
  %1489 = phi i32 [ %1474, %1473 ], [ %1497, %1482 ]
  %1490 = phi i32 [ 0, %1473 ], [ %1537, %1482 ]
  %1491 = phi i32 [ %1476, %1473 ], [ %1538, %1482 ]
  %1492 = phi i32 [ %1477, %1473 ], [ %1539, %1482 ]
  %1493 = sext i32 %1487 to i64
  %1494 = getelementptr inbounds [4 x i8], ptr %1460, i64 %1493
  %1495 = getelementptr inbounds nuw i8, ptr %1494, i64 2
  %1496 = load i16, ptr %1495, align 2, !tbaa !28
  %1497 = zext i16 %1496 to i32
  %1498 = add nsw i32 %1490, 1
  %1499 = icmp slt i32 %1498, %1491
  %1500 = icmp eq i32 %1489, %1497
  %1501 = select i1 %1499, i1 %1500, i1 false
  br i1 %1501, label %1535, label %1502

1502:                                             ; preds = %1486
  %1503 = icmp slt i32 %1498, %1492
  br i1 %1503, label %1504, label %1510

1504:                                             ; preds = %1502
  %1505 = zext nneg i32 %1489 to i64
  %1506 = getelementptr inbounds nuw [4 x i8], ptr %1478, i64 %1505
  %1507 = load i16, ptr %1506, align 4, !tbaa !28
  %1508 = trunc i32 %1498 to i16
  %1509 = add i16 %1507, %1508
  store i16 %1509, ptr %1506, align 4, !tbaa !28
  br label %1530

1510:                                             ; preds = %1502
  %1511 = icmp eq i32 %1489, 0
  br i1 %1511, label %1522, label %1512

1512:                                             ; preds = %1510
  %1513 = icmp eq i32 %1489, %1488
  br i1 %1513, label %1519, label %1514

1514:                                             ; preds = %1512
  %1515 = zext nneg i32 %1489 to i64
  %1516 = getelementptr inbounds nuw [4 x i8], ptr %1478, i64 %1515
  %1517 = load i16, ptr %1516, align 4, !tbaa !28
  %1518 = add i16 %1517, 1
  store i16 %1518, ptr %1516, align 4, !tbaa !28
  br label %1519

1519:                                             ; preds = %1514, %1512
  %1520 = load i16, ptr %1479, align 4, !tbaa !28
  %1521 = add i16 %1520, 1
  store i16 %1521, ptr %1479, align 4, !tbaa !28
  br label %1530

1522:                                             ; preds = %1510
  %1523 = icmp slt i32 %1490, 10
  br i1 %1523, label %1524, label %1527

1524:                                             ; preds = %1522
  %1525 = load i16, ptr %1481, align 4, !tbaa !28
  %1526 = add i16 %1525, 1
  store i16 %1526, ptr %1481, align 4, !tbaa !28
  br label %1530

1527:                                             ; preds = %1522
  %1528 = load i16, ptr %1480, align 4, !tbaa !28
  %1529 = add i16 %1528, 1
  store i16 %1529, ptr %1480, align 4, !tbaa !28
  br label %1530

1530:                                             ; preds = %1527, %1524, %1519, %1504
  %1531 = icmp eq i16 %1496, 0
  br i1 %1531, label %1535, label %1532

1532:                                             ; preds = %1530
  %1533 = select i1 %1500, i32 6, i32 7
  %1534 = select i1 %1500, i32 3, i32 4
  br label %1535

1535:                                             ; preds = %1532, %1530, %1486
  %1536 = phi i32 [ %1488, %1486 ], [ %1489, %1530 ], [ %1489, %1532 ]
  %1537 = phi i32 [ %1498, %1486 ], [ 0, %1530 ], [ 0, %1532 ]
  %1538 = phi i32 [ %1491, %1486 ], [ 138, %1530 ], [ %1533, %1532 ]
  %1539 = phi i32 [ %1492, %1486 ], [ 3, %1530 ], [ %1534, %1532 ]
  %1540 = icmp sgt i32 %1487, %1461
  br i1 %1540, label %1541, label %1482, !llvm.loop !76

1541:                                             ; preds = %1535, %1465
  %1542 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %1543 = load i32, ptr %885, align 8, !tbaa !77
  %1544 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1543, i32 1), !nosanitize !32
  %1545 = extractvalue { i32, i1 } %1544, 1, !nosanitize !32
  br i1 %1545, label %1546, label %1547, !prof !35, !nosanitize !32

1546:                                             ; preds = %1564, %1541
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

1547:                                             ; preds = %1541
  %1548 = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %1549 = load i16, ptr %1548, align 2, !tbaa !28
  %1550 = extractvalue { i32, i1 } %1544, 0, !nosanitize !32
  %1551 = sext i32 %1550 to i64
  %1552 = getelementptr inbounds [4 x i8], ptr %1542, i64 %1551
  %1553 = getelementptr inbounds nuw i8, ptr %1552, i64 2
  store i16 -1, ptr %1553, align 2, !tbaa !28
  %1554 = icmp slt i32 %1543, 0
  br i1 %1554, label %1623, label %1555

1555:                                             ; preds = %1547
  %1556 = zext i16 %1549 to i32
  %1557 = icmp eq i16 %1549, 0
  %1558 = select i1 %1557, i32 138, i32 7
  %1559 = select i1 %1557, i32 3, i32 4
  %1560 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1561 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1562 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1563 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %1568

1564:                                             ; preds = %1617
  %1565 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1569, i32 1), !nosanitize !32
  %1566 = extractvalue { i32, i1 } %1565, 0, !nosanitize !32
  %1567 = extractvalue { i32, i1 } %1565, 1, !nosanitize !32
  br i1 %1567, label %1546, label %1568, !prof !75, !llvm.loop !76, !nosanitize !32

1568:                                             ; preds = %1555, %1564
  %1569 = phi i32 [ 1, %1555 ], [ %1566, %1564 ]
  %1570 = phi i32 [ -1, %1555 ], [ %1618, %1564 ]
  %1571 = phi i32 [ %1556, %1555 ], [ %1579, %1564 ]
  %1572 = phi i32 [ 0, %1555 ], [ %1619, %1564 ]
  %1573 = phi i32 [ %1558, %1555 ], [ %1620, %1564 ]
  %1574 = phi i32 [ %1559, %1555 ], [ %1621, %1564 ]
  %1575 = sext i32 %1569 to i64
  %1576 = getelementptr inbounds [4 x i8], ptr %1542, i64 %1575
  %1577 = getelementptr inbounds nuw i8, ptr %1576, i64 2
  %1578 = load i16, ptr %1577, align 2, !tbaa !28
  %1579 = zext i16 %1578 to i32
  %1580 = add nsw i32 %1572, 1
  %1581 = icmp slt i32 %1580, %1573
  %1582 = icmp eq i32 %1571, %1579
  %1583 = select i1 %1581, i1 %1582, i1 false
  br i1 %1583, label %1617, label %1584

1584:                                             ; preds = %1568
  %1585 = icmp slt i32 %1580, %1574
  br i1 %1585, label %1586, label %1592

1586:                                             ; preds = %1584
  %1587 = zext nneg i32 %1571 to i64
  %1588 = getelementptr inbounds nuw [4 x i8], ptr %1560, i64 %1587
  %1589 = load i16, ptr %1588, align 4, !tbaa !28
  %1590 = trunc i32 %1580 to i16
  %1591 = add i16 %1589, %1590
  store i16 %1591, ptr %1588, align 4, !tbaa !28
  br label %1612

1592:                                             ; preds = %1584
  %1593 = icmp eq i32 %1571, 0
  br i1 %1593, label %1604, label %1594

1594:                                             ; preds = %1592
  %1595 = icmp eq i32 %1571, %1570
  br i1 %1595, label %1601, label %1596

1596:                                             ; preds = %1594
  %1597 = zext nneg i32 %1571 to i64
  %1598 = getelementptr inbounds nuw [4 x i8], ptr %1560, i64 %1597
  %1599 = load i16, ptr %1598, align 4, !tbaa !28
  %1600 = add i16 %1599, 1
  store i16 %1600, ptr %1598, align 4, !tbaa !28
  br label %1601

1601:                                             ; preds = %1596, %1594
  %1602 = load i16, ptr %1561, align 4, !tbaa !28
  %1603 = add i16 %1602, 1
  store i16 %1603, ptr %1561, align 4, !tbaa !28
  br label %1612

1604:                                             ; preds = %1592
  %1605 = icmp slt i32 %1572, 10
  br i1 %1605, label %1606, label %1609

1606:                                             ; preds = %1604
  %1607 = load i16, ptr %1563, align 4, !tbaa !28
  %1608 = add i16 %1607, 1
  store i16 %1608, ptr %1563, align 4, !tbaa !28
  br label %1612

1609:                                             ; preds = %1604
  %1610 = load i16, ptr %1562, align 4, !tbaa !28
  %1611 = add i16 %1610, 1
  store i16 %1611, ptr %1562, align 4, !tbaa !28
  br label %1612

1612:                                             ; preds = %1609, %1606, %1601, %1586
  %1613 = icmp eq i16 %1578, 0
  br i1 %1613, label %1617, label %1614

1614:                                             ; preds = %1612
  %1615 = select i1 %1582, i32 6, i32 7
  %1616 = select i1 %1582, i32 3, i32 4
  br label %1617

1617:                                             ; preds = %1614, %1612, %1568
  %1618 = phi i32 [ %1570, %1568 ], [ %1571, %1612 ], [ %1571, %1614 ]
  %1619 = phi i32 [ %1580, %1568 ], [ 0, %1612 ], [ 0, %1614 ]
  %1620 = phi i32 [ %1573, %1568 ], [ 138, %1612 ], [ %1615, %1614 ]
  %1621 = phi i32 [ %1574, %1568 ], [ 3, %1612 ], [ %1616, %1614 ]
  %1622 = icmp sgt i32 %1569, %1543
  br i1 %1622, label %1623, label %1564, !llvm.loop !76

1623:                                             ; preds = %1617, %1547
  %1624 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %1625 = load ptr, ptr %1624, align 8, !tbaa !42
  %1626 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %1627 = load ptr, ptr %1626, align 8, !tbaa !43
  %1628 = load ptr, ptr %1627, align 8, !tbaa !44
  %1629 = getelementptr inbounds nuw i8, ptr %1627, i64 20
  %1630 = load i32, ptr %1629, align 4, !tbaa !47
  store i32 0, ptr %153, align 4, !tbaa !48
  store i32 573, ptr %154, align 8, !tbaa !49
  %1631 = icmp sgt i32 %1630, 0
  br i1 %1631, label %1632, label %1637

1632:                                             ; preds = %1623
  %1633 = zext nneg i32 %1630 to i64
  br label %1643

1634:                                             ; preds = %1662
  %1635 = load i32, ptr %153, align 4, !tbaa !48
  %1636 = icmp slt i32 %1635, 2
  br i1 %1636, label %1637, label %1691

1637:                                             ; preds = %1634, %1623
  %1638 = phi i32 [ %1663, %1634 ], [ -1, %1623 ]
  %1639 = phi i32 [ %1635, %1634 ], [ 0, %1623 ]
  %1640 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1641 = icmp eq ptr %1628, null
  %1642 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1666

1643:                                             ; preds = %1662, %1632
  %1644 = phi i64 [ 0, %1632 ], [ %1664, %1662 ]
  %1645 = phi i32 [ -1, %1632 ], [ %1663, %1662 ]
  %1646 = getelementptr inbounds nuw [4 x i8], ptr %1625, i64 %1644
  %1647 = load i16, ptr %1646, align 2, !tbaa !28
  %1648 = icmp eq i16 %1647, 0
  br i1 %1648, label %1660, label %1649

1649:                                             ; preds = %1643
  %1650 = load i32, ptr %153, align 4, !tbaa !48
  %1651 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1650, i32 1), !nosanitize !32
  %1652 = extractvalue { i32, i1 } %1651, 1, !nosanitize !32
  br i1 %1652, label %1653, label %1654, !prof !35, !nosanitize !32

1653:                                             ; preds = %1649, %1860
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

1654:                                             ; preds = %1649
  %1655 = extractvalue { i32, i1 } %1651, 0, !nosanitize !32
  store i32 %1655, ptr %153, align 4, !tbaa !48
  %1656 = sext i32 %1655 to i64
  %1657 = getelementptr inbounds [4 x i8], ptr %223, i64 %1656
  %1658 = trunc nuw nsw i64 %1644 to i32
  store i32 %1658, ptr %1657, align 4, !tbaa !4
  %1659 = getelementptr inbounds nuw i8, ptr %224, i64 %1644
  store i8 0, ptr %1659, align 1, !tbaa !28
  br label %1662

1660:                                             ; preds = %1643
  %1661 = getelementptr inbounds nuw i8, ptr %1646, i64 2
  store i16 0, ptr %1661, align 2, !tbaa !28
  br label %1662

1662:                                             ; preds = %1660, %1654
  %1663 = phi i32 [ %1658, %1654 ], [ %1645, %1660 ]
  %1664 = add nuw nsw i64 %1644, 1
  %1665 = icmp eq i64 %1664, %1633
  br i1 %1665, label %1634, label %1643, !llvm.loop !50

1666:                                             ; preds = %1688, %1637
  %1667 = phi i32 [ %1639, %1637 ], [ %1689, %1688 ]
  %1668 = phi i32 [ %1638, %1637 ], [ %1671, %1688 ]
  %1669 = icmp slt i32 %1668, 2
  %1670 = add i32 %1668, 1
  %1671 = select i1 %1669, i32 %1670, i32 %1668
  %1672 = add nsw i32 %1667, 1
  %1673 = select i1 %1669, i32 %1670, i32 0
  store i32 %1672, ptr %153, align 4, !tbaa !48
  %1674 = sext i32 %1672 to i64
  %1675 = getelementptr inbounds [4 x i8], ptr %223, i64 %1674
  store i32 %1673, ptr %1675, align 4, !tbaa !4
  %1676 = sext i32 %1673 to i64
  %1677 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1676
  store i16 1, ptr %1677, align 2, !tbaa !28
  %1678 = getelementptr inbounds i8, ptr %224, i64 %1676
  store i8 0, ptr %1678, align 1, !tbaa !28
  %1679 = load i64, ptr %1640, align 8, !tbaa !51
  %1680 = add i64 %1679, -1
  store i64 %1680, ptr %1640, align 8, !tbaa !51
  br i1 %1641, label %1688, label %1681

1681:                                             ; preds = %1666
  %1682 = getelementptr inbounds [4 x i8], ptr %1628, i64 %1676
  %1683 = getelementptr inbounds nuw i8, ptr %1682, i64 2
  %1684 = load i16, ptr %1683, align 2, !tbaa !28
  %1685 = zext i16 %1684 to i64
  %1686 = load i64, ptr %1642, align 8, !tbaa !52
  %1687 = sub i64 %1686, %1685
  store i64 %1687, ptr %1642, align 8, !tbaa !52
  br label %1688

1688:                                             ; preds = %1681, %1666
  %1689 = load i32, ptr %153, align 4, !tbaa !48
  %1690 = icmp slt i32 %1689, 2
  br i1 %1690, label %1666, label %1691, !llvm.loop !53

1691:                                             ; preds = %1688, %1634
  %1692 = phi i32 [ %1663, %1634 ], [ %1671, %1688 ]
  %1693 = phi i32 [ %1635, %1634 ], [ %1689, %1688 ]
  %1694 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %1692, ptr %1694, align 8, !tbaa !54
  %1695 = lshr i32 %1693, 1
  %1696 = zext nneg i32 %1695 to i64
  br label %1700

1697:                                             ; preds = %1766
  %1698 = load i32, ptr %153, align 4, !tbaa !48
  %1699 = sext i32 %1630 to i64
  br label %1773

1700:                                             ; preds = %1766, %1691
  %1701 = phi i64 [ %1696, %1691 ], [ %1770, %1766 ]
  %1702 = getelementptr inbounds nuw [4 x i8], ptr %223, i64 %1701
  %1703 = load i32, ptr %1702, align 4, !tbaa !4
  %1704 = sext i32 %1703 to i64
  %1705 = getelementptr inbounds i8, ptr %224, i64 %1704
  %1706 = load i32, ptr %153, align 4, !tbaa !48
  %1707 = trunc i64 %1701 to i32
  %1708 = shl i32 %1707, 1
  %1709 = icmp sgt i32 %1708, %1706
  br i1 %1709, label %1766, label %1710

1710:                                             ; preds = %1700
  %1711 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1704
  br label %1712

1712:                                             ; preds = %1760, %1710
  %1713 = phi i32 [ %1706, %1710 ], [ %1764, %1760 ]
  %1714 = phi i32 [ %1708, %1710 ], [ %1763, %1760 ]
  %1715 = phi i32 [ %1707, %1710 ], [ %1745, %1760 ]
  %1716 = icmp slt i32 %1714, %1713
  br i1 %1716, label %1719, label %1717

1717:                                             ; preds = %1712
  %1718 = sext i32 %1714 to i64
  br label %1743

1719:                                             ; preds = %1712
  %1720 = or disjoint i32 %1714, 1
  %1721 = sext i32 %1720 to i64
  %1722 = getelementptr inbounds [4 x i8], ptr %223, i64 %1721
  %1723 = load i32, ptr %1722, align 4, !tbaa !4
  %1724 = sext i32 %1723 to i64
  %1725 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1724
  %1726 = load i16, ptr %1725, align 2, !tbaa !28
  %1727 = sext i32 %1714 to i64
  %1728 = getelementptr inbounds [4 x i8], ptr %223, i64 %1727
  %1729 = load i32, ptr %1728, align 4, !tbaa !4
  %1730 = sext i32 %1729 to i64
  %1731 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1730
  %1732 = load i16, ptr %1731, align 2, !tbaa !28
  %1733 = icmp ult i16 %1726, %1732
  br i1 %1733, label %1742, label %1734

1734:                                             ; preds = %1719
  %1735 = icmp eq i16 %1726, %1732
  br i1 %1735, label %1736, label %1743

1736:                                             ; preds = %1734
  %1737 = getelementptr inbounds i8, ptr %224, i64 %1724
  %1738 = load i8, ptr %1737, align 1, !tbaa !28
  %1739 = getelementptr inbounds i8, ptr %224, i64 %1730
  %1740 = load i8, ptr %1739, align 1, !tbaa !28
  %1741 = icmp ugt i8 %1738, %1740
  br i1 %1741, label %1743, label %1742

1742:                                             ; preds = %1736, %1719
  br label %1743

1743:                                             ; preds = %1742, %1736, %1734, %1717
  %1744 = phi i64 [ %1718, %1717 ], [ %1721, %1742 ], [ %1727, %1736 ], [ %1727, %1734 ]
  %1745 = phi i32 [ %1714, %1717 ], [ %1720, %1742 ], [ %1714, %1736 ], [ %1714, %1734 ]
  %1746 = load i16, ptr %1711, align 2, !tbaa !28
  %1747 = getelementptr inbounds [4 x i8], ptr %223, i64 %1744
  %1748 = load i32, ptr %1747, align 4, !tbaa !4
  %1749 = sext i32 %1748 to i64
  %1750 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1749
  %1751 = load i16, ptr %1750, align 2, !tbaa !28
  %1752 = icmp ult i16 %1746, %1751
  br i1 %1752, label %1766, label %1753

1753:                                             ; preds = %1743
  %1754 = icmp eq i16 %1746, %1751
  br i1 %1754, label %1755, label %1760

1755:                                             ; preds = %1753
  %1756 = load i8, ptr %1705, align 1, !tbaa !28
  %1757 = getelementptr inbounds i8, ptr %224, i64 %1749
  %1758 = load i8, ptr %1757, align 1, !tbaa !28
  %1759 = icmp ugt i8 %1756, %1758
  br i1 %1759, label %1760, label %1766

1760:                                             ; preds = %1755, %1753
  %1761 = sext i32 %1715 to i64
  %1762 = getelementptr inbounds [4 x i8], ptr %223, i64 %1761
  store i32 %1748, ptr %1762, align 4, !tbaa !4
  %1763 = shl i32 %1745, 1
  %1764 = load i32, ptr %153, align 4, !tbaa !48
  %1765 = icmp sgt i32 %1763, %1764
  br i1 %1765, label %1766, label %1712, !llvm.loop !55

1766:                                             ; preds = %1760, %1755, %1743, %1700
  %1767 = phi i32 [ %1707, %1700 ], [ %1745, %1760 ], [ %1715, %1755 ], [ %1715, %1743 ]
  %1768 = sext i32 %1767 to i64
  %1769 = getelementptr inbounds [4 x i8], ptr %223, i64 %1768
  store i32 %1703, ptr %1769, align 4, !tbaa !4
  %1770 = add nsw i64 %1701, -1
  %1771 = icmp sgt i64 %1701, 1
  br i1 %1771, label %1700, label %1697, !llvm.loop !56

1772:                                             ; preds = %1853, %1846, %1773, %1950
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

1773:                                             ; preds = %1945, %1697
  %1774 = phi i32 [ %1698, %1697 ], [ %1948, %1945 ]
  %1775 = phi i64 [ %1699, %1697 ], [ %1885, %1945 ]
  %1776 = load i32, ptr %229, align 4, !tbaa !4
  %1777 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1774, i32 -1)
  %1778 = extractvalue { i32, i1 } %1777, 1, !nosanitize !32
  br i1 %1778, label %1772, label %1779, !prof !35, !nosanitize !32

1779:                                             ; preds = %1773
  %1780 = extractvalue { i32, i1 } %1777, 0, !nosanitize !32
  store i32 %1780, ptr %153, align 4, !tbaa !48
  %1781 = sext i32 %1774 to i64
  %1782 = getelementptr inbounds [4 x i8], ptr %223, i64 %1781
  %1783 = load i32, ptr %1782, align 4, !tbaa !4
  store i32 %1783, ptr %229, align 4, !tbaa !4
  %1784 = sext i32 %1783 to i64
  %1785 = getelementptr inbounds i8, ptr %224, i64 %1784
  %1786 = icmp slt i32 %1780, 2
  br i1 %1786, label %1846, label %1787

1787:                                             ; preds = %1779
  %1788 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1784
  br label %1789

1789:                                             ; preds = %1837, %1787
  %1790 = phi i32 [ %1780, %1787 ], [ %1841, %1837 ]
  %1791 = phi i32 [ 2, %1787 ], [ %1840, %1837 ]
  %1792 = phi i32 [ 1, %1787 ], [ %1822, %1837 ]
  %1793 = icmp slt i32 %1791, %1790
  br i1 %1793, label %1796, label %1794

1794:                                             ; preds = %1789
  %1795 = sext i32 %1791 to i64
  br label %1820

1796:                                             ; preds = %1789
  %1797 = or disjoint i32 %1791, 1
  %1798 = sext i32 %1797 to i64
  %1799 = getelementptr inbounds [4 x i8], ptr %223, i64 %1798
  %1800 = load i32, ptr %1799, align 4, !tbaa !4
  %1801 = sext i32 %1800 to i64
  %1802 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1801
  %1803 = load i16, ptr %1802, align 2, !tbaa !28
  %1804 = sext i32 %1791 to i64
  %1805 = getelementptr inbounds [4 x i8], ptr %223, i64 %1804
  %1806 = load i32, ptr %1805, align 4, !tbaa !4
  %1807 = sext i32 %1806 to i64
  %1808 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1807
  %1809 = load i16, ptr %1808, align 2, !tbaa !28
  %1810 = icmp ult i16 %1803, %1809
  br i1 %1810, label %1819, label %1811

1811:                                             ; preds = %1796
  %1812 = icmp eq i16 %1803, %1809
  br i1 %1812, label %1813, label %1820

1813:                                             ; preds = %1811
  %1814 = getelementptr inbounds i8, ptr %224, i64 %1801
  %1815 = load i8, ptr %1814, align 1, !tbaa !28
  %1816 = getelementptr inbounds i8, ptr %224, i64 %1807
  %1817 = load i8, ptr %1816, align 1, !tbaa !28
  %1818 = icmp ugt i8 %1815, %1817
  br i1 %1818, label %1820, label %1819

1819:                                             ; preds = %1813, %1796
  br label %1820

1820:                                             ; preds = %1819, %1813, %1811, %1794
  %1821 = phi i64 [ %1795, %1794 ], [ %1798, %1819 ], [ %1804, %1813 ], [ %1804, %1811 ]
  %1822 = phi i32 [ %1791, %1794 ], [ %1797, %1819 ], [ %1791, %1813 ], [ %1791, %1811 ]
  %1823 = load i16, ptr %1788, align 2, !tbaa !28
  %1824 = getelementptr inbounds [4 x i8], ptr %223, i64 %1821
  %1825 = load i32, ptr %1824, align 4, !tbaa !4
  %1826 = sext i32 %1825 to i64
  %1827 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1826
  %1828 = load i16, ptr %1827, align 2, !tbaa !28
  %1829 = icmp ult i16 %1823, %1828
  br i1 %1829, label %1843, label %1830

1830:                                             ; preds = %1820
  %1831 = icmp eq i16 %1823, %1828
  br i1 %1831, label %1832, label %1837

1832:                                             ; preds = %1830
  %1833 = load i8, ptr %1785, align 1, !tbaa !28
  %1834 = getelementptr inbounds i8, ptr %224, i64 %1826
  %1835 = load i8, ptr %1834, align 1, !tbaa !28
  %1836 = icmp ugt i8 %1833, %1835
  br i1 %1836, label %1837, label %1843

1837:                                             ; preds = %1832, %1830
  %1838 = sext i32 %1792 to i64
  %1839 = getelementptr inbounds [4 x i8], ptr %223, i64 %1838
  store i32 %1825, ptr %1839, align 4, !tbaa !4
  %1840 = shl i32 %1822, 1
  %1841 = load i32, ptr %153, align 4, !tbaa !48
  %1842 = icmp sgt i32 %1840, %1841
  br i1 %1842, label %1843, label %1789, !llvm.loop !55

1843:                                             ; preds = %1837, %1832, %1820
  %1844 = phi i32 [ %1792, %1820 ], [ %1792, %1832 ], [ %1822, %1837 ]
  %1845 = sext i32 %1844 to i64
  br label %1846

1846:                                             ; preds = %1843, %1779
  %1847 = phi i64 [ 1, %1779 ], [ %1845, %1843 ]
  %1848 = getelementptr inbounds [4 x i8], ptr %223, i64 %1847
  store i32 %1783, ptr %1848, align 4, !tbaa !4
  %1849 = load i32, ptr %229, align 4, !tbaa !4
  %1850 = load i32, ptr %154, align 8, !tbaa !49
  %1851 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1850, i32 -1)
  %1852 = extractvalue { i32, i1 } %1851, 1, !nosanitize !32
  br i1 %1852, label %1772, label %1853, !prof !35, !nosanitize !32

1853:                                             ; preds = %1846
  %1854 = extractvalue { i32, i1 } %1851, 0, !nosanitize !32
  store i32 %1854, ptr %154, align 8, !tbaa !49
  %1855 = sext i32 %1854 to i64
  %1856 = getelementptr inbounds [4 x i8], ptr %223, i64 %1855
  store i32 %1776, ptr %1856, align 4, !tbaa !4
  %1857 = load i32, ptr %154, align 8, !tbaa !49
  %1858 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1857, i32 -1)
  %1859 = extractvalue { i32, i1 } %1858, 1, !nosanitize !32
  br i1 %1859, label %1772, label %1860, !prof !35, !nosanitize !32

1860:                                             ; preds = %1853
  %1861 = extractvalue { i32, i1 } %1858, 0, !nosanitize !32
  store i32 %1861, ptr %154, align 8, !tbaa !49
  %1862 = sext i32 %1861 to i64
  %1863 = getelementptr inbounds [4 x i8], ptr %223, i64 %1862
  store i32 %1849, ptr %1863, align 4, !tbaa !4
  %1864 = sext i32 %1776 to i64
  %1865 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1864
  %1866 = load i16, ptr %1865, align 2, !tbaa !28
  %1867 = sext i32 %1849 to i64
  %1868 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1867
  %1869 = load i16, ptr %1868, align 2, !tbaa !28
  %1870 = add i16 %1869, %1866
  %1871 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1775
  store i16 %1870, ptr %1871, align 2, !tbaa !28
  %1872 = getelementptr inbounds i8, ptr %224, i64 %1864
  %1873 = load i8, ptr %1872, align 1, !tbaa !28
  %1874 = getelementptr inbounds i8, ptr %224, i64 %1867
  %1875 = load i8, ptr %1874, align 1, !tbaa !28
  %1876 = tail call i8 @llvm.umax.i8(i8 %1873, i8 %1875)
  %1877 = add i8 %1876, 1
  %1878 = getelementptr inbounds i8, ptr %224, i64 %1775
  store i8 %1877, ptr %1878, align 1, !tbaa !28
  %1879 = trunc nsw i64 %1775 to i32
  %1880 = trunc i64 %1775 to i16
  %1881 = getelementptr inbounds nuw i8, ptr %1868, i64 2
  store i16 %1880, ptr %1881, align 2, !tbaa !28
  %1882 = getelementptr inbounds nuw i8, ptr %1865, i64 2
  store i16 %1880, ptr %1882, align 2, !tbaa !28
  %1883 = icmp eq i64 %1775, 2147483647
  br i1 %1883, label %1653, label %1884, !prof !35, !nosanitize !32

1884:                                             ; preds = %1860
  %1885 = add nsw i64 %1775, 1
  store i32 %1879, ptr %229, align 4, !tbaa !4
  %1886 = load i32, ptr %153, align 4, !tbaa !48
  %1887 = icmp slt i32 %1886, 2
  br i1 %1887, label %1945, label %1888

1888:                                             ; preds = %1884, %1936
  %1889 = phi i32 [ %1940, %1936 ], [ %1886, %1884 ]
  %1890 = phi i32 [ %1939, %1936 ], [ 2, %1884 ]
  %1891 = phi i32 [ %1921, %1936 ], [ 1, %1884 ]
  %1892 = icmp slt i32 %1890, %1889
  br i1 %1892, label %1895, label %1893

1893:                                             ; preds = %1888
  %1894 = sext i32 %1890 to i64
  br label %1919

1895:                                             ; preds = %1888
  %1896 = or disjoint i32 %1890, 1
  %1897 = sext i32 %1896 to i64
  %1898 = getelementptr inbounds [4 x i8], ptr %223, i64 %1897
  %1899 = load i32, ptr %1898, align 4, !tbaa !4
  %1900 = sext i32 %1899 to i64
  %1901 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1900
  %1902 = load i16, ptr %1901, align 2, !tbaa !28
  %1903 = sext i32 %1890 to i64
  %1904 = getelementptr inbounds [4 x i8], ptr %223, i64 %1903
  %1905 = load i32, ptr %1904, align 4, !tbaa !4
  %1906 = sext i32 %1905 to i64
  %1907 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1906
  %1908 = load i16, ptr %1907, align 2, !tbaa !28
  %1909 = icmp ult i16 %1902, %1908
  br i1 %1909, label %1918, label %1910

1910:                                             ; preds = %1895
  %1911 = icmp eq i16 %1902, %1908
  br i1 %1911, label %1912, label %1919

1912:                                             ; preds = %1910
  %1913 = getelementptr inbounds i8, ptr %224, i64 %1900
  %1914 = load i8, ptr %1913, align 1, !tbaa !28
  %1915 = getelementptr inbounds i8, ptr %224, i64 %1906
  %1916 = load i8, ptr %1915, align 1, !tbaa !28
  %1917 = icmp ugt i8 %1914, %1916
  br i1 %1917, label %1919, label %1918

1918:                                             ; preds = %1912, %1895
  br label %1919

1919:                                             ; preds = %1918, %1912, %1910, %1893
  %1920 = phi i64 [ %1894, %1893 ], [ %1897, %1918 ], [ %1903, %1912 ], [ %1903, %1910 ]
  %1921 = phi i32 [ %1890, %1893 ], [ %1896, %1918 ], [ %1890, %1912 ], [ %1890, %1910 ]
  %1922 = load i16, ptr %1871, align 2, !tbaa !28
  %1923 = getelementptr inbounds [4 x i8], ptr %223, i64 %1920
  %1924 = load i32, ptr %1923, align 4, !tbaa !4
  %1925 = sext i32 %1924 to i64
  %1926 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1925
  %1927 = load i16, ptr %1926, align 2, !tbaa !28
  %1928 = icmp ult i16 %1922, %1927
  br i1 %1928, label %1942, label %1929

1929:                                             ; preds = %1919
  %1930 = icmp eq i16 %1922, %1927
  br i1 %1930, label %1931, label %1936

1931:                                             ; preds = %1929
  %1932 = load i8, ptr %1878, align 1, !tbaa !28
  %1933 = getelementptr inbounds i8, ptr %224, i64 %1925
  %1934 = load i8, ptr %1933, align 1, !tbaa !28
  %1935 = icmp ugt i8 %1932, %1934
  br i1 %1935, label %1936, label %1942

1936:                                             ; preds = %1931, %1929
  %1937 = sext i32 %1891 to i64
  %1938 = getelementptr inbounds [4 x i8], ptr %223, i64 %1937
  store i32 %1924, ptr %1938, align 4, !tbaa !4
  %1939 = shl i32 %1921, 1
  %1940 = load i32, ptr %153, align 4, !tbaa !48
  %1941 = icmp sgt i32 %1939, %1940
  br i1 %1941, label %1942, label %1888, !llvm.loop !55

1942:                                             ; preds = %1936, %1931, %1919
  %1943 = phi i32 [ %1891, %1919 ], [ %1891, %1931 ], [ %1921, %1936 ]
  %1944 = sext i32 %1943 to i64
  br label %1945

1945:                                             ; preds = %1942, %1884
  %1946 = phi i64 [ 1, %1884 ], [ %1944, %1942 ]
  %1947 = getelementptr inbounds [4 x i8], ptr %223, i64 %1946
  store i32 %1879, ptr %1947, align 4, !tbaa !4
  %1948 = load i32, ptr %153, align 4, !tbaa !48
  %1949 = icmp sgt i32 %1948, 1
  br i1 %1949, label %1773, label %1950, !llvm.loop !57

1950:                                             ; preds = %1945
  %1951 = load i32, ptr %154, align 8, !tbaa !49
  %1952 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1951, i32 -1)
  %1953 = extractvalue { i32, i1 } %1952, 1, !nosanitize !32
  br i1 %1953, label %1772, label %1954, !prof !35, !nosanitize !32

1954:                                             ; preds = %1950
  %1955 = extractvalue { i32, i1 } %1952, 0, !nosanitize !32
  %1956 = load i32, ptr %229, align 4, !tbaa !4
  store i32 %1955, ptr %154, align 8, !tbaa !49
  %1957 = sext i32 %1955 to i64
  %1958 = getelementptr inbounds [4 x i8], ptr %223, i64 %1957
  store i32 %1956, ptr %1958, align 4, !tbaa !4
  %1959 = load ptr, ptr %1624, align 8, !tbaa !42
  %1960 = load i32, ptr %1694, align 8, !tbaa !54
  %1961 = load ptr, ptr %1626, align 8, !tbaa !43
  %1962 = load ptr, ptr %1961, align 8, !tbaa !44
  %1963 = getelementptr inbounds nuw i8, ptr %1961, i64 8
  %1964 = load ptr, ptr %1963, align 8, !tbaa !58
  %1965 = getelementptr inbounds nuw i8, ptr %1961, i64 16
  %1966 = load i32, ptr %1965, align 8, !tbaa !59
  %1967 = getelementptr inbounds nuw i8, ptr %1961, i64 24
  %1968 = load i32, ptr %1967, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %500, i8 0, i64 32, i1 false), !tbaa !61
  %1969 = load i32, ptr %154, align 8, !tbaa !49
  %1970 = sext i32 %1969 to i64
  %1971 = getelementptr inbounds [4 x i8], ptr %223, i64 %1970
  %1972 = load i32, ptr %1971, align 4, !tbaa !4
  %1973 = sext i32 %1972 to i64
  %1974 = getelementptr inbounds [4 x i8], ptr %1959, i64 %1973
  %1975 = getelementptr inbounds nuw i8, ptr %1974, i64 2
  store i16 0, ptr %1975, align 2, !tbaa !28
  %1976 = load i32, ptr %154, align 8, !tbaa !49
  %1977 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1976, i32 1), !nosanitize !32
  %1978 = extractvalue { i32, i1 } %1977, 1, !nosanitize !32
  br i1 %1978, label %1979, label %1980, !prof !35, !nosanitize !32

1979:                                             ; preds = %2041, %2029, %2004, %2077, %1954
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

1980:                                             ; preds = %1954
  %1981 = extractvalue { i32, i1 } %1977, 0
  %1982 = icmp slt i32 %1981, 573
  br i1 %1982, label %1983, label %2146

1983:                                             ; preds = %1980
  %1984 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1985 = icmp eq ptr %1962, null
  %1986 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1987 = sext i32 %1981 to i64
  br label %1988

1988:                                             ; preds = %2054, %1983
  %1989 = phi i64 [ %1987, %1983 ], [ %2055, %2054 ]
  %1990 = phi i32 [ 0, %1983 ], [ %2011, %2054 ]
  %1991 = getelementptr inbounds [4 x i8], ptr %223, i64 %1989
  %1992 = load i32, ptr %1991, align 4, !tbaa !4
  %1993 = sext i32 %1992 to i64
  %1994 = getelementptr inbounds [4 x i8], ptr %1959, i64 %1993
  %1995 = getelementptr inbounds nuw i8, ptr %1994, i64 2
  %1996 = load i16, ptr %1995, align 2, !tbaa !28
  %1997 = zext i16 %1996 to i64
  %1998 = getelementptr inbounds nuw [4 x i8], ptr %1959, i64 %1997
  %1999 = getelementptr inbounds nuw i8, ptr %1998, i64 2
  %2000 = load i16, ptr %1999, align 2, !tbaa !28
  %2001 = zext i16 %2000 to i32
  %2002 = add nuw nsw i32 %2001, 1
  %2003 = icmp sgt i32 %1968, %2001
  br i1 %2003, label %2009, label %2004

2004:                                             ; preds = %1988
  %2005 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1990, i32 1), !nosanitize !32
  %2006 = extractvalue { i32, i1 } %2005, 1, !nosanitize !32
  br i1 %2006, label %1979, label %2007, !prof !35, !nosanitize !32

2007:                                             ; preds = %2004
  %2008 = extractvalue { i32, i1 } %2005, 0, !nosanitize !32
  br label %2009

2009:                                             ; preds = %2007, %1988
  %2010 = phi i32 [ %1968, %2007 ], [ %2002, %1988 ]
  %2011 = phi i32 [ %2008, %2007 ], [ %1990, %1988 ]
  %2012 = trunc i32 %2010 to i16
  store i16 %2012, ptr %1995, align 2, !tbaa !28
  %2013 = icmp sgt i32 %1992, %1960
  br i1 %2013, label %2054, label %2014

2014:                                             ; preds = %2009
  %2015 = sext i32 %2010 to i64
  %2016 = getelementptr inbounds [2 x i8], ptr %500, i64 %2015
  %2017 = load i16, ptr %2016, align 2, !tbaa !61
  %2018 = add i16 %2017, 1
  store i16 %2018, ptr %2016, align 2, !tbaa !61
  %2019 = icmp slt i32 %1992, %1966
  br i1 %2019, label %2029, label %2020

2020:                                             ; preds = %2014
  %2021 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1992, i32 %1966), !nosanitize !32
  %2022 = extractvalue { i32, i1 } %2021, 1, !nosanitize !32
  br i1 %2022, label %2023, label %2024, !prof !35, !nosanitize !32

2023:                                             ; preds = %2020, %2082, %2074, %2106, %2110, %2115, %2060
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

2024:                                             ; preds = %2020
  %2025 = extractvalue { i32, i1 } %2021, 0, !nosanitize !32
  %2026 = sext i32 %2025 to i64
  %2027 = getelementptr inbounds [4 x i8], ptr %1964, i64 %2026
  %2028 = load i32, ptr %2027, align 4, !tbaa !4
  br label %2029

2029:                                             ; preds = %2024, %2014
  %2030 = phi i32 [ %2028, %2024 ], [ 0, %2014 ]
  %2031 = load i16, ptr %1994, align 2, !tbaa !28
  %2032 = zext i16 %2031 to i64
  %2033 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2010, i32 %2030), !nosanitize !32
  %2034 = extractvalue { i32, i1 } %2033, 1, !nosanitize !32
  br i1 %2034, label %1979, label %2035, !prof !35, !nosanitize !32

2035:                                             ; preds = %2029
  %2036 = extractvalue { i32, i1 } %2033, 0, !nosanitize !32
  %2037 = zext i32 %2036 to i64
  %2038 = mul nuw nsw i64 %2037, %2032
  %2039 = load i64, ptr %1984, align 8, !tbaa !51
  %2040 = add i64 %2039, %2038
  store i64 %2040, ptr %1984, align 8, !tbaa !51
  br i1 %1985, label %2054, label %2041

2041:                                             ; preds = %2035
  %2042 = getelementptr inbounds [4 x i8], ptr %1962, i64 %1993
  %2043 = getelementptr inbounds nuw i8, ptr %2042, i64 2
  %2044 = load i16, ptr %2043, align 2, !tbaa !28
  %2045 = zext i16 %2044 to i32
  %2046 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2045, i32 %2030), !nosanitize !32
  %2047 = extractvalue { i32, i1 } %2046, 1, !nosanitize !32
  br i1 %2047, label %1979, label %2048, !prof !35, !nosanitize !32

2048:                                             ; preds = %2041
  %2049 = extractvalue { i32, i1 } %2046, 0, !nosanitize !32
  %2050 = zext i32 %2049 to i64
  %2051 = mul nuw nsw i64 %2050, %2032
  %2052 = load i64, ptr %1986, align 8, !tbaa !52
  %2053 = add i64 %2052, %2051
  store i64 %2053, ptr %1986, align 8, !tbaa !52
  br label %2054

2054:                                             ; preds = %2048, %2035, %2009
  %2055 = add nsw i64 %1989, 1
  %2056 = and i64 %2055, 4294967295
  %2057 = icmp eq i64 %2056, 573
  br i1 %2057, label %2058, label %1988, !llvm.loop !62

2058:                                             ; preds = %2054
  %2059 = icmp eq i32 %2011, 0
  br i1 %2059, label %2146, label %2060

2060:                                             ; preds = %2058
  %2061 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1968, i32 -1)
  %2062 = extractvalue { i32, i1 } %2061, 1, !nosanitize !32
  %2063 = sext i32 %1968 to i64
  %2064 = getelementptr inbounds [2 x i8], ptr %500, i64 %2063
  br i1 %2062, label %2023, label %2065, !prof !35, !nosanitize !32

2065:                                             ; preds = %2060, %2092
  %2066 = phi i32 [ %2093, %2092 ], [ %2011, %2060 ]
  br label %2067

2067:                                             ; preds = %2074, %2065
  %2068 = phi { i32, i1 } [ %2075, %2074 ], [ %2061, %2065 ]
  %2069 = extractvalue { i32, i1 } %2068, 0
  %2070 = sext i32 %2069 to i64
  %2071 = getelementptr inbounds [2 x i8], ptr %500, i64 %2070
  %2072 = load i16, ptr %2071, align 2, !tbaa !61
  %2073 = icmp eq i16 %2072, 0
  br i1 %2073, label %2074, label %2077

2074:                                             ; preds = %2067
  %2075 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2069, i32 -1)
  %2076 = extractvalue { i32, i1 } %2075, 1, !nosanitize !32
  br i1 %2076, label %2023, label %2067, !prof !35, !llvm.loop !63, !nosanitize !32

2077:                                             ; preds = %2067
  %2078 = getelementptr inbounds [2 x i8], ptr %500, i64 %2070
  %2079 = add i16 %2072, -1
  store i16 %2079, ptr %2078, align 2, !tbaa !61
  %2080 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2069, i32 1), !nosanitize !32
  %2081 = extractvalue { i32, i1 } %2080, 1, !nosanitize !32
  br i1 %2081, label %1979, label %2082, !prof !35, !nosanitize !32

2082:                                             ; preds = %2077
  %2083 = extractvalue { i32, i1 } %2080, 0, !nosanitize !32
  %2084 = sext i32 %2083 to i64
  %2085 = getelementptr inbounds [2 x i8], ptr %500, i64 %2084
  %2086 = load i16, ptr %2085, align 2, !tbaa !61
  %2087 = add i16 %2086, 2
  store i16 %2087, ptr %2085, align 2, !tbaa !61
  %2088 = load i16, ptr %2064, align 2, !tbaa !61
  %2089 = add i16 %2088, -1
  store i16 %2089, ptr %2064, align 2, !tbaa !61
  %2090 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2066, i32 -2)
  %2091 = extractvalue { i32, i1 } %2090, 1, !nosanitize !32
  br i1 %2091, label %2023, label %2092, !prof !35, !nosanitize !32

2092:                                             ; preds = %2082
  %2093 = extractvalue { i32, i1 } %2090, 0, !nosanitize !32
  %2094 = icmp sgt i32 %2093, 0
  br i1 %2094, label %2065, label %2095, !llvm.loop !64

2095:                                             ; preds = %2092
  %2096 = icmp eq i32 %1968, 0
  br i1 %2096, label %2146, label %2097

2097:                                             ; preds = %2095, %2142
  %2098 = phi i64 [ %2143, %2142 ], [ %2063, %2095 ]
  %2099 = phi i32 [ %2107, %2142 ], [ 573, %2095 ]
  %2100 = getelementptr inbounds [2 x i8], ptr %500, i64 %2098
  %2101 = load i16, ptr %2100, align 2, !tbaa !61
  %2102 = icmp eq i16 %2101, 0
  br i1 %2102, label %2106, label %2103

2103:                                             ; preds = %2097
  %2104 = zext i16 %2101 to i32
  %2105 = trunc i64 %2098 to i16
  br label %2110

2106:                                             ; preds = %2139, %2097
  %2107 = phi i32 [ %2099, %2097 ], [ %2120, %2139 ]
  %2108 = and i64 %2098, 4294967295
  %2109 = icmp eq i64 %2108, 2147483648
  br i1 %2109, label %2023, label %2142, !prof !35, !nosanitize !32

2110:                                             ; preds = %2139, %2103
  %2111 = phi i32 [ %2099, %2103 ], [ %2120, %2139 ]
  %2112 = phi i32 [ %2104, %2103 ], [ %2140, %2139 ]
  %2113 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2111, i32 -1)
  %2114 = extractvalue { i32, i1 } %2113, 1, !nosanitize !32
  br i1 %2114, label %2023, label %2118, !prof !65, !nosanitize !32

2115:                                             ; preds = %2118
  %2116 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2120, i32 -1)
  %2117 = extractvalue { i32, i1 } %2116, 1, !nosanitize !32
  br i1 %2117, label %2023, label %2118, !prof !66, !llvm.loop !67, !nosanitize !32

2118:                                             ; preds = %2110, %2115
  %2119 = phi { i32, i1 } [ %2116, %2115 ], [ %2113, %2110 ]
  %2120 = extractvalue { i32, i1 } %2119, 0, !nosanitize !32
  %2121 = sext i32 %2120 to i64
  %2122 = getelementptr inbounds [4 x i8], ptr %223, i64 %2121
  %2123 = load i32, ptr %2122, align 4, !tbaa !4
  %2124 = icmp sgt i32 %2123, %1960
  br i1 %2124, label %2115, label %2125, !llvm.loop !67

2125:                                             ; preds = %2118
  %2126 = sext i32 %2123 to i64
  %2127 = getelementptr inbounds [4 x i8], ptr %1959, i64 %2126
  %2128 = getelementptr inbounds nuw i8, ptr %2127, i64 2
  %2129 = load i16, ptr %2128, align 2, !tbaa !28
  %2130 = zext i16 %2129 to i64
  %2131 = icmp eq i64 %2098, %2130
  br i1 %2131, label %2139, label %2132

2132:                                             ; preds = %2125
  %2133 = sub nsw i64 %2098, %2130
  %2134 = load i16, ptr %2127, align 2, !tbaa !28
  %2135 = zext i16 %2134 to i64
  %2136 = mul nsw i64 %2133, %2135
  %2137 = load i64, ptr %1984, align 8, !tbaa !51
  %2138 = add i64 %2136, %2137
  store i64 %2138, ptr %1984, align 8, !tbaa !51
  store i16 %2105, ptr %2128, align 2, !tbaa !28
  br label %2139

2139:                                             ; preds = %2132, %2125
  %2140 = add nsw i32 %2112, -1
  %2141 = icmp eq i32 %2140, 0
  br i1 %2141, label %2106, label %2110, !llvm.loop !67

2142:                                             ; preds = %2106
  %2143 = add nsw i64 %2098, -1
  %2144 = and i64 %2143, 4294967295
  %2145 = icmp eq i64 %2144, 0
  br i1 %2145, label %2146, label %2097, !llvm.loop !68

2146:                                             ; preds = %2142, %2095, %2058, %1980
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %2147 = load i16, ptr %500, align 2, !tbaa !61
  %2148 = shl i16 %2147, 1
  %2149 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %2148, ptr %2149, align 2, !tbaa !61
  %2150 = load i16, ptr %682, align 2, !tbaa !61
  %2151 = add i16 %2150, %2148
  %2152 = shl i16 %2151, 1
  %2153 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2152, ptr %2153, align 4, !tbaa !61
  %2154 = load i16, ptr %687, align 2, !tbaa !61
  %2155 = add i16 %2154, %2152
  %2156 = shl i16 %2155, 1
  %2157 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2156, ptr %2157, align 2, !tbaa !61
  %2158 = load i16, ptr %692, align 2, !tbaa !61
  %2159 = add i16 %2158, %2156
  %2160 = shl i16 %2159, 1
  %2161 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %2160, ptr %2161, align 8, !tbaa !61
  %2162 = load i16, ptr %697, align 2, !tbaa !61
  %2163 = add i16 %2162, %2160
  %2164 = shl i16 %2163, 1
  %2165 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %2164, ptr %2165, align 2, !tbaa !61
  %2166 = load i16, ptr %702, align 2, !tbaa !61
  %2167 = add i16 %2166, %2164
  %2168 = shl i16 %2167, 1
  %2169 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %2168, ptr %2169, align 4, !tbaa !61
  %2170 = load i16, ptr %707, align 2, !tbaa !61
  %2171 = add i16 %2170, %2168
  %2172 = shl i16 %2171, 1
  %2173 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %2172, ptr %2173, align 2, !tbaa !61
  %2174 = load i16, ptr %712, align 2, !tbaa !61
  %2175 = add i16 %2174, %2172
  %2176 = shl i16 %2175, 1
  %2177 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %2176, ptr %2177, align 16, !tbaa !61
  %2178 = load i16, ptr %717, align 2, !tbaa !61
  %2179 = add i16 %2178, %2176
  %2180 = shl i16 %2179, 1
  %2181 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %2180, ptr %2181, align 2, !tbaa !61
  %2182 = load i16, ptr %722, align 2, !tbaa !61
  %2183 = add i16 %2182, %2180
  %2184 = shl i16 %2183, 1
  %2185 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %2184, ptr %2185, align 4, !tbaa !61
  %2186 = load i16, ptr %727, align 2, !tbaa !61
  %2187 = add i16 %2186, %2184
  %2188 = shl i16 %2187, 1
  %2189 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %2188, ptr %2189, align 2, !tbaa !61
  %2190 = load i16, ptr %732, align 2, !tbaa !61
  %2191 = add i16 %2190, %2188
  %2192 = shl i16 %2191, 1
  %2193 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2192, ptr %2193, align 8, !tbaa !61
  %2194 = load i16, ptr %737, align 2, !tbaa !61
  %2195 = add i16 %2194, %2192
  %2196 = shl i16 %2195, 1
  %2197 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2196, ptr %2197, align 2, !tbaa !61
  %2198 = load i16, ptr %742, align 2, !tbaa !61
  %2199 = add i16 %2198, %2196
  %2200 = shl i16 %2199, 1
  %2201 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2200, ptr %2201, align 4, !tbaa !61
  %2202 = load i16, ptr %747, align 2, !tbaa !61
  %2203 = add i16 %2202, %2200
  %2204 = shl i16 %2203, 1
  %2205 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2204, ptr %2205, align 2, !tbaa !61
  %2206 = icmp slt i32 %1692, 0
  br i1 %2206, label %2268, label %2208

2207:                                             ; preds = %2262
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2208:                                             ; preds = %2146, %2264
  %2209 = phi i64 [ %2265, %2264 ], [ 0, %2146 ]
  %2210 = getelementptr inbounds nuw [4 x i8], ptr %1625, i64 %2209
  %2211 = getelementptr inbounds nuw i8, ptr %2210, i64 2
  %2212 = load i16, ptr %2211, align 2, !tbaa !28
  %2213 = icmp eq i16 %2212, 0
  br i1 %2213, label %2262, label %2214

2214:                                             ; preds = %2208
  %2215 = zext i16 %2212 to i32
  %2216 = zext i16 %2212 to i64
  %2217 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %2216
  %2218 = load i16, ptr %2217, align 2, !tbaa !61
  %2219 = add i16 %2218, 1
  store i16 %2219, ptr %2217, align 2, !tbaa !61
  %2220 = and i32 %2215, 3
  %2221 = icmp ult i16 %2212, 4
  br i1 %2221, label %2246, label %2222

2222:                                             ; preds = %2214
  %2223 = and i32 %2215, 65532
  br label %2224

2224:                                             ; preds = %2224, %2222
  %2225 = phi i16 [ %2218, %2222 ], [ %2241, %2224 ]
  %2226 = phi i16 [ 0, %2222 ], [ %2240, %2224 ]
  %2227 = phi i32 [ 0, %2222 ], [ %2242, %2224 ]
  %2228 = and i16 %2225, 1
  %2229 = or disjoint i16 %2226, %2228
  %2230 = shl i16 %2229, 2
  %2231 = and i16 %2225, 2
  %2232 = or disjoint i16 %2230, %2231
  %2233 = lshr i16 %2225, 2
  %2234 = and i16 %2233, 1
  %2235 = or disjoint i16 %2232, %2234
  %2236 = shl i16 %2235, 1
  %2237 = lshr i16 %2225, 3
  %2238 = and i16 %2237, 1
  %2239 = or disjoint i16 %2236, %2238
  %2240 = shl i16 %2239, 1
  %2241 = lshr i16 %2225, 4
  %2242 = add i32 %2227, 4
  %2243 = icmp eq i32 %2242, %2223
  br i1 %2243, label %2244, label %2224, !llvm.loop !69

2244:                                             ; preds = %2224
  %2245 = icmp eq i32 %2220, 0
  br i1 %2245, label %2260, label %2246

2246:                                             ; preds = %2244, %2214
  %2247 = phi i16 [ %2218, %2214 ], [ %2241, %2244 ]
  %2248 = phi i16 [ 0, %2214 ], [ %2240, %2244 ]
  %2249 = icmp ne i32 %2220, 0
  tail call void @llvm.assume(i1 %2249)
  br label %2250

2250:                                             ; preds = %2250, %2246
  %2251 = phi i16 [ %2247, %2246 ], [ %2257, %2250 ]
  %2252 = phi i16 [ %2248, %2246 ], [ %2256, %2250 ]
  %2253 = phi i32 [ 0, %2246 ], [ %2258, %2250 ]
  %2254 = and i16 %2251, 1
  %2255 = or disjoint i16 %2252, %2254
  %2256 = shl i16 %2255, 1
  %2257 = lshr i16 %2251, 1
  %2258 = add i32 %2253, 1
  %2259 = icmp eq i32 %2258, %2220
  br i1 %2259, label %2260, label %2250, !llvm.loop !78

2260:                                             ; preds = %2250, %2244
  %2261 = phi i16 [ %2239, %2244 ], [ %2255, %2250 ]
  store i16 %2261, ptr %2210, align 2, !tbaa !28
  br label %2262

2262:                                             ; preds = %2260, %2208
  %2263 = icmp eq i64 %2209, 2147483647
  br i1 %2263, label %2207, label %2264, !prof !35, !nosanitize !32

2264:                                             ; preds = %2262
  %2265 = add nuw nsw i64 %2209, 1
  %2266 = trunc i64 %2265 to i32
  %2267 = icmp slt i32 %1692, %2266
  br i1 %2267, label %2268, label %2208, !llvm.loop !72

2268:                                             ; preds = %2264, %2146
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %2269 = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %2270 = load i16, ptr %2269, align 2, !tbaa !28
  %2271 = icmp eq i16 %2270, 0
  br i1 %2271, label %2272, label %2333

2272:                                             ; preds = %2268
  %2273 = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %2274 = load i16, ptr %2273, align 2, !tbaa !28
  %2275 = icmp eq i16 %2274, 0
  br i1 %2275, label %2276, label %2333

2276:                                             ; preds = %2272
  %2277 = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %2278 = load i16, ptr %2277, align 2, !tbaa !28
  %2279 = icmp eq i16 %2278, 0
  br i1 %2279, label %2280, label %2333

2280:                                             ; preds = %2276
  %2281 = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %2282 = load i16, ptr %2281, align 2, !tbaa !28
  %2283 = icmp eq i16 %2282, 0
  br i1 %2283, label %2284, label %2333

2284:                                             ; preds = %2280
  %2285 = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %2286 = load i16, ptr %2285, align 2, !tbaa !28
  %2287 = icmp eq i16 %2286, 0
  br i1 %2287, label %2288, label %2333

2288:                                             ; preds = %2284
  %2289 = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %2290 = load i16, ptr %2289, align 2, !tbaa !28
  %2291 = icmp eq i16 %2290, 0
  br i1 %2291, label %2292, label %2333

2292:                                             ; preds = %2288
  %2293 = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %2294 = load i16, ptr %2293, align 2, !tbaa !28
  %2295 = icmp eq i16 %2294, 0
  br i1 %2295, label %2296, label %2333

2296:                                             ; preds = %2292
  %2297 = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %2298 = load i16, ptr %2297, align 2, !tbaa !28
  %2299 = icmp eq i16 %2298, 0
  br i1 %2299, label %2300, label %2333

2300:                                             ; preds = %2296
  %2301 = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %2302 = load i16, ptr %2301, align 2, !tbaa !28
  %2303 = icmp eq i16 %2302, 0
  br i1 %2303, label %2304, label %2333

2304:                                             ; preds = %2300
  %2305 = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %2306 = load i16, ptr %2305, align 2, !tbaa !28
  %2307 = icmp eq i16 %2306, 0
  br i1 %2307, label %2308, label %2333

2308:                                             ; preds = %2304
  %2309 = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %2310 = load i16, ptr %2309, align 2, !tbaa !28
  %2311 = icmp eq i16 %2310, 0
  br i1 %2311, label %2312, label %2333

2312:                                             ; preds = %2308
  %2313 = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %2314 = load i16, ptr %2313, align 2, !tbaa !28
  %2315 = icmp eq i16 %2314, 0
  br i1 %2315, label %2316, label %2333

2316:                                             ; preds = %2312
  %2317 = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %2318 = load i16, ptr %2317, align 2, !tbaa !28
  %2319 = icmp eq i16 %2318, 0
  br i1 %2319, label %2320, label %2333

2320:                                             ; preds = %2316
  %2321 = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %2322 = load i16, ptr %2321, align 2, !tbaa !28
  %2323 = icmp eq i16 %2322, 0
  br i1 %2323, label %2324, label %2333

2324:                                             ; preds = %2320
  %2325 = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %2326 = load i16, ptr %2325, align 2, !tbaa !28
  %2327 = icmp eq i16 %2326, 0
  br i1 %2327, label %2328, label %2333

2328:                                             ; preds = %2324
  %2329 = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %2330 = load i16, ptr %2329, align 2, !tbaa !28
  %2331 = icmp eq i16 %2330, 0
  %2332 = select i1 %2331, i32 2, i32 3
  br label %2333

2333:                                             ; preds = %2268, %2272, %2276, %2280, %2284, %2288, %2292, %2296, %2300, %2304, %2308, %2312, %2316, %2320, %2324, %2328
  %2334 = phi i32 [ 18, %2268 ], [ 10, %2300 ], [ 17, %2272 ], [ %2332, %2328 ], [ 16, %2276 ], [ 8, %2308 ], [ 15, %2280 ], [ 4, %2324 ], [ 14, %2284 ], [ 9, %2304 ], [ 13, %2288 ], [ 5, %2320 ], [ 12, %2292 ], [ 7, %2312 ], [ 11, %2296 ], [ 6, %2316 ]
  %2335 = mul nuw nsw i32 %2334, 3
  %2336 = add nuw nsw i32 %2335, 17
  %2337 = zext nneg i32 %2336 to i64
  %2338 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2339 = load i64, ptr %2338, align 8, !tbaa !51
  %2340 = add i64 %2339, %2337
  store i64 %2340, ptr %2338, align 8, !tbaa !51
  %2341 = add i64 %2340, 10
  %2342 = lshr i64 %2341, 3
  %2343 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2344 = load i64, ptr %2343, align 8, !tbaa !52
  %2345 = add i64 %2344, 10
  %2346 = lshr i64 %2345, 3
  %2347 = icmp samesign ugt i64 %2346, %2342
  br i1 %2347, label %2348, label %2354

2348:                                             ; preds = %2333
  %2349 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2350 = load i32, ptr %2349, align 8, !tbaa !79
  %2351 = icmp eq i32 %2350, 4
  br i1 %2351, label %2354, label %2360

2352:                                             ; preds = %4
  %2353 = add i64 %2, 5
  br label %2354

2354:                                             ; preds = %2333, %2348, %2352
  %2355 = phi i64 [ %2353, %2352 ], [ %2346, %2348 ], [ %2346, %2333 ]
  %2356 = add i64 %2, 4
  %2357 = icmp ule i64 %2356, %2355
  %2358 = icmp ne ptr %1, null
  %2359 = and i1 %2358, %2357
  br i1 %2359, label %2365, label %2478

2360:                                             ; preds = %2348
  %2361 = add i64 %2, 4
  %2362 = icmp ule i64 %2361, %2342
  %2363 = icmp ne ptr %1, null
  %2364 = and i1 %2363, %2362
  br i1 %2364, label %2365, label %2839

2365:                                             ; preds = %2360, %2354
  %2366 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2367 = load i32, ptr %2366, align 4, !tbaa !26
  %2368 = icmp sgt i32 %2367, 13
  %2369 = shl i32 %3, %2367
  %2370 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2371 = load i16, ptr %2370, align 8, !tbaa !25
  %2372 = trunc i32 %2369 to i16
  %2373 = or i16 %2371, %2372
  store i16 %2373, ptr %2370, align 8, !tbaa !25
  br i1 %2368, label %2376, label %2401

2374:                                             ; preds = %2376
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

2375:                                             ; preds = %2394
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2376:                                             ; preds = %2365
  %2377 = trunc i16 %2373 to i8
  %2378 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2379 = load ptr, ptr %2378, align 8, !tbaa !33
  %2380 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2381 = load i64, ptr %2380, align 8, !tbaa !34
  %2382 = add i64 %2381, 1
  store i64 %2382, ptr %2380, align 8, !tbaa !34
  %2383 = getelementptr inbounds nuw i8, ptr %2379, i64 %2381
  store i8 %2377, ptr %2383, align 1, !tbaa !28
  %2384 = load i16, ptr %2370, align 8, !tbaa !25
  %2385 = lshr i16 %2384, 8
  %2386 = trunc nuw i16 %2385 to i8
  %2387 = load ptr, ptr %2378, align 8, !tbaa !33
  %2388 = load i64, ptr %2380, align 8, !tbaa !34
  %2389 = add i64 %2388, 1
  store i64 %2389, ptr %2380, align 8, !tbaa !34
  %2390 = getelementptr inbounds nuw i8, ptr %2387, i64 %2388
  store i8 %2386, ptr %2390, align 1, !tbaa !28
  %2391 = load i32, ptr %2366, align 4, !tbaa !26
  %2392 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2391), !nosanitize !32
  %2393 = extractvalue { i32, i1 } %2392, 1, !nosanitize !32
  br i1 %2393, label %2374, label %2394, !prof !35, !nosanitize !32

2394:                                             ; preds = %2376
  %2395 = extractvalue { i32, i1 } %2392, 0, !nosanitize !32
  %2396 = and i32 %3, 65535
  %2397 = lshr i32 %2396, %2395
  %2398 = trunc nuw i32 %2397 to i16
  store i16 %2398, ptr %2370, align 8, !tbaa !25
  %2399 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2391, i32 -13), !nosanitize !32
  %2400 = extractvalue { i32, i1 } %2399, 1, !nosanitize !32
  br i1 %2400, label %2375, label %2404, !prof !35, !nosanitize !32

2401:                                             ; preds = %2365
  %2402 = add nsw i32 %2367, 3
  %2403 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2402, 0
  br label %2404

2404:                                             ; preds = %2401, %2394
  %2405 = phi i16 [ %2398, %2394 ], [ %2373, %2401 ]
  %2406 = phi { i32, i1 } [ %2399, %2394 ], [ %2403, %2401 ]
  %2407 = extractvalue { i32, i1 } %2406, 0
  store i32 %2407, ptr %2366, align 4, !tbaa !26
  %2408 = icmp sgt i32 %2407, 8
  br i1 %2408, label %2409, label %2424

2409:                                             ; preds = %2404
  %2410 = trunc i16 %2405 to i8
  %2411 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2412 = load ptr, ptr %2411, align 8, !tbaa !33
  %2413 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2414 = load i64, ptr %2413, align 8, !tbaa !34
  %2415 = add i64 %2414, 1
  store i64 %2415, ptr %2413, align 8, !tbaa !34
  %2416 = getelementptr inbounds nuw i8, ptr %2412, i64 %2414
  store i8 %2410, ptr %2416, align 1, !tbaa !28
  %2417 = load i16, ptr %2370, align 8, !tbaa !25
  %2418 = lshr i16 %2417, 8
  %2419 = trunc nuw i16 %2418 to i8
  %2420 = load ptr, ptr %2411, align 8, !tbaa !33
  %2421 = load i64, ptr %2413, align 8, !tbaa !34
  %2422 = add i64 %2421, 1
  store i64 %2422, ptr %2413, align 8, !tbaa !34
  %2423 = getelementptr inbounds nuw i8, ptr %2420, i64 %2421
  store i8 %2419, ptr %2423, align 1, !tbaa !28
  br label %2434

2424:                                             ; preds = %2404
  %2425 = icmp sgt i32 %2407, 0
  br i1 %2425, label %2426, label %2434

2426:                                             ; preds = %2424
  %2427 = trunc i16 %2405 to i8
  %2428 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2429 = load ptr, ptr %2428, align 8, !tbaa !33
  %2430 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2431 = load i64, ptr %2430, align 8, !tbaa !34
  %2432 = add i64 %2431, 1
  store i64 %2432, ptr %2430, align 8, !tbaa !34
  %2433 = getelementptr inbounds nuw i8, ptr %2429, i64 %2431
  store i8 %2427, ptr %2433, align 1, !tbaa !28
  br label %2434

2434:                                             ; preds = %2426, %2424, %2409
  %2435 = load i32, ptr %2366, align 4, !tbaa !26
  %2436 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2435, i32 -1)
  %2437 = extractvalue { i32, i1 } %2436, 1, !nosanitize !32
  br i1 %2437, label %2438, label %2439, !prof !35, !nosanitize !32

2438:                                             ; preds = %2434
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

2439:                                             ; preds = %2434
  %2440 = extractvalue { i32, i1 } %2436, 0, !nosanitize !32
  %2441 = and i32 %2440, 7
  %2442 = add nuw nsw i32 %2441, 1
  %2443 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %2442, ptr %2443, align 8, !tbaa !27
  store i16 0, ptr %2370, align 8, !tbaa !25
  store i32 0, ptr %2366, align 4, !tbaa !26
  %2444 = trunc i64 %2 to i8
  %2445 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2446 = load ptr, ptr %2445, align 8, !tbaa !33
  %2447 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2448 = load i64, ptr %2447, align 8, !tbaa !34
  %2449 = add i64 %2448, 1
  store i64 %2449, ptr %2447, align 8, !tbaa !34
  %2450 = getelementptr inbounds nuw i8, ptr %2446, i64 %2448
  store i8 %2444, ptr %2450, align 1, !tbaa !28
  %2451 = lshr i64 %2, 8
  %2452 = trunc i64 %2451 to i8
  %2453 = load ptr, ptr %2445, align 8, !tbaa !33
  %2454 = load i64, ptr %2447, align 8, !tbaa !34
  %2455 = add i64 %2454, 1
  store i64 %2455, ptr %2447, align 8, !tbaa !34
  %2456 = getelementptr inbounds nuw i8, ptr %2453, i64 %2454
  store i8 %2452, ptr %2456, align 1, !tbaa !28
  %2457 = trunc i64 %2 to i32
  %2458 = xor i32 %2457, 65535
  %2459 = trunc i32 %2458 to i8
  %2460 = load ptr, ptr %2445, align 8, !tbaa !33
  %2461 = load i64, ptr %2447, align 8, !tbaa !34
  %2462 = add i64 %2461, 1
  store i64 %2462, ptr %2447, align 8, !tbaa !34
  %2463 = getelementptr inbounds nuw i8, ptr %2460, i64 %2461
  store i8 %2459, ptr %2463, align 1, !tbaa !28
  %2464 = lshr i32 %2458, 8
  %2465 = trunc i32 %2464 to i8
  %2466 = load ptr, ptr %2445, align 8, !tbaa !33
  %2467 = load i64, ptr %2447, align 8, !tbaa !34
  %2468 = add i64 %2467, 1
  store i64 %2468, ptr %2447, align 8, !tbaa !34
  %2469 = getelementptr inbounds nuw i8, ptr %2466, i64 %2467
  store i8 %2465, ptr %2469, align 1, !tbaa !28
  %2470 = icmp eq i64 %2, 0
  br i1 %2470, label %2475, label %2471

2471:                                             ; preds = %2439
  %2472 = load ptr, ptr %2445, align 8, !tbaa !33
  %2473 = load i64, ptr %2447, align 8, !tbaa !34
  %2474 = getelementptr inbounds nuw i8, ptr %2472, i64 %2473
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2474, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %2475

2475:                                             ; preds = %2439, %2471
  %2476 = load i64, ptr %2447, align 8, !tbaa !34
  %2477 = add i64 %2476, %2
  store i64 %2477, ptr %2447, align 8, !tbaa !34
  br label %4173

2478:                                             ; preds = %2354
  %2479 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2480 = load i32, ptr %2479, align 4, !tbaa !26
  %2481 = icmp sgt i32 %2480, 13
  %2482 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2), !nosanitize !32
  %2483 = extractvalue { i32, i1 } %2482, 1, !nosanitize !32
  br i1 %2481, label %2485, label %2518

2484:                                             ; preds = %2846, %2487
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

2485:                                             ; preds = %2478
  br i1 %2483, label %2486, label %2487, !prof !35, !nosanitize !32

2486:                                             ; preds = %2895, %2887, %2877, %2870, %2845, %2518, %2511, %2485
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2487:                                             ; preds = %2485
  %2488 = extractvalue { i32, i1 } %2482, 0, !nosanitize !32
  %2489 = shl i32 %2488, %2480
  %2490 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2491 = load i16, ptr %2490, align 8, !tbaa !25
  %2492 = trunc i32 %2489 to i16
  %2493 = or i16 %2491, %2492
  store i16 %2493, ptr %2490, align 8, !tbaa !25
  %2494 = trunc i16 %2493 to i8
  %2495 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2496 = load ptr, ptr %2495, align 8, !tbaa !33
  %2497 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2498 = load i64, ptr %2497, align 8, !tbaa !34
  %2499 = add i64 %2498, 1
  store i64 %2499, ptr %2497, align 8, !tbaa !34
  %2500 = getelementptr inbounds nuw i8, ptr %2496, i64 %2498
  store i8 %2494, ptr %2500, align 1, !tbaa !28
  %2501 = load i16, ptr %2490, align 8, !tbaa !25
  %2502 = lshr i16 %2501, 8
  %2503 = trunc nuw i16 %2502 to i8
  %2504 = load ptr, ptr %2495, align 8, !tbaa !33
  %2505 = load i64, ptr %2497, align 8, !tbaa !34
  %2506 = add i64 %2505, 1
  store i64 %2506, ptr %2497, align 8, !tbaa !34
  %2507 = getelementptr inbounds nuw i8, ptr %2504, i64 %2505
  store i8 %2503, ptr %2507, align 1, !tbaa !28
  %2508 = load i32, ptr %2479, align 4, !tbaa !26
  %2509 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2508), !nosanitize !32
  %2510 = extractvalue { i32, i1 } %2509, 1, !nosanitize !32
  br i1 %2510, label %2484, label %2511, !prof !35, !nosanitize !32

2511:                                             ; preds = %2487
  %2512 = extractvalue { i32, i1 } %2509, 0, !nosanitize !32
  %2513 = and i32 %2488, 65535
  %2514 = lshr i32 %2513, %2512
  %2515 = trunc nuw i32 %2514 to i16
  store i16 %2515, ptr %2490, align 8, !tbaa !25
  %2516 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2508, i32 -13), !nosanitize !32
  %2517 = extractvalue { i32, i1 } %2516, 1, !nosanitize !32
  br i1 %2517, label %2486, label %2528, !prof !35, !nosanitize !32

2518:                                             ; preds = %2478
  br i1 %2483, label %2486, label %2519, !prof !35, !nosanitize !32

2519:                                             ; preds = %2518
  %2520 = extractvalue { i32, i1 } %2482, 0, !nosanitize !32
  %2521 = shl i32 %2520, %2480
  %2522 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2523 = load i16, ptr %2522, align 8, !tbaa !25
  %2524 = trunc i32 %2521 to i16
  %2525 = or i16 %2523, %2524
  store i16 %2525, ptr %2522, align 8, !tbaa !25
  %2526 = add nsw i32 %2480, 3
  %2527 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2526, 0
  br label %2528

2528:                                             ; preds = %2519, %2511
  %2529 = phi i16 [ %2515, %2511 ], [ %2525, %2519 ]
  %2530 = phi { i32, i1 } [ %2516, %2511 ], [ %2527, %2519 ]
  %2531 = extractvalue { i32, i1 } %2530, 0
  store i32 %2531, ptr %2479, align 4, !tbaa !26
  %2532 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %2533 = load i32, ptr %2532, align 4, !tbaa !31
  %2534 = icmp eq i32 %2533, 0
  br i1 %2534, label %2807, label %2535

2535:                                             ; preds = %2528
  %2536 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %2537 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2538 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2539 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %2540

2540:                                             ; preds = %2802, %2535
  %2541 = phi i16 [ %2803, %2802 ], [ %2529, %2535 ]
  %2542 = phi i32 [ %2804, %2802 ], [ %2531, %2535 ]
  %2543 = phi i32 [ %2557, %2802 ], [ 0, %2535 ]
  %2544 = load ptr, ptr %2536, align 8, !tbaa !80
  %2545 = add nuw i32 %2543, 1
  %2546 = zext i32 %2543 to i64
  %2547 = getelementptr inbounds nuw i8, ptr %2544, i64 %2546
  %2548 = load i8, ptr %2547, align 1, !tbaa !28
  %2549 = zext i8 %2548 to i32
  %2550 = add i32 %2543, 2
  %2551 = zext i32 %2545 to i64
  %2552 = getelementptr inbounds nuw i8, ptr %2544, i64 %2551
  %2553 = load i8, ptr %2552, align 1, !tbaa !28
  %2554 = zext i8 %2553 to i32
  %2555 = shl nuw nsw i32 %2554, 8
  %2556 = or disjoint i32 %2555, %2549
  %2557 = add i32 %2543, 3
  %2558 = zext i32 %2550 to i64
  %2559 = getelementptr inbounds nuw i8, ptr %2544, i64 %2558
  %2560 = load i8, ptr %2559, align 1, !tbaa !28
  %2561 = zext i8 %2560 to i32
  %2562 = icmp eq i32 %2556, 0
  %2563 = zext i8 %2560 to i64
  br i1 %2562, label %2564, label %2604

2564:                                             ; preds = %2540
  %2565 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2563
  %2566 = getelementptr inbounds nuw i8, ptr %2565, i64 2
  %2567 = load i16, ptr %2566, align 2, !tbaa !28
  %2568 = zext i16 %2567 to i32
  %2569 = sub nsw i32 16, %2568
  %2570 = icmp sgt i32 %2542, %2569
  %2571 = load i16, ptr %2565, align 4, !tbaa !28
  %2572 = zext i16 %2571 to i32
  %2573 = shl i32 %2572, %2542
  %2574 = trunc i32 %2573 to i16
  %2575 = or i16 %2541, %2574
  store i16 %2575, ptr %2537, align 8, !tbaa !25
  br i1 %2570, label %2577, label %2601

2576:                                             ; preds = %2784, %2768, %2756, %2724, %2685, %2669, %2660, %2654, %2620, %2577, %2812
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

2577:                                             ; preds = %2564
  %2578 = trunc i16 %2575 to i8
  %2579 = load ptr, ptr %2538, align 8, !tbaa !33
  %2580 = load i64, ptr %2539, align 8, !tbaa !34
  %2581 = add i64 %2580, 1
  store i64 %2581, ptr %2539, align 8, !tbaa !34
  %2582 = getelementptr inbounds nuw i8, ptr %2579, i64 %2580
  store i8 %2578, ptr %2582, align 1, !tbaa !28
  %2583 = load i16, ptr %2537, align 8, !tbaa !25
  %2584 = lshr i16 %2583, 8
  %2585 = trunc nuw i16 %2584 to i8
  %2586 = load ptr, ptr %2538, align 8, !tbaa !33
  %2587 = load i64, ptr %2539, align 8, !tbaa !34
  %2588 = add i64 %2587, 1
  store i64 %2588, ptr %2539, align 8, !tbaa !34
  %2589 = getelementptr inbounds nuw i8, ptr %2586, i64 %2587
  store i8 %2585, ptr %2589, align 1, !tbaa !28
  %2590 = load i32, ptr %2479, align 4, !tbaa !26
  %2591 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2590), !nosanitize !32
  %2592 = extractvalue { i32, i1 } %2591, 1, !nosanitize !32
  br i1 %2592, label %2576, label %2593, !prof !35, !nosanitize !32

2593:                                             ; preds = %2577
  %2594 = extractvalue { i32, i1 } %2591, 0, !nosanitize !32
  %2595 = lshr i32 %2572, %2594
  %2596 = trunc nuw i32 %2595 to i16
  store i16 %2596, ptr %2537, align 8, !tbaa !25
  %2597 = add nsw i32 %2568, -16
  %2598 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2590, i32 %2597), !nosanitize !32
  %2599 = extractvalue { i32, i1 } %2598, 1, !nosanitize !32
  br i1 %2599, label %2600, label %2798, !prof !35, !nosanitize !32

2600:                                             ; preds = %2795, %2791, %2740, %2696, %2692, %2636, %2593, %2830
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2601:                                             ; preds = %2564
  %2602 = add nsw i32 %2542, %2568
  %2603 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2602, 0
  br label %2798

2604:                                             ; preds = %2540
  %2605 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %2563
  %2606 = load i8, ptr %2605, align 1, !tbaa !28
  %2607 = zext i8 %2606 to i64
  %2608 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2607
  %2609 = getelementptr inbounds nuw i8, ptr %2608, i64 1028
  %2610 = getelementptr inbounds nuw i8, ptr %2608, i64 1030
  %2611 = load i16, ptr %2610, align 2, !tbaa !28
  %2612 = zext i16 %2611 to i32
  %2613 = sub nsw i32 16, %2612
  %2614 = icmp sgt i32 %2542, %2613
  %2615 = load i16, ptr %2609, align 4, !tbaa !28
  %2616 = zext i16 %2615 to i32
  %2617 = shl i32 %2616, %2542
  %2618 = trunc i32 %2617 to i16
  %2619 = or i16 %2541, %2618
  store i16 %2619, ptr %2537, align 8, !tbaa !25
  br i1 %2614, label %2620, label %2643

2620:                                             ; preds = %2604
  %2621 = trunc i16 %2619 to i8
  %2622 = load ptr, ptr %2538, align 8, !tbaa !33
  %2623 = load i64, ptr %2539, align 8, !tbaa !34
  %2624 = add i64 %2623, 1
  store i64 %2624, ptr %2539, align 8, !tbaa !34
  %2625 = getelementptr inbounds nuw i8, ptr %2622, i64 %2623
  store i8 %2621, ptr %2625, align 1, !tbaa !28
  %2626 = load i16, ptr %2537, align 8, !tbaa !25
  %2627 = lshr i16 %2626, 8
  %2628 = trunc nuw i16 %2627 to i8
  %2629 = load ptr, ptr %2538, align 8, !tbaa !33
  %2630 = load i64, ptr %2539, align 8, !tbaa !34
  %2631 = add i64 %2630, 1
  store i64 %2631, ptr %2539, align 8, !tbaa !34
  %2632 = getelementptr inbounds nuw i8, ptr %2629, i64 %2630
  store i8 %2628, ptr %2632, align 1, !tbaa !28
  %2633 = load i32, ptr %2479, align 4, !tbaa !26
  %2634 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2633), !nosanitize !32
  %2635 = extractvalue { i32, i1 } %2634, 1, !nosanitize !32
  br i1 %2635, label %2576, label %2636, !prof !35, !nosanitize !32

2636:                                             ; preds = %2620
  %2637 = extractvalue { i32, i1 } %2634, 0, !nosanitize !32
  %2638 = lshr i32 %2616, %2637
  %2639 = trunc nuw i32 %2638 to i16
  store i16 %2639, ptr %2537, align 8, !tbaa !25
  %2640 = add nsw i32 %2612, -16
  %2641 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2633, i32 %2640), !nosanitize !32
  %2642 = extractvalue { i32, i1 } %2641, 1, !nosanitize !32
  br i1 %2642, label %2600, label %2646, !prof !35, !nosanitize !32

2643:                                             ; preds = %2604
  %2644 = add nsw i32 %2542, %2612
  %2645 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2644, 0
  br label %2646

2646:                                             ; preds = %2643, %2636
  %2647 = phi i16 [ %2639, %2636 ], [ %2619, %2643 ]
  %2648 = phi { i32, i1 } [ %2641, %2636 ], [ %2645, %2643 ]
  %2649 = extractvalue { i32, i1 } %2648, 0
  store i32 %2649, ptr %2479, align 4, !tbaa !26
  %2650 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %2607
  %2651 = load i32, ptr %2650, align 4, !tbaa !4
  %2652 = add i8 %2606, -28
  %2653 = icmp ult i8 %2652, -20
  br i1 %2653, label %2703, label %2654

2654:                                             ; preds = %2646
  %2655 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %2607
  %2656 = load i32, ptr %2655, align 4, !tbaa !4
  %2657 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2561, i32 %2656), !nosanitize !32
  %2658 = extractvalue { i32, i1 } %2657, 0, !nosanitize !32
  %2659 = extractvalue { i32, i1 } %2657, 1, !nosanitize !32
  br i1 %2659, label %2576, label %2660, !prof !35, !nosanitize !32

2660:                                             ; preds = %2654
  %2661 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2651), !nosanitize !32
  %2662 = extractvalue { i32, i1 } %2661, 1, !nosanitize !32
  br i1 %2662, label %2576, label %2663, !prof !35, !nosanitize !32

2663:                                             ; preds = %2660
  %2664 = extractvalue { i32, i1 } %2661, 0, !nosanitize !32
  %2665 = icmp sgt i32 %2649, %2664
  %2666 = shl i32 %2658, %2649
  %2667 = trunc i32 %2666 to i16
  %2668 = or i16 %2647, %2667
  store i16 %2668, ptr %2537, align 8, !tbaa !25
  br i1 %2665, label %2669, label %2696

2669:                                             ; preds = %2663
  %2670 = trunc i16 %2668 to i8
  %2671 = load ptr, ptr %2538, align 8, !tbaa !33
  %2672 = load i64, ptr %2539, align 8, !tbaa !34
  %2673 = add i64 %2672, 1
  store i64 %2673, ptr %2539, align 8, !tbaa !34
  %2674 = getelementptr inbounds nuw i8, ptr %2671, i64 %2672
  store i8 %2670, ptr %2674, align 1, !tbaa !28
  %2675 = load i16, ptr %2537, align 8, !tbaa !25
  %2676 = lshr i16 %2675, 8
  %2677 = trunc nuw i16 %2676 to i8
  %2678 = load ptr, ptr %2538, align 8, !tbaa !33
  %2679 = load i64, ptr %2539, align 8, !tbaa !34
  %2680 = add i64 %2679, 1
  store i64 %2680, ptr %2539, align 8, !tbaa !34
  %2681 = getelementptr inbounds nuw i8, ptr %2678, i64 %2679
  store i8 %2677, ptr %2681, align 1, !tbaa !28
  %2682 = load i32, ptr %2479, align 4, !tbaa !26
  %2683 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2682), !nosanitize !32
  %2684 = extractvalue { i32, i1 } %2683, 1, !nosanitize !32
  br i1 %2684, label %2576, label %2685, !prof !35, !nosanitize !32

2685:                                             ; preds = %2669
  %2686 = extractvalue { i32, i1 } %2683, 0, !nosanitize !32
  %2687 = and i32 %2658, 65535
  %2688 = lshr i32 %2687, %2686
  %2689 = trunc nuw i32 %2688 to i16
  store i16 %2689, ptr %2537, align 8, !tbaa !25
  %2690 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2651, i32 -16)
  %2691 = extractvalue { i32, i1 } %2690, 1, !nosanitize !32
  br i1 %2691, label %2576, label %2692, !prof !35, !nosanitize !32

2692:                                             ; preds = %2685
  %2693 = extractvalue { i32, i1 } %2690, 0, !nosanitize !32
  %2694 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2682, i32 %2693), !nosanitize !32
  %2695 = extractvalue { i32, i1 } %2694, 1, !nosanitize !32
  br i1 %2695, label %2600, label %2699, !prof !35, !nosanitize !32

2696:                                             ; preds = %2663
  %2697 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2649, i32 %2651), !nosanitize !32
  %2698 = extractvalue { i32, i1 } %2697, 1, !nosanitize !32
  br i1 %2698, label %2600, label %2699, !prof !35, !nosanitize !32

2699:                                             ; preds = %2696, %2692
  %2700 = phi i16 [ %2689, %2692 ], [ %2668, %2696 ]
  %2701 = phi { i32, i1 } [ %2694, %2692 ], [ %2697, %2696 ]
  %2702 = extractvalue { i32, i1 } %2701, 0
  store i32 %2702, ptr %2479, align 4, !tbaa !26
  br label %2703

2703:                                             ; preds = %2699, %2646
  %2704 = phi i16 [ %2700, %2699 ], [ %2647, %2646 ]
  %2705 = phi i32 [ %2702, %2699 ], [ %2649, %2646 ]
  %2706 = add nsw i32 %2556, -1
  %2707 = icmp samesign ult i32 %2556, 257
  %2708 = zext nneg i32 %2706 to i64
  %2709 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2708
  %2710 = lshr i32 %2706, 7
  %2711 = zext nneg i32 %2710 to i64
  %2712 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2711
  %2713 = getelementptr inbounds nuw i8, ptr %2712, i64 256
  %2714 = select i1 %2707, ptr %2709, ptr %2713
  %2715 = load i8, ptr %2714, align 1, !tbaa !28
  %2716 = zext i8 %2715 to i64
  %2717 = getelementptr inbounds nuw [4 x i8], ptr @static_dtree, i64 %2716
  %2718 = icmp sgt i32 %2705, 11
  %2719 = load i16, ptr %2717, align 4, !tbaa !28
  %2720 = zext i16 %2719 to i32
  %2721 = shl i32 %2720, %2705
  %2722 = trunc i32 %2721 to i16
  %2723 = or i16 %2704, %2722
  store i16 %2723, ptr %2537, align 8, !tbaa !25
  br i1 %2718, label %2724, label %2746

2724:                                             ; preds = %2703
  %2725 = trunc i16 %2723 to i8
  %2726 = load ptr, ptr %2538, align 8, !tbaa !33
  %2727 = load i64, ptr %2539, align 8, !tbaa !34
  %2728 = add i64 %2727, 1
  store i64 %2728, ptr %2539, align 8, !tbaa !34
  %2729 = getelementptr inbounds nuw i8, ptr %2726, i64 %2727
  store i8 %2725, ptr %2729, align 1, !tbaa !28
  %2730 = load i16, ptr %2537, align 8, !tbaa !25
  %2731 = lshr i16 %2730, 8
  %2732 = trunc nuw i16 %2731 to i8
  %2733 = load ptr, ptr %2538, align 8, !tbaa !33
  %2734 = load i64, ptr %2539, align 8, !tbaa !34
  %2735 = add i64 %2734, 1
  store i64 %2735, ptr %2539, align 8, !tbaa !34
  %2736 = getelementptr inbounds nuw i8, ptr %2733, i64 %2734
  store i8 %2732, ptr %2736, align 1, !tbaa !28
  %2737 = load i32, ptr %2479, align 4, !tbaa !26
  %2738 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2737), !nosanitize !32
  %2739 = extractvalue { i32, i1 } %2738, 1, !nosanitize !32
  br i1 %2739, label %2576, label %2740, !prof !35, !nosanitize !32

2740:                                             ; preds = %2724
  %2741 = extractvalue { i32, i1 } %2738, 0, !nosanitize !32
  %2742 = lshr i32 %2720, %2741
  %2743 = trunc nuw i32 %2742 to i16
  store i16 %2743, ptr %2537, align 8, !tbaa !25
  %2744 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2737, i32 -11), !nosanitize !32
  %2745 = extractvalue { i32, i1 } %2744, 1, !nosanitize !32
  br i1 %2745, label %2600, label %2749, !prof !35, !nosanitize !32

2746:                                             ; preds = %2703
  %2747 = add nsw i32 %2705, 5
  %2748 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2747, 0
  br label %2749

2749:                                             ; preds = %2746, %2740
  %2750 = phi i16 [ %2743, %2740 ], [ %2723, %2746 ]
  %2751 = phi { i32, i1 } [ %2744, %2740 ], [ %2748, %2746 ]
  %2752 = extractvalue { i32, i1 } %2751, 0
  store i32 %2752, ptr %2479, align 4, !tbaa !26
  %2753 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %2716
  %2754 = load i32, ptr %2753, align 4, !tbaa !4
  %2755 = icmp ult i8 %2715, 4
  br i1 %2755, label %2802, label %2756

2756:                                             ; preds = %2749
  %2757 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %2716
  %2758 = load i32, ptr %2757, align 4, !tbaa !4
  %2759 = sub i32 %2706, %2758
  %2760 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2754), !nosanitize !32
  %2761 = extractvalue { i32, i1 } %2760, 1, !nosanitize !32
  br i1 %2761, label %2576, label %2762, !prof !35, !nosanitize !32

2762:                                             ; preds = %2756
  %2763 = extractvalue { i32, i1 } %2760, 0, !nosanitize !32
  %2764 = icmp sgt i32 %2752, %2763
  %2765 = shl i32 %2759, %2752
  %2766 = trunc i32 %2765 to i16
  %2767 = or i16 %2750, %2766
  store i16 %2767, ptr %2537, align 8, !tbaa !25
  br i1 %2764, label %2768, label %2795

2768:                                             ; preds = %2762
  %2769 = trunc i16 %2767 to i8
  %2770 = load ptr, ptr %2538, align 8, !tbaa !33
  %2771 = load i64, ptr %2539, align 8, !tbaa !34
  %2772 = add i64 %2771, 1
  store i64 %2772, ptr %2539, align 8, !tbaa !34
  %2773 = getelementptr inbounds nuw i8, ptr %2770, i64 %2771
  store i8 %2769, ptr %2773, align 1, !tbaa !28
  %2774 = load i16, ptr %2537, align 8, !tbaa !25
  %2775 = lshr i16 %2774, 8
  %2776 = trunc nuw i16 %2775 to i8
  %2777 = load ptr, ptr %2538, align 8, !tbaa !33
  %2778 = load i64, ptr %2539, align 8, !tbaa !34
  %2779 = add i64 %2778, 1
  store i64 %2779, ptr %2539, align 8, !tbaa !34
  %2780 = getelementptr inbounds nuw i8, ptr %2777, i64 %2778
  store i8 %2776, ptr %2780, align 1, !tbaa !28
  %2781 = load i32, ptr %2479, align 4, !tbaa !26
  %2782 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2781), !nosanitize !32
  %2783 = extractvalue { i32, i1 } %2782, 1, !nosanitize !32
  br i1 %2783, label %2576, label %2784, !prof !35, !nosanitize !32

2784:                                             ; preds = %2768
  %2785 = extractvalue { i32, i1 } %2782, 0, !nosanitize !32
  %2786 = and i32 %2759, 65535
  %2787 = lshr i32 %2786, %2785
  %2788 = trunc nuw i32 %2787 to i16
  store i16 %2788, ptr %2537, align 8, !tbaa !25
  %2789 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2754, i32 -16)
  %2790 = extractvalue { i32, i1 } %2789, 1, !nosanitize !32
  br i1 %2790, label %2576, label %2791, !prof !35, !nosanitize !32

2791:                                             ; preds = %2784
  %2792 = extractvalue { i32, i1 } %2789, 0, !nosanitize !32
  %2793 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2781, i32 %2792), !nosanitize !32
  %2794 = extractvalue { i32, i1 } %2793, 1, !nosanitize !32
  br i1 %2794, label %2600, label %2798, !prof !35, !nosanitize !32

2795:                                             ; preds = %2762
  %2796 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2752, i32 %2754), !nosanitize !32
  %2797 = extractvalue { i32, i1 } %2796, 1, !nosanitize !32
  br i1 %2797, label %2600, label %2798, !prof !35, !nosanitize !32

2798:                                             ; preds = %2795, %2791, %2601, %2593
  %2799 = phi i16 [ %2575, %2601 ], [ %2596, %2593 ], [ %2788, %2791 ], [ %2767, %2795 ]
  %2800 = phi { i32, i1 } [ %2603, %2601 ], [ %2598, %2593 ], [ %2793, %2791 ], [ %2796, %2795 ]
  %2801 = extractvalue { i32, i1 } %2800, 0
  store i32 %2801, ptr %2479, align 4, !tbaa !26
  br label %2802

2802:                                             ; preds = %2798, %2749
  %2803 = phi i16 [ %2750, %2749 ], [ %2799, %2798 ]
  %2804 = phi i32 [ %2752, %2749 ], [ %2801, %2798 ]
  %2805 = load i32, ptr %2532, align 4, !tbaa !31
  %2806 = icmp ult i32 %2557, %2805
  br i1 %2806, label %2540, label %2807, !llvm.loop !81

2807:                                             ; preds = %2802, %2528
  %2808 = phi i16 [ %2529, %2528 ], [ %2803, %2802 ]
  %2809 = phi i32 [ %2531, %2528 ], [ %2804, %2802 ]
  %2810 = icmp sgt i32 %2809, 9
  %2811 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %2810, label %2812, label %2833

2812:                                             ; preds = %2807
  %2813 = trunc i16 %2808 to i8
  %2814 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2815 = load ptr, ptr %2814, align 8, !tbaa !33
  %2816 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2817 = load i64, ptr %2816, align 8, !tbaa !34
  %2818 = add i64 %2817, 1
  store i64 %2818, ptr %2816, align 8, !tbaa !34
  %2819 = getelementptr inbounds nuw i8, ptr %2815, i64 %2817
  store i8 %2813, ptr %2819, align 1, !tbaa !28
  %2820 = load i16, ptr %2811, align 8, !tbaa !25
  %2821 = lshr i16 %2820, 8
  %2822 = trunc nuw i16 %2821 to i8
  %2823 = load ptr, ptr %2814, align 8, !tbaa !33
  %2824 = load i64, ptr %2816, align 8, !tbaa !34
  %2825 = add i64 %2824, 1
  store i64 %2825, ptr %2816, align 8, !tbaa !34
  %2826 = getelementptr inbounds nuw i8, ptr %2823, i64 %2824
  store i8 %2822, ptr %2826, align 1, !tbaa !28
  %2827 = load i32, ptr %2479, align 4, !tbaa !26
  %2828 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2827), !nosanitize !32
  %2829 = extractvalue { i32, i1 } %2828, 1, !nosanitize !32
  br i1 %2829, label %2576, label %2830, !prof !35, !nosanitize !32

2830:                                             ; preds = %2812
  store i16 0, ptr %2811, align 8, !tbaa !25
  %2831 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2827, i32 -9), !nosanitize !32
  %2832 = extractvalue { i32, i1 } %2831, 1, !nosanitize !32
  br i1 %2832, label %2600, label %2836, !prof !35, !nosanitize !32

2833:                                             ; preds = %2807
  %2834 = add nsw i32 %2809, 7
  %2835 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2834, 0
  br label %2836

2836:                                             ; preds = %2830, %2833
  %2837 = phi { i32, i1 } [ %2831, %2830 ], [ %2835, %2833 ]
  %2838 = extractvalue { i32, i1 } %2837, 0
  store i32 %2838, ptr %2479, align 4, !tbaa !26
  br label %4173

2839:                                             ; preds = %2360
  %2840 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2841 = load i32, ptr %2840, align 4, !tbaa !26
  %2842 = icmp sgt i32 %2841, 13
  %2843 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 4), !nosanitize !32
  %2844 = extractvalue { i32, i1 } %2843, 1, !nosanitize !32
  br i1 %2842, label %2845, label %2877

2845:                                             ; preds = %2839
  br i1 %2844, label %2486, label %2846, !prof !35, !nosanitize !32

2846:                                             ; preds = %2845
  %2847 = extractvalue { i32, i1 } %2843, 0, !nosanitize !32
  %2848 = shl i32 %2847, %2841
  %2849 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2850 = load i16, ptr %2849, align 8, !tbaa !25
  %2851 = trunc i32 %2848 to i16
  %2852 = or i16 %2850, %2851
  store i16 %2852, ptr %2849, align 8, !tbaa !25
  %2853 = trunc i16 %2852 to i8
  %2854 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2855 = load ptr, ptr %2854, align 8, !tbaa !33
  %2856 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2857 = load i64, ptr %2856, align 8, !tbaa !34
  %2858 = add i64 %2857, 1
  store i64 %2858, ptr %2856, align 8, !tbaa !34
  %2859 = getelementptr inbounds nuw i8, ptr %2855, i64 %2857
  store i8 %2853, ptr %2859, align 1, !tbaa !28
  %2860 = load i16, ptr %2849, align 8, !tbaa !25
  %2861 = lshr i16 %2860, 8
  %2862 = trunc nuw i16 %2861 to i8
  %2863 = load ptr, ptr %2854, align 8, !tbaa !33
  %2864 = load i64, ptr %2856, align 8, !tbaa !34
  %2865 = add i64 %2864, 1
  store i64 %2865, ptr %2856, align 8, !tbaa !34
  %2866 = getelementptr inbounds nuw i8, ptr %2863, i64 %2864
  store i8 %2862, ptr %2866, align 1, !tbaa !28
  %2867 = load i32, ptr %2840, align 4, !tbaa !26
  %2868 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2867), !nosanitize !32
  %2869 = extractvalue { i32, i1 } %2868, 1, !nosanitize !32
  br i1 %2869, label %2484, label %2870, !prof !35, !nosanitize !32

2870:                                             ; preds = %2846
  %2871 = extractvalue { i32, i1 } %2868, 0, !nosanitize !32
  %2872 = and i32 %2847, 65535
  %2873 = lshr i32 %2872, %2871
  %2874 = trunc nuw i32 %2873 to i16
  store i16 %2874, ptr %2849, align 8, !tbaa !25
  %2875 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2867, i32 -13), !nosanitize !32
  %2876 = extractvalue { i32, i1 } %2875, 1, !nosanitize !32
  br i1 %2876, label %2486, label %2887, !prof !35, !nosanitize !32

2877:                                             ; preds = %2839
  br i1 %2844, label %2486, label %2878, !prof !35, !nosanitize !32

2878:                                             ; preds = %2877
  %2879 = extractvalue { i32, i1 } %2843, 0, !nosanitize !32
  %2880 = shl i32 %2879, %2841
  %2881 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2882 = load i16, ptr %2881, align 8, !tbaa !25
  %2883 = trunc i32 %2880 to i16
  %2884 = or i16 %2882, %2883
  store i16 %2884, ptr %2881, align 8, !tbaa !25
  %2885 = add nsw i32 %2841, 3
  %2886 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2885, 0
  br label %2887

2887:                                             ; preds = %2878, %2870
  %2888 = phi i16 [ %2874, %2870 ], [ %2884, %2878 ]
  %2889 = phi { i32, i1 } [ %2875, %2870 ], [ %2886, %2878 ]
  %2890 = extractvalue { i32, i1 } %2889, 0
  store i32 %2890, ptr %2840, align 4, !tbaa !26
  %2891 = load i32, ptr %222, align 8, !tbaa !74
  %2892 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2891, i32 1), !nosanitize !32
  %2893 = extractvalue { i32, i1 } %2892, 0, !nosanitize !32
  %2894 = extractvalue { i32, i1 } %2892, 1, !nosanitize !32
  br i1 %2894, label %2486, label %2895, !prof !35, !nosanitize !32

2895:                                             ; preds = %2887
  %2896 = load i32, ptr %885, align 8, !tbaa !77
  %2897 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2896, i32 1), !nosanitize !32
  %2898 = extractvalue { i32, i1 } %2897, 0, !nosanitize !32
  %2899 = extractvalue { i32, i1 } %2897, 1, !nosanitize !32
  br i1 %2899, label %2486, label %2900, !prof !35, !nosanitize !32

2900:                                             ; preds = %2895
  %2901 = add nuw nsw i32 %2334, 1
  %2902 = icmp sgt i32 %2890, 11
  %2903 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2893, i32 -257)
  %2904 = extractvalue { i32, i1 } %2903, 1, !nosanitize !32
  br i1 %2902, label %2906, label %2938

2905:                                             ; preds = %3057, %3469, %3088, %3001, %2985, %2955, %2954, %2938, %2907, %2906
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

2906:                                             ; preds = %2900
  br i1 %2904, label %2905, label %2907, !prof !35, !nosanitize !32

2907:                                             ; preds = %2906
  %2908 = extractvalue { i32, i1 } %2903, 0, !nosanitize !32
  %2909 = shl i32 %2908, %2890
  %2910 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2911 = trunc i32 %2909 to i16
  %2912 = or i16 %2888, %2911
  store i16 %2912, ptr %2910, align 8, !tbaa !25
  %2913 = trunc i16 %2912 to i8
  %2914 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2915 = load ptr, ptr %2914, align 8, !tbaa !33
  %2916 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2917 = load i64, ptr %2916, align 8, !tbaa !34
  %2918 = add i64 %2917, 1
  store i64 %2918, ptr %2916, align 8, !tbaa !34
  %2919 = getelementptr inbounds nuw i8, ptr %2915, i64 %2917
  store i8 %2913, ptr %2919, align 1, !tbaa !28
  %2920 = load i16, ptr %2910, align 8, !tbaa !25
  %2921 = lshr i16 %2920, 8
  %2922 = trunc nuw i16 %2921 to i8
  %2923 = load ptr, ptr %2914, align 8, !tbaa !33
  %2924 = load i64, ptr %2916, align 8, !tbaa !34
  %2925 = add i64 %2924, 1
  store i64 %2925, ptr %2916, align 8, !tbaa !34
  %2926 = getelementptr inbounds nuw i8, ptr %2923, i64 %2924
  store i8 %2922, ptr %2926, align 1, !tbaa !28
  %2927 = load i32, ptr %2840, align 4, !tbaa !26
  %2928 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2927), !nosanitize !32
  %2929 = extractvalue { i32, i1 } %2928, 1, !nosanitize !32
  br i1 %2929, label %2905, label %2930, !prof !35, !nosanitize !32

2930:                                             ; preds = %2907
  %2931 = extractvalue { i32, i1 } %2928, 0, !nosanitize !32
  %2932 = and i32 %2908, 65535
  %2933 = lshr i32 %2932, %2931
  %2934 = trunc nuw i32 %2933 to i16
  store i16 %2934, ptr %2910, align 8, !tbaa !25
  %2935 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2927, i32 -11), !nosanitize !32
  %2936 = extractvalue { i32, i1 } %2935, 1, !nosanitize !32
  br i1 %2936, label %2937, label %2947, !prof !35, !nosanitize !32

2937:                                             ; preds = %3073, %3022, %2978, %2930
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

2938:                                             ; preds = %2900
  br i1 %2904, label %2905, label %2939, !prof !35, !nosanitize !32

2939:                                             ; preds = %2938
  %2940 = extractvalue { i32, i1 } %2903, 0, !nosanitize !32
  %2941 = shl i32 %2940, %2890
  %2942 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2943 = trunc i32 %2941 to i16
  %2944 = or i16 %2888, %2943
  store i16 %2944, ptr %2942, align 8, !tbaa !25
  %2945 = add nsw i32 %2890, 5
  %2946 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2945, 0
  br label %2947

2947:                                             ; preds = %2939, %2930
  %2948 = phi i16 [ %2934, %2930 ], [ %2944, %2939 ]
  %2949 = phi { i32, i1 } [ %2935, %2930 ], [ %2946, %2939 ]
  %2950 = extractvalue { i32, i1 } %2949, 0
  store i32 %2950, ptr %2840, align 4, !tbaa !26
  %2951 = icmp sgt i32 %2950, 11
  %2952 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2898, i32 -1)
  %2953 = extractvalue { i32, i1 } %2952, 1, !nosanitize !32
  br i1 %2951, label %2954, label %2985

2954:                                             ; preds = %2947
  br i1 %2953, label %2905, label %2955, !prof !35, !nosanitize !32

2955:                                             ; preds = %2954
  %2956 = extractvalue { i32, i1 } %2952, 0, !nosanitize !32
  %2957 = shl i32 %2956, %2950
  %2958 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2959 = trunc i32 %2957 to i16
  %2960 = or i16 %2948, %2959
  store i16 %2960, ptr %2958, align 8, !tbaa !25
  %2961 = trunc i16 %2960 to i8
  %2962 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2963 = load ptr, ptr %2962, align 8, !tbaa !33
  %2964 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2965 = load i64, ptr %2964, align 8, !tbaa !34
  %2966 = add i64 %2965, 1
  store i64 %2966, ptr %2964, align 8, !tbaa !34
  %2967 = getelementptr inbounds nuw i8, ptr %2963, i64 %2965
  store i8 %2961, ptr %2967, align 1, !tbaa !28
  %2968 = load i16, ptr %2958, align 8, !tbaa !25
  %2969 = lshr i16 %2968, 8
  %2970 = trunc nuw i16 %2969 to i8
  %2971 = load ptr, ptr %2962, align 8, !tbaa !33
  %2972 = load i64, ptr %2964, align 8, !tbaa !34
  %2973 = add i64 %2972, 1
  store i64 %2973, ptr %2964, align 8, !tbaa !34
  %2974 = getelementptr inbounds nuw i8, ptr %2971, i64 %2972
  store i8 %2970, ptr %2974, align 1, !tbaa !28
  %2975 = load i32, ptr %2840, align 4, !tbaa !26
  %2976 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2975), !nosanitize !32
  %2977 = extractvalue { i32, i1 } %2976, 1, !nosanitize !32
  br i1 %2977, label %2905, label %2978, !prof !35, !nosanitize !32

2978:                                             ; preds = %2955
  %2979 = extractvalue { i32, i1 } %2976, 0, !nosanitize !32
  %2980 = and i32 %2956, 65535
  %2981 = lshr i32 %2980, %2979
  %2982 = trunc nuw i32 %2981 to i16
  store i16 %2982, ptr %2958, align 8, !tbaa !25
  %2983 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2975, i32 -11), !nosanitize !32
  %2984 = extractvalue { i32, i1 } %2983, 1, !nosanitize !32
  br i1 %2984, label %2937, label %2994, !prof !35, !nosanitize !32

2985:                                             ; preds = %2947
  br i1 %2953, label %2905, label %2986, !prof !35, !nosanitize !32

2986:                                             ; preds = %2985
  %2987 = extractvalue { i32, i1 } %2952, 0, !nosanitize !32
  %2988 = shl i32 %2987, %2950
  %2989 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2990 = trunc i32 %2988 to i16
  %2991 = or i16 %2948, %2990
  store i16 %2991, ptr %2989, align 8, !tbaa !25
  %2992 = add nsw i32 %2950, 5
  %2993 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2992, 0
  br label %2994

2994:                                             ; preds = %2986, %2978
  %2995 = phi i16 [ %2982, %2978 ], [ %2991, %2986 ]
  %2996 = phi { i32, i1 } [ %2983, %2978 ], [ %2993, %2986 ]
  %2997 = extractvalue { i32, i1 } %2996, 0
  store i32 %2997, ptr %2840, align 4, !tbaa !26
  %2998 = icmp sgt i32 %2997, 12
  %2999 = add nsw i32 %2334, -3
  %3000 = shl i32 %2999, %2997
  br i1 %2998, label %3001, label %3029

3001:                                             ; preds = %2994
  %3002 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3003 = trunc i32 %3000 to i16
  %3004 = or i16 %2995, %3003
  store i16 %3004, ptr %3002, align 8, !tbaa !25
  %3005 = trunc i16 %3004 to i8
  %3006 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3007 = load ptr, ptr %3006, align 8, !tbaa !33
  %3008 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3009 = load i64, ptr %3008, align 8, !tbaa !34
  %3010 = add i64 %3009, 1
  store i64 %3010, ptr %3008, align 8, !tbaa !34
  %3011 = getelementptr inbounds nuw i8, ptr %3007, i64 %3009
  store i8 %3005, ptr %3011, align 1, !tbaa !28
  %3012 = load i16, ptr %3002, align 8, !tbaa !25
  %3013 = lshr i16 %3012, 8
  %3014 = trunc nuw i16 %3013 to i8
  %3015 = load ptr, ptr %3006, align 8, !tbaa !33
  %3016 = load i64, ptr %3008, align 8, !tbaa !34
  %3017 = add i64 %3016, 1
  store i64 %3017, ptr %3008, align 8, !tbaa !34
  %3018 = getelementptr inbounds nuw i8, ptr %3015, i64 %3016
  store i8 %3014, ptr %3018, align 1, !tbaa !28
  %3019 = load i32, ptr %2840, align 4, !tbaa !26
  %3020 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3019), !nosanitize !32
  %3021 = extractvalue { i32, i1 } %3020, 1, !nosanitize !32
  br i1 %3021, label %2905, label %3022, !prof !35, !nosanitize !32

3022:                                             ; preds = %3001
  %3023 = extractvalue { i32, i1 } %3020, 0, !nosanitize !32
  %3024 = and i32 %2999, 65535
  %3025 = lshr i32 %3024, %3023
  %3026 = trunc nuw i32 %3025 to i16
  store i16 %3026, ptr %3002, align 8, !tbaa !25
  %3027 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3019, i32 -12), !nosanitize !32
  %3028 = extractvalue { i32, i1 } %3027, 1, !nosanitize !32
  br i1 %3028, label %2937, label %3034, !prof !35, !nosanitize !32

3029:                                             ; preds = %2994
  %3030 = trunc i32 %3000 to i16
  %3031 = or i16 %2995, %3030
  %3032 = add nsw i32 %2997, 4
  %3033 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3032, 0
  br label %3034

3034:                                             ; preds = %3022, %3029
  %3035 = phi i16 [ %3026, %3022 ], [ %3031, %3029 ]
  %3036 = phi { i32, i1 } [ %3027, %3022 ], [ %3033, %3029 ]
  %3037 = extractvalue { i32, i1 } %3036, 0
  store i32 %3037, ptr %2840, align 4, !tbaa !26
  %3038 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3039 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3040 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3041 = zext nneg i32 %2901 to i64
  br label %3042

3042:                                             ; preds = %3082, %3034
  %3043 = phi i16 [ %3035, %3034 ], [ %3083, %3082 ]
  %3044 = phi i32 [ %3037, %3034 ], [ %3085, %3082 ]
  %3045 = phi i64 [ 0, %3034 ], [ %3086, %3082 ]
  %3046 = icmp sgt i32 %3044, 13
  %3047 = getelementptr inbounds nuw i8, ptr @bl_order, i64 %3045
  %3048 = load i8, ptr %3047, align 1, !tbaa !28
  %3049 = zext i8 %3048 to i64
  %3050 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3049
  %3051 = getelementptr inbounds nuw i8, ptr %3050, i64 2750
  %3052 = load i16, ptr %3051, align 2, !tbaa !28
  %3053 = zext i16 %3052 to i32
  %3054 = shl i32 %3053, %3044
  %3055 = trunc i32 %3054 to i16
  %3056 = or i16 %3043, %3055
  store i16 %3056, ptr %3038, align 8, !tbaa !25
  br i1 %3046, label %3057, label %3079

3057:                                             ; preds = %3042
  %3058 = trunc i16 %3056 to i8
  %3059 = load ptr, ptr %3039, align 8, !tbaa !33
  %3060 = load i64, ptr %3040, align 8, !tbaa !34
  %3061 = add i64 %3060, 1
  store i64 %3061, ptr %3040, align 8, !tbaa !34
  %3062 = getelementptr inbounds nuw i8, ptr %3059, i64 %3060
  store i8 %3058, ptr %3062, align 1, !tbaa !28
  %3063 = load i16, ptr %3038, align 8, !tbaa !25
  %3064 = lshr i16 %3063, 8
  %3065 = trunc nuw i16 %3064 to i8
  %3066 = load ptr, ptr %3039, align 8, !tbaa !33
  %3067 = load i64, ptr %3040, align 8, !tbaa !34
  %3068 = add i64 %3067, 1
  store i64 %3068, ptr %3040, align 8, !tbaa !34
  %3069 = getelementptr inbounds nuw i8, ptr %3066, i64 %3067
  store i8 %3065, ptr %3069, align 1, !tbaa !28
  %3070 = load i32, ptr %2840, align 4, !tbaa !26
  %3071 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3070), !nosanitize !32
  %3072 = extractvalue { i32, i1 } %3071, 1, !nosanitize !32
  br i1 %3072, label %2905, label %3073, !prof !35, !nosanitize !32

3073:                                             ; preds = %3057
  %3074 = extractvalue { i32, i1 } %3071, 0, !nosanitize !32
  %3075 = lshr i32 %3053, %3074
  %3076 = trunc nuw i32 %3075 to i16
  store i16 %3076, ptr %3038, align 8, !tbaa !25
  %3077 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3070, i32 -13), !nosanitize !32
  %3078 = extractvalue { i32, i1 } %3077, 1, !nosanitize !32
  br i1 %3078, label %2937, label %3082, !prof !35, !nosanitize !32

3079:                                             ; preds = %3042
  %3080 = add nsw i32 %3044, 3
  %3081 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3080, 0
  br label %3082

3082:                                             ; preds = %3079, %3073
  %3083 = phi i16 [ %3076, %3073 ], [ %3056, %3079 ]
  %3084 = phi { i32, i1 } [ %3077, %3073 ], [ %3081, %3079 ]
  %3085 = extractvalue { i32, i1 } %3084, 0
  store i32 %3085, ptr %2840, align 4, !tbaa !26
  %3086 = add nuw nsw i64 %3045, 1
  %3087 = icmp eq i64 %3086, %3041
  br i1 %3087, label %3088, label %3042, !llvm.loop !82

3088:                                             ; preds = %3082
  %3089 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2893, i32 -1)
  %3090 = extractvalue { i32, i1 } %3089, 1, !nosanitize !32
  br i1 %3090, label %2905, label %3091, !prof !35, !nosanitize !32

3091:                                             ; preds = %3088
  %3092 = extractvalue { i32, i1 } %3089, 0, !nosanitize !32
  %3093 = icmp slt i32 %3092, 0
  br i1 %3093, label %3469, label %3094

3094:                                             ; preds = %3091
  %3095 = load i16, ptr %1466, align 2, !tbaa !28
  %3096 = icmp eq i16 %3095, 0
  %3097 = select i1 %3096, i32 138, i32 7
  %3098 = select i1 %3096, i32 3, i32 4
  %3099 = zext i16 %3095 to i32
  %3100 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3101 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3102 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3103 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3104 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3105 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3106 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3112

3107:                                             ; preds = %3461
  %3108 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3113, i32 1), !nosanitize !32
  %3109 = extractvalue { i32, i1 } %3108, 0, !nosanitize !32
  %3110 = extractvalue { i32, i1 } %3108, 1, !nosanitize !32
  br i1 %3110, label %3111, label %3112, !prof !75, !llvm.loop !83, !nosanitize !32

3111:                                             ; preds = %3440, %3405, %3369, %3334, %3296, %3261, %3218, %3107, %3166
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3112:                                             ; preds = %3094, %3107
  %3113 = phi i32 [ 1, %3094 ], [ %3109, %3107 ]
  %3114 = phi i32 [ %3098, %3094 ], [ %3464, %3107 ]
  %3115 = phi i32 [ %3097, %3094 ], [ %3465, %3107 ]
  %3116 = phi i32 [ 0, %3094 ], [ %3466, %3107 ]
  %3117 = phi i32 [ %3099, %3094 ], [ %3125, %3107 ]
  %3118 = phi i32 [ -1, %3094 ], [ %3467, %3107 ]
  %3119 = phi i32 [ %3085, %3094 ], [ %3463, %3107 ]
  %3120 = phi i16 [ %3083, %3094 ], [ %3462, %3107 ]
  %3121 = sext i32 %3113 to i64
  %3122 = getelementptr [4 x i8], ptr %0, i64 %3121
  %3123 = getelementptr i8, ptr %3122, i64 214
  %3124 = load i16, ptr %3123, align 2, !tbaa !28
  %3125 = zext i16 %3124 to i32
  %3126 = add nsw i32 %3116, 1
  %3127 = icmp slt i32 %3126, %3115
  %3128 = icmp eq i32 %3117, %3125
  %3129 = select i1 %3127, i1 %3128, i1 false
  br i1 %3129, label %3461, label %3130

3130:                                             ; preds = %3112
  %3131 = icmp slt i32 %3126, %3114
  br i1 %3131, label %3132, label %3185

3132:                                             ; preds = %3130
  %3133 = zext nneg i32 %3117 to i64
  %3134 = getelementptr inbounds nuw [4 x i8], ptr %3100, i64 %3133
  %3135 = getelementptr inbounds nuw i8, ptr %3134, i64 2
  br label %3136

3136:                                             ; preds = %3182, %3132
  %3137 = phi i16 [ %3177, %3182 ], [ %3120, %3132 ]
  %3138 = phi i32 [ %3179, %3182 ], [ %3119, %3132 ]
  %3139 = phi i32 [ %3183, %3182 ], [ %3126, %3132 ]
  %3140 = load i16, ptr %3135, align 2, !tbaa !28
  %3141 = zext i16 %3140 to i32
  %3142 = sub nsw i32 16, %3141
  %3143 = icmp sgt i32 %3138, %3142
  %3144 = load i16, ptr %3134, align 4, !tbaa !28
  %3145 = zext i16 %3144 to i32
  %3146 = shl i32 %3145, %3138
  %3147 = trunc i32 %3146 to i16
  %3148 = or i16 %3137, %3147
  store i16 %3148, ptr %3038, align 8, !tbaa !25
  br i1 %3143, label %3150, label %3173

3149:                                             ; preds = %3424, %3389, %3353, %3318, %3280, %3245, %3202, %3176, %3150
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

3150:                                             ; preds = %3136
  %3151 = trunc i16 %3148 to i8
  %3152 = load ptr, ptr %3039, align 8, !tbaa !33
  %3153 = load i64, ptr %3040, align 8, !tbaa !34
  %3154 = add i64 %3153, 1
  store i64 %3154, ptr %3040, align 8, !tbaa !34
  %3155 = getelementptr inbounds nuw i8, ptr %3152, i64 %3153
  store i8 %3151, ptr %3155, align 1, !tbaa !28
  %3156 = load i16, ptr %3038, align 8, !tbaa !25
  %3157 = lshr i16 %3156, 8
  %3158 = trunc nuw i16 %3157 to i8
  %3159 = load ptr, ptr %3039, align 8, !tbaa !33
  %3160 = load i64, ptr %3040, align 8, !tbaa !34
  %3161 = add i64 %3160, 1
  store i64 %3161, ptr %3040, align 8, !tbaa !34
  %3162 = getelementptr inbounds nuw i8, ptr %3159, i64 %3160
  store i8 %3158, ptr %3162, align 1, !tbaa !28
  %3163 = load i32, ptr %2840, align 4, !tbaa !26
  %3164 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3163), !nosanitize !32
  %3165 = extractvalue { i32, i1 } %3164, 1, !nosanitize !32
  br i1 %3165, label %3149, label %3166, !prof !35, !nosanitize !32

3166:                                             ; preds = %3150
  %3167 = extractvalue { i32, i1 } %3164, 0, !nosanitize !32
  %3168 = lshr i32 %3145, %3167
  %3169 = trunc nuw i32 %3168 to i16
  store i16 %3169, ptr %3038, align 8, !tbaa !25
  %3170 = add nsw i32 %3141, -16
  %3171 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3163, i32 %3170), !nosanitize !32
  %3172 = extractvalue { i32, i1 } %3171, 1, !nosanitize !32
  br i1 %3172, label %3111, label %3176, !prof !35, !nosanitize !32

3173:                                             ; preds = %3136
  %3174 = add nsw i32 %3138, %3141
  %3175 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3174, 0
  br label %3176

3176:                                             ; preds = %3173, %3166
  %3177 = phi i16 [ %3169, %3166 ], [ %3148, %3173 ]
  %3178 = phi { i32, i1 } [ %3171, %3166 ], [ %3175, %3173 ]
  %3179 = extractvalue { i32, i1 } %3178, 0
  store i32 %3179, ptr %2840, align 4, !tbaa !26
  %3180 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3139, i32 -1)
  %3181 = extractvalue { i32, i1 } %3180, 1, !nosanitize !32
  br i1 %3181, label %3149, label %3182, !prof !35, !nosanitize !32

3182:                                             ; preds = %3176
  %3183 = extractvalue { i32, i1 } %3180, 0, !nosanitize !32
  %3184 = icmp eq i32 %3183, 0
  br i1 %3184, label %3454, label %3136, !llvm.loop !84

3185:                                             ; preds = %3130
  %3186 = icmp eq i32 %3117, 0
  br i1 %3186, label %3306, label %3187

3187:                                             ; preds = %3185
  %3188 = icmp eq i32 %3117, %3118
  br i1 %3188, label %3232, label %3189

3189:                                             ; preds = %3187
  %3190 = zext nneg i32 %3117 to i64
  %3191 = getelementptr inbounds nuw [4 x i8], ptr %3100, i64 %3190
  %3192 = getelementptr inbounds nuw i8, ptr %3191, i64 2
  %3193 = load i16, ptr %3192, align 2, !tbaa !28
  %3194 = zext i16 %3193 to i32
  %3195 = sub nsw i32 16, %3194
  %3196 = icmp sgt i32 %3119, %3195
  %3197 = load i16, ptr %3191, align 4, !tbaa !28
  %3198 = zext i16 %3197 to i32
  %3199 = shl i32 %3198, %3119
  %3200 = trunc i32 %3199 to i16
  %3201 = or i16 %3120, %3200
  store i16 %3201, ptr %3038, align 8, !tbaa !25
  br i1 %3196, label %3202, label %3225

3202:                                             ; preds = %3189
  %3203 = trunc i16 %3201 to i8
  %3204 = load ptr, ptr %3039, align 8, !tbaa !33
  %3205 = load i64, ptr %3040, align 8, !tbaa !34
  %3206 = add i64 %3205, 1
  store i64 %3206, ptr %3040, align 8, !tbaa !34
  %3207 = getelementptr inbounds nuw i8, ptr %3204, i64 %3205
  store i8 %3203, ptr %3207, align 1, !tbaa !28
  %3208 = load i16, ptr %3038, align 8, !tbaa !25
  %3209 = lshr i16 %3208, 8
  %3210 = trunc nuw i16 %3209 to i8
  %3211 = load ptr, ptr %3039, align 8, !tbaa !33
  %3212 = load i64, ptr %3040, align 8, !tbaa !34
  %3213 = add i64 %3212, 1
  store i64 %3213, ptr %3040, align 8, !tbaa !34
  %3214 = getelementptr inbounds nuw i8, ptr %3211, i64 %3212
  store i8 %3210, ptr %3214, align 1, !tbaa !28
  %3215 = load i32, ptr %2840, align 4, !tbaa !26
  %3216 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3215), !nosanitize !32
  %3217 = extractvalue { i32, i1 } %3216, 1, !nosanitize !32
  br i1 %3217, label %3149, label %3218, !prof !35, !nosanitize !32

3218:                                             ; preds = %3202
  %3219 = extractvalue { i32, i1 } %3216, 0, !nosanitize !32
  %3220 = lshr i32 %3198, %3219
  %3221 = trunc nuw i32 %3220 to i16
  store i16 %3221, ptr %3038, align 8, !tbaa !25
  %3222 = add nsw i32 %3194, -16
  %3223 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3215, i32 %3222), !nosanitize !32
  %3224 = extractvalue { i32, i1 } %3223, 1, !nosanitize !32
  br i1 %3224, label %3111, label %3228, !prof !35, !nosanitize !32

3225:                                             ; preds = %3189
  %3226 = add nsw i32 %3119, %3194
  %3227 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3226, 0
  br label %3228

3228:                                             ; preds = %3225, %3218
  %3229 = phi i16 [ %3221, %3218 ], [ %3201, %3225 ]
  %3230 = phi { i32, i1 } [ %3223, %3218 ], [ %3227, %3225 ]
  %3231 = extractvalue { i32, i1 } %3230, 0
  store i32 %3231, ptr %2840, align 4, !tbaa !26
  br label %3232

3232:                                             ; preds = %3228, %3187
  %3233 = phi i16 [ %3229, %3228 ], [ %3120, %3187 ]
  %3234 = phi i32 [ %3231, %3228 ], [ %3119, %3187 ]
  %3235 = phi i32 [ %3116, %3228 ], [ %3126, %3187 ]
  %3236 = load i16, ptr %3102, align 2, !tbaa !28
  %3237 = zext i16 %3236 to i32
  %3238 = sub nsw i32 16, %3237
  %3239 = icmp sgt i32 %3234, %3238
  %3240 = load i16, ptr %3101, align 4, !tbaa !28
  %3241 = zext i16 %3240 to i32
  %3242 = shl i32 %3241, %3234
  %3243 = trunc i32 %3242 to i16
  %3244 = or i16 %3233, %3243
  br i1 %3239, label %3245, label %3268

3245:                                             ; preds = %3232
  store i16 %3244, ptr %3038, align 8, !tbaa !25
  %3246 = trunc i16 %3244 to i8
  %3247 = load ptr, ptr %3039, align 8, !tbaa !33
  %3248 = load i64, ptr %3040, align 8, !tbaa !34
  %3249 = add i64 %3248, 1
  store i64 %3249, ptr %3040, align 8, !tbaa !34
  %3250 = getelementptr inbounds nuw i8, ptr %3247, i64 %3248
  store i8 %3246, ptr %3250, align 1, !tbaa !28
  %3251 = load i16, ptr %3038, align 8, !tbaa !25
  %3252 = lshr i16 %3251, 8
  %3253 = trunc nuw i16 %3252 to i8
  %3254 = load ptr, ptr %3039, align 8, !tbaa !33
  %3255 = load i64, ptr %3040, align 8, !tbaa !34
  %3256 = add i64 %3255, 1
  store i64 %3256, ptr %3040, align 8, !tbaa !34
  %3257 = getelementptr inbounds nuw i8, ptr %3254, i64 %3255
  store i8 %3253, ptr %3257, align 1, !tbaa !28
  %3258 = load i32, ptr %2840, align 4, !tbaa !26
  %3259 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3258), !nosanitize !32
  %3260 = extractvalue { i32, i1 } %3259, 1, !nosanitize !32
  br i1 %3260, label %3149, label %3261, !prof !35, !nosanitize !32

3261:                                             ; preds = %3245
  %3262 = extractvalue { i32, i1 } %3259, 0, !nosanitize !32
  %3263 = lshr i32 %3241, %3262
  %3264 = trunc nuw i32 %3263 to i16
  %3265 = add nsw i32 %3237, -16
  %3266 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3258, i32 %3265), !nosanitize !32
  %3267 = extractvalue { i32, i1 } %3266, 1, !nosanitize !32
  br i1 %3267, label %3111, label %3271, !prof !35, !nosanitize !32

3268:                                             ; preds = %3232
  %3269 = add nsw i32 %3234, %3237
  %3270 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3269, 0
  br label %3271

3271:                                             ; preds = %3268, %3261
  %3272 = phi i16 [ %3264, %3261 ], [ %3244, %3268 ]
  %3273 = phi { i32, i1 } [ %3266, %3261 ], [ %3270, %3268 ]
  %3274 = extractvalue { i32, i1 } %3273, 0
  store i32 %3274, ptr %2840, align 4, !tbaa !26
  %3275 = icmp sgt i32 %3274, 14
  %3276 = add i32 %3235, 65533
  %3277 = shl i32 %3276, %3274
  %3278 = trunc i32 %3277 to i16
  %3279 = or i16 %3272, %3278
  store i16 %3279, ptr %3038, align 8, !tbaa !25
  br i1 %3275, label %3280, label %3303

3280:                                             ; preds = %3271
  %3281 = trunc i16 %3279 to i8
  %3282 = load ptr, ptr %3039, align 8, !tbaa !33
  %3283 = load i64, ptr %3040, align 8, !tbaa !34
  %3284 = add i64 %3283, 1
  store i64 %3284, ptr %3040, align 8, !tbaa !34
  %3285 = getelementptr inbounds nuw i8, ptr %3282, i64 %3283
  store i8 %3281, ptr %3285, align 1, !tbaa !28
  %3286 = load i16, ptr %3038, align 8, !tbaa !25
  %3287 = lshr i16 %3286, 8
  %3288 = trunc nuw i16 %3287 to i8
  %3289 = load ptr, ptr %3039, align 8, !tbaa !33
  %3290 = load i64, ptr %3040, align 8, !tbaa !34
  %3291 = add i64 %3290, 1
  store i64 %3291, ptr %3040, align 8, !tbaa !34
  %3292 = getelementptr inbounds nuw i8, ptr %3289, i64 %3290
  store i8 %3288, ptr %3292, align 1, !tbaa !28
  %3293 = load i32, ptr %2840, align 4, !tbaa !26
  %3294 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3293), !nosanitize !32
  %3295 = extractvalue { i32, i1 } %3294, 1, !nosanitize !32
  br i1 %3295, label %3149, label %3296, !prof !35, !nosanitize !32

3296:                                             ; preds = %3280
  %3297 = extractvalue { i32, i1 } %3294, 0, !nosanitize !32
  %3298 = and i32 %3276, 65535
  %3299 = lshr i32 %3298, %3297
  %3300 = trunc nuw i32 %3299 to i16
  store i16 %3300, ptr %3038, align 8, !tbaa !25
  %3301 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3293, i32 -14), !nosanitize !32
  %3302 = extractvalue { i32, i1 } %3301, 1, !nosanitize !32
  br i1 %3302, label %3111, label %3450, !prof !35, !nosanitize !32

3303:                                             ; preds = %3271
  %3304 = add nsw i32 %3274, 2
  %3305 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3304, 0
  br label %3450

3306:                                             ; preds = %3185
  %3307 = icmp slt i32 %3116, 10
  br i1 %3307, label %3308, label %3379

3308:                                             ; preds = %3306
  %3309 = load i16, ptr %3106, align 2, !tbaa !28
  %3310 = zext i16 %3309 to i32
  %3311 = sub nsw i32 16, %3310
  %3312 = icmp sgt i32 %3119, %3311
  %3313 = load i16, ptr %3105, align 4, !tbaa !28
  %3314 = zext i16 %3313 to i32
  %3315 = shl i32 %3314, %3119
  %3316 = trunc i32 %3315 to i16
  %3317 = or i16 %3120, %3316
  br i1 %3312, label %3318, label %3341

3318:                                             ; preds = %3308
  store i16 %3317, ptr %3038, align 8, !tbaa !25
  %3319 = trunc i16 %3317 to i8
  %3320 = load ptr, ptr %3039, align 8, !tbaa !33
  %3321 = load i64, ptr %3040, align 8, !tbaa !34
  %3322 = add i64 %3321, 1
  store i64 %3322, ptr %3040, align 8, !tbaa !34
  %3323 = getelementptr inbounds nuw i8, ptr %3320, i64 %3321
  store i8 %3319, ptr %3323, align 1, !tbaa !28
  %3324 = load i16, ptr %3038, align 8, !tbaa !25
  %3325 = lshr i16 %3324, 8
  %3326 = trunc nuw i16 %3325 to i8
  %3327 = load ptr, ptr %3039, align 8, !tbaa !33
  %3328 = load i64, ptr %3040, align 8, !tbaa !34
  %3329 = add i64 %3328, 1
  store i64 %3329, ptr %3040, align 8, !tbaa !34
  %3330 = getelementptr inbounds nuw i8, ptr %3327, i64 %3328
  store i8 %3326, ptr %3330, align 1, !tbaa !28
  %3331 = load i32, ptr %2840, align 4, !tbaa !26
  %3332 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3331), !nosanitize !32
  %3333 = extractvalue { i32, i1 } %3332, 1, !nosanitize !32
  br i1 %3333, label %3149, label %3334, !prof !35, !nosanitize !32

3334:                                             ; preds = %3318
  %3335 = extractvalue { i32, i1 } %3332, 0, !nosanitize !32
  %3336 = lshr i32 %3314, %3335
  %3337 = trunc nuw i32 %3336 to i16
  %3338 = add nsw i32 %3310, -16
  %3339 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3331, i32 %3338), !nosanitize !32
  %3340 = extractvalue { i32, i1 } %3339, 1, !nosanitize !32
  br i1 %3340, label %3111, label %3344, !prof !35, !nosanitize !32

3341:                                             ; preds = %3308
  %3342 = add nsw i32 %3119, %3310
  %3343 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3342, 0
  br label %3344

3344:                                             ; preds = %3341, %3334
  %3345 = phi i16 [ %3337, %3334 ], [ %3317, %3341 ]
  %3346 = phi { i32, i1 } [ %3339, %3334 ], [ %3343, %3341 ]
  %3347 = extractvalue { i32, i1 } %3346, 0
  store i32 %3347, ptr %2840, align 4, !tbaa !26
  %3348 = icmp sgt i32 %3347, 13
  %3349 = add nsw i32 %3116, 65534
  %3350 = shl i32 %3349, %3347
  %3351 = trunc i32 %3350 to i16
  %3352 = or i16 %3345, %3351
  store i16 %3352, ptr %3038, align 8, !tbaa !25
  br i1 %3348, label %3353, label %3376

3353:                                             ; preds = %3344
  %3354 = trunc i16 %3352 to i8
  %3355 = load ptr, ptr %3039, align 8, !tbaa !33
  %3356 = load i64, ptr %3040, align 8, !tbaa !34
  %3357 = add i64 %3356, 1
  store i64 %3357, ptr %3040, align 8, !tbaa !34
  %3358 = getelementptr inbounds nuw i8, ptr %3355, i64 %3356
  store i8 %3354, ptr %3358, align 1, !tbaa !28
  %3359 = load i16, ptr %3038, align 8, !tbaa !25
  %3360 = lshr i16 %3359, 8
  %3361 = trunc nuw i16 %3360 to i8
  %3362 = load ptr, ptr %3039, align 8, !tbaa !33
  %3363 = load i64, ptr %3040, align 8, !tbaa !34
  %3364 = add i64 %3363, 1
  store i64 %3364, ptr %3040, align 8, !tbaa !34
  %3365 = getelementptr inbounds nuw i8, ptr %3362, i64 %3363
  store i8 %3361, ptr %3365, align 1, !tbaa !28
  %3366 = load i32, ptr %2840, align 4, !tbaa !26
  %3367 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3366), !nosanitize !32
  %3368 = extractvalue { i32, i1 } %3367, 1, !nosanitize !32
  br i1 %3368, label %3149, label %3369, !prof !35, !nosanitize !32

3369:                                             ; preds = %3353
  %3370 = extractvalue { i32, i1 } %3367, 0, !nosanitize !32
  %3371 = and i32 %3349, 65535
  %3372 = lshr i32 %3371, %3370
  %3373 = trunc nuw i32 %3372 to i16
  store i16 %3373, ptr %3038, align 8, !tbaa !25
  %3374 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3366, i32 -13), !nosanitize !32
  %3375 = extractvalue { i32, i1 } %3374, 1, !nosanitize !32
  br i1 %3375, label %3111, label %3450, !prof !35, !nosanitize !32

3376:                                             ; preds = %3344
  %3377 = add nsw i32 %3347, 3
  %3378 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3377, 0
  br label %3450

3379:                                             ; preds = %3306
  %3380 = load i16, ptr %3104, align 2, !tbaa !28
  %3381 = zext i16 %3380 to i32
  %3382 = sub nsw i32 16, %3381
  %3383 = icmp sgt i32 %3119, %3382
  %3384 = load i16, ptr %3103, align 4, !tbaa !28
  %3385 = zext i16 %3384 to i32
  %3386 = shl i32 %3385, %3119
  %3387 = trunc i32 %3386 to i16
  %3388 = or i16 %3120, %3387
  br i1 %3383, label %3389, label %3412

3389:                                             ; preds = %3379
  store i16 %3388, ptr %3038, align 8, !tbaa !25
  %3390 = trunc i16 %3388 to i8
  %3391 = load ptr, ptr %3039, align 8, !tbaa !33
  %3392 = load i64, ptr %3040, align 8, !tbaa !34
  %3393 = add i64 %3392, 1
  store i64 %3393, ptr %3040, align 8, !tbaa !34
  %3394 = getelementptr inbounds nuw i8, ptr %3391, i64 %3392
  store i8 %3390, ptr %3394, align 1, !tbaa !28
  %3395 = load i16, ptr %3038, align 8, !tbaa !25
  %3396 = lshr i16 %3395, 8
  %3397 = trunc nuw i16 %3396 to i8
  %3398 = load ptr, ptr %3039, align 8, !tbaa !33
  %3399 = load i64, ptr %3040, align 8, !tbaa !34
  %3400 = add i64 %3399, 1
  store i64 %3400, ptr %3040, align 8, !tbaa !34
  %3401 = getelementptr inbounds nuw i8, ptr %3398, i64 %3399
  store i8 %3397, ptr %3401, align 1, !tbaa !28
  %3402 = load i32, ptr %2840, align 4, !tbaa !26
  %3403 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3402), !nosanitize !32
  %3404 = extractvalue { i32, i1 } %3403, 1, !nosanitize !32
  br i1 %3404, label %3149, label %3405, !prof !35, !nosanitize !32

3405:                                             ; preds = %3389
  %3406 = extractvalue { i32, i1 } %3403, 0, !nosanitize !32
  %3407 = lshr i32 %3385, %3406
  %3408 = trunc nuw i32 %3407 to i16
  %3409 = add nsw i32 %3381, -16
  %3410 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3402, i32 %3409), !nosanitize !32
  %3411 = extractvalue { i32, i1 } %3410, 1, !nosanitize !32
  br i1 %3411, label %3111, label %3415, !prof !35, !nosanitize !32

3412:                                             ; preds = %3379
  %3413 = add nsw i32 %3119, %3381
  %3414 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3413, 0
  br label %3415

3415:                                             ; preds = %3412, %3405
  %3416 = phi i16 [ %3408, %3405 ], [ %3388, %3412 ]
  %3417 = phi { i32, i1 } [ %3410, %3405 ], [ %3414, %3412 ]
  %3418 = extractvalue { i32, i1 } %3417, 0
  store i32 %3418, ptr %2840, align 4, !tbaa !26
  %3419 = icmp sgt i32 %3418, 9
  %3420 = add nuw i32 %3116, 65526
  %3421 = shl i32 %3420, %3418
  %3422 = trunc i32 %3421 to i16
  %3423 = or i16 %3416, %3422
  store i16 %3423, ptr %3038, align 8, !tbaa !25
  br i1 %3419, label %3424, label %3447

3424:                                             ; preds = %3415
  %3425 = trunc i16 %3423 to i8
  %3426 = load ptr, ptr %3039, align 8, !tbaa !33
  %3427 = load i64, ptr %3040, align 8, !tbaa !34
  %3428 = add i64 %3427, 1
  store i64 %3428, ptr %3040, align 8, !tbaa !34
  %3429 = getelementptr inbounds nuw i8, ptr %3426, i64 %3427
  store i8 %3425, ptr %3429, align 1, !tbaa !28
  %3430 = load i16, ptr %3038, align 8, !tbaa !25
  %3431 = lshr i16 %3430, 8
  %3432 = trunc nuw i16 %3431 to i8
  %3433 = load ptr, ptr %3039, align 8, !tbaa !33
  %3434 = load i64, ptr %3040, align 8, !tbaa !34
  %3435 = add i64 %3434, 1
  store i64 %3435, ptr %3040, align 8, !tbaa !34
  %3436 = getelementptr inbounds nuw i8, ptr %3433, i64 %3434
  store i8 %3432, ptr %3436, align 1, !tbaa !28
  %3437 = load i32, ptr %2840, align 4, !tbaa !26
  %3438 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3437), !nosanitize !32
  %3439 = extractvalue { i32, i1 } %3438, 1, !nosanitize !32
  br i1 %3439, label %3149, label %3440, !prof !35, !nosanitize !32

3440:                                             ; preds = %3424
  %3441 = extractvalue { i32, i1 } %3438, 0, !nosanitize !32
  %3442 = and i32 %3420, 65535
  %3443 = lshr i32 %3442, %3441
  %3444 = trunc nuw i32 %3443 to i16
  store i16 %3444, ptr %3038, align 8, !tbaa !25
  %3445 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3437, i32 -9), !nosanitize !32
  %3446 = extractvalue { i32, i1 } %3445, 1, !nosanitize !32
  br i1 %3446, label %3111, label %3450, !prof !35, !nosanitize !32

3447:                                             ; preds = %3415
  %3448 = add nsw i32 %3418, 7
  %3449 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3448, 0
  br label %3450

3450:                                             ; preds = %3447, %3440, %3376, %3369, %3303, %3296
  %3451 = phi i16 [ %3279, %3303 ], [ %3352, %3376 ], [ %3300, %3296 ], [ %3373, %3369 ], [ %3444, %3440 ], [ %3423, %3447 ]
  %3452 = phi { i32, i1 } [ %3305, %3303 ], [ %3378, %3376 ], [ %3301, %3296 ], [ %3374, %3369 ], [ %3445, %3440 ], [ %3449, %3447 ]
  %3453 = extractvalue { i32, i1 } %3452, 0
  store i32 %3453, ptr %2840, align 4, !tbaa !26
  br label %3454

3454:                                             ; preds = %3182, %3450
  %3455 = phi i16 [ %3451, %3450 ], [ %3177, %3182 ]
  %3456 = phi i32 [ %3453, %3450 ], [ %3179, %3182 ]
  %3457 = icmp eq i16 %3124, 0
  br i1 %3457, label %3461, label %3458

3458:                                             ; preds = %3454
  %3459 = select i1 %3128, i32 3, i32 4
  %3460 = select i1 %3128, i32 6, i32 7
  br label %3461

3461:                                             ; preds = %3458, %3454, %3112
  %3462 = phi i16 [ %3120, %3112 ], [ %3455, %3454 ], [ %3455, %3458 ]
  %3463 = phi i32 [ %3119, %3112 ], [ %3456, %3454 ], [ %3456, %3458 ]
  %3464 = phi i32 [ %3114, %3112 ], [ 3, %3454 ], [ %3459, %3458 ]
  %3465 = phi i32 [ %3115, %3112 ], [ 138, %3454 ], [ %3460, %3458 ]
  %3466 = phi i32 [ %3126, %3112 ], [ 0, %3454 ], [ 0, %3458 ]
  %3467 = phi i32 [ %3118, %3112 ], [ %3117, %3454 ], [ %3117, %3458 ]
  %3468 = icmp sgt i32 %3113, %3092
  br i1 %3468, label %3469, label %3107, !llvm.loop !83

3469:                                             ; preds = %3461, %3091
  %3470 = phi i16 [ %3083, %3091 ], [ %3462, %3461 ]
  %3471 = phi i32 [ %3085, %3091 ], [ %3463, %3461 ]
  br i1 %2953, label %2905, label %3472, !prof !35, !nosanitize !32

3472:                                             ; preds = %3469
  %3473 = extractvalue { i32, i1 } %2952, 0, !nosanitize !32
  %3474 = icmp slt i32 %3473, 0
  br i1 %3474, label %3850, label %3475

3475:                                             ; preds = %3472
  %3476 = load i16, ptr %1548, align 2, !tbaa !28
  %3477 = icmp eq i16 %3476, 0
  %3478 = select i1 %3477, i32 138, i32 7
  %3479 = select i1 %3477, i32 3, i32 4
  %3480 = zext i16 %3476 to i32
  %3481 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3482 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3483 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3484 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3485 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3486 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3487 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3493

3488:                                             ; preds = %3842
  %3489 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3494, i32 1), !nosanitize !32
  %3490 = extractvalue { i32, i1 } %3489, 0, !nosanitize !32
  %3491 = extractvalue { i32, i1 } %3489, 1, !nosanitize !32
  br i1 %3491, label %3492, label %3493, !prof !75, !llvm.loop !83, !nosanitize !32

3492:                                             ; preds = %3821, %3786, %3750, %3715, %3677, %3642, %3599, %3488, %3547
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3493:                                             ; preds = %3475, %3488
  %3494 = phi i32 [ 1, %3475 ], [ %3490, %3488 ]
  %3495 = phi i32 [ %3479, %3475 ], [ %3845, %3488 ]
  %3496 = phi i32 [ %3478, %3475 ], [ %3846, %3488 ]
  %3497 = phi i32 [ 0, %3475 ], [ %3847, %3488 ]
  %3498 = phi i32 [ %3480, %3475 ], [ %3506, %3488 ]
  %3499 = phi i32 [ -1, %3475 ], [ %3848, %3488 ]
  %3500 = phi i32 [ %3471, %3475 ], [ %3844, %3488 ]
  %3501 = phi i16 [ %3470, %3475 ], [ %3843, %3488 ]
  %3502 = sext i32 %3494 to i64
  %3503 = getelementptr [4 x i8], ptr %0, i64 %3502
  %3504 = getelementptr i8, ptr %3503, i64 2506
  %3505 = load i16, ptr %3504, align 2, !tbaa !28
  %3506 = zext i16 %3505 to i32
  %3507 = add nsw i32 %3497, 1
  %3508 = icmp slt i32 %3507, %3496
  %3509 = icmp eq i32 %3498, %3506
  %3510 = select i1 %3508, i1 %3509, i1 false
  br i1 %3510, label %3842, label %3511

3511:                                             ; preds = %3493
  %3512 = icmp slt i32 %3507, %3495
  br i1 %3512, label %3513, label %3566

3513:                                             ; preds = %3511
  %3514 = zext nneg i32 %3498 to i64
  %3515 = getelementptr inbounds nuw [4 x i8], ptr %3481, i64 %3514
  %3516 = getelementptr inbounds nuw i8, ptr %3515, i64 2
  br label %3517

3517:                                             ; preds = %3563, %3513
  %3518 = phi i16 [ %3558, %3563 ], [ %3501, %3513 ]
  %3519 = phi i32 [ %3560, %3563 ], [ %3500, %3513 ]
  %3520 = phi i32 [ %3564, %3563 ], [ %3507, %3513 ]
  %3521 = load i16, ptr %3516, align 2, !tbaa !28
  %3522 = zext i16 %3521 to i32
  %3523 = sub nsw i32 16, %3522
  %3524 = icmp sgt i32 %3519, %3523
  %3525 = load i16, ptr %3515, align 4, !tbaa !28
  %3526 = zext i16 %3525 to i32
  %3527 = shl i32 %3526, %3519
  %3528 = trunc i32 %3527 to i16
  %3529 = or i16 %3518, %3528
  store i16 %3529, ptr %3038, align 8, !tbaa !25
  br i1 %3524, label %3531, label %3554

3530:                                             ; preds = %3805, %3770, %3734, %3699, %3661, %3626, %3583, %3557, %3531
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

3531:                                             ; preds = %3517
  %3532 = trunc i16 %3529 to i8
  %3533 = load ptr, ptr %3039, align 8, !tbaa !33
  %3534 = load i64, ptr %3040, align 8, !tbaa !34
  %3535 = add i64 %3534, 1
  store i64 %3535, ptr %3040, align 8, !tbaa !34
  %3536 = getelementptr inbounds nuw i8, ptr %3533, i64 %3534
  store i8 %3532, ptr %3536, align 1, !tbaa !28
  %3537 = load i16, ptr %3038, align 8, !tbaa !25
  %3538 = lshr i16 %3537, 8
  %3539 = trunc nuw i16 %3538 to i8
  %3540 = load ptr, ptr %3039, align 8, !tbaa !33
  %3541 = load i64, ptr %3040, align 8, !tbaa !34
  %3542 = add i64 %3541, 1
  store i64 %3542, ptr %3040, align 8, !tbaa !34
  %3543 = getelementptr inbounds nuw i8, ptr %3540, i64 %3541
  store i8 %3539, ptr %3543, align 1, !tbaa !28
  %3544 = load i32, ptr %2840, align 4, !tbaa !26
  %3545 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3544), !nosanitize !32
  %3546 = extractvalue { i32, i1 } %3545, 1, !nosanitize !32
  br i1 %3546, label %3530, label %3547, !prof !35, !nosanitize !32

3547:                                             ; preds = %3531
  %3548 = extractvalue { i32, i1 } %3545, 0, !nosanitize !32
  %3549 = lshr i32 %3526, %3548
  %3550 = trunc nuw i32 %3549 to i16
  store i16 %3550, ptr %3038, align 8, !tbaa !25
  %3551 = add nsw i32 %3522, -16
  %3552 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3544, i32 %3551), !nosanitize !32
  %3553 = extractvalue { i32, i1 } %3552, 1, !nosanitize !32
  br i1 %3553, label %3492, label %3557, !prof !35, !nosanitize !32

3554:                                             ; preds = %3517
  %3555 = add nsw i32 %3519, %3522
  %3556 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3555, 0
  br label %3557

3557:                                             ; preds = %3554, %3547
  %3558 = phi i16 [ %3550, %3547 ], [ %3529, %3554 ]
  %3559 = phi { i32, i1 } [ %3552, %3547 ], [ %3556, %3554 ]
  %3560 = extractvalue { i32, i1 } %3559, 0
  store i32 %3560, ptr %2840, align 4, !tbaa !26
  %3561 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3520, i32 -1)
  %3562 = extractvalue { i32, i1 } %3561, 1, !nosanitize !32
  br i1 %3562, label %3530, label %3563, !prof !35, !nosanitize !32

3563:                                             ; preds = %3557
  %3564 = extractvalue { i32, i1 } %3561, 0, !nosanitize !32
  %3565 = icmp eq i32 %3564, 0
  br i1 %3565, label %3835, label %3517, !llvm.loop !84

3566:                                             ; preds = %3511
  %3567 = icmp eq i32 %3498, 0
  br i1 %3567, label %3687, label %3568

3568:                                             ; preds = %3566
  %3569 = icmp eq i32 %3498, %3499
  br i1 %3569, label %3613, label %3570

3570:                                             ; preds = %3568
  %3571 = zext nneg i32 %3498 to i64
  %3572 = getelementptr inbounds nuw [4 x i8], ptr %3481, i64 %3571
  %3573 = getelementptr inbounds nuw i8, ptr %3572, i64 2
  %3574 = load i16, ptr %3573, align 2, !tbaa !28
  %3575 = zext i16 %3574 to i32
  %3576 = sub nsw i32 16, %3575
  %3577 = icmp sgt i32 %3500, %3576
  %3578 = load i16, ptr %3572, align 4, !tbaa !28
  %3579 = zext i16 %3578 to i32
  %3580 = shl i32 %3579, %3500
  %3581 = trunc i32 %3580 to i16
  %3582 = or i16 %3501, %3581
  store i16 %3582, ptr %3038, align 8, !tbaa !25
  br i1 %3577, label %3583, label %3606

3583:                                             ; preds = %3570
  %3584 = trunc i16 %3582 to i8
  %3585 = load ptr, ptr %3039, align 8, !tbaa !33
  %3586 = load i64, ptr %3040, align 8, !tbaa !34
  %3587 = add i64 %3586, 1
  store i64 %3587, ptr %3040, align 8, !tbaa !34
  %3588 = getelementptr inbounds nuw i8, ptr %3585, i64 %3586
  store i8 %3584, ptr %3588, align 1, !tbaa !28
  %3589 = load i16, ptr %3038, align 8, !tbaa !25
  %3590 = lshr i16 %3589, 8
  %3591 = trunc nuw i16 %3590 to i8
  %3592 = load ptr, ptr %3039, align 8, !tbaa !33
  %3593 = load i64, ptr %3040, align 8, !tbaa !34
  %3594 = add i64 %3593, 1
  store i64 %3594, ptr %3040, align 8, !tbaa !34
  %3595 = getelementptr inbounds nuw i8, ptr %3592, i64 %3593
  store i8 %3591, ptr %3595, align 1, !tbaa !28
  %3596 = load i32, ptr %2840, align 4, !tbaa !26
  %3597 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3596), !nosanitize !32
  %3598 = extractvalue { i32, i1 } %3597, 1, !nosanitize !32
  br i1 %3598, label %3530, label %3599, !prof !35, !nosanitize !32

3599:                                             ; preds = %3583
  %3600 = extractvalue { i32, i1 } %3597, 0, !nosanitize !32
  %3601 = lshr i32 %3579, %3600
  %3602 = trunc nuw i32 %3601 to i16
  store i16 %3602, ptr %3038, align 8, !tbaa !25
  %3603 = add nsw i32 %3575, -16
  %3604 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3596, i32 %3603), !nosanitize !32
  %3605 = extractvalue { i32, i1 } %3604, 1, !nosanitize !32
  br i1 %3605, label %3492, label %3609, !prof !35, !nosanitize !32

3606:                                             ; preds = %3570
  %3607 = add nsw i32 %3500, %3575
  %3608 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3607, 0
  br label %3609

3609:                                             ; preds = %3606, %3599
  %3610 = phi i16 [ %3602, %3599 ], [ %3582, %3606 ]
  %3611 = phi { i32, i1 } [ %3604, %3599 ], [ %3608, %3606 ]
  %3612 = extractvalue { i32, i1 } %3611, 0
  store i32 %3612, ptr %2840, align 4, !tbaa !26
  br label %3613

3613:                                             ; preds = %3609, %3568
  %3614 = phi i16 [ %3610, %3609 ], [ %3501, %3568 ]
  %3615 = phi i32 [ %3612, %3609 ], [ %3500, %3568 ]
  %3616 = phi i32 [ %3497, %3609 ], [ %3507, %3568 ]
  %3617 = load i16, ptr %3483, align 2, !tbaa !28
  %3618 = zext i16 %3617 to i32
  %3619 = sub nsw i32 16, %3618
  %3620 = icmp sgt i32 %3615, %3619
  %3621 = load i16, ptr %3482, align 4, !tbaa !28
  %3622 = zext i16 %3621 to i32
  %3623 = shl i32 %3622, %3615
  %3624 = trunc i32 %3623 to i16
  %3625 = or i16 %3614, %3624
  br i1 %3620, label %3626, label %3649

3626:                                             ; preds = %3613
  store i16 %3625, ptr %3038, align 8, !tbaa !25
  %3627 = trunc i16 %3625 to i8
  %3628 = load ptr, ptr %3039, align 8, !tbaa !33
  %3629 = load i64, ptr %3040, align 8, !tbaa !34
  %3630 = add i64 %3629, 1
  store i64 %3630, ptr %3040, align 8, !tbaa !34
  %3631 = getelementptr inbounds nuw i8, ptr %3628, i64 %3629
  store i8 %3627, ptr %3631, align 1, !tbaa !28
  %3632 = load i16, ptr %3038, align 8, !tbaa !25
  %3633 = lshr i16 %3632, 8
  %3634 = trunc nuw i16 %3633 to i8
  %3635 = load ptr, ptr %3039, align 8, !tbaa !33
  %3636 = load i64, ptr %3040, align 8, !tbaa !34
  %3637 = add i64 %3636, 1
  store i64 %3637, ptr %3040, align 8, !tbaa !34
  %3638 = getelementptr inbounds nuw i8, ptr %3635, i64 %3636
  store i8 %3634, ptr %3638, align 1, !tbaa !28
  %3639 = load i32, ptr %2840, align 4, !tbaa !26
  %3640 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3639), !nosanitize !32
  %3641 = extractvalue { i32, i1 } %3640, 1, !nosanitize !32
  br i1 %3641, label %3530, label %3642, !prof !35, !nosanitize !32

3642:                                             ; preds = %3626
  %3643 = extractvalue { i32, i1 } %3640, 0, !nosanitize !32
  %3644 = lshr i32 %3622, %3643
  %3645 = trunc nuw i32 %3644 to i16
  %3646 = add nsw i32 %3618, -16
  %3647 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3639, i32 %3646), !nosanitize !32
  %3648 = extractvalue { i32, i1 } %3647, 1, !nosanitize !32
  br i1 %3648, label %3492, label %3652, !prof !35, !nosanitize !32

3649:                                             ; preds = %3613
  %3650 = add nsw i32 %3615, %3618
  %3651 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3650, 0
  br label %3652

3652:                                             ; preds = %3649, %3642
  %3653 = phi i16 [ %3645, %3642 ], [ %3625, %3649 ]
  %3654 = phi { i32, i1 } [ %3647, %3642 ], [ %3651, %3649 ]
  %3655 = extractvalue { i32, i1 } %3654, 0
  store i32 %3655, ptr %2840, align 4, !tbaa !26
  %3656 = icmp sgt i32 %3655, 14
  %3657 = add i32 %3616, 65533
  %3658 = shl i32 %3657, %3655
  %3659 = trunc i32 %3658 to i16
  %3660 = or i16 %3653, %3659
  store i16 %3660, ptr %3038, align 8, !tbaa !25
  br i1 %3656, label %3661, label %3684

3661:                                             ; preds = %3652
  %3662 = trunc i16 %3660 to i8
  %3663 = load ptr, ptr %3039, align 8, !tbaa !33
  %3664 = load i64, ptr %3040, align 8, !tbaa !34
  %3665 = add i64 %3664, 1
  store i64 %3665, ptr %3040, align 8, !tbaa !34
  %3666 = getelementptr inbounds nuw i8, ptr %3663, i64 %3664
  store i8 %3662, ptr %3666, align 1, !tbaa !28
  %3667 = load i16, ptr %3038, align 8, !tbaa !25
  %3668 = lshr i16 %3667, 8
  %3669 = trunc nuw i16 %3668 to i8
  %3670 = load ptr, ptr %3039, align 8, !tbaa !33
  %3671 = load i64, ptr %3040, align 8, !tbaa !34
  %3672 = add i64 %3671, 1
  store i64 %3672, ptr %3040, align 8, !tbaa !34
  %3673 = getelementptr inbounds nuw i8, ptr %3670, i64 %3671
  store i8 %3669, ptr %3673, align 1, !tbaa !28
  %3674 = load i32, ptr %2840, align 4, !tbaa !26
  %3675 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3674), !nosanitize !32
  %3676 = extractvalue { i32, i1 } %3675, 1, !nosanitize !32
  br i1 %3676, label %3530, label %3677, !prof !35, !nosanitize !32

3677:                                             ; preds = %3661
  %3678 = extractvalue { i32, i1 } %3675, 0, !nosanitize !32
  %3679 = and i32 %3657, 65535
  %3680 = lshr i32 %3679, %3678
  %3681 = trunc nuw i32 %3680 to i16
  store i16 %3681, ptr %3038, align 8, !tbaa !25
  %3682 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3674, i32 -14), !nosanitize !32
  %3683 = extractvalue { i32, i1 } %3682, 1, !nosanitize !32
  br i1 %3683, label %3492, label %3831, !prof !35, !nosanitize !32

3684:                                             ; preds = %3652
  %3685 = add nsw i32 %3655, 2
  %3686 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3685, 0
  br label %3831

3687:                                             ; preds = %3566
  %3688 = icmp slt i32 %3497, 10
  br i1 %3688, label %3689, label %3760

3689:                                             ; preds = %3687
  %3690 = load i16, ptr %3487, align 2, !tbaa !28
  %3691 = zext i16 %3690 to i32
  %3692 = sub nsw i32 16, %3691
  %3693 = icmp sgt i32 %3500, %3692
  %3694 = load i16, ptr %3486, align 4, !tbaa !28
  %3695 = zext i16 %3694 to i32
  %3696 = shl i32 %3695, %3500
  %3697 = trunc i32 %3696 to i16
  %3698 = or i16 %3501, %3697
  br i1 %3693, label %3699, label %3722

3699:                                             ; preds = %3689
  store i16 %3698, ptr %3038, align 8, !tbaa !25
  %3700 = trunc i16 %3698 to i8
  %3701 = load ptr, ptr %3039, align 8, !tbaa !33
  %3702 = load i64, ptr %3040, align 8, !tbaa !34
  %3703 = add i64 %3702, 1
  store i64 %3703, ptr %3040, align 8, !tbaa !34
  %3704 = getelementptr inbounds nuw i8, ptr %3701, i64 %3702
  store i8 %3700, ptr %3704, align 1, !tbaa !28
  %3705 = load i16, ptr %3038, align 8, !tbaa !25
  %3706 = lshr i16 %3705, 8
  %3707 = trunc nuw i16 %3706 to i8
  %3708 = load ptr, ptr %3039, align 8, !tbaa !33
  %3709 = load i64, ptr %3040, align 8, !tbaa !34
  %3710 = add i64 %3709, 1
  store i64 %3710, ptr %3040, align 8, !tbaa !34
  %3711 = getelementptr inbounds nuw i8, ptr %3708, i64 %3709
  store i8 %3707, ptr %3711, align 1, !tbaa !28
  %3712 = load i32, ptr %2840, align 4, !tbaa !26
  %3713 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3712), !nosanitize !32
  %3714 = extractvalue { i32, i1 } %3713, 1, !nosanitize !32
  br i1 %3714, label %3530, label %3715, !prof !35, !nosanitize !32

3715:                                             ; preds = %3699
  %3716 = extractvalue { i32, i1 } %3713, 0, !nosanitize !32
  %3717 = lshr i32 %3695, %3716
  %3718 = trunc nuw i32 %3717 to i16
  %3719 = add nsw i32 %3691, -16
  %3720 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3712, i32 %3719), !nosanitize !32
  %3721 = extractvalue { i32, i1 } %3720, 1, !nosanitize !32
  br i1 %3721, label %3492, label %3725, !prof !35, !nosanitize !32

3722:                                             ; preds = %3689
  %3723 = add nsw i32 %3500, %3691
  %3724 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3723, 0
  br label %3725

3725:                                             ; preds = %3722, %3715
  %3726 = phi i16 [ %3718, %3715 ], [ %3698, %3722 ]
  %3727 = phi { i32, i1 } [ %3720, %3715 ], [ %3724, %3722 ]
  %3728 = extractvalue { i32, i1 } %3727, 0
  store i32 %3728, ptr %2840, align 4, !tbaa !26
  %3729 = icmp sgt i32 %3728, 13
  %3730 = add nsw i32 %3497, 65534
  %3731 = shl i32 %3730, %3728
  %3732 = trunc i32 %3731 to i16
  %3733 = or i16 %3726, %3732
  store i16 %3733, ptr %3038, align 8, !tbaa !25
  br i1 %3729, label %3734, label %3757

3734:                                             ; preds = %3725
  %3735 = trunc i16 %3733 to i8
  %3736 = load ptr, ptr %3039, align 8, !tbaa !33
  %3737 = load i64, ptr %3040, align 8, !tbaa !34
  %3738 = add i64 %3737, 1
  store i64 %3738, ptr %3040, align 8, !tbaa !34
  %3739 = getelementptr inbounds nuw i8, ptr %3736, i64 %3737
  store i8 %3735, ptr %3739, align 1, !tbaa !28
  %3740 = load i16, ptr %3038, align 8, !tbaa !25
  %3741 = lshr i16 %3740, 8
  %3742 = trunc nuw i16 %3741 to i8
  %3743 = load ptr, ptr %3039, align 8, !tbaa !33
  %3744 = load i64, ptr %3040, align 8, !tbaa !34
  %3745 = add i64 %3744, 1
  store i64 %3745, ptr %3040, align 8, !tbaa !34
  %3746 = getelementptr inbounds nuw i8, ptr %3743, i64 %3744
  store i8 %3742, ptr %3746, align 1, !tbaa !28
  %3747 = load i32, ptr %2840, align 4, !tbaa !26
  %3748 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3747), !nosanitize !32
  %3749 = extractvalue { i32, i1 } %3748, 1, !nosanitize !32
  br i1 %3749, label %3530, label %3750, !prof !35, !nosanitize !32

3750:                                             ; preds = %3734
  %3751 = extractvalue { i32, i1 } %3748, 0, !nosanitize !32
  %3752 = and i32 %3730, 65535
  %3753 = lshr i32 %3752, %3751
  %3754 = trunc nuw i32 %3753 to i16
  store i16 %3754, ptr %3038, align 8, !tbaa !25
  %3755 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3747, i32 -13), !nosanitize !32
  %3756 = extractvalue { i32, i1 } %3755, 1, !nosanitize !32
  br i1 %3756, label %3492, label %3831, !prof !35, !nosanitize !32

3757:                                             ; preds = %3725
  %3758 = add nsw i32 %3728, 3
  %3759 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3758, 0
  br label %3831

3760:                                             ; preds = %3687
  %3761 = load i16, ptr %3485, align 2, !tbaa !28
  %3762 = zext i16 %3761 to i32
  %3763 = sub nsw i32 16, %3762
  %3764 = icmp sgt i32 %3500, %3763
  %3765 = load i16, ptr %3484, align 4, !tbaa !28
  %3766 = zext i16 %3765 to i32
  %3767 = shl i32 %3766, %3500
  %3768 = trunc i32 %3767 to i16
  %3769 = or i16 %3501, %3768
  br i1 %3764, label %3770, label %3793

3770:                                             ; preds = %3760
  store i16 %3769, ptr %3038, align 8, !tbaa !25
  %3771 = trunc i16 %3769 to i8
  %3772 = load ptr, ptr %3039, align 8, !tbaa !33
  %3773 = load i64, ptr %3040, align 8, !tbaa !34
  %3774 = add i64 %3773, 1
  store i64 %3774, ptr %3040, align 8, !tbaa !34
  %3775 = getelementptr inbounds nuw i8, ptr %3772, i64 %3773
  store i8 %3771, ptr %3775, align 1, !tbaa !28
  %3776 = load i16, ptr %3038, align 8, !tbaa !25
  %3777 = lshr i16 %3776, 8
  %3778 = trunc nuw i16 %3777 to i8
  %3779 = load ptr, ptr %3039, align 8, !tbaa !33
  %3780 = load i64, ptr %3040, align 8, !tbaa !34
  %3781 = add i64 %3780, 1
  store i64 %3781, ptr %3040, align 8, !tbaa !34
  %3782 = getelementptr inbounds nuw i8, ptr %3779, i64 %3780
  store i8 %3778, ptr %3782, align 1, !tbaa !28
  %3783 = load i32, ptr %2840, align 4, !tbaa !26
  %3784 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3783), !nosanitize !32
  %3785 = extractvalue { i32, i1 } %3784, 1, !nosanitize !32
  br i1 %3785, label %3530, label %3786, !prof !35, !nosanitize !32

3786:                                             ; preds = %3770
  %3787 = extractvalue { i32, i1 } %3784, 0, !nosanitize !32
  %3788 = lshr i32 %3766, %3787
  %3789 = trunc nuw i32 %3788 to i16
  %3790 = add nsw i32 %3762, -16
  %3791 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3783, i32 %3790), !nosanitize !32
  %3792 = extractvalue { i32, i1 } %3791, 1, !nosanitize !32
  br i1 %3792, label %3492, label %3796, !prof !35, !nosanitize !32

3793:                                             ; preds = %3760
  %3794 = add nsw i32 %3500, %3762
  %3795 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3794, 0
  br label %3796

3796:                                             ; preds = %3793, %3786
  %3797 = phi i16 [ %3789, %3786 ], [ %3769, %3793 ]
  %3798 = phi { i32, i1 } [ %3791, %3786 ], [ %3795, %3793 ]
  %3799 = extractvalue { i32, i1 } %3798, 0
  store i32 %3799, ptr %2840, align 4, !tbaa !26
  %3800 = icmp sgt i32 %3799, 9
  %3801 = add nuw i32 %3497, 65526
  %3802 = shl i32 %3801, %3799
  %3803 = trunc i32 %3802 to i16
  %3804 = or i16 %3797, %3803
  store i16 %3804, ptr %3038, align 8, !tbaa !25
  br i1 %3800, label %3805, label %3828

3805:                                             ; preds = %3796
  %3806 = trunc i16 %3804 to i8
  %3807 = load ptr, ptr %3039, align 8, !tbaa !33
  %3808 = load i64, ptr %3040, align 8, !tbaa !34
  %3809 = add i64 %3808, 1
  store i64 %3809, ptr %3040, align 8, !tbaa !34
  %3810 = getelementptr inbounds nuw i8, ptr %3807, i64 %3808
  store i8 %3806, ptr %3810, align 1, !tbaa !28
  %3811 = load i16, ptr %3038, align 8, !tbaa !25
  %3812 = lshr i16 %3811, 8
  %3813 = trunc nuw i16 %3812 to i8
  %3814 = load ptr, ptr %3039, align 8, !tbaa !33
  %3815 = load i64, ptr %3040, align 8, !tbaa !34
  %3816 = add i64 %3815, 1
  store i64 %3816, ptr %3040, align 8, !tbaa !34
  %3817 = getelementptr inbounds nuw i8, ptr %3814, i64 %3815
  store i8 %3813, ptr %3817, align 1, !tbaa !28
  %3818 = load i32, ptr %2840, align 4, !tbaa !26
  %3819 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3818), !nosanitize !32
  %3820 = extractvalue { i32, i1 } %3819, 1, !nosanitize !32
  br i1 %3820, label %3530, label %3821, !prof !35, !nosanitize !32

3821:                                             ; preds = %3805
  %3822 = extractvalue { i32, i1 } %3819, 0, !nosanitize !32
  %3823 = and i32 %3801, 65535
  %3824 = lshr i32 %3823, %3822
  %3825 = trunc nuw i32 %3824 to i16
  store i16 %3825, ptr %3038, align 8, !tbaa !25
  %3826 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3818, i32 -9), !nosanitize !32
  %3827 = extractvalue { i32, i1 } %3826, 1, !nosanitize !32
  br i1 %3827, label %3492, label %3831, !prof !35, !nosanitize !32

3828:                                             ; preds = %3796
  %3829 = add nsw i32 %3799, 7
  %3830 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3829, 0
  br label %3831

3831:                                             ; preds = %3828, %3821, %3757, %3750, %3684, %3677
  %3832 = phi i16 [ %3660, %3684 ], [ %3733, %3757 ], [ %3681, %3677 ], [ %3754, %3750 ], [ %3825, %3821 ], [ %3804, %3828 ]
  %3833 = phi { i32, i1 } [ %3686, %3684 ], [ %3759, %3757 ], [ %3682, %3677 ], [ %3755, %3750 ], [ %3826, %3821 ], [ %3830, %3828 ]
  %3834 = extractvalue { i32, i1 } %3833, 0
  store i32 %3834, ptr %2840, align 4, !tbaa !26
  br label %3835

3835:                                             ; preds = %3563, %3831
  %3836 = phi i16 [ %3832, %3831 ], [ %3558, %3563 ]
  %3837 = phi i32 [ %3834, %3831 ], [ %3560, %3563 ]
  %3838 = icmp eq i16 %3505, 0
  br i1 %3838, label %3842, label %3839

3839:                                             ; preds = %3835
  %3840 = select i1 %3509, i32 3, i32 4
  %3841 = select i1 %3509, i32 6, i32 7
  br label %3842

3842:                                             ; preds = %3839, %3835, %3493
  %3843 = phi i16 [ %3501, %3493 ], [ %3836, %3835 ], [ %3836, %3839 ]
  %3844 = phi i32 [ %3500, %3493 ], [ %3837, %3835 ], [ %3837, %3839 ]
  %3845 = phi i32 [ %3495, %3493 ], [ 3, %3835 ], [ %3840, %3839 ]
  %3846 = phi i32 [ %3496, %3493 ], [ 138, %3835 ], [ %3841, %3839 ]
  %3847 = phi i32 [ %3507, %3493 ], [ 0, %3835 ], [ 0, %3839 ]
  %3848 = phi i32 [ %3499, %3493 ], [ %3498, %3835 ], [ %3498, %3839 ]
  %3849 = icmp sgt i32 %3494, %3473
  br i1 %3849, label %3850, label %3488, !llvm.loop !83

3850:                                             ; preds = %3842, %3472
  %3851 = phi i16 [ %3470, %3472 ], [ %3843, %3842 ]
  %3852 = phi i32 [ %3471, %3472 ], [ %3844, %3842 ]
  %3853 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %3854 = load i32, ptr %3853, align 4, !tbaa !31
  %3855 = icmp eq i32 %3854, 0
  br i1 %3855, label %4130, label %3856

3856:                                             ; preds = %3850
  %3857 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %3858

3858:                                             ; preds = %4125, %3856
  %3859 = phi i16 [ %4126, %4125 ], [ %3851, %3856 ]
  %3860 = phi i32 [ %4127, %4125 ], [ %3852, %3856 ]
  %3861 = phi i32 [ %3875, %4125 ], [ 0, %3856 ]
  %3862 = load ptr, ptr %3857, align 8, !tbaa !80
  %3863 = add nuw i32 %3861, 1
  %3864 = zext i32 %3861 to i64
  %3865 = getelementptr inbounds nuw i8, ptr %3862, i64 %3864
  %3866 = load i8, ptr %3865, align 1, !tbaa !28
  %3867 = zext i8 %3866 to i32
  %3868 = add i32 %3861, 2
  %3869 = zext i32 %3863 to i64
  %3870 = getelementptr inbounds nuw i8, ptr %3862, i64 %3869
  %3871 = load i8, ptr %3870, align 1, !tbaa !28
  %3872 = zext i8 %3871 to i32
  %3873 = shl nuw nsw i32 %3872, 8
  %3874 = or disjoint i32 %3873, %3867
  %3875 = add i32 %3861, 3
  %3876 = zext i32 %3868 to i64
  %3877 = getelementptr inbounds nuw i8, ptr %3862, i64 %3876
  %3878 = load i8, ptr %3877, align 1, !tbaa !28
  %3879 = zext i8 %3878 to i32
  %3880 = icmp eq i32 %3874, 0
  %3881 = zext i8 %3878 to i64
  br i1 %3880, label %3882, label %3922

3882:                                             ; preds = %3858
  %3883 = getelementptr inbounds nuw [4 x i8], ptr %1460, i64 %3881
  %3884 = getelementptr inbounds nuw i8, ptr %3883, i64 2
  %3885 = load i16, ptr %3884, align 2, !tbaa !28
  %3886 = zext i16 %3885 to i32
  %3887 = sub nsw i32 16, %3886
  %3888 = icmp sgt i32 %3860, %3887
  %3889 = load i16, ptr %3883, align 2, !tbaa !28
  %3890 = zext i16 %3889 to i32
  %3891 = shl i32 %3890, %3860
  %3892 = trunc i32 %3891 to i16
  %3893 = or i16 %3859, %3892
  store i16 %3893, ptr %3038, align 8, !tbaa !25
  br i1 %3888, label %3895, label %3919

3894:                                             ; preds = %4107, %4091, %4079, %4046, %4003, %3987, %3978, %3972, %3938, %3895, %4144
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

3895:                                             ; preds = %3882
  %3896 = trunc i16 %3893 to i8
  %3897 = load ptr, ptr %3039, align 8, !tbaa !33
  %3898 = load i64, ptr %3040, align 8, !tbaa !34
  %3899 = add i64 %3898, 1
  store i64 %3899, ptr %3040, align 8, !tbaa !34
  %3900 = getelementptr inbounds nuw i8, ptr %3897, i64 %3898
  store i8 %3896, ptr %3900, align 1, !tbaa !28
  %3901 = load i16, ptr %3038, align 8, !tbaa !25
  %3902 = lshr i16 %3901, 8
  %3903 = trunc nuw i16 %3902 to i8
  %3904 = load ptr, ptr %3039, align 8, !tbaa !33
  %3905 = load i64, ptr %3040, align 8, !tbaa !34
  %3906 = add i64 %3905, 1
  store i64 %3906, ptr %3040, align 8, !tbaa !34
  %3907 = getelementptr inbounds nuw i8, ptr %3904, i64 %3905
  store i8 %3903, ptr %3907, align 1, !tbaa !28
  %3908 = load i32, ptr %2840, align 4, !tbaa !26
  %3909 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3908), !nosanitize !32
  %3910 = extractvalue { i32, i1 } %3909, 1, !nosanitize !32
  br i1 %3910, label %3894, label %3911, !prof !35, !nosanitize !32

3911:                                             ; preds = %3895
  %3912 = extractvalue { i32, i1 } %3909, 0, !nosanitize !32
  %3913 = lshr i32 %3890, %3912
  %3914 = trunc nuw i32 %3913 to i16
  store i16 %3914, ptr %3038, align 8, !tbaa !25
  %3915 = add nsw i32 %3886, -16
  %3916 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3908, i32 %3915), !nosanitize !32
  %3917 = extractvalue { i32, i1 } %3916, 1, !nosanitize !32
  br i1 %3917, label %3918, label %4121, !prof !35, !nosanitize !32

3918:                                             ; preds = %4118, %4114, %4062, %4014, %4010, %3954, %3911, %4160
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !32
  unreachable, !nosanitize !32

3919:                                             ; preds = %3882
  %3920 = add nsw i32 %3860, %3886
  %3921 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3920, 0
  br label %4121

3922:                                             ; preds = %3858
  %3923 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %3881
  %3924 = load i8, ptr %3923, align 1, !tbaa !28
  %3925 = zext i8 %3924 to i64
  %3926 = getelementptr inbounds nuw [4 x i8], ptr %1460, i64 %3925
  %3927 = getelementptr inbounds nuw i8, ptr %3926, i64 1028
  %3928 = getelementptr inbounds nuw i8, ptr %3926, i64 1030
  %3929 = load i16, ptr %3928, align 2, !tbaa !28
  %3930 = zext i16 %3929 to i32
  %3931 = sub nsw i32 16, %3930
  %3932 = icmp sgt i32 %3860, %3931
  %3933 = load i16, ptr %3927, align 2, !tbaa !28
  %3934 = zext i16 %3933 to i32
  %3935 = shl i32 %3934, %3860
  %3936 = trunc i32 %3935 to i16
  %3937 = or i16 %3859, %3936
  store i16 %3937, ptr %3038, align 8, !tbaa !25
  br i1 %3932, label %3938, label %3961

3938:                                             ; preds = %3922
  %3939 = trunc i16 %3937 to i8
  %3940 = load ptr, ptr %3039, align 8, !tbaa !33
  %3941 = load i64, ptr %3040, align 8, !tbaa !34
  %3942 = add i64 %3941, 1
  store i64 %3942, ptr %3040, align 8, !tbaa !34
  %3943 = getelementptr inbounds nuw i8, ptr %3940, i64 %3941
  store i8 %3939, ptr %3943, align 1, !tbaa !28
  %3944 = load i16, ptr %3038, align 8, !tbaa !25
  %3945 = lshr i16 %3944, 8
  %3946 = trunc nuw i16 %3945 to i8
  %3947 = load ptr, ptr %3039, align 8, !tbaa !33
  %3948 = load i64, ptr %3040, align 8, !tbaa !34
  %3949 = add i64 %3948, 1
  store i64 %3949, ptr %3040, align 8, !tbaa !34
  %3950 = getelementptr inbounds nuw i8, ptr %3947, i64 %3948
  store i8 %3946, ptr %3950, align 1, !tbaa !28
  %3951 = load i32, ptr %2840, align 4, !tbaa !26
  %3952 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3951), !nosanitize !32
  %3953 = extractvalue { i32, i1 } %3952, 1, !nosanitize !32
  br i1 %3953, label %3894, label %3954, !prof !35, !nosanitize !32

3954:                                             ; preds = %3938
  %3955 = extractvalue { i32, i1 } %3952, 0, !nosanitize !32
  %3956 = lshr i32 %3934, %3955
  %3957 = trunc nuw i32 %3956 to i16
  store i16 %3957, ptr %3038, align 8, !tbaa !25
  %3958 = add nsw i32 %3930, -16
  %3959 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3951, i32 %3958), !nosanitize !32
  %3960 = extractvalue { i32, i1 } %3959, 1, !nosanitize !32
  br i1 %3960, label %3918, label %3964, !prof !35, !nosanitize !32

3961:                                             ; preds = %3922
  %3962 = add nsw i32 %3860, %3930
  %3963 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3962, 0
  br label %3964

3964:                                             ; preds = %3961, %3954
  %3965 = phi i16 [ %3957, %3954 ], [ %3937, %3961 ]
  %3966 = phi { i32, i1 } [ %3959, %3954 ], [ %3963, %3961 ]
  %3967 = extractvalue { i32, i1 } %3966, 0
  store i32 %3967, ptr %2840, align 4, !tbaa !26
  %3968 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %3925
  %3969 = load i32, ptr %3968, align 4, !tbaa !4
  %3970 = add i8 %3924, -28
  %3971 = icmp ult i8 %3970, -20
  br i1 %3971, label %4021, label %3972

3972:                                             ; preds = %3964
  %3973 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %3925
  %3974 = load i32, ptr %3973, align 4, !tbaa !4
  %3975 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3879, i32 %3974), !nosanitize !32
  %3976 = extractvalue { i32, i1 } %3975, 0, !nosanitize !32
  %3977 = extractvalue { i32, i1 } %3975, 1, !nosanitize !32
  br i1 %3977, label %3894, label %3978, !prof !35, !nosanitize !32

3978:                                             ; preds = %3972
  %3979 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3969), !nosanitize !32
  %3980 = extractvalue { i32, i1 } %3979, 1, !nosanitize !32
  br i1 %3980, label %3894, label %3981, !prof !35, !nosanitize !32

3981:                                             ; preds = %3978
  %3982 = extractvalue { i32, i1 } %3979, 0, !nosanitize !32
  %3983 = icmp sgt i32 %3967, %3982
  %3984 = shl i32 %3976, %3967
  %3985 = trunc i32 %3984 to i16
  %3986 = or i16 %3965, %3985
  store i16 %3986, ptr %3038, align 8, !tbaa !25
  br i1 %3983, label %3987, label %4014

3987:                                             ; preds = %3981
  %3988 = trunc i16 %3986 to i8
  %3989 = load ptr, ptr %3039, align 8, !tbaa !33
  %3990 = load i64, ptr %3040, align 8, !tbaa !34
  %3991 = add i64 %3990, 1
  store i64 %3991, ptr %3040, align 8, !tbaa !34
  %3992 = getelementptr inbounds nuw i8, ptr %3989, i64 %3990
  store i8 %3988, ptr %3992, align 1, !tbaa !28
  %3993 = load i16, ptr %3038, align 8, !tbaa !25
  %3994 = lshr i16 %3993, 8
  %3995 = trunc nuw i16 %3994 to i8
  %3996 = load ptr, ptr %3039, align 8, !tbaa !33
  %3997 = load i64, ptr %3040, align 8, !tbaa !34
  %3998 = add i64 %3997, 1
  store i64 %3998, ptr %3040, align 8, !tbaa !34
  %3999 = getelementptr inbounds nuw i8, ptr %3996, i64 %3997
  store i8 %3995, ptr %3999, align 1, !tbaa !28
  %4000 = load i32, ptr %2840, align 4, !tbaa !26
  %4001 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4000), !nosanitize !32
  %4002 = extractvalue { i32, i1 } %4001, 1, !nosanitize !32
  br i1 %4002, label %3894, label %4003, !prof !35, !nosanitize !32

4003:                                             ; preds = %3987
  %4004 = extractvalue { i32, i1 } %4001, 0, !nosanitize !32
  %4005 = and i32 %3976, 65535
  %4006 = lshr i32 %4005, %4004
  %4007 = trunc nuw i32 %4006 to i16
  store i16 %4007, ptr %3038, align 8, !tbaa !25
  %4008 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3969, i32 -16)
  %4009 = extractvalue { i32, i1 } %4008, 1, !nosanitize !32
  br i1 %4009, label %3894, label %4010, !prof !35, !nosanitize !32

4010:                                             ; preds = %4003
  %4011 = extractvalue { i32, i1 } %4008, 0, !nosanitize !32
  %4012 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4000, i32 %4011), !nosanitize !32
  %4013 = extractvalue { i32, i1 } %4012, 1, !nosanitize !32
  br i1 %4013, label %3918, label %4017, !prof !35, !nosanitize !32

4014:                                             ; preds = %3981
  %4015 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3967, i32 %3969), !nosanitize !32
  %4016 = extractvalue { i32, i1 } %4015, 1, !nosanitize !32
  br i1 %4016, label %3918, label %4017, !prof !35, !nosanitize !32

4017:                                             ; preds = %4014, %4010
  %4018 = phi i16 [ %4007, %4010 ], [ %3986, %4014 ]
  %4019 = phi { i32, i1 } [ %4012, %4010 ], [ %4015, %4014 ]
  %4020 = extractvalue { i32, i1 } %4019, 0
  store i32 %4020, ptr %2840, align 4, !tbaa !26
  br label %4021

4021:                                             ; preds = %4017, %3964
  %4022 = phi i16 [ %4018, %4017 ], [ %3965, %3964 ]
  %4023 = phi i32 [ %4020, %4017 ], [ %3967, %3964 ]
  %4024 = add nsw i32 %3874, -1
  %4025 = icmp samesign ult i32 %3874, 257
  %4026 = zext nneg i32 %4024 to i64
  %4027 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4026
  %4028 = lshr i32 %4024, 7
  %4029 = zext nneg i32 %4028 to i64
  %4030 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4029
  %4031 = getelementptr inbounds nuw i8, ptr %4030, i64 256
  %4032 = select i1 %4025, ptr %4027, ptr %4031
  %4033 = load i8, ptr %4032, align 1, !tbaa !28
  %4034 = zext i8 %4033 to i64
  %4035 = getelementptr inbounds nuw [4 x i8], ptr %1542, i64 %4034
  %4036 = getelementptr inbounds nuw i8, ptr %4035, i64 2
  %4037 = load i16, ptr %4036, align 2, !tbaa !28
  %4038 = zext i16 %4037 to i32
  %4039 = sub nsw i32 16, %4038
  %4040 = icmp sgt i32 %4023, %4039
  %4041 = load i16, ptr %4035, align 2, !tbaa !28
  %4042 = zext i16 %4041 to i32
  %4043 = shl i32 %4042, %4023
  %4044 = trunc i32 %4043 to i16
  %4045 = or i16 %4022, %4044
  store i16 %4045, ptr %3038, align 8, !tbaa !25
  br i1 %4040, label %4046, label %4069

4046:                                             ; preds = %4021
  %4047 = trunc i16 %4045 to i8
  %4048 = load ptr, ptr %3039, align 8, !tbaa !33
  %4049 = load i64, ptr %3040, align 8, !tbaa !34
  %4050 = add i64 %4049, 1
  store i64 %4050, ptr %3040, align 8, !tbaa !34
  %4051 = getelementptr inbounds nuw i8, ptr %4048, i64 %4049
  store i8 %4047, ptr %4051, align 1, !tbaa !28
  %4052 = load i16, ptr %3038, align 8, !tbaa !25
  %4053 = lshr i16 %4052, 8
  %4054 = trunc nuw i16 %4053 to i8
  %4055 = load ptr, ptr %3039, align 8, !tbaa !33
  %4056 = load i64, ptr %3040, align 8, !tbaa !34
  %4057 = add i64 %4056, 1
  store i64 %4057, ptr %3040, align 8, !tbaa !34
  %4058 = getelementptr inbounds nuw i8, ptr %4055, i64 %4056
  store i8 %4054, ptr %4058, align 1, !tbaa !28
  %4059 = load i32, ptr %2840, align 4, !tbaa !26
  %4060 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4059), !nosanitize !32
  %4061 = extractvalue { i32, i1 } %4060, 1, !nosanitize !32
  br i1 %4061, label %3894, label %4062, !prof !35, !nosanitize !32

4062:                                             ; preds = %4046
  %4063 = extractvalue { i32, i1 } %4060, 0, !nosanitize !32
  %4064 = lshr i32 %4042, %4063
  %4065 = trunc nuw i32 %4064 to i16
  store i16 %4065, ptr %3038, align 8, !tbaa !25
  %4066 = add nsw i32 %4038, -16
  %4067 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4059, i32 %4066), !nosanitize !32
  %4068 = extractvalue { i32, i1 } %4067, 1, !nosanitize !32
  br i1 %4068, label %3918, label %4072, !prof !35, !nosanitize !32

4069:                                             ; preds = %4021
  %4070 = add nsw i32 %4023, %4038
  %4071 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4070, 0
  br label %4072

4072:                                             ; preds = %4069, %4062
  %4073 = phi i16 [ %4065, %4062 ], [ %4045, %4069 ]
  %4074 = phi { i32, i1 } [ %4067, %4062 ], [ %4071, %4069 ]
  %4075 = extractvalue { i32, i1 } %4074, 0
  store i32 %4075, ptr %2840, align 4, !tbaa !26
  %4076 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %4034
  %4077 = load i32, ptr %4076, align 4, !tbaa !4
  %4078 = icmp ult i8 %4033, 4
  br i1 %4078, label %4125, label %4079

4079:                                             ; preds = %4072
  %4080 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %4034
  %4081 = load i32, ptr %4080, align 4, !tbaa !4
  %4082 = sub i32 %4024, %4081
  %4083 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4077), !nosanitize !32
  %4084 = extractvalue { i32, i1 } %4083, 1, !nosanitize !32
  br i1 %4084, label %3894, label %4085, !prof !35, !nosanitize !32

4085:                                             ; preds = %4079
  %4086 = extractvalue { i32, i1 } %4083, 0, !nosanitize !32
  %4087 = icmp sgt i32 %4075, %4086
  %4088 = shl i32 %4082, %4075
  %4089 = trunc i32 %4088 to i16
  %4090 = or i16 %4073, %4089
  store i16 %4090, ptr %3038, align 8, !tbaa !25
  br i1 %4087, label %4091, label %4118

4091:                                             ; preds = %4085
  %4092 = trunc i16 %4090 to i8
  %4093 = load ptr, ptr %3039, align 8, !tbaa !33
  %4094 = load i64, ptr %3040, align 8, !tbaa !34
  %4095 = add i64 %4094, 1
  store i64 %4095, ptr %3040, align 8, !tbaa !34
  %4096 = getelementptr inbounds nuw i8, ptr %4093, i64 %4094
  store i8 %4092, ptr %4096, align 1, !tbaa !28
  %4097 = load i16, ptr %3038, align 8, !tbaa !25
  %4098 = lshr i16 %4097, 8
  %4099 = trunc nuw i16 %4098 to i8
  %4100 = load ptr, ptr %3039, align 8, !tbaa !33
  %4101 = load i64, ptr %3040, align 8, !tbaa !34
  %4102 = add i64 %4101, 1
  store i64 %4102, ptr %3040, align 8, !tbaa !34
  %4103 = getelementptr inbounds nuw i8, ptr %4100, i64 %4101
  store i8 %4099, ptr %4103, align 1, !tbaa !28
  %4104 = load i32, ptr %2840, align 4, !tbaa !26
  %4105 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4104), !nosanitize !32
  %4106 = extractvalue { i32, i1 } %4105, 1, !nosanitize !32
  br i1 %4106, label %3894, label %4107, !prof !35, !nosanitize !32

4107:                                             ; preds = %4091
  %4108 = extractvalue { i32, i1 } %4105, 0, !nosanitize !32
  %4109 = and i32 %4082, 65535
  %4110 = lshr i32 %4109, %4108
  %4111 = trunc nuw i32 %4110 to i16
  store i16 %4111, ptr %3038, align 8, !tbaa !25
  %4112 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4077, i32 -16)
  %4113 = extractvalue { i32, i1 } %4112, 1, !nosanitize !32
  br i1 %4113, label %3894, label %4114, !prof !35, !nosanitize !32

4114:                                             ; preds = %4107
  %4115 = extractvalue { i32, i1 } %4112, 0, !nosanitize !32
  %4116 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4104, i32 %4115), !nosanitize !32
  %4117 = extractvalue { i32, i1 } %4116, 1, !nosanitize !32
  br i1 %4117, label %3918, label %4121, !prof !35, !nosanitize !32

4118:                                             ; preds = %4085
  %4119 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4075, i32 %4077), !nosanitize !32
  %4120 = extractvalue { i32, i1 } %4119, 1, !nosanitize !32
  br i1 %4120, label %3918, label %4121, !prof !35, !nosanitize !32

4121:                                             ; preds = %4118, %4114, %3919, %3911
  %4122 = phi i16 [ %3893, %3919 ], [ %3914, %3911 ], [ %4111, %4114 ], [ %4090, %4118 ]
  %4123 = phi { i32, i1 } [ %3921, %3919 ], [ %3916, %3911 ], [ %4116, %4114 ], [ %4119, %4118 ]
  %4124 = extractvalue { i32, i1 } %4123, 0
  store i32 %4124, ptr %2840, align 4, !tbaa !26
  br label %4125

4125:                                             ; preds = %4121, %4072
  %4126 = phi i16 [ %4073, %4072 ], [ %4122, %4121 ]
  %4127 = phi i32 [ %4075, %4072 ], [ %4124, %4121 ]
  %4128 = load i32, ptr %3853, align 4, !tbaa !31
  %4129 = icmp ult i32 %3875, %4128
  br i1 %4129, label %3858, label %4130, !llvm.loop !81

4130:                                             ; preds = %4125, %3850
  %4131 = phi i16 [ %3851, %3850 ], [ %4126, %4125 ]
  %4132 = phi i32 [ %3852, %3850 ], [ %4127, %4125 ]
  %4133 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %4134 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %4135 = load i16, ptr %4134, align 2, !tbaa !28
  %4136 = zext i16 %4135 to i32
  %4137 = sub nsw i32 16, %4136
  %4138 = icmp sgt i32 %4132, %4137
  %4139 = load i16, ptr %4133, align 2, !tbaa !28
  %4140 = zext i16 %4139 to i32
  %4141 = shl i32 %4140, %4132
  %4142 = trunc i32 %4141 to i16
  %4143 = or i16 %4131, %4142
  store i16 %4143, ptr %3038, align 8, !tbaa !25
  br i1 %4138, label %4144, label %4167

4144:                                             ; preds = %4130
  %4145 = trunc i16 %4143 to i8
  %4146 = load ptr, ptr %3039, align 8, !tbaa !33
  %4147 = load i64, ptr %3040, align 8, !tbaa !34
  %4148 = add i64 %4147, 1
  store i64 %4148, ptr %3040, align 8, !tbaa !34
  %4149 = getelementptr inbounds nuw i8, ptr %4146, i64 %4147
  store i8 %4145, ptr %4149, align 1, !tbaa !28
  %4150 = load i16, ptr %3038, align 8, !tbaa !25
  %4151 = lshr i16 %4150, 8
  %4152 = trunc nuw i16 %4151 to i8
  %4153 = load ptr, ptr %3039, align 8, !tbaa !33
  %4154 = load i64, ptr %3040, align 8, !tbaa !34
  %4155 = add i64 %4154, 1
  store i64 %4155, ptr %3040, align 8, !tbaa !34
  %4156 = getelementptr inbounds nuw i8, ptr %4153, i64 %4154
  store i8 %4152, ptr %4156, align 1, !tbaa !28
  %4157 = load i32, ptr %2840, align 4, !tbaa !26
  %4158 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4157), !nosanitize !32
  %4159 = extractvalue { i32, i1 } %4158, 1, !nosanitize !32
  br i1 %4159, label %3894, label %4160, !prof !35, !nosanitize !32

4160:                                             ; preds = %4144
  %4161 = extractvalue { i32, i1 } %4158, 0, !nosanitize !32
  %4162 = lshr i32 %4140, %4161
  %4163 = trunc nuw i32 %4162 to i16
  store i16 %4163, ptr %3038, align 8, !tbaa !25
  %4164 = add nsw i32 %4136, -16
  %4165 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4157, i32 %4164), !nosanitize !32
  %4166 = extractvalue { i32, i1 } %4165, 1, !nosanitize !32
  br i1 %4166, label %3918, label %4170, !prof !35, !nosanitize !32

4167:                                             ; preds = %4130
  %4168 = add nsw i32 %4132, %4136
  %4169 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4168, 0
  br label %4170

4170:                                             ; preds = %4160, %4167
  %4171 = phi { i32, i1 } [ %4165, %4160 ], [ %4169, %4167 ]
  %4172 = extractvalue { i32, i1 } %4171, 0
  store i32 %4172, ptr %2840, align 4, !tbaa !26
  br label %4173

4173:                                             ; preds = %2836, %4170, %2475
  %4174 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %4175

4175:                                             ; preds = %4175, %4173
  %4176 = phi i64 [ 0, %4173 ], [ %4180, %4175 ]
  %4177 = getelementptr inbounds nuw [4 x i8], ptr %4174, i64 %4176
  store i16 0, ptr %4177, align 4, !tbaa !28
  %4178 = getelementptr inbounds nuw [4 x i8], ptr %4174, i64 %4176
  %4179 = getelementptr inbounds nuw i8, ptr %4178, i64 4
  store i16 0, ptr %4179, align 4, !tbaa !28
  %4180 = add nuw nsw i64 %4176, 2
  %4181 = icmp eq i64 %4180, 286
  br i1 %4181, label %4182, label %4175, !llvm.loop !29

4182:                                             ; preds = %4175
  %4183 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %4183, align 4, !tbaa !28
  %4184 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %4184, align 4, !tbaa !28
  %4185 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %4185, align 4, !tbaa !28
  %4186 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %4186, align 4, !tbaa !28
  %4187 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %4187, align 4, !tbaa !28
  %4188 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %4188, align 4, !tbaa !28
  %4189 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %4189, align 4, !tbaa !28
  %4190 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %4190, align 4, !tbaa !28
  %4191 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %4191, align 4, !tbaa !28
  %4192 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %4192, align 4, !tbaa !28
  %4193 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %4193, align 4, !tbaa !28
  %4194 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %4194, align 4, !tbaa !28
  %4195 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %4195, align 4, !tbaa !28
  %4196 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %4196, align 4, !tbaa !28
  %4197 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %4197, align 4, !tbaa !28
  %4198 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %4198, align 4, !tbaa !28
  %4199 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %4199, align 4, !tbaa !28
  %4200 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %4200, align 4, !tbaa !28
  %4201 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %4201, align 4, !tbaa !28
  %4202 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %4202, align 4, !tbaa !28
  %4203 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %4203, align 4, !tbaa !28
  %4204 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %4204, align 4, !tbaa !28
  %4205 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %4205, align 4, !tbaa !28
  %4206 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %4206, align 4, !tbaa !28
  %4207 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %4207, align 4, !tbaa !28
  %4208 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %4208, align 4, !tbaa !28
  %4209 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %4209, align 4, !tbaa !28
  %4210 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %4210, align 4, !tbaa !28
  %4211 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %4211, align 4, !tbaa !28
  %4212 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %4212, align 4, !tbaa !28
  %4213 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %4213, align 4, !tbaa !28
  %4214 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %4214, align 4, !tbaa !28
  %4215 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %4215, align 4, !tbaa !28
  %4216 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %4216, align 4, !tbaa !28
  %4217 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %4217, align 4, !tbaa !28
  %4218 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %4218, align 4, !tbaa !28
  %4219 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %4219, align 4, !tbaa !28
  %4220 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %4220, align 4, !tbaa !28
  %4221 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %4221, align 4, !tbaa !28
  %4222 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %4222, align 4, !tbaa !28
  %4223 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %4223, align 4, !tbaa !28
  %4224 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %4224, align 4, !tbaa !28
  %4225 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %4225, align 4, !tbaa !28
  %4226 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %4226, align 4, !tbaa !28
  %4227 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %4227, align 4, !tbaa !28
  %4228 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %4228, align 4, !tbaa !28
  %4229 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %4229, align 4, !tbaa !28
  %4230 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %4230, align 4, !tbaa !28
  %4231 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %4231, align 4, !tbaa !28
  %4232 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %4232, align 4, !tbaa !28
  %4233 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %4234 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %4234, align 4, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4233, i8 0, i64 20, i1 false)
  %4235 = icmp eq i32 %3, 0
  br i1 %4235, label %4280, label %4236

4236:                                             ; preds = %4182
  %4237 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %4238 = load i32, ptr %4237, align 4, !tbaa !26
  %4239 = icmp sgt i32 %4238, 8
  br i1 %4239, label %4240, label %4257

4240:                                             ; preds = %4236
  %4241 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4242 = load i16, ptr %4241, align 8, !tbaa !25
  %4243 = trunc i16 %4242 to i8
  %4244 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4245 = load ptr, ptr %4244, align 8, !tbaa !33
  %4246 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4247 = load i64, ptr %4246, align 8, !tbaa !34
  %4248 = add i64 %4247, 1
  store i64 %4248, ptr %4246, align 8, !tbaa !34
  %4249 = getelementptr inbounds nuw i8, ptr %4245, i64 %4247
  store i8 %4243, ptr %4249, align 1, !tbaa !28
  %4250 = load i16, ptr %4241, align 8, !tbaa !25
  %4251 = lshr i16 %4250, 8
  %4252 = trunc nuw i16 %4251 to i8
  %4253 = load ptr, ptr %4244, align 8, !tbaa !33
  %4254 = load i64, ptr %4246, align 8, !tbaa !34
  %4255 = add i64 %4254, 1
  store i64 %4255, ptr %4246, align 8, !tbaa !34
  %4256 = getelementptr inbounds nuw i8, ptr %4253, i64 %4254
  store i8 %4252, ptr %4256, align 1, !tbaa !28
  br label %4269

4257:                                             ; preds = %4236
  %4258 = icmp sgt i32 %4238, 0
  br i1 %4258, label %4259, label %4269

4259:                                             ; preds = %4257
  %4260 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4261 = load i16, ptr %4260, align 8, !tbaa !25
  %4262 = trunc i16 %4261 to i8
  %4263 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4264 = load ptr, ptr %4263, align 8, !tbaa !33
  %4265 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4266 = load i64, ptr %4265, align 8, !tbaa !34
  %4267 = add i64 %4266, 1
  store i64 %4267, ptr %4265, align 8, !tbaa !34
  %4268 = getelementptr inbounds nuw i8, ptr %4264, i64 %4266
  store i8 %4262, ptr %4268, align 1, !tbaa !28
  br label %4269

4269:                                             ; preds = %4259, %4257, %4240
  %4270 = load i32, ptr %4237, align 4, !tbaa !26
  %4271 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4270, i32 -1)
  %4272 = extractvalue { i32, i1 } %4271, 1, !nosanitize !32
  br i1 %4272, label %4273, label %4274, !prof !35, !nosanitize !32

4273:                                             ; preds = %4269
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !32
  unreachable, !nosanitize !32

4274:                                             ; preds = %4269
  %4275 = extractvalue { i32, i1 } %4271, 0, !nosanitize !32
  %4276 = and i32 %4275, 7
  %4277 = add nuw nsw i32 %4276, 1
  %4278 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %4277, ptr %4278, align 8, !tbaa !27
  %4279 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %4279, align 8, !tbaa !25
  store i32 0, ptr %4237, align 4, !tbaa !26
  br label %4280

4280:                                             ; preds = %4274, %4182
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_tr_tally(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = trunc i32 %1 to i8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %8 = load i32, ptr %7, align 4, !tbaa !31
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !31
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 %10
  store i8 %4, ptr %11, align 1, !tbaa !28
  %12 = lshr i32 %1, 8
  %13 = trunc i32 %12 to i8
  %14 = load ptr, ptr %5, align 8, !tbaa !80
  %15 = load i32, ptr %7, align 4, !tbaa !31
  %16 = add i32 %15, 1
  store i32 %16, ptr %7, align 4, !tbaa !31
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 %17
  store i8 %13, ptr %18, align 1, !tbaa !28
  %19 = trunc i32 %2 to i8
  %20 = load ptr, ptr %5, align 8, !tbaa !80
  %21 = load i32, ptr %7, align 4, !tbaa !31
  %22 = add i32 %21, 1
  store i32 %22, ptr %7, align 4, !tbaa !31
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
  %34 = load i32, ptr %33, align 8, !tbaa !85
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !85
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
  %60 = load i32, ptr %7, align 4, !tbaa !31
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %62 = load i32, ptr %61, align 8, !tbaa !86
  %63 = icmp eq i32 %60, %62
  %64 = zext i1 %63 to i32
  ret i32 %64
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noreturn nounwind }
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
!33 = !{!9, !12, i64 16}
!34 = !{!9, !13, i64 40}
!35 = !{!"branch_weights", i32 1, i32 1048575}
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
