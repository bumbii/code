average_score = input('Enter your average score: ')
if float(average_score) >= 8.0:
    print("You are classified as Excellent")
print("Please check the detailed scores for each subject.")

age = input('Enter your age: ')
if int(age) >= 18:
    print("You can drive a car.")
else:
    print("You can not drive a car.")

seconds = input('Enter the number of seconds: ')
# convert the string to int
your_seconds = int(seconds)
# condition clauses
if your_seconds > 60:
    print("The entered number of seconds is more than one minute.")
elif your_seconds == 60:
    print("The entered number of seconds is one minute.")
else:
    print("The entered number of seconds is less than one minute.")
