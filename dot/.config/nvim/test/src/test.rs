fn main() {
    println!("Hello, Rust!");

    let number = 5;
    let squared = square(number);
    println!("The square of {} is {}", number, squared);
}

fn square(num: i32) -> i32 {
    num * num
}

:
