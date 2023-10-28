//
//  LoginProjectApp.swift
//  LoginProject
//
//  Created by Mehmet Vural on 27.10.2023.
//

import SwiftUI
import Firebase
@main
struct LoginProjectApp: App {
    init (){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel())
        }
    }
}
