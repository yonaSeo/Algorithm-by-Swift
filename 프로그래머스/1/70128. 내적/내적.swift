import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    return a.enumerated().reduce(0) { $0 + $1.element * b[$1.offset] }
}