// lz77.rs -- bounds-check-heavy Rust kernel (mirror of the Swift lz77).
// Explicit `while` + indexing on purpose: iterator style would let rustc
// elide the bounds checks we are here to study. Every data[..] index is
// a native check lowered to core::panicking::panic_bounds_check.
use std::hint::black_box;

fn lz77_scan(data: &[u8], window: usize) -> usize {
    let n = data.len();
    let mut matches = 0usize;
    let mut i = 1usize;
    while i < n {
        let start = if i > window { i - window } else { 0 };
        let mut best = 0usize;
        let mut j = start;
        while j < i {
            let mut len = 0usize;
            while i + len < n && data[j + len] == data[i + len] {
                len += 1;
                if len >= 255 {
                    break;
                }
            }
            if len > best {
                best = len;
            }
            j += 1;
        }
        if best >= 3 {
            matches += 1;
            i += best;
        } else {
            i += 1;
        }
    }
    matches
}

fn main() {
    let mut data = vec![0u8; 1 << 16];
    let mut x: u32 = 123456789;
    let mut k = 0usize;
    while k < data.len() {
        x = x.wrapping_mul(1664525).wrapping_add(1013904223);
        data[k] = (x >> 24) as u8;
        k += 1;
    }
    let m = lz77_scan(black_box(&data), 1024);
    println!("{}", m);
}
