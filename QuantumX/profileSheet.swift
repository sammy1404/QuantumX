//
//  profileTab.swift
//  QuantumX
//
//  Created by Sam Susikar on 25/01/24.
//

import SwiftUI

struct ProfileSheet: View {
    
    
    var body: some View {
        VStack {
            List(){
                HStack {
                    Text("Welcome, User")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.leading, -15.0)
                    
                    
                    
                    Spacer()
                } .listRowBackground(Color.clear)
                Section{
                    
                    HStack {
                        UserNameView(width: 72, height: 72, textStyle: .title)
                        VStack(alignment: .leading, spacing: 4){
                            Text("Username")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .padding(.top,4)
                            Text("example@gmail.com")
                                .font(.footnote)
                                .accentColor(.gray)
                        }
                        
                    }
                }
                Section("General"){
                    HStack{
                        Image(systemName: "gear")
                            .resizable()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.black)
                        Text("Version")
                            .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
                        Spacer()
                        Text("1.0")
                            .padding(.trailing, 10)
                            .font(.subheadline)
                    }
                }
                
                
                Section("Account"){
                    HStack{
                        Spacer()
                        Text("Sign Out")
                            .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.red)
                        Spacer()
                    }
                }
                
            }
        }
    }
            
}
    
struct UserNameView: View {
    let width: CGFloat
    let height: CGFloat
    let textStyle: Font
    
    var body: some View {
        Text("UN")
            .font(textStyle)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: width, height: height)
            .background(Color.gray)
            .clipShape(Circle())
    }
}

struct profileTab_Previews: PreviewProvider {
    static var previews: some View {
       ProfileSheet()
    }
}
