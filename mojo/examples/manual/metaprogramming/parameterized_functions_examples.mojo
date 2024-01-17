fn repeat[count: Int](msg: String):
    @unroll
    for i in range(count):
        print(msg)

fn main():
    repeat[3]('Hello')