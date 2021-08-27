struct Modifier: Identifiable, Hashable {
    let hand: HandType?
    let id: String

    var dualText: (String, String)? {
        guard let hand = self.hand else { return nil }
        return hand == .left
            ? (id, "-")
            : ("-", id)
    }
}
