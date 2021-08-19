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

let ModifierKeyRelativeMinor = "Relative Minor"
let ModifierKeyRelativeStaccato = "Staccato"
let ModifierKeyRelativeForte = "Forte"
let ModifierKeyRelativeContraryMotion = "Contrary Motion"

enum Modifiers {
    static func random() -> [Modifier] {
        let allModifiers = [
            Modifier(hand: HandType.random(), id: ModifierKeyRelativeMinor),
            Modifier(hand: HandType.random(), id: ModifierKeyRelativeStaccato),
            Modifier(hand: HandType.random(), id: ModifierKeyRelativeForte),
            Modifier(hand: nil, id: ModifierKeyRelativeContraryMotion),
        ].shuffled()

        let rand = Int.random(in: 0..<10)
        if rand < 1 {
            return Array(allModifiers[..<2])
        } else if rand < 3 {
            return Array(allModifiers[..<1])
        } else {
            return []
        }
    }
}
