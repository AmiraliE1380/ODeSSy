// matmul.rs -- overflow + bounds Rust kernel. With -C overflow-checks=on,
// every `i * n + k` (usize mul/add) and the i64 `acc += a * b` become
// checked arithmetic lowered to core::panicking::panic_const_* calls;
// the flat-vec indexing adds panic_bounds_check sites on top.
use std::hint::black_box;

fn matmul(a: &[i64], b: &[i64], c: &mut [i64], n: usize) {
    let mut i = 0usize;
    while i < n {
        let mut j = 0usize;
        while j < n {
            let mut acc: i64 = 0;
            let mut k = 0usize;
            while k < n {
                acc += a[i * n + k] * b[k * n + j];
                k += 1;
            }
            c[i * n + j] = acc;
            j += 1;
        }
        i += 1;
    }
}

fn main() {
    let n = 64usize;
    let mut a = vec![0i64; n * n];
    let mut b = vec![0i64; n * n];
    let mut c = vec![0i64; n * n];
    let mut t = 0usize;
    while t < n * n {
        a[t] = (t % 7) as i64 - 3;
        b[t] = (t % 5) as i64 - 2;
        t += 1;
    }
    matmul(black_box(&a), black_box(&b), &mut c, n);
    println!("{}", c[0] + c[n * n - 1]);
}
