//
//  CommentView.swift
//  AB
//
//  Created by 조은비 on 2022/05/02.
//

import SwiftUI

struct CommentView: View {
    @State private var selectAAmount:Float = 0.2
    @Binding var Selected: String
    @Binding var showReason:Bool
    @Binding var reason: String
    @Binding var tests: [Tests]
    @Binding var indexOfStep:Int
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color("Gray")
                .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Button( action:
                                {
                        showReason = false
                        presentationMode.wrappedValue.dismiss()
                        indexOfStep = indexOfStep + 1
                    }){
                        Text("다음")
                            .foregroundColor(.black)
                    }.padding(.trailing, 20.0)
                }
                .padding(.bottom, 20.0)
                if Selected == "A" {
                    HStack {
                        Image("kurly")
                            .resizable()
                            .frame(width: 130, height: 280)
                            .scaledToFit()
                            .shadow(color: .gray, radius: 1, x: 0, y: 1)
                            .border(Color("A"))
                        Image("musinsa")
                            .resizable()
                            .frame(width: 130, height: 280)
                            .scaledToFit()
                            .shadow(color: .gray, radius: 1, x: 0, y: 1)
                    }
                }else {
                    HStack {
                        Image("kurly")
                            .resizable()
                            .frame(width: 130, height: 280)
                            .scaledToFit()
                            .shadow(color: .gray, radius: 1, x: 0, y: 1)
                        Image("musinsa")
                            .resizable()
                            .frame(width: 130, height: 280)
                            .scaledToFit()
                            .shadow(color: .gray, radius: 1, x: 0, y: 1)
                            .border(Color("B"))
                    }
                }
                Spacer()
                    .frame(height: 40.0)
                ProgressBar(value: $selectAAmount).frame(width:350, height: 10)
                Spacer()
                    .frame(height: 20)
                HStack {
                    Text("\(Selected)")
                        .foregroundColor(Color("\(Selected)"))
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.leading, 20.0)
                    Text("\(reason)")
                        .padding(.all, 10.0)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .frame(width: 310, alignment: .leading)
                        .background(Color(.white))
                        .cornerRadius(10)
                        .padding(.all, 10.0)
                        .foregroundColor(Color("\(Selected)"))
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    Rectangle()
                        .frame(width: 350, height: 65)
                        .foregroundColor(Color(.white))
                        .cornerRadius(10)
                        .padding(.bottom, 10.0)
                    Rectangle()
                        .frame(width: 350, height: 65)
                        .foregroundColor(Color(.white))
                        .cornerRadius(10)
                        .padding(.bottom, 10.0)
                    Rectangle()
                        .frame(width: 350, height: 65)
                        .foregroundColor(Color(.white))
                        .cornerRadius(10)
                        .padding(.bottom, 10.0)
                    Rectangle()
                        .frame(width: 350, height: 65)
                        .foregroundColor(Color(.white))
                        .cornerRadius(10)
                        .padding(.bottom, 10.0)
                    Rectangle()
                        .frame(width: 350, height: 65)
                        .foregroundColor(Color(.white))
                        .cornerRadius(10)
                        .padding(.bottom, 10.0)
                    Spacer()
                        .frame(height: 20)
                }
            }
            .padding(.top, 20.0)
        }
    }
}


//    struct CommentView_Previews: PreviewProvider {
//        static var previews: some View {
//            CommentView(showReason: <#Binding<Bool>#>)
//        }
//    }

