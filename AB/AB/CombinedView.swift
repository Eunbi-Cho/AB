//
//  CombinedView.swift
//  AB
//
//  Created by 조은비 on 2022/04/29.
//

import SwiftUI

struct CombinedView: View {
    @State private var selection = 1
    
    var body: some View {
        
        TabView(selection: $selection) {
                    AddView()
                        .tabItem {
                            Image(systemName: "plus.square.fill.on.square.fill")
                            Text("추가하기")
                        }.tag(0)
                    ContentView()
                        .tabItem {
                            Image(systemName: "dot.circle.and.hand.point.up.left.fill")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 10, height: 10)
//                                .padding(.top, 10)
                            Text("테스트하기")
                                   
                        }.tag(1)
                    GalleryView()
                        .tabItem {
                            Image(systemName: "square.grid.2x2.fill")
                            Text("모아보기")
                           
                        }.tag(2)
                }
        .background(Color.red)
       

                .onAppear() {
//                    UITabBar.appearance().barTintColor = .blue
                    let appearance = UITabBarAppearance()
                    appearance.backgroundColor = UIColor(Color.white)
                    UITabBar.appearance().standardAppearance = appearance
                    UITabBar.appearance().scrollEdgeAppearance = appearance
                }
                
                .accentColor(.black)
    }
}

struct CombinedView_Previews: PreviewProvider {
    static var previews: some View {
        CombinedView()
    }
}
