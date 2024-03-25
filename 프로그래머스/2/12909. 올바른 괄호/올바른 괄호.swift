import Foundation

struct Stack {
    var data = ""
    
    mutating func push(_ newValue: Character) {
        if let last = data.last {
            if newValue == "(" {
                data.append(newValue)
            } else {
                if last == "(" {
                    let _ = data.popLast()
                }
            }
        } else {
            data.append(newValue)
        }
    }
}

func solution(_ s:String) -> Bool {
    var stack = Stack()
    for c in s {
        stack.push(c)
    }
    return stack.data.isEmpty
}