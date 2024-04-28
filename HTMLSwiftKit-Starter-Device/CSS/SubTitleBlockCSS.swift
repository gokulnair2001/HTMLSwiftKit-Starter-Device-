//
//  SubTitleBlockCSS.swift
//  HTMLSwiftKit-Starter-Device
//
//  Created by Gokul Nair on 28/04/24.
//

import Foundation
import HTMLSwiftKit


struct SubTitleBlockCSS: CSSBlock {
    
    var cssType: CSSType = .custom
    
    var content: [CSSModifier] {
        FontSize(22)
        Color("#f75605")
    }
    
}
