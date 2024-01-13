//
//  ContentView.swift
//  Citadel
//
//  Created by Gichuki on 10/01/2024.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: CitadelDocument

    var body: some View {
        HSplitView {
            TextEditor(text: $document.text)
                .frame(minWidth:200)
            WebView(html: document.html)
                .frame(minWidth:200)
        }
        .frame(minWidth:400, minHeight: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(CitadelDocument()))
    }
}
