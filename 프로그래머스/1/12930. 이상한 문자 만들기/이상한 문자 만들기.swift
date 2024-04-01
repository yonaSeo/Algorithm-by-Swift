func solution(_ s:String) -> String {
    var prev = " "
    var cnt = 0
    var ans = ""
    
    for chr in s {
        var newChr = ""
        if chr == " " {
            cnt = 0
            prev = String(chr)
            ans.append(chr)
            continue
        }
        newChr = cnt % 2 == 0 ? chr.uppercased() : chr.lowercased()
        cnt += 1
        prev = String(chr)
        ans.append(newChr)
    }
    return ans
}