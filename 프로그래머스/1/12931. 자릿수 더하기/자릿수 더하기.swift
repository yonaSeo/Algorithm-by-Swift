import Foundation

func solution(_ n:Int) -> Int
{
    var ans = 0
    var n = n
    String(n).forEach { ans += Int(String($0))! }
    return ans
}