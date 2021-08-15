import SwiftUI

struct ContentView: View {
    @State var scale = Scale.random()

    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .leading) {

                    Text(scale.key.description)
                        .font(.title2).fontWeight(.bold)
                        .padding()

                    NotesList(scale: $scale)
                        .font(.title3)
                        .padding()

                    Text("\(scale.octaves) octaves")
                        .padding()

                    Divider()

                    HStack {
                        HandView(hand: $scale.leftHand, scale: $scale, handType: .left)
                        HandView(hand: $scale.rightHand, scale: $scale, handType: .right)
                    }

                    Spacer()

                    HStack() {
                        Spacer()
                        NextButton(scale: $scale)
                        Spacer()
                    }
                }
                .padding()
            }
            .navigationTitle("UpScale")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
