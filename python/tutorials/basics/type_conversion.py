import datetime

value = input('Enter the year of birth:')
print(value)

year_of_birth = input('Enter the year of birth: ')
current_year = datetime.datetime.now().year
your_age = current_year - int(year_of_birth)
print('Your age is:', your_age)

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
