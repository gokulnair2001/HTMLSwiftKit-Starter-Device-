//
//  WebContainer.swift
//  HTMLSwiftKit-Starter-Device
//
//  Created by Gokul Nair on 25/04/24.
//

import SwiftUI
import WebKit

struct WebViewContainer: UIViewRepresentable {
    let htmlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        let wv =  WKWebView()
        wv.pageZoom = 1
        wv.isInspectable = true
        return wv
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.loadHTMLString(htmlString, baseURL: nil)
    }
}
