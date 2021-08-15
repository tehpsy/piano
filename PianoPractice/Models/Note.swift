enum Note: Int, CaseIterable, Random {
    case C
    case Db
    case D
    case Eb
    case E
    case F
    case Gb
    case G
    case Ab
    case A
    case Bb
    case B

    var text: String {
        switch self {
        case .C: return "C"
        case .Db: return "D♭"
        case .D: return "D"
        case .Eb: return "E♭"
        case .E: return "E"
        case .F: return "F"
        case .Gb: return "G♭"
        case .G: return "G"
        case .Ab: return "A♭"
        case .A: return "A"
        case .Bb: return "B♭"
        case .B: return "B"
        }
    }
}

func +(lhs: Note, rhs: Note) -> Note {
    return Note(
        rawValue: (lhs.rawValue + rhs.rawValue) % Note.allCases.count
    )!
}
