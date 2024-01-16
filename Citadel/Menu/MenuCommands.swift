//
//  MenuCommands.swift
//  Citadel
//
//  Created by Gichuki on 16/01/2024.
//

import SwiftUI

struct MenuCommands: Commands {
    var body: some Commands {
        CommandGroup(before: .help) {
            Button("MarkDown CheatSheet") {
                showCheatSheet()
            }
            .keyboardShortcut("/", modifiers: .command)
            
            Divider()
            
                // MORE COMMANDS HERE
        }
    }
    
    func showCheatSheet() {
        let cheatSheetUrl = "https://www.markdownguide.org/cheat-sheet/"
        
        guard let url = URL(string: cheatSheetUrl) else {
            print("I N V A L I D U R L")
            return
        }
        
        NSWorkspace.shared.open(url)
    }
}
