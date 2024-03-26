import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    return zip(A.sorted(by: >), B.sorted()).reduce(0) { $0 + $1.0 * $1.1 }
}