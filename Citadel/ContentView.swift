//
//  ContentView.swift
//  Citadel
//
//  Created by user on 10/01/2024.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: CitadelDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(CitadelDocument()))
    }
}
