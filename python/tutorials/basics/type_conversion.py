value = input('Enter a value:')
print(value)

price = input('Enter the price ($):')
tax = input('Enter the tax rate (%):')
tax_amount = int(price) * int(tax) / 100
print(f'The tax amount is ${tax_amount}')

x = 5
print(type(x))
#<class 'int'>

y = 2.0
print(type(y))
#<class 'float'>

z = "Hello"
print(type(z))
#<class 'str'>

a = True
print(type(a))
#<class 'bool'>
