enum Rhythm: Random {
    case single(timeSignature: TimeSignature, pause: Int)
    case poly(leftTimeSignature: TimeSignature, rightTimeSignature: TimeSignature)

    static func random() -> Self {
        switch Int.random(in: (0...1)) {
        case 0:
            let timeSignature = TimeSignature.random()
            return .single(timeSignature: timeSignature, pause: Int.random(in: (0..<timeSignature.beats)))
        default:
            switch Int.random(in: (0...1)) {
            case 0: return .poly(leftTimeSignature: .fourFour, rightTimeSignature: .triplets)
            default: return .poly(leftTimeSignature: .triplets, rightTimeSignature: .fourFour)
            }
        }
    }
}
