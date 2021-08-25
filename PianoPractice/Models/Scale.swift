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
}
