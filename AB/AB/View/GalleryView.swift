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
    
    @Binding var tests: [Tests]
    @Binding var selection: Int
    @Binding var indexOfStep: Int
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ZStack {
            Color("Gray")
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("모든 AB 테스트")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 20.0)
                        .padding(.top, 40)
                    Spacer()
                }
                .padding(.bottom, 20.0)
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: columns,
                              alignment: .center,
                              spacing: 40,
                              pinnedViews: [],
                              content: {
                        ForEach(0..<tests.count, id: \.self) {i in
                            Button(action: {
                                indexOfStep = i
                                selection = 1
                            }) {
                                ZStack {
                                    tests[i].ImageA
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 156, height: 280)
                                        .cornerRadius(10)
                                        .shadow(color: .gray, radius: 3, x: 0, y: 2)
                                        .rotationEffect(Angle(degrees: -3), anchor: .center)
                                    tests[i].ImageB
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
                }
                .padding([.leading, .trailing], 20.0)
            }
        }
    }
        
}

//struct GalleryView_Previews: PreviewProvider {
//    static var previews: some View {
//        GalleryView(tests: <#T##Binding<[Tests]>#>)
//    }
//}
