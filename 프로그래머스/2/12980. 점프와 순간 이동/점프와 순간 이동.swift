import Foundation

func solution(_ n:Int) -> Int {
    var num = n
    var count = 1
    while num != 1 {
        if num.isMultiple(of: 2) {
            num /= 2
        } else {
            num -= 1
            count += 1
        }
    }
    return count
}