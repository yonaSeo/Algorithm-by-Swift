func solution(_ n: Int, _ words: [String]) -> [Int] {
    var prev = ""
    var usedWords = Set<String>()
    var answer = [0, 0]
    
    for (i, word) in words.enumerated() {
        if !prev.isEmpty && (prev.last != word.first || word.count < 2 || usedWords.contains(word)) {
            let player = (i % n) + 1
            let turn = (i / n) + 1
            answer = [player, turn]
            break
        }
        prev = word
        usedWords.insert(word)
    }
    
    return answer
}