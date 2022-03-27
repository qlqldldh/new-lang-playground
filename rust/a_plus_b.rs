use std::io;

fn main() {
    let mut inputs = String::new();

    io::stdin()
        .read_line(&mut inputs)
        .expect("Fail to read line");
    
    let mut iter = inputs.split_whitespace();

    let a: u32 = iter.next().unwrap().parse().expect("Error");
    let b: u32 = iter.next().unwrap().parse().expect("Error");
    
    println!("{}", a + b);
}
