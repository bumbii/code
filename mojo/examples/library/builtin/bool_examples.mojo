fn main():
    createBool()
    convertToBool()
    toString()

fn createBool():
    let true = Bool.__init__(True)
    let false = Bool.__init__(False)
    print(true)
    print(false)

fn convertToBool():
    let b = True
    print(b.__bool__())

    var i = 5
    print(i.__bool__())
    i = 0
    print(i.__bool__())
    i = -1
    print(i.__bool__())

fn toString():
    let t = True
    print(t.__str__())

    let f = False 
    print(f.__str__())
