// matmul_bench.rs -- timed wrapper around matmul.rs's kernel for the
// checked-vs-unchecked ceiling row. Checked build: rustc -O
// -C overflow-checks=on (bounds + overflow). Unchecked arm is
// matmul_bench_unc.rs (get_unchecked + overflow-checks=off).
// CLI: matmul_bench <reps>   (n=512 fixed; prints checksum then exits)
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
    let reps: usize = std::env::args().nth(1).unwrap().parse().unwrap();
    let n = 512usize;
    let mut a = vec![0i64; n * n];
    let mut b = vec![0i64; n * n];
    let mut c = vec![0i64; n * n];
    let mut t = 0usize;
    while t < n * n {
        a[t] = (t % 7) as i64 - 3;
        b[t] = (t % 5) as i64 - 2;
        t += 1;
    }
    let mut sum: i64 = 0;
    for _ in 0..reps {
        matmul(black_box(&a), black_box(&b), &mut c, n);
        sum = sum.wrapping_add(c[0]).wrapping_add(c[n * n - 1]);
    }
    println!("{}", sum);
}
