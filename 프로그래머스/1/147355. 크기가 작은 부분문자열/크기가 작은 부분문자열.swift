import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let charArr = t.map { $0 }
    return t.enumerated().reduce(0) { partialResult, enumer in
        let limit = enumer.0 + p.count
        if limit <= t.count && Int(String(charArr[enumer.0..<limit]))! <= Int(p)! {
            return partialResult + 1
        } else {
            return partialResult
        }
    }
}