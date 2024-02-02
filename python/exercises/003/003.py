from fractions import Fraction

def sum(n):
    s = 0
    for i in range (1, n + 1):
        s += Fraction(1, i)
    return s

# Ask user to provide an integer
input = input('Enter an integer: ')
try:
    # Try to cast the input to integer
    n = int(input)
    print(f'S = {sum(n)}')
except:
    # Can not cast the input to integer
    print('You did not enter a number!!!')