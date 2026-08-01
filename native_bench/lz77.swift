import Foundation
let iters = Int(CommandLine.arguments[1])!
let full = [UInt8](try! Data(contentsOf: URL(fileURLWithPath: CommandLine.arguments[2])))
let cap = min(full.count, 2 * 1024 * 1024)
let data = Array(full[0..<cap])
var total = 0
for _ in 0..<iters {
  var out = 0
  var i = 0
  let n = data.count
  let window = 1024, minMatch = 4, maxMatch = 255
  while i < n {
    var bestLen = 0, bestDist = 0
    let start = i > window ? i - window : 0
    var j = start
    while j < i {
      var l = 0
      while l < maxMatch && i + l < n && data[j + l] == data[i + l] { l += 1 }
      if l > bestLen { bestLen = l; bestDist = i - j }
      j += 1
      if bestLen >= maxMatch { break }
    }
    if bestLen >= minMatch {
      out += 3
      i += bestLen
      total = total &+ bestDist
    } else {
      out += 1
      i += 1
    }
  }
  total = total &+ out
}
print(total)
