import SwiftUI

struct ModifiersListView: View {
    let modifiers: [Modifier]

    init(scale: Scale?, arpeggio: Arpeggio?) {
        self.modifiers = scale?.modifiers ?? arpeggio?.modifiers ?? []
    }

    var body: some View {
        VStack {
            Text("Modifiers")
                .font(.title3)
                .bold()
                .padding()

            HStack(alignment: .center) {
                Spacer()
                Text("Left")
                Spacer()
                Text("Right")
                Spacer()
            }
                .padding()

            List(modifiers, id: \.self) { modifier in
                if let dualText = modifier.dualText {
                    ModifierView(left: dualText.0, right: dualText.1)
                } else {
                    ModifierHandView(text: modifier.id)
                }
            }
                .padding()
        }
    }
}

struct ModifiersListView_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersListView(scale: Scale.random(), arpeggio: nil)
            .preferredColorScheme(.dark)
    }
}
