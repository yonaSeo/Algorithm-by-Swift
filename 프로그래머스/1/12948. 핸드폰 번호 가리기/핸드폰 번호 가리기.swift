func solution(_ phone_number:String) -> String {
    return String(phone_number.enumerated().map { index, element in
        index < phone_number.count - 4 ? "*" : element
    })
}