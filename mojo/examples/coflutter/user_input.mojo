# https://coflutter.com/mojo-how-to-input-an-integer/

from python import Python

fn inputInteger(message: StringLiteral) raises -> Int:
    '''Take an integer from user and return it.
    Args:
        message: The message to show to the user before entering the integer.
    '''
    # Create a string which represents Python code
    let pythonCode = "int(input('" + message + "'))"
    # Create a StringRef, in the next line of code, 
    # the Python.evaluate() function requires a StringRef
    let pythonCodeStringRef = StringRef(pythonCode)
    # Cast the string to integer. 
    # An exception will occurs if the value is not a valid integer
    let number = Python.evaluate(pythonCodeStringRef).to_float64().to_int()
    return number

fn main() raises:
    let n = inputInteger('Please enter an integer: ')
    print(n)
