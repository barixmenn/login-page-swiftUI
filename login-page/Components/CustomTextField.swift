//
//  CustomTextField.swift
//  login-page
//
//  Created by Baris Dilekci on 15.01.2024.
//

import SwiftUI

struct CustomTextField: View {
    let placeholder: String
    @Binding var text: String
    var leftImage: ImageName? = nil
    var isPasswordField: Bool = false
    @State private var showPassword: Bool = true
    
    var body: some View {
        ZStack {
            if let leftImage = leftImage {
                Image(sysNameImage: leftImage)
                    .foregroundColor(.black)
                    .scaledToFit()
                    .frame(height: 20)
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            
            if isPasswordField {
                if showPassword {
                    SecureField(placeholder, text: $text)
                        .padding(.leading, leftImage == nil ? 20 : 40)
                } else {
                    TextField(placeholder, text: $text)
                        .padding(.leading, leftImage == nil ? 20 : 40)
                }
                
                Image(sysNameImage: showPassword ? .eyeSlash : .eye)
                    .contentTransition(.symbolEffect(.replace))
                    .foregroundColor(.black)
                    .scaledToFit()
                    .frame(height: 20)
                    .padding(.trailing)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .onTapGesture {
                        showPassword.toggle()
                    }
                
            } else {
                TextField(placeholder, text: $text)
                    .padding(.leading, leftImage == nil ? 20 : 40)
            }
        }
        .frame(height: 57)
        .overlay {
            RoundedRectangle(cornerRadius: 15)
                .inset(by: 0.5)
                .stroke(.gray.opacity(0.5), lineWidth: 1)
            
        }
    }
}

#Preview {
    CustomTextField(placeholder: "Test", text: .constant(""), leftImage: .person, isPasswordField: true)
}
