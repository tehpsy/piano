import SwiftUI

struct ContentView: View {
    @State var scale = Scale.generate()

    var body: some View {
        NavigationView {
            ZStack {
                VStack() {
                    Spacer()

                    VStack(alignment: .leading) {
                        Text("\(scale.root.text) \(scale.mode.rawValue)")
                        NotesList(scale: $scale)
                        Text("\(scale.octaves) octaves")
                    }

                    Spacer()

                    Button(action: {
                        scale = Scale.generate()
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
