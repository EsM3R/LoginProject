//
//  CustomButtonView.swift
//  LoginProject
//
//  Created by Mehmet Vural on 27.10.2023.
//

import SwiftUI

struct CustomButtonView: View {
    
    var buttonText : String
    var action : ()-> Void
   
    
    var body: some View {
        Button(action:action , label: {
            Text(buttonText)
                .foregroundStyle(Color.white)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(10)
                .background(Color.trendyolColorOrange)
                .cornerRadius(5)
        })
    }
}

