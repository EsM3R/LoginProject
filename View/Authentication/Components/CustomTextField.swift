//
//  CustomTextField.swift
//  LoginProject
//
//  Created by Mehmet Vural on 27.10.2023.
//

import SwiftUI

struct CustomTextField: View {
    
    
    @Binding var text : String
    var placeholder : String
    var isSecureField : Bool
    @Binding var isClicked : Bool
    
    var body: some View {
        VStack{
            if isSecureField{
                SecureField(placeholder, text: $text)
            }else{
                TextField(placeholder, text: $text)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 5)
                .stroke(isClicked ? Color.trendyolColorOrange : .gray.opacity(0.2), lineWidth: 2))

             

    }
}
