//
//  EditorView.swift
//  AlwaysNote
//
//  Created by Intissar Jamal on 14/02/2023.
//

import SwiftUI

struct EditorView: View {
    @AppStorage("noteContents") var noteContents = "School is i think fun, \n\nen soms ook weer niet"
    @State var fontName = "Noteworthy-Bold"
    @Binding var fontSize: Double
    var body: some View {
        VStack {
            TextEditor(text: $noteContents).scrollContentBackground(.hidden).background(.yellow).padding().font(.custom(fontName, size: fontSize))
        }
    }
}

struct EditorView_Previews: PreviewProvider {
    static var previews: some View {
        EditorView(fontSize: .constant(17.0))
    }
}
