# https://www.modular.com/blog/what-is-loop-unrolling-how-you-can-speed-up-mojo
fn loop_example_1():
    for i in range(5):
        print(i)

fn loop_example_2():
    @unroll
    for i in range(5):
        print(i)

fn main():
    loop_example_1()
    loop_example_2()

