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

                    Spacer()

                    NextButton(scale: $scale)
                }
                .padding()
            }
            .navigationTitle("Piano Practice")
        }
    }
}

struct NextButton: View {
    @Binding var scale: Scale

    var body: some View {
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
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
