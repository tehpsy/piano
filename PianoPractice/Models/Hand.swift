struct Hand {
    let intervalOffset: Int
    let articulation: Articulation
    let dynamics: Dynamics?

    static func random() -> Self {
        return Hand(
            intervalOffset: Int.random(in: Interval.range),
            articulation: Articulation.random(),
            dynamics: Dynamics.random()
        )
    }
}
