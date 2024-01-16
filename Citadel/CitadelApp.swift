//
//  CitadelApp.swift
//  Citadel
//
//  Created by Gichuki on 10/01/2024.
//

import SwiftUI

@main
struct CitadelApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: CitadelDocument()) { file in
            ContentView(document: file.$document)
        }
        .commands {
            MenuCommands()
        }
        
        Settings {
            SettingsView()
                .frame(minWidth: 600, minHeight: 200)
        }
    }
}
