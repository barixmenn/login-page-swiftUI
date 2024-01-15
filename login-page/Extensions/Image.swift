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
    
    case person = "person.fill"
    case eye = "eye"
    case eyeSlash = "eye.slash"
}

extension Image {
    init(name: ImageName) {
        self.init(name.rawValue)
    }
    init(sysNameImage: ImageName) {
        self.init(systemName: sysNameImage.rawValue)
      }
}
