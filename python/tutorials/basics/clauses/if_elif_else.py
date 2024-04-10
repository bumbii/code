age = input('Enter your age:')
if int(age) >= 18:
    print("You're eligible to vote.")

#####

age = input('Enter your age:')
if int(age) >= 18:
    print("You're eligible to vote.")
    print("Let's go and vote.")

age = input('Enter your age:')
if int(age) >= 18:
    print("You're eligible to vote.")
print("Let's go and vote.")

######

age = input('Enter your age:')
if int(age) >= 18:
    print("You're eligible to vote.")
else:
    print("You're not eligible to vote.")

#####

age = input('Enter your age:')

# convert the string to int
your_age = int(age)

# determine the ticket price
if your_age < 5:
    ticket_price = 5
elif your_age < 16:
    ticket_price = 10
else:
    ticket_price = 18

# show the ticket price
print(f"You'll pay ${ticket_price} for the ticket")