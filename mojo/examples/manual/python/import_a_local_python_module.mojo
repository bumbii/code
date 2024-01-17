from python import Python

fn main() raises:
    Python.add_to_path("path/to/module")
    let mypython = Python.import_module("mypython")

    let values = mypython.gen_random_values(2, 3)
    print(values)