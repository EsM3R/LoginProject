//
//  AuthViewModel.swift
//  LoginProject
//
//  Created by Mehmet Vural on 27.10.2023.
//

import Firebase

class AuthViewModel : ObservableObject{
    
    @Published var userSession : FirebaseAuth.User?

    

    
    static let shared = AuthViewModel()
    
    func register(withEmail email : String , password :  String , gender : String?){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error{
                print("DEBUG : error with description \(error.localizedDescription)")
                return
                
            }
            guard let user = result?.user else {return}
            
            
            let data : [String : Any] = ["email" : email, "gender" : gender as Any]
            
            
            COLLECTION_USERS.document(user.uid).setData(data) { error in
                if let error = error{
                    print("DEBUG: error with description \(error.localizedDescription) ")
                }
                self.userSession = user
               
            }
            
        }
    }
    
    func login(withEmail email : String  , password : String){
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error{
                print("DEBUG : error with description \(error)")
                return
            }
            self.userSession = result?.user
        
        }
    
    
    }
    
}
