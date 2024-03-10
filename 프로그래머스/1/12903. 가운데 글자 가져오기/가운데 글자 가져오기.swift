func solution(_ s:String) -> String {
    let arr = Array(s)
    let mid = Int(arr.endIndex/2)
    return s.count % 2 != 0 ? String(arr[mid]) : String(arr[mid-1]) + String(arr[mid])
}