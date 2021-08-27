import SwiftUI

struct NotesList: View {
    let notes: [String]

    init(scale: Scale?, arpeggio: Arpeggio?) {
        let notes: [Note] = scale?.key.notes ?? arpeggio?.notes ?? []
        self.notes = notes.map { $0.text }
    }

    var body: some View {
        HStack {
            ForEach(notes, id: \.self) { note in
                Text("\(note)")
            }
        }
    }
}

struct NotesList_Previews: PreviewProvider {
    static var previews: some View {
        NotesList(scale: Scale.random(), arpeggio: nil)
    }
}

