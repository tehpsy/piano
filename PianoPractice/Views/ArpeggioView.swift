import SwiftUI

struct ArpeggioView: View {
    @Binding var arpeggio: Arpeggio

    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("")
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
