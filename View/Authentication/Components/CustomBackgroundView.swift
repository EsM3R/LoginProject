//
//  CustomBackgroundColor.swift
//  LoginProject
//
//  Created by Mehmet Vural on 27.10.2023.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack(alignment : .top){
            Color.gray.opacity(0.2)
            LinearGradient(colors: [.trendyolColorOrange],
                           startPoint: .top,
                           endPoint: .bottom)
            .frame(height: UIScreen.main.bounds.height * 0.4)
            
            
        }.ignoresSafeArea()
    }
}
