import SwiftUI

struct PianoOctave: View {
    var body: some View {
        ZStack {
            HStack(spacing: 2) {
                PianoKey()
                PianoKey()
                PianoKey()
            }
            GeometryReader { geo in
                VStack {
                    HStack(spacing: 2) {
                        Spacer()
                        PianoKey().foregroundColor(Color.random)
                        Spacer()
                        PianoKey().foregroundColor(Color.random)
                        Spacer()
                    }
                }.frame(height: geo.size.height * 0.6)
            }
        }
    }
}

struct PianoOctave_Previews: PreviewProvider {
    static var previews: some View {
        PianoOctave()
            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
    }
}
