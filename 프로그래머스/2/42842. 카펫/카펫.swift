import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var x = 0, y = 0, sum = brown + yellow
    for i in 3..<sum {
        if sum % i == 0 
        && i <= sum / i
        && yellow == (i - 2) * (sum / i - 2) {
            y = i
            x = sum / i
        }
    }
    return [x, y]
}