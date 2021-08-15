enum TimeSignature: CaseIterable, Random {
    case fourFour
    case triplets

    var beats: Int {
        switch self {
        case .fourFour: return 4
        case .triplets: return 3
        }
    }
}
