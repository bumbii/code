def hello(name):
    message = 'Hello, ' + name + '!'
    return message

def helloWithTypes(name: String) -> String:
    let message = 'Hello, ' + name + '!'
    return 'Hello, ' + name + '!'

fn helloFn(name: String) -> String:
    let message = 'Hello, ' + name + '!'
    return message

def printData(data) -> None:
    print()

fn main() raises:
    # print(hello(1))
    # print(helloWithTypes('Mojo'))
    # print(helloFn('Mojo'))

    printData('Hello')