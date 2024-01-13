//
//  ContentView.swift
//  login-page
//
//  Created by Baris Dilekci on 11.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var endSplash = true
    var body: some View {
        NavigationView {
            if endSplash {
                SplashView()
            } else {
                OnboardingTabView()
            }
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                endSplash = false 
            }
        })
        
    }
}

#Preview {
    ContentView()
}
