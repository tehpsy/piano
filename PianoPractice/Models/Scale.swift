struct Scale: Random {
    let key: Key
    let octaves: Int
    let modifiers: [Modifier]

    static func random() -> Self {
        let key = Key.random()
        return Scale(
            key: key,
            octaves: Int.random(in: (2...4)),
            modifiers: Modifiers.random(for: key.mode)
        )
    }

    static let ModifierKeyRelativeMinor = "Relative Minor"
    static let ModifierKeyRelativeStaccato = "Staccato"
    static let ModifierKeyRelativeForte = "Forte"
    static let ModifierKeyRelativeContraryMotion = "Contrary Motion"

    enum Modifiers {
        static func random(for mode: Mode) -> [Modifier] {
            var modifiers: [Modifier] = []

            if mode == .major, Bool.random(0.2) {
                modifiers.append(Modifier(hand: HandType.random(), id: ModifierKeyRelativeMinor))
            }

            if !modifiers.contains(where: { $0.id == ModifierKeyRelativeMinor }), Bool.random(0.1) {
                modifiers.append(Modifier(hand: nil, id: ModifierKeyRelativeContraryMotion))
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
