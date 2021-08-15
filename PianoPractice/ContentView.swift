import SwiftUI

struct ContentView: View {
    @State var scale = Scale.generate()

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
                        HandView(hand: $scale.leftHand, title: "Left")
                        HandView(hand: $scale.rightHand, title: "Right")
                    }

                    Spacer()

                    NextButton(scale: $scale)
                }
                .padding()
            }
            .navigationTitle("Piano Practice")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
