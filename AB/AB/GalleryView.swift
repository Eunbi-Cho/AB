//
//  GalleryView.swift
//  AB
//
//  Created by 조은비 on 2022/04/29.
//

import SwiftUI

//struct MyRect: Shape {
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//
//        path.move(to: CGPoint(x: 100, y: 0))
//        path.addLine(to: CGPoint(x:65, y: 280))
//        path.addLine(to: CGPoint(x: 0, y: 280))
//        path.addLine(to: CGPoint(x: 0, y: 0))
//        path.closeSubpath()
//
//        return path
//    }
//}


struct GalleryView: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ZStack {
            Color("Gray")
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns,
                          alignment: .center,
                          spacing: 40,
                          pinnedViews: [],
                          content: {
                    ForEach(0..<50) {index in
                        Button(action: {
                            ContentView()
                        }) {
                            ZStack {
                                Image("kurly")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 156, height: 280)
                                    .cornerRadius(10)
                                    .shadow(color: .gray, radius: 3, x: 0, y: 2)
                                    .rotationEffect(Angle(degrees: -3), anchor: .center)
                                Image("musinsa")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 156, height: 280)
                                    .cornerRadius(10)
                                    .shadow(color: .gray, radius: 3, x: 0, y: 2)
                                    .rotationEffect(Angle(degrees: 3), anchor: .center)
                            }
                        }
                    }
                })
                .padding(.top, 40)
            }
            .padding([.leading, .trailing], 20.0)
        }
    }
        
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
