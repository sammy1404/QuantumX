//
//  signUpNow.swift
//  QuantumX
//
//  Created by Sam Susikar on 27/01/24.
//

import SwiftUI

struct signUpNow: View {
    @State private var username = ""
    @State private var password = ""
    @State private var redirectToLogin = false // New state to control navigation
    
    var body: some View {
        NavigationView {
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
                    Text("Sign Up")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.leading, 25.0)
                .padding(.bottom, 2)
                HStack {
                    Text("enter your credentials to create an account")
                        .foregroundColor(Color.gray)
                    Spacer()
                }
                .padding(.leading, 25)
                HStack {
                    Image(systemName: "person.fill")
                        .padding(.leading, 26.5)
                        .padding(.bottom, 9)
                        .foregroundColor(.black)
                    TextField("Full Name", text: $password)
                        .padding(12.5)
                        .background(Color(.systemGray6))
                        .cornerRadius(20)
                        .padding(.trailing, 50)
                        .padding([.leading, .bottom], 9)
                }
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
                HStack {
                    Image(systemName: "lock.fill")
                        .padding(.leading, 27.5)
                        .padding(.top, 9)
                        .foregroundColor(.black)
                    SecureField("Confirm Password", text: $password)
                    
                }
            }
        }
    }
}
struct signUpNow_Preview: PreviewProvider {
    static var previews: some View {
        signUpNow()
            .previewInterfaceOrientation(.portrait)
    }
}
