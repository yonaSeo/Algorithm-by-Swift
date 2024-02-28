func solution(_ a:Int, _ b:Int) -> Int64 {
    let down = a <= b ? a : b
    let up = a >= b ? a : b
    var sum = 0
    for i in down...up {
        sum += i
    }
    return Int64(sum)
}