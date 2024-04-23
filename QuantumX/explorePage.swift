//
//  explorePage.swift
//  QuantumX
//
//  Created by Sam Susikar on 24/01/24.
//

import SwiftUI

struct explorePage: View {
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Text("Top Funds")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    
                }
                .padding(.horizontal, 25)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        CardViewFront(imageName: "card1", title: "")
                        CardViewFront(imageName: "card2", title: "")
                        CardViewFront(imageName: "card3", title: "")
                        CardViewFront(imageName: "card4", title: "")
                        CardViewFront(imageName: "card5", title: "")
                    }
                }
                .padding([.leading])
                
                
                HStack {
                    Text("Collections")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 25)
                        .padding(.top, 15)
                    

                    Spacer()
                    
                }
                
                Collections()
                
            }
            
        }
    }
}


struct Collections: View {
    var body: some View {
        VStack {
            HStack {
                GrayBoxContainer(title: "Profit")
                GrayBoxContainer(title: "Graphs")
            }
            HStack {
                GrayBoxContainer(title: "Loss")
                GrayBoxContainer(title: "Successful Returns")
            }
        }
    }
}

struct GrayBoxContainer: View {
    var title: String

    var body: some View {
        Rectangle()
            .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.279))
            .frame(width: 175, height: 125)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white, lineWidth: 2)
            )
            .padding(1.0)
        
            
            .overlay(Text(title)
                .foregroundColor(.white)
                .padding([.top, .leading], 8)
        )
    }
}


struct explorePage_Previews: PreviewProvider {
    static var previews: some View {
        explorePage()
            .previewInterfaceOrientation(.portrait)
    }
}

