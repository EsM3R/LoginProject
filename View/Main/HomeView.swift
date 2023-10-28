//
//  HomeView.swift
//  LoginProject
//
//  Created by Mehmet Vural on 27.10.2023.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel : AuthViewModel
    var body: some View {
        Text("WellCome,you can find everthing here ...")
    }
}

#Preview {
    HomeView()
}
