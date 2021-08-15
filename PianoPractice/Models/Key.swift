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
