//
//  FirstPage.swift
//  HTMLSwiftKit-Starter-Device
//
//  Created by Gokul Nair on 28/04/24.
//

import HTMLSwiftKit
import SwiftUI

struct FirstPage: HTMLPage {
    
    var baseUrl: URL = URL(string: "www.test.com")!
    
    var htmlContent: [HTMLBlock] {
        
        Style({
            TitleBlockCSS()
            SubTitleBlockCSS()
        })
        
        Division(cssClass: TitleBlockCSS()) {
            Heading(.h2, "HTMLSwiftKit")
        }
        
        Heading(.h4, "A Static Site generator written in Swift")
        
        Paragraph {
            
            Description("""
HTMLSwiftKit is a Swift framework that simplifies the creation of static sites. The kit aims to convert your Swift written code to HTML, thus making your site generation process easy with Swift and handeling the HTML complexities under the hood. The goal of HTMLSwiftKit is to enable anyone with basic HTML knowledge to develop websites in Swift.
""")
            
            Description("""
                    It includes all the essential HTML tags that are modified as per swift language which can be directly used. Now start generating your websites using swift.
""")
        }
        
        Break()
        
    
        Division(cssClass: SubTitleBlockCSS()) {
            Heading(.h2, "Getting Started")
        }
    
        HorizontalRule()
        
        OrderedList {
            
            ListItem({ Padding(10) }, "Create HTML Page")
            
            PreFormatted {
                Code("""
       struct FirstPage: HTMLPage {

            /// Your HTMLContent
            var htmlContent: [HTMLBlock] {

              Heading(.h1, "Random Image")

              Image(src: "https://picsum.photos/200/300", alt: "Test")
       
              HorizontalRule()
           }
        }
    """)
            }
           
            HorizontalRule()
           
            ListItem({Padding(10)}, "Create CSS")
            
            PreFormatted {
                Code("""
       struct BasicCSS: CSSBlock {
       
         var cssType: CSSType = .custom
       
         var content: [CSSModifier] {
             Border(5, border: .dotted, color: "orange")
             BackgroundColor(color: "yellow")
             FontSize(22)
             Color("Red")
             Padding(200)
         }
       }
    """)
            }
            HorizontalRule()
            
            ListItem({Padding(10)}, "Configure Website")
            
            PreFormatted {
                Code("""
     struct MyWebSite: WebSite {
     
         var baseUrl: URL = URL(string: "www.htmlswiftkit.com")!
     
         var author: String = "Gokul"
     
         var pages: [HTMLSwiftKit.HTMLPage] = [FirstPage(), SecondPage()]
     
         var crawlerConfiguration: CrawlerConfiguration = CrawlerConfig()
     }
    """)
            }
            HorizontalRule()
            
            ListItem({Padding(10)}, "Generate/Publish")
            
            UnorderedList {
                
                ListItem({Padding(10)}, "Using SPM")
                
                PreFormatted {
                    Code("""
    @main
    struct StartWebsite {
        static func main() {
            let site = MyWebSite()
            
            do {
                try site.publishViaSPM()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    """)
                }
                HorizontalRule()
                
                ListItem({Padding(10)},  "Using iOS Device")
                PreFormatted {
                    Code("""
    @main
    struct StartWebsite {
        static func main() {
            let site = MyWebSite()
            
            do {
                try site.publishViaDevice()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    """)
                }
                HorizontalRule()
            }
        }
    }
}
