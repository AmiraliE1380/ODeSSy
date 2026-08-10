// utf8.swift -- the NON-crypto idiom row: a scalar UTF-8 validator
// (parser class). Lead byte determines sequence length; continuation
// reads d[i+1..i+3] sit behind an explicit length guard. KNOWN RISK
// (documented in triage): `i` advances by 1/2/3/4 -- a VARIABLE-STRIDE
// induction variable, no SCEV add-recurrence, so the i>=0 lower bound
// has no current fact source (same failure class as base64's stride-3).
// If this triages at 0 UNSATs, it pins taxonomy class (d) and motivates
// back-edge-frame induction (Plan C); if it converts, it's the parser
// row. CLI: utf8 <iters> <input-file>.
import Foundation
let iters = Int(CommandLine.arguments[1])!
let data = [UInt8](try! Data(contentsOf: URL(fileURLWithPath: CommandLine.arguments[2])))

// Returns (valid scalar count, malformed byte count) -- both accumulated
// so the checksum depends on every branch.
func validate(_ d: [UInt8]) -> (Int, Int) {
  let n = d.count
  var ok = 0
  var bad = 0
  var i = 0
  while i < n {
    let b0 = d[i]
    if b0 < 0x80 {                       // 1-byte scalar
      ok &+= 1
      i &+= 1
    } else if b0 < 0xC2 {                // stray continuation / overlong
      bad &+= 1
      i &+= 1
    } else if b0 < 0xE0 {                // 2-byte sequence
      if i &+ 1 >= n { bad &+= 1; break }
      let c1 = d[i &+ 1]
      if (c1 & 0xC0) == 0x80 { ok &+= 1; i &+= 2 } else { bad &+= 1; i &+= 1 }
    } else if b0 < 0xF0 {                // 3-byte sequence
      if i &+ 2 >= n { bad &+= 1; break }
      let c1 = d[i &+ 1]
      let c2 = d[i &+ 2]
      if (c1 & 0xC0) == 0x80 && (c2 & 0xC0) == 0x80 {
        ok &+= 1; i &+= 3
      } else { bad &+= 1; i &+= 1 }
    } else if b0 < 0xF5 {                // 4-byte sequence
      if i &+ 3 >= n { bad &+= 1; break }
      let c1 = d[i &+ 1]
      let c2 = d[i &+ 2]
      let c3 = d[i &+ 3]
      if (c1 & 0xC0) == 0x80 && (c2 & 0xC0) == 0x80 && (c3 & 0xC0) == 0x80 {
        ok &+= 1; i &+= 4
      } else { bad &+= 1; i &+= 1 }
    } else {                             // invalid lead byte
      bad &+= 1
      i &+= 1
    }
  }
  return (ok, bad)
}

var final = 0
for _ in 0..<iters {
  let (ok, bad) = validate(data)
  final &+= ok &+ (bad &* 3)
}
print(final)
