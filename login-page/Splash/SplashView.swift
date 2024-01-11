//
//  SplashView.swift
//  login-page
//
//  Created by Baris Dilekci on 11.01.2024.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack{
            Image(name: .splash)
                .resizable()
                .ignoresSafeArea()
            Image(name: .splashLogo)
        }
    }
}

#Preview {
    SplashView()
}
