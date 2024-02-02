@value
struct Fraction(Stringable):
    var numerator: Int
    var denomirator: Int

    fn __init__(inout self, numerator: Int, denomirator: Int) raises:
        if denomirator == 0:
            raise Error('The denomirator must not equal to 0 (zero)')
        self.numerator = numerator
        self.denomirator = denomirator

    fn __str__(self) -> String:
        if self.denomirator == 0:
            return 'NaN'
        if self.numerator == 0:
            return '0'
        if self.numerator == self.denomirator:
            return '1'
        return self.numerator.__str__() + '/' + self.denomirator.__str__() 
    
    fn __iadd__(inout self: Self, other: Self):
        # Find least common divisor of 2 denomirators
        let lcm: Int = math.lcm(self.denomirator, other.denomirator)

        # Calculate new numerators of 2 fractions 
        # (after reducing to the same denominator)
        let selfNumerator = ((lcm / self.denomirator) * self.numerator).to_int()
        let otherNumerator = ((lcm / other.denomirator) * other.numerator).to_int()

        # Calculate the numberator, denomirator of the result
        let resultNumerator: Int = selfNumerator + otherNumerator
        let resultDenomirator = lcm

        # Find the greatest common divisor of result's numerator and result's denomirator
        # (result's denomirator = lcm)
        # This gcd will be used to reduce the fraction (e.g 2/6 -> gcd = 2 -> 1/3)
        let gcd = math.gcd(resultNumerator, resultDenomirator)

        # Recalculate final numerator and denomirator
        self.numerator = (resultNumerator / gcd).to_int()
        self.denomirator = (resultDenomirator / gcd).to_int()
