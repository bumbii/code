# https://bumbii.com/cac-kieu-du-lieu-ve-so-numbers-trong-python/

# Declare a literal number
num = 2024

# Cast string to integer
num = int("2024")
print(num) # 2024
print(type(num))

# Large number with underscores
large_num = 1_000_000
print(large_num) # 1000000

# There is no limit to how large an integer can be 
very_large_num = 123456789987654321123456789987654321123456789987654321123456789987654321
print(very_large_num)

# float datatype in Python
print(type(3.14)) # <class 'float'>

# Declare a float number
float_num = 3.14
print(type(float_num)) # <class 'float'>

float_num_from_str = float("3.14")
print(float_num_from_str) # 3.14

large_float_num = 1_234_567_8910.123
print(large_float_num) # 12345678910.123

# e notation
print(1e6) # 1000000.0
print(2e15) # 2000000000000000.0
print(1e-4) # 0.0001

# float max value
import sys
print(sys.float_info.max) # 1.7976931348623157e+308

# infinity float number
inf_num = 2e308
print(inf_num) #inf
print(type(inf_num)) # <class 'float'>

# Arithmethic operators 
print(1 + 2) # 3 
print(4 - 2) # 2
print(4.0 - 2) # 2.0

print(1.0 + 2.0) # 3.0
print(1.0 + 2) # 3.0 

print(3 * 4) # 12
print(3.0 * 4) # 12.0

print(18 / 3) # 6.0 

# Devide by 0
# print(10 / 0)

# Integer division or floor division
print(10 // 2) # 5
print(5.0 // 2) # 2.0
print(-5 // 2) # -3

# Exponent
print(3 ** 2) # 9
print(2 ** 3) # 8
print(9 ** 0.5) # 3.0

print(2 ** -1) # = 1 / (2 ** 1) = 1 / 2 = 0.5
print(2 ** -2) # = 1 / (2 ** 2) = 1 / 4 = 0.25
print((-2) ** -2) # = 1 / ((-2) ** 2) = 1 / 4 = 0.25

# Modulus 
print(7 % 2) # 1
print(7 % 4) # 3
print(10 % 5) # 0

# Expressions
print(3 + 5*2) # = 3 + 10 = 13
print((3+5) * 2) # = 8 * 2 = 16

# abs() 
print(abs(100)) # 100
print(abs(-100)) # 100
print(abs(-10.0)) # 10.0

# pow()
print(pow(5, 2)) # 25
print(pow(5, 2) == 5**2) # True
# pow() with 3 arguments
print(pow(5, 2, 3)) # 1

# round()
print(round(1.4)) # 1
print(round(1.8)) # 2

print(round(4.5)) # 4 ... Oops!
print(round(5.5)) # 6

# Complex number
n = 3 + 4j
print(n.real) # 3.0
print(n.imag) # 4.0

# Complex number 
a = 3 + 4j
b = 5 - 7j

print(a + b) # (8-3j)
print(a - b) # (-2+11j)
print(a * b) # (43-1j)
print(a ** b) # (1937712.013104487-699433.9242374102j)
print(a / b) # (-0.17567567567567569+0.5540540540540542j)
# print(a // b) # Error: Operator "//" not supported for types "complex" and "complex"