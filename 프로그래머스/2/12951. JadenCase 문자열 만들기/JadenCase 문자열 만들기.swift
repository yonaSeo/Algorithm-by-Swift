func solution(_ s:String) -> String {
	return s.components(separatedBy: .whitespaces).map {
        let lower = $0.lowercased()
        guard let upperFirst = lower.uppercased().first else { return lower }
        return String(upperFirst) + lower.dropFirst()
    }.joined(separator: " ")
}