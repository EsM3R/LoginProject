//
//  CustomNavigationLink.swift
//  LoginProject
//
//  Created by Mehmet Vural on 27.10.2023.
//

import SwiftUI

struct CustomLabel: View {
    let firstText : String
    let secondText : String
    
    var body: some View {
        HStack{
            Spacer()
            Text(firstText)

                .foregroundStyle(Color.gray)
            Text(secondText)
                .foregroundStyle(Color.trendyolColorOrange)
            Spacer()
        }
        .fontWeight(.medium)
        .font(.callout)
    }
}



