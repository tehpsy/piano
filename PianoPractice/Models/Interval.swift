enum Interval {
    static var range = Range(0...6)
}

struct IntervalOffset: Random {
    let handType: HandType
    let offset: Int

    static func random() -> Self {
        return IntervalOffset(
            handType: HandType.random(),
            offset: Int.random(in: Interval.range)
        )
    }
}
