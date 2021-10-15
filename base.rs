use std::io;
use std::cmp;

fn read_integer() -> i32 {
    let mut s = String::new();
    io::stdin().read_line(&mut s).unwrap();
    let values : i32 = s.trim().parse().expect("");
    values
}

fn read_integers() -> Vec<i32> {
    let mut s = String::new();
    io::stdin().read_line(&mut s).unwrap();
    let values:Vec<i32> = s
        .split_whitespace()
        .map(|s| s.parse().unwrap())
        .collect();

    values
}

fn main() {

}
