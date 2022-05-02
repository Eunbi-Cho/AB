//
//  ContentView.swift
//  AB
//
//  Created by 조은비 on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    @State var showReason = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("AccentColor"))
                .ignoresSafeArea()
                
//            Color("AccentColor")
//                .ignoresSafeArea()
                VStack {
                    Text("어떤 디자인이 더 유저 친화적인가요?")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.top, 40.0)
                        .frame(width: 350)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            Spacer()
                                .frame(width: 60.0)
                            VStack {
    //                            Text("A")
    //                                .font(.largeTitle)
    //                                .fontWeight(.bold)
    //                                .padding(.bottom, -3.0)
                                Button (action: {
                                        showReason.toggle()
                                }) {
                                    Image("kurly")
                                        .resizable()
                                        .frame(width: 260, height: 560)
                                        .scaledToFit()
                                        .cornerRadius(10)
                                        .shadow(color: .gray, radius: 4, x: 0, y: 2)
                                }
                            }
                            Spacer()
                                .frame(width: 20.0)
                            VStack {
    //                            Text("B")
    //                                .font(.largeTitle)
    //                                .fontWeight(.bold)
    //                                .padding(.bottom, -3.0)
                                Button (action: {
                                        showReason.toggle()
                                    print("sheet 나옴")
                                }) {
                                    Image("musinsa")
                                        .resizable()
                                        .frame(width: 260, height: 560)
                                        .scaledToFit()
                                        .cornerRadius(10)
                                        .shadow(color: .gray, radius: 4, x: 0, y: 2)
                                }
                                .sheet(isPresented: $showReason) {
                                ReasonView()
                            }

                            }
                            Spacer()
                                .frame(width: 60.0)
                        }
                        .frame(height: 600)
                    }
                    .padding(.top, 10.0)
                    Spacer()
                }
//                .sheet(isPresented: $showReason) {
//                    ReasonView()
//                }
            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
