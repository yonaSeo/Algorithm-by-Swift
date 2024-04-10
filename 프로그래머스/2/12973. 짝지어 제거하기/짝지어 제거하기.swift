import Foundation

func solution(_ s:String) -> Int{
    var str = s.map { $0 }
    var stack: [Character] = []
    for i in 0..<str.count {
        if !stack.isEmpty && stack[stack.count-1] == str[i] {
            let _ = stack.popLast()
        } else {
            stack.append(str[i])
        }
    }

    return stack.isEmpty ? 1 : 0
}