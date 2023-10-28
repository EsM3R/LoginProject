//
//  CustomSelectorGender.swift
//  LoginProject
//
//  Created by Mehmet Vural on 27.10.2023.
//

import SwiftUI

struct CustomSelectorGender: View {
    var width = UIScreen.main.bounds.width
    let gender : String
    @Binding var isSelected : Bool
    var body: some View {
        Text(gender)
            .frame(width: width * 0.375 , height: 50 )
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(isSelected ? Color.white : Color.gray)
                    .stroke(Color.trendyolColorOrange ,lineWidth: isSelected ? 2 :  0)
            )
    }
}


