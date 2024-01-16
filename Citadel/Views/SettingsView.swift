//
//  SettingsView.swift
//  Citadel
//
//  Created by Gichuki on 16/01/2024.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("editorFontSize") var editorFontSize: Int = 15
    
    var body: some View {
        Stepper(value: $editorFontSize, in: 10...30) {
            Text("Font Size: \(editorFontSize)")
        }
        .padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
