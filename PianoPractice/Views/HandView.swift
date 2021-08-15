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

                if let dynamics = hand.dynamics {
                    Text(dynamics.rawValue)
                }
            }
        }
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
