import SwiftUI

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
