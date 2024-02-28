func solution(_ seoul:[String]) -> String {
    var index = 0
	for i in 0..<seoul.count {
        if seoul[i] == "Kim" { index = i }
    }
    return "김서방은 \(index)에 있다" 
}