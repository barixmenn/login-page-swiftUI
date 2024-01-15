//
//  LoginViewModel.swift
//  login-page
//
//  Created by Baris Dilekci on 15.01.2024.
//

import Foundation

final class LoginViewModel : ObservableObject {
    @Published var email : String = ""
    @Published var password : String = ""
}
