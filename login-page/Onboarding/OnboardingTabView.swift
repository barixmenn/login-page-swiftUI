//
//  OnboardingTabView.swift
//  login-page
//
//  Created by Baris Dilekci on 13.01.2024.
//

import SwiftUI

struct OnboardingTabView: View {
    @ObservedObject private var viewModel = OnboardingViewModel()
    @EnvironmentObject private var appState: AppState
    @State private var selectedIndex = 0
    
        var body: some View {
            ZStack {
                TabView(selection: $selectedIndex) {
                    ForEach(0..<viewModel.onboardingPages.count) { index in
                        OnboardingContent(page: viewModel.onboardingPages[index])
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                
                if selectedIndex == (viewModel.onboardingPages.count - 1) {
                    let config = CustomButtonConfig(title: "NEXT") {
                        appState.isOnboardingDone = true
                        
                        
                    }
                    
                    CustomButton(config: config)
                        .frame(maxHeight: .infinity, alignment: .bottom)
                        .frame(width: 160)
                        .padding(.bottom)
                    
                
                }
            }
        }
}

#Preview {
    OnboardingTabView()
}
