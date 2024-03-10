func solution(_ s:String) -> String {
    let min = s.components(separatedBy: " ").map { Int($0)! }.min()!
	let max = s.components(separatedBy: " ").map { Int($0)! }.max()!
	return [String(min), String(max)].joined(separator: " ")
}