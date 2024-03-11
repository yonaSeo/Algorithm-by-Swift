import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    let numbers = Array<Int>(left...right)
    let factorsCount = numbers.map { number in
        return (1...number).filter { number % $0 == 0 }.count
    }
    return numbers.enumerated().reduce(0) {
        return $0 + (factorsCount[$1.offset] % 2 == 0 ? $1.element : -$1.element)
    }
}