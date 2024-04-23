//
//  chatbot.swift
//  QuantumX
//
//  Created by Sam Susikar on 24/01/24.
//

import SwiftUI

struct chatBot: View {
    @State private var messageText = ""
    @State var messages: [String] = ["Welcome to the ChatBot"]
    var body: some View{
        VStack {
            HStack {
                Text("ChatBot")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.horizontal, 25)
            .padding(.top, 15)
            ScrollView{
                
            }
            Spacer()
            HStack{
                TextField("Talk to Bob", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
                        
                    }
                Button{
                    print("submitted")
                } label: {
                    Image(systemName: "paperplane.fill")
                        .padding(.leading,7.5)
                        .font(.system(size: 25))
                        .padding(.bottom,5)
                        .padding(.trailing,3)
                }
            }.padding(.horizontal,20)
        }
        
    }
}
struct chatbot_Previews: PreviewProvider {
    static var previews: some View {
        chatBot()
            .previewInterfaceOrientation(.portrait)
    }
}
