//
//  Sponsor.swift
//  NSBrazilConf
//
//  Created by Mauricio Cardozo on 10/6/19.
//  Copyright © 2019 Cocoaheadsbr. All rights reserved.
//

import Foundation
import SwiftUI

struct Sponsor: Codable, Identifiable {
    let id = UUID()
    let name: String
    let link: URL
    let image: URL
    let backgroundColor: String
    
    
    var logo: UIImage {
        return NSBrazilStore.fetchLogo(url: image)
    }
    
    var background: Color {
        return Color.init(hex: backgroundColor)
    }
}
