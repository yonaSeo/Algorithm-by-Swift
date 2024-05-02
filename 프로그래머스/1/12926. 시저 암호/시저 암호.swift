import Foundation

func solution(_ s:String, _ n:Int) -> String {
    let a = Int(Character("a").asciiValue!)
    let z = Int(Character("z").asciiValue!)
    let A = Int(Character("A").asciiValue!)
    let Z = Int(Character("Z").asciiValue!)
    
    let charArray = s.map { (char: Character) -> Character in
        var ascii = Int(char.asciiValue!)
        switch ascii {
            case a...z: if ascii + n > z { ascii -= (z-a+1) }
            case A...Z: if ascii + n > Z { ascii -= (Z-A+1) }
            default: return char
        }
        return Character(UnicodeScalar(ascii + n)!)
    }
    
    return String(charArray)
}