struct Scale: Random {
    let key: Key
    let octaves: Int
    let modifiers: [Modifier]

    static func random() -> Self {
        return Scale(
            key: Key.random(),
            octaves: Int.random(in: (2...4)),
            modifiers: Modifiers.random()
        )
    }
}
