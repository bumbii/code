# Blog: https://bumbii.com/chuoi-ky-tu-string-trong-python/

# 1. Declare strings

# Declare strings using single quotes or double quotes
single_quotes_string = 'Hello, Bumbii - single quotes!'
print(single_quotes_string)

double_quotes_string = "Hello, Bumbii! - double quotes"
print(double_quotes_string)

# Strings contain single quotes or double quotes
string_has_single_quotes = "Hello, 'Bumbii'"
print(string_has_single_quotes)

string_has_double_quotes = 'Hello, "Bumbii"'
print(string_has_double_quotes)

# Use back slash to escape the quotes
string_using_back_slash_single_quotes = 'Hello, \'Bumbii\''
print(string_using_back_slash_single_quotes)

string_using_back_slash_double_quotes = "Hello, \'Bumbii\'"
print(string_using_back_slash_double_quotes)

# Use raw string 
a_raw_string_single_quotes = r'D:\data\python'
print(a_raw_string_single_quotes) # D:\data\python

a_raw_string_double_quotes = r"D:\data\python"
print(a_raw_string_double_quotes) # D:\data\python

multiple_lines_string_single_quotes = '''
Why do programmers prefer dark mode? 
Because light attracts bugs!
    Thanks!
'''
print(multiple_lines_string_single_quotes)

multiple_lines_string_double_quotes = """
Why do programmers prefer dark mode? 
Because light attracts bugs!
    Thanks!
"""
print(multiple_lines_string_single_quotes)

# 2. Use variables in string
year_of_birth = 1988
age = 2024 - year_of_birth
message = f"Your year of birth is {year_of_birth}. You are {age} years old"
print(message)

# 4. Get the length of a string
greeting = "Hello Bumbii!"
length = len(greeting)
print(length) # 13
