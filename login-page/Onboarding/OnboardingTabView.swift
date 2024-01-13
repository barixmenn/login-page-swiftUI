//
//  OnboardingTabView.swift
//  login-page
//
//  Created by Baris Dilekci on 13.01.2024.
//

import SwiftUI

struct OnboardingTabView: View {
    @ObservedObject private var viewModel = OnboardingViewModel()
    
    var body: some View {
        TabView {
            ForEach(0..<viewModel.onboardingPages.count) { index in
                OnboardingContent(page: viewModel.onboardingPages[index])
                
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

#Preview {
    OnboardingTabView()
}
