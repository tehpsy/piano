enum Mode: String, CaseIterable, Random {
    case major = "Major"
    case minor = "Minor"
    case chromatic = "Chromatic"

    var intervals: [Int] {
        switch self {
        case .major: return [0, 2, 4, 5, 7, 9, 11]
        case .minor: return [0, 2, 3, 5, 7, 8, 10]
        case .chromatic: return Array(0...11)
        }
    }
}
