struct Scale: Random {
    let key: Key
    let octaves: Int
    let modifiers: [Modifier]

    static func random() -> Self {
        let allModifiers = [
            Modifier(hand: HandType.random(), id: ModifierKeyRelativeMinor),
            Modifier(hand: HandType.random(), id: ModifierKeyRelativeStaccato),
            Modifier(hand: HandType.random(), id: ModifierKeyRelativeForte),
            Modifier(hand: nil, id: ModifierKeyRelativeContraryMotion),
        ].shuffled()

        let modifiers: [Modifier]
        let rand = Int.random(in: 0..<10)
        if rand < 1 {
            modifiers = Array(allModifiers[..<2])
        } else if rand < 3 {
            modifiers = Array(allModifiers[..<1])
        } else {
            modifiers = []
        }

        return Scale(
            key: Key.random(),
            octaves: Int.random(in: (1...3)),
            modifiers: modifiers
        )
    }
}
