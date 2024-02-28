import Foundation

func solution(_ s:String) -> Bool
{
    dump(s)
    var cnt = 0
    s.lowercased().forEach {
        if $0 == "p" {
            cnt += 1
        } else if $0 == "y" {
            cnt -= 1
        }
    }
    return cnt == 0 ? true : false
}