//
//  OnboardingContent.swift
//  login-page
//
//  Created by Baris Dilekci on 13.01.2024.
//

import SwiftUI

struct OnboardingPage {
    let imageName : ImageName
    let title : String
    let description : String
}


struct OnboardingContent: View {
    let page: OnboardingPage
    
    var body: some View {
        VStack {
            Image(name: page.imageName)
                .resizable()
                .scaledToFit()
            
            Text(page.title)
                .font(.system(size: 25, weight: .semibold))
                .multilineTextAlignment(.center)
                .padding(.top)
            Text(page.description)
                .font(.system(size: 25))
                .multilineTextAlignment(.center)
                .padding(.top)
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
    }
}

#Preview {
    OnboardingContent(page: OnboardingPage(imageName: .onboarding1, title: "Find your Food", description: "Here you can find a chef or dish for every taste and      color."))
}
