//
//  CombinedView.swift
//  AB
//
//  Created by 조은비 on 2022/04/29.
//

import SwiftUI

struct SplashView: View {

    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            if self.isActive {
                CombinedView()
            } else {
                Image("Splash")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 390.0, height: 844.0)
                    .ignoresSafeArea()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
    
}

struct CombinedView: View {
    @State private var selection = 1
    @State var tests: [Tests] = testList.myTest
    @State var indexOfStep: Int = 0
    
    var body: some View {
    
        TabView(selection: $selection) {
            AddView(tests: self.$tests)
                .tabItem {
                    Image(systemName: "plus.square.fill.on.square.fill")
                    Text("추가하기")
                }.tag(0)
            ContentView(tests: self.$tests, indexOfStep: $indexOfStep)
                .tabItem {
                    Image(systemName: "dot.circle.and.hand.point.up.left.fill")
                    Text("테스트하기")
                    
                }.tag(1)
            GalleryView(tests: self.$tests, selection: $selection, indexOfStep: $indexOfStep)
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("모아보기")
                    
                }.tag(2)
        }
        .onAppear() {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor(Color.white)
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
        .accentColor(.black)
    }
}

//struct CombinedView_Previews: PreviewProvider {
//    static var previews: some View {
//        CombinedView()
//    }
//}
