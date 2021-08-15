struct Hand {
    let articulation: Articulation
    let dynamics: Dynamics?

    static func random() -> Self {
        return Hand(
            articulation: Articulation.random(),
            dynamics: Dynamics.random()
        )
    }
}


enum HandType: String, CaseIterable, Random {
    case left = "Left"
    case right = "Right"
}
