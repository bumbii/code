from python import Python
from input import inputInteger
from fraction import Fraction

fn sum(n: Int) raises -> Fraction:
    var s = Fraction(0, n)
    for i in range(1, n + 1):
        s += Fraction(1, i)

    return s

fn main() raises:
    let n = inputInteger('Please enter an integer: ')
    print('sum = ' + str(sum(n)))