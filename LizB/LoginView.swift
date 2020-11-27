//
//  LoginView.swift
//  LizB
//
//  Created by Christian Bain on 11/25/20.
//

import SwiftUI

struct AppContentView: View {
    @State var signInSuccess = false
    var body: some View {
        return Group {
            if signInSuccess {
                HomeView()
            } else {
                LoginView(signInSucces: $signInSuccess)
            }
        }
    }

}

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    @State private var showError = false
    @Binding var signInSucces: Bool
    
    var body: some View {
        ZStack {
            VStack {
                Text("Welcome Back!")
                    .font(.system(size:32, weight: .heavy))
                Text("Login to continue")
                    .font(.system(size:18, weight: .medium))
                    .foregroundColor(.gray)

                VStack(spacing: 18) {
                
                    HStack (alignment: .center) {
                        TextField("Email", text: $email)
                            .padding(12)
                            .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color.black,lineWidth: 1))
                    }
                    HStack (alignment: .center) {
                        SecureField("Password", text: $password)
                            .padding(12)
                            .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color.black,lineWidth: 1))
                    }
                }
                .padding(.vertical, 64)
                
                // action should be to launch HomeView()
                Button(action : {
                    
                    if (self.email == "Cbain10.10@gmail.com" && self.password == "password") {
                        signInSucces = true
                    } else {
                        self.showError = true
                    }
                }) {
                    Text("Login")
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("blue1"), Color("blue1")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .cornerRadius(5)
                }
                
                if showError {
                    Text("Incorrect email/password").foregroundColor(.red)
                }
                
                Spacer()
            }
            .padding(.horizontal, 32)
            .padding(.top, 50)
        }
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    @Binding var signInSuccess: Bool
    static var previews: some View {
        LoginView(signInSucces: $signInSuccess)
    }
}
