# https://github.com/modularml/mojo/issues/1573

from python import Python

var mod_global :PythonObject = None

fn main() raises:
    let mod_xml : PythonObject = Python.import_module("lxml")
    
    # let mod_global : PythonObject = Python.import_module("numpy")     #ok
    mod_global = Python.import_module("numpy")
