//
//  CustomHeaderView.swift
//  LoginProject
//
//  Created by Mehmet Vural on 28.10.2023.
//

import SwiftUI

struct CustomHeaderView : View {
    
    private let loginPageTitleSize : CGFloat =  70
    private let spacing : CGFloat = 10
    private let paddingTop : CGFloat = 20
    
    
    var body: some View{
        VStack(spacing : spacing ){
            HStack{Spacer()}
            Text(Titles.title)
                .font(.system(size:loginPageTitleSize ,weight: .semibold))
            Text(Titles.subTitle)
                .fontWeight(.medium)
            
        }
        .foregroundStyle(Color.white)
        .padding(.top,paddingTop)
        
    }
}
