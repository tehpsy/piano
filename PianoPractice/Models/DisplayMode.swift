enum DisplayMode: String, CaseIterable, Identifiable {
    case scale = "Scale"
    case arpeggio = "Arpeggio"
    var id: String { rawValue }
}
