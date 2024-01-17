def sum(n: int):
    s = 0
    for i in range(1, n):
        s += i
    return s


n = int(input('Enter an integer: '))
print(f'S = {sum(n)}')