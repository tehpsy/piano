import SwiftUI

struct ModifierHandView: View {
    let text: String
    var body: some View {
        ZStack {
            Color(.systemGray2)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text(text)
        }
    }
}

struct ModifierHandView_Previews: PreviewProvider {
    static var previews: some View {
        ModifierHandView(text: "Foo")
    }
}
