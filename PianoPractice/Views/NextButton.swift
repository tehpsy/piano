import SwiftUI

struct NextButton: View {
    @ObservedObject var root: Root

    var body: some View {
        Button(action: {
            switch root.displayMode {
            case .scale:
                root.scale = Scale.random()
            case .arpeggio:
                root.arpeggio = Arpeggio.random()
            }
        }, label: {
            Image(systemName: "arrow.clockwise.circle")
            Text("Next")
        })
        .padding()
        .frame(width: 300)
        .background(Color.orange)
        .foregroundColor(.black)
        .clipShape(Capsule())
    }
}
