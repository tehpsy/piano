struct Scale: Random {
    let key: Key
    let octaves: Int
    var leftHand: Hand
    var rightHand: Hand
    let rhythm: Rhythm
    let intervalOffset: IntervalOffset?

    static func random() -> Self {
        return Scale(
            key: Key.random(),
            octaves: Int.random(in: (2...4)),
            leftHand: Hand.random(),
            rightHand: Hand.random(),
            rhythm: Rhythm.random(),
            intervalOffset: IntervalOffset.random()
        )
    }
}