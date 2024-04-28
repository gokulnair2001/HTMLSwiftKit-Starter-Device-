//
//  TitleBlockCSS.swift
//  HTMLSwiftKit-Starter-Device
//
//  Created by Gokul Nair on 28/04/24.
//

import Foundation
import HTMLSwiftKit


struct TitleBlockCSS: CSSBlock {
    
    var cssType: CSSType = .custom
    
    var content: [CSSModifier] {
        FontSize(32)
        Color("#7989f2")
        Padding(8)
    }
    
}
