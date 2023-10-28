//
//  LoginView.swift
//  LoginProject
//
//  Created by Mehmet Vural on 27.10.2023.
//

import SwiftUI

struct LoginView: View {
    
    var height = UIScreen.main.bounds.height
    
    var body: some View {
        
        NavigationView {
            ZStack(){
                CustomBackgroundView()
                VStack(spacing : height * 0.1){
                    CustomHeaderView()
                    LoginFieldView()
                    Spacer()
                }
            }
        }
    }
    

}


    


struct LoginFieldView : View {

    @EnvironmentObject var viewModel : AuthViewModel
    
    @State var email : String = ""
    @State var password : String = ""
    @State var isClickedEmail : Bool = false
    @State var isClickedPassword : Bool = false
    
 
    
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    
    
    

    
    var body : some View {
        
        VStack(spacing : 17){
            CustomTextField(text: $email,
                            placeholder: "E-Posta",
                            isSecureField: false,
                            isClicked: $isClickedEmail)
                            .onTapGesture {
                                isClickedEmail = true
                                isClickedPassword = false
                            }
     
   
            CustomTextField(text: $password,
                            placeholder: "Sifre",
                            isSecureField: true,
                            isClicked: $isClickedPassword)
                            .onTapGesture {
                                isClickedEmail = false
                                isClickedPassword = true
                            }
            forgetPassword
            
            CustomButtonView(buttonText: "Giris Yap") {
                viewModel.login(withEmail: email, password: password)
            }
            
            NavigationLink {
                RegisterationView()
            } label: {
                CustomLabel(firstText: "Uye degil misin?",
                            secondText: "Uye ol")
            }

            }
            .frame(width: width * 0.8 , height: height * 0.3)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(color : Color.black.opacity(0.3) ,
                        radius: 3,
                        y : 10))
 
    }
    var forgetPassword : some View{
     HStack{
            Spacer()
            Button(action: {
                
                print("I forgot my password")
            }, label: {
                Text("Sifremi Unuttum")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.trendyolColorOrange)
            })
        }
    }
}

#Preview {
    LoginView()
}
