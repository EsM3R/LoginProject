//
//  ContentView.swift
//  LoginProject
//
//  Created by Mehmet Vural on 27.10.2023.
//

import SwiftUI

struct ContentView: View {
        
    @EnvironmentObject var viewModel  : AuthViewModel
    
    var body: some View {
        Group{
            if viewModel.userSession !=  nil {
                HomeView()
            }else{
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
