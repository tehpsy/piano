import SwiftUI

struct ScaleView: View {
    @Binding var scale: Scale

    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(scale.key.description)
                    .font(.title2).fontWeight(.bold)
                    .padding()

                NotesList(scale: scale, arpeggio: nil)
                    .font(.title3)
                    .padding()

                Text("\(scale.octaves) octaves")
                    .padding()

                Divider()

                if !scale.modifiers.isEmpty {
                    ModifiersListView(scale: scale, arpeggio: nil)
                }

                Spacer()
            }
            .navigationTitle("Scale")
        }
    }
}

struct ScaleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScaleView(scale: .constant(Scale.random()))
        }
    }
}
