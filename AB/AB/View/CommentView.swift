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
                        presentationMode.wrappedValue.dismiss()
                        showReason = false
                        indexOfStep = indexOfStep + 1
                    }){
                        Text("다음")
                            .foregroundColor(.black)
                    }.padding(.trailing, 20.0)
                }
                .padding(.bottom, 20.0)
                if Selected == "A" {
                    if indexOfStep > tests.count - 1 {
                        
                    }else {
                        HStack {
                            tests[indexOfStep].ImageA
                                .resizable()
                                .frame(width: 130, height: 280)
                                .scaledToFit()
                                .shadow(color: .gray, radius: 1, x: 0, y: 1)
                                .border(Color("A"))
                            tests[indexOfStep].ImageB
                                .resizable()
                                .frame(width: 130, height: 280)
                                .scaledToFit()
                                .shadow(color: .gray, radius: 1, x: 0, y: 1)
                        }
                    }
                }else {
                    if indexOfStep > tests.count - 1 {
                    }else {
                        HStack {
                            tests[indexOfStep].ImageA
                                .resizable()
                                .frame(width: 130, height: 280)
                                .scaledToFit()
                                .shadow(color: .gray, radius: 1, x: 0, y: 1)
                            tests[indexOfStep].ImageB
                                .resizable()
                                .frame(width: 130, height: 280)
                                .scaledToFit()
                                .shadow(color: .gray, radius: 1, x: 0, y: 1)
                                .border(Color("B"))
                        }
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
                        .padding(.horizontal, 20.0)
                        .padding(.vertical, 20)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .frame(width: 310, alignment: .leading)
                        .background(Color(.white))
                        .cornerRadius(10)
                        .padding(.all, 2)
                }
                    ScrollView(.vertical, showsIndicators: false) {
                        if indexOfStep > tests.count - 1 {
                        }else {
                            ForEach(0..<tests[indexOfStep].comment.count, id:\.self) {i in
                            HStack {
                                Text("B")
                                    .foregroundColor(Color("B"))
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding(.leading, 20.0)
                                Text("\(tests[indexOfStep].comment[i])")
                                    .padding(.horizontal, 20.0)
                                    .padding(.vertical, 20)
                                    .font(.body)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 310, alignment: .leading)
                                    .background(Color(.white))
                                    .cornerRadius(10)
                                    .padding(.all, 2)
                            }
                        }
                    }
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

