# GIL = Global Intepreter Lock
# References:
# 1. https://spiderum.com/bai-dang/Global-Interpreter-Lock-la-gi-Tai-sao-Python-lai-can-GIL-fna

hello = "Hello World"
print(hex(id(hello)))
hello_copied = hello
print(hex(id(hello_copied)))

hello = "new hello"
print(hello)
print(hex(id(hello)))
print(hello_copied)
print(hex(id(hello_copied)))