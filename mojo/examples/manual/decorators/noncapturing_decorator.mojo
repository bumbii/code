# This higher-order function must declare the `func` argument as `capturing`
fn outer(func: fn() -> String):
    print(func())

fn call_it():
    let a = 'Hello'
    # This is a capturing function, because it uses the outer-scope `a` variable

    @noncapturing
    fn inner() -> String:
        return a

    outer(inner)

fn main():
    call_it()