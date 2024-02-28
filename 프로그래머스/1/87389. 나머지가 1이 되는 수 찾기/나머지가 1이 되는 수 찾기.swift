import Foundation

func solution(_ n:Int) -> Int {
    var ans = 0
    for i in 2...n {
        if n % i == 1 { ans = i; break}
    }
    return ans
}