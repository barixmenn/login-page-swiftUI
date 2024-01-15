//
//  Image.swift
//  login-page
//
//  Created by Baris Dilekci on 11.01.2024.
//

import SwiftUI

enum ImageName : String {
    case splash, splashLogo, google, facebook
    case onboarding1 = "onboarding-1"
    case onboarding2 = "onboarding-2"
}

extension Image {
    init(name: ImageName) {
        self.init(name.rawValue)
    }
}
