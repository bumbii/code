import datetime

name = input('Enter your name: ')
year_of_birth = input('Enter your year of birth: ')

print(f'Hello, {name}. You are {datetime.date.today().year - int(year_of_birth)} years old!')
