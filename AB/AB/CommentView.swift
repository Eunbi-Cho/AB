//
//  CommentView.swift
//  AB
//
//  Created by 조은비 on 2022/05/02.
//

import SwiftUI

struct CommentView: View {
    @State private var selectAAmount:Float = 0.2
    @Binding var showReason:Bool
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
//        NavigationView {
            ZStack {
                VStack {
                    HStack {
                        Spacer()
                        Button( action:
                                    {
//                            presentationMode.ForEach {
//                                $0.wrappedValue = false}
                            showReason = false
                            presentationMode.wrappedValue.dismiss()
                        }){
                            Text("다음")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }.padding(.trailing, 20.0)
                    }
                    .padding(.bottom, 20.0)
//                    Text("Q. 어떤 디자인이 더 유저 친화적인가요?")
//                        .fontWeight(.bold)
//                        .padding(.bottom, 20.0)
                    HStack {
                        Image("kurly")
                            .resizable()
                            .frame(width: 130, height: 280)
                            .scaledToFit()
                            .shadow(color: .gray, radius: 1, x: 0, y: 1)
                            .border(Color("MainRed"))
                        
                        Image("musinsa")
                            .resizable()
                            .frame(width: 130, height: 280)
                            .scaledToFit()
                            .shadow(color: .gray, radius: 1, x: 0, y: 1)
                    }
                    Spacer()
                        .frame(height: 40.0)
                    ProgressBar(value: $selectAAmount).frame(width:350, height: 10)
                    Spacer()
                        .frame(height: 20)
                    Rectangle()
                        .frame(width: 350, height: 65)
                        .foregroundColor(Color("MainGray"))
                        .cornerRadius(3)
                        .padding(.bottom, 10.0)
                    ScrollView(.vertical, showsIndicators: false) {
                        Rectangle()
                            .frame(width: 350, height: 65)
                            .foregroundColor(Color("MainGray"))
                            .cornerRadius(3)
                            .padding(.bottom, 10.0)
                        Rectangle()
                            .frame(width: 350, height: 65)
                            .foregroundColor(Color("MainGray"))
                            .cornerRadius(3)
                            .padding(.bottom, 10.0)
                        Rectangle()
                            .frame(width: 350, height: 65)
                            .foregroundColor(Color("MainGray"))
                            .cornerRadius(3)
                            .padding(.bottom, 10.0)
                        Rectangle()
                            .frame(width: 350, height: 65)
                            .foregroundColor(Color("MainGray"))
                            .cornerRadius(3)
                            .padding(.bottom, 10.0)
                        Rectangle()
                            .frame(width: 350, height: 65)
                            .foregroundColor(Color("MainGray"))
                            .cornerRadius(3)
                            .padding(.bottom, 10.0)
                        Spacer()
                            .frame(height: 20)
                    }
                }
                .padding(.top, 20.0)
            }
//        }
    }
}
    
//    struct CommentView_Previews: PreviewProvider {
//        static var previews: some View {
//            CommentView(showReason: <#Binding<Bool>#>)
//        }
//    }

