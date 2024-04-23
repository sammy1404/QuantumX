//
//  dashboard.swift
//  QuantumX
//
//  Created by Sam Susikar on 24/01/24.
//

import SwiftUI

struct dashboard: View {
    var bankNames: [String]
    var bulletColors: [Color] = [.red, .green, .blue, .orange, .purple, .pink]
    var body: some View {
        
        NavigationView{
            ScrollView{
                VStack {
                    HStack {
                        Text("Dashboard")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 25.0)
                            .padding(.top, 15.0)
                        
                        Spacer()
                        
                    }

                    Rectangle()
                        .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.279))
                        .cornerRadius(15)
                        .frame(width: 350, height: 250)
                        .overlay(Text("graph here")
                            .foregroundColor(Color.white))
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 10) {
                                    ForEach(0..<bankNames.count, id: \.self) { index in
                                        HStack {
                                            Circle()
                                                .fill(bulletColors[index])
                                                .frame(width: 10, height: 10)
                                            Text(bankNames[index])
                                                .foregroundColor(.black) // Change the text color as needed
                                                .padding(.leading, 5)
                                        }
                                    }
                                }
                        .padding([.top, .leading], 25.0)
                        Spacer()
                            
                    }
                    
                        
                    Spacer()
                    VStack {
                        HStack {
                            Text("Hot off the press")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                            .padding(.leading, 7.0)
                            Spacer()
                        }
                        HStack {
                            GrayBoxContainer(title: "article 1")
                            GrayBoxContainer(title: "article 2")
                        }
                        HStack {
                            GrayBoxContainer(title: "article 3")
                            GrayBoxContainer(title: "article 4")
                        }
                    }.padding()
                }

            }
        }
        
        
    }
    
}


struct SearchBar: View {
    @State private var searchText = ""

    var body: some View {
        HStack {
            TextField("Search", text: $searchText)
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)
            if !searchText.isEmpty {
                Button(action: {
                    self.searchText = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                        .padding(10)
                }
            }
        }
        .padding(.vertical, 8)
    }
}

struct dashboard_Previews: PreviewProvider {
    static var previews: some View {
        dashboard(bankNames: ["ICICI", "Yes Bank", "SBI Bank", "JP Morgan", "Citi Bank", "American Express"])
            .previewInterfaceOrientation(.portrait)
    }
}
