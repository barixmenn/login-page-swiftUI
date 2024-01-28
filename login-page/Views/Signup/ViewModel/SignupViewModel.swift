//
//  SignupViewModel.swift
//  login-page
//
//  Created by Baris Dilekci on 29.01.2024.
//

import Foundation

final class SignupViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    @Published var keepMeSignedIn = false
    @Published var emailPromotion = false
}
