enum Mode: String, CaseIterable, Random {
    case major = "Major"
    case minor = "Natural Minor"
    case harmonicMinor = "Harmonic Minor"
    case melodicMinor = "Melodic Minor"
    case chromatic = "Chromatic"

    var intervals: [Int] {
        switch self {
        case .major: return [0, 2, 4, 5, 7, 9, 11]
        case .minor: return [0, 2, 3, 5, 7, 8, 10]
        case .harmonicMinor: return [0, 2, 3, 5, 7, 8, 11]
        case .melodicMinor: return [0, 2, 3, 5, 7, 9, 11, 0, 10, 8, 7, 5, 3, 2, 0]
        case .chromatic: return Array(0...11)
        }
    }
}
