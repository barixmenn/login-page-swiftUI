//
//  ContentView.swift
//  login-page
//
//  Created by Baris Dilekci on 11.01.2024.
//

import SwiftUI


struct ContentView: View {
    @State private var endSplash = true
    @ObservedObject private var navigationState = NavigationState()
    @ObservedObject private var appState = AppState()
    
    var body: some View {
        NavigationView {
            if endSplash {
                SplashView()
            } else if appState.isOnboardingDone {
                NavigationStack(path: $navigationState.path) {
                    LoginView()
                        .environmentObject(navigationState)
                        .navigationDestination(for: NavigationDestination.self) { path in
                            path.view
                                .environmentObject(navigationState)
                        }
                }
            }else {
                OnboardingTabView()
                    .environmentObject(appState)
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
