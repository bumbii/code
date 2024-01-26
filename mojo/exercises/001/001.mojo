# Mojo v0.6.3 does not support input() method. 
# Let's just use python input() for now.
# TODO: Use builtin input()
from python import Python
from input import inputInteger

fn sum(n: Int) -> Int:
    var s: Int = 0
    for i in range(1, n + 1):
        s += i
    return s

fn main() raises:
    let n = inputInteger('Please enter an integer: ')
    print(sum(n))

