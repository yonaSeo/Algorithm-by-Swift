import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return absolutes.enumerated().reduce(0) { partialResult, number in
        return signs[number.offset]
            ? partialResult + number.element
            : partialResult - number.element
    }
}