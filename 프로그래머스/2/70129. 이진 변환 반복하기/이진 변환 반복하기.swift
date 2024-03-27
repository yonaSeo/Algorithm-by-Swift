import Foundation

func solution(_ s:String) -> [Int] {
    var convertCount = 0
    var zeroCount = 0
    var string = s
    
    while string != "1" {
        convertCount += 1
        var newString = string.map { num in
            if num == "0" {
                zeroCount += 1
                return ""
            } else {
                return String(num)
            }
        }.joined()
        string = String(newString.count, radix: 2)
    }
    
    return [convertCount, zeroCount]
}