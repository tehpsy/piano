import SwiftUI

struct ContentView: View {
    @State var scale = Scale.generate()

    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                VStack() {
                    VStack(alignment: .leading) {
                        Text("\(scale.root.text) \(scale.mode.rawValue)")
                        NotesList(scale: $scale)
                        Text("\(scale.octaves) octaves")
                    }

                    Spacer()
                    Button("Next") {
                        scale = Scale.generate()
                    }
                }
                .padding()
            }
            .navigationTitle("Piano Practice")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
