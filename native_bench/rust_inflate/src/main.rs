use std::env;
use std::fs;
fn main() {
    let args: Vec<String> = env::args().collect();
    let iters: usize = args[1].parse().unwrap();
    let z = fs::read(&args[2]).unwrap();
    let mut total = 0usize;
    for _ in 0..iters {
        let d = miniz_oxide::inflate::decompress_to_vec_zlib(&z).unwrap();
        total = total.wrapping_add(d.len());
    }
    println!("{}", total);
}
