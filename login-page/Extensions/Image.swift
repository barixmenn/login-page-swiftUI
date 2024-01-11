//
//  Image.swift
//  login-page
//
//  Created by Baris Dilekci on 11.01.2024.
//

import SwiftUI

enum ImageName : String {
    case splash, splashLogo
}

extension Image {
    init(name: ImageName) {
        self.init(name.rawValue)
    }
}
