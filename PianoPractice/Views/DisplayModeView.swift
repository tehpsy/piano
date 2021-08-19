import SwiftUI

struct DisplayModeView: View {
    @Binding var displayMode: DisplayMode

    var body: some View {
        Picker(selection: $displayMode, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/, content: {
            ForEach(DisplayMode.allCases, id: \.self) { displayMode in
                Text(displayMode.rawValue)
            }
        })
        .pickerStyle(SegmentedPickerStyle())
        .labelsHidden()
        .padding()
    }
}

struct DisplayModeView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayModeView(displayMode: .constant(.scale))
    }
}
