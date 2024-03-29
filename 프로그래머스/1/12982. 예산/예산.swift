import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var ans = 0
    var array = d.sorted()
    while ans != d.count {
        if array[0...ans].reduce(0, +) > budget {
            break
        } else {
            ans += 1
        }
    }
    return ans
}