from python import Python
from input import inputInteger

fn sum(n: Int) -> Int:
    var s: Int = 0
    for i in range(1, n + 1):
        s += i ** 2
    return s

fn main() raises:
    let n = inputInteger('Please enter an integer: ')
    print(sum(n))