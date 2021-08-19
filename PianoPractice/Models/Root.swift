import SwiftUI
class Root: ObservableObject {
    @Published var scale: Scale
    @Published var arpeggio: Arpeggio
    @Published var displayMode: DisplayMode

    init(
        scale: Scale,
        arpeggio: Arpeggio,
        displayMode: DisplayMode
    ) {
        self.scale = scale
        self.arpeggio = arpeggio
        self.displayMode = displayMode
    }
}
