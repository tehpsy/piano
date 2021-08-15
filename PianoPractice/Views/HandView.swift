import SwiftUI

struct HandView: View {
    @Binding var hand: Hand
    @State var title: String

    var body: some View {
        VStack {
            Text(title)
            List {
                Text(hand.articulation.rawValue)

                if hand.intervalOffset != 0 {
                    Text("Interval \(hand.intervalOffset + 1)")
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
            title: "Foo"
        )
        .preferredColorScheme(.dark)
    }
}
