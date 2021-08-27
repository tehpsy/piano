import SwiftUI

struct ArpeggioView: View {
    @Binding var arpeggio: Arpeggio

    var body: some View {
        ZStack {

            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text(arpeggio.key.description)
                        .font(.title2).fontWeight(.bold)
                        .padding()

                    NotesList(scale: nil, arpeggio: arpeggio)
                        .font(.title3)
                        .padding()

                    Text("\(arpeggio.octaves) octaves")
                        .padding()

                    Divider()

                    if !arpeggio.modifiers.isEmpty {
                        ModifiersListView(scale: nil, arpeggio: arpeggio)
                    }

                    Spacer()
                }
            }
            .navigationTitle("Arpeggio")
        }
    }
}

struct ArpeggioView_Previews: PreviewProvider {
    static var previews: some View {
        ArpeggioView(arpeggio: .constant(Arpeggio.random()))
    }
}
