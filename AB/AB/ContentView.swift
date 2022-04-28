//
//  ContentView.swift
//  AB
//
//  Created by 조은비 on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("AccentColor")
                .ignoresSafeArea()
            VStack {
                Text("Q.  어떤 디자인이 더 유저 친화적인가요?")
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
                            Text("A")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Image("kurly")
                                .resizable()
                                .frame(width: 260, height: 560)
                                .scaledToFit()
                            .shadow(color: .gray, radius: 4, x: 0, y: 2)
                        }
                        Spacer()
                            .frame(width: 20.0)
                        VStack {
                            Text("B")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Image("musinsa")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 260, height: 560)
                            .shadow(color: .gray, radius: 4, x: 0, y: 2)
                        }
                        Spacer()
                            .frame(width: 60.0)
                    }
                    .frame(height: 650)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
