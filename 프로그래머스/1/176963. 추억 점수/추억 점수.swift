import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    return photo.map { (people: [String]) -> Int in
        people.reduce(0) { (acc: Int, person: String) -> Int in
            acc + zip(name, yearning)
                .filter { $0.0 == person }
                .reduce(0) { $0 + $1.1 }
        }
    }
}