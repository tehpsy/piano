import SwiftUI

struct ModifierView: View {
    let left: String
    let right: String

    var body: some View {
        HStack {
            ModifierHandView(text: left)
            Spacer()
            ModifierHandView(text: right)
        }
    }
}

struct ModifierView_Previews: PreviewProvider {
    static var previews: some View {
        ModifierView(
            left: "foo",
            right: "bar"
        )
    }
}
