//
//  logoMenu.swift
//  QuantumX
//
//  Created by Sam Susikar on 26/01/24.
//

import SwiftUI

struct logoMenu: View {
    var body: some View {
        VStack {
            HStack {
                Image("graphLogo")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("Company Name")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                    .foregroundColor(Color(red: 0.111, green: 0.151, blue: 0.296))
                
            }.padding(.top)
            Spacer()
            Text("description of the company")
            Spacer()
        }
    }
}



struct logoMenu_Previews: PreviewProvider {
    static var previews: some View {
        logoMenu()
            .previewInterfaceOrientation(.portrait)
    }
}

