import Foundation

func solution(_ n:Int) -> Int {
    let ternary = String(n, radix: 3).reversed()
    return Int(String(ternary), radix: 3)!
}