# Blog: https://bumbii.com/cac-ky-thuat-noi-chuoi-ky-tu-string-trong-python/

# 1. Concatenate literal strings 

a_literal_string = "Hello Bumbii!"

concatenated_literal_string = "Hello " "Bumbii!"
print(concatenated_literal_string) # Hello Bumbii!

# Can not apply this method for string variables. Below code won't work 
# concatenated_literal_string_1 = concatenated_literal_string concatenated_literal_string

# 2. Use the + operator or +=
s1 = "Hello " + "Bumbii!"
print(s1) # Hello Bumbii!

s2 = "Hello "
s3 = "Python!"
s4 = s2 + s3
print(s4) # Hello Python!

s5 = s1 + s4
print(s5) # Hello Bumbii!Hello Python!

s5 += " Yooo!"
print(s5) # Hello Bumbii!Hello Python! Yooo!

# 3. Use the join() method
# Join 2 strings with space as a separator
s6 = " ".join([s2, s3])
print(s6) # Hello Python!

# Join 2 strings with (comma and space) as a separator
s7 = ", ".join(["Hello", s3])
print(s7) # Hello,Python!

# 4. Use %s and % operator
s8 = "Hello"
s9 = "Bumbii!"
s10 = "I love Python"
s11 = "%s %s %s" % (s8, s9, s10)
print(s11)

# 5. Use format() method
s12 = "{} {} {}".format(s8, s9, s10)
print(s12)

# 6. Use f-strings 
s13 = f"{s8} {s9} {s10}"
print(s13)