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

extension Bool {
    static func random(_ value: Double) -> Bool {
        return value > Double.random(in: 0..<1)
    }
}

enum Modifiers {
    static func random(for mode: Mode) -> [Modifier] {
        var modifiers: [Modifier] = []

        if mode == .major, Bool.random(0.2) {
            modifiers.append(Modifier(hand: HandType.random(), id: ModifierKeyRelativeMinor))
        }

        if !modifiers.contains(where: { $0.id == ModifierKeyRelativeMinor }), Bool.random(0.1) {
            modifiers.append(Modifier(hand: nil, id: ModifierKeyRelativeContraryMotion))
        }

        if (modifiers.isEmpty && Bool.random(0.5)) || (!modifiers.isEmpty && Bool.random(0.3)) {
            let genericModifiers = [
                Modifier(hand: HandType.random(), id: ModifierKeyRelativeStaccato),
                Modifier(hand: HandType.random(), id: ModifierKeyRelativeForte),
            ]
            modifiers.append(genericModifiers.randomElement()!)
        }

        return modifiers
    }
}
