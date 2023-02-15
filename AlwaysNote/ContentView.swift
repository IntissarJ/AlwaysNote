//
//  ContentView.swift
//  AlwaysNote
//
//  Created by Intissar Jamal on 14/02/2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("fontSize") var fontSize = 17.0
    var body: some View {
        VStack {
            HeaderView(fontSize: $fontSize)
            EditorView(fontSize: $fontSize)

        }
        .padding()
        .background(Color("FlexBackgroundColor"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
