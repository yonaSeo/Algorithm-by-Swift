import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var smalls: [Int] = []
    var bigs: [Int] = []
    for size in sizes {
        if size[0] > size[1] {
			bigs.append(size[0])
            smalls.append(size[1])
        } else {
 			bigs.append(size[1])
            smalls.append(size[0])
        }
    }
    return smalls.max()! * bigs.max()!
}