func solution(_ s:String) -> String {
	let arr = s.map { $0 }
    return arr.count % 2 == 0
    	? String(arr[(arr.count/2-1)...(arr.count/2)])
		: String(arr[arr.count/2])
}