# https://gist.github.com/ManishAradwad/1f217e3d64372d62ae51ac5540ae465f
# https://www.a1k0n.net/2011/07/20/donut-math.html

from math import sin, cos

struct Array[T: AnyRegType]:
    var value: T
    var rows: Int
    var cols: Int
    var total_items: Int
    var data: Pointer[T]

    fn __init__(inout self, value: T, rows: Int, cols: Int) -> None:
        self.value = value
        self.rows = rows
        self.cols = cols
        self.total_items = rows * cols
        self.data = Pointer[T].alloc(self.total_items)

        for i in range(self.total_items):
            self.data.store(i, value)

    fn __getitem__(borrowed self, index_row: Int, index_col: Int) -> T:
        return self.data.load((index_row * self.cols) + index_col)

    fn __setitem__(inout self, index_row: Int, index_col: Int, value: T) -> None:
        self.data.store((index_row * self.cols) + index_col, value)

    fn __del__(owned self) -> None:
        self.data.free()


fn render_frame(
    borrowed A: Float16,
    borrowed B: Float16,
    borrowed size: Int,
    borrowed screen_width: Int,
    borrowed screen_height: Int,
    borrowed R1: Float16,
    borrowed R2: Float16,
    borrowed K1: Float16,
    borrowed K2: Float16,
    borrowed illumination: String,
) -> None:
    let cosA: Float16 = cos(A)
    let sinA: Float16 = sin(A)
    let cosB: Float16 = cos(B)
    let sinB: Float16 = sin(B)
    let pi: Float16 = 3.1415926
    let theta_spacing: Float16 = 0.02
    let phi_spacing: Float16 = 0.005

    var output = Array[Int](32, screen_height + 1, screen_width)
    var zbuffer = Array[Float16](0, screen_height + 1, screen_width)

    let end = 2 * pi
    var theta: Float16 = 0
    while theta < end:
        theta += theta_spacing
        let costheta: Float16 = cos(theta)
        let sintheta: Float16 = sin(theta)
        var phi: Float16 = 0
        while phi < end:
            phi += phi_spacing
            let cosphi: Float16 = cos(phi)
            let sinphi: Float16 = sin(phi)
            let circlex: Float16 = R2 + R1 * costheta
            let circley: Float16 = R1 * sintheta

            let x: Float16 = circlex * (
                cosB * cosphi + sinA * sinB * sinphi
            ) - circley * cosA * sinB
            let y: Float16 = circlex * (
                sinB * cosphi - sinA * cosB * sinphi
            ) + circley * cosA * cosB
            let z: Float16 = K2 + cosA * circlex * sinphi + circley * sinA
            let ooz: Float16 = 1 / z

            let xp: Int = (
                SIMD.cast[DType.float16](screen_width / 2) + (K1 * ooz * x)
            ).to_int()
            let yp: Int = (
                SIMD.cast[DType.float16](screen_width / 2) - (K1 * ooz * y)
            ).to_int()
            let L: Float16 = cosphi * costheta * sinB - cosA * costheta * sinphi - sinA * sintheta + cosB * (
                cosA * sintheta - costheta * sinA * sinphi
            )

            if L > 0:
                if ooz > zbuffer[xp, yp]:
                    zbuffer[xp, yp] = ooz
                    output[xp, yp] = ord(illumination[(L * 8).to_int()])

    print("\x1b[H")
    for i in range(screen_height):
        for j in range(screen_width):
            print_no_newline(chr(output[i, j]))
        print()


fn main():
    let R1: Float16 = 1
    let R2: Float16 = 2
    let K2: Float16 = 5

    let screen_width: Float16 = 55
    let screen_height: Float16 = 55
    let K1: Float16 = screen_width * K2 * 3 / (8 * (R1 + R2))

    var A: Float16 = 1.0
    var B: Float16 = 1.0
    let illumination: String = ".,-~:;=!*#$@"

    let size: Float16 = screen_width * (screen_height + 1)
    print("\x1b[2J")
    while True:
        render_frame(
            A,
            B,
            size.to_int(),
            screen_width.to_int(),
            screen_height.to_int(),
            R1,
            R2,
            K1,
            K2,
            illumination,
        )
        A += 0.02
        B += 0.005