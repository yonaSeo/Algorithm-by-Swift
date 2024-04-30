import Foundation

func solution(_ n:Int) -> Int
{
    let startCount = String(n, radix: 2).filter { $0 == "1" }.count
    var nextCount = 0
    var next = n
    
    while true {
        next += 1
        nextCount = String(next, radix: 2).filter { $0 == "1" }.count
        if startCount == nextCount { break }
    }
    return next
}