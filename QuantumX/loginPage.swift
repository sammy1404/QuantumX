//
//  loginPage.swift
//  QuantumX
//
//  Created by Sam Susikar on 27/01/24.
//

import SwiftUI

struct loginPage: View {
    @State private var username = ""
    @State private var password = ""
    @State private var navigateToSignUp = false // New state to control navigation
    
    var body: some View {
        VStack {
            HStack {
                Image("graphLogo")
                    .resizable()
                    .frame(width: 40, height: 40)
                Text("Company Name")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            .padding(30)
            Spacer()
            HStack {
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.leading, 25.0)
            .padding(.bottom, 2)
            HStack {
                Text("enter your credentials to log in")
                    .foregroundColor(Color.gray)
                Spacer()
            }
            .padding(.leading, 25)
            
            HStack {
                Image(systemName: "envelope.fill")
                    .padding(.leading, 25)
                    .foregroundColor(.black)
                TextField("Email ID", text: $username)
                    .padding(12.5)
                    .background(Color(.systemGray6))
                    .cornerRadius(20)
                    .padding(.trailing, 50)
                    .padding(.leading, 5)
            }
            
            HStack {
                Image(systemName: "lock.fill")
                    .padding(.leading, 27.5)
                    .padding(.top, 9)
                    .foregroundColor(.black)
                SecureField("Password", text: $password)
                    .padding(12.5)
                    .background(Color(.systemGray6))
                    .cornerRadius(20)
                    .padding(.trailing, 50)
                    .padding([.leading, .top], 9)
            }
            
            Button(action: {
                print("login")
            }) {
                Rectangle()
                    .frame(width: 165, height: 65)
                    .cornerRadius(40)
                    .overlay(
                        HStack {
                            Text("Sign In")
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(.bold)
                            Image(systemName: "arrow.right.circle.fill")
                                .foregroundColor(.white)
                        }
                    )
                    .padding(.top, 30)
            }
            
            Button(action: {
                print("forgot password")
            }) {
                Text("Forgot Password?")
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(5)
            }
            
            Spacer()
            Spacer()
            
            HStack {
                Text("Don't have an account yet?")
                    .foregroundColor(Color.gray)
                
                Button(action: {
                    print("sign up here")
                    navigateToSignUp = true // Activate the navigation to signUpNow
                }) {
                    Text(" Sign up here")
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                }
            }
            .padding(.bottom, 30)
        }
        .navigationBarHidden(true) // Hide the navigation bar for this view
        .sheet(isPresented: $navigateToSignUp) {
            signUpNow()
        }
    }
}

struct loginPage_Preview: PreviewProvider {
    static var previews: some View {
        loginPage()
            .previewInterfaceOrientation(.portrait)
    }
}
