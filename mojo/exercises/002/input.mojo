from python import Python

fn inputInteger(message: String) raises -> Int:
    '''Take an integer from user and return it.

    Args:
        message: The message to show to the user before entering the integer.
    '''
    var input = Python.import_module('builtins').input
    # input(message).__str__() -> Convert the input (PythonObject) from user to string
    # atol -> Parse input string to integer
    var i = atol(input(message).__str__())
    return i