func gcd(_ a: Int, _ b: Int) -> Int {
    var n = a
    var m = b
    while m != 0 {
        let temp = n % m
        n = m
        m = temp
    }
    return n
}

func solution(_ arr:[Int]) -> Int {
    return arr.reduce(1) {
        $0 * $1 / gcd($0, $1)
    }
}