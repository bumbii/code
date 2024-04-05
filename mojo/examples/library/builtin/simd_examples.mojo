# https://github.com/rd4com/mojo-learning/blob/main/tutorials/simd.md


fn simdWidth():
    print(simdwidthof[DType.float32]())
    print(simdwidthof[DType.uint8]())

fn createSIMD() -> SIMD[DType.float32, 8]:
    var s = SIMD[DType.float32, 8]()
    for i in range(8): 
        s[i] = i
    print(s)

    return s

fn testSIMD(s: SIMD):
    print(s > 3)
    print(s == 1.0)
    print(s * 2)

fn testSIMDWithMath():
    let y = math.iota[DType.float32, 8](0)
    print(y)
    print(y.reduce_add())
    print(y * y.reduce_add())
    print(y.reduce_max())


fn main():
    # simdWidth()
    # let simd = createSIMD()
    # testSIMD(simd)
    testSIMDWithMath()