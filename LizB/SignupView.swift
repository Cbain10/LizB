//
//  SignupView.swift
//  LizB
//
//  Created by Christian Bain on 11/25/20.
//

import SwiftUI

struct SignupView: View {
    @State var email: String = ""
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                Text("Welcome!")
                    .font(.system(size:32, weight: .heavy))
                Text("Sign up to be part of the fam!")
                    .font(.system(size:18, weight: .medium))
                    .foregroundColor(.gray)

                VStack(spacing: 18) {
                
                    HStack (alignment: .center) {
                        TextField("First Name", text: $firstName)
                            .padding(12)
                            .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color.black,lineWidth: 1))
                    }
                    HStack (alignment: .center) {
                        TextField("Last Name", text: $lastName)
                            .padding(12)
                            .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color.black,lineWidth: 1))
                    }
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
                
                Button(action : {
                }) {
                    Text("Sign Up and Login!")
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundColor(.black)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("LightTeal"), Color("DarkTeal")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .cornerRadius(5)
                    .foregroundColor(.white)
                }
                Spacer()
            }
            .padding(.horizontal, 32)
            .padding(.top, 50)
        }    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
