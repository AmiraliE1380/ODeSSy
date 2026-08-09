// sha1.swift -- third member of the hash family. Same word-assembly idiom
// as sha256/md5 (big-endian): data[off+4t .. +3] behind bounds checks.
// CLI: sha1 <iters> <input-file>.
import Foundation
let iters = Int(CommandLine.arguments[1])!
let data = [UInt8](try! Data(contentsOf: URL(fileURLWithPath: CommandLine.arguments[2])))

func rotl(_ x: UInt32, _ n: UInt32) -> UInt32 { (x << n) | (x >> (32 - n)) }

var final: UInt32 = 0
for _ in 0..<iters {
  var h0: UInt32 = 0x67452301, h1: UInt32 = 0xEFCDAB89, h2: UInt32 = 0x98BADCFE
  var h3: UInt32 = 0x10325476, h4: UInt32 = 0xC3D2E1F0
  var w = [UInt32](repeating: 0, count: 80)
  let nBlocks = data.count / 64
  for b in 0..<nBlocks {
    let off = b * 64
    for t in 0..<16 {
      w[t] = (UInt32(data[off + 4*t]) << 24)
           | (UInt32(data[off + 4*t + 1]) << 16)
           | (UInt32(data[off + 4*t + 2]) << 8)
           |  UInt32(data[off + 4*t + 3])
    }
    for t in 16..<80 {
      w[t] = rotl(w[t-3] ^ w[t-8] ^ w[t-14] ^ w[t-16], 1)
    }
    var a = h0, bb = h1, c = h2, d = h3, e = h4
    for t in 0..<80 {
      var f: UInt32
      var k: UInt32
      if t < 20      { f = (bb & c) | (~bb & d);          k = 0x5A827999 }
      else if t < 40 { f = bb ^ c ^ d;                    k = 0x6ED9EBA1 }
      else if t < 60 { f = (bb & c) | (bb & d) | (c & d); k = 0x8F1BBCDC }
      else           { f = bb ^ c ^ d;                    k = 0xCA62C1D6 }
      let tmp = rotl(a, 5) &+ f &+ e &+ k &+ w[t]
      e = d; d = c; c = rotl(bb, 30); bb = a; a = tmp
    }
    h0 = h0 &+ a; h1 = h1 &+ bb; h2 = h2 &+ c; h3 = h3 &+ d; h4 = h4 &+ e
  }
  final = final &+ h0 &+ h1 &+ h2 &+ h3 &+ h4
}
print(final)
