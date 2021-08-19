import SwiftUI

struct PianoKey: View {
    var body: some View {
        GeometryReader { geo in
            RoundedCornerShape(
                radius: geo.size.width * 0.2,
                corners: [.bottomLeft, .bottomRight]
            )
        }
    }
}

struct PianoKey_Previews: PreviewProvider {
    static var previews: some View {
        PianoKey()
    }
}
