from python import Python

fn use_array() raises:
    # This is equivalent to Python's `import numpy as np`
    let np = Python.import_module("numpy")

    # Now use numpy as if writing in Python
    let array = np.array([1, 2, 3])
    print(array)

fn main() raises:
    use_array()