//
//  HeaderView.swift
//  AlwaysNote
//
//  Created by Intissar Jamal on 14/02/2023.
//

import SwiftUI

struct HeaderView: View {
    @State private var showAlert = false
    @Binding var fontSize: Double
    @Environment(\.verticalSizeClass) var sizeClass
    var body: some View {
        if sizeClass == .compact {
            HStack { titleView; buttonView }
        } else {
            VStack { titleView; buttonView}
        }
    }
    
    var titleView: some View {
        Text("AlwaysNote").font(.custom("Hoefler Text", size: 60)).foregroundColor(Color("FlexLabelColor"))
    }
    var buttonView: some View {
        HStack {
            Spacer()
            Button("Save") {
            }.alert(isPresented: $showAlert, content: { Alert(title: Text("Your note has been stored"))})
            Spacer()
            Spacer()
            Button("a") {
                decreaseFont()
            }
            Spacer()
            Button("A") {
                increaseFont()
            }
            Spacer()
        }
    }
    
    func decreaseFont() {
        fontSize = max(fontSize - 1.0,8.0)
    }
    func increaseFont() {
        fontSize = max(fontSize + 1.0,8.0)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(fontSize: .constant(17.0))
    }
}
