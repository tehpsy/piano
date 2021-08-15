import SwiftUI

struct HandView: View {
    @Binding var hand: Hand
    @Binding var scale: Scale
    @State var handType: HandType

    var body: some View {
        VStack {
            Text(handType.rawValue)
            List {
                Text(hand.articulation.rawValue)

                if let interval = scale.intervalOffset {
                    if interval.handType == handType {
                        Text("Interval \(interval.offset + 1)")
                    } else {
                        Text("-")
                    }
                }

                if let rhythmText = self.rhythmText {
                    Text(rhythmText)
                }

                if let pauseText = self.pauseText {
                    Text(pauseText)
                }

                if let dynamics = hand.dynamics {
                    Text(dynamics.rawValue)
                }
            }
        }
    }

    var rhythmText: String? {
        switch scale.rhythm {
        case let .single(timeSignature, _):
            switch timeSignature {
            case .fourFour: return nil
            case .triplets: return "Triplets"
            }

        case let .poly(left, right):
            switch (left, right) {
            case (.fourFour, .fourFour):
                return nil
            case (.triplets, .fourFour):
                return handType == .left ? "Triplets" : "-"
            case (.fourFour, .triplets):
                return handType == .right ? "Triplets" : "-"
            case (.triplets, .triplets):
                return "Triplets"
            }
        }
    }

    var pauseText: String? {
        guard
            case let .single(_, pause) = scale.rhythm,
            let pause = pause
        else { return nil }
        return "Pause on \(pause + 1)"
    }
}

struct HandView_Previews: PreviewProvider {
    static var previews: some View {
        HandView(
            hand: .constant(Hand.random()),
            scale: .constant(Scale.random()),
            handType: .left
        )
        .preferredColorScheme(.dark)
    }
}
