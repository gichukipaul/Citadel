//
//  WebView.swift
//  Citadel
//
//  Created by Gichuki on 14/01/2024.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    
    var html: String
    
    func makeNSView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
        nsView.loadHTMLString(html, baseURL: Bundle.main.resourceURL)
    }
    
    typealias NSViewType = WKWebView

}
