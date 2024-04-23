// 040178
//  ContentView.swift
//  QuantumX
//
//  Created by Sam Susikar on 22/01/24.
//
import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .safari
    @State private var isProfileSheetPresented = false
    @State private var isAboutSheetPresented: Bool? = false

    var body: some View {
        VStack {
            HStack {
                if selectedTab == .safari || selectedTab == .person {
                    Button {
                        print("show menu")
                        isProfileSheetPresented.toggle()
                    } label: {
                        UserNameView(width: 40, height: 40, textStyle: .caption)
                    }
                }
                Spacer()
                if selectedTab == .safari {
                    Text("Hi, User")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .padding([.top, .bottom])
                } else if selectedTab == .person {
                    SearchBar()
                } else {
                    // Handle other cases if needed
                }
                Spacer()
                if selectedTab == .safari || selectedTab == .person {
                    Button {
                        print("show logo menu")
                        isAboutSheetPresented = true
                    } label: {
                        Image("graphLogo")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
            }
            .padding([.leading, .trailing], 20)

            if selectedTab == .safari {
                explorePage()
                    .navigationBarTitle("Explore", displayMode: .inline)
            } else if selectedTab == .person {
                dashboard(bankNames: ["ICICI", "Yes Bank", "SBI Bank", "JP Morgan", "Citi Bank", "American Express"])
                    .navigationBarTitle("Dashboard", displayMode: .inline)
            } else {
                chatBot()
            }

            Spacer()

            CustomTabBar(selectedTab: $selectedTab)
        }
        .navigationBarHidden(true)
        .sheet(isPresented: $isProfileSheetPresented) {
            ProfileSheet()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
