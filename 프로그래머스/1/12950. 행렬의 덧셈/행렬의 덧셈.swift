func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map { arrayTuple in
        return arrayTuple.0.enumerated().map { idx, elem in
            return arrayTuple.0[idx] + arrayTuple.1[idx]
        }
    }
}