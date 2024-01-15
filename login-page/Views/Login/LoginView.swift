//
//  LoginView.swift
//  login-page
//
//  Created by Baris Dilekci on 15.01.2024.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel = LoginViewModel()
    
    var body: some View {
        ZStack {
            Image(name: .splash)
                .ignoresSafeArea()
            
            ScrollView{
                Image(name: .splashLogo)
                
                Text("Login To Your Account")
                    .font(.system(size: 20, weight: .bold))
                    .padding(.top,50)
                
                CustomTextField(placeholder: "Email", text: $viewModel.email)
                CustomTextField(placeholder: "Password", text: $viewModel.password)
                
                Text("Or Continue With")
                    .font(.system(size: 12,weight: .bold))
                    .padding(.top,50)
                
                HStack{
                    Image(name: .facebook)
                        .resizable()
                        .scaledToFit()
                    Image(name: .google)
                        .resizable()
                        .scaledToFit()
                }
                Button {
                    print("Forgot password is tapped.")
                } label : {
                    Text("Forgot Your Password?")
                        .font(.system(size: 12,weight: .medium))
                        .foregroundColor(.lightGreen)
                }
                
                
                let config = CustomButtonConfig(title: "Login") {
                    
                }
                
                CustomButton(config: config)
                    .frame(width: 140)
                    .padding(.top,40)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    LoginView()
}
