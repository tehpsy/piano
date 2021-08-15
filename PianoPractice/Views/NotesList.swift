import SwiftUI

struct NotesList: View {
    @Binding var scale: Scale

    var body: some View {
        HStack {
            ForEach(scale.key.notes, id: \.rawValue) { note in
                Text("\(note.text)")
            }
        }
    }
}

struct NotesList_Previews: PreviewProvider {
    static var previews: some View {
        NotesList(scale: .constant(Scale.generate()))
    }
}

