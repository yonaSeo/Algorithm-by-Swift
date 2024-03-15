func solution(_ s:String) -> Bool {
    return s.reduce(true) { $0 && Int(String($1)) != nil }
        && (s.count == 4 || s.count == 6)
}