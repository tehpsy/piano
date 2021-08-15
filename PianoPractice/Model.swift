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

enum Mode: String, CaseIterable, Random {
    case major = "Major"
    case minor = "Minor"

    var intervals: [Int] {
        switch self {
        case .major: return [0, 2, 4, 5, 7, 9, 11]
        case .minor: return [0, 2, 3, 5, 7, 8, 10]
        }
    }
}

enum Style: CaseIterable, Random {
    case legato
    case staccato
}

struct Hand {
    let offset: Int
    let style: Style
protocol Describable {
    var description: String { get }
}

struct Key: Describable {
    let root: Note
    let mode: Mode

    var notes: [Note] {
        return mode.intervals.map { root + Note.allCases[$0] }
    }

    static func random() -> Self {
        return Key(
            root: Note.random(),
            mode: Mode.random()
        )
    }

    var description: String { "\(root.text) \(mode.rawValue)" }
}

struct Scale {
    let key: Key
    let octaves: Int
    let leftHand: Hand?
    let rightHand: Hand?

    static func generate() -> Scale {
        return Scale(
            key: Key.random(),
            octaves: Int.random(in: (2...4)),
            leftHand: Hand(offset: 0, style: .legato),
            rightHand: Hand(offset: 0, style: .legato)
        )
    }
}

//    enum Rhythm {
//        case c_c_c_c
//        case m_c_c
//        case c_m_c
//        case c_c_m
//    }
//
//    enum Dynamics {
//        case crescendo
//        case diminuendo
//    }
//
//    struct Arpeggio {
//    }
//
//    struct Practice {
//        let exercise: Exercise
//        let speed: Double
//    }
//
//    enum Exercise {
//        case scale(Scale)
//        case arpeggio(Arpeggio)
//    }

func +(lhs: Note, rhs: Note) -> Note {
    return Note(
        rawValue: (lhs.rawValue + rhs.rawValue) % Note.allCases.count
    )!
}
