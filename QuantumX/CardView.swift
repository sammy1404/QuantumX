// CardView.swift

import SwiftUI

struct CardViewFront: View {
    var imageName: String
    var title: String

    @State private var isBackVisible = false

    var body: some View {
        VStack {
            if isBackVisible {
                CardViewBack(imageName: imageName, description: "Description", isBackVisible: $isBackVisible)
                    .transition(.flip)
            } else {
                Image(imageName)
                    .resizable()
                    .frame(width: 250, height: 175.0)
                    .cornerRadius(25)
                    .padding(.trailing, 5.0)
                    .overlay(
                        HStack {
                            VStack {
                                HStack {
                                    Image("sbiLogo")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .cornerRadius(40)
                                        .padding([.leading, .top])
                                    Spacer()
                                    VStack {
                                        Text("x%")
                                            .font(.caption)
                                            .fontWeight(.heavy)
                                        Text("returns")
                                            .font(.caption)
                                            .fontWeight(.heavy)
                                    }
                                    .padding([.trailing, .top])
                                }
                                Spacer()
                                Text("stock name")
                                    .padding()
                                Spacer()

                                Button(action: {
                                    withAnimation {
                                        isBackVisible.toggle()
                                    }
                                    print("Information Button Tapped")
                                }) {
                                    Text("Information")
                                        .foregroundColor(.gray)
                                        .padding(8)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.gray, lineWidth: 2)
                                        )
                                }
                                .padding(.bottom)
                            }
                            Spacer()
                        }
                    )
                    .onTapGesture {
                        withAnimation {
                            isBackVisible.toggle()
                        }
                        print("Card Tapped")
                    }
            }
        }
    }
}

struct CardViewBack: View {
    var imageName: String
    var description: String

    @Binding var isBackVisible: Bool

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 250, height: 175.0)
                .cornerRadius(25)
                .padding(.trailing, 5.0)
                .overlay(
                    HStack {
                        VStack {
                            HStack {
                                Image("sbiLogo")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .cornerRadius(40)
                                    .padding([.leading, .top])

                                VStack {
                                    Text("Stock Name")
                                        .font(.caption)
                                        .fontWeight(.heavy)
                                }
                                .padding([.trailing, .top])
                                Spacer()
                            }
                            Spacer()
                            Text(description)
                                .padding()
                            Spacer()

                            Button(action: {
                                withAnimation {
                                    isBackVisible.toggle()
                                }
                                print("Back to Front Button Tapped")
                            }) {
                                Text("Return")
                                    .foregroundColor(.gray)
                                    .padding(8)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.gray, lineWidth: 2)
                                    )
                            }
                            .padding(.bottom)
                        }
                        Spacer()
                    }
                )
                .onTapGesture {
                    withAnimation {
                        isBackVisible.toggle()
                    }
                    print("Card Tapped")
                }
        }
    }
}

extension AnyTransition {
    static var flip: AnyTransition {
        let insertion = AnyTransition.scale(scale: 1.0).combined(with: .opacity)
        let removal = AnyTransition.scale(scale: 1.0).combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CardViewFront(imageName: "card1", title: "yourTitle")
        }
        .previewInterfaceOrientation(.portrait)
    }
}
