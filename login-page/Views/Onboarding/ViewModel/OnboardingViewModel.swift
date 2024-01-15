//
//  OnboardingViewModel.swift
//  login-page
//
//  Created by Baris Dilekci on 13.01.2024.
//

import SwiftUI

final class OnboardingViewModel : ObservableObject {
    @Published var onboardingPages : [OnboardingPage]
    
    init() {
      onboardingPages = [
        OnboardingPage(imageName: .onboarding1, title: "Find your Food", description: "Here you can find a chef or dish for every taste and color."),
        OnboardingPage(imageName: .onboarding2, title: "Food ninja is where your comfort food lives", description: "Enjou a fast and smooth food delivery at your doorstep")
      ]
    }
}
