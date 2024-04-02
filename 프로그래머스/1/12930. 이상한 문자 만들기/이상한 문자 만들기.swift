func solution(_ s:String) -> String {
    var cnt = 0
    var ans = ""
    
    for chr in s {
        if chr == " " {
            cnt = 0
            ans.append(chr)
            continue
        }
        var newChr = cnt % 2 == 0 ? chr.uppercased() : chr.lowercased()
        cnt += 1
        ans.append(newChr)
    }
    return ans
}