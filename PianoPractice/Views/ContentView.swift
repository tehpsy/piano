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

                    if !scale.modifiers.isEmpty {
                        ModifiersListView(scale: $scale)
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
