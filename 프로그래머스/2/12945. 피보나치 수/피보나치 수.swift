func solution(_ n:Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    }
    var a = 0, b = 1
    for _ in 2...n {
        let temp = a
        a = b % 1234567
        b = (temp + b) % 1234567
    }
    return b
}