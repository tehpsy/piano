struct Arpeggio: Random {
    let key: Key
    let octaves: Int
    let modifiers: [Modifier]

    static func random() -> Self {
        let key = Key(
            root: Note.random(),
            mode: [Mode.major, Mode.minor].randomElement()!
        )
        return Arpeggio(
            key: key,
            octaves: Int.random(in: (2...4)),
            modifiers: Modifiers.random(for: key.mode)
        )
    }

    var notes: [Note] {
        let indices = Set([0, 2, 4])
        return key.notes
            .enumerated()
            .filter { indices.contains($0.offset) }
            .map { $0.element }
    }

    static let ModifierKeyOffset = "Offset"
    static let ModifierKeyRelativeStaccato = "Staccato"
    static let ModifierKeyRelativeForte = "Forte"

    enum Modifiers {
        static func random(for mode: Mode) -> [Modifier] {
            var modifiers: [Modifier] = []

            if Bool.random(0.2) {
                modifiers.append(Modifier(hand: HandType.random(), id: ModifierKeyOffset))
            }

            if (modifiers.isEmpty && Bool.random(0.5)) || (!modifiers.isEmpty && Bool.random(0.3)) {
                let genericModifiers = [
                    Modifier(hand: HandType.random(), id: ModifierKeyRelativeStaccato),
                    Modifier(hand: HandType.random(), id: ModifierKeyRelativeForte),
                ]
                modifiers.append(genericModifiers.randomElement()!)
            }

            return modifiers
        }
    }
}
