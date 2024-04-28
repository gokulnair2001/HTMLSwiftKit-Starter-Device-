//
//  ContentView.swift
//  HTMLSwiftKit-Starter-Device
//
//  Created by Gokul Nair on 25/04/24.
//

import SwiftUI
import HTMLSwiftKit

struct ContentView: View {
    
    var webContent: HTMLPage
    
    var body: some View {
        VStack {
            WebViewContainer(htmlString: webContent.generateCodeBlock())
                .padding()
        }.onAppear {
           // main()
        }
    }
    
    func main() {
        let site = MyWebSite()
        
        do {
            try site.publishViaDevice()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct MyWebSite: WebSite {
    
    var baseUrl: URL = URL(string: "www.gokul.com")!
    
    var author: String = "Gokul"
    
    var description: String? = "Test site"
    
    var pages: [HTMLPage] = [FirstPage()]
    
}


#Preview {
    ContentView(webContent: FirstPage())
}
