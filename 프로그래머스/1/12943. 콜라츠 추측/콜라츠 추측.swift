func solution(_ num:Int) -> Int {
    return calc(num, 0)
}

func calc(_ num: Int, _ cnt: Int) -> Int {
    if cnt == 500 {
        return -1
    } else if num == 1 {
        return cnt
    } else {
        let newCnt = cnt + 1
        return num % 2 == 0
            ? calc(num/2, newCnt)
            : calc(num*3+1, newCnt)
    }
}