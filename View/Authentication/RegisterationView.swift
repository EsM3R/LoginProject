//
//  RegisterationView.swift
//  LoginProject
//
//  Created by Mehmet Vural on 27.10.2023.
//

import SwiftUI

struct RegisterationView: View {
    var body: some View {
        ZStack(){
            CustomBackgroundView()
            VStack(spacing : 100){
                CustomHeaderView()
                SignUpFieldView()
                Spacer()
            }
            .padding(.top)
   
        }
        .navigationBarBackButtonHidden()
        
    }
}


struct SignUpFieldView :View {
    
    var height = UIScreen.main.bounds.height
    var width = UIScreen.main.bounds.width
    
    @State var email : String = ""
    @State var password : String = ""
    @State var isClickedEmail : Bool = false
    @State var isClickedPassword : Bool = false
    @State var isFemale : Bool = false
    @State var isMale : Bool = false
    
    @Environment(\.presentationMode) var mode
    @EnvironmentObject var viewModel : AuthViewModel

    var body: some View {
        
        VStack(spacing : 17){
            
            CustomTextField(text: $email, placeholder: "E-Posta",  isSecureField: false, isClicked: $isClickedEmail)
                .onTapGesture {
                    isClickedEmail = true
                    isClickedPassword = false
                }
            CustomTextField(text: $password, placeholder: "Sifre", isSecureField: true, isClicked: $isClickedPassword)
                .onTapGesture {
                    isClickedEmail = false
                    isClickedPassword = true
                }
            
            VStack(alignment : .leading) {
                HStack{Spacer()}
                Text("Cinsiyet (Opsiyonel)")
                    .font(.callout)
                    .foregroundStyle(Color.gray)
                HStack{
                    
                    CustomSelectorGender(gender: "Kadın", isSelected: $isFemale)
                        .onTapGesture {
                            isFemale = true
                            isMale = false
                        }
                    Spacer()
                    CustomSelectorGender(gender: "Erkek", isSelected: $isMale)
                        .onTapGesture {
                            isFemale = false
                            isMale = true
                    }
                }

            }
            CustomButtonView(buttonText: "Uye Ol") {
                viewModel.register(withEmail: email, password: password, gender: isChoseSex())
            }
            
            Button {
                mode.wrappedValue.dismiss()
            } label: {
                CustomLabel(firstText: "Uye misin?",
                            secondText: "Giris Yap")
            }
       

            }
            .frame(width: width * 0.8 , height: height * 0.4)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(color : Color.black.opacity(0.3) ,
                        radius: 3,
                        y : 10))
               
    }

}


#Preview {
    RegisterationView()
}
extension SignUpFieldView{
    func isChoseSex() -> String?{
        if isMale {
            return "male"
        }
        if isFemale{
            return "female"
        }
        return nil
    }
}
