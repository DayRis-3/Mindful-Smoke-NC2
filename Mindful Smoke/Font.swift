//
//  Font.swift
//  Mindful Smoke
//
//  Created by M Irsyad R on 22/05/23.
//

import SwiftUI

struct FontProvider {
    enum FontType: String {
        case metropolis = "Metropolis"
    }
    
    enum FontSize: CGFloat {
    case largeTitle = 30
    case title = 24
    case body = 16
    case subheadline = 14
    case caption = 12
    }
    
    static func custom(_ font: FontType, _ size: FontSize) -> Font {
        Font.custom(font.rawValue, size: size.rawValue)
    }
}
