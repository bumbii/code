# https://x.com/Modular/status/1766165936481214781?s=20
# Mojo version: v24.1.0

from python import Python as py
from python.object import PythonObject

fn main() raises:
    var py_list: PythonObject = []
    print("empty py_list", py_list)

    for i in range(5):
        py_list.append(i)

    print("py_list", py_list)

    # Check python type
    print("python type:", py.type(py_list))
    print(py.type([0, 1, 2, 3, 4]))
    # Without specifying PythonObject, it's Mojo's ListLiteral
    var mojo_list = [0, 1, 2, 3, 4]
    print(py.type(mojo_list))

    # --------
    # Python Dictionary.
    var d = py.dict()
    d["hello"] = "world"
    print(d["hello"])
    # print(d["nothing"]) # Unhandled exception caught during execution: Attribute is not found