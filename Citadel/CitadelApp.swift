//
//  CitadelApp.swift
//  Citadel
//
//  Created by user on 10/01/2024.
//

import SwiftUI

@main
struct CitadelApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: CitadelDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
