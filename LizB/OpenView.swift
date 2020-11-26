//
//  ContentView.swift
//  LizB
//
//  Created by Christian Bain on 11/18/20.
//

import SwiftUI

struct OpenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer()
                    NavigationLink(destination: LoginView()) {
                        HStack {
                            Text("Login")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .padding(30)
                                .font(.title)
                                .foregroundColor(.black)
                        }
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(LinearGradient(gradient: Gradient(colors: [Color("DarkTeal"), Color("DarkTeal")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(10)
                    }
                    .padding(.bottom, 30)
                    NavigationLink(destination: SignupView()) {
                        HStack {
                            Text("SignUp")
                                .fontWeight(.bold)
                                .padding(30)
                                .font(.title)
                        }
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.gray]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(10)                }
                    .padding(.bottom, 50)
                    .navigationBarTitle("Logo")
                }
//                .background(Color.black)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OpenView()
    }
}
