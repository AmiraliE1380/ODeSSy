// md5.swift -- priority-1 replication target. Same shape as sha256.swift:
// per-block word assembly reads data[off+4t .. off+4t+3] behind bounds
// checks (little-endian here vs sha256's big-endian -- same idiom, same
// expected 3-of-5 entailment per word). CLI: md5 <iters> <input-file>.
import Foundation
let iters = Int(CommandLine.arguments[1])!
let data = [UInt8](try! Data(contentsOf: URL(fileURLWithPath: CommandLine.arguments[2])))

let S: [UInt32] = [7,12,17,22, 7,12,17,22, 7,12,17,22, 7,12,17,22,
                   5, 9,14,20, 5, 9,14,20, 5, 9,14,20, 5, 9,14,20,
                   4,11,16,23, 4,11,16,23, 4,11,16,23, 4,11,16,23,
                   6,10,15,21, 6,10,15,21, 6,10,15,21, 6,10,15,21]
let K: [UInt32] = [
0xd76aa478,0xe8c7b756,0x242070db,0xc1bdceee,0xf57c0faf,0x4787c62a,0xa8304613,0xfd469501,
0x698098d8,0x8b44f7af,0xffff5bb1,0x895cd7be,0x6b901122,0xfd987193,0xa679438e,0x49b40821,
0xf61e2562,0xc040b340,0x265e5a51,0xe9b6c7aa,0xd62f105d,0x02441453,0xd8a1e681,0xe7d3fbc8,
0x21e1cde6,0xc33707d6,0xf4d50d87,0x455a14ed,0xa9e3e905,0xfcefa3f8,0x676f02d9,0x8d2a4c8a,
0xfffa3942,0x8771f681,0x6d9d6122,0xfde5380c,0xa4beea44,0x4bdecfa9,0xf6bb4b60,0xbebfbc70,
0x289b7ec6,0xeaa127fa,0xd4ef3085,0x04881d05,0xd9d4d039,0xe6db99e5,0x1fa27cf8,0xc4ac5665,
0xf4292244,0x432aff97,0xab9423a7,0xfc93a039,0x655b59c3,0x8f0ccc92,0xffeff47d,0x85845dd1,
0x6fa87e4f,0xfe2ce6e0,0xa3014314,0x4e0811a1,0xf7537e82,0xbd3af235,0x2ad7d2bb,0xeb86d391]

func rotl(_ x: UInt32, _ c: UInt32) -> UInt32 { (x << c) | (x >> (32 - c)) }

var final: UInt32 = 0
for _ in 0..<iters {
  var a0: UInt32 = 0x67452301, b0: UInt32 = 0xefcdab89
  var c0: UInt32 = 0x98badcfe, d0: UInt32 = 0x10325476
  var M = [UInt32](repeating: 0, count: 16)
  let nBlocks = data.count / 64
  for blk in 0..<nBlocks {
    let off = blk * 64
    for t in 0..<16 {
      M[t] =  UInt32(data[off + 4*t])
           | (UInt32(data[off + 4*t + 1]) << 8)
           | (UInt32(data[off + 4*t + 2]) << 16)
           | (UInt32(data[off + 4*t + 3]) << 24)
    }
    var A = a0, B = b0, C = c0, D = d0
    for i in 0..<64 {
      var F: UInt32
      var g: Int
      if i < 16      { F = (B & C) | (~B & D);  g = i }
      else if i < 32 { F = (D & B) | (~D & C);  g = (5*i + 1) % 16 }
      else if i < 48 { F = B ^ C ^ D;           g = (3*i + 5) % 16 }
      else           { F = C ^ (B | ~D);        g = (7*i) % 16 }
      F = F &+ A &+ K[i] &+ M[g]
      A = D; D = C; C = B
      B = B &+ rotl(F, S[i])
    }
    a0 = a0 &+ A; b0 = b0 &+ B; c0 = c0 &+ C; d0 = d0 &+ D
  }
  final = final &+ a0 &+ b0 &+ c0 &+ d0
}
print(final)
