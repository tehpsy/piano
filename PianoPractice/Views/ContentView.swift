import SwiftUI

struct ContentView: View {
    @ObservedObject var root = Root(
        scale: Scale.random(),
        arpeggio: Arpeggio.random(),
        displayMode: .scale
    )

    var body: some View {
        NavigationView {
            VStack {
                MainView(root: root)
                    .padding()

                Spacer()

                DisplayModeView(displayMode: $root.displayMode)

                HStack() {
                    Spacer()
                    NextButton(root: root)
                    Spacer()
                }
                    .padding()
            }
        }
    }
}

struct MainView: View {
    @ObservedObject var root: Root

    var body: some View {
        switch root.displayMode {
        case .scale:
            ScaleView(scale: $root.scale)
        case .arpeggio:
            ArpeggioView(arpeggio: $root.arpeggio)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
