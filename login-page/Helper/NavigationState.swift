//
//  NavigationState.swift
//  login-page
//
//  Created by Baris Dilekci on 29.01.2024.
//

import SwiftUI

enum NavigationDestination : Hashable {
    case login, signup, signupBioView, signPaymentView
      
      @ViewBuilder
      var view: some View {
          switch self {
          case .login:
              LoginView()
          case .signup:
              SignupView()
          case .signupBioView:
              SignupBioView()
          case .signPaymentView:
              SignupPaymentView()
          }
      }
}

final class NavigationState : ObservableObject {
    @Published var path: [NavigationDestination] = []
    
    func popToRoot() {
        path.removeAll()
    }
    
    func popView() {
        path.removeLast()
    }
    
    func push(to view: NavigationDestination) {
        path.append(view)
    }
}
